import SequenceMachineLib
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
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
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
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
import Seq.B013.C000
import Seq.B014.C000
import Seq.Opaque.C000
import Seq.Opaque.C001
import Seq.Opaque.C003
import Seq.Opaque.C004
import Seq.Opaque.C005
import Seq.Opaque.C006
import Seq.Opaque.C007
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
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A282200: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 433", based on the 5-celled von Neumann neighborhood.

The programs for A282200, there is no canonical definition to state claims against.
-/

/-! ## A282200.P5208338442360072122

`A007088(A282202(n))`
-/

namespace A282200.P5208338442360072122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282202 n).toNat

end

end A282200.P5208338442360072122

/-! ## A282200.P15858417772449877342

`A185544(2*A282202(n))`
-/

namespace A282200.P15858417772449877342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282202 n).toNat

end

end A282200.P15858417772449877342

/-! ## A282200.P15876099943802243630

`A282223(comp[Δ[n*floor(n/ϕ)]+7])`
-/

namespace A282200.P15876099943802243630
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ⌊(n : ℝ) / Real.goldenRatio⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 7

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282223 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A282200.P15876099943802243630

/-!
# A282203: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 435", based on the 5-celled von Neumann neighborhood.

The programs for A282203, there is no canonical definition to state claims against.
-/

/-! ## A282203.P14340557016821453010

`A007088(A282205(n))`
-/

namespace A282203.P14340557016821453010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282205 n).toNat

end

end A282203.P14340557016821453010

/-! ## A282203.P6381704748098955777

`A185544(2*A282205(n))`
-/

namespace A282203.P6381704748098955777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282205 n).toNat

end

end A282203.P6381704748098955777

/-!
# A282204: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 435", based on the 5-celled von Neumann neighborhood.

The programs for A282204, there is no canonical definition to state claims against.
-/

/-! ## A282204.P5200379294486770919

`A007088(A282206(n))`
-/

namespace A282204.P5200379294486770919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282206 n).toNat

end

end A282204.P5200379294486770919

/-! ## A282204.P912507719775676523

`A185544(2*A282206(n))`
-/

namespace A282204.P912507719775676523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282206 n).toNat

end

end A282204.P912507719775676523

/-!
# A282209: Expansion of Product_{k>=1} 1/(1 - k^2*x^(k^2)).

The programs for A282209, there is no canonical definition to state claims against.
-/

/-! ## A282209.P4238920279144418424

`A138554(∑[A265831(n)]²)`
-/

namespace A282209.P4238920279144418424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A282209.P4238920279144418424

/-! ## A282209.P569162946408917368

`A138554(∑[A265831(n)]^2)`
-/

namespace A282209.P569162946408917368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138554 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A282209.P569162946408917368

/-! ## A282209.P10777680190523062013

`A003056(C(∑[A265831(n)]+1, 2))`
-/

namespace A282209.P10777680190523062013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat 2)

end

end A282209.P10777680190523062013

/-! ## A282209.P5017691377364142008

`∑[A265831(n)%A050284(n+1)]`
-/

namespace A282209.P5017691377364142008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A265831 n) (A050284 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A282209.P5017691377364142008

/-! ## A282209.P6973788428953556577

`∑[A265831(n)]%A265790(n+1)`
-/

namespace A282209.P6973788428953556577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265831 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A265790 (n + 1))

end

end A282209.P6973788428953556577

/-!
# A282211: Coefficients in q-expansion of (6*E_2^2*E_4 - 8*E_2*E_6 + 3*E_4^2 - E_2^4)/6912, where E_2, E_4, E_6 are the Eisenstein series shown in A006352, A004009, A013973, respectively.

The programs for A282211, the canonical program `A282211.P15595228018349612783` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282211 has offset 0).

The definition of A282211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282211.P15595228018349612783

`n^3*∑{d}[n, #]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A282211

/-- `n^3*∑{d}[n, #]` -/
def P15595228018349612783.Spec : Prop :=
  ∀ n, (P15595228018349612783.a n : ℤ) = A282211 n

theorem P15595228018349612783.correct : P15595228018349612783.Spec := by
  intro n
  simp only [A282211]

end A282211

/-! ## A282211.P7108672404459193553

`∑{d}[n, n^4/#]`
-/

namespace A282211.P7108672404459193553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n ^ 4 : ℚ) / (d : ℚ)

end

end A282211.P7108672404459193553

namespace A282211

/-- `∑{d}[n, n^4/#]` -/
def P7108672404459193553.Spec : Prop :=
  ∀ n, P7108672404459193553.a n = (A282211 n : ℚ)

end A282211

/-! ## A282211.P7477922790649096601

`∑{d}[n, n*#]*n²`
-/

namespace A282211.P7477922790649096601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ d ∈ Nat.divisors (f1 n), n * d) * n ^ 2

end

end A282211.P7477922790649096601

namespace A282211

/-- `∑{d}[n, n*#]*n²` -/
def P7477922790649096601.Spec : Prop :=
  ∀ n, (P7477922790649096601.a n : ℤ) = A282211 n

end A282211

/-! ## A282211.P12623298232934257914

`floor(∑{d}[n, n²²/#])`
-/

namespace A282211.P12623298232934257914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ d ∈ Nat.divisors (f1 n), ((n ^ 2) ^ 2 : ℚ) / (d : ℚ)⌋

end

end A282211.P12623298232934257914

namespace A282211

/-- `floor(∑{d}[n, n²²/#])` -/
def P12623298232934257914.Spec : Prop :=
  ∀ n, P12623298232934257914.a n = A282211 n

end A282211

/-! ## A282211.P2899331145003336997

`ceil(∑{d}[n, n²²/#])`
-/

namespace A282211.P2899331145003336997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∑ d ∈ Nat.divisors (f1 n), ((n ^ 2) ^ 2 : ℚ) / (d : ℚ)⌉

end

end A282211.P2899331145003336997

namespace A282211

/-- `ceil(∑{d}[n, n²²/#])` -/
def P2899331145003336997.Spec : Prop :=
  ∀ n, P2899331145003336997.a n = A282211 n

end A282211

/-! ## A282211.P11836455222815476484

`round(∑{d}[n, n²²/#])`
-/

namespace A282211.P11836455222815476484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ d ∈ Nat.divisors (f1 n), ((n ^ 2) ^ 2 : ℚ) / (d : ℚ))

end

end A282211.P11836455222815476484

namespace A282211

/-- `round(∑{d}[n, n²²/#])` -/
def P11836455222815476484.Spec : Prop :=
  ∀ n, P11836455222815476484.a n = A282211 n

end A282211

/-! ## A282211.P1359300585553521060

`n*A282097(n)`
-/

namespace A282211.P1359300585553521060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282097 n

end

end A282211.P1359300585553521060

namespace A282211

/-- `n*A282097(n)` -/
def P1359300585553521060.Spec : Prop :=
  ∀ n, P1359300585553521060.a n = A282211 n

end A282211

/-! ## A282211.P15726347621868238447

`n/24*A282154(n)`
-/

namespace A282211.P15726347621868238447
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 24 * (A282154 n : ℚ)

end

end A282211.P15726347621868238447

namespace A282211

/-- `n/24*A282154(n)` -/
def P15726347621868238447.Spec : Prop :=
  ∀ n, P15726347621868238447.a n = (A282211 n : ℚ)

end A282211

/-! ## A282211.P14628605589794260722

`n^3*A000203(abs(1-n)+1)`
-/

namespace A282211.P14628605589794260722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 3 : ℤ) * A000203 (|1 - (n : ℤ)| + 1).toNat

end

end A282211.P14628605589794260722

namespace A282211

/-- `n^3*A000203(abs(1-n)+1)` -/
def P14628605589794260722.Spec : Prop :=
  ∀ n, P14628605589794260722.a n = A282211 n

end A282211

/-! ## A282211.P11542887632922205807

`A280022(n)/A028310(n)`
-/

namespace A282211.P11542887632922205807
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280022 n : ℚ) / (A028310 n : ℚ)

end

end A282211.P11542887632922205807

namespace A282211

/-- `A280022(n)/A028310(n)` -/
def P11542887632922205807.Spec : Prop :=
  ∀ n, P11542887632922205807.a n = (A282211 n : ℚ)

end A282211

/-! ## A282211.P869198826259214606

`n/A253909(n)*A280022(n)`
-/

namespace A282211.P869198826259214606
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A253909 n : ℚ) * (A280022 n : ℚ)

end

end A282211.P869198826259214606

namespace A282211

/-- `n/A253909(n)*A280022(n)` -/
def P869198826259214606.Spec : Prop :=
  ∀ n, P869198826259214606.a n = (A282211 n : ℚ)

end A282211

/-! ## A282211.P14153969785736218711

`A000203(abs(1-n)+1)*A000578(n)`
-/

namespace A282211.P14153969785736218711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (|1 - (n : ℤ)| + 1).toNat * A000578 n

end

end A282211.P14153969785736218711

namespace A282211

/-- `A000203(abs(1-n)+1)*A000578(n)` -/
def P14153969785736218711.Spec : Prop :=
  ∀ n, P14153969785736218711.a n = A282211 n

end A282211

/-!
# A282213: Coefficients in q-expansion of (E_2^3*E_4 - 3*E_2^2*E_6 + 3*E_2*E_4^2 - E_4*E_6)/3456, where E_2, E_4, E_6 are the Eisenstein series shown in A006352, A004009, A013973, respectively.

The programs for A282213, the canonical program `A282213.P5575369131733367512` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282213 has offset 0).

The definition of A282213 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282213.P5575369131733367512

`∑{d}[n, (n*#)^3]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A282213

/-- `∑{d}[n, (n*#)^3]` -/
def P5575369131733367512.Spec : Prop :=
  ∀ n, (P5575369131733367512.a n : ℤ) = A282213 n

theorem P5575369131733367512.correct : P5575369131733367512.Spec := by
  intro n
  simp only [A282213]

end A282213

/-! ## A282213.P13932889498104168942

`n*∑{d}[n, #*#²]*n²`
-/

namespace A282213.P13932889498104168942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), d * d ^ 2) * n ^ 2

end

end A282213.P13932889498104168942

namespace A282213

/-- `n*∑{d}[n, #*#²]*n²` -/
def P13932889498104168942.Spec : Prop :=
  ∀ n, (P13932889498104168942.a n : ℤ) = A282213 n

end A282213

/-! ## A282213.P14308376657209645763

`n*A282099(n)`
-/

namespace A282213.P14308376657209645763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A282099 n

end

end A282213.P14308376657209645763

namespace A282213

/-- `n*A282099(n)` -/
def P14308376657209645763.Spec : Prop :=
  ∀ n, P14308376657209645763.a n = A282213 n

end A282213

/-! ## A282213.P14749098150255349514

`n²*A281372(n)`
-/

namespace A282213.P14749098150255349514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * A281372 n

end

end A282213.P14749098150255349514

namespace A282213

/-- `n²*A281372(n)` -/
def P14749098150255349514.Spec : Prop :=
  ∀ n, P14749098150255349514.a n = A282213 n

end A282213

/-! ## A282213.P3231039697460182653

`n²*∑{d}[n, A343498(#)]`
-/

namespace A282213.P3231039697460182653
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) * (∑ d ∈ Nat.divisors (f1 n), A343498 d)

end

end A282213.P3231039697460182653

namespace A282213

/-- `n²*∑{d}[n, A343498(#)]` -/
def P3231039697460182653.Spec : Prop :=
  ∀ n, P3231039697460182653.a n = A282213 n

end A282213

/-! ## A282213.P13300110976893277749

`A280025(n)/A028310(n)`
-/

namespace A282213.P13300110976893277749
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280025 n : ℚ) / (A028310 n : ℚ)

end

end A282213.P13300110976893277749

namespace A282213

/-- `A280025(n)/A028310(n)` -/
def P13300110976893277749.Spec : Prop :=
  ∀ n, P13300110976893277749.a n = (A282213 n : ℚ)

end A282213

/-! ## A282213.P15750847886826614851

`n/A253909(n)*A280025(n)`
-/

namespace A282213.P15750847886826614851
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A253909 n : ℚ) * (A280025 n : ℚ)

end

end A282213.P15750847886826614851

namespace A282213

/-- `n/A253909(n)*A280025(n)` -/
def P15750847886826614851.Spec : Prop :=
  ∀ n, P15750847886826614851.a n = (A282213 n : ℚ)

end A282213

/-! ## A282213.P13376926646294525223

`A280025(n)/A123108(2*n)`
-/

namespace A282213.P13376926646294525223
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280025 n : ℚ) / (A123108 (2 * n) : ℚ)

end

end A282213.P13376926646294525223

namespace A282213

/-- `A280025(n)/A123108(2*n)` -/
def P13376926646294525223.Spec : Prop :=
  ∀ n, P13376926646294525223.a n = (A282213 n : ℚ)

end A282213

/-!
# A282214: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 437", based on the 5-celled von Neumann neighborhood.

The programs for A282214, there is no canonical definition to state claims against.
-/

/-! ## A282214.P3593481634922636877

`A007088(A282216(n))`
-/

namespace A282214.P3593481634922636877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282216 n).toNat

end

end A282214.P3593481634922636877

/-! ## A282214.P13891504425030721009

`A185544(2*A282216(n))`
-/

namespace A282214.P13891504425030721009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282216 n).toNat

end

end A282214.P13891504425030721009

/-! ## A282214.P6355139688492270260

`A185544(A282216(n)+A282216(n))`
-/

namespace A282214.P6355139688492270260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A282216 n + A282216 n).toNat

end

end A282214.P6355139688492270260

/-! ## A282214.P7764455861118914052

`A007088(or(A185284((2-n)²), A281850(n)))`
-/

namespace A282214.P7764455861118914052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A185284 ((2 - (n : ℤ)) ^ 2).toNat) (A281850 n)).toNat

end

end A282214.P7764455861118914052

/-! ## A282214.P3629779567905750363

`A185544(2*or(A185284((2-n)²), A281850(n)))`
-/

