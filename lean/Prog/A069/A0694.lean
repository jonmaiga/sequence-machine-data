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
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A069403: a(n) = 2*Fibonacci(2*n+1) - 1.

The programs for A069403, the canonical program `A069403.P9469960685264620895` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069403 has offset 0).

The definition of A069403 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069403.P9469960685264620895

`3*a(n-1)-a(n-2)+1` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069403

/-- `3*a(n-1)-a(n-2)+1` -/
def P9469960685264620895.Spec : Prop :=
  ∀ n, P9469960685264620895.a n = A069403 n

theorem P9469960685264620895.correct : P9469960685264620895.Spec := by
  intro n
  simp only [A069403]

end A069403

/-! ## A069403.P2022651199511081233

`1+2*A027941(n)`
-/

namespace A069403.P2022651199511081233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + 2 * A027941 n

end

end A069403.P2022651199511081233

namespace A069403

/-- `1+2*A027941(n)` -/
def P2022651199511081233.Spec : Prop :=
  ∀ n, P2022651199511081233.a n = A069403 n

end A069403

/-! ## A069403.P13493312152171781408

`or(1, ceil(ϕ²*a(n-1)))` with `a(0)=1`
-/

namespace A069403.P13493312152171781408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 ⌈Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)⌉

end

end A069403.P13493312152171781408

namespace A069403

/-- `or(1, ceil(ϕ²*a(n-1)))` -/
def P13493312152171781408.Spec : Prop :=
  ∀ n, P13493312152171781408.a n = A069403 n

end A069403

/-! ## A069403.P5056795751440364606

`∑[ceil(ϕ²*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A069403.P5056795751440364606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌈Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069403.P5056795751440364606

namespace A069403

/-- `∑[ceil(ϕ²*a(n-1))]` -/
def P5056795751440364606.Spec : Prop :=
  ∀ n, P5056795751440364606.a n = A069403 n

end A069403

/-! ## A069403.P934412905508581338

`∑[ceil(a(n-1)/(2-ϕ))]` with `a(0)=1, a(1)=2`
-/

namespace A069403.P934412905508581338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  ⌈(f1 (n - 1) : ℝ) / (2 - Real.goldenRatio)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069403.P934412905508581338

namespace A069403

/-- `∑[ceil(a(n-1)/(2-ϕ))]` -/
def P934412905508581338.Spec : Prop :=
  ∀ n, P934412905508581338.a n = A069403 n

end A069403

/-! ## A069403.P7335017590287243106

`record[a(n-2)-(a(n-1)+1)]` with `a(0)=1, a(1)=1`
-/

namespace A069403.P7335017590287243106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - (f1 (n - 1) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069403.P7335017590287243106

namespace A069403

/-- `record[a(n-2)-(a(n-1)+1)]` -/
def P7335017590287243106.Spec : Prop :=
  ∀ n, P7335017590287243106.a n = A069403 n

end A069403

/-! ## A069403.P7822204812658594464

`record[a(n-2)-1-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A069403.P7822204812658594464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 2) - 1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069403.P7822204812658594464

namespace A069403

/-- `record[a(n-2)-1-a(n-1)]` -/
def P7822204812658594464.Spec : Prop :=
  ∀ n, P7822204812658594464.a n = A069403 n

end A069403

/-! ## A069403.P10019794711176247619

`1-(a(n-2)-3*a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A069403.P10019794711176247619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 - (a (n - 2) - 3 * a (n - 1))

end

end A069403.P10019794711176247619

namespace A069403

/-- `1-(a(n-2)-3*a(n-1))` -/
def P10019794711176247619.Spec : Prop :=
  ∀ n, P10019794711176247619.a n = A069403 n

end A069403

/-! ## A069403.P14075979138193812414

`a(n-1)+1+a(n-1)+a(n-1)-a(n-2)` with `a(0)=1, a(1)=3`
-/

namespace A069403.P14075979138193812414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + (a (n - 1) - a (n - 2)))

end

end A069403.P14075979138193812414

namespace A069403

/-- `a(n-1)+1+a(n-1)+a(n-1)-a(n-2)` -/
def P14075979138193812414.Spec : Prop :=
  ∀ n, P14075979138193812414.a n = A069403 n

theorem P14075979138193812414.correct : P14075979138193812414.Spec := by
  intro n
  simp only [A069403, Nat.add_sub_cancel, A069403.P14075979138193812414.a, A069403.P9469960685264620895.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A069403

/-! ## A069403.P15096751964416429243

`1-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A069403.P15096751964416429243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  1 - (a (n - 2) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A069403.P15096751964416429243

namespace A069403

/-- `1-(a(n-2)-a(n-1)-a(n-1)-a(n-1))` -/
def P15096751964416429243.Spec : Prop :=
  ∀ n, P15096751964416429243.a n = A069403 n

end A069403

/-! ## A069403.P12365742762066991555

`Δ[A141752(n)]`
-/

namespace A069403.P12365742762066991555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069403.P12365742762066991555

namespace A069403

/-- `Δ[A141752(n)]` -/
def P12365742762066991555.Spec : Prop :=
  ∀ n, P12365742762066991555.a n = A069403 n

end A069403

/-! ## A069403.P7508536548486935925

`A001595(2*n)`
-/

namespace A069403.P7508536548486935925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001595 (2 * n)

end

end A069403.P7508536548486935925

namespace A069403

/-- `A001595(2*n)` -/
def P7508536548486935925.Spec : Prop :=
  ∀ n, P7508536548486935925.a n = A069403 n

end A069403

/-! ## A069403.P4652809282346611788

`A062114(Δ[n²])`
-/

namespace A069403.P4652809282346611788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062114 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069403.P4652809282346611788

namespace A069403

/-- `A062114(Δ[n²])` -/
def P4652809282346611788.Spec : Prop :=
  ∀ n, P4652809282346611788.a n = A069403 n

end A069403

/-! ## A069403.P13051021262871770396

`∑[A111282(n+1)]`
-/

namespace A069403.P13051021262871770396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111282 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069403.P13051021262871770396

namespace A069403

/-- `∑[A111282(n+1)]` -/
def P13051021262871770396.Spec : Prop :=
  ∀ n, P13051021262871770396.a n = A069403 n

end A069403

/-! ## A069403.P325809622943753344

`∑[A055389(2*n)]`
-/

namespace A069403.P325809622943753344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055389 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069403.P325809622943753344

namespace A069403

/-- `∑[A055389(2*n)]` -/
def P325809622943753344.Spec : Prop :=
  ∀ n, P325809622943753344.a n = A069403 n

end A069403

/-! ## A069403.P5749970176227237751

`record[A128587(n+1)]`
-/

namespace A069403.P5749970176227237751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069403.P5749970176227237751

namespace A069403

/-- `record[A128587(n+1)]` -/
def P5749970176227237751.Spec : Prop :=
  ∀ n, P5749970176227237751.a n = A069403 n

end A069403

/-! ## A069403.P1263121762116960387

`A052995(n+1)-1`
-/

namespace A069403.P1263121762116960387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052995 (n + 1) - 1

end

end A069403.P1263121762116960387

namespace A069403

/-- `A052995(n+1)-1` -/
def P1263121762116960387.Spec : Prop :=
  ∀ n, P1263121762116960387.a n = A069403 n

end A069403

/-! ## A069403.P5515054993568009270

`A055819(n+1)-1`
-/

namespace A069403.P5515054993568009270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055819 (n + 1) - 1

end

end A069403.P5515054993568009270

namespace A069403

/-- `A055819(n+1)-1` -/
def P5515054993568009270.Spec : Prop :=
  ∀ n, P5515054993568009270.a n = A069403 n

end A069403

/-!
# A069406: Half the number of n X 6 binary arrays with a path of adjacent 1's and a path of adjacent 0's from top row to bottom row.

The programs for A069406, there is no canonical definition to state claims against.
-/

/-! ## A069406.P5790958932022547604

`(A069381(n+1)-A069426(n+1))/2`
-/

namespace A069406.P5790958932022547604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069381 (n + 1) - A069426 (n + 1) : ℚ) / 2

end

end A069406.P5790958932022547604

/-!
# A069407: Half the number of n X 7 binary arrays with a path of adjacent 1's and a path of adjacent 0's from top row to bottom row.

The programs for A069407, there is no canonical definition to state claims against.
-/

/-! ## A069407.P3615830838024397845

`(A069382(n+1)-A069427(n+1))/2`
-/

namespace A069407.P3615830838024397845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069382 (n + 1) - A069427 (n + 1) : ℚ) / 2

end

end A069407.P3615830838024397845

/-!
# A069423: Number of n X 3 binary arrays with a path of adjacent 1's and no path of adjacent 0's from top row to bottom row.

The programs for A069423, there is no canonical definition to state claims against.
-/

/-! ## A069423.P12813101597163158030

`A069378(n+1)-2*A069403(n+1)`
-/

namespace A069423.P12813101597163158030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069378 (n + 1) - 2 * A069403 (n + 1)

end

end A069423.P12813101597163158030

/-!
# A069424: Number of n X 4 binary arrays with a path of adjacent 1's and no path of adjacent 0's from top row to bottom row.

The programs for A069424, there is no canonical definition to state claims against.
-/

/-! ## A069424.P11071814041769210440

`A069379(n+1)-2*A069404(n+1)`
-/

namespace A069424.P11071814041769210440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069379 (n + 1) - 2 * A069404 (n + 1)

end

end A069424.P11071814041769210440

/-!
# A069425: Number of n X 5 binary arrays with a path of adjacent 1's and no path of adjacent 0's from top row to bottom row.

The programs for A069425, there is no canonical definition to state claims against.
-/

/-! ## A069425.P3840639785840152378

`A069380(n+1)-2*A069405(n+1)`
-/

namespace A069425.P3840639785840152378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069380 (n + 1) - 2 * A069405 (n + 1)

end

end A069425.P3840639785840152378

/-!
# A069426: Number of n X 6 binary arrays with a path of adjacent 1's and no path of adjacent 0's from top row to bottom row.

The programs for A069426, there is no canonical definition to state claims against.
-/

/-! ## A069426.P5621639850617580913

`A069381(n+1)-2*A069406(n+1)`
-/

namespace A069426.P5621639850617580913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069381 (n + 1) - 2 * A069406 (n + 1)

end

end A069426.P5621639850617580913

/-!
# A069427: Number of n X 7 binary arrays with a path of adjacent 1's and no path of adjacent 0's from top row to bottom row.

The programs for A069427, there is no canonical definition to state claims against.
-/

/-! ## A069427.P5065673245203260570

`A069382(n+1)-2*A069407(n+1)`
-/

namespace A069427.P5065673245203260570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069382 (n + 1) - 2 * A069407 (n + 1)

end

end A069427.P5065673245203260570

/-!
# A069429: Half the number of 3 X n binary arrays with no path of adjacent 1's or adjacent 0's from top row to bottom row.

The programs for A069429, the canonical program `A069429.P11282281024164806613` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069429 has offset 1).

The definition of A069429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069429.P11282281024164806613

`A084326(n+2)/2`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069429

/-- `A084326(n+2)/2` -/
def P11282281024164806613.Spec : Prop :=
  ∀ n, P11282281024164806613.a n = (A069429 (n + 1) : ℚ)

end A069429

/-! ## A069429.P16505284455355015762

`ceil((sqrt(5)+3)*a(n-1))` with `a(0)=3`
-/

namespace A069429.P16505284455355015762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈(Real.sqrt (5 : ℝ) + 3) * (a (n - 1) : ℝ)⌉

end

end A069429.P16505284455355015762

namespace A069429

/-- `ceil((sqrt(5)+3)*a(n-1))` -/
def P16505284455355015762.Spec : Prop :=
  ∀ n, P16505284455355015762.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P13776649869044745119

`round((sqrt(5)+3)*a(n-1))` with `a(0)=3`
-/

namespace A069429.P13776649869044745119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway ((Real.sqrt (5 : ℝ) + 3) * (a (n - 1) : ℝ))

end

end A069429.P13776649869044745119

namespace A069429

/-- `round((sqrt(5)+3)*a(n-1))` -/
def P13776649869044745119.Spec : Prop :=
  ∀ n, P13776649869044745119.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P12443515557391413095

`ceil(2*ϕ²*a(n-1))` with `a(0)=3`
-/

namespace A069429.P12443515557391413095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  ⌈2 * (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ))⌉

end

end A069429.P12443515557391413095

namespace A069429

/-- `ceil(2*ϕ²*a(n-1))` -/
def P12443515557391413095.Spec : Prop :=
  ∀ n, P12443515557391413095.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P14742494826360493025

`round(2*ϕ²*a(n-1))` with `a(0)=3`
-/

namespace A069429.P14742494826360493025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  SequenceMachineLib.roundAway (2 * (Real.goldenRatio ^ 2 * (a (n - 1) : ℝ)))

end

end A069429.P14742494826360493025

namespace A069429

/-- `round(2*ϕ²*a(n-1))` -/
def P14742494826360493025.Spec : Prop :=
  ∀ n, P14742494826360493025.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P2487605236793001223

`Δ[2*floor(ϕ²*a(n-1))]` with `a(0)=1`
-/

namespace A069429.P2487605236793001223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * ⌊Real.goldenRatio ^ 2 * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069429.P2487605236793001223

namespace A069429

/-- `Δ[2*floor(ϕ²*a(n-1))]` -/
def P2487605236793001223.Spec : Prop :=
  ∀ n, P2487605236793001223.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P11535454135975661394

`6*a(n-1)-4*a(n-2)` with `a(0)=3, a(1)=16`
-/

namespace A069429.P11535454135975661394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 16] fun n a =>
  6 * a (n - 1) - 4 * a (n - 2)

end

end A069429.P11535454135975661394

namespace A069429

/-- `6*a(n-1)-4*a(n-2)` -/
def P11535454135975661394.Spec : Prop :=
  ∀ n, P11535454135975661394.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P4795850182816439090

`Δ[A082761(n)]`
-/

namespace A069429.P4795850182816439090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069429.P4795850182816439090

namespace A069429

/-- `Δ[A082761(n)]` -/
def P4795850182816439090.Spec : Prop :=
  ∀ n, P4795850182816439090.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P18103267103342106344

`A337129(∑[n+2])`
-/

namespace A069429.P18103267103342106344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337129 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A069429.P18103267103342106344

namespace A069429

/-- `A337129(∑[n+2])` -/
def P18103267103342106344.Spec : Prop :=
  ∀ n, P18103267103342106344.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P7872942074619650778

`Δ[A099603(2*n)]`
-/

namespace A069429.P7872942074619650778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099603 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069429.P7872942074619650778

namespace A069429

/-- `Δ[A099603(2*n)]` -/
def P7872942074619650778.Spec : Prop :=
  ∀ n, P7872942074619650778.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P5961946305158854096

`Δ[A080878(Δ[n²])]`
-/

namespace A069429.P5961946305158854096
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080878 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069429.P5961946305158854096

namespace A069429

/-- `Δ[A080878(Δ[n²])]` -/
def P5961946305158854096.Spec : Prop :=
  ∀ n, P5961946305158854096.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P6928325502298523487

`2^n*A001906(n+2)`
-/

namespace A069429.P6928325502298523487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001906 (n + 2)

end

end A069429.P6928325502298523487

namespace A069429

/-- `2^n*A001906(n+2)` -/
def P6928325502298523487.Spec : Prop :=
  ∀ n, P6928325502298523487.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P7850733248992440460

`2^n*A088305(n+2)`
-/

namespace A069429.P7850733248992440460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A088305 (n + 2)

end

end A069429.P7850733248992440460

namespace A069429

/-- `2^n*A088305(n+2)` -/
def P7850733248992440460.Spec : Prop :=
  ∀ n, P7850733248992440460.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P13691282648319909638

`2^n*A020701(2*n)`
-/

namespace A069429.P13691282648319909638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A020701 (2 * n)

end

end A069429.P13691282648319909638

namespace A069429

/-- `2^n*A020701(2*n)` -/
def P13691282648319909638.Spec : Prop :=
  ∀ n, P13691282648319909638.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P12082492200635724892

`2^(n-1)*A025169(n+1)`
-/

namespace A069429.P12082492200635724892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A025169 (n + 1) : ℚ)

end

end A069429.P12082492200635724892

namespace A069429

/-- `2^(n-1)*A025169(n+1)` -/
def P12082492200635724892.Spec : Prop :=
  ∀ n, P12082492200635724892.a n = (A069429 (n + 1) : ℚ)

end A069429

/-! ## A069429.P3718173107305169797

`2^(n-1)*A111282(n+3)`
-/

namespace A069429.P3718173107305169797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A111282 (n + 3) : ℚ)

end

end A069429.P3718173107305169797

namespace A069429

/-- `2^(n-1)*A111282(n+3)` -/
def P3718173107305169797.Spec : Prop :=
  ∀ n, P3718173107305169797.a n = (A069429 (n + 1) : ℚ)

end A069429

/-! ## A069429.P5281364938689068213

`2^n*A000045(2*(n+2))`
-/

namespace A069429.P5281364938689068213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A000045 (2 * (n + 2))

end

end A069429.P5281364938689068213

namespace A069429

/-- `2^n*A000045(2*(n+2))` -/
def P5281364938689068213.Spec : Prop :=
  ∀ n, P5281364938689068213.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P11211652583498506241

`Δ[A018903(n)]-A018903(n)`
-/

namespace A069429.P11211652583498506241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018903 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A018903 n

end

end A069429.P11211652583498506241

namespace A069429

/-- `Δ[A018903(n)]-A018903(n)` -/
def P11211652583498506241.Spec : Prop :=
  ∀ n, P11211652583498506241.a n = A069429 (n + 1)

end A069429

/-! ## A069429.P15953995841925961637

`A082761(n+1)-A082761(n)`
-/

namespace A069429.P15953995841925961637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082761 (n + 1) - A082761 n

end

end A069429.P15953995841925961637

namespace A069429

/-- `A082761(n+1)-A082761(n)` -/
def P15953995841925961637.Spec : Prop :=
  ∀ n, P15953995841925961637.a n = A069429 (n + 1)

end A069429

/-!
# A069440: Half the number of n X 2 binary arrays with no path of adjacent 1's or adjacent 0's from top row to bottom row.

The programs for A069440, the canonical program `A069440.P8022658432027792083` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069440 has offset 1).

The definition of A069440 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069440.P8022658432027792083

`7*a(n-1)-13*a(n-2)+3*a(n-3)+4*a(n-4)` with `a(0)=0, a(1)=2, a(2)=16, a(3)=88`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069440

/-- `7*a(n-1)-13*a(n-2)+3*a(n-3)+4*a(n-4)` -/
def P8022658432027792083.Spec : Prop :=
  ∀ n, P8022658432027792083.a n = A069440 (n + 1)

