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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C048
import Seq.B000.C049
import Seq.B000.C050
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
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
# A245300: Triangle T(n,k) = (n+k)*(n+k+1)/2 + k, 0 <= k <= n, read by rows.

The programs for A245300, the canonical program `A245300.P9556212720038646879` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245300 has offset 0).

The definition of A245300 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A245300.anchor (n : ℕ) : (A245300 n : ℚ) = ((SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) : ℚ) / 2 + (SequenceMachineLib.triCol n : ℚ)` in `Proof.A245.A245300`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245300.P9556212720038646879

`(row(n)+col(n))*(row(n)+col(n)+1)/2+col(n)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245300

/-- `(row(n)+col(n))*(row(n)+col(n)+1)/2+col(n)` -/
def P9556212720038646879.Spec : Prop :=
  ∀ n, P9556212720038646879.a n = (A245300 n : ℚ)

end A245300

/-! ## A245300.P5128275311018485887

`col(n)+C(row(n)+col(n)+1, 2)`
-/

namespace A245300.P5128275311018485887
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n + Nat.choose (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) 2

end

end A245300.P5128275311018485887

namespace A245300

/-- `col(n)+C(row(n)+col(n)+1, 2)` -/
def P5128275311018485887.Spec : Prop :=
  ∀ n, (P5128275311018485887.a n : ℤ) = A245300 n

end A245300

/-! ## A245300.P16665531077148548514

`col(n)+(row(n)+col(n))*(row(n)+col(n)+1)/2`
-/

namespace A245300.P16665531077148548514
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triCol n : ℚ) + ((SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n + 1) : ℚ) / 2

end

end A245300.P16665531077148548514

namespace A245300

/-- `col(n)+(row(n)+col(n))*(row(n)+col(n)+1)/2` -/
def P16665531077148548514.Spec : Prop :=
  ∀ n, P16665531077148548514.a n = (A245300 n : ℚ)

end A245300

/-! ## A245300.P3057682863523938859

`floor(A214661(1+n)/2)`
-/

namespace A245300.P3057682863523938859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A214661 (1 + n) : ℚ) / 2⌋

end

end A245300.P3057682863523938859

namespace A245300

/-- `floor(A214661(1+n)/2)` -/
def P3057682863523938859.Spec : Prop :=
  ∀ n, P3057682863523938859.a n = A245300 n

end A245300

/-! ## A245300.P12393587114875306563

`(A214661(n+1)-1)/2`
-/

namespace A245300.P12393587114875306563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214661 (n + 1) - 1 : ℚ) / 2

end

end A245300.P12393587114875306563

namespace A245300

/-- `(A214661(n+1)-1)/2` -/
def P12393587114875306563.Spec : Prop :=
  ∀ n, P12393587114875306563.a n = (A245300 n : ℚ)

end A245300

/-! ## A245300.P14870213593479758937

`A000217(col(n)+row(n))+col(n)`
-/

namespace A245300.P14870213593479758937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (SequenceMachineLib.triCol n + SequenceMachineLib.triRow n) + (SequenceMachineLib.triCol n : ℤ)

end

end A245300.P14870213593479758937

namespace A245300

/-- `A000217(col(n)+row(n))+col(n)` -/
def P14870213593479758937.Spec : Prop :=
  ∀ n, P14870213593479758937.a n = A245300 n

end A245300

/-! ## A245300.P16755753790368955453

`A079904(n)+A112367(n)+n`
-/

namespace A245300.P16755753790368955453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079904 n + (A112367 n + (n : ℤ))

end

end A245300.P16755753790368955453

namespace A245300

/-- `A079904(n)+A112367(n)+n` -/
def P16755753790368955453.Spec : Prop :=
  ∀ n, P16755753790368955453.a n = A245300 n

end A245300

/-! ## A245300.P5772899850779648938

`A182491(n+1)-A130269(n+1)`
-/

namespace A245300.P5772899850779648938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182491 (n + 1) - A130269 (n + 1)

end

end A245300.P5772899850779648938

namespace A245300

/-- `A182491(n+1)-A130269(n+1)` -/
def P5772899850779648938.Spec : Prop :=
  ∀ n, P5772899850779648938.a n = A245300 n

end A245300

/-! ## A245300.P4819012922049742024

`C(A108872(n+1), 2)-A002024(n+1)`
-/

namespace A245300.P4819012922049742024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A108872 (n + 1)).toNat 2 : ℤ) - A002024 (n + 1)

end

end A245300.P4819012922049742024

namespace A245300

/-- `C(A108872(n+1), 2)-A002024(n+1)` -/
def P4819012922049742024.Spec : Prop :=
  ∀ n, P4819012922049742024.a n = A245300 n

end A245300

/-! ## A245300.P15689254504485100405

`(A094727(n+1)²-A004736(n+1))/2`
-/

namespace A245300.P15689254504485100405
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A094727 (n + 1) ^ 2 - A004736 (n + 1) : ℚ) / 2

end

end A245300.P15689254504485100405

namespace A245300

/-- `(A094727(n+1)²-A004736(n+1))/2` -/
def P15689254504485100405.Spec : Prop :=
  ∀ n, P15689254504485100405.a n = (A245300 n : ℚ)

end A245300

/-! ## A245300.P9933508389038708802

`A002262(n)+A000217(A051162(n))`
-/

namespace A245300.P9933508389038708802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000217 (A051162 n).toNat

end

end A245300.P9933508389038708802

namespace A245300

/-- `A002262(n)+A000217(A051162(n))` -/
def P9933508389038708802.Spec : Prop :=
  ∀ n, P9933508389038708802.a n = A245300 n

end A245300

/-! ## A245300.P4691414892126042201

`A002260(n+1)+A000217(A051162(n))-1`
-/

namespace A245300.P4691414892126042201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1) + (A000217 (A051162 n).toNat - 1)

end

end A245300.P4691414892126042201

namespace A245300

/-- `A002260(n+1)+A000217(A051162(n))-1` -/
def P4691414892126042201.Spec : Prop :=
  ∀ n, P4691414892126042201.a n = A245300 n

end A245300

/-! ## A245300.P14146863770538816142

`A000217(A094727(n+1))-A002024(n+1)`
-/

namespace A245300.P14146863770538816142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A094727 (n + 1)).toNat - A002024 (n + 1)

end

end A245300.P14146863770538816142

namespace A245300

/-- `A000217(A094727(n+1))-A002024(n+1)` -/
def P14146863770538816142.Spec : Prop :=
  ∀ n, P14146863770538816142.a n = A245300 n

end A245300

/-! ## A245300.P10528551895219556064

`A002262(n)+A000217(A094727(n+1)-1)`
-/

namespace A245300.P10528551895219556064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000217 (A094727 (n + 1) - 1).toNat

end

end A245300.P10528551895219556064

namespace A245300

/-- `A002262(n)+A000217(A094727(n+1)-1)` -/
def P10528551895219556064.Spec : Prop :=
  ∀ n, P10528551895219556064.a n = A245300 n

end A245300

/-! ## A245300.P15013483568122484456

`A002262(n)+A000217(A003056(n)+A002262(n))`
-/

namespace A245300.P15013483568122484456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n + A000217 (A003056 n + A002262 n).toNat

end

end A245300.P15013483568122484456

namespace A245300

/-- `A002262(n)+A000217(A003056(n)+A002262(n))` -/
def P15013483568122484456.Spec : Prop :=
  ∀ n, P15013483568122484456.a n = A245300 n

end A245300

/-! ## A245300.P2192552942836524592

`A000096(A003056(n)+A002262(n))-A003056(n)`
-/

namespace A245300.P2192552942836524592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (A003056 n + A002262 n).toNat - A003056 n

end

end A245300.P2192552942836524592

namespace A245300

/-- `A000096(A003056(n)+A002262(n))-A003056(n)` -/
def P2192552942836524592.Spec : Prop :=
  ∀ n, P2192552942836524592.a n = A245300 n

end A245300

/-! ## A245300.P17476187713744239959

`A051162(n)+A000217(A051162(n))-A003056(n)`
-/

namespace A245300.P17476187713744239959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051162 n + (A000217 (A051162 n).toNat - A003056 n)

end

end A245300.P17476187713744239959

namespace A245300

/-- `A051162(n)+A000217(A051162(n))-A003056(n)` -/
def P17476187713744239959.Spec : Prop :=
  ∀ n, P17476187713744239959.a n = A245300 n

end A245300

/-! ## A245300.P5333275377147279439

`A000217(A002262(n)+A002024(n+1))-A002024(n+1)`
-/

namespace A245300.P5333275377147279439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A002262 n + A002024 (n + 1)).toNat - A002024 (n + 1)

end

end A245300.P5333275377147279439

namespace A245300

/-- `A000217(A002262(n)+A002024(n+1))-A002024(n+1)` -/
def P5333275377147279439.Spec : Prop :=
  ∀ n, P5333275377147279439.a n = A245300 n

end A245300

/-! ## A245300.P2145760909152796879

`(A056537(A185868(n+1))-1)/2`
-/

namespace A245300.P2145760909152796879
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056537 (A185868 (n + 1)).toNat - 1 : ℚ) / 2

end

end A245300.P2145760909152796879

namespace A245300

/-- `(A056537(A185868(n+1))-1)/2` -/
def P2145760909152796879.Spec : Prop :=
  ∀ n, P2145760909152796879.a n = (A245300 n : ℚ)

end A245300

/-! ## A245300.P5342365208474918979

`A004524(A214661(n+1))`
-/

namespace A245300.P5342365208474918979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A214661 (n + 1)).toNat

end

end A245300.P5342365208474918979

namespace A245300

/-- `A004524(A214661(n+1))` -/
def P5342365208474918979.Spec : Prop :=
  ∀ n, P5342365208474918979.a n = A245300 n

end A245300

/-!
# A245301: a(n) = n*(7*n^2 + 15*n + 8)/6.

The programs for A245301, the canonical program `A245301.P15553775617273499814` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245301 has offset 0).

The definition of A245301 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245301.P13764391876243320628

`ogf((5x+2x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A245301.P13764391876243320628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 2] [1, -4, 6, -4, 1] n

end

end A245301.P13764391876243320628

namespace A245301

/-- `ogf((5x+2x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P13764391876243320628.Spec : Prop :=
  ∀ n, P13764391876243320628.a n = A245301 n

end A245301

/-! ## A245301.P15553775617273499814

`n*(n+1)*(7*n+8)/6`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245301

/-- `n*(n+1)*(7*n+8)/6` -/
def P15553775617273499814.Spec : Prop :=
  ∀ n, P15553775617273499814.a n = (A245301 n : ℚ)

end A245301

/-! ## A245301.P11665486533253240768

`n*(7*n²+15*n+8)/6`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245301.P11665486533253240768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (7 * n ^ 2 + 15 * n + 8) : ℚ) / 6

end

end A245301.P11665486533253240768

namespace A245301

/-- `n*(7*n²+15*n+8)/6` -/
def P11665486533253240768.Spec : Prop :=
  ∀ n, P11665486533253240768.a n = (A245301 n : ℚ)

end A245301

/-! ## A245301.P11139013481954924014

`∑{#}[n, A000217(2*n-#)+#]`
-/

namespace A245301.P11139013481954924014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (A000217 (2 * n - k) + (k : ℤ))

end

end A245301.P11139013481954924014

namespace A245301

/-- `∑{#}[n, A000217(2*n-#)+#]` -/
def P11139013481954924014.Spec : Prop :=
  ∀ n, P11139013481954924014.a n = A245301 n

end A245301

/-! ## A245301.P8982089320725437441

`∑[∑[a(n-1)+7]]` with `a(0)=0, a(1)=5`
-/

namespace A245301.P8982089320725437441
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 5] fun n f2 =>
  f2 (n - 1) + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P8982089320725437441

namespace A245301

/-- `∑[∑[a(n-1)+7]]` -/
def P8982089320725437441.Spec : Prop :=
  ∀ n, (P8982089320725437441.a n : ℤ) = A245301 n

end A245301

/-! ## A245301.P11861549340542588064

`∑[∑[ogf((5x+2x^2)/(1-2x+x^2))]]`
-/

namespace A245301.P11861549340542588064
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P11861549340542588064

namespace A245301

/-- `∑[∑[ogf((5x+2x^2)/(1-2x+x^2))]]` -/
def P11861549340542588064.Spec : Prop :=
  ∀ n, P11861549340542588064.a n = A245301 n

end A245301

/-! ## A245301.P1537110377935719426

`∑[2-∑[a(n-1)-7]]` with `a(0)=2`
-/

namespace A245301.P1537110377935719426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  f2 (n - 1) - 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P1537110377935719426

namespace A245301

/-- `∑[2-∑[a(n-1)-7]]` -/
def P1537110377935719426.Spec : Prop :=
  ∀ n, P1537110377935719426.a n = A245301 n

end A245301

/-! ## A245301.P8381823826986797485

`∑[(2*n)²-(C(n, 2)-n)]`
-/

namespace A245301.P8381823826986797485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n) ^ 2 : ℤ) - ((Nat.choose n 2 : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P8381823826986797485

namespace A245301

/-- `∑[(2*n)²-(C(n, 2)-n)]` -/
def P8381823826986797485.Spec : Prop :=
  ∀ n, P8381823826986797485.a n = A245301 n

end A245301

/-! ## A245301.P14041550957678158379

`C(n+2, 3)+n*(n+1)²`
-/

namespace A245301.P14041550957678158379
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 3 + n * (n + 1) ^ 2

end

end A245301.P14041550957678158379

namespace A245301

/-- `C(n+2, 3)+n*(n+1)²` -/
def P14041550957678158379.Spec : Prop :=
  ∀ n, (P14041550957678158379.a n : ℤ) = A245301 n

end A245301

/-! ## A245301.P1596364678393022626

`∑[2*C(2*n+1, 2)-∑[n]]`
-/

namespace A245301.P1596364678393022626
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.choose (2 * n + 1) 2 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P1596364678393022626

namespace A245301

/-- `∑[2*C(2*n+1, 2)-∑[n]]` -/
def P1596364678393022626.Spec : Prop :=
  ∀ n, P1596364678393022626.a n = A245301 n

end A245301

/-! ## A245301.P12919129028584813526

`∑[2*lcm(n, 2*n+1)-∑[n]]`
-/

namespace A245301.P12919129028584813526
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.lcm n (2 * n + 1) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P12919129028584813526

namespace A245301

/-- `∑[2*lcm(n, 2*n+1)-∑[n]]` -/
def P12919129028584813526.Spec : Prop :=
  ∀ n, P12919129028584813526.a n = A245301 n

end A245301

/-! ## A245301.P733062865966996674

`∑[C(2*n, 2)]+(n+3)*∑[n]`
-/

namespace A245301.P733062865966996674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n + 3) * (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A245301.P733062865966996674

namespace A245301

/-- `∑[C(2*n, 2)]+(n+3)*∑[n]` -/
def P733062865966996674.Spec : Prop :=
  ∀ n, (P733062865966996674.a n : ℤ) = A245301 n

end A245301

/-! ## A245301.P12093682607147331830

`∑[(2*n+1)*2*n-∑[gcd(n, 2*n)]]`
-/

namespace A245301.P12093682607147331830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * (2 * n) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P12093682607147331830

namespace A245301

/-- `∑[(2*n+1)*2*n-∑[gcd(n, 2*n)]]` -/
def P12093682607147331830.Spec : Prop :=
  ∀ n, P12093682607147331830.a n = A245301 n

end A245301

/-! ## A245301.P12365329003923685232

`∑[(2*n+1)*and(2*n+1, 2*n)-∑[n]]`
-/

namespace A245301.P12365329003923685232
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n + 1) * Nat.land (2 * n + 1) (2 * n) : ℤ) - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P12365329003923685232

namespace A245301

/-- `∑[(2*n+1)*and(2*n+1, 2*n)-∑[n]]` -/
def P12365329003923685232.Spec : Prop :=
  ∀ n, P12365329003923685232.a n = A245301 n

end A245301

/-! ## A245301.P4219878094804927700

`∑[A186029(n)]`
-/

namespace A245301.P4219878094804927700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P4219878094804927700

namespace A245301

/-- `∑[A186029(n)]` -/
def P4219878094804927700.Spec : Prop :=
  ∀ n, P4219878094804927700.a n = A245301 n

end A245301

/-! ## A245301.P12362047908040749482

`∑[A389615(n)-1]`
-/

namespace A245301.P12362047908040749482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389615 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P12362047908040749482

namespace A245301

/-- `∑[A389615(n)-1]` -/
def P12362047908040749482.Spec : Prop :=
  ∀ n, P12362047908040749482.a n = A245301 n

end A245301

/-! ## A245301.P3108597156675971296

`∑[A022265(n)+n]`
-/

namespace A245301.P3108597156675971296
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022265 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P3108597156675971296

namespace A245301

/-- `∑[A022265(n)+n]` -/
def P3108597156675971296.Spec : Prop :=
  ∀ n, P3108597156675971296.a n = A245301 n

end A245301

/-! ## A245301.P3539010546037465511

`A304993(n)+∑[n]`
-/

namespace A245301.P3539010546037465511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304993 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A245301.P3539010546037465511

namespace A245301

/-- `A304993(n)+∑[n]` -/
def P3539010546037465511.Spec : Prop :=
  ∀ n, P3539010546037465511.a n = A245301 n

end A245301

/-! ## A245301.P13890357274546528128

`∑[A179986(n)-n]`
-/

namespace A245301.P13890357274546528128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179986 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245301.P13890357274546528128

namespace A245301

/-- `∑[A179986(n)-n]` -/
def P13890357274546528128.Spec : Prop :=
  ∀ n, P13890357274546528128.a n = A245301 n

end A245301

/-! ## A245301.P2596445439447637220

`A255687(n)-∑[n]`
-/

namespace A245301.P2596445439447637220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255687 n - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A245301.P2596445439447637220

namespace A245301

/-- `A255687(n)-∑[n]` -/
def P2596445439447637220.Spec : Prop :=
  ∀ n, P2596445439447637220.a n = A245301 n

end A245301

/-!
# A245302: Curvature (truncated to integer) of a circle inscribed between a unit circle and a vertex of a circumscribed regular n-gon.

The programs for A245302, there is no canonical definition to state claims against.
-/

/-! ## A245302.P16779134680271876454

`floor((1+cos(π/(n+3)))/(1-cos(π/(n+3))))`
-/

namespace A245302.P16779134680271876454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(1 + Real.cos (Real.pi / (n + 3 : ℝ))) / (1 - Real.cos (Real.pi / (n + 3 : ℝ)))⌋

end

end A245302.P16779134680271876454

/-! ## A245302.P1610150045082644370

`A331903(2*n+3)-1`
-/

namespace A245302.P1610150045082644370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331903 (2 * n + 3) - 1

end

end A245302.P1610150045082644370

/-! ## A245302.P2435149420784002409

`Δ[∑[A331903(Δ[n²])]-n]`
-/

namespace A245302.P2435149420784002409
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331903 ((f3 (n + 1) : ℤ) - (f3 n : ℤ)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245302.P2435149420784002409

/-! ## A245302.P5519073223843662407

`∑[abs(Δ[A331903(2*n+1)])]`
-/

namespace A245302.P5519073223843662407
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331903 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245302.P5519073223843662407

/-! ## A245302.P6119891245841033020

`A065802(n+3)+char[2*n+5]`
-/

namespace A245302.P6119891245841033020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065802 (n + 3) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A245302.P6119891245841033020

/-! ## A245302.P7475380909197301513

`A023445(A331903(2*n+3)+2)`
-/

namespace A245302.P7475380909197301513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A331903 (2 * n + 3) + 2).toNat

end

end A245302.P7475380909197301513

/-! ## A245302.P6807876008840645399

`abs(A331903(2*n+3)+A008683(A109833(n+2)))`
-/

namespace A245302.P6807876008840645399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A331903 (2 * n + 3) + A008683 (A109833 (n + 2)).toNat|

end

end A245302.P6807876008840645399

/-!
# A245303: Product of a prime and a power (exponent at least 2, base at least 1).

The programs for A245303, there is no canonical definition to state claims against.
-/

/-! ## A245303.P6012992327646524243

`comp[A240938(n+1)]`
-/

namespace A245303.P6012992327646524243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240938 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A245303.P6012992327646524243

/-! ## A245303.P1618963761923210538

`lt[A007913((5*n+7)*char[A240938(n+1)]+1), 2]`
-/

namespace A245303.P1618963761923210538
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240938 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 ((5 * n + 7) * (if ∃ j, f2 j = (n : ℤ) then 1 else 0) + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n

end

end A245303.P1618963761923210538

/-! ## A245303.P15046470624690405426

`∩[comp[A066048(n+1)], A351294(n+1)]`
-/

namespace A245303.P15046470624690405426
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351294 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A245303.P15046470624690405426

/-! ## A245303.P1784836165364045636

`∩[comp[A066048(n+1)], A357873(n+1)]`
-/

namespace A245303.P1784836165364045636
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357873 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A245303.P1784836165364045636

/-! ## A245303.P10595669849039384793

`eq[1, ∏{e}[A228469(A318469(n+1)), #]]+1`
-/

namespace A245303.P10595669849039384793
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228469 (A318469 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A245303.P10595669849039384793

/-!
# A245304: Numbers m such that m+1, m+3, m+7, m+9 and m+13 are all primes.

The programs for A245304, there is no canonical definition to state claims against.
-/

/-! ## A245304.P3322331568308007487

`A022006(n+1)-1`
-/

namespace A245304.P3322331568308007487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022006 (n + 1) - 1

end

end A245304.P3322331568308007487

/-! ## A245304.P13352224997030610946

`xor(1, A022006(A000027(n+1)))`
-/

namespace A245304.P13352224997030610946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A022006 (A000027 (n + 1)).toNat)

end

end A245304.P13352224997030610946

/-! ## A245304.P13585035664884410117

`xor(1, A022006(A026741(2*(n+1))))`
-/

namespace A245304.P13585035664884410117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A022006 (A026741 (2 * (n + 1))).toNat)

end

end A245304.P13585035664884410117

/-! ## A245304.P13430059832467247557

`A153881(n+2)+A022006(n+1)`
-/

namespace A245304.P13430059832467247557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (n + 2) + A022006 (n + 1)

end

end A245304.P13430059832467247557

/-! ## A245304.P17340475458541496595

`xor(A008836(n+1)², A022006(n+1))`
-/

namespace A245304.P17340475458541496595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A008836 (n + 1) ^ 2) (A022006 (n + 1))

end

end A245304.P17340475458541496595

/-! ## A245304.P7866410199266372387

`xor(A000035(2*n+1), A022006(n+1))`
-/

namespace A245304.P7866410199266372387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000035 (2 * n + 1)) (A022006 (n + 1))

end

end A245304.P7866410199266372387

/-! ## A245304.P7901766607369904623

`∩[A007530(n+1), A086140(n+1)]-1`
-/

namespace A245304.P7901766607369904623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A245304.P7901766607369904623

/-! ## A245304.P7578406494828233342

`xor(A001221(A002374(n+3)), A022006(n+1))`
-/

namespace A245304.P7578406494828233342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A001221 (A002374 (n + 3)).toNat) (A022006 (n + 1))

end

end A245304.P7578406494828233342

/-! ## A245304.P5584931406649404799

`A090286(n+1)-7`
-/

namespace A245304.P5584931406649404799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090286 (n + 1) - 7

end

end A245304.P5584931406649404799

/-! ## A245304.P15852509186718467845

`∩[A007530(n+1), A233540(n+1)]-1`
-/

namespace A245304.P15852509186718467845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A245304.P15852509186718467845

/-! ## A245304.P8809414197156003675

`∩[A086140(n+1), A233540(n+1)]-1`
-/

namespace A245304.P8809414197156003675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A245304.P8809414197156003675

/-! ## A245304.P5776128798129054000

`∩[A007530(n+1), A172454(n+1)]-1`
-/

namespace A245304.P5776128798129054000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A245304.P5776128798129054000

/-! ## A245304.P16988151228626530009

`∩[A086140(n+1), A172454(n+1)]-1`
-/

namespace A245304.P16988151228626530009
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A245304.P16988151228626530009

/-! ## A245304.P3323958767983889460

`∩[A172454(n+1), A233540(n+1)]-1`
-/

namespace A245304.P3323958767983889460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A245304.P3323958767983889460

/-! ## A245304.P8750674548920927427

`xor(gcd(5, A000230(n)), A022006(n+1))`
-/

namespace A245304.P8750674548920927427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.gcd 5 (A000230 n) : ℤ) (A022006 (n + 1))

end

end A245304.P8750674548920927427

/-! ## A245304.P2967556877931949161

`∩[A053778(n+1), A086140(n+1)]-1`
-/

namespace A245304.P2967556877931949161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A245304.P2967556877931949161

/-! ## A245304.P7233886445479574359

`∩[A053778(n+1), A172454(n+1)]-1`
-/

namespace A245304.P7233886445479574359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172454 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A245304.P7233886445479574359

/-! ## A245304.P3271282182623157879

`∩[A053778(n+1), A233540(n+1)]-1`
-/

namespace A245304.P3271282182623157879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233540 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A245304.P3271282182623157879

/-! ## A245304.P1544258319424150722

`∩[A086140(n+1), A089628(n+3)]-1`
-/

namespace A245304.P1544258319424150722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086140 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089628 (n + 3)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A245304.P1544258319424150722

/-!
# A245305: Numbers k such that 4k+1, 4k+3, and 6k+5 are all primes.

The programs for A245305, the canonical program `A245305.P12336053277035372019` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245305 has offset 1).

The definition of A245305 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245305.P6595546310919456489

`∩[A059325(n+1), A123986(n+1)]`
-/

namespace A245305.P6595546310919456489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059325 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245305.P6595546310919456489

namespace A245305

/-- `∩[A059325(n+1), A123986(n+1)]` -/
def P6595546310919456489.Spec : Prop :=
  ∀ n, (P6595546310919456489.a n : ℤ) = A245305 (n + 1)

end A245305

/-! ## A245305.P12336053277035372019

`floor(p?[A158709(n+1)-2]/4)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A245305

/-- `floor(p?[A158709(n+1)-2]/4)` -/
def P12336053277035372019.Spec : Prop :=
  ∀ n, P12336053277035372019.a n = A245305 (n + 1)

theorem P12336053277035372019.correct : P12336053277035372019.Spec := by
  intro n
  simp only [A245305, Nat.add_sub_cancel]

end A245305

/-! ## A245305.P17757211827254850276

`round(p?[A158709(n+2)-2]/4)`
-/

namespace A245305.P17757211827254850276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158709 (n + 2) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 4)

end

end A245305.P17757211827254850276

namespace A245305

/-- `round(p?[A158709(n+2)-2]/4)` -/
def P17757211827254850276.Spec : Prop :=
  ∀ n, P17757211827254850276.a n = A245305 (n + 1)

end A245305

/-! ## A245305.P11153452251397696229

`A033879(p?[A158709(n+1)-2])/4`
-/

namespace A245305.P11153452251397696229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158709 (n + 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033879 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 4

end

end A245305.P11153452251397696229

namespace A245305

/-- `A033879(p?[A158709(n+1)-2])/4` -/
def P11153452251397696229.Spec : Prop :=
  ∀ n, P11153452251397696229.a n = (A245305 (n + 1) : ℚ)

end A245305

/-! ## A245305.P10682459136506333008

`A002265(p?[A158709(n+1)-2])`
-/

namespace A245305.P10682459136506333008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158709 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A245305.P10682459136506333008

namespace A245305

/-- `A002265(p?[A158709(n+1)-2])` -/
def P10682459136506333008.Spec : Prop :=
  ∀ n, P10682459136506333008.a n = A245305 (n + 1)

end A245305

/-!
# A245306: a(n) = Fibonacci(n)^2+1.

The programs for A245306, the canonical program `A245306.P10470454293037442129` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245306 has offset 0).

The definition of A245306 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(n)²+1` (program `A245306.P10470454293037442129`, by `A245306.P10470454293037442129.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245306.P2131898383274556728

`ogf((1-x-4x^2+2x^3)/(1-3x+3x^3-x^4))`
-/

namespace A245306.P2131898383274556728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -4, 2] [1, -3, 0, 3, -1] n

end

end A245306.P2131898383274556728

namespace A245306

/-- `ogf((1-x-4x^2+2x^3)/(1-3x+3x^3-x^4))` -/
def P2131898383274556728.Spec : Prop :=
  ∀ n, P2131898383274556728.a n = A245306 n

end A245306

/-! ## A245306.P10234298044598893059

`A007598(n)+1`
-/

namespace A245306.P10234298044598893059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007598 n + 1

end

end A245306.P10234298044598893059

namespace A245306

/-- `A007598(n)+1` -/
def P10234298044598893059.Spec : Prop :=
  ∀ n, P10234298044598893059.a n = A245306 n

end A245306

/-! ## A245306.P10470454293037442129

`A000045(n)²+1`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245306

/-- `A000045(n)²+1` -/
def P10470454293037442129.Spec : Prop :=
  ∀ n, P10470454293037442129.a n = A245306 n

theorem P10470454293037442129.correct : P10470454293037442129.Spec := by
  intro n
  simp only [A245306]

end A245306

/-! ## A245306.P2239952905707301047

`round(ϕ^n/sqrt(5))²+1`
-/

namespace A245306.P2239952905707301047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2 + 1

end

end A245306.P2239952905707301047

namespace A245306

/-- `round(ϕ^n/sqrt(5))²+1` -/
def P2239952905707301047.Spec : Prop :=
  ∀ n, P2239952905707301047.a n = A245306 n

end A245306

/-! ## A245306.P7018034998179891438

`-xor(round(ϕ^n/sqrt(5))², -1)`
-/

namespace A245306.P7018034998179891438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) ^ 2) (-1)

end

end A245306.P7018034998179891438

namespace A245306

/-- `-xor(round(ϕ^n/sqrt(5))², -1)` -/
def P7018034998179891438.Spec : Prop :=
  ∀ n, P7018034998179891438.a n = A245306 n

end A245306

/-! ## A245306.P12762504069344444565

`(3-a(n-3)/a(n-2))*a(n-1)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A245306.P12762504069344444565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  (3 - a (n - 3) / a (n - 2)) * a (n - 1)

end

end A245306.P12762504069344444565

namespace A245306

/-- `(3-a(n-3)/a(n-2))*a(n-1)` -/
def P12762504069344444565.Spec : Prop :=
  ∀ n, P12762504069344444565.a n = (A245306 n : ℚ)

end A245306

/-! ## A245306.P2903477718161552622

`(A175395(n)+2)/2`
-/

namespace A245306.P2903477718161552622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A175395 n + 2 : ℚ) / 2