namespace A282214.P3629779567905750363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * Int.lor (A185284 ((2 - (n : ℤ)) ^ 2).toNat) (A281850 n)).toNat

end

end A282214.P3629779567905750363

/-!
# A282215: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 437", based on the 5-celled von Neumann neighborhood.

The programs for A282215, there is no canonical definition to state claims against.
-/

/-! ## A282215.P18425986185921272759

`A007088(A282217(n))`
-/

namespace A282215.P18425986185921272759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282217 n).toNat

end

end A282215.P18425986185921272759

/-! ## A282215.P16406194060250002168

`A185544(2*A282217(n))`
-/

namespace A282215.P16406194060250002168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282217 n).toNat

end

end A282215.P16406194060250002168

/-! ## A282215.P6953308827965622155

`A185544(A282217(n)+A282217(n))`
-/

namespace A282215.P6953308827965622155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A282217 n + A282217 n).toNat

end

end A282215.P6953308827965622155

/-!
# A282216: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 437", based on the 5-celled von Neumann neighborhood.

The programs for A282216, there is no canonical definition to state claims against.
-/

/-! ## A282216.P9361359768737691973

`or(A185284(∑[n]), A281850(n))`
-/

namespace A282216.P9361359768737691973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185284 (∑ j ∈ Finset.range (n + 1), f1 j)) (A281850 n)

end

end A282216.P9361359768737691973

/-! ## A282216.P1059010759530854155

`or(A259100(A000055(n)), A281850(n))`
-/

namespace A282216.P1059010759530854155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A259100 (A000055 n).toNat) (A281850 n)

end

end A282216.P1059010759530854155

/-! ## A282216.P7049739516589238502

`or(A219485(A048855(n)), A281850(n))`
-/

namespace A282216.P7049739516589238502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A219485 (A048855 n).toNat) (A281850 n)

end

end A282216.P7049739516589238502

/-!
# A282218: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A282218, there is no canonical definition to state claims against.
-/

/-! ## A282218.P18160115866606607725

`A000042(n+1)-A283136(A028310(n))`
-/

namespace A282218.P18160115866606607725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283136 (A028310 n).toNat

end

end A282218.P18160115866606607725

/-! ## A282218.P17523679295969323857

`A282219(n)+A283137(n)-A283136(n)`
-/

namespace A282218.P17523679295969323857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282219 n + (A283137 n - A283136 n)

end

end A282218.P17523679295969323857

/-! ## A282218.P4004726854943224214

`A000042(n+1)-A283136(A000007(n)+n)`
-/

namespace A282218.P4004726854943224214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283136 (A000007 n + (n : ℤ)).toNat

end

end A282218.P4004726854943224214

/-! ## A282218.P15142171358537931243

`A002283(n)+A047855(A028310(n))-A283136(n)`
-/

namespace A282218.P15142171358537931243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + (A047855 (A028310 n).toNat - A283136 n)

end

end A282218.P15142171358537931243

/-! ## A282218.P4369597115740533846

`A002283(n)-(A283136(A028310(n))-A047855(n))`
-/

namespace A282218.P4369597115740533846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - (A283136 (A028310 n).toNat - A047855 n)

end

end A282218.P4369597115740533846

/-! ## A282218.P10905648170293812340

`A047855(n)+A002283(n)-A283136(A000007(n)+n)`
-/

namespace A282218.P10905648170293812340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + A002283 n - A283136 (A000007 n + (n : ℤ)).toNat

end

end A282218.P10905648170293812340

/-!
# A282219: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A282219, there is no canonical definition to state claims against.
-/

/-! ## A282219.P4709510010297195994

`or(1, A000042(n+1)-A283137(n))`
-/

namespace A282219.P4709510010297195994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000042 (n + 1) - A283137 n)

end

end A282219.P4709510010297195994

/-! ## A282219.P14186605750343407922

`A000042(n+1)-A283137(A028310(n))`
-/

namespace A282219.P14186605750343407922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283137 (A028310 n).toNat

end

end A282219.P14186605750343407922

/-! ## A282219.P11465219472409591523

`A282218(n)+A283136(n)-A283137(n)`
-/

namespace A282219.P11465219472409591523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282218 n + (A283136 n - A283137 n)

end

end A282219.P11465219472409591523

/-! ## A282219.P1639008437680958309

`A000042(n+1)-A283137(A000007(n)+n)`
-/

namespace A282219.P1639008437680958309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000042 (n + 1) - A283137 (A000007 n + (n : ℤ)).toNat

end

end A282219.P1639008437680958309

/-! ## A282219.P3093536594469465269

`A002283(n)+A047855(A028310(n))-A283137(n)`
-/

namespace A282219.P3093536594469465269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n + (A047855 (A028310 n).toNat - A283137 n)

end

end A282219.P3093536594469465269

/-! ## A282219.P17366695895648709845

`A002283(n)-(A283137(A028310(n))-A047855(n))`
-/

namespace A282219.P17366695895648709845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 n - (A283137 (A028310 n).toNat - A047855 n)

end

end A282219.P17366695895648709845

/-! ## A282219.P7260887556580504923

`A047855(n)+A002283(n)-A283137(A000007(n)+n)`
-/

namespace A282219.P7260887556580504923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n + A002283 n - A283137 (A000007 n + (n : ℤ)).toNat

end

end A282219.P7260887556580504923

/-!
# A282220: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A282220, there is no canonical definition to state claims against.
-/

/-! ## A282220.P17957659476219707452

`A282221(n)+A283139(n)-A283138(n)`
-/

namespace A282220.P17957659476219707452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282221 n + (A283139 n - A283138 n)

end

end A282220.P17957659476219707452

/-! ## A282220.P16340938780562233920

`A126646(n)-A283138(n)%A051049(n)`
-/

namespace A282220.P16340938780562233920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283138 n) (A051049 n)

end

end A282220.P16340938780562233920

/-! ## A282220.P1177828742217380650

`A126646(n)-and(A000225(n), A283138(n))`
-/

namespace A282220.P1177828742217380650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.land (A000225 n) (A283138 n)

end

end A282220.P1177828742217380650

/-! ## A282220.P15788015392478954120

`or(A000225(n), A052531(n))-A283138(n)`
-/

namespace A282220.P15788015392478954120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A283138 n

end

end A282220.P15788015392478954120

/-! ## A282220.P3977648635467596177

`xor(A126646(n)%A282218(n), A283138(n))`
-/

namespace A282220.P3977648635467596177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A126646 n) (A282218 n)) (A283138 n)

end

end A282220.P3977648635467596177

/-!
# A282221: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 438", based on the 5-celled von Neumann neighborhood.

The programs for A282221, there is no canonical definition to state claims against.
-/

/-! ## A282221.P18401357050154867879

`or(1, A126646(n)-A283139(n))`
-/

namespace A282221.P18401357050154867879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A283139 n)

end

end A282221.P18401357050154867879

/-! ## A282221.P18215886131600429562

`or(1, A000225(n+1)-A283139(n))`
-/

namespace A282221.P18215886131600429562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000225 (n + 1) - A283139 n)

end

end A282221.P18215886131600429562

/-! ## A282221.P16765249724155446119

`A282220(n)+A283138(n)-A283139(n)`
-/

namespace A282221.P16765249724155446119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282220 n + (A283138 n - A283139 n)

end

end A282221.P16765249724155446119

/-! ## A282221.P16850661438444274557

`or(A000225(n), A052531(n))-A283139(n)`
-/

namespace A282221.P16850661438444274557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000225 n) (A052531 n) - A283139 n

end

end A282221.P16850661438444274557

/-! ## A282221.P9824041497269655751

`A126646(n)-A283139(n)%A282218(n)`
-/

namespace A282221.P9824041497269655751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A283139 n) (A282218 n)

end

end A282221.P9824041497269655751

/-!
# A282222: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 441", based on the 5-celled von Neumann neighborhood.

The programs for A282222, there is no canonical definition to state claims against.
-/

/-! ## A282222.P1712662747085044497

`A007088(A282224(n))`
-/

namespace A282222.P1712662747085044497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282224 n).toNat

end

end A282222.P1712662747085044497

/-!
# A282223: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 441", based on the 5-celled von Neumann neighborhood.

The programs for A282223, there is no canonical definition to state claims against.
-/

/-! ## A282223.P18217221146339972692

`A007088(A282225(n))`
-/

namespace A282223.P18217221146339972692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282225 n).toNat

end

end A282223.P18217221146339972692

/-!
# A282227: Number of nX3 0..2 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A282227, there is no canonical definition to state claims against.
-/

/-! ## A282227.P13970594789208131775

`A282230(∑[n+2]+4)`
-/

namespace A282227.P13970594789208131775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282227.P13970594789208131775

/-! ## A282227.P4199873320915638402

`lcm(2, A282230(A167614(n+1)))`
-/

namespace A282227.P4199873320915638402
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282230 (A167614 (n + 1)).toNat)

end

end A282227.P4199873320915638402

/-! ## A282227.P6545081238535452495

`A282230(A167614(n+1))+A006927(n)`
-/

namespace A282227.P6545081238535452495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (A167614 (n + 1)).toNat + A006927 n

end

end A282227.P6545081238535452495

/-! ## A282227.P13483155705652115714

`A282230(A167614(n+1))+A011739(n)`
-/

namespace A282227.P13483155705652115714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (A167614 (n + 1)).toNat + A011739 n

end

end A282227.P13483155705652115714

/-! ## A282227.P7137704434414096057

`A282230(A167614(n+1))+A025438(n)`
-/

namespace A282227.P7137704434414096057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (A167614 (n + 1)).toNat + A025438 n

end

end A282227.P7137704434414096057

/-!
# A282228: Number of nX4 0..2 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A282228, there is no canonical definition to state claims against.
-/

/-! ## A282228.P1012821072323460250

`A282230(∑[n+3]+7)`
-/

namespace A282228.P1012821072323460250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A282228.P1012821072323460250

/-! ## A282228.P17778619224175756805

`lcm(2, A282230(A145018(n+4)))`
-/

namespace A282228.P17778619224175756805
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A282230 (A145018 (n + 4)).toNat)

end

end A282228.P17778619224175756805

/-! ## A282228.P12454628317969098875

`A174544(n)*A282230(A145018(n+4))`
-/

namespace A282228.P12454628317969098875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174544 n * A282230 (A145018 (n + 4)).toNat

end

end A282228.P12454628317969098875

/-! ## A282228.P13613979162104056212

`A282230(n+1)+A282230(A145018(n+4))`
-/

namespace A282228.P13613979162104056212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (n + 1) + A282230 (A145018 (n + 4)).toNat

end

end A282228.P13613979162104056212

/-!
# A282229: Number of nX5 0..2 arrays with no element equal to more than four of its king-move neighbors, with the exception of exactly one element, and with new values introduced in order 0 sequentially upwards.

The programs for A282229, there is no canonical definition to state claims against.
-/

/-! ## A282229.P12830746255306449075

`A282230(A167499(n+3))`
-/

namespace A282229.P12830746255306449075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (A167499 (n + 3)).toNat

end

end A282229.P12830746255306449075

/-! ## A282229.P8683555836882608368

`A282230(A155212(n)+13)`
-/

namespace A282229.P8683555836882608368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (A155212 n + 13).toNat

end

end A282229.P8683555836882608368

/-! ## A282229.P8835614130599193466

`A282230(A056000(n)+15)`
-/

namespace A282229.P8835614130599193466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (A056000 n + 15).toNat

end

end A282229.P8835614130599193466

/-! ## A282229.P6714788057631595797

`A282230(eq[7, A066657(n)])`
-/

namespace A282229.P6714788057631595797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282230 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282229.P6714788057631595797

/-!
# A282232: a(n) = ((3*n + 1)^6 - 1)/9.

The programs for A282232, the canonical program `A282232.P5716533033109574785` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282232 has offset 0).

The definition of A282232 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282232.P5716533033109574785

`((3*n+1)^6-1)/9`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A282232

/-- `((3*n+1)^6-1)/9` -/
def P5716533033109574785.Spec : Prop :=
  ∀ n, P5716533033109574785.a n = (A282232 n : ℚ)

end A282232

/-! ## A282232.P12701146969451167978

`round(A016782(n)/9)`
-/

namespace A282232.P12701146969451167978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A016782 n : ℚ) / 9)

end

end A282232.P12701146969451167978

namespace A282232

/-- `round(A016782(n)/9)` -/
def P12701146969451167978.Spec : Prop :=
  ∀ n, P12701146969451167978.a n = A282232 n

end A282232

/-! ## A282232.P8891970763952523130

`or(floor(A016782(n)/9), A000035(n))`
-/

namespace A282232.P8891970763952523130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(A016782 n : ℚ) / 9⌋ (A000035 n)

end

end A282232.P8891970763952523130

namespace A282232

/-- `or(floor(A016782(n)/9), A000035(n))` -/
def P8891970763952523130.Spec : Prop :=
  ∀ n, P8891970763952523130.a n = A282232 n

end A282232

/-! ## A282232.P2404552653047922784

`(1-A000007(n))*floor(A016782(n)/9)`
-/

namespace A282232.P2404552653047922784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * ⌊(A016782 n : ℚ) / 9⌋

end

end A282232.P2404552653047922784

namespace A282232

/-- `(1-A000007(n))*floor(A016782(n)/9)` -/
def P2404552653047922784.Spec : Prop :=
  ∀ n, P2404552653047922784.a n = A282232 n

end A282232

/-! ## A282232.P695822538732551397

`floor(A001014(3*n+1)/9)`
-/

namespace A282232.P695822538732551397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001014 (3 * n + 1) : ℚ) / 9⌋

end

end A282232.P695822538732551397

namespace A282232

/-- `floor(A001014(3*n+1)/9)` -/
def P695822538732551397.Spec : Prop :=
  ∀ n, P695822538732551397.a n = A282232 n

end A282232

/-! ## A282232.P6812558818938406956

`floor(A002604(3*n+1)/9)`
-/

namespace A282232.P6812558818938406956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002604 (3 * n + 1) : ℚ) / 9⌋

end

end A282232.P6812558818938406956

namespace A282232