theorem P8022658432027792083.correct : P8022658432027792083.Spec := by
  intro n
  simp only [A069440, Nat.add_sub_cancel]

end A069440

/-! ## A069440.P16993237184470761870

`2^(2*(n+1)-1)-A001333(n+2)+1`
-/

namespace A069440.P16993237184470761870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((2 * (n + 1) : ℤ) - 1 : ℤ) - (A001333 (n + 2) : ℚ) + 1

end

end A069440.P16993237184470761870

namespace A069440

/-- `2^(2*(n+1)-1)-A001333(n+2)+1` -/
def P16993237184470761870.Spec : Prop :=
  ∀ n, P16993237184470761870.a n = (A069440 (n + 1) : ℚ)

end A069440

/-! ## A069440.P17410071253036165643

`A092440(n)-A106514(n)`
-/

namespace A069440.P17410071253036165643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092440 n - A106514 n

end

end A069440.P17410071253036165643

namespace A069440

/-- `A092440(n)-A106514(n)` -/
def P17410071253036165643.Spec : Prop :=
  ∀ n, P17410071253036165643.a n = A069440 (n + 1)

end A069440

/-! ## A069440.P16904368833374012341

`A083420(n)-A034182(n+1)`
-/

namespace A069440.P16904368833374012341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083420 n - A034182 (n + 1)

end

end A069440.P16904368833374012341

namespace A069440

/-- `A083420(n)-A034182(n+1)` -/
def P16904368833374012341.Spec : Prop :=
  ∀ n, P16904368833374012341.a n = A069440 (n + 1)

end A069440

/-! ## A069440.P17289018484472305584

`A081654(n)-A213667(n+1)`
-/

namespace A069440.P17289018484472305584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081654 n - A213667 (n + 1)

end

end A069440.P17289018484472305584

namespace A069440

/-- `A081654(n)-A213667(n+1)` -/
def P17289018484472305584.Spec : Prop :=
  ∀ n, P17289018484472305584.a n = A069440 (n + 1)

end A069440

/-! ## A069440.P2471616906142350857

`A000051(2*n+1)-A078057(n+1)`
-/

namespace A069440.P2471616906142350857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n + 1) - A078057 (n + 1)

end

end A069440.P2471616906142350857

namespace A069440

/-- `A000051(2*n+1)-A078057(n+1)` -/
def P2471616906142350857.Spec : Prop :=
  ∀ n, P2471616906142350857.a n = A069440 (n + 1)

end A069440

/-! ## A069440.P2481526134756612157

`A083318(2*n+1)-A078057(n+1)`
-/

namespace A069440.P2481526134756612157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083318 (2 * n + 1) - A078057 (n + 1)

end

end A069440.P2481526134756612157

namespace A069440

/-- `A083318(2*n+1)-A078057(n+1)` -/
def P2481526134756612157.Spec : Prop :=
  ∀ n, P2481526134756612157.a n = A069440 (n + 1)

end A069440

/-! ## A069440.P11885992971056099535

`A151821(2*n+1)-A213667(n+1)`
-/

namespace A069440.P11885992971056099535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151821 (2 * n + 1) - A213667 (n + 1)

end

end A069440.P11885992971056099535

namespace A069440

/-- `A151821(2*n+1)-A213667(n+1)` -/
def P11885992971056099535.Spec : Prop :=
  ∀ n, P11885992971056099535.a n = A069440 (n + 1)

end A069440

/-! ## A069440.P13081157480006344942

`A000051(2*n+1)-A001333(n+2)`
-/

namespace A069440.P13081157480006344942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n + 1) - A001333 (n + 2)

end

end A069440.P13081157480006344942

namespace A069440

/-- `A000051(2*n+1)-A001333(n+2)` -/
def P13081157480006344942.Spec : Prop :=
  ∀ n, P13081157480006344942.a n = A069440 (n + 1)

end A069440

/-! ## A069440.P18380731904756554336

`A000079(2*n+1)-A293004(n+2)`
-/

namespace A069440.P18380731904756554336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - A293004 (n + 2)

end

end A069440.P18380731904756554336

namespace A069440

/-- `A000079(2*n+1)-A293004(n+2)` -/
def P18380731904756554336.Spec : Prop :=
  ∀ n, P18380731904756554336.a n = A069440 (n + 1)

end A069440

/-! ## A069440.P10246306390232908075

`A000079(2*n+1)-∑[A052542(n+1)]`
-/

namespace A069440.P10246306390232908075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052542 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (2 * n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069440.P10246306390232908075

namespace A069440

/-- `A000079(2*n+1)-∑[A052542(n+1)]` -/
def P10246306390232908075.Spec : Prop :=
  ∀ n, P10246306390232908075.a n = A069440 (n + 1)

end A069440

/-! ## A069440.P10600234057282087470

`A000051(2*n+1)-A135246(2*n+1)`
-/

namespace A069440.P10600234057282087470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n + 1) - A135246 (2 * n + 1)

end

end A069440.P10600234057282087470

namespace A069440

/-- `A000051(2*n+1)-A135246(2*n+1)` -/
def P10600234057282087470.Spec : Prop :=
  ∀ n, P10600234057282087470.a n = A069440 (n + 1)

end A069440

/-! ## A069440.P7236195158532349884

`A000051(2*n+1)-A143607(2*(n+1))`
-/

namespace A069440.P7236195158532349884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (2 * n + 1) - A143607 (2 * (n + 1))

end

end A069440.P7236195158532349884

namespace A069440

/-- `A000051(2*n+1)-A143607(2*(n+1))` -/
def P7236195158532349884.Spec : Prop :=
  ∀ n, P7236195158532349884.a n = A069440 (n + 1)

end A069440

/-!
# A069441: Half the number of n X 3 binary arrays with no path of adjacent 1's or adjacent 0's from top row to bottom row.

The programs for A069441, there is no canonical definition to state claims against.
-/

/-! ## A069441.P4592904592668661953

`2^(3*(n+1)-1)-A069378(n+1)+A069403(n+1)`
-/

namespace A069441.P4592904592668661953
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((3 * (n + 1) : ℤ) - 1 : ℤ) - (A069378 (n + 1) : ℚ) + (A069403 (n + 1) : ℚ)

end

end A069441.P4592904592668661953

/-!
# A069442: Half the number of n X 4 binary arrays with no path of adjacent 1's or adjacent 0's from top row to bottom row.

The programs for A069442, there is no canonical definition to state claims against.
-/

/-! ## A069442.P3638401404832753913

`2^(4*(n+1)-1)-A069379(n+1)+A069404(n+1)`
-/

namespace A069442.P3638401404832753913
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((4 * (n + 1) : ℤ) - 1 : ℤ) - (A069379 (n + 1) : ℚ) + (A069404 (n + 1) : ℚ)

end

end A069442.P3638401404832753913

/-!
# A069443: Half the number of n X 5 binary arrays with no path of adjacent 1's or adjacent 0's from top row to bottom row.

The programs for A069443, there is no canonical definition to state claims against.
-/

/-! ## A069443.P13897812677999658870

`2^(5*(n+1)-1)-A069380(n+1)+A069405(n+1)`
-/

namespace A069443.P13897812677999658870
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((5 * (n + 1) : ℤ) - 1 : ℤ) - (A069380 (n + 1) : ℚ) + (A069405 (n + 1) : ℚ)

end

end A069443.P13897812677999658870

/-!
# A069453: Lonely twin primes.

The programs for A069453, there is no canonical definition to state claims against.
-/

/-! ## A069453.P8644964695272036525

`A035789(A008619(n))+Δ[or(1, n)]`
-/

namespace A069453.P8644964695272036525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035789 (A008619 n).toNat + ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A069453.P8644964695272036525

/-! ## A069453.P3809486572051619265

`∪[A035789(n+1), A069455(n+1)]`
-/

namespace A069453.P3809486572051619265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035789 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069455 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069453.P3809486572051619265

/-! ## A069453.P13812599461686128827

`A006530(∪[A035789(n+1)+2, A035789(n+1)])`
-/

namespace A069453.P13812599461686128827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035789 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035789 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A069453.P13812599461686128827

/-! ## A069453.P16768746127838307214

`A020639(∪[A035789(n+1)+2, A035789(n+1)])`
-/

namespace A069453.P16768746127838307214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035789 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035789 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A069453.P16768746127838307214

/-! ## A069453.P498167065464552472

`A006530(∪[A069455(n+1)-2, A069455(n+1)])`
-/

namespace A069453.P498167065464552472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069455 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069455 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A069453.P498167065464552472

/-!
# A069455: Greater of lonely twin primes.

The programs for A069455, there is no canonical definition to state claims against.
-/

/-! ## A069455.P6531775693774797099

`A035789(n+1)+2`
-/

namespace A069455.P6531775693774797099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035789 (n + 1) + 2

end

end A069455.P6531775693774797099

/-! ## A069455.P11440253508374025572

`A069453(2*(n+1))`
-/

namespace A069455.P11440253508374025572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (2 * (n + 1))

end

end A069455.P11440253508374025572

/-! ## A069455.P10145829714328838790

`A069453(Δ[n²])+2`
-/

namespace A069455.P10145829714328838790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 2

end

end A069455.P10145829714328838790

/-! ## A069455.P14372613913264500657

`p?[A069453(n+1)+2]`
-/

namespace A069455.P14372613913264500657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069455.P14372613913264500657

/-! ## A069455.P14463535349390574117

`∩[A006512(n+1), A069453(n+1)]`
-/

namespace A069455.P14463535349390574117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P14463535349390574117

/-! ## A069455.P17469196731723120808

`∩[A067829(n+1), A069453(n+1)]`
-/

namespace A069455.P17469196731723120808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067829 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P17469196731723120808

/-! ## A069455.P368837942341082947

`∩[A069453(n+1), A172057(n+1)]`
-/

namespace A069455.P368837942341082947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P368837942341082947

/-! ## A069455.P112045780894944267

`∩[A069453(n+1), A206023(n+1)]`
-/

namespace A069455.P112045780894944267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206023 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P112045780894944267

/-! ## A069455.P14469698073210443064

`∩[A001359(n+1)+2, A069453(n+1)]`
-/

namespace A069455.P14469698073210443064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P14469698073210443064

/-! ## A069455.P13116349922422030032

`∩[A001838(n+1)+2, A069453(n+1)]`
-/

namespace A069455.P13116349922422030032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001838 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P13116349922422030032

/-! ## A069455.P1690768940999488828

`∩[A054799(n+1)+2, A069453(n+1)]`
-/

namespace A069455.P1690768940999488828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P1690768940999488828

/-! ## A069455.P6269517306564637791

`∩[A069453(n+1), A139690(n+1)]`
-/

namespace A069455.P6269517306564637791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139690 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P6269517306564637791

/-! ## A069455.P14093494651990125762

`∩[A069453(n+1), A274212(n+1)]+2`
-/

namespace A069455.P14093494651990125762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274212 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A069455.P14093494651990125762

/-! ## A069455.P17493968132008472188

`∩[A051634(n+1)+2, A069453(n+1)]`
-/

namespace A069455.P17493968132008472188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051634 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P17493968132008472188

/-! ## A069455.P9242602972229203980

`∩[A051635(n+1), A069453(n+1)]`
-/

namespace A069455.P9242602972229203980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051635 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P9242602972229203980

/-! ## A069455.P16377156735288148592

`∩[A068828(n+1), A069453(n+1)]`
-/

namespace A069455.P16377156735288148592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068828 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P16377156735288148592

/-! ## A069455.P5681149731822323283

`∩[A002476(n+1), A069453(n+1)]`
-/

namespace A069455.P5681149731822323283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P5681149731822323283

/-! ## A069455.P16210752378320560117

`∩[A007645(n+1), A069453(n+1)]`
-/

namespace A069455.P16210752378320560117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P16210752378320560117

/-! ## A069455.P11079107615032467256

`∩[A045375(n+1), A069453(n+1)]`
-/

namespace A069455.P11079107615032467256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P11079107615032467256

/-! ## A069455.P16766876515715032979

`∩[A069453(n+1), A123365(n+1)]`
-/

namespace A069455.P16766876515715032979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123365 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069455.P16766876515715032979

/-!
# A069457: Lowest primes in twin packs.

The programs for A069457, there is no canonical definition to state claims against.
-/

/-! ## A069457.P403862149678875401

`∩[A069458(n+1), A167278(n+1)]`
-/

namespace A069457.P403862149678875401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167278 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069457.P403862149678875401

/-! ## A069457.P12012145840701876859

`∩[A167278(n+1), A089628(n+3)]`
-/

namespace A069457.P12012145840701876859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167278 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069457.P12012145840701876859

/-!
# A069458: Twin pack primes.

The programs for A069458, there is no canonical definition to state claims against.
-/

/-! ## A069458.P447796102145811069

`record[A136142(A028310(n))-A000038(n)]`
-/

namespace A069458.P447796102145811069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136142 (A028310 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069458.P447796102145811069

/-! ## A069458.P18161868803644220344

`record[A136142(A344180(n))-A000038(n)]`
-/

namespace A069458.P18161868803644220344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136142 (A344180 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069458.P18161868803644220344

/-! ## A069458.P17167016583558201030

`record[A136142(A156061(n+1))-A000038(n)]`
-/

namespace A069458.P17167016583558201030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136142 (A156061 (n + 1)).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069458.P17167016583558201030

/-! ## A069458.P923006987666134525

`A001097(∑[A176410(A008311(n))])`
-/

namespace A069458.P923006987666134525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176410 (A008311 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069458.P923006987666134525

/-! ## A069458.P10500022269983108167

`A001097(∑[A014491(A156137(n))])`
-/

namespace A069458.P10500022269983108167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A156137 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001097 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069458.P10500022269983108167

/-!
# A069459: a(n) = prime(n)^n - 1.

The programs for A069459, there is no canonical definition to state claims against.
-/

/-! ## A069459.P1837074966771842259

`p?[comp[n²]]^(n+1)-1`
-/

namespace A069459.P1837074966771842259
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) ^ (n + 1) : ℤ) - 1

end

end A069459.P1837074966771842259

/-! ## A069459.P17785369397497208330

`record[∑{p}[n+2, #]]^(n+1)-1`
-/

namespace A069459.P17785369397497208330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) ^ (n + 1) : ℤ) - 1

end

end A069459.P17785369397497208330

/-! ## A069459.P15271642722009197639

`A062457(n+1)-1`
-/

namespace A069459.P15271642722009197639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062457 (n + 1) - 1

end

end A069459.P15271642722009197639

/-! ## A069459.P8167886464560625430

`A307539(n+1)-1`
-/

namespace A069459.P8167886464560625430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307539 (n + 1) - 1

end

end A069459.P8167886464560625430

/-! ## A069459.P156191068170808227

`A062006(n+1)-2`
-/

namespace A069459.P156191068170808227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062006 (n + 1) - 2

end

end A069459.P156191068170808227

/-!
# A069460: Greatest prime factor of prime(n)^n - 1.

The programs for A069460, there is no canonical definition to state claims against.
-/

/-! ## A069460.P15458673340122618246

`A006530(A070522(n+2))`
-/

namespace A069460.P15458673340122618246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A070522 (n + 2)).toNat

end

end A069460.P15458673340122618246

/-!
# A069463: Greatest prime factor of prime(n)^n+1.

The programs for A069463, there is no canonical definition to state claims against.
-/

/-! ## A069463.P4729705520080824465

`record[A191546(A008315(n))]`
-/

namespace A069463.P4729705520080824465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191546 (A008315 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069463.P4729705520080824465

/-! ## A069463.P5844760420698397569

`record[A191546(A258373(n+1))]`
-/

namespace A069463.P5844760420698397569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191546 (A258373 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069463.P5844760420698397569

/-! ## A069463.P10004375366620732682

`A191546(n+1)+A016286(A088715(n))`
-/

namespace A069463.P10004375366620732682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191546 (n + 1) + A016286 (A088715 n).toNat

end

end A069463.P10004375366620732682

/-!
# A069464: Number of distinct prime factors of prime(n)^n+1.

The programs for A069464, there is no canonical definition to state claims against.
-/

/-! ## A069464.P13394320377197746387

`A137672(A005100(n+1)*A079017(n+1))`
-/

namespace A069464.P13394320377197746387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137672 (A005100 (n + 1) * A079017 (n + 1)).toNat

end

end A069464.P13394320377197746387

/-! ## A069464.P1194957501140376792

`A000120(A000959(n+1)*A194540(n+1))`
-/

namespace A069464.P1194957501140376792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A000959 (n + 1) * A194540 (n + 1)).toNat

end

end A069464.P1194957501140376792

/-! ## A069464.P8259518487709183267

`A001222(A336534(n)*A340018(3*(n+1)))`
-/

namespace A069464.P8259518487709183267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A336534 n * A340018 (3 * (n + 1))).toNat

end

end A069464.P8259518487709183267

/-! ## A069464.P6188572766432837603

`A106469(A292717(n)^4)+A007895(A219642(n))`
-/

namespace A069464.P6188572766432837603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106469 (A292717 n ^ 4).toNat + A007895 (A219642 n).toNat

end

end A069464.P6188572766432837603

/-!
# A069466: Triangle T(n, k) of numbers of square lattice walks that start and end at origin after 2*n steps and contain exactly k steps to the east, possibly touching origin at intermediate stages.

The programs for A069466, the canonical program `A069466.P16891646356280959536` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069466 has offset 0).

The definition of A069466 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3781 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069466.P3006236265230059881

`A046521(n)*A098473(n)`
-/

namespace A069466.P3006236265230059881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046521 n * A098473 n

end

end A069466.P3006236265230059881

namespace A069466

/-- `A046521(n)*A098473(n)` -/
def P3006236265230059881.Spec : Prop :=
  ∀ n, P3006236265230059881.a n = A069466 n

end A069466

/-! ## A069466.P16891646356280959536

