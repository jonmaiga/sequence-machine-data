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
import Seq.B001.C010
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
# A122100: a(n) = 3*a(n-1) - a(n-3) for n>2, with a(0)=1, a(1)=-1, a(2)=0.

The programs for A122100, the canonical program `A122100.P5267791835643118732` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122100 has offset 0).

The definition of A122100 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)-a(n-3)` (program `A122100.P5267791835643118732`, by `A122100.P5267791835643118732.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122100.P5267791835643118732

`3*a(n-1)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122100

/-- `3*a(n-1)-a(n-3)` -/
def P5267791835643118732.Spec : Prop :=
  ∀ n, P5267791835643118732.a n = A122100 n

theorem P5267791835643118732.correct : P5267791835643118732.Spec := by
  intro n
  simp only [A122100]

end A122100

/-! ## A122100.P2950355816072764586

`ogf((1-4x+3x^2)/(1-3x+x^3))`
-/

namespace A122100.P2950355816072764586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -4, 3] [1, -3, 0, 1] n

end

end A122100.P2950355816072764586

namespace A122100

/-- `ogf((1-4x+3x^2)/(1-3x+x^3))` -/
def P2950355816072764586.Spec : Prop :=
  ∀ n, P2950355816072764586.a n = A122100 n

end A122100

/-! ## A122100.P2473943485536802459

`a(n-1)+a(n-1)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A122100.P2473943485536802459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) - a (n - 3)))

end

end A122100.P2473943485536802459

namespace A122100

/-- `a(n-1)+a(n-1)+a(n-1)-a(n-3)` -/
def P2473943485536802459.Spec : Prop :=
  ∀ n, P2473943485536802459.a n = A122100 n

theorem P2473943485536802459.correct : P2473943485536802459.Spec := by
  intro n
  simp only [A122100, Nat.add_sub_cancel, A122100.P2473943485536802459.a, A122100.P5267791835643118732.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A122100

/-! ## A122100.P17312191459403981929

`a(n-1)-(a(n-3)-a(n-1)-a(n-1))` with `a(0)=1, a(1)=-1, a(2)=0`
-/

namespace A122100.P17312191459403981929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -1, 0] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 1) - a (n - 1))

end

end A122100.P17312191459403981929

namespace A122100

/-- `a(n-1)-(a(n-3)-a(n-1)-a(n-1))` -/
def P17312191459403981929.Spec : Prop :=
  ∀ n, P17312191459403981929.a n = A122100 n

theorem P17312191459403981929.correct : P17312191459403981929.Spec := by
  intro n
  simp only [A122100, Nat.add_sub_cancel, A122100.P17312191459403981929.a, A122100.P5267791835643118732.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A122100

/-! ## A122100.P3867527173767993399

`A033999(n)*A122099(n)`
-/

namespace A122100.P3867527173767993399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A122099 n

end

end A122100.P3867527173767993399

namespace A122100

/-- `A033999(n)*A122099(n)` -/
def P3867527173767993399.Spec : Prop :=
  ∀ n, P3867527173767993399.a n = A122100 n

end A122100

/-! ## A122100.P18173725421979486140

`A009001(2*n)*A122099(n)`
-/

namespace A122100.P18173725421979486140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009001 (2 * n) * A122099 n

end

end A122100.P18173725421979486140

namespace A122100

/-- `A009001(2*n)*A122099(n)` -/
def P18173725421979486140.Spec : Prop :=
  ∀ n, P18173725421979486140.a n = A122100 n

end A122100

/-! ## A122100.P14400630857252157943

`A056594(2*n)*A122099(n)`
-/

namespace A122100.P14400630857252157943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A122099 n

end

end A122100.P14400630857252157943

namespace A122100

/-- `A056594(2*n)*A122099(n)` -/
def P14400630857252157943.Spec : Prop :=
  ∀ n, P14400630857252157943.a n = A122100 n

end A122100

/-! ## A122100.P11437820669286192374

`2*A215448(n)-A052545(n)`
-/

namespace A122100.P11437820669286192374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215448 n - A052545 n

end

end A122100.P11437820669286192374

namespace A122100

/-- `2*A215448(n)-A052545(n)` -/
def P11437820669286192374.Spec : Prop :=
  ∀ n, P11437820669286192374.a n = A122100 n

end A122100

/-! ## A122100.P11197910284621178791

`A052545(n)+A215448(n)-A052536(n)`
-/

namespace A122100.P11197910284621178791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052545 n + (A215448 n - A052536 n)

end

end A122100.P11197910284621178791

namespace A122100

/-- `A052545(n)+A215448(n)-A052536(n)` -/
def P11197910284621178791.Spec : Prop :=
  ∀ n, P11197910284621178791.a n = A122100 n

end A122100

/-! ## A122100.P14871815882318633036

`A076264(n)+A215448(n)-A052545(n+1)`
-/

namespace A122100.P14871815882318633036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076264 n + (A215448 n - A052545 (n + 1))

end

end A122100.P14871815882318633036

namespace A122100

/-- `A076264(n)+A215448(n)-A052545(n+1)` -/
def P14871815882318633036.Spec : Prop :=
  ∀ n, P14871815882318633036.a n = A122100 n

end A122100

/-! ## A122100.P2991941908954113064

`A122099(n)*A130595(A000217(n))`
-/

namespace A122100.P2991941908954113064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122099 n * A130595 (A000217 n).toNat

end

end A122100.P2991941908954113064

namespace A122100

/-- `A122099(n)*A130595(A000217(n))` -/
def P2991941908954113064.Spec : Prop :=
  ∀ n, P2991941908954113064.a n = A122100 n

end A122100

/-!
# A122102: a(n) = Sum_{k=1..n} prime(k)^4.

The programs for A122102, the canonical program `A122102.P3417295557102748477` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122102 has offset 1).

The definition of A122102 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122102.P3417295557102748477

`∑[A030514(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122102

/-- `∑[A030514(n+1)]` -/
def P3417295557102748477.Spec : Prop :=
  ∀ n, P3417295557102748477.a n = A122102 (n + 1)

theorem P3417295557102748477.correct : P3417295557102748477.Spec := by
  intro n
  simp only [A122102, Nat.add_sub_cancel]

end A122102

/-! ## A122102.P15223259560120613918

`∑[A001248(n+1)²]`
-/

namespace A122102.P15223259560120613918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P15223259560120613918

namespace A122102

/-- `∑[A001248(n+1)²]` -/
def P15223259560120613918.Spec : Prop :=
  ∀ n, P15223259560120613918.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P9460667186330312518

`∑[sqrt(A179645(n+1))]`
-/

namespace A122102.P9460667186330312518
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A179645 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P9460667186330312518

namespace A122102

/-- `∑[sqrt(A179645(n+1))]` -/
def P9460667186330312518.Spec : Prop :=
  ∀ n, P9460667186330312518.a n = (A122102 (n + 1) : ℝ)

end A122102

/-! ## A122102.P4425403105586783878

`∑[Δ[A007504(n)]²²]`
-/

namespace A122102.P4425403105586783878
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P4425403105586783878

namespace A122102

/-- `∑[Δ[A007504(n)]²²]` -/
def P4425403105586783878.Spec : Prop :=
  ∀ n, P4425403105586783878.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P1830237444818851060

`∑[Δ[A008348(n)]²²]`
-/

namespace A122102.P1830237444818851060
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P1830237444818851060

namespace A122102

/-- `∑[Δ[A008348(n)]²²]` -/
def P1830237444818851060.Spec : Prop :=
  ∀ n, P1830237444818851060.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P14221385811316935408

`∑[Δ[A022837(n)]²²]`
-/

namespace A122102.P14221385811316935408
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022837 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P14221385811316935408

namespace A122102

/-- `∑[Δ[A022837(n)]²²]` -/
def P14221385811316935408.Spec : Prop :=
  ∀ n, P14221385811316935408.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P2136432473159601160

`∑[Δ[A064365(n)]²²]`
-/

namespace A122102.P2136432473159601160
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064365 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) - f2 n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P2136432473159601160

namespace A122102

/-- `∑[Δ[A064365(n)]²²]` -/
def P2136432473159601160.Spec : Prop :=
  ∀ n, P2136432473159601160.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P2315759283530157162

`∑[p?[A259153(n)]²²]`
-/

namespace A122102.P2315759283530157162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P2315759283530157162

namespace A122102

/-- `∑[p?[A259153(n)]²²]` -/
def P2315759283530157162.Spec : Prop :=
  ∀ n, P2315759283530157162.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P17601429495330124672

`∑[A172191(n+1)/2]`
-/

namespace A122102.P17601429495330124672
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A172191 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P17601429495330124672

namespace A122102

/-- `∑[A172191(n+1)/2]` -/
def P17601429495330124672.Spec : Prop :=
  ∀ n, P17601429495330124672.a n = (A122102 (n + 1) : ℚ)

end A122102

/-! ## A122102.P1683010941953524340

`∑[A000040(n+1)^4]`
-/

namespace A122102.P1683010941953524340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P1683010941953524340

namespace A122102

/-- `∑[A000040(n+1)^4]` -/
def P1683010941953524340.Spec : Prop :=
  ∀ n, P1683010941953524340.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P6749173343002288637

`∑[A273960(n+1)^4]`
-/

namespace A122102.P6749173343002288637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P6749173343002288637

namespace A122102

/-- `∑[A273960(n+1)^4]` -/
def P6749173343002288637.Spec : Prop :=
  ∀ n, P6749173343002288637.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P5311496603493159759

`∑[(A084920(n+1)+1)²]`
-/

namespace A122102.P5311496603493159759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A084920 (n + 1) + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P5311496603493159759

namespace A122102

/-- `∑[(A084920(n+1)+1)²]` -/
def P5311496603493159759.Spec : Prop :=
  ∀ n, P5311496603493159759.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P12319476486185060817

`∑[(A049001(n+1)+2)²]`
-/

namespace A122102.P12319476486185060817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A049001 (n + 1) + 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P12319476486185060817

namespace A122102

/-- `∑[(A049001(n+1)+2)²]` -/
def P12319476486185060817.Spec : Prop :=
  ∀ n, P12319476486185060817.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P5859991442056032786

`∑[(1-A066872(n+1))²]`
-/

namespace A122102.P5859991442056032786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A066872 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P5859991442056032786

namespace A122102

/-- `∑[(1-A066872(n+1))²]` -/
def P5859991442056032786.Spec : Prop :=
  ∀ n, P5859991442056032786.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P8711276640323598568

`∑[(2-A061725(n+1))²]`
-/

namespace A122102.P8711276640323598568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A061725 (n + 1)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P8711276640323598568

namespace A122102

/-- `∑[(2-A061725(n+1))²]` -/
def P8711276640323598568.Spec : Prop :=
  ∀ n, P8711276640323598568.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P8308022389958694208

`∑[(A182200(n+1)+3)²]`
-/

namespace A122102.P8308022389958694208
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A182200 (n + 1) + 3) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P8308022389958694208

namespace A122102

/-- `∑[(A182200(n+1)+3)²]` -/
def P8308022389958694208.Spec : Prop :=
  ∀ n, P8308022389958694208.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P742141882231698492

`∑[(A079704(n+1)/2)²]`
-/

namespace A122102.P742141882231698492
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A079704 (n + 1) : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P742141882231698492

namespace A122102

/-- `∑[(A079704(n+1)/2)²]` -/
def P742141882231698492.Spec : Prop :=
  ∀ n, P742141882231698492.a n = (A122102 (n + 1) : ℚ)

end A122102

/-! ## A122102.P2337976464507640714

`∑[∑[A054541(n+1)]²²]`
-/

namespace A122102.P2337976464507640714
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P2337976464507640714

namespace A122102

/-- `∑[∑[A054541(n+1)]²²]` -/
def P2337976464507640714.Spec : Prop :=
  ∀ n, P2337976464507640714.a n = A122102 (n + 1)

end A122102

/-! ## A122102.P17176948226403909704

`∑[A000040(C(n+1, n))²²]`
-/

namespace A122102.P17176948226403909704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (Nat.choose (n + 1) n) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122102.P17176948226403909704

namespace A122102

/-- `∑[A000040(C(n+1, n))²²]` -/
def P17176948226403909704.Spec : Prop :=
  ∀ n, P17176948226403909704.a n = A122102 (n + 1)

end A122102

/-!
# A122103: Sum of the fifth powers of the first n primes.

The programs for A122103, the canonical program `A122103.P17960088911727487436` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122103 has offset 1).

The definition of A122103 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122103.P17960088911727487436

`∑[A050997(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122103

/-- `∑[A050997(n+1)]` -/
def P17960088911727487436.Spec : Prop :=
  ∀ n, P17960088911727487436.a n = A122103 (n + 1)

theorem P17960088911727487436.correct : P17960088911727487436.Spec := by
  intro n
  simp only [A122103, Nat.add_sub_cancel]

end A122103

/-! ## A122103.P17950746846119177097

`∑[sqrt(A030629(n+1))]`
-/

namespace A122103.P17950746846119177097
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A030629 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P17950746846119177097

namespace A122103

/-- `∑[sqrt(A030629(n+1))]` -/
def P17950746846119177097.Spec : Prop :=
  ∀ n, P17950746846119177097.a n = (A122103 (n + 1) : ℝ)

end A122103

/-! ## A122103.P14209895274555028460

`∑[A000040(n+1)^5]`
-/

namespace A122103.P14209895274555028460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P14209895274555028460

namespace A122103

/-- `∑[A000040(n+1)^5]` -/
def P14209895274555028460.Spec : Prop :=
  ∀ n, P14209895274555028460.a n = A122103 (n + 1)

end A122103

/-! ## A122103.P12392603535018720929

`∑[A001248(n+1)*A030078(n+1)]`
-/

namespace A122103.P12392603535018720929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) * A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P12392603535018720929

namespace A122103

/-- `∑[A001248(n+1)*A030078(n+1)]` -/
def P12392603535018720929.Spec : Prop :=
  ∀ n, P12392603535018720929.a n = A122103 (n + 1)

end A122103

/-! ## A122103.P4373233247650448998

`∑[A001248(n+1)²*Δ[A007504(n)]]`
-/

namespace A122103.P4373233247650448998
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P4373233247650448998

namespace A122103

/-- `∑[A001248(n+1)²*Δ[A007504(n)]]` -/
def P4373233247650448998.Spec : Prop :=
  ∀ n, P4373233247650448998.a n = A122103 (n + 1)

end A122103

/-! ## A122103.P4216670033471056665

`∑[A001248(n+1)²*A000040(n+1)]`
-/

namespace A122103.P4216670033471056665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1) ^ 2 * A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P4216670033471056665

namespace A122103

/-- `∑[A001248(n+1)²*A000040(n+1)]` -/
def P4216670033471056665.Spec : Prop :=
  ∀ n, P4216670033471056665.a n = A122103 (n + 1)

end A122103

/-! ## A122103.P9855544034291307187

`∑[A000040(n+1)²*A030078(n+1)]`
-/

namespace A122103.P9855544034291307187
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2 * A030078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P9855544034291307187

namespace A122103

/-- `∑[A000040(n+1)²*A030078(n+1)]` -/
def P9855544034291307187.Spec : Prop :=
  ∀ n, P9855544034291307187.a n = A122103 (n + 1)

end A122103

/-! ## A122103.P11370217380418752762

`∑[A030078(n+1)/2*A079704(n+1)]`
-/

namespace A122103.P11370217380418752762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A030078 (n + 1) : ℚ) / 2 * (A079704 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P11370217380418752762

namespace A122103

/-- `∑[A030078(n+1)/2*A079704(n+1)]` -/
def P11370217380418752762.Spec : Prop :=
  ∀ n, P11370217380418752762.a n = (A122103 (n + 1) : ℚ)

end A122103

/-! ## A122103.P6816232267567094869

`∑[record[A006530(n+2)^5]]`
-/

namespace A122103.P6816232267567094869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) ^ 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P6816232267567094869

namespace A122103

/-- `∑[record[A006530(n+2)^5]]` -/
def P6816232267567094869.Spec : Prop :=
  ∀ n, P6816232267567094869.a n = A122103 (n + 1)

end A122103

/-! ## A122103.P13888564679801085727

`∑[record[A020639(n+2)^5]]`
-/

namespace A122103.P13888564679801085727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P13888564679801085727

namespace A122103

/-- `∑[record[A020639(n+2)^5]]` -/
def P13888564679801085727.Spec : Prop :=
  ∀ n, P13888564679801085727.a n = A122103 (n + 1)

end A122103

/-! ## A122103.P16512939129413972184

`∑[record[A351193(n+2)]]`
-/

namespace A122103.P16512939129413972184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351193 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P16512939129413972184

namespace A122103

/-- `∑[record[A351193(n+2)]]` -/
def P16512939129413972184.Spec : Prop :=
  ∀ n, P16512939129413972184.a n = A122103 (n + 1)

end A122103

/-! ## A122103.P4098972079646165818

`∑[record[A014963(n+2)^5]]`
-/

namespace A122103.P4098972079646165818
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) ^ 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P4098972079646165818

namespace A122103

/-- `∑[record[A014963(n+2)^5]]` -/
def P4098972079646165818.Spec : Prop :=
  ∀ n, P4098972079646165818.a n = A122103 (n + 1)

end A122103

/-! ## A122103.P17802267177234400832

`∑[A000584(A000040(n+1))]`
-/

namespace A122103.P17802267177234400832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000584 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P17802267177234400832

namespace A122103

/-- `∑[A000584(A000040(n+1))]` -/
def P17802267177234400832.Spec : Prop :=
  ∀ n, P17802267177234400832.a n = A122103 (n + 1)

end A122103

/-! ## A122103.P168314648563850837

`∑[A069492(A258602(n+1))]`
-/

namespace A122103.P168314648563850837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069492 (A258602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122103.P168314648563850837

namespace A122103

/-- `∑[A069492(A258602(n+1))]` -/
def P168314648563850837.Spec : Prop :=
  ∀ n, P168314648563850837.a n = A122103 (n + 1)

end A122103

/-!
# A122105: Sum of the bottom levels of all columns in all deco polyominoes of height n. A deco polyomino is a directed column-convex polyomino in which the height, measured along the diagonal, is attained only in the last column.

The programs for A122105, the canonical program `A122105.P10294794517820108572` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122105 has offset 0).

The definition of A122105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122105.P10294794517820108572

`(2*n-1)*a(n-1)-(n-1)²*a(n-2)+(n-2)*(n-2)!` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122105

/-- `(2*n-1)*a(n-1)-(n-1)²*a(n-2)+(n-2)*(n-2)!` -/
def P10294794517820108572.Spec : Prop :=
  ∀ n, P10294794517820108572.a n = A122105 n

theorem P10294794517820108572.correct : P10294794517820108572.Spec := by
  intro n
  simp only [A122105]

end A122105

/-! ## A122105.P12442063908231221358

`(n+1)!-record[A350273(n)]`
-/

namespace A122105.P12442063908231221358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122105.P12442063908231221358

namespace A122105

/-- `(n+1)!-record[A350273(n)]` -/
def P12442063908231221358.Spec : Prop :=
  ∀ n, P12442063908231221358.a n = A122105 n

end A122105

/-! ## A122105.P1768328746231298384

`A001563(n)-abs(A081052(n))`
-/

namespace A122105.P1768328746231298384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001563 n - |A081052 n|

end

end A122105.P1768328746231298384

namespace A122105

/-- `A001563(n)-abs(A081052(n))` -/
def P1768328746231298384.Spec : Prop :=
  ∀ n, P1768328746231298384.a n = A122105 n

end A122105

/-! ## A122105.P9021689226353183180

`record[A047920(n)]-record[A350273(n)]`
-/

namespace A122105.P9021689226353183180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A122105.P9021689226353183180

namespace A122105

/-- `record[A047920(n)]-record[A350273(n)]` -/
def P9021689226353183180.Spec : Prop :=
  ∀ n, P9021689226353183180.a n = A122105 n

end A122105

/-! ## A122105.P8323173782591249457

`record[A047920(n)]-record[A350274(n)]`
-/

namespace A122105.P8323173782591249457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A122105.P8323173782591249457

namespace A122105

/-- `record[A047920(n)]-record[A350274(n)]` -/
def P8323173782591249457.Spec : Prop :=
  ∀ n, P8323173782591249457.a n = A122105 n

end A122105

/-! ## A122105.P6605488916670051059

`record[A084938(n)]-record[A350273(n)]`
-/

namespace A122105.P6605488916670051059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084938 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

end

end A122105.P6605488916670051059

namespace A122105

/-- `record[A084938(n)]-record[A350273(n)]` -/
def P6605488916670051059.Spec : Prop :=
  ∀ n, P6605488916670051059.a n = A122105 n

end A122105

/-! ## A122105.P15109182804886224578

`A000142(n+1)-record[A350273(n)]`
-/

namespace A122105.P15109182804886224578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122105.P15109182804886224578

namespace A122105

/-- `A000142(n+1)-record[A350273(n)]` -/
def P15109182804886224578.Spec : Prop :=
  ∀ n, P15109182804886224578.a n = A122105 n

end A122105

/-! ## A122105.P7865776023139440686

`A000142(n+1)-record[A350274(n)]`
-/

namespace A122105.P7865776023139440686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350274 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122105.P7865776023139440686

namespace A122105

/-- `A000142(n+1)-record[A350274(n)]` -/
def P7865776023139440686.Spec : Prop :=
  ∀ n, P7865776023139440686.a n = A122105 n

end A122105

/-!
# A122106: Numbers of the form (1+2n^2+3n^3)/(2n-1).

The programs for A122106, there is no canonical definition to state claims against.
-/

/-! ## A122106.P12027164555714930941

`2^n-A193631(A193630(n))`
-/

namespace A122106.P12027164555714930941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A193631 (A193630 n).toNat

end

end A122106.P12027164555714930941

/-!
# A122108: a(n)=number of 1's ("live" cells) at stage n of a 2-dimensional cellular automaton evolving by the rule: 1 if N+S+E+W is 1 or 2, else 0, starting from a single live cell.

The programs for A122108, there is no canonical definition to state claims against.
-/

/-! ## A122108.P846322765157947280