/-- `floor(A002604(3*n+1)/9)` -/
def P6812558818938406956.Spec : Prop :=
  ∀ n, P6812558818938406956.a n = A282232 n

end A282232

/-! ## A282232.P9288837133441496466

`A249354(A045944(n))`
-/

namespace A282232.P9288837133441496466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 (A045944 n).toNat

end

end A282232.P9288837133441496466

namespace A282232

/-- `A249354(A045944(n))` -/
def P9288837133441496466.Spec : Prop :=
  ∀ n, P9288837133441496466.a n = A282232 n

end A282232

/-! ## A282232.P8937391590885562180

`A249354(A001082(Δ[n²]))`
-/

namespace A282232.P8937391590885562180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 (A001082 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A282232.P8937391590885562180

namespace A282232

/-- `A249354(A001082(Δ[n²]))` -/
def P8937391590885562180.Spec : Prop :=
  ∀ n, P8937391590885562180.a n = A282232 n

end A282232

/-! ## A282232.P7319472481921240421

`A249354(A003215(n)-(n+1))`
-/

namespace A282232.P7319472481921240421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 (A003215 n - (n + 1 : ℤ)).toNat

end

end A282232.P7319472481921240421

namespace A282232

/-- `A249354(A003215(n)-(n+1))` -/
def P7319472481921240421.Spec : Prop :=
  ∀ n, P7319472481921240421.a n = A282232 n

end A282232

/-! ## A282232.P2223847683005940220

`A249354(A003215(n)-1-n)`
-/

namespace A282232.P2223847683005940220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 (A003215 n - 1 - (n : ℤ)).toNat

end

end A282232.P2223847683005940220

namespace A282232

/-- `A249354(A003215(n)-1-n)` -/
def P2223847683005940220.Spec : Prop :=
  ∀ n, P2223847683005940220.a n = A282232 n

end A282232

/-!
# A282234: a(n) = Fibonacci(n) represented in bijective base-3 numeration.

The programs for A282234, the canonical program `A282234.P11292878467166924070` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282234 has offset 1).

The definition of A282234 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007932, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A282234.P11292878467166924070

`A007932(A000045(n+1))`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A282234

/-- `A007932(A000045(n+1))` -/
def P11292878467166924070.Spec : Prop :=
  ∀ n, P11292878467166924070.a n = A282234 (n + 1)

theorem P11292878467166924070.correct : P11292878467166924070.Spec := by
  intro n
  simp only [A282234, Nat.add_sub_cancel]

end A282234

/-! ## A282234.P9207230503552299740