`A067804(n)*A086645(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069466

/-- `A067804(n)*A086645(n)` -/
def P16891646356280959536.Spec : Prop :=
  ∀ n, P16891646356280959536.a n = A069466 n

theorem P16891646356280959536.correct : P16891646356280959536.Spec := by
  intro n
  simp only [A069466]

end A069466

/-! ## A069466.P13876609692809110125

`A046899(n)*A110608(n)`
-/

namespace A069466.P13876609692809110125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046899 n * A110608 n

end

end A069466.P13876609692809110125

namespace A069466

/-- `A046899(n)*A110608(n)` -/
def P13876609692809110125.Spec : Prop :=
  ∀ n, P13876609692809110125.a n = A069466 n

end A069466

/-! ## A069466.P6308304556747780151

`A063007(n)*A094527(n)`
-/

namespace A069466.P6308304556747780151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063007 n * A094527 n

end

end A069466.P6308304556747780151

namespace A069466

/-- `A063007(n)*A094527(n)` -/
def P6308304556747780151.Spec : Prop :=
  ∀ n, P6308304556747780151.a n = A069466 n

end A069466

/-! ## A069466.P5913794013808933104

`A062344(n)*A104684(n)`
-/

namespace A069466.P5913794013808933104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062344 n * A104684 n

end

end A069466.P5913794013808933104

namespace A069466

/-- `A062344(n)*A104684(n)` -/
def P5913794013808933104.Spec : Prop :=
  ∀ n, P5913794013808933104.a n = A069466 n

end A069466

/-! ## A069466.P12678313972021493683

`A054142(n)*A142243(n)`
-/

namespace A069466.P12678313972021493683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 n * A142243 n

end

end A069466.P12678313972021493683

namespace A069466

/-- `A054142(n)*A142243(n)` -/
def P12678313972021493683.Spec : Prop :=
  ∀ n, P12678313972021493683.a n = A069466 n

end A069466

/-! ## A069466.P14088177444910550522

`A068555(n)*A155495(n)`
-/

namespace A069466.P14088177444910550522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068555 n * A155495 n

end

end A069466.P14088177444910550522

namespace A069466

/-- `A068555(n)*A155495(n)` -/
def P14088177444910550522.Spec : Prop :=
  ∀ n, P14088177444910550522.a n = A069466 n

end A069466

/-! ## A069466.P7467789448500642559

`A007318(n)*A356546(n)`
-/

namespace A069466.P7467789448500642559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A356546 n

end

end A069466.P7467789448500642559

namespace A069466

/-- `A007318(n)*A356546(n)` -/
def P7467789448500642559.Spec : Prop :=
  ∀ n, P7467789448500642559.a n = A069466 n

end A069466

/-! ## A069466.P14019248089877744380

`A134058(n)*A258758(n)`
-/

namespace A069466.P14019248089877744380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n * A258758 n

end

end A069466.P14019248089877744380

namespace A069466

/-- `A134058(n)*A258758(n)` -/
def P14019248089877744380.Spec : Prop :=
  ∀ n, P14019248089877744380.a n = A069466 n

end A069466

/-! ## A069466.P18144834624697987039

`A003506(n+1)*A085880(n)`
-/

namespace A069466.P18144834624697987039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1) * A085880 n

end

end A069466.P18144834624697987039

namespace A069466

/-- `A003506(n+1)*A085880(n)` -/
def P18144834624697987039.Spec : Prop :=
  ∀ n, P18144834624697987039.a n = A069466 n

end A069466

/-! ## A069466.P16111468275944923047

`A003991(n+1)*A342982(n)`
-/

namespace A069466.P16111468275944923047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1) * A342982 n

end

end A069466.P16111468275944923047

namespace A069466

/-- `A003991(n+1)*A342982(n)` -/
def P16111468275944923047.Spec : Prop :=
  ∀ n, P16111468275944923047.a n = A069466 n

end A069466

/-! ## A069466.P15847105847178420339

`A093375(n+1)*A368745(n)`
-/

namespace A069466.P15847105847178420339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) * A368745 n

end

end A069466.P15847105847178420339

namespace A069466

/-- `A093375(n+1)*A368745(n)` -/
def P15847105847178420339.Spec : Prop :=
  ∀ n, P15847105847178420339.a n = A069466 n

end A069466

/-! ## A069466.P6741168522806776861

`A000984(A003056(n))*A008459(n)`
-/

namespace A069466.P6741168522806776861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 (A003056 n).toNat * A008459 n

end

end A069466.P6741168522806776861

namespace A069466

/-- `A000984(A003056(n))*A008459(n)` -/
def P6741168522806776861.Spec : Prop :=
  ∀ n, P6741168522806776861.a n = A069466 n

end A069466

/-! ## A069466.P1945629146139776779

`A008459(n)*A117852(A057944(n))`
-/

namespace A069466.P1945629146139776779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008459 n * A117852 (A057944 n).toNat

end

end A069466.P1945629146139776779

namespace A069466

/-- `A008459(n)*A117852(A057944(n))` -/
def P1945629146139776779.Spec : Prop :=
  ∀ n, P1945629146139776779.a n = A069466 n

end A069466

/-! ## A069466.P12043190816568180109

`A007318(n)²*A000984(A003056(n))`
-/

namespace A069466.P12043190816568180109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n ^ 2 * A000984 (A003056 n).toNat

end

end A069466.P12043190816568180109

namespace A069466

/-- `A007318(n)²*A000984(A003056(n))` -/
def P12043190816568180109.Spec : Prop :=
  ∀ n, P12043190816568180109.a n = A069466 n

end A069466

/-! ## A069466.P6619879277600198371

`A092392(A057944(n))*A124428(A061885(n))`
-/

namespace A069466.P6619879277600198371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092392 (A057944 n).toNat * A124428 (A061885 n).toNat

end

end A069466.P6619879277600198371

namespace A069466

/-- `A092392(A057944(n))*A124428(A061885(n))` -/
def P6619879277600198371.Spec : Prop :=
  ∀ n, P6619879277600198371.a n = A069466 n

end A069466

/-! ## A069466.P14567531150404655843

`A164961(n)/A098361(n)`
-/

namespace A069466.P14567531150404655843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164961 n : ℚ) / (A098361 n : ℚ)

end

end A069466.P14567531150404655843

namespace A069466

/-- `A164961(n)/A098361(n)` -/
def P14567531150404655843.Spec : Prop :=
  ∀ n, P14567531150404655843.a n = (A069466 n : ℚ)

end A069466

/-!
# A069467: Twin primes belonging to packs of three or more twin pairs.

The programs for A069467, there is no canonical definition to state claims against.
-/

/-! ## A069467.P15928435545332556618

`record[A136144(A008619(n))-A000038(n)]`
-/

namespace A069467.P15928435545332556618
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136144 (A008619 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069467.P15928435545332556618

/-! ## A069467.P41424643130208134

`record[A136144(A028310(n))-A000038(n)]`
-/

namespace A069467.P41424643130208134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136144 (A028310 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069467.P41424643130208134

/-! ## A069467.P5185938139145250026

`record[A136144(A344180(n))-A000038(n)]`
-/

namespace A069467.P5185938139145250026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136144 (A344180 n).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069467.P5185938139145250026

/-! ## A069467.P2223750124954082033

`record[A136144(A156061(n+1))-A000038(n)]`
-/

namespace A069467.P2223750124954082033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136144 (A156061 (n + 1)).toNat - A000038 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069467.P2223750124954082033

/-! ## A069467.P8384464584075378979

`record[A136144(A156061(n+1))+A002448(n+1)]`
-/

namespace A069467.P8384464584075378979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136144 (A156061 (n + 1)).toNat + A002448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069467.P8384464584075378979

/-!
# A069468: Number of ways writing n! as a product of some other numbers which has no digits equal to 1.

The programs for A069468, there is no canonical definition to state claims against.
-/

/-! ## A069468.P12375081180720897622

`A067734((n+1)!)`
-/

namespace A069468.P12375081180720897622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067734 (Nat.factorial (n + 1))

end

end A069468.P12375081180720897622

/-!
# A069469: Numbers k such that prime(reversal(k)) = reversal(prime(k)). Ignore leading 0's.

The programs for A069469, there is no canonical definition to state claims against.
-/

/-! ## A069469.P17179006287358786594

`A348370(record[∏{p}[n+1, #*val(n+1, #)]])`
-/

namespace A069469.P17179006287358786594
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A069469.P17179006287358786594

/-! ## A069469.P48663271953603704

`A348370(∑[A328718(n)])`
-/

namespace A069469.P48663271953603704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348370 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069469.P48663271953603704

/-! ## A069469.P16198328075526951316

`A348370(∑[A347811(n)])`
-/

namespace A069469.P16198328075526951316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347811 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348370 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A069469.P16198328075526951316

/-! ## A069469.P6363578201296414902

`A348370(record[A347777(n)])`
-/

namespace A069469.P6363578201296414902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347777 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069469.P6363578201296414902

/-! ## A069469.P12364251401401401070

`A348370(record[A347865(n)])`
-/

namespace A069469.P12364251401401401070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348370 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069469.P12364251401401401070

/-!
# A069470: a(n) = Sum_{k>=1} floor(n/(k*(k+1)/2)).

The programs for A069470, the canonical program `A069470.P7953847650601744514` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069470 has offset 0).

The definition of A069470 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007862, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069470.P7953847650601744514

`a(n-1)+A007862(n)` with `a(0)=0`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069470

/-- `a(n-1)+A007862(n)` -/
def P7953847650601744514.Spec : Prop :=
  ∀ n, P7953847650601744514.a n = A069470 n

theorem P7953847650601744514.correct : P7953847650601744514.Spec := by
  intro n
  simp only [A069470]

end A069470

/-! ## A069470.P3792684037266394898

`∑[A325334(n)]+n`
-/

namespace A069470.P3792684037266394898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A069470.P3792684037266394898

namespace A069470

/-- `∑[A325334(n)]+n` -/
def P3792684037266394898.Spec : Prop :=
  ∀ n, P3792684037266394898.a n = A069470 n

end A069470

/-! ## A069470.P12535891882141060414

`∑[∑{d}[n, A010054(#)]]`
-/

namespace A069470.P12535891882141060414
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A010054 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069470.P12535891882141060414

namespace A069470

/-- `∑[∑{d}[n, A010054(#)]]` -/
def P12535891882141060414.Spec : Prop :=
  ∀ n, P12535891882141060414.a n = A069470 n

end A069470

/-! ## A069470.P14766733721728122068

`∑[∑{d}[n, A073423(#)]]`
-/

namespace A069470.P14766733721728122068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A073423 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069470.P14766733721728122068

namespace A069470

/-- `∑[∑{d}[n, A073423(#)]]` -/
def P14766733721728122068.Spec : Prop :=
  ∀ n, P14766733721728122068.a n = A069470 n

end A069470

/-! ## A069470.P4149778448326366190

`∑[∑{d}[n, A073424(#)]]`
-/

namespace A069470.P4149778448326366190
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A073424 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069470.P4149778448326366190

namespace A069470

/-- `∑[∑{d}[n, A073424(#)]]` -/
def P4149778448326366190.Spec : Prop :=
  ∀ n, P4149778448326366190.a n = A069470 n

end A069470

/-! ## A069470.P11649333395565317643

`∑[∑{d}[n, A018900(#+1)%2]]`
-/

namespace A069470.P11649333395565317643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Int.tmod (A018900 (d + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069470.P11649333395565317643

namespace A069470

/-- `∑[∑{d}[n, A018900(#+1)%2]]` -/
def P11649333395565317643.Spec : Prop :=
  ∀ n, P11649333395565317643.a n = A069470 n

end A069470

/-! ## A069470.P8913757084255430392

`∑[A007862(n+1)]-A007862(n+1)`
-/

namespace A069470.P8913757084255430392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007862 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A007862 (n + 1)

end

end A069470.P8913757084255430392

namespace A069470

/-- `∑[A007862(n+1)]-A007862(n+1)` -/
def P8913757084255430392.Spec : Prop :=
  ∀ n, P8913757084255430392.a n = A069470 n

end A069470

/-! ## A069470.P13504798792615774792

`eq[1, A383855(n+1)]`
-/

namespace A069470.P13504798792615774792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383855 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A069470.P13504798792615774792

namespace A069470

/-- `eq[1, A383855(n+1)]` -/
def P13504798792615774792.Spec : Prop :=
  ∀ n, (P13504798792615774792.a n : ℤ) = A069470 n

end A069470

/-! ## A069470.P5354902296809814807

`∑[A129308(floor(acot(n))+2*n)]`
-/

namespace A069470.P5354902296809814807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069470.P5354902296809814807

namespace A069470

/-- `∑[A129308(floor(acot(n))+2*n)]` -/
def P5354902296809814807.Spec : Prop :=
  ∀ n, P5354902296809814807.a n = A069470 n

end A069470

/-! ## A069470.P11798710292536659872

`A129308(2*n)+a(n-1)` with `a(0)=0`
-/

namespace A069470.P11798710292536659872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A129308 (2 * n) + a (n - 1)

end

end A069470.P11798710292536659872

namespace A069470

/-- `A129308(2*n)+a(n-1)` -/
def P11798710292536659872.Spec : Prop :=
  ∀ n, P11798710292536659872.a n = A069470 n

end A069470

/-! ## A069470.P8643074552891973646

`∑[A129308(record[n*n%2]+1)]`
-/

namespace A069470.P8643074552891973646
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n % 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069470.P8643074552891973646

namespace A069470

/-- `∑[A129308(record[n*n%2]+1)]` -/
def P8643074552891973646.Spec : Prop :=
  ∀ n, P8643074552891973646.a n = A069470 n

end A069470

/-! ## A069470.P17594559083105386976

`∑[A129308(A004277(n))]`
-/

namespace A069470.P17594559083105386976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A069470.P17594559083105386976

namespace A069470

/-- `∑[A129308(A004277(n))]` -/
def P17594559083105386976.Spec : Prop :=
  ∀ n, P17594559083105386976.a n = A069470 n

end A069470

/-! ## A069470.P12185711870232165253

`record[∑[A129308(n+1)]-A129308(n+1)²]`
-/

namespace A069470.P12185711870232165253
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A129308 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069470.P12185711870232165253

namespace A069470

/-- `record[∑[A129308(n+1)]-A129308(n+1)²]` -/
def P12185711870232165253.Spec : Prop :=
  ∀ n, P12185711870232165253.a n = A069470 n

end A069470

/-! ## A069470.P7325427331848207167

`∑[A129308(2*(n+1))]-A129308(2*(n+1))`
-/

namespace A069470.P7325427331848207167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129308 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A129308 (2 * (n + 1))

end

end A069470.P7325427331848207167

namespace A069470

/-- `∑[A129308(2*(n+1))]-A129308(2*(n+1))` -/
def P7325427331848207167.Spec : Prop :=
  ∀ n, P7325427331848207167.a n = A069470 n

end A069470

/-!
# A069471: Stirling transform of squares of Bell numbers: a(0)=1, a(n) = Sum_{k=1..n} Stirling2(n,k)*(bell(k))^2.

The programs for A069471, there is no canonical definition to state claims against.
-/

/-! ## A069471.P14505334802134596283

`A351833((n+1)²*floor((n+2)^(n-2))+2)`
-/

namespace A069471.P14505334802134596283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351833 (((n + 1) ^ 2 : ℤ) * ⌊(n + 2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋ + 2).toNat

end

end A069471.P14505334802134596283

/-!
# A069473: First differences of (n+1)^6-n^6 (A022522).

The programs for A069473, the canonical program `A069473.P14246622697866425335` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069473 has offset 0).

The definition of A069473 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069473.P14246622697866425335

`30*n^4+120*n^3+210*n²+180*n+62`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069473

/-- `30*n^4+120*n^3+210*n²+180*n+62` -/
def P14246622697866425335.Spec : Prop :=
  ∀ n, (P14246622697866425335.a n : ℤ) = A069473 n

theorem P14246622697866425335.correct : P14246622697866425335.Spec := by
  intro n
  simp only [A069473]

end A069473

/-! ## A069473.P1625556817758664665

`Δ[A022522(n)]`
-/

namespace A069473.P1625556817758664665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022522 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069473.P1625556817758664665

namespace A069473

/-- `Δ[A022522(n)]` -/
def P1625556817758664665.Spec : Prop :=
  ∀ n, P1625556817758664665.a n = A069473 n

end A069473

/-! ## A069473.P9221477769240972189

`lcm(2, Δ[Δ[(n*n²)²]])`
-/

namespace A069473.P9221477769240972189
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (n + 1) - f1 n)

end

end A069473.P9221477769240972189

namespace A069473

/-- `lcm(2, Δ[Δ[(n*n²)²]])` -/
def P9221477769240972189.Spec : Prop :=
  ∀ n, (P9221477769240972189.a n : ℤ) = A069473 n

end A069473

/-! ## A069473.P9831291247363564494

`or(2, Δ[Δ[(n*n²)²]])`
-/

namespace A069473.P9831291247363564494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (f1 (n + 1) - f1 n)

end

end A069473.P9831291247363564494

namespace A069473

/-- `or(2, Δ[Δ[(n*n²)²]])` -/
def P9831291247363564494.Spec : Prop :=
  ∀ n, P9831291247363564494.a n = A069473 n

end A069473

/-! ## A069473.P12984319495173453898

`Δ[Δ[A131472(n)]]`
-/

namespace A069473.P12984319495173453898
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131472 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069473.P12984319495173453898

namespace A069473

/-- `Δ[Δ[A131472(n)]]` -/
def P12984319495173453898.Spec : Prop :=
  ∀ n, P12984319495173453898.a n = A069473 n

end A069473

/-! ## A069473.P11117066158053319538

`Δ[Δ[A131473(n)]]`
-/

namespace A069473.P11117066158053319538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131473 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069473.P11117066158053319538

namespace A069473

/-- `Δ[Δ[A131473(n)]]` -/
def P11117066158053319538.Spec : Prop :=
  ∀ n, P11117066158053319538.a n = A069473 n

end A069473

/-! ## A069473.P3188967782024581380

`Δ[Δ[A000578(n)²]]`
-/

namespace A069473.P3188967782024581380
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069473.P3188967782024581380

namespace A069473

/-- `Δ[Δ[A000578(n)²]]` -/
def P3188967782024581380.Spec : Prop :=
  ∀ n, P3188967782024581380.a n = A069473 n

end A069473

/-! ## A069473.P18287616123059717095

`Δ[Δ[Δ[C(n, 2)²]²]]`
-/

namespace A069473.P18287616123059717095
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f3 (n + 1) : ℤ) - (f3 n : ℤ)) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069473.P18287616123059717095

namespace A069473

/-- `Δ[Δ[Δ[C(n, 2)²]²]]` -/
def P18287616123059717095.Spec : Prop :=
  ∀ n, P18287616123059717095.a n = A069473 n

end A069473

/-! ## A069473.P909979998689088958

`Δ[Δ[A001014(n)]]`
-/

namespace A069473.P909979998689088958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001014 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069473.P909979998689088958

namespace A069473

/-- `Δ[Δ[A001014(n)]]` -/
def P909979998689088958.Spec : Prop :=
  ∀ n, P909979998689088958.a n = A069473 n

end A069473

/-! ## A069473.P17940019872308140901

`Δ[Δ[A002604(n)]]`
-/

namespace A069473.P17940019872308140901
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002604 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069473.P17940019872308140901

namespace A069473

/-- `Δ[Δ[A002604(n)]]` -/
def P17940019872308140901.Spec : Prop :=
  ∀ n, P17940019872308140901.a n = A069473 n

end A069473

/-! ## A069473.P17396940460359406662

`Δ[Δ[A180356(n)]]`
-/

namespace A069473.P17396940460359406662
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180356 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069473.P17396940460359406662

namespace A069473

/-- `Δ[Δ[A180356(n)]]` -/
def P17396940460359406662.Spec : Prop :=
  ∀ n, P17396940460359406662.a n = A069473 n

end A069473

/-!
# A069474: First differences of A069473.

The programs for A069474, the canonical program `A069474.P3030932707550304372` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069474 has offset 0).

