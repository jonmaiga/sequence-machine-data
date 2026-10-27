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
import Seq.B000.C032
import Seq.B000.C034
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A342903: a(n) is the smallest number that is the sum of n positive squares in two ways.

The programs for A342903, the canonical program `A342903.P9603516257340045588` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342903 has offset 2).

The definition of A342903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342903.P9603516257340045588

`2*a(n-1)-a(n-2)` with `a(0)=50, a(1)=27, a(2)=28, a(3)=20, a(4)=21`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A342903

/-- `2*a(n-1)-a(n-2)` -/
def P9603516257340045588.Spec : Prop :=
  ∀ n, P9603516257340045588.a n = A342903 (n + 2)

theorem P9603516257340045588.correct : P9603516257340045588.Spec := by
  intro n
  simp only [A342903, Nat.add_sub_cancel]

end A342903

/-!
# A342905: Array read by antidiagonals: T(n,k) = product of all distinct primes dividing n*k (n>=1, k>=1).

The programs for A342905, the canonical program `A342905.P6996457932494901470` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342905 has offset 1).

The definition of A342905 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342905.P6996457932494901470

`A007947((col(n)+1)*(row(n)-col(n)+1))`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A342905

/-- `A007947((col(n)+1)*(row(n)-col(n)+1))` -/
def P6996457932494901470.Spec : Prop :=
  ∀ n, P6996457932494901470.a n = A342905 (n + 1)

theorem P6996457932494901470.correct : P6996457932494901470.Spec := by
  intro n
  simp only [A342905, Nat.add_sub_cancel]

end A342905

/-! ## A342905.P12915829879305596197

`∏{p}[A003990(n+1), #]`
-/

namespace A342905.P12915829879305596197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A342905.P12915829879305596197

namespace A342905

/-- `∏{p}[A003990(n+1), #]` -/
def P12915829879305596197.Spec : Prop :=
  ∀ n, (P12915829879305596197.a n : ℤ) = A342905 (n + 1)

end A342905

/-! ## A342905.P17978583714702673201

`∏{p}[A003991(n+1), #]`
-/

namespace A342905.P17978583714702673201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A342905.P17978583714702673201

namespace A342905

/-- `∏{p}[A003991(n+1), #]` -/
def P17978583714702673201.Spec : Prop :=
  ∀ n, (P17978583714702673201.a n : ℤ) = A342905 (n + 1)

end A342905

/-! ## A342905.P8605607585707763271

`∏{p}[A059896(n+1), #]`
-/

namespace A342905.P8605607585707763271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059896 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A342905.P8605607585707763271

namespace A342905

/-- `∏{p}[A059896(n+1), #]` -/
def P8605607585707763271.Spec : Prop :=
  ∀ n, (P8605607585707763271.a n : ℤ) = A342905 (n + 1)

end A342905

/-! ## A342905.P17960048735726419861

`A007947(A003990(n+1))`
-/

namespace A342905.P17960048735726419861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A003990 (n + 1)).toNat

end

end A342905.P17960048735726419861

namespace A342905

/-- `A007947(A003990(n+1))` -/
def P17960048735726419861.Spec : Prop :=
  ∀ n, P17960048735726419861.a n = A342905 (n + 1)

end A342905

/-! ## A342905.P1672635862609234683

`A007947(A003991(n+1))`
-/

namespace A342905.P1672635862609234683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A003991 (n + 1)).toNat

end

end A342905.P1672635862609234683

namespace A342905

/-- `A007947(A003991(n+1))` -/
def P1672635862609234683.Spec : Prop :=
  ∀ n, P1672635862609234683.a n = A342905 (n + 1)

end A342905

/-! ## A342905.P4964183176029777825

`A007947(A059896(n+1))`
-/

namespace A342905.P4964183176029777825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A059896 (n + 1)).toNat

end

end A342905.P4964183176029777825

namespace A342905

/-- `A007947(A059896(n+1))` -/
def P4964183176029777825.Spec : Prop :=
  ∀ n, P4964183176029777825.a n = A342905 (n + 1)

end A342905

/-! ## A342905.P8674717351531028072

`∏{p}[A002260(n+1)*A004736(n+1), #]`
-/

namespace A342905.P8674717351531028072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) * A004736 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A342905.P8674717351531028072

namespace A342905

/-- `∏{p}[A002260(n+1)*A004736(n+1), #]` -/
def P8674717351531028072.Spec : Prop :=
  ∀ n, (P8674717351531028072.a n : ℤ) = A342905 (n + 1)

end A342905

/-! ## A342905.P16873579443166411329

`A007947(A002260(n+1)*A004736(n+1))`
-/

namespace A342905.P16873579443166411329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A002260 (n + 1) * A004736 (n + 1)).toNat

end

end A342905.P16873579443166411329

namespace A342905

/-- `A007947(A002260(n+1)*A004736(n+1))` -/
def P16873579443166411329.Spec : Prop :=
  ∀ n, P16873579443166411329.a n = A342905 (n + 1)

end A342905

/-! ## A342905.P2027017477881136007

`A007947(A059895(n+1)*A059897(n+1))`
-/

namespace A342905.P2027017477881136007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A059895 (n + 1) * A059897 (n + 1)).toNat

end

end A342905.P2027017477881136007

namespace A342905

/-- `A007947(A059895(n+1)*A059897(n+1))` -/
def P2027017477881136007.Spec : Prop :=
  ∀ n, P2027017477881136007.a n = A342905 (n + 1)

end A342905

/-! ## A342905.P17793362597484452090

`∏{p}[A057555(2*n+1)*A057555(2*(n+1)), #]`
-/

namespace A342905.P17793362597484452090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057555 (2 * n + 1) * A057555 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A342905.P17793362597484452090

namespace A342905

/-- `∏{p}[A057555(2*n+1)*A057555(2*(n+1)), #]` -/
def P17793362597484452090.Spec : Prop :=
  ∀ n, (P17793362597484452090.a n : ℤ) = A342905 (n + 1)

end A342905

/-! ## A342905.P17199040326255028017

`∏{p}[A098359(n+1), #]`
-/

namespace A342905.P17199040326255028017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098359 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A342905.P17199040326255028017

namespace A342905

/-- `∏{p}[A098359(n+1), #]` -/
def P17199040326255028017.Spec : Prop :=
  ∀ n, (P17199040326255028017.a n : ℤ) = A342905 (n + 1)

end A342905

/-! ## A342905.P8949979854825994263

`A007947(A086416(A255975(n+1)))`
-/

namespace A342905.P8949979854825994263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A086416 (A255975 (n + 1)).toNat).toNat

end

end A342905.P8949979854825994263

namespace A342905

/-- `A007947(A086416(A255975(n+1)))` -/
def P8949979854825994263.Spec : Prop :=
  ∀ n, P8949979854825994263.a n = A342905 (n + 1)

end A342905

/-! ## A342905.P9139645825571319439

`∏{p}[A287958(n+1), #]`
-/

namespace A342905.P9139645825571319439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287958 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A342905.P9139645825571319439

namespace A342905

/-- `∏{p}[A287958(n+1), #]` -/
def P9139645825571319439.Spec : Prop :=
  ∀ n, (P9139645825571319439.a n : ℤ) = A342905 (n + 1)

end A342905

/-! ## A342905.P12322709379258120435

`A007947(A287958(n+1))`
-/

namespace A342905.P12322709379258120435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A287958 (n + 1)).toNat

end

end A342905.P12322709379258120435

namespace A342905

/-- `A007947(A287958(n+1))` -/
def P12322709379258120435.Spec : Prop :=
  ∀ n, P12322709379258120435.a n = A342905 (n + 1)

end A342905

/-! ## A342905.P9104747348936357728

`A007947(A098359(n+1))`
-/

namespace A342905.P9104747348936357728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (A098359 (n + 1)).toNat

end

end A342905.P9104747348936357728

namespace A342905

/-- `A007947(A098359(n+1))` -/
def P9104747348936357728.Spec : Prop :=
  ∀ n, P9104747348936357728.a n = A342905 (n + 1)

end A342905

/-! ## A342905.P5232202569868902377

`gcd(A003990(n+1), A068510(A003990(n+1)+1))`
-/

namespace A342905.P5232202569868902377
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003990 (n + 1)) (A068510 (A003990 (n + 1) + 1).toNat)

end

end A342905.P5232202569868902377

namespace A342905

/-- `gcd(A003990(n+1), A068510(A003990(n+1)+1))` -/
def P5232202569868902377.Spec : Prop :=
  ∀ n, (P5232202569868902377.a n : ℤ) = A342905 (n + 1)

end A342905

/-! ## A342905.P8358407646700050298

`A003991(n+1)/A295658(A003991(n+1)²)`
-/

namespace A342905.P8358407646700050298
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / (A295658 (A003991 (n + 1) ^ 2).toNat : ℚ)

end

end A342905.P8358407646700050298

namespace A342905

/-- `A003991(n+1)/A295658(A003991(n+1)²)` -/
def P8358407646700050298.Spec : Prop :=
  ∀ n, P8358407646700050298.a n = (A342905 (n + 1) : ℚ)

end A342905

/-! ## A342905.P16074552638684746657

`gcd(A003990(n+1), A068510(n+1))`
-/

namespace A342905.P16074552638684746657
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003990 (n + 1)) (A068510 (n + 1))

end

end A342905.P16074552638684746657

namespace A342905

/-- `gcd(A003990(n+1), A068510(n+1))` -/
def P16074552638684746657.Spec : Prop :=
  ∀ n, (P16074552638684746657.a n : ℤ) = A342905 (n + 1)

end A342905

/-! ## A342905.P2205250210187244975

`A053166(A053166(A059896(n+1)²))`
-/

namespace A342905.P2205250210187244975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053166 (A053166 (A059896 (n + 1) ^ 2).toNat).toNat

end

end A342905.P2205250210187244975

namespace A342905

/-- `A053166(A053166(A059896(n+1)²))` -/
def P2205250210187244975.Spec : Prop :=
  ∀ n, P2205250210187244975.a n = A342905 (n + 1)

end A342905

/-!
# A342906: a(n) = 2^(2*n-2) - Catalan(n).

The programs for A342906, the canonical program `A342906.P11093243095052920222` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342906 has offset 1).

The definition of A342906 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342906.P11093243095052920222

`2^(2*(n+1)-2)-A000108(n+1)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A342906

/-- `2^(2*(n+1)-2)-A000108(n+1)` -/
def P11093243095052920222.Spec : Prop :=
  ∀ n, P11093243095052920222.a n = (A342906 (n + 1) : ℚ)

end A342906

/-! ## A342906.P8943939625690970398

`4^n-1-∑[abs(Δ[(4-6/(n+1))*a(n-1)])]` with `a(0)=1`
-/

namespace A342906.P8943939625690970398
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f2 =>
  (4 - 6 / (n + 1 : ℚ)) * f2 (n - 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((4 ^ n : ℤ) - 1 : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342906.P8943939625690970398

namespace A342906

/-- `4^n-1-∑[abs(Δ[(4-6/(n+1))*a(n-1)])]` -/
def P8943939625690970398.Spec : Prop :=
  ∀ n, P8943939625690970398.a n = (A342906 (n + 1) : ℚ)

end A342906

/-! ## A342906.P6159236372731511830

`n*∏[2*(2*n+1)/(n+2)]/2+4^n-∏[4-2/(n+1)]/2`
-/

namespace A342906.P6159236372731511830
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * ((2 * n + 1 : ℚ) / (n + 2 : ℚ))

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (∏ j ∈ Finset.range (n + 1), f1 j) / 2 + ((4 ^ n : ℚ) - (∏ j ∈ Finset.range (n + 1), f2 j) / 2)

end

end A342906.P6159236372731511830

namespace A342906

/-- `n*∏[2*(2*n+1)/(n+2)]/2+4^n-∏[4-2/(n+1)]/2` -/
def P6159236372731511830.Spec : Prop :=
  ∀ n, P6159236372731511830.a n = (A342906 (n + 1) : ℚ)

end A342906

/-! ## A342906.P2056090426158184738

`abs(4^n-∑[A071724(n)])`
-/

namespace A342906.P2056090426158184738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A342906.P2056090426158184738

namespace A342906

/-- `abs(4^n-∑[A071724(n)])` -/
def P2056090426158184738.Spec : Prop :=
  ∀ n, P2056090426158184738.a n = A342906 (n + 1)

end A342906

/-! ## A342906.P4613132911763822667

`abs(4^n-A000108(n+1))`
-/

namespace A342906.P4613132911763822667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A000108 (n + 1)|

end

end A342906.P4613132911763822667

namespace A342906

/-- `abs(4^n-A000108(n+1))` -/
def P4613132911763822667.Spec : Prop :=
  ∀ n, P4613132911763822667.a n = A342906 (n + 1)

end A342906

/-! ## A342906.P13423114680630789083

`abs(4^n-A120588(n+2))`
-/

namespace A342906.P13423114680630789083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(4 ^ n : ℤ) - A120588 (n + 2)|

end

end A342906.P13423114680630789083

namespace A342906

/-- `abs(4^n-A120588(n+2))` -/
def P13423114680630789083.Spec : Prop :=
  ∀ n, P13423114680630789083.a n = A342906 (n + 1)

end A342906

/-! ## A342906.P18171159122549405117

`A038679(n)%A000302(n)`
-/

namespace A342906.P18171159122549405117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038679 n) (A000302 n)

end

end A342906.P18171159122549405117

namespace A342906

/-- `A038679(n)%A000302(n)` -/
def P18171159122549405117.Spec : Prop :=
  ∀ n, P18171159122549405117.a n = A342906 (n + 1)

end A342906

/-! ## A342906.P12893255872681100488

`and(A024036(n), A038679(n))`
-/

namespace A342906.P12893255872681100488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A024036 n) (A038679 n)

end

end A342906.P12893255872681100488

namespace A342906

/-- `and(A024036(n), A038679(n))` -/
def P12893255872681100488.Spec : Prop :=
  ∀ n, P12893255872681100488.a n = A342906 (n + 1)

end A342906

/-! ## A342906.P7037556111583035451

`xor(A038679(n), A164346(n))`
-/

namespace A342906.P7037556111583035451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A038679 n) (A164346 n)

end

end A342906.P7037556111583035451

namespace A342906

/-- `xor(A038679(n), A164346(n))` -/
def P7037556111583035451.Spec : Prop :=
  ∀ n, P7037556111583035451.a n = A342906 (n + 1)

end A342906

/-! ## A342906.P10961544420640961226

`Δ[A002450(n)-∑[A000108(n)]]`
-/

namespace A342906.P10961544420640961226
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342906.P10961544420640961226

namespace A342906

/-- `Δ[A002450(n)-∑[A000108(n)]]` -/
def P10961544420640961226.Spec : Prop :=
  ∀ n, P10961544420640961226.a n = A342906 (n + 1)

end A342906

/-! ## A342906.P3834775714238863689

`and(A038679(n), A114569(n))`
-/

namespace A342906.P3834775714238863689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038679 n) (A114569 n)

end

end A342906.P3834775714238863689

namespace A342906

/-- `and(A038679(n), A114569(n))` -/
def P3834775714238863689.Spec : Prop :=
  ∀ n, P3834775714238863689.a n = A342906 (n + 1)

end A342906

/-! ## A342906.P17479247849392543217

`and(A038679(n), A156760(n))`
-/

namespace A342906.P17479247849392543217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A038679 n) (A156760 n)

end

end A342906.P17479247849392543217

namespace A342906

/-- `and(A038679(n), A156760(n))` -/
def P17479247849392543217.Spec : Prop :=
  ∀ n, P17479247849392543217.a n = A342906 (n + 1)

end A342906

/-!
# A342907: a(n) is the number of tilings of the order-n Aztec Diamond by square tetrominoes and Z-shaped tetrominoes, counting all rotations and reflections as distinct.

The programs for A342907, there is no canonical definition to state claims against.
-/

/-! ## A342907.P15817263320795147981

`A245705(2^(∑[n]-n)*A067142(n+3))`
-/

namespace A342907.P15817263320795147981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245705 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ) : ℤ) * (A067142 (n + 3) : ℚ))).toNat

end

end A342907.P15817263320795147981

/-!
# A342909: a(1)=1. Thereafter, if a(n) is a novel term a(n+1) = number of prior terms > a(n); otherwise a(n+1) = number of prior terms <= a(n).

The programs for A342909, there is no canonical definition to state claims against.
-/

/-! ## A342909.P17916721685169303575

`A332436(A332436((floor((n+2)²/3)%(n+2))²))`
-/

namespace A342909.P17916721685169303575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332436 (A332436 (Int.tmod ⌊((n + 2) ^ 2 : ℚ) / 3⌋ (n + 2 : ℤ) ^ 2).toNat).toNat

end

end A342909.P17916721685169303575

/-!
# A342910: Concatenation of all 01-words, in the order induced by A032766; see Comments.

The programs for A342910, there is no canonical definition to state claims against.
-/

/-! ## A342910.P15813856352697552905

`A327177(A001316(Δ[A303604(n+1)]))`
-/

namespace A342910.P15813856352697552905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303604 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327177 (A001316 (f1 (n + 1) - f1 n).toNat).toNat

end

end A342910.P15813856352697552905

/-! ## A342910.P10204654462527151535

`A306550(or(A306550(n), A347697(n)))`
-/

namespace A342910.P10204654462527151535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306550 (Int.lor (A306550 n) (A347697 n)).toNat

end

end A342910.P10204654462527151535

/-! ## A342910.P7760005718137440162

`A266608(A242173(n+1)%A090076(n+3))`
-/

namespace A342910.P7760005718137440162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266608 (Int.tmod (A242173 (n + 1)) (A090076 (n + 3))).toNat

end

end A342910.P7760005718137440162

/-! ## A342910.P12441691005586764574

`A316863(A058147(n+1))^A002447(n)`
-/

namespace A342910.P12441691005586764574
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316863 (A058147 (n + 1)).toNat : ℚ) ^ (A002447 n : ℤ)

end

end A342910.P12441691005586764574

/-! ## A342910.P848310061090136531

`A316863(A058147(n+1))^A212804(n)`
-/

namespace A342910.P848310061090136531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A316863 (A058147 (n + 1)).toNat : ℚ) ^ (A212804 n : ℤ)

end

end A342910.P848310061090136531

/-!
# A342911: T(n, k) = Sum_{j=1..k} (1 + 2*cos(j*Pi/(k + 1)))^n for n > 0, T(0, 0) = 1. Triangle read by rows, T(n, k) for 0 <= k <= n.

The programs for A342911, there is no canonical definition to state claims against.
-/

/-! ## A342911.P4584103079692789325

`∑{d}[A195739(n+1), A133299(#)]`
-/

namespace A342911.P4584103079692789325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A133299 d

end

end A342911.P4584103079692789325

/-! ## A342911.P6400444446863095990

`A127321(A059119(n)*A304330(n))`
-/

namespace A342911.P6400444446863095990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A059119 n * A304330 n).toNat

end

end A342911.P6400444446863095990

/-! ## A342911.P12057690573580257704

`A106442(A002262(n)^A003056(n))`
-/

namespace A342911.P12057690573580257704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106442 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A342911.P12057690573580257704

/-! ## A342911.P8504339988526716245

`A106444(A002262(n)^A003056(n))`
-/

namespace A342911.P8504339988526716245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106444 (SequenceMachineLib.roundAway ((A002262 n : ℚ) ^ (A003056 n : ℤ))).toNat

end

end A342911.P8504339988526716245

/-!
# A342912: a(n) = [x^n] (1 - 2*x - sqrt((1 - 3*x)/(1 + x)))/(2*x^3).

The programs for A342912, the canonical program `A342912.P7509738024584367679` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342912 has offset 0).

The definition of A342912 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342912.P7509738024584367679

`(2*a(n-1)+3*a(n-2))*(n+1)/(n+3)` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A342912

/-- `(2*a(n-1)+3*a(n-2))*(n+1)/(n+3)` -/
def P7509738024584367679.Spec : Prop :=
  ∀ n, P7509738024584367679.a n = (A342912 n : ℚ)

end A342912

/-! ## A342912.P4008795578514097895

`A005043(n+2)`
-/

namespace A342912.P4008795578514097895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 2)

end

end A342912.P4008795578514097895

namespace A342912

/-- `A005043(n+2)` -/
def P4008795578514097895.Spec : Prop :=
  ∀ n, P4008795578514097895.a n = A342912 n

end A342912

/-! ## A342912.P191246639307699041

`abs(A099323(n+3))`
-/

namespace A342912.P191246639307699041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A099323 (n + 3)|

end

end A342912.P191246639307699041

namespace A342912

/-- `abs(A099323(n+3))` -/
def P191246639307699041.Spec : Prop :=
  ∀ n, P191246639307699041.a n = A342912 n

end A342912

/-! ## A342912.P17374691402423838201

`abs(A174297(n+4))`
-/

namespace A342912.P17374691402423838201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A174297 (n + 4)|

end

end A342912.P17374691402423838201

namespace A342912

/-- `abs(A174297(n+4))` -/
def P17374691402423838201.Spec : Prop :=
  ∀ n, P17374691402423838201.a n = A342912 n

end A342912

/-! ## A342912.P11962191459464978067

`Δ[A082395(n+2)]`
-/

namespace A342912.P11962191459464978067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A342912.P11962191459464978067

namespace A342912

/-- `Δ[A082395(n+2)]` -/
def P11962191459464978067.Spec : Prop :=
  ∀ n, P11962191459464978067.a n = A342912 n

end A342912

/-! ## A342912.P6896984791080250720

`A103872(n+1)/2`
-/

namespace A342912.P6896984791080250720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103872 (n + 1) : ℚ) / 2

end

end A342912.P6896984791080250720

namespace A342912

/-- `A103872(n+1)/2` -/
def P6896984791080250720.Spec : Prop :=
  ∀ n, P6896984791080250720.a n = (A342912 n : ℚ)

end A342912

/-! ## A342912.P16128965514430050411

`abs(∑[A166587(n+2)])`
-/

namespace A342912.P16128965514430050411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166587 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j|

end

end A342912.P16128965514430050411

namespace A342912

/-- `abs(∑[A166587(n+2)])` -/
def P16128965514430050411.Spec : Prop :=
  ∀ n, P16128965514430050411.a n = A342912 n

end A342912

/-! ## A342912.P7394939814421669368