end

end A245306.P2903477718161552622

namespace A245306

/-- `(A175395(n)+2)/2` -/
def P2903477718161552622.Spec : Prop :=
  ∀ n, P2903477718161552622.a n = (A245306 n : ℚ)

theorem P2903477718161552622.correct : P2903477718161552622.Spec := by
  intro n
  simp only [A245306, Nat.add_sub_cancel, A245306.P2903477718161552622.a, A245306.P10470454293037442129.a, A000045, A000045.P11838749114346432762.a, A175395, A175395.P1994188799197197583.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245306

/-! ## A245306.P14335543869138608709

`(A382845(n)+3)/2`
-/

namespace A245306.P14335543869138608709
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A382845 n + 3 : ℚ) / 2

end

end A245306.P14335543869138608709

namespace A245306

/-- `(A382845(n)+3)/2` -/
def P14335543869138608709.Spec : Prop :=
  ∀ n, P14335543869138608709.a n = (A245306 n : ℚ)

theorem P14335543869138608709.correct : P14335543869138608709.Spec := by
  intro n
  simp only [A245306, Nat.add_sub_cancel, A245306.P14335543869138608709.a, A245306.P10470454293037442129.a, A000045, A000045.P11838749114346432762.a, A382845, A382845.P16632734929146409984.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245306

/-! ## A245306.P11101744750443872925

`∑[abs(Δ[A212804(n)²])]`
-/

namespace A245306.P11101744750443872925
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245306.P11101744750443872925

namespace A245306

/-- `∑[abs(Δ[A212804(n)²])]` -/
def P11101744750443872925.Spec : Prop :=
  ∀ n, P11101744750443872925.a n = A245306 n

end A245306

/-! ## A245306.P17207973975021666024

`∑[abs(∑[A111571(2*n)])]`
-/

namespace A245306.P17207973975021666024
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111571 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f2 j|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245306.P17207973975021666024

namespace A245306

/-- `∑[abs(∑[A111571(2*n)])]` -/
def P17207973975021666024.Spec : Prop :=
  ∀ n, P17207973975021666024.a n = A245306 n

end A245306

/-! ## A245306.P17780636084578464854

`(A392415(n+1)+1)/2`
-/

namespace A245306.P17780636084578464854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A392415 (n + 1) + 1 : ℚ) / 2

end

end A245306.P17780636084578464854

namespace A245306

/-- `(A392415(n+1)+1)/2` -/
def P17780636084578464854.Spec : Prop :=
  ∀ n, P17780636084578464854.a n = (A245306 n : ℚ)

end A245306

/-! ## A245306.P11149644879820440836

`∑[A000045(2*(n-1))-a(n-1)]` with `a(0)=1, a(1)=1`
-/

namespace A245306.P11149644879820440836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A000045 (2 * ((n : ℤ) - 1)).toNat - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245306.P11149644879820440836

namespace A245306

/-- `∑[A000045(2*(n-1))-a(n-1)]` -/
def P11149644879820440836.Spec : Prop :=
  ∀ n, P11149644879820440836.a n = A245306 n

end A245306

/-! ## A245306.P5153731091357745754

`A087123(n)*A097131(n)`
-/

namespace A245306.P5153731091357745754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087123 n * A097131 n

end

end A245306.P5153731091357745754

namespace A245306

/-- `A087123(n)*A097131(n)` -/
def P5153731091357745754.Spec : Prop :=
  ∀ n, P5153731091357745754.a n = A245306 n

end A245306

/-! ## A245306.P15790437216370563760

`xor(A007598(n), A169609(n))`
-/

namespace A245306.P15790437216370563760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A007598 n) (A169609 n)

end

end A245306.P15790437216370563760

namespace A245306

/-- `xor(A007598(n), A169609(n))` -/
def P15790437216370563760.Spec : Prop :=
  ∀ n, P15790437216370563760.a n = A245306 n

end A245306

/-! ## A245306.P9848235800597611784

`A097131(n+1)*A097131(n)`
-/

namespace A245306.P9848235800597611784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097131 (n + 1) * A097131 n

end

end A245306.P9848235800597611784

namespace A245306

/-- `A097131(n+1)*A097131(n)` -/
def P9848235800597611784.Spec : Prop :=
  ∀ n, P9848235800597611784.a n = A245306 n

end A245306

/-! ## A245306.P3602034737852112415

`∑[A000045(abs(2-n))*A000045(n+1)]`
-/

namespace A245306.P3602034737852112415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |2 - (n : ℤ)|.toNat * A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245306.P3602034737852112415

namespace A245306

/-- `∑[A000045(abs(2-n))*A000045(n+1)]` -/
def P3602034737852112415.Spec : Prop :=
  ∀ n, P3602034737852112415.a n = A245306 n

end A245306

/-! ## A245306.P12640716800691567361

`ceil((A000032(2*n)+3)/5)`
-/

namespace A245306.P12640716800691567361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000032 (2 * n) + 3 : ℚ) / 5⌉

end

end A245306.P12640716800691567361

namespace A245306

/-- `ceil((A000032(2*n)+3)/5)` -/
def P12640716800691567361.Spec : Prop :=
  ∀ n, P12640716800691567361.a n = A245306 n

end A245306

/-! ## A245306.P16763833003610190832

`Δ[Δ[A176222(n+3)+A212804(n)²]]`
-/

namespace A245306.P16763833003610190832
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176222 (n + 3) + A212804 n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245306.P16763833003610190832

namespace A245306

/-- `Δ[Δ[A176222(n+3)+A212804(n)²]]` -/
def P16763833003610190832.Spec : Prop :=
  ∀ n, P16763833003610190832.a n = A245306 n

end A245306

/-!
# A245307: G.f. satisfies: A(x) = A( x/A(x) )^2 / (1+x).

The programs for A245307, there is no canonical definition to state claims against.
-/

/-! ## A245307.P17065901624952789199

`A068050(A000354(n)+1)`
-/

namespace A245307.P17065901624952789199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068050 (A000354 n + 1).toNat

end

end A245307.P17065901624952789199

/-! ## A245307.P14079988959098050337

`A103221(A036243(n)+1)`
-/

namespace A245307.P14079988959098050337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A036243 n + 1).toNat

end

end A245307.P14079988959098050337

/-!
# A245308: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n/n! * ( d/dx x*A(x)^n ) / A(x)^n.

The programs for A245308, there is no canonical definition to state claims against.
-/

/-! ## A245308.P8510923550156779912

`A110654(A259795(n)+A002866(n))`
-/

namespace A245308.P8510923550156779912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A259795 n + A002866 n).toNat

end

end A245308.P8510923550156779912

/-! ## A245308.P16450918590222687752

`A028242(A216507(n)*A270863(n))`
-/

namespace A245308.P16450918590222687752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (A216507 n * A270863 n).toNat

end

end A245308.P16450918590222687752

/-!
# A245309: E.g.f. satisfies: A(x) = Sum_{n>=0} x^n/n! * (d/dx x*A(x)^n)^n / A(x)^(n^2).

The programs for A245309, there is no canonical definition to state claims against.
-/

/-! ## A245309.P2920300642392736386

`A036467(A028362(n))`
-/

namespace A245309.P2920300642392736386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 (A028362 n).toNat

end

end A245309.P2920300642392736386

/-! ## A245309.P4357114515205850993

`A036467(∏[A018162(n)])`
-/

namespace A245309.P4357114515205850993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018162 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036467 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245309.P4357114515205850993

/-!
# A245310: G.f. A(x) satisfies: [x^(n+1)] A(x)^n = n*([x^(n-1)] A(x)^n) for n>=1.

The programs for A245310, there is no canonical definition to state claims against.
-/

/-! ## A245310.P17459502213031359014

`ceil(A001005(3*n+4)/A239663(2*(n+2)))`
-/

namespace A245310.P17459502213031359014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001005 (3 * n + 4) : ℚ) / (A239663 (2 * (n + 2)) : ℚ)⌉

end

end A245310.P17459502213031359014

/-! ## A245310.P10477429206528430291

`A051742(A362760(n)+1)`
-/

namespace A245310.P10477429206528430291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051742 (A362760 n + 1).toNat

end

end A245310.P10477429206528430291

/-! ## A245310.P1236453940457430821

`A173304(A025197(n+2))`
-/

namespace A245310.P1236453940457430821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173304 (A025197 (n + 2)).toNat

end

end A245310.P1236453940457430821

/-! ## A245310.P10444463054814777727

`A350969((A350969(n+1)+1)*a(n-1))` with `a(0)=1`
-/

namespace A245310.P10444463054814777727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A350969 ((A350969 (n + 1) + 1) * a (n - 1)).toNat

end

end A245310.P10444463054814777727

/-!
# A245311: G.f. satisfies: A(x) = 1 + x*A(x) + x^2*A(x)^2 + x^3*A(x)*A'(x).

The programs for A245311, there is no canonical definition to state claims against.
-/

/-! ## A245311.P16605925126804140975

`xor(A022564(A140140(n+1)), A279553(n))`
-/

namespace A245311.P16605925126804140975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A022564 (A140140 (n + 1)).toNat) (A279553 n)

end

end A245311.P16605925126804140975

/-! ## A245311.P15370230551232884863

`A049093(A323926(n+1)-A323851(n+1))`
-/

namespace A245311.P15370230551232884863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A323926 (n + 1) - A323851 (n + 1)).toNat

end

end A245311.P15370230551232884863

/-! ## A245311.P888553365497303171

`A049093(A003104(n+1)+A323926(n+1)-A038142(n+1))`
-/

namespace A245311.P888553365497303171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A003104 (n + 1) + (A323926 (n + 1) - A038142 (n + 1))).toNat

end

end A245311.P888553365497303171

/-! ## A245311.P9901412336457153184

`A049093(A323930(n+1)-(A323929(n+1)+A323851(n+1)))`
-/

namespace A245311.P9901412336457153184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (A323930 (n + 1) - (A323929 (n + 1) + A323851 (n + 1))).toNat

end

end A245311.P9901412336457153184

/-!
# A245312: G.f. A(x) satisfies: [x^(n+1)] A(x)^n = n^2 * ( [x^(n-1)] A(x)^n ) for n>=1.

The programs for A245312, there is no canonical definition to state claims against.
-/

/-! ## A245312.P974581436670083251

`A049317(2*n!)`
-/

namespace A245312.P974581436670083251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (2 * Nat.factorial n)

end

end A245312.P974581436670083251

/-! ## A245312.P2756698763016764827

`A049317(∏[a(n-1)+1])` with `a(0)=2, a(1)=1`
-/

namespace A245312.P2756698763016764827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049317 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A245312.P2756698763016764827

/-! ## A245312.P18115615459591531445

`A373847(A289599(n))`
-/

namespace A245312.P18115615459591531445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373847 (A289599 n).toNat

end

end A245312.P18115615459591531445

/-!
# A245313: G.f. satisfies: A(x) = 1 + x*A(x) + x^2*A(x)^2 + 3*x^3*A(x)*A'(x) + x^4*A(x)*A''(x).

The programs for A245313, there is no canonical definition to state claims against.
-/

/-! ## A245313.P13402087311828831444

`A123108(A270707(n))+A053645(n+1)`
-/

namespace A245313.P13402087311828831444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A270707 n).toNat + A053645 (n + 1)

end

end A245313.P13402087311828831444

/-! ## A245313.P16696566107866407058

`A195177(A152379(n+1)+A151498(n))`
-/

namespace A245313.P16696566107866407058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195177 (A152379 (n + 1) + A151498 n).toNat

end

end A245313.P16696566107866407058

/-!
# A245317: Concatenate n-th composite integer with n.

The programs for A245317, there is no canonical definition to state claims against.
-/

/-! ## A245317.P18150374538144273420

`A008592(A002808(n+1)^A250664(n))+n+1`
-/

namespace A245317.P18150374538144273420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 (SequenceMachineLib.roundAway ((A002808 (n + 1) : ℚ) ^ (A250664 n : ℤ))).toNat + (n + 1 : ℤ)

end

end A245317.P18150374538144273420

/-!
# A245319: Numbers k that divide 2^k + 8.

The programs for A245319, there is no canonical definition to state claims against.
-/

/-! ## A245319.P17981060080682898207

`eq[2^n+8, lcm(n, 2^n+8)]`
-/

namespace A245319.P17981060080682898207
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (2 ^ n + 8)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245319.P17981060080682898207

/-! ## A245319.P5364372354226609433

`record[gcd(2^n+8, round(sqrt(n²+1)))]`
-/

namespace A245319.P5364372354226609433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (2 ^ n + 8 : ℤ) (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245319.P5364372354226609433

/-! ## A245319.P8692882340102006675

`eq[n, gcd(n, A242475(n))]`
-/

namespace A245319.P8692882340102006675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A242475 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245319.P8692882340102006675

/-! ## A245319.P12058036086537544429

`record[A124758(A277897(3*(n+2)))]`
-/

namespace A245319.P12058036086537544429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124758 (A277897 (3 * (n + 2))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245319.P12058036086537544429

/-! ## A245319.P2873857433733074171

`record[A000005(A209268(n+1)+A000217(n))]`
-/

namespace A245319.P2873857433733074171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A209268 (n + 1) + A000217 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245319.P2873857433733074171

/-!
# A245321: Sum of digits of n written in fractional base 6/5.

The programs for A245321, the canonical program `A245321.P12385915573496320645` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245321 has offset 0).

The definition of A245321 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245321.P12385915573496320645

`a(5*floor(n/6))+n%6` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245321

/-- `a(5*floor(n/6))+n%6` -/
def P12385915573496320645.Spec : Prop :=
  ∀ n, (P12385915573496320645.a n : ℤ) = A245321 n

theorem P12385915573496320645.correct : P12385915573496320645.Spec := by
  intro n
  simp only [A245321]

end A245321

/-! ## A245321.P3804641344805929521

`∑{digits}[A024638(n), #]`
-/

namespace A245321.P3804641344805929521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024638 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245321.P3804641344805929521

namespace A245321

/-- `∑{digits}[A024638(n), #]` -/
def P3804641344805929521.Spec : Prop :=
  ∀ n, (P3804641344805929521.a n : ℤ) = A245321 n

end A245321

/-! ## A245321.P10559195527886230072

`n-A000217(A321014(5^floor(n/6)))`
-/

namespace A245321.P10559195527886230072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000217 (A321014 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(n : ℚ) / 6⌋ : ℤ))).toNat).toNat

end

end A245321.P10559195527886230072

namespace A245321

/-- `n-A000217(A321014(5^floor(n/6)))` -/
def P10559195527886230072.Spec : Prop :=
  ∀ n, P10559195527886230072.a n = A245321 n

end A245321

/-! ## A245321.P12403448056780684569

`n-A000217(A007814(6^floor(n/6)))`
-/

namespace A245321.P12403448056780684569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000217 (A007814 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (⌊(n : ℚ) / 6⌋ : ℤ))).toNat).toNat

end

end A245321.P12403448056780684569

namespace A245321

/-- `n-A000217(A007814(6^floor(n/6)))` -/
def P12403448056780684569.Spec : Prop :=
  ∀ n, P12403448056780684569.a n = A245321 n

end A245321

/-! ## A245321.P13437813535993427557

`n-A000217(floor(n/6)%Δ[A043330(n)])`
-/

namespace A245321.P13437813535993427557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043330 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000217 (Int.tmod ⌊(n : ℚ) / 6⌋ (f1 (n + 1) - f1 n)).toNat

end

end A245321.P13437813535993427557

namespace A245321

/-- `n-A000217(floor(n/6)%Δ[A043330(n)])` -/
def P13437813535993427557.Spec : Prop :=
  ∀ n, P13437813535993427557.a n = A245321 n

end A245321

/-!
# A245322: E.g.f.: Sum_{n>=0} sin(n*x)^n.

The programs for A245322, there is no canonical definition to state claims against.
-/

/-! ## A245322.P14743061984440764137

`A305467(n)+A002266(A256016(n))`
-/

namespace A245322.P14743061984440764137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305467 n + A002266 (A256016 n).toNat

end

end A245322.P14743061984440764137

/-!
# A245323: a(n) = F(6*n-3)*(L(2*n-1)+1), where F = A000045 are the Fibonacci and L = A000032 are the Lucas numbers.

The programs for A245323, the canonical program `A245323.P17453248134775203841` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245323 has offset 1).

The definition of A245323 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245323.P17453248134775203841

`A000045(6*(n+1)-3)*(A000032(2*(n+1)-1)+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245323

/-- `A000045(6*(n+1)-3)*(A000032(2*(n+1)-1)+1)` -/
def P17453248134775203841.Spec : Prop :=
  ∀ n, P17453248134775203841.a n = A245323 (n + 1)

theorem P17453248134775203841.correct : P17453248134775203841.Spec := by
  intro n
  simp only [A245323, Nat.add_sub_cancel]

end A245323

/-! ## A245323.P13582785830273209463

`A134495(n)*A188378(n)`
-/

namespace A245323.P13582785830273209463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134495 n * A188378 n

end

end A245323.P13582785830273209463

namespace A245323

/-- `A134495(n)*A188378(n)` -/
def P13582785830273209463.Spec : Prop :=
  ∀ n, P13582785830273209463.a n = A245323 (n + 1)

end A245323

/-! ## A245323.P12441607287326101774

`A014445(2*n+1)*A188378(n)`
-/

namespace A245323.P12441607287326101774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014445 (2 * n + 1) * A188378 n

end

end A245323.P12441607287326101774

namespace A245323

/-- `A014445(2*n+1)*A188378(n)` -/
def P12441607287326101774.Spec : Prop :=
  ∀ n, P12441607287326101774.a n = A245323 (n + 1)

end A245323

/-! ## A245323.P7651427744908532127

`∑[A005248(n)]*A014445(2*n+1)`
-/

namespace A245323.P7651427744908532127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A014445 (2 * n + 1)

end

end A245323.P7651427744908532127

namespace A245323

/-- `∑[A005248(n)]*A014445(2*n+1)` -/
def P7651427744908532127.Spec : Prop :=
  ∀ n, P7651427744908532127.a n = A245323 (n + 1)

end A245323

/-! ## A245323.P15122152229120663888

`∑[A005248(n)]*A001519(3*n+2)`
-/

namespace A245323.P15122152229120663888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001519 (3 * n + 2)

end

end A245323.P15122152229120663888

namespace A245323

/-- `∑[A005248(n)]*A001519(3*n+2)` -/
def P15122152229120663888.Spec : Prop :=
  ∀ n, P15122152229120663888.a n = A245323 (n + 1)

end A245323

/-! ## A245323.P11270380639742036846

`∑[A000032(2*n)]*A048575(3*n)`
-/

namespace A245323.P11270380639742036846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A048575 (3 * n)

end

end A245323.P11270380639742036846

namespace A245323

/-- `∑[A000032(2*n)]*A048575(3*n)` -/
def P11270380639742036846.Spec : Prop :=
  ∀ n, P11270380639742036846.a n = A245323 (n + 1)

end A245323

/-! ## A245323.P7192781584247747239

`(A000032(2*n+1)+1)*A014445(2*n+1)`
-/

namespace A245323.P7192781584247747239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000032 (2 * n + 1) + 1) * A014445 (2 * n + 1)

end

end A245323.P7192781584247747239

namespace A245323

/-- `(A000032(2*n+1)+1)*A014445(2*n+1)` -/
def P7192781584247747239.Spec : Prop :=
  ∀ n, P7192781584247747239.a n = A245323 (n + 1)

end A245323

/-! ## A245323.P9170704142591753488

`2*A001076(2*n+1)*A098600(2*n+1)`
-/

namespace A245323.P9170704142591753488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001076 (2 * n + 1) * A098600 (2 * n + 1))

end

end A245323.P9170704142591753488

namespace A245323

/-- `2*A001076(2*n+1)*A098600(2*n+1)` -/
def P9170704142591753488.Spec : Prop :=
  ∀ n, P9170704142591753488.a n = A245323 (n + 1)

end A245323

/-! ## A245323.P9813840585983993851

`A000045(A016945(n))*A188378(n)`
-/

namespace A245323.P9813840585983993851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A016945 n).toNat * A188378 n

end

end A245323.P9813840585983993851

namespace A245323

/-- `A000045(A016945(n))*A188378(n)` -/
def P9813840585983993851.Spec : Prop :=
  ∀ n, P9813840585983993851.a n = A245323 (n + 1)

end A245323

/-! ## A245323.P4962425458622808074

`∑[A005248(n)]*A000045(A016945(n))`
-/

namespace A245323.P4962425458622808074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000045 (A016945 n).toNat

end

end A245323.P4962425458622808074

namespace A245323

/-- `∑[A005248(n)]*A000045(A016945(n))` -/
def P4962425458622808074.Spec : Prop :=
  ∀ n, P4962425458622808074.a n = A245323 (n + 1)

end A245323

/-!
# A245325: Numerators of an enumeration system of the reduced nonnegative rational numbers.

The programs for A245325, the canonical program `A245325.P16913474214626989000` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245325 has offset 1).

The definition of A245325 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A154435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245325.P10674235218116273164

`A002487(A059893(A180200(n+1)))`
-/

namespace A245325.P10674235218116273164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A059893 (A180200 (n + 1)).toNat).toNat

end

end A245325.P10674235218116273164

namespace A245325

/-- `A002487(A059893(A180200(n+1)))` -/
def P10674235218116273164.Spec : Prop :=
  ∀ n, P10674235218116273164.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P16913474214626989000

`A002487(1+A059893(A154435(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A245325

/-- `A002487(1+A059893(A154435(n+1)))` -/
def P16913474214626989000.Spec : Prop :=
  ∀ n, P16913474214626989000.a n = A245325 (n + 1)

theorem P16913474214626989000.correct : P16913474214626989000.Spec := by
  intro n
  simp only [A245325, Nat.add_sub_cancel]

end A245325

/-! ## A245325.P15686471192218259686

`A245327(A059893(n+1))`
-/

namespace A245325.P15686471192218259686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A059893 (n + 1)).toNat

end

end A245325.P15686471192218259686

namespace A245325

/-- `A245327(A059893(n+1))` -/
def P15686471192218259686.Spec : Prop :=
  ∀ n, P15686471192218259686.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P16662646485221879243

`A273494(n+1)-A245326(n+1)`
-/

namespace A245325.P16662646485221879243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (n + 1) - A245326 (n + 1)

end

end A245325.P16662646485221879243

namespace A245325

/-- `A273494(n+1)-A245326(n+1)` -/
def P16662646485221879243.Spec : Prop :=
  ∀ n, P16662646485221879243.a n = A245325 (n + 1)

theorem P16662646485221879243.correct : P16662646485221879243.Spec := by
  intro n
  simp only [A245325, Nat.add_sub_cancel, A245325.P16662646485221879243.a, A245325.P16913474214626989000.a, A002487, A002487.P14011177000981426228.a, A059893, A059893.P16024368139843891037.a, A154435, A154435.P12739002809181514319.a, A245326, A245326.P3477940018113176802.a, A273494, A273494.P14320960571010168640.a, A006068, A006068.P433290056721054414.a, A030109, A030109.P14199666590729784855.a, A053644, A053644.P1707366427427647095.a, A154436, A154436.P18184337590076184170.a, A030101, A030101.P16184294017372777612.a, A092569, A092569.P9977416492423426890.a, A055945, A055945.P5963763732554067333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245325

/-! ## A245325.P749428157225596469

`A273494(n+1)-A245328(A059893(n+1))`
-/

namespace A245325.P749428157225596469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (n + 1) - A245328 (A059893 (n + 1)).toNat

end

end A245325.P749428157225596469

namespace A245325

/-- `A273494(n+1)-A245328(A059893(n+1))` -/
def P749428157225596469.Spec : Prop :=
  ∀ n, P749428157225596469.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P11756290005200675121

`A020650(A059894(n+1))`
-/

namespace A245325.P11756290005200675121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A059894 (n + 1)).toNat

end

end A245325.P11756290005200675121

namespace A245325

/-- `A020650(A059894(n+1))` -/
def P11756290005200675121.Spec : Prop :=
  ∀ n, P11756290005200675121.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P10237342642310337524

`A071766(A117120(n+1))`
-/

namespace A245325.P10237342642310337524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A117120 (n + 1)).toNat

end

end A245325.P10237342642310337524

namespace A245325

/-- `A071766(A117120(n+1))` -/
def P10237342642310337524.Spec : Prop :=
  ∀ n, P10237342642310337524.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P6375169407335231462

`A229742(A054429(n+1))`
-/

namespace A245325.P6375169407335231462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A054429 (n + 1)).toNat

end

end A245325.P6375169407335231462

namespace A245325

/-- `A229742(A054429(n+1))` -/
def P6375169407335231462.Spec : Prop :=
  ∀ n, P6375169407335231462.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P1741993607564415729

`A245326(A063946(n+1))`
-/

namespace A245325.P1741993607564415729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A063946 (n + 1)).toNat

end

end A245325.P1741993607564415729

namespace A245325

/-- `A245326(A063946(n+1))` -/
def P1741993607564415729.Spec : Prop :=
  ∀ n, P1741993607564415729.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P10076682166540985409

`A007305(A180200(n+1)+1)`
-/

namespace A245325.P10076682166540985409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007305 (A180200 (n + 1) + 1).toNat

end

end A245325.P10076682166540985409

namespace A245325

/-- `A007305(A180200(n+1)+1)` -/
def P10076682166540985409.Spec : Prop :=
  ∀ n, P10076682166540985409.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P5743997009657496378

`A229742(A006068(A233280(n+1)))`
-/

namespace A245325.P5743997009657496378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A006068 (A233280 (n + 1)).toNat).toNat

end

end A245325.P5743997009657496378

namespace A245325

/-- `A229742(A006068(A233280(n+1)))` -/
def P5743997009657496378.Spec : Prop :=
  ∀ n, P5743997009657496378.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P10603965538990290836

`A245326(A233280(A006068(n+1)))`
-/

namespace A245325.P10603965538990290836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A233280 (A006068 (n + 1)).toNat).toNat

end

end A245325.P10603965538990290836

namespace A245325

/-- `A245326(A233280(A006068(n+1)))` -/
def P10603965538990290836.Spec : Prop :=
  ∀ n, P10603965538990290836.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P10432742159277605378

`A071766(A284120(A258746(n+1)))`
-/

namespace A245325.P10432742159277605378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A284120 (A258746 (n + 1)).toNat).toNat

end

end A245325.P10432742159277605378

namespace A245325

/-- `A071766(A284120(A258746(n+1)))` -/
def P10432742159277605378.Spec : Prop :=
  ∀ n, P10432742159277605378.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P6422518784911635916

`A273494(n+1)-A020651(A059894(n+1))`
-/

namespace A245325.P6422518784911635916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (n + 1) - A020651 (A059894 (n + 1)).toNat

end

end A245325.P6422518784911635916

namespace A245325

/-- `A273494(n+1)-A020651(A059894(n+1))` -/
def P6422518784911635916.Spec : Prop :=
  ∀ n, P6422518784911635916.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P863221811587917929

`A071585(A054429(n+1))-A245326(n+1)`
-/

namespace A245325.P863221811587917929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A054429 (n + 1)).toNat - A245326 (n + 1)

end

end A245325.P863221811587917929

namespace A245325

/-- `A071585(A054429(n+1))-A245326(n+1)` -/
def P863221811587917929.Spec : Prop :=
  ∀ n, P863221811587917929.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P121578782140657741

`A071585(A117120(n+1))-A245326(n+1)`
-/

namespace A245325.P121578782140657741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A117120 (n + 1)).toNat - A245326 (n + 1)

end

end A245325.P121578782140657741

namespace A245325

/-- `A071585(A117120(n+1))-A245326(n+1)` -/
def P121578782140657741.Spec : Prop :=
  ∀ n, P121578782140657741.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P4743318308428859204

`A020650(A231551(A059893(A003188(n+1))))`
-/

namespace A245325.P4743318308428859204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A231551 (A059893 (A003188 (n + 1)).toNat).toNat).toNat

end

end A245325.P4743318308428859204

namespace A245325

/-- `A020650(A231551(A059893(A003188(n+1))))` -/
def P4743318308428859204.Spec : Prop :=
  ∀ n, P4743318308428859204.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P15886078766170047267

`A020650(A059893(A332769(A258996(n+1))))`
-/