`A007932(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A282234.P9207230503552299740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (f1 (n + 1) - f1 n).toNat

end

end A282234.P9207230503552299740

namespace A282234

/-- `A007932(Δ[round(ϕ*a(n-1))])` -/
def P9207230503552299740.Spec : Prop :=
  ∀ n, P9207230503552299740.a n = A282234 (n + 1)

end A282234

/-! ## A282234.P13220910711984283211

`A007932(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A282234.P13220910711984283211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282234.P13220910711984283211

namespace A282234

/-- `A007932(∑[round(ϕ*a(n-1))])` -/
def P13220910711984283211.Spec : Prop :=
  ∀ n, P13220910711984283211.a n = A282234 (n + 1)

end A282234

/-! ## A282234.P17306908745360253801

`A007932(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A282234.P17306908745360253801
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282234.P17306908745360253801

namespace A282234

/-- `A007932(∑[a(n-1)+a(n-2)])` -/
def P17306908745360253801.Spec : Prop :=
  ∀ n, P17306908745360253801.a n = A282234 (n + 1)

end A282234

/-! ## A282234.P8636186319277688916

`A007932(∑[a(n-1)-(1-a(n-2))]-n)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A282234.P8636186319277688916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n f1 =>
  f1 (n - 1) - (1 - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007932 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A282234.P8636186319277688916

namespace A282234

/-- `A007932(∑[a(n-1)-(1-a(n-2))]-n)` -/
def P8636186319277688916.Spec : Prop :=
  ∀ n, P8636186319277688916.a n = A282234 (n + 1)

end A282234

/-!
# A282235: a(n) = Fibonacci(n) represented in bijective base-4 numeration.

The programs for A282235, there is no canonical definition to state claims against.
-/

/-! ## A282235.P7708260909864990973

`A084544(A000045(n+1))`
-/

namespace A282235.P7708260909864990973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (A000045 (n + 1)).toNat

end

end A282235.P7708260909864990973

/-! ## A282235.P13768426251831494496

`A084544(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A282235.P13768426251831494496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (f1 (n + 1) - f1 n).toNat

end

end A282235.P13768426251831494496

/-! ## A282235.P10139436675113528133

`A084544(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A282235.P10139436675113528133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282235.P10139436675113528133

/-! ## A282235.P12372963960347716897

`A084544(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0`
-/

namespace A282235.P12372963960347716897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282235.P12372963960347716897

/-! ## A282235.P10491819988268460621

`A084544(A016095(∑[n]))`
-/

namespace A282235.P10491819988268460621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084544 (A016095 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A282235.P10491819988268460621

/-!
# A282236: a(n) = Fibonacci(n) represented in bijective base-5 numeration.

The programs for A282236, the canonical program `A282236.P9054473946965597449` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282236 has offset 1).

The definition of A282236 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A084545, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A282236.P9054473946965597449

`A084545(A000045(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A282236

/-- `A084545(A000045(n+1))` -/
def P9054473946965597449.Spec : Prop :=
  ∀ n, P9054473946965597449.a n = A282236 (n + 1)

theorem P9054473946965597449.correct : P9054473946965597449.Spec := by
  intro n
  simp only [A282236, Nat.add_sub_cancel]

end A282236

/-! ## A282236.P13234693839024442350

`A084545(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A282236.P13234693839024442350
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (f1 (n + 1) - f1 n).toNat

end

end A282236.P13234693839024442350

namespace A282236

/-- `A084545(Δ[round(ϕ*a(n-1))])` -/
def P13234693839024442350.Spec : Prop :=
  ∀ n, P13234693839024442350.a n = A282236 (n + 1)

end A282236

/-! ## A282236.P10614648543418338211

`A084545(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A282236.P10614648543418338211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282236.P10614648543418338211

namespace A282236

/-- `A084545(∑[round(ϕ*a(n-1))])` -/
def P10614648543418338211.Spec : Prop :=
  ∀ n, P10614648543418338211.a n = A282236 (n + 1)

end A282236

/-! ## A282236.P13537424584084498731

`A084545(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A282236.P13537424584084498731
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282236.P13537424584084498731

namespace A282236

/-- `A084545(∑[a(n-1)+a(n-2)])` -/
def P13537424584084498731.Spec : Prop :=
  ∀ n, P13537424584084498731.a n = A282236 (n + 1)

end A282236

/-! ## A282236.P8069171094966333566

`A084545(∑[2-(4/2-a(n-1)-a(n-2))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A282236.P8069171094966333566
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 - ((4 : ℚ) / 2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084545 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A282236.P8069171094966333566

namespace A282236

/-- `A084545(∑[2-(4/2-a(n-1)-a(n-2))])` -/
def P8069171094966333566.Spec : Prop :=
  ∀ n, P8069171094966333566.a n = A282236 (n + 1)

end A282236

/-!
# A282237: a(n) = Fibonacci(n) represented in bijective base-6 numeration.

The programs for A282237, the canonical program `A282237.P2386989297968182608` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282237 has offset 1).

The definition of A282237 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A057436, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A282237.P2386989297968182608

`A057436(A000045(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A282237

/-- `A057436(A000045(n+1))` -/
def P2386989297968182608.Spec : Prop :=
  ∀ n, P2386989297968182608.a n = A282237 (n + 1)

theorem P2386989297968182608.correct : P2386989297968182608.Spec := by
  intro n
  simp only [A282237, Nat.add_sub_cancel]

end A282237

/-! ## A282237.P10681267653253644795

`A057436(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A282237.P10681267653253644795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (f1 (n + 1) - f1 n).toNat

end

end A282237.P10681267653253644795

namespace A282237

/-- `A057436(Δ[round(ϕ*a(n-1))])` -/
def P10681267653253644795.Spec : Prop :=
  ∀ n, P10681267653253644795.a n = A282237 (n + 1)

end A282237

/-! ## A282237.P7710402636263832520

`A057436(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A282237.P7710402636263832520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282237.P7710402636263832520

namespace A282237

/-- `A057436(∑[round(ϕ*a(n-1))])` -/
def P7710402636263832520.Spec : Prop :=
  ∀ n, P7710402636263832520.a n = A282237 (n + 1)

end A282237

/-! ## A282237.P221904273935557941

`A057436(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A282237.P221904273935557941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282237.P221904273935557941

namespace A282237

/-- `A057436(∑[a(n-1)+a(n-2)])` -/
def P221904273935557941.Spec : Prop :=
  ∀ n, P221904273935557941.a n = A282237 (n + 1)

end A282237

/-! ## A282237.P8602190639919897960

`A057436(∑[2-(4/2-a(n-1)-a(n-2))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A282237.P8602190639919897960
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 - ((4 : ℚ) / 2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057436 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A282237.P8602190639919897960

namespace A282237

/-- `A057436(∑[2-(4/2-a(n-1)-a(n-2))])` -/
def P8602190639919897960.Spec : Prop :=
  ∀ n, P8602190639919897960.a n = A282237 (n + 1)

end A282237

/-!
# A282238: a(n) = Fibonacci(n) represented in bijective base-7 numeration.

The programs for A282238, the canonical program `A282238.P12994779080358154349` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282238 has offset 1).

The definition of A282238 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214677, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A282238.P12994779080358154349

`A214677(A000045(n+1))`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A282238

/-- `A214677(A000045(n+1))` -/
def P12994779080358154349.Spec : Prop :=
  ∀ n, P12994779080358154349.a n = A282238 (n + 1)

theorem P12994779080358154349.correct : P12994779080358154349.Spec := by
  intro n
  simp only [A282238, Nat.add_sub_cancel]

end A282238

/-! ## A282238.P7358019374807505149

`A214677(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A282238.P7358019374807505149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (f1 (n + 1) - f1 n).toNat

end

end A282238.P7358019374807505149

namespace A282238

/-- `A214677(Δ[round(ϕ*a(n-1))])` -/
def P7358019374807505149.Spec : Prop :=
  ∀ n, P7358019374807505149.a n = A282238 (n + 1)

end A282238

/-! ## A282238.P5650931450133509089

`A214677(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A282238.P5650931450133509089
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282238.P5650931450133509089

namespace A282238

/-- `A214677(∑[round(ϕ*a(n-1))])` -/
def P5650931450133509089.Spec : Prop :=
  ∀ n, P5650931450133509089.a n = A282238 (n + 1)

end A282238

/-! ## A282238.P1125141496228825821

`A214677(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A282238.P1125141496228825821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282238.P1125141496228825821

namespace A282238

/-- `A214677(∑[a(n-1)+a(n-2)])` -/
def P1125141496228825821.Spec : Prop :=
  ∀ n, P1125141496228825821.a n = A282238 (n + 1)

end A282238

/-! ## A282238.P12118361190106715241

`A214677(∑[2-(4/2-a(n-1)-a(n-2))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A282238.P12118361190106715241
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 - ((4 : ℚ) / 2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A282238.P12118361190106715241

namespace A282238

/-- `A214677(∑[2-(4/2-a(n-1)-a(n-2))])` -/
def P12118361190106715241.Spec : Prop :=
  ∀ n, P12118361190106715241.a n = A282238 (n + 1)

end A282238

/-!
# A282239: a(n) = Fibonacci(n) represented in bijective base-8 numeration.

The programs for A282239, the canonical program `A282239.P9293021840617921034` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282239 has offset 1).

The definition of A282239 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A214678, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A282239.P9293021840617921034

`A214678(A000045(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A282239

/-- `A214678(A000045(n+1))` -/
def P9293021840617921034.Spec : Prop :=
  ∀ n, P9293021840617921034.a n = A282239 (n + 1)

theorem P9293021840617921034.correct : P9293021840617921034.Spec := by
  intro n
  simp only [A282239, Nat.add_sub_cancel]

end A282239

/-! ## A282239.P12398505466690050823

`A214678(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A282239.P12398505466690050823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (f1 (n + 1) - f1 n).toNat

end

end A282239.P12398505466690050823

namespace A282239

/-- `A214678(Δ[round(ϕ*a(n-1))])` -/
def P12398505466690050823.Spec : Prop :=
  ∀ n, P12398505466690050823.a n = A282239 (n + 1)

end A282239

/-! ## A282239.P10324504168902052224

`A214678(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A282239.P10324504168902052224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282239.P10324504168902052224

namespace A282239

/-- `A214678(∑[round(ϕ*a(n-1))])` -/
def P10324504168902052224.Spec : Prop :=
  ∀ n, P10324504168902052224.a n = A282239 (n + 1)

end A282239

/-! ## A282239.P16803970575398512789

`A214678(∑[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A282239.P16803970575398512789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282239.P16803970575398512789

namespace A282239

/-- `A214678(∑[a(n-1)+a(n-2)])` -/
def P16803970575398512789.Spec : Prop :=
  ∀ n, P16803970575398512789.a n = A282239 (n + 1)

end A282239

/-! ## A282239.P10849318127241431771

`A214678(∑[2-(4/2-a(n-1)-a(n-2))])` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A282239.P10849318127241431771
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 - ((4 : ℚ) / 2 - f1 (n - 1) - f1 (n - 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A282239.P10849318127241431771

namespace A282239

/-- `A214678(∑[2-(4/2-a(n-1)-a(n-2))])` -/
def P10849318127241431771.Spec : Prop :=
  ∀ n, P10849318127241431771.a n = A282239 (n + 1)

end A282239

/-!
# A282240: a(n) = Fibonacci(n) represented in bijective base-9 numeration.

The programs for A282240, the canonical program `A282240.P17605542633411655101` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282240 has offset 1).

The definition of A282240 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A052382, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A282240.P17605542633411655101

`A052382(A000045(n+1))`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A282240

/-- `A052382(A000045(n+1))` -/
def P17605542633411655101.Spec : Prop :=
  ∀ n, P17605542633411655101.a n = A282240 (n + 1)

theorem P17605542633411655101.correct : P17605542633411655101.Spec := by
  intro n
  simp only [A282240, Nat.add_sub_cancel]

end A282240

/-! ## A282240.P12517905548557522946

`A052382(Δ[floor(ϕ*a(n-1))])` with `a(0)=2`
-/

namespace A282240.P12517905548557522946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  ⌊Real.goldenRatio * (f1 (n - 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (f1 (n + 1) - f1 n).toNat

end

end A282240.P12517905548557522946

namespace A282240

/-- `A052382(Δ[floor(ϕ*a(n-1))])` -/
def P12517905548557522946.Spec : Prop :=
  ∀ n, P12517905548557522946.a n = A282240 (n + 1)

end A282240

/-! ## A282240.P2190576440753437132

`A052382(Δ[round(ϕ*a(n-1))])` with `a(0)=1`
-/

namespace A282240.P2190576440753437132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (f1 (n + 1) - f1 n).toNat

end

end A282240.P2190576440753437132

namespace A282240

/-- `A052382(Δ[round(ϕ*a(n-1))])` -/
def P2190576440753437132.Spec : Prop :=
  ∀ n, P2190576440753437132.a n = A282240 (n + 1)

end A282240

/-! ## A282240.P12123112276665974558

`A052382(∑[round(ϕ*a(n-1))])` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`
-/

namespace A282240.P12123112276665974558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A282240.P12123112276665974558

namespace A282240

/-- `A052382(∑[round(ϕ*a(n-1))])` -/
def P12123112276665974558.Spec : Prop :=
  ∀ n, P12123112276665974558.a n = A282240 (n + 1)

end A282240

/-! ## A282240.P12244744919422764438

`A052382(Δ[a(n-1)+a(n-2)])` with `a(0)=1, a(1)=2`
-/

namespace A282240.P12244744919422764438
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A282240.P12244744919422764438

namespace A282240

/-- `A052382(Δ[a(n-1)+a(n-2)])` -/
def P12244744919422764438.Spec : Prop :=
  ∀ n, P12244744919422764438.a n = A282240 (n + 1)

end A282240

/-!
# A282241: Numbers that are the sum of 3 distinct nonzero squares in two ways with symmetrical differences: a(n) = (p-a)^2+p^2+(p+b)^2 = (q-b)^2+q^2+(q+a)^2, p, q, a, b, positive integer, a

The programs for A282241, there is no canonical definition to state claims against.
-/

/-! ## A282241.P5526449953609158715

`A003344(2*(n+2))+A000030(A131668(3*(n+1)))`
-/

namespace A282241.P5526449953609158715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003344 (2 * (n + 2)) + A000030 (A131668 (3 * (n + 1))).toNat

end

end A282241.P5526449953609158715

/-!
# A282242: The smallest square referenced in A049094 (Numbers n such that 2^n - 1 is divisible by a square > 1).

The programs for A282242, there is no canonical definition to state claims against.
-/

/-! ## A282242.P3235360719653728239

`A282243(n+1)²`
-/

namespace A282242.P3235360719653728239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282243 (n + 1) ^ 2

end

end A282242.P3235360719653728239

/-! ## A282242.P13373798154361701895

`∏{p}[A282243(n+1), #*A000265(#)]`
-/

namespace A282242.P13373798154361701895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282243 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (p : ℤ) * A000265 p

end

end A282242.P13373798154361701895

/-! ## A282242.P15110197440119798548

`(A282243(n+1)^2)%A252679(n+1)`
-/

namespace A282242.P15110197440119798548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282243 (n + 1) ^ 2) (A252679 (n + 1))

end

end A282242.P15110197440119798548

/-! ## A282242.P5571925037538226768

`A000290(A282243(n+1)%A136055(n+1))`
-/

namespace A282242.P5571925037538226768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A282243 (n + 1)) (A136055 (n + 1))).toNat

end

end A282242.P5571925037538226768

/-! ## A282242.P4337237313376767377

`A000290(A282243(n+1))%A063850(n+3)`
-/

namespace A282242.P4337237313376767377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A282243 (n + 1)).toNat) (A063850 (n + 3))

end

end A282242.P4337237313376767377

/-! ## A282242.P10305363228900430415

`A000265(2*A282243(n+1))*A282243(n+1)`
-/

namespace A282242.P10305363228900430415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (2 * A282243 (n + 1)).toNat * A282243 (n + 1)

end

end A282242.P10305363228900430415

/-! ## A282242.P17248207949093700272

`A282243(A004525(2*(n+1)))*A282243(n+1)`
-/

namespace A282242.P17248207949093700272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282243 (A004525 (2 * (n + 1))).toNat * A282243 (n + 1)

end

end A282242.P17248207949093700272

/-! ## A282242.P14831639877791140082

`A014491(A049093(n+1))*A282243(n+1)*A282243(n+1)`
-/

namespace A282242.P14831639877791140082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014491 (A049093 (n + 1)).toNat * A282243 (n + 1) * A282243 (n + 1)

end

end A282242.P14831639877791140082

/-! ## A282242.P17016835658448741408

`A110654(2*A282243(n+1)*A282243(n+1))`
-/

namespace A282242.P17016835658448741408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (2 * A282243 (n + 1) * A282243 (n + 1)).toNat

end

end A282242.P17016835658448741408

/-!
# A282243: Square root of the smallest square referenced in A049094 (Numbers n such that 2^n - 1 is divisible by a square > 1).

The programs for A282243, there is no canonical definition to state claims against.
-/

/-! ## A282243.P4972941447860459712

`sqrt(A282242(n+1))`
-/

namespace A282243.P4972941447860459712
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A282242 (n + 1) : ℝ)

end

end A282243.P4972941447860459712

/-! ## A282243.P16903415963791405606

`A000265(root(A282242(n+1), 2))`
-/

namespace A282243.P16903415963791405606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway ((A282242 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282243.P16903415963791405606

/-! ## A282243.P12747882321093077901

`A006530(root(A282242(n+1), 2))`
-/

namespace A282243.P12747882321093077901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A282242 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282243.P12747882321093077901

/-! ## A282243.P10222398009555689718

`A014963(root(A282242(n+1), 2))`
-/

namespace A282243.P10222398009555689718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A282242 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282243.P10222398009555689718

/-! ## A282243.P2925701980904158289

`A020639(root(A282242(n+1), 2))`
-/

namespace A282243.P2925701980904158289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A282242 (n + 1) : ℝ) ^ (1 / (2 : ℝ)))).toNat

end

end A282243.P2925701980904158289

/-! ## A282243.P4241267136949878878

`A014963(2*A282242(n+1)-A282242(n+1))`
-/

namespace A282243.P4241267136949878878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A282242 (n + 1) - A282242 (n + 1)).toNat

end

end A282243.P4241267136949878878

/-! ## A282243.P14889871101203236240

`A020639(2*A282242(n+1)-A282242(n+1))`
-/

namespace A282243.P14889871101203236240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A282242 (n + 1) - A282242 (n + 1)).toNat

end

end A282243.P14889871101203236240

/-!
# A282244: Lexicographic block-fractal zero-one word with initial block 01.

The programs for A282244, there is no canonical definition to state claims against.
-/

/-! ## A282244.P12648174282781355545

`A065043(A372591(2*(n+2))-A007318(n))`
-/

namespace A282244.P12648174282781355545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065043 (A372591 (2 * (n + 2)) - A007318 n).toNat

end

end A282244.P12648174282781355545

/-! ## A282244.P4527115302306026505

`A003849(A119270(3*n+5)%A047290(n+1))`
-/

namespace A282244.P4527115302306026505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003849 (Int.tmod (A119270 (3 * n + 5)) (A047290 (n + 1))).toNat

end

end A282244.P4527115302306026505

/-! ## A282244.P17425003134667813480

`A188014(A089376(n+1)-((n+1)^(5-n%2))%10)`
-/

namespace A282244.P17425003134667813480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A089376 (n + 1) - Int.tmod (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (5 - ((n % 2 : ℕ) : ℤ) : ℤ))) 10).toNat

end

end A282244.P17425003134667813480

/-! ## A282244.P14402612262583375900

`A188014(A089376(n+1)-A229522(n+1))`
-/

namespace A282244.P14402612262583375900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188014 (A089376 (n + 1) - A229522 (n + 1)).toNat

end

end A282244.P14402612262583375900

/-! ## A282244.P10594749187975405685

`A172303(A321093(n)+A309896(3*n+2))`
-/

namespace A282244.P10594749187975405685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172303 (A321093 n + A309896 (3 * n + 2)).toNat

end

end A282244.P10594749187975405685

/-!
# A282245: a(n) = 1/n times the number of n-colorings of the complete bipartite graph K_(n,n).

The programs for A282245, there is no canonical definition to state claims against.
-/

/-! ## A282245.P4201953231973263083

`A212085(A001844(n))/(n+1)`
-/

namespace A282245.P4201953231973263083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A212085 (A001844 n).toNat : ℚ) / (n + 1 : ℚ)

end

end A282245.P4201953231973263083

/-!
# A282246: Primes p such that the sum of all primes <= p has no prime divisor > p.

The programs for A282246, there is no canonical definition to state claims against.
-/

/-! ## A282246.P6723179636215486422

`or(A001222(A027104(n)), A031368(n+1))`
-/

namespace A282246.P6723179636215486422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A001222 (A027104 n).toNat) (A031368 (n + 1))

end

end A282246.P6723179636215486422

/-! ## A282246.P3775346728245625957

`or(A031368(n+1), A083912(A106188(n)))`
-/

namespace A282246.P3775346728245625957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031368 (n + 1)) (A083912 (A106188 n).toNat)

end

end A282246.P3775346728245625957

/-! ## A282246.P9459872456359762962

`or(A031368(n+1), A065339(A135854(n)))`
-/

namespace A282246.P9459872456359762962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031368 (n + 1)) (A065339 (A135854 n).toNat)

end

end A282246.P9459872456359762962

/-! ## A282246.P4483039180527197095

`or(A031368(n+1), A339890(A024024(n)))`
-/

namespace A282246.P4483039180527197095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031368 (n + 1)) (A339890 (A024024 n).toNat)

end

end A282246.P4483039180527197095

/-! ## A282246.P11409280405428941650

`or(A031368(n+1), A090330(A288523(n)))`
-/

namespace A282246.P11409280405428941650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A031368 (n + 1)) (A090330 (A288523 n).toNat)

end

end A282246.P11409280405428941650

/-!
# A282247: a(n) = 1/(2*n) times the number of n-colorings of the complete tripartite graph K_(k,k,k).

The programs for A282247, there is no canonical definition to state claims against.
-/

/-! ## A282247.P16688441181349670654

`A212221(∑[4*n]+1)`
-/

namespace A282247.P16688441181349670654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212221 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A282247.P16688441181349670654

/-! ## A282247.P8273592285995438600

`A178334(n)*A212221(A001844(n))`
-/

namespace A282247.P8273592285995438600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178334 n * A212221 (A001844 n).toNat

end

end A282247.P8273592285995438600

/-! ## A282247.P10712319060945173508

`lcm(A020985(n), A212221(A001844(n)))`
-/

namespace A282247.P10712319060945173508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A212221 (A001844 n).toNat)

end

end A282247.P10712319060945173508

/-! ## A282247.P4326779635158491162

`A212221(A001844(n))+A007814(2*n+5)`
-/

namespace A282247.P4326779635158491162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212221 (A001844 n).toNat + A007814 (2 * n + 5)

end

end A282247.P4326779635158491162

/-! ## A282247.P687529301513922089

`A212221(A000982(2*n+1))+A154955(3*n+4)`
-/

namespace A282247.P687529301513922089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212221 (A000982 (2 * n + 1)).toNat + A154955 (3 * n + 4)

end

end A282247.P687529301513922089

/-!
# A282249: Number of representations of n as a sum of products of pairs of positive integers: n = Sum_{k=1..m} i_k*j_k with m >= 0, i_k < j_k, j_k > j_{k+1} and all factors distinct.

The programs for A282249, there is no canonical definition to state claims against.
-/

/-! ## A282249.P15514594303846579896

`A212625(A302254(n))-A033264(n+1)`
-/

namespace A282249.P15514594303846579896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212625 (A302254 n).toNat - A033264 (n + 1)

end

end A282249.P15514594303846579896

/-! ## A282249.P1742826613778336046

`A187498(n)+A088917(A000081(n))`
-/

namespace A282249.P1742826613778336046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187498 n + A088917 (A000081 n).toNat

end

end A282249.P1742826613778336046

/-! ## A282249.P10450381086384704520

`A331416(A241338(n))+A187498(n)`
-/

namespace A282249.P10450381086384704520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331416 (A241338 n).toNat + A187498 n

end

end A282249.P10450381086384704520

/-!
# A282252: Exponential Riordan array [Bessel_I(0,2*x)^2, x].

The programs for A282252, the canonical program `A282252.P10656512343650803153` is in `Seq.B008.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282252 has offset 0).

The definition of A282252 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1275 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282252.P1431465274203461618

`A109187(n)²/A007318(n)`
-/

namespace A282252.P1431465274203461618
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n ^ 2 : ℚ) / (A007318 n : ℚ)

end

end A282252.P1431465274203461618

namespace A282252

/-- `A109187(n)²/A007318(n)` -/
def P1431465274203461618.Spec : Prop :=
  ∀ n, P1431465274203461618.a n = (A282252 n : ℚ)

end A282252

/-! ## A282252.P11170813494175463506

`A109187(n)²/A130595(n)`
-/

namespace A282252.P11170813494175463506
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n ^ 2 : ℚ) / (A130595 n : ℚ)

end

end A282252.P11170813494175463506

namespace A282252

/-- `A109187(n)²/A130595(n)` -/
def P11170813494175463506.Spec : Prop :=
  ∀ n, P11170813494175463506.a n = (A282252 n : ℚ)

end A282252

/-! ## A282252.P17676735252379852537

`A109187(n)²/A131375(n)`
-/

namespace A282252.P17676735252379852537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n ^ 2 : ℚ) / (A131375 n : ℚ)

end

end A282252.P17676735252379852537

namespace A282252

/-- `A109187(n)²/A131375(n)` -/
def P17676735252379852537.Spec : Prop :=
  ∀ n, P17676735252379852537.a n = (A282252 n : ℚ)

end A282252

/-! ## A282252.P10556915312596507238

`A109187(n)²/A134521(n)`
-/

namespace A282252.P10556915312596507238
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n ^ 2 : ℚ) / (A134521 n : ℚ)

end

end A282252.P10556915312596507238

namespace A282252

/-- `A109187(n)²/A134521(n)` -/
def P10556915312596507238.Spec : Prop :=
  ∀ n, P10556915312596507238.a n = (A282252 n : ℚ)

end A282252

/-! ## A282252.P10656512343650803153

`A001405(A025581(n))*A109187(n)`

The canonical program, it is in `Seq.B008.C001`.
-/

namespace A282252

/-- `A001405(A025581(n))*A109187(n)` -/
def P10656512343650803153.Spec : Prop :=
  ∀ n, P10656512343650803153.a n = A282252 n

theorem P10656512343650803153.correct : P10656512343650803153.Spec := by
  intro n
  simp only [A282252]

end A282252

/-! ## A282252.P3105905892314823983

`A107230(n)*A126869(A025581(n))`
-/

namespace A282252.P3105905892314823983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107230 n * A126869 (A025581 n).toNat

end

end A282252.P3105905892314823983

namespace A282252

/-- `A107230(n)*A126869(A025581(n))` -/
def P3105905892314823983.Spec : Prop :=
  ∀ n, P3105905892314823983.a n = A282252 n

end A282252

/-! ## A282252.P3213865979919305041

`A109187(n)²/A074909(A083920(n))`
-/

namespace A282252.P3213865979919305041
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n ^ 2 : ℚ) / (A074909 (A083920 n).toNat : ℚ)

end

end A282252.P3213865979919305041

namespace A282252

/-- `A109187(n)²/A074909(A083920(n))` -/
def P3213865979919305041.Spec : Prop :=
  ∀ n, P3213865979919305041.a n = (A282252 n : ℚ)

end A282252

/-! ## A282252.P13166747567795068130

`A109187(n)/A130595(n)*A298608(n)`
-/

namespace A282252.P13166747567795068130
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109187 n : ℚ) / (A130595 n : ℚ) * (A298608 n : ℚ)

end

end A282252.P13166747567795068130

namespace A282252

/-- `A109187(n)/A130595(n)*A298608(n)` -/
def P13166747567795068130.Spec : Prop :=
  ∀ n, P13166747567795068130.a n = (A282252 n : ℚ)

end A282252

/-!
# A282254: Coefficients in q-expansion of (3*E_4^3 + 2*E_6^2 - 5*E_2*E_4*E_6)/1584, where E_2, E_4, E_6 are the Eisenstein series shown in A006352, A004009, A013973, respectively.

The programs for A282254, the canonical program `A282254.P16562155844382873698` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282254 has offset 0).

The definition of A282254 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282254.P16562155844382873698

`∑{d}[n, n*#^9]`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A282254

/-- `∑{d}[n, n*#^9]` -/
def P16562155844382873698.Spec : Prop :=
  ∀ n, (P16562155844382873698.a n : ℤ) = A282254 n

theorem P16562155844382873698.correct : P16562155844382873698.Spec := by
  intro n
  simp only [A282254]

end A282254

/-! ## A282254.P1514109446847178288

`n*∑{d}[n, #*#²²²]`
-/

namespace A282254.P1514109446847178288
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ d ∈ Nat.divisors (f1 n), d * ((d ^ 2) ^ 2) ^ 2)

end

end A282254.P1514109446847178288

namespace A282254

/-- `n*∑{d}[n, #*#²²²]` -/
def P1514109446847178288.Spec : Prop :=
  ∀ n, (P1514109446847178288.a n : ℤ) = A282254 n

end A282254

/-! ## A282254.P5086433595350279728

`n*A013957(C(2, n+2)+n)`
-/

namespace A282254.P5086433595350279728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013957 (Nat.choose 2 (n + 2) + n)

end

end A282254.P5086433595350279728

namespace A282254

/-- `n*A013957(C(2, n+2)+n)` -/
def P5086433595350279728.Spec : Prop :=
  ∀ n, P5086433595350279728.a n = A282254 n

end A282254

/-! ## A282254.P18020811753509066166

`n*A013957((2*n)%(n+1)+1)`
-/

namespace A282254.P18020811753509066166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013957 (2 * n % (n + 1) + 1)

end

end A282254.P18020811753509066166

namespace A282254

/-- `n*A013957((2*n)%(n+1)+1)` -/
def P18020811753509066166.Spec : Prop :=
  ∀ n, P18020811753509066166.a n = A282254 n

end A282254

/-! ## A282254.P15898340934613137027

`n*A013957(A028310(n))`
-/

namespace A282254.P15898340934613137027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013957 (A028310 n).toNat

end

end A282254.P15898340934613137027

namespace A282254

/-- `n*A013957(A028310(n))` -/
def P15898340934613137027.Spec : Prop :=
  ∀ n, P15898340934613137027.a n = A282254 n

end A282254

/-! ## A282254.P5745381844460749341

`A280021(n)/A028310(n)`
-/

namespace A282254.P5745381844460749341
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280021 n : ℚ) / (A028310 n : ℚ)

end

end A282254.P5745381844460749341

namespace A282254

/-- `A280021(n)/A028310(n)` -/
def P5745381844460749341.Spec : Prop :=
  ∀ n, P5745381844460749341.a n = (A282254 n : ℚ)

end A282254

/-! ## A282254.P14129551483995136210

`n*A013957(A123108(2*n))`
-/

namespace A282254.P14129551483995136210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A013957 (A123108 (2 * n)).toNat

end

end A282254.P14129551483995136210

namespace A282254

/-- `n*A013957(A123108(2*n))` -/
def P14129551483995136210.Spec : Prop :=
  ∀ n, P14129551483995136210.a n = A282254 n

end A282254

/-! ## A282254.P16402610349682269030

`A280021(n)/A025581(A179865(n+1))`
-/

namespace A282254.P16402610349682269030
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A280021 n : ℚ) / (A025581 (A179865 (n + 1)).toNat : ℚ)