`A002026(n)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A342912.P7394939814421669368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A002026 n + a (n - 2)

end

end A342912.P7394939814421669368

namespace A342912

/-- `A002026(n)+a(n-2)` -/
def P7394939814421669368.Spec : Prop :=
  ∀ n, P7394939814421669368.a n = A342912 n

end A342912

/-! ## A342912.P15387515011864820393

`A001006(n+1)-a(n-1)` with `a(0)=1`
-/

namespace A342912.P15387515011864820393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001006 (n + 1) - a (n - 1)

end

end A342912.P15387515011864820393

namespace A342912

/-- `A001006(n+1)-a(n-1)` -/
def P15387515011864820393.Spec : Prop :=
  ∀ n, P15387515011864820393.a n = A342912 n

end A342912

/-! ## A342912.P17287469345908690070

`A140662(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A342912.P17287469345908690070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A140662 n + (1 - a (n - 1))

end

end A342912.P17287469345908690070

namespace A342912

/-- `A140662(n)+1-a(n-1)` -/
def P17287469345908690070.Spec : Prop :=
  ∀ n, P17287469345908690070.a n = A342912 n

end A342912

/-! ## A342912.P3333897138106470024

`A086246(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A342912.P3333897138106470024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A086246 (n + 3) - a (n - 1)

end

end A342912.P3333897138106470024

namespace A342912

/-- `A086246(n+3)-a(n-1)` -/
def P3333897138106470024.Spec : Prop :=
  ∀ n, P3333897138106470024.a n = A342912 n

end A342912

/-! ## A342912.P3591689631691098091

`A168049(n+3)-a(n-1)` with `a(0)=1`
-/

namespace A342912.P3591689631691098091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A168049 (n + 3) - a (n - 1)

end

end A342912.P3591689631691098091

namespace A342912

/-- `A168049(n+3)-a(n-1)` -/
def P3591689631691098091.Spec : Prop :=
  ∀ n, P3591689631691098091.a n = A342912 n

end A342912

/-! ## A342912.P13080459933748428938

`A284778(n)+A187306(n)`
-/

namespace A342912.P13080459933748428938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284778 n + A187306 n

end

end A342912.P13080459933748428938

namespace A342912

/-- `A284778(n)+A187306(n)` -/
def P13080459933748428938.Spec : Prop :=
  ∀ n, P13080459933748428938.a n = A342912 n

end A342912

/-! ## A342912.P13013560416952536554

`A309303(n+2)+A309303(n+3)`
-/

namespace A342912.P13013560416952536554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309303 (n + 2) + A309303 (n + 3)

end

end A342912.P13013560416952536554

namespace A342912

/-- `A309303(n+2)+A309303(n+3)` -/
def P13013560416952536554.Spec : Prop :=
  ∀ n, P13013560416952536554.a n = A342912 n

end A342912

/-! ## A342912.P2564377417659491694

`A082395(n+3)-A082395(n+2)`
-/

namespace A342912.P2564377417659491694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082395 (n + 3) - A082395 (n + 2)

end

end A342912.P2564377417659491694

namespace A342912

/-- `A082395(n+3)-A082395(n+2)` -/
def P2564377417659491694.Spec : Prop :=
  ∀ n, P2564377417659491694.a n = A342912 n

end A342912

/-! ## A342912.P13194729296562070111

`A187306(n+1)+A009531(2*n+1)`
-/

namespace A342912.P13194729296562070111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187306 (n + 1) + A009531 (2 * n + 1)

end

end A342912.P13194729296562070111

namespace A342912

/-- `A187306(n+1)+A009531(2*n+1)` -/
def P13194729296562070111.Spec : Prop :=
  ∀ n, P13194729296562070111.a n = A342912 n

end A342912

/-! ## A342912.P18008583198804406689

`A189912(n+1)-A002426(n+1)`
-/

namespace A342912.P18008583198804406689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189912 (n + 1) - A002426 (n + 1)

end

end A342912.P18008583198804406689

namespace A342912

/-- `A189912(n+1)-A002426(n+1)` -/
def P18008583198804406689.Spec : Prop :=
  ∀ n, P18008583198804406689.a n = A342912 n

end A342912

/-! ## A342912.P1223419818122186135

`A025178(n+2)-A005774(n+1)`
-/

namespace A342912.P1223419818122186135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025178 (n + 2) - A005774 (n + 1)

end

end A342912.P1223419818122186135

namespace A342912

/-- `A025178(n+2)-A005774(n+1)` -/
def P1223419818122186135.Spec : Prop :=
  ∀ n, P1223419818122186135.a n = A342912 n

end A342912

/-! ## A342912.P1216144246992674325

`A005773(n+2)-A025179(n+2)`
-/

namespace A342912.P1216144246992674325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005773 (n + 2) - A025179 (n + 2)

end

end A342912.P1216144246992674325

namespace A342912

/-- `A005773(n+2)-A025179(n+2)` -/
def P1216144246992674325.Spec : Prop :=
  ∀ n, P1216144246992674325.a n = A342912 n

end A342912

/-! ## A342912.P3439561205860150191

`A001006(n+1)+A005717(n+1)-A002426(n+1)`
-/

namespace A342912.P3439561205860150191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001006 (n + 1) + (A005717 (n + 1) - A002426 (n + 1))

end

end A342912.P3439561205860150191

namespace A342912

/-- `A001006(n+1)+A005717(n+1)-A002426(n+1)` -/
def P3439561205860150191.Spec : Prop :=
  ∀ n, P3439561205860150191.a n = A342912 n

end A342912

/-!
# A342913: Pairwise listing of the partitions of 2k into two parts, (s,t), with 0 < t <= s ordered by decreasing values of s and where k = 1,2,... .

The programs for A342913, there is no canonical definition to state claims against.
-/

/-! ## A342913.P15609299154459996656

`A342769(A103889(n+1))`
-/

namespace A342913.P15609299154459996656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342769 (A103889 (n + 1)).toNat

end

end A342913.P15609299154459996656

/-! ## A342913.P605923674218687236

`A057059(record[A056011(n+1)])`
-/

namespace A342913.P605923674218687236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056011 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057059 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342913.P605923674218687236

/-! ## A342913.P5425041956612048184

`A319571(record[A334751(n+1)])`
-/

namespace A342913.P5425041956612048184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342913.P5425041956612048184

/-! ## A342913.P1434239752771778286

`A319571(record[A090929(n+2)])`
-/

namespace A342913.P1434239752771778286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090929 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342913.P1434239752771778286

/-! ## A342913.P11471173345474490129

`A319571(eq[n, A068225(n+1)])`
-/

namespace A342913.P11471173345474490129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319571 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A342913.P11471173345474490129

/-! ## A342913.P110737513248162970

`A000194(n+2)-Δ[A330709(n)]`
-/

namespace A342913.P110737513248162970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (n + 2) - (f1 (n + 1) - f1 n)

end

end A342913.P110737513248162970

/-! ## A342913.P8422007000406753366

`A330709(n)+A004736(A158416(n))`
-/

namespace A342913.P8422007000406753366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n + A004736 (A158416 n).toNat

end

end A342913.P8422007000406753366

/-! ## A342913.P14550987375659047933

`A330709(n)+A181118(A141310(n))`
-/

namespace A342913.P14550987375659047933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n + A181118 (A141310 n).toNat

end

end A342913.P14550987375659047933

/-! ## A342913.P7417215665561892056

`A181118(n+1)+A003056(A142150(n))`
-/

namespace A342913.P7417215665561892056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181118 (n + 1) + A003056 (A142150 n).toNat

end

end A342913.P7417215665561892056

/-! ## A342913.P7128763152458602935

`A330709(n)+A004736(A160791(n+1))`
-/

namespace A342913.P7128763152458602935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330709 n + A004736 (A160791 (n + 1)).toNat

end

end A342913.P7128763152458602935

/-!
# A342914: Number of grid points covered by a truncated triangle drawn on the hexagonal lattice with the short sides having length n and the long sides length 2*n.

The programs for A342914, the canonical program `A342914.P5743257086040358571` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342914 has offset 0).

The definition of A342914 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342914.P17153348576206786732

`(13*n²+9*n+2)/2`
-/

namespace A342914.P17153348576206786732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 * n ^ 2 + 9 * n + 2 : ℚ) / 2

end

end A342914.P17153348576206786732

namespace A342914

/-- `(13*n²+9*n+2)/2` -/
def P17153348576206786732.Spec : Prop :=
  ∀ n, P17153348576206786732.a n = (A342914 n : ℚ)

theorem P17153348576206786732.correct : P17153348576206786732.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A342914, Nat.add_sub_cancel, A342914.P17153348576206786732.a, A342914.P5743257086040358571.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h2 := ih (m + 1) (by omega)
      have h3 := ih m (by omega)
      simp only [A342914, Nat.add_sub_cancel, A342914.P17153348576206786732.a, A342914.P5743257086040358571.a, SequenceMachineLib.memo_apply] at h1 h2 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 2 = m + 1 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m + 1 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 ⊢
      rw [← h1, ← h2, ← h3]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A342914

/-! ## A342914.P5743257086040358571

`3*a(n-1)-3*a(n-2)+a(n-3)` with `a(0)=1, a(1)=12, a(2)=36`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A342914

/-- `3*a(n-1)-3*a(n-2)+a(n-3)` -/
def P5743257086040358571.Spec : Prop :=
  ∀ n, P5743257086040358571.a n = A342914 n

theorem P5743257086040358571.correct : P5743257086040358571.Spec := by
  intro n
  simp only [A342914]

end A342914

/-! ## A342914.P7897188298789645703

`A000217(4*n+1)-3*A000217(n)`
-/

namespace A342914.P7897188298789645703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (4 * n + 1) - 3 * A000217 n

end

end A342914.P7897188298789645703

namespace A342914

/-- `A000217(4*n+1)-3*A000217(n)` -/
def P7897188298789645703.Spec : Prop :=
  ∀ n, P7897188298789645703.a n = A342914 n

end A342914

/-! ## A342914.P5452750758531751489

`∑[a(n-1)+13]` with `a(0)=1, a(1)=11`
-/

namespace A342914.P5452750758531751489
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 11] fun n f1 =>
  f1 (n - 1) + 13

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342914.P5452750758531751489

namespace A342914

/-- `∑[a(n-1)+13]` -/
def P5452750758531751489.Spec : Prop :=
  ∀ n, (P5452750758531751489.a n : ℤ) = A342914 n

end A342914

/-! ## A342914.P7031848052743825835

`∑[ogf((1+9x+3x^2)/(1-2x+x^2))]`
-/

namespace A342914.P7031848052743825835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 3] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342914.P7031848052743825835

namespace A342914

/-- `∑[ogf((1+9x+3x^2)/(1-2x+x^2))]` -/
def P7031848052743825835.Spec : Prop :=
  ∀ n, P7031848052743825835.a n = A342914 n

end A342914

/-! ## A342914.P11025442330214622363

`ogf((1+9x+3x^2)/(1-3x+3x^2-x^3))`
-/

namespace A342914.P11025442330214622363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 3] [1, -3, 3, -1] n

end

end A342914.P11025442330214622363

namespace A342914

/-- `ogf((1+9x+3x^2)/(1-3x+3x^2-x^3))` -/
def P11025442330214622363.Spec : Prop :=
  ∀ n, P11025442330214622363.a n = A342914 n

end A342914

/-! ## A342914.P8942237606402197399

`3-∑[a(n-1)-13]` with `a(0)=2`
-/

namespace A342914.P8942237606402197399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 13

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342914.P8942237606402197399

namespace A342914

/-- `3-∑[a(n-1)-13]` -/
def P8942237606402197399.Spec : Prop :=
  ∀ n, P8942237606402197399.a n = A342914 n

end A342914

/-! ## A342914.P13994969155575518449

`13*n+a(n-1)-2` with `a(0)=1`
-/

namespace A342914.P13994969155575518449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (13 * n : ℤ) + (a (n - 1) - 2)

end

end A342914.P13994969155575518449

namespace A342914

/-- `13*n+a(n-1)-2` -/
def P13994969155575518449.Spec : Prop :=
  ∀ n, P13994969155575518449.a n = A342914 n

end A342914

/-! ## A342914.P18408078750191085185

`13*n-(2-a(n-1))` with `a(0)=1`
-/

namespace A342914.P18408078750191085185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (13 * n : ℤ) - (2 - a (n - 1))

end

end A342914.P18408078750191085185

namespace A342914

/-- `13*n-(2-a(n-1))` -/
def P18408078750191085185.Spec : Prop :=
  ∀ n, P18408078750191085185.a n = A342914 n

end A342914

/-! ## A342914.P1326920189952698203

`Δ[n*C(2*n, 2)]+∑[n]`
-/

namespace A342914.P1326920189952698203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A342914.P1326920189952698203

namespace A342914

/-- `Δ[n*C(2*n, 2)]+∑[n]` -/
def P1326920189952698203.Spec : Prop :=
  ∀ n, P1326920189952698203.a n = A342914 n

end A342914

/-! ## A342914.P16072311175007442240

`∑[n+1]+3*C(2*n+1, 2)`
-/

namespace A342914.P16072311175007442240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3 * Nat.choose (2 * n + 1) 2

end

end A342914.P16072311175007442240

namespace A342914

/-- `∑[n+1]+3*C(2*n+1, 2)` -/
def P16072311175007442240.Spec : Prop :=
  ∀ n, (P16072311175007442240.a n : ℤ) = A342914 n

end A342914

/-! ## A342914.P15301433530955703928

`A220083(n)-n²`
-/

namespace A342914.P15301433530955703928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220083 n - (n ^ 2 : ℤ)

end

end A342914.P15301433530955703928

namespace A342914

/-- `A220083(n)-n²` -/
def P15301433530955703928.Spec : Prop :=
  ∀ n, P15301433530955703928.a n = A342914 n

end A342914

/-! ## A342914.P11391924461328854586

`A080859(n)+∑[n]`
-/

namespace A342914.P11391924461328854586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342914.P11391924461328854586

namespace A342914

/-- `A080859(n)+∑[n]` -/
def P11391924461328854586.Spec : Prop :=
  ∀ n, P11391924461328854586.a n = A342914 n

end A342914

/-! ## A342914.P16915105521496064095

`Δ[A006597(n)]-n²`
-/

namespace A342914.P16915105521496064095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006597 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n ^ 2 : ℤ)

end

end A342914.P16915105521496064095

namespace A342914

/-- `Δ[A006597(n)]-n²` -/
def P16915105521496064095.Spec : Prop :=
  ∀ n, P16915105521496064095.a n = A342914 n

end A342914

/-! ## A342914.P16877549730202049226

`A195319(n)+∑[n+1]`
-/

namespace A342914.P16877549730202049226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342914.P16877549730202049226

namespace A342914

/-- `A195319(n)+∑[n+1]` -/
def P16877549730202049226.Spec : Prop :=
  ∀ n, P16877549730202049226.a n = A342914 n

end A342914

/-! ## A342914.P563832033857486322

`A069126(n+1)-2*n`
-/

namespace A342914.P563832033857486322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069126 (n + 1) - (2 * n : ℤ)

end

end A342914.P563832033857486322

namespace A342914

/-- `A069126(n+1)-2*n` -/
def P563832033857486322.Spec : Prop :=
  ∀ n, P563832033857486322.a n = A342914 n

end A342914

/-! ## A342914.P18382581175286629424

`abs(∑[abs(3-20*n)]-2-A179986(n))`
-/

namespace A342914.P18382581175286629424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - (20 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 2 - A179986 n|

end

end A342914.P18382581175286629424

namespace A342914

/-- `abs(∑[abs(3-20*n)]-2-A179986(n))` -/
def P18382581175286629424.Spec : Prop :=
  ∀ n, P18382581175286629424.a n = A342914 n

end A342914

/-! ## A342914.P10010162210462344368

`A005891(n)+A002943(n)`
-/

namespace A342914.P10010162210462344368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005891 n + A002943 n

end

end A342914.P10010162210462344368

namespace A342914

/-- `A005891(n)+A002943(n)` -/
def P10010162210462344368.Spec : Prop :=
  ∀ n, P10010162210462344368.a n = A342914 n

end A342914

/-! ## A342914.P10550859979821431481

`A016754(n)+A005475(n)`
-/

namespace A342914.P10550859979821431481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n + A005475 n

end

end A342914.P10550859979821431481

namespace A342914

/-- `A016754(n)+A005475(n)` -/
def P10550859979821431481.Spec : Prop :=
  ∀ n, P10550859979821431481.a n = A342914 n

end A342914

/-! ## A342914.P4938350986957515436

`A022271(n)+A016813(n)`
-/

namespace A342914.P4938350986957515436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022271 n + A016813 n

end

end A342914.P4938350986957515436

namespace A342914

/-- `A022271(n)+A016813(n)` -/
def P4938350986957515436.Spec : Prop :=
  ∀ n, P4938350986957515436.a n = A342914 n

end A342914

/-!
# A342915: a(n) = gcd(1+n, A001615(n)), where A001615 is Dedekind psi, n * Product_{p|n, p prime} (1 + 1/p).

The programs for A342915, the canonical program `A342915.P10839081578216102488` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342915 has offset 1).

The definition of A342915 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `gcd(1+n+1, A001615(n+1))` (program `A342915.P10839081578216102488`, by `A342915.P10839081578216102488.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A342915.P4830004211821414915

`(1+n+1)/A342916(n+1)`
-/

namespace A342915.P4830004211821414915
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℚ) / (A342916 (n + 1) : ℚ)

end

end A342915.P4830004211821414915

namespace A342915

/-- `(1+n+1)/A342916(n+1)` -/
def P4830004211821414915.Spec : Prop :=
  ∀ n, P4830004211821414915.a n = (A342915 (n + 1) : ℚ)

end A342915

/-! ## A342915.P10839081578216102488

`gcd(1+n+1, A001615(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A342915

/-- `gcd(1+n+1, A001615(n+1))` -/
def P10839081578216102488.Spec : Prop :=
  ∀ n, (P10839081578216102488.a n : ℤ) = A342915 (n + 1)

theorem P10839081578216102488.correct : P10839081578216102488.Spec := by
  intro n
  simp only [A342915, Nat.add_sub_cancel]

end A342915

/-! ## A342915.P1033147515813966924

`A001615(n+1)/A342917(n+1)`
-/

namespace A342915.P1033147515813966924
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (A342917 (n + 1) : ℚ)

end

end A342915.P1033147515813966924

namespace A342915

/-- `A001615(n+1)/A342917(n+1)` -/
def P1033147515813966924.Spec : Prop :=
  ∀ n, P1033147515813966924.a n = (A342915 (n + 1) : ℚ)

end A342915

/-! ## A342915.P9977736400989899828

`gcd(n+2, ∏{p}[n+1, #+1])`
-/

namespace A342915.P9977736400989899828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 2) (∏ p ∈ Nat.primeFactors (f1 n), (p + 1))

end

end A342915.P9977736400989899828

namespace A342915

/-- `gcd(n+2, ∏{p}[n+1, #+1])` -/
def P9977736400989899828.Spec : Prop :=
  ∀ n, (P9977736400989899828.a n : ℤ) = A342915 (n + 1)

end A342915

/-! ## A342915.P2344251532021913771

`gcd(n+2, A000082(n+1))`
-/

namespace A342915.P2344251532021913771
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 2 : ℤ) (A000082 (n + 1))

end

end A342915.P2344251532021913771

namespace A342915

/-- `gcd(n+2, A000082(n+1))` -/
def P2344251532021913771.Spec : Prop :=
  ∀ n, (P2344251532021913771.a n : ℤ) = A342915 (n + 1)

end A342915

/-! ## A342915.P673724726287757322

`gcd(A001615(n+1), A020725(n+1))`
-/

namespace A342915.P673724726287757322
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A001615 (n + 1)) (A020725 (n + 1))

end

end A342915.P673724726287757322

namespace A342915

/-- `gcd(A001615(n+1), A020725(n+1))` -/
def P673724726287757322.Spec : Prop :=
  ∀ n, (P673724726287757322.a n : ℤ) = A342915 (n + 1)

end A342915

/-! ## A342915.P15798762371606440458

`gcd(A000113(n+1), A065475(n+1))`
-/

namespace A342915.P15798762371606440458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000113 (n + 1)) (A065475 (n + 1))

end

end A342915.P15798762371606440458

namespace A342915

/-- `gcd(A000113(n+1), A065475(n+1))` -/
def P15798762371606440458.Spec : Prop :=
  ∀ n, (P15798762371606440458.a n : ℤ) = A342915 (n + 1)

end A342915

/-! ## A342915.P15742367019917282981

`gcd(A033196(n+1), A114637(n+1))`
-/

namespace A342915.P15742367019917282981
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033196 (n + 1)) (A114637 (n + 1))

end

end A342915.P15742367019917282981

namespace A342915

/-- `gcd(A033196(n+1), A114637(n+1))` -/
def P15742367019917282981.Spec : Prop :=
  ∀ n, (P15742367019917282981.a n : ℤ) = A342915 (n + 1)

end A342915

/-! ## A342915.P8486626643896813961

`gcd(A028310(n)+2, A048250(n+1))`
-/

namespace A342915.P8486626643896813961
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 n + 2) (A048250 (n + 1))

end

end A342915.P8486626643896813961

namespace A342915

/-- `gcd(A028310(n)+2, A048250(n+1))` -/
def P8486626643896813961.Spec : Prop :=
  ∀ n, (P8486626643896813961.a n : ℤ) = A342915 (n + 1)

end A342915

/-! ## A342915.P16452679537107440028

`gcd(A000203(A007947(n+1)), A000027(n+2))`
-/

namespace A342915.P16452679537107440028
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000203 (A007947 (n + 1)).toNat) (A000027 (n + 2))

end

end A342915.P16452679537107440028

namespace A342915

/-- `gcd(A000203(A007947(n+1)), A000027(n+2))` -/
def P16452679537107440028.Spec : Prop :=
  ∀ n, (P16452679537107440028.a n : ℤ) = A342915 (n + 1)

end A342915

/-! ## A342915.P12655237748451112582

`gcd(A114637(n+1)+A070732(n+1), A070732(n+1))`
-/

namespace A342915.P12655237748451112582
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A114637 (n + 1) + A070732 (n + 1)) (A070732 (n + 1))

end

end A342915.P12655237748451112582