namespace A245325.P15886078766170047267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A059893 (A332769 (A258996 (n + 1)).toNat).toNat).toNat

end

end A245325.P15886078766170047267

namespace A245325

/-- `A020650(A059893(A332769(A258996(n+1))))` -/
def P15886078766170047267.Spec : Prop :=
  ∀ n, P15886078766170047267.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P18251631677249015274

`A245326(A004754(n+1))-A245326(n+1)`
-/

namespace A245325.P18251631677249015274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A004754 (n + 1)).toNat - A245326 (n + 1)

end

end A245325.P18251631677249015274

namespace A245325

/-- `A245326(A004754(n+1))-A245326(n+1)` -/
def P18251631677249015274.Spec : Prop :=
  ∀ n, P18251631677249015274.a n = A245325 (n + 1)

end A245325

/-! ## A245325.P8220344015970770853

`A245327(A030109(2*n+3))`
-/

namespace A245325.P8220344015970770853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A030109 (2 * n + 3)).toNat

end

end A245325.P8220344015970770853

namespace A245325

/-- `A245327(A030109(2*n+3))` -/
def P8220344015970770853.Spec : Prop :=
  ∀ n, P8220344015970770853.a n = A245325 (n + 1)

end A245325

/-!
# A245326: Denominators of an enumeration system of the reduced nonnegative rational numbers.

The programs for A245326, the canonical program `A245326.P3477940018113176802` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245326 has offset 1).

The definition of A245326 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059893, A154435, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245326.P8584893817279011159

`A002487(1+A059893(A180200(n+1)))`
-/

namespace A245326.P8584893817279011159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (1 + A059893 (A180200 (n + 1)).toNat).toNat

end

end A245326.P8584893817279011159

namespace A245326

/-- `A002487(1+A059893(A180200(n+1)))` -/
def P8584893817279011159.Spec : Prop :=
  ∀ n, P8584893817279011159.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P3477940018113176802

`A002487(A059893(A154435(n+1)))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A245326

/-- `A002487(A059893(A154435(n+1)))` -/
def P3477940018113176802.Spec : Prop :=
  ∀ n, P3477940018113176802.a n = A245326 (n + 1)

theorem P3477940018113176802.correct : P3477940018113176802.Spec := by
  intro n
  simp only [A245326, Nat.add_sub_cancel]

end A245326

/-! ## A245326.P9565847796133433755

`A071585(lt[n, 2*and(n, 2*n)]-(2*n+3))`
-/

namespace A245326.P9565847796133433755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n - (2 * n + 3))

end

end A245326.P9565847796133433755

namespace A245326

/-- `A071585(lt[n, 2*and(n, 2*n)]-(2*n+3))` -/
def P9565847796133433755.Spec : Prop :=
  ∀ n, P9565847796133433755.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P16975366702015875877

`A071585(lt[n, 2*and(n, 2*n)]%(2*n+3))`
-/

namespace A245326.P16975366702015875877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n % (2 * n + 3))

end

end A245326.P16975366702015875877

namespace A245326

/-- `A071585(lt[n, 2*and(n, 2*n)]%(2*n+3))` -/
def P16975366702015875877.Spec : Prop :=
  ∀ n, P16975366702015875877.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P15166343536255074777

`A071585(A035327(n+1))`
-/

namespace A245326.P15166343536255074777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (A035327 (n + 1)).toNat

end

end A245326.P15166343536255074777

namespace A245326

/-- `A071585(A035327(n+1))` -/
def P15166343536255074777.Spec : Prop :=
  ∀ n, P15166343536255074777.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P397924348590362757

`A245328(A059893(n+1))`
-/

namespace A245326.P397924348590362757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A059893 (n + 1)).toNat

end

end A245326.P397924348590362757

namespace A245326

/-- `A245328(A059893(n+1))` -/
def P397924348590362757.Spec : Prop :=
  ∀ n, P397924348590362757.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P928417563836809143

`A273494(n+1)-A245325(n+1)`
-/

namespace A245326.P928417563836809143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (n + 1) - A245325 (n + 1)

end

end A245326.P928417563836809143

namespace A245326

/-- `A273494(n+1)-A245325(n+1)` -/
def P928417563836809143.Spec : Prop :=
  ∀ n, P928417563836809143.a n = A245326 (n + 1)

theorem P928417563836809143.correct : P928417563836809143.Spec := by
  intro n
  simp only [A245326, Nat.add_sub_cancel, A245326.P928417563836809143.a, A245326.P3477940018113176802.a, A002487, A002487.P14011177000981426228.a, A059893, A059893.P16024368139843891037.a, A154435, A154435.P12739002809181514319.a, A245325, A245325.P16913474214626989000.a, A273494, A273494.P14320960571010168640.a, A006068, A006068.P433290056721054414.a, A030109, A030109.P14199666590729784855.a, A053644, A053644.P1707366427427647095.a, A154436, A154436.P18184337590076184170.a, A030101, A030101.P16184294017372777612.a, A092569, A092569.P9977416492423426890.a, A055945, A055945.P5963763732554067333.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245326

/-! ## A245326.P8042999156990454296

`A071766(xor(n+1, 2^floor(log2(n+1))-1))`
-/

namespace A245326.P8042999156990454296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (Int.xor (n + 1 : ℤ) ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)).toNat

end

end A245326.P8042999156990454296

namespace A245326

/-- `A071766(xor(n+1, 2^floor(log2(n+1))-1))` -/
def P8042999156990454296.Spec : Prop :=
  ∀ n, P8042999156990454296.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P11591172421238734772

`A071766(lt[xor(n, 3*ceil(n/5)+n), n]-(2*n+3))`
-/

namespace A245326.P11591172421238734772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (3 * ⌈(n : ℚ) / 5⌉ + (n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - (2 * n + 3))

end

end A245326.P11591172421238734772

namespace A245326

/-- `A071766(lt[xor(n, 3*ceil(n/5)+n), n]-(2*n+3))` -/
def P11591172421238734772.Spec : Prop :=
  ∀ n, P11591172421238734772.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P335282830243038121

`A020651(A059894(n+1))`
-/

namespace A245326.P335282830243038121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A059894 (n + 1)).toNat

end

end A245326.P335282830243038121

namespace A245326

/-- `A020651(A059894(n+1))` -/
def P335282830243038121.Spec : Prop :=
  ∀ n, P335282830243038121.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P11231790882590443535

`A071766(A054429(n+1))`
-/

namespace A245326.P11231790882590443535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A054429 (n + 1)).toNat

end

end A245326.P11231790882590443535

namespace A245326

/-- `A071766(A054429(n+1))` -/
def P11231790882590443535.Spec : Prop :=
  ∀ n, P11231790882590443535.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P8955670078013865051

`A245325(A063946(n+1))`
-/

namespace A245326.P8955670078013865051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (A063946 (n + 1)).toNat

end

end A245326.P8955670078013865051

namespace A245326

/-- `A245325(A063946(n+1))` -/
def P8955670078013865051.Spec : Prop :=
  ∀ n, P8955670078013865051.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P4473458352303572268

`A229742(A117120(n+1))`
-/

namespace A245326.P4473458352303572268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A117120 (n + 1)).toNat

end

end A245326.P4473458352303572268

namespace A245326

/-- `A229742(A117120(n+1))` -/
def P4473458352303572268.Spec : Prop :=
  ∀ n, P4473458352303572268.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P12811439443392069894

`A093875(A261693(n+1))`
-/

namespace A245326.P12811439443392069894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093875 (A261693 (n + 1)).toNat

end

end A245326.P12811439443392069894

namespace A245326

/-- `A093875(A261693(n+1))` -/
def P12811439443392069894.Spec : Prop :=
  ∀ n, P12811439443392069894.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P132216326785667957

`A245328(A145341(n+2))`
-/

namespace A245326.P132216326785667957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A145341 (n + 2)).toNat

end

end A245326.P132216326785667957

namespace A245326

/-- `A245328(A145341(n+2))` -/
def P132216326785667957.Spec : Prop :=
  ∀ n, P132216326785667957.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P8868418033234434614

`A047679(A180200(n+1)-1)`
-/

namespace A245326.P8868418033234434614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047679 (A180200 (n + 1) - 1).toNat

end

end A245326.P8868418033234434614

namespace A245326

/-- `A047679(A180200(n+1)-1)` -/
def P8868418033234434614.Spec : Prop :=
  ∀ n, P8868418033234434614.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P3043762681225074498

`A245327(A145341(n+2)-1)`
-/

namespace A245326.P3043762681225074498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A145341 (n + 2) - 1).toNat

end

end A245326.P3043762681225074498

namespace A245326

/-- `A245327(A145341(n+2)-1)` -/
def P3043762681225074498.Spec : Prop :=
  ∀ n, P3043762681225074498.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P1330454269834798877

`A245327(2*A059893(n+1))`
-/

namespace A245326.P1330454269834798877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (2 * A059893 (n + 1)).toNat

end

end A245326.P1330454269834798877

namespace A245326

/-- `A245327(2*A059893(n+1))` -/
def P1330454269834798877.Spec : Prop :=
  ∀ n, P1330454269834798877.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P10903995204088271661

`A071766(A006068(A233280(n+1)))`
-/

namespace A245326.P10903995204088271661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A006068 (A233280 (n + 1)).toNat).toNat

end

end A245326.P10903995204088271661

namespace A245326

/-- `A071766(A006068(A233280(n+1)))` -/
def P10903995204088271661.Spec : Prop :=
  ∀ n, P10903995204088271661.a n = A245326 (n + 1)

end A245326

/-! ## A245326.P11380318666158002259

`A245327(A059893(n+1)+A059893(n+1))`
-/

namespace A245326.P11380318666158002259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A059893 (n + 1) + A059893 (n + 1)).toNat

end

end A245326.P11380318666158002259

namespace A245326

/-- `A245327(A059893(n+1)+A059893(n+1))` -/
def P11380318666158002259.Spec : Prop :=
  ∀ n, P11380318666158002259.a n = A245326 (n + 1)

end A245326

/-!
# A245327: Numerators in recursive bijection from positive integers to positive rationals, where the bijection is f(1) = 1, f(2n) = 1/(f(n)+1), f(2n+1) = f(n)+1.

The programs for A245327, the canonical program `A245327.P15422626224770119611` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245327 has offset 1).

The definition of A245327 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284459, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245327.P15422626224770119611

`A002487(A284459(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A245327

/-- `A002487(A284459(n+1))` -/
def P15422626224770119611.Spec : Prop :=
  ∀ n, P15422626224770119611.a n = A245327 (n + 1)

theorem P15422626224770119611.correct : P15422626224770119611.Spec := by
  intro n
  simp only [A245327, Nat.add_sub_cancel]

end A245327

/-! ## A245327.P17484799784240082742

`A245328(A014681(n)+1)`
-/

namespace A245327.P17484799784240082742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A014681 n + 1).toNat

end

end A245327.P17484799784240082742

namespace A245327

/-- `A245328(A014681(n)+1)` -/
def P17484799784240082742.Spec : Prop :=
  ∀ n, P17484799784240082742.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P11325521695856560948

`A245328(A065190(n+1))`
-/

namespace A245327.P11325521695856560948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A065190 (n + 1)).toNat

end

end A245327.P11325521695856560948

namespace A245327

/-- `A245328(A065190(n+1))` -/
def P11325521695856560948.Spec : Prop :=
  ∀ n, P11325521695856560948.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P2891044551305906954

`A294442(A092569(n+1))`
-/

namespace A245327.P2891044551305906954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (A092569 (n + 1)).toNat

end

end A245327.P2891044551305906954

namespace A245327

/-- `A294442(A092569(n+1))` -/
def P2891044551305906954.Spec : Prop :=
  ∀ n, P2891044551305906954.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P9565176996695686072

`A245328((A086970(n)+1)/2)`
-/

namespace A245327.P9565176996695686072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (SequenceMachineLib.roundAway ((A086970 n + 1 : ℚ) / 2)).toNat

end

end A245327.P9565176996695686072

namespace A245327

/-- `A245328((A086970(n)+1)/2)` -/
def P9565176996695686072.Spec : Prop :=
  ∀ n, P9565176996695686072.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P16652993260991087049

`A245325(A059893(n+1))`
-/

namespace A245327.P16652993260991087049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (A059893 (n + 1)).toNat

end

end A245327.P16652993260991087049

namespace A245327

/-- `A245325(A059893(n+1))` -/
def P16652993260991087049.Spec : Prop :=
  ∀ n, P16652993260991087049.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P14537313418845336477

`A245328(A065172(n+1))`
-/

namespace A245327.P14537313418845336477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A065172 (n + 1)).toNat

end

end A245327.P14537313418845336477

namespace A245327

/-- `A245328(A065172(n+1))` -/
def P14537313418845336477.Spec : Prop :=
  ∀ n, P14537313418845336477.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P15765184717179554692

`A245328(A065262(n+1))`
-/

namespace A245327.P15765184717179554692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A065262 (n + 1)).toNat

end

end A245327.P15765184717179554692

namespace A245327

/-- `A245328(A065262(n+1))` -/
def P15765184717179554692.Spec : Prop :=
  ∀ n, P15765184717179554692.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P9506385322885819708

`A273494(A059893(n+1))-A245328(n+1)`
-/

namespace A245327.P9506385322885819708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273494 (A059893 (n + 1)).toNat - A245328 (n + 1)

end

end A245327.P9506385322885819708

namespace A245327

/-- `A273494(A059893(n+1))-A245328(n+1)` -/
def P9506385322885819708.Spec : Prop :=
  ∀ n, P9506385322885819708.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P8997284898986650611

`A020650(A054429(n+1))`
-/

namespace A245327.P8997284898986650611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A054429 (n + 1)).toNat

end

end A245327.P8997284898986650611

namespace A245327

/-- `A020650(A054429(n+1))` -/
def P8997284898986650611.Spec : Prop :=
  ∀ n, P8997284898986650611.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P8290378983102068504

`A020651(A092569(n+1))`
-/

namespace A245327.P8290378983102068504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A092569 (n + 1)).toNat

end

end A245327.P8290378983102068504

namespace A245327

/-- `A020651(A092569(n+1))` -/
def P8290378983102068504.Spec : Prop :=
  ∀ n, P8290378983102068504.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P14029399059545594170

`A229742(A059894(n+1))`
-/

namespace A245327.P14029399059545594170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 (A059894 (n + 1)).toNat

end

end A245327.P14029399059545594170

namespace A245327

/-- `A229742(A059894(n+1))` -/
def P14029399059545594170.Spec : Prop :=
  ∀ n, P14029399059545594170.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P6715417823495955614

`A245328(A166519(n+1))`
-/

namespace A245327.P6715417823495955614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A166519 (n + 1)).toNat

end

end A245327.P6715417823495955614

namespace A245327

/-- `A245328(A166519(n+1))` -/
def P6715417823495955614.Spec : Prop :=
  ∀ n, P6715417823495955614.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P2784915997784038026

`A245328(A086970(n)+2)`
-/

namespace A245327.P2784915997784038026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A086970 n + 2).toNat

end

end A245327.P2784915997784038026

namespace A245327

/-- `A245328(A086970(n)+2)` -/
def P2784915997784038026.Spec : Prop :=
  ∀ n, P2784915997784038026.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P6895616755821686723

`A245328(A065164(n+3)+n)`
-/

namespace A245327.P6895616755821686723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A065164 (n + 3) + (n : ℤ)).toNat

end

end A245327.P6895616755821686723

namespace A245327

/-- `A245328(A065164(n+3)+n)` -/
def P6895616755821686723.Spec : Prop :=
  ∀ n, P6895616755821686723.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P8001175833154597914

`A245328(A165754(n+1)+n+1)`
-/

namespace A245327.P8001175833154597914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (A165754 (n + 1) + (n + 1 : ℤ)).toNat

end

end A245327.P8001175833154597914

namespace A245327

/-- `A245328(A165754(n+1)+n+1)` -/
def P8001175833154597914.Spec : Prop :=
  ∀ n, P8001175833154597914.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P5044260704873148018

`A245328(2*(n+1))-A245328(n+1)`
-/

namespace A245327.P5044260704873148018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245328 (2 * (n + 1)) - A245328 (n + 1)

end

end A245327.P5044260704873148018

namespace A245327

/-- `A245328(2*(n+1))-A245328(n+1)` -/
def P5044260704873148018.Spec : Prop :=
  ∀ n, P5044260704873148018.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P12242460606464900627

`A020651(A054429(A014681(n)+1))`
-/

namespace A245327.P12242460606464900627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A054429 (A014681 n + 1).toNat).toNat

end

end A245327.P12242460606464900627

namespace A245327

/-- `A020651(A054429(A014681(n)+1))` -/
def P12242460606464900627.Spec : Prop :=
  ∀ n, P12242460606464900627.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P2776216921938582717

`A020650(A234025(A193231(n+1)))`
-/

namespace A245327.P2776216921938582717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A234025 (A193231 (n + 1)).toNat).toNat

end

end A245327.P2776216921938582717

namespace A245327

/-- `A020650(A234025(A193231(n+1)))` -/
def P2776216921938582717.Spec : Prop :=
  ∀ n, P2776216921938582717.a n = A245327 (n + 1)

end A245327

/-! ## A245327.P13290428175975097617

`A020650(A193231(A234026(n+1)))`
-/

namespace A245327.P13290428175975097617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A193231 (A234026 (n + 1)).toNat).toNat

end

end A245327.P13290428175975097617

namespace A245327

/-- `A020650(A193231(A234026(n+1)))` -/
def P13290428175975097617.Spec : Prop :=
  ∀ n, P13290428175975097617.a n = A245327 (n + 1)

end A245327

/-!
# A245328: Denominators in recursive bijection from positive integers to positive rationals (the bijection is f(1) = 1, f(2n) = 1/(f(n)+1), f(2n+1) = f(n)+1).

The programs for A245328, the canonical program `A245328.P12193568129889617601` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245328 has offset 1).

The definition of A245328 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A284459, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245328.P5829599611651101716

`A245327(2*(n+1))`
-/

namespace A245328.P5829599611651101716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (2 * (n + 1))

end

end A245328.P5829599611651101716

namespace A245328

/-- `A245327(2*(n+1))` -/
def P5829599611651101716.Spec : Prop :=
  ∀ n, P5829599611651101716.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P12193568129889617601

`A002487(1+A284459(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A245328

/-- `A002487(1+A284459(n+1))` -/
def P12193568129889617601.Spec : Prop :=
  ∀ n, P12193568129889617601.a n = A245328 (n + 1)

theorem P12193568129889617601.correct : P12193568129889617601.Spec := by
  intro n
  simp only [A245328, Nat.add_sub_cancel]

end A245328

/-! ## A245328.P11072391455723733288

`A294442(A054429(n+1))`
-/

namespace A245328.P11072391455723733288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (A054429 (n + 1)).toNat

end

end A245328.P11072391455723733288

namespace A245328

/-- `A294442(A054429(n+1))` -/
def P11072391455723733288.Spec : Prop :=
  ∀ n, P11072391455723733288.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P15912094534523767898

`A071585(A036044(n+1)/2)`
-/

namespace A245328.P15912094534523767898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071585 (SequenceMachineLib.roundAway ((A036044 (n + 1) : ℚ) / 2)).toNat

end

end A245328.P15912094534523767898

namespace A245328

/-- `A071585(A036044(n+1)/2)` -/
def P15912094534523767898.Spec : Prop :=
  ∀ n, P15912094534523767898.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P8730946326381448359

`A245326(A059893(n+1))`
-/

namespace A245328.P8730946326381448359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245326 (A059893 (n + 1)).toNat

end

end A245328.P8730946326381448359

namespace A245328

/-- `A245326(A059893(n+1))` -/
def P8730946326381448359.Spec : Prop :=
  ∀ n, P8730946326381448359.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P5004842236205828753

`A020651(A054429(n+1))`
-/

namespace A245328.P5004842236205828753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A054429 (n + 1)).toNat

end

end A245328.P5004842236205828753

namespace A245328

/-- `A020651(A054429(n+1))` -/
def P5004842236205828753.Spec : Prop :=
  ∀ n, P5004842236205828753.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P12831629969697136152

`A020650(A092569(n+1))`
-/

namespace A245328.P12831629969697136152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A092569 (n + 1)).toNat

end

end A245328.P12831629969697136152

namespace A245328

/-- `A020650(A092569(n+1))` -/
def P12831629969697136152.Spec : Prop :=
  ∀ n, P12831629969697136152.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P16625455755800253914

`A071766(A059894(n+1))`
-/

namespace A245328.P16625455755800253914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071766 (A059894 (n + 1)).toNat

end

end A245328.P16625455755800253914

namespace A245328

/-- `A071766(A059894(n+1))` -/
def P16625455755800253914.Spec : Prop :=
  ∀ n, P16625455755800253914.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P7097952552182915273

`A002487(A154437(n+1))`
-/

namespace A245328.P7097952552182915273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A154437 (n + 1)).toNat

end

end A245328.P7097952552182915273

namespace A245328

/-- `A002487(A154437(n+1))` -/
def P7097952552182915273.Spec : Prop :=
  ∀ n, P7097952552182915273.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P1062978196318252774

`A002487(A054429(A284459(n+1)))`
-/

namespace A245328.P1062978196318252774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A054429 (A284459 (n + 1)).toNat).toNat

end

end A245328.P1062978196318252774

namespace A245328

/-- `A002487(A054429(A284459(n+1)))` -/
def P1062978196318252774.Spec : Prop :=
  ∀ n, P1062978196318252774.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P9364619863815193461

`A020651(A234025(A193231(n+1)))`
-/

namespace A245328.P9364619863815193461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A234025 (A193231 (n + 1)).toNat).toNat

end

end A245328.P9364619863815193461

namespace A245328

/-- `A020651(A234025(A193231(n+1)))` -/
def P9364619863815193461.Spec : Prop :=
  ∀ n, P9364619863815193461.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P12968216492454040129

`A020651(A193231(A234026(n+1)))`
-/

namespace A245328.P12968216492454040129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A193231 (A234026 (n + 1)).toNat).toNat

end

end A245328.P12968216492454040129

namespace A245328

/-- `A020651(A193231(A234026(n+1)))` -/
def P12968216492454040129.Spec : Prop :=
  ∀ n, P12968216492454040129.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P17965433689766293808

`A020651(A234027(A234025(n+1)))`
-/

namespace A245328.P17965433689766293808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A234027 (A234025 (n + 1)).toNat).toNat

end

end A245328.P17965433689766293808

namespace A245328

/-- `A020651(A234027(A234025(n+1)))` -/
def P17965433689766293808.Spec : Prop :=
  ∀ n, P17965433689766293808.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P1513931936640678355

`A020651(A234026(A234027(n+1)))`
-/

namespace A245328.P1513931936640678355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A234026 (A234027 (n + 1)).toNat).toNat

end

end A245328.P1513931936640678355

namespace A245328

/-- `A020651(A234026(A234027(n+1)))` -/
def P1513931936640678355.Spec : Prop :=
  ∀ n, P1513931936640678355.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P1045845237538866097

`A020650(A284447(A258996(n+1)))`
-/

namespace A245328.P1045845237538866097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020650 (A284447 (A258996 (n + 1)).toNat).toNat

end

end A245328.P1045845237538866097

namespace A245328

/-- `A020650(A284447(A258996(n+1)))` -/
def P1045845237538866097.Spec : Prop :=
  ∀ n, P1045845237538866097.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P10423273050457744952

`A020651(A258996(A332769(n+1)))`
-/

namespace A245328.P10423273050457744952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A258996 (A332769 (n + 1)).toNat).toNat

end

end A245328.P10423273050457744952

namespace A245328

/-- `A020651(A258996(A332769(n+1)))` -/
def P10423273050457744952.Spec : Prop :=
  ∀ n, P10423273050457744952.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P14062820387683166245

`A020651(A332769(A284459(A231550(n+1))))`
-/

namespace A245328.P14062820387683166245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020651 (A332769 (A284459 (A231550 (n + 1)).toNat).toNat).toNat

end

end A245328.P14062820387683166245

namespace A245328

/-- `A020651(A332769(A284459(A231550(n+1))))` -/
def P14062820387683166245.Spec : Prop :=
  ∀ n, P14062820387683166245.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P14499153600758902745

`A294442(A092569(2*(n+1)))`
-/

namespace A245328.P14499153600758902745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294442 (A092569 (2 * (n + 1))).toNat

end

end A245328.P14499153600758902745

namespace A245328

/-- `A294442(A092569(2*(n+1)))` -/
def P14499153600758902745.Spec : Prop :=
  ∀ n, P14499153600758902745.a n = A245328 (n + 1)

end A245328

/-! ## A245328.P1596392865082642814

`A273493(n+1)-A245327(n+1)`
-/

namespace A245328.P1596392865082642814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273493 (n + 1) - A245327 (n + 1)

end

end A245328.P1596392865082642814

namespace A245328

/-- `A273493(n+1)-A245327(n+1)` -/
def P1596392865082642814.Spec : Prop :=
  ∀ n, P1596392865082642814.a n = A245328 (n + 1)

theorem P1596392865082642814.correct : P1596392865082642814.Spec := by
  intro n
  simp only [A245328, Nat.add_sub_cancel, A245328.P1596392865082642814.a, A245328.P12193568129889617601.a, A002487, A002487.P14011177000981426228.a, A245327, A245327.P15422626224770119611.a, A273493, A273493.P5527288234539708389.a, A284459, A284459.P16106515790432208554.a, A231551, A231551.P13473308692949281143.a, A258996, A258996.P1766384816688748904.a, A059893, A059893.P16024368139843891037.a, A154437, A154437.P11607465258887740319.a, A231550, A231550.P13029068904856309270.a, A258746, A258746.P7650068295521346496.a, A030109, A030109.P14199666590729784855.a, A053644, A053644.P1707366427427647095.a, A054429, A054429.P11515140416303889102.a, A056539, A056539.P17406113578210965747.a, A165199, A165199.P18080261923669933743.a, A229763, A229763.P6803440725785154934.f1, A229763.P6803440725785154934.a, A292944, A292944.P3273024462616144554.a, A335858, A335858.P3204271633163649755.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245328

/-! ## A245328.P10887557171303951

`A245325(A059893(2*(n+1)))`
-/

namespace A245328.P10887557171303951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245325 (A059893 (2 * (n + 1))).toNat

end

end A245328.P10887557171303951

namespace A245328

/-- `A245325(A059893(2*(n+1)))` -/
def P10887557171303951.Spec : Prop :=
  ∀ n, P10887557171303951.a n = A245328 (n + 1)

end A245328

/-!
# A245329: a(n) = sum_{k=0..n}C(n,k)^3*(-8)^k with C(n,k) = n!/(k!(n-k)!).

The programs for A245329, the canonical program `A245329.P13311727937168408027` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245329 has offset 0).

The definition of A245329 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `∑{#}[n, C(n, #)^3*(-8)^#]` (program `A245329.P13311727937168408027`, by `A245329.P13311727937168408027.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245329.P13311727937168408027

`∑{#}[n, C(n, #)^3*(-8)^#]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245329

/-- `∑{#}[n, C(n, #)^3*(-8)^#]` -/
def P13311727937168408027.Spec : Prop :=
  ∀ n, P13311727937168408027.a n = A245329 n

theorem P13311727937168408027.correct : P13311727937168408027.Spec := by
  intro n
  simp only [A245329]

end A245329

/-! ## A245329.P12808989149951420981

`A336179(eq[8, A025581(n)])`
-/

namespace A245329.P12808989149951420981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245329.P12808989149951420981

namespace A245329

/-- `A336179(eq[8, A025581(n)])` -/
def P12808989149951420981.Spec : Prop :=
  ∀ n, P12808989149951420981.a n = A245329 n

end A245329

/-! ## A245329.P13753667654849504200

`A336179(eq[9, A193739(n)])`
-/

namespace A245329.P13753667654849504200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245329.P13753667654849504200

namespace A245329

/-- `A336179(eq[9, A193739(n)])` -/
def P13753667654849504200.Spec : Prop :=
  ∀ n, P13753667654849504200.a n = A245329 n

end A245329

/-! ## A245329.P4886314007058037969

`A336179(eq[17, A099375(n)])`
-/

namespace A245329.P4886314007058037969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  17

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099375 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245329.P4886314007058037969

namespace A245329

/-- `A336179(eq[17, A099375(n)])` -/
def P4886314007058037969.Spec : Prop :=
  ∀ n, P4886314007058037969.a n = A245329 n

end A245329

/-! ## A245329.P9603907809023000137

`A336179(eq[7, A068049(n+1)])`
-/

namespace A245329.P9603907809023000137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068049 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245329.P9603907809023000137

namespace A245329

/-- `A336179(eq[7, A068049(n+1)])` -/
def P9603907809023000137.Spec : Prop :=
  ∀ n, P9603907809023000137.a n = A245329 n

end A245329

/-! ## A245329.P1854118057569019895

`A336179(eq[9, A004736(n+1)])`
-/

namespace A245329.P1854118057569019895
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336179 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A245329.P1854118057569019895

namespace A245329

/-- `A336179(eq[9, A004736(n+1)])` -/
def P1854118057569019895.Spec : Prop :=
  ∀ n, P1854118057569019895.a n = A245329 n

end A245329

/-!
# A245332: Number of compositions of n into parts 2 and 3 with at least one 2 and one 3.

The programs for A245332, the canonical program `A245332.P6241281077823722116` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245332 has offset 0).

The definition of A245332 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245332.P6241281077823722116

`ogf((2x^5+2x^6+x^7)/(1+x-x^2-3x^3-2x^4+x^5+2x^6+x^7))`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245332

/-- `ogf((2x^5+2x^6+x^7)/(1+x-x^2-3x^3-2x^4+x^5+2x^6+x^7))` -/
def P6241281077823722116.Spec : Prop :=
  ∀ n, P6241281077823722116.a n = A245332 n

theorem P6241281077823722116.correct : P6241281077823722116.Spec := by
  intro n
  simp only [A245332]

end A245332

/-!
# A245334: A factorial-like triangle read by rows: T(0,0) = 1; T(n+1,0) = T(n,0)+1; T(n+1,k+1) = T(n,0)*T(n,k), k=0..n.

The programs for A245334, the canonical program `A245334.P6485201235255612287` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245334 has offset 0).