`A269714(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A122108.P846322765157947280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A269714 (n - 1) + a (n - 1)

end

end A122108.P846322765157947280

/-! ## A122108.P16118292110574083972

`∑[A269714(n)]+1-A269714(n)`
-/

namespace A122108.P16118292110574083972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A269714 n)

end

end A122108.P16118292110574083972

/-! ## A122108.P10987406434285114143

`∑[A269714(A028310(n))]-A269714(n)`
-/

namespace A122108.P10987406434285114143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269714 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A269714 n

end

end A122108.P10987406434285114143

/-! ## A122108.P4855726641174868729

`Δ[A269713(n)]-A269714(n)`
-/

namespace A122108.P4855726641174868729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269713 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A269714 n

end

end A122108.P4855726641174868729

/-! ## A122108.P8989836213615985861

`A269713(n+1)-(A269714(n)+A269713(n))`
-/

namespace A122108.P8989836213615985861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269713 (n + 1) - (A269714 n + A269713 n)

end

end A122108.P8989836213615985861

/-! ## A122108.P15409382911688813324

`A033996(n)%A273538(n)+1`
-/

namespace A122108.P15409382911688813324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033996 n) (A273538 n) + 1

end

end A122108.P15409382911688813324

/-! ## A122108.P6726576513244681577

`floor(acot(n)+A016754(n)-A273538(n))`
-/

namespace A122108.P6726576513244681577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (n : ℝ) + (A016754 n - A273538 n : ℝ)⌋

end

end A122108.P6726576513244681577

/-! ## A122108.P11391690705134652810

`∑[8*n]+A054977(n)-A273538(n)`
-/

namespace A122108.P11391690705134652810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (A054977 n - A273538 n)

end

end A122108.P11391690705134652810

/-! ## A122108.P9188521557396081750

`A016754(n)%A273538(A028310(n))`
-/

namespace A122108.P9188521557396081750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016754 n) (A273538 (A028310 n).toNat)

end

end A122108.P9188521557396081750

/-! ## A122108.P9680661220311364561

`A005408(n)²%A273538(A028310(n))`
-/

namespace A122108.P9680661220311364561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005408 n ^ 2) (A273538 (A028310 n).toNat)

end

end A122108.P9680661220311364561

/-! ## A122108.P8575484530171746459

`A000007(n)+A016754(n)-A273538(n)`
-/

namespace A122108.P8575484530171746459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A016754 n - A273538 n)

end

end A122108.P8575484530171746459

/-! ## A122108.P9260200918984066548

`gcd(A016754(n)-A273538(n), A130706(n)²)`
-/

namespace A122108.P9260200918984066548
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016754 n - A273538 n) (A130706 n ^ 2)

end

end A122108.P9260200918984066548

/-! ## A122108.P9018024164938928380

`A000038(n)/2+A016754(n)-A273538(n)`
-/

namespace A122108.P9018024164938928380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) / 2 + (A016754 n - A273538 n : ℚ)

end

end A122108.P9018024164938928380

/-! ## A122108.P927602364693363027

`(A016754(n)-A273538(n))^A019430(2*n)`
-/

namespace A122108.P927602364693363027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016754 n - A273538 n : ℚ) ^ (A019430 (2 * n) : ℤ)

end

end A122108.P927602364693363027

/-! ## A122108.P10635873125897483750

`A016754(n)-A273538(n)+A028310(n)-n`
-/

namespace A122108.P10635873125897483750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016754 n - A273538 n + (A028310 n - (n : ℤ))

end

end A122108.P10635873125897483750

/-! ## A122108.P16367276797097375098

`(A016754(n)-A273538(n))^A001221(A000015(n+1))`
-/

namespace A122108.P16367276797097375098
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016754 n - A273538 n : ℚ) ^ (A001221 (A000015 (n + 1)).toNat : ℤ)

end

end A122108.P16367276797097375098

/-! ## A122108.P4603505829297811974

`A181385(4*n+2)-A273538(n)`
-/

namespace A122108.P4603505829297811974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181385 (4 * n + 2) - A273538 n

end

end A122108.P4603505829297811974

/-!
# A122109: a(n) = 9*a(n-2) - 4*a(n-3) for n > 2 with a(0)=1, a(1)=2.

The programs for A122109, the canonical program `A122109.P7780779593748398002` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122109 has offset 0).

The definition of A122109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*a(n-2)-4*a(n-3)` (program `A122109.P7780779593748398002`, by `A122109.P7780779593748398002.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122109.P7780779593748398002

`9*a(n-2)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=6`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122109

/-- `9*a(n-2)-4*a(n-3)` -/
def P7780779593748398002.Spec : Prop :=
  ∀ n, P7780779593748398002.a n = A122109 n

theorem P7780779593748398002.correct : P7780779593748398002.Spec := by
  intro n
  simp only [A122109]

end A122109

/-! ## A122109.P9890746769820046461

`ogf((1+2x-3x^2)/(1-9x^2+4x^3))`
-/

namespace A122109.P9890746769820046461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2, -3] [1, 0, -9, 4] n

end

end A122109.P9890746769820046461

namespace A122109

/-- `ogf((1+2x-3x^2)/(1-9x^2+4x^3))` -/
def P9890746769820046461.Spec : Prop :=
  ∀ n, P9890746769820046461.a n = A122109 n

end A122109

/-! ## A122109.P17620463039483308082

`or(A100795(A052856(n)), A192484(n))`
-/

namespace A122109.P17620463039483308082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100795 (A052856 n).toNat) (A192484 n)

end

end A122109.P17620463039483308082

namespace A122109

/-- `or(A100795(A052856(n)), A192484(n))` -/
def P17620463039483308082.Spec : Prop :=
  ∀ n, P17620463039483308082.a n = A122109 n

end A122109

/-!
# A122110: Number of integers m of the form (1+2x+4x^3)/(x+n).

The programs for A122110, there is no canonical definition to state claims against.
-/

/-! ## A122110.P11213978555264257286

`∏{e}[A094792(2*n+1)-1, #+1]`
-/

namespace A122110.P11213978555264257286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094792 (2 * n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1)

end

end A122110.P11213978555264257286

/-! ## A122110.P12935276678132702694

`2*A000005(Δ[∑[2*n]²]+2*n+1)`
-/

namespace A122110.P12935276678132702694
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000005 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (2 * n + 1 : ℤ)).toNat

end

end A122110.P12935276678132702694

/-! ## A122110.P2195077102802262232

`A054844(A006003(2*(n+1))+n)`
-/

namespace A122110.P2195077102802262232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (A006003 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A122110.P2195077102802262232

/-! ## A122110.P402301870845980353

`A099777(A006003(2*(n+1))+n)`
-/

namespace A122110.P402301870845980353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (A006003 (2 * (n + 1)) + (n : ℤ)).toNat

end

end A122110.P402301870845980353

/-! ## A122110.P4285062269839254186

`A000005(((2*(n+1))²+2)*2*(n+1)-2)`
-/

namespace A122110.P4285062269839254186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (((2 * (n + 1)) ^ 2 + 2) * (2 * (n + 1)) - 2)

end

end A122110.P4285062269839254186

/-!
# A122111: Self-inverse permutation of the positive integers induced by partition enumeration in A112798 and partition conjugation.

The programs for A122111, the canonical program `A122111.P18124015185857335041` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122111 has offset 1).

The definition of A122111 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A064989, A105560, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122111.P18124015185857335041

`A105560(n+1)*a(A064989(n+1)-1)` with `a(0)=1`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A122111

/-- `A105560(n+1)*a(A064989(n+1)-1)` -/
def P18124015185857335041.Spec : Prop :=
  ∀ n, P18124015185857335041.a n = A122111 (n + 1)

theorem P18124015185857335041.correct : P18124015185857335041.Spec := by
  intro n
  simp only [A122111, Nat.add_sub_cancel]

end A122111

/-! ## A122111.P9316039025785083241

`A000040(A001222(n+1))*a(A064989(n+1)-1)` with `a(0)=1`
-/

namespace A122111.P9316039025785083241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000040 (A001222 (n + 1)).toNat * a (A064989 (n + 1) - 1).toNat

end

end A122111.P9316039025785083241

namespace A122111

/-- `A000040(A001222(n+1))*a(A064989(n+1)-1)` -/
def P9316039025785083241.Spec : Prop :=
  ∀ n, P9316039025785083241.a n = A122111 (n + 1)

end A122111

/-! ## A122111.P9026544300815748926

`A000079(A241917(n+1))*A003961(a(A052126(n+1)-1))` with `a(0)=1`
-/

namespace A122111.P9026544300815748926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 (A241917 (n + 1)).toNat * A003961 (a (A052126 (n + 1) - 1).toNat).toNat

end

end A122111.P9026544300815748926

namespace A122111

/-- `A000079(A241917(n+1))*A003961(a(A052126(n+1)-1))` -/
def P9026544300815748926.Spec : Prop :=
  ∀ n, P9026544300815748926.a n = A122111 (n + 1)

end A122111

/-! ## A122111.P7428272075726912323

`A243505(A048673(n+1))`
-/

namespace A122111.P7428272075726912323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243505 (A048673 (n + 1)).toNat

end

end A122111.P7428272075726912323

namespace A122111

/-- `A243505(A048673(n+1))` -/
def P7428272075726912323.Spec : Prop :=
  ∀ n, P7428272075726912323.a n = A122111 (n + 1)

end A122111

/-! ## A122111.P79604951831997160

`A242419(A153212(n+1))`
-/

namespace A122111.P79604951831997160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242419 (A153212 (n + 1)).toNat

end

end A122111.P79604951831997160

namespace A122111

/-- `A242419(A153212(n+1))` -/
def P79604951831997160.Spec : Prop :=
  ∀ n, P79604951831997160.a n = A122111 (n + 1)

end A122111

/-!
# A122112: a(n) = 4*a(n-2) - a(n-1), with a(0)=1, a(1)=-2.

The programs for A122112, the canonical program `A122112.P11408427923262638353` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122112 has offset 0).

The definition of A122112 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-2)-a(n-1)` (program `A122112.P11408427923262638353`, by `A122112.P11408427923262638353.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122112.P11408427923262638353

`4*a(n-2)-a(n-1)` with `a(0)=1, a(1)=-2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122112

/-- `4*a(n-2)-a(n-1)` -/
def P11408427923262638353.Spec : Prop :=
  ∀ n, P11408427923262638353.a n = A122112 n

theorem P11408427923262638353.correct : P11408427923262638353.Spec := by
  intro n
  simp only [A122112]

end A122112

/-! ## A122112.P12912789140523061955

`(-1)^n*A026597(n)`
-/

namespace A122112.P12912789140523061955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ n * A026597 n

end

end A122112.P12912789140523061955

namespace A122112

/-- `(-1)^n*A026597(n)` -/
def P12912789140523061955.Spec : Prop :=
  ∀ n, P12912789140523061955.a n = A122112 n

end A122112

/-! ## A122112.P3697857503049118528

`ogf((1-x)/(1+x-4x^2))`
-/

namespace A122112.P3697857503049118528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, 1, -4] n

end

end A122112.P3697857503049118528

namespace A122112

/-- `ogf((1-x)/(1+x-4x^2))` -/
def P3697857503049118528.Spec : Prop :=
  ∀ n, P3697857503049118528.a n = A122112 n

end A122112

/-! ## A122112.P15435044976135706002

`a(n-2)/(1/2)²-a(n-1)` with `a(0)=1, a(1)=-2`
-/

namespace A122112.P15435044976135706002
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, -2] fun n a =>
  a (n - 2) / ((1 : ℚ) / 2) ^ 2 - a (n - 1)

end

end A122112.P15435044976135706002

namespace A122112

/-- `a(n-2)/(1/2)²-a(n-1)` -/
def P15435044976135706002.Spec : Prop :=
  ∀ n, P15435044976135706002.a n = (A122112 n : ℚ)

end A122112

/-! ## A122112.P862036198543724654

`A026597(n)*A033999(n)`
-/

namespace A122112.P862036198543724654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n * A033999 n

end

end A122112.P862036198543724654

namespace A122112

/-- `A026597(n)*A033999(n)` -/
def P862036198543724654.Spec : Prop :=
  ∀ n, P862036198543724654.a n = A122112 n

end A122112

/-! ## A122112.P4467133285019666994

`A026597(n)*A056594(2*n)`
-/

namespace A122112.P4467133285019666994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n * A056594 (2 * n)

end

end A122112.P4467133285019666994

namespace A122112

/-- `A026597(n)*A056594(2*n)` -/
def P4467133285019666994.Spec : Prop :=
  ∀ n, P4467133285019666994.a n = A122112 n

end A122112

/-! ## A122112.P10122886594072144633

`A026597(n)*A057079(3*n)`
-/

namespace A122112.P10122886594072144633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n * A057079 (3 * n)

end

end A122112.P10122886594072144633

namespace A122112

/-- `A026597(n)*A057079(3*n)` -/
def P10122886594072144633.Spec : Prop :=
  ∀ n, P10122886594072144633.a n = A122112 n

end A122112

/-! ## A122112.P8634293098755650504

`A026597(n)*A094267(n)/abs(A094267(n))`
-/

namespace A122112.P8634293098755650504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A026597 n * A094267 n : ℚ) / (|A094267 n| : ℚ)

end

end A122112.P8634293098755650504

namespace A122112

/-- `A026597(n)*A094267(n)/abs(A094267(n))` -/
def P8634293098755650504.Spec : Prop :=
  ∀ n, P8634293098755650504.a n = (A122112 n : ℚ)

end A122112

/-! ## A122112.P11174398110655895200

`A026597(n)*A094267(n²)`
-/

namespace A122112.P11174398110655895200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026597 n * A094267 (n ^ 2)

end

end A122112.P11174398110655895200

namespace A122112

/-- `A026597(n)*A094267(n²)` -/
def P11174398110655895200.Spec : Prop :=
  ∀ n, P11174398110655895200.a n = A122112 n

end A122112

/-!
# A122114: Primes of the form 2n^2 + 26n + 1.

The programs for A122114, the canonical program `A122114.P13937115920210068800` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122114 has offset 1).

The definition of A122114 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 336 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122114.P13937115920210068800

`p?[∑[4*n]-83]`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122114

/-- `p?[∑[4*n]-83]` -/
def P13937115920210068800.Spec : Prop :=
  ∀ n, P13937115920210068800.a n = A122114 (n + 1)

theorem P13937115920210068800.correct : P13937115920210068800.Spec := by
  intro n
  simp only [A122114, Nat.add_sub_cancel]

end A122114

/-! ## A122114.P13260144129205770556

`p?[or(1, n)+a(n-1)+12]+A052928(n)%2` with `a(0)=1`
-/

namespace A122114.P13260144129205770556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lor 1 n + (f1 (n - 1) + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) + Int.tmod (A052928 n) 2

end

end A122114.P13260144129205770556

namespace A122114

/-- `p?[or(1, n)+a(n-1)+12]+A052928(n)%2` -/
def P13260144129205770556.Spec : Prop :=
  ∀ n, P13260144129205770556.a n = A122114 (n + 1)

end A122114

/-! ## A122114.P10341193077437216252

`record[A006530((n+14)*2*(n+1)+1)]`
-/

namespace A122114.P10341193077437216252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 14) * (2 * (n + 1)) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122114.P10341193077437216252

namespace A122114

/-- `record[A006530((n+14)*2*(n+1)+1)]` -/
def P10341193077437216252.Spec : Prop :=
  ∀ n, P10341193077437216252.a n = A122114 (n + 1)

end A122114

/-! ## A122114.P12685662810788134653

`record[A051541(∑[n+7])]`
-/

namespace A122114.P12685662810788134653
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051541 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122114.P12685662810788134653

namespace A122114

/-- `record[A051541(∑[n+7])]` -/
def P12685662810788134653.Spec : Prop :=
  ∀ n, P12685662810788134653.a n = A122114 (n + 1)

end A122114

/-! ## A122114.P369801149648340749

`A000027(p?[A020735(n*(n+15)+13)])`
-/

namespace A122114.P369801149648340749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020735 (n * (n + 15) + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122114.P369801149648340749

namespace A122114

/-- `A000027(p?[A020735(n*(n+15)+13)])` -/
def P369801149648340749.Spec : Prop :=
  ∀ n, P369801149648340749.a n = A122114 (n + 1)

end A122114

/-!
# A122115: a(n) = a(n-1) + a(n-3) + a(n-5).

The programs for A122115, the canonical program `A122115.P12905132043442382447` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122115 has offset 1).

The definition of A122115 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-3)+a(n-5)` (program `A122115.P12905132043442382447`, by `A122115.P12905132043442382447.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122115.P12905132043442382447

`a(n-1)+a(n-3)+a(n-5)` with `a(0)=-3, a(1)=-1, a(2)=4, a(3)=8, a(4)=15`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122115

/-- `a(n-1)+a(n-3)+a(n-5)` -/
def P12905132043442382447.Spec : Prop :=
  ∀ n, P12905132043442382447.a n = A122115 (n + 1)

theorem P12905132043442382447.correct : P12905132043442382447.Spec := by
  intro n
  simp only [A122115, Nat.add_sub_cancel]

end A122115

/-!
# A122117: a(n) = 3*a(n-1) + 4*a(n-2), with a(0)=1, a(1)=2.

The programs for A122117, the canonical program `A122117.P5017877379361550612` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122117 has offset 0).

The definition of A122117 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+4*a(n-2)` (program `A122117.P5017877379361550612`, by `A122117.P5017877379361550612.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122117.P5017877379361550612

`3*a(n-1)+4*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122117

/-- `3*a(n-1)+4*a(n-2)` -/
def P5017877379361550612.Spec : Prop :=
  ∀ n, (P5017877379361550612.a n : ℤ) = A122117 n

theorem P5017877379361550612.correct : P5017877379361550612.Spec := by
  intro n
  simp only [A122117]

end A122117

/-! ## A122117.P17713326252635444887

`A100088(2*n)`
-/

namespace A122117.P17713326252635444887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100088 (2 * n)

end

end A122117.P17713326252635444887

namespace A122117

/-- `A100088(2*n)` -/
def P17713326252635444887.Spec : Prop :=
  ∀ n, P17713326252635444887.a n = A122117 n

end A122117

/-! ## A122117.P4942527691615575810

`(3*4^n+2*(-1)^n)/5`
-/

namespace A122117.P4942527691615575810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((3 * 4 ^ n : ℤ) + 2 * (-1) ^ n : ℚ) / 5

end

end A122117.P4942527691615575810

namespace A122117

/-- `(3*4^n+2*(-1)^n)/5` -/
def P4942527691615575810.Spec : Prop :=
  ∀ n, P4942527691615575810.a n = (A122117 n : ℚ)

theorem P4942527691615575810.correct : P4942527691615575810.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A122117, Nat.add_sub_cancel, A122117.P4942527691615575810.a, A122117.P5017877379361550612.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A122117, Nat.add_sub_cancel, A122117.P4942527691615575810.a, A122117.P5017877379361550612.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A122117

/-! ## A122117.P14460459589124045104

`ogf((-1+x)/(-1+3x+4x^2))`
-/

namespace A122117.P14460459589124045104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -3, -4] n

end

end A122117.P14460459589124045104

namespace A122117

/-- `ogf((-1+x)/(-1+3x+4x^2))` -/
def P14460459589124045104.Spec : Prop :=
  ∀ n, P14460459589124045104.a n = A122117 n

end A122117

/-! ## A122117.P10497987438700103131

`Δ[4^(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A122117.P10497987438700103131
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122117.P10497987438700103131

namespace A122117

/-- `Δ[4^(n-1)-a(n-1)]` -/
def P10497987438700103131.Spec : Prop :=
  ∀ n, P10497987438700103131.a n = (A122117 n : ℚ)

end A122117

/-! ## A122117.P8463479845210455110

`3*4^(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A122117.P8463479845210455110
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  3 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1)

end

end A122117.P8463479845210455110

namespace A122117

/-- `3*4^(n-1)-a(n-1)` -/
def P8463479845210455110.Spec : Prop :=
  ∀ n, P8463479845210455110.a n = (A122117 n : ℚ)

end A122117

/-! ## A122117.P13227224111626783008

`4*(a(n-1)-n%2)+2` with `a(0)=1`
-/

namespace A122117.P13227224111626783008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * (a (n - 1) - ((n % 2 : ℕ) : ℤ)) + 2

end

end A122117.P13227224111626783008

namespace A122117

/-- `4*(a(n-1)-n%2)+2` -/
def P13227224111626783008.Spec : Prop :=
  ∀ n, P13227224111626783008.a n = A122117 n

end A122117

/-! ## A122117.P17211024917832650049

`4*a(n-1)-(a(n-1)-4*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A122117.P17211024917832650049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  4 * a (n - 1) - (a (n - 1) - 4 * a (n - 2))

end

end A122117.P17211024917832650049

namespace A122117

/-- `4*a(n-1)-(a(n-1)-4*a(n-2))` -/
def P17211024917832650049.Spec : Prop :=
  ∀ n, P17211024917832650049.a n = A122117 n

end A122117

/-! ## A122117.P13926792979970490614

`Δ[A015521(n)]`
-/

namespace A122117.P13926792979970490614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122117.P13926792979970490614

namespace A122117

/-- `Δ[A015521(n)]` -/
def P13926792979970490614.Spec : Prop :=
  ∀ n, P13926792979970490614.a n = A122117 n

end A122117

/-! ## A122117.P12799631612861296409

`A016029(Δ[n²])`
-/

namespace A122117.P12799631612861296409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016029 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A122117.P12799631612861296409

namespace A122117

/-- `A016029(Δ[n²])` -/
def P12799631612861296409.Spec : Prop :=
  ∀ n, P12799631612861296409.a n = A122117 n

end A122117

/-! ## A122117.P9733240394987999329

`abs(A078014(4*n))`
-/

namespace A122117.P9733240394987999329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A078014 (4 * n)|

end

end A122117.P9733240394987999329

namespace A122117

/-- `abs(A078014(4*n))` -/
def P9733240394987999329.Spec : Prop :=
  ∀ n, P9733240394987999329.a n = A122117 n

end A122117

/-! ## A122117.P9917870884595518730

`Δ[A118406(2*n)]`
-/

namespace A122117.P9917870884595518730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118406 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122117.P9917870884595518730

namespace A122117

/-- `Δ[A118406(2*n)]` -/
def P9917870884595518730.Spec : Prop :=
  ∀ n, P9917870884595518730.a n = A122117 n

end A122117

/-! ## A122117.P15151338871453969068

`Δ[A256494(Δ[n²])]`
-/

namespace A122117.P15151338871453969068
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256494 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122117.P15151338871453969068

namespace A122117

/-- `Δ[A256494(Δ[n²])]` -/
def P15151338871453969068.Spec : Prop :=
  ∀ n, P15151338871453969068.a n = A122117 n

end A122117

/-! ## A122117.P14504205977481955461

`record[Δ[A274845(2*n+1)]]`
-/

namespace A122117.P14504205977481955461
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274845 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122117.P14504205977481955461

namespace A122117

/-- `record[Δ[A274845(2*n+1)]]` -/
def P14504205977481955461.Spec : Prop :=
  ∀ n, P14504205977481955461.a n = A122117 n

end A122117

/-! ## A122117.P1685713924018223553

`A015521(n)+A102900(n)`
-/

namespace A122117.P1685713924018223553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 n + A102900 n

end

end A122117.P1685713924018223553

namespace A122117

/-- `A015521(n)+A102900(n)` -/
def P1685713924018223553.Spec : Prop :=
  ∀ n, P1685713924018223553.a n = A122117 n

end A122117

/-! ## A122117.P15910740242926193858

`A201455(n)-A102900(n)`
-/

namespace A122117.P15910740242926193858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201455 n - A102900 n

end

end A122117.P15910740242926193858

namespace A122117

/-- `A201455(n)-A102900(n)` -/
def P15910740242926193858.Spec : Prop :=
  ∀ n, P15910740242926193858.a n = A122117 n

end A122117

/-! ## A122117.P7239393281772241904

`A267036(n)-A037481(n)`
-/

namespace A122117.P7239393281772241904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267036 n - A037481 n

end

end A122117.P7239393281772241904

namespace A122117

/-- `A267036(n)-A037481(n)` -/
def P7239393281772241904.Spec : Prop :=
  ∀ n, P7239393281772241904.a n = A122117 n

end A122117

/-! ## A122117.P16277092151280170237

`A330795(n)-A062157(n)`
-/

namespace A122117.P16277092151280170237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330795 n - A062157 n

end

end A122117.P16277092151280170237

namespace A122117

/-- `A330795(n)-A062157(n)` -/
def P16277092151280170237.Spec : Prop :=
  ∀ n, P16277092151280170237.a n = A122117 n

end A122117

/-! ## A122117.P947043847150310983

`A015521(n+1)-A015521(n)`
-/

namespace A122117.P947043847150310983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 (n + 1) - A015521 n

end

end A122117.P947043847150310983

namespace A122117

/-- `A015521(n+1)-A015521(n)` -/
def P947043847150310983.Spec : Prop :=
  ∀ n, P947043847150310983.a n = A122117 n

end A122117

/-! ## A122117.P16389863472055874896

`A015521(n)+A007909(2*n)`
-/

namespace A122117.P16389863472055874896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015521 n + A007909 (2 * n)

end

end A122117.P16389863472055874896

namespace A122117

/-- `A015521(n)+A007909(2*n)` -/
def P16389863472055874896.Spec : Prop :=
  ∀ n, P16389863472055874896.a n = A122117 n

end A122117

/-!
# A122118: Least prime factor of 2^n + 5^n.

The programs for A122118, there is no canonical definition to state claims against.
-/

/-! ## A122118.P5946042539393989446

`A074600(n^(3-n)²)`
-/

namespace A122118.P5946042539393989446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074600 (SequenceMachineLib.roundAway ((n : ℚ) ^ ((3 - (n : ℤ)) ^ 2 : ℤ))).toNat

end

end A122118.P5946042539393989446

/-!
# A122119: Least prime factor of 2^(2^n) + 5^(2^n).

The programs for A122119, there is no canonical definition to state claims against.
-/

/-! ## A122119.P15143852475057684119

`A122118(2^n)`
-/

namespace A122119.P15143852475057684119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122118 (2 ^ n)

end

end A122119.P15143852475057684119

/-! ## A122119.P9039555254736815373

`or(1, A122118(A000079(n)))`
-/

namespace A122119.P9039555254736815373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A122118 (A000079 n).toNat)

end

end A122119.P9039555254736815373

/-! ## A122119.P13610485030702075581

`or(1, A122118(record[A300622(n)]))`
-/

namespace A122119.P13610485030702075581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A122118 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat)

end

end A122119.P13610485030702075581

/-! ## A122119.P2250561246355065064

`or(1, A122118(A011782(n+1)))`
-/

namespace A122119.P2250561246355065064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A122118 (A011782 (n + 1)).toNat)

end

end A122119.P2250561246355065064

/-! ## A122119.P8994871724531238748

`or(1, A122118(A300622(2*n)))`
-/

namespace A122119.P8994871724531238748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A122118 (A300622 (2 * n)).toNat)

end

end A122119.P8994871724531238748

/-!
# A122120: a(n) = 4*a(n-1) + 9*a(n-2), for n>1, with a(0)=1, a(1)=3.

The programs for A122120, the canonical program `A122120.P4463024091144950453` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122120 has offset 0).

The definition of A122120 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)+9*a(n-2)` (program `A122120.P4463024091144950453`, by `A122120.P4463024091144950453.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122120.P4463024091144950453

`4*a(n-1)+9*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122120

/-- `4*a(n-1)+9*a(n-2)` -/
def P4463024091144950453.Spec : Prop :=
  ∀ n, (P4463024091144950453.a n : ℤ) = A122120 n

theorem P4463024091144950453.correct : P4463024091144950453.Spec := by
  intro n
  simp only [A122120]

end A122120

/-! ## A122120.P14445491331544232455

`ogf((-1+x)/(-1+4x+9x^2))`
-/

namespace A122120.P14445491331544232455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, -9] n

end

end A122120.P14445491331544232455

namespace A122120

/-- `ogf((-1+x)/(-1+4x+9x^2))` -/
def P14445491331544232455.Spec : Prop :=
  ∀ n, P14445491331544232455.a n = A122120 n

end A122120

/-! ## A122120.P7290310027077341409

`14*a(n-1)-a(n-2)-10*(a(n-1)-a(n-2))` with `a(0)=1, a(1)=3`
-/

namespace A122120.P7290310027077341409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  14 * a (n - 1) - a (n - 2) - 10 * (a (n - 1) - a (n - 2))

end

end A122120.P7290310027077341409

namespace A122120

/-- `14*a(n-1)-a(n-2)-10*(a(n-1)-a(n-2))` -/
def P7290310027077341409.Spec : Prop :=
  ∀ n, P7290310027077341409.a n = A122120 n

end A122120

/-! ## A122120.P2077751673670661983

`Δ[A015533(n)]`
-/

namespace A122120.P2077751673670661983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122120.P2077751673670661983

namespace A122120

/-- `Δ[A015533(n)]` -/
def P2077751673670661983.Spec : Prop :=
  ∀ n, P2077751673670661983.a n = A122120 n

end A122120

/-! ## A122120.P14630915546623653833

`A015533(n+1)-A015533(n)`
-/

namespace A122120.P14630915546623653833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015533 (n + 1) - A015533 n

end

end A122120.P14630915546623653833

namespace A122120

/-- `A015533(n+1)-A015533(n)` -/
def P14630915546623653833.Spec : Prop :=
  ∀ n, P14630915546623653833.a n = A122120 n

end A122120

/-! ## A122120.P5378071112258793192

`record[A015533(∑[(-1)^(n%3)])]-A015533(n)`
-/

namespace A122120.P5378071112258793192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015533 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A015533 n

end

end A122120.P5378071112258793192

namespace A122120

/-- `record[A015533(∑[(-1)^(n%3)])]-A015533(n)` -/
def P5378071112258793192.Spec : Prop :=
  ∀ n, P5378071112258793192.a n = A122120 n

end A122120

/-!
# A122121: Number of primes <= 10^(n/2).

The programs for A122121, there is no canonical definition to state claims against.
-/

/-! ## A122121.P1332940245145813402

`A210518(2*n)`
-/

namespace A122121.P1332940245145813402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210518 (2 * n)

end

end A122121.P1332940245145813402

/-! ## A122121.P15773638303386361222

`record[A210518(and(n, n+1))]`
-/

namespace A122121.P15773638303386361222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210518 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122121.P15773638303386361222

/-! ## A122121.P8812548990841275682

`record[A210518(n)/(-1)^n]`
-/

namespace A122121.P8812548990841275682
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A210518 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122121.P8812548990841275682

/-! ## A122121.P2858438362280618736

`record[A210518(A014681(n))]`
-/

namespace A122121.P2858438362280618736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210518 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122121.P2858438362280618736

/-! ## A122121.P6705681490934366839

`record[A210518(A220080(n))]`
-/

namespace A122121.P6705681490934366839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210518 (A220080 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122121.P6705681490934366839

/-!
# A122122: a(0) = 1; for n>0, a(n) = 2*(n+2)*4^(n-2)-(n/4)*((3-4*n)/(1-2*n))*binomial(2*n,n).

The programs for A122122, there is no canonical definition to state claims against.
-/

/-! ## A122122.P8024729335051971286

`A066508(A084869(n))`
-/

namespace A122122.P8024729335051971286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066508 (A084869 n).toNat

end

end A122122.P8024729335051971286

/-! ## A122122.P15456554813453726451

`A000006(A195242(n))`
-/

namespace A122122.P15456554813453726451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000006 (A195242 n).toNat

end

end A122122.P15456554813453726451

/-!
# A122123: Product of the first n 5-almost primes (A014614).

The programs for A122123, there is no canonical definition to state claims against.
-/

/-! ## A122123.P1559529491922967268

`∏[A014614(n+1)]`
-/

namespace A122123.P1559529491922967268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122123.P1559529491922967268

/-! ## A122123.P7164181777608724525

`∏[eq[5, A001222(n+1)]+1]`
-/

namespace A122123.P7164181777608724525
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122123.P7164181777608724525

/-! ## A122123.P5151317948323119824

`∏[eq[5, A001222(A028310(n))]]`
-/

namespace A122123.P5151317948323119824
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A028310 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122123.P5151317948323119824

/-! ## A122123.P6287299751360558879

`∏[eq[6, A001222(A004277(n))]]`
-/

namespace A122123.P6287299751360558879
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A004277 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122123.P6287299751360558879

/-! ## A122123.P14348217757285538552

`∏[eq[6, A001222(A008486(n))]]`
-/

namespace A122123.P14348217757285538552
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008486 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122123.P14348217757285538552

/-!
# A122124: Numbers n such that 25 divides Sum[ Prime[k]^n, {k,1,n}].

The programs for A122124, there is no canonical definition to state claims against.
-/

/-! ## A122124.P13313114734460192673

`∑[4-gcd(3, xor(1, n))]+n`
-/

namespace A122124.P13313114734460192673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - (Nat.gcd 3 (Nat.xor 1 n) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A122124.P13313114734460192673

/-! ## A122124.P23355810313556936

`∪[record[xor(3, n)], 10*n+5]`
-/

namespace A122124.P23355810313556936
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f3 j = x) n

end

end A122124.P23355810313556936

/-! ## A122124.P1548645397806421468

`∪[Δ[5*n²], record[xor(3, n)]]`
-/

namespace A122124.P1548645397806421468
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => ∀ l < j, f4 l < f4 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

end

end A122124.P1548645397806421468

/-! ## A122124.P2160539227623594316

`lt[1/gcd(5, n), val(n+1, 2)]`
-/

namespace A122124.P2160539227623594316
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (Nat.gcd 5 n : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A122124.P2160539227623594316

/-! ## A122124.P18365473103498350759

`lt[(n^4)%5, val(n+1, 2)]`
-/

namespace A122124.P18365473103498350759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4 % 5

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122124.P18365473103498350759

/-! ## A122124.P2382897863613857787

`∪[4*n+3, 10*n+5]`
-/

namespace A122124.P2382897863613857787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n + 5

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∨ ∃ j, f2 j = x) n

end

end A122124.P2382897863613857787

/-! ## A122124.P7909178111951284810

`lt[n%5+2, xor(n, n+1)]`
-/

namespace A122124.P7909178111951284810
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 5 + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122124.P7909178111951284810

/-! ## A122124.P7813848224087510345

`record[or(n, 4-gcd(10, n+1)²)]`
-/

namespace A122124.P7813848224087510345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (4 - (Nat.gcd 10 (n + 1) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122124.P7813848224087510345

/-! ## A122124.P15246047664521613216

`∑[and(3, Δ[lcm(3, n+1)])]+n`
-/

namespace A122124.P15246047664521613216
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A122124.P15246047664521613216

/-! ## A122124.P7900252892592226536

`∑[2%Δ[A020639(n+1)]+2]+1`
-/

namespace A122124.P7900252892592226536
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (f2 (n + 1) - f2 n) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A122124.P7900252892592226536

/-!
# A122127: Indices n such that A122102[n] = Sum[ Prime[k]^4, {k,1,n}] is a prime.

The programs for A122127, there is no canonical definition to state claims against.
-/

/-! ## A122127.P10272319191759441589

`A000466(floor((n+1)/(log2(3)-1)))-A320797(2*(n+1))`
-/

namespace A122127.P10272319191759441589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000466 ⌊(n + 1 : ℝ) / (Real.logb 2 (3 : ℝ) - 1)⌋.toNat - A320797 (2 * (n + 1))

end

end A122127.P10272319191759441589

/-!
# A122128: Primes of form Sum[ Prime[k]^4, {k,1,n} ] or primes in A122102[n].

The programs for A122128, there is no canonical definition to state claims against.
-/

/-! ## A122128.P9470873132181934886

`A122102(A122127(n+1))`
-/

namespace A122128.P9470873132181934886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122102 (A122127 (n + 1)).toNat

end

end A122128.P9470873132181934886

/-!
# A122129: Expansion of 1 + Sum_{k>0} x^k^2/((1-x)(1-x^2)...(1-x^(2k))).

The programs for A122129, there is no canonical definition to state claims against.
-/

/-! ## A122129.P2028668635991571563

`A227134(n)+A227135(n)-A122135(n)`
-/

namespace A122129.P2028668635991571563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227134 n + (A227135 n - A122135 n)

end

end A122129.P2028668635991571563

/-! ## A122129.P10418734261192109514

`A137676(4*n)`
-/

namespace A122129.P10418734261192109514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (4 * n)

end

end A122129.P10418734261192109514

/-! ## A122129.P5586030129973879838

`lcm((-1)^n, A137676(A008574(n)))`
-/

namespace A122129.P5586030129973879838
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A137676 (A008574 n).toNat)

end

end A122129.P5586030129973879838

/-! ## A122129.P16946550588815956281

`A137676(A008574(n))/A106400(n)²`
-/

namespace A122129.P16946550588815956281
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137676 (A008574 n).toNat : ℚ) / (A106400 n ^ 2 : ℚ)

end

end A122129.P16946550588815956281

/-! ## A122129.P9388672335503076669

`and(A052551(n), A137676(A016813(n)-1))`
-/

namespace A122129.P9388672335503076669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 n) (A137676 (A016813 n - 1).toNat)

end

end A122129.P9388672335503076669

/-! ## A122129.P8630673095097161235

`A137676(A005843(A005843(n)))%A204408(n+1)`
-/

namespace A122129.P8630673095097161235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137676 (A005843 (A005843 n).toNat).toNat) (A204408 (n + 1))