namespace A342915

/-- `gcd(A114637(n+1)+A070732(n+1), A070732(n+1))` -/
def P12655237748451112582.Spec : Prop :=
  ∀ n, (P12655237748451112582.a n : ℤ) = A342915 (n + 1)

end A342915

/-! ## A342915.P1542099245822272611

`lcm(A048250(n+1), A342917(n+1))/A342917(n+1)`
-/

namespace A342915.P1542099245822272611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A048250 (n + 1)) (A342917 (n + 1)) : ℚ) / (A342917 (n + 1) : ℚ)

end

end A342915.P1542099245822272611

namespace A342915

/-- `lcm(A048250(n+1), A342917(n+1))/A342917(n+1)` -/
def P1542099245822272611.Spec : Prop :=
  ∀ n, P1542099245822272611.a n = (A342915 (n + 1) : ℚ)

end A342915

/-! ## A342915.P9680324349023376562

`gcd(A131738(n+1), A158523(n+1))`
-/

namespace A342915.P9680324349023376562
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A131738 (n + 1)) (A158523 (n + 1))

end

end A342915.P9680324349023376562

namespace A342915

/-- `gcd(A131738(n+1), A158523(n+1))` -/
def P9680324349023376562.Spec : Prop :=
  ∀ n, (P9680324349023376562.a n : ℤ) = A342915 (n + 1)

end A342915

/-! ## A342915.P12646685329737901997

`gcd(A028310(n+2), A181797(n+1))`
-/

namespace A342915.P12646685329737901997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A028310 (n + 2)) (A181797 (n + 1))

end

end A342915.P12646685329737901997

namespace A342915

/-- `gcd(A028310(n+2), A181797(n+1))` -/
def P12646685329737901997.Spec : Prop :=
  ∀ n, (P12646685329737901997.a n : ℤ) = A342915 (n + 1)

end A342915

/-! ## A342915.P4903642919383284041

`gcd(A053024(n+2), A323363(n+1))`
-/

namespace A342915.P4903642919383284041
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053024 (n + 2)) (A323363 (n + 1))

end

end A342915.P4903642919383284041

namespace A342915

/-- `gcd(A053024(n+2), A323363(n+1))` -/
def P4903642919383284041.Spec : Prop :=
  ∀ n, (P4903642919383284041.a n : ℤ) = A342915 (n + 1)

end A342915

/-!
# A342916: a(n) = (1+n) / gcd(1+n, A001615(n)), where A001615 is Dedekind psi, n * Product_{p|n, p prime} (1 + 1/p).

The programs for A342916, the canonical program `A342916.P6432996983169765144` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342916 has offset 1).

The definition of A342916 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342916.P10845994659970600396

`(1+n+1)/A342915(n+1)`
-/

namespace A342916.P10845994659970600396
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℚ) / (A342915 (n + 1) : ℚ)

end

end A342916.P10845994659970600396

namespace A342916

/-- `(1+n+1)/A342915(n+1)` -/
def P10845994659970600396.Spec : Prop :=
  ∀ n, P10845994659970600396.a n = (A342916 (n + 1) : ℚ)

end A342916

/-! ## A342916.P6432996983169765144

`(1+n+1)/gcd(1+n+1, A001615(n+1))`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A342916

/-- `(1+n+1)/gcd(1+n+1, A001615(n+1))` -/
def P6432996983169765144.Spec : Prop :=
  ∀ n, P6432996983169765144.a n = (A342916 (n + 1) : ℚ)

end A342916

/-! ## A342916.P360704426561080997

`(n+2)/gcd(A000082(n+1), n+2)`
-/

namespace A342916.P360704426561080997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (A000082 (n + 1)) (n + 2 : ℤ) : ℚ)

end

end A342916.P360704426561080997

namespace A342916

/-- `(n+2)/gcd(A000082(n+1), n+2)` -/
def P360704426561080997.Spec : Prop :=
  ∀ n, P360704426561080997.a n = (A342916 (n + 1) : ℚ)

end A342916

/-! ## A342916.P4697520122948545775

`(n+2)/A001615(n+1)*A342917(n+1)`
-/

namespace A342916.P4697520122948545775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A001615 (n + 1) : ℚ) * (A342917 (n + 1) : ℚ)

end

end A342916.P4697520122948545775

namespace A342916

/-- `(n+2)/A001615(n+1)*A342917(n+1)` -/
def P4697520122948545775.Spec : Prop :=
  ∀ n, P4697520122948545775.a n = (A342916 (n + 1) : ℚ)

end A342916

/-! ## A342916.P13872401790619647015

`lcm(n+2, A000113(n+1))/A000113(n+1)`
-/

namespace A342916.P13872401790619647015
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (n + 2 : ℤ) (A000113 (n + 1)) : ℚ) / (A000113 (n + 1) : ℚ)

end

end A342916.P13872401790619647015

namespace A342916

/-- `lcm(n+2, A000113(n+1))/A000113(n+1)` -/
def P13872401790619647015.Spec : Prop :=
  ∀ n, P13872401790619647015.a n = (A342916 (n + 1) : ℚ)

end A342916

/-! ## A342916.P2435704284263232098

`A020725(n+1)/gcd(A001615(n+1), A020725(n+1))`
-/

namespace A342916.P2435704284263232098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020725 (n + 1) : ℚ) / (Int.gcd (A001615 (n + 1)) (A020725 (n + 1)) : ℚ)

end

end A342916.P2435704284263232098

namespace A342916

/-- `A020725(n+1)/gcd(A001615(n+1), A020725(n+1))` -/
def P2435704284263232098.Spec : Prop :=
  ∀ n, P2435704284263232098.a n = (A342916 (n + 1) : ℚ)

end A342916

/-! ## A342916.P12952011523766718476

`A000027(n+2)/gcd(A000027(n+2), A048250(n+1))`
-/

namespace A342916.P12952011523766718476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (n + 2) : ℚ) / (Int.gcd (A000027 (n + 2)) (A048250 (n + 1)) : ℚ)

end

end A342916.P12952011523766718476

namespace A342916

/-- `A000027(n+2)/gcd(A000027(n+2), A048250(n+1))` -/
def P12952011523766718476.Spec : Prop :=
  ∀ n, P12952011523766718476.a n = (A342916 (n + 1) : ℚ)

end A342916

/-! ## A342916.P4326957641663178260

`(n+2)/gcd(A281384(n+2), A322319(n+1))`
-/

namespace A342916.P4326957641663178260
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (A281384 (n + 2)) (A322319 (n + 1)) : ℚ)

end

end A342916.P4326957641663178260

namespace A342916

/-- `(n+2)/gcd(A281384(n+2), A322319(n+1))` -/
def P4326957641663178260.Spec : Prop :=
  ∀ n, P4326957641663178260.a n = (A342916 (n + 1) : ℚ)

end A342916

/-!
# A342917: a(n) = A001615(n) / gcd(1+n, A001615(n)), where A001615 is Dedekind psi, n * Product_{p|n, p prime} (1 + 1/p).

The programs for A342917, the canonical program `A342917.P11149756956823687743` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342917 has offset 1).

The definition of A342917 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342917.P11149756956823687743

`A001615(n+1)/A342915(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A342917

/-- `A001615(n+1)/A342915(n+1)` -/
def P11149756956823687743.Spec : Prop :=
  ∀ n, P11149756956823687743.a n = (A342917 (n + 1) : ℚ)

end A342917

/-! ## A342917.P8288885902282113457

`A001615(n+1)/gcd(1+n+1, A001615(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342917.P8288885902282113457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (Int.gcd (1 + (n + 1) : ℤ) (A001615 (n + 1)) : ℚ)

end

end A342917.P8288885902282113457

namespace A342917

/-- `A001615(n+1)/gcd(1+n+1, A001615(n+1))` -/
def P8288885902282113457.Spec : Prop :=
  ∀ n, P8288885902282113457.a n = (A342917 (n + 1) : ℚ)

end A342917

/-! ## A342917.P10057270125721153897

`A000082(n+1)/((n+1)*A342915(n+1))`
-/

namespace A342917.P10057270125721153897
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000082 (n + 1) : ℚ) / ((n + 1 : ℤ) * A342915 (n + 1) : ℚ)

end

end A342917.P10057270125721153897

namespace A342917

/-- `A000082(n+1)/((n+1)*A342915(n+1))` -/
def P10057270125721153897.Spec : Prop :=
  ∀ n, P10057270125721153897.a n = (A342917 (n + 1) : ℚ)

end A342917

/-! ## A342917.P8108341940090151036

`A007434(n+1)/(A000010(n+1)*A342915(n+1))`
-/

namespace A342917.P8108341940090151036
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007434 (n + 1) : ℚ) / (A000010 (n + 1) * A342915 (n + 1) : ℚ)

end

end A342917.P8108341940090151036

namespace A342917

/-- `A007434(n+1)/(A000010(n+1)*A342915(n+1))` -/
def P8108341940090151036.Spec : Prop :=
  ∀ n, P8108341940090151036.a n = (A342917 (n + 1) : ℚ)

end A342917

/-! ## A342917.P5997566640733912010

`A003557(n+1)*A048250(n+1)/A342915(n+1)`
-/

namespace A342917.P5997566640733912010
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A048250 (n + 1) : ℚ) / (A342915 (n + 1) : ℚ)

end

end A342917.P5997566640733912010

namespace A342917

/-- `A003557(n+1)*A048250(n+1)/A342915(n+1)` -/
def P5997566640733912010.Spec : Prop :=
  ∀ n, P5997566640733912010.a n = (A342917 (n + 1) : ℚ)

end A342917

/-! ## A342917.P318838485739279827

`A000027(A000082(n+1)/(n+1))/A342915(n+1)`
-/

namespace A342917.P318838485739279827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000027 (SequenceMachineLib.roundAway ((A000082 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat : ℚ) / (A342915 (n + 1) : ℚ)

end

end A342917.P318838485739279827

namespace A342917

/-- `A000027(A000082(n+1)/(n+1))/A342915(n+1)` -/
def P318838485739279827.Spec : Prop :=
  ∀ n, P318838485739279827.a n = (A342917 (n + 1) : ℚ)

end A342917

/-! ## A342917.P1555910989240712768

`A001615(n+1)/gcd(A001615(n+1), A020725(n+1))`
-/

namespace A342917.P1555910989240712768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001615 (n + 1) : ℚ) / (Int.gcd (A001615 (n + 1)) (A020725 (n + 1)) : ℚ)

end

end A342917.P1555910989240712768

namespace A342917

/-- `A001615(n+1)/gcd(A001615(n+1), A020725(n+1))` -/
def P1555910989240712768.Spec : Prop :=
  ∀ n, P1555910989240712768.a n = (A342917 (n + 1) : ℚ)

end A342917

/-!
# A342918: a(n) = (1+n) / A143771(n).

The programs for A342918, there is no canonical definition to state claims against.
-/

/-! ## A342918.P1699834633597676792

`(1+n+1)/A143771(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342918.P1699834633597676792
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (n + 1) : ℚ) / (A143771 (n + 1) : ℚ)

end

end A342918.P1699834633597676792

/-! ## A342918.P14341178906715713783

`(n+2)/gcd(n+2, A336642(A088377(n+1)))`
-/

namespace A342918.P14341178906715713783
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (n + 2 : ℤ) (A336642 (A088377 (n + 1)).toNat) : ℚ)

end

end A342918.P14341178906715713783

/-! ## A342918.P1679099798442813457

`(n+2)/gcd(A089389(n+1), A260717(A000124(n)))`
-/

namespace A342918.P1679099798442813457
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (A089389 (n + 1)) (A260717 (A000124 n).toNat) : ℚ)

end

end A342918.P1679099798442813457

/-! ## A342918.P8907618349609195759

`(n+2)/gcd(A111234(n+1), A273620(A000124(n)))`
-/

namespace A342918.P8907618349609195759
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (Int.gcd (A111234 (n + 1)) (A273620 (A000124 n).toNat) : ℚ)

end

end A342918.P8907618349609195759

/-! ## A342918.P4866377106456475895

`A054531(A111234(n+1)+∑[n+1])`
-/

namespace A342918.P4866377106456475895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A111234 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A342918.P4866377106456475895

/-!
# A342919: a(n) = A003415(n) / gcd(A001615(n), A003415(n)), where A001615 is Dedekind psi, and A003415 is the arithmetic derivative of n.

The programs for A342919, the canonical program `A342919.P5264942135803517066` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342919 has offset 1).

The definition of A342919 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A342001, A342459, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342919.P11247411308196864228

`A003415(n+1)/A342458(n+1)`
-/

namespace A342919.P11247411308196864228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A342458 (n + 1) : ℚ)

end

end A342919.P11247411308196864228

namespace A342919

/-- `A003415(n+1)/A342458(n+1)` -/
def P11247411308196864228.Spec : Prop :=
  ∀ n, P11247411308196864228.a n = (A342919 (n + 1) : ℚ)

end A342919

/-! ## A342919.P5264942135803517066

`A342001(n+1)/A342459(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A342919

/-- `A342001(n+1)/A342459(n+1)` -/
def P5264942135803517066.Spec : Prop :=
  ∀ n, P5264942135803517066.a n = (A342919 (n + 1) : ℚ)

end A342919

/-! ## A342919.P11211970113069486432

`A003415(n+1)/gcd(A001615(n+1), A003415(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342919.P11211970113069486432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (Int.gcd (A001615 (n + 1)) (A003415 (n + 1)) : ℚ)

end

end A342919.P11211970113069486432

namespace A342919

/-- `A003415(n+1)/gcd(A001615(n+1), A003415(n+1))` -/
def P11211970113069486432.Spec : Prop :=
  ∀ n, P11211970113069486432.a n = (A342919 (n + 1) : ℚ)

end A342919

/-! ## A342919.P10934472709505778360

`A003415(n+1)/(A003557(n+1)*A342459(n+1))`
-/

namespace A342919.P10934472709505778360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003415 (n + 1) : ℚ) / (A003557 (n + 1) * A342459 (n + 1) : ℚ)

end

end A342919.P10934472709505778360

namespace A342919

/-- `A003415(n+1)/(A003557(n+1)*A342459(n+1))` -/
def P10934472709505778360.Spec : Prop :=
  ∀ n, P10934472709505778360.a n = (A342919 (n + 1) : ℚ)

end A342919

/-! ## A342919.P4051636622316093045

`A003557(n+1)*A342001(n+1)/A342458(n+1)`
-/

namespace A342919.P4051636622316093045
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003557 (n + 1) * A342001 (n + 1) : ℚ) / (A342458 (n + 1) : ℚ)

end

end A342919.P4051636622316093045

namespace A342919

/-- `A003557(n+1)*A342001(n+1)/A342458(n+1)` -/
def P4051636622316093045.Spec : Prop :=
  ∀ n, P4051636622316093045.a n = (A342919 (n + 1) : ℚ)

end A342919

/-! ## A342919.P1258070281489702685

`A342413(n+1)*A342414(n+1)/A342458(n+1)`
-/

namespace A342919.P1258070281489702685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342413 (n + 1) * A342414 (n + 1) : ℚ) / (A342458 (n + 1) : ℚ)

end

end A342919.P1258070281489702685

namespace A342919

/-- `A342413(n+1)*A342414(n+1)/A342458(n+1)` -/
def P1258070281489702685.Spec : Prop :=
  ∀ n, P1258070281489702685.a n = (A342919 (n + 1) : ℚ)

end A342919

/-! ## A342919.P3805975490883537334

`A342414(n+1)*A342416(n+1)/A342459(n+1)`
-/

namespace A342919.P3805975490883537334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342414 (n + 1) * A342416 (n + 1) : ℚ) / (A342459 (n + 1) : ℚ)

end

end A342919.P3805975490883537334

namespace A342919

/-- `A342414(n+1)*A342416(n+1)/A342459(n+1)` -/
def P3805975490883537334.Spec : Prop :=
  ∀ n, P3805975490883537334.a n = (A342919 (n + 1) : ℚ)

end A342919

/-! ## A342919.P18002360346816040447

`A348492(n+1)/A342458(n+1)*A348493(n+1)`
-/

namespace A342919.P18002360346816040447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348492 (n + 1) : ℚ) / (A342458 (n + 1) : ℚ) * (A348493 (n + 1) : ℚ)

end

end A342919.P18002360346816040447

namespace A342919

/-- `A348492(n+1)/A342458(n+1)*A348493(n+1)` -/
def P18002360346816040447.Spec : Prop :=
  ∀ n, P18002360346816040447.a n = (A342919 (n + 1) : ℚ)

end A342919

/-! ## A342919.P12499451986764274610

`A342001(n+1)/gcd(A048250(n+1), A342001(n+1))`
-/

namespace A342919.P12499451986764274610
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342001 (n + 1) : ℚ) / (Int.gcd (A048250 (n + 1)) (A342001 (n + 1)) : ℚ)

end

end A342919.P12499451986764274610

namespace A342919

/-- `A342001(n+1)/gcd(A048250(n+1), A342001(n+1))` -/
def P12499451986764274610.Spec : Prop :=
  ∀ n, P12499451986764274610.a n = (A342919 (n + 1) : ℚ)

end A342919

/-!
# A342920: a(n) = A342002(A108951(n)).

The programs for A342920, there is no canonical definition to state claims against.
-/

/-! ## A342920.P6842825813102741292

`A342002(A108951(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342920.P6842825813102741292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (A108951 (n + 1)).toNat

end

end A342920.P6842825813102741292

/-! ## A342920.P6826869449466486791

`A329047(n+1)/A344592(n+1)`
-/

namespace A342920.P6826869449466486791
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329047 (n + 1) : ℚ) / (A344592 (n + 1) : ℚ)

end

end A342920.P6826869449466486791

/-! ## A342920.P16750739275886444400

`A329047(n+1)/A324886(n+1)*A346091(n+1)`
-/

namespace A342920.P16750739275886444400
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329047 (n + 1) : ℚ) / (A324886 (n + 1) : ℚ) * (A346091 (n + 1) : ℚ)

end

end A342920.P16750739275886444400

/-! ## A342920.P16379342791061715449

`A329047(n+1)/gcd(A324896(n+1), A329047(n+1))`
-/

namespace A342920.P16379342791061715449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A329047 (n + 1) : ℚ) / (Int.gcd (A324896 (n + 1)) (A329047 (n + 1)) : ℚ)

end

end A342920.P16379342791061715449

/-! ## A342920.P14871517136422258100

`A342463(A156552(n+1))`
-/

namespace A342920.P14871517136422258100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342463 (A156552 (n + 1)).toNat

end

end A342920.P14871517136422258100

/-!
# A342921: a(n) = A003415(A019565(n)).

The programs for A342921, the canonical program `A342921.P18050181671640434950` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342921 has offset 0).

The definition of A342921 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 255 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342921.P12825909754240518949

`A342002(A276156(n))`
-/

namespace A342921.P12825909754240518949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342002 (A276156 n).toNat

end

end A342921.P12825909754240518949

namespace A342921

/-- `A342002(A276156(n))` -/
def P12825909754240518949.Spec : Prop :=
  ∀ n, P12825909754240518949.a n = A342921 n

end A342921

/-! ## A342921.P16188580441665987762

`A069359(A019565(n))`
-/

namespace A342921.P16188580441665987762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069359 (A019565 n).toNat

end

end A342921.P16188580441665987762

namespace A342921

/-- `A069359(A019565(n))` -/
def P16188580441665987762.Spec : Prop :=
  ∀ n, P16188580441665987762.a n = A342921 n

end A342921

/-! ## A342921.P2571947795183482654

`A003415(A019565(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342921.P2571947795183482654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A019565 n).toNat

end

end A342921.P2571947795183482654

namespace A342921

/-- `A003415(A019565(n))` -/
def P2571947795183482654.Spec : Prop :=
  ∀ n, P2571947795183482654.a n = A342921 n

end A342921

/-! ## A342921.P18050181671640434950

`A344028(A048678(n))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A342921

/-- `A344028(A048678(n))` -/
def P18050181671640434950.Spec : Prop :=
  ∀ n, P18050181671640434950.a n = A342921 n

theorem P18050181671640434950.correct : P18050181671640434950.Spec := by
  intro n
  simp only [A342921]

end A342921

/-! ## A342921.P114554116662802467

`A344028(A124108(n)/2)`
-/

namespace A342921.P114554116662802467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A342921.P114554116662802467

namespace A342921

/-- `A344028(A124108(n)/2)` -/
def P114554116662802467.Spec : Prop :=
  ∀ n, P114554116662802467.a n = A342921 n

end A342921

/-! ## A342921.P18014864877640875773

`A344028(A088698(n)/3)`
-/

namespace A342921.P18014864877640875773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (SequenceMachineLib.roundAway ((A088698 n : ℚ) / 3)).toNat

end

end A342921.P18014864877640875773

namespace A342921

/-- `A344028(A088698(n)/3)` -/
def P18014864877640875773.Spec : Prop :=
  ∀ n, P18014864877640875773.a n = A342921 n

end A342921

/-! ## A342921.P9293335258072601516

`A344028(A088698(n)-A124108(n))`
-/

namespace A342921.P9293335258072601516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (A088698 n - A124108 n).toNat

end

end A342921.P9293335258072601516

namespace A342921

/-- `A344028(A088698(n)-A124108(n))` -/
def P9293335258072601516.Spec : Prop :=
  ∀ n, P9293335258072601516.a n = A342921 n

end A342921

/-! ## A342921.P18231563521720423478

`A344028(gcd(A088698(n), A124108(n)))`
-/

namespace A342921.P18231563521720423478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (Int.gcd (A088698 n) (A124108 n))

end

end A342921.P18231563521720423478

namespace A342921

/-- `A344028(gcd(A088698(n), A124108(n)))` -/
def P18231563521720423478.Spec : Prop :=
  ∀ n, P18231563521720423478.a n = A342921 n

end A342921

/-! ## A342921.P10744301679657015317

`A344028(xor(A088698(n), A124108(n)))`
-/

namespace A342921.P10744301679657015317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344028 (Int.xor (A088698 n) (A124108 n)).toNat

end

end A342921.P10744301679657015317

namespace A342921

/-- `A344028(xor(A088698(n), A124108(n)))` -/
def P10744301679657015317.Spec : Prop :=
  ∀ n, P10744301679657015317.a n = A342921 n

end A342921

/-! ## A342921.P1971224338445605599