The definition of A245334 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245334.P6485201235255612287

`row(n)!*(row(n)+1-col(n))/(row(n)-col(n))!`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245334

/-- `row(n)!*(row(n)+1-col(n))/(row(n)-col(n))!` -/
def P6485201235255612287.Spec : Prop :=
  ∀ n, P6485201235255612287.a n = (A245334 n : ℚ)

end A245334

/-! ## A245334.P6861497535018358410

`(row(n)+1-col(n))*A008279(n)`
-/

namespace A245334.P6861497535018358410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * A008279 n

end

end A245334.P6861497535018358410

namespace A245334

/-- `(row(n)+1-col(n))*A008279(n)` -/
def P6861497535018358410.Spec : Prop :=
  ∀ n, P6861497535018358410.a n = A245334 n

end A245334

/-! ## A245334.P8657261381884368488

`(row(n)+1-col(n))*col(n)!*A007318(n)`
-/

namespace A245334.P8657261381884368488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.triRow n + 1 : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (Nat.factorial (SequenceMachineLib.triCol n) : ℤ) * A007318 n

end

end A245334.P8657261381884368488

namespace A245334

/-- `(row(n)+1-col(n))*col(n)!*A007318(n)` -/
def P8657261381884368488.Spec : Prop :=
  ∀ n, P8657261381884368488.a n = A245334 n

end A245334

/-! ## A245334.P180981313170374258

`A007318(n)*A137948(n)`
-/

namespace A245334.P180981313170374258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A137948 n

end

end A245334.P180981313170374258

namespace A245334

/-- `A007318(n)*A137948(n)` -/
def P180981313170374258.Spec : Prop :=
  ∀ n, P180981313170374258.a n = A245334 n

end A245334

/-! ## A245334.P13115372009158419183

`A004736(n+1)*A008279(n)`
-/

namespace A245334.P13115372009158419183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) * A008279 n

end

end A245334.P13115372009158419183

namespace A245334

/-- `A004736(n+1)*A008279(n)` -/
def P13115372009158419183.Spec : Prop :=
  ∀ n, P13115372009158419183.a n = A245334 n

end A245334

/-! ## A245334.P9573165297697448881

`(A025581(n)+1)*A008279(n)`
-/

namespace A245334.P9573165297697448881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A008279 n

end

end A245334.P9573165297697448881

namespace A245334

/-- `(A025581(n)+1)*A008279(n)` -/
def P9573165297697448881.Spec : Prop :=
  ∀ n, P9573165297697448881.a n = A245334 n

end A245334

/-! ## A245334.P13365882928234011322

`A093375(n+1)*A233543(n)`
-/

namespace A245334.P13365882928234011322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093375 (n + 1) * A233543 n

end

end A245334.P13365882928234011322

namespace A245334

/-- `A093375(n+1)*A233543(n)` -/
def P13365882928234011322.Spec : Prop :=
  ∀ n, P13365882928234011322.a n = A245334 n

end A245334

/-! ## A245334.P9415027807105266070

`ceil(A099375(n)/2)*A008279(n)`
-/

namespace A245334.P9415027807105266070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A099375 n : ℚ) / 2⌉ * A008279 n

end

end A245334.P9415027807105266070

namespace A245334

/-- `ceil(A099375(n)/2)*A008279(n)` -/
def P9415027807105266070.Spec : Prop :=
  ∀ n, P9415027807105266070.a n = A245334 n

end A245334

/-! ## A245334.P857727517911168790

`(A003057(n+2)-A002260(n+1))*A008279(n)`
-/

namespace A245334.P857727517911168790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) - A002260 (n + 1)) * A008279 n

end

end A245334.P857727517911168790

namespace A245334

/-- `(A003057(n+2)-A002260(n+1))*A008279(n)` -/
def P857727517911168790.Spec : Prop :=
  ∀ n, P857727517911168790.a n = A245334 n

end A245334

/-! ## A245334.P11857081468268558483

`(A025581(n)+1)*A094587(A061579(n))`
-/

namespace A245334.P11857081468268558483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) * A094587 (A061579 n).toNat

end

end A245334.P11857081468268558483

namespace A245334

/-- `(A025581(n)+1)*A094587(A061579(n))` -/
def P11857081468268558483.Spec : Prop :=
  ∀ n, P11857081468268558483.a n = A245334 n

end A245334

/-! ## A245334.P16736642240549945666

`A007318(n)*A137267(A066182(n+1)+1)`
-/

namespace A245334.P16736642240549945666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A137267 (A066182 (n + 1) + 1).toNat

end

end A245334.P16736642240549945666

namespace A245334

/-- `A007318(n)*A137267(A066182(n+1)+1)` -/
def P16736642240549945666.Spec : Prop :=
  ∀ n, P16736642240549945666.a n = A245334 n

end A245334

/-! ## A245334.P2535901584614683820

`A004736(n+1)/A002260(n+1)*A166350(n+1)*A007318(n)`
-/

namespace A245334.P2535901584614683820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004736 (n + 1) : ℚ) / (A002260 (n + 1) : ℚ) * (A166350 (n + 1) : ℚ) * (A007318 n : ℚ)

end

end A245334.P2535901584614683820

namespace A245334

/-- `A004736(n+1)/A002260(n+1)*A166350(n+1)*A007318(n)` -/
def P2535901584614683820.Spec : Prop :=
  ∀ n, P2535901584614683820.a n = (A245334 n : ℚ)

end A245334

/-! ## A245334.P6927945266016769218

`A068424(n+1)/A074909(n)*A007318(n)`
-/

namespace A245334.P6927945266016769218
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A068424 (n + 1) : ℚ) / (A074909 n : ℚ) * (A007318 n : ℚ)

end

end A245334.P6927945266016769218

namespace A245334

/-- `A068424(n+1)/A074909(n)*A007318(n)` -/
def P6927945266016769218.Spec : Prop :=
  ∀ n, P6927945266016769218.a n = (A245334 n : ℚ)

end A245334

/-! ## A245334.P7692007998790895171

`A008279(n)+A008279(n+1)%A019538(n+2)`
-/

namespace A245334.P7692007998790895171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008279 n + Int.tmod (A008279 (n + 1)) (A019538 (n + 2))

end

end A245334.P7692007998790895171

namespace A245334

/-- `A008279(n)+A008279(n+1)%A019538(n+2)` -/
def P7692007998790895171.Spec : Prop :=
  ∀ n, P7692007998790895171.a n = A245334 n

end A245334

/-! ## A245334.P12478017688299901544

`A002262(n)!*ceil(A134060(n)/3)*A004736(n+1)`
-/

namespace A245334.P12478017688299901544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (A002262 n).toNat : ℤ) * ⌈(A134060 n : ℚ) / 3⌉ * A004736 (n + 1)

end

end A245334.P12478017688299901544

namespace A245334

/-- `A002262(n)!*ceil(A134060(n)/3)*A004736(n+1)` -/
def P12478017688299901544.Spec : Prop :=
  ∀ n, P12478017688299901544.a n = A245334 n

end A245334

/-!
# A245335: Sum of digits of n in fractional base 5/4.

The programs for A245335, the canonical program `A245335.P16290024638499749235` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245335 has offset 0).

The definition of A245335 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245335.P16290024638499749235

`a(4*floor(n/5))+n%5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245335

/-- `a(4*floor(n/5))+n%5` -/
def P16290024638499749235.Spec : Prop :=
  ∀ n, (P16290024638499749235.a n : ℤ) = A245335 n

theorem P16290024638499749235.correct : P16290024638499749235.Spec := by
  intro n
  simp only [A245335]

end A245335

/-! ## A245335.P10873803690009036226

`∑{digits}[A024634(n), #]`
-/

namespace A245335.P10873803690009036226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024634 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245335.P10873803690009036226

namespace A245335

/-- `∑{digits}[A024634(n), #]` -/
def P10873803690009036226.Spec : Prop :=
  ∀ n, (P10873803690009036226.a n : ℤ) = A245335 n

end A245335

/-! ## A245335.P9076102374349014326

`log2(∏{digits}[A024634(n), A329562(#)])`
-/

namespace A245335.P9076102374349014326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024634 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A329562 x).prod : ℤ) : ℝ)

end

end A245335.P9076102374349014326

namespace A245335

/-- `log2(∏{digits}[A024634(n), A329562(#)])` -/
def P9076102374349014326.Spec : Prop :=
  ∀ n, P9076102374349014326.a n = (A245335 n : ℝ)

end A245335

/-! ## A245335.P17866237397995888346

`∑{digits}[A024663(2*n)/2, #]`
-/

namespace A245335.P17866237397995888346
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024663 (2 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A245335.P17866237397995888346

namespace A245335

/-- `∑{digits}[A024663(2*n)/2, #]` -/
def P17866237397995888346.Spec : Prop :=
  ∀ n, (P17866237397995888346.a n : ℤ) = A245335 n

end A245335

/-! ## A245335.P8789168266239555634

`∑{digits}[record[A024663(n)/A102128(n+1)], #]`
-/

namespace A245335.P8789168266239555634
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024663 n : ℚ) / (A102128 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A245335.P8789168266239555634

namespace A245335

/-- `∑{digits}[record[A024663(n)/A102128(n+1)], #]` -/
def P8789168266239555634.Spec : Prop :=
  ∀ n, (P8789168266239555634.a n : ℤ) = A245335 n

end A245335

/-! ## A245335.P16613498012115652239

`∑{digits}[record[A024663(n)/A266256(n)], #]`
-/

namespace A245335.P16613498012115652239
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024663 n : ℚ) / (A266256 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A245335.P16613498012115652239

namespace A245335

/-- `∑{digits}[record[A024663(n)/A266256(n)], #]` -/
def P16613498012115652239.Spec : Prop :=
  ∀ n, (P16613498012115652239.a n : ℤ) = A245335 n

end A245335

/-! ## A245335.P3517304996563906625

`∑{digits}[record[A024663(n)/A280193(n)], #]`
-/

namespace A245335.P3517304996563906625
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024663 n : ℚ) / (A280193 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A245335.P3517304996563906625

namespace A245335

/-- `∑{digits}[record[A024663(n)/A280193(n)], #]` -/
def P3517304996563906625.Spec : Prop :=
  ∀ n, (P3517304996563906625.a n : ℤ) = A245335 n

end A245335

/-! ## A245335.P4805550770200026917

`∑{digits}[record[A024663(n)/A280560(n)], #]`
-/

namespace A245335.P4805550770200026917
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024663 n : ℚ) / (A280560 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A245335.P4805550770200026917

namespace A245335

/-- `∑{digits}[record[A024663(n)/A280560(n)], #]` -/
def P4805550770200026917.Spec : Prop :=
  ∀ n, (P4805550770200026917.a n : ℤ) = A245335 n

end A245335

/-!
# A245336: Sum of digits of n written in fractional base 8/7.

The programs for A245336, the canonical program `A245336.P14271800560112443322` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245336 has offset 0).

The definition of A245336 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245336.P14271800560112443322

`a(7*floor(n/8))+n%8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245336

/-- `a(7*floor(n/8))+n%8` -/
def P14271800560112443322.Spec : Prop :=
  ∀ n, (P14271800560112443322.a n : ℤ) = A245336 n

theorem P14271800560112443322.correct : P14271800560112443322.Spec := by
  intro n
  simp only [A245336]

end A245336

/-! ## A245336.P3291991473488252381

`A007953(A024649(n))`
-/

namespace A245336.P3291991473488252381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024649 n).toNat

end

end A245336.P3291991473488252381

namespace A245336

/-- `A007953(A024649(n))` -/
def P3291991473488252381.Spec : Prop :=
  ∀ n, P3291991473488252381.a n = A245336 n

end A245336

/-! ## A245336.P12937066519501279848

`∑{digits}[A024649(n), #]`
-/

namespace A245336.P12937066519501279848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024649 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245336.P12937066519501279848

namespace A245336

/-- `∑{digits}[A024649(n), #]` -/
def P12937066519501279848.Spec : Prop :=
  ∀ n, (P12937066519501279848.a n : ℤ) = A245336 n

end A245336

/-! ## A245336.P14847501997104811209

`A004197(2*n*comp[9*n])`
-/

namespace A245336.P14847501997104811209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (2 * n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A245336.P14847501997104811209

namespace A245336

/-- `A004197(2*n*comp[9*n])` -/
def P14847501997104811209.Spec : Prop :=
  ∀ n, P14847501997104811209.a n = A245336 n

end A245336

/-! ## A245336.P8308774606410485613

`A002262(2*n*ceil(9/(8*acot(n))))`
-/

namespace A245336.P8308774606410485613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((2 * n : ℤ) * ⌈9 / (8 * SequenceMachineLib.acot (n : ℝ))⌉).toNat

end

end A245336.P8308774606410485613

namespace A245336

/-- `A002262(2*n*ceil(9/(8*acot(n))))` -/
def P8308774606410485613.Spec : Prop :=
  ∀ n, P8308774606410485613.a n = A245336 n

end A245336

/-! ## A245336.P6124880263546135577

`A002262(2*n*lt[n, n*dr(n+1)])`
-/

namespace A245336.P6124880263546135577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * SequenceMachineLib.digitalRoot (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * n * SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A245336.P6124880263546135577

namespace A245336

/-- `A002262(2*n*lt[n, n*dr(n+1)])` -/
def P6124880263546135577.Spec : Prop :=
  ∀ n, P6124880263546135577.a n = A245336 n

end A245336

/-! ## A245336.P11135322714653357347

`A002262(comp[9*n]*A005843(n))`
-/

namespace A245336.P11135322714653357347
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A005843 n).toNat

end

end A245336.P11135322714653357347

namespace A245336

/-- `A002262(comp[9*n]*A005843(n))` -/
def P11135322714653357347.Spec : Prop :=
  ∀ n, P11135322714653357347.a n = A245336 n

end A245336

/-! ## A245336.P17753000722838770975

`A002262(2*n*A168183(n+1))`
-/

namespace A245336.P17753000722838770975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * ((n : ℤ) * A168183 (n + 1))).toNat

end

end A245336.P17753000722838770975

namespace A245336

/-- `A002262(2*n*A168183(n+1))` -/
def P17753000722838770975.Spec : Prop :=
  ∀ n, P17753000722838770975.a n = A245336 n

end A245336

/-! ## A245336.P17237767695020269947

`A053616(2*n*A168183(n+1))`
-/

namespace A245336.P17237767695020269947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 (2 * ((n : ℤ) * A168183 (n + 1))).toNat

end

end A245336.P17237767695020269947

namespace A245336

/-- `A053616(2*n*A168183(n+1))` -/
def P17237767695020269947.Spec : Prop :=
  ∀ n, P17237767695020269947.a n = A245336 n

end A245336

/-! ## A245336.P2432463432798439029

`A002262(2*n*A255808(n+1))`
-/

namespace A245336.P2432463432798439029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * ((n : ℤ) * A255808 (n + 1))).toNat

end

end A245336.P2432463432798439029

namespace A245336

/-- `A002262(2*n*A255808(n+1))` -/
def P2432463432798439029.Spec : Prop :=
  ∀ n, P2432463432798439029.a n = A245336 n

end A245336

/-!
# A245337: Sum of digits of n in fractional base 7/6.

The programs for A245337, the canonical program `A245337.P17508532667847158146` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245337 has offset 0).

The definition of A245337 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245337.P17508532667847158146

`a(6*floor(n/7))+n%7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245337

/-- `a(6*floor(n/7))+n%7` -/
def P17508532667847158146.Spec : Prop :=
  ∀ n, (P17508532667847158146.a n : ℤ) = A245337 n

theorem P17508532667847158146.correct : P17508532667847158146.Spec := by
  intro n
  simp only [A245337]

end A245337

/-! ## A245337.P10434547305161790613

`∑{digits}[A024643(n), #]`
-/

namespace A245337.P10434547305161790613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245337.P10434547305161790613

namespace A245337

/-- `∑{digits}[A024643(n), #]` -/
def P10434547305161790613.Spec : Prop :=
  ∀ n, (P10434547305161790613.a n : ℤ) = A245337 n

end A245337

/-! ## A245337.P14632977028044629656

`log2(∏{digits}[A024643(n), A000079(#)])`
-/

namespace A245337.P14632977028044629656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024643 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x).prod : ℤ) : ℝ)

end

end A245337.P14632977028044629656

namespace A245337

/-- `log2(∏{digits}[A024643(n), A000079(#)])` -/
def P14632977028044629656.Spec : Prop :=
  ∀ n, P14632977028044629656.a n = (A245337 n : ℝ)

end A245337

/-! ## A245337.P12661040146767183362

`log2(∏{digits}[A024643(n), A329562(#)])`
-/

namespace A245337.P12661040146767183362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024643 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A329562 x).prod : ℤ) : ℝ)

end

end A245337.P12661040146767183362

namespace A245337

/-- `log2(∏{digits}[A024643(n), A329562(#)])` -/
def P12661040146767183362.Spec : Prop :=
  ∀ n, P12661040146767183362.a n = (A245337 n : ℝ)

end A245337

/-!
# A245338: Sum of digits of n written in fractional base 9/8.

The programs for A245338, the canonical program `A245338.P5213515093528775186` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245338 has offset 0).

The definition of A245338 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245338.P5213515093528775186

`a(8*floor(n/9))+n%9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245338

/-- `a(8*floor(n/9))+n%9` -/
def P5213515093528775186.Spec : Prop :=
  ∀ n, (P5213515093528775186.a n : ℤ) = A245338 n

theorem P5213515093528775186.correct : P5213515093528775186.Spec := by
  intro n
  simp only [A245338]

end A245338

/-! ## A245338.P3799731080368370682

`A007953(A024656(n))`
-/

namespace A245338.P3799731080368370682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024656 n).toNat

end

end A245338.P3799731080368370682

namespace A245338

/-- `A007953(A024656(n))` -/
def P3799731080368370682.Spec : Prop :=
  ∀ n, P3799731080368370682.a n = A245338 n

end A245338

/-! ## A245338.P10310290810877304621

`∑{digits}[A024656(n), #]`
-/

namespace A245338.P10310290810877304621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024656 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245338.P10310290810877304621

namespace A245338

/-- `∑{digits}[A024656(n), #]` -/
def P10310290810877304621.Spec : Prop :=
  ∀ n, (P10310290810877304621.a n : ℤ) = A245338 n

end A245338

/-! ## A245338.P6565180397743787038

`A002262(2*n*comp[10*n])`
-/

namespace A245338.P6565180397743787038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (2 * n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A245338.P6565180397743787038

namespace A245338

/-- `A002262(2*n*comp[10*n])` -/
def P6565180397743787038.Spec : Prop :=
  ∀ n, P6565180397743787038.a n = A245338 n

end A245338

/-! ## A245338.P4425253515371296228

`A004197(A005843(n)*A052382(n+1))`
-/

namespace A245338.P4425253515371296228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004197 (A005843 n * A052382 (n + 1)).toNat

end

end A245338.P4425253515371296228

namespace A245338

/-- `A004197(A005843(n)*A052382(n+1))` -/
def P4425253515371296228.Spec : Prop :=
  ∀ n, P4425253515371296228.a n = A245338 n

end A245338

/-!
# A245339: Sum of digits of n written in fractional base 10/9.

The programs for A245339, the canonical program `A245339.P6292742796804030641` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245339 has offset 0).

The definition of A245339 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245339.P6292742796804030641

`a(9*floor(n/10))+n%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245339

/-- `a(9*floor(n/10))+n%10` -/
def P6292742796804030641.Spec : Prop :=
  ∀ n, (P6292742796804030641.a n : ℤ) = A245339 n

theorem P6292742796804030641.correct : P6292742796804030641.Spec := by
  intro n
  simp only [A245339]

end A245339

/-! ## A245339.P1305840489505365346

`A007953(A024664(n))`
-/

namespace A245339.P1305840489505365346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024664 n).toNat

end

end A245339.P1305840489505365346

namespace A245339

/-- `A007953(A024664(n))` -/
def P1305840489505365346.Spec : Prop :=
  ∀ n, P1305840489505365346.a n = A245339 n

end A245339

/-! ## A245339.P8395011336341032045

`∑{digits}[A024664(n), #]`
-/

namespace A245339.P8395011336341032045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024664 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245339.P8395011336341032045

namespace A245339

/-- `∑{digits}[A024664(n), #]` -/
def P8395011336341032045.Spec : Prop :=
  ∀ n, (P8395011336341032045.a n : ℤ) = A245339 n

end A245339

/-! ## A245339.P11355772724036074118

`A002262(2*n*ceil(9*n/10))`
-/

namespace A245339.P11355772724036074118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 ((2 * n : ℤ) * ⌈9 * ((n : ℚ) / 10)⌉).toNat

end

end A245339.P11355772724036074118

namespace A245339

/-- `A002262(2*n*ceil(9*n/10))` -/
def P11355772724036074118.Spec : Prop :=
  ∀ n, P11355772724036074118.a n = A245339 n

end A245339

/-! ## A245339.P7681504920906950046

`∑{digits}[A005843(A024663(n))-A024662(n), #]`
-/

namespace A245339.P7681504920906950046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A024663 n).toNat - A024662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245339.P7681504920906950046

namespace A245339

/-- `∑{digits}[A005843(A024663(n))-A024662(n), #]` -/
def P7681504920906950046.Spec : Prop :=
  ∀ n, (P7681504920906950046.a n : ℤ) = A245339 n

end A245339

/-!
# A245341: Sum of digits of n written in fractional base 5/2.

The programs for A245341, the canonical program `A245341.P10931252089229836501` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245341 has offset 0).

The definition of A245341 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245341.P10931252089229836501

`a(2*floor(n/5))+n%5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245341

/-- `a(2*floor(n/5))+n%5` -/
def P10931252089229836501.Spec : Prop :=
  ∀ n, (P10931252089229836501.a n : ℤ) = A245341 n

theorem P10931252089229836501.correct : P10931252089229836501.Spec := by
  intro n
  simp only [A245341]

end A245341

/-! ## A245341.P5254871284248518710

`A007953(A024632(n))`
-/

namespace A245341.P5254871284248518710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024632 n).toNat

end

end A245341.P5254871284248518710

namespace A245341

/-- `A007953(A024632(n))` -/
def P5254871284248518710.Spec : Prop :=
  ∀ n, P5254871284248518710.a n = A245341 n

end A245341

/-! ## A245341.P9429103358120815630

`∑{digits}[A024632(n), #]`
-/

namespace A245341.P9429103358120815630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024632 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245341.P9429103358120815630

namespace A245341

/-- `∑{digits}[A024632(n), #]` -/
def P9429103358120815630.Spec : Prop :=
  ∀ n, (P9429103358120815630.a n : ℤ) = A245341 n

end A245341

/-! ## A245341.P6415714289447792106

`A010874(n)+a(2*A002266(n))` with `a(0)=0`
-/

namespace A245341.P6415714289447792106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A010874 n + a (2 * A002266 n).toNat

end

end A245341.P6415714289447792106

namespace A245341

/-- `A010874(n)+a(2*A002266(n))` -/
def P6415714289447792106.Spec : Prop :=
  ∀ n, P6415714289447792106.a n = A245341 n

end A245341

/-! ## A245341.P12069411472106363641

`∑{digits}[A024659(2*n)/2, #]`
-/

namespace A245341.P12069411472106363641
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024659 (2 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A245341.P12069411472106363641

namespace A245341

/-- `∑{digits}[A024659(2*n)/2, #]` -/
def P12069411472106363641.Spec : Prop :=
  ∀ n, (P12069411472106363641.a n : ℤ) = A245341 n

end A245341

/-! ## A245341.P8542139089394194140

`A014682(∑{digits}[A024659(2*n), #])`
-/

namespace A245341.P8542139089394194140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024659 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245341.P8542139089394194140

namespace A245341

/-- `A014682(∑{digits}[A024659(2*n), #])` -/
def P8542139089394194140.Spec : Prop :=
  ∀ n, P8542139089394194140.a n = A245341 n

end A245341

/-! ## A245341.P10631015551657247803

`∑{digits}[A024659(2*n), A165918(#+1)]`
-/

namespace A245341.P10631015551657247803
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024659 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A165918 (x + 1)).sum

end

end A245341.P10631015551657247803

namespace A245341

/-- `∑{digits}[A024659(2*n), A165918(#+1)]` -/
def P10631015551657247803.Spec : Prop :=
  ∀ n, P10631015551657247803.a n = A245341 n

end A245341

/-! ## A245341.P16748285838059269330

`∑{digits}[floor(A024659(Δ[n²])/2), #]`
-/

namespace A245341.P16748285838059269330
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A024659 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat : ℚ) / 2⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245341.P16748285838059269330

namespace A245341

/-- `∑{digits}[floor(A024659(Δ[n²])/2), #]` -/
def P16748285838059269330.Spec : Prop :=
  ∀ n, (P16748285838059269330.a n : ℤ) = A245341 n

end A245341

/-! ## A245341.P13823137837696601627

`∑{digits}[record[-A001057(A024659(n))], #]`
-/

namespace A245341.P13823137837696601627
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A001057 (A024659 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245341.P13823137837696601627

namespace A245341

/-- `∑{digits}[record[-A001057(A024659(n))], #]` -/
def P13823137837696601627.Spec : Prop :=
  ∀ n, (P13823137837696601627.a n : ℤ) = A245341 n

end A245341

/-! ## A245341.P12041456511441406656

`A004092(A024632(n))/A040000(n)`
-/

namespace A245341.P12041456511441406656
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004092 (A024632 n).toNat : ℚ) / (A040000 n : ℚ)

end

end A245341.P12041456511441406656

namespace A245341

/-- `A004092(A024632(n))/A040000(n)` -/
def P12041456511441406656.Spec : Prop :=
  ∀ n, P12041456511441406656.a n = (A245341 n : ℚ)

end A245341

/-! ## A245341.P8855239399774393101

`A326746(A024632(n))%A000070(n)`
-/

namespace A245341.P8855239399774393101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326746 (A024632 n).toNat) (A000070 n)

end

end A245341.P8855239399774393101

namespace A245341

/-- `A326746(A024632(n))%A000070(n)` -/
def P8855239399774393101.Spec : Prop :=
  ∀ n, P8855239399774393101.a n = A245341 n

end A245341

/-! ## A245341.P11615941497029193721

`A326746(lcm(A024632(n), A062157(n)))`
-/

namespace A245341.P11615941497029193721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (Int.lcm (A024632 n) (A062157 n))

end

end A245341.P11615941497029193721

namespace A245341

/-- `A326746(lcm(A024632(n), A062157(n)))` -/
def P11615941497029193721.Spec : Prop :=
  ∀ n, P11615941497029193721.a n = A245341 n

end A245341

/-! ## A245341.P9700395373670535983

`A326746(A062157(n)²*A024632(n))`
-/

namespace A245341.P9700395373670535983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A062157 n ^ 2 * A024632 n).toNat

end

end A245341.P9700395373670535983

namespace A245341

/-- `A326746(A062157(n)²*A024632(n))` -/
def P9700395373670535983.Spec : Prop :=
  ∀ n, P9700395373670535983.a n = A245341 n

end A245341

/-! ## A245341.P14207405360905757486

`A004092(A024632(n))/A020639(2*(n+1))`
-/

namespace A245341.P14207405360905757486
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004092 (A024632 n).toNat : ℚ) / (A020639 (2 * (n + 1)) : ℚ)

end

end A245341.P14207405360905757486

namespace A245341

/-- `A004092(A024632(n))/A020639(2*(n+1))` -/
def P14207405360905757486.Spec : Prop :=
  ∀ n, P14207405360905757486.a n = (A245341 n : ℚ)

end A245341

/-! ## A245341.P8928911337762678498

`A004092(A024632(n))/A000040(gcd(n, n+1))`
-/

namespace A245341.P8928911337762678498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004092 (A024632 n).toNat : ℚ) / (A000040 (Nat.gcd n (n + 1)) : ℚ)

end

end A245341.P8928911337762678498

namespace A245341

/-- `A004092(A024632(n))/A000040(gcd(n, n+1))` -/
def P8928911337762678498.Spec : Prop :=
  ∀ n, P8928911337762678498.a n = (A245341 n : ℚ)

end A245341

/-! ## A245341.P9786267467455180652

`A326746(A024632(n))-A316868(A064770(n))`
-/

namespace A245341.P9786267467455180652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A024632 n).toNat - A316868 (A064770 n).toNat

end

end A245341.P9786267467455180652

namespace A245341

/-- `A326746(A024632(n))-A316868(A064770(n))` -/
def P9786267467455180652.Spec : Prop :=
  ∀ n, P9786267467455180652.a n = A245341 n

end A245341

/-!
# A245342: Sum of digits of n written in fractional base 7/2.