end

end A122129.P8630673095097161235

/-! ## A122129.P15968344729056800783

`A182372(n)-A122135(n)`
-/

namespace A122129.P15968344729056800783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182372 n - A122135 n

end

end A122129.P15968344729056800783

/-!
# A122130: Expansion of f(-x^4, -x^16) / psi(-x) in powers of x where psi() is a Ramanujan theta function and f(, ) is Ramanujan's general theta function.

The programs for A122130, there is no canonical definition to state claims against.
-/

/-! ## A122130.P12935776636549538965

`A137677(4*n+3)`
-/

namespace A122130.P12935776636549538965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137677 (4 * n + 3)

end

end A122130.P12935776636549538965

/-! ## A122130.P461601321447821882

`or(char[1], A137677(A016825(n)+1))`
-/

namespace A122130.P461601321447821882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A137677 (A016825 n + 1).toNat)

end

end A122130.P461601321447821882

/-! ## A122130.P7391302069452969291

`or(A000007(n), A137677(A004767(n)))`
-/

namespace A122130.P7391302069452969291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A137677 (A004767 n).toNat)

end

end A122130.P7391302069452969291

/-! ## A122130.P389472901166871743

`A137677(A016825(n)+1)/A033999(n)²`
-/

namespace A122130.P389472901166871743
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137677 (A016825 n + 1).toNat : ℚ) / (A033999 n ^ 2 : ℚ)

end

end A122130.P389472901166871743

/-! ## A122130.P17568109056224828326

`A137677(A016825(n)+1)/A007318(or(3, n)-n)`
-/

namespace A122130.P17568109056224828326
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137677 (A016825 n + 1).toNat : ℚ) / (A007318 (Nat.lor 3 n - n) : ℚ)

end

end A122130.P17568109056224828326

/-! ## A122130.P11795024428021381638

`A137677(A016825(n)+1)%A000041(n+2)²`
-/

namespace A122130.P11795024428021381638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137677 (A016825 n + 1).toNat) (A000041 (n + 2) ^ 2)

end

end A122130.P11795024428021381638

/-! ## A122130.P14126835976191155520

`A137677(A004767(n))+A000122(A000040(n+2))`
-/

namespace A122130.P14126835976191155520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137677 (A004767 n).toNat + A000122 (A000040 (n + 2)).toNat

end

end A122130.P14126835976191155520

/-! ## A122130.P13324259655300396560

`A137677(A016825(n)+1)/A193592(A000217(n+6))`
-/

namespace A122130.P13324259655300396560
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137677 (A016825 n + 1).toNat : ℚ) / (A193592 (A000217 (n + 6)).toNat : ℚ)

end

end A122130.P13324259655300396560

/-! ## A122130.P3455373391421703082

`A137677(A016825(n)+1)%A078371(n²)`
-/

namespace A122130.P3455373391421703082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137677 (A016825 n + 1).toNat) (A078371 (n ^ 2))

end

end A122130.P3455373391421703082

/-! ## A122130.P3248076076807984261

`∑{d}[A137677(A016825(n)+1), A000010(#)]`
-/

namespace A122130.P3248076076807984261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137677 (A016825 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A122130.P3248076076807984261

/-!
# A122132: Squarefree numbers multiplied by binary powers.

The programs for A122132, the canonical program `A122132.P3265730221735149108` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122132 has offset 1).

The definition of A122132 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122132.P3265730221735149108

`floor(A192863(n+1)/2)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A122132

/-- `floor(A192863(n+1)/2)` -/
def P3265730221735149108.Spec : Prop :=
  ∀ n, P3265730221735149108.a n = A122132 (n + 1)

theorem P3265730221735149108.correct : P3265730221735149108.Spec := by
  intro n
  simp only [A122132, Nat.add_sub_cancel]

end A122132

/-! ## A122132.P7222903757418225619

`ceil(A192861(n+1)/2)`
-/

namespace A122132.P7222903757418225619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A192861 (n + 1) : ℚ) / 2⌉

end

end A122132.P7222903757418225619

namespace A122132

/-- `ceil(A192861(n+1)/2)` -/
def P7222903757418225619.Spec : Prop :=
  ∀ n, P7222903757418225619.a n = A122132 (n + 1)

end A122132

/-! ## A122132.P4291353886780073813

`eq[1, A298735(n+1)]+1`
-/

namespace A122132.P4291353886780073813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298735 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122132.P4291353886780073813

namespace A122132

/-- `eq[1, A298735(n+1)]+1` -/
def P4291353886780073813.Spec : Prop :=
  ∀ n, (P4291353886780073813.a n : ℤ) = A122132 (n + 1)

end A122132

/-! ## A122132.P16801901417386326840

`eq[1, A318449(n+1)]+1`
-/

namespace A122132.P16801901417386326840
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318449 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122132.P16801901417386326840

namespace A122132

/-- `eq[1, A318449(n+1)]+1` -/
def P16801901417386326840.Spec : Prop :=
  ∀ n, (P16801901417386326840.a n : ℤ) = A122132 (n + 1)

end A122132

/-! ## A122132.P885322786715732730

`eq[1, A326297(n+1)]+1`
-/

namespace A122132.P885322786715732730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326297 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122132.P885322786715732730

namespace A122132

/-- `eq[1, A326297(n+1)]+1` -/
def P885322786715732730.Spec : Prop :=
  ∀ n, (P885322786715732730.a n : ℤ) = A122132 (n + 1)

end A122132

/-! ## A122132.P8556014025395909620

`eq[1, A336649(n+1)]+1`
-/

namespace A122132.P8556014025395909620
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336649 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122132.P8556014025395909620

namespace A122132

/-- `eq[1, A336649(n+1)]+1` -/
def P8556014025395909620.Spec : Prop :=
  ∀ n, (P8556014025395909620.a n : ℤ) = A122132 (n + 1)

end A122132

/-! ## A122132.P13599867517115596529

`eq[1, A336651(n+1)]+1`
-/

namespace A122132.P13599867517115596529
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336651 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122132.P13599867517115596529

namespace A122132

/-- `eq[1, A336651(n+1)]+1` -/
def P13599867517115596529.Spec : Prop :=
  ∀ n, (P13599867517115596529.a n : ℤ) = A122132 (n + 1)

end A122132

/-! ## A122132.P11780219807139705237

`eq[1, A353627(n+1)]+1`
-/

namespace A122132.P11780219807139705237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353627 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122132.P11780219807139705237

namespace A122132

/-- `eq[1, A353627(n+1)]+1` -/
def P11780219807139705237.Spec : Prop :=
  ∀ n, (P11780219807139705237.a n : ℤ) = A122132 (n + 1)

end A122132

/-! ## A122132.P6663247967952161027

`lt[A353626(n+1), 1]+1`
-/

namespace A122132.P6663247967952161027
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353626 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A122132.P6663247967952161027

namespace A122132

/-- `lt[A353626(n+1), 1]+1` -/
def P6663247967952161027.Spec : Prop :=
  ∀ n, (P6663247967952161027.a n : ℤ) = A122132 (n + 1)

end A122132

/-! ## A122132.P14875246726570252872

`eq[1, A349340(n+1)²]+1`
-/

namespace A122132.P14875246726570252872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349340 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122132.P14875246726570252872

namespace A122132

/-- `eq[1, A349340(n+1)²]+1` -/
def P14875246726570252872.Spec : Prop :=
  ∀ n, (P14875246726570252872.a n : ℤ) = A122132 (n + 1)

end A122132

/-! ## A122132.P6489566700997983106

`eq[1, A355689(n+1)²]+1`
-/

namespace A122132.P6489566700997983106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355689 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122132.P6489566700997983106

namespace A122132

/-- `eq[1, A355689(n+1)²]+1` -/
def P6489566700997983106.Spec : Prop :=
  ∀ n, (P6489566700997983106.a n : ℤ) = A122132 (n + 1)

end A122132

/-! ## A122132.P14660418445536878576

`eq[2, A078461(2*(n+1))]+1`
-/

namespace A122132.P14660418445536878576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (2 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122132.P14660418445536878576

namespace A122132

/-- `eq[2, A078461(2*(n+1))]+1` -/
def P14660418445536878576.Spec : Prop :=
  ∀ n, (P14660418445536878576.a n : ℤ) = A122132 (n + 1)

end A122132

/-! ## A122132.P12466028738713508497

`(eq[2, A078461(n+1)]+1)/2`
-/

namespace A122132.P12466028738713508497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078461 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1 : ℚ) / 2

end

end A122132.P12466028738713508497

namespace A122132

/-- `(eq[2, A078461(n+1)]+1)/2` -/
def P12466028738713508497.Spec : Prop :=
  ∀ n, P12466028738713508497.a n = (A122132 (n + 1) : ℚ)

end A122132

/-! ## A122132.P8070998623349011230

`lt[A040451(A336158(n+1)), 3]+1`
-/

namespace A122132.P8070998623349011230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040451 (A336158 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A122132.P8070998623349011230

namespace A122132

/-- `lt[A040451(A336158(n+1)), 3]+1` -/
def P8070998623349011230.Spec : Prop :=
  ∀ n, (P8070998623349011230.a n : ℤ) = A122132 (n + 1)

end A122132

/-! ## A122132.P9666480393021370021

`filter[A353511(n+1), A353627(#)]`
-/

namespace A122132.P9666480393021370021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A122132.P9666480393021370021

namespace A122132

/-- `filter[A353511(n+1), A353627(#)]` -/
def P9666480393021370021.Spec : Prop :=
  ∀ n, P9666480393021370021.a n = A122132 (n + 1)

end A122132

/-! ## A122132.P3061923612830099708

`filter[A375396(n+1), A353627(#)]`
-/

namespace A122132.P3061923612830099708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375396 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A122132.P3061923612830099708

namespace A122132

/-- `filter[A375396(n+1), A353627(#)]` -/
def P3061923612830099708.Spec : Prop :=
  ∀ n, P3061923612830099708.a n = A122132 (n + 1)

end A122132

/-! ## A122132.P15919699019517388877

`filter[A168183(n+1), A353627(#)]`
-/

namespace A122132.P15919699019517388877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168183 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A122132.P15919699019517388877

namespace A122132

/-- `filter[A168183(n+1), A353627(#)]` -/
def P15919699019517388877.Spec : Prop :=
  ∀ n, P15919699019517388877.a n = A122132 (n + 1)

end A122132

/-! ## A122132.P5048979015368450570

`filter[A242031(n+1), A353627(#)]`
-/

namespace A122132.P5048979015368450570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242031 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A122132.P5048979015368450570

namespace A122132

/-- `filter[A242031(n+1), A353627(#)]` -/
def P5048979015368450570.Spec : Prop :=
  ∀ n, P5048979015368450570.a n = A122132 (n + 1)

end A122132

/-! ## A122132.P11225382377669066686

`filter[A273058(n+1), A353627(#)]`
-/

namespace A122132.P11225382377669066686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273058 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A122132.P11225382377669066686

namespace A122132

/-- `filter[A273058(n+1), A353627(#)]` -/
def P11225382377669066686.Spec : Prop :=
  ∀ n, P11225382377669066686.a n = A122132 (n + 1)

end A122132

/-!
# A122134: Expansion of Sum_{k>=0} x^(k^2+k)/((1-x)(1-x^2)...(1-x^(2k))).

The programs for A122134, there is no canonical definition to state claims against.
-/

/-! ## A122134.P16028472161754477104

`A137677(4*n)`
-/

namespace A122134.P16028472161754477104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137677 (4 * n)

end

end A122134.P16028472161754477104

/-! ## A122134.P10445414738776921851

`A137677(A008574(n))+A000007(n)`
-/

namespace A122134.P10445414738776921851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137677 (A008574 n).toNat + A000007 n

end

end A122134.P10445414738776921851

/-! ## A122134.P7107410960621737842

`A137677(A008574(n))^A001221(A000961(n+1))`
-/

namespace A122134.P7107410960621737842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137677 (A008574 n).toNat : ℚ) ^ (A001221 (A000961 (n + 1)).toNat : ℤ)

end

end A122134.P7107410960621737842

/-! ## A122134.P13039036226938037692

`A137677(A008574(n))^A001222(A008578(n+1))`
-/

namespace A122134.P13039036226938037692
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137677 (A008574 n).toNat : ℚ) ^ (A001222 (A008578 (n + 1)).toNat : ℤ)

end

end A122134.P13039036226938037692

/-! ## A122134.P6736337801412172235

`A137677(A123108(A022144(n)))%A106542(n+1)`
-/

namespace A122134.P6736337801412172235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137677 (A123108 (A022144 n).toNat).toNat) (A106542 (n + 1))

end

end A122134.P6736337801412172235

/-! ## A122134.P3904320122142440175

`A137677(A005843(A005843(n)))%A246168(n)`
-/

namespace A122134.P3904320122142440175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137677 (A005843 (A005843 n).toNat).toNat) (A246168 n)

end

end A122134.P3904320122142440175

/-! ## A122134.P5618443676097880966

`A209229(n²+2)+A137677(A008574(n))`
-/

namespace A122134.P5618443676097880966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209229 (n ^ 2 + 2) + A137677 (A008574 n).toNat

end

end A122134.P5618443676097880966

/-! ## A122134.P16102344033696660899

`A137677(A008574(n))^A007706(A045344(n+1))`
-/

namespace A122134.P16102344033696660899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A137677 (A008574 n).toNat : ℚ) ^ (A007706 (A045344 (n + 1)).toNat : ℤ)

end

end A122134.P16102344033696660899

/-! ## A122134.P13378531135837618303

`A122135(n)-A351595(n)`
-/

namespace A122134.P13378531135837618303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122135 n - A351595 n

end

end A122134.P13378531135837618303

/-! ## A122134.P12421302428874505271

`A227134(n)+A351008(n)-A122129(n)`
-/

namespace A122134.P12421302428874505271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227134 n + (A351008 n - A122129 n)

end

end A122134.P12421302428874505271

/-!
# A122135: Expansion of f(x, -x^4) / phi(-x^2) in powers of x where f(, ) and phi() are Ramanujan theta functions.

The programs for A122135, there is no canonical definition to state claims against.
-/

/-! ## A122135.P17281177724004406982

`A137676(4*n+1)`
-/

namespace A122135.P17281177724004406982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (4 * n + 1)

end

end A122135.P17281177724004406982

/-! ## A122135.P17150827927972621439

`A137676(A016813(n))+A000038(n+1)`
-/

namespace A122135.P17150827927972621439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (A016813 n).toNat + A000038 (n + 1)

end

end A122135.P17150827927972621439

/-! ## A122135.P15739738702926399726

`A137676(A016813(n))+A003849(A001950(n+1))`
-/

namespace A122135.P15739738702926399726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137676 (A016813 n).toNat + A003849 (A001950 (n + 1)).toNat

end

end A122135.P15739738702926399726

/-! ## A122135.P10807268972215085376

`and(A052551(n+1), A137676(A016813(n)))`
-/

namespace A122135.P10807268972215085376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A052551 (n + 1)) (A137676 (A016813 n).toNat)

end

end A122135.P10807268972215085376

/-! ## A122135.P9481869514577082758

`A137676(A016813(n))%A022380(n)`
-/

namespace A122135.P9481869514577082758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A137676 (A016813 n).toNat) (A022380 n)

end

end A122135.P9481869514577082758

/-! ## A122135.P1003971010826670751

`A182372(n)-A122129(n)`
-/

namespace A122135.P1003971010826670751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182372 n - A122129 n

end

end A122135.P1003971010826670751

/-! ## A122135.P16903224965512235127

`A351595(n)+A122134(n)`
-/

namespace A122135.P16903224965512235127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351595 n + A122134 n

end

end A122135.P16903224965512235127

/-!
# A122136: Numerator of Sum[ Prime[k]^2, {k,1,n}] / Product[ Prime[k], {k,1,n}] = Numerator[ A024450[n] / A002110[n] ].

The programs for A122136, there is no canonical definition to state claims against.
-/

/-! ## A122136.P14025309357403246390

`A217434(A024450(n+1)-A000038(n))`
-/

namespace A122136.P14025309357403246390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (A024450 (n + 1) - A000038 n).toNat

end

end A122136.P14025309357403246390

/-! ## A122136.P16883267450833971

`A217434(∑[A001248(n+1)]-A000038(n))`
-/

namespace A122136.P16883267450833971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (∑ j ∈ Finset.range (n + 1), f1 j - A000038 n).toNat

end

end A122136.P16883267450833971

/-! ## A122136.P262147227578306092

`A217434(∑[A000040(n+1)²]-A000038(n))`
-/

namespace A122136.P262147227578306092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (∑ j ∈ Finset.range (n + 1), f1 j - A000038 n).toNat

end

end A122136.P262147227578306092

/-! ## A122136.P11741758877473727531

`A217434(∑[A273960(n+1)²]-A000038(n))`
-/

namespace A122136.P11741758877473727531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (∑ j ∈ Finset.range (n + 1), f1 j - A000038 n).toNat

end

end A122136.P11741758877473727531

/-! ## A122136.P16543986930010614904

`A217434(∑[A049001(n+1)+2]-A000038(n))`
-/

namespace A122136.P16543986930010614904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049001 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217434 (∑ j ∈ Finset.range (n + 1), f1 j - A000038 n).toNat

end

end A122136.P16543986930010614904

/-!
# A122138: Indices k such that A122136(k) is a prime.

The programs for A122138, there is no canonical definition to state claims against.
-/

/-! ## A122138.P12670203438871911993

`record[(n+1)%28-A065717(n)]`
-/

namespace A122138.P12670203438871911993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 28 : ℕ) : ℤ) - A065717 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122138.P12670203438871911993

/-! ## A122138.P5213890134670016022

`A007095(lt[A333755(3*n+2), A249167(n+1)])`
-/

namespace A122138.P5213890134670016022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122138.P5213890134670016022

/-! ## A122138.P15103273933754050138

`lt[A234046(A188649(n+1)), A008966(3*n+5)]`
-/