The definition of A069474 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069474.P3030932707550304372

`120*n^3+540*n²+900*n+540`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069474

/-- `120*n^3+540*n²+900*n+540` -/
def P3030932707550304372.Spec : Prop :=
  ∀ n, (P3030932707550304372.a n : ℤ) = A069474 n

theorem P3030932707550304372.correct : P3030932707550304372.Spec := by
  intro n
  simp only [A069474]

end A069474

/-! ## A069474.P1730031522407168030

`Δ[A069473(n)]`
-/

namespace A069474.P1730031522407168030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069474.P1730031522407168030

namespace A069474

/-- `Δ[A069473(n)]` -/
def P1730031522407168030.Spec : Prop :=
  ∀ n, P1730031522407168030.a n = A069474 n

end A069474

/-! ## A069474.P2877003199341596735

`Δ[Δ[A022522(n)]]`
-/

namespace A069474.P2877003199341596735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022522 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069474.P2877003199341596735

namespace A069474

/-- `Δ[Δ[A022522(n)]]` -/
def P2877003199341596735.Spec : Prop :=
  ∀ n, P2877003199341596735.a n = A069474 n

end A069474

/-! ## A069474.P17680801469255626264

`A005898(n+1)*A350371(A093178(2*n))`
-/

namespace A069474.P17680801469255626264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005898 (n + 1) * A350371 (A093178 (2 * n)).toNat

end

end A069474.P17680801469255626264

namespace A069474

/-- `A005898(n+1)*A350371(A093178(2*n))` -/
def P17680801469255626264.Spec : Prop :=
  ∀ n, P17680801469255626264.a n = A069474 n

end A069474

/-! ## A069474.P13882484056427242195

`lcm(2, Δ[Δ[Δ[(n*n²)²]]])`
-/

namespace A069474.P13882484056427242195
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f1 (n + 1) - f1 n)

end

end A069474.P13882484056427242195

namespace A069474

/-- `lcm(2, Δ[Δ[Δ[(n*n²)²]]])` -/
def P13882484056427242195.Spec : Prop :=
  ∀ n, (P13882484056427242195.a n : ℤ) = A069474 n

end A069474

/-! ## A069474.P14458776610015329555

`or(4, Δ[Δ[Δ[(n*n²)²]]])`
-/

namespace A069474.P14458776610015329555
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n * n ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 4 (f1 (n + 1) - f1 n)

end

end A069474.P14458776610015329555

namespace A069474

/-- `or(4, Δ[Δ[Δ[(n*n²)²]]])` -/
def P14458776610015329555.Spec : Prop :=
  ∀ n, P14458776610015329555.a n = A069474 n

end A069474

/-! ## A069474.P2749985358978185200

`(A169823(2*n+1)-A169823(2*n))*A005898(n+1)`
-/

namespace A069474.P2749985358978185200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A169823 (2 * n + 1) - A169823 (2 * n)) * A005898 (n + 1)

end

end A069474.P2749985358978185200

namespace A069474

/-- `(A169823(2*n+1)-A169823(2*n))*A005898(n+1)` -/
def P2749985358978185200.Spec : Prop :=
  ∀ n, P2749985358978185200.a n = A069474 n

end A069474

/-! ## A069474.P6940152592937337758

`(A008597(2*n+1)-A008597(2*n))*A173961(n+2)`
-/

namespace A069474.P6940152592937337758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008597 (2 * n + 1) - A008597 (2 * n)) * A173961 (n + 2)

end

end A069474.P6940152592937337758

namespace A069474

/-- `(A008597(2*n+1)-A008597(2*n))*A173961(n+2)` -/
def P6940152592937337758.Spec : Prop :=
  ∀ n, P6940152592937337758.a n = A069474 n

end A069474

/-! ## A069474.P11897053882480559135

`Δ[2*A132208((n+1)²)]`
-/

namespace A069474.P11897053882480559135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A132208 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069474.P11897053882480559135

namespace A069474

/-- `Δ[2*A132208((n+1)²)]` -/
def P11897053882480559135.Spec : Prop :=
  ∀ n, P11897053882480559135.a n = A069474 n

end A069474

/-! ## A069474.P14335784277997248939

`Δ[3*A163761((n+1)²)]`
-/

namespace A069474.P14335784277997248939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A163761 ((n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069474.P14335784277997248939

namespace A069474

/-- `Δ[3*A163761((n+1)²)]` -/
def P14335784277997248939.Spec : Prop :=
  ∀ n, P14335784277997248939.a n = A069474 n

end A069474

/-!
# A069475: First differences of A069474, successive differences of (n+1)^6-n^6.

The programs for A069475, the canonical program `A069475.P16115383178570612089` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069475 has offset 0).

The definition of A069475 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069475.P16115383178570612089

`120*A056107(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069475

/-- `120*A056107(n+2)` -/
def P16115383178570612089.Spec : Prop :=
  ∀ n, P16115383178570612089.a n = A069475 n

theorem P16115383178570612089.correct : P16115383178570612089.Spec := by
  intro n
  simp only [A069475]

end A069475

/-! ## A069475.P10418812822059725261

`60*(6*(n+2)²+2)`
-/

namespace A069475.P10418812822059725261
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  60 * (6 * (n + 2) ^ 2 + 2)

end

end A069475.P10418812822059725261

namespace A069475

/-- `60*(6*(n+2)²+2)` -/
def P10418812822059725261.Spec : Prop :=
  ∀ n, (P10418812822059725261.a n : ℤ) = A069475 n

end A069475

/-! ## A069475.P14340779675854548989

`Δ[A069474(n)]`
-/

namespace A069475.P14340779675854548989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069474 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069475.P14340779675854548989

namespace A069475

/-- `Δ[A069474(n)]` -/
def P14340779675854548989.Spec : Prop :=
  ∀ n, P14340779675854548989.a n = A069475 n

end A069475

/-! ## A069475.P13349085657670757572

`A069474(n+1)-A069474(n)`
-/

namespace A069475.P13349085657670757572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069474 (n + 1) - A069474 n

end

end A069475.P13349085657670757572

namespace A069475

/-- `A069474(n+1)-A069474(n)` -/
def P13349085657670757572.Spec : Prop :=
  ∀ n, P13349085657670757572.a n = A069475 n

end A069475

/-! ## A069475.P2550090265828922991

`Δ[Δ[A069473(n)]]`
-/

namespace A069475.P2550090265828922991
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069473 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069475.P2550090265828922991

namespace A069475

/-- `Δ[Δ[A069473(n)]]` -/
def P2550090265828922991.Spec : Prop :=
  ∀ n, P2550090265828922991.a n = A069475 n

end A069475

/-! ## A069475.P327356770058858068

`Δ[Δ[Δ[A022522(n)]]]`
-/

namespace A069475.P327356770058858068
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022522 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069475.P327356770058858068

namespace A069475

/-- `Δ[Δ[Δ[A022522(n)]]]` -/
def P327356770058858068.Spec : Prop :=
  ∀ n, P327356770058858068.a n = A069475 n

end A069475

/-! ## A069475.P5992354764670607083

`A069478(A080663(n+2))`
-/

namespace A069475.P5992354764670607083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069478 (A080663 (n + 2)).toNat

end

end A069475.P5992354764670607083

namespace A069475

/-- `A069478(A080663(n+2))` -/
def P5992354764670607083.Spec : Prop :=
  ∀ n, P5992354764670607083.a n = A069475 n

end A069475

/-! ## A069475.P6641729230367625168

`A101095(A290325(n+2))`
-/

namespace A069475.P6641729230367625168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (A290325 (n + 2)).toNat

end

end A069475.P6641729230367625168

namespace A069475

/-- `A101095(A290325(n+2))` -/
def P6641729230367625168.Spec : Prop :=
  ∀ n, P6641729230367625168.a n = A069475 n

end A069475

/-! ## A069475.P16190745341858127385

`A101095(A056108(n+2)-n)`
-/

namespace A069475.P16190745341858127385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101095 (A056108 (n + 2) - (n : ℤ)).toNat

end

end A069475.P16190745341858127385

namespace A069475

/-- `A101095(A056108(n+2)-n)` -/
def P16190745341858127385.Spec : Prop :=
  ∀ n, P16190745341858127385.a n = A069475 n

end A069475

/-!
# A069476: First differences of A069475, successive differences of (n+1)^6 - n^6.

The programs for A069476, the canonical program `A069476.P8053620155685330337` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069476 has offset 0).

The definition of A069476 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069476.P8053620155685330337

`360*(2*n+5)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069476

/-- `360*(2*n+5)` -/
def P8053620155685330337.Spec : Prop :=
  ∀ n, (P8053620155685330337.a n : ℤ) = A069476 n

theorem P8053620155685330337.correct : P8053620155685330337.Spec := by
  intro n
  simp only [A069476]

end A069476

/-!
# A069477: a(n) = 60*n^2 + 180*n + 150.

The programs for A069477, the canonical program `A069477.P5873570272558288466` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069477 has offset 1).

The definition of A069477 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `60*(n+1)²+180*(n+1)+150` (program `A069477.P5873570272558288466`, by `A069477.P5873570272558288466.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A069477.P5873570272558288466

`60*(n+1)²+180*(n+1)+150`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069477

/-- `60*(n+1)²+180*(n+1)+150` -/
def P5873570272558288466.Spec : Prop :=
  ∀ n, (P5873570272558288466.a n : ℤ) = A069477 (n + 1)

theorem P5873570272558288466.correct : P5873570272558288466.Spec := by
  intro n
  simp only [A069477, Nat.add_sub_cancel]

end A069477

/-! ## A069477.P3696808767686718875

`15*A069894(n+2)`
-/

namespace A069477.P3696808767686718875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  15 * A069894 (n + 2)

end

end A069477.P3696808767686718875

namespace A069477

/-- `15*A069894(n+2)` -/
def P3696808767686718875.Spec : Prop :=
  ∀ n, P3696808767686718875.a n = A069477 (n + 1)

end A069477

/-! ## A069477.P15644310874784805814

`30*A001844(n+2)`
-/

namespace A069477.P15644310874784805814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  30 * A001844 (n + 2)

end

end A069477.P15644310874784805814

namespace A069477

/-- `30*A001844(n+2)` -/
def P15644310874784805814.Spec : Prop :=
  ∀ n, P15644310874784805814.a n = A069477 (n + 1)

end A069477

/-! ## A069477.P4834611357039415217

`5*6*(A046092(n+2)+1)`
-/

namespace A069477.P4834611357039415217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (6 * (A046092 (n + 2) + 1))

end

end A069477.P4834611357039415217

namespace A069477

/-- `5*6*(A046092(n+2)+1)` -/
def P4834611357039415217.Spec : Prop :=
  ∀ n, P4834611357039415217.a n = A069477 (n + 1)

end A069477

/-! ## A069477.P2776943897183523018

`A101096(n+4)`
-/

namespace A069477.P2776943897183523018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101096 (n + 4)

end

end A069477.P2776943897183523018

namespace A069477

/-- `A101096(n+4)` -/
def P2776943897183523018.Spec : Prop :=
  ∀ n, P2776943897183523018.a n = A069477 (n + 1)

end A069477

/-! ## A069477.P1391989731334613920

`(A249674(2*n+1)-A249674(2*n))*A099776(n+2)`
-/

namespace A069477.P1391989731334613920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A249674 (2 * n + 1) - A249674 (2 * n)) * A099776 (n + 2)

end

end A069477.P1391989731334613920

namespace A069477

/-- `(A249674(2*n+1)-A249674(2*n))*A099776(n+2)` -/
def P1391989731334613920.Spec : Prop :=
  ∀ n, P1391989731334613920.a n = A069477 (n + 1)

end A069477

/-! ## A069477.P8468824941901009883

`3*A216875(2*n+7)`
-/

namespace A069477.P8468824941901009883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A216875 (2 * n + 7)

end

end A069477.P8468824941901009883

namespace A069477

/-- `3*A216875(2*n+7)` -/
def P8468824941901009883.Spec : Prop :=
  ∀ n, P8468824941901009883.a n = A069477 (n + 1)

end A069477

/-!
# A069478: First differences of A069477, successive differences of (n+1)^5 - n^5.

The programs for A069478, the canonical program `A069478.P7618583102907137042` is in `Seq.B000.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069478 has offset 1).

The definition of A069478 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069478.P7618583102907137042

`120*(n+3)`

The canonical program, it is in `Seq.B000.C010`.
-/

namespace A069478

/-- `120*(n+3)` -/
def P7618583102907137042.Spec : Prop :=
  ∀ n, (P7618583102907137042.a n : ℤ) = A069478 (n + 1)

theorem P7618583102907137042.correct : P7618583102907137042.Spec := by
  intro n
  simp only [A069478, Nat.add_sub_cancel]

end A069478

/-!
# A069482: a(n) = prime(n+1)^2 - prime(n)^2.

The programs for A069482, the canonical program `A069482.P16607122436003558489` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069482 has offset 1).

The definition of A069482 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069482.P16607122436003558489