`A344026(A124108(n)/2)`
-/

namespace A342921.P1971224338445605599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (SequenceMachineLib.roundAway ((A124108 n : ℚ) / 2)).toNat

end

end A342921.P1971224338445605599

namespace A342921

/-- `A344026(A124108(n)/2)` -/
def P1971224338445605599.Spec : Prop :=
  ∀ n, P1971224338445605599.a n = A342921 n

end A342921

/-! ## A342921.P8558438415544329964

`A344026(A088698(n)/3)`
-/

namespace A342921.P8558438415544329964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (SequenceMachineLib.roundAway ((A088698 n : ℚ) / 3)).toNat

end

end A342921.P8558438415544329964

namespace A342921

/-- `A344026(A088698(n)/3)` -/
def P8558438415544329964.Spec : Prop :=
  ∀ n, P8558438415544329964.a n = A342921 n

end A342921

/-! ## A342921.P12158530933704733833

`A344026(A048678(2*n)/2)`
-/

namespace A342921.P12158530933704733833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (SequenceMachineLib.roundAway ((A048678 (2 * n) : ℚ) / 2)).toNat

end

end A342921.P12158530933704733833

namespace A342921

/-- `A344026(A048678(2*n)/2)` -/
def P12158530933704733833.Spec : Prop :=
  ∀ n, P12158530933704733833.a n = A342921 n

end A342921

/-! ## A342921.P10659777068565851117

`A344026(A048678(n)%A000124(n))`
-/

namespace A342921.P10659777068565851117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (Int.tmod (A048678 n) (A000124 n)).toNat

end

end A342921.P10659777068565851117

namespace A342921

/-- `A344026(A048678(n)%A000124(n))` -/
def P10659777068565851117.Spec : Prop :=
  ∀ n, P10659777068565851117.a n = A342921 n

end A342921

/-! ## A342921.P7737355311155936571

`A344026(A048678(2*n)-A048678(n))`
-/

namespace A342921.P7737355311155936571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (A048678 (2 * n) - A048678 n).toNat

end

end A342921.P7737355311155936571

namespace A342921

/-- `A344026(A048678(2*n)-A048678(n))` -/
def P7737355311155936571.Spec : Prop :=
  ∀ n, P7737355311155936571.a n = A342921 n

end A342921

/-! ## A342921.P305210386465596265

`A344026(A048678(n))%A005917(n+1)`
-/

namespace A342921.P305210386465596265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A344026 (A048678 n).toNat) (A005917 (n + 1))

end

end A342921.P305210386465596265

namespace A342921

/-- `A344026(A048678(n))%A005917(n+1)` -/
def P305210386465596265.Spec : Prop :=
  ∀ n, P305210386465596265.a n = A342921 n

end A342921

/-! ## A342921.P8644527941444161370

`A351950(A059590(n))`
-/

namespace A342921.P8644527941444161370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351950 (A059590 n).toNat

end

end A342921.P8644527941444161370

namespace A342921

/-- `A351950(A059590(n))` -/
def P8644527941444161370.Spec : Prop :=
  ∀ n, P8644527941444161370.a n = A342921 n

end A342921

/-! ## A342921.P18426863750763380938

`A351951(A059590(2*n-n))`
-/

namespace A342921.P18426863750763380938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351951 (A059590 (2 * n - n)).toNat

end

end A342921.P18426863750763380938

namespace A342921

/-- `A351951(A059590(2*n-n))` -/
def P18426863750763380938.Spec : Prop :=
  ∀ n, P18426863750763380938.a n = A342921 n

end A342921

/-! ## A342921.P8367527925097687150

`A351950(eq[A351950(n), A351951(n)])`
-/

namespace A342921.P8367527925097687150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351950 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A342921.P8367527925097687150

namespace A342921

/-- `A351950(eq[A351950(n), A351951(n)])` -/
def P8367527925097687150.Spec : Prop :=
  ∀ n, P8367527925097687150.a n = A342921 n

end A342921

/-! ## A342921.P4906035522619390103

`A351950(eq[A351950(n), A351952(n)])`
-/

namespace A342921.P4906035522619390103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351950 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351950 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A342921.P4906035522619390103

namespace A342921

/-- `A351950(eq[A351950(n), A351952(n)])` -/
def P4906035522619390103.Spec : Prop :=
  ∀ n, P4906035522619390103.a n = A342921 n

end A342921

/-! ## A342921.P12096534370287238951

`A351951(eq[A351951(n), A351952(n)])`
-/

namespace A342921.P12096534370287238951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351951 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351952 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351951 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A342921.P12096534370287238951

namespace A342921

/-- `A351951(eq[A351951(n), A351952(n)])` -/
def P12096534370287238951.Spec : Prop :=
  ∀ n, P12096534370287238951.a n = A342921 n

end A342921

/-!
# A342923: Numbers k such that A342925(k) = k + 3*A003415(k).

The programs for A342923, there is no canonical definition to state claims against.
-/

/-! ## A342923.P16180396739428017896

`A342924(A196416(n)+A165701(n+1))`
-/

namespace A342923.P16180396739428017896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342924 (A196416 n + A165701 (n + 1)).toNat

end

end A342923.P16180396739428017896

/-!
# A342924: Composite numbers k such that A003415(sigma(k)) = k + p*A003415(k), for some prime p, where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

The programs for A342924, there is no canonical definition to state claims against.
-/

/-! ## A342924.P6468022035831324054

`∪[A065997(n+1), A028310(A342923(n+1))]`
-/

namespace A342924.P6468022035831324054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A342923 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342924.P6468022035831324054

/-! ## A342924.P10727447173701074880

`∪[A065997(n+1), A347884(n+1)]%A005820(n+1)`
-/

namespace A342924.P10727447173701074880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065997 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347884 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) (A005820 (n + 1))

end

end A342924.P10727447173701074880

/-!
# A342925: a(n) = A003415(sigma(n)), where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

The programs for A342925, the canonical program `A342925.P15548023362340798578` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342925 has offset 1).

The definition of A342925 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342925.P15461664039980779065

`A351568(n+1)*A351571(n+1)+A351569(n+1)*A351570(n+1)`
-/

namespace A342925.P15461664039980779065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351568 (n + 1) * A351571 (n + 1) + A351569 (n + 1) * A351570 (n + 1)

end

end A342925.P15461664039980779065

namespace A342925

/-- `A351568(n+1)*A351571(n+1)+A351569(n+1)*A351570(n+1)` -/
def P15461664039980779065.Spec : Prop :=
  ∀ n, P15461664039980779065.a n = A342925 (n + 1)

end A342925

/-! ## A342925.P15548023362340798578

`A003415(A000203(n+1))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A342925

/-- `A003415(A000203(n+1))` -/
def P15548023362340798578.Spec : Prop :=
  ∀ n, P15548023362340798578.a n = A342925 (n + 1)

theorem P15548023362340798578.correct : P15548023362340798578.Spec := by
  intro n
  simp only [A342925, Nat.add_sub_cancel]

end A342925

/-! ## A342925.P5626868950852503227

`A342926(n+1)+1+n`
-/

namespace A342925.P5626868950852503227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342926 (n + 1) + 1 + (n : ℤ)

end

end A342925.P5626868950852503227

namespace A342925

/-- `A342926(n+1)+1+n` -/
def P5626868950852503227.Spec : Prop :=
  ∀ n, P5626868950852503227.a n = A342925 (n + 1)

theorem P5626868950852503227.correct : P5626868950852503227.Spec := by
  intro n
  simp only [A342925, Nat.add_sub_cancel, A342925.P5626868950852503227.a, A342925.P15548023362340798578.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A342926, A342926.P4470252803445258283.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342925

/-! ## A342925.P2498257987612853230

`∑{d}[A000203(n+1), A300251(#)]`
-/

namespace A342925.P2498257987612853230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300251 d

end

end A342925.P2498257987612853230

namespace A342925

/-- `∑{d}[A000203(n+1), A300251(#)]` -/
def P2498257987612853230.Spec : Prop :=
  ∀ n, P2498257987612853230.a n = A342925 (n + 1)

end A342925

/-! ## A342925.P16082601662572652131

`A003415(∑{d}[n+1, #])`
-/

namespace A342925.P16082601662572652131
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A342925.P16082601662572652131

namespace A342925

/-- `A003415(∑{d}[n+1, #])` -/
def P16082601662572652131.Spec : Prop :=
  ∀ n, P16082601662572652131.a n = A342925 (n + 1)

end A342925

/-! ## A342925.P1708478300063438569

`A003415(Δ[A160664(n)])`
-/

namespace A342925.P1708478300063438569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (f1 (n + 1) - f1 n).toNat

end

end A342925.P1708478300063438569

namespace A342925

/-- `A003415(Δ[A160664(n)])` -/
def P1708478300063438569.Spec : Prop :=
  ∀ n, P1708478300063438569.a n = A342925 (n + 1)

end A342925

/-! ## A342925.P15992712328552228548

`A003415(sqrt(A072861(n+1)))`
-/

namespace A342925.P15992712328552228548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat

end

end A342925.P15992712328552228548

namespace A342925

/-- `A003415(sqrt(A072861(n+1)))` -/
def P15992712328552228548.Spec : Prop :=
  ∀ n, P15992712328552228548.a n = A342925 (n + 1)

end A342925

/-! ## A342925.P11308908856654595614

`A003415(∑[A340793(n+1)])`
-/

namespace A342925.P11308908856654595614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342925.P11308908856654595614

namespace A342925

/-- `A003415(∑[A340793(n+1)])` -/
def P11308908856654595614.Spec : Prop :=
  ∀ n, P11308908856654595614.a n = A342925 (n + 1)

end A342925

/-! ## A342925.P2383414269041322585

`A003415(A039653(n+1)+1)`
-/

namespace A342925.P2383414269041322585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A039653 (n + 1) + 1).toNat

end

end A342925.P2383414269041322585

namespace A342925

/-- `A003415(A039653(n+1)+1)` -/
def P2383414269041322585.Spec : Prop :=
  ∀ n, P2383414269041322585.a n = A342925 (n + 1)

end A342925

/-! ## A342925.P8869274968067938897

`A003415(A001065(n+1)+1+n)`
-/

namespace A342925.P8869274968067938897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A001065 (n + 1) + 1 + (n : ℤ)).toNat

end

end A342925.P8869274968067938897

namespace A342925

/-- `A003415(A001065(n+1)+1+n)` -/
def P8869274968067938897.Spec : Prop :=
  ∀ n, P8869274968067938897.a n = A342925 (n + 1)

theorem P8869274968067938897.correct : P8869274968067938897.Spec := by
  intro n
  simp only [A342925, Nat.add_sub_cancel, A342925.P8869274968067938897.a, A342925.P15548023362340798578.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342925

/-! ## A342925.P10575681575083074191

`A003415(A064987(n+1)/(n+1))`
-/

namespace A342925.P10575681575083074191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A342925.P10575681575083074191

namespace A342925

/-- `A003415(A064987(n+1)/(n+1))` -/
def P10575681575083074191.Spec : Prop :=
  ∀ n, P10575681575083074191.a n = A342925 (n + 1)

end A342925

/-! ## A342925.P8649058481243097890

`A003415(A160664(n+1)-A160664(n))`
-/

namespace A342925.P8649058481243097890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A160664 (n + 1) - A160664 n).toNat

end

end A342925.P8649058481243097890

namespace A342925

/-- `A003415(A160664(n+1)-A160664(n))` -/
def P8649058481243097890.Spec : Prop :=
  ∀ n, P8649058481243097890.a n = A342925 (n + 1)

end A342925

/-! ## A342925.P1535244734048381823

`A003415(A051612(n+1)+A000010(n+1))`
-/

namespace A342925.P1535244734048381823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A051612 (n + 1) + A000010 (n + 1)).toNat

end

end A342925.P1535244734048381823

namespace A342925

/-- `A003415(A051612(n+1)+A000010(n+1))` -/
def P1535244734048381823.Spec : Prop :=
  ∀ n, P1535244734048381823.a n = A342925 (n + 1)

theorem P1535244734048381823.correct : P1535244734048381823.Spec := by
  intro n
  simp only [A342925, Nat.add_sub_cancel, A342925.P1535244734048381823.a, A342925.P15548023362340798578.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A051612, A051612.P4135239823752248514.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A349394, A349394.P210516795435731064.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342925

/-! ## A342925.P3093737993671036230

`A003415(A167515(n+1)+A008475(n+1))`
-/

namespace A342925.P3093737993671036230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A167515 (n + 1) + A008475 (n + 1)).toNat

end

end A342925.P3093737993671036230

namespace A342925

/-- `A003415(A167515(n+1)+A008475(n+1))` -/
def P3093737993671036230.Spec : Prop :=
  ∀ n, P3093737993671036230.a n = A342925 (n + 1)

theorem P3093737993671036230.correct : P3093737993671036230.Spec := by
  intro n
  simp only [A342925, Nat.add_sub_cancel, A342925.P3093737993671036230.a, A342925.P15548023362340798578.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A008475, A008475.P2912436043946083167.f1, A008475.P2912436043946083167.a, A167515, A167515.P2764876312369213402.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342925

/-! ## A342925.P8857441105086146542

`A003415(A343224(n+1)+A003415(n+1))`
-/

namespace A342925.P8857441105086146542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A343224 (n + 1) + A003415 (n + 1)).toNat

end

end A342925.P8857441105086146542

namespace A342925

/-- `A003415(A343224(n+1)+A003415(n+1))` -/
def P8857441105086146542.Spec : Prop :=
  ∀ n, P8857441105086146542.a n = A342925 (n + 1)

theorem P8857441105086146542.correct : P8857441105086146542.Spec := by
  intro n
  simp only [A342925, Nat.add_sub_cancel, A342925.P8857441105086146542.a, A342925.P15548023362340798578.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A343224, A343224.P18101851413978261599.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342925

/-! ## A342925.P2002918428809112543

`A003415(A184396(n+1)+A184395(n+1))`
-/

namespace A342925.P2002918428809112543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A184396 (n + 1) + A184395 (n + 1)).toNat

end

end A342925.P2002918428809112543

namespace A342925

/-- `A003415(A184396(n+1)+A184395(n+1))` -/
def P2002918428809112543.Spec : Prop :=
  ∀ n, P2002918428809112543.a n = A342925 (n + 1)

end A342925

/-! ## A342925.P13440786574383441459

`A003415(A326184(n+1)+A057521(n+1))`
-/

namespace A342925.P13440786574383441459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A326184 (n + 1) + A057521 (n + 1)).toNat

end

end A342925.P13440786574383441459

namespace A342925

/-- `A003415(A326184(n+1)+A057521(n+1))` -/
def P13440786574383441459.Spec : Prop :=
  ∀ n, P13440786574383441459.a n = A342925 (n + 1)

theorem P13440786574383441459.correct : P13440786574383441459.Spec := by
  intro n
  simp only [A342925, Nat.add_sub_cancel, A342925.P13440786574383441459.a, A342925.P15548023362340798578.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A057521, A057521.P7284310941140114823.a, A326184, A326184.P15746824177980826123.a, A003557, A003557.P6364735403900941810.a, A064549, A064549.P18019400484953624932.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A349394, A349394.P210516795435731064.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342925

/-! ## A342925.P14049193004748519450

`A003415(A152211(n+1)-A038040(n+1))`
-/

namespace A342925.P14049193004748519450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A152211 (n + 1) - A038040 (n + 1)).toNat

end

end A342925.P14049193004748519450

namespace A342925

/-- `A003415(A152211(n+1)-A038040(n+1))` -/
def P14049193004748519450.Spec : Prop :=
  ∀ n, P14049193004748519450.a n = A342925 (n + 1)

theorem P14049193004748519450.correct : P14049193004748519450.Spec := by
  intro n
  simp only [A342925, Nat.add_sub_cancel, A342925.P14049193004748519450.a, A342925.P15548023362340798578.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A038040, A038040.P16512896840577774730.a, A152211, A152211.P8934016512484736310.a, A000005, A000005.P16091521709108585461.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342925

/-! ## A342925.P10337556842645703562

`A003415(A066959(n+1)-A186170(n+1))`
-/

namespace A342925.P10337556842645703562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A066959 (n + 1) - A186170 (n + 1)).toNat

end

end A342925.P10337556842645703562

namespace A342925

/-- `A003415(A066959(n+1)-A186170(n+1))` -/
def P10337556842645703562.Spec : Prop :=
  ∀ n, P10337556842645703562.a n = A342925 (n + 1)

theorem P10337556842645703562.correct : P10337556842645703562.Spec := by
  intro n
  simp only [A342925, Nat.add_sub_cancel, A342925.P10337556842645703562.a, A342925.P15548023362340798578.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A066959, A066959.P15004998191062164825.a, A186170, A186170.P11353951173779098323.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342925

/-! ## A342925.P10047092041956388123

`A003415(A003961(n+1)-A286385(n+1))`
-/

namespace A342925.P10047092041956388123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A003961 (n + 1) - A286385 (n + 1)).toNat

end

end A342925.P10047092041956388123

namespace A342925

/-- `A003415(A003961(n+1)-A286385(n+1))` -/
def P10047092041956388123.Spec : Prop :=
  ∀ n, P10047092041956388123.a n = A342925 (n + 1)

theorem P10047092041956388123.correct : P10047092041956388123.Spec := by
  intro n
  simp only [A342925, Nat.add_sub_cancel, A342925.P10047092041956388123.a, A342925.P15548023362340798578.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003415, A003415.P9326043729983995739.f1, A003415.P9326043729983995739.a, A003961, A003961.P5996473960037614004.a, A286385, A286385.P7583078268767377745.a, A253885, A253885.P8852473244354028115.f1, A253885.P8852473244354028115.a, A300251, A300251.P9104168606851773387.f1, A300251.P9104168606851773387.a, A000010, A000010.P4673923239450215316.a, A252749, A252749.P15054942815197957636.a, A349394, A349394.P210516795435731064.a, A003557, A003557.P6364735403900941810.a, A069513, A069513.P10236214883623494276.f1, A069513.P10236214883623494276.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A252748, A252748.P16209281916487994805.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342925

/-!
# A342926: a(n) = A003415(sigma(n)) - n, where A003415 is the arithmetic derivative, and sigma is the sum of divisors of n.

The programs for A342926, the canonical program `A342926.P4470252803445258283` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342926 has offset 1).

The definition of A342926 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003415, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342926.P17773213521733804324

`A342925(n+1)-(n+1)`
-/

namespace A342926.P17773213521733804324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342925 (n + 1) - (n + 1 : ℤ)

end

end A342926.P17773213521733804324

namespace A342926

/-- `A342925(n+1)-(n+1)` -/
def P17773213521733804324.Spec : Prop :=
  ∀ n, P17773213521733804324.a n = A342926 (n + 1)

end A342926

/-! ## A342926.P4470252803445258283

`A003415(A000203(n+1))-(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A342926

/-- `A003415(A000203(n+1))-(n+1)` -/
def P4470252803445258283.Spec : Prop :=
  ∀ n, P4470252803445258283.a n = A342926 (n + 1)

theorem P4470252803445258283.correct : P4470252803445258283.Spec := by
  intro n
  simp only [A342926, Nat.add_sub_cancel]

end A342926

/-! ## A342926.P8713329949793369244

`A003415(∑{d}[n+1, #])-(n+1)`
-/

namespace A342926.P8713329949793369244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ d ∈ Nat.divisors (f1 n), d) - (n + 1 : ℤ)

end

end A342926.P8713329949793369244

namespace A342926

/-- `A003415(∑{d}[n+1, #])-(n+1)` -/
def P8713329949793369244.Spec : Prop :=
  ∀ n, P8713329949793369244.a n = A342926 (n + 1)

end A342926

/-! ## A342926.P9914556421641974855

`A003415(sqrt(A072861(n+1)))-(n+1)`
-/

namespace A342926.P9914556421641974855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway (Real.sqrt (A072861 (n + 1) : ℝ))).toNat - (n + 1 : ℤ)

end

end A342926.P9914556421641974855

namespace A342926

/-- `A003415(sqrt(A072861(n+1)))-(n+1)` -/
def P9914556421641974855.Spec : Prop :=
  ∀ n, P9914556421641974855.a n = A342926 (n + 1)

end A342926

/-! ## A342926.P1320262141594474450

`A003415(∑[A340793(n+1)])-(n+1)`
-/

namespace A342926.P1320262141594474450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A342926.P1320262141594474450

namespace A342926

/-- `A003415(∑[A340793(n+1)])-(n+1)` -/
def P1320262141594474450.Spec : Prop :=
  ∀ n, P1320262141594474450.a n = A342926 (n + 1)

end A342926

/-! ## A342926.P3141994062338812373

`A003415(A319527(n+1)/7)-(n+1)`
-/

namespace A342926.P3141994062338812373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (SequenceMachineLib.roundAway ((A319527 (n + 1) : ℚ) / 7)).toNat - (n + 1 : ℤ)

end

end A342926.P3141994062338812373

namespace A342926

/-- `A003415(A319527(n+1)/7)-(n+1)` -/
def P3141994062338812373.Spec : Prop :=
  ∀ n, P3141994062338812373.a n = A342926 (n + 1)

end A342926

/-! ## A342926.P13026804819856372946

`A168036(A000203(n+1))+A001065(n+1)`
-/

namespace A342926.P13026804819856372946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168036 (A000203 (n + 1)).toNat + A001065 (n + 1)

end

end A342926.P13026804819856372946

namespace A342926

/-- `A168036(A000203(n+1))+A001065(n+1)` -/
def P13026804819856372946.Spec : Prop :=
  ∀ n, P13026804819856372946.a n = A342926 (n + 1)

end A342926

/-! ## A342926.P5563692310922044314

`A319703(A074400(n+1))-(n+1)`
-/

namespace A342926.P5563692310922044314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319703 (A074400 (n + 1)).toNat - (n + 1 : ℤ)

end

end A342926.P5563692310922044314

namespace A342926

/-- `A319703(A074400(n+1))-(n+1)` -/
def P5563692310922044314.Spec : Prop :=
  ∀ n, P5563692310922044314.a n = A342926 (n + 1)

end A342926

/-! ## A342926.P11506374315636702161

`A344026(A332221(n+1))-(n+1)`
-/

namespace A342926.P11506374315636702161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344026 (A332221 (n + 1)).toNat - (n + 1 : ℤ)