namespace A122138.P15103273933754050138
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234046 (A188649 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (3 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122138.P15103273933754050138

/-! ## A122138.P9019674713660848970

`A007095(lt[A333755(3*n+2), A062570(2*n+1)])`
-/

namespace A122138.P9019674713660848970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333755 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A122138.P9019674713660848970

/-!
# A122139: Primes from A122136 corresponding to the indices A122138.

The programs for A122139, there is no canonical definition to state claims against.
-/

/-! ## A122139.P15921286718717856698

`A122136(A122138(n+1))`
-/

namespace A122139.P15921286718717856698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122136 (A122138 (n + 1)).toNat

end

end A122139.P15921286718717856698

/-! ## A122139.P8439659186788524295

`p?[A122136(n+1)]`
-/

namespace A122139.P8439659186788524295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A122139.P8439659186788524295

/-! ## A122139.P6956709213088492573

`filter[A122136(n+1), A010051(#)]`
-/

namespace A122139.P6956709213088492573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A122139.P6956709213088492573

/-! ## A122139.P18179305863416756689

`filter[A122136(n+1), A069513(#)]`
-/

namespace A122139.P18179305863416756689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A069513 (f1 j).toNat = 1) n)

end

end A122139.P18179305863416756689

/-! ## A122139.P7867977221094450698

`filter[A122136(n+1), A358220(#)]`
-/

namespace A122139.P7867977221094450698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358220 (f1 j).toNat = 1) n)

end

end A122139.P7867977221094450698

/-!
# A122141: Array: T(d,n) = number of ways of writing n as a sum of d squares, read by ascending antidiagonals.

The programs for A122141, there is no canonical definition to state claims against.
-/

/-! ## A122141.P15294630426556551367

`A286815(∑[char[∑[n]]]+n)`
-/

namespace A122141.P15294630426556551367
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286815 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A122141.P15294630426556551367

/-! ## A122141.P4622666934088604978

`lcm(A033999(n), A286815(A007401(n+1)))`
-/

namespace A122141.P4622666934088604978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A286815 (A007401 (n + 1)).toNat)

end

end A122141.P4622666934088604978

/-! ## A122141.P8796944871503326437

`A319574(A099375(n)+1+n)`
-/

namespace A122141.P8796944871503326437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A099375 n + 1 + (n : ℤ)).toNat

end

end A122141.P8796944871503326437

/-! ## A122141.P630065501529518480

`A319574(A061579(n)+A003057(n+2))`
-/

namespace A122141.P630065501529518480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A061579 n + A003057 (n + 2)).toNat

end

end A122141.P630065501529518480

/-! ## A122141.P5330772377110440680

`A319574(A038722(n+1)+A002024(n+1))`
-/

namespace A122141.P5330772377110440680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319574 (A038722 (n + 1) + A002024 (n + 1)).toNat

end

end A122141.P5330772377110440680

/-!
# A122144: Numbers k such that q(k) = M(k) where q(n) is the largest prime divisor of k and M(k) is the largest prime power divisor of k.

The programs for A122144, there is no canonical definition to state claims against.
-/

/-! ## A122144.P16194486240032956100

`eq[2, sqrt(a(A088388(n)))]` with `a(0)=16`
-/

namespace A122144.P16194486240032956100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℝ := SequenceMachineLib.rec [16] fun n f2 =>
  Real.sqrt (f2 (A088388 n).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A122144.P16194486240032956100

/-! ## A122144.P8510186801484529607

`eq[1, A088388(n+1)]+1`
-/

namespace A122144.P8510186801484529607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122144.P8510186801484529607

/-! ## A122144.P2461885806459410081

`eq[2, A000045(a(A088388(n)))]` with `a(0)=4`
-/

namespace A122144.P2461885806459410081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  A000045 (f2 (A088388 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122144.P2461885806459410081

/-! ## A122144.P83599662109453871

`eq[4, A000203(a(A088388(n)))]` with `a(0)=2`
-/

namespace A122144.P83599662109453871
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A000203 (f2 (A088388 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122144.P83599662109453871

/-! ## A122144.P8758366105570638267

`eq[2, A000010(a(A088388(n)))]` with `a(0)=5`
-/

namespace A122144.P8758366105570638267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [5] fun n f2 =>
  A000010 (f2 (A088388 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122144.P8758366105570638267

/-! ## A122144.P16462267469064350476

`eq[8, A018252(a(A088388(n)))]` with `a(0)=2`
-/

namespace A122144.P16462267469064350476
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f2 =>
  A018252 (f2 (A088388 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122144.P16462267469064350476

/-! ## A122144.P1236143656322252684

`eq[1, A001222(A034699(n+1))]+1`
-/

namespace A122144.P1236143656322252684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034699 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122144.P1236143656322252684

/-! ## A122144.P5104604413813248911

`∪[A064052(n+1), A122146(n+1)]`
-/

namespace A122144.P5104604413813248911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064052 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122144.P5104604413813248911

/-! ## A122144.P115180195153574382

`∪[A139703(n+1), A144338(n+1)]`
-/

namespace A122144.P115180195153574382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139703 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122144.P115180195153574382

/-! ## A122144.P863174366137319952

`A020725(eq[1, A088388(n+1)])`
-/

namespace A122144.P863174366137319952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A122144.P863174366137319952

/-! ## A122144.P11258765528062125811

`eq[1, A088388(A028310(n))]`
-/

namespace A122144.P11258765528062125811
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122144.P11258765528062125811

/-!
# A122145: Numbers k such that q(k) < M(k) where q(k) is the largest prime divisor of k and M(k) is the largest prime power divisor of k.

The programs for A122145, there is no canonical definition to state claims against.
-/

/-! ## A122145.P12048576155446218168

`∪[A057109(n+1), A057111(n+1)]`
-/

namespace A122145.P12048576155446218168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057111 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122145.P12048576155446218168

/-! ## A122145.P4264481097846709920

`∪[A057109(n+1), A102749(n+1)]`
-/

namespace A122145.P4264481097846709920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057109 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122145.P4264481097846709920

/-! ## A122145.P12225529939484388557

`∪[A057111(n+1), A113645(n+1)]`
-/

namespace A122145.P12225529939484388557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057111 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113645 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122145.P12225529939484388557

/-! ## A122145.P8941865001151276144

`∪[A070003(n+1), A102749(n+1)]`
-/

namespace A122145.P8941865001151276144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070003 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102749 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A122145.P8941865001151276144

/-! ## A122145.P7795327905558702819

`eq[1, A345952(n+1)]+1`
-/

namespace A122145.P7795327905558702819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A122145.P7795327905558702819

/-! ## A122145.P11075439707135241448

`lt[1, A088388(n+1)]+1`
-/

namespace A122145.P11075439707135241448
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088388 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A122145.P11075439707135241448

/-! ## A122145.P342043099756349499

`eq[2, A000005(a(A088388(n)))]` with `a(0)=0, a(1)=4`
-/

namespace A122145.P342043099756349499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0, 4] fun n f2 =>
  A000005 (f2 (A088388 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122145.P342043099756349499

/-! ## A122145.P4424938318184779886

`eq[2, A088388(a(A088388(n)))+1]` with `a(0)=1, a(1)=4`
-/

namespace A122145.P4424938318184779886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f2 =>
  A088388 (f2 (A088388 n).toNat).toNat + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122145.P4424938318184779886

/-! ## A122145.P933156902139111521

`filter[A048098(n+1), A345952(#)]`
-/

namespace A122145.P933156902139111521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048098 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A122145.P933156902139111521

/-! ## A122145.P10079583803586040049

`filter[A387941(n+1), A345952(#)]`
-/

namespace A122145.P10079583803586040049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387941 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A122145.P10079583803586040049

/-! ## A122145.P14052986609645845562

`filter[A013929(n+1), A345952(#)]`
-/

namespace A122145.P14052986609645845562
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A122145.P14052986609645845562

/-! ## A122145.P4299792056010231693

`filter[A162966(n+1), A345952(#)]`
-/

namespace A122145.P4299792056010231693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A122145.P4299792056010231693

/-! ## A122145.P17372112959206402319

`record[A013929(n+1)*A087049(A117181(n+1))]`
-/

namespace A122145.P17372112959206402319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1) * A087049 (A117181 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122145.P17372112959206402319

/-! ## A122145.P9390641917669952885

`filter[A354360(n+1), A345952(#)]`
-/

namespace A122145.P9390641917669952885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354360 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A122145.P9390641917669952885

/-! ## A122145.P5807184932396718484

`filter[A389462(n+1), A345952(#)]`
-/

namespace A122145.P5807184932396718484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389462 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A122145.P5807184932396718484

/-! ## A122145.P9448973979812327021

`record[A002808(n+1)*A345952(A002808(n+1))]`
-/

namespace A122145.P9448973979812327021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) * A345952 (A002808 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122145.P9448973979812327021

/-! ## A122145.P7018621004093446252

`filter[A363597(n+1), A345952(#)]`
-/

namespace A122145.P7018621004093446252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363597 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A122145.P7018621004093446252

/-! ## A122145.P6008760536406875948

`filter[A366288(n+1), A345952(#)]`
-/

namespace A122145.P6008760536406875948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366288 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A122145.P6008760536406875948

/-! ## A122145.P8268230871427320121

`filter[A343012(n+1), A345952(#)]`
-/

namespace A122145.P8268230871427320121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A122145.P8268230871427320121

/-! ## A122145.P12391518033342694263

`filter[A289553(n+1), A345952(#)]`
-/

namespace A122145.P12391518033342694263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289553 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A345952 (f1 j).toNat = 1) n)

end

end A122145.P12391518033342694263

/-!
# A122146: Numbers k such that q(k) = M(k) and 4*q(k) <= k, where q(k) is the largest prime divisor of k and M(k) is the largest prime power divisor of k.

The programs for A122146, there is no canonical definition to state claims against.
-/

/-! ## A122146.P9315405103036881847

`∩[A122144(n+1), A271345(n+1)]`
-/

namespace A122146.P9315405103036881847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271345 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A122146.P9315405103036881847

/-!
# A122150: Numerator of Sum[ (-1)^(k+1) * 1/2^Prime[k], {k,1,n} ].

The programs for A122150, there is no canonical definition to state claims against.
-/

/-! ## A122150.P2422245043347520592

`A057359(A020989(∑[∑{e}[n, #]])+1)`
-/

namespace A122150.P2422245043347520592
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057359 (A020989 (∑ j ∈ Finset.range (n + 1), f1 j) + 1).toNat

end

end A122150.P2422245043347520592

/-! ## A122150.P3961476239613636795

`lcm(2, A065620(A121240(n+1)))/2`
-/

namespace A122150.P3961476239613636795
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A065620 (A121240 (n + 1)).toNat) : ℚ) / 2

end

end A122150.P3961476239613636795

/-!
# A122154: Inverse permutation to A076105.

The programs for A122154, there is no canonical definition to state claims against.
-/

/-! ## A122154.P18084912406113234418

`A122156(∏{e}[A186748(n), #]+n)`
-/

namespace A122154.P18084912406113234418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122156 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + n)

end

end A122154.P18084912406113234418

/-! ## A122154.P4636066350185958414

`A122156(n+1)%A046016(n+2)`
-/

namespace A122154.P4636066350185958414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122156 (n + 1)) (A046016 (n + 2))

end

end A122154.P4636066350185958414

/-! ## A122154.P15451204393426829333

`A122156(lcm(n+1, A299912(n+1)))`
-/

namespace A122154.P15451204393426829333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122156 (Int.lcm (n + 1 : ℤ) (A299912 (n + 1)))

end

end A122154.P15451204393426829333

/-! ## A122154.P8482033602023043548

`A122156(n+1)+A000007(A038348(n))`
-/

namespace A122154.P8482033602023043548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122156 (n + 1) + A000007 (A038348 n).toNat

end

end A122154.P8482033602023043548

/-! ## A122154.P17328445720114186022

`A318880(A127302(n))+A122156(n+1)`
-/

namespace A122154.P17328445720114186022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318880 (A127302 n).toNat + A122156 (n + 1)

end

end A122154.P17328445720114186022

/-!
# A122155: Simple involution of natural numbers: List each block of (2^k)-1 numbers (from (2^k)+1 to 2^(k+1) - 1) in reverse order and fix the powers of 2.

The programs for A122155, the canonical program `A122155.P17533266698539878574` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122155 has offset 0).

The definition of A122155 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122155.P10490130883110738780

`xor(A092323(or(1, n)), A153151(n))`
-/

namespace A122155.P10490130883110738780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A092323 (Nat.lor 1 n)) (A153151 n)

end

end A122155.P10490130883110738780

namespace A122155

/-- `xor(A092323(or(1, n)), A153151(n))` -/
def P10490130883110738780.Spec : Prop :=
  ∀ n, P10490130883110738780.a n = A122155 n

end A122155

/-! ## A122155.P17533266698539878574

`or(A035327(abs(1-n)), A053644(n))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122155

/-- `or(A035327(abs(1-n)), A053644(n))` -/
def P17533266698539878574.Spec : Prop :=
  ∀ n, P17533266698539878574.a n = A122155 n

theorem P17533266698539878574.correct : P17533266698539878574.Spec := by
  intro n
  simp only [A122155]

end A122155

/-! ## A122155.P10472846429419518523

`xor(A003817(floor(n/2)), A153151(n))`
-/

namespace A122155.P10472846429419518523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A003817 ⌊(n : ℚ) / 2⌋.toNat) (A153151 n)

end

end A122155.P10472846429419518523

namespace A122155

/-- `xor(A003817(floor(n/2)), A153151(n))` -/
def P10472846429419518523.Spec : Prop :=
  ∀ n, P10472846429419518523.a n = A122155 n

end A122155

/-! ## A122155.P12960899982406470605

`A153151(A153151(a(n-1)))+1` with `a(0)=0`
-/

namespace A122155.P12960899982406470605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A153151 (A153151 (a (n - 1)).toNat).toNat + 1

end

end A122155.P12960899982406470605

namespace A122155

/-- `A153151(A153151(a(n-1)))+1` -/
def P12960899982406470605.Spec : Prop :=
  ∀ n, P12960899982406470605.a n = A122155 n

end A122155

/-! ## A122155.P14893340962850520662

`A153152(xor(n, A004761(n+2))-n-1)`
-/

namespace A122155.P14893340962850520662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (Int.xor (n : ℤ) (A004761 (n + 2)) - (n : ℤ) - 1).toNat

end

end A122155.P14893340962850520662

namespace A122155

/-- `A153152(xor(n, A004761(n+2))-n-1)` -/
def P14893340962850520662.Spec : Prop :=
  ∀ n, P14893340962850520662.a n = A122155 n

end A122155

/-! ## A122155.P16198666125081928920

`or(A053644(2*n)-n, A053644(n))`
-/

namespace A122155.P16198666125081928920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A053644 (2 * n) - (n : ℤ)) (A053644 n)

end

end A122155.P16198666125081928920

namespace A122155

/-- `or(A053644(2*n)-n, A053644(n))` -/
def P16198666125081928920.Spec : Prop :=
  ∀ n, P16198666125081928920.a n = A122155 n

end A122155

/-! ## A122155.P4547235529067662073

`xor(A092323(2*n+1), A153151(2*n))/2`
-/

namespace A122155.P4547235529067662073
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.xor (A092323 (2 * n + 1)) (A153151 (2 * n)) : ℚ) / 2

end

end A122155.P4547235529067662073

namespace A122155

/-- `xor(A092323(2*n+1), A153151(2*n))/2` -/
def P4547235529067662073.Spec : Prop :=
  ∀ n, P4547235529067662073.a n = (A122155 n : ℚ)

end A122155

/-! ## A122155.P17710255606211990894

`A304588(n+1)%(2*n+1)-A048298(n)`
-/

namespace A122155.P17710255606211990894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304588 (n + 1)) (2 * n + 1 : ℤ) - A048298 n

end

end A122155.P17710255606211990894

namespace A122155

/-- `A304588(n+1)%(2*n+1)-A048298(n)` -/
def P17710255606211990894.Spec : Prop :=
  ∀ n, P17710255606211990894.a n = A122155 n

end A122155

/-! ## A122155.P125098450570923085

`A153152(A053645(A054429(A316385(2*n+1))))`
-/

namespace A122155.P125098450570923085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A053645 (A054429 (A316385 (2 * n + 1)).toNat).toNat).toNat

end

end A122155.P125098450570923085

namespace A122155

/-- `A153152(A053645(A054429(A316385(2*n+1))))` -/
def P125098450570923085.Spec : Prop :=
  ∀ n, P125098450570923085.a n = A122155 n

end A122155

/-! ## A122155.P4727188907676863499

`A153152(A154436(A233279(n)))`
-/

namespace A122155.P4727188907676863499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (A154436 (A233279 n).toNat).toNat

end

end A122155.P4727188907676863499

namespace A122155

/-- `A153152(A154436(A233279(n)))` -/
def P4727188907676863499.Spec : Prop :=
  ∀ n, P4727188907676863499.a n = A122155 n

end A122155

/-! ## A122155.P3980071007767721582

`A153152(xor(2*n, A154436(2*n)))`
-/

namespace A122155.P3980071007767721582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153152 (Int.xor (2 * n : ℤ) (A154436 (2 * n))).toNat

end

end A122155.P3980071007767721582

namespace A122155

/-- `A153152(xor(2*n, A154436(2*n)))` -/
def P3980071007767721582.Spec : Prop :=
  ∀ n, P3980071007767721582.a n = A122155 n

end A122155

/-!
# A122157: Number of primes between two successive numbers congruent to {2, 4} mod 6.

The programs for A122157, there is no canonical definition to state claims against.
-/

/-! ## A122157.P8956556337476074659

`Δ[A331295(A007918(3*n+2)²)]`
-/

namespace A122157.P8956556337476074659
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331295 (A007918 (3 * n + 2) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122157.P8956556337476074659

/-! ## A122157.P4460665817412695501

`Δ[A000720(A193592(n*(8*n+3)))]`
-/

namespace A122157.P4460665817412695501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A193592 (n * (8 * n + 3))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122157.P4460665817412695501

/-! ## A122157.P10686798661722801465

`Δ[A000720(3*n+1)]%A141214(n)`
-/

namespace A122157.P10686798661722801465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A141214 n)

end

end A122157.P10686798661722801465

/-! ## A122157.P11723077051570460118

`Δ[A000720(3*n+1)%A097155(n+1)]`
-/

namespace A122157.P11723077051570460118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000720 (3 * n + 1)) (A097155 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122157.P11723077051570460118

/-! ## A122157.P3723029525005806515

`Δ[A036234(3*n+1)]%A177215(n+1)`
-/

namespace A122157.P3723029525005806515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A177215 (n + 1))

end

end A122157.P3723029525005806515

/-!
# A122161: Expansion of x*(1 - 3*x + x^2) / (1 - x - 2*x^2 + x^3).

The programs for A122161, the canonical program `A122161.P15841587567837419021` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122161 has offset 1).

The definition of A122161 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-3x+x^2)/(1-x-2x^2+x^3))` (program `A122161.P15841587567837419021`, by `A122161.P15841587567837419021.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122161.P15841587567837419021

`ogf((1-3x+x^2)/(1-x-2x^2+x^3))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122161

/-- `ogf((1-3x+x^2)/(1-x-2x^2+x^3))` -/
def P15841587567837419021.Spec : Prop :=
  ∀ n, P15841587567837419021.a n = A122161 (n + 1)

theorem P15841587567837419021.correct : P15841587567837419021.Spec := by
  intro n
  simp only [A122161, Nat.add_sub_cancel]

end A122161

/-! ## A122161.P10642544240638225994

`A006053(n+2)-3*A006053(n+1)+A006053(n)`
-/

namespace A122161.P10642544240638225994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006053 (n + 2) - 3 * A006053 (n + 1) + A006053 n

end

end A122161.P10642544240638225994

namespace A122161

/-- `A006053(n+2)-3*A006053(n+1)+A006053(n)` -/
def P10642544240638225994.Spec : Prop :=
  ∀ n, P10642544240638225994.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P16810564641086857712

`2*a(n-2)+a(n-1)-a(n-3)` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A122161.P16810564641086857712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n a =>
  2 * a (n - 2) + (a (n - 1) - a (n - 3))

end

end A122161.P16810564641086857712

namespace A122161

/-- `2*a(n-2)+a(n-1)-a(n-3)` -/
def P16810564641086857712.Spec : Prop :=
  ∀ n, P16810564641086857712.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P9344596784225712370

`a(n-1)-(a(n-3)-2*a(n-2))` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A122161.P9344596784225712370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n a =>
  a (n - 1) - (a (n - 3) - 2 * a (n - 2))

end

end A122161.P9344596784225712370

namespace A122161

/-- `a(n-1)-(a(n-3)-2*a(n-2))` -/
def P9344596784225712370.Spec : Prop :=
  ∀ n, P9344596784225712370.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P4885505106438333872

`a(n-1)+a(n-2)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A122161.P4885505106438333872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n a =>
  a (n - 1) + (a (n - 2) + (a (n - 2) - a (n - 3)))

end

end A122161.P4885505106438333872

namespace A122161

/-- `a(n-1)+a(n-2)+a(n-2)-a(n-3)` -/
def P4885505106438333872.Spec : Prop :=
  ∀ n, P4885505106438333872.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P1567005924759285832

`a(n-1)-(a(n-3)-a(n-2)-a(n-2))` with `a(0)=1, a(1)=-2, a(2)=1`
-/

namespace A122161.P1567005924759285832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, -2, 1] fun n a =>
  a (n - 1) - (a (n - 3) - a (n - 2) - a (n - 2))

end

end A122161.P1567005924759285832

namespace A122161

/-- `a(n-1)-(a(n-3)-a(n-2)-a(n-2))` -/
def P1567005924759285832.Spec : Prop :=
  ∀ n, P1567005924759285832.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P17497600979498069425

`Δ[-A052547(n)]`
-/

namespace A122161.P17497600979498069425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A052547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122161.P17497600979498069425

namespace A122161

/-- `Δ[-A052547(n)]` -/
def P17497600979498069425.Spec : Prop :=
  ∀ n, P17497600979498069425.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P4802359670523510558

`Δ[-A096976(n+2)]`
-/

namespace A122161.P4802359670523510558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A096976 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122161.P4802359670523510558

namespace A122161

/-- `Δ[-A096976(n+2)]` -/
def P4802359670523510558.Spec : Prop :=
  ∀ n, P4802359670523510558.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P6171202630993264897

`Δ[-A187066(2*n)]`
-/

namespace A122161.P6171202630993264897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A187066 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122161.P6171202630993264897

namespace A122161

/-- `Δ[-A187066(2*n)]` -/
def P6171202630993264897.Spec : Prop :=
  ∀ n, P6171202630993264897.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P7630496860849746199

`Δ[Δ[-A006053(n+1)]]`
-/

namespace A122161.P7630496860849746199
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A006053 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122161.P7630496860849746199

namespace A122161

/-- `Δ[Δ[-A006053(n+1)]]` -/
def P7630496860849746199.Spec : Prop :=
  ∀ n, P7630496860849746199.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P7784379294327263965

`Δ[Δ[n-A187067(2*n)]]`
-/

namespace A122161.P7784379294327263965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A187067 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122161.P7784379294327263965

namespace A122161

/-- `Δ[Δ[n-A187067(2*n)]]` -/
def P7784379294327263965.Spec : Prop :=
  ∀ n, P7784379294327263965.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P13615545953981258302

`Δ[a(n-2)-A006053(n)]` with `a(0)=2, a(1)=3`
-/

namespace A122161.P13615545953981258302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  f1 (n - 2) - A006053 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122161.P13615545953981258302

namespace A122161

/-- `Δ[a(n-2)-A006053(n)]` -/
def P13615545953981258302.Spec : Prop :=
  ∀ n, P13615545953981258302.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P11803086429792844079

`Δ[Δ[n-A187066(2*n+1)]]`
-/

namespace A122161.P11803086429792844079
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A187066 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122161.P11803086429792844079

namespace A122161

/-- `Δ[Δ[n-A187066(2*n+1)]]` -/
def P11803086429792844079.Spec : Prop :=
  ∀ n, P11803086429792844079.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P13542821002546606358

`A052547(n)-A052547(n+1)`
-/

namespace A122161.P13542821002546606358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052547 n - A052547 (n + 1)

end

end A122161.P13542821002546606358

namespace A122161

/-- `A052547(n)-A052547(n+1)` -/
def P13542821002546606358.Spec : Prop :=
  ∀ n, P13542821002546606358.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P3356476987898810455

`Δ[A000034(2*n)-A052547(n)]`
-/

namespace A122161.P3356476987898810455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) - A052547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122161.P3356476987898810455

namespace A122161

/-- `Δ[A000034(2*n)-A052547(n)]` -/
def P3356476987898810455.Spec : Prop :=
  ∀ n, P3356476987898810455.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P14862849293397795739

`Δ[A000035(2*n)-A052547(n)]`
-/

namespace A122161.P14862849293397795739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (2 * n) - A052547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122161.P14862849293397795739

namespace A122161

/-- `Δ[A000035(2*n)-A052547(n)]` -/
def P14862849293397795739.Spec : Prop :=
  ∀ n, P14862849293397795739.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P14283273554995020025

`Δ[A010728(2*n)-A052547(n)]`
-/

namespace A122161.P14283273554995020025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010728 (2 * n) - A052547 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122161.P14283273554995020025

namespace A122161

/-- `Δ[A010728(2*n)-A052547(n)]` -/
def P14283273554995020025.Spec : Prop :=
  ∀ n, P14283273554995020025.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P16595315145635016930

`A096976(n+2)-A096976(n+3)`
-/

namespace A122161.P16595315145635016930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096976 (n + 2) - A096976 (n + 3)

end

end A122161.P16595315145635016930

namespace A122161

/-- `A096976(n+2)-A096976(n+3)` -/
def P16595315145635016930.Spec : Prop :=
  ∀ n, P16595315145635016930.a n = A122161 (n + 1)

end A122161

/-! ## A122161.P5195856893089010193

`A028495(n+1)+A028495(n)-A096975(n+1)`
-/

namespace A122161.P5195856893089010193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028495 (n + 1) + (A028495 n - A096975 (n + 1))

end

end A122161.P5195856893089010193

namespace A122161

/-- `A028495(n+1)+A028495(n)-A096975(n+1)` -/
def P5195856893089010193.Spec : Prop :=
  ∀ n, P5195856893089010193.a n = A122161 (n + 1)

end A122161

/-!
# A122162: Coefficient of q-series for constant term of Tate curve.

The programs for A122162, the canonical program `A122162.P5902055598394030594` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122162 has offset 1).

The definition of A122162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122162.P5902055598394030594

`∑{d}[n+1, #*A185505(#)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122162

/-- `∑{d}[n+1, #*A185505(#)]` -/
def P5902055598394030594.Spec : Prop :=
  ∀ n, P5902055598394030594.a n = A122162 (n + 1)

theorem P5902055598394030594.correct : P5902055598394030594.Spec := by
  intro n
  simp only [A122162, Nat.add_sub_cancel]

end A122162

/-! ## A122162.P8720422904746035766

`∑{d}[n+1, A245380(#)]`
-/

namespace A122162.P8720422904746035766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A245380 d

end

end A122162.P8720422904746035766

namespace A122162

/-- `∑{d}[n+1, A245380(#)]` -/
def P8720422904746035766.Spec : Prop :=
  ∀ n, P8720422904746035766.a n = A122162 (n + 1)

end A122162

/-! ## A122162.P16154009951957734881

`record[∑{d}[A023416(n), A245380(#)]]`
-/

namespace A122162.P16154009951957734881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n).natAbs, A245380 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122162.P16154009951957734881

namespace A122162

/-- `record[∑{d}[A023416(n), A245380(#)]]` -/
def P16154009951957734881.Spec : Prop :=
  ∀ n, P16154009951957734881.a n = A122162 (n + 1)

end A122162

/-!
# A122163: Expansion of f(-q)^2*P(q) in powers of q.

The programs for A122163, there is no canonical definition to state claims against.
-/

/-! ## A122163.P1463123120263770295

`(12*n+1)*A002107(n)`
-/

namespace A122163.P1463123120263770295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (12 * n + 1 : ℤ) * A002107 n

end

end A122163.P1463123120263770295

/-! ## A122163.P1086837968454860082

`A002107(n)*A017533(n)`
-/

namespace A122163.P1086837968454860082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A017533 n

end

end A122163.P1086837968454860082

/-! ## A122163.P11087983812994334553

`A002107(n)*A016921(2*n)`
-/

namespace A122163.P11087983812994334553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A016921 (2 * n)

end

end A122163.P11087983812994334553

/-! ## A122163.P534445421229380819

`A002107(n)*A016813(3*n)`
-/

namespace A122163.P534445421229380819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A016813 (3 * n)

end

end A122163.P534445421229380819

/-! ## A122163.P10764650034303412065

`A002107(n)*A016777(4*n)`
-/

namespace A122163.P10764650034303412065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A016777 (4 * n)

end

end A122163.P10764650034303412065

/-! ## A122163.P7414976130402662299

`A002107(n)*A005408(6*n)`
-/

namespace A122163.P7414976130402662299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A005408 (6 * n)

end

end A122163.P7414976130402662299

/-! ## A122163.P11581847201954603829

`A002107(n)*A004442(A008594(n))`
-/

namespace A122163.P11581847201954603829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A004442 (A008594 n).toNat

end

end A122163.P11581847201954603829

/-! ## A122163.P16191460995769219281

`A002107(n)*A008619(A008606(n))`
-/

namespace A122163.P16191460995769219281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002107 n * A008619 (A008606 n).toNat

end

end A122163.P16191460995769219281

/-!
# A122164: a(0) = 0, a(1) = 1, s = 0; for n >= 2, if a(n-1) is even and s = 0 then set a(n) = a(n-1)/2 and s = 1; otherwise set a(n) = a(n-1) + a(n-2) and s = 0.

The programs for A122164, the canonical program `A122164.P2347712908985468989` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122164 has offset 0).

The definition of A122164 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122164.P2347712908985468989

`3*a(n-5)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=2, a(4)=1, a(5)=3, a(6)=4, a(7)=2`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122164

/-- `3*a(n-5)` -/
def P2347712908985468989.Spec : Prop :=
  ∀ n, (P2347712908985468989.a n : ℤ) = A122164 n

theorem P2347712908985468989.correct : P2347712908985468989.Spec := by
  intro n
  simp only [A122164]

end A122164

/-!
# A122165: Continued fraction expansion of constant x = Sum_{n>=0} 1/5^(2^n).

The programs for A122165, there is no canonical definition to state claims against.
-/

/-! ## A122165.P14453146200993938027

`round(3*sqrt(A004200(n)))`
-/

namespace A122165.P14453146200993938027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 * Real.sqrt (A004200 n : ℝ))

end

end A122165.P14453146200993938027

/-! ## A122165.P7135926311849545271

`ceil(log(3)*A006464(n))`
-/

namespace A122165.P7135926311849545271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (3 : ℝ) * (A006464 n : ℝ)⌉

end

end A122165.P7135926311849545271

/-! ## A122165.P13753054551156265947

`A057427(n)+A006464(n)`
-/

namespace A122165.P13753054551156265947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n + A006464 n

end

end A122165.P13753054551156265947

/-! ## A122165.P3678516198379587684

`A178334(n)+A006464(n)`
-/

namespace A122165.P3678516198379587684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n + A006464 n

end

end A122165.P3678516198379587684

/-! ## A122165.P5652373575255534925

`A006464(n)-A057428(n)`
-/

namespace A122165.P5652373575255534925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n - A057428 n

end

end A122165.P5652373575255534925

/-! ## A122165.P277807434423446128

`A006464(n)+char[A000174(n)]`
-/

namespace A122165.P277807434423446128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122165.P277807434423446128

/-! ## A122165.P10610797516787316278

`A006464(n)+char[A007306(n)]`
-/

namespace A122165.P10610797516787316278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A122165.P10610797516787316278

/-! ## A122165.P8046391133834363067

`A006464(n)+1-A000007(n)`
-/

namespace A122165.P8046391133834363067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n + (1 - A000007 n)

end

end A122165.P8046391133834363067

/-! ## A122165.P2808711156497937790

`A004200(n)+2-A000038(n)`
-/

namespace A122165.P2808711156497937790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n + (2 - A000038 n)

end

end A122165.P2808711156497937790

/-! ## A122165.P6217303287952850354

`A019428(2*n)+A006464(n)`
-/

namespace A122165.P6217303287952850354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019428 (2 * n) + A006464 n

end

end A122165.P6217303287952850354

/-! ## A122165.P5618436429482058610

`A004200(n)+2*A057427(n)`
-/

namespace A122165.P5618436429482058610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n + 2 * A057427 n

end

end A122165.P5618436429482058610

/-! ## A122165.P13364967106669397378

`A004200(n)+2*A178334(n)`
-/

namespace A122165.P13364967106669397378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n + 2 * A178334 n

end

end A122165.P13364967106669397378

/-! ## A122165.P16892421967284921638

`A004200(n)-2*A057428(n)`
-/

namespace A122165.P16892421967284921638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n - 2 * A057428 n

end

end A122165.P16892421967284921638

/-! ## A122165.P12657353618638629770

`A066247((n+1)²)+A006464(n)`
-/

namespace A122165.P12657353618638629770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066247 ((n + 1) ^ 2) + A006464 n

end

end A122165.P12657353618638629770

/-! ## A122165.P3062208787488140009

`A006464(n)+A000045(ceil(n/63))`
-/

namespace A122165.P3062208787488140009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n + A000045 ⌈(n : ℚ) / 63⌉.toNat

end

end A122165.P3062208787488140009

/-! ## A122165.P14195687062625660309

`A004200(n)+2%A000040(n+1)`
-/

namespace A122165.P14195687062625660309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n + Int.tmod 2 (A000040 (n + 1))

end

end A122165.P14195687062625660309

/-! ## A122165.P13200764180040125652

`A006464(n)+A000040(n+1)%2`
-/

namespace A122165.P13200764180040125652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n + Int.tmod (A000040 (n + 1)) 2

end

end A122165.P13200764180040125652

/-! ## A122165.P13969711374799596379

`A006464(n)+A001221(A001316(n))`
-/

namespace A122165.P13969711374799596379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006464 n + A001221 (A001316 n).toNat

end

end A122165.P13969711374799596379

/-! ## A122165.P5821371378372490878

`A004200(n)+A004200(A178334(n))`
-/

namespace A122165.P5821371378372490878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004200 n + A004200 (A178334 n).toNat

end

end A122165.P5821371378372490878

/-! ## A122165.P777882129077946241

`A140082(A053644(n))+A006464(n)`
-/

namespace A122165.P777882129077946241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140082 (A053644 n).toNat + A006464 n

end

end A122165.P777882129077946241

/-!
# A122167: Expansion of x*(-1+5*x-6*x^2+x^3) / ( (2*x-1)*(x^3-3*x^2+1) ).

The programs for A122167, the canonical program `A122167.P14445365209746345844` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122167 has offset 1).