end

end A282254.P16402610349682269030

namespace A282254

/-- `A280021(n)/A025581(A179865(n+1))` -/
def P16402610349682269030.Spec : Prop :=
  ∀ n, P16402610349682269030.a n = (A282254 n : ℚ)

end A282254

/-!
# A282255: Least k > 0 such that sigma(n) divides sigma(n+k).

The programs for A282255, there is no canonical definition to state claims against.
-/

/-! ## A282255.P404954394565316084

`A069789(n+1)-(n+1)`
-/

namespace A282255.P404954394565316084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069789 (n + 1) - (n + 1 : ℤ)

end

end A282255.P404954394565316084

/-! ## A282255.P397932510496838084

`A069789(Δ[n²]-n)-n-1`
-/

namespace A282255.P397932510496838084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069789 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat - (n : ℤ) - 1

end

end A282255.P397932510496838084

/-! ## A282255.P3969891629443254697

`A000027(A069789(n+1)+xor(n, -1))`
-/

namespace A282255.P3969891629443254697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A069789 (n + 1) + Int.xor (n : ℤ) (-1)).toNat

end

end A282255.P3969891629443254697

/-! ## A282255.P17025919656511769777

`A023443(A069789(n+1)-n)`
-/

namespace A282255.P17025919656511769777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A069789 (n + 1) - (n : ℤ)).toNat

end

end A282255.P17025919656511769777

/-! ## A282255.P8563377143813135844

`A108086(A034856(n+1))+A069789(n+1)`
-/

namespace A282255.P8563377143813135844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108086 (A034856 (n + 1)).toNat + A069789 (n + 1)

end

end A282255.P8563377143813135844

/-!
# A282257: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 443", based on the 5-celled von Neumann neighborhood.

The programs for A282257, there is no canonical definition to state claims against.
-/

/-! ## A282257.P10316696506024405450

`A007088(A282259(n))`
-/

namespace A282257.P10316696506024405450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282259 n).toNat

end

end A282257.P10316696506024405450

/-! ## A282257.P14657861984969950977

`A185544(2*A282259(n))`
-/

namespace A282257.P14657861984969950977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282259 n).toNat

end

end A282257.P14657861984969950977

/-!
# A282258: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 443", based on the 5-celled von Neumann neighborhood.

The programs for A282258, there is no canonical definition to state claims against.
-/

/-! ## A282258.P17346252399615870510

`A007088(A282260(n))`
-/

namespace A282258.P17346252399615870510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282260 n).toNat

end

end A282258.P17346252399615870510

/-! ## A282258.P8951427502773302232

`A185544(2*A282260(n))`
-/

namespace A282258.P8951427502773302232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282260 n).toNat

end

end A282258.P8951427502773302232

/-!
# A282260: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 443", based on the 5-celled von Neumann neighborhood.

The programs for A282260, there is no canonical definition to state claims against.
-/

/-! ## A282260.P758477217320258230

`or(A281751(n), A334274(A334269(n+1)))`
-/

namespace A282260.P758477217320258230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A281751 n) (A334274 (A334269 (n + 1)).toNat)

end

end A282260.P758477217320258230

/-! ## A282260.P2263858053623226750

`or(A281897(n), A334274(A334269(n+1)))`
-/

namespace A282260.P2263858053623226750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A281897 n) (A334274 (A334269 (n + 1)).toNat)

end

end A282260.P2263858053623226750

/-! ## A282260.P7294638716535682246

`or(A282106(n), A334274(A334269(n+1)))`
-/

namespace A282260.P7294638716535682246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A282106 n) (A334274 (A334269 (n + 1)).toNat)

end

end A282260.P7294638716535682246

/-! ## A282260.P1130696262616751206

`or(A282366(n), A334274(A334269(n+1)))`
-/

namespace A282260.P1130696262616751206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A282366 n) (A334274 (A334269 (n + 1)).toNat)

end

end A282260.P1130696262616751206

/-!
# A282261: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A282261, there is no canonical definition to state claims against.
-/

/-! ## A282261.P6189709401681168521

`A007088(A282263(n))`
-/

namespace A282261.P6189709401681168521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282263 n).toNat

end

end A282261.P6189709401681168521

/-! ## A282261.P11178020073181254172

`A007088(A095121(n)+1-A282828(n))`
-/

namespace A282261.P11178020073181254172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A282828 n)).toNat

end

end A282261.P11178020073181254172

/-! ## A282261.P12477170849885094839

`A007088(1-(A282828(n)-A095121(n)))`
-/

namespace A282261.P12477170849885094839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A282828 n - A095121 n)).toNat

end

end A282261.P12477170849885094839

/-! ## A282261.P4223276445941792395

`A007088(A281758(n)+A283067(n)-A282828(n))`
-/

namespace A282261.P4223276445941792395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281758 n + (A283067 n - A282828 n)).toNat

end

end A282261.P4223276445941792395

/-! ## A282261.P3503298586679930743

`A007088(A281759(n)+A283068(n)-A282828(n))`
-/

namespace A282261.P3503298586679930743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281759 n + (A283068 n - A282828 n)).toNat

end

end A282261.P3503298586679930743

/-!
# A282262: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A282262, there is no canonical definition to state claims against.
-/

/-! ## A282262.P1106238471281128055

`A007088(A282264(n))`
-/

namespace A282262.P1106238471281128055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282264 n).toNat

end

end A282262.P1106238471281128055

/-! ## A282262.P4456112629157072467

`A007088(A095121(n)+1-A282829(n))`
-/

namespace A282262.P4456112629157072467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A095121 n + (1 - A282829 n)).toNat

end

end A282262.P4456112629157072467

/-! ## A282262.P9629087306299923119

`A007088(1-(A282829(n)-A095121(n)))`
-/

namespace A282262.P9629087306299923119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (1 - (A282829 n - A095121 n)).toNat

end

end A282262.P9629087306299923119

/-! ## A282262.P1849685166063692010

`A007088(or(1, A126646(n)-A282829(n)))`
-/

namespace A282262.P1849685166063692010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor 1 (A126646 n - A282829 n)).toNat

end

end A282262.P1849685166063692010

/-! ## A282262.P5283808360530972534

`A007088(A281758(n)+A283067(n)-A282829(n))`
-/

namespace A282262.P5283808360530972534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A281758 n + (A283067 n - A282829 n)).toNat

end

end A282262.P5283808360530972534

/-!
# A282263: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A282263, there is no canonical definition to state claims against.
-/

/-! ## A282263.P12900734516309545522

`A095121(n)+1-A282828(n)`
-/

namespace A282263.P12900734516309545522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282828 n)

end

end A282263.P12900734516309545522

/-! ## A282263.P17785353127088225717

`A281758(n)+A283067(n)-A282828(n)`
-/

namespace A282263.P17785353127088225717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281758 n + (A283067 n - A282828 n)

end

end A282263.P17785353127088225717

/-! ## A282263.P12842815050725045202

`A281759(n)+A283068(n)-A282828(n)`
-/

namespace A282263.P12842815050725045202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281759 n + (A283068 n - A282828 n)

end

end A282263.P12842815050725045202

/-! ## A282263.P8401696592407016103

`A282264(n)+A282829(n)-A282828(n)`
-/

namespace A282263.P8401696592407016103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282264 n + (A282829 n - A282828 n)

end

end A282263.P8401696592407016103

/-! ## A282263.P3538814520834474710

`A126646(n)+A057428(n)*A282828(n)`
-/

namespace A282263.P3538814520834474710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A282828 n

end

end A282263.P3538814520834474710

/-! ## A282263.P12268077439531694577

`A126646(n)-A282828(n)%A007070(n)`
-/

namespace A282263.P12268077439531694577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282828 n) (A007070 n)

end