end

end A342926.P11506374315636702161

namespace A342926

/-- `A344026(A332221(n+1))-(n+1)` -/
def P11506374315636702161.Spec : Prop :=
  ∀ n, P11506374315636702161.a n = A342926 (n + 1)

end A342926

/-!
# A342927: The smallest polygonality of numbers that have exactly two different representations as polygonal numbers (A177029).

The programs for A342927, there is no canonical definition to state claims against.
-/

/-! ## A342927.P7709970455198987351

`A176774(A177029(n+1))`
-/

namespace A342927.P7709970455198987351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176774 (A177029 (n + 1)).toNat

end

end A342927.P7709970455198987351

/-! ## A342927.P16170289942553091054

`A342805(eq[3, A129654(n+2)]+2)`
-/

namespace A342927.P16170289942553091054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342805 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A342927.P16170289942553091054

/-! ## A342927.P8637172730456572240

`A342805(A177029(2*n+1-n))`
-/

namespace A342927.P8637172730456572240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342805 (A177029 (2 * n + 1 - n)).toNat

end

end A342927.P8637172730456572240

/-! ## A342927.P4358522905828008402

`A342805(A177029(n+1)%A017509(n))`
-/

namespace A342927.P4358522905828008402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342805 (Int.tmod (A177029 (n + 1)) (A017509 n)).toNat

end

end A342927.P4358522905828008402

/-! ## A342927.P15938250092888359833

`or(A000007(n), A342805(A177029(n+1)))`
-/

namespace A342927.P15938250092888359833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A342805 (A177029 (n + 1)).toNat)

end

end A342927.P15938250092888359833

/-! ## A342927.P1588768038146778871

`A342805(or(A000038(n), A177029(n+1)))`
-/

namespace A342927.P1588768038146778871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342805 (Int.lor (A000038 n) (A177029 (n + 1))).toNat

end

end A342927.P1588768038146778871

/-!
# A342928: The smallest polygonal index of numbers that have exactly two different representations as polygonal numbers (A177029).

The programs for A342928, there is no canonical definition to state claims against.
-/

/-! ## A342928.P7901825870767129261

`A176775(A177029(n+1))`
-/

namespace A342928.P7901825870767129261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176775 (A177029 (n + 1)).toNat

end

end A342928.P7901825870767129261

/-! ## A342928.P15397318905062153049

`A176775(eq[3, A129654(n+2)]+2)`
-/

namespace A342928.P15397318905062153049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2)

end

end A342928.P15397318905062153049

/-! ## A342928.P13201582471708723571

`A176775(eq[2, A177025(n+4)]+4)`
-/

namespace A342928.P13201582471708723571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177025 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176775 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 4)

end

end A342928.P13201582471708723571

/-! ## A342928.P10012904235809296743

`A342550(eq[3, A129654(n+2)]+2)-2`
-/

namespace A342928.P10012904235809296743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129654 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342550 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) - 2

end

end A342928.P10012904235809296743

/-! ## A342928.P13721254109422046789

`∑{d}[2-A342550(A177029(n+1)), A000010(#)]`
-/