The definition of A122167 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-5x+6x^2-x^3)/(1-2x-3x^2+7x^3-2x^4))` (program `A122167.P14445365209746345844`, by `A122167.P14445365209746345844.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122167.P14445365209746345844

`ogf((1-5x+6x^2-x^3)/(1-2x-3x^2+7x^3-2x^4))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122167

/-- `ogf((1-5x+6x^2-x^3)/(1-2x-3x^2+7x^3-2x^4))` -/
def P14445365209746345844.Spec : Prop :=
  ∀ n, P14445365209746345844.a n = A122167 (n + 1)

theorem P14445365209746345844.correct : P14445365209746345844.Spec := by
  intro n
  simp only [A122167, Nat.add_sub_cancel]

end A122167

/-!
# A122168: a(1)=1; a(n) is the number of earlier terms, a(k) (1 <= k <= n-1), where gcd(a(k),n) is squarefree.

The programs for A122168, there is no canonical definition to state claims against.
-/

/-! ## A122168.P6562512360941358966

`A000005(A011782(n))-A330936(n+1)`
-/

namespace A122168.P6562512360941358966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A011782 n).toNat - A330936 (n + 1)

end

end A122168.P6562512360941358966

/-! ## A122168.P5794614901193979486

`A000005(A166444(n+1))-A330936(n+1)`
-/

namespace A122168.P5794614901193979486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A166444 (n + 1)).toNat - A330936 (n + 1)

end

end A122168.P5794614901193979486

/-! ## A122168.P13649135197143902267

`A000005(A000079(n))-A347049(n+1)`
-/

namespace A122168.P13649135197143902267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000079 n).toNat - A347049 (n + 1)

end

end A122168.P13649135197143902267

/-!
# A122169: a(1)=1. a(n) = sum of earlier terms, a(k) (1<=k<=n-1), where gcd(a(k),n) is squarefree.

The programs for A122169, there is no canonical definition to state claims against.
-/

/-! ## A122169.P5486111103393951621

`A011782(n)-A316402(A275972(n)²)`
-/

namespace A122169.P5486111103393951621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n - A316402 (A275972 n ^ 2).toNat

end

end A122169.P5486111103393951621

/-! ## A122169.P10405895494392772538

`and(A002473(A257562(n)), A296937(n+1))`
-/

namespace A122169.P10405895494392772538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002473 (A257562 n).toNat) (A296937 (n + 1))

end

end A122169.P10405895494392772538

/-! ## A122169.P16272456916967428360

`A000010(A079845(n+1))%A079840(n+3)`
-/

namespace A122169.P16272456916967428360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000010 (A079845 (n + 1)).toNat) (A079840 (n + 3))

end

end A122169.P16272456916967428360

/-! ## A122169.P5875291918814364078

`A135020(A333302(n+1))%A246096(3*n+5)`
-/

namespace A122169.P5875291918814364078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A135020 (A333302 (n + 1)).toNat) (A246096 (3 * n + 5))

end

end A122169.P5875291918814364078

/-!
# A122170: Number of primes p <= 2n such that p+n is also a prime.

The programs for A122170, there is no canonical definition to state claims against.
-/

/-! ## A122170.P2808883816129358752

`and(A094024(n), A358371(A281597(n+1)))`
-/

namespace A122170.P2808883816129358752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A094024 n) (A358371 (A281597 (n + 1)).toNat)

end

end A122170.P2808883816129358752

/-! ## A122170.P4669932370496851740

`and(A128834(3*n+1), A358371(A281597(n+1)))`
-/

namespace A122170.P4669932370496851740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A128834 (3 * n + 1)) (A358371 (A281597 (n + 1)).toNat)

end

end A122170.P4669932370496851740

/-! ## A122170.P17122613165595396993

`and(A135832(A000055(n)), A335421(n))`
-/

namespace A122170.P17122613165595396993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A135832 (A000055 n).toNat) (A335421 n)

end

end A122170.P17122613165595396993

/-! ## A122170.P18239240626851328426

`A191411(or(A004767(n), A046899(n)))`
-/

namespace A122170.P18239240626851328426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191411 (Int.lor (A004767 n) (A046899 n)).toNat

end

end A122170.P18239240626851328426

/-! ## A122170.P10231062479032501599

`A000120(A289045(n))-round(2*n/3)`
-/

namespace A122170.P10231062479032501599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A289045 n).toNat - SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3))

end

end A122170.P10231062479032501599

/-!
# A122173: Expansion of -x * (x^5+x^4-15*x^3+19*x^2-8*x+1) / (x^6-12*x^5+34*x^4-30*x^3+6*x^2+3*x-1).

The programs for A122173, the canonical program `A122173.P1746825663525717111` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122173 has offset 1).

The definition of A122173 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-8x+19x^2-15x^3+x^4+x^5)/(1-3x-6x^2+30x^3-34x^4+12x^5-x^6))` (program `A122173.P1746825663525717111`, by `A122173.P1746825663525717111.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A122173.P1746825663525717111

`ogf((1-8x+19x^2-15x^3+x^4+x^5)/(1-3x-6x^2+30x^3-34x^4+12x^5-x^6))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122173

/-- `ogf((1-8x+19x^2-15x^3+x^4+x^5)/(1-3x-6x^2+30x^3-34x^4+12x^5-x^6))` -/
def P1746825663525717111.Spec : Prop :=
  ∀ n, P1746825663525717111.a n = A122173 (n + 1)

theorem P1746825663525717111.correct : P1746825663525717111.Spec := by
  intro n
  simp only [A122173, Nat.add_sub_cancel]

end A122173

/-!
# A122174: First row sum of the matrix M^n, where M is the 5 X 5 matrix {{0,-1,-1,-1,-1}, {-1,0,-1,-1,0}, {-1,-1,0,0,0}, {-1,-1,0,1,0}, {-1,0,0,0,1}}.

The programs for A122174, the canonical program `A122174.P17823674604548613570` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122174 has offset 0).

The definition of A122174 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122174.P17823674604548613570

`2*a(n-1)+5*a(n-2)-13*a(n-3)+7*a(n-4)-a(n-5)` with `a(0)=1, a(1)=-4, a(2)=6, a(3)=-24, a(4)=41`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122174

/-- `2*a(n-1)+5*a(n-2)-13*a(n-3)+7*a(n-4)-a(n-5)` -/
def P17823674604548613570.Spec : Prop :=
  ∀ n, P17823674604548613570.a n = A122174 n

theorem P17823674604548613570.correct : P17823674604548613570.Spec := by
  intro n
  simp only [A122174]

end A122174

/-!
# A122175: Triangle, read by rows, where T(n,k) = C( k*(k+1)/2 + n-k, n-k) for n>=k>=0.

The programs for A122175, the canonical program `A122175.P7217515254701643098` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122175 has offset 0).

The definition of A122175 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5497 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122175.P7217515254701643098

`C(A112367(n)+A025581(n), A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A122175

/-- `C(A112367(n)+A025581(n), A025581(n))` -/
def P7217515254701643098.Spec : Prop :=
  ∀ n, (P7217515254701643098.a n : ℤ) = A122175 n

theorem P7217515254701643098.correct : P7217515254701643098.Spec := by
  intro n
  simp only [A122175]

end A122175

/-! ## A122175.P14231674049921486976

`A162717(n)+A036860(A265005(n+1))`
-/

namespace A122175.P14231674049921486976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162717 n + A036860 (A265005 (n + 1)).toNat

end

end A122175.P14231674049921486976

namespace A122175

/-- `A162717(n)+A036860(A265005(n+1))` -/
def P14231674049921486976.Spec : Prop :=
  ∀ n, P14231674049921486976.a n = A122175 n

end A122175

/-! ## A122175.P15077769800289724263

`∑{e}[A066119(n+1), A000217(#)]`
-/

namespace A122175.P15077769800289724263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000217 (Nat.factorization (f1 n).natAbs p)

end

end A122175.P15077769800289724263

namespace A122175

/-- `∑{e}[A066119(n+1), A000217(#)]` -/
def P15077769800289724263.Spec : Prop :=
  ∀ n, P15077769800289724263.a n = A122175 n

end A122175

/-! ## A122175.P17679714392817285442

`∑{e}[A066119(n+1), A096895(#)]`
-/

namespace A122175.P17679714392817285442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A096895 (Nat.factorization (f1 n).natAbs p)

end

end A122175.P17679714392817285442

namespace A122175

/-- `∑{e}[A066119(n+1), A096895(#)]` -/
def P17679714392817285442.Spec : Prop :=
  ∀ n, P17679714392817285442.a n = A122175 n

end A122175

/-! ## A122175.P8440774663966240413

`∑{e}[A066119(n+1), A105335(#)]`
-/

namespace A122175.P8440774663966240413
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A105335 (Nat.factorization (f1 n).natAbs p)

end

end A122175.P8440774663966240413

namespace A122175

/-- `∑{e}[A066119(n+1), A105335(#)]` -/
def P8440774663966240413.Spec : Prop :=
  ∀ n, P8440774663966240413.a n = A122175 n

end A122175

/-!
# A122176: Triangle, read by rows, where T(n,k) = C( k*(k+1)/2 + n-k + 1, n-k) for n>=k>=0.

The programs for A122176, there is no canonical definition to state claims against.
-/

/-! ## A122176.P12135111749316025644

`A048766(A342890(n))+A025581(n)`
-/

namespace A122176.P12135111749316025644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A342890 n).toNat + A025581 n

end

end A122176.P12135111749316025644

/-! ## A122176.P15294219534190512270

`A087845(A008292(n+1))+A025581(n)`
-/

namespace A122176.P15294219534190512270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A008292 (n + 1)).toNat + A025581 n

end

end A122176.P15294219534190512270

/-! ## A122176.P15176152198748925853

`A143328(n+1)+A014707(A022171(n))`
-/

namespace A122176.P15176152198748925853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143328 (n + 1) + A014707 (A022171 n).toNat

end

end A122176.P15176152198748925853

/-! ## A122176.P12922236070257937041

`A143328(n+1)+A025465(A022345(n))`
-/

namespace A122176.P12922236070257937041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143328 (n + 1) + A025465 (A022345 n).toNat

end

end A122176.P12922236070257937041

/-! ## A122176.P9983976617745383949

`A143328(n+1)+A121262(A154229(n))`
-/

namespace A122176.P9983976617745383949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143328 (n + 1) + A121262 (A154229 n).toNat

end

end A122176.P9983976617745383949

/-!
# A122177: Triangle, read by rows, where T(n,k) = C( k*(k+1)/2 + n-k + 2, n-k) for n>=k>=0.

The programs for A122177, there is no canonical definition to state claims against.
-/

/-! ## A122177.P3893326473668374436

`A086270(n+1)+A083914(A156767(n))`
-/

namespace A122177.P3893326473668374436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086270 (n + 1) + A083914 (A156767 n).toNat

end

end A122177.P3893326473668374436

/-! ## A122177.P8851862942312279525

`A104712(n+2)+A025466(A000129(n))`
-/

namespace A122177.P8851862942312279525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) + A025466 (A000129 n).toNat

end

end A122177.P8851862942312279525

/-! ## A122177.P3452912291327432455

`A104712(n+2)+A014375(A013609(n))`
-/

namespace A122177.P3452912291327432455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) + A014375 (A013609 n).toNat

end

end A122177.P3452912291327432455

/-! ## A122177.P6265731112114226576

`A104712(n+2)+A033665(A050932(n))`
-/

namespace A122177.P6265731112114226576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104712 (n + 2) + A033665 (A050932 n).toNat

end

end A122177.P6265731112114226576

/-! ## A122177.P6722346732768080917

`A225099(A047753(3*n+5))+A104712(n+2)`
-/

namespace A122177.P6722346732768080917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 (A047753 (3 * n + 5)).toNat + A104712 (n + 2)

end

end A122177.P6722346732768080917

/-!
# A122178: Triangle, read by rows, where T(n,k) = C( n*(n+1)/2 + n-k - 1, n-k), for n>=k>=0.

The programs for A122178, the canonical program `A122178.P9068855449632396625` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122178 has offset 0).

The definition of A122178 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1485 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122178.P220147944800933488

`C(A061579(n+1), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A122178.P220147944800933488
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061579 (n + 1)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A122178.P220147944800933488

namespace A122178

/-- `C(A061579(n+1), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P220147944800933488.Spec : Prop :=
  ∀ n, (P220147944800933488.a n : ℤ) = A122178 n

end A122178

/-! ## A122178.P14944432687228598414

`C(A289207(∑[char[∑[n]]]²-n), C(comp[∑[n]]-n, 2)-(n+1))`
-/

namespace A122178.P14944432687228598414
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
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A289207 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - n)).toNat ((Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f4 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ) - (n + 1 : ℤ)).toNat

end

end A122178.P14944432687228598414

namespace A122178

/-- `C(A289207(∑[char[∑[n]]]²-n), C(comp[∑[n]]-n, 2)-(n+1))` -/
def P14944432687228598414.Spec : Prop :=
  ∀ n, (P14944432687228598414.a n : ℤ) = A122178 n

end A122178

/-! ## A122178.P9068855449632396625

`C(A061579(n+1), A025581(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A122178

/-- `C(A061579(n+1), A025581(n))` -/
def P9068855449632396625.Spec : Prop :=
  ∀ n, (P9068855449632396625.a n : ℤ) = A122178 n

theorem P9068855449632396625.correct : P9068855449632396625.Spec := by
  intro n
  simp only [A122178]

end A122178

/-! ## A122178.P1478885826113120339

`C(A061579(n+1), log2(A130321(n)))`
-/

namespace A122178.P1478885826113120339
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061579 (n + 1)).toNat (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ))).toNat

end

end A122178.P1478885826113120339

namespace A122178

/-- `C(A061579(n+1), log2(A130321(n)))` -/
def P1478885826113120339.Spec : Prop :=
  ∀ n, (P1478885826113120339.a n : ℤ) = A122178 n

end A122178

/-! ## A122178.P10133173875027077000

`C(A061579(n+1), A002262(A061579(n)))`
-/

namespace A122178.P10133173875027077000
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A061579 (n + 1)).toNat (A002262 (A061579 n).toNat).toNat

end

end A122178.P10133173875027077000

namespace A122178

/-- `C(A061579(n+1), A002262(A061579(n)))` -/
def P10133173875027077000.Spec : Prop :=
  ∀ n, (P10133173875027077000.a n : ℤ) = A122178 n

end A122178

/-!
# A122179: Number of ways to write n as n = x*y*z with 1

The programs for A122179, the canonical program `A122179.P10778673272952612676` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122179 has offset 1).

The definition of A122179 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034836, A038548, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122179.P10778673272952612676

`A034836(n+1)-A038548(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A122179

/-- `A034836(n+1)-A038548(n+1)` -/
def P10778673272952612676.Spec : Prop :=
  ∀ n, P10778673272952612676.a n = A122179 (n + 1)

theorem P10778673272952612676.correct : P10778673272952612676.Spec := by
  intro n
  simp only [A122179, Nat.add_sub_cancel]

end A122179

/-! ## A122179.P3360774777176489797

`(A007425(n+1)+3*A046951(n+1)+2*A010057(n+1))/6-A038548(n+1)`
-/

namespace A122179.P3360774777176489797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) + 3 * A046951 (n + 1) + 2 * A010057 (n + 1) : ℚ) / 6 - (A038548 (n + 1) : ℚ)

end

end A122179.P3360774777176489797

namespace A122179

/-- `(A007425(n+1)+3*A046951(n+1)+2*A010057(n+1))/6-A038548(n+1)` -/
def P3360774777176489797.Spec : Prop :=
  ∀ n, P3360774777176489797.a n = (A122179 (n + 1) : ℚ)

end A122179

/-! ## A122179.P14061867409309239217

`A034836(n+1)-(A072670(n)+1)`
-/

namespace A122179.P14061867409309239217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - (A072670 n + 1)

end

end A122179.P14061867409309239217

namespace A122179

/-- `A034836(n+1)-(A072670(n)+1)` -/
def P14061867409309239217.Spec : Prop :=
  ∀ n, P14061867409309239217.a n = A122179 (n + 1)

end A122179

/-! ## A122179.P9022133621694704386

`A088434(n+1)-A262202(n+1)`
-/

namespace A122179.P9022133621694704386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1) - A262202 (n + 1)

end

end A122179.P9022133621694704386

namespace A122179

/-- `A088434(n+1)-A262202(n+1)` -/
def P9022133621694704386.Spec : Prop :=
  ∀ n, P9022133621694704386.a n = A122179 (n + 1)

end A122179

/-! ## A122179.P15287532059413923785

`A034836(n+1)-Δ[A132106(n)/2]`
-/

namespace A122179.P15287532059413923785
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132106 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034836 (n + 1) : ℚ) - (f1 (n + 1) - f1 n)

end

end A122179.P15287532059413923785

namespace A122179

/-- `A034836(n+1)-Δ[A132106(n)/2]` -/
def P15287532059413923785.Spec : Prop :=
  ∀ n, P15287532059413923785.a n = (A122179 (n + 1) : ℚ)

end A122179

/-! ## A122179.P13034006764585580626