`Δ[A066872(n+1)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069482

/-- `Δ[A066872(n+1)]` -/
def P16607122436003558489.Spec : Prop :=
  ∀ n, P16607122436003558489.a n = A069482 (n + 1)

theorem P16607122436003558489.correct : P16607122436003558489.Spec := by
  intro n
  simp only [A069482, Nat.add_sub_cancel]

end A069482

/-! ## A069482.P5593939119928517133

`Δ[(A001748(n+1)/3)²]`
-/

namespace A069482.P5593939119928517133
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001748 (n + 1) : ℚ) / 3) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069482.P5593939119928517133

namespace A069482

/-- `Δ[(A001748(n+1)/3)²]` -/
def P5593939119928517133.Spec : Prop :=
  ∀ n, P5593939119928517133.a n = (A069482 (n + 1) : ℚ)

end A069482

/-! ## A069482.P12818120500360162521

`Δ[(A001749(n+1)/4)²]`
-/

namespace A069482.P12818120500360162521
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A001749 (n + 1) : ℚ) / 4) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069482.P12818120500360162521

namespace A069482

/-- `Δ[(A001749(n+1)/4)²]` -/
def P12818120500360162521.Spec : Prop :=
  ∀ n, P12818120500360162521.a n = (A069482 (n + 1) : ℚ)

end A069482

/-! ## A069482.P8293337068943912094

`Δ[∪[A042988(n), A042990(n)]²]`
-/

namespace A069482.P8293337068943912094
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042988 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042990 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A069482.P8293337068943912094

namespace A069482

/-- `Δ[∪[A042988(n), A042990(n)]²]` -/
def P8293337068943912094.Spec : Prop :=
  ∀ n, P8293337068943912094.a n = A069482 (n + 1)

end A069482

/-! ## A069482.P18314406063755096741

`A291463(n+1)+A048852(n+1)`
-/

namespace A069482.P18314406063755096741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) + A048852 (n + 1)

end

end A069482.P18314406063755096741

namespace A069482

/-- `A291463(n+1)+A048852(n+1)` -/
def P18314406063755096741.Spec : Prop :=
  ∀ n, P18314406063755096741.a n = A069482 (n + 1)

end A069482

/-! ## A069482.P5675765209717028045

`A001248(n+1)-A064051(n+1)`
-/

namespace A069482.P5675765209717028045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) - A064051 (n + 1)

end

end A069482.P5675765209717028045

namespace A069482

/-- `A001248(n+1)-A064051(n+1)` -/
def P5675765209717028045.Spec : Prop :=
  ∀ n, P5675765209717028045.a n = A069482 (n + 1)

end A069482

/-! ## A069482.P2002743243909890564

`A069484(n+1)-A079704(n+1)`
-/

namespace A069482.P2002743243909890564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) - A079704 (n + 1)

end

end A069482.P2002743243909890564

namespace A069482

/-- `A069484(n+1)-A079704(n+1)` -/
def P2002743243909890564.Spec : Prop :=
  ∀ n, P2002743243909890564.a n = A069482 (n + 1)

end A069482

/-! ## A069482.P7846391399374985285

`A143928(n+1)-A069484(n+1)`
-/

namespace A069482.P7846391399374985285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143928 (n + 1) - A069484 (n + 1)

end

end A069482.P7846391399374985285

namespace A069482

/-- `A143928(n+1)-A069484(n+1)` -/
def P7846391399374985285.Spec : Prop :=
  ∀ n, P7846391399374985285.a n = A069482 (n + 1)

end A069482

/-! ## A069482.P17633424700028383685

`A261465(n+1)-A036689(n+1)`
-/

namespace A069482.P17633424700028383685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261465 (n + 1) - A036689 (n + 1)

end

end A069482.P17633424700028383685

namespace A069482

/-- `A261465(n+1)-A036689(n+1)` -/
def P17633424700028383685.Spec : Prop :=
  ∀ n, P17633424700028383685.a n = A069482 (n + 1)

end A069482

/-! ## A069482.P10582222846766580308

`A349660(n+1)-A036690(n+1)`
-/

namespace A069482.P10582222846766580308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 1) - A036690 (n + 1)

end

end A069482.P10582222846766580308

namespace A069482

/-- `A349660(n+1)-A036690(n+1)` -/
def P10582222846766580308.Spec : Prop :=
  ∀ n, P10582222846766580308.a n = A069482 (n + 1)

end A069482

/-! ## A069482.P13296641641084423582

`A001043(n+1)*A001223(n+1)`
-/

namespace A069482.P13296641641084423582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1) * A001223 (n + 1)

end

end A069482.P13296641641084423582

namespace A069482

/-- `A001043(n+1)*A001223(n+1)` -/
def P13296641641084423582.Spec : Prop :=
  ∀ n, P13296641641084423582.a n = A069482 (n + 1)

end A069482

/-! ## A069482.P9941626000208667819

`A066872(n+2)-A066872(n+1)`
-/

namespace A069482.P9941626000208667819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 2) - A066872 (n + 1)

end

end A069482.P9941626000208667819

namespace A069482

/-- `A066872(n+2)-A066872(n+1)` -/
def P9941626000208667819.Spec : Prop :=
  ∀ n, P9941626000208667819.a n = A069482 (n + 1)

theorem P9941626000208667819.correct : P9941626000208667819.Spec := by
  intro n
  simp only [A069482, Nat.add_sub_cancel, A069482.P9941626000208667819.a, A069482.P16607122436003558489.f1, A069482.P16607122436003558489.a, SequenceMachineLib.memo_apply]

end A069482

/-! ## A069482.P9325876871950788658

`A069487(n+1)/A006094(n+1)`
-/

namespace A069482.P9325876871950788658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069487 (n + 1) : ℚ) / (A006094 (n + 1) : ℚ)

end

end A069482.P9325876871950788658

namespace A069482

/-- `A069487(n+1)/A006094(n+1)` -/
def P9325876871950788658.Spec : Prop :=
  ∀ n, P9325876871950788658.a n = (A069482 (n + 1) : ℚ)

end A069482

/-! ## A069482.P12071323769452160814

`A276963(n+1)/A069484(n+1)`
-/

namespace A069482.P12071323769452160814
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276963 (n + 1) : ℚ) / (A069484 (n + 1) : ℚ)

end

end A069482.P12071323769452160814

namespace A069482

/-- `A276963(n+1)/A069484(n+1)` -/
def P12071323769452160814.Spec : Prop :=
  ∀ n, P12071323769452160814.a n = (A069482 (n + 1) : ℚ)

end A069482

/-! ## A069482.P9213036412247838236

`gcd(A069487(n+1), A276963(n+1))`
-/

namespace A069482.P9213036412247838236
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069487 (n + 1)) (A276963 (n + 1))

end

end A069482.P9213036412247838236

namespace A069482

/-- `gcd(A069487(n+1), A276963(n+1))` -/
def P9213036412247838236.Spec : Prop :=
  ∀ n, (P9213036412247838236.a n : ℤ) = A069482 (n + 1)

end A069482

/-! ## A069482.P2269967737439908289

`A001223(n+1)+A349660(n+1)-A352851(n+1)`
-/

namespace A069482.P2269967737439908289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 1) + (A349660 (n + 1) - A352851 (n + 1))

end

end A069482.P2269967737439908289

namespace A069482

/-- `A001223(n+1)+A349660(n+1)-A352851(n+1)` -/
def P2269967737439908289.Spec : Prop :=
  ∀ n, P2269967737439908289.a n = A069482 (n + 1)

end A069482

/-! ## A069482.P4607049018501043251

`(A014690(n+1)+A014689(n+1))*A001223(n+1)`
-/

namespace A069482.P4607049018501043251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014690 (n + 1) + A014689 (n + 1)) * A001223 (n + 1)

end

end A069482.P4607049018501043251

namespace A069482

/-- `(A014690(n+1)+A014689(n+1))*A001223(n+1)` -/
def P4607049018501043251.Spec : Prop :=
  ∀ n, P4607049018501043251.a n = A069482 (n + 1)

end A069482

/-! ## A069482.P16169523000560309268

`Δ[A001248(n+1)]`
-/

namespace A069482.P16169523000560309268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069482.P16169523000560309268

namespace A069482

/-- `Δ[A001248(n+1)]` -/
def P16169523000560309268.Spec : Prop :=
  ∀ n, P16169523000560309268.a n = A069482 (n + 1)

end A069482

/-! ## A069482.P9710268812230685735

`Δ[A049001(n+1)]`
-/

namespace A069482.P9710268812230685735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A069482.P9710268812230685735

namespace A069482

/-- `Δ[A049001(n+1)]` -/
def P9710268812230685735.Spec : Prop :=
  ∀ n, P9710268812230685735.a n = A069482 (n + 1)

end A069482

/-!
# A069483: Largest prime factor of prime(n+1)^2 - prime(n)^2.

The programs for A069483, the canonical program `A069483.P18068761225960219392` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069483 has offset 1).

The definition of A069483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A069482, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069483.P18068761225960219392

`A006530(A069482(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A069483

/-- `A006530(A069482(n+1))` -/
def P18068761225960219392.Spec : Prop :=
  ∀ n, P18068761225960219392.a n = A069483 (n + 1)

theorem P18068761225960219392.correct : P18068761225960219392.Spec := by
  intro n
  simp only [A069483, Nat.add_sub_cancel]

end A069483

/-! ## A069483.P11750628952779400045

`A006530(A124434(n+1))`
-/

namespace A069483.P11750628952779400045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A124434 (n + 1)).toNat

end

end A069483.P11750628952779400045

namespace A069483

/-- `A006530(A124434(n+1))` -/
def P11750628952779400045.Spec : Prop :=
  ∀ n, P11750628952779400045.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P18168678654686548555

`A006530(abs(Δ[A166011(n+1)]))`
-/

namespace A069483.P18168678654686548555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 |f1 (n + 1) - f1 n|.toNat

end

end A069483.P18168678654686548555

namespace A069483

/-- `A006530(abs(Δ[A166011(n+1)]))` -/
def P18168678654686548555.Spec : Prop :=
  ∀ n, P18168678654686548555.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P5739696539016923671

`A006530(xor(1, A247396(n+2)+1))`
-/

namespace A069483.P5739696539016923671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.xor 1 (A247396 (n + 2) + 1)).toNat

end

end A069483.P5739696539016923671

namespace A069483

/-- `A006530(xor(1, A247396(n+2)+1))` -/
def P5739696539016923671.Spec : Prop :=
  ∀ n, P5739696539016923671.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P754206830989718808

`A006530(lcm(A001043(n+1), A001223(n+1)))`
-/

namespace A069483.P754206830989718808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (A001043 (n + 1)) (A001223 (n + 1)))

end

end A069483.P754206830989718808

namespace A069483

/-- `A006530(lcm(A001043(n+1), A001223(n+1)))` -/
def P754206830989718808.Spec : Prop :=
  ∀ n, P754206830989718808.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P5944513085705389143

`A006530(Δ[A001248(n+1)])`
-/

namespace A069483.P5944513085705389143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P5944513085705389143

namespace A069483

/-- `A006530(Δ[A001248(n+1)])` -/
def P5944513085705389143.Spec : Prop :=
  ∀ n, P5944513085705389143.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P11469409897755753810

`A006530(Δ[A049001(n+1)])`
-/

namespace A069483.P11469409897755753810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P11469409897755753810

namespace A069483

/-- `A006530(Δ[A049001(n+1)])` -/
def P11469409897755753810.Spec : Prop :=
  ∀ n, P11469409897755753810.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P12512049033333076586

`A006530(Δ[A061725(n+1)])`
-/

namespace A069483.P12512049033333076586
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P12512049033333076586

namespace A069483

/-- `A006530(Δ[A061725(n+1)])` -/
def P12512049033333076586.Spec : Prop :=
  ∀ n, P12512049033333076586.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P8449745348200627527

`A006530(Δ[A066872(n+1)])`
-/

namespace A069483.P8449745348200627527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P8449745348200627527

namespace A069483

/-- `A006530(Δ[A066872(n+1)])` -/
def P8449745348200627527.Spec : Prop :=
  ∀ n, P8449745348200627527.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P7293274758295704280

`A006530(Δ[A084920(n+1)])`
-/

namespace A069483.P7293274758295704280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P7293274758295704280

namespace A069483

/-- `A006530(Δ[A084920(n+1)])` -/
def P7293274758295704280.Spec : Prop :=
  ∀ n, P7293274758295704280.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P5946867456462887340

`A006530(Δ[A138691(n+1)])`
-/

namespace A069483.P5946867456462887340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138691 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P5946867456462887340

namespace A069483

/-- `A006530(Δ[A138691(n+1)])` -/
def P5946867456462887340.Spec : Prop :=
  ∀ n, P5946867456462887340.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P6538762331370156355

`A006530(Δ[A138693(n+1)])`
-/

namespace A069483.P6538762331370156355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138693 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P6538762331370156355

namespace A069483

/-- `A006530(Δ[A138693(n+1)])` -/
def P6538762331370156355.Spec : Prop :=
  ∀ n, P6538762331370156355.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P6983463349978986823

`A006530(Δ[A166010(n+1)])`
-/

namespace A069483.P6983463349978986823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P6983463349978986823

namespace A069483

/-- `A006530(Δ[A166010(n+1)])` -/
def P6983463349978986823.Spec : Prop :=
  ∀ n, P6983463349978986823.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P11960844117889292115

`A006530(Δ[A182200(n+1)])`
-/

namespace A069483.P11960844117889292115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182200 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P11960844117889292115

namespace A069483

/-- `A006530(Δ[A182200(n+1)])` -/
def P11960844117889292115.Spec : Prop :=
  ∀ n, P11960844117889292115.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P697871949716866007

`A006530(Δ[A280076(n+2)])`
-/

namespace A069483.P697871949716866007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P697871949716866007

namespace A069483

/-- `A006530(Δ[A280076(n+2)])` -/
def P697871949716866007.Spec : Prop :=
  ∀ n, P697871949716866007.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P6034500255937749837

`A006530(Δ[A033476(2*n)])`
-/

namespace A069483.P6034500255937749837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P6034500255937749837

namespace A069483

/-- `A006530(Δ[A033476(2*n)])` -/
def P6034500255937749837.Spec : Prop :=
  ∀ n, P6034500255937749837.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P1479511064884543562

`A006530(Δ[Δ[A007504(n)]²])`
-/

namespace A069483.P1479511064884543562
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P1479511064884543562

namespace A069483

/-- `A006530(Δ[Δ[A007504(n)]²])` -/
def P1479511064884543562.Spec : Prop :=
  ∀ n, P1479511064884543562.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P3388681322144895333

`A006530(Δ[A000040(n+1)²])`
-/

namespace A069483.P3388681322144895333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P3388681322144895333

namespace A069483

/-- `A006530(Δ[A000040(n+1)²])` -/
def P3388681322144895333.Spec : Prop :=
  ∀ n, P3388681322144895333.a n = A069483 (n + 1)

end A069483

/-! ## A069483.P4237806214862047747

`A006530(Δ[A008578(n+2)²])`
-/

namespace A069483.P4237806214862047747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (f1 (n + 1) - f1 n).toNat

end

end A069483.P4237806214862047747

namespace A069483

/-- `A006530(Δ[A008578(n+2)²])` -/
def P4237806214862047747.Spec : Prop :=
  ∀ n, P4237806214862047747.a n = A069483 (n + 1)

end A069483

/-!
# A069484: a(n) = prime(n+1)^2 + prime(n)^2.

The programs for A069484, the canonical program `A069484.P12309562123868272033` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069484 has offset 1).

The definition of A069484 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A048851, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069484.P12309562123868272033

`A048851(n+2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A069484

/-- `A048851(n+2)` -/
def P12309562123868272033.Spec : Prop :=
  ∀ n, P12309562123868272033.a n = A069484 (n + 1)

theorem P12309562123868272033.correct : P12309562123868272033.Spec := by
  intro n
  simp only [A069484, Nat.add_sub_cancel]

end A069484

/-! ## A069484.P4107524066905152986

`A001248(n+2)+A001248(n+1)`
-/

namespace A069484.P4107524066905152986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 2) + A001248 (n + 1)

end

end A069484.P4107524066905152986

namespace A069484

/-- `A001248(n+2)+A001248(n+1)` -/
def P4107524066905152986.Spec : Prop :=
  ∀ n, P4107524066905152986.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P14756106155526599629

`A076821(n+1)+A069486(n+1)`
-/

namespace A069484.P14756106155526599629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076821 (n + 1) + A069486 (n + 1)

end

end A069484.P14756106155526599629

namespace A069484

/-- `A076821(n+1)+A069486(n+1)` -/
def P14756106155526599629.Spec : Prop :=
  ∀ n, P14756106155526599629.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P15993383505279498956

`A079704(n+1)+A069482(n+1)`
-/

namespace A069484.P15993383505279498956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079704 (n + 1) + A069482 (n + 1)

end

end A069484.P15993383505279498956

namespace A069484

/-- `A079704(n+1)+A069482(n+1)` -/
def P15993383505279498956.Spec : Prop :=
  ∀ n, P15993383505279498956.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P11821705121331086864

`A261465(n+1)+A036690(n+1)`
-/

namespace A069484.P11821705121331086864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261465 (n + 1) + A036690 (n + 1)

end

end A069484.P11821705121331086864

namespace A069484

/-- `A261465(n+1)+A036690(n+1)` -/
def P11821705121331086864.Spec : Prop :=
  ∀ n, P11821705121331086864.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P16295113969794835562

`A349660(n+1)+A036689(n+1)`
-/

namespace A069484.P16295113969794835562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 1) + A036689 (n + 1)

end

end A069484.P16295113969794835562

namespace A069484

/-- `A349660(n+1)+A036689(n+1)` -/
def P16295113969794835562.Spec : Prop :=
  ∀ n, P16295113969794835562.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P5242749549120818189

`A079705(n+1)-A064051(n+1)`
-/

namespace A069484.P5242749549120818189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079705 (n + 1) - A064051 (n + 1)

end

end A069484.P5242749549120818189

namespace A069484

/-- `A079705(n+1)-A064051(n+1)` -/
def P5242749549120818189.Spec : Prop :=
  ∀ n, P5242749549120818189.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P14929368953367498270

`A084920(n+1)+A066872(n+2)`
-/

namespace A069484.P14929368953367498270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + A066872 (n + 2)

end

end A069484.P14929368953367498270

namespace A069484

/-- `A084920(n+1)+A066872(n+2)` -/
def P14929368953367498270.Spec : Prop :=
  ∀ n, P14929368953367498270.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P9887449722075890572

`A143928(n+1)-A069482(n+1)`
-/

namespace A069484.P9887449722075890572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143928 (n + 1) - A069482 (n + 1)

end

end A069484.P9887449722075890572

namespace A069484

/-- `A143928(n+1)-A069482(n+1)` -/
def P9887449722075890572.Spec : Prop :=
  ∀ n, P9887449722075890572.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P488644667635260279

`A276963(n+1)/A069482(n+1)`
-/

namespace A069484.P488644667635260279
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A276963 (n + 1) : ℚ) / (A069482 (n + 1) : ℚ)

end

end A069484.P488644667635260279

namespace A069484

/-- `A276963(n+1)/A069482(n+1)` -/
def P488644667635260279.Spec : Prop :=
  ∀ n, P488644667635260279.a n = (A069484 (n + 1) : ℚ)

end A069484

/-! ## A069484.P17579858642187044841

`gcd(A133537(n+1), A276963(n+1))`
-/

namespace A069484.P17579858642187044841
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A133537 (n + 1)) (A276963 (n + 1))

end

end A069484.P17579858642187044841

namespace A069484

/-- `gcd(A133537(n+1), A276963(n+1))` -/
def P17579858642187044841.Spec : Prop :=
  ∀ n, (P17579858642187044841.a n : ℤ) = A069484 (n + 1)

end A069484

/-! ## A069484.P10446915122920900547

`A133529(n+1)-A215848(n+1)²`
-/

namespace A069484.P10446915122920900547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133529 (n + 1) - A215848 (n + 1) ^ 2

end

end A069484.P10446915122920900547

namespace A069484

/-- `A133529(n+1)-A215848(n+1)²` -/
def P10446915122920900547.Spec : Prop :=
  ∀ n, P10446915122920900547.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P14863495234892990015

`A084920(n+1)+2*A066885(n+2)`
-/

namespace A069484.P14863495234892990015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084920 (n + 1) + 2 * A066885 (n + 2)

end

end A069484.P14863495234892990015

namespace A069484

/-- `A084920(n+1)+2*A066885(n+2)` -/
def P14863495234892990015.Spec : Prop :=
  ∀ n, P14863495234892990015.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P14692133077731009463

`A000040(n+1)²+A065091(n+1)²`
-/

namespace A069484.P14692133077731009463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 + A065091 (n + 1) ^ 2

end

end A069484.P14692133077731009463

namespace A069484

/-- `A000040(n+1)²+A065091(n+1)²` -/
def P14692133077731009463.Spec : Prop :=
  ∀ n, P14692133077731009463.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P9924274636745135560

`A065091(n+1)²+A273960(n+1)²`
-/

namespace A069484.P9924274636745135560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) ^ 2 + A273960 (n + 1) ^ 2

end

end A069484.P9924274636745135560

namespace A069484

/-- `A065091(n+1)²+A273960(n+1)²` -/
def P9924274636745135560.Spec : Prop :=
  ∀ n, P9924274636745135560.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P1830521664523197198

`sqrt(A030514(n+1))+A065091(n+1)²`
-/

namespace A069484.P1830521664523197198
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030514 (n + 1) : ℝ) + (A065091 (n + 1) ^ 2 : ℝ)

end

end A069484.P1830521664523197198

namespace A069484

/-- `sqrt(A030514(n+1))+A065091(n+1)²` -/
def P1830521664523197198.Spec : Prop :=
  ∀ n, P1830521664523197198.a n = (A069484 (n + 1) : ℝ)

end A069484

/-! ## A069484.P7558413027228209450

`A349660(n+1)+A352851(n+1)-A001043(n+1)`
-/

namespace A069484.P7558413027228209450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349660 (n + 1) + (A352851 (n + 1) - A001043 (n + 1))

end

end A069484.P7558413027228209450

namespace A069484

/-- `A349660(n+1)+A352851(n+1)-A001043(n+1)` -/
def P7558413027228209450.Spec : Prop :=
  ∀ n, P7558413027228209450.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P16158881751626139264

`A066872(n+2)+A006093(n+1)*A008864(n+1)`
-/

namespace A069484.P16158881751626139264
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066872 (n + 2) + A006093 (n + 1) * A008864 (n + 1)

end

end A069484.P16158881751626139264

namespace A069484

/-- `A066872(n+2)+A006093(n+1)*A008864(n+1)` -/
def P16158881751626139264.Spec : Prop :=
  ∀ n, P16158881751626139264.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P15937547853813682494

`A061725(n+1)+A049001(n+2)`
-/

namespace A069484.P15937547853813682494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061725 (n + 1) + A049001 (n + 2)

end

end A069484.P15937547853813682494

namespace A069484

/-- `A061725(n+1)+A049001(n+2)` -/
def P15937547853813682494.Spec : Prop :=
  ∀ n, P15937547853813682494.a n = A069484 (n + 1)

end A069484

/-! ## A069484.P14896598749135510351

`A352851(n+1)+A036689(n+2)`
-/

namespace A069484.P14896598749135510351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352851 (n + 1) + A036689 (n + 2)

end

end A069484.P14896598749135510351

namespace A069484

/-- `A352851(n+1)+A036689(n+2)` -/
def P14896598749135510351.Spec : Prop :=
  ∀ n, P14896598749135510351.a n = A069484 (n + 1)

end A069484

/-!
# A069485: Greatest prime factor of prime(n+1)^2 + prime(n)^2.

The programs for A069485, the canonical program `A069485.P7893629048120254601` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069485 has offset 1).

The definition of A069485 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006530, A069484, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A069485.P7893629048120254601

`A006530(A069484(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A069485

/-- `A006530(A069484(n+1))` -/
def P7893629048120254601.Spec : Prop :=
  ∀ n, P7893629048120254601.a n = A069485 (n + 1)

theorem P7893629048120254601.correct : P7893629048120254601.Spec := by
  intro n
  simp only [A069485, Nat.add_sub_cancel]

end A069485

/-! ## A069485.P17263960369677799392

`A006530((A000040(n+1)²+A000040(n+2)²)/A055642(n))`
-/

namespace A069485.P17263960369677799392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000040 (n + 1) ^ 2 + A000040 (n + 2) ^ 2 : ℚ) / (A055642 n : ℚ))).toNat