namespace A342928.P13721254109422046789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A342550 (A177029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A342928.P13721254109422046789

/-! ## A342928.P4695140177638360629

`∏{d}[A342550(A177029(n+1))-2, A006530(#)]`
-/

namespace A342928.P4695140177638360629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342550 (A177029 (n + 1)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A006530 d

end

end A342928.P4695140177638360629

/-! ## A342928.P14185616022921793759

`∏{d}[2-A342550(A177029(n+1)), A014963(#)]`
-/

namespace A342928.P14185616022921793759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A342550 (A177029 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A014963 d

end

end A342928.P14185616022921793759

/-! ## A342928.P1406968606146844413

`A342550(A177029(n+1))-A020639(2*(n+1))`
-/

namespace A342928.P1406968606146844413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342550 (A177029 (n + 1)).toNat - A020639 (2 * (n + 1))

end

end A342928.P1406968606146844413

/-! ## A342928.P3368083154641925081

`(A342550(A177029(n+1))-2)%A000041(n+4)`
-/

namespace A342928.P3368083154641925081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A342550 (A177029 (n + 1)).toNat - 2) (A000041 (n + 4))

end

end A342928.P3368083154641925081

/-! ## A342928.P13328525005403180235

`A342550(A177029(n+1))-A000040(gcd(n, n+1))`
-/

namespace A342928.P13328525005403180235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342550 (A177029 (n + 1)).toNat - A000040 (Nat.gcd n (n + 1))

end

end A342928.P13328525005403180235

/-!
# A342929: Number of divisors of A025487(n), counting divisor multiplicity in A025487(n).

The programs for A342929, there is no canonical definition to state claims against.
-/

/-! ## A342929.P17875697577002472016

`A169594(A025487(n+1))`
-/

namespace A342929.P17875697577002472016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169594 (A025487 (n + 1)).toNat

end

end A342929.P17875697577002472016

/-! ## A342929.P12799758055089389480

`∑{d}[A025487(n+1), A089723(#)]`
-/

namespace A342929.P12799758055089389480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025487 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A089723 d

end

end A342929.P12799758055089389480

/-! ## A342929.P16488474285635432038

`∑{d}[record[A329899(n+1)], A089723(#)]`
-/

namespace A342929.P16488474285635432038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A089723 d

end

end A342929.P16488474285635432038

/-! ## A342929.P12263995546139905948

`∑{d}[record[A051466(n+2)], A089723(#)]`
-/

namespace A342929.P12263995546139905948
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A089723 d

end

end A342929.P12263995546139905948

/-! ## A342929.P18125328095173916475

`∑{d}[A181821(A181820(n+1)), A089723(#)]`
-/

namespace A342929.P18125328095173916475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181821 (A181820 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A089723 d

end

end A342929.P18125328095173916475

/-! ## A342929.P16751189869828559195

`∑{d}[A051466(A329898(n+1)), A089723(#)]`
-/

namespace A342929.P16751189869828559195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051466 (A329898 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A089723 d

end

end A342929.P16751189869828559195

/-! ## A342929.P12864534799573698568

`∑{d}[A055932(A331119(n+1)), A089723(#)]`
-/

namespace A342929.P12864534799573698568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055932 (A331119 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A089723 d

end

end A342929.P12864534799573698568

/-! ## A342929.P2610321194982155919

`∑{d}[A329899(A330683(n+1)), A089723(#)]`
-/

namespace A342929.P2610321194982155919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329899 (A330683 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A089723 d

end

end A342929.P2610321194982155919

/-! ## A342929.P687750149324092035

`∑{d}[A247451(n+1)*A307107(n+1), A089723(#)]`
-/

namespace A342929.P687750149324092035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247451 (n + 1) * A307107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A089723 d

end

end A342929.P687750149324092035

/-! ## A342929.P7578477384205973497

`∑{d}[A181817(n+1)/A181816(n+1), A089723(#)]`
-/

namespace A342929.P7578477384205973497
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A181817 (n + 1) : ℚ) / (A181816 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A089723 d

end

end A342929.P7578477384205973497

/-!
# A342930: Least positive number k such that n^n divides k*(k+1)/2.

The programs for A342930, there is no canonical definition to state claims against.
-/

/-! ## A342930.P5654207557781493024

`A011772(record[(n%10)^n])`
-/

namespace A342930.P5654207557781493024
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n % 10) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011772 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A342930.P5654207557781493024

/-!
# A342931: a(n) = A000217(A342930(n))/n^n.

The programs for A342931, there is no canonical definition to state claims against.
-/

/-! ## A342931.P7976346239616067489

`A000217(A342930(n+1))/(n+1)^(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A342931.P7976346239616067489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A342930 (n + 1)).toNat : ℚ) / ((n + 1) ^ (n + 1) : ℚ)

end

end A342931.P7976346239616067489

/-!
# A342932: The unique sequence {a(1), a(2), a(3), a(4), ...} of digits 1, 2, or 3 such that the number a(n)a(n-1)...a(2)a(1), read in base 6, is divisible by 3^n.

The programs for A342932, there is no canonical definition to state claims against.
-/

/-! ## A342932.P11904323359241518320

`gcd(A115061(n+1), A239439(A001043(n+1)²))`
-/

namespace A342932.P11904323359241518320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115061 (n + 1)) (A239439 (A001043 (n + 1) ^ 2).toNat)

end

end A342932.P11904323359241518320

/-! ## A342932.P8996006099172563714

`A120967(A173529(2*(n+2))+A118248(2*n+1))`
-/

namespace A342932.P8996006099172563714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120967 (A173529 (2 * (n + 2)) + A118248 (2 * n + 1)).toNat

end

end A342932.P8996006099172563714

/-! ## A342932.P14907539350823083295

`A066099(A066417(2*(n+2))+A065832(n+1))`
-/

namespace A342932.P14907539350823083295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066099 (A066417 (2 * (n + 2)) + A065832 (n + 1)).toNat

end

end A342932.P14907539350823083295

/-!
# A342935: Number of ordered triples (x, y, z) with gcd(x, y, z) = 1 and 1 <= {x, y, z} <= 2^n.

The programs for A342935, the canonical program `A342935.P6959067166596717455` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342935 has offset 0).

The definition of A342935 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A071778, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A342935.P6959067166596717455

`A071778(2^n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A342935

/-- `A071778(2^n)` -/
def P6959067166596717455.Spec : Prop :=
  ∀ n, P6959067166596717455.a n = A342935 n

theorem P6959067166596717455.correct : P6959067166596717455.Spec := by
  intro n
  simp only [A342935]

end A342935

/-! ## A342935.P16482583610962410613

`record[A071778(A029930(n))]`
-/

namespace A342935.P16482583610962410613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071778 (A029930 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342935.P16482583610962410613

namespace A342935

/-- `record[A071778(A029930(n))]` -/
def P16482583610962410613.Spec : Prop :=
  ∀ n, P16482583610962410613.a n = A342935 n

end A342935

/-! ## A342935.P9393437552168912954

`record[A071778(A055248(n))]`
-/

namespace A342935.P9393437552168912954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071778 (A055248 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342935.P9393437552168912954

namespace A342935

/-- `record[A071778(A055248(n))]` -/
def P9393437552168912954.Spec : Prop :=
  ∀ n, P9393437552168912954.a n = A342935 n

end A342935

/-! ## A342935.P3542407473043946756

`record[A071778(A059268(n))]`
-/

namespace A342935.P3542407473043946756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071778 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342935.P3542407473043946756

namespace A342935

/-- `record[A071778(A059268(n))]` -/
def P3542407473043946756.Spec : Prop :=
  ∀ n, P3542407473043946756.a n = A342935 n

end A342935

/-! ## A342935.P3663070835870075984

`record[A071778(A068009(n))]`
-/

namespace A342935.P3663070835870075984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071778 (A068009 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342935.P3663070835870075984

namespace A342935

/-- `record[A071778(A068009(n))]` -/
def P3663070835870075984.Spec : Prop :=
  ∀ n, P3663070835870075984.a n = A342935 n

end A342935

/-!
# A342936: Array T(n, k), n, k > 0, read by antidiagonals; T(n, k) is the number of rotationally symmetric self-avoiding rook paths joining opposite corners of an n X k board.

The programs for A342936, there is no canonical definition to state claims against.
-/

/-! ## A342936.P15457445261260202090

`A215884(A022168(n))`
-/

namespace A342936.P15457445261260202090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215884 (A022168 n).toNat

end

end A342936.P15457445261260202090

/-! ## A342936.P12357783395260585259

`A345255(A117401(n))`
-/

namespace A342936.P12357783395260585259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345255 (A117401 n).toNat

end

end A342936.P12357783395260585259

/-! ## A342936.P13632905070379113603

`A374758(A059441(n+1))`
-/

namespace A342936.P13632905070379113603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374758 (A059441 (n + 1)).toNat

end

end A342936.P13632905070379113603

/-! ## A342936.P11627869590441280295

`A345255(2^A004247(n))`
-/

namespace A342936.P11627869590441280295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345255 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A004247 n : ℤ))).toNat

end

end A342936.P11627869590441280295

/-! ## A342936.P8196425387582035157

`A345255(2^A067138(n))`
-/

namespace A342936.P8196425387582035157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345255 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A067138 n : ℤ))).toNat

end

end A342936.P8196425387582035157

/-!
# A342937: Run lengths of A324608.

The programs for A342937, there is no canonical definition to state claims against.
-/

/-! ## A342937.P808090566847473910

`A341406(n+1)+A102683(A306100(n))`
-/

namespace A342937.P808090566847473910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341406 (n + 1) + A102683 (A306100 n).toNat

end

end A342937.P808090566847473910

/-!
# A342939: a(n) is the Skolem number of the triangular grid graph T_n.

The programs for A342939, the canonical program `A342939.P4750332361534191554` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342939 has offset 1).

The definition of A342939 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342939.P13778868262911541296

`char[2]+∑[n]+1`
-/

namespace A342939.P13778868262911541296
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f1 j = n then 1 else 0) + (∑ j ∈ Finset.range (n + 1), f2 j + 1)

end

end A342939.P13778868262911541296

namespace A342939

/-- `char[2]+∑[n]+1` -/
def P13778868262911541296.Spec : Prop :=
  ∀ n, (P13778868262911541296.a n : ℤ) = A342939 (n + 1)

end A342939

/-! ## A342939.P4750332361534191554

`or(∑[n]+1, C(2, n))`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A342939

/-- `or(∑[n]+1, C(2, n))` -/
def P4750332361534191554.Spec : Prop :=
  ∀ n, (P4750332361534191554.a n : ℤ) = A342939 (n + 1)

theorem P4750332361534191554.correct : P4750332361534191554.Spec := by
  intro n
  simp only [A342939, Nat.add_sub_cancel]

end A342939

/-! ## A342939.P644904902079445136

`∑[xor(n, char[∑[2-n]])]`
-/

namespace A342939.P644904902079445136
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (if ∃ j, f2 j = (n : ℤ) then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342939.P644904902079445136

namespace A342939

/-- `∑[xor(n, char[∑[2-n]])]` -/
def P644904902079445136.Spec : Prop :=
  ∀ n, (P644904902079445136.a n : ℤ) = A342939 (n + 1)

end A342939

/-! ## A342939.P6973565263982026317

`ogf((1-x+2x^2-3x^3+3x^4-x^5)/(1-3x+3x^2-x^3))`
-/

namespace A342939.P6973565263982026317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 2, -3, 3, -1] [1, -3, 3, -1] n

end

end A342939.P6973565263982026317

namespace A342939

/-- `ogf((1-x+2x^2-3x^3+3x^4-x^5)/(1-3x+3x^2-x^3))` -/
def P6973565263982026317.Spec : Prop :=
  ∀ n, P6973565263982026317.a n = A342939 (n + 1)

end A342939

/-! ## A342939.P15522918226330844971

`∑[n-floor(1/a(n-2))]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A342939.P15522918226330844971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  (n : ℤ) - ⌊1 / (f1 (n - 2) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342939.P15522918226330844971

namespace A342939

/-- `∑[n-floor(1/a(n-2))]` -/
def P15522918226330844971.Spec : Prop :=
  ∀ n, P15522918226330844971.a n = A342939 (n + 1)

end A342939

/-! ## A342939.P8103024314863213675

`or(char[2], A000124(n))`
-/

namespace A342939.P8103024314863213675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A000124 n)

end

end A342939.P8103024314863213675

namespace A342939

/-- `or(char[2], A000124(n))` -/
def P8103024314863213675.Spec : Prop :=
  ∀ n, P8103024314863213675.a n = A342939 (n + 1)

end A342939

/-! ## A342939.P5061889369191933081

`or(A000124(n), A130713(n))`
-/

namespace A342939.P5061889369191933081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000124 n) (A130713 n)

end

end A342939.P5061889369191933081

namespace A342939

/-- `or(A000124(n), A130713(n))` -/
def P5061889369191933081.Spec : Prop :=
  ∀ n, P5061889369191933081.a n = A342939 (n + 1)

end A342939

/-! ## A342939.P9651002096891437867

`xor(A000124(n), A185012(n))`
-/

namespace A342939.P9651002096891437867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000124 n) (A185012 n)

end

end A342939.P9651002096891437867

namespace A342939

/-- `xor(A000124(n), A185012(n))` -/
def P9651002096891437867.Spec : Prop :=
  ∀ n, P9651002096891437867.a n = A342939 (n + 1)

end A342939

/-! ## A342939.P8772808360112065057

`A114092(A336705(n))`
-/

namespace A342939.P8772808360112065057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114092 (A336705 n).toNat

end

end A342939.P8772808360112065057

namespace A342939

/-- `A114092(A336705(n))` -/
def P8772808360112065057.Spec : Prop :=
  ∀ n, P8772808360112065057.a n = A342939 (n + 1)

end A342939

/-! ## A342939.P2896667030671992387

`ceil(A000217(n)+acot(A328631(n+1)))`
-/

namespace A342939.P2896667030671992387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000217 n : ℝ) + SequenceMachineLib.acot (A328631 (n + 1) : ℝ)⌉

end

end A342939.P2896667030671992387

namespace A342939

/-- `ceil(A000217(n)+acot(A328631(n+1)))` -/
def P2896667030671992387.Spec : Prop :=
  ∀ n, P2896667030671992387.a n = A342939 (n + 1)

end A342939

/-! ## A342939.P18075176715136427777

`eq[A177121(n+1), A353595(n)]`
-/

namespace A342939.P18075176715136427777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342939.P18075176715136427777

namespace A342939

/-- `eq[A177121(n+1), A353595(n)]` -/
def P18075176715136427777.Spec : Prop :=
  ∀ n, (P18075176715136427777.a n : ℤ) = A342939 (n + 1)

end A342939

/-! ## A342939.P14080068072341832479

`eq[A204120(n+1), A353595(n)]`
-/

namespace A342939.P14080068072341832479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342939.P14080068072341832479

namespace A342939

/-- `eq[A204120(n+1), A353595(n)]` -/
def P14080068072341832479.Spec : Prop :=
  ∀ n, (P14080068072341832479.a n : ℤ) = A342939 (n + 1)

end A342939

/-! ## A342939.P16666742797678648128

`eq[A204131(n+1), A353595(n)]`
-/

namespace A342939.P16666742797678648128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204131 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342939.P16666742797678648128

namespace A342939

/-- `eq[A204131(n+1), A353595(n)]` -/
def P16666742797678648128.Spec : Prop :=
  ∀ n, (P16666742797678648128.a n : ℤ) = A342939 (n + 1)

end A342939

/-! ## A342939.P14550783955135700212

`eq[A204133(n+1), A353595(n)]`
-/

namespace A342939.P14550783955135700212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204133 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342939.P14550783955135700212

namespace A342939

/-- `eq[A204133(n+1), A353595(n)]` -/
def P14550783955135700212.Spec : Prop :=
  ∀ n, (P14550783955135700212.a n : ℤ) = A342939 (n + 1)

end A342939

/-! ## A342939.P13517297419193341053

`eq[A204160(n+1), A353595(n)]`
-/

namespace A342939.P13517297419193341053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204160 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353595 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342939.P13517297419193341053

namespace A342939

/-- `eq[A204160(n+1), A353595(n)]` -/
def P13517297419193341053.Spec : Prop :=
  ∀ n, (P13517297419193341053.a n : ℤ) = A342939 (n + 1)

end A342939

/-! ## A342939.P13616306235923127404

`A209293(A209293(A054254(n+1)))`
-/

namespace A342939.P13616306235923127404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209293 (A209293 (A054254 (n + 1)).toNat).toNat

end

end A342939.P13616306235923127404

namespace A342939

/-- `A209293(A209293(A054254(n+1)))` -/
def P13616306235923127404.Spec : Prop :=
  ∀ n, P13616306235923127404.a n = A342939 (n + 1)

end A342939

/-!
# A342940: Triangle read by rows: T(n, k) is the Skolem number of the parallelogram graph P_{n, k}, with 1 < k <= n.

The programs for A342940, there is no canonical definition to state claims against.
-/

/-! ## A342940.P11679191287759956951

`2+(col(n)+1)*row(n)`
-/

namespace A342940.P11679191287759956951
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + (SequenceMachineLib.triCol n + 1) * SequenceMachineLib.triRow n

end

end A342940.P11679191287759956951

/-! ## A342940.P634740691992494177

`A081493(n+1)+1`
-/

namespace A342940.P634740691992494177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081493 (n + 1) + 1

end

end A342940.P634740691992494177

/-! ## A342940.P11864302944260690536

`A162609(comp[∑[n]]+1)+1`
-/

namespace A342940.P11864302944260690536
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162609 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) + 1

end

end A342940.P11864302944260690536

/-! ## A342940.P2445526647776338714

`A159797(comp[∑[n-1]])+1`
-/

namespace A342940.P2445526647776338714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159797 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + 1

end

end A342940.P2445526647776338714

/-! ## A342940.P12888974363038807024

`A176798(comp[∑[n-1]])-n`
-/

namespace A342940.P12888974363038807024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176798 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - (n : ℤ)

end

end A342940.P12888974363038807024

/-! ## A342940.P13352200241574524843

`comp[∑[n]]+A079904(n)-n`
-/

namespace A342940.P13352200241574524843
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) + (A079904 n - (n : ℤ))

end

end A342940.P13352200241574524843

/-! ## A342940.P11955987608674894502

`A076110(n+1)+∑[char[∑[n]]]`
-/

namespace A342940.P11955987608674894502
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076110 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A342940.P11955987608674894502

/-! ## A342940.P6650479844520858697

`A126890(comp[∑[n-1]])+1-n`
-/

namespace A342940.P6650479844520858697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126890 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) + (1 - (n : ℤ))

end

end A342940.P6650479844520858697

/-! ## A342940.P16817855320599005057

`A144204(n+1)+comp[∑[n]]-n+1`
-/

namespace A342940.P16817855320599005057
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144204 (n + 1) + ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) + 1

end

end A342940.P16817855320599005057

/-! ## A342940.P9452437884007469753

`∑[char[∑[n+1]]]*A002260(n+1)+2`
-/

namespace A342940.P9452437884007469753
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A002260 (n + 1) + 2

end

end A342940.P9452437884007469753

/-!
# A342941: Numbers not ending with 0, that are not the quotient of a Zuckerman number divided by the product of its digits.

The programs for A342941, there is no canonical definition to state claims against.
-/

/-! ## A342941.P4500750224439367961

`eq[val(n+1, 10), A056770(n+1)]+1`
-/

namespace A342941.P4500750224439367961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056770 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A342941.P4500750224439367961

/-! ## A342941.P16959467072168462911

`filter[A342593(n+1), A168184(#)]`
-/

namespace A342941.P16959467072168462911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342593 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A342941.P16959467072168462911

/-! ## A342941.P2747170861401992334

`∩[A067251(n+1), A342593(n+1)]`
-/

namespace A342941.P2747170861401992334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342593 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342941.P2747170861401992334

/-! ## A342941.P3195629533938109672

`∩[A342593(n+1), A342851(n+1)]`
-/

namespace A342941.P3195629533938109672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342941.P3195629533938109672

/-! ## A342941.P6539914117821334290

`∩[A342593(n+1), A359983(n+1)]`
-/

namespace A342941.P6539914117821334290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342593 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342941.P6539914117821334290

/-!
# A342943: Primes whose palindromization is a prime.

The programs for A342943, there is no canonical definition to state claims against.
-/

/-! ## A342943.P13516141309057211674

`p?[A258084(n+5)]`
-/

namespace A342943.P13516141309057211674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258084 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342943.P13516141309057211674

/-! ## A342943.P17221321551860333174

`record[A006530(A258084(abs(1-n)+5))]`
-/

namespace A342943.P17221321551860333174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A258084 (|1 - (n : ℤ)| + 5).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342943.P17221321551860333174

/-! ## A342943.P12333672595097240028

`∩[A071621(n+1), A258084(n+1)]`
-/

namespace A342943.P12333672595097240028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071621 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342943.P12333672595097240028

/-! ## A342943.P16314415731098384551

`∩[A140461(n+1), A258084(n+1)]`
-/

namespace A342943.P16314415731098384551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140461 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258084 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342943.P16314415731098384551

/-! ## A342943.P18417452167450278983

`∩[A000040(n+1), A258084(n+5)]`
-/

namespace A342943.P18417452167450278983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258084 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342943.P18417452167450278983

/-! ## A342943.P15642267614230739213

`∩[record[A020639(n+2)], A258084(n+5)]`
-/

namespace A342943.P15642267614230739213
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258084 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A342943.P15642267614230739213

/-! ## A342943.P3459023054303863653

`record[A014963(A258084(n+6))]`
-/

namespace A342943.P3459023054303863653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A258084 (n + 6)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342943.P3459023054303863653

/-!
# A342944: Numbers m such that d(1)^0 + d(2)^1 + ... + d(k)^(k-1) = d(1)! + d(2)! + ... + d(k)!, where d(i), i=1..k, are the digits of m.

The programs for A342944, there is no canonical definition to state claims against.
-/

/-! ## A342944.P11779588909486262711

`A231874(A041957(n))`
-/

namespace A342944.P11779588909486262711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231874 (A041957 n).toNat

end

end A342944.P11779588909486262711

/-! ## A342944.P12343749463110150802

`A231874(record[A000045(∏{p}[n+1, #*val(n+1, #)])])`
-/

namespace A342944.P12343749463110150802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (∏ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231874 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342944.P12343749463110150802

/-!
# A342945: Numbers m such that d(1)^1 + d(2)^2 + ... + d(p)^k = d(1)! + d(2)! + ... + d(k)!, where d(i), i=1..k, are the digits of m.

The programs for A342945, there is no canonical definition to state claims against.
-/

/-! ## A342945.P6481703278734009794

`eq[A061602(n), A389091(n)]`
-/

namespace A342945.P6481703278734009794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389091 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A342945.P6481703278734009794

/-! ## A342945.P15730841581801955950

`A221524(n+1)+record[A320390(n+2)]`
-/

namespace A342945.P15730841581801955950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320390 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221524 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342945.P15730841581801955950

/-! ## A342945.P6213589464614056284

`A230994(n+1)+record[A320390(n+2)]`
-/

namespace A342945.P6213589464614056284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320390 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230994 (n + 1) + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342945.P6213589464614056284

/-!
# A342946: Squares visited by the white knight when a white knight and a black knight are moving on a diagonally numbered board, always to the lowest available unvisited square; white moves first.

The programs for A342946, there is no canonical definition to state claims against.
-/

/-! ## A342946.P1208984301740961093

`A342948(floor(acot(n))+2*n)`
-/

namespace A342946.P1208984301740961093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342948 (⌊SequenceMachineLib.acot (n : ℝ)⌋ + (2 * n : ℤ)).toNat

end

end A342946.P1208984301740961093

/-! ## A342946.P18192487102272012404

`A342948(round(1/acot(n))+n)`
-/

namespace A342946.P18192487102272012404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342948 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A342946.P18192487102272012404

/-! ## A342946.P11235929385524388881

`A342948(floor(3/acot(n))-n)`
-/

namespace A342946.P11235929385524388881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342948 (⌊3 / SequenceMachineLib.acot (n : ℝ)⌋ - (n : ℤ)).toNat

end

end A342946.P11235929385524388881

/-! ## A342946.P6147563224846269240

`A342948(comp[2*(n+1)]+1)`
-/

namespace A342946.P6147563224846269240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342948 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1)

end

end A342946.P6147563224846269240

/-!
# A342947: Squares visited by the black knight when a white knight and a black knight are moving on a diagonally numbered board, always to the lowest available unvisited square; white moves first.

The programs for A342947, there is no canonical definition to state claims against.
-/

/-! ## A342947.P5895785791080358782

`A342948(Δ[n²])`
-/

namespace A342947.P5895785791080358782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342948 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A342947.P5895785791080358782

/-! ## A342947.P1570759123548476351

`and(-1, A342948(2*n+1))`
-/

namespace A342947.P1570759123548476351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A342948 (2 * n + 1))

end

end A342947.P1570759123548476351

/-! ## A342947.P16021294991496637977

`A289437(3*A342948(2*n+1))`
-/

namespace A342947.P16021294991496637977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (3 * A342948 (2 * n + 1)).toNat

end

end A342947.P16021294991496637977

/-! ## A342947.P11040733348466879435

`A304042(n)*A342948(2*n+1)`
-/

namespace A342947.P11040733348466879435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304042 n * A342948 (2 * n + 1)

end

end A342947.P11040733348466879435

/-!
# A342949: Odd numbers that are divisible by the product of their digits.

The programs for A342949, there is no canonical definition to state claims against.
-/

/-! ## A342949.P25878860404907505

`A007602(eq[1, gcd(2, A007602(n+1))]+1)`
-/

namespace A342949.P25878860404907505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A007602 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A342949.P25878860404907505

/-! ## A342949.P5512070907590678529

`A007602(eq[1, and(1, A007602(n+1))]+1)`
-/

namespace A342949.P5512070907590678529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A007602 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A342949.P5512070907590678529

/-! ## A342949.P1156008779587331353

`A007602(record[(n+1)*A007602(n+1)%2])`
-/

namespace A342949.P1156008779587331353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.tmod (A007602 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342949.P1156008779587331353

/-! ## A342949.P1667657518845922690

`A007602(record[(n+1)*and(1, A007602(n+1))])`
-/

namespace A342949.P1667657518845922690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * Int.land 1 (A007602 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A342949.P1667657518845922690

/-! ## A342949.P18433988394023584288

`A007602(record[(n+1)^and(1, A007602(n+1))])`
-/

namespace A342949.P18433988394023584288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.land 1 (A007602 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A342949.P18433988394023584288

/-! ## A342949.P2646310907127325549

`∩[A007602(n+1), A014261(n+1)]`
-/

namespace A342949.P2646310907127325549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007602 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342949.P2646310907127325549

/-! ## A342949.P14713169559222131051

`∩[A014261(n+1), A055471(n+1)]`
-/

namespace A342949.P14713169559222131051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342949.P14713169559222131051

/-! ## A342949.P10090360255851148977

`∩[A014261(n+1), A180484(n+1)]`
-/

namespace A342949.P10090360255851148977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014261 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342949.P10090360255851148977

/-!
# A342950: 7-smooth numbers not divisible by 10: positive numbers whose prime divisors are all <= 7 but do not contain both 2 and 5.

The programs for A342950, there is no canonical definition to state claims against.
-/

/-! ## A342950.P9656942646373016835

`∪[A108319(n+1), A108347(n+1)]`
-/

namespace A342950.P9656942646373016835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342950.P9656942646373016835

/-! ## A342950.P8063582945217836574

`∩[A002473(n+1), A067251(n+1)]`
-/

namespace A342950.P8063582945217836574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342950.P8063582945217836574

/-! ## A342950.P2813847568615099175

`∩[A002473(n+1), A342851(n+1)]`
-/

namespace A342950.P2813847568615099175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342950.P2813847568615099175

/-! ## A342950.P339652846430923376

`lt[1, A073910(n+1)]+1`
-/

namespace A342950.P339652846430923376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073910 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A342950.P339652846430923376

/-! ## A342950.P9627508798215205654

`record[A004151(A002473(n+1))]`
-/

namespace A342950.P9627508798215205654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A002473 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342950.P9627508798215205654

/-! ## A342950.P2179398262650272555

`record[A071785(A004151(n+1))]`
-/

namespace A342950.P2179398262650272555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071785 (A004151 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342950.P2179398262650272555

/-! ## A342950.P3744150117396061450

`record[A004151(A262401(n+1))]`
-/

namespace A342950.P3744150117396061450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (A262401 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342950.P3744150117396061450

/-! ## A342950.P11658793195933721862

`filter[A067251(n+1), A086299(#)]`
-/

namespace A342950.P11658793195933721862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A342950.P11658793195933721862

/-! ## A342950.P18014699920659894484

`filter[A002473(n+1), A168184(#)]`
-/

namespace A342950.P18014699920659894484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168184 (f1 j).toNat = 1) n)

end

end A342950.P18014699920659894484

/-! ## A342950.P9628843430597307440

`filter[A342851(n+2), A086299(#)]`
-/

namespace A342950.P9628843430597307440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342851 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A342950.P9628843430597307440

/-! ## A342950.P17245399830608145029

`record[A004151(sqrt(A352618(n+1)))]`
-/

namespace A342950.P17245399830608145029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway (Real.sqrt (A352618 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342950.P17245399830608145029

/-! ## A342950.P296605405271278688

`record[A004151(A085127(n+1)/4)]`
-/

namespace A342950.P296605405271278688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004151 (SequenceMachineLib.roundAway ((A085127 (n + 1) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342950.P296605405271278688

/-! ## A342950.P8479066491414848069

`record[A004086(A004086(A071785(n+1)))]`
-/

namespace A342950.P8479066491414848069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A004086 (A071785 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342950.P8479066491414848069

/-! ## A342950.P651474026306160666

`filter[A229301(n+1), A086299(#)]`
-/

namespace A342950.P651474026306160666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A086299 (f1 j).toNat = 1) n)

end

end A342950.P651474026306160666

/-! ## A342950.P2838301840544167861

`∩[A002473(n+1), A229301(n+1)]`
-/

namespace A342950.P2838301840544167861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229301 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342950.P2838301840544167861

/-!
# A342951: a(n) is the least term in A007602 that is divisible by A342950(n).

The programs for A342951, there is no canonical definition to state claims against.
-/

/-! ## A342951.P5480857868787245172

`∑{d}[A165878(2*n+1)+1, #]+n`
-/

namespace A342951.P5480857868787245172
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165878 (2 * n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d + n

end

end A342951.P5480857868787245172

/-! ## A342951.P11347079575164947712

`A255734(∑[A115205(n)])`
-/

namespace A342951.P11347079575164947712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115205 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255734 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342951.P11347079575164947712

/-! ## A342951.P4239688893931832202

`∑[A066769(A309863(n))]`
-/

namespace A342951.P4239688893931832202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066769 (A309863 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342951.P4239688893931832202

/-! ## A342951.P12748341548796041460

`A180478(∑[A309863(n)])`
-/

namespace A342951.P12748341548796041460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309863 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180478 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A342951.P12748341548796041460

/-!
# A342953: a(n) is the least prime that starts a string of exactly n primes p_1, p_2, ... p_n where p_{i+1} = A258881(p_i), but A258881(p_n) is not prime.

The programs for A342953, there is no canonical definition to state claims against.
-/

/-! ## A342953.P9433101546614083138

`A006530(A205226((abs(or(1, -n))+n)²))`
-/

namespace A342953.P9433101546614083138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A205226 ((|Int.lor 1 (-(n : ℤ))| + (n : ℤ)) ^ 2).toNat).toNat

end

end A342953.P9433101546614083138

/-!
# A342954: Number of interior regions formed by drawing n unit circles whose centers (s,t) are the partitions of k into 2 parts, where 0 < s <= t and s + t = k, ordered by increasing values of s and where k = 2,3,... .

The programs for A342954, there is no canonical definition to state claims against.
-/

/-! ## A342954.P13541232372366290278

`∑[A076368(A103062(n+1)%A032447(3*n+5)+1)]`
-/

namespace A342954.P13541232372366290278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (Int.tmod (A103062 (n + 1)) (A032447 (3 * n + 5)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342954.P13541232372366290278

/-! ## A342954.P1904351166267830172

`A008706(n)-A144078(A295053(n))`
-/

namespace A342954.P1904351166267830172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008706 n - A144078 (A295053 n).toNat

end

end A342954.P1904351166267830172

/-! ## A342954.P2018592289258283321

`A250120(n)-A087295(A265065(n))`
-/

namespace A342954.P2018592289258283321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250120 n - A087295 (A265065 n).toNat

end

end A342954.P2018592289258283321

/-! ## A342954.P15510368869347759640

`∑[A058063(∑[3^n])+1]`
-/

namespace A342954.P15510368869347759640
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058063 (∑ j ∈ Finset.range (n + 1), f2 j) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342954.P15510368869347759640

/-! ## A342954.P10434008558831049186

`∑[A145339(A325232(n))-1]`
-/

namespace A342954.P10434008558831049186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145339 (A325232 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A342954.P10434008558831049186

/-!
# A342955: Array T(n,k), n, k >= 0, read by antidiagonals; the i-th decimal digit of T(n, k) is the smallest of the i-th digits of n and of k.

The programs for A342955, there is no canonical definition to state claims against.
-/

/-! ## A342955.P16058849414694500601

`∑[char[∑[n+1]]]-A087061(n)`
-/

namespace A342955.P16058849414694500601
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A087061 n

end

end A342955.P16058849414694500601

/-! ## A342955.P9331654439377103908

`A002024(n+1)-(A087061(n)+1)`
-/

namespace A342955.P9331654439377103908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) - (A087061 n + 1)

end

end A342955.P9331654439377103908

/-! ## A342955.P9813299532084525027

`A003984(n)+A004197(n)-A087061(n)`
-/

namespace A342955.P9813299532084525027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003984 n + (A004197 n - A087061 n)

end

end A342955.P9813299532084525027

/-! ## A342955.P10316281450347311517

`A002024(n+1)%A028310(A087061(n)+1)`
-/

namespace A342955.P10316281450347311517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002024 (n + 1)) (A028310 (A087061 n + 1).toNat)

end

end A342955.P10316281450347311517

/-! ## A342955.P10987844373573810266

`A007954(A261684(n))%A041016(n)`
-/

namespace A342955.P10987844373573810266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007954 (A261684 n).toNat) (A041016 n)

end

end A342955.P10987844373573810266

/-! ## A342955.P5853511789067399671

`A087061(n)-A330240(n)`
-/

namespace A342955.P5853511789067399671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087061 n - A330240 n

end

end A342955.P5853511789067399671

/-! ## A342955.P11627395905579740795

`A001281(A003056(n)-A330240(n))`
-/

namespace A342955.P11627395905579740795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A003056 n - A330240 n).toNat

end

end A342955.P11627395905579740795

/-! ## A342955.P17111409609152559767

`A004526(A003056(n)-A330240(n))`
-/

namespace A342955.P17111409609152559767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A003056 n - A330240 n).toNat

end

end A342955.P17111409609152559767

/-! ## A342955.P8908732927348474810

`A006370(A003056(n)-A330240(n))`
-/

namespace A342955.P8908732927348474810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A003056 n - A330240 n).toNat

end

end A342955.P8908732927348474810

/-!
# A342956: a(n) = A001222(A001414(n)).

The programs for A342956, the canonical program `A342956.P7456869894604334135` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342956 has offset 1).

The definition of A342956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342956.P7456869894604334135

`∑{e}[∑{p}[n+1, #*val(n+1, #)], #]`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A342956

/-- `∑{e}[∑{p}[n+1, #*val(n+1, #)], #]` -/
def P7456869894604334135.Spec : Prop :=
  ∀ n, (P7456869894604334135.a n : ℤ) = A342956 (n + 1)

theorem P7456869894604334135.correct : P7456869894604334135.Spec := by
  intro n
  simp only [A342956, Nat.add_sub_cancel]

end A342956

/-! ## A342956.P14397207125680668073

`∑{e}[Δ[A025281(n)], #]`
-/

namespace A342956.P14397207125680668073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342956.P14397207125680668073

namespace A342956

/-- `∑{e}[Δ[A025281(n)], #]` -/
def P14397207125680668073.Spec : Prop :=
  ∀ n, (P14397207125680668073.a n : ℤ) = A342956 (n + 1)

end A342956

/-! ## A342956.P15506682708032326715

`∑{e}[A001414(n+1), #]`
-/

namespace A342956.P15506682708032326715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342956.P15506682708032326715

namespace A342956

/-- `∑{e}[A001414(n+1), #]` -/
def P15506682708032326715.Spec : Prop :=
  ∀ n, (P15506682708032326715.a n : ℤ) = A342956 (n + 1)

end A342956

/-! ## A342956.P11472508697798489401

`∑{e}[sqrt(A074373(n+1)), #]`
-/

namespace A342956.P11472508697798489401
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A074373 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p

end

end A342956.P11472508697798489401

namespace A342956

/-- `∑{e}[sqrt(A074373(n+1)), #]` -/
def P11472508697798489401.Spec : Prop :=
  ∀ n, (P11472508697798489401.a n : ℤ) = A342956 (n + 1)

end A342956

/-! ## A342956.P13693242633277613806

`∑{e}[1-A036288(n+1), #]`
-/

namespace A342956.P13693242633277613806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A036288 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342956.P13693242633277613806

namespace A342956

/-- `∑{e}[1-A036288(n+1), #]` -/
def P13693242633277613806.Spec : Prop :=
  ∀ n, (P13693242633277613806.a n : ℤ) = A342956 (n + 1)

end A342956

/-! ## A342956.P4448734298389817013

`A001222(n+1)-A373976(n+1)`
-/

namespace A342956.P4448734298389817013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1) - A373976 (n + 1)

end

end A342956.P4448734298389817013

namespace A342956

/-- `A001222(n+1)-A373976(n+1)` -/
def P4448734298389817013.Spec : Prop :=
  ∀ n, P4448734298389817013.a n = A342956 (n + 1)

theorem P4448734298389817013.correct : P4448734298389817013.Spec := by
  intro n
  simp only [A342956, Nat.add_sub_cancel, A342956.P4448734298389817013.a, A342956.P7456869894604334135.f2, A342956.P7456869894604334135.f1, A342956.P7456869894604334135.a, A001222, A001222.P667907507343207792.f1, A001222.P667907507343207792.a, A373976, A373976.P9485791187912278564.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A342956

/-! ## A342956.P5287845386264004702

`∑{e}[A025281(n+1)-A025281(n), #]`
-/

namespace A342956.P5287845386264004702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 (n + 1) - A025281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342956.P5287845386264004702

namespace A342956

/-- `∑{e}[A025281(n+1)-A025281(n), #]` -/
def P5287845386264004702.Spec : Prop :=
  ∀ n, (P5287845386264004702.a n : ℤ) = A342956 (n + 1)

end A342956

/-! ## A342956.P6289987767146113786

`∑{e}[A023443(A075255(n+1))-n, #]`
-/

namespace A342956.P6289987767146113786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A075255 (n + 1)).toNat - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342956.P6289987767146113786

namespace A342956

/-- `∑{e}[A023443(A075255(n+1))-n, #]` -/
def P6289987767146113786.Spec : Prop :=
  ∀ n, (P6289987767146113786.a n : ℤ) = A342956 (n + 1)

end A342956

/-! ## A342956.P16605431199509565345

`A001222(A001414(n+1)+C(n, n²))`
-/

namespace A342956.P16605431199509565345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001414 (n + 1) + (Nat.choose n (n ^ 2) : ℤ)).toNat

end

end A342956.P16605431199509565345

namespace A342956

/-- `A001222(A001414(n+1)+C(n, n²))` -/
def P16605431199509565345.Spec : Prop :=
  ∀ n, P16605431199509565345.a n = A342956 (n + 1)

end A342956

/-! ## A342956.P1667155602439914893

`∑{e}[A280292(n+1)+A008472(n+1), #]`
-/

namespace A342956.P1667155602439914893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280292 (n + 1) + A008472 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342956.P1667155602439914893

namespace A342956

/-- `∑{e}[A280292(n+1)+A008472(n+1), #]` -/
def P1667155602439914893.Spec : Prop :=
  ∀ n, (P1667155602439914893.a n : ℤ) = A342956 (n + 1)

end A342956

/-! ## A342956.P12014813033762962070

`A001222(A001414(n+1)+A000007(n))`
-/

namespace A342956.P12014813033762962070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001414 (n + 1) + A000007 n).toNat

end

end A342956.P12014813033762962070

namespace A342956

/-- `A001222(A001414(n+1)+A000007(n))` -/
def P12014813033762962070.Spec : Prop :=
  ∀ n, P12014813033762962070.a n = A342956 (n + 1)

end A342956

/-! ## A342956.P11993790179560321565

`A001222(A001414(n+1)+A028310(n)-n)`
-/

namespace A342956.P11993790179560321565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A001414 (n + 1) + (A028310 n - (n : ℤ))).toNat

end

end A342956.P11993790179560321565

namespace A342956

/-- `A001222(A001414(n+1)+A028310(n)-n)` -/
def P11993790179560321565.Spec : Prop :=
  ∀ n, P11993790179560321565.a n = A342956 (n + 1)

end A342956

/-! ## A342956.P14526276651147041636

`∑{e}[A008472(n+1)+A075254(n+1)-A075653(n+1), #]`
-/

namespace A342956.P14526276651147041636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A075254 (n + 1) - A075653 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A342956.P14526276651147041636

namespace A342956

/-- `∑{e}[A008472(n+1)+A075254(n+1)-A075653(n+1), #]` -/
def P14526276651147041636.Spec : Prop :=
  ∀ n, (P14526276651147041636.a n : ℤ) = A342956 (n + 1)

end A342956

/-! ## A342956.P966131536804958371

`A001222(A276127(A064664(n+1)))`
-/

namespace A342956.P966131536804958371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A276127 (A064664 (n + 1)).toNat).toNat

end

end A342956.P966131536804958371

namespace A342956

/-- `A001222(A276127(A064664(n+1)))` -/
def P966131536804958371.Spec : Prop :=
  ∀ n, P966131536804958371.a n = A342956 (n + 1)

end A342956

/-! ## A342956.P3791351903121921187

`A001222(A123108(2*A001414(n+1)))`
-/

namespace A342956.P3791351903121921187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A123108 (2 * A001414 (n + 1)).toNat).toNat