`A034836(n+1)-A161841(n+1)/2`
-/

namespace A122179.P13034006764585580626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034836 (n + 1) : ℚ) - (A161841 (n + 1) : ℚ) / 2

end

end A122179.P13034006764585580626

namespace A122179

/-- `A034836(n+1)-A161841(n+1)/2` -/
def P13034006764585580626.Spec : Prop :=
  ∀ n, P13034006764585580626.a n = (A122179 (n + 1) : ℚ)

end A122179

/-! ## A122179.P14270949571851673137

`A034836(n+1)-ceil(A000005(n+1)/2)`
-/

namespace A122179.P14270949571851673137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - ⌈(A000005 (n + 1) : ℚ) / 2⌉

end

end A122179.P14270949571851673137

namespace A122179

/-- `A034836(n+1)-ceil(A000005(n+1)/2)` -/
def P14270949571851673137.Spec : Prop :=
  ∀ n, P14270949571851673137.a n = A122179 (n + 1)

end A122179

/-! ## A122179.P2666400385070738670

`A023443(A034836(n+1)-A072670(n))`
-/

namespace A122179.P2666400385070738670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A034836 (n + 1) - A072670 n).toNat

end

end A122179.P2666400385070738670

namespace A122179

/-- `A023443(A034836(n+1)-A072670(n))` -/
def P2666400385070738670.Spec : Prop :=
  ∀ n, P2666400385070738670.a n = A122179 (n + 1)

end A122179

/-! ## A122179.P1673856905363859613

`A034836(n+1)-A065033(A000005(n+1))`
-/

namespace A122179.P1673856905363859613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A065033 (A000005 (n + 1)).toNat

end

end A122179.P1673856905363859613

namespace A122179

/-- `A034836(n+1)-A065033(A000005(n+1))` -/
def P1673856905363859613.Spec : Prop :=
  ∀ n, P1673856905363859613.a n = A122179 (n + 1)

end A122179

/-! ## A122179.P8104389504595848594

`A034836(n+1)-A008621(A086369(n+1))`
-/

namespace A122179.P8104389504595848594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A008621 (A086369 (n + 1)).toNat

end

end A122179.P8104389504595848594

namespace A122179

/-- `A034836(n+1)-A008621(A086369(n+1))` -/
def P8104389504595848594.Spec : Prop :=
  ∀ n, P8104389504595848594.a n = A122179 (n + 1)

end A122179

/-! ## A122179.P11988023598326658905

`A034836(n+1)-A008619(A070824(n+1)+1)`
-/

namespace A122179.P11988023598326658905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A008619 (A070824 (n + 1) + 1).toNat

end

end A122179.P11988023598326658905

namespace A122179

/-- `A034836(n+1)-A008619(A070824(n+1)+1)` -/
def P11988023598326658905.Spec : Prop :=
  ∀ n, P11988023598326658905.a n = A122179 (n + 1)

end A122179

/-! ## A122179.P14504761185468375708

`A034836(n+1)-A123108(A000005(n+1)+1)`
-/

namespace A122179.P14504761185468375708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) - A123108 (A000005 (n + 1) + 1).toNat

end

end A122179.P14504761185468375708

namespace A122179

/-- `A034836(n+1)-A123108(A000005(n+1)+1)` -/
def P14504761185468375708.Spec : Prop :=
  ∀ n, P14504761185468375708.a n = A122179 (n + 1)

end A122179

/-! ## A122179.P9244731093308855369

`A218320(n+1)-(A321379(n+1)+A038548(n+1))`
-/

namespace A122179.P9244731093308855369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218320 (n + 1) - (A321379 (n + 1) + A038548 (n + 1))

end

end A122179.P9244731093308855369

namespace A122179

/-- `A218320(n+1)-(A321379(n+1)+A038548(n+1))` -/
def P9244731093308855369.Spec : Prop :=
  ∀ n, P9244731093308855369.a n = A122179 (n + 1)

end A122179

/-! ## A122179.P12590287177381496292

`A034836(n+1)+A337175(n+1)-A337174(n+1)`
-/

namespace A122179.P12590287177381496292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (n + 1) + (A337175 (n + 1) - A337174 (n + 1))

end

end A122179.P12590287177381496292

namespace A122179

/-- `A034836(n+1)+A337175(n+1)-A337174(n+1)` -/
def P12590287177381496292.Spec : Prop :=
  ∀ n, P12590287177381496292.a n = A122179 (n + 1)

end A122179

/-!
# A122180: Number of ways to write n as n = x*y*z with 1 < x < y < z < n.

The programs for A122180, the canonical program `A122180.P2062228255680378258` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122180 has offset 1).

The definition of A122180 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122180.P15569764750903631124

`A200214(n+1)/6`
-/

namespace A122180.P15569764750903631124
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A200214 (n + 1) : ℚ) / 6

end

end A122180.P15569764750903631124

namespace A122180

/-- `A200214(n+1)/6` -/
def P15569764750903631124.Spec : Prop :=
  ∀ n, P15569764750903631124.a n = (A122180 (n + 1) : ℚ)

end A122180

/-! ## A122180.P2062228255680378258

`A088434(n+1)-A001281(A200213(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A122180

/-- `A088434(n+1)-A001281(A200213(n+1))` -/
def P2062228255680378258.Spec : Prop :=
  ∀ n, P2062228255680378258.a n = A122180 (n + 1)

theorem P2062228255680378258.correct : P2062228255680378258.Spec := by
  intro n
  simp only [A122180, Nat.add_sub_cancel]

end A122180

/-! ## A122180.P13162793940169539502

`A008615(A200214(n+1))`
-/

namespace A122180.P13162793940169539502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A200214 (n + 1)).toNat

end

end A122180.P13162793940169539502

namespace A122180

/-- `A008615(A200214(n+1))` -/
def P13162793940169539502.Spec : Prop :=
  ∀ n, P13162793940169539502.a n = A122180 (n + 1)

end A122180

/-! ## A122180.P4992407374964518688

`A103221(A200214(n+1)+1)`
-/

namespace A122180.P4992407374964518688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A200214 (n + 1) + 1).toNat

end

end A122180.P4992407374964518688

namespace A122180

/-- `A103221(A200214(n+1)+1)` -/
def P4992407374964518688.Spec : Prop :=
  ∀ n, P4992407374964518688.a n = A122180 (n + 1)

end A122180

/-! ## A122180.P17089496298466704374

`val(A020714(A200214(n+1)+6), 64)-1`
-/

namespace A122180.P17089496298466704374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A020714 (A200214 (n + 1) + 6).toNat).toNat 64 : ℤ) - 1

end

end A122180.P17089496298466704374

namespace A122180

/-- `val(A020714(A200214(n+1)+6), 64)-1` -/
def P17089496298466704374.Spec : Prop :=
  ∀ n, P17089496298466704374.a n = A122180 (n + 1)

end A122180

/-! ## A122180.P3327363974225556634

`A026922(A274616(A200214(n+1)+1))`
-/

namespace A122180.P3327363974225556634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A274616 (A200214 (n + 1) + 1).toNat).toNat

end

end A122180.P3327363974225556634

namespace A122180

/-- `A026922(A274616(A200214(n+1)+1))` -/
def P3327363974225556634.Spec : Prop :=
  ∀ n, P3327363974225556634.a n = A122180 (n + 1)

end A122180

/-! ## A122180.P4665156041266337685

`A001221(A008624(A200214(n+1))!)`
-/

namespace A122180.P4665156041266337685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A008624 (A200214 (n + 1)).toNat).toNat)

end

end A122180.P4665156041266337685

namespace A122180

/-- `A001221(A008624(A200214(n+1))!)` -/
def P4665156041266337685.Spec : Prop :=
  ∀ n, P4665156041266337685.a n = A122180 (n + 1)

end A122180

/-! ## A122180.P16008866891053531585

`A347447(n+1)+A057428(n)`
-/

namespace A122180.P16008866891053531585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (n + 1) + A057428 n

end

end A122180.P16008866891053531585

namespace A122180

/-- `A347447(n+1)+A057428(n)` -/
def P16008866891053531585.Spec : Prop :=
  ∀ n, P16008866891053531585.a n = A122180 (n + 1)

end A122180

/-! ## A122180.P15437840151740389034

`A347447(n+1)-A057427(n)`
-/

namespace A122180.P15437840151740389034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (n + 1) - A057427 n

end

end A122180.P15437840151740389034

namespace A122180

/-- `A347447(n+1)-A057427(n)` -/
def P15437840151740389034.Spec : Prop :=
  ∀ n, P15437840151740389034.a n = A122180 (n + 1)

end A122180

/-! ## A122180.P516367778324418043

`A347447(n+1)-A178334(n)`
-/

namespace A122180.P516367778324418043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347447 (n + 1) - A178334 n

end

end A122180.P516367778324418043

namespace A122180

/-- `A347447(n+1)-A178334(n)` -/
def P516367778324418043.Spec : Prop :=
  ∀ n, P516367778324418043.a n = A122180 (n + 1)

end A122180

/-!
# A122181: Numbers k that can be written as k = x*y*z with 1 < x < y < z (A122180(k) > 0).

The programs for A122181, the canonical program `A122181.P3473842249069912040` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122181 has offset 1).

The definition of A122181 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5369 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122181.P3473842249069912040

`lt[5, A032741(n)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122181

/-- `lt[5, A032741(n)]` -/
def P3473842249069912040.Spec : Prop :=
  ∀ n, (P3473842249069912040.a n : ℤ) = A122181 (n + 1)

theorem P3473842249069912040.correct : P3473842249069912040.Spec := by
  intro n
  simp only [A122181, Nat.add_sub_cancel]

end A122181

/-! ## A122181.P9398867979150475139

`lt[24, A145154(n)]`
-/

namespace A122181.P9398867979150475139
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  24

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145154 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A122181.P9398867979150475139

namespace A122181

/-- `lt[24, A145154(n)]` -/
def P9398867979150475139.Spec : Prop :=
  ∀ n, (P9398867979150475139.a n : ℤ) = A122181 (n + 1)

end A122181

/-! ## A122181.P2626701852205511210

`lt[2, A072670(n)]+1`
-/

namespace A122181.P2626701852205511210
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072670 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A122181.P2626701852205511210

namespace A122181

/-- `lt[2, A072670(n)]+1` -/
def P2626701852205511210.Spec : Prop :=
  ∀ n, (P2626701852205511210.a n : ℤ) = A122181 (n + 1)

end A122181

/-! ## A122181.P12834655517182725087

`lt[0, A122180(n+1)]+1`
-/

namespace A122181.P12834655517182725087
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122180 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A122181.P12834655517182725087

namespace A122181

/-- `lt[0, A122180(n+1)]+1` -/
def P12834655517182725087.Spec : Prop :=
  ∀ n, (P12834655517182725087.a n : ℤ) = A122181 (n + 1)

end A122181

/-! ## A122181.P6943368236310003457

`lt[2, A088434(n+1)]+1`
-/

namespace A122181.P6943368236310003457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088434 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A122181.P6943368236310003457

namespace A122181

/-- `lt[2, A088434(n+1)]+1` -/
def P6943368236310003457.Spec : Prop :=
  ∀ n, (P6943368236310003457.a n : ℤ) = A122181 (n + 1)

end A122181

/-! ## A122181.P9505694215874115884

`lt[3, A045778(n+1)]+1`
-/

namespace A122181.P9505694215874115884
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A122181.P9505694215874115884

namespace A122181

/-- `lt[3, A045778(n+1)]+1` -/
def P9505694215874115884.Spec : Prop :=
  ∀ n, (P9505694215874115884.a n : ℤ) = A122181 (n + 1)

end A122181

/-! ## A122181.P18114863861302116633

`lt[A000069(n+1), A211110(n)]`
-/

namespace A122181.P18114863861302116633
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000069 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122181.P18114863861302116633

namespace A122181

/-- `lt[A000069(n+1), A211110(n)]` -/
def P18114863861302116633.Spec : Prop :=
  ∀ n, (P18114863861302116633.a n : ℤ) = A122181 (n + 1)

end A122181

/-! ## A122181.P10323342719474878667

`lt[2*A028310(n), A211110(n)]`
-/

namespace A122181.P10323342719474878667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122181.P10323342719474878667

namespace A122181

/-- `lt[2*A028310(n), A211110(n)]` -/
def P10323342719474878667.Spec : Prop :=
  ∀ n, (P10323342719474878667.a n : ℤ) = A122181 (n + 1)

end A122181

/-! ## A122181.P1827727555234270352

`lt[2*A028310(n), A293813(n)]`
-/

namespace A122181.P1827727555234270352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028310 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122181.P1827727555234270352

namespace A122181

/-- `lt[2*A028310(n), A293813(n)]` -/
def P1827727555234270352.Spec : Prop :=
  ∀ n, (P1827727555234270352.a n : ℤ) = A122181 (n + 1)

end A122181

/-! ## A122181.P8388085820981288734

`lt[10, A319410(n)]`
-/

namespace A122181.P8388085820981288734
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319410 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A122181.P8388085820981288734

namespace A122181

/-- `lt[10, A319410(n)]` -/
def P8388085820981288734.Spec : Prop :=
  ∀ n, (P8388085820981288734.a n : ℤ) = A122181 (n + 1)

end A122181

/-! ## A122181.P2482684359251846831

`lt[A000040(n+1), 2*A211110(n)]`
-/

namespace A122181.P2482684359251846831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A211110 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122181.P2482684359251846831

namespace A122181

/-- `lt[A000040(n+1), 2*A211110(n)]` -/
def P2482684359251846831.Spec : Prop :=
  ∀ n, (P2482684359251846831.a n : ℤ) = A122181 (n + 1)

end A122181

/-! ## A122181.P15013506753169073174

`lt[2*A233583(n+1), A293813(n)]`
-/

namespace A122181.P15013506753169073174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293813 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A122181.P15013506753169073174

namespace A122181

/-- `lt[2*A233583(n+1), A293813(n)]` -/
def P15013506753169073174.Spec : Prop :=
  ∀ n, (P15013506753169073174.a n : ℤ) = A122181 (n + 1)

end A122181

/-! ## A122181.P8890202988090174228

`lt[10, sqrt(A211437(n))]`
-/

namespace A122181.P8890202988090174228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A211437 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n

end

end A122181.P8890202988090174228

namespace A122181

/-- `lt[10, sqrt(A211437(n))]` -/
def P8890202988090174228.Spec : Prop :=
  ∀ n, (P8890202988090174228.a n : ℤ) = A122181 (n + 1)

end A122181

/-!
# A122182: Least positive number k such that 2^k mod k = 2n, or 0 if no such k exists.

The programs for A122182, there is no canonical definition to state claims against.
-/

/-! ## A122182.P5985160979301197815

`A036236(2*n)`
-/

namespace A122182.P5985160979301197815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036236 (2 * n)

end

end A122182.P5985160979301197815

/-! ## A122182.P17117165571660406136

`root(A036236(n+n), 2)²`
-/

namespace A122182.P17117165571660406136
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A036236 (n + n) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A122182.P17117165571660406136

/-! ## A122182.P16800932526737717473

`and(-1, A036236(A005843(n)))`
-/

namespace A122182.P16800932526737717473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A036236 (A005843 n).toNat)

end

end A122182.P16800932526737717473

/-! ## A122182.P14353171621083982527

`A036236(n+n)^A304042(n)`
-/

namespace A122182.P14353171621083982527
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036236 (n + n) : ℚ) ^ (A304042 n : ℤ)

end

end A122182.P14353171621083982527

/-! ## A122182.P7241203824633370774

`A036236(A004277(n))+floor(acot(n))`
-/

namespace A122182.P7241203824633370774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036236 (A004277 n).toNat + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A122182.P7241203824633370774

/-! ## A122182.P17700644183120229761

`A036236(n+n)/abs(A162285(n))`
-/

namespace A122182.P17700644183120229761
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036236 (n + n) : ℚ) / (|A162285 n| : ℚ)

end

end A122182.P17700644183120229761

/-! ## A122182.P1708210317501703212

`A036236(n+n)/A007318(∑[n])`
-/

namespace A122182.P1708210317501703212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036236 (n + n) : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A122182.P1708210317501703212

/-! ## A122182.P17097928298245933533

`A036236(n+n)/A304042(∑[n])`
-/

namespace A122182.P17097928298245933533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036236 (n + n) : ℚ) / (A304042 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A122182.P17097928298245933533

/-! ## A122182.P3174930093178133813

`A036236(A004277(n))+A000007(n)`
-/

namespace A122182.P3174930093178133813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036236 (A004277 n).toNat + A000007 n

end

end A122182.P3174930093178133813

/-! ## A122182.P3063678437700124243

`A036236(A004277(n))^and(1, A000040(n+1))`
-/

namespace A122182.P3063678437700124243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A036236 (A004277 n).toNat : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

end

end A122182.P3063678437700124243

/-!
# A122183: Primes p_i by index i for which the period length of 1/p_i is a semiprime.

The programs for A122183, there is no canonical definition to state claims against.
-/

/-! ## A122183.P11053468869854201689

`A000720(A129727(n+1))`
-/

namespace A122183.P11053468869854201689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A129727 (n + 1)).toNat

end

end A122183.P11053468869854201689

/-! ## A122183.P4879415207656879452

`A061395(p?[A129727(n+1)])`
-/

namespace A122183.P4879415207656879452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122183.P4879415207656879452

/-! ## A122183.P17779928985538553060

`A061395(2*A129727(n+1))`
-/

namespace A122183.P17779928985538553060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A129727 (n + 1)).toNat

end

end A122183.P17779928985538553060

/-! ## A122183.P10718004630258058055

`A058933(p?[A129727(n+1)])`
-/

namespace A122183.P10718004630258058055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058933 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122183.P10718004630258058055

/-! ## A122183.P15395674611351677857

`A003963(p?[A129727(n+1)])`
-/

namespace A122183.P15395674611351677857
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122183.P15395674611351677857

/-! ## A122183.P7590662600829998873

`A026233(p?[A129727(n+1)])`
-/

namespace A122183.P7590662600829998873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122183.P7590662600829998873

/-! ## A122183.P7329135267217820472

`A026238(p?[A129727(n+1)])`
-/

namespace A122183.P7329135267217820472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026238 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122183.P7329135267217820472

/-! ## A122183.P5027300504575834694

`A049084(p?[A129727(n+1)])`
-/

namespace A122183.P5027300504575834694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122183.P5027300504575834694

/-! ## A122183.P12598586276871925902

`A056239(p?[A129727(n+1)])`
-/

namespace A122183.P12598586276871925902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A122183.P12598586276871925902

/-! ## A122183.P18317812657444850151

`A036234(A129727(n+1)-1)`
-/

namespace A122183.P18317812657444850151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (A129727 (n + 1) - 1).toNat

end

end A122183.P18317812657444850151

/-!
# A122186: First row sum of the 4 X 4 matrix M^n, where M={{10, 9, 7, 4}, {9, 8, 6, 3}, {7, 6, 4, 2}, {4, 3, 2, 1}}.

The programs for A122186, there is no canonical definition to state claims against.
-/

/-! ## A122186.P17025967031045683564

`A006357(3*n)`
-/

namespace A122186.P17025967031045683564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006357 (3 * n)

end

end A122186.P17025967031045683564

/-! ## A122186.P6559859053188925131

`A373568(3*n)`
-/

namespace A122186.P6559859053188925131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373568 (3 * n)

end

end A122186.P6559859053188925131

/-! ## A122186.P4558063112725916838

`A060823(3*(n+1))/2`
-/

namespace A122186.P4558063112725916838
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060823 (3 * (n + 1)) : ℚ) / 2

end

end A122186.P4558063112725916838

/-! ## A122186.P3544462956001984862

`A187506(7*n+5+n+n)`
-/

namespace A122186.P3544462956001984862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187506 (7 * n + 5 + n + n)

end

end A122186.P3544462956001984862

/-! ## A122186.P1323191971843916467

`A038197(A017197(n))`
-/

namespace A122186.P1323191971843916467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038197 (A017197 n).toNat

end

end A122186.P1323191971843916467

/-! ## A122186.P8751278655334339848

`A187503(A017257(n))`
-/

namespace A122186.P8751278655334339848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187503 (A017257 n).toNat

end

end A122186.P8751278655334339848

/-!
# A122187: First row sum of the matrix M^n, where M is the 3 X 3 matrix [[6, 5, 3], [5, 4, 2], [3, 2, 1]] (n>=0).

The programs for A122187, the canonical program `A122187.P127893860585282245` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122187 has offset 1).

The definition of A122187 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122187.P127893860585282245

`11*a(n-1)+4*a(n-2)-a(n-3)` with `a(0)=1, a(1)=14, a(2)=157`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122187

/-- `11*a(n-1)+4*a(n-2)-a(n-3)` -/
def P127893860585282245.Spec : Prop :=
  ∀ n, P127893860585282245.a n = A122187 (n + 1)

theorem P127893860585282245.correct : P127893860585282245.Spec := by
  intro n
  simp only [A122187, Nat.add_sub_cancel]

end A122187

/-! ## A122187.P623475736973352923

`A006356(3*n)`
-/

namespace A122187.P623475736973352923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006356 (3 * n)

end

end A122187.P623475736973352923

namespace A122187

/-- `A006356(3*n)` -/
def P623475736973352923.Spec : Prop :=
  ∀ n, P623475736973352923.a n = A122187 (n + 1)

end A122187

/-! ## A122187.P15341709263072111161

`A373567(3*n)`
-/

namespace A122187.P15341709263072111161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373567 (3 * n)

end

end A122187.P15341709263072111161

namespace A122187

/-- `A373567(3*n)` -/
def P15341709263072111161.Spec : Prop :=
  ∀ n, P15341709263072111161.a n = A122187 (n + 1)

end A122187

/-! ## A122187.P535286553989020537

`A077998(3*n+1)`
-/

namespace A122187.P535286553989020537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077998 (3 * n + 1)

end

end A122187.P535286553989020537

namespace A122187

/-- `A077998(3*n+1)` -/
def P535286553989020537.Spec : Prop :=
  ∀ n, P535286553989020537.a n = A122187 (n + 1)

end A122187

/-! ## A122187.P13195985723256745002

`A106803(3*n+2)`
-/

namespace A122187.P13195985723256745002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106803 (3 * n + 2)

end

end A122187.P13195985723256745002

namespace A122187

/-- `A106803(3*n+2)` -/
def P13195985723256745002.Spec : Prop :=
  ∀ n, P13195985723256745002.a n = A122187 (n + 1)

end A122187

/-! ## A122187.P3997195071438507038

`A187068(6*(n+1))`
-/

namespace A122187.P3997195071438507038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187068 (6 * (n + 1))

end

end A122187.P3997195071438507038

namespace A122187

/-- `A187068(6*(n+1))` -/
def P3997195071438507038.Spec : Prop :=
  ∀ n, P3997195071438507038.a n = A122187 (n + 1)

end A122187

/-! ## A122187.P13741973664542953287

`A038196(2*(2*n+1+n))`
-/

namespace A122187.P13741973664542953287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038196 (2 * (2 * n + 1 + n))

end

end A122187.P13741973664542953287

namespace A122187

/-- `A038196(2*(2*n+1+n))` -/
def P13741973664542953287.Spec : Prop :=
  ∀ n, P13741973664542953287.a n = A122187 (n + 1)

end A122187

/-! ## A122187.P8254192186881170262

`A120771(A017197(n))`
-/

namespace A122187.P8254192186881170262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (A017197 n).toNat

end

end A122187.P8254192186881170262

namespace A122187

/-- `A120771(A017197(n))` -/
def P8254192186881170262.Spec : Prop :=
  ∀ n, P8254192186881170262.a n = A122187 (n + 1)

end A122187

/-! ## A122187.P5352750777586384736

`A120771(A017257(n))`
-/

namespace A122187.P5352750777586384736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120771 (A017257 n).toNat

end

end A122187.P5352750777586384736

namespace A122187

/-- `A120771(A017257(n))` -/
def P5352750777586384736.Spec : Prop :=
  ∀ n, P5352750777586384736.a n = A122187 (n + 1)

end A122187

/-! ## A122187.P5879981924367547371

`A187070(A016957(n))`
-/

namespace A122187.P5879981924367547371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187070 (A016957 n).toNat

end

end A122187.P5879981924367547371

namespace A122187

/-- `A187070(A016957(n))` -/
def P5879981924367547371.Spec : Prop :=
  ∀ n, P5879981924367547371.a n = A122187 (n + 1)

end A122187

/-!
# A122188: Triangle read by rows, formed from the coefficients of characteristic polynomials of the following sequence of matrices: 2 X 2 {{0, 1}, {1, 1}}, 3 X 3 {{0, 1, 0}, {0, 0, 1}, {1, 1, 1}}, 4 X 4 {{0, 1,0, 0}, {0, 0, 1, 0}, {0, 0, 0, 1}, {1, 1, 1, 1}}, 5 X 5 {{0, 1, 0, 0, 0}, {0, 0, 1, 0, 0}, {0, 0, 0, 1, 0}, {0, 0, 0, 0, 1}, {1, 1, 1, 1, 1}}, ...

The programs for A122188, the canonical program `A122188.P14169931470485161409` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122188 has offset 1).

The definition of A122188 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A122188.P17148826269884084014

`(-1)^∑[char[∑[n+2]]]`
-/

namespace A122188.P17148826269884084014
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122188.P17148826269884084014

namespace A122188

/-- `(-1)^∑[char[∑[n+2]]]` -/
def P17148826269884084014.Spec : Prop :=
  ∀ n, P17148826269884084014.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P16760657475335980762

`-a(n-∑[char[∑[n]]])` with `a(0)=1, a(1)=1`
-/