end

end A069485.P17263960369677799392

namespace A069485

/-- `A006530((A000040(n+1)²+A000040(n+2)²)/A055642(n))` -/
def P17263960369677799392.Spec : Prop :=
  ∀ n, P17263960369677799392.a n = A069485 (n + 1)

end A069485

/-! ## A069485.P3806951928161673853

`A006530((A000040(n+1)²+A000040(n+2)²)/A036453(n+1))`
-/

namespace A069485.P3806951928161673853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A000040 (n + 1) ^ 2 + A000040 (n + 2) ^ 2 : ℚ) / (A036453 (n + 1) : ℚ))).toNat

end

end A069485.P3806951928161673853

namespace A069485

/-- `A006530((A000040(n+1)²+A000040(n+2)²)/A036453(n+1))` -/
def P3806951928161673853.Spec : Prop :=
  ∀ n, P3806951928161673853.a n = A069485 (n + 1)

end A069485

/-!
# A069486: a(n) = 2*prime(n)*prime(n+1).

The programs for A069486, the canonical program `A069486.P8901001312048262221` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069486 has offset 1).

The definition of A069486 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069486.P8812361772888450184

`2*p?[2*n+1]*p?[floor(2/acot(n))+1]`
-/

namespace A069486.P8812361772888450184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) * f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n))

end

end A069486.P8812361772888450184

namespace A069486

/-- `2*p?[2*n+1]*p?[floor(2/acot(n))+1]` -/
def P8812361772888450184.Spec : Prop :=
  ∀ n, P8812361772888450184.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P3441865220721385999

`4*p?[round(8*n/7)]*p?[2*n+1]/2`
-/

namespace A069486.P3441865220721385999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) * ((f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) : ℚ) / 2)

end

end A069486.P3441865220721385999

namespace A069486

/-- `4*p?[round(8*n/7)]*p?[2*n+1]/2` -/
def P3441865220721385999.Spec : Prop :=
  ∀ n, P3441865220721385999.a n = (A069486 (n + 1) : ℚ)

end A069486

/-! ## A069486.P8901001312048262221

`2*A006094(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A069486

/-- `2*A006094(n+1)` -/
def P8901001312048262221.Spec : Prop :=
  ∀ n, P8901001312048262221.a n = A069486 (n + 1)

theorem P8901001312048262221.correct : P8901001312048262221.Spec := by
  intro n
  simp only [A069486, Nat.add_sub_cancel]

end A069486

/-! ## A069486.P14991353086037752080

`2*sqrt(A166329(n+1))`
-/

namespace A069486.P14991353086037752080
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A166329 (n + 1) : ℝ)

end

end A069486.P14991353086037752080

namespace A069486

/-- `2*sqrt(A166329(n+1))` -/
def P14991353086037752080.Spec : Prop :=
  ∀ n, P14991353086037752080.a n = (A069486 (n + 1) : ℝ)

end A069486

/-! ## A069486.P2530860722195567903

`A123134(n+1)+A037166(n+1)`
-/

namespace A069486.P2530860722195567903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) + A037166 (n + 1)

end

end A069486.P2530860722195567903

namespace A069486

/-- `A123134(n+1)+A037166(n+1)` -/
def P2530860722195567903.Spec : Prop :=
  ∀ n, P2530860722195567903.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P13170947662513827731

`A126199(n+1)+A037165(n+1)`
-/

namespace A069486.P13170947662513827731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) + A037165 (n + 1)

end

end A069486.P13170947662513827731

namespace A069486

/-- `A126199(n+1)+A037165(n+1)` -/
def P13170947662513827731.Spec : Prop :=
  ∀ n, P13170947662513827731.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P1963870517685703091

`A345727(n+1)+A037167(n+1)`
-/

namespace A069486.P1963870517685703091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345727 (n + 1) + A037167 (n + 1)

end

end A069486.P1963870517685703091

namespace A069486

/-- `A345727(n+1)+A037167(n+1)` -/
def P1963870517685703091.Spec : Prop :=
  ∀ n, P1963870517685703091.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P5663143973594603696

`A292926(n+1)+A111071(n+1)`
-/

namespace A069486.P5663143973594603696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 1) + A111071 (n + 1)

end

end A069486.P5663143973594603696

namespace A069486

/-- `A292926(n+1)+A111071(n+1)` -/
def P5663143973594603696.Spec : Prop :=
  ∀ n, P5663143973594603696.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P12853613567771795488

`A069484(n+1)-A076821(n+1)`
-/

namespace A069486.P12853613567771795488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069484 (n + 1) - A076821 (n + 1)

end

end A069486.P12853613567771795488

namespace A069486

/-- `A069484(n+1)-A076821(n+1)` -/
def P12853613567771795488.Spec : Prop :=
  ∀ n, P12853613567771795488.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P7665519123643880567

`A065091(n+1)*A100484(n+1)`
-/

namespace A069486.P7665519123643880567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) * A100484 (n + 1)

end

end A069486.P7665519123643880567

namespace A069486

/-- `A065091(n+1)*A100484(n+1)` -/
def P7665519123643880567.Spec : Prop :=
  ∀ n, P7665519123643880567.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P9962901576187886293

`A357679(n+2)-A109805(n+1)`
-/

namespace A069486.P9962901576187886293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357679 (n + 2) - A109805 (n + 1)

end

end A069486.P9962901576187886293

namespace A069486

/-- `A357679(n+2)-A109805(n+1)` -/
def P9962901576187886293.Spec : Prop :=
  ∀ n, P9962901576187886293.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P11361976542276340036

`lcm(A006094(n+1), A100484(n+1))`
-/

namespace A069486.P11361976542276340036
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A006094 (n + 1)) (A100484 (n + 1))

end

end A069486.P11361976542276340036

namespace A069486

/-- `lcm(A006094(n+1), A100484(n+1))` -/
def P11361976542276340036.Spec : Prop :=
  ∀ n, (P11361976542276340036.a n : ℤ) = A069486 (n + 1)

end A069486

/-! ## A069486.P6178207826207277856

`(A210497(n+1)+A000040(n+1))*A000040(n+1)`
-/

namespace A069486.P6178207826207277856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A210497 (n + 1) + A000040 (n + 1)) * A000040 (n + 1)

end

end A069486.P6178207826207277856

namespace A069486

/-- `(A210497(n+1)+A000040(n+1))*A000040(n+1)` -/
def P6178207826207277856.Spec : Prop :=
  ∀ n, P6178207826207277856.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P13316959609638813695

`A023523(n+2)+A023515(n+2)`
-/

namespace A069486.P13316959609638813695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023523 (n + 2) + A023515 (n + 2)

end

end A069486.P13316959609638813695

namespace A069486

/-- `A023523(n+2)+A023515(n+2)` -/
def P13316959609638813695.Spec : Prop :=
  ∀ n, P13316959609638813695.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P7549165241152484275

`A001747(n+2)*A065091(n+1)`
-/

namespace A069486.P7549165241152484275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) * A065091 (n + 1)

end

end A069486.P7549165241152484275

namespace A069486

/-- `A001747(n+2)*A065091(n+1)` -/
def P7549165241152484275.Spec : Prop :=
  ∀ n, P7549165241152484275.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P12126012606454490021

`A000040(n+1)*A100484(n+2)`
-/

namespace A069486.P12126012606454490021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A100484 (n + 2)

end

end A069486.P12126012606454490021

namespace A069486

/-- `A000040(n+1)*A100484(n+2)` -/
def P12126012606454490021.Spec : Prop :=
  ∀ n, P12126012606454490021.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P14104958899622690168

`A000040(n+2)*A001747(n+2)`
-/

namespace A069486.P14104958899622690168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2) * A001747 (n + 2)

end

end A069486.P14104958899622690168

namespace A069486

/-- `A000040(n+2)*A001747(n+2)` -/
def P14104958899622690168.Spec : Prop :=
  ∀ n, P14104958899622690168.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P2132035153864249512

`A001747(n+2)*A006005(n+2)`
-/

namespace A069486.P2132035153864249512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2) * A006005 (n + 2)

end

end A069486.P2132035153864249512

namespace A069486

/-- `A001747(n+2)*A006005(n+2)` -/
def P2132035153864249512.Spec : Prop :=
  ∀ n, P2132035153864249512.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P11781650419095915940

`A008578(n+2)*A100484(n+2)`
-/

namespace A069486.P11781650419095915940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) * A100484 (n + 2)

end

end A069486.P11781650419095915940

namespace A069486

/-- `A008578(n+2)*A100484(n+2)` -/
def P11781650419095915940.Spec : Prop :=
  ∀ n, P11781650419095915940.a n = A069486 (n + 1)

end A069486

/-! ## A069486.P8861162371163733187

`A100484(n+2)*A182986(n+2)`
-/

namespace A069486.P8861162371163733187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 2) * A182986 (n + 2)

end

end A069486.P8861162371163733187

namespace A069486

/-- `A100484(n+2)*A182986(n+2)` -/
def P8861162371163733187.Spec : Prop :=
  ∀ n, P8861162371163733187.a n = A069486 (n + 1)

end A069486

/-!
# A069487: Areas of Pythagorean triangles (A069482, A069484, A069486).

The programs for A069487, the canonical program `A069487.P2918341576510942803` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069487 has offset 1).

The definition of A069487 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069487.P2918341576510942803

`A006094(n+1)*A069482(n+1)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A069487

/-- `A006094(n+1)*A069482(n+1)` -/
def P2918341576510942803.Spec : Prop :=
  ∀ n, P2918341576510942803.a n = A069487 (n + 1)

theorem P2918341576510942803.correct : P2918341576510942803.Spec := by
  intro n
  simp only [A069487, Nat.add_sub_cancel]

end A069487

/-! ## A069487.P9994202436293762191

`(A291463(n+1)+A048852(n+1))*A006094(n+1)`
-/

namespace A069487.P9994202436293762191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A291463 (n + 1) + A048852 (n + 1)) * A006094 (n + 1)

end

end A069487.P9994202436293762191

namespace A069487

/-- `(A291463(n+1)+A048852(n+1))*A006094(n+1)` -/
def P9994202436293762191.Spec : Prop :=
  ∀ n, P9994202436293762191.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P5076470196910257185

`(A291463(n+1)+A069484(n+1))*A291463(n+1)`
-/

namespace A069487.P5076470196910257185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A291463 (n + 1) + A069484 (n + 1)) * A291463 (n + 1)

end

end A069487.P5076470196910257185

namespace A069487

/-- `(A291463(n+1)+A069484(n+1))*A291463(n+1)` -/
def P5076470196910257185.Spec : Prop :=
  ∀ n, P5076470196910257185.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P14604300863814837818

`(A069484(n+1)-A048852(n+1))*A048852(n+1)`
-/

namespace A069487.P14604300863814837818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A069484 (n + 1) - A048852 (n + 1)) * A048852 (n + 1)

end

end A069487.P14604300863814837818

namespace A069487

/-- `(A069484(n+1)-A048852(n+1))*A048852(n+1)` -/
def P14604300863814837818.Spec : Prop :=
  ∀ n, P14604300863814837818.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P12177814262042495143

`(A066872(n+2)-A066872(n+1))*A006094(n+1)`
-/

namespace A069487.P12177814262042495143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A066872 (n + 2) - A066872 (n + 1)) * A006094 (n + 1)

end

end A069487.P12177814262042495143

namespace A069487

/-- `(A066872(n+2)-A066872(n+1))*A006094(n+1)` -/
def P12177814262042495143.Spec : Prop :=
  ∀ n, P12177814262042495143.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P17363914800581401431

`Δ[Δ[A007504(n)]²]*A006094(n+1)`
-/

namespace A069487.P17363914800581401431
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006094 (n + 1)

end

end A069487.P17363914800581401431

namespace A069487

/-- `Δ[Δ[A007504(n)]²]*A006094(n+1)` -/
def P17363914800581401431.Spec : Prop :=
  ∀ n, P17363914800581401431.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P4854625159443756398

`Δ[A000040(n+1)²]*A006094(n+1)`
-/

namespace A069487.P4854625159443756398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006094 (n + 1)

end

end A069487.P4854625159443756398

namespace A069487

/-- `Δ[A000040(n+1)²]*A006094(n+1)` -/
def P4854625159443756398.Spec : Prop :=
  ∀ n, P4854625159443756398.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P15591086958059122730

`Δ[(A040976(n+1)+2)²]*A006094(n+1)`
-/

namespace A069487.P15591086958059122730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006094 (n + 1)

end

end A069487.P15591086958059122730

namespace A069487

/-- `Δ[(A040976(n+1)+2)²]*A006094(n+1)` -/
def P15591086958059122730.Spec : Prop :=
  ∀ n, P15591086958059122730.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P8124643417617910160

`(A291463(n+1)+A048851(n+2))*A291463(n+1)`
-/

namespace A069487.P8124643417617910160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A291463 (n + 1) + A048851 (n + 2)) * A291463 (n + 1)

end

end A069487.P8124643417617910160

namespace A069487

/-- `(A291463(n+1)+A048851(n+2))*A291463(n+1)` -/
def P8124643417617910160.Spec : Prop :=
  ∀ n, P8124643417617910160.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P10858986539652672792

`(A001248(n+2)-A001248(n+1))*A006094(n+1)`
-/

namespace A069487.P10858986539652672792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 2) - A001248 (n + 1)) * A006094 (n + 1)

end

end A069487.P10858986539652672792

namespace A069487

/-- `(A001248(n+2)-A001248(n+1))*A006094(n+1)` -/
def P10858986539652672792.Spec : Prop :=
  ∀ n, P10858986539652672792.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P10383880014417714796

`(A048851(n+2)-A048852(n+1))*A048852(n+1)`
-/

namespace A069487.P10383880014417714796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A048851 (n + 2) - A048852 (n + 1)) * A048852 (n + 1)

end

end A069487.P10383880014417714796

namespace A069487

/-- `(A048851(n+2)-A048852(n+1))*A048852(n+1)` -/
def P10383880014417714796.Spec : Prop :=
  ∀ n, P10383880014417714796.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P11213118669279098004

`(A030078(n+2)-A251720(n+1))*A000040(n+1)`
-/

namespace A069487.P11213118669279098004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 2) - A251720 (n + 1)) * A000040 (n + 1)

end

end A069487.P11213118669279098004

namespace A069487

/-- `(A030078(n+2)-A251720(n+1))*A000040(n+1)` -/
def P11213118669279098004.Spec : Prop :=
  ∀ n, P11213118669279098004.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P16526751847092738405

`A000040(n+1)*A069482(n+1)*A000040(n+2)`
-/

namespace A069487.P16526751847092738405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A069482 (n + 1) * A000040 (n + 2)

end

end A069487.P16526751847092738405

namespace A069487

/-- `A000040(n+1)*A069482(n+1)*A000040(n+2)` -/
def P16526751847092738405.Spec : Prop :=
  ∀ n, P16526751847092738405.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P14973441911908191427

`Δ[p?[A000961(n+1)]²]*A006094(n+1)`
-/

namespace A069487.P14973441911908191427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A006094 (n + 1)

end

end A069487.P14973441911908191427

namespace A069487

/-- `Δ[p?[A000961(n+1)]²]*A006094(n+1)` -/
def P14973441911908191427.Spec : Prop :=
  ∀ n, P14973441911908191427.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P2811956797906741779

`A033476(2*n+1)*A069482(n+1)`
-/

namespace A069487.P2811956797906741779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n + 1) * A069482 (n + 1)

end

end A069487.P2811956797906741779

namespace A069487

/-- `A033476(2*n+1)*A069482(n+1)` -/
def P2811956797906741779.Spec : Prop :=
  ∀ n, P2811956797906741779.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P17026475380485623516

`(A001248(n+2)-A033476(2*n))*A033476(2*n+1)`
-/

namespace A069487.P17026475380485623516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001248 (n + 2) - A033476 (2 * n)) * A033476 (2 * n + 1)

end

end A069487.P17026475380485623516

namespace A069487

/-- `(A001248(n+2)-A033476(2*n))*A033476(2*n+1)` -/
def P17026475380485623516.Spec : Prop :=
  ∀ n, P17026475380485623516.a n = A069487 (n + 1)

end A069487

/-! ## A069487.P7014893858737402837

`Δ[A033476(2*n)]*A033476(2*n+1)`
-/

namespace A069487.P7014893858737402837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033476 (2 * n + 1)

end

end A069487.P7014893858737402837

namespace A069487

/-- `Δ[A033476(2*n)]*A033476(2*n+1)` -/
def P7014893858737402837.Spec : Prop :=
  ∀ n, P7014893858737402837.a n = A069487 (n + 1)

end A069487

/-!
# A069488: Primes > 100 in which every substring of length 2 is also prime.

The programs for A069488, there is no canonical definition to state claims against.
-/

/-! ## A069488.P8995338122188415459

`p?[A211683(n+1)]`
-/

namespace A069488.P8995338122188415459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069488.P8995338122188415459

/-! ## A069488.P14925296882043333225

`p?[record[A211683(A324346(n))]]`
-/