The programs for A245342, the canonical program `A245342.P12332972798894847621` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245342 has offset 0).

The definition of A245342 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245342.P12332972798894847621

`a(2*floor(n/7))+n%7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245342

/-- `a(2*floor(n/7))+n%7` -/
def P12332972798894847621.Spec : Prop :=
  ∀ n, (P12332972798894847621.a n : ℤ) = A245342 n

theorem P12332972798894847621.correct : P12332972798894847621.Spec := by
  intro n
  simp only [A245342]

end A245342

/-! ## A245342.P11925714281845230748

`A007953(A024639(n))`
-/

namespace A245342.P11925714281845230748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024639 n).toNat

end

end A245342.P11925714281845230748

namespace A245342

/-- `A007953(A024639(n))` -/
def P11925714281845230748.Spec : Prop :=
  ∀ n, P11925714281845230748.a n = A245342 n

end A245342

/-! ## A245342.P12901809752565940560

`∑{digits}[A024639(n), #]`
-/

namespace A245342.P12901809752565940560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024639 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245342.P12901809752565940560

namespace A245342

/-- `∑{digits}[A024639(n), #]` -/
def P12901809752565940560.Spec : Prop :=
  ∀ n, (P12901809752565940560.a n : ℤ) = A245342 n

end A245342

/-! ## A245342.P9906585733871995377

`log2(∏{digits}[A024639(n), A000079(#)])`
-/

namespace A245342.P9906585733871995377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024639 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x).prod : ℤ) : ℝ)

end

end A245342.P9906585733871995377

namespace A245342

/-- `log2(∏{digits}[A024639(n), A000079(#)])` -/
def P9906585733871995377.Spec : Prop :=
  ∀ n, P9906585733871995377.a n = (A245342 n : ℝ)

end A245342

/-! ## A245342.P13528209060535580792

`A326746(A024639(n))%A008574(n)`
-/

namespace A245342.P13528209060535580792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326746 (A024639 n).toNat) (A008574 n)

end

end A245342.P13528209060535580792

namespace A245342

/-- `A326746(A024639(n))%A008574(n)` -/
def P13528209060535580792.Spec : Prop :=
  ∀ n, P13528209060535580792.a n = A245342 n

end A245342

/-! ## A245342.P7145489695617664249

`A326746(A024639(n)%A173547(n))`
-/

namespace A245342.P7145489695617664249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (Int.tmod (A024639 n) (A173547 (n + 15))).toNat

end

end A245342.P7145489695617664249

namespace A245342

/-- `A326746(A024639(n)%A173547(n))` -/
def P7145489695617664249.Spec : Prop :=
  ∀ n, P7145489695617664249.a n = A245342 n

end A245342

/-! ## A245342.P15719637588302256369

`A004092(5*A024639(n))`
-/

namespace A245342.P15719637588302256369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A024639 n).toNat

end

end A245342.P15719637588302256369

namespace A245342

/-- `A004092(5*A024639(n))` -/
def P15719637588302256369.Spec : Prop :=
  ∀ n, P15719637588302256369.a n = A245342 n

end A245342

/-! ## A245342.P11218150029505159869

`A326746(10*A024639(n))`
-/

namespace A245342.P11218150029505159869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (10 * A024639 n).toNat

end

end A245342.P11218150029505159869

namespace A245342

/-- `A326746(10*A024639(n))` -/
def P11218150029505159869.Spec : Prop :=
  ∀ n, P11218150029505159869.a n = A245342 n

end A245342

/-!
# A245343: Sum of digits of n written in fractional base 5/3.

The programs for A245343, the canonical program `A245343.P3332208437960607370` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245343 has offset 0).

The definition of A245343 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245343.P3332208437960607370

`a(3*floor(n/5))+n%5` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245343

/-- `a(3*floor(n/5))+n%5` -/
def P3332208437960607370.Spec : Prop :=
  ∀ n, (P3332208437960607370.a n : ℤ) = A245343 n

theorem P3332208437960607370.correct : P3332208437960607370.Spec := by
  intro n
  simp only [A245343]

end A245343

/-! ## A245343.P3227905145881099725

`A007953(A024633(n))`
-/

namespace A245343.P3227905145881099725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024633 n).toNat

end

end A245343.P3227905145881099725

namespace A245343

/-- `A007953(A024633(n))` -/
def P3227905145881099725.Spec : Prop :=
  ∀ n, P3227905145881099725.a n = A245343 n

end A245343

/-! ## A245343.P3499447144064686370

`∑{digits}[A024633(n), #]`
-/

namespace A245343.P3499447144064686370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024633 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245343.P3499447144064686370

namespace A245343

/-- `∑{digits}[A024633(n), #]` -/
def P3499447144064686370.Spec : Prop :=
  ∀ n, (P3499447144064686370.a n : ℤ) = A245343 n

end A245343

/-! ## A245343.P191353189569944829

`∑{digits}[A024661(2*n)/2, #]`
-/

namespace A245343.P191353189569944829
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024661 (2 * n) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A245343.P191353189569944829

namespace A245343

/-- `∑{digits}[A024661(2*n)/2, #]` -/
def P191353189569944829.Spec : Prop :=
  ∀ n, (P191353189569944829.a n : ℤ) = A245343 n

end A245343

/-! ## A245343.P13910868515387846951

`A014682(∑{digits}[A024661(2*n), #])`
-/

namespace A245343.P13910868515387846951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024661 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245343.P13910868515387846951

namespace A245343

/-- `A014682(∑{digits}[A024661(2*n), #])` -/
def P13910868515387846951.Spec : Prop :=
  ∀ n, P13910868515387846951.a n = A245343 n

end A245343

/-! ## A245343.P12676773784971959012

`∑{digits}[record[A024661(n)/A102128(n+1)], #]`
-/

namespace A245343.P12676773784971959012
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024661 n : ℚ) / (A102128 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A245343.P12676773784971959012

namespace A245343

/-- `∑{digits}[record[A024661(n)/A102128(n+1)], #]` -/
def P12676773784971959012.Spec : Prop :=
  ∀ n, (P12676773784971959012.a n : ℤ) = A245343 n

end A245343

/-! ## A245343.P2433079835280014284

`∑{digits}[record[A024661(n)/A280560(n)], #]`
-/

namespace A245343.P2433079835280014284
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024661 n : ℚ) / (A280560 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).sum

end

end A245343.P2433079835280014284

namespace A245343

/-- `∑{digits}[record[A024661(n)/A280560(n)], #]` -/
def P2433079835280014284.Spec : Prop :=
  ∀ n, (P2433079835280014284.a n : ℤ) = A245343 n

end A245343

/-!
# A245344: Sum of digits of n written in fractional base 7/3.

The programs for A245344, the canonical program `A245344.P9738291235616795270` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245344 has offset 0).

The definition of A245344 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245344.P9738291235616795270

`a(3*floor(n/7))+n%7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245344

/-- `a(3*floor(n/7))+n%7` -/
def P9738291235616795270.Spec : Prop :=
  ∀ n, (P9738291235616795270.a n : ℤ) = A245344 n

theorem P9738291235616795270.correct : P9738291235616795270.Spec := by
  intro n
  simp only [A245344]

end A245344

/-! ## A245344.P6978966367088318001

`A007953(A024640(n))`
-/

namespace A245344.P6978966367088318001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024640 n).toNat

end

end A245344.P6978966367088318001

namespace A245344

/-- `A007953(A024640(n))` -/
def P6978966367088318001.Spec : Prop :=
  ∀ n, P6978966367088318001.a n = A245344 n

end A245344

/-! ## A245344.P10444945696560176364

`∑{digits}[A024640(n), #]`
-/

namespace A245344.P10444945696560176364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245344.P10444945696560176364

namespace A245344

/-- `∑{digits}[A024640(n), #]` -/
def P10444945696560176364.Spec : Prop :=
  ∀ n, (P10444945696560176364.a n : ℤ) = A245344 n

end A245344

/-! ## A245344.P3065103018316917274

`A326746(A024640(and(n, -1)))`
-/

namespace A245344.P3065103018316917274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A024640 (Int.land (n : ℤ) (-1)).toNat).toNat

end

end A245344.P3065103018316917274

namespace A245344

/-- `A326746(A024640(and(n, -1)))` -/
def P3065103018316917274.Spec : Prop :=
  ∀ n, P3065103018316917274.a n = A245344 n

end A245344

/-! ## A245344.P1461368330227063521

`A326746(A024640(2*n-n))`
-/

namespace A245344.P1461368330227063521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A024640 (2 * n - n)).toNat

end

end A245344.P1461368330227063521

namespace A245344

/-- `A326746(A024640(2*n-n))` -/
def P1461368330227063521.Spec : Prop :=
  ∀ n, P1461368330227063521.a n = A245344 n

end A245344

/-! ## A245344.P5035906844519324905

`A057427(n)*A326746(A024640(n))`
-/

namespace A245344.P5035906844519324905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A326746 (A024640 n).toNat

end

end A245344.P5035906844519324905

namespace A245344

/-- `A057427(n)*A326746(A024640(n))` -/
def P5035906844519324905.Spec : Prop :=
  ∀ n, P5035906844519324905.a n = A245344 n

end A245344

/-! ## A245344.P16670639481152462685

`A326746(A024640(n)%A000079(n))`
-/

namespace A245344.P16670639481152462685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (Int.tmod (A024640 n) (A000079 n)).toNat

end

end A245344.P16670639481152462685

namespace A245344

/-- `A326746(A024640(n)%A000079(n))` -/
def P16670639481152462685.Spec : Prop :=
  ∀ n, P16670639481152462685.a n = A245344 n

end A245344

/-! ## A245344.P7764417944877508188

`A326746(A024640(n))%A000124(n)`
-/

namespace A245344.P7764417944877508188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326746 (A024640 n).toNat) (A000124 n)

end

end A245344.P7764417944877508188

namespace A245344

/-- `A326746(A024640(n))%A000124(n)` -/
def P7764417944877508188.Spec : Prop :=
  ∀ n, P7764417944877508188.a n = A245344 n

end A245344

/-! ## A245344.P8479598508412006423

`or(A000035(n), A326746(A024640(n)))`
-/

namespace A245344.P8479598508412006423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 n) (A326746 (A024640 n).toNat)

end

end A245344.P8479598508412006423

namespace A245344

/-- `or(A000035(n), A326746(A024640(n)))` -/
def P8479598508412006423.Spec : Prop :=
  ∀ n, P8479598508412006423.a n = A245344 n

end A245344

/-! ## A245344.P13695513983302085324

`A007318(C(2, n))*A326746(A024640(n))`
-/

namespace A245344.P13695513983302085324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A326746 (A024640 n).toNat

end

end A245344.P13695513983302085324

namespace A245344

/-- `A007318(C(2, n))*A326746(A024640(n))` -/
def P13695513983302085324.Spec : Prop :=
  ∀ n, P13695513983302085324.a n = A245344 n

end A245344

/-! ## A245344.P16815151239227645148

`A326746(A024640(n))^A014963(∑[n+1])`
-/

namespace A245344.P16815151239227645148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326746 (A024640 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A245344.P16815151239227645148

namespace A245344

/-- `A326746(A024640(n))^A014963(∑[n+1])` -/
def P16815151239227645148.Spec : Prop :=
  ∀ n, P16815151239227645148.a n = (A245344 n : ℚ)

end A245344

/-! ## A245344.P4404361496881810764

`A000041(C(2, n+2))*A326746(A024640(n))`
-/

namespace A245344.P4404361496881810764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A326746 (A024640 n).toNat

end

end A245344.P4404361496881810764

namespace A245344

/-- `A000041(C(2, n+2))*A326746(A024640(n))` -/
def P4404361496881810764.Spec : Prop :=
  ∀ n, P4404361496881810764.a n = A245344 n

end A245344

/-! ## A245344.P12651963456031483524

`A014963(42*(n+1))*A326746(A024640(n))`
-/

namespace A245344.P12651963456031483524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (42 * (n + 1)) * A326746 (A024640 n).toNat

end

end A245344.P12651963456031483524

namespace A245344

/-- `A014963(42*(n+1))*A326746(A024640(n))` -/
def P12651963456031483524.Spec : Prop :=
  ∀ n, P12651963456031483524.a n = A245344 n

end A245344

/-! ## A245344.P10428325182326406308

`A006530(gcd(n, n+1))*A326746(A024640(n))`
-/

namespace A245344.P10428325182326406308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Nat.gcd n (n + 1)) * A326746 (A024640 n).toNat

end

end A245344.P10428325182326406308

namespace A245344

/-- `A006530(gcd(n, n+1))*A326746(A024640(n))` -/
def P10428325182326406308.Spec : Prop :=
  ∀ n, P10428325182326406308.a n = A245344 n

end A245344

/-! ## A245344.P4642856146419067870

`A007318(val(n²+1, 2))*A326746(A024640(n))`
-/

namespace A245344.P4642856146419067870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n ^ 2 + 1) 2) * A326746 (A024640 n).toNat

end

end A245344.P4642856146419067870

namespace A245344

/-- `A007318(val(n²+1, 2))*A326746(A024640(n))` -/
def P4642856146419067870.Spec : Prop :=
  ∀ n, P4642856146419067870.a n = A245344 n

end A245344

/-! ## A245344.P14059127738286240581

`ceil(1/A000010(n+1))*A326746(A024640(n))`
-/

namespace A245344.P14059127738286240581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / (A000010 (n + 1) : ℚ)⌉ * A326746 (A024640 n).toNat

end

end A245344.P14059127738286240581

namespace A245344

/-- `ceil(1/A000010(n+1))*A326746(A024640(n))` -/
def P14059127738286240581.Spec : Prop :=
  ∀ n, P14059127738286240581.a n = A245344 n

end A245344

/-! ## A245344.P9448110809458080401

`A326746(A024640(n))+A000038(A137735(n))`
-/

namespace A245344.P9448110809458080401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A024640 n).toNat + A000038 (A137735 n).toNat

end

end A245344.P9448110809458080401

namespace A245344

/-- `A326746(A024640(n))+A000038(A137735(n))` -/
def P9448110809458080401.Spec : Prop :=
  ∀ n, P9448110809458080401.a n = A245344 n

end A245344

/-! ## A245344.P14761336250194388690

`A326746(A024640(n))+A000038(A033927(n+1))`
-/

namespace A245344.P14761336250194388690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A024640 n).toNat + A000038 (A033927 (n + 1)).toNat

end

end A245344.P14761336250194388690

namespace A245344

/-- `A326746(A024640(n))+A000038(A033927(n+1))` -/
def P14761336250194388690.Spec : Prop :=
  ∀ n, P14761336250194388690.a n = A245344 n

end A245344

/-!
# A245345: Sum of digits of n written in fractional base 9/2.

The programs for A245345, the canonical program `A245345.P17132781851504430069` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245345 has offset 0).

The definition of A245345 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245345.P17132781851504430069

`a(2*floor(n/9))+n%9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245345

/-- `a(2*floor(n/9))+n%9` -/
def P17132781851504430069.Spec : Prop :=
  ∀ n, (P17132781851504430069.a n : ℤ) = A245345 n

theorem P17132781851504430069.correct : P17132781851504430069.Spec := by
  intro n
  simp only [A245345]

end A245345

/-! ## A245345.P824776742740049143

`A007953(A024650(n))`
-/

namespace A245345.P824776742740049143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024650 n).toNat

end

end A245345.P824776742740049143

namespace A245345

/-- `A007953(A024650(n))` -/
def P824776742740049143.Spec : Prop :=
  ∀ n, P824776742740049143.a n = A245345 n

end A245345

/-! ## A245345.P3641216132297763980

`∑{digits}[A024650(n), #]`
-/

namespace A245345.P3641216132297763980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024650 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245345.P3641216132297763980

namespace A245345

/-- `∑{digits}[A024650(n), #]` -/
def P3641216132297763980.Spec : Prop :=
  ∀ n, (P3641216132297763980.a n : ℤ) = A245345 n

end A245345

/-! ## A245345.P296690093835704412

`A326746(A024650(C(n+1, n)-1))`
-/

namespace A245345.P296690093835704412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A024650 (Nat.choose (n + 1) n - 1)).toNat

end

end A245345.P296690093835704412

namespace A245345

/-- `A326746(A024650(C(n+1, n)-1))` -/
def P296690093835704412.Spec : Prop :=
  ∀ n, P296690093835704412.a n = A245345 n

end A245345

/-! ## A245345.P16963408677466151380

`A326746(A024650(n)%A000143(n))`
-/

namespace A245345.P16963408677466151380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (Int.tmod (A024650 n) (A000143 n)).toNat

end

end A245345.P16963408677466151380

namespace A245345

/-- `A326746(A024650(n)%A000143(n))` -/
def P16963408677466151380.Spec : Prop :=
  ∀ n, P16963408677466151380.a n = A245345 n

end A245345

/-! ## A245345.P18427817451465895973

`A326746(A024650(n))%A008574(n)`
-/

namespace A245345.P18427817451465895973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326746 (A024650 n).toNat) (A008574 n)

end

end A245345.P18427817451465895973

namespace A245345

/-- `A326746(A024650(n))%A008574(n)` -/
def P18427817451465895973.Spec : Prop :=
  ∀ n, P18427817451465895973.a n = A245345 n

end A245345

/-! ## A245345.P14529895432694525113

`A326746(A024650(n))+n*A010054(3*n+2)`
-/

namespace A245345.P14529895432694525113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A024650 n).toNat + (n : ℤ) * A010054 (3 * n + 2)

end

end A245345.P14529895432694525113

namespace A245345

/-- `A326746(A024650(n))+n*A010054(3*n+2)` -/
def P14529895432694525113.Spec : Prop :=
  ∀ n, P14529895432694525113.a n = A245345 n

end A245345

/-! ## A245345.P10865072343908472670

`A326746(A024650(n))/A096465(∑[n])`
-/

namespace A245345.P10865072343908472670
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A326746 (A024650 n).toNat : ℚ) / (A096465 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A245345.P10865072343908472670

namespace A245345

/-- `A326746(A024650(n))/A096465(∑[n])` -/
def P10865072343908472670.Spec : Prop :=
  ∀ n, P10865072343908472670.a n = (A245345 n : ℚ)

end A245345

/-! ## A245345.P13762795954879283813

`A326746(A056926(A024650(n)²))`
-/

namespace A245345.P13762795954879283813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A056926 (A024650 n ^ 2).toNat).toNat

end

end A245345.P13762795954879283813

namespace A245345

/-- `A326746(A056926(A024650(n)²))` -/
def P13762795954879283813.Spec : Prop :=
  ∀ n, P13762795954879283813.a n = A245345 n

end A245345

/-!
# A245346: Sum of digits of n in fractional base 10/3.

The programs for A245346, the canonical program `A245346.P13251520701936030763` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245346 has offset 0).

The definition of A245346 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245346.P13251520701936030763

`a(3*floor(n/10))+n%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245346

/-- `a(3*floor(n/10))+n%10` -/
def P13251520701936030763.Spec : Prop :=
  ∀ n, (P13251520701936030763.a n : ℤ) = A245346 n

theorem P13251520701936030763.correct : P13251520701936030763.Spec := by
  intro n
  simp only [A245346]

end A245346

/-! ## A245346.P4739814404992760387

`A007953(A024658(n))`
-/

namespace A245346.P4739814404992760387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024658 n).toNat

end

end A245346.P4739814404992760387

namespace A245346

/-- `A007953(A024658(n))` -/
def P4739814404992760387.Spec : Prop :=
  ∀ n, P4739814404992760387.a n = A245346 n

end A245346

/-! ## A245346.P12431811920611360546

`∑{digits}[A024658(n), #]`
-/

namespace A245346.P12431811920611360546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024658 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245346.P12431811920611360546

namespace A245346

/-- `∑{digits}[A024658(n), #]` -/
def P12431811920611360546.Spec : Prop :=
  ∀ n, (P12431811920611360546.a n : ℤ) = A245346 n

end A245346

/-!
# A245347: Sum of digits of n written in fractional base 8/3.

The programs for A245347, the canonical program `A245347.P14091615739559942579` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245347 has offset 0).

The definition of A245347 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245347.P14091615739559942579

`a(3*floor(n/8))+n%8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245347

/-- `a(3*floor(n/8))+n%8` -/
def P14091615739559942579.Spec : Prop :=
  ∀ n, (P14091615739559942579.a n : ℤ) = A245347 n

theorem P14091615739559942579.correct : P14091615739559942579.Spec := by
  intro n
  simp only [A245347]

end A245347

/-! ## A245347.P17805632797214941669

`A007953(A024645(n))`
-/

namespace A245347.P17805632797214941669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024645 n).toNat

end

end A245347.P17805632797214941669

namespace A245347

/-- `A007953(A024645(n))` -/
def P17805632797214941669.Spec : Prop :=
  ∀ n, P17805632797214941669.a n = A245347 n

end A245347

/-! ## A245347.P13914463214031653028

`∑{digits}[A024645(n), #]`
-/

namespace A245347.P13914463214031653028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024645 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245347.P13914463214031653028

namespace A245347

/-- `∑{digits}[A024645(n), #]` -/
def P13914463214031653028.Spec : Prop :=
  ∀ n, (P13914463214031653028.a n : ℤ) = A245347 n

end A245347

/-! ## A245347.P13746237272696901052

`A326746(and(2^n-1, A024645(n)))`
-/

namespace A245347.P13746237272696901052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (Int.land ((2 ^ n : ℤ) - 1) (A024645 n)).toNat

end

end A245347.P13746237272696901052

namespace A245347

/-- `A326746(and(2^n-1, A024645(n)))` -/
def P13746237272696901052.Spec : Prop :=
  ∀ n, P13746237272696901052.a n = A245347 n

end A245347

/-! ## A245347.P17589169524401474118

`A326746(A024645(n)*A057427(n))`
-/

namespace A245347.P17589169524401474118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (A024645 n * A057427 n).toNat

end

end A245347.P17589169524401474118

namespace A245347

/-- `A326746(A024645(n)*A057427(n))` -/
def P17589169524401474118.Spec : Prop :=
  ∀ n, P17589169524401474118.a n = A245347 n

end A245347

/-! ## A245347.P785565417301452888

`A326746(A024645(n)%A008527(n))`
-/

namespace A245347.P785565417301452888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (Int.tmod (A024645 n) (A008527 n)).toNat

end

end A245347.P785565417301452888

namespace A245347

/-- `A326746(A024645(n)%A008527(n))` -/
def P785565417301452888.Spec : Prop :=
  ∀ n, P785565417301452888.a n = A245347 n

end A245347

/-! ## A245347.P4839393656824232959

`A004092(5*A024645(n))`
-/

namespace A245347.P4839393656824232959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A024645 n).toNat

end

end A245347.P4839393656824232959

namespace A245347

/-- `A004092(5*A024645(n))` -/
def P4839393656824232959.Spec : Prop :=
  ∀ n, P4839393656824232959.a n = A245347 n

end A245347

/-! ## A245347.P11346649579445080757

`A326746(10*A024645(n))`
-/

namespace A245347.P11346649579445080757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (10 * A024645 n).toNat

end

end A245347.P11346649579445080757

namespace A245347

/-- `A326746(10*A024645(n))` -/
def P11346649579445080757.Spec : Prop :=
  ∀ n, P11346649579445080757.a n = A245347 n

end A245347

/-!
# A245349: Sum of digits of n written in fractional base 7/4.

The programs for A245349, the canonical program `A245349.P2819322641072772949` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245349 has offset 0).

The definition of A245349 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245349.P2819322641072772949

`a(4*floor(n/7))+n%7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245349

/-- `a(4*floor(n/7))+n%7` -/
def P2819322641072772949.Spec : Prop :=
  ∀ n, (P2819322641072772949.a n : ℤ) = A245349 n

theorem P2819322641072772949.correct : P2819322641072772949.Spec := by
  intro n
  simp only [A245349]

end A245349

/-! ## A245349.P14646577450100136803

`A007953(A024641(n))`
-/

namespace A245349.P14646577450100136803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024641 n).toNat

end

end A245349.P14646577450100136803

namespace A245349

/-- `A007953(A024641(n))` -/
def P14646577450100136803.Spec : Prop :=
  ∀ n, P14646577450100136803.a n = A245349 n

end A245349

/-! ## A245349.P308637979646279970

`∑{digits}[A024641(n), #]`
-/

namespace A245349.P308637979646279970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245349.P308637979646279970

namespace A245349

/-- `∑{digits}[A024641(n), #]` -/
def P308637979646279970.Spec : Prop :=
  ∀ n, (P308637979646279970.a n : ℤ) = A245349 n

end A245349

/-! ## A245349.P11356846354475153447

`log2(∏{digits}[A024641(n), A000079(#)])`
-/

namespace A245349.P11356846354475153447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024641 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x).prod : ℤ) : ℝ)

end

end A245349.P11356846354475153447

namespace A245349

/-- `log2(∏{digits}[A024641(n), A000079(#)])` -/
def P11356846354475153447.Spec : Prop :=
  ∀ n, P11356846354475153447.a n = (A245349 n : ℝ)

end A245349

/-! ## A245349.P16313942452369638130

`A326746(A024641(n)%(2^n))`
-/

namespace A245349.P16313942452369638130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (Int.tmod (A024641 n) (2 ^ n : ℤ)).toNat

end

end A245349.P16313942452369638130

namespace A245349

/-- `A326746(A024641(n)%(2^n))` -/
def P16313942452369638130.Spec : Prop :=
  ∀ n, P16313942452369638130.a n = A245349 n

end A245349

/-!
# A245350: Sum of digits of n written in fractional base 9/4.

The programs for A245350, the canonical program `A245350.P6466751077634062531` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245350 has offset 0).

The definition of A245350 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245350.P6466751077634062531

`a(4*floor(n/9))+n%9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245350

/-- `a(4*floor(n/9))+n%9` -/
def P6466751077634062531.Spec : Prop :=
  ∀ n, (P6466751077634062531.a n : ℤ) = A245350 n

theorem P6466751077634062531.correct : P6466751077634062531.Spec := by
  intro n
  simp only [A245350]

end A245350

/-! ## A245350.P5487740816848074383

`A007953(A024652(n))`
-/

namespace A245350.P5487740816848074383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024652 n).toNat

end

end A245350.P5487740816848074383

namespace A245350

/-- `A007953(A024652(n))` -/
def P5487740816848074383.Spec : Prop :=
  ∀ n, P5487740816848074383.a n = A245350 n

end A245350

/-! ## A245350.P1894926942260108380

`∑{digits}[A024652(n), #]`
-/

namespace A245350.P1894926942260108380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024652 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245350.P1894926942260108380

namespace A245350

/-- `∑{digits}[A024652(n), #]` -/
def P1894926942260108380.Spec : Prop :=
  ∀ n, (P1894926942260108380.a n : ℤ) = A245350 n

end A245350

/-! ## A245350.P15914684999262551413

`A326746(A024652(n)%A000079(n))`
-/

namespace A245350.P15914684999262551413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (Int.tmod (A024652 n) (A000079 n)).toNat

end

end A245350.P15914684999262551413

namespace A245350

/-- `A326746(A024652(n)%A000079(n))` -/
def P15914684999262551413.Spec : Prop :=
  ∀ n, P15914684999262551413.a n = A245350 n

end A245350

/-! ## A245350.P12538965766179329375

`A326746(A024652(n))%A122756(n)`
-/

namespace A245350.P12538965766179329375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326746 (A024652 n).toNat) (A122756 n)

end

end A245350.P12538965766179329375

namespace A245350

/-- `A326746(A024652(n))%A122756(n)` -/
def P12538965766179329375.Spec : Prop :=
  ∀ n, P12538965766179329375.a n = A245350 n

end A245350

/-!
# A245351: Sum of digits of n written in fractional base 10/7.

The programs for A245351, the canonical program `A245351.P9873945166302446628` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245351 has offset 0).

The definition of A245351 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245351.P9873945166302446628

`a(7*floor(n/10))+n%10` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245351

/-- `a(7*floor(n/10))+n%10` -/
def P9873945166302446628.Spec : Prop :=
  ∀ n, (P9873945166302446628.a n : ℤ) = A245351 n

theorem P9873945166302446628.correct : P9873945166302446628.Spec := by
  intro n
  simp only [A245351]

end A245351

/-! ## A245351.P6488496245589953557

`A007953(A024662(n))`
-/

namespace A245351.P6488496245589953557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024662 n).toNat

end

end A245351.P6488496245589953557

namespace A245351

/-- `A007953(A024662(n))` -/
def P6488496245589953557.Spec : Prop :=
  ∀ n, P6488496245589953557.a n = A245351 n

end A245351

/-! ## A245351.P1503420022803548970

`∑{digits}[A024662(n), #]`
-/

namespace A245351.P1503420022803548970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024662 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245351.P1503420022803548970

namespace A245351

/-- `∑{digits}[A024662(n), #]` -/
def P1503420022803548970.Spec : Prop :=
  ∀ n, (P1503420022803548970.a n : ℤ) = A245351 n

end A245351

/-! ## A245351.P809734093298693861

`A169805(A024662(n))/A040000(n)`
-/

namespace A245351.P809734093298693861
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169805 (A024662 n).toNat : ℚ) / (A040000 n : ℚ)

end

end A245351.P809734093298693861

namespace A245351

/-- `A169805(A024662(n))/A040000(n)` -/
def P809734093298693861.Spec : Prop :=
  ∀ n, P809734093298693861.a n = (A245351 n : ℚ)

end A245351