end A282263.P12268077439531694577

/-! ## A282263.P14383341176322276882

`A127330(A000124(n))-A282828(n)`
-/

namespace A282263.P14383341176322276882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A282828 n

end

end A282263.P14383341176322276882

/-!
# A282264: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 446", based on the 5-celled von Neumann neighborhood.

The programs for A282264, there is no canonical definition to state claims against.
-/

/-! ## A282264.P4035781113142247168

`A095121(n)+1-A282829(n)`
-/

namespace A282264.P4035781113142247168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095121 n + (1 - A282829 n)

end

end A282264.P4035781113142247168

/-! ## A282264.P995107170537716352

`or(1, A126646(n)-A282829(n))`
-/

namespace A282264.P995107170537716352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A126646 n - A282829 n)

end

end A282264.P995107170537716352

/-! ## A282264.P13319386935872203841

`A281758(n)+A283067(n)-A282829(n)`
-/

namespace A282264.P13319386935872203841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281758 n + (A283067 n - A282829 n)

end

end A282264.P13319386935872203841

/-! ## A282264.P6311647187015763985

`A281759(n)+A283068(n)-A282829(n)`
-/

namespace A282264.P6311647187015763985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281759 n + (A283068 n - A282829 n)

end

end A282264.P6311647187015763985

/-! ## A282264.P11066095334678983744

`A126646(n)+A057428(n)*A282829(n)`
-/

namespace A282264.P11066095334678983744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n + A057428 n * A282829 n

end

end A282264.P11066095334678983744

/-! ## A282264.P16965156115992022046

`A126646(n)-A282829(n)%A007070(n)`
-/

namespace A282264.P16965156115992022046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 n - Int.tmod (A282829 n) (A007070 n)

end

end A282264.P16965156115992022046

/-! ## A282264.P7776045832334897961

`A127330(A000124(n))-A282829(n)`
-/

namespace A282264.P7776045832334897961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127330 (A000124 n).toNat - A282829 n

end

end A282264.P7776045832334897961

/-!
# A282265: 

The programs for A282265, there is no canonical definition to state claims against.
-/

/-! ## A282265.P8837905241322350161

`A279720(n)+A185284(A326547(n))`
-/

namespace A282265.P8837905241322350161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279720 n + A185284 (A326547 n).toNat

end

end A282265.P8837905241322350161

/-! ## A282265.P18191627441103419440

`A279720(n)+A010052(A077405(n+1))`
-/

namespace A282265.P18191627441103419440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279720 n + A010052 (A077405 (n + 1)).toNat

end

end A282265.P18191627441103419440

/-!
# A282267: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 449", based on the 5-celled von Neumann neighborhood.

The programs for A282267, there is no canonical definition to state claims against.
-/

/-! ## A282267.P6710119589349982250

`A279722(n)+A010051(A176491(n))`
-/

namespace A282267.P6710119589349982250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279722 n + A010051 (A176491 n).toNat

end

end A282267.P6710119589349982250

/-! ## A282267.P11497228492250885379

`A279722(n)+A186747(A140186(n))`
-/

namespace A282267.P11497228492250885379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279722 n + A186747 (A140186 n).toNat

end

end A282267.P11497228492250885379

/-! ## A282267.P13169315439962310312

`A279722(n)+A185284(A326547(n))`
-/

namespace A282267.P13169315439962310312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279722 n + A185284 (A326547 n).toNat

end

end A282267.P13169315439962310312

/-! ## A282267.P3184273634310747727

`A279722(n)+A010052(A077405(n+1))`
-/

namespace A282267.P3184273634310747727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279722 n + A010052 (A077405 (n + 1)).toNat

end

end A282267.P3184273634310747727

/-! ## A282267.P11726550451370073417

`or(A010054(A138342(n+1)), A279722(n))`
-/

namespace A282267.P11726550451370073417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A010054 (A138342 (n + 1)).toNat) (A279722 n)

end

end A282267.P11726550451370073417

/-!
# A282269: The smallest square referenced in A049096 (Numbers n such that 2^n + 1 is divisible by a square > 1).

The programs for A282269, there is no canonical definition to state claims against.
-/

/-! ## A282269.P1230602714514145673

`A282270(n+1)²`
-/

namespace A282269.P1230602714514145673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282270 (n + 1) ^ 2

end

end A282269.P1230602714514145673

/-! ## A282269.P7605090880981453049

`A282270(∑[n+1]-∑[n])^2`
-/

namespace A282269.P7605090880981453049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282270 (∑ j ∈ Finset.range (n + 1), f1 j - ∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

end

end A282269.P7605090880981453049

/-! ## A282269.P17116648933168650792

`A000290(A282270(n+1)%A017593(n))`
-/

namespace A282269.P17116648933168650792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000290 (Int.tmod (A282270 (n + 1)) (A017593 n)).toNat

end

end A282269.P17116648933168650792

/-! ## A282269.P16023486473360424954

`A000290(A282270(n+1))%A063850(n+3)`
-/

namespace A282269.P16023486473360424954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000290 (A282270 (n + 1)).toNat) (A063850 (n + 3))

end

end A282269.P16023486473360424954

/-! ## A282269.P9509497427922998316

`A006530(2*A282270(n+1))*A282270(n+1)`
-/

namespace A282269.P9509497427922998316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A282270 (n + 1)).toNat * A282270 (n + 1)

end

end A282269.P9509497427922998316

/-! ## A282269.P10210184197803032389

`A020639(or(1, A282270(n+1)))*A282270(n+1)`
-/

namespace A282269.P10210184197803032389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A282270 (n + 1))).toNat * A282270 (n + 1)

end

end A282269.P10210184197803032389

/-! ## A282269.P13610605494832063213

`A282270(n+1)*A282270((n+1)%A246488(n+1))`
-/

namespace A282269.P13610605494832063213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282270 (n + 1) * A282270 (Int.tmod (n + 1 : ℤ) (A246488 (n + 1))).toNat

end

end A282269.P13610605494832063213

/-!
# A282270: The square root of the smallest square referenced in A049096 (Numbers n such that 2^n + 1 is divisible by a square > 1).

The programs for A282270, there is no canonical definition to state claims against.
-/

/-! ## A282270.P17413973205655933627

`sqrt(A282269(n+1))`
-/

namespace A282270.P17413973205655933627
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A282269 (n + 1) : ℝ)

end

end A282270.P17413973205655933627

/-! ## A282270.P12804052044042133648

`A006530(∏{p}[A282269(n+1), #])`
-/

namespace A282270.P12804052044042133648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A282270.P12804052044042133648

/-! ## A282270.P17986247248926796860

`A014963(∏{p}[A282269(n+1), #])`
-/

namespace A282270.P17986247248926796860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A282270.P17986247248926796860

/-! ## A282270.P10636137519323952837

`∏{p}[A282269(n+1), A020639(#)]`
-/

namespace A282270.P10636137519323952837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282269 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A020639 p

end

end A282270.P10636137519323952837

/-! ## A282270.P13387270052486006954

`A006530(or(1, A282269(n+1)))`
-/

namespace A282270.P13387270052486006954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lor 1 (A282269 (n + 1))).toNat

end

end A282270.P13387270052486006954

/-! ## A282270.P4590995726641742780

`A020639(or(1, A282269(n+1)))`
-/

namespace A282270.P4590995726641742780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.lor 1 (A282269 (n + 1))).toNat

end

end A282270.P4590995726641742780

/-! ## A282270.P8563958511411566350

`A020639(2*A282269(n+1)-A282269(n+1))`
-/

namespace A282270.P8563958511411566350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A282269 (n + 1) - A282269 (n + 1)).toNat

end

end A282270.P8563958511411566350

/-! ## A282270.P1058108241509188836

`A006530(2*A282269(n+1))`
-/

namespace A282270.P1058108241509188836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (2 * A282269 (n + 1)).toNat

end

end A282270.P1058108241509188836

/-! ## A282270.P11456361346021065824

`A003986(2*A282269(n+1))`
-/

namespace A282270.P11456361346021065824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (2 * A282269 (n + 1)).toNat

end

end A282270.P11456361346021065824

/-! ## A282270.P14017482108281181047

`A014963(or(1, A282269(n+1)))`
-/

namespace A282270.P14017482108281181047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (Int.lor 1 (A282269 (n + 1))).toNat

end

end A282270.P14017482108281181047

/-! ## A282270.P9738152109155013807

`A003986(A282269(n+1)+A282269(n+1)-1)`
-/

namespace A282270.P9738152109155013807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003986 (A282269 (n + 1) + (A282269 (n + 1) - 1)).toNat

end

end A282270.P9738152109155013807

/-! ## A282270.P15623257127031282926

`A014963(2*A282269(n+1)-A282269(n+1))`
-/

namespace A282270.P15623257127031282926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (2 * A282269 (n + 1) - A282269 (n + 1)).toNat

end

end A282270.P15623257127031282926

/-! ## A282270.P3623372351197123449

`A014963(A282269(n+1)/A014963(A282269(n+1)))`
-/

namespace A282270.P3623372351197123449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway ((A282269 (n + 1) : ℚ) / (A014963 (A282269 (n + 1)).toNat : ℚ))).toNat

end

end A282270.P3623372351197123449

/-!
# A282271: Number of nX3 0..2 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A282271, there is no canonical definition to state claims against.
-/

/-! ## A282271.P4587962328632884294

`A282275(∑[n+2]+4)`
-/

namespace A282271.P4587962328632884294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A282271.P4587962328632884294

/-! ## A282271.P434539960931460074

`A282275(A167614(n+1))+A185274(n)`
-/

namespace A282271.P434539960931460074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (A167614 (n + 1)).toNat + A185274 n

end

end A282271.P434539960931460074

/-! ## A282271.P2918894826866161904

`lcm(A033999(n), A282275(A167614(n+1)))`
-/

namespace A282271.P2918894826866161904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A282275 (A167614 (n + 1)).toNat)

end

end A282271.P2918894826866161904

/-! ## A282271.P7519436120657444962

`or(A000007(n), A282275(A167614(n+1)))`
-/

namespace A282271.P7519436120657444962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A282275 (A167614 (n + 1)).toNat)

end

end A282271.P7519436120657444962

/-! ## A282271.P15141953629652385931

`or(A185013(n), A282275(A167614(n+1)))`
-/

namespace A282271.P15141953629652385931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A185013 n) (A282275 (A167614 (n + 1)).toNat)

end

end A282271.P15141953629652385931

/-!
# A282272: Number of nX4 0..2 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A282272, there is no canonical definition to state claims against.
-/

/-! ## A282272.P570659260081586970

`A282275(A374004(n+1))`
-/

namespace A282272.P570659260081586970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (A374004 (n + 1)).toNat

end

end A282272.P570659260081586970

/-! ## A282272.P17456851028441108959

`A282275(A141214(n)+7)`
-/

namespace A282272.P17456851028441108959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (A141214 n + 7).toNat

end

end A282272.P17456851028441108959

/-! ## A282272.P17755736130467625774

`A282275(A055999(n)+10)`
-/

namespace A282272.P17755736130467625774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (A055999 n + 10).toNat

end

end A282272.P17755736130467625774

/-! ## A282272.P2494923645351206351

`A282275(A167614(n+2)+1)`
-/

namespace A282272.P2494923645351206351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (A167614 (n + 2) + 1).toNat

end

end A282272.P2494923645351206351

/-! ## A282272.P9441594157345970329

`A282275(A112355(n+1)+4)`
-/

namespace A282272.P9441594157345970329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (A112355 (n + 1) + 4).toNat

end

end A282272.P9441594157345970329

/-!
# A282273: Number of nX5 0..2 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A282273, there is no canonical definition to state claims against.
-/

/-! ## A282273.P17392092714565129148

`A282275(A374005(n+1))`
-/

namespace A282273.P17392092714565129148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (A374005 (n + 1)).toNat

end

end A282273.P17392092714565129148

/-! ## A282273.P507637500282959280

`A282275(A155212(n)+13)`
-/

namespace A282273.P507637500282959280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (A155212 n + 13).toNat

end

end A282273.P507637500282959280

/-! ## A282273.P17121843778263609352

`A282275(A056000(n)+15)`
-/

namespace A282273.P17121843778263609352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (A056000 n + 15).toNat

end

end A282273.P17121843778263609352

/-! ## A282273.P11692257858792242720

`A282275(eq[7, A066657(n)])`
-/

namespace A282273.P11692257858792242720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282273.P11692257858792242720

/-! ## A282273.P3276330086938710185

`A282275(A052905(n+1)+10)`
-/

namespace A282273.P3276330086938710185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (A052905 (n + 1) + 10).toNat

end

end A282273.P3276330086938710185

/-!
# A282274: Number of n X 6 0..2 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A282274, there is no canonical definition to state claims against.
-/

/-! ## A282274.P16918472121580647243

`A282275(A374007(n+1))`
-/

namespace A282274.P16918472121580647243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (A374007 (n + 1)).toNat

end

end A282274.P16918472121580647243

/-! ## A282274.P7979829853111658745

`A282275(eq[3, A219347(n)])`
-/

namespace A282274.P7979829853111658745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282275 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A282274.P7979829853111658745

/-!
# A282275: T(n,k)=Number of nXk 0..2 arrays with no element equal to more than four of its king-move neighbors and with new values introduced in order 0 sequentially upwards.

The programs for A282275, there is no canonical definition to state claims against.
-/

/-! ## A282275.P8938329784378655485

`A065825(A281837(n+1))`
-/

namespace A282275.P8938329784378655485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A281837 (n + 1)).toNat

end

end A282275.P8938329784378655485

/-! ## A282275.P5978766605280436659

`A065825(A299001(n+1))`
-/

namespace A282275.P5978766605280436659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A299001 (n + 1)).toNat

end

end A282275.P5978766605280436659

/-! ## A282275.P14160312020924647696

`A065825(A299081(n+1))`
-/

namespace A282275.P14160312020924647696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A299081 (n + 1)).toNat

end

end A282275.P14160312020924647696

/-! ## A282275.P14473852256146708307

`A065825(A299668(n+1))`
-/