namespace A122188.P16760657475335980762
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -a (n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122188.P16760657475335980762

namespace A122188

/-- `-a(n-∑[char[∑[n]]])` -/
def P16760657475335980762.Spec : Prop :=
  ∀ n, P16760657475335980762.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P16706780048076298645

`∏[or(1, -(2*char[∑[n+2]]))]`
-/

namespace A122188.P16706780048076298645
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-((2 * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122188.P16706780048076298645

namespace A122188

/-- `∏[or(1, -(2*char[∑[n+2]]))]` -/
def P16706780048076298645.Spec : Prop :=
  ∀ n, P16706780048076298645.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P3516777553397648090

`1-2*∑[char[∑[n+2]]]%2`
-/

namespace A122188.P3516777553397648090
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((2 * ((∑ j ∈ Finset.range (n + 1), f1 j) % 2) : ℕ) : ℤ)

end

end A122188.P3516777553397648090

namespace A122188

/-- `1-2*∑[char[∑[n+2]]]%2` -/
def P3516777553397648090.Spec : Prop :=
  ∀ n, P3516777553397648090.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P7924840280376219510

`round((-1)^(∑[char[C(n, 2)-1]]-1))`
-/

namespace A122188.P7924840280376219510
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((-1 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ))

end

end A122188.P7924840280376219510

namespace A122188

/-- `round((-1)^(∑[char[C(n, 2)-1]]-1))` -/
def P7924840280376219510.Spec : Prop :=
  ∀ n, P7924840280376219510.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P8727839874311093372

`((-1)^(∑[char[∑[n-1]]]-1))%2`
-/

namespace A122188.P8727839874311093372
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((-1 : ℚ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1 : ℤ))) 2

end

end A122188.P8727839874311093372

namespace A122188

/-- `((-1)^(∑[char[∑[n-1]]]-1))%2` -/
def P8727839874311093372.Spec : Prop :=
  ∀ n, P8727839874311093372.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P280769566349711718

`round(-a(n-round(sqrt(2*(n+1)))))` with `a(0)=1, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A122188.P280769566349711718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -a ((n : ℤ) - SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ))).toNat

end

end A122188.P280769566349711718

namespace A122188

/-- `round(-a(n-round(sqrt(2*(n+1)))))` -/
def P280769566349711718.Spec : Prop :=
  ∀ n, P280769566349711718.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P7664934548102618545

`floor(-a(n+1-(comp[∑[n]]-n)))` with `a(0)=1, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A122188.P7664934548102618545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  -a ((n + 1 : ℤ) - ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ))).toNat

end

end A122188.P7664934548102618545

namespace A122188

/-- `floor(-a(n+1-(comp[∑[n]]-n)))` -/
def P7664934548102618545.Spec : Prop :=
  ∀ n, P7664934548102618545.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P5639703776168210007

`and(2, 2*(comp[∑[n-2]]-n)%4)-1`
-/

namespace A122188.P5639703776168210007
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (2 * Int.tmod ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - (n : ℤ)) 4) - 1

end

end A122188.P5639703776168210007

namespace A122188

/-- `and(2, 2*(comp[∑[n-2]]-n)%4)-1` -/
def P5639703776168210007.Spec : Prop :=
  ∀ n, P5639703776168210007.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P14169931470485161409

`Δ[-A010751(n+1)]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A122188

/-- `Δ[-A010751(n+1)]` -/
def P14169931470485161409.Spec : Prop :=
  ∀ n, P14169931470485161409.a n = A122188 (n + 1)

theorem P14169931470485161409.correct : P14169931470485161409.Spec := by
  intro n
  simp only [A122188, Nat.add_sub_cancel]

end A122188

/-! ## A122188.P3079752856112914683

`A014451(∑[char[∑[n+2]]])`
-/

namespace A122188.P3079752856112914683
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014451 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122188.P3079752856112914683

namespace A122188

/-- `A014451(∑[char[∑[n+2]]])` -/
def P3079752856112914683.Spec : Prop :=
  ∀ n, P3079752856112914683.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P17794181183105302454

`A033999(∑[char[∑[n+2]]])`
-/

namespace A122188.P17794181183105302454
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122188.P17794181183105302454

namespace A122188

/-- `A033999(∑[char[∑[n+2]]])` -/
def P17794181183105302454.Spec : Prop :=
  ∀ n, P17794181183105302454.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P3343811121676961371

`A062157(∑[char[∑[n-1]]])`
-/

namespace A122188.P3343811121676961371
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122188.P3343811121676961371

namespace A122188

/-- `A062157(∑[char[∑[n-1]]])` -/
def P3343811121676961371.Spec : Prop :=
  ∀ n, P3343811121676961371.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P17378912039573970462

`round(atan(atan(A008297(n+2))))`
-/

namespace A122188.P17378912039573970462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (Real.arctan (A008297 (n + 2) : ℝ)))

end

end A122188.P17378912039573970462

namespace A122188

/-- `round(atan(atan(A008297(n+2))))` -/
def P17378912039573970462.Spec : Prop :=
  ∀ n, P17378912039573970462.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P18025565294509650096

`-(-1)^A003056(n+1)`
-/

namespace A122188.P18025565294509650096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((-1 : ℚ) ^ (A003056 (n + 1) : ℤ))

end

end A122188.P18025565294509650096

namespace A122188

/-- `-(-1)^A003056(n+1)` -/
def P18025565294509650096.Spec : Prop :=
  ∀ n, P18025565294509650096.a n = (A122188 (n + 1) : ℚ)

end A122188

/-! ## A122188.P3122231210022398206

`-A033999(∑[char[∑[n-1]]])`
-/

namespace A122188.P3122231210022398206
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A033999 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A122188.P3122231210022398206

namespace A122188

/-- `-A033999(∑[char[∑[n-1]]])` -/
def P3122231210022398206.Spec : Prop :=
  ∀ n, P3122231210022398206.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P2117683748879543619

`∏[A008683(Δ[comp[∑[n+3]]])]`
-/

namespace A122188.P2117683748879543619
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A122188.P2117683748879543619

namespace A122188

/-- `∏[A008683(Δ[comp[∑[n+3]]])]` -/
def P2117683748879543619.Spec : Prop :=
  ∀ n, P2117683748879543619.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P8430390943314019750

`A015063((comp[∑[n-2]]+1)%(n+2))`
-/

namespace A122188.P8430390943314019750
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015063 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1) % (n + 2))

end

end A122188.P8430390943314019750

namespace A122188

/-- `A015063((comp[∑[n-2]]+1)%(n+2))` -/
def P8430390943314019750.Spec : Prop :=
  ∀ n, P8430390943314019750.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P8657626645113194024

`1-2%A020639(∑[char[∑[n-1]]]+1)`
-/

namespace A122188.P8657626645113194024
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod 2 (A020639 (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A122188.P8657626645113194024

namespace A122188

/-- `1-2%A020639(∑[char[∑[n-1]]]+1)` -/
def P8657626645113194024.Spec : Prop :=
  ∀ n, P8657626645113194024.a n = A122188 (n + 1)

end A122188

/-! ## A122188.P893193706202216685

`A020985(∑[A130123(n)])`
-/

namespace A122188.P893193706202216685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130123 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122188.P893193706202216685

namespace A122188

/-- `A020985(∑[A130123(n)])` -/
def P893193706202216685.Spec : Prop :=
  ∀ n, P893193706202216685.a n = A122188 (n + 1)

end A122188

/-!
# A122189: Heptanacci numbers: each term is the sum of the preceding 7 terms, with a(0),...,a(6) = 0,0,0,0,0,0,1.

The programs for A122189, the canonical program `A122189.P7650355426111617210` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122189 has offset 0).

The definition of A122189 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122189.P7650355426111617210

`2*a(n-1)-a(n-8)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=0, a(5)=0, a(6)=1, a(7)=1`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122189

/-- `2*a(n-1)-a(n-8)` -/
def P7650355426111617210.Spec : Prop :=
  ∀ n, P7650355426111617210.a n = A122189 n

theorem P7650355426111617210.correct : P7650355426111617210.Spec := by
  intro n
  simp only [A122189]

end A122189

/-! ## A122189.P10054406130909039580

`∑[A251710(abs(1-n))]`
-/

namespace A122189.P10054406130909039580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A122189.P10054406130909039580

namespace A122189

/-- `∑[A251710(abs(1-n))]` -/
def P10054406130909039580.Spec : Prop :=
  ∀ n, P10054406130909039580.a n = A122189 n

end A122189

/-! ## A122189.P935075270606431836

`A251714(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A122189.P935075270606431836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A251714 (n + 1) - a (n - 1)

end

end A122189.P935075270606431836

namespace A122189

/-- `A251714(n+1)-a(n-1)` -/
def P935075270606431836.Spec : Prop :=
  ∀ n, P935075270606431836.a n = A122189 n

end A122189

/-! ## A122189.P15436367647027405988

`∑[A251710(n)]-A251710(n)`
-/

namespace A122189.P15436367647027405988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A251710 n

end

end A122189.P15436367647027405988

namespace A122189

/-- `∑[A251710(n)]-A251710(n)` -/
def P15436367647027405988.Spec : Prop :=
  ∀ n, P15436367647027405988.a n = A122189 n

end A122189

/-! ## A122189.P13950539438755170667

`A251710(n+1)-A251711(n)`
-/

namespace A122189.P13950539438755170667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251710 (n + 1) - A251711 n

end

end A122189.P13950539438755170667

namespace A122189

/-- `A251710(n+1)-A251711(n)` -/
def P13950539438755170667.Spec : Prop :=
  ∀ n, P13950539438755170667.a n = A122189 n

end A122189

/-! ## A122189.P4553481846143425399

`A251711(n+1)-A251712(n)`
-/

namespace A122189.P4553481846143425399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251711 (n + 1) - A251712 n

end

end A122189.P4553481846143425399

namespace A122189

/-- `A251711(n+1)-A251712(n)` -/
def P4553481846143425399.Spec : Prop :=
  ∀ n, P4553481846143425399.a n = A122189 n

end A122189

/-! ## A122189.P17861613809333126846

`A251712(n+1)-A251713(n)`
-/

namespace A122189.P17861613809333126846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251712 (n + 1) - A251713 n

end

end A122189.P17861613809333126846

namespace A122189

/-- `A251712(n+1)-A251713(n)` -/
def P17861613809333126846.Spec : Prop :=
  ∀ n, P17861613809333126846.a n = A122189 n

end A122189

/-! ## A122189.P5892034692116922867

`A251713(n+1)-A251714(n)`
-/

namespace A122189.P5892034692116922867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251713 (n + 1) - A251714 n

end

end A122189.P5892034692116922867

namespace A122189

/-- `A251713(n+1)-A251714(n)` -/
def P5892034692116922867.Spec : Prop :=
  ∀ n, P5892034692116922867.a n = A122189 n

end A122189

/-! ## A122189.P1444220214780345164

`Δ[A060455(n)/6]`
-/

namespace A122189.P1444220214780345164
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060455 n : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122189.P1444220214780345164

namespace A122189

/-- `Δ[A060455(n)/6]` -/
def P1444220214780345164.Spec : Prop :=
  ∀ n, P1444220214780345164.a n = (A122189 n : ℚ)

end A122189

/-! ## A122189.P5594290066892051134

`A066178(n)-Δ[Δ[A066178(n)]]`
-/

namespace A122189.P5594290066892051134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066178 n - (f1 (n + 1) - f1 n)

end

end A122189.P5594290066892051134

namespace A122189

/-- `A066178(n)-Δ[Δ[A066178(n)]]` -/
def P5594290066892051134.Spec : Prop :=
  ∀ n, P5594290066892051134.a n = A122189 n

end A122189

/-! ## A122189.P6277086502395480371

`Δ[∑[A066178(n)]%A066178(n+1)]`
-/

namespace A122189.P6277086502395480371
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066178 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) (A066178 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122189.P6277086502395480371

namespace A122189

/-- `Δ[∑[A066178(n)]%A066178(n+1)]` -/
def P6277086502395480371.Spec : Prop :=
  ∀ n, P6277086502395480371.a n = A122189 n

end A122189

/-! ## A122189.P14988140245464064496

`Δ[A172317(n)-Δ[A172317(n)]]`
-/

namespace A122189.P14988140245464064496
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172317 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172317 n - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A122189.P14988140245464064496

namespace A122189

/-- `Δ[A172317(n)-Δ[A172317(n)]]` -/
def P14988140245464064496.Spec : Prop :=
  ∀ n, P14988140245464064496.a n = A122189 n

end A122189

/-! ## A122189.P13260741064777975308

`Δ[A151975(n)]-A151975(n)`
-/

namespace A122189.P13260741064777975308
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151975 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A151975 n

end

end A122189.P13260741064777975308

namespace A122189

/-- `Δ[A151975(n)]-A151975(n)` -/
def P13260741064777975308.Spec : Prop :=
  ∀ n, P13260741064777975308.a n = A122189 n

end A122189

/-! ## A122189.P811526548159262190

`A151975(n+1)-2*A151975(n)`
-/

namespace A122189.P811526548159262190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151975 (n + 1) - 2 * A151975 n

end

end A122189.P811526548159262190

namespace A122189

/-- `A151975(n+1)-2*A151975(n)` -/
def P811526548159262190.Spec : Prop :=
  ∀ n, P811526548159262190.a n = A122189 n

end A122189

/-!
# A122190: Expansion of q^(-1/4) * eta(q^2) * eta(q^5)^3 / (eta(q) * eta(q^10)) in powers of q.

The programs for A122190, the canonical program `A122190.P11139761942879363601` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122190 has offset 0).

The definition of A122190 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A053694, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122190.P11139761942879363601

`A053694(4*n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A122190

/-- `A053694(4*n)` -/
def P11139761942879363601.Spec : Prop :=
  ∀ n, P11139761942879363601.a n = A122190 n

theorem P11139761942879363601.correct : P11139761942879363601.Spec := by
  intro n
  simp only [A122190]

end A122190

/-! ## A122190.P1156885710337328898

`A094247(4*n+1)`
-/

namespace A122190.P1156885710337328898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094247 (4 * n + 1)

end

end A122190.P1156885710337328898

namespace A122190

/-- `A094247(4*n+1)` -/
def P1156885710337328898.Spec : Prop :=
  ∀ n, P1156885710337328898.a n = A122190 n

end A122190

/-! ## A122190.P7193226856451069183

`A035165(3*n+n+1)`
-/

namespace A122190.P7193226856451069183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035165 (3 * n + (n + 1))

end

end A122190.P7193226856451069183

namespace A122190

/-- `A035165(3*n+n+1)` -/
def P7193226856451069183.Spec : Prop :=
  ∀ n, P7193226856451069183.a n = A122190 n

end A122190

/-! ## A122190.P558665443817145505

`abs(A094247(A267872(2*n)))`
-/

namespace A122190.P558665443817145505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A094247 (A267872 (2 * n)).toNat|

end

end A122190.P558665443817145505

namespace A122190

/-- `abs(A094247(A267872(2*n)))` -/
def P558665443817145505.Spec : Prop :=
  ∀ n, P558665443817145505.a n = A122190 n

end A122190

/-! ## A122190.P17026394871905889851

`A002654(A132739(4*n+1))`
-/

namespace A122190.P17026394871905889851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A132739 (4 * n + 1)).toNat

end

end A122190.P17026394871905889851

namespace A122190

/-- `A002654(A132739(4*n+1))` -/
def P17026394871905889851.Spec : Prop :=
  ∀ n, P17026394871905889851.a n = A122190 n

end A122190

/-! ## A122190.P2383509372799692137

`A002654(A132740(4*n+1))`
-/

namespace A122190.P2383509372799692137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002654 (A132740 (4 * n + 1)).toNat

end

end A122190.P2383509372799692137

namespace A122190

/-- `A002654(A132740(4*n+1))` -/
def P2383509372799692137.Spec : Prop :=
  ∀ n, P2383509372799692137.a n = A122190 n

end A122190

/-! ## A122190.P6718902860905433134

`A035184(4*n+1)/A055457(4*n+1)`
-/

namespace A122190.P6718902860905433134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035184 (4 * n + 1) : ℚ) / (A055457 (4 * n + 1) : ℚ)

end

end A122190.P6718902860905433134

namespace A122190

/-- `A035184(4*n+1)/A055457(4*n+1)` -/
def P6718902860905433134.Spec : Prop :=
  ∀ n, P6718902860905433134.a n = (A122190 n : ℚ)

end A122190

/-! ## A122190.P11647224762882661602

`A113652(4*n+1)/A055457(4*n+1)`
-/

namespace A122190.P11647224762882661602
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A113652 (4 * n + 1) : ℚ) / (A055457 (4 * n + 1) : ℚ)

end

end A122190.P11647224762882661602

namespace A122190

/-- `A113652(4*n+1)/A055457(4*n+1)` -/
def P11647224762882661602.Spec : Prop :=
  ∀ n, P11647224762882661602.a n = (A122190 n : ℚ)

end A122190

/-! ## A122190.P9372245044467403157

`A008441(A016861(n))-A008441(n)`
-/

namespace A122190.P9372245044467403157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A016861 n).toNat - A008441 n

end

end A122190.P9372245044467403157

namespace A122190

/-- `A008441(A016861(n))-A008441(n)` -/
def P9372245044467403157.Spec : Prop :=
  ∀ n, P9372245044467403157.a n = A122190 n

end A122190

/-! ## A122190.P15419417618989076553

`A008441(A016813(n)+n)-A008441(n)`
-/

namespace A122190.P15419417618989076553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008441 (A016813 n + (n : ℤ)).toNat - A008441 n

end

end A122190.P15419417618989076553

namespace A122190

/-- `A008441(A016813(n)+n)-A008441(n)` -/
def P15419417618989076553.Spec : Prop :=
  ∀ n, P15419417618989076553.a n = A122190 n

end A122190

/-!
# A122191: Triangle read by rows: T(n,m) = number of positive divisors of m that are coprime to n.

The programs for A122191, there is no canonical definition to state claims against.
-/

/-! ## A122191.P15977953726428943291

`A000005(gcd(A128227(n), A153187(n)))`
-/

namespace A122191.P15977953726428943291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A128227 n) (A153187 n))

end

end A122191.P15977953726428943291

/-! ## A122191.P7148546993555850393

`A000005(gcd(A002260(n+1), A156953(n+1)))`
-/

namespace A122191.P7148546993555850393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A002260 (n + 1)) (A156953 (n + 1)))

end

end A122191.P7148546993555850393

/-! ## A122191.P11128172408574685781

`A000005(gcd(A164306(n+1), A339577(n+1)))`
-/

namespace A122191.P11128172408574685781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A164306 (n + 1)) (A339577 (n + 1)))

end

end A122191.P11128172408574685781

/-! ## A122191.P331836843934246829

`gcd(A000005(A164306(n+1)), A342202(n+2))`
-/

namespace A122191.P331836843934246829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000005 (A164306 (n + 1)).toNat) (A342202 (n + 2))

end

end A122191.P331836843934246829

/-! ## A122191.P17229086154648405026

`A000005(A128227(n)^A049763(n+1)²)`
-/

namespace A122191.P17229086154648405026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((A128227 n : ℚ) ^ (A049763 (n + 1) ^ 2 : ℤ))).toNat

end

end A122191.P17229086154648405026

/-!
# A122192: Sum of the n-th powers of the roots of the (reduced) weight enumerator of the extended Golay code (1 + 759*x^2 + 2576*x^3 + 759*x^4 + x^6).

The programs for A122192, there is no canonical definition to state claims against.
-/

/-! ## A122192.P7271254864942546812

`6*A123013(n)`
-/

namespace A122192.P7271254864942546812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A123013 n

end

end A122192.P7271254864942546812

/-!
# A122193: Triangle T(n,k) of number of loopless multigraphs with n labeled edges and k labeled vertices and without isolated vertices, n >= 1; 2 <= k <= 2*n.

The programs for A122193, there is no canonical definition to state claims against.
-/

/-! ## A122193.P6445913979164146690

`A000217(A071797(n+1))*A087127(n+1)`
-/

namespace A122193.P6445913979164146690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A071797 (n + 1)).toNat * A087127 (n + 1)

end

end A122193.P6445913979164146690

/-! ## A122193.P8208693965461959245

`∑{d}[A140214(A090245(n)+1), #]`
-/

namespace A122193.P8208693965461959245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140214 (A090245 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A122193.P8208693965461959245

/-! ## A122193.P2516926509768450545

`A278541(A079194(n))+A079194(n)`
-/

namespace A122193.P2516926509768450545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278541 (A079194 n).toNat + A079194 n

end

end A122193.P2516926509768450545

/-!
# A122194: Numbers that are the sum of exactly two sets of Fibonacci numbers.

The programs for A122194, the canonical program `A122194.P438471234878958357` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122194 has offset 1).

The definition of A122194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122194.P438471234878958357

`a(n-2)+a(n-4)+1` with `a(0)=3, a(1)=5, a(2)=6, a(3)=9`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122194

/-- `a(n-2)+a(n-4)+1` -/
def P438471234878958357.Spec : Prop :=
  ∀ n, (P438471234878958357.a n : ℤ) = A122194 (n + 1)

theorem P438471234878958357.correct : P438471234878958357.Spec := by
  intro n
  simp only [A122194, Nat.add_sub_cancel]

end A122194

/-! ## A122194.P15142738731949145453

`A272632(n+1)-1`
-/

namespace A122194.P15142738731949145453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272632 (n + 1) - 1

end

end A122194.P15142738731949145453

namespace A122194

/-- `A272632(n+1)-1` -/
def P15142738731949145453.Spec : Prop :=
  ∀ n, P15142738731949145453.a n = A122194 (n + 1)

end A122194

/-! ## A122194.P1408719537161684652

`ceil(ϕ*a(n-2))` with `a(0)=3, a(1)=5, a(2)=6`
-/

namespace A122194.P1408719537161684652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 5, 6] fun n a =>
  ⌈Real.goldenRatio * (a (n - 2) : ℝ)⌉

end

end A122194.P1408719537161684652

namespace A122194

/-- `ceil(ϕ*a(n-2))` -/
def P1408719537161684652.Spec : Prop :=
  ∀ n, P1408719537161684652.a n = A122194 (n + 1)

end A122194

/-! ## A122194.P14359571815364355881

`∑[A053602(xor(1, n+1))]+3`
-/