/-! ## A245351.P1982371939507623013

`∑{digits}[A057353(A024664(n)-n)+n, #]`
-/

namespace A245351.P1982371939507623013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 (A024664 n - (n : ℤ)).toNat + (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245351.P1982371939507623013

namespace A245351

/-- `∑{digits}[A057353(A024664(n)-n)+n, #]` -/
def P1982371939507623013.Spec : Prop :=
  ∀ n, (P1982371939507623013.a n : ℤ) = A245351 n

end A245351

/-!
# A245352: Sum of digits of n written in fractional base 7/5.

The programs for A245352, the canonical program `A245352.P16765501746583003559` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245352 has offset 0).

The definition of A245352 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245352.P16765501746583003559

`a(5*floor(n/7))+n%7` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245352

/-- `a(5*floor(n/7))+n%7` -/
def P16765501746583003559.Spec : Prop :=
  ∀ n, (P16765501746583003559.a n : ℤ) = A245352 n

theorem P16765501746583003559.correct : P16765501746583003559.Spec := by
  intro n
  simp only [A245352]

end A245352

/-! ## A245352.P6535632707369932979

`A007953(A024642(n))`
-/

namespace A245352.P6535632707369932979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024642 n).toNat

end

end A245352.P6535632707369932979

namespace A245352

/-- `A007953(A024642(n))` -/
def P6535632707369932979.Spec : Prop :=
  ∀ n, P6535632707369932979.a n = A245352 n

end A245352

/-! ## A245352.P6124310343780835441

`∑{digits}[A024642(n), #]`
-/

namespace A245352.P6124310343780835441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024642 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245352.P6124310343780835441

namespace A245352

/-- `∑{digits}[A024642(n), #]` -/
def P6124310343780835441.Spec : Prop :=
  ∀ n, (P6124310343780835441.a n : ℤ) = A245352 n

end A245352

/-! ## A245352.P3871120106194706651

`log2(∏{digits}[A024642(n), A000079(#)])`
-/

namespace A245352.P3871120106194706651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024642 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x).prod : ℤ) : ℝ)

end

end A245352.P3871120106194706651

namespace A245352

/-- `log2(∏{digits}[A024642(n), A000079(#)])` -/
def P3871120106194706651.Spec : Prop :=
  ∀ n, P3871120106194706651.a n = (A245352 n : ℝ)

end A245352

/-! ## A245352.P5174276601040218903

`A326746(A024642(n)%A006918(3*n+1))`
-/

namespace A245352.P5174276601040218903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (Int.tmod (A024642 n) (A006918 (3 * n + 1))).toNat

end

end A245352.P5174276601040218903

namespace A245352

/-- `A326746(A024642(n)%A006918(3*n+1))` -/
def P5174276601040218903.Spec : Prop :=
  ∀ n, P5174276601040218903.a n = A245352 n

end A245352

/-!
# A245353: Sum of digits of n written in fractional base 9/7.

The programs for A245353, the canonical program `A245353.P17561550529225114986` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245353 has offset 0).

The definition of A245353 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245353.P17561550529225114986

`a(7*floor(n/9))+n%9` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245353

/-- `a(7*floor(n/9))+n%9` -/
def P17561550529225114986.Spec : Prop :=
  ∀ n, (P17561550529225114986.a n : ℤ) = A245353 n

theorem P17561550529225114986.correct : P17561550529225114986.Spec := by
  intro n
  simp only [A245353]

end A245353

/-! ## A245353.P3031952685237621247

`A007953(A024655(n))`
-/

namespace A245353.P3031952685237621247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024655 n).toNat

end

end A245353.P3031952685237621247

namespace A245353

/-- `A007953(A024655(n))` -/
def P3031952685237621247.Spec : Prop :=
  ∀ n, P3031952685237621247.a n = A245353 n

end A245353

/-! ## A245353.P15558885997271096920

`∑{digits}[A024655(n), #]`
-/

namespace A245353.P15558885997271096920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024655 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245353.P15558885997271096920

namespace A245353

/-- `∑{digits}[A024655(n), #]` -/
def P15558885997271096920.Spec : Prop :=
  ∀ n, (P15558885997271096920.a n : ℤ) = A245353 n

end A245353

/-! ## A245353.P13765169897424329813

`A169805(A024656(n))-n`
-/

namespace A245353.P13765169897424329813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169805 (A024656 n).toNat - (n : ℤ)

end

end A245353.P13765169897424329813

namespace A245353

/-- `A169805(A024656(n))-n` -/
def P13765169897424329813.Spec : Prop :=
  ∀ n, P13765169897424329813.a n = A245353 n

end A245353

/-!
# A245354: Sum of digits of n in fractional base 9/5.

The programs for A245354, the canonical program `A245354.P11124633670853891194` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245354 has offset 0).

The definition of A245354 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007953, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245354.P11124633670853891194

`A007953(A024653(n))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A245354

/-- `A007953(A024653(n))` -/
def P11124633670853891194.Spec : Prop :=
  ∀ n, P11124633670853891194.a n = A245354 n

theorem P11124633670853891194.correct : P11124633670853891194.Spec := by
  intro n
  simp only [A245354]

end A245354

/-! ## A245354.P1264574146171605634

`a(5*floor(n/9))+n%9` with `a(0)=0`
-/

namespace A245354.P1264574146171605634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (5 * ⌊(n : ℚ) / 9⌋).toNat + n % 9

end

end A245354.P1264574146171605634

namespace A245354

/-- `a(5*floor(n/9))+n%9` -/
def P1264574146171605634.Spec : Prop :=
  ∀ n, (P1264574146171605634.a n : ℤ) = A245354 n

end A245354

/-! ## A245354.P12858687091611240236

`∑{digits}[A024653(n), #]`
-/

namespace A245354.P12858687091611240236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024653 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245354.P12858687091611240236

namespace A245354

/-- `∑{digits}[A024653(n), #]` -/
def P12858687091611240236.Spec : Prop :=
  ∀ n, (P12858687091611240236.a n : ℤ) = A245354 n

end A245354

/-!
# A245355: Sum of digits of n written in fractional base 8/5.

The programs for A245355, the canonical program `A245355.P10931875133850919098` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245355 has offset 0).

The definition of A245355 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245355.P10931875133850919098

`a(5*floor(n/8))+n%8` with `a(0)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245355

/-- `a(5*floor(n/8))+n%8` -/
def P10931875133850919098.Spec : Prop :=
  ∀ n, (P10931875133850919098.a n : ℤ) = A245355 n

theorem P10931875133850919098.correct : P10931875133850919098.Spec := by
  intro n
  simp only [A245355]

end A245355

/-! ## A245355.P11207323397192229606

`A007953(A024647(n))`
-/

namespace A245355.P11207323397192229606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A024647 n).toNat

end

end A245355.P11207323397192229606

namespace A245355

/-- `A007953(A024647(n))` -/
def P11207323397192229606.Spec : Prop :=
  ∀ n, P11207323397192229606.a n = A245355 n

end A245355

/-! ## A245355.P1621081301192102588

`∑{digits}[A024647(n), #]`
-/

namespace A245355.P1621081301192102588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024647 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A245355.P1621081301192102588

namespace A245355

/-- `∑{digits}[A024647(n), #]` -/
def P1621081301192102588.Spec : Prop :=
  ∀ n, (P1621081301192102588.a n : ℤ) = A245355 n

end A245355

/-! ## A245355.P13448767002978306306

`log2(∏{digits}[A024647(n), A000079(#)])`
-/

namespace A245355.P13448767002978306306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024647 n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000079 x).prod : ℤ) : ℝ)

end

end A245355.P13448767002978306306

namespace A245355

/-- `log2(∏{digits}[A024647(n), A000079(#)])` -/
def P13448767002978306306.Spec : Prop :=
  ∀ n, P13448767002978306306.a n = (A245355 n : ℝ)

end A245355

/-! ## A245355.P15989177144457978841

`A326746(lcm((-1)^n, A024647(n)))`
-/

namespace A245355.P15989177144457978841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (Int.lcm ((-1) ^ n) (A024647 n))

end

end A245355.P15989177144457978841

namespace A245355

/-- `A326746(lcm((-1)^n, A024647(n)))` -/
def P15989177144457978841.Spec : Prop :=
  ∀ n, P15989177144457978841.a n = A245355 n

end A245355

/-! ## A245355.P3015488251927405764

`A326746(round(n/(n+1))*A024647(n))`
-/

namespace A245355.P3015488251927405764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326746 (SequenceMachineLib.roundAway ((n : ℚ) / (n + 1 : ℚ)) * A024647 n).toNat

end

end A245355.P3015488251927405764

namespace A245355

/-- `A326746(round(n/(n+1))*A024647(n))` -/
def P3015488251927405764.Spec : Prop :=
  ∀ n, P3015488251927405764.a n = A245355 n

end A245355

/-! ## A245355.P509889631841600410

`A326746(A024647(n))%A000124(n)`
-/

namespace A245355.P509889631841600410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A326746 (A024647 n).toNat) (A000124 n)

end

end A245355.P509889631841600410

namespace A245355

/-- `A326746(A024647(n))%A000124(n)` -/
def P509889631841600410.Spec : Prop :=
  ∀ n, P509889631841600410.a n = A245355 n

end A245355

/-!
# A245356: Number of numbers whose base-4/3 expansion (see A024631) has n digits.

The programs for A245356, the canonical program `A245356.P3604867257649377348` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245356 has offset 1).

The definition of A245356 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A072493, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245356.P3604867257649377348

`4*A072493(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245356

/-- `4*A072493(n+1)` -/
def P3604867257649377348.Spec : Prop :=
  ∀ n, P3604867257649377348.a n = A245356 (n + 1)

theorem P3604867257649377348.correct : P3604867257649377348.Spec := by
  intro n
  simp only [A245356, Nat.add_sub_cancel]

end A245356

/-! ## A245356.P4154923170206338460

`4*Δ[floor((1/3+1)*a(n-1))]` with `a(0)=2, a(1)=3`
-/

namespace A245356.P4154923170206338460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  ⌊((1 : ℚ) / 3 + 1) * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A245356.P4154923170206338460

namespace A245356

/-- `4*Δ[floor((1/3+1)*a(n-1))]` -/
def P4154923170206338460.Spec : Prop :=
  ∀ n, P4154923170206338460.a n = A245356 (n + 1)

end A245356

/-! ## A245356.P13713430557574505129

`4*Δ[floor(2*2/3*a(n-1))]` with `a(0)=2, a(1)=3`
-/

namespace A245356.P13713430557574505129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  ⌊2 * ((2 : ℚ) / 3 * (f1 (n - 1) : ℚ))⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A245356.P13713430557574505129

namespace A245356

/-- `4*Δ[floor(2*2/3*a(n-1))]` -/
def P13713430557574505129.Spec : Prop :=
  ∀ n, P13713430557574505129.a n = A245356 (n + 1)

theorem P13713430557574505129.correct : P13713430557574505129.Spec := by
  intro n
  simp only [A245356, Nat.add_sub_cancel, A245356.P13713430557574505129.f1, A245356.P13713430557574505129.a, A245356.P3604867257649377348.a, A072493, A072493.P1514285638704659196.f1, A072493.P1514285638704659196.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A245356

/-! ## A245356.P7449606684842002778

`4*Δ[a(n-1)+ceil(a(n-1)/3)]` with `a(0)=0, a(1)=1`
-/

namespace A245356.P7449606684842002778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  f1 (n - 1) + ⌈(f1 (n - 1) : ℚ) / 3⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (f1 (n + 1) - f1 n)

end

end A245356.P7449606684842002778

namespace A245356

/-- `4*Δ[a(n-1)+ceil(a(n-1)/3)]` -/
def P7449606684842002778.Spec : Prop :=
  ∀ n, P7449606684842002778.a n = A245356 (n + 1)

end A245356

/-! ## A245356.P7810590110452943700

`4*ceil(A087192(n+1)/4)`
-/

namespace A245356.P7810590110452943700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * ⌈(A087192 (n + 1) : ℚ) / 4⌉

end

end A245356.P7810590110452943700

namespace A245356

/-- `4*ceil(A087192(n+1)/4)` -/
def P7810590110452943700.Spec : Prop :=
  ∀ n, P7810590110452943700.a n = A245356 (n + 1)

end A245356

/-!
# A245357: Number of numbers whose base 5/4 expansion (see A024634) has n digits.

The programs for A245357, the canonical program `A245357.P4416678491672085733` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245357 has offset 1).

The definition of A245357 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120160, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245357.P4416678491672085733

`5*A120160(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245357

/-- `5*A120160(n+1)` -/
def P4416678491672085733.Spec : Prop :=
  ∀ n, P4416678491672085733.a n = A245357 (n + 1)

theorem P4416678491672085733.correct : P4416678491672085733.Spec := by
  intro n
  simp only [A245357, Nat.add_sub_cancel]

end A245357

/-! ## A245357.P11224311173142125696

`5*Δ[floor(5/4*a(n-1))]` with `a(0)=3, a(1)=4`
-/

namespace A245357.P11224311173142125696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 4] fun n f1 =>
  ⌊(5 : ℚ) / 4 * (f1 (n - 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (f1 (n + 1) - f1 n)

end

end A245357.P11224311173142125696

namespace A245357

/-- `5*Δ[floor(5/4*a(n-1))]` -/
def P11224311173142125696.Spec : Prop :=
  ∀ n, P11224311173142125696.a n = A245357 (n + 1)

end A245357

/-! ## A245357.P14133848922101826819

`5*round((A182305(n)-1)/5)`
-/

namespace A245357.P14133848922101826819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.roundAway ((A182305 n - 1 : ℚ) / 5)

end

end A245357.P14133848922101826819

namespace A245357

/-- `5*round((A182305(n)-1)/5)` -/
def P14133848922101826819.Spec : Prop :=
  ∀ n, P14133848922101826819.a n = A245357 (n + 1)

end A245357

/-! ## A245357.P5060398306725977370

`5*round(A100586(n+1)/5)`
-/

namespace A245357.P5060398306725977370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * SequenceMachineLib.roundAway ((A100586 (n + 1) : ℚ) / 5)

end

end A245357.P5060398306725977370

namespace A245357

/-- `5*round(A100586(n+1)/5)` -/
def P5060398306725977370.Spec : Prop :=
  ∀ n, P5060398306725977370.a n = A245357 (n + 1)

end A245357

/-! ## A245357.P12795378455177924689

`A008587(Δ[round(5/4*a(n-1))])` with `a(0)=1, a(1)=2`
-/

namespace A245357.P12795378455177924689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  SequenceMachineLib.roundAway ((5 : ℚ) / 4 * (f1 (n - 1) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (f1 (n + 1) - f1 n).toNat

end

end A245357.P12795378455177924689

namespace A245357

/-- `A008587(Δ[round(5/4*a(n-1))])` -/
def P12795378455177924689.Spec : Prop :=
  ∀ n, P12795378455177924689.a n = A245357 (n + 1)

end A245357

/-!
# A245359: Largest number k such that d_1^j + d_2^j + ... + d_r^j is prime for all j = 1..k, or 0 if no such k exists, where d_1, d_2, ..., d_r are the digits of n. a(n) = -1 if k is infinite.

The programs for A245359, there is no canonical definition to state claims against.
-/

/-! ## A245359.P8291029445046247818

`A230322(n+3)+A000035(A006951(n))`
-/

namespace A245359.P8291029445046247818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230322 (n + 3) + A000035 (A006951 n).toNat

end

end A245359.P8291029445046247818

/-! ## A245359.P13812733627383257603

`Δ[A333224(or(3, A155566(n+1)))]`
-/

namespace A245359.P13812733627383257603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333224 (Int.lor 3 (A155566 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245359.P13812733627383257603

/-! ## A245359.P2638583530841202574

`A332016(A000217(n))-A274719(n)`
-/

namespace A245359.P2638583530841202574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332016 (A000217 n).toNat - A274719 n

end

end A245359.P2638583530841202574

/-! ## A245359.P1940538566868131783

`A301384(n+1)-A007875(A004119(n))`
-/

namespace A245359.P1940538566868131783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301384 (n + 1) - A007875 (A004119 n).toNat

end

end A245359.P1940538566868131783

/-! ## A245359.P3325432792472454905

`A382771(A000041(n))+A121373(n+2)`
-/

namespace A245359.P3325432792472454905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382771 (A000041 n).toNat + A121373 (n + 2)

end

end A245359.P3325432792472454905

/-!
# A245360: Perfect powers which are the sum of two consecutive primes.

The programs for A245360, there is no canonical definition to state claims against.
-/

/-! ## A245360.P5446099023200898131

`A001043(A132746(n+1))`
-/

namespace A245360.P5446099023200898131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (A132746 (n + 1)).toNat

end

end A245360.P5446099023200898131

/-! ## A245360.P9585685572803687040

`A011974(A132746(n+1)+1)`
-/

namespace A245360.P9585685572803687040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (A132746 (n + 1) + 1).toNat

end

end A245360.P9585685572803687040

/-! ## A245360.P3755253571127755733

`A164653(A132746(n+1)+2)`
-/

namespace A245360.P3755253571127755733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164653 (A132746 (n + 1) + 2).toNat

end

end A245360.P3755253571127755733

/-! ## A245360.P10840170893198736628

`∩[A001043(n+1), A001597(n+1)]`
-/

namespace A245360.P10840170893198736628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245360.P10840170893198736628

/-! ## A245360.P17363730791100108183

`∩[A001597(n+1), A011974(n+1)]`
-/

namespace A245360.P17363730791100108183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245360.P17363730791100108183

/-!
# A245361: Numbers n such that (reversal of digits of n) + 1 is a square (ignoring leading zeros).

The programs for A245361, there is no canonical definition to state claims against.
-/

/-! ## A245361.P7571229199787439432

`eq[1, A068527(A004086(n))]`
-/

namespace A245361.P7571229199787439432
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068527 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245361.P7571229199787439432

/-! ## A245361.P7836234639723027359

`lt[1, A037213(A004086(n)+1)]`
-/

namespace A245361.P7836234639723027359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A004086 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A245361.P7836234639723027359

/-! ## A245361.P18332571223546589399

`eq[A057427(n), A152204(A004086(n))]`
-/

namespace A245361.P18332571223546589399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245361.P18332571223546589399

/-! ## A245361.P12942991040011228187

`lt[A000007(n), A010052(A004086(n)+1)]`
-/

namespace A245361.P12942991040011228187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A004086 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245361.P12942991040011228187

/-! ## A245361.P12179184580875491163

`lt[A000038(n), A010052(A004086(n)+1)]`
-/

namespace A245361.P12179184580875491163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A004086 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A245361.P12179184580875491163

/-!
# A245362: Semiprimes whose reversal + 1 is a square.

The programs for A245362, there is no canonical definition to state claims against.
-/

/-! ## A245362.P17870673707909851902

`filter[A245361(n+3), A354927(#)]`
-/

namespace A245362.P17870673707909851902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245361 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A245362.P17870673707909851902

/-! ## A245362.P10914491342859928260

`∩[A001358(n+1), A245361(n+1)]`
-/

namespace A245362.P10914491342859928260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245362.P10914491342859928260

/-! ## A245362.P1040149483730674399

`filter[A245361(n+1), A064911(#)]`
-/

namespace A245362.P1040149483730674399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A245362.P1040149483730674399

/-! ## A245362.P7201326345956562734

`filter[A245361(n+1), A280710(#)]`
-/

namespace A245362.P7201326345956562734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A245362.P7201326345956562734

/-! ## A245362.P12749707224869616666

`∩[A006881(n+1), A245361(n+1)]`
-/

namespace A245362.P12749707224869616666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245361 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245362.P12749707224869616666

/-!
# A245364: Let p = first digit of n, q = number obtained if p is removed from n; let r = last digit of n, s = number obtained if r is removed from n; sequence give n such that p*q = r*s != 0, p! = q, and r! = s.

The programs for A245364, there is no canonical definition to state claims against.
-/

/-! ## A245364.P15789485258779845618

`record[gcd(A185284(n), A245385(n+1))]`
-/

namespace A245364.P15789485258779845618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A185284 n) (A245385 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245364.P15789485258779845618

/-! ## A245364.P2095406808482263373

`record[A245385(n+1)%A000203(A020342(n+1)+2)]`
-/

namespace A245364.P2095406808482263373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245385 (n + 1)) (A000203 (A020342 (n + 1) + 2).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245364.P2095406808482263373

/-! ## A245364.P13528152705905708118

`A056583(A245385(n+1))`
-/

namespace A245364.P13528152705905708118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056583 (A245385 (n + 1)).toNat

end

end A245364.P13528152705905708118

/-! ## A245364.P3487732556596989519

`A245385(A090110(n+1))`
-/

namespace A245364.P3487732556596989519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245385 (A090110 (n + 1)).toNat

end

end A245364.P3487732556596989519

/-! ## A245364.P17535974015358330674

`A001221(A245396(2*(n+1)))*A245385(n+1)`
-/

namespace A245364.P17535974015358330674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A245396 (2 * (n + 1))).toNat * A245385 (n + 1)

end

end A245364.P17535974015358330674

/-!
# A245365: Semiprimes of the form n*(3*n-1)/2.

The programs for A245365, the canonical program `A245365.P4902612867877700399` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245365 has offset 1).

The definition of A245365 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 377 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245365.P4902612867877700399

`A000326(A114439(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A245365

/-- `A000326(A114439(n+1))` -/
def P4902612867877700399.Spec : Prop :=
  ∀ n, P4902612867877700399.a n = A245365 (n + 1)

theorem P4902612867877700399.correct : P4902612867877700399.Spec := by
  intro n
  simp only [A245365, Nat.add_sub_cancel]

end A245365

/-! ## A245365.P1666178847652844242

`A000326(eq[4, A276678(n+1)]+1)`
-/

namespace A245365.P1666178847652844242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276678 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000326 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A245365.P1666178847652844242

namespace A245365

/-- `A000326(eq[4, A276678(n+1)]+1)` -/
def P1666178847652844242.Spec : Prop :=
  ∀ n, P1666178847652844242.a n = A245365 (n + 1)

end A245365

/-! ## A245365.P8388806634718219422

`record[A259649(n+4)*A259650(n+4)]`
-/

namespace A245365.P8388806634718219422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259649 (n + 4) * A259650 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245365.P8388806634718219422

namespace A245365

/-- `record[A259649(n+4)*A259650(n+4)]` -/
def P8388806634718219422.Spec : Prop :=
  ∀ n, P8388806634718219422.a n = A245365 (n + 1)

end A245365

/-! ## A245365.P14832114041036684547

`A130518(3*A114439(n+1))`
-/

namespace A245365.P14832114041036684547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130518 (3 * A114439 (n + 1)).toNat

end

end A245365.P14832114041036684547

namespace A245365

/-- `A130518(3*A114439(n+1))` -/
def P14832114041036684547.Spec : Prop :=
  ∀ n, P14832114041036684547.a n = A245365 (n + 1)

end A245365

/-! ## A245365.P13786484609443756353

`∪[A255584(n+1), A330409(n+1)]`
-/

namespace A245365.P13786484609443756353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255584 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330409 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245365.P13786484609443756353

namespace A245365

/-- `∪[A255584(n+1), A330409(n+1)]` -/
def P13786484609443756353.Spec : Prop :=
  ∀ n, (P13786484609443756353.a n : ℤ) = A245365 (n + 1)

end A245365

/-!
# A245366: a(n) = 1 + a(n-1) * (a(n-2) - 1) * (a(n-3) - 1) with a(0) = 1, a(1) = 2, a(2) = 3, a(3) = 4.

The programs for A245366, the canonical program `A245366.P14212740105801033058` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245366 has offset 0).

The definition of A245366 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+a(n-1)*(a(n-2)-1)*(a(n-3)-1)` (program `A245366.P14212740105801033058`, by `A245366.P14212740105801033058.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245366.P14212740105801033058

`1+a(n-1)*(a(n-2)-1)*(a(n-3)-1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245366

/-- `1+a(n-1)*(a(n-2)-1)*(a(n-3)-1)` -/
def P14212740105801033058.Spec : Prop :=
  ∀ n, P14212740105801033058.a n = A245366 n

theorem P14212740105801033058.correct : P14212740105801033058.Spec := by
  intro n
  simp only [A245366]

end A245366

/-! ## A245366.P810387659834277131

`A245384(A028310(n))+ceil(sin(n)²)`
-/

namespace A245366.P810387659834277131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245384 (A028310 n).toNat + ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A245366.P810387659834277131

namespace A245366

/-- `A245384(A028310(n))+ceil(sin(n)²)` -/
def P810387659834277131.Spec : Prop :=
  ∀ n, P810387659834277131.a n = A245366 n

end A245366

/-! ## A245366.P634004352490013343

`A245384(round(sqrt(n²+1)))+A057427(n)`
-/

namespace A245366.P634004352490013343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245384 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat + A057427 n

end

end A245366.P634004352490013343

namespace A245366

/-- `A245384(round(sqrt(n²+1)))+A057427(n)` -/
def P634004352490013343.Spec : Prop :=
  ∀ n, P634004352490013343.a n = A245366 n

end A245366

/-! ## A245366.P13235693447341103534

`A245384(A028310(n))-A057428(n)`
-/

namespace A245366.P13235693447341103534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245384 (A028310 n).toNat - A057428 n

end

end A245366.P13235693447341103534

namespace A245366

/-- `A245384(A028310(n))-A057428(n)` -/
def P13235693447341103534.Spec : Prop :=
  ∀ n, P13235693447341103534.a n = A245366 n

end A245366

/-!
# A245367: Compositions of n into parts 3, 5 and 7.

The programs for A245367, the canonical program `A245367.P14366340390940627197` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245367 has offset 0).

The definition of A245367 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245367.P14366340390940627197

`a(n-3)+a(n-5)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245367

/-- `a(n-3)+a(n-5)+a(n-7)` -/
def P14366340390940627197.Spec : Prop :=
  ∀ n, (P14366340390940627197.a n : ℤ) = A245367 n

theorem P14366340390940627197.correct : P14366340390940627197.Spec := by
  intro n
  simp only [A245367]

end A245367

/-! ## A245367.P14894479413616651080

`ogf(1/(1-x^3-x^5-x^7))`
-/

namespace A245367.P14894479413616651080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -1, 0, -1, 0, -1] n

end

end A245367.P14894479413616651080

namespace A245367

/-- `ogf(1/(1-x^3-x^5-x^7))` -/
def P14894479413616651080.Spec : Prop :=
  ∀ n, P14894479413616651080.a n = A245367 n

end A245367

/-! ## A245367.P5005032844122666891

`A025808(∑[A025808(A187829(n+1))])`
-/

namespace A245367.P5005032844122666891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025808 (A187829 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025808 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245367.P5005032844122666891

namespace A245367

/-- `A025808(∑[A025808(A187829(n+1))])` -/
def P5005032844122666891.Spec : Prop :=
  ∀ n, P5005032844122666891.a n = A245367 n

end A245367

/-! ## A245367.P9626909573906097813

`or(A007814(A116475(n+1)), A143472(n))`
-/

namespace A245367.P9626909573906097813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A007814 (A116475 (n + 1)).toNat) (A143472 n)

end

end A245367.P9626909573906097813

namespace A245367

/-- `or(A007814(A116475(n+1)), A143472(n))` -/
def P9626909573906097813.Spec : Prop :=
  ∀ n, P9626909573906097813.a n = A245367 n

end A245367

/-!
# A245368: Compositions of n into parts 3, 4 and 7.

The programs for A245368, the canonical program `A245368.P3132548433294409455` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245368 has offset 0).

The definition of A245368 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245368.P3132548433294409455

`a(n-3)+a(n-4)+a(n-7)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=1, a(5)=0, a(6)=1`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245368

/-- `a(n-3)+a(n-4)+a(n-7)` -/
def P3132548433294409455.Spec : Prop :=
  ∀ n, (P3132548433294409455.a n : ℤ) = A245368 n

theorem P3132548433294409455.correct : P3132548433294409455.Spec := by
  intro n
  simp only [A245368]

end A245368

/-! ## A245368.P15684118774719464786

`ogf(1/(1-x^3-x^4-x^7))`
-/

namespace A245368.P15684118774719464786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -1, -1, 0, 0, -1] n

end

end A245368.P15684118774719464786

namespace A245368

/-- `ogf(1/(1-x^3-x^4-x^7))` -/
def P15684118774719464786.Spec : Prop :=
  ∀ n, P15684118774719464786.a n = A245368 n

end A245368

/-! ## A245368.P6425180316914748924

`A324666(A376730(n))`
-/

namespace A245368.P6425180316914748924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324666 (A376730 n).toNat

end

end A245368.P6425180316914748924

namespace A245368

/-- `A324666(A376730(n))` -/
def P6425180316914748924.Spec : Prop :=
  ∀ n, P6425180316914748924.a n = A245368 n

end A245368

/-!
# A245369: Number of compositions of n into parts 3, 5 and 8.

The programs for A245369, the canonical program `A245369.P18397133145197192487` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245369 has offset 0).

The definition of A245369 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245369.P18397133145197192487

`a(n-3)+a(n-5)+a(n-8)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1, a(7)=0`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245369

/-- `a(n-3)+a(n-5)+a(n-8)` -/
def P18397133145197192487.Spec : Prop :=
  ∀ n, (P18397133145197192487.a n : ℤ) = A245369 n

theorem P18397133145197192487.correct : P18397133145197192487.Spec := by
  intro n
  simp only [A245369]

end A245369

/-! ## A245369.P8101471694545876460

`ogf(1/(1-x^3-x^5-x^8))`
-/

namespace A245369.P8101471694545876460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -1, 0, -1, 0, 0, -1] n

end

end A245369.P8101471694545876460

namespace A245369

/-- `ogf(1/(1-x^3-x^5-x^8))` -/
def P8101471694545876460.Spec : Prop :=
  ∀ n, P8101471694545876460.a n = A245369 n

end A245369

/-! ## A245369.P4144058295022564345

`A127321(A376784(n)^A127321(n))`
-/

namespace A245369.P4144058295022564345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127321 (SequenceMachineLib.roundAway ((A376784 n : ℚ) ^ (A127321 n : ℤ))).toNat

end

end A245369.P4144058295022564345

namespace A245369

/-- `A127321(A376784(n)^A127321(n))` -/
def P4144058295022564345.Spec : Prop :=
  ∀ n, P4144058295022564345.a n = A245369 n

end A245369

/-! ## A245369.P16168729308529408540

`A004273(A052920(A055646(n)))`
-/

namespace A245369.P16168729308529408540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A052920 (A055646 n).toNat).toNat

end

end A245369.P16168729308529408540

namespace A245369

/-- `A004273(A052920(A055646(n)))` -/
def P16168729308529408540.Spec : Prop :=
  ∀ n, P16168729308529408540.a n = A245369 n

end A245369

/-! ## A245369.P11781905687746103865

`A004273(A052920(n)^A128059(n))`
-/

namespace A245369.P11781905687746103865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (SequenceMachineLib.roundAway ((A052920 n : ℚ) ^ (A128059 n : ℤ))).toNat

end

end A245369.P11781905687746103865

namespace A245369

/-- `A004273(A052920(n)^A128059(n))` -/
def P11781905687746103865.Spec : Prop :=
  ∀ n, P11781905687746103865.a n = A245369 n

end A245369

/-!
# A245370: Number of compositions of n into parts 3, 5 and 9.

The programs for A245370, the canonical program `A245370.P15494511990386348897` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245370 has offset 0).

The definition of A245370 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245370.P15494511990386348897

`a(n-3)+a(n-5)+a(n-9)` with `a(0)=1, a(1)=0, a(2)=0, a(3)=1, a(4)=0, a(5)=1, a(6)=1, a(7)=0, a(8)=2`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245370

/-- `a(n-3)+a(n-5)+a(n-9)` -/
def P15494511990386348897.Spec : Prop :=
  ∀ n, (P15494511990386348897.a n : ℤ) = A245370 n

theorem P15494511990386348897.correct : P15494511990386348897.Spec := by
  intro n
  simp only [A245370]

end A245370

/-! ## A245370.P10560285195739123157

`ogf(1/(1-x^3-x^5-x^9))`
-/

namespace A245370.P10560285195739123157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1] [1, 0, 0, -1, 0, -1, 0, 0, 0, -1] n

end

end A245370.P10560285195739123157

namespace A245370

/-- `ogf(1/(1-x^3-x^5-x^9))` -/
def P10560285195739123157.Spec : Prop :=
  ∀ n, P10560285195739123157.a n = A245370 n

end A245370

/-!
# A245371: Square numbers that remain square when their 2 most-significant (or leftmost) digits in base 10 are removed.

The programs for A245371, there is no canonical definition to state claims against.
-/

/-! ## A245371.P15056470267263375337

`∑[A327939(A073817(n))]²`
-/

namespace A245371.P15056470267263375337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327939 (A073817 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A245371.P15056470267263375337

/-! ## A245371.P16275162262183561661

`∑[A035214(A101854(n+1))²]²`
-/

namespace A245371.P16275162262183561661
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 (A101854 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A245371.P16275162262183561661

/-! ## A245371.P584991085529682751

`∑[A071178(A118040(3*n+4)-n)²]²`
-/

namespace A245371.P584991085529682751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071178 (A118040 (3 * n + 4) - (n : ℤ)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A245371.P584991085529682751

/-! ## A245371.P15778424329948617571

`∑[A207960(A157153(n)+1)^A055641(n)]²`
-/

namespace A245371.P15778424329948617571
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A207960 (A157153 n + 1).toNat : ℚ) ^ (A055641 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A245371.P15778424329948617571

/-! ## A245371.P6073435800266880723

`∑[A000292(A010109(n)%A028788(3*(n+1))+1)]²`
-/

namespace A245371.P6073435800266880723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (Int.tmod (A010109 n) (A028788 (3 * (n + 1))) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A245371.P6073435800266880723

/-!
# A245373: G.f.: Sum_{n>=0} x^n / ( (1+x)^(n+1) * (1 - 2*(n+1)*x) ).

The programs for A245373, there is no canonical definition to state claims against.
-/

/-! ## A245373.P12772977412757008440

`A004526(A272923(a(n-1)-1))` with `a(0)=1`
-/

namespace A245373.P12772977412757008440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A004526 (A272923 (a (n - 1) - 1).toNat).toNat

end

end A245373.P12772977412757008440

/-! ## A245373.P2628127832405252870

`A186365(n+1)+A170770(A343535(2*n+1))`
-/

namespace A245373.P2628127832405252870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186365 (n + 1) + A170770 (A343535 (2 * n + 1)).toNat

end

end A245373.P2628127832405252870

/-!
# A245374: G.f.: Sum_{n>=0} x^n / ( (1+x)^(n+1) * (1 - 3*(n+1)*x) ).

The programs for A245374, there is no canonical definition to state claims against.
-/

/-! ## A245374.P5830417808832239576

`A336990(n)+A025480(A337010(n))`
-/

namespace A245374.P5830417808832239576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336990 n + A025480 (A337010 n).toNat

end

end A245374.P5830417808832239576

/-! ## A245374.P12956004599383535828

`A000196(A007696(n))*A166633(n+1)`
-/

namespace A245374.P12956004599383535828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A007696 n).toNat * A166633 (n + 1)

end

end A245374.P12956004599383535828

/-!
# A245375: G.f.: Sum_{n>=0} x^n / ( (1+x)^(n+1) * (1 - 4*(n+1)*x) ).

The programs for A245375, there is no canonical definition to state claims against.
-/

/-! ## A245375.P4325478755078425478

`A116512(2*∏[n+3]/3)`
-/

namespace A245375.P4325478755078425478
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116512 (SequenceMachineLib.roundAway (2 * (((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3))).toNat

end

end A245375.P4325478755078425478

/-!
# A245376: G.f.: Sum_{n>=0} x^n / ( (1+x)^(n+1) * (1 - 5*(n+1)*x) ).

The programs for A245376, there is no canonical definition to state claims against.
-/

/-! ## A245376.P1227260437339570913

`A046795((n+2)*a(n-1))` with `a(0)=1`
-/

namespace A245376.P1227260437339570913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A046795 ((n + 2 : ℤ) * a (n - 1)).toNat

end

end A245376.P1227260437339570913

/-!
# A245378: G.f. satisfies: A(x) = Sum_{n>=0} x^n / ( (1+x)^(n+1) * (1 - (n+1)*x*A(x)) ).

The programs for A245378, there is no canonical definition to state claims against.
-/

/-! ## A245378.P4468057241629598642

`∑{#}[n, (-1)^(n-#)*C(n, #)*A245389(#)]`
-/

namespace A245378.P4468057241629598642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (-1 : ℚ) ^ ((n : ℤ) - (k : ℤ) : ℤ) * (Nat.choose n k : ℚ) * (A245389 k : ℚ)

end

end A245378.P4468057241629598642

/-! ## A245378.P7885505705621721410

`A008621(A150866(n)+A017988(n))`
-/

namespace A245378.P7885505705621721410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A150866 n + A017988 n).toNat

end

end A245378.P7885505705621721410

/-! ## A245378.P4694134153377204624

`A008624(A150866(n)+A017988(n))`
-/

namespace A245378.P4694134153377204624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A150866 n + A017988 n).toNat

end

end A245378.P4694134153377204624

/-!
# A245379: Refactorable numbers with exactly two distinct prime divisors.

The programs for A245379, the canonical program `A245379.P6502977345616114839` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245379 has offset 1).

The definition of A245379 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 556 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245379.P6502977345616114839

`filter[A007774(n+1), A336040(#)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A245379

/-- `filter[A007774(n+1), A336040(#)]` -/
def P6502977345616114839.Spec : Prop :=
  ∀ n, P6502977345616114839.a n = A245379 (n + 1)

theorem P6502977345616114839.correct : P6502977345616114839.Spec := by
  intro n
  simp only [A245379, Nat.add_sub_cancel]

end A245379

/-! ## A245379.P5159662007816193709

`∩[A007774(n+1), A033950(n+1)]`
-/

namespace A245379.P5159662007816193709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245379.P5159662007816193709

namespace A245379

/-- `∩[A007774(n+1), A033950(n+1)]` -/
def P5159662007816193709.Spec : Prop :=
  ∀ n, (P5159662007816193709.a n : ℤ) = A245379 (n + 1)

end A245379

/-! ## A245379.P5380072650514581900

`record[A122377(A007774(n+3))]`
-/

namespace A245379.P5380072650514581900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122377 (A007774 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245379.P5380072650514581900

namespace A245379

/-- `record[A122377(A007774(n+3))]` -/
def P5380072650514581900.Spec : Prop :=
  ∀ n, P5380072650514581900.a n = A245379 (n + 1)

end A245379

/-! ## A245379.P2550246101026475520

`filter[A033950(n+1), A215480(#)]`
-/

namespace A245379.P2550246101026475520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A215480 (f1 j).toNat = 1) n)

end

end A245379.P2550246101026475520

namespace A245379

/-- `filter[A033950(n+1), A215480(#)]` -/
def P2550246101026475520.Spec : Prop :=
  ∀ n, P2550246101026475520.a n = A245379 (n + 1)

end A245379

/-! ## A245379.P6886129228660098815

`eq[A054008(n+1)+1, A001065(A293810(n+1))]+1`
-/

namespace A245379.P6886129228660098815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054008 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (A293810 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A245379.P6886129228660098815

namespace A245379

/-- `eq[A054008(n+1)+1, A001065(A293810(n+1))]+1` -/
def P6886129228660098815.Spec : Prop :=
  ∀ n, (P6886129228660098815.a n : ℤ) = A245379 (n + 1)

end A245379

/-! ## A245379.P7094176646967511983

`filter[A123711(n+1), A336040(#)]`
-/

namespace A245379.P7094176646967511983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123711 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A336040 (f1 j).toNat = 1) n)

end

end A245379.P7094176646967511983

namespace A245379

/-- `filter[A123711(n+1), A336040(#)]` -/
def P7094176646967511983.Spec : Prop :=
  ∀ n, P7094176646967511983.a n = A245379 (n + 1)

end A245379

/-! ## A245379.P4947679774991365675

`∩[A033950(n+1), A123711(n+1)]`
-/

namespace A245379.P4947679774991365675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033950 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245379.P4947679774991365675

namespace A245379

/-- `∩[A033950(n+1), A123711(n+1)]` -/
def P4947679774991365675.Spec : Prop :=
  ∀ n, (P4947679774991365675.a n : ℤ) = A245379 (n + 1)

end A245379

/-!
# A245380: a(n) = (7*n^5+5*n^3)/12.

The programs for A245380, the canonical program `A245380.P8436195910270693923` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245380 has offset 0).

The definition of A245380 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7*n^5+5*n^3)/12` (program `A245380.P12590924709517657090`, by `A245380.P12590924709517657090.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245380.P12590924709517657090

`(7*n^5+5*n^3)/12`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A245380.P12590924709517657090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 * n ^ 5 + 5 * n ^ 3 : ℚ) / 12