namespace A282275.P14473852256146708307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A299668 (n + 1)).toNat

end

end A282275.P14473852256146708307

/-! ## A282275.P12067301240396792692

`A065825(A299746(n+1))`
-/

namespace A282275.P12067301240396792692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065825 (A299746 (n + 1)).toNat

end

end A282275.P12067301240396792692

/-!
# A282276: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 485", based on the 5-celled von Neumann neighborhood.

The programs for A282276, there is no canonical definition to state claims against.
-/

/-! ## A282276.P7099486358518301097

`A007088(A282514(n))`
-/

namespace A282276.P7099486358518301097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282514 n).toNat

end

end A282276.P7099486358518301097

/-! ## A282276.P5297524998130107340

`A185544(2*A282514(n))`
-/

namespace A282276.P5297524998130107340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A282514 n).toNat

end

end A282276.P5297524998130107340

/-!
# A282278: Numbers k such that (22*10^k + 161)/3 is prime.

The programs for A282278, there is no canonical definition to state claims against.
-/

/-! ## A282278.P2086473011539987348

`eq[A028648(A155704(n+1)), A028663(3*(n+1))]`
-/

namespace A282278.P2086473011539987348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028648 (A155704 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028663 (3 * (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A282278.P2086473011539987348

/-! ## A282278.P3263190919446440823

`record[A130517(A146173(n+2))+n-A247889(3*n+1)]`
-/

namespace A282278.P3263190919446440823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130517 (A146173 (n + 2)).toNat + (n : ℤ) - A247889 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A282278.P3263190919446440823

/-!
# A282281: Numbers k such that (107*10^k - 17)/9 is prime.

The programs for A282281, there is no canonical definition to state claims against.
-/

/-! ## A282281.P13745257820893391695

`A213617(∪[A316652(n+1), A346816(n)]²)`
-/

namespace A282281.P13745257820893391695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346816 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213617 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n ^ 2)

end

end A282281.P13745257820893391695

/-! ## A282281.P13310222391041332871

`A007733(A231523(n+2)+A000045(3*n+1))`
-/

namespace A282281.P13310222391041332871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007733 (A231523 (n + 2) + A000045 (3 * n + 1)).toNat

end

end A282281.P13310222391041332871

/-!
# A282282: Remainder when sum of squares of the first n primes is divided by n-th square pyramidal number.

The programs for A282282, the canonical program `A282282.P15375378364003862573` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282282 has offset 1).

The definition of A282282 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282282.P15375378364003862573

`A024450(n+1)%∑[(n+1)²]`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A282282

/-- `A024450(n+1)%∑[(n+1)²]` -/
def P15375378364003862573.Spec : Prop :=
  ∀ n, P15375378364003862573.a n = A282282 (n + 1)

theorem P15375378364003862573.correct : P15375378364003862573.Spec := by
  intro n
  simp only [A282282, Nat.add_sub_cancel]

end A282282

/-! ## A282282.P6660012820243382382

`∑[A001248(n+1)]%∑[(n+1)²]`
-/

namespace A282282.P6660012820243382382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001248 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A282282.P6660012820243382382

namespace A282282

/-- `∑[A001248(n+1)]%∑[(n+1)²]` -/
def P6660012820243382382.Spec : Prop :=
  ∀ n, P6660012820243382382.a n = A282282 (n + 1)

end A282282

/-! ## A282282.P2069544536412053025

`∑[A000040(n+1)²]%∑[(n+1)²]`
-/

namespace A282282.P2069544536412053025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A282282.P2069544536412053025

namespace A282282

/-- `∑[A000040(n+1)²]%∑[(n+1)²]` -/
def P2069544536412053025.Spec : Prop :=
  ∀ n, P2069544536412053025.a n = A282282 (n + 1)

end A282282

/-! ## A282282.P1941294958167258918

`∑[A008578(n+2)²]%∑[(n+1)²]`
-/

namespace A282282.P1941294958167258918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

end

end A282282.P1941294958167258918

namespace A282282

/-- `∑[A008578(n+2)²]%∑[(n+1)²]` -/
def P1941294958167258918.Spec : Prop :=
  ∀ n, P1941294958167258918.a n = A282282 (n + 1)

end A282282

/-! ## A282282.P2216859199389537645

`∑[record[A020639(n+2)²]]%∑[(n+1)²]`
-/

namespace A282282.P2216859199389537645
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A282282.P2216859199389537645

namespace A282282

/-- `∑[record[A020639(n+2)²]]%∑[(n+1)²]` -/
def P2216859199389537645.Spec : Prop :=
  ∀ n, P2216859199389537645.a n = A282282 (n + 1)

end A282282

/-!
# A282284: Least common multiple of 3*n+1 and 3*n-1.

The programs for A282284, the canonical program `A282284.P4300406367905021480` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282284 has offset 0).