end

end A342956.P3791351903121921187

namespace A342956

/-- `A001222(A123108(2*A001414(n+1)))` -/
def P3791351903121921187.Spec : Prop :=
  ∀ n, P3791351903121921187.a n = A342956 (n + 1)

end A342956

/-! ## A342956.P15791465596297658084

`A252736(2*(A275314(n+1)+A252736(n+1)))`
-/

namespace A342956.P15791465596297658084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252736 (2 * (A275314 (n + 1) + A252736 (n + 1))).toNat

end

end A342956.P15791465596297658084

namespace A342956

/-- `A252736(2*(A275314(n+1)+A252736(n+1)))` -/
def P15791465596297658084.Spec : Prop :=
  ∀ n, P15791465596297658084.a n = A342956 (n + 1)

end A342956

/-! ## A342956.P15881843475594465994

`∑{e}[A074373(n+1), A032742(#)]`
-/

namespace A342956.P15881843475594465994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A032742 (Nat.factorization (f1 n).natAbs p)

end

end A342956.P15881843475594465994

namespace A342956

/-- `∑{e}[A074373(n+1), A032742(#)]` -/
def P15881843475594465994.Spec : Prop :=
  ∀ n, P15881843475594465994.a n = A342956 (n + 1)

end A342956

/-! ## A342956.P10348814414043607004

`A001222(A123108(A001414((n+1)²)))`
-/

namespace A342956.P10348814414043607004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A123108 (A001414 ((n + 1) ^ 2)).toNat).toNat

end

end A342956.P10348814414043607004

namespace A342956

/-- `A001222(A123108(A001414((n+1)²)))` -/
def P10348814414043607004.Spec : Prop :=
  ∀ n, P10348814414043607004.a n = A342956 (n + 1)

end A342956

/-! ## A342956.P17444910434096218991

`A001222(A137734(A074373(n+1)))`
-/

namespace A342956.P17444910434096218991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A137734 (A074373 (n + 1)).toNat).toNat

end

end A342956.P17444910434096218991

namespace A342956

/-- `A001222(A137734(A074373(n+1)))` -/
def P17444910434096218991.Spec : Prop :=
  ∀ n, P17444910434096218991.a n = A342956 (n + 1)

end A342956

/-! ## A342956.P9402911753998308853

`A001222(A000196(A001414(n+1)²+1))`
-/

namespace A342956.P9402911753998308853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000196 (A001414 (n + 1) ^ 2 + 1).toNat).toNat

end

end A342956.P9402911753998308853

namespace A342956

/-- `A001222(A000196(A001414(n+1)²+1))` -/
def P9402911753998308853.Spec : Prop :=
  ∀ n, P9402911753998308853.a n = A342956 (n + 1)

end A342956

/-!
# A342957: a(n) is the least k such that A342956(k) = n.

The programs for A342957, there is no canonical definition to state claims against.
-/

/-! ## A342957.P5300233762481875868

`A354547(a(n-1)²)` with `a(0)=1, a(1)=2`
-/

namespace A342957.P5300233762481875868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A354547 (a (n - 1) ^ 2).toNat

end

end A342957.P5300233762481875868

/-! ## A342957.P6026376093544141282

`3*A239931(a(n-1))` with `a(0)=1, a(1)=2, a(2)=4`
-/

namespace A342957.P6026376093544141282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 4] fun n a =>
  3 * A239931 (a (n - 1)).toNat

end

end A342957.P6026376093544141282

/-! ## A342957.P10702565425254435320

`A204502(eq[1, A030103(n²)]+1)`
-/

namespace A342957.P10702565425254435320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030103 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204502 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A342957.P10702565425254435320

/-!
# A342959: Number of 1's within a sample word of length 10^n of the infinite Fibonacci word A003842 where n is the sequence index.

The programs for A342959, the canonical program `A342959.P3454453703110628561` is in `Seq.B001.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342959 has offset 0).

The definition of A342959 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342959.P3454453703110628561

`A005206(10^n)`

The canonical program, it is in `Seq.B001.C012`.
-/

namespace A342959

/-- `A005206(10^n)` -/
def P3454453703110628561.Spec : Prop :=
  ∀ n, P3454453703110628561.a n = A342959 n

theorem P3454453703110628561.correct : P3454453703110628561.Spec := by
  intro n
  simp only [A342959]

end A342959

/-! ## A342959.P1682625890261284018

`floor((10^n+1)/ϕ)`
-/

namespace A342959.P1682625890261284018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(10 ^ n + 1 : ℝ) / Real.goldenRatio⌋

end

end A342959.P1682625890261284018

namespace A342959

/-- `floor((10^n+1)/ϕ)` -/
def P1682625890261284018.Spec : Prop :=
  ∀ n, P1682625890261284018.a n = A342959 n

end A342959

/-! ## A342959.P12572683572737082126

`ceil((10^n+1)/ϕ-A007318(∑[n]))`
-/

namespace A342959.P12572683572737082126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n + 1 : ℝ) / Real.goldenRatio - (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)⌉

end

end A342959.P12572683572737082126

namespace A342959

/-- `ceil((10^n+1)/ϕ-A007318(∑[n]))` -/
def P12572683572737082126.Spec : Prop :=
  ∀ n, P12572683572737082126.a n = A342959 n

end A342959

/-! ## A342959.P8319204833659717271

`ceil((10^n+1)/ϕ-A007913((n+1)²))`
-/

namespace A342959.P8319204833659717271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n + 1 : ℝ) / Real.goldenRatio - (A007913 ((n + 1) ^ 2) : ℝ)⌉

end

end A342959.P8319204833659717271

namespace A342959

/-- `ceil((10^n+1)/ϕ-A007913((n+1)²))` -/
def P8319204833659717271.Spec : Prop :=
  ∀ n, P8319204833659717271.a n = A342959 n

end A342959

/-! ## A342959.P15718390605048567723

`ceil((10^n+1)/ϕ-(A000040(n+1)%2)!)`
-/

namespace A342959.P15718390605048567723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(10 ^ n + 1 : ℝ) / Real.goldenRatio - (Nat.factorial (Int.tmod (A000040 (n + 1)) 2).toNat : ℝ)⌉

end

end A342959.P15718390605048567723

namespace A342959

/-- `ceil((10^n+1)/ϕ-(A000040(n+1)%2)!)` -/
def P15718390605048567723.Spec : Prop :=
  ∀ n, P15718390605048567723.a n = A342959 n

end A342959

/-!
# A342961: Primes p such that p + the sum of its prime digits is prime.

The programs for A342961, there is no canonical definition to state claims against.
-/

/-! ## A342961.P4393978401013801892

`A230775(A090391(n+1))`
-/

namespace A342961.P4393978401013801892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230775 (A090391 (n + 1)).toNat

end

end A342961.P4393978401013801892

/-! ## A342961.P13407874202563066133

`p?[or(1, A340855(3*n+5))]`
-/

namespace A342961.P13407874202563066133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A340855 (3 * n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342961.P13407874202563066133

/-!
# A342963: a(n) is the number of sticky polyhexes with 2*n cells.

The programs for A342963, there is no canonical definition to state claims against.
-/

/-! ## A342963.P14406652065144571172

`A072010(A110328(n)-n)`
-/

namespace A342963.P14406652065144571172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072010 (A110328 n - (n : ℤ)).toNat

end

end A342963.P14406652065144571172

/-!
# A342964: Constant term in the expansion of ( (Sum_{j=0..n} x^(2*j+1)+1/x^(2*j+1)) * (Sum_{j=0..n} y^(2*j+1)+1/y^(2*j+1)) - (Sum_{j=0..n-1} x^(2*j+1)+1/x^(2*j+1)) * (Sum_{j=0..n-1} y^(2*j+1)+1/y^(2*j+1)) )^(2*n).

The programs for A342964, there is no canonical definition to state claims against.
-/

/-! ## A342964.P14049797104113245231

`A329066(∑[4*n])`
-/

namespace A342964.P14049797104113245231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329066 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342964.P14049797104113245231

/-! ## A342964.P18316733871780728746

`A329078(2*A005408(n)²)`
-/

namespace A342964.P18316733871780728746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329078 (2 * A005408 n ^ 2).toNat

end

end A342964.P18316733871780728746

/-!
# A342967: a(n) = 1 + Sum_{j=1..n} Product_{k=0..j-1} binomial(2*n-1,n+k) / binomial(2*n-1,k).

The programs for A342967, there is no canonical definition to state claims against.
-/

/-! ## A342967.P10074839536988258918

`A116925(∑[4*n])`
-/

namespace A342967.P10074839536988258918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342967.P10074839536988258918

/-! ## A342967.P4543936774716771910

`record[A003982(n)*A116925(n)]`
-/

namespace A342967.P4543936774716771910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A116925 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342967.P4543936774716771910

/-! ## A342967.P8336115783607522289

`record[A116925(gcd(n, A003987(n)))]`
-/

namespace A342967.P8336115783607522289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116925 (Int.gcd (n : ℤ) (A003987 n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A342967.P8336115783607522289

/-! ## A342967.P6821018083529281274

`A116925(A046092(n))/A007318(∑[n])`
-/

namespace A342967.P6821018083529281274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A116925 (A046092 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A342967.P6821018083529281274

/-! ## A342967.P12063709305143789114

`floor(2/A000040(n+1))!*A116925(A046092(n))`
-/

namespace A342967.P12063709305143789114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial ⌊2 / (A000040 (n + 1) : ℚ)⌋.toNat : ℤ) * A116925 (A046092 n).toNat

end

end A342967.P12063709305143789114

/-!
# A342969: Numbers m such that both m^2-1 and m^2 are refactorable numbers (A033950).

The programs for A342969, there is no canonical definition to state claims against.
-/

/-! ## A342969.P4705899465973542837

`ceil(sqrt(A114617(n+2)))`
-/

namespace A342969.P4705899465973542837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A114617 (n + 2) : ℝ)⌉

end

end A342969.P4705899465973542837

/-! ## A342969.P4764209639923740363

`sqrt(A036898(2*(n+2)))`
-/

namespace A342969.P4764209639923740363
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036898 (2 * (n + 2)) : ℝ)

end

end A342969.P4764209639923740363

/-! ## A342969.P6207941273055262740

`floor(sqrt(A036898(Δ[n²]+3)))`
-/

namespace A342969.P6207941273055262740
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A036898 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3).toNat)

end

end A342969.P6207941273055262740

/-! ## A342969.P4413846484838837499

`A000038(n+1)+sqrt(A036898(Δ[n²]+3))`
-/

namespace A342969.P4413846484838837499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000038 (n + 1) : ℝ) + Real.sqrt (A036898 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + 3).toNat : ℝ)

end

end A342969.P4413846484838837499

/-! ## A342969.P12225932473926321773

`root(A036898(2*(n+2)), A020639(2*(n+1)))`
-/

namespace A342969.P12225932473926321773
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A036898 (2 * (n + 2)) : ℝ) ^ (1 / (A020639 (2 * (n + 1)) : ℝ))

end

end A342969.P12225932473926321773

/-!
# A342971: Non-1-tough simplicial polyhedra with n nodes.

The programs for A342971, there is no canonical definition to state claims against.
-/

/-! ## A342971.P2151382181469691824

`A007030(n+11)-A007031(n+11)`
-/

namespace A342971.P2151382181469691824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007030 (n + 11) - A007031 (n + 11)

end

end A342971.P2151382181469691824

/-!
# A342972: Triangle T(n,k) read by rows: T(n,k) = Product_{j=0..n-1} binomial(n+j,k)/binomial(k+j,k).

The programs for A342972, there is no canonical definition to state claims against.
-/

/-! ## A342972.P7356995110485762639

`A247306(A132789(n+1)+n²%3)`
-/

namespace A342972.P7356995110485762639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247306 (A132789 (n + 1) + ((n ^ 2 % 3 : ℕ) : ℤ)).toNat

end

end A342972.P7356995110485762639

/-! ## A342972.P5883323310078886674

`A035936(A301400(A185868(n+1)))`
-/

namespace A342972.P5883323310078886674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A301400 (A185868 (n + 1)).toNat).toNat

end

end A342972.P5883323310078886674

/-! ## A342972.P17876980878812243240

`C(A338934(n), A124763(A022166(n)))`
-/

namespace A342972.P17876980878812243240
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A338934 n).toNat (A124763 (A022166 n).toNat).toNat

end

end A342972.P17876980878812243240

/-! ## A342972.P14435463677991020233

`A247306(A077028(n)+A001263(n+1))`
-/

namespace A342972.P14435463677991020233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247306 (A077028 n + A001263 (n + 1)).toNat

end

end A342972.P14435463677991020233

/-! ## A342972.P16443630172059307530

`A034298(A045912(n))`
-/

namespace A342972.P16443630172059307530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034298 (A045912 n).toNat

end

end A342972.P16443630172059307530

/-!
# A342973: Let f = A008477; nonsquarefree numbers m such that f(m) <> m or f(f(m)) <> m.

The programs for A342973, there is no canonical definition to state claims against.
-/

/-! ## A342973.P11945648459638591046

`∪[A332785(n+1), A062312(n+3)]`
-/

namespace A342973.P11945648459638591046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332785 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062312 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A342973.P11945648459638591046

/-! ## A342973.P1836476368214244105

`lt[A126314(n), A053223(A059499(n+1))]+1`
-/

namespace A342973.P1836476368214244105
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126314 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053223 (A059499 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A342973.P1836476368214244105

/-! ## A342973.P5066904098922744152

`A126706(n+1)-A184955(A096765(n))`
-/

namespace A342973.P5066904098922744152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) - A184955 (A096765 n).toNat

end

end A342973.P5066904098922744152

/-! ## A342973.P9338055808242278319

`A126706(n+1)-A217153(A093560(n))`
-/

namespace A342973.P9338055808242278319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) - A217153 (A093560 n).toNat

end

end A342973.P9338055808242278319

/-! ## A342973.P11834123903285748098

`A126706(n+1)-A205295(A135278(n))`
-/

namespace A342973.P11834123903285748098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) - A205295 (A135278 n).toNat

end

end A342973.P11834123903285748098

/-!
# A342974: Primes p such that the order of 2 modulo p is not divisible by the largest odd divisor of p - 1.

The programs for A342974, there is no canonical definition to state claims against.
-/

/-! ## A342974.P3738521935126156415

`p?[lcm(2*n+1, A081729(A006694(n)))]`
-/

namespace A342974.P3738521935126156415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (A081729 (A006694 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A342974.P3738521935126156415

/-! ## A342974.P12387609016085878976

`p?[(2*n+1)%(A000120(A037226(n))*A005408(n))]`
-/

namespace A342974.P12387609016085878976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (A000120 (A037226 n).toNat * A005408 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342974.P12387609016085878976

/-!
# A342975: Cubes composed of digits {0, 1, 3}.

The programs for A342975, there is no canonical definition to state claims against.
-/

/-! ## A342975.P1064366689507027090

`A234472(n+1)^3`
-/

namespace A342975.P1064366689507027090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234472 (n + 1) ^ 3

end

end A342975.P1064366689507027090

/-! ## A342975.P18158216896080675913

`floor(A052216(comp[∑[n+2]]+1)/10)^3`
-/

namespace A342975.P18158216896080675913
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052216 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) : ℚ) / 10⌋ ^ 3

end

end A342975.P18158216896080675913

/-! ## A342975.P17802110480973604088

`A007088(lt[a(and(n, n-1))+1, 4])^3` with `a(0)=1`
-/

namespace A342975.P17802110480973604088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) ^ 3

end

end A342975.P17802110480973604088

/-! ## A342975.P15479674663094299076

`A007088(lt[2*a(and(n, n-1)), 5])^3` with `a(0)=1`
-/

namespace A342975.P15479674663094299076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * f1 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n) ^ 3

end

end A342975.P15479674663094299076

/-! ## A342975.P6290930361735830360

`A234472(A132263(n+1))²*A234472(n+1)`
-/

namespace A342975.P6290930361735830360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234472 (A132263 (n + 1)).toNat ^ 2 * A234472 (n + 1)

end

end A342975.P6290930361735830360

/-!
# A342977: Decimal expansion of (Pi - 2) / 4.

The programs for A342977, there is no canonical definition to state claims against.
-/

/-! ## A342977.P5665881893193155781

`A003881(n)%(10/A054977(n))`
-/

namespace A342977.P5665881893193155781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003881 n) (SequenceMachineLib.roundAway (10 / (A054977 n : ℚ)))

end

end A342977.P5665881893193155781

/-! ## A342977.P1090573386697699955

`dr(A003881(n)+A000038(n)²)`
-/

namespace A342977.P1090573386697699955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A003881 n + A000038 n ^ 2)

end

end A342977.P1090573386697699955

/-! ## A342977.P9539250617205753630

`gcd(A000038(n), A003881(A028310(n)))`
-/

namespace A342977.P9539250617205753630
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A003881 (A028310 n).toNat)

end

end A342977.P9539250617205753630

/-! ## A342977.P12742858264111833786

`A000038(n)+A003881(n)*A057427(n)`
-/

namespace A342977.P12742858264111833786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + A003881 n * A057427 n

end

end A342977.P12742858264111833786

/-! ## A342977.P1018715726590253050

`(A020737(n)+A003881(n))%A020737(n)`
-/

namespace A342977.P1018715726590253050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020737 n + A003881 n) (A020737 n)

end

end A342977.P1018715726590253050

/-!
# A342978: Zeroless numbers k ordered according to k/A007954(k), and in case of ties by k, where A007954(k) is the product of digits of k.

The programs for A342978, there is no canonical definition to state claims against.
-/

/-! ## A342978.P18275904782150718549

`A239138(n+1)%A014682(A014760(n))`
-/

namespace A342978.P18275904782150718549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239138 (n + 1)) (A014682 (A014760 n).toNat)

end

end A342978.P18275904782150718549

/-! ## A342978.P1487381283815645175

`A087052(A062388(A179987(A062388(A108971(n+1)))))`
-/

namespace A342978.P1487381283815645175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087052 (A062388 (A179987 (A062388 (A108971 (n + 1)).toNat).toNat).toNat).toNat

end

end A342978.P1487381283815645175

/-! ## A342978.P4501636279077407015

`A342829(A062998(A062998(A051885(A051885(n+1)))))`
-/

namespace A342978.P4501636279077407015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342829 (A062998 (A062998 (A051885 (A051885 (n + 1)).toNat).toNat).toNat).toNat

end

end A342978.P4501636279077407015

/-! ## A342978.P10527725402659383664

`Δ[A118759(n²)]-n`
-/

namespace A342978.P10527725402659383664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - (n : ℤ)

end

end A342978.P10527725402659383664

/-! ## A342978.P1740786575321545276

`A271569(a(n-1)+2)` with `a(0)=1`
-/

namespace A342978.P1740786575321545276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A271569 (a (n - 1) + 2).toNat

end

end A342978.P1740786575321545276

/-!
# A342979: a(1) = 2. For n > 1, a(n) is the smallest prime p > a(n-1) such that a(n-1) + p is a 4-almost prime (A014613).

The programs for A342979, there is no canonical definition to state claims against.
-/

/-! ## A342979.P15823112083323312988

`p?[A176550(2*n+1)-32]`
-/

namespace A342979.P15823112083323312988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176550 (2 * n + 1) - 32

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342979.P15823112083323312988

/-! ## A342979.P17653861726219549934

`p?[A167706(record[A146120(2*n)])]`
-/

namespace A342979.P17653861726219549934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146120 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A342979.P17653861726219549934

/-!
# A342980: Triangle read by rows: T(n,k) is the number of rooted loopless planar maps with n edges, k faces and no isthmuses, n >= 0, k = 1..n+1.

The programs for A342980, there is no canonical definition to state claims against.
-/

/-! ## A342980.P3683144423771369531

`A127321(A271697(n)^3)`
-/

namespace A342980.P3683144423771369531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A271697 n ^ 3).toNat

end

end A342980.P3683144423771369531

/-! ## A342980.P14278685960811296233

`A073200(∑{d}[A382735(n), #])`
-/

namespace A342980.P14278685960811296233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A342980.P14278685960811296233

/-! ## A342980.P2628162795571151310

`A007953(A004197(n)^A049474(n))`
-/

namespace A342980.P2628162795571151310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A004197 n : ℚ) ^ (A049474 n : ℤ))).toNat

end

end A342980.P2628162795571151310

/-! ## A342980.P5712319433238772644

`A007953(A004197(n)^A255338(n))`
-/

namespace A342980.P5712319433238772644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (SequenceMachineLib.roundAway ((A004197 n : ℚ) ^ (A255338 n : ℤ))).toNat

end

end A342980.P5712319433238772644

/-! ## A342980.P11559398180532646939

`A127321(A271697(n)²*A271697(n))`
-/

namespace A342980.P11559398180532646939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A271697 n ^ 2 * A271697 n).toNat

end

end A342980.P11559398180532646939

/-!
# A342981: Triangle read by rows: T(n,k) is the number of rooted planar maps with n edges, k faces and no isthmuses, n >= 0, k = 1..n+1.

The programs for A342981, there is no canonical definition to state claims against.
-/

/-! ## A342981.P11351992435986509136

`A328003(A304336(n))`
-/

namespace A342981.P11351992435986509136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328003 (A304336 n).toNat

end

end A342981.P11351992435986509136