end

end A245380.P12590924709517657090

namespace A245380

/-- `(7*n^5+5*n^3)/12` -/
def P12590924709517657090.Spec : Prop :=
  ∀ n, P12590924709517657090.a n = (A245380 n : ℚ)

theorem P12590924709517657090.correct : P12590924709517657090.Spec := by
  intro n
  simp only [A245380, Nat.add_sub_cancel, A245380.P12590924709517657090.a, A245380.P8436195910270693923.f3, A245380.P8436195910270693923.f2, A245380.P8436195910270693923.f1, A245380.P8436195910270693923.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A245380

/-! ## A245380.P12087282635483534633

`ogf((x+16x^2+36x^3+16x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A245380.P12087282635483534633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 16, 36, 16, 1] [1, -6, 15, -20, 15, -6, 1] n

end

end A245380.P12087282635483534633

namespace A245380

/-- `ogf((x+16x^2+36x^3+16x^4+x^5)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P12087282635483534633.Spec : Prop :=
  ∀ n, P12087282635483534633.a n = A245380 n

end A245380

/-! ## A245380.P9502391631220233838

`Δ[Δ[Δ[C(n, 4)²]]]`
-/

namespace A245380.P9502391631220233838
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 4 ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245380.P9502391631220233838

namespace A245380

/-- `Δ[Δ[Δ[C(n, 4)²]]]` -/
def P9502391631220233838.Spec : Prop :=
  ∀ n, P9502391631220233838.a n = A245380 n

theorem P9502391631220233838.correct : P9502391631220233838.Spec := by
  intro n
  simp only [A245380, Nat.add_sub_cancel, A245380.P9502391631220233838.f3, A245380.P9502391631220233838.f2, A245380.P9502391631220233838.f1, A245380.P9502391631220233838.a, A245380.P8436195910270693923.f3, A245380.P8436195910270693923.f2, A245380.P8436195910270693923.f1, A245380.P8436195910270693923.a, SequenceMachineLib.memo_apply]

end A245380

/-! ## A245380.P8436195910270693923

`Δ[Δ[Δ[C(n, 4)^2]]]`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245380

/-- `Δ[Δ[Δ[C(n, 4)^2]]]` -/
def P8436195910270693923.Spec : Prop :=
  ∀ n, P8436195910270693923.a n = A245380 n

theorem P8436195910270693923.correct : P8436195910270693923.Spec := by
  intro n
  simp only [A245380]

end A245380

/-! ## A245380.P16658612751397475989

`∑[A008384(n)]-A008384(n)`
-/

namespace A245380.P16658612751397475989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A008384 n

end

end A245380.P16658612751397475989

namespace A245380

/-- `∑[A008384(n)]-A008384(n)` -/
def P16658612751397475989.Spec : Prop :=
  ∀ n, P16658612751397475989.a n = A245380 n

end A245380

/-! ## A245380.P11703428037265200765

`n*(A037270(n)+A002415(n))`
-/

namespace A245380.P11703428037265200765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A037270 n + A002415 n)

end

end A245380.P11703428037265200765

namespace A245380

/-- `n*(A037270(n)+A002415(n))` -/
def P11703428037265200765.Spec : Prop :=
  ∀ n, P11703428037265200765.a n = A245380 n

end A245380

/-! ## A245380.P9774052607699535709

`∑[∑[A008383(n)]-A008383(n)]`
-/

namespace A245380.P9774052607699535709
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008383 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A008383 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245380.P9774052607699535709

namespace A245380

/-- `∑[∑[A008383(n)]-A008383(n)]` -/
def P9774052607699535709.Spec : Prop :=
  ∀ n, P9774052607699535709.a n = A245380 n

end A245380

/-! ## A245380.P8885709720410043465

`n*(∑[A063490(n+1)]-A063490(n+1))`
-/

namespace A245380.P8885709720410043465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063490 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j - A063490 (n + 1))

end

end A245380.P8885709720410043465

namespace A245380

/-- `n*(∑[A063490(n+1)]-A063490(n+1))` -/
def P8885709720410043465.Spec : Prop :=
  ∀ n, P8885709720410043465.a n = A245380 n

end A245380

/-! ## A245380.P10908989315535403812

`Δ[Δ[A132458(n+1)]]`
-/

namespace A245380.P10908989315535403812
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132458 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245380.P10908989315535403812

namespace A245380

/-- `Δ[Δ[A132458(n+1)]]` -/
def P10908989315535403812.Spec : Prop :=
  ∀ n, P10908989315535403812.a n = A245380 n

end A245380

/-! ## A245380.P3089420427852388311

`Δ[Δ[Δ[A000332(n)²]]]`
-/

namespace A245380.P3089420427852388311
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000332 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A245380.P3089420427852388311

namespace A245380

/-- `Δ[Δ[Δ[A000332(n)²]]]` -/
def P3089420427852388311.Spec : Prop :=
  ∀ n, P3089420427852388311.a n = A245380 n

theorem P3089420427852388311.correct : P3089420427852388311.Spec := by
  intro n
  simp only [A245380, Nat.add_sub_cancel, A245380.P3089420427852388311.f3, A245380.P3089420427852388311.f2, A245380.P3089420427852388311.f1, A245380.P3089420427852388311.a, A245380.P8436195910270693923.f3, A245380.P8436195910270693923.f2, A245380.P8436195910270693923.f1, A245380.P8436195910270693923.a, A000332, A000332.P5946310388023661265.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A245380

/-! ## A245380.P4279386874712161183

`n*(A002415(n)+A000217(n²))`
-/

namespace A245380.P4279386874712161183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A002415 n + A000217 (n ^ 2))

end

end A245380.P4279386874712161183

namespace A245380

/-- `n*(A002415(n)+A000217(n²))` -/
def P4279386874712161183.Spec : Prop :=
  ∀ n, P4279386874712161183.a n = A245380 n

end A245380

/-!
# A245381: Primes p such that sum and product of decimal digits of p are both semiprimes.

The programs for A245381, there is no canonical definition to state claims against.
-/

/-! ## A245381.P18408626418991259429

`∩[A158195(n+1), A245382(n+1)]`
-/

namespace A245381.P18408626418991259429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245381.P18408626418991259429

/-! ## A245381.P6827250715849046352

`∩[A158195(n+1), A245383(n+1)]`
-/

namespace A245381.P6827250715849046352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158195 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245381.P6827250715849046352

/-! ## A245381.P15804705400563958048

`∩[A158293(n+1), A245382(n+1)]`
-/

namespace A245381.P15804705400563958048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158293 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245382 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245381.P15804705400563958048

/-!
# A245382: Primes whose product of digits is a semiprime.

The programs for A245382, the canonical program `A245382.P3222382834720020531` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245382 has offset 1).

The definition of A245382 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 126 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245382.P3222382834720020531

`p?[A245383(n+1)]`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A245382

/-- `p?[A245383(n+1)]` -/
def P3222382834720020531.Spec : Prop :=
  ∀ n, P3222382834720020531.a n = A245382 (n + 1)

theorem P3222382834720020531.correct : P3222382834720020531.Spec := by
  intro n
  simp only [A245382, Nat.add_sub_cancel]

end A245382

/-! ## A245382.P9559014479316697552

`p?[record[A245383(A126759(n))]]`
-/

namespace A245382.P9559014479316697552
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (A126759 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245382.P9559014479316697552

namespace A245382

/-- `p?[record[A245383(A126759(n))]]` -/
def P9559014479316697552.Spec : Prop :=
  ∀ n, P9559014479316697552.a n = A245382 (n + 1)

end A245382

/-! ## A245382.P4989329160480310781

`p?[record[A245383(A246694(n))]]`
-/

namespace A245382.P4989329160480310781
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245382.P4989329160480310781

namespace A245382

/-- `p?[record[A245383(A246694(n))]]` -/
def P4989329160480310781.Spec : Prop :=
  ∀ n, P4989329160480310781.a n = A245382 (n + 1)

end A245382

/-! ## A245382.P11735557120122577517

`p?[record[A245383(A305433(n))]]`
-/

namespace A245382.P11735557120122577517
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (A305433 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245382.P11735557120122577517

namespace A245382

/-- `p?[record[A245383(A305433(n))]]` -/
def P11735557120122577517.Spec : Prop :=
  ∀ n, P11735557120122577517.a n = A245382 (n + 1)

end A245382

/-! ## A245382.P8894634259533813343

`p?[record[A245383(A323889(n))]]`
-/

namespace A245382.P8894634259533813343
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (A323889 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245382.P8894634259533813343

namespace A245382

/-- `p?[record[A245383(A323889(n))]]` -/
def P8894634259533813343.Spec : Prop :=
  ∀ n, P8894634259533813343.a n = A245382 (n + 1)

end A245382

/-! ## A245382.P5597701883913136818

`p?[record[A245383(A324347(n))]]`
-/

namespace A245382.P5597701883913136818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (A324347 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A245382.P5597701883913136818

namespace A245382

/-- `p?[record[A245383(A324347(n))]]` -/
def P5597701883913136818.Spec : Prop :=
  ∀ n, P5597701883913136818.a n = A245382 (n + 1)

end A245382

/-! ## A245382.P12411358903415454189

`∩[A038616(n+1), A245383(n+1)]`
-/

namespace A245382.P12411358903415454189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245382.P12411358903415454189

namespace A245382

/-- `∩[A038616(n+1), A245383(n+1)]` -/
def P12411358903415454189.Spec : Prop :=
  ∀ n, (P12411358903415454189.a n : ℤ) = A245382 (n + 1)

end A245382

/-! ## A245382.P16592669286237883806

`∩[A015919(n+1), A245383(n+1)]`
-/

namespace A245382.P16592669286237883806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245382.P16592669286237883806

namespace A245382

/-- `∩[A015919(n+1), A245383(n+1)]` -/
def P16592669286237883806.Spec : Prop :=
  ∀ n, (P16592669286237883806.a n : ℤ) = A245382 (n + 1)

end A245382

/-! ## A245382.P1317821264735351126

`∩[A245383(n+1), A386326(n+1)]`
-/

namespace A245382.P1317821264735351126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386326 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245382.P1317821264735351126

namespace A245382

/-- `∩[A245383(n+1), A386326(n+1)]` -/
def P1317821264735351126.Spec : Prop :=
  ∀ n, (P1317821264735351126.a n : ℤ) = A245382 (n + 1)

end A245382

/-! ## A245382.P16839724301797277077

`∩[A038618(n+1), A245383(n+1)]`
-/

namespace A245382.P16839724301797277077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038618 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245383 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A245382.P16839724301797277077

namespace A245382

/-- `∩[A038618(n+1), A245383(n+1)]` -/
def P16839724301797277077.Spec : Prop :=
  ∀ n, (P16839724301797277077.a n : ℤ) = A245382 (n + 1)

end A245382

/-!
# A245383: Numbers n whose product of decimal digits is a semiprime.

The programs for A245383, the canonical program `A245383.P11295058152896661121` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245383 has offset 1).

The definition of A245383 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 312 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A245383.P11295058152896661121

`eq[2, A105700(abs(A187844(n)))]`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245383

/-- `eq[2, A105700(abs(A187844(n)))]` -/
def P11295058152896661121.Spec : Prop :=
  ∀ n, (P11295058152896661121.a n : ℤ) = A245383 (n + 1)

theorem P11295058152896661121.correct : P11295058152896661121.Spec := by
  intro n
  simp only [A245383, Nat.add_sub_cancel]

end A245383

/-! ## A245383.P10148686426690852144

`eq[2, ∑{e}[∏{digits}[n, #], #]]`
-/

namespace A245383.P10148686426690852144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f4 n)).map fun (x : ℕ) => x).prod

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245383.P10148686426690852144

namespace A245383

/-- `eq[2, ∑{e}[∏{digits}[n, #], #]]` -/
def P10148686426690852144.Spec : Prop :=
  ∀ n, (P10148686426690852144.a n : ℤ) = A245383 (n + 1)

end A245383

/-! ## A245383.P7381998749010404505

`eq[2, ∑{e}[A007954(n), #]]`
-/

namespace A245383.P7381998749010404505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245383.P7381998749010404505

namespace A245383

/-- `eq[2, ∑{e}[A007954(n), #]]` -/
def P7381998749010404505.Spec : Prop :=
  ∀ n, (P7381998749010404505.a n : ℤ) = A245383 (n + 1)

end A245383

/-! ## A245383.P13031611792686387331

`lt[1, A105700(A007954(n))]`
-/

namespace A245383.P13031611792686387331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A245383.P13031611792686387331

namespace A245383

/-- `lt[1, A105700(A007954(n))]` -/
def P13031611792686387331.Spec : Prop :=
  ∀ n, (P13031611792686387331.a n : ℤ) = A245383 (n + 1)

end A245383

/-! ## A245383.P17797253350333896419

`eq[4, A001222(A008574(∏{digits}[n, #]))]`
-/

namespace A245383.P17797253350333896419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008574 ((SequenceMachineLib.digits10 (f3 n)).map fun (x : ℕ) => x).prod).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A245383.P17797253350333896419

namespace A245383

/-- `eq[4, A001222(A008574(∏{digits}[n, #]))]` -/
def P17797253350333896419.Spec : Prop :=
  ∀ n, (P17797253350333896419.a n : ℤ) = A245383 (n + 1)

end A245383

/-! ## A245383.P15073361969219656056

`eq[A040000(n+1), A226378(A007954(n))]`
-/

namespace A245383.P15073361969219656056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226378 (A007954 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A245383.P15073361969219656056

namespace A245383

/-- `eq[A040000(n+1), A226378(A007954(n))]` -/
def P15073361969219656056.Spec : Prop :=
  ∀ n, (P15073361969219656056.a n : ℤ) = A245383 (n + 1)

end A245383

/-!
# A245384: a(n) = (1 + a(n-1)) * a(n-2) * a(n-3) with a(1) = 1, a(2) = 2, a(3) = 3.

The programs for A245384, the canonical program `A245384.P17297859713755676075` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245384 has offset 1).

The definition of A245384 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(1+a(n-1))*a(n-2)*a(n-3)` (program `A245384.P17297859713755676075`, by `A245384.P17297859713755676075.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245384.P17297859713755676075

`(1+a(n-1))*a(n-2)*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245384

/-- `(1+a(n-1))*a(n-2)*a(n-3)` -/
def P17297859713755676075.Spec : Prop :=
  ∀ n, (P17297859713755676075.a n : ℤ) = A245384 (n + 1)

theorem P17297859713755676075.correct : P17297859713755676075.Spec := by
  intro n
  simp only [A245384, Nat.add_sub_cancel]

end A245384

/-! ## A245384.P6154262434581474614

`A245366(n+1)-1`
-/

namespace A245384.P6154262434581474614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245366 (n + 1) - 1

end

end A245384.P6154262434581474614

namespace A245384

/-- `A245366(n+1)-1` -/
def P6154262434581474614.Spec : Prop :=
  ∀ n, P6154262434581474614.a n = A245384 (n + 1)

end A245384

/-! ## A245384.P5295187374223661651

`A245283(n+4)/A245283(n+3)`
-/

namespace A245384.P5295187374223661651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245283 (n + 4) : ℚ) / (A245283 (n + 3) : ℚ)

end

end A245384.P5295187374223661651

namespace A245384

/-- `A245283(n+4)/A245283(n+3)` -/
def P5295187374223661651.Spec : Prop :=
  ∀ n, P5295187374223661651.a n = (A245384 (n + 1) : ℚ)

end A245384

/-! ## A245384.P12012390265001909893

`∑[abs(Δ[A245366(n)])]`
-/

namespace A245384.P12012390265001909893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245366 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245384.P12012390265001909893

namespace A245384

/-- `∑[abs(Δ[A245366(n)])]` -/
def P12012390265001909893.Spec : Prop :=
  ∀ n, P12012390265001909893.a n = A245384 (n + 1)

end A245384

/-! ## A245384.P2480516836988370744

`record[Δ[A245366(A025581(n))]]`
-/

namespace A245384.P2480516836988370744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245366 (A025581 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245384.P2480516836988370744

namespace A245384

/-- `record[Δ[A245366(A025581(n))]]` -/
def P2480516836988370744.Spec : Prop :=
  ∀ n, P2480516836988370744.a n = A245384 (n + 1)

end A245384

/-!
# A245385: Numbers N such that N = P//Q = R//S, where // is the concatenation function, satisfying the following properties: P and S are m-digit integers, Q and R are k-digit integers, k and m are distinct positive integers, and P*Q = R*S.

The programs for A245385, there is no canonical definition to state claims against.
-/

/-! ## A245385.P4816511877885914043

`∪[A245364(n+1), A245386(n+1)]`
-/

namespace A245385.P4816511877885914043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245385.P4816511877885914043

/-! ## A245385.P5099915852684001819

`∪[A245364(n+1), A385145(n+1)]`
-/

namespace A245385.P5099915852684001819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245364 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A245385.P5099915852684001819

/-!
# A245386: Numbers in A245385 where P, Q, R, and S are all distinct.

The programs for A245386, there is no canonical definition to state claims against.
-/

/-! ## A245386.P4901314366937488619

`A245385(A053735(n)+1+A003418(n))`
-/

namespace A245386.P4901314366937488619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245385 (A053735 n + 1 + A003418 n).toNat

end

end A245386.P4901314366937488619

/-!
# A245387: Numbers k for which the alternating sum of the digits of k^k is +-1.

The programs for A245387, there is no canonical definition to state claims against.
-/

/-! ## A245387.P8666528120303596576

`eq[1, A244144(n+1)²]+1`
-/

namespace A245387.P8666528120303596576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244144 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245387.P8666528120303596576

/-!
# A245388: Numbers k such that k - tau(k) is a perfect square.

The programs for A245388, there is no canonical definition to state claims against.
-/

/-! ## A245388.P17755862371187113582

`lt[A249307(n+1-A000005(n+1)), 2]+1`
-/

namespace A245388.P17755862371187113582
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249307 ((n + 1 : ℤ) - A000005 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A245388.P17755862371187113582

/-! ## A245388.P7994751280863674938

`eq[1, A010052(A049820(n+1))]+1`
-/

namespace A245388.P7994751280863674938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A049820 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A245388.P7994751280863674938

/-!
# A245389: G.f. satisfies: A(x) = Sum_{n>=0} x^n / (1 - (n+1)*x*A(x)).

The programs for A245389, there is no canonical definition to state claims against.
-/

/-! ## A245389.P11015283458179743380

`∑{#}[n, C(n, #)*A245378(#)]`
-/

namespace A245389.P11015283458179743380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A245378 k

end

end A245389.P11015283458179743380

/-! ## A245389.P14694964585115689954

`A064542(A190862(n)+n)`
-/

namespace A245389.P14694964585115689954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064542 (A190862 n + (n : ℤ)).toNat

end

end A245389.P14694964585115689954

/-! ## A245389.P13219234763987153735

`A226316(n)+A123108(A014330(n))`
-/

namespace A245389.P13219234763987153735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226316 n + A123108 (A014330 n).toNat

end

end A245389.P13219234763987153735

/-!
# A245390: Number of ways to build an expression using non-redundant parentheses in an expression of n variables, counted in decreasing sub-partitions of equal size.

The programs for A245390, there is no canonical definition to state claims against.
-/

/-! ## A245390.P5687702929547333363

`A210490(A005725(n)^A001221(2*n+1))`
-/

namespace A245390.P5687702929547333363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210490 (SequenceMachineLib.roundAway ((A005725 n : ℚ) ^ (A001221 (2 * n + 1) : ℤ))).toNat

end

end A245390.P5687702929547333363

/-! ## A245390.P6665259451457625733

`A226190(A066768(n+1))-A000045(A006257(n))`
-/

namespace A245390.P6665259451457625733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A066768 (n + 1)).toNat - A000045 (A006257 n).toNat