namespace A069488.P14925296882043333225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (A324346 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069488.P14925296882043333225

/-! ## A069488.P18312208929332739218

`p?[record[A211683(A324347(n))]]`
-/

namespace A069488.P18312208929332739218
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069488.P18312208929332739218

/-! ## A069488.P13679600603872335016

`p?[record[A211683(A331745(n))]]`
-/

namespace A069488.P13679600603872335016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (A331745 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069488.P13679600603872335016

/-! ## A069488.P10514555541625505178

`p?[or(1, A211683(A028310(n)))]`
-/

namespace A069488.P10514555541625505178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A211683 (A028310 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069488.P10514555541625505178

/-! ## A069488.P10767503486863527341

`p?[A211683(A028310(n))-A000007(n)]`
-/

namespace A069488.P10767503486863527341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (A028310 n).toNat - A000007 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069488.P10767503486863527341

/-! ## A069488.P10833568118629960035

`∩[A030475(n+1), A211683(n+1)]`
-/

namespace A069488.P10833568118629960035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069488.P10833568118629960035

/-! ## A069488.P16571553455811113033

`record[A006530(A211683(n+2))]`
-/

namespace A069488.P16571553455811113033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A211683 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069488.P16571553455811113033

/-! ## A069488.P2264754493801392494

`filter[A211683(n+1), A010051(#)]`
-/

namespace A069488.P2264754493801392494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A069488.P2264754493801392494

/-! ## A069488.P10609318829970544708

`filter[A211683(n+1), A069513(#)]`
-/

namespace A069488.P10609318829970544708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A069488.P10609318829970544708

/-! ## A069488.P12160258705088687952

`filter[A211683(n+1), A324290(#)]`
-/

namespace A069488.P12160258705088687952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324290 (f1 j).toNat = 1) n)

end

end A069488.P12160258705088687952

/-! ## A069488.P12129359393605104615

`∩[A003626(n+1), A211683(n+1)]`
-/

namespace A069488.P12129359393605104615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069488.P12129359393605104615

/-! ## A069488.P15025734997962953118

`∩[A211683(n+1), A296923(n+1)]`
-/

namespace A069488.P15025734997962953118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296923 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069488.P15025734997962953118

/-! ## A069488.P13658190078217208488

`filter[A211683(n+1), A174897(#)]`
-/

namespace A069488.P13658190078217208488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A069488.P13658190078217208488

/-! ## A069488.P13325029512664822389

`filter[A211683(n+1), A211487(#)]`
-/

namespace A069488.P13325029512664822389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A069488.P13325029512664822389

/-! ## A069488.P10609150102497405768

`filter[A211683(n+1), A302777(#)]`
-/

namespace A069488.P10609150102497405768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A069488.P10609150102497405768

/-! ## A069488.P11330211538172288478

`filter[A211683(n+1), A323152(#)]`
-/

namespace A069488.P11330211538172288478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A069488.P11330211538172288478

/-! ## A069488.P6634246502443278134

`filter[A211683(n+1), A323153(#)]`
-/

namespace A069488.P6634246502443278134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A069488.P6634246502443278134

/-! ## A069488.P12435898912067401824

`filter[A211683(n+1), A327861(#)]`
-/

namespace A069488.P12435898912067401824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A069488.P12435898912067401824

/-!
# A069489: Primes > 1000 in which every substring of length 3 is also prime.

The programs for A069489, there is no canonical definition to state claims against.
-/

/-! ## A069489.P10326729958609173451

`p?[∪[A211684(n+1), A345906(n+1)]]`
-/

namespace A069489.P10326729958609173451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211684 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345906 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A069489.P10326729958609173451

/-! ## A069489.P4133375075677983610

`p?[A345906(n+1)]`
-/

namespace A069489.P4133375075677983610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345906 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069489.P4133375075677983610

/-! ## A069489.P6069803524829314406

`p?[record[A345906(A065648(n))]]`
-/

namespace A069489.P6069803524829314406
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345906 (A065648 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069489.P6069803524829314406

/-! ## A069489.P17365140845804445072

`p?[record[A345906(A106466(n))]]`
-/

namespace A069489.P17365140845804445072
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345906 (A106466 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A069489.P17365140845804445072

/-! ## A069489.P7582533594035565511

`record[A006530(A345906(n+2))]`
-/

namespace A069489.P7582533594035565511
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A345906 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069489.P7582533594035565511

/-!
# A069490: Primes > 1000 in which every substring of lengths 2 and 3 are also prime.

The programs for A069490, there is no canonical definition to state claims against.
-/

/-! ## A069490.P4993614826705144423

`∩[A069488(n+1), A069489(n+1)]`
-/

namespace A069490.P4993614826705144423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069489 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069490.P4993614826705144423

/-! ## A069490.P1836937775368651188

`∩[A069488(n+1), A211684(n+1)]`
-/

namespace A069490.P1836937775368651188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069488 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211684 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069490.P1836937775368651188

/-! ## A069490.P2855807146473884654

`∩[A069489(n+1), A211683(n+1)]`
-/

namespace A069490.P2855807146473884654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069489 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069490.P2855807146473884654

/-! ## A069490.P1427668717479883687

`p?[∩[A211683(n+1), A211684(n+1)]]`
-/

namespace A069490.P1427668717479883687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211683 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211684 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A069490.P1427668717479883687

/-!
# A069491: a(n) = lcm(1..n) / ((n+1)(n+2)...(n+k)) where k is the largest number which gives an integral value.

The programs for A069491, there is no canonical definition to state claims against.
-/

/-! ## A069491.P6280150712948028724

`A028310(A058312(n+1)%A025558(n+1))`
-/

namespace A069491.P6280150712948028724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A058312 (n + 1)) (A025558 (n + 1))).toNat

end

end A069491.P6280150712948028724

/-! ## A069491.P4293980528518202632

`A028310(A109935(n+1)%A025558(n+1))`
-/

namespace A069491.P4293980528518202632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A109935 (n + 1)) (A025558 (n + 1))).toNat

end

end A069491.P4293980528518202632

/-! ## A069491.P10575991538788550258

`A225650(A003418(n+1)%A025558(n+1))`
-/

namespace A069491.P10575991538788550258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225650 (Int.tmod (A003418 (n + 1)) (A025558 (n + 1))).toNat

end

end A069491.P10575991538788550258

/-! ## A069491.P3240008297543036740

`lcm(A001222(A193758(n+2)), A002944(n+2))`
-/

namespace A069491.P3240008297543036740
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001222 (A193758 (n + 2)).toNat) (A002944 (n + 2))

end

end A069491.P3240008297543036740

/-! ## A069491.P10615478350048396121

`lcm(A028310(A002944(n+2)), A322321(n+2))`
-/

namespace A069491.P10615478350048396121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A028310 (A002944 (n + 2)).toNat) (A322321 (n + 2))

end

end A069491.P10615478350048396121

/-!
# A069492: 5-full numbers: if a prime p divides k then so does p^5.

The programs for A069492, there is no canonical definition to state claims against.
-/

/-! ## A069492.P8018897254479115382

`∪[A062759(A076469(n+1)), A358250(n+2)]`
-/

namespace A069492.P8018897254479115382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062759 (A076469 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358250 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069492.P8018897254479115382

/-! ## A069492.P8840929812165477106

`∪[A003964(A076469(n+1)), A358250(n+1)]`
-/

namespace A069492.P8840929812165477106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A076469 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358250 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A069492.P8840929812165477106

/-! ## A069492.P2103174608198033900

`A003964(A076469(n+1))`
-/

namespace A069492.P2103174608198033900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003964 (A076469 (n + 1)).toNat

end

end A069492.P2103174608198033900

/-! ## A069492.P6001364905453451524

`record[A076469(A001222(n+2))]`
-/

namespace A069492.P6001364905453451524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076469 (A001222 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069492.P6001364905453451524

/-! ## A069492.P3562186363273834273

`A023443(A076469(n+1)+1)`
-/

namespace A069492.P3562186363273834273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A076469 (n + 1) + 1).toNat

end

end A069492.P3562186363273834273

/-!
# A069493: 6-full numbers: if p divides n then so does p^6.

The programs for A069493, there is no canonical definition to state claims against.
-/

/-! ## A069493.P8189290534660053910

`record[A076470(A320467(n+1))]`
-/

namespace A069493.P8189290534660053910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076470 (A320467 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069493.P8189290534660053910

/-! ## A069493.P14224539342288220740

`A076470(C(A249817(n+1), n))`
-/

namespace A069493.P14224539342288220740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076470 (Nat.choose (A249817 (n + 1)).toNat n)

end

end A069493.P14224539342288220740

/-! ## A069493.P10455743957114316024

`filter[A076470(n+1), A354993(#)]`
-/

namespace A069493.P10455743957114316024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354993 (f1 j).toNat = 1) n)

end

end A069493.P10455743957114316024

/-! ## A069493.P7464093990748394321

`filter[A076470(n+1), A373481(#)]`
-/

namespace A069493.P7464093990748394321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373481 (f1 j).toNat = 1) n)

end

end A069493.P7464093990748394321

/-! ## A069493.P15903912339873804917

`filter[A076470(n+1), A374039(#)]`
-/

namespace A069493.P15903912339873804917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076470 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374039 (f1 j).toNat = 1) n)

end

end A069493.P15903912339873804917

/-!
# A069495: Squares which are the arithmetic mean of two consecutive primes.

The programs for A069495, there is no canonical definition to state claims against.
-/

/-! ## A069495.P15429832174028166900

`A075190(n+1)²`
-/

namespace A069495.P15429832174028166900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 1) ^ 2

end

end A069495.P15429832174028166900

/-! ## A069495.P16415121328599351044

`A075190(n+1)^A001316(A001316(n))`
-/

namespace A069495.P16415121328599351044
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075190 (n + 1) : ℚ) ^ (A001316 (A001316 n).toNat : ℤ)

end

end A069495.P16415121328599351044

/-! ## A069495.P8417059092134167259

`A075190(A000027(n+1))*A075190(n+1)`
-/

namespace A069495.P8417059092134167259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (A000027 (n + 1)).toNat * A075190 (n + 1)

end

end A069495.P8417059092134167259

/-! ## A069495.P6323202196634775914

`A075190(n+1)*A075190((n+1)%A024675(n+1))`
-/

namespace A069495.P6323202196634775914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075190 (n + 1) * A075190 (Int.tmod (n + 1 : ℤ) (A024675 (n + 1))).toNat

end

end A069495.P6323202196634775914

/-! ## A069495.P3695292776498155026

`A075190(n+1)%A072569(n+1)*A075190(n+1)`
-/

namespace A069495.P3695292776498155026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A075190 (n + 1)) (A072569 (n + 1)) * A075190 (n + 1)

end

end A069495.P3695292776498155026

/-! ## A069495.P15366058176608421779

`A075190(n+1)^A075190(A181720(n+1)%(n+1)+1)`
-/

namespace A069495.P15366058176608421779
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075190 (n + 1) : ℚ) ^ (A075190 (Int.tmod (A181720 (n + 1)) (n + 1 : ℤ) + 1).toNat : ℤ)

end

end A069495.P15366058176608421779

/-! ## A069495.P9986812983988310895

`A075190(n+1)^A020639(A045718(n+4))`
-/

namespace A069495.P9986812983988310895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075190 (n + 1) : ℚ) ^ (A020639 (A045718 (n + 4)).toNat : ℤ)

end

end A069495.P9986812983988310895

/-! ## A069495.P5790111586492731726

`ceil(sqrt(A225195(n+1)))²`
-/

namespace A069495.P5790111586492731726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A225195 (n + 1) : ℝ)⌉ ^ 2

end

end A069495.P5790111586492731726

/-! ## A069495.P13954566831440008128

`A075190(n+1)^A000005(A075235(n+1))`
-/

namespace A069495.P13954566831440008128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075190 (n + 1) : ℚ) ^ (A000005 (A075235 (n + 1)).toNat : ℤ)

end

end A069495.P13954566831440008128

/-! ## A069495.P7292268861422912036

`A075190(n+1)^A000005(A075236(n+1))`
-/

namespace A069495.P7292268861422912036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A075190 (n + 1) : ℚ) ^ (A000005 (A075236 (n + 1)).toNat : ℤ)

end

end A069495.P7292268861422912036

/-! ## A069495.P5153501961177789849

`∩[A270696(n+1), n²]`
-/

namespace A069495.P5153501961177789849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270696 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A069495.P5153501961177789849

/-! ## A069495.P12835268259155861690

`∩[A056928(n+2), n²]`
-/

namespace A069495.P12835268259155861690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A069495.P12835268259155861690

/-! ## A069495.P17889294441222185370

`A056928(A075190(2*n+1-n))`
-/

namespace A069495.P17889294441222185370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (A075190 (2 * n + 1 - n)).toNat

end

end A069495.P17889294441222185370

/-! ## A069495.P18417098099869947515

`record[gcd(A056928(n+2), A056929(n+2))]`
-/

namespace A069495.P18417098099869947515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A056928 (n + 2)) (A056929 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069495.P18417098099869947515

/-! ## A069495.P6333472952474759465

`A000290(2*A075190(n+1)-A075190(n+1))`
-/

namespace A069495.P6333472952474759465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (2 * A075190 (n + 1) - A075190 (n + 1)).toNat

end

end A069495.P6333472952474759465

/-! ## A069495.P5141593516850131038

`∩[A266918(n+1), A056928(n+2)]`
-/

namespace A069495.P5141593516850131038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266918 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069495.P5141593516850131038

/-! ## A069495.P7506381624294724720

`∩[A002760(n+1), A056928(n+2)]`
-/

namespace A069495.P7506381624294724720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002760 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069495.P7506381624294724720

/-! ## A069495.P350275932957794637

`∩[A001597(n+1), A056928(n+2)]`
-/

namespace A069495.P350275932957794637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069495.P350275932957794637

/-! ## A069495.P11193103061265192931

`∩[A363284(n+1), A056928(n+2)]`
-/

namespace A069495.P11193103061265192931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056928 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069495.P11193103061265192931

/-!
# A069496: Smaller member of a twin prime pair with a square sum.

The programs for A069496, there is no canonical definition to state claims against.
-/

/-! ## A069496.P12292540803588384538

`A118593(n+1)-2`
-/

namespace A069496.P12292540803588384538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118593 (n + 1) - 2

end

end A069496.P12292540803588384538

/-! ## A069496.P1000484918688250465

`(A037072(n+1)-2)/2`
-/

namespace A069496.P1000484918688250465
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037072 (n + 1) - 2 : ℚ) / 2

end

end A069496.P1000484918688250465

/-! ## A069496.P16393619200870107864

`A154670(n+1)-1`
-/

namespace A069496.P16393619200870107864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154670 (n + 1) - 1

end

end A069496.P16393619200870107864

/-! ## A069496.P1585045660964158216

`2*A173165(n+1)²-1`
-/

namespace A069496.P1585045660964158216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A173165 (n + 1) ^ 2 - 1

end

end A069496.P1585045660964158216

/-! ## A069496.P12755225719333943247

`A152786(n+1)²/2-1`
-/

namespace A069496.P12755225719333943247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152786 (n + 1) ^ 2 : ℚ) / 2 - 1

end

end A069496.P12755225719333943247

/-! ## A069496.P11969471754276880677

`A037072(n+1)%A118593(n+1)`
-/

namespace A069496.P11969471754276880677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A037072 (n + 1)) (A118593 (n + 1))

end

end A069496.P11969471754276880677

/-! ## A069496.P4128657478408059248

`A152786(n+1)*A173165(n+1)-1`
-/

namespace A069496.P4128657478408059248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152786 (n + 1) * A173165 (n + 1) - 1

end

end A069496.P4128657478408059248

/-! ## A069496.P349722334141566303

`A232878(Δ[n²])`
-/

namespace A069496.P349722334141566303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A069496.P349722334141566303

/-! ## A069496.P9325873201578532870

`A232878(2*(n+1))-2`
-/

namespace A069496.P9325873201578532870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (2 * (n + 1)) - 2

end

end A069496.P9325873201578532870

/-! ## A069496.P9536815110694889531

`∩[A232878(n+1), A335410(n+1)-2]`
-/

namespace A069496.P9536815110694889531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335410 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069496.P9536815110694889531

/-! ## A069496.P2870984103770943572

`∩[A232878(n+1), A270231(n+1)]`
-/

namespace A069496.P2870984103770943572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270231 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069496.P2870984103770943572

/-! ## A069496.P4692160660829973881

`∩[A061275(n+1), A119768(n+1)]`
-/

namespace A069496.P4692160660829973881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069496.P4692160660829973881

/-! ## A069496.P9119534853284406684

`∩[A061275(n+1), A232878(n+1)]`
-/

namespace A069496.P9119534853284406684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061275 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069496.P9119534853284406684

/-! ## A069496.P14655236073249316735

`∩[A118591(n+1)-2, A119768(n+1)]`
-/

namespace A069496.P14655236073249316735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118591 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119768 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069496.P14655236073249316735

/-! ## A069496.P11057476310748594030

`∩[A118591(n+1)-2, A232878(n+1)]`
-/

namespace A069496.P11057476310748594030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118591 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069496.P11057476310748594030

/-! ## A069496.P11189485216343037085

`∩[A091624(n+1), A232878(n+1)]`
-/

namespace A069496.P11189485216343037085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069496.P11189485216343037085

/-! ## A069496.P428147014645552074

`∩[A090698(n+1), A118591(n+1)]-2`
-/

namespace A069496.P428147014645552074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118591 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A069496.P428147014645552074

/-! ## A069496.P14975925850848632294

`∩[A090698(n+1)-2, A232878(n+1)]`
-/

namespace A069496.P14975925850848632294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232878 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069496.P14975925850848632294

/-! ## A069496.P12980977273277047113

`∩[A090698(n+1), A335410(n+1)]-2`
-/

namespace A069496.P12980977273277047113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090698 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335410 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A069496.P12980977273277047113

/-! ## A069496.P4760184322821792588

`floor(sqrt(A235334(n+2)))`
-/

namespace A069496.P4760184322821792588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A235334 (n + 2))

end

end A069496.P4760184322821792588

/-!
# A069497: Triangular numbers of the form 6*k.

The programs for A069497, the canonical program `A069497.P15301364343814933143` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069497 has offset 1).

The definition of A069497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A069497.P2550039535602125306

`6*A154293(n+1)`
-/

namespace A069497.P2550039535602125306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A154293 (n + 1)

end

end A069497.P2550039535602125306

namespace A069497

/-- `6*A154293(n+1)` -/
def P2550039535602125306.Spec : Prop :=
  ∀ n, P2550039535602125306.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P15301364343814933143