/-! ## A342981.P10211469815760742757

`A127321(A304336(n)²)`
-/

namespace A342981.P10211469815760742757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A304336 n ^ 2).toNat

end

end A342981.P10211469815760742757

/-! ## A342981.P11252522675642476952

`A127321(A304336(n)^2)`
-/

namespace A342981.P11252522675642476952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (A304336 n ^ 2).toNat

end

end A342981.P11252522675642476952

/-! ## A342981.P7424107120971709254

`A163352(∑{d}[A287315(n), #])`
-/

namespace A342981.P7424107120971709254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 (∑ d ∈ Nat.divisors (f1 n).natAbs, d)

end

end A342981.P7424107120971709254

/-! ## A342981.P9581415119065013762

`A291820(round(acot(A202303(3*n+1))+n))`
-/

namespace A342981.P9581415119065013762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291820 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (A202303 (3 * n + 1) : ℝ) + (n : ℝ))).toNat

end

end A342981.P9581415119065013762

/-!
# A342982: Triangle read by rows: T(n,k) is the number of tree-rooted planar maps with n edges and k+1 faces, n >= 0, k = 0..n.

The programs for A342982, the canonical program `A342982.P15708990459696306430` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342982 has offset 0).

The definition of A342982 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342982.P15708990459696306430

`(2*row(n))!/(col(n)!*(col(n)+1)!*(row(n)-col(n))!*(row(n)-col(n)+1)!)`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A342982

/-- `(2*row(n))!/(col(n)!*(col(n)+1)!*(row(n)-col(n))!*(row(n)-col(n)+1)!)` -/
def P15708990459696306430.Spec : Prop :=
  ∀ n, P15708990459696306430.a n = (A342982 n : ℚ)

end A342982

/-! ## A342982.P9426168551780648666

`A078391(n)*A086645(n)`
-/

namespace A342982.P9426168551780648666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078391 n * A086645 n

end

end A342982.P9426168551780648666

namespace A342982

/-- `A078391(n)*A086645(n)` -/
def P9426168551780648666.Spec : Prop :=
  ∀ n, P9426168551780648666.a n = A342982 n

end A342982

/-! ## A342982.P8277751811400125280

`A001263(n+1)*A168256(n)`
-/

namespace A342982.P8277751811400125280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A168256 n

end

end A342982.P8277751811400125280

namespace A342982

/-- `A001263(n+1)*A168256(n)` -/
def P8277751811400125280.Spec : Prop :=
  ∀ n, P8277751811400125280.a n = A342982 n

end A342982

/-! ## A342982.P15832304321140669079

`A000108(A002262(n))*A280580(n)`
-/

namespace A342982.P15832304321140669079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A280580 n

end

end A342982.P15832304321140669079

namespace A342982

/-- `A000108(A002262(n))*A280580(n)` -/
def P15832304321140669079.Spec : Prop :=
  ∀ n, P15832304321140669079.a n = A342982 n

end A342982

/-! ## A342982.P12862049850717756402

`A000108(A003056(n))*A001263(n+1)`
-/

namespace A342982.P12862049850717756402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A003056 n).toNat * A001263 (n + 1)

end

end A342982.P12862049850717756402

namespace A342982

/-- `A000108(A003056(n))*A001263(n+1)` -/
def P12862049850717756402.Spec : Prop :=
  ∀ n, P12862049850717756402.a n = A342982 n

end A342982

/-! ## A342982.P12210194171008277813

`A001263(n+1)*A133336(A057944(n))`
-/

namespace A342982.P12210194171008277813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001263 (n + 1) * A133336 (A057944 n).toNat

end

end A342982.P12210194171008277813

namespace A342982

/-- `A001263(n+1)*A133336(A057944(n))` -/
def P12210194171008277813.Spec : Prop :=
  ∀ n, P12210194171008277813.a n = A342982 n

end A342982

/-! ## A342982.P5327360641711423261

`A001263(n+1)/A007318(n)*A085880(n)`
-/

namespace A342982.P5327360641711423261
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001263 (n + 1) : ℚ) / (A007318 n : ℚ) * (A085880 n : ℚ)

end

end A342982.P5327360641711423261

namespace A342982

/-- `A001263(n+1)/A007318(n)*A085880(n)` -/
def P5327360641711423261.Spec : Prop :=
  ∀ n, P5327360641711423261.a n = (A342982 n : ℚ)

end A342982

/-! ## A342982.P4709435931743397989

`A069466(n)/A003991(n+1)`
-/

namespace A342982.P4709435931743397989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A003991 (n + 1) : ℚ)

end

end A342982.P4709435931743397989

namespace A342982

/-- `A069466(n)/A003991(n+1)` -/
def P4709435931743397989.Spec : Prop :=
  ∀ n, P4709435931743397989.a n = (A342982 n : ℚ)

end A342982

/-! ## A342982.P14656105036747873611

`A069466(n)/A000005(A036561(n))`
-/

namespace A342982.P14656105036747873611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A000005 (A036561 n).toNat : ℚ)

end

end A342982.P14656105036747873611

namespace A342982

/-- `A069466(n)/A000005(A036561(n))` -/
def P14656105036747873611.Spec : Prop :=
  ∀ n, P14656105036747873611.a n = (A342982 n : ℚ)

end A342982

/-!
# A342983: Number of tree-rooted planar maps with n+1 vertices and n+1 faces.

The programs for A342983, the canonical program `A342983.P12634421261340305584` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342983 has offset 0).

The definition of A342983 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342983.P12634421261340305584

`A001246(n)*A001448(n)`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A342983

/-- `A001246(n)*A001448(n)` -/
def P12634421261340305584.Spec : Prop :=
  ∀ n, P12634421261340305584.a n = A342983 n

theorem P12634421261340305584.correct : P12634421261340305584.Spec := by
  intro n
  simp only [A342983]

end A342983

/-! ## A342983.P1024588860433762665

`A000108(n)²*A001448(n)`
-/

namespace A342983.P1024588860433762665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n ^ 2 * A001448 n

end

end A342983.P1024588860433762665

namespace A342983

/-- `A000108(n)²*A001448(n)` -/
def P1024588860433762665.Spec : Prop :=
  ∀ n, P1024588860433762665.a n = A342983 n

end A342983

/-! ## A342983.P7789708799853831717

`(4*n)!/(n!*(n+1)!)²`
-/

namespace A342983.P7789708799853831717
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (4 * n) : ℚ) / ((Nat.factorial n * Nat.factorial (n + 1)) ^ 2 : ℚ)

end

end A342983.P7789708799853831717

namespace A342983

/-- `(4*n)!/(n!*(n+1)!)²` -/
def P7789708799853831717.Spec : Prop :=
  ∀ n, P7789708799853831717.a n = (A342983 n : ℚ)

end A342983

/-! ## A342983.P16213833153726952515

`A342982(∑[4*n])`
-/

namespace A342983.P16213833153726952515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342982 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A342983.P16213833153726952515

namespace A342983

/-- `A342982(∑[4*n])` -/
def P16213833153726952515.Spec : Prop :=
  ∀ n, P16213833153726952515.a n = A342983 n

end A342983

/-! ## A342983.P635153869087640372

`A000108(n)*A359647(n)`
-/

namespace A342983.P635153869087640372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A359647 n

end

end A342983.P635153869087640372

namespace A342983

/-- `A000108(n)*A359647(n)` -/
def P635153869087640372.Spec : Prop :=
  ∀ n, P635153869087640372.a n = A342983 n

theorem P635153869087640372.correct : P635153869087640372.Spec := by
  intro n
  simp only [A342983, Nat.add_sub_cancel, A342983.P635153869087640372.a, A342983.P12634421261340305584.a, A000108, A000108.P17551949696095299361.a, A001246, A001246.P6480413615949402633.a, A001448, A001448.P10146391060409880259.a, A359647, A359647.P17524220049966486840.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A342983

/-!
# A342984: Triangle read by rows: T(n,k) is the number of nonseparable tree-rooted planar maps with n edges and k faces, n >= 0, k = 1..n+1.

The programs for A342984, there is no canonical definition to state claims against.
-/

/-! ## A342984.P9762325523070362149

`A050186(n)+A024153(A154646(n))`
-/

namespace A342984.P9762325523070362149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 n + A024153 (A154646 n).toNat

end

end A342984.P9762325523070362149

/-! ## A342984.P10451887290207558398

`A050167(A059720(n))*A050186(n)`
-/

namespace A342984.P10451887290207558398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050167 (A059720 n).toNat * A050186 n

end

end A342984.P10451887290207558398

/-! ## A342984.P6513227647081528914

`A050186(n)*A120488(A007318(n))`
-/

namespace A342984.P6513227647081528914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050186 n * A120488 (A007318 n).toNat

end

end A342984.P6513227647081528914

/-! ## A342984.P3804131873652739734

`A037475(A050186(n)^A119326(n))`
-/

namespace A342984.P3804131873652739734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037475 (SequenceMachineLib.roundAway ((A050186 n : ℚ) ^ (A119326 n : ℤ))).toNat

end

end A342984.P3804131873652739734

/-! ## A342984.P3453499687398190192

`lcm(A000005(A156581(n)), A050186(n))`
-/

namespace A342984.P3453499687398190192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000005 (A156581 n).toNat) (A050186 n)

end

end A342984.P3453499687398190192

/-!
# A342985: Triangle read by rows: T(n,k) is the number of tree-rooted loopless planar maps with n edges, k faces and no isthmuses, n >= 0, k = 1..n+1.

The programs for A342985, there is no canonical definition to state claims against.
-/

/-! ## A342985.P13181920265820271180

`A102705(A059922(n))*A122083(n)`
-/

namespace A342985.P13181920265820271180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A059922 n).toNat * A122083 n

end

end A342985.P13181920265820271180

/-! ## A342985.P15903830289153055286

`A102705(A309876(n))*A122083(n)`
-/

namespace A342985.P15903830289153055286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102705 (A309876 n).toNat * A122083 n

end

end A342985.P15903830289153055286

/-! ## A342985.P16315250678734299967

`A122350(A334218(n)*A350681(n))`
-/

namespace A342985.P16315250678734299967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (A334218 n * A350681 n).toNat

end

end A342985.P16315250678734299967

/-! ## A342985.P10336275883371949826

`A122350(A144225(n+1)*A334218(n))`
-/

namespace A342985.P10336275883371949826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122350 (A144225 (n + 1) * A334218 n).toNat

end

end A342985.P10336275883371949826

/-! ## A342985.P13531060924772697439

`A316964(A350681(n)^5)+A014473(n)`
-/

namespace A342985.P13531060924772697439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316964 (A350681 n ^ 5).toNat + A014473 n

end

end A342985.P13531060924772697439

/-!
# A342986: Number of tree-rooted loopless planar maps with n edges and no isthmuses.

The programs for A342986, there is no canonical definition to state claims against.
-/

/-! ## A342986.P8414070707203090734

`A240856(A032246(n+8))`
-/

namespace A342986.P8414070707203090734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240856 (A032246 (n + 8)).toNat

end

end A342986.P8414070707203090734

/-! ## A342986.P1705460758119572336

`A354313(n)+∑{e}[A006717(n), #-1]`
-/

namespace A342986.P1705460758119572336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354313 n + ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((Nat.factorization (f1 n).natAbs p : ℤ) - 1)

end

end A342986.P1705460758119572336

/-!
# A342987: Triangle read by rows: T(n,k) is the number of tree-rooted planar maps with n edges, k faces and no isthmuses, n >= 0, k = 1..n+1.

The programs for A342987, there is no canonical definition to state claims against.
-/

/-! ## A342987.P15936752444003906743

`A085791(n)*A285189(A001498(n))`
-/

namespace A342987.P15936752444003906743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085791 n * A285189 (A001498 n).toNat

end

end A342987.P15936752444003906743

/-! ## A342987.P5928374989948461209

`A086429(A090657(n))`
-/

namespace A342987.P5928374989948461209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086429 (A090657 n).toNat

end

end A342987.P5928374989948461209

/-! ## A342987.P2650315480381237535

`A153013(A143396(n))`
-/

namespace A342987.P2650315480381237535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153013 (A143396 n).toNat

end

end A342987.P2650315480381237535

/-! ## A342987.P5135242634214420312

`A181578(and(-9, A090657(n)))`
-/

namespace A342987.P5135242634214420312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (Int.land (-9) (A090657 n)).toNat

end

end A342987.P5135242634214420312

/-! ## A342987.P13550317545780781548

`A181578(A090657(n)+char[12])`
-/

namespace A342987.P13550317545780781548
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181578 (A090657 n + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A342987.P13550317545780781548

/-!
# A342988: Number of tree-rooted planar maps with n edges and no isthmuses.

The programs for A342988, there is no canonical definition to state claims against.
-/

/-! ## A342988.P7821578852623165912

`A189574(or(3, A079754(n+3)))`
-/

namespace A342988.P7821578852623165912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189574 (Int.lor 3 (A079754 (n + 3))).toNat

end

end A342988.P7821578852623165912

/-! ## A342988.P12287009756988555054

`A056847(A227222(n)+A111529(n))`
-/

namespace A342988.P12287009756988555054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A227222 n + A111529 n).toNat

end

end A342988.P12287009756988555054

/-!
# A342991: Left(0)/right(1) turning sequence needed to traverse the Stern-Brocot tree (A007305, A047679) from the root down to e (A001113).

The programs for A342991, the canonical program `A342991.P10388522079383880061` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342991 has offset 1).

The definition of A342991 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342991.P10388522079383880061

`(round(sqrt(xor(1, n+1)))+1)%2`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A342991

/-- `(round(sqrt(xor(1, n+1)))+1)%2` -/
def P10388522079383880061.Spec : Prop :=
  ∀ n, P10388522079383880061.a n = A342991 (n + 1)

theorem P10388522079383880061.correct : P10388522079383880061.Spec := by
  intro n
  simp only [A342991, Nat.add_sub_cancel]

end A342991

/-! ## A342991.P11842345600193464475

`and(1, round(sqrt(xor(1, n+1)))-1)`
-/

namespace A342991.P11842345600193464475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (SequenceMachineLib.roundAway (Real.sqrt (Nat.xor 1 (n + 1) : ℝ)) - 1)

end

end A342991.P11842345600193464475

namespace A342991

/-- `and(1, round(sqrt(xor(1, n+1)))-1)` -/
def P11842345600193464475.Spec : Prop :=
  ∀ n, P11842345600193464475.a n = A342991 (n + 1)

end A342991

/-! ## A342991.P13983126287159535029

`log2(gcd(2, round(sqrt(n+1-(-1)^n))))`
-/

namespace A342991.P13983126287159535029
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Int.gcd 2 (SequenceMachineLib.roundAway (Real.sqrt ((n + 1 : ℤ) - (-1) ^ n : ℝ))) : ℝ)

end

end A342991.P13983126287159535029

namespace A342991

/-- `log2(gcd(2, round(sqrt(n+1-(-1)^n))))` -/
def P13983126287159535029.Spec : Prop :=
  ∀ n, P13983126287159535029.a n = (A342991 (n + 1) : ℝ)

end A342991

/-! ## A342991.P10144574707283955700

`A059841(round(sqrt(xor(1, n+1))))`
-/

namespace A342991.P10144574707283955700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (SequenceMachineLib.roundAway (Real.sqrt (Nat.xor 1 (n + 1) : ℝ))).toNat

end

end A342991.P10144574707283955700

namespace A342991

/-- `A059841(round(sqrt(xor(1, n+1))))` -/
def P10144574707283955700.Spec : Prop :=
  ∀ n, P10144574707283955700.a n = A342991 (n + 1)

end A342991

/-! ## A342991.P17311819854199901447

`(round(sqrt(A004442(n+1)))+1)%2`
-/

namespace A342991.P17311819854199901447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.sqrt (A004442 (n + 1) : ℝ)) + 1) 2

end

end A342991.P17311819854199901447

namespace A342991

/-- `(round(sqrt(A004442(n+1)))+1)%2` -/
def P17311819854199901447.Spec : Prop :=
  ∀ n, P17311819854199901447.a n = A342991 (n + 1)

end A342991

/-! ## A342991.P6183333897585258801

`A059841(round(sqrt(3*n%2+n)))`
-/

namespace A342991.P6183333897585258801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (SequenceMachineLib.roundAway (Real.sqrt ((3 * (n % 2) + n : ℕ) : ℝ))).toNat

end

end A342991.P6183333897585258801

namespace A342991

/-- `A059841(round(sqrt(3*n%2+n)))` -/
def P6183333897585258801.Spec : Prop :=
  ∀ n, P6183333897585258801.a n = A342991 (n + 1)

end A342991

/-! ## A342991.P8111078792819076794

`xor(a(n-1), char[A339267(n+1)])` with `a(0)=1`
-/

namespace A342991.P8111078792819076794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Nat.xor (a (n - 1)) (if ∃ j, f1 j = (n : ℤ) then 1 else 0)

end

end A342991.P8111078792819076794

namespace A342991

/-- `xor(a(n-1), char[A339267(n+1)])` -/
def P8111078792819076794.Spec : Prop :=
  ∀ n, (P8111078792819076794.a n : ℤ) = A342991 (n + 1)

end A342991

/-!
# A342992: Smallest k such that k*n contains only prime digits, or 0 if no such k exists.

The programs for A342992, there is no canonical definition to state claims against.
-/

/-! ## A342992.P12410181193352039562

`A078239(n+1)/(n+1)`
-/

namespace A342992.P12410181193352039562
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078239 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A342992.P12410181193352039562

/-! ## A342992.P13725558038729198050

`A008586(A078239(n+1))%A004767(n)`
-/

namespace A342992.P13725558038729198050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008586 (A078239 (n + 1)).toNat) (A004767 n)

end

end A342992.P13725558038729198050

/-!
# A342993: Numbers of the form prime(i-1)+prime(i+1) that are the average of a twin prime pair.

The programs for A342993, the canonical program `A342993.P18221118977101743061` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342993 has offset 1).

The definition of A342993 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1173 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A342993.P18221118977101743061

`p?[A111255(n+1)-2]+1`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A342993

/-- `p?[A111255(n+1)-2]+1` -/
def P18221118977101743061.Spec : Prop :=
  ∀ n, P18221118977101743061.a n = A342993 (n + 1)

theorem P18221118977101743061.correct : P18221118977101743061.Spec := by
  intro n
  simp only [A342993, Nat.add_sub_cancel]

end A342993

/-! ## A342993.P13766222424824411253

`∩[A014574(n+1), A048448(n)]`
-/

namespace A342993.P13766222424824411253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342993.P13766222424824411253

namespace A342993

/-- `∩[A014574(n+1), A048448(n)]` -/
def P13766222424824411253.Spec : Prop :=
  ∀ n, (P13766222424824411253.a n : ℤ) = A342993 (n + 1)

end A342993

/-! ## A342993.P13570839225075045651

`∩[A217259(n+1), A048448(n)]`
-/

namespace A342993.P13570839225075045651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217259 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342993.P13570839225075045651

namespace A342993

/-- `∩[A217259(n+1), A048448(n)]` -/
def P13570839225075045651.Spec : Prop :=
  ∀ n, (P13570839225075045651.a n : ℤ) = A342993 (n + 1)

end A342993

/-! ## A342993.P1005645846502607509

`∩[A168063(n+1), A176099(n+1)]`
-/

namespace A342993.P1005645846502607509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168063 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176099 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342993.P1005645846502607509

namespace A342993

/-- `∩[A168063(n+1), A176099(n+1)]` -/
def P1005645846502607509.Spec : Prop :=
  ∀ n, (P1005645846502607509.a n : ℤ) = A342993 (n + 1)

end A342993

/-! ## A342993.P15972182234802373805

`∩[A369329(n+1), A048448(n)]`
-/

namespace A342993.P15972182234802373805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369329 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048448 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A342993.P15972182234802373805

namespace A342993

/-- `∩[A369329(n+1), A048448(n)]` -/
def P15972182234802373805.Spec : Prop :=
  ∀ n, (P15972182234802373805.a n : ℤ) = A342993 (n + 1)

end A342993

/-! ## A342993.P18404803153640387960

`A348733(p?[A111255(n+1)-2])`
-/

namespace A342993.P18404803153640387960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111255 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348733 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A342993.P18404803153640387960

namespace A342993

/-- `A348733(p?[A111255(n+1)-2])` -/
def P18404803153640387960.Spec : Prop :=
  ∀ n, P18404803153640387960.a n = A342993 (n + 1)

end A342993

/-!
# A342994: a(n) = (1000^n - 1)*(220/333).

The programs for A342994, the canonical program `A342994.P11622693426980430275` is in `Seq.B000.C038`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A342994 has offset 1).

The definition of A342994 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A342994.P11622693426980430275

`(1000^(n+1)-1)*220/333`

The canonical program, it is in `Seq.B000.C038`.
-/

namespace A342994

/-- `(1000^(n+1)-1)*220/333` -/
def P11622693426980430275.Spec : Prop :=
  ∀ n, P11622693426980430275.a n = (A342994 (n + 1) : ℚ)

end A342994

/-!
# A342996: The number of partitions of the n-th primorial.

The programs for A342996, there is no canonical definition to state claims against.
-/

/-! ## A342996.P6910577131272626658

`A000041(A002110(n))`
-/

namespace A342996.P6910577131272626658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (A002110 n).toNat

end

end A342996.P6910577131272626658

/-!
# A342997: Maximum number of diagonal transversals in a cyclic diagonal Latin square of order 2n+1.

The programs for A342997, there is no canonical definition to state claims against.
-/

/-! ## A342997.P417060620933784326

`A102404(A324508(n+1)-A355270(n+1))`
-/

namespace A342997.P417060620933784326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102404 (A324508 (n + 1) - A355270 (n + 1)).toNat

end

end A342997.P417060620933784326

/-!
# A342998: Minimum number of diagonal transversals in a cyclic diagonal Latin square of order 2n+1.

The programs for A342998, there is no canonical definition to state claims against.
-/

/-! ## A342998.P13631180770653518523

`A376587(A030103(n))`
-/

namespace A342998.P13631180770653518523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376587 (A030103 n).toNat

end

end A342998.P13631180770653518523

/-! ## A342998.P8971927683074877420

`A004526(2*A366332(n))`
-/

namespace A342998.P8971927683074877420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (2 * A366332 n).toNat

end

end A342998.P8971927683074877420