end

end A245390.P6665259451457625733

/-!
# A245391: a(n) = 2^n*binomial(2*(n+1), n).

The programs for A245391, the canonical program `A245391.P1884576991140004337` is in `Seq.B000.C037`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245391 has offset 0).

The definition of A245391 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n*C(2*(n+1), n)` (program `A245391.P1884576991140004337`, by `A245391.P1884576991140004337.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A245391.P1884576991140004337

`2^n*C(2*(n+1), n)`

The canonical program, it is in `Seq.B000.C037`.
-/

namespace A245391

/-- `2^n*C(2*(n+1), n)` -/
def P1884576991140004337.Spec : Prop :=
  ∀ n, (P1884576991140004337.a n : ℤ) = A245391 n

theorem P1884576991140004337.correct : P1884576991140004337.Spec := by
  intro n
  simp only [A245391]

end A245391

/-! ## A245391.P5660675265003357363

`4*(2*n+1)*(n+1)/(n*(n+2))*a(n-1)` with `a(0)=1`
-/

namespace A245391.P5660675265003357363
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 * (2 * n + 1) * (n + 1) : ℚ) / (n * (n + 2) : ℚ) * a (n - 1)

end

end A245391.P5660675265003357363

namespace A245391

/-- `4*(2*n+1)*(n+1)/(n*(n+2))*a(n-1)` -/
def P5660675265003357363.Spec : Prop :=
  ∀ n, P5660675265003357363.a n = (A245391 n : ℚ)

end A245391

/-! ## A245391.P7205502003046110437

`A000079(n)*A001791(n+1)`
-/

namespace A245391.P7205502003046110437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A001791 (n + 1)

end

end A245391.P7205502003046110437

namespace A245391

/-- `A000079(n)*A001791(n+1)` -/
def P7205502003046110437.Spec : Prop :=
  ∀ n, P7205502003046110437.a n = A245391 n

end A245391

/-! ## A245391.P9309467328577698061

`C(2*(n+1), n)*2^n`
-/

namespace A245391.P9309467328577698061
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * (n + 1)) n * 2 ^ n

end

end A245391.P9309467328577698061

namespace A245391

/-- `C(2*(n+1), n)*2^n` -/
def P9309467328577698061.Spec : Prop :=
  ∀ n, (P9309467328577698061.a n : ℤ) = A245391 n

theorem P9309467328577698061.correct : P9309467328577698061.Spec := by
  intro n
  simp only [A245391, Nat.add_sub_cancel, A245391.P9309467328577698061.a, A245391.P1884576991140004337.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A245391

/-! ## A245391.P5294145178181264752

`(n+1)*A003645(n)`
-/

namespace A245391.P5294145178181264752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A003645 n

end

end A245391.P5294145178181264752

namespace A245391

/-- `(n+1)*A003645(n)` -/
def P5294145178181264752.Spec : Prop :=
  ∀ n, P5294145178181264752.a n = A245391 n

end A245391

/-! ## A245391.P14900317691751755829

`A128413(∑[n+1]+1)`
-/

namespace A245391.P14900317691751755829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128413 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A245391.P14900317691751755829

namespace A245391

/-- `A128413(∑[n+1]+1)` -/
def P14900317691751755829.Spec : Prop :=
  ∀ n, P14900317691751755829.a n = A245391 n

end A245391

/-! ## A245391.P8226810372919247319

`A128417(∑[n+1]+1)`
-/

namespace A245391.P8226810372919247319
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128417 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A245391.P8226810372919247319

namespace A245391

/-- `A128417(∑[n+1]+1)` -/
def P8226810372919247319.Spec : Prop :=
  ∀ n, P8226810372919247319.a n = A245391 n

end A245391

/-! ## A245391.P11639381213256600513

`(n+1)*A167432(∑[n])`
-/

namespace A245391.P11639381213256600513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A167432 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245391.P11639381213256600513

namespace A245391

/-- `(n+1)*A167432(∑[n])` -/
def P11639381213256600513.Spec : Prop :=
  ∀ n, P11639381213256600513.a n = A245391 n

end A245391

/-! ## A245391.P4473734841590788908

`(n+1)*A201639(∑[n])`
-/

namespace A245391.P4473734841590788908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A201639 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245391.P4473734841590788908

namespace A245391

/-- `(n+1)*A201639(∑[n])` -/
def P4473734841590788908.Spec : Prop :=
  ∀ n, P4473734841590788908.a n = A245391 n

end A245391

/-! ## A245391.P12347897667064567683

`(n+1)*record[A201639(n)]`
-/

namespace A245391.P12347897667064567683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201639 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245391.P12347897667064567683

namespace A245391

/-- `(n+1)*record[A201639(n)]` -/
def P12347897667064567683.Spec : Prop :=
  ∀ n, P12347897667064567683.a n = A245391 n

end A245391

/-! ## A245391.P7940420642377207526

`2^n*A001791(n+1)`
-/

namespace A245391.P7940420642377207526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001791 (n + 1)

end

end A245391.P7940420642377207526

namespace A245391

/-- `2^n*A001791(n+1)` -/
def P7940420642377207526.Spec : Prop :=
  ∀ n, P7940420642377207526.a n = A245391 n

end A245391

/-! ## A245391.P4321479019576801559

`(n+1)/2*A151374(n+1)`
-/

namespace A245391.P4321479019576801559
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A151374 (n + 1) : ℚ)

end

end A245391.P4321479019576801559

namespace A245391

/-- `(n+1)/2*A151374(n+1)` -/
def P4321479019576801559.Spec : Prop :=
  ∀ n, P4321479019576801559.a n = (A245391 n : ℚ)

end A245391

/-! ## A245391.P2361989930332144212

`2^(n-1)*A162551(n+1)`
-/

namespace A245391.P2361989930332144212
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (A162551 (n + 1) : ℚ)

end

end A245391.P2361989930332144212

namespace A245391

/-- `2^(n-1)*A162551(n+1)` -/
def P2361989930332144212.Spec : Prop :=
  ∀ n, P2361989930332144212.a n = (A245391 n : ℚ)

end A245391

/-! ## A245391.P16763044627797513733

`2^(n-2)*A128650(n+3)`
-/

namespace A245391.P16763044627797513733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (A128650 (n + 3) : ℚ)

end

end A245391.P16763044627797513733

namespace A245391

/-- `2^(n-2)*A128650(n+3)` -/
def P16763044627797513733.Spec : Prop :=
  ∀ n, P16763044627797513733.a n = (A245391 n : ℚ)

end A245391

/-! ## A245391.P2111171672514841132

`(n+1)*2^n*A000108(n+1)`
-/

namespace A245391.P2111171672514841132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * ((2 ^ n : ℤ) * A000108 (n + 1))

end

end A245391.P2111171672514841132

namespace A245391

/-- `(n+1)*2^n*A000108(n+1)` -/
def P2111171672514841132.Spec : Prop :=
  ∀ n, P2111171672514841132.a n = A245391 n

end A245391

/-! ## A245391.P6826904719814595112

`A000079(n)*A026023(2*n)`
-/

namespace A245391.P6826904719814595112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n * A026023 (2 * n)

end

end A245391.P6826904719814595112

namespace A245391

/-- `A000079(n)*A026023(2*n)` -/
def P6826904719814595112.Spec : Prop :=
  ∀ n, P6826904719814595112.a n = A245391 n

end A245391

/-! ## A245391.P4480937809925498886

`∑[A001792(n)]*A000108(n+1)`
-/

namespace A245391.P4480937809925498886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000108 (n + 1)

end

end A245391.P4480937809925498886

namespace A245391

/-- `∑[A001792(n)]*A000108(n+1)` -/
def P4480937809925498886.Spec : Prop :=
  ∀ n, P4480937809925498886.a n = A245391 n

end A245391

/-!
# A245392: Sum_{k, k|n} 2^(k-1) + Sum_{1<=k<=n, gcd(k,n)=1} 2^(k-1).

The programs for A245392, the canonical program `A245392.P10206887093621046370` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245392 has offset 1).

The definition of A245392 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034729, A054432, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245392.P10206887093621046370

`A034729(n+1)+A054432(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A245392

/-- `A034729(n+1)+A054432(n+1)` -/
def P10206887093621046370.Spec : Prop :=
  ∀ n, P10206887093621046370.a n = A245392 (n + 1)

theorem P10206887093621046370.correct : P10206887093621046370.Spec := by
  intro n
  simp only [A245392, Nat.add_sub_cancel]

end A245392

/-! ## A245392.P2635386582150058892

`A054432(n+1)+∑{d}[n+1, 2^(#-1)]`
-/

namespace A245392.P2635386582150058892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054432 (n + 1) : ℚ) + ∑ d ∈ Nat.divisors (f1 n), (2 : ℚ) ^ ((d : ℤ) - 1 : ℤ)

end

end A245392.P2635386582150058892

namespace A245392

/-- `A054432(n+1)+∑{d}[n+1, 2^(#-1)]` -/
def P2635386582150058892.Spec : Prop :=
  ∀ n, P2635386582150058892.a n = (A245392 (n + 1) : ℚ)

end A245392

/-! ## A245392.P1638874295785826927

`A054432(n+1)+A055895(n+1)/2`
-/

namespace A245392.P1638874295785826927
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054432 (n + 1) : ℚ) + (A055895 (n + 1) : ℚ) / 2

end

end A245392.P1638874295785826927

namespace A245392

/-- `A054432(n+1)+A055895(n+1)/2` -/
def P1638874295785826927.Spec : Prop :=
  ∀ n, P1638874295785826927.a n = (A245392 (n + 1) : ℚ)

end A245392

/-! ## A245392.P13633560439180342263

`A054432(n+1)+A247146(n+1)+2^n`
-/

namespace A245392.P13633560439180342263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054432 (n + 1) + (A247146 (n + 1) + (2 ^ n : ℤ))

end

end A245392.P13633560439180342263

namespace A245392

/-- `A054432(n+1)+A247146(n+1)+2^n` -/
def P13633560439180342263.Spec : Prop :=
  ∀ n, P13633560439180342263.a n = A245392 (n + 1)

theorem P13633560439180342263.correct : P13633560439180342263.Spec := by
  intro n
  simp only [A245392, Nat.add_sub_cancel, A245392.P13633560439180342263.a, A245392.P10206887093621046370.a, A034729, A034729.P14831145742905992677.a, A054432, A054432.P3105448384798964036.f1, A054432.P3105448384798964036.a, A247146, A247146.P7652991668944919018.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A055895, A055895.P2077075893561003355.f1, A055895.P2077075893561003355.a, A338647, A338647.P11873745553542900795.f1, A338647.P11873745553542900795.a, A011782, A011782.P7461078519819856082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A245392

/-! ## A245392.P18295741974923322808

`A054432(n+1)+or(A328337(n+1)+1, 2^n)`
-/

namespace A245392.P18295741974923322808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054432 (n + 1) + Int.lor (A328337 (n + 1) + 1) (2 ^ n : ℤ)

end

end A245392.P18295741974923322808

namespace A245392

/-- `A054432(n+1)+or(A328337(n+1)+1, 2^n)` -/
def P18295741974923322808.Spec : Prop :=
  ∀ n, P18295741974923322808.a n = A245392 (n + 1)

end A245392

/-! ## A245392.P6708842624673343620

`A054432(n+1)+(∑{d}[n+1, A151821(#)]+1)/2`
-/

namespace A245392.P6708842624673343620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054432 (n + 1) : ℚ) + ((∑ d ∈ Nat.divisors (f1 n), A151821 d + 1 : ℤ) : ℚ) / 2

end

end A245392.P6708842624673343620

namespace A245392

/-- `A054432(n+1)+(∑{d}[n+1, A151821(#)]+1)/2` -/
def P6708842624673343620.Spec : Prop :=
  ∀ n, P6708842624673343620.a n = (A245392 (n + 1) : ℚ)

end A245392

/-! ## A245392.P8573978478921482995

`A054432(n+1)+or(1, ∑{d}[n+1, A000079(n%#)])`
-/

namespace A245392.P8573978478921482995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054432 (n + 1) + Int.lor 1 (∑ d ∈ Nat.divisors (f1 n), A000079 (n % d))

end

end A245392.P8573978478921482995

namespace A245392

/-- `A054432(n+1)+or(1, ∑{d}[n+1, A000079(n%#)])` -/
def P8573978478921482995.Spec : Prop :=
  ∀ n, P8573978478921482995.a n = A245392 (n + 1)

end A245392

/-! ## A245392.P7107295164589969759

`A054432(n+1)+or(∑{d}[n+1, 2^#]/2, A000079(n))`
-/

namespace A245392.P7107295164589969759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054432 (n + 1) + Int.lor (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), 2 ^ d : ℕ) : ℚ) / 2)) (A000079 n)

end

end A245392.P7107295164589969759

namespace A245392

/-- `A054432(n+1)+or(∑{d}[n+1, 2^#]/2, A000079(n))` -/
def P7107295164589969759.Spec : Prop :=
  ∀ n, P7107295164589969759.a n = A245392 (n + 1)

end A245392

/-! ## A245392.P16292086755263752195

`A247146(n+1)+A054432(n+1)+A000079(n)`
-/

namespace A245392.P16292086755263752195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247146 (n + 1) + (A054432 (n + 1) + A000079 n)

end

end A245392.P16292086755263752195

namespace A245392

/-- `A247146(n+1)+A054432(n+1)+A000079(n)` -/
def P16292086755263752195.Spec : Prop :=
  ∀ n, P16292086755263752195.a n = A245392 (n + 1)

theorem P16292086755263752195.correct : P16292086755263752195.Spec := by
  intro n
  simp only [A245392, Nat.add_sub_cancel, A245392.P16292086755263752195.a, A245392.P10206887093621046370.a, A000079, A000079.P10855139691139572931.a, A034729, A034729.P14831145742905992677.a, A054432, A054432.P3105448384798964036.f1, A054432.P3105448384798964036.a, A247146, A247146.P7652991668944919018.a, A008683, A008683.P10736294816071761024.f1, A008683.P10736294816071761024.a, A055895, A055895.P2077075893561003355.f1, A055895.P2077075893561003355.a, A338647, A338647.P11873745553542900795.f1, A338647.P11873745553542900795.a, A011782, A011782.P7461078519819856082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A245392

/-! ## A245392.P11215266754598419591

`A054432(n+1)+A130711(n+1)+A108046(n+1)`
-/

namespace A245392.P11215266754598419591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054432 (n + 1) + (A130711 (n + 1) + A108046 (n + 1))

end

end A245392.P11215266754598419591

namespace A245392

/-- `A054432(n+1)+A130711(n+1)+A108046(n+1)` -/
def P11215266754598419591.Spec : Prop :=
  ∀ n, P11215266754598419591.a n = A245392 (n + 1)

end A245392

/-!
# A245393: Primes of the form m^10 - m^9 + m^8 - m^7 + m^6 - m^5 + m^4 - m^3 + m^2 - m + 1.

The programs for A245393, there is no canonical definition to state claims against.
-/

/-! ## A245393.P8051907392218583988

`A269486(A250178(n+1))`
-/

namespace A245393.P8051907392218583988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269486 (A250178 (n + 1)).toNat

end

end A245393.P8051907392218583988

/-!
# A245394: Record values in A125717.

The programs for A245394, there is no canonical definition to state claims against.
-/

/-! ## A245394.P11781148061211128652

`record[A125717(n)]`
-/

namespace A245394.P11781148061211128652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245394.P11781148061211128652

/-! ## A245394.P14598550969506081969

`record[A370957(n)+a(n-1)]` with `a(0)=0`
-/

namespace A245394.P14598550969506081969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A370957 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245394.P14598550969506081969

/-! ## A245394.P12131668930850129839

`A125717(A245395(n+1))`
-/

namespace A245394.P12131668930850129839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125717 (A245395 (n + 1)).toNat

end

end A245394.P12131668930850129839

/-! ## A245394.P64917946787904077

`record[∑[A370957(n+1)]-A370957(n+1)]`
-/

namespace A245394.P64917946787904077
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370957 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A370957 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245394.P64917946787904077

/-!
# A245395: Where record values occur in A125717.

The programs for A245395, there is no canonical definition to state claims against.
-/

/-! ## A245395.P5176538576173483911

`A245340(record[A125717(n)])`
-/

namespace A245395.P5176538576173483911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245340 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A245395.P5176538576173483911

/-! ## A245395.P13822733389989671696

`A245340(A245394(n+1))`
-/

namespace A245395.P13822733389989671696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245340 (A245394 (n + 1)).toNat

end

end A245395.P13822733389989671696

/-! ## A245395.P10874577068855469371

`A245340(record[A370957(n)+a(n-1)])` with `a(0)=0`
-/

namespace A245395.P10874577068855469371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A370957 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245340 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A245395.P10874577068855469371

/-! ## A245395.P3840556159026712292

`record[A134421(n)%A346447(n+1)]`
-/

namespace A245395.P3840556159026712292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A134421 n) (A346447 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A245395.P3840556159026712292

/-! ## A245395.P14676016899568223663

`∑[A086412(A170804(n+1))]`
-/

namespace A245395.P14676016899568223663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086412 (A170804 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A245395.P14676016899568223663

/-!
# A245396: Largest prime not exceeding prime(n)^(1 + 1/n).

The programs for A245396, the canonical program `A245396.P12690850996293574207` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245396 has offset 1).

The definition of A245396 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A245396.P10349761144669550165

`A007917(A249669(n+1))`
-/

namespace A245396.P10349761144669550165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 (A249669 (n + 1)).toNat

end

end A245396.P10349761144669550165

namespace A245396

/-- `A007917(A249669(n+1))` -/
def P10349761144669550165.Spec : Prop :=
  ∀ n, P10349761144669550165.a n = A245396 (n + 1)

end A245396

/-! ## A245396.P12690850996293574207

`A151799(ceil(A000040(n+1)^(1+1/(n+1))))`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A245396

/-- `A151799(ceil(A000040(n+1)^(1+1/(n+1))))` -/
def P12690850996293574207.Spec : Prop :=
  ∀ n, P12690850996293574207.a n = A245396 (n + 1)

theorem P12690850996293574207.correct : P12690850996293574207.Spec := by
  intro n
  simp only [A245396, Nat.add_sub_cancel]

end A245396

/-! ## A245396.P10724592528865103715

`A244365(∑[A182134(n+1)])`
-/

namespace A245396.P10724592528865103715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182134 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244365 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A245396.P10724592528865103715

namespace A245396

/-- `A244365(∑[A182134(n+1)])` -/
def P10724592528865103715.Spec : Prop :=
  ∀ n, P10724592528865103715.a n = A245396 (n + 1)

end A245396

/-! ## A245396.P1004785305752946706

`A136548(A249669(n+1)+1)`
-/

namespace A245396.P1004785305752946706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A249669 (n + 1) + 1).toNat

end

end A245396.P1004785305752946706

namespace A245396

/-- `A136548(A249669(n+1)+1)` -/
def P1004785305752946706.Spec : Prop :=
  ∀ n, P1004785305752946706.a n = A245396 (n + 1)

end A245396

/-! ## A245396.P10809561873769443046

`A151799(A249669(n+1)+1)`
-/

namespace A245396.P10809561873769443046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151799 (A249669 (n + 1) + 1).toNat

end

end A245396.P10809561873769443046

namespace A245396

/-- `A151799(A249669(n+1)+1)` -/
def P10809561873769443046.Spec : Prop :=
  ∀ n, P10809561873769443046.a n = A245396 (n + 1)

end A245396

/-! ## A245396.P12738962116537678875

`A065091(A182134(n+1)+n)`
-/

namespace A245396.P12738962116537678875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A182134 (n + 1) + (n : ℤ)).toNat

end

end A245396.P12738962116537678875

namespace A245396

/-- `A065091(A182134(n+1)+n)` -/
def P12738962116537678875.Spec : Prop :=
  ∀ n, P12738962116537678875.a n = A245396 (n + 1)

end A245396

/-! ## A245396.P10914376573652673688

`A000040(A182134(n+1)+1+n)`
-/

namespace A245396.P10914376573652673688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A182134 (n + 1) + 1 + (n : ℤ)).toNat

end

end A245396.P10914376573652673688

namespace A245396

/-- `A000040(A182134(n+1)+1+n)` -/
def P10914376573652673688.Spec : Prop :=
  ∀ n, P10914376573652673688.a n = A245396 (n + 1)

end A245396

/-! ## A245396.P7650653263527380351

`A006005(A182134(n+1)+1+n)`
-/

namespace A245396.P7650653263527380351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A182134 (n + 1) + 1 + (n : ℤ)).toNat

end

end A245396.P7650653263527380351

namespace A245396

/-- `A006005(A182134(n+1)+1+n)` -/
def P7650653263527380351.Spec : Prop :=
  ∀ n, P7650653263527380351.a n = A245396 (n + 1)

end A245396

/-! ## A245396.P16257713406642693390

`A007917(floor(A000040(n+1)^ratio[n+1]))`
-/

namespace A245396.P16257713406642693390
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007917 ⌊(A000040 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌋.toNat

end

end A245396.P16257713406642693390

namespace A245396

/-- `A007917(floor(A000040(n+1)^ratio[n+1]))` -/
def P16257713406642693390.Spec : Prop :=
  ∀ n, P16257713406642693390.a n = A245396 (n + 1)

end A245396

/-! ## A245396.P10947909802201893111

`A136548(floor(A000040(n+1)^ratio[n+1])+1)`
-/

namespace A245396.P10947909802201893111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (⌊(A000040 (n + 1) : ℝ) ^ ((f1 (n + 1) : ℚ) / (f1 n : ℚ) : ℝ)⌋ + 1).toNat

end

end A245396.P10947909802201893111

namespace A245396

/-- `A136548(floor(A000040(n+1)^ratio[n+1])+1)` -/
def P10947909802201893111.Spec : Prop :=
  ∀ n, P10947909802201893111.a n = A245396 (n + 1)

end A245396

/-!
# A245398: Sum of n-th powers of coefficients in full expansion of (z_1 + z_2 + ... + z_n)^n.

The programs for A245398, there is no canonical definition to state claims against.
-/

/-! ## A245398.P11539875728626473820

`A245397(C(n+n+1, 2)+n)`
-/

namespace A245398.P11539875728626473820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (Nat.choose (n + n + 1) 2 + n)

end

end A245398.P11539875728626473820

/-! ## A245398.P13315034616043728914

`A245397(∑[4*n])`
-/

namespace A245398.P13315034616043728914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245397 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245398.P13315034616043728914

/-! ## A245398.P2642065114677603321

`gcd(A000038(n), A245397(A046092(n)))`
-/

namespace A245398.P2642065114677603321
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A245397 (A046092 n).toNat)

end

end A245398.P2642065114677603321

/-!
# A245399: Number of nonnegative integers with property that their base 6/5 expansion (see A024638) has n digits.

The programs for A245399, the canonical program `A245399.P8496903241108357948` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A245399 has offset 1).

The definition of A245399 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A120170, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A245399.P8496903241108357948

`6*A120170(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A245399

/-- `6*A120170(n+1)` -/
def P8496903241108357948.Spec : Prop :=
  ∀ n, P8496903241108357948.a n = A245399 (n + 1)

theorem P8496903241108357948.correct : P8496903241108357948.Spec := by
  intro n
  simp only [A245399, Nat.add_sub_cancel]

end A245399

/-! ## A245399.P14057867367389238214

`6*ceil(A279076(A028310(n))/6)`
-/

namespace A245399.P14057867367389238214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌈(A279076 (A028310 n).toNat : ℚ) / 6⌉

end

end A245399.P14057867367389238214

namespace A245399

/-- `6*ceil(A279076(A028310(n))/6)` -/
def P14057867367389238214.Spec : Prop :=
  ∀ n, P14057867367389238214.a n = A245399 (n + 1)

end A245399

/-! ## A245399.P5647609203386000385

`6*ceil(A279076(A233583(n+1))/6)`
-/

namespace A245399.P5647609203386000385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * ⌈(A279076 (A233583 (n + 1)).toNat : ℚ) / 6⌉

end

end A245399.P5647609203386000385

namespace A245399

/-- `6*ceil(A279076(A233583(n+1))/6)` -/
def P5647609203386000385.Spec : Prop :=
  ∀ n, P5647609203386000385.a n = A245399 (n + 1)

end A245399

/-! ## A245399.P15920895185424777700

`6*abs(A279076(abs(1-n))-A279076(n))`
-/

namespace A245399.P15920895185424777700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * |(A279076 |1 - (n : ℤ)|.toNat - A279076 n)|

end

end A245399.P15920895185424777700

namespace A245399

/-- `6*abs(A279076(abs(1-n))-A279076(n))` -/
def P15920895185424777700.Spec : Prop :=
  ∀ n, P15920895185424777700.a n = A245399 (n + 1)

end A245399

/-! ## A245399.P13958839993861524123

`A008458(A120170(n+1))`
-/

namespace A245399.P13958839993861524123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A120170 (n + 1)).toNat

end

end A245399.P13958839993861524123

namespace A245399

/-- `A008458(A120170(n+1))` -/
def P13958839993861524123.Spec : Prop :=
  ∀ n, P13958839993861524123.a n = A245399 (n + 1)

end A245399

/-! ## A245399.P10211968189868655254

`A016921(A120170(n+1))-A007318(∑[n])`
-/

namespace A245399.P10211968189868655254
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A120170 (n + 1)).toNat - A007318 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A245399.P10211968189868655254

namespace A245399

/-- `A016921(A120170(n+1))-A007318(∑[n])` -/
def P10211968189868655254.Spec : Prop :=
  ∀ n, P10211968189868655254.a n = A245399 (n + 1)

end A245399

/-! ## A245399.P15081845475961664850

`A016921(A120170(n+1))-A007318(C(n, 2))²`
-/

namespace A245399.P15081845475961664850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A120170 (n + 1)).toNat - A007318 (Nat.choose n 2) ^ 2

end

end A245399.P15081845475961664850

namespace A245399

/-- `A016921(A120170(n+1))-A007318(C(n, 2))²` -/
def P15081845475961664850.Spec : Prop :=
  ∀ n, P15081845475961664850.a n = A245399 (n + 1)

end A245399

/-! ## A245399.P10802034083956580411

`A016921(A120170(n+1))-A000041(C(2, n+2))`
-/

namespace A245399.P10802034083956580411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A120170 (n + 1)).toNat - A000041 (Nat.choose 2 (n + 2))

end

end A245399.P10802034083956580411

namespace A245399

/-- `A016921(A120170(n+1))-A000041(C(2, n+2))` -/
def P10802034083956580411.Spec : Prop :=
  ∀ n, P10802034083956580411.a n = A245399 (n + 1)

end A245399

/-! ## A245399.P10899653511132553429

`A016921(A120170(n+1))-A000108(C(2, n+2))`
-/

namespace A245399.P10899653511132553429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A120170 (n + 1)).toNat - A000108 (Nat.choose 2 (n + 2))

end

end A245399.P10899653511132553429

namespace A245399

/-- `A016921(A120170(n+1))-A000108(C(2, n+2))` -/
def P10899653511132553429.Spec : Prop :=
  ∀ n, P10899653511132553429.a n = A245399 (n + 1)

end A245399

/-! ## A245399.P11357235411273738698

`A016921(A120170(n+1))-A000108(gcd(n, n+1))`
-/

namespace A245399.P11357235411273738698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 (A120170 (n + 1)).toNat - A000108 (Nat.gcd n (n + 1))

end

end A245399.P11357235411273738698

namespace A245399

/-- `A016921(A120170(n+1))-A000108(gcd(n, n+1))` -/
def P11357235411273738698.Spec : Prop :=
  ∀ n, P11357235411273738698.a n = A245399 (n + 1)

end A245399