namespace A122194.P14359571815364355881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (Nat.xor 1 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A122194.P14359571815364355881

namespace A122194

/-- `∑[A053602(xor(1, n+1))]+3` -/
def P14359571815364355881.Spec : Prop :=
  ∀ n, P14359571815364355881.a n = A122194 (n + 1)

end A122194

/-! ## A122194.P7490338380246141418

`∑[A000045(val(A164654(n+1), 2))]+3`
-/

namespace A122194.P7490338380246141418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (SequenceMachineLib.valuation (A164654 (n + 1)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A122194.P7490338380246141418

namespace A122194

/-- `∑[A000045(val(A164654(n+1), 2))]+3` -/
def P7490338380246141418.Spec : Prop :=
  ∀ n, P7490338380246141418.a n = A122194 (n + 1)

end A122194

/-! ## A122194.P8831081760652067443

`record[A035506(n+2)-1]`
-/

namespace A122194.P8831081760652067443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035506 (n + 2) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A122194.P8831081760652067443

namespace A122194

/-- `record[A035506(n+2)-1]` -/
def P8831081760652067443.Spec : Prop :=
  ∀ n, P8831081760652067443.a n = A122194 (n + 1)

end A122194

/-! ## A122194.P4974488224216560860

`A179242(∑[A152271(n)])-1`
-/

namespace A122194.P4974488224216560860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1

end

end A122194.P4974488224216560860

namespace A122194

/-- `A179242(∑[A152271(n)])-1` -/
def P4974488224216560860.Spec : Prop :=
  ∀ n, P4974488224216560860.a n = A122194 (n + 1)

end A122194

/-! ## A122194.P16150719485454534299

`A179242(A117142(n+1))-1`
-/

namespace A122194.P16150719485454534299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (A117142 (n + 1)).toNat - 1

end

end A122194.P16150719485454534299

namespace A122194

/-- `A179242(A117142(n+1))-1` -/
def P16150719485454534299.Spec : Prop :=
  ∀ n, P16150719485454534299.a n = A122194 (n + 1)

end A122194

/-! ## A122194.P9321897470562983984

`∩[A007298(n+1), A179242(n+1)]-1`
-/

namespace A122194.P9321897470562983984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179242 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A122194.P9321897470562983984

namespace A122194

/-- `∩[A007298(n+1), A179242(n+1)]-1` -/
def P9321897470562983984.Spec : Prop :=
  ∀ n, P9321897470562983984.a n = A122194 (n + 1)

end A122194

/-! ## A122194.P14658404453993089533

`A083412(A165157(n+1))-1`
-/

namespace A122194.P14658404453993089533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083412 (A165157 (n + 1)).toNat - 1

end

end A122194.P14658404453993089533

namespace A122194

/-- `A083412(A165157(n+1))-1` -/
def P14658404453993089533.Spec : Prop :=
  ∀ n, P14658404453993089533.a n = A122194 (n + 1)

end A122194

/-! ## A122194.P7038390516814930446

`A059389(A101881(n+1)+1)-1`
-/

namespace A122194.P7038390516814930446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059389 (A101881 (n + 1) + 1).toNat - 1

end

end A122194.P7038390516814930446

namespace A122194

/-- `A059389(A101881(n+1)+1)-1` -/
def P7038390516814930446.Spec : Prop :=
  ∀ n, P7038390516814930446.a n = A122194 (n + 1)

end A122194

/-!
# A122195: Numbers that are the sum of exactly 3 sets of Fibonacci numbers.

The programs for A122195, the canonical program `A122195.P12776214829930131297` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122195 has offset 1).

The definition of A122195 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122195.P12776214829930131297

`a(n-4)+a(n-8)+1` with `a(0)=8, a(1)=11, a(2)=13, a(3)=14, a(4)=18, a(5)=19, a(6)=22, a(7)=23, a(8)=30`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122195

/-- `a(n-4)+a(n-8)+1` -/
def P12776214829930131297.Spec : Prop :=
  ∀ n, (P12776214829930131297.a n : ℤ) = A122195 (n + 1)

theorem P12776214829930131297.correct : P12776214829930131297.Spec := by
  intro n
  simp only [A122195, Nat.add_sub_cancel]

end A122195

/-! ## A122195.P15371239298702997353

`eq[3, A093998(n)+A093997(n)]`
-/

namespace A122195.P15371239298702997353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093998 n + A093997 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122195.P15371239298702997353

namespace A122195

/-- `eq[3, A093998(n)+A093997(n)]` -/
def P15371239298702997353.Spec : Prop :=
  ∀ n, (P15371239298702997353.a n : ℤ) = A122195 (n + 1)

end A122195

/-! ## A122195.P17834794725760242216

`eq[3, A000119(n)]`
-/

namespace A122195.P17834794725760242216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122195.P17834794725760242216

namespace A122195

/-- `eq[3, A000119(n)]` -/
def P17834794725760242216.Spec : Prop :=
  ∀ n, (P17834794725760242216.a n : ℤ) = A122195 (n + 1)

end A122195

/-! ## A122195.P13948241232442379267

`eq[3, A000121(A019586(n+1))]`
-/

namespace A122195.P13948241232442379267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 (A019586 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122195.P13948241232442379267

namespace A122195

/-- `eq[3, A000121(A019586(n+1))]` -/
def P13948241232442379267.Spec : Prop :=
  ∀ n, (P13948241232442379267.a n : ℤ) = A122195 (n + 1)

end A122195

/-! ## A122195.P3772238326566154146

`eq[3, A239002(floor((n+1)/ϕ+n))]`
-/

namespace A122195.P3772238326566154146
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239002 ⌊(n + 1 : ℝ) / Real.goldenRatio + (n : ℝ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122195.P3772238326566154146

namespace A122195

/-- `eq[3, A239002(floor((n+1)/ϕ+n))]` -/
def P3772238326566154146.Spec : Prop :=
  ∀ n, (P3772238326566154146.a n : ℤ) = A122195 (n + 1)

end A122195

/-! ## A122195.P16993103001788570514

`eq[3, A239003(A003622(n+1)-1)]`
-/

namespace A122195.P16993103001788570514
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A003622 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122195.P16993103001788570514

namespace A122195

/-- `eq[3, A239003(A003622(n+1)-1)]` -/
def P16993103001788570514.Spec : Prop :=
  ∀ n, (P16993103001788570514.a n : ℤ) = A122195 (n + 1)

end A122195

/-! ## A122195.P7618679816527645062

`eq[3, A239003(A001950(n+1)-2)]`
-/

namespace A122195.P7618679816527645062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A001950 (n + 1) - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122195.P7618679816527645062

namespace A122195

/-- `eq[3, A239003(A001950(n+1)-2)]` -/
def P7618679816527645062.Spec : Prop :=
  ∀ n, (P7618679816527645062.a n : ℤ) = A122195 (n + 1)

end A122195

/-! ## A122195.P5034672107724975483

`eq[3, A239003(A000201(n+1)-1+n)]`
-/

namespace A122195.P5034672107724975483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239003 (A000201 (n + 1) - 1 + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A122195.P5034672107724975483

namespace A122195

/-- `eq[3, A239003(A000201(n+1)-1+n)]` -/
def P5034672107724975483.Spec : Prop :=
  ∀ n, (P5034672107724975483.a n : ℤ) = A122195 (n + 1)

end A122195

/-!
# A122196: Fractal sequence: count down by 2's from successive integers.

The programs for A122196, the canonical program `A122196.P6220823696756244258` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122196 has offset 1).

The definition of A122196 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122196.P6220823696756244258

`2*(1-A122197(n+1))+A000267(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A122196

/-- `2*(1-A122197(n+1))+A000267(n)` -/
def P6220823696756244258.Spec : Prop :=
  ∀ n, P6220823696756244258.a n = A122196 (n + 1)

theorem P6220823696756244258.correct : P6220823696756244258.Spec := by
  intro n
  simp only [A122196, Nat.add_sub_cancel]

end A122196

/-! ## A122196.P2990587107455404102

`A082375(n)+1`
-/

namespace A122196.P2990587107455404102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082375 n + 1

end

end A122196.P2990587107455404102

namespace A122196

/-- `A082375(n)+1` -/
def P2990587107455404102.Spec : Prop :=
  ∀ n, P2990587107455404102.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P14163714940823906035

`ceil(A152204(n)/2)`
-/

namespace A122196.P14163714940823906035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A152204 n : ℚ) / 2⌉

end

end A122196.P14163714940823906035

namespace A122196

/-- `ceil(A152204(n)/2)` -/
def P14163714940823906035.Spec : Prop :=
  ∀ n, P14163714940823906035.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P13465588794042271601

`(A209634(n+1)+2)/3`
-/

namespace A122196.P13465588794042271601
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A209634 (n + 1) + 2 : ℚ) / 3

end

end A122196.P13465588794042271601

namespace A122196

/-- `(A209634(n+1)+2)/3` -/
def P13465588794042271601.Spec : Prop :=
  ∀ n, P13465588794042271601.a n = (A122196 (n + 1) : ℚ)

end A122196

/-! ## A122196.P9674417022126152119

`val(A181666(n+1), 2)+1`
-/

namespace A122196.P9674417022126152119
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A181666 (n + 1)).toNat 2 + 1

end

end A122196.P9674417022126152119

namespace A122196

/-- `val(A181666(n+1), 2)+1` -/
def P9674417022126152119.Spec : Prop :=
  ∀ n, (P9674417022126152119.a n : ℤ) = A122196 (n + 1)

end A122196

/-! ## A122196.P10125053033495317763

`A000463(A152204(n))`
-/

namespace A122196.P10125053033495317763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A152204 n).toNat

end

end A122196.P10125053033495317763

namespace A122196

/-- `A000463(A152204(n))` -/
def P10125053033495317763.Spec : Prop :=
  ∀ n, P10125053033495317763.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P16965810311840715317

`A000463(A084346(n+1))`
-/

namespace A122196.P16965810311840715317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A084346 (n + 1)).toNat

end

end A122196.P16965810311840715317

namespace A122196

/-- `A000463(A084346(n+1))` -/
def P16965810311840715317.Spec : Prop :=
  ∀ n, P16965810311840715317.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P11532472041140573418

`A001281(A152204(n)+1)`
-/

namespace A122196.P11532472041140573418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A152204 n + 1).toNat

end

end A122196.P11532472041140573418

namespace A122196

/-- `A001281(A152204(n)+1)` -/
def P11532472041140573418.Spec : Prop :=
  ∀ n, P11532472041140573418.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P8440214385640786523

`A004525(A152204(n)+1)`
-/

namespace A122196.P8440214385640786523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A152204 n + 1).toNat

end

end A122196.P8440214385640786523

namespace A122196

/-- `A004525(A152204(n)+1)` -/
def P8440214385640786523.Spec : Prop :=
  ∀ n, P8440214385640786523.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P11499146646008288096

`A004526(A152204(n)+1)`
-/

namespace A122196.P11499146646008288096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A152204 n + 1).toNat

end

end A122196.P11499146646008288096

namespace A122196

/-- `A004526(A152204(n)+1)` -/
def P11499146646008288096.Spec : Prop :=
  ∀ n, P11499146646008288096.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P10555002938973202144

`A014682(A152204(n)+1)`
-/

namespace A122196.P10555002938973202144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A152204 n + 1).toNat

end

end A122196.P10555002938973202144

namespace A122196

/-- `A014682(A152204(n)+1)` -/
def P10555002938973202144.Spec : Prop :=
  ∀ n, P10555002938973202144.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P15705989344535411535

`A008620(A209634(n+1))`
-/

namespace A122196.P15705989344535411535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (A209634 (n + 1)).toNat

end

end A122196.P15705989344535411535

namespace A122196

/-- `A008620(A209634(n+1))` -/
def P15705989344535411535.Spec : Prop :=
  ∀ n, P15705989344535411535.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P6812657062664324321

`A220096(A152204(n)+1)`
-/

namespace A122196.P6812657062664324321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220096 (A152204 n + 1).toNat

end

end A122196.P6812657062664324321

namespace A122196

/-- `A220096(A152204(n)+1)` -/
def P6812657062664324321.Spec : Prop :=
  ∀ n, P6812657062664324321.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P3805649331902950539

`A004524(A152204(n)+2)`
-/

namespace A122196.P3805649331902950539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A152204 n + 2).toNat

end

end A122196.P3805649331902950539

namespace A122196

/-- `A004524(A152204(n)+2)` -/
def P3805649331902950539.Spec : Prop :=
  ∀ n, P3805649331902950539.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P5314512138537116349

`A080513(A152204(n)-1)`
-/

namespace A122196.P5314512138537116349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080513 (A152204 n - 1).toNat

end

end A122196.P5314512138537116349

namespace A122196

/-- `A080513(A152204(n)-1)` -/
def P5314512138537116349.Spec : Prop :=
  ∀ n, P5314512138537116349.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P3781904722622889238

`A008619(2*A082375(n))`
-/

namespace A122196.P3781904722622889238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A082375 n).toNat

end

end A122196.P3781904722622889238

namespace A122196

/-- `A008619(2*A082375(n))` -/
def P3781904722622889238.Spec : Prop :=
  ∀ n, P3781904722622889238.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P2031038999960179883

`A028242(2*A082375(n))`
-/

namespace A122196.P2031038999960179883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A082375 n).toNat

end

end A122196.P2031038999960179883

namespace A122196

/-- `A028242(2*A082375(n))` -/
def P2031038999960179883.Spec : Prop :=
  ∀ n, P2031038999960179883.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P9143940934345467994

`A152204(n)-A082375(n)`
-/

namespace A122196.P9143940934345467994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152204 n - A082375 n

end

end A122196.P9143940934345467994

namespace A122196

/-- `A152204(n)-A082375(n)` -/
def P9143940934345467994.Spec : Prop :=
  ∀ n, P9143940934345467994.a n = A122196 (n + 1)

end A122196

/-! ## A122196.P17903043661831668351

`A298637(n)/A008315(n)`
-/

namespace A122196.P17903043661831668351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A298637 n : ℚ) / (A008315 n : ℚ)

end

end A122196.P17903043661831668351

namespace A122196

/-- `A298637(n)/A008315(n)` -/
def P17903043661831668351.Spec : Prop :=
  ∀ n, P17903043661831668351.a n = (A122196 (n + 1) : ℚ)

end A122196

/-! ## A122196.P16105411840776106073

`A002265(2*(A152204(n)+1))`
-/

namespace A122196.P16105411840776106073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A152204 n + 1)).toNat

end

end A122196.P16105411840776106073

namespace A122196

/-- `A002265(2*(A152204(n)+1))` -/
def P16105411840776106073.Spec : Prop :=
  ∀ n, P16105411840776106073.a n = A122196 (n + 1)

end A122196

/-!
# A122197: Fractal sequence: count up to successive integers twice.

The programs for A122197, the canonical program `A122197.P4223396972267691169` is in `Seq.B000.C018`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122197 has offset 1).

The definition of A122197 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A122197.P4223396972267691169

`n+1-floor(sqrt(n+1)+1/2)*floor(sqrt(n))`

The canonical program, it is in `Seq.B000.C018`.
-/

namespace A122197

/-- `n+1-floor(sqrt(n+1)+1/2)*floor(sqrt(n))` -/
def P4223396972267691169.Spec : Prop :=
  ∀ n, P4223396972267691169.a n = A122197 (n + 1)

theorem P4223396972267691169.correct : P4223396972267691169.Spec := by
  intro n
  simp only [A122197, Nat.add_sub_cancel]

end A122197

/-! ## A122197.P18208872457799214892

`A339399(2*n+1)`
-/

namespace A122197.P18208872457799214892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339399 (2 * n + 1)

end

end A122197.P18208872457799214892

namespace A122197

/-- `A339399(2*n+1)` -/
def P18208872457799214892.Spec : Prop :=
  ∀ n, P18208872457799214892.a n = A122197 (n + 1)

end A122197

/-! ## A122197.P7582966514608113958

`sqrt(A126114(n+1))`
-/

namespace A122197.P7582966514608113958
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A126114 (n + 1) : ℝ)

end

end A122197.P7582966514608113958

namespace A122197

/-- `sqrt(A126114(n+1))` -/
def P7582966514608113958.Spec : Prop :=
  ∀ n, P7582966514608113958.a n = (A122197 (n + 1) : ℝ)

end A122197

/-! ## A122197.P9454414207790056171

`A008619(A384688(n))`
-/

namespace A122197.P9454414207790056171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A384688 n).toNat

end

end A122197.P9454414207790056171

namespace A122197

/-- `A008619(A384688(n))` -/
def P9454414207790056171.Spec : Prop :=
  ∀ n, P9454414207790056171.a n = A122197 (n + 1)

end A122197

/-! ## A122197.P1843915988674221836

`A391403(n)/A055151(n)`
-/

namespace A122197.P1843915988674221836
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A391403 n : ℚ) / (A055151 n : ℚ)

end

end A122197.P1843915988674221836

namespace A122197

/-- `A391403(n)/A055151(n)` -/
def P1843915988674221836.Spec : Prop :=
  ∀ n, P1843915988674221836.a n = (A122197 (n + 1) : ℚ)

end A122197

/-! ## A122197.P11734254773743017871

`A002260(∑[1-A037213(n)])`
-/

namespace A122197.P11734254773743017871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A037213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A122197.P11734254773743017871

namespace A122197

/-- `A002260(∑[1-A037213(n)])` -/
def P11734254773743017871.Spec : Prop :=
  ∀ n, P11734254773743017871.a n = A122197 (n + 1)

end A122197

/-! ## A122197.P12871812925535760649

`A349520(A196199(n)+1+n)`
-/

namespace A122197.P12871812925535760649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349520 (A196199 n + 1 + (n : ℤ)).toNat

end

end A122197.P12871812925535760649

namespace A122197

/-- `A349520(A196199(n)+1+n)` -/
def P12871812925535760649.Spec : Prop :=
  ∀ n, P12871812925535760649.a n = A122197 (n + 1)

end A122197

/-! ## A122197.P2754220949784305971

`A165776(n)%A307136(n+1)`
-/

namespace A122197.P2754220949784305971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A165776 n) (A307136 (n + 1))

end

end A122197.P2754220949784305971

namespace A122197

/-- `A165776(n)%A307136(n+1)` -/
def P2754220949784305971.Spec : Prop :=
  ∀ n, P2754220949784305971.a n = A122197 (n + 1)

end A122197

/-! ## A122197.P2413855778450677404

`A007606(n+1)%A027434(n+1)`
-/

namespace A122197.P2413855778450677404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007606 (n + 1)) (A027434 (n + 1))

end

end A122197.P2413855778450677404

namespace A122197

/-- `A007606(n+1)%A027434(n+1)` -/
def P2413855778450677404.Spec : Prop :=
  ∀ n, P2413855778450677404.a n = A122197 (n + 1)

end A122197

/-! ## A122197.P6972093771332877634

`A049068(n+1)%A368942(n+1)`
-/

namespace A122197.P6972093771332877634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A049068 (n + 1)) (A368942 (n + 1))

end

end A122197.P6972093771332877634

namespace A122197

/-- `A049068(n+1)%A368942(n+1)` -/
def P6972093771332877634.Spec : Prop :=
  ∀ n, P6972093771332877634.a n = A122197 (n + 1)

end A122197

/-! ## A122197.P9701969299008882072

`A002260(n-A000217(floor(sqrt(n)))+1)`
-/

namespace A122197.P9701969299008882072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 ((n : ℤ) - A000217 (Nat.sqrt n) + 1).toNat

end

end A122197.P9701969299008882072

namespace A122197

/-- `A002260(n-A000217(floor(sqrt(n)))+1)` -/
def P9701969299008882072.Spec : Prop :=
  ∀ n, P9701969299008882072.a n = A122197 (n + 1)

end A122197

/-!
# A122198: Permutation of natural numbers: a recursed variant of A122155.

The programs for A122198, the canonical program `A122198.P6463846619944974187` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122198 has offset 0).

The definition of A122198 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122155, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122198.P6463846619944974187

`A122155(A053644(n)+a(A053645(n)))` with `a(0)=0`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A122198

/-- `A122155(A053644(n)+a(A053645(n)))` -/
def P6463846619944974187.Spec : Prop :=
  ∀ n, P6463846619944974187.a n = A122198 n

theorem P6463846619944974187.correct : P6463846619944974187.Spec := by
  intro n
  simp only [A122198]

end A122198

/-! ## A122198.P10800141840539049180

`A057889(A231551(A057889(n)))`
-/

namespace A122198.P10800141840539049180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A231551 (A057889 n).toNat).toNat

end

end A122198.P10800141840539049180

namespace A122198

/-- `A057889(A231551(A057889(n)))` -/
def P10800141840539049180.Spec : Prop :=
  ∀ n, P10800141840539049180.a n = A122198 n

end A122198

/-! ## A122198.P4169248048659508705

`A006068(A377440(A367307(n)))`
-/

namespace A122198.P4169248048659508705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006068 (A377440 (A367307 n).toNat).toNat

end

end A122198.P4169248048659508705

namespace A122198

/-- `A006068(A377440(A367307(n)))` -/
def P4169248048659508705.Spec : Prop :=
  ∀ n, P4169248048659508705.a n = A122198 n

end A122198

/-! ## A122198.P3201091873823072

`A285326(A006068(n))+n-A285326(n)`
-/

namespace A122198.P3201091873823072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285326 (A006068 n).toNat + ((n : ℤ) - A285326 n)

end

end A122198.P3201091873823072

namespace A122198

/-- `A285326(A006068(n))+n-A285326(n)` -/
def P3201091873823072.Spec : Prop :=
  ∀ n, P3201091873823072.a n = A122198 n

end A122198

/-! ## A122198.P8984962130576432067

`abs(A104895(A241816(2*n)))`
-/

namespace A122198.P8984962130576432067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104895 (A241816 (2 * n)).toNat|

end

end A122198.P8984962130576432067

namespace A122198

/-- `abs(A104895(A241816(2*n)))` -/
def P8984962130576432067.Spec : Prop :=
  ∀ n, P8984962130576432067.a n = A122198 n

end A122198

/-! ## A122198.P11267815241596288482

`lcm(A033999(n), A104895(A241816(2*n)))`
-/

namespace A122198.P11267815241596288482
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A104895 (A241816 (2 * n)).toNat)

end

end A122198.P11267815241596288482

namespace A122198

/-- `lcm(A033999(n), A104895(A241816(2*n)))` -/
def P11267815241596288482.Spec : Prop :=
  ∀ n, (P11267815241596288482.a n : ℤ) = A122198 n

end A122198

/-! ## A122198.P7894919496267901950

`∑{d}[A104895(A241816(2*n)), A000010(#)]`
-/

namespace A122198.P7894919496267901950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104895 (A241816 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A122198.P7894919496267901950

namespace A122198

/-- `∑{d}[A104895(A241816(2*n)), A000010(#)]` -/
def P7894919496267901950.Spec : Prop :=
  ∀ n, P7894919496267901950.a n = A122198 n

end A122198

/-! ## A122198.P8841649872883680299

`ceil(A006068(A285326(n)+n)/2)`
-/

namespace A122198.P8841649872883680299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006068 (A285326 n + (n : ℤ)).toNat : ℚ) / 2⌉

end

end A122198.P8841649872883680299

namespace A122198

/-- `ceil(A006068(A285326(n)+n)/2)` -/
def P8841649872883680299.Spec : Prop :=
  ∀ n, P8841649872883680299.a n = A122198 n

end A122198

/-! ## A122198.P9060558530754497977

`A160638(A231551(A160638(n)))`
-/

namespace A122198.P9060558530754497977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160638 (A231551 (A160638 n).toNat).toNat

end

end A122198.P9060558530754497977

namespace A122198

/-- `A160638(A231551(A160638(n)))` -/
def P9060558530754497977.Spec : Prop :=
  ∀ n, P9060558530754497977.a n = A122198 n

end A122198

/-! ## A122198.P3437173275545679100

`A094114(A186776(2*n+1)+A061393(n))`
-/

namespace A122198.P3437173275545679100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094114 (A186776 (2 * n + 1) + A061393 n).toNat

end

end A122198.P3437173275545679100

namespace A122198

/-- `A094114(A186776(2*n+1)+A061393(n))` -/
def P3437173275545679100.Spec : Prop :=
  ∀ n, P3437173275545679100.a n = A122198 n

end A122198

/-!
# A122199: Permutation of natural numbers: a recursed variant of A122155.

The programs for A122199, the canonical program `A122199.P17065714589425841115` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A122199 has offset 0).

The definition of A122199 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A122155, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A122199.P17065714589425841115

`A053644(A122155(n))+a(A053645(A122155(n)))` with `a(0)=0`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A122199

/-- `A053644(A122155(n))+a(A053645(A122155(n)))` -/
def P17065714589425841115.Spec : Prop :=
  ∀ n, P17065714589425841115.a n = A122199 n

theorem P17065714589425841115.correct : P17065714589425841115.Spec := by
  intro n
  simp only [A122199]

end A122199

/-! ## A122199.P14174666628622614169

`or(n, floor(n/2))-and(n-1, floor(n/2))`
-/

namespace A122199.P14174666628622614169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - Int.land ((n : ℤ) - 1) ⌊(n : ℚ) / 2⌋

end

end A122199.P14174666628622614169

namespace A122199

/-- `or(n, floor(n/2))-and(n-1, floor(n/2))` -/
def P14174666628622614169.Spec : Prop :=
  ∀ n, P14174666628622614169.a n = A122199 n

end A122199

/-! ## A122199.P1820234914658194571

`and(n, floor(-(n/2)))+and(-n, floor(n/2))`
-/

namespace A122199.P1820234914658194571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) ⌊-((n : ℚ) / 2)⌋ + Int.land (-(n : ℤ)) ⌊(n : ℚ) / 2⌋

end

end A122199.P1820234914658194571

namespace A122199

/-- `and(n, floor(-(n/2)))+and(-n, floor(n/2))` -/
def P1820234914658194571.Spec : Prop :=
  ∀ n, P1820234914658194571.a n = A122199 n

end A122199

/-! ## A122199.P13561532652280566130

`or(n, floor(n/2))-n-or(-n, floor(n/2))`
-/

namespace A122199.P13561532652280566130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ) - Int.lor (-(n : ℤ)) ⌊(n : ℚ) / 2⌋

end

end A122199.P13561532652280566130

namespace A122199

/-- `or(n, floor(n/2))-n-or(-n, floor(n/2))` -/
def P13561532652280566130.Spec : Prop :=
  ∀ n, P13561532652280566130.a n = A122199 n

end A122199

/-! ## A122199.P13271093705515587862

`(A163617(n)-A163618(n))/2`
-/

namespace A122199.P13271093705515587862
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163617 n - A163618 n : ℚ) / 2

end

end A122199.P13271093705515587862

namespace A122199

/-- `(A163617(n)-A163618(n))/2` -/
def P13271093705515587862.Spec : Prop :=
  ∀ n, P13271093705515587862.a n = (A122199 n : ℚ)

end A122199

/-! ## A122199.P15372863838970580650

`or(A003188(and(n, n-1)), A292272(n))`
-/

namespace A122199.P15372863838970580650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A003188 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat) (A292272 n)

end

end A122199.P15372863838970580650

namespace A122199

/-- `or(A003188(and(n, n-1)), A292272(n))` -/
def P15372863838970580650.Spec : Prop :=
  ∀ n, P15372863838970580650.a n = A122199 n

end A122199

/-! ## A122199.P324187373848466058

`A053644(n)+a(A053645(A122155(n)))` with `a(0)=0`
-/

namespace A122199.P324187373848466058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A053644 n + a (A053645 (A122155 n).toNat).toNat

end

end A122199.P324187373848466058

namespace A122199

/-- `A053644(n)+a(A053645(A122155(n)))` -/
def P324187373848466058.Spec : Prop :=
  ∀ n, P324187373848466058.a n = A122199 n

end A122199

/-! ## A122199.P8140899256596005019

`A004526(or(n, 2*n)-(n-and(n, n-3*n)))`
-/

namespace A122199.P8140899256596005019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((Nat.lor n (2 * n) : ℤ) - ((n : ℤ) - Int.land (n : ℤ) ((n : ℤ) - (3 * n : ℤ)))).toNat

end

end A122199.P8140899256596005019

namespace A122199

/-- `A004526(or(n, 2*n)-(n-and(n, n-3*n)))` -/
def P8140899256596005019.Spec : Prop :=
  ∀ n, P8140899256596005019.a n = A122199 n

end A122199

/-! ## A122199.P4096458837010780866

`A004526(or(n, 2*n)-(or(n, -(2*n))+n+n))`
-/

namespace A122199.P4096458837010780866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 ((Nat.lor n (2 * n) : ℤ) - (Int.lor (n : ℤ) (-(2 * n : ℤ)) + (n : ℤ) + (n : ℤ))).toNat

end

end A122199.P4096458837010780866

namespace A122199

/-- `A004526(or(n, 2*n)-(or(n, -(2*n))+n+n))` -/
def P4096458837010780866.Spec : Prop :=
  ∀ n, P4096458837010780866.a n = A122199 n

end A122199

/-! ## A122199.P6380666045396522066

`A001281(A163617(n)-A163618(n))`
-/

namespace A122199.P6380666045396522066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A163617 n - A163618 n).toNat

end

end A122199.P6380666045396522066

namespace A122199

/-- `A001281(A163617(n)-A163618(n))` -/
def P6380666045396522066.Spec : Prop :=
  ∀ n, P6380666045396522066.a n = A122199 n

end A122199

/-! ## A122199.P9447542564146058523

`A004525(A163617(n)-A163618(n))`
-/

namespace A122199.P9447542564146058523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A163617 n - A163618 n).toNat

end

end A122199.P9447542564146058523

namespace A122199

/-- `A004525(A163617(n)-A163618(n))` -/
def P9447542564146058523.Spec : Prop :=
  ∀ n, P9447542564146058523.a n = A122199 n

end A122199