`A000217(A108752(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069497

/-- `A000217(A108752(n+1))` -/
def P15301364343814933143.Spec : Prop :=
  ∀ n, P15301364343814933143.a n = A069497 (n + 1)

theorem P15301364343814933143.correct : P15301364343814933143.Spec := by
  intro n
  simp only [A069497, Nat.add_sub_cancel]

end A069497

/-! ## A069497.P1873178809328460034

`A000217(A112652(n+1)-1)`
-/

namespace A069497.P1873178809328460034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A112652 (n + 1) - 1).toNat

end

end A069497.P1873178809328460034

namespace A069497

/-- `A000217(A112652(n+1)-1)` -/
def P1873178809328460034.Spec : Prop :=
  ∀ n, P1873178809328460034.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P14109472499571101051

`C(and(3*(n+1), -3), 2)`
-/

namespace A069497.P14109472499571101051
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Int.land (3 * (n + 1) : ℤ) (-3)).toNat 2

end

end A069497.P14109472499571101051

namespace A069497

/-- `C(and(3*(n+1), -3), 2)` -/
def P14109472499571101051.Spec : Prop :=
  ∀ n, (P14109472499571101051.a n : ℤ) = A069497 (n + 1)

end A069497

/-! ## A069497.P9829617363582176956

`C(∑[6-a(n-2)], 2)` with `a(0)=1, a(1)=3`
-/

namespace A069497.P9829617363582176956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  6 - f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A069497.P9829617363582176956

namespace A069497

/-- `C(∑[6-a(n-2)], 2)` -/
def P9829617363582176956.Spec : Prop :=
  ∀ n, (P9829617363582176956.a n : ℤ) = A069497 (n + 1)

end A069497

/-! ## A069497.P5655539914323481178

`C(and(2, n)+3*n+1, 2)`
-/

namespace A069497.P5655539914323481178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.land 2 n + (3 * n + 1)) 2

end

end A069497.P5655539914323481178

namespace A069497

/-- `C(and(2, n)+3*n+1, 2)` -/
def P5655539914323481178.Spec : Prop :=
  ∀ n, (P5655539914323481178.a n : ℤ) = A069497 (n + 1)

end A069497

/-! ## A069497.P6907024769917335787

`C(2*n-or(2, -(n+3)), 2)`
-/

namespace A069497.P6907024769917335787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ((2 * n : ℤ) - Int.lor 2 (-(n + 3 : ℤ))).toNat 2

end

end A069497.P6907024769917335787

namespace A069497

/-- `C(2*n-or(2, -(n+3)), 2)` -/
def P6907024769917335787.Spec : Prop :=
  ∀ n, (P6907024769917335787.a n : ℤ) = A069497 (n + 1)

end A069497

/-! ## A069497.P17123639341391479997

`3*(∑[n]+∑[2-a(n-2)]²)` with `a(0)=0, a(1)=1`
-/

namespace A069497.P17123639341391479997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f2 =>
  2 - f2 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2)

end

end A069497.P17123639341391479997

namespace A069497

/-- `3*(∑[n]+∑[2-a(n-2)]²)` -/
def P17123639341391479997.Spec : Prop :=
  ∀ n, P17123639341391479997.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P147258849034994627

`3*A193828(n)`
-/

namespace A069497.P147258849034994627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A193828 n

end

end A069497.P147258849034994627

namespace A069497

/-- `3*A193828(n)` -/
def P147258849034994627.Spec : Prop :=
  ∀ n, P147258849034994627.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P13746015548229028515

`C(A112652(n+1), 2)`
-/

namespace A069497.P13746015548229028515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A112652 (n + 1)).toNat 2

end

end A069497.P13746015548229028515

namespace A069497

/-- `C(A112652(n+1), 2)` -/
def P13746015548229028515.Spec : Prop :=
  ∀ n, (P13746015548229028515.a n : ℤ) = A069497 (n + 1)

end A069497

/-! ## A069497.P13374556693002116565

`A000217(and(2, n)+3*n)`
-/

namespace A069497.P13374556693002116565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Nat.land 2 n + 3 * n)

end

end A069497.P13374556693002116565

namespace A069497

/-- `A000217(and(2, n)+3*n)` -/
def P13374556693002116565.Spec : Prop :=
  ∀ n, P13374556693002116565.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P17751129159976905274

`A000217(4*n-and(n, -3))`
-/

namespace A069497.P17751129159976905274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 ((4 * n : ℤ) - Int.land (n : ℤ) (-3)).toNat

end

end A069497.P17751129159976905274

namespace A069497

/-- `A000217(4*n-and(n, -3))` -/
def P17751129159976905274.Spec : Prop :=
  ∀ n, P17751129159976905274.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P13927759655631481966

`A000217(∑[A287765(n+1)]-1)`
-/

namespace A069497.P13927759655631481966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat

end

end A069497.P13927759655631481966

namespace A069497

/-- `A000217(∑[A287765(n+1)]-1)` -/
def P13927759655631481966.Spec : Prop :=
  ∀ n, P13927759655631481966.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P15672582004785461062

`A000217(2*A047481(n+1)-n)`
-/

namespace A069497.P15672582004785461062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * A047481 (n + 1) - (n : ℤ)).toNat

end

end A069497.P15672582004785461062

namespace A069497

/-- `A000217(2*A047481(n+1)-n)` -/
def P15672582004785461062.Spec : Prop :=
  ∀ n, P15672582004785461062.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P1707478220684794903

`C(A016777(n)-A057077(n)+1, 2)`
-/

namespace A069497.P1707478220684794903
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A016777 n - A057077 n + 1).toNat 2

end

end A069497.P1707478220684794903

namespace A069497

/-- `C(A016777(n)-A057077(n)+1, 2)` -/
def P1707478220684794903.Spec : Prop :=
  ∀ n, (P1707478220684794903.a n : ℤ) = A069497 (n + 1)

end A069497

/-! ## A069497.P11895999070410465682

`∑[A287733(n+1)]-A287733(n+1)`
-/

namespace A069497.P11895999070410465682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287733 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A287733 (n + 1)

end

end A069497.P11895999070410465682

namespace A069497

/-- `∑[A287733(n+1)]-A287733(n+1)` -/
def P11895999070410465682.Spec : Prop :=
  ∀ n, P11895999070410465682.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P17148515197450846409

`A000217(A016777(n)-and(2, n+2)+1)`
-/

namespace A069497.P17148515197450846409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A016777 n - (Nat.land 2 (n + 2) : ℤ) + 1).toNat

end

end A069497.P17148515197450846409

namespace A069497

/-- `A000217(A016777(n)-and(2, n+2)+1)` -/
def P17148515197450846409.Spec : Prop :=
  ∀ n, P17148515197450846409.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P16859591176984495189

`A000217(A016777(n)-A057077(n))`
-/

namespace A069497.P16859591176984495189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A016777 n - A057077 n).toNat

end

end A069497.P16859591176984495189

namespace A069497

/-- `A000217(A016777(n)-A057077(n))` -/
def P16859591176984495189.Spec : Prop :=
  ∀ n, P16859591176984495189.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P17672272338530423503

`A000217(xor(1, A052905(n))-A000217(n))`
-/

namespace A069497.P17672272338530423503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (Int.xor 1 (A052905 n) - A000217 n).toNat

end

end A069497.P17672272338530423503

namespace A069497

/-- `A000217(xor(1, A052905(n))-A000217(n))` -/
def P17672272338530423503.Spec : Prop :=
  ∀ n, P17672272338530423503.a n = A069497 (n + 1)

end A069497

/-! ## A069497.P14369786853399897156

`A000217(A047481(n+1)+A047481(n+1)-n)`
-/

namespace A069497.P14369786853399897156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A047481 (n + 1) + (A047481 (n + 1) - (n : ℤ))).toNat

end

end A069497.P14369786853399897156

namespace A069497

/-- `A000217(A047481(n+1)+A047481(n+1)-n)` -/
def P14369786853399897156.Spec : Prop :=
  ∀ n, P14369786853399897156.a n = A069497 (n + 1)

end A069497

/-!
# A069498: Triangular numbers of the form 10*k.

The programs for A069498, the canonical program `A069498.P10537288817338327856` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069498 has offset 1).

The definition of A069498 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069498.P10537288817338327856

`C(A151980(n+2), 2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069498

/-- `C(A151980(n+2), 2)` -/
def P10537288817338327856.Spec : Prop :=
  ∀ n, (P10537288817338327856.a n : ℤ) = A069498 (n + 1)

theorem P10537288817338327856.correct : P10537288817338327856.Spec := by
  intro n
  simp only [A069498, Nat.add_sub_cancel]

end A069498

/-! ## A069498.P14328334046298119386

`A000217(eq[n, A000217(n)%10+n])`
-/

namespace A069498.P14328334046298119386
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000217 n) 10 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069498.P14328334046298119386

namespace A069498

/-- `A000217(eq[n, A000217(n)%10+n])` -/
def P14328334046298119386.Spec : Prop :=
  ∀ n, P14328334046298119386.a n = A069498 (n + 1)

end A069498

/-! ## A069498.P18195726457270387005

`A014494(∑[n²%8]+n)`
-/

namespace A069498.P18195726457270387005
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A069498.P18195726457270387005

namespace A069498

/-- `A014494(∑[n²%8]+n)` -/
def P18195726457270387005.Spec : Prop :=
  ∀ n, P18195726457270387005.a n = A069498 (n + 1)

end A069498

/-! ## A069498.P7877457051711445249

`A014494(A045572(n+1)-A133872(n))`
-/

namespace A069498.P7877457051711445249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (A045572 (n + 1) - A133872 n).toNat

end

end A069498.P7877457051711445249

namespace A069498

/-- `A014494(A045572(n+1)-A133872(n))` -/
def P7877457051711445249.Spec : Prop :=
  ∀ n, P7877457051711445249.a n = A069498 (n + 1)

end A069498

/-! ## A069498.P4878384971197268267

`A014494(A108752(n+1)-A110654(n))`
-/

namespace A069498.P4878384971197268267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (A108752 (n + 1) - A110654 n).toNat

end

end A069498.P4878384971197268267

namespace A069498

/-- `A014494(A108752(n+1)-A110654(n))` -/
def P4878384971197268267.Spec : Prop :=
  ∀ n, P4878384971197268267.a n = A069498 (n + 1)

end A069498

/-! ## A069498.P6683340199551770974

`A014494(xor(1, A008619(5*n)))`
-/

namespace A069498.P6683340199551770974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014494 (Int.xor 1 (A008619 (5 * n))).toNat

end

end A069498.P6683340199551770974

namespace A069498

/-- `A014494(xor(1, A008619(5*n)))` -/
def P6683340199551770974.Spec : Prop :=
  ∀ n, P6683340199551770974.a n = A069498 (n + 1)

end A069498

/-! ## A069498.P7698926890412410559

`A161680(A151980(n+2))`
-/

namespace A069498.P7698926890412410559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A151980 (n + 2)).toNat

end

end A069498.P7698926890412410559

namespace A069498

/-- `A161680(A151980(n+2))` -/
def P7698926890412410559.Spec : Prop :=
  ∀ n, P7698926890412410559.a n = A069498 (n + 1)

end A069498

/-! ## A069498.P9938693376205796711

`A000217(eq[0, n*A008954(n)])`
-/

namespace A069498.P9938693376205796711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A008954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069498.P9938693376205796711

namespace A069498

/-- `A000217(eq[0, n*A008954(n)])` -/
def P9938693376205796711.Spec : Prop :=
  ∀ n, P9938693376205796711.a n = A069498 (n + 1)

end A069498

/-! ## A069498.P12783722360539535435

`A000217(eq[n, A008954(n)+n])`
-/

namespace A069498.P12783722360539535435
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008954 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069498.P12783722360539535435

namespace A069498

/-- `A000217(eq[n, A008954(n)+n])` -/
def P12783722360539535435.Spec : Prop :=
  ∀ n, P12783722360539535435.a n = A069498 (n + 1)

end A069498

/-! ## A069498.P2914526366390563375

`A000217(eq[n, n-A008954(n)])`
-/

namespace A069498.P2914526366390563375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A008954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A069498.P2914526366390563375

namespace A069498

/-- `A000217(eq[n, n-A008954(n)])` -/
def P2914526366390563375.Spec : Prop :=
  ∀ n, P2914526366390563375.a n = A069498 (n + 1)

end A069498

/-! ## A069498.P1124595926446226393

`record[or(-A008954(n), A000217(n))]`
-/

namespace A069498.P1124595926446226393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (-A008954 n) (A000217 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069498.P1124595926446226393

namespace A069498

/-- `record[or(-A008954(n), A000217(n))]` -/
def P1124595926446226393.Spec : Prop :=
  ∀ n, P1124595926446226393.a n = A069498 (n + 1)

end A069498

/-! ## A069498.P15746869847143205100

`record[A002378(n)-lcm(10, A000217(n))]`
-/

namespace A069498.P15746869847143205100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - (Int.lcm 10 (A000217 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069498.P15746869847143205100

namespace A069498

/-- `record[A002378(n)-lcm(10, A000217(n))]` -/
def P15746869847143205100.Spec : Prop :=
  ∀ n, P15746869847143205100.a n = A069498 (n + 1)

end A069498

/-! ## A069498.P10510643320491341926

`∩[10*n, C(n+1, 2)]`
-/

namespace A069498.P10510643320491341926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A069498.P10510643320491341926

namespace A069498

/-- `∩[10*n, C(n+1, 2)]` -/
def P10510643320491341926.Spec : Prop :=
  ∀ n, (P10510643320491341926.a n : ℤ) = A069498 (n + 1)

end A069498

/-! ## A069498.P16535857714688314755

`∩[10*n, a(n-1)+n]` with `a(0)=0`
-/

namespace A069498.P16535857714688314755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f2 =>
  f2 (n - 1) + n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = x) n

end

end A069498.P16535857714688314755

namespace A069498

/-- `∩[10*n, a(n-1)+n]` -/
def P16535857714688314755.Spec : Prop :=
  ∀ n, (P16535857714688314755.a n : ℤ) = A069498 (n + 1)

end A069498

/-!
# A069499: Triangular numbers of the form 21*k.

The programs for A069499, the canonical program `A069499.P4124095796989806507` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A069499 has offset 1).

The definition of A069499 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A069499.P4124095796989806507

`C(A151971(n+2), 2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A069499

/-- `C(A151971(n+2), 2)` -/
def P4124095796989806507.Spec : Prop :=
  ∀ n, (P4124095796989806507.a n : ℤ) = A069499 (n + 1)

theorem P4124095796989806507.correct : P4124095796989806507.Spec := by
  intro n
  simp only [A069499, Nat.add_sub_cancel]

end A069499

/-! ## A069499.P16622508282743030756

`A000217(A151971(n+2)-1)`
-/

namespace A069499.P16622508282743030756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A151971 (n + 2) - 1).toNat

end

end A069499.P16622508282743030756

namespace A069499

/-- `A000217(A151971(n+2)-1)` -/
def P16622508282743030756.Spec : Prop :=
  ∀ n, P16622508282743030756.a n = A069499 (n + 1)

end A069499

/-! ## A069499.P7738000864764048769

`A000217(A047279(∑[A287765(n+1)]))`
-/

namespace A069499.P7738000864764048769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287765 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A047279 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A069499.P7738000864764048769

namespace A069499

/-- `A000217(A047279(∑[A287765(n+1)]))` -/
def P7738000864764048769.Spec : Prop :=
  ∀ n, P7738000864764048769.a n = A069499 (n + 1)

end A069499

/-! ## A069499.P79836564644579811

`A161680(A151971(n+2))`
-/

namespace A069499.P79836564644579811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A151971 (n + 2)).toNat

end

end A069499.P79836564644579811

namespace A069499

/-- `A161680(A151971(n+2))` -/
def P79836564644579811.Spec : Prop :=
  ∀ n, P79836564644579811.a n = A069499 (n + 1)

end A069499

/-! ## A069499.P17504412493102553722

`record[A161680(A151971(A154958(n)))]`
-/

namespace A069499.P17504412493102553722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A151971 (A154958 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069499.P17504412493102553722

namespace A069499

/-- `record[A161680(A151971(A154958(n)))]` -/
def P17504412493102553722.Spec : Prop :=
  ∀ n, P17504412493102553722.a n = A069499 (n + 1)

end A069499

/-! ## A069499.P4289898841120261736

`record[A161680(A151971(A236858(n)))]`
-/

namespace A069499.P4289898841120261736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A151971 (A236858 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A069499.P4289898841120261736

namespace A069499

/-- `record[A161680(A151971(A236858(n)))]` -/
def P4289898841120261736.Spec : Prop :=
  ∀ n, P4289898841120261736.a n = A069499 (n + 1)

end A069499

/-! ## A069499.P15764840124442980791

`A069981(record[A065330(A219721(n))])`
-/

namespace A069499.P15764840124442980791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065330 (A219721 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069981 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069499.P15764840124442980791

namespace A069499

/-- `A069981(record[A065330(A219721(n))])` -/
def P15764840124442980791.Spec : Prop :=
  ∀ n, P15764840124442980791.a n = A069499 (n + 1)

end A069499

/-! ## A069499.P7924415584205611780

`A001971(record[A051724(A113801(n+1))])`
-/

namespace A069499.P7924415584205611780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (A113801 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001971 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A069499.P7924415584205611780

namespace A069499

/-- `A001971(record[A051724(A113801(n+1))])` -/
def P7924415584205611780.Spec : Prop :=
  ∀ n, P7924415584205611780.a n = A069499 (n + 1)

end A069499

/-! ## A069499.P12341587662165112130

`∩[A000217(n), A008603(n)]`
-/

namespace A069499.P12341587662165112130
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069499.P12341587662165112130

namespace A069499

/-- `∩[A000217(n), A008603(n)]` -/
def P12341587662165112130.Spec : Prop :=
  ∀ n, (P12341587662165112130.a n : ℤ) = A069499 (n + 1)

end A069499

/-! ## A069499.P11209578423090809075

`∩[A008603(n), A253145(n)]`
-/

namespace A069499.P11209578423090809075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253145 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069499.P11209578423090809075

namespace A069499

/-- `∩[A008603(n), A253145(n)]` -/
def P11209578423090809075.Spec : Prop :=
  ∀ n, (P11209578423090809075.a n : ℤ) = A069499 (n + 1)

end A069499

/-! ## A069499.P2646734240467515214

`∩[A117748(n+1), A008603(n)]`
-/

namespace A069499.P2646734240467515214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117748 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069499.P2646734240467515214

namespace A069499

/-- `∩[A117748(n+1), A008603(n)]` -/
def P2646734240467515214.Spec : Prop :=
  ∀ n, (P2646734240467515214.a n : ℤ) = A069499 (n + 1)

end A069499

/-! ## A069499.P1269218686783148864

`∩[A186783(n+1), A008603(n)]`
-/

namespace A069499.P1269218686783148864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186783 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008603 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A069499.P1269218686783148864

namespace A069499

/-- `∩[A186783(n+1), A008603(n)]` -/
def P1269218686783148864.Spec : Prop :=
  ∀ n, (P1269218686783148864.a n : ℤ) = A069499 (n + 1)

end A069499