The definition of A282284 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282284.P4300406367905021480

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=4, a(2)=35, a(3)=40, a(4)=143, a(5)=112, a(6)=323`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A282284

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P4300406367905021480.Spec : Prop :=
  ∀ n, P4300406367905021480.a n = A282284 n

theorem P4300406367905021480.correct : P4300406367905021480.Spec := by
  intro n
  simp only [A282284]

end A282284

/-! ## A282284.P4954555488567745842

`lcm(3*n+1, 1-3*n)`
-/

namespace A282284.P4954555488567745842
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (3 * n + 1 : ℤ) (1 - (3 * n : ℤ))

end

end A282284.P4954555488567745842

namespace A282284

/-- `lcm(3*n+1, 1-3*n)` -/
def P4954555488567745842.Spec : Prop :=
  ∀ n, (P4954555488567745842.a n : ℤ) = A282284 n

end A282284

/-! ## A282284.P9462342856604770813

`(3*n+1)*A001651(A257088(n))`
-/

namespace A282284.P9462342856604770813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n + 1 : ℤ) * A001651 (A257088 n).toNat

end

end A282284.P9462342856604770813

namespace A282284

/-- `(3*n+1)*A001651(A257088(n))` -/
def P9462342856604770813.Spec : Prop :=
  ∀ n, P9462342856604770813.a n = A282284 n

end A282284

/-! ## A282284.P1250030489278069920

`A165355(A004273(n))*A165355(n)`
-/

namespace A282284.P1250030489278069920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (A004273 n).toNat * A165355 n

end

end A282284.P1250030489278069920

namespace A282284

/-- `A165355(A004273(n))*A165355(n)` -/
def P1250030489278069920.Spec : Prop :=
  ∀ n, P1250030489278069920.a n = A282284 n

end A282284

/-! ## A282284.P18008417852953168959

`A165355(record[A026741(n)])*A165355(n)`
-/

namespace A282284.P18008417852953168959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A165355 n

end

end A282284.P18008417852953168959

namespace A282284

/-- `A165355(record[A026741(n)])*A165355(n)` -/
def P18008417852953168959.Spec : Prop :=
  ∀ n, P18008417852953168959.a n = A282284 n

end A282284

/-! ## A282284.P13619898209165046947

`(A008585(n)+1)*A176672(A004273(n))`
-/

namespace A282284.P13619898209165046947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008585 n + 1) * A176672 (A004273 n).toNat

end

end A282284.P13619898209165046947

namespace A282284

/-- `(A008585(n)+1)*A176672(A004273(n))` -/
def P13619898209165046947.Spec : Prop :=
  ∀ n, P13619898209165046947.a n = A282284 n

end A282284

/-! ## A282284.P16091523657717004053

`A165355(A014681(2*n))*A165355(n)`
-/

namespace A282284.P16091523657717004053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (A014681 (2 * n)).toNat * A165355 n

end

end A282284.P16091523657717004053

namespace A282284

/-- `A165355(A014681(2*n))*A165355(n)` -/
def P16091523657717004053.Spec : Prop :=
  ∀ n, P16091523657717004053.a n = A282284 n

end A282284

/-! ## A282284.P10643359573192174808

`A165355(eq[n, A022998(n)])*A165355(n)`
-/

namespace A282284.P10643359573192174808
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A165355 n

end

end A282284.P10643359573192174808

namespace A282284

/-- `A165355(eq[n, A022998(n)])*A165355(n)` -/
def P10643359573192174808.Spec : Prop :=
  ∀ n, P10643359573192174808.a n = A282284 n

end A282284

/-! ## A282284.P11456961008527589663

`A165355(eq[n, A026741(n)])*A165355(n)`
-/

namespace A282284.P11456961008527589663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) * A165355 n

end

end A282284.P11456961008527589663

namespace A282284

/-- `A165355(eq[n, A026741(n)])*A165355(n)` -/
def P11456961008527589663.Spec : Prop :=
  ∀ n, P11456961008527589663.a n = A282284 n

end A282284

/-! ## A282284.P9074885804527483419

`abs((3*n)²-1)/A176895(2*n)`
-/

namespace A282284.P9074885804527483419
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|((3 * n) ^ 2 : ℤ) - 1| : ℚ) / (A176895 (2 * n) : ℚ)

end

end A282284.P9074885804527483419

namespace A282284

/-- `abs((3*n)²-1)/A176895(2*n)` -/
def P9074885804527483419.Spec : Prop :=
  ∀ n, P9074885804527483419.a n = (A282284 n : ℚ)

end A282284

/-! ## A282284.P6017579294616370715

`A165367(2*n)*A176672(A004273(n))`
-/

namespace A282284.P6017579294616370715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 (2 * n) * A176672 (A004273 n).toNat

end

end A282284.P6017579294616370715

namespace A282284

/-- `A165367(2*n)*A176672(A004273(n))` -/
def P6017579294616370715.Spec : Prop :=
  ∀ n, P6017579294616370715.a n = A282284 n

end A282284

/-! ## A282284.P7369745287167578611

`Δ[A161680(A267528(n+1))]*A267528(2*n)`
-/

namespace A282284.P7369745287167578611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A267528 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A267528 (2 * n)

end

end A282284.P7369745287167578611

namespace A282284

/-- `Δ[A161680(A267528(n+1))]*A267528(2*n)` -/
def P7369745287167578611.Spec : Prop :=
  ∀ n, P7369745287167578611.a n = A282284 n

end A282284

/-! ## A282284.P1137023665859902993

`A165367(A140106(2*n+1))*A165367(2*n)`
-/

namespace A282284.P1137023665859902993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165367 (A140106 (2 * n + 1)).toNat * A165367 (2 * n)

end

end A282284.P1137023665859902993

namespace A282284

/-- `A165367(A140106(2*n+1))*A165367(2*n)` -/
def P1137023665859902993.Spec : Prop :=
  ∀ n, P1137023665859902993.a n = A282284 n

end A282284

/-! ## A282284.P11601429329290404303

`lcm(2, A258837(3*n))/2`
-/

namespace A282284.P11601429329290404303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A258837 (3 * n)) : ℚ) / 2

end

end A282284.P11601429329290404303

namespace A282284

/-- `lcm(2, A258837(3*n))/2` -/
def P11601429329290404303.Spec : Prop :=
  ∀ n, P11601429329290404303.a n = (A282284 n : ℚ)

end A282284

/-! ## A282284.P8435384046345692086

`abs(1-3*n)*A060789(3*n+1)`
-/

namespace A282284.P8435384046345692086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (3 * n : ℤ)| * A060789 (3 * n + 1)

end

end A282284.P8435384046345692086

namespace A282284

/-- `abs(1-3*n)*A060789(3*n+1)` -/
def P8435384046345692086.Spec : Prop :=
  ∀ n, P8435384046345692086.a n = A282284 n

end A282284

/-!
# A282285: Least common multiple of 5*n+1 and 5*n-1.

The programs for A282285, the canonical program `A282285.P1036756134847402019` is in `Seq.B000.C032`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282285 has offset 0).

The definition of A282285 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A282285.P1036756134847402019

`3*a(n-2)-3*a(n-4)+a(n-6)` with `a(0)=1, a(1)=12, a(2)=99, a(3)=112, a(4)=399, a(5)=312, a(6)=899`

The canonical program, it is in `Seq.B000.C032`.
-/

namespace A282285

/-- `3*a(n-2)-3*a(n-4)+a(n-6)` -/
def P1036756134847402019.Spec : Prop :=
  ∀ n, P1036756134847402019.a n = A282285 n

theorem P1036756134847402019.correct : P1036756134847402019.Spec := by
  intro n
  simp only [A282285]

end A282285

/-! ## A282285.P17008908531481584658

`lcm(1-5*n, 5*n+1)`
-/

namespace A282285.P17008908531481584658
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (1 - (5 * n : ℤ)) (5 * n + 1 : ℤ)

end

end A282285.P17008908531481584658

namespace A282285

/-- `lcm(1-5*n, 5*n+1)` -/
def P17008908531481584658.Spec : Prop :=
  ∀ n, (P17008908531481584658.a n : ℤ) = A282285 n

end A282285

/-! ## A282285.P10422746312466136048

`A066830(A008706(n))+A000007(n)`
-/

namespace A282285.P10422746312466136048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066830 (A008706 n).toNat + A000007 n

end

end A282285.P10422746312466136048

namespace A282285

/-- `A066830(A008706(n))+A000007(n)` -/
def P10422746312466136048.Spec : Prop :=
  ∀ n, P10422746312466136048.a n = A282285 n

end A282285

/-! ## A282285.P10369699722002788753

`or(A008442(n+1), A066830(A008706(n)))`
-/

namespace A282285.P10369699722002788753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008442 (n + 1)) (A066830 (A008706 n).toNat)

end

end A282285.P10369699722002788753

namespace A282285

/-- `or(A008442(n+1), A066830(A008706(n)))` -/
def P10369699722002788753.Spec : Prop :=
  ∀ n, P10369699722002788753.a n = A282285 n

end A282285

/-! ## A282285.P18384260055956849221

`A082562(A008587(n))/A000034(n)`
-/

namespace A282285.P18384260055956849221
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A082562 (A008587 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A282285.P18384260055956849221

namespace A282285

/-- `A082562(A008587(n))/A000034(n)` -/
def P18384260055956849221.Spec : Prop :=
  ∀ n, P18384260055956849221.a n = (A282285 n : ℚ)

end A282285

/-! ## A282285.P5527218861091025173

`A132411(A008706(n))/A000034(n)`
-/

namespace A282285.P5527218861091025173
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A132411 (A008706 n).toNat : ℚ) / (A000034 n : ℚ)

end

end A282285.P5527218861091025173

namespace A282285

/-- `A132411(A008706(n))/A000034(n)` -/
def P5527218861091025173.Spec : Prop :=
  ∀ n, P5527218861091025173.a n = (A282285 n : ℚ)

end A282285

/-! ## A282285.P11034627995718636561

`record[A003602(5*n+2)]*A026741(5*n+1)`
-/

namespace A282285.P11034627995718636561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (5 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A026741 (5 * n + 1)

end

end A282285.P11034627995718636561

namespace A282285

/-- `record[A003602(5*n+2)]*A026741(5*n+1)` -/
def P11034627995718636561.Spec : Prop :=
  ∀ n, P11034627995718636561.a n = A282285 n

end A282285

/-!
# A282286: Least common multiple of 7*n+1 and 7*n-1.

The programs for A282286, the canonical program `A282286.P7619917001422999851` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A282286 has offset 0).

The definition of A282286 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A282286.P7619917001422999851

`lcm(A016921(n)+n, 1-7*n)`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A282286

/-- `lcm(A016921(n)+n, 1-7*n)` -/
def P7619917001422999851.Spec : Prop :=
  ∀ n, (P7619917001422999851.a n : ℤ) = A282286 n

theorem P7619917001422999851.correct : P7619917001422999851.Spec := by
  intro n
  simp only [A282286]

end A282286

/-! ## A282286.P9123452130524965324

`lcm(2-A016993(n), A016993(n))`
-/

namespace A282286.P9123452130524965324
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A016993 n) (A016993 n)

end

end A282286.P9123452130524965324

namespace A282286

/-- `lcm(2-A016993(n), A016993(n))` -/
def P9123452130524965324.Spec : Prop :=
  ∀ n, (P9123452130524965324.a n : ℤ) = A282286 n

end A282286

/-! ## A282286.P4105622639287247252

`lcm(A008589(n)+1, 1-A008589(n))`
-/

namespace A282286.P4105622639287247252
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008589 n + 1) (1 - A008589 n)

end

end A282286.P4105622639287247252

namespace A282286

/-- `lcm(A008589(n)+1, 1-A008589(n))` -/
def P4105622639287247252.Spec : Prop :=
  ∀ n, (P4105622639287247252.a n : ℤ) = A282286 n

end A282286

/-! ## A282286.P1743173504255371032

`lcm(2-(A017077(n)-n), A017077(n)-n)`
-/

namespace A282286.P1743173504255371032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - (A017077 n - (n : ℤ))) (A017077 n - (n : ℤ))

end

end A282286.P1743173504255371032

namespace A282286

/-- `lcm(2-(A017077(n)-n), A017077(n)-n)` -/
def P1743173504255371032.Spec : Prop :=
  ∀ n, (P1743173504255371032.a n : ℤ) = A282286 n

end A282286

/-! ## A282286.P12275047769689736892

`lcm(A016993(n), A047336(A004277(n)))`
-/

namespace A282286.P12275047769689736892
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A016993 n) (A047336 (A004277 n).toNat)

end

end A282286.P12275047769689736892

namespace A282286

/-- `lcm(A016993(n), A047336(A004277(n)))` -/
def P12275047769689736892.Spec : Prop :=
  ∀ n, (P12275047769689736892.a n : ℤ) = A282286 n

end A282286

/-! ## A282286.P14311950450349299517

`lcm(2-A047336(2*n+1), A047336(2*n+1))`
-/

namespace A282286.P14311950450349299517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A047336 (2 * n + 1)) (A047336 (2 * n + 1))

end

end A282286.P14311950450349299517

namespace A282286

/-- `lcm(2-A047336(2*n+1), A047336(2*n+1))` -/
def P14311950450349299517.Spec : Prop :=
  ∀ n, (P14311950450349299517.a n : ℤ) = A282286 n

end A282286

/-! ## A282286.P5221875369394522874

`lcm(2-A304500(3*n), A304500(3*n))`
-/

namespace A282286.P5221875369394522874
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A304500 (3 * n)) (A304500 (3 * n))

end

end A282286.P5221875369394522874

namespace A282286

/-- `lcm(2-A304500(3*n), A304500(3*n))` -/
def P5221875369394522874.Spec : Prop :=
  ∀ n, (P5221875369394522874.a n : ℤ) = A282286 n

end A282286

/-! ## A282286.P8136314371624748065

`lcm(2-A047354(3*n+2), A047354(3*n+2))`
-/

namespace A282286.P8136314371624748065
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A047354 (3 * n + 2)) (A047354 (3 * n + 2))

end

end A282286.P8136314371624748065

namespace A282286

/-- `lcm(2-A047354(3*n+2), A047354(3*n+2))` -/
def P8136314371624748065.Spec : Prop :=
  ∀ n, (P8136314371624748065.a n : ℤ) = A282286 n

end A282286

/-! ## A282286.P18379150824373531532

`lcm(2-A047317(5*n+1), A047317(5*n+1))`
-/

namespace A282286.P18379150824373531532
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 - A047317 (5 * n + 1)) (A047317 (5 * n + 1))

end

end A282286.P18379150824373531532

namespace A282286

/-- `lcm(2-A047317(5*n+1), A047317(5*n+1))` -/
def P18379150824373531532.Spec : Prop :=
  ∀ n, (P18379150824373531532.a n : ℤ) = A282286 n

end A282286

/-!
# A282288: Expansion of (Sum_{k>=0} x^(k^4))^19.

The programs for A282288, there is no canonical definition to state claims against.
-/

/-! ## A282288.P8765402393004766275

`C(19, (n-1)%A180416(n+1)+1)`
-/

namespace A282288.P8765402393004766275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 19 (Int.tmod ((n : ℤ) - 1) (A180416 (n + 1)) + 1).toNat

end

end A282288.P8765402393004766275

/-! ## A282288.P15991381747985326924

`A010935(A090318(n+1)+n)`
-/

namespace A282288.P15991381747985326924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010935 (A090318 (n + 1) + (n : ℤ)).toNat

end

end A282288.P15991381747985326924

/-! ## A282288.P1530306683936548596

`C(A057446(A146360(n+4)), n)`
-/

namespace A282288.P1530306683936548596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A057446 (A146360 (n + 4)).toNat).toNat n

end

end A282288.P1530306683936548596

/-! ## A282288.P18061898981377409700

`A010935(n)%∑[A010935(n+4)]`
-/

namespace A282288.P18061898981377409700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010935 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A010935 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A282288.P18061898981377409700

/-! ## A282288.P13269756058176805947

`A010935(lcm(n, A319137(2*n+3)))`
-/

namespace A282288.P13269756058176805947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010935 (Int.lcm (n : ℤ) (A319137 (2 * n + 3)))

end

end A282288.P13269756058176805947

/-!
# A282291: Lexicographically earliest sequence of distinct terms such that every pair of consecutive terms contains a term that is a unitary divisor of the other term.

The programs for A282291, there is no canonical definition to state claims against.
-/

/-! ## A282291.P3784615246929633011

`A302781(A302845(A302853(n)))`
-/

namespace A282291.P3784615246929633011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302781 (A302845 (A302853 n).toNat).toNat

end

end A282291.P3784615246929633011

/-! ## A282291.P8938789605974138259

`A304085(A304084(A302853(A304084(A304083(n)))))`
-/

namespace A282291.P8938789605974138259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304085 (A304084 (A302853 (A304084 (A304083 n).toNat).toNat).toNat).toNat

end

end A282291.P8938789605974138259

/-! ## A282291.P7788477401725008095

`A052330(A302853(n))`
-/

namespace A282291.P7788477401725008095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A302853 n).toNat

end

end A282291.P7788477401725008095

/-! ## A282291.P16821563010624260766

`A207901(A006068(A302853(A057300(A057300(n)))))`
-/

namespace A282291.P16821563010624260766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (A302853 (A057300 (A057300 n).toNat).toNat).toNat).toNat

end

end A282291.P16821563010624260766

/-! ## A282291.P4143752038708655654

`A207901(A006068(A302853(A300839(A300838(n)))))`
-/

namespace A282291.P4143752038708655654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (A302853 (A300839 (A300838 n).toNat).toNat).toNat).toNat

end

end A282291.P4143752038708655654

/-!
# A282295: Binary representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A282295, there is no canonical definition to state claims against.
-/

/-! ## A282295.P6701807971647131608

`A279720(lcm(n, A317624(n)))`
-/

namespace A282295.P6701807971647131608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279720 (Int.lcm (n : ℤ) (A317624 n))

end

end A282295.P6701807971647131608

/-! ## A282295.P7437873567413230464

`A279720(n)+A000035(A147675(n+1))`
-/

namespace A282295.P7437873567413230464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279720 n + A000035 (A147675 (n + 1)).toNat

end

end A282295.P7437873567413230464

/-! ## A282295.P11500659812116013042

`or(A000007(A000045(n+1)-1), A279720(n))`
-/

namespace A282295.P11500659812116013042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A000045 (n + 1) - 1).toNat) (A279720 n)

end

end A282295.P11500659812116013042

/-! ## A282295.P11432128943474047781

`A279720(n)+A133100(A265065(n+3))`
-/

namespace A282295.P11432128943474047781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279720 n + A133100 (A265065 (n + 3)).toNat

end

end A282295.P11432128943474047781

/-! ## A282295.P3653937473158142721

`gcd(A008683(A001255(n)), A279720(n))`
-/

namespace A282295.P3653937473158142721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A001255 n).toNat) (A279720 n)

end

end A282295.P3653937473158142721

/-!
# A282296: a(n) is the denominator of Sum_{k=0..n} Catalan(k)/(2^(2k)(n-k+1)^2).

The programs for A282296, there is no canonical definition to state claims against.
-/

/-! ## A282296.P1992125795130891323

`A048671(A068589(n+1))*A127473(n+1)`
-/

namespace A282296.P1992125795130891323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048671 (A068589 (n + 1)).toNat * A127473 (n + 1)

end

end A282296.P1992125795130891323

/-!
# A282297: Binary representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A282297, there is no canonical definition to state claims against.
-/

/-! ## A282297.P16529737179113742784

`A007088(A282299(n))`
-/

namespace A282297.P16529737179113742784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A282299 n).toNat

end

end A282297.P16529737179113742784

/-! ## A282297.P7367573008233445787

`A007088(or(A061397(n+1), A279723(n)))`
-/

namespace A282297.P7367573008233445787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A061397 (n + 1)) (A279723 n)).toNat

end

end A282297.P7367573008233445787

/-! ## A282297.P3682402144450512540

`A007088(or(A061397(n+1), A282268(n)))`
-/

namespace A282297.P3682402144450512540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (Int.lor (A061397 (n + 1)) (A282268 n)).toNat

end

end A282297.P3682402144450512540

/-! ## A282297.P17636762351233575207

`A282412(A055647(n))`
-/

namespace A282297.P17636762351233575207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282412 (A055647 n).toNat

end

end A282297.P17636762351233575207

/-!
# A282298: Decimal representation of the x-axis, from the left edge to the origin, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A282298, there is no canonical definition to state claims against.
-/

/-! ## A282298.P16365290327893665514

`A279722(n)+A000007(A114901(n))`
-/

namespace A282298.P16365290327893665514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279722 n + A000007 (A114901 n).toNat

end

end A282298.P16365290327893665514

/-! ## A282298.P1253193374354030248

`A305816(A136809(n+3))+A282267(n)`
-/

namespace A282298.P1253193374354030248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305816 (A136809 (n + 3)).toNat + A282267 n

end

end A282298.P1253193374354030248

/-! ## A282298.P9199868996599603583

`or(A036987(A000045(n)), A279722(n))`
-/

namespace A282298.P9199868996599603583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A036987 (A000045 n).toNat) (A279722 n)

end

end A282298.P9199868996599603583

/-! ## A282298.P3609130301589836514

`A305816(A347743(2*n+3))+A282267(n)`
-/

namespace A282298.P3609130301589836514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305816 (A347743 (2 * n + 3)).toNat + A282267 n

end

end A282298.P3609130301589836514

/-! ## A282298.P4145808847383580169

`A279722(n)+A185013(A365071(n+2))`
-/

namespace A282298.P4145808847383580169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279722 n + A185013 (A365071 (n + 2)).toNat

end

end A282298.P4145808847383580169

/-!
# A282299: Decimal representation of the x-axis, from the origin to the right edge, of the n-th stage of growth of the two-dimensional cellular automaton defined by "Rule 451", based on the 5-celled von Neumann neighborhood.

The programs for A282299, there is no canonical definition to state claims against.
-/

/-! ## A282299.P14750068842313079147

`or(A069517(A027383(n)), A279723(n))`
-/

namespace A282299.P14750068842313079147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069517 (A027383 n).toNat) (A279723 n)

end

end A282299.P14750068842313079147

/-! ## A282299.P1350642147443378459

`or(A069517(A027383(n)), A282268(n))`
-/

namespace A282299.P1350642147443378459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A069517 (A027383 n).toNat) (A282268 n)

end

end A282299.P1350642147443378459

/-! ## A282299.P4275394456857332847

`gcd(A069517(A027444(n)+1), A282268(n))`
-/

namespace A282299.P4275394456857332847
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A069517 (A027444 n + 1).toNat) (A282268 n)

end

end A282299.P4275394456857332847

/-! ## A282299.P339202977166850404

`or(A000122(A005900(n)), A279723(n))`
-/

namespace A282299.P339202977166850404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000122 (A005900 n).toNat) (A279723 n)

end

end A282299.P339202977166850404

/-! ## A282299.P12784210433049902869

`A279723(n)+A112604(A001248(n+1))`
-/

namespace A282299.P12784210433049902869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279723 n + A112604 (A001248 (n + 1)).toNat

end

end A282299.P12784210433049902869

