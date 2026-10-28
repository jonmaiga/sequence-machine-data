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
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B002.C008
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
import Seq.B006.C000
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
# A302701: O.g.f. A(x) satisfies: A(x) = 1 + Integral (x/A(x))' / (x/A(x)^4)' dx.

The programs for A302701, there is no canonical definition to state claims against.
-/

/-! ## A302701.P8972448960821169985

`A257175(A241828(n²))`
-/

namespace A302701.P8972448960821169985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257175 (A241828 (n ^ 2)).toNat

end

end A302701.P8972448960821169985

/-! ## A302701.P4938102695312774762

`A000174(A084159(n)+A084150(n))`
-/

namespace A302701.P4938102695312774762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (A084159 n + A084150 n).toNat

end

end A302701.P4938102695312774762

/-!
# A302702: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^n)^(n+1) for n>=0.

The programs for A302702, there is no canonical definition to state claims against.
-/

/-! ## A302702.P8352223228871098132

`∑[A002265(A258172(n))]+1`
-/

namespace A302702.P8352223228871098132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A258172 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A302702.P8352223228871098132

/-! ## A302702.P14423404677981103060

`A189981(n)-A046080(n^n)`
-/

namespace A302702.P14423404677981103060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189981 n - A046080 (n ^ n)

end

end A302702.P14423404677981103060

/-!
# A302703: G.f. A(x) satisfies: [x^n] A(x)^(n+1) = [x^n] (1 + x*A(x)^(n+1))^(n+1) for n>=0.

The programs for A302703, there is no canonical definition to state claims against.
-/

/-! ## A302703.P6631081774524268378

`A300061(A047793(n))-C(n, 3)`
-/

namespace A302703.P6631081774524268378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300061 (A047793 n).toNat - (Nat.choose n 3 : ℤ)

end

end A302703.P6631081774524268378

/-! ## A302703.P1178188392033419924

`A158704(A304639(n))+A109449(n)`
-/

namespace A302703.P1178188392033419924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158704 (A304639 n).toNat + A109449 n

end

end A302703.P1178188392033419924

/-!
# A302704: O.g.f. A(x) satisfies: A(x) = 1 + Integral (x*A(x)^8)' / (x*A(x)^5)' dx.

The programs for A302704, there is no canonical definition to state claims against.
-/

/-! ## A302704.P15619255978190016513

`A366976(A000219(n))/A330965(n)`
-/

namespace A302704.P15619255978190016513
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A366976 (A000219 n).toNat : ℚ) / (A330965 n : ℚ)

end

end A302704.P15619255978190016513

/-! ## A302704.P6362848845976880889

`A071538(n+1)+A026409(A181939(n))`
-/

namespace A302704.P6362848845976880889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (n + 1) + A026409 (A181939 n).toNat

end

end A302704.P6362848845976880889

/-! ## A302704.P11701531575087890546

`A378254(n)+A346723(A005709(3*n+1))`
-/

namespace A302704.P11701531575087890546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378254 n + A346723 (A005709 (3 * n + 1)).toNat

end

end A302704.P11701531575087890546

/-!
# A302705: O.g.f. A(x) satisfies: A(x) = 1 + Integral (x*A(x)^4)' / (x*A(x))' dx.

The programs for A302705, there is no canonical definition to state claims against.
-/

/-! ## A302705.P14541238163211930277

`A194523(A028894(n+1))`
-/

namespace A302705.P14541238163211930277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194523 (A028894 (n + 1)).toNat

end

end A302705.P14541238163211930277

/-! ## A302705.P7484129834876716684

`A070098(5*A259858(n))`
-/

namespace A302705.P7484129834876716684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070098 (5 * A259858 n).toNat

end

end A302705.P7484129834876716684

/-! ## A302705.P16889805591610932393

`A305117(abs(2-A019309(n))+1)/2`
-/

namespace A302705.P16889805591610932393
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305117 (|2 - A019309 n| + 1).toNat : ℚ) / 2

end

end A302705.P16889805591610932393

/-!
# A302707: Number of factors of Chebyshev polynomial S(2*n+1, x) (A049310) over the integers. Factorization is into the minimal integer polynomials C (A187360).

The programs for A302707, the canonical program `A302707.P11643253609130696296` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302707 has offset 0).

The definition of A302707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302707.P11643253609130696296

`A001227(1+n)+A000005(2*(n+1))-2`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A302707

/-- `A001227(1+n)+A000005(2*(n+1))-2` -/
def P11643253609130696296.Spec : Prop :=
  ∀ n, P11643253609130696296.a n = A302707 n

theorem P11643253609130696296.correct : P11643253609130696296.Spec := by
  intro n
  simp only [A302707]

end A302707

/-! ## A302707.P3152199206847038415

`∏{e}[4*(n+1), #+1]-2`
-/

namespace A302707.P3152199206847038415
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℤ) - 2

end

end A302707.P3152199206847038415

namespace A302707

/-- `∏{e}[4*(n+1), #+1]-2` -/
def P3152199206847038415.Spec : Prop :=
  ∀ n, P3152199206847038415.a n = A302707 n

end A302707

/-! ## A302707.P3349760907654944366

`A372784(n+1)-2`
-/

namespace A302707.P3349760907654944366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372784 (n + 1) - 2

end

end A302707.P3349760907654944366

namespace A302707

/-- `A372784(n+1)-2` -/
def P3349760907654944366.Spec : Prop :=
  ∀ n, P3349760907654944366.a n = A302707 n

end A302707

/-! ## A302707.P15979258725836915072

`∑{d}[n+1, A153284(#)]`
-/

namespace A302707.P15979258725836915072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A153284 d

end

end A302707.P15979258725836915072

namespace A302707

/-- `∑{d}[n+1, A153284(#)]` -/
def P15979258725836915072.Spec : Prop :=
  ∀ n, P15979258725836915072.a n = A302707 n

end A302707

/-! ## A302707.P9688565997816759603

`A337566(2*(n+1))+1`
-/

namespace A302707.P9688565997816759603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A337566 (2 * (n + 1)) + 1

end

end A302707.P9688565997816759603

namespace A302707

/-- `A337566(2*(n+1))+1` -/
def P9688565997816759603.Spec : Prop :=
  ∀ n, P9688565997816759603.a n = A302707 n

end A302707

/-! ## A302707.P13623974557464049506

`A099777(2*(n+1))-2`
-/

namespace A302707.P13623974557464049506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099777 (2 * (n + 1)) - 2

end

end A302707.P13623974557464049506

namespace A302707

/-- `A099777(2*(n+1))-2` -/
def P13623974557464049506.Spec : Prop :=
  ∀ n, P13623974557464049506.a n = A302707 n

end A302707

/-! ## A302707.P3299155410224483996

`A000005(4*(n+1))-2`
-/

namespace A302707.P3299155410224483996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * (n + 1)) - 2

end

end A302707.P3299155410224483996

namespace A302707

/-- `A000005(4*(n+1))-2` -/
def P3299155410224483996.Spec : Prop :=
  ∀ n, P3299155410224483996.a n = A302707 n

end A302707

/-! ## A302707.P12692598651839763830

`abs(∏{e}[A016777(n+1)+n, #+1]-2)`
-/

namespace A302707.P12692598651839763830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∏ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) : ℕ) : ℤ) - 2|

end

end A302707.P12692598651839763830

namespace A302707

/-- `abs(∏{e}[A016777(n+1)+n, #+1]-2)` -/
def P12692598651839763830.Spec : Prop :=
  ∀ n, P12692598651839763830.a n = A302707 n

end A302707

/-! ## A302707.P18416323912286982670

`A023444(A372784(n+1))`
-/

namespace A302707.P18416323912286982670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A372784 (n + 1)).toNat

end

end A302707.P18416323912286982670

namespace A302707

/-- `A023444(A372784(n+1))` -/
def P18416323912286982670.Spec : Prop :=
  ∀ n, P18416323912286982670.a n = A302707 n

end A302707

/-! ## A302707.P2722986720895808339

`A023444(A099777(2*(n+1)))`
-/

namespace A302707.P2722986720895808339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A099777 (2 * (n + 1))).toNat

end

end A302707.P2722986720895808339

namespace A302707

/-- `A023444(A099777(2*(n+1)))` -/
def P2722986720895808339.Spec : Prop :=
  ∀ n, P2722986720895808339.a n = A302707 n

end A302707

/-! ## A302707.P3472960772097335291

`abs(2-A000005(A004767(n)+1))`
-/

namespace A302707.P3472960772097335291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000005 (A004767 n + 1).toNat|

end

end A302707.P3472960772097335291

namespace A302707

/-- `abs(2-A000005(A004767(n)+1))` -/
def P3472960772097335291.Spec : Prop :=
  ∀ n, P3472960772097335291.a n = A302707 n

end A302707

/-! ## A302707.P10228661630016502914

`A069930(n+1)+A001227(n+1)`
-/

namespace A302707.P10228661630016502914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069930 (n + 1) + A001227 (n + 1)

end

end A302707.P10228661630016502914

namespace A302707

/-- `A069930(n+1)+A001227(n+1)` -/
def P10228661630016502914.Spec : Prop :=
  ∀ n, P10228661630016502914.a n = A302707 n

end A302707

/-! ## A302707.P5876551789557943240

`A069283(n+1)+A066660(n+1)`
-/

namespace A302707.P5876551789557943240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069283 (n + 1) + A066660 (n + 1)

end

end A302707.P5876551789557943240

namespace A302707

/-- `A069283(n+1)+A066660(n+1)` -/
def P5876551789557943240.Spec : Prop :=
  ∀ n, P5876551789557943240.a n = A302707 n

end A302707

/-! ## A302707.P5369830535296351825

`A111150(n+1)-A000005(n+1)`
-/

namespace A302707.P5369830535296351825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111150 (n + 1) - A000005 (n + 1)

end

end A302707.P5369830535296351825

namespace A302707

/-- `A111150(n+1)-A000005(n+1)` -/
def P5369830535296351825.Spec : Prop :=
  ∀ n, P5369830535296351825.a n = A302707 n

end A302707

/-! ## A302707.P10229325291985244999

`A054844(n+1)-A378216(n+1)`
-/

namespace A302707.P10229325291985244999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054844 (n + 1) - A378216 (n + 1)

end

end A302707.P10229325291985244999

namespace A302707

/-- `A054844(n+1)-A378216(n+1)` -/
def P10229325291985244999.Spec : Prop :=
  ∀ n, P10229325291985244999.a n = A302707 n

end A302707

/-! ## A302707.P4072165110151277102

`A114003(n+1)-A325939(n+1)`
-/

namespace A302707.P4072165110151277102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) - A325939 (n + 1)

end

end A302707.P4072165110151277102

namespace A302707

/-- `A114003(n+1)-A325939(n+1)` -/
def P4072165110151277102.Spec : Prop :=
  ∀ n, P4072165110151277102.a n = A302707 n

end A302707

/-! ## A302707.P878080229678810750

`abs(A000005(A016777(n)+n+3)-2)`
-/

namespace A302707.P878080229678810750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000005 (A016777 n + (n + 3 : ℤ)).toNat - 2|

end

end A302707.P878080229678810750

namespace A302707

/-- `abs(A000005(A016777(n)+n+3)-2)` -/
def P878080229678810750.Spec : Prop :=
  ∀ n, P878080229678810750.a n = A302707 n

end A302707

/-! ## A302707.P9281106129747494799

`Δ[2*A248517(n)]+A000005(n+1)`
-/

namespace A302707.P9281106129747494799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A248517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + A000005 (n + 1)

end

end A302707.P9281106129747494799

namespace A302707

/-- `Δ[2*A248517(n)]+A000005(n+1)` -/
def P9281106129747494799.Spec : Prop :=
  ∀ n, P9281106129747494799.a n = A302707 n

end A302707

/-! ## A302707.P3959820706164908024

`A001227(n+1)+A099777(n+1)-2`
-/

namespace A302707.P3959820706164908024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (n + 1) + (A099777 (n + 1) - 2)

end

end A302707.P3959820706164908024

namespace A302707

/-- `A001227(n+1)+A099777(n+1)-2` -/
def P3959820706164908024.Spec : Prop :=
  ∀ n, P3959820706164908024.a n = A302707 n

end A302707

/-! ## A302707.P15032968510071949685

`A211270(2*(n+1))+A211261(2*(n+1))`
-/

namespace A302707.P15032968510071949685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211270 (2 * (n + 1)) + A211261 (2 * (n + 1))

end

end A302707.P15032968510071949685

namespace A302707

/-- `A211270(2*(n+1))+A211261(2*(n+1))` -/
def P15032968510071949685.Spec : Prop :=
  ∀ n, P15032968510071949685.a n = A302707 n

end A302707

/-!
# A302709: a(n) = Trinomial(2*n+1, 4) = (1/6)*n*(2*n + 1)*(2*n^2 + 9*n + 1), n >= 0.

The programs for A302709, the canonical program `A302709.P12282604246750244940` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302709 has offset 0).

The definition of A302709 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/6*n*(2*n+1)*(2*n²+9*n+1)` (program `A302709.P9445668086518868244`, by `A302709.P9445668086518868244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302709.P13878424583240746790

`ogf((6x+15x^2-4x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A302709.P13878424583240746790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 15, -4, -1] [1, -5, 10, -10, 5, -1] n

end

end A302709.P13878424583240746790

namespace A302709

/-- `ogf((6x+15x^2-4x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P13878424583240746790.Spec : Prop :=
  ∀ n, P13878424583240746790.a n = A302709 n

end A302709

/-! ## A302709.P10702156395384030831

`n*(2*n+1)*(2*n²+9*n+1)/6`
-/

namespace A302709.P10702156395384030831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (2 * n + 1) * (2 * n ^ 2 + 9 * n + 1) : ℚ) / 6

end

end A302709.P10702156395384030831

namespace A302709

/-- `n*(2*n+1)*(2*n²+9*n+1)/6` -/
def P10702156395384030831.Spec : Prop :=
  ∀ n, P10702156395384030831.a n = (A302709 n : ℚ)

theorem P10702156395384030831.correct : P10702156395384030831.Spec := by
  intro n
  simp only [A302709, Nat.add_sub_cancel, A302709.P10702156395384030831.a, A302709.P12282604246750244940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302709

/-! ## A302709.P9445668086518868244

`1/6*n*(2*n+1)*(2*n²+9*n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302709.P9445668086518868244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (n : ℚ) * (2 * n + 1 : ℚ) * (2 * n ^ 2 + 9 * n + 1 : ℚ)

end

end A302709.P9445668086518868244

namespace A302709

/-- `1/6*n*(2*n+1)*(2*n²+9*n+1)` -/
def P9445668086518868244.Spec : Prop :=
  ∀ n, P9445668086518868244.a n = (A302709 n : ℚ)

theorem P9445668086518868244.correct : P9445668086518868244.Spec := by
  intro n
  simp only [A302709, Nat.add_sub_cancel, A302709.P9445668086518868244.a, A302709.P12282604246750244940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302709

/-! ## A302709.P12282604246750244940

`C(2*n+1, 2)+(2*n+1)*C(2*n, 2)+C(2*n+1, 4)`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302709

/-- `C(2*n+1, 2)+(2*n+1)*C(2*n, 2)+C(2*n+1, 4)` -/
def P12282604246750244940.Spec : Prop :=
  ∀ n, (P12282604246750244940.a n : ℤ) = A302709 n

theorem P12282604246750244940.correct : P12282604246750244940.Spec := by
  intro n
  simp only [A302709]

end A302709

/-! ## A302709.P4372022987962386954

`C(2*(n+2), 4)-Δ[n²]²`
-/

namespace A302709.P4372022987962386954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * (n + 2)) 4 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A302709.P4372022987962386954

namespace A302709

/-- `C(2*(n+2), 4)-Δ[n²]²` -/
def P4372022987962386954.Spec : Prop :=
  ∀ n, P4372022987962386954.a n = A302709 n

theorem P4372022987962386954.correct : P4372022987962386954.Spec := by
  intro n
  simp only [A302709, Nat.add_sub_cancel, A302709.P4372022987962386954.f1, A302709.P4372022987962386954.a, A302709.P12282604246750244940.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302709

/-! ## A302709.P3407188649132122655

`(2*n+1)*∑[a(n-1)+2*n+1]` with `a(0)=0, a(1)=2`
-/

namespace A302709.P3407188649132122655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302709.P3407188649132122655

namespace A302709

/-- `(2*n+1)*∑[a(n-1)+2*n+1]` -/
def P3407188649132122655.Spec : Prop :=
  ∀ n, (P3407188649132122655.a n : ℤ) = A302709 n

end A302709

/-! ## A302709.P6348432522582930115

`lcm(2*n+1, (2*n+1)*(2*n+1-∑[(n+1)²]))`
-/

namespace A302709.P6348432522582930115
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) ((2 * n + 1 : ℤ) * ((2 * n + 1 : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)))

end

end A302709.P6348432522582930115

namespace A302709

/-- `lcm(2*n+1, (2*n+1)*(2*n+1-∑[(n+1)²]))` -/
def P6348432522582930115.Spec : Prop :=
  ∀ n, (P6348432522582930115.a n : ℤ) = A302709 n

end A302709

/-! ## A302709.P15643861879292363836

`abs(Δ[n²]*A101986(n))`
-/

namespace A302709.P15643861879292363836
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) * A101986 n|

end

end A302709.P15643861879292363836

namespace A302709

/-- `abs(Δ[n²]*A101986(n))` -/
def P15643861879292363836.Spec : Prop :=
  ∀ n, P15643861879292363836.a n = A302709 n

end A302709

/-! ## A302709.P6343885783513676201

`A053134(n)-Δ[n²]²`
-/

namespace A302709.P6343885783513676201
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A302709.P6343885783513676201

namespace A302709

/-- `A053134(n)-Δ[n²]²` -/
def P6343885783513676201.Spec : Prop :=
  ∀ n, P6343885783513676201.a n = A302709 n

theorem P6343885783513676201.correct : P6343885783513676201.Spec := by
  intro n
  simp only [A302709, Nat.add_sub_cancel, A302709.P6343885783513676201.f1, A302709.P6343885783513676201.a, A302709.P12282604246750244940.a, A053134, A053134.P2509470964205377793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302709

/-! ## A302709.P2219385093710693303

`A180324(n)+A099721(n)`
-/

namespace A302709.P2219385093710693303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180324 n + A099721 n

end

end A302709.P2219385093710693303

namespace A302709

/-- `A180324(n)+A099721(n)` -/
def P2219385093710693303.Spec : Prop :=
  ∀ n, P2219385093710693303.a n = A302709 n

end A302709

/-! ## A302709.P12381565656022696851

`A341735(n)+A317297(n+1)`
-/

namespace A302709.P12381565656022696851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341735 n + A317297 (n + 1)

end

end A302709.P12381565656022696851

namespace A302709

/-- `A341735(n)+A317297(n+1)` -/
def P12381565656022696851.Spec : Prop :=
  ∀ n, P12381565656022696851.a n = A302709 n

end A302709

/-! ## A302709.P841733985725030115

`A047927(n+2)-A071245(n)`
-/

namespace A302709.P841733985725030115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047927 (n + 2) - A071245 n

end

end A302709.P841733985725030115

namespace A302709

/-- `A047927(n+2)-A071245(n)` -/
def P841733985725030115.Spec : Prop :=
  ∀ n, P841733985725030115.a n = A302709 n

end A302709

/-! ## A302709.P8857762643949800816

`A053134(n)-1-A046092(n)-A046092(n)`
-/

namespace A302709.P8857762643949800816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053134 n - 1 - A046092 n - A046092 n

end

end A302709.P8857762643949800816

namespace A302709

/-- `A053134(n)-1-A046092(n)-A046092(n)` -/
def P8857762643949800816.Spec : Prop :=
  ∀ n, P8857762643949800816.a n = A302709 n

theorem P8857762643949800816.correct : P8857762643949800816.Spec := by
  intro n
  simp only [A302709, Nat.add_sub_cancel, A302709.P8857762643949800816.a, A302709.P12282604246750244940.a, A046092, A046092.P16411658895297056450.a, A053134, A053134.P2509470964205377793.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302709

/-! ## A302709.P14541041088113946104

`A213843(n+1)+A000447(n)-A000578(n+1)`
-/

namespace A302709.P14541041088113946104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213843 (n + 1) + (A000447 n - A000578 (n + 1))

end

end A302709.P14541041088113946104

namespace A302709

/-- `A213843(n+1)+A000447(n)-A000578(n+1)` -/
def P14541041088113946104.Spec : Prop :=
  ∀ n, P14541041088113946104.a n = A302709 n

end A302709

/-! ## A302709.P11205816629928512918

`A006325(n+1)+A060783(n+1)+n`
-/

namespace A302709.P11205816629928512918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006325 (n + 1) + (A060783 (n + 1) + (n : ℤ))

end

end A302709.P11205816629928512918

namespace A302709

/-- `A006325(n+1)+A060783(n+1)+n` -/
def P11205816629928512918.Spec : Prop :=
  ∀ n, P11205816629928512918.a n = A302709 n

end A302709

/-! ## A302709.P15925576161241702995

`A000447(n)+A053134(n)-A000447(n+1)`
-/

namespace A302709.P15925576161241702995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 n + (A053134 n - A000447 (n + 1))

end

end A302709.P15925576161241702995

namespace A302709

/-- `A000447(n)+A053134(n)-A000447(n+1)` -/
def P15925576161241702995.Spec : Prop :=
  ∀ n, P15925576161241702995.a n = A302709 n

end A302709

/-! ## A302709.P4383624960303496415

`A302710(n+1)-(A030440(n+1)+A000384(n+1))`
-/

namespace A302709.P4383624960303496415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302710 (n + 1) - (A030440 (n + 1) + A000384 (n + 1))

end

end A302709.P4383624960303496415

namespace A302709

/-- `A302710(n+1)-(A030440(n+1)+A000384(n+1))` -/
def P4383624960303496415.Spec : Prop :=
  ∀ n, P4383624960303496415.a n = A302709 n

end A302709

/-! ## A302709.P2423233613670938146

`record[n%2*A005712(n+2)]`
-/

namespace A302709.P2423233613670938146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) * A005712 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302709.P2423233613670938146

namespace A302709

/-- `record[n%2*A005712(n+2)]` -/
def P2423233613670938146.Spec : Prop :=
  ∀ n, P2423233613670938146.a n = A302709 n

end A302709

/-! ## A302709.P16121976544753683123

`A005582(2*n)-A014105(n)`
-/

namespace A302709.P16121976544753683123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005582 (2 * n) - A014105 n

end

end A302709.P16121976544753683123

namespace A302709

/-- `A005582(2*n)-A014105(n)` -/
def P16121976544753683123.Spec : Prop :=
  ∀ n, P16121976544753683123.a n = A302709 n

end A302709

/-!
# A302710: a(n) = trinomial(2*n, 4) = (1/6)*n*(2*n - 1)*(2*n^2 + 7*n - 3).

The programs for A302710, the canonical program `A302710.P13220748805422365986` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302710 has offset 0).

The definition of A302710 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1/6*n*(2*n-1)*(2*n²+7*n-3)` (program `A302710.P12528618590125004738`, by `A302710.P12528618590125004738.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302710.P8770820527682561942

`ogf((x+14x^2+5x^3-4x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A302710.P8770820527682561942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 14, 5, -4] [1, -5, 10, -10, 5, -1] n

end

end A302710.P8770820527682561942

namespace A302710

/-- `ogf((x+14x^2+5x^3-4x^4)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P8770820527682561942.Spec : Prop :=
  ∀ n, P8770820527682561942.a n = A302710 n

end A302710

/-! ## A302710.P7944009749474704578

`n*(2*n-1)*(2*n²+7*n-3)/6`
-/

namespace A302710.P7944009749474704578
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((2 * n : ℤ) - 1) * ((2 * n ^ 2 + 7 * n : ℤ) - 3) : ℚ) / 6

end

end A302710.P7944009749474704578

namespace A302710

/-- `n*(2*n-1)*(2*n²+7*n-3)/6` -/
def P7944009749474704578.Spec : Prop :=
  ∀ n, P7944009749474704578.a n = (A302710 n : ℚ)

theorem P7944009749474704578.correct : P7944009749474704578.Spec := by
  intro n
  simp only [A302710, Nat.add_sub_cancel, A302710.P7944009749474704578.a, A302710.P13220748805422365986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302710

/-! ## A302710.P12528618590125004738

`1/6*n*(2*n-1)*(2*n²+7*n-3)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302710.P12528618590125004738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 6 * (n : ℚ) * ((2 * n : ℤ) - 1 : ℚ) * ((2 * n ^ 2 + 7 * n : ℤ) - 3 : ℚ)

end

end A302710.P12528618590125004738

namespace A302710

/-- `1/6*n*(2*n-1)*(2*n²+7*n-3)` -/
def P12528618590125004738.Spec : Prop :=
  ∀ n, P12528618590125004738.a n = (A302710 n : ℚ)

theorem P12528618590125004738.correct : P12528618590125004738.Spec := by
  intro n
  simp only [A302710, Nat.add_sub_cancel, A302710.P12528618590125004738.a, A302710.P13220748805422365986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302710

/-! ## A302710.P13220748805422365986

`C(2*n+3, 4)-(2*n)²`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302710

/-- `C(2*n+3, 4)-(2*n)²` -/
def P13220748805422365986.Spec : Prop :=
  ∀ n, P13220748805422365986.a n = A302710 n

theorem P13220748805422365986.correct : P13220748805422365986.Spec := by
  intro n
  simp only [A302710]

end A302710

/-! ## A302710.P7430901484118915997

`Δ[C(2*n, 4)]+C(2*n+1, 4)`
-/

namespace A302710.P7430901484118915997
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n) 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose (2 * n + 1) 4 : ℤ)

end

end A302710.P7430901484118915997

namespace A302710

/-- `Δ[C(2*n, 4)]+C(2*n+1, 4)` -/
def P7430901484118915997.Spec : Prop :=
  ∀ n, P7430901484118915997.a n = A302710 n

theorem P7430901484118915997.correct : P7430901484118915997.Spec := by
  intro n
  simp only [A302710, Nat.add_sub_cancel, A302710.P7430901484118915997.f1, A302710.P7430901484118915997.a, A302710.P13220748805422365986.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302710

/-! ## A302710.P9465495265658855497

`A329523(n)+A135916(n+1)`
-/

namespace A302710.P9465495265658855497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329523 n + A135916 (n + 1)

end

end A302710.P9465495265658855497

namespace A302710

/-- `A329523(n)+A135916(n+1)` -/
def P9465495265658855497.Spec : Prop :=
  ∀ n, P9465495265658855497.a n = A302710 n

end A302710

/-! ## A302710.P10995642895674873527

`A002817(2*n)-A006008(2*n)`
-/

namespace A302710.P10995642895674873527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 (2 * n) - A006008 (2 * n)

end

end A302710.P10995642895674873527

namespace A302710

/-- `A002817(2*n)-A006008(2*n)` -/
def P10995642895674873527.Spec : Prop :=
  ∀ n, P10995642895674873527.a n = A302710 n

end A302710

/-! ## A302710.P11977947642187855625

`A187756(n)-A000332(2*n)`
-/

namespace A302710.P11977947642187855625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187756 n - A000332 (2 * n)

end

end A302710.P11977947642187855625

namespace A302710

/-- `A187756(n)-A000332(2*n)` -/
def P11977947642187855625.Spec : Prop :=
  ∀ n, P11977947642187855625.a n = A302710 n

end A302710

/-! ## A302710.P14089344854291800773

`A002415(2*n)-A000332(2*n)`
-/

namespace A302710.P14089344854291800773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (2 * n) - A000332 (2 * n)

end

end A302710.P14089344854291800773

namespace A302710

/-- `A002415(2*n)-A000332(2*n)` -/
def P14089344854291800773.Spec : Prop :=
  ∀ n, P14089344854291800773.a n = A302710 n

end A302710

/-! ## A302710.P16296567935345804192

`A223718(2*n)-A104249(2*n)`
-/

namespace A302710.P16296567935345804192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223718 (2 * n) - A104249 (2 * n)

end

end A302710.P16296567935345804192

namespace A302710

/-- `A223718(2*n)-A104249(2*n)` -/
def P16296567935345804192.Spec : Prop :=
  ∀ n, P16296567935345804192.a n = A302710 n

end A302710

/-! ## A302710.P16063912105255755682

`A116699(2*n+1)-A000124(2*n)`
-/

namespace A302710.P16063912105255755682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116699 (2 * n + 1) - A000124 (2 * n)

end

end A302710.P16063912105255755682

namespace A302710

/-- `A116699(2*n+1)-A000124(2*n)` -/
def P16063912105255755682.Spec : Prop :=
  ∀ n, P16063912105255755682.a n = A302710 n

end A302710

/-! ## A302710.P17955492130358636592

`A008911(2*n)/2-A000332(2*n)`
-/

namespace A302710.P17955492130358636592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008911 (2 * n) : ℚ) / 2 - (A000332 (2 * n) : ℚ)

end

end A302710.P17955492130358636592

namespace A302710

/-- `A008911(2*n)/2-A000332(2*n)` -/
def P17955492130358636592.Spec : Prop :=
  ∀ n, P17955492130358636592.a n = (A302710 n : ℚ)

theorem P17955492130358636592.correct : P17955492130358636592.Spec := by
  intro n
  simp only [A302710, Nat.add_sub_cancel, A302710.P17955492130358636592.a, A302710.P13220748805422365986.a, A000332, A000332.P5946310388023661265.a, A008911, A008911.P13273812959186450040.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A302710

/-! ## A302710.P13624622041838225276

`A002415(2*n)-A034827(2*n)/2`
-/

namespace A302710.P13624622041838225276
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002415 (2 * n) : ℚ) - (A034827 (2 * n) : ℚ) / 2

end

end A302710.P13624622041838225276

namespace A302710

/-- `A002415(2*n)-A034827(2*n)/2` -/
def P13624622041838225276.Spec : Prop :=
  ∀ n, P13624622041838225276.a n = (A302710 n : ℚ)

end A302710

/-! ## A302710.P5218814535320407141

`A086602(2*n)-A008911(2*n)/2`
-/

namespace A302710.P5218814535320407141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A086602 (2 * n) : ℚ) - (A008911 (2 * n) : ℚ) / 2

end

end A302710.P5218814535320407141

namespace A302710

/-- `A086602(2*n)-A008911(2*n)/2` -/
def P5218814535320407141.Spec : Prop :=
  ∀ n, P5218814535320407141.a n = (A302710 n : ℚ)

end A302710

/-! ## A302710.P437588855654398196

`A058923(2*n+1)+A006527(2*n)-1`
-/

namespace A302710.P437588855654398196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058923 (2 * n + 1) + (A006527 (2 * n) - 1)

end

end A302710.P437588855654398196

namespace A302710

/-- `A058923(2*n+1)+A006527(2*n)-1` -/
def P437588855654398196.Spec : Prop :=
  ∀ n, P437588855654398196.a n = A302710 n

end A302710

/-! ## A302710.P10945416041729584514

`A101338(2*n+1)-2*A000124(2*n)`
-/

namespace A302710.P10945416041729584514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101338 (2 * n + 1) - 2 * A000124 (2 * n)

end

end A302710.P10945416041729584514

namespace A302710

/-- `A101338(2*n+1)-2*A000124(2*n)` -/
def P10945416041729584514.Spec : Prop :=
  ∀ n, P10945416041729584514.a n = A302710 n

end A302710

/-!
# A302719: Number of edge covers in the n-path complement graph.

The programs for A302719, there is no canonical definition to state claims against.
-/

/-! ## A302719.P3032533041333191587

`A059995(A188917(n²))`
-/

namespace A302719.P3032533041333191587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059995 (A188917 (n ^ 2)).toNat

end

end A302719.P3032533041333191587

/-!
# A302720: Primes with index k >= 3 such that A288189(prime(k)) < A295185(prime(k)).

The programs for A302720, there is no canonical definition to state claims against.
-/

/-! ## A302720.P17224060078233473865

`p?[A000040(n+1)%A082343(A288189(n+1))]`
-/

namespace A302720.P17224060078233473865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A082343 (A288189 (n + 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A302720.P17224060078233473865

/-!
# A302721: Square array T(n, k) read by antidiagonals upwards, n > 0 and k > 0: T(n, k) is the distance from n to the nearest prime(k)-smooth number (where prime(k) denotes the k-th prime number).

The programs for A302721, there is no canonical definition to state claims against.
-/

/-! ## A302721.P8115967274508495164

`A008616(A127057(n+1))*A170977(n)`
-/

namespace A302721.P8115967274508495164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (A127057 (n + 1)).toNat * A170977 n

end

end A302721.P8115967274508495164

/-! ## A302721.P13497328592682211268

`A008616(A127057(n+1)^A170977(n))`
-/

namespace A302721.P13497328592682211268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008616 (SequenceMachineLib.roundAway ((A127057 (n + 1) : ℚ) ^ (A170977 n : ℤ))).toNat

end

end A302721.P13497328592682211268

/-! ## A302721.P12774147839200160502

`A280747(4*A137587(n+1))-1`
-/

namespace A302721.P12774147839200160502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280747 (4 * A137587 (n + 1)).toNat - 1

end

end A302721.P12774147839200160502

/-! ## A302721.P1586724644849054827

`A280750(4*A137587(n+1))-1`
-/

namespace A302721.P1586724644849054827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280750 (4 * A137587 (n + 1)).toNat - 1

end

end A302721.P1586724644849054827

/-! ## A302721.P9819518273527995676

`A000040(n+1)%A280747(4*A137587(n+1))`
-/

namespace A302721.P9819518273527995676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) (A280747 (4 * A137587 (n + 1)).toNat)

end

end A302721.P9819518273527995676

/-!
# A302722: a(n) is the n-th prime number raised to the n-th nonprime number.

The programs for A302722, the canonical program `A302722.P1266589313200144399` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302722 has offset 1).

The definition of A302722 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A018252, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A302722.P1266589313200144399

`A000040(n+1)^A018252(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A302722

/-- `A000040(n+1)^A018252(n+1)` -/
def P1266589313200144399.Spec : Prop :=
  ∀ n, P1266589313200144399.a n = (A302722 (n + 1) : ℚ)

end A302722

/-! ## A302722.P18425170493380330681

`A049551(n+1)^A018252(n+1)`
-/

namespace A302722.P18425170493380330681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049551 (n + 1) : ℚ) ^ (A018252 (n + 1) : ℤ)

end

end A302722.P18425170493380330681

namespace A302722

/-- `A049551(n+1)^A018252(n+1)` -/
def P18425170493380330681.Spec : Prop :=
  ∀ n, P18425170493380330681.a n = (A302722 (n + 1) : ℚ)

end A302722

/-! ## A302722.P9049254722807064001

`A000040(n+1)^A140209(n+1)`
-/

namespace A302722.P9049254722807064001
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) ^ (A140209 (n + 1) : ℤ)

end

end A302722.P9049254722807064001

namespace A302722

/-- `A000040(n+1)^A140209(n+1)` -/
def P9049254722807064001.Spec : Prop :=
  ∀ n, P9049254722807064001.a n = (A302722 (n + 1) : ℚ)

end A302722

/-! ## A302722.P6483388712571273011

`∑[A054541(n+1)]^A018252(n+1)`
-/

namespace A302722.P6483388712571273011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) ^ (A018252 (n + 1) : ℤ)

end

end A302722.P6483388712571273011

namespace A302722

/-- `∑[A054541(n+1)]^A018252(n+1)` -/
def P6483388712571273011.Spec : Prop :=
  ∀ n, P6483388712571273011.a n = (A302722 (n + 1) : ℚ)

end A302722

/-! ## A302722.P11949808976520054732

`record[A006530(n+2)]^A018252(n+1)`
-/

namespace A302722.P11949808976520054732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) ^ (A018252 (n + 1) : ℤ)

end

end A302722.P11949808976520054732

namespace A302722

/-- `record[A006530(n+2)]^A018252(n+1)` -/
def P11949808976520054732.Spec : Prop :=
  ∀ n, P11949808976520054732.a n = (A302722 (n + 1) : ℚ)

end A302722

/-!
# A302723: Number of n X n 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302723, there is no canonical definition to state claims against.
-/

/-! ## A302723.P13012771833395712914

`A302728(∑[4*n]+1)`
-/

namespace A302723.P13012771833395712914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302723.P13012771833395712914

/-! ## A302723.P12108655921755063713

`record[(1-abs(round(sqrt(2*(n+1)))²-(2*n+1)))*A302728(n+1)]`
-/

namespace A302723.P12108655921755063713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - |SequenceMachineLib.roundAway (Real.sqrt (2 * (n + 1) : ℝ)) ^ 2 - (2 * n + 1 : ℤ)|) * A302728 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302723.P12108655921755063713

/-! ## A302723.P2419423819570993460

`∑{digits}[n, A302728(A001844(#))]`
-/

namespace A302723.P2419423819570993460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A302728 (A001844 x).toNat).sum

end

end A302723.P2419423819570993460

/-! ## A302723.P13273037461680866715

`record[A302728(Δ[A235355(n)])]`
-/

namespace A302723.P13273037461680866715
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235355 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302723.P13273037461680866715

/-! ## A302723.P4294044508451760250

`record[A302728(A330613(n+1))]`
-/

namespace A302723.P4294044508451760250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A330613 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302723.P4294044508451760250

/-!
# A302724: Number of nX3 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302724, there is no canonical definition to state claims against.
-/

/-! ## A302724.P6955813163349361170

`A302728(∑[n+3]+1)`
-/

namespace A302724.P6955813163349361170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302724.P6955813163349361170

/-! ## A302724.P74059459561386809

`record[A302728(abs(2-∑[n]))]`
-/

namespace A302724.P74059459561386809
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 |2 - ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302724.P74059459561386809

/-! ## A302724.P10334779317935181481

`A302728(A034856(n+2))+char[18]`
-/

namespace A302724.P10334779317935181481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A034856 (n + 2)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302724.P10334779317935181481

/-! ## A302724.P1480068651230897790

`A302728(eq[2, A048004(n)])+char[34]`
-/

namespace A302724.P1480068651230897790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048004 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  34

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302724.P1480068651230897790

/-! ## A302724.P14716838213044998953

`record[gcd(A055300(n+2), A302728(n+1))]`
-/

namespace A302724.P14716838213044998953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055300 (n + 2)) (A302728 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302724.P14716838213044998953

/-!
# A302725: Number of n X 5 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302725, there is no canonical definition to state claims against.
-/

/-! ## A302725.P5807779649450553852

`A302728(∑[n+5]+6)`
-/

namespace A302725.P5807779649450553852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A302725.P5807779649450553852

/-!
# A302726: Number of nX6 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302726, there is no canonical definition to state claims against.
-/

/-! ## A302726.P15844907518289122080

`A302728(A052905(n+3))`
-/

namespace A302726.P15844907518289122080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A052905 (n + 3)).toNat

end

end A302726.P15844907518289122080

/-! ## A302726.P3621458222287519040

`A302728(A056119(n)+16)`
-/

namespace A302726.P3621458222287519040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A056119 n + 16).toNat

end

end A302726.P3621458222287519040

/-! ## A302726.P16070602819506654410

`A302728(eq[3, A219347(n)])`
-/

namespace A302726.P16070602819506654410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302726.P16070602819506654410

/-! ## A302726.P15760816252506371392

`A302728(eq[5, A193592(n)])`
-/

namespace A302726.P15760816252506371392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302726.P15760816252506371392

/-! ## A302726.P4829765980135649886

`A302728(eq[8, A258709(n)])`
-/

namespace A302726.P4829765980135649886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302726.P4829765980135649886

/-!
# A302727: Number of nX7 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302727, there is no canonical definition to state claims against.
-/

/-! ## A302727.P11955332511879924917

`A302728(A055999(n+4))`
-/

namespace A302727.P11955332511879924917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A055999 (n + 4)).toNat

end

end A302727.P11955332511879924917

/-! ## A302727.P3669158652650923104

`A302728(eq[4, A219347(n)])`
-/

namespace A302727.P3669158652650923104
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302727.P3669158652650923104

/-! ## A302727.P8272046085750744220

`A302728(eq[6, A193592(n)])`
-/

namespace A302727.P8272046085750744220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302727.P8272046085750744220

/-! ## A302727.P15784749178651191411

`A302728(eq[7, A200370(n+1)])`
-/

namespace A302727.P15784749178651191411
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302727.P15784749178651191411

/-! ## A302727.P8665611624829282707

`A302728(eq[10, A185782(n+1)])`
-/

namespace A302727.P8665611624829282707
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302727.P8665611624829282707

/-!
# A302728: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302728, there is no canonical definition to state claims against.
-/

/-! ## A302728.P14580321511747601593

`A302278(n+1)+A198318(A198318(2*(n+1)))`
-/

namespace A302728.P14580321511747601593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302278 (n + 1) + A198318 (A198318 (2 * (n + 1))).toNat

end

end A302728.P14580321511747601593

/-!
# A302729: Number of 4Xn 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302729, there is no canonical definition to state claims against.
-/

/-! ## A302729.P8736931675101661367

`A302728(∑[n+3]+7)`
-/

namespace A302729.P8736931675101661367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A302729.P8736931675101661367

/-! ## A302729.P12426039502359665209

`A302728(A052905(n)+9)+char[19]`
-/

namespace A302729.P12426039502359665209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302729.P12426039502359665209

/-! ## A302729.P14280600877547771398

`A302728(A000217(n+3)+4)+char[20]`
-/

namespace A302729.P14280600877547771398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  20

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A000217 (n + 3) + 4).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A302729.P14280600877547771398

/-! ## A302729.P3379416346016116434

`A007318(C(2, n))*A302728(A052905(n)+9)`
-/

namespace A302729.P3379416346016116434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A302728 (A052905 n + 9).toNat

end

end A302729.P3379416346016116434

/-! ## A302729.P15969171426333633136

`A000108(C(2, n+2))*A302728(A052905(n)+9)`
-/

namespace A302729.P15969171426333633136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A302728 (A052905 n + 9).toNat

end

end A302729.P15969171426333633136

/-!
# A302730: Number of 5Xn 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302730, there is no canonical definition to state claims against.
-/

/-! ## A302730.P5889833023822986074

`A302728(∑[n+4]+11)`
-/

namespace A302730.P5889833023822986074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A302730.P5889833023822986074

/-! ## A302730.P12785868694900097452

`A302728(A167499(n+3))+A000007(n+4)`
-/

namespace A302730.P12785868694900097452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A167499 (n + 3)).toNat + A000007 (n + 4)

end

end A302730.P12785868694900097452

/-! ## A302730.P7525977124606131304

`A302728(A056000(n)+15)%A024036(n+4)`
-/

namespace A302730.P7525977124606131304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302728 (A056000 n + 15).toNat) (A024036 (n + 4))

end

end A302730.P7525977124606131304

/-! ## A302730.P4246567184584958357

`A302728(A167499(n+3))+A000038(3*n+4)`
-/

namespace A302730.P4246567184584958357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A167499 (n + 3)).toNat + A000038 (3 * n + 4)

end

end A302730.P4246567184584958357

/-! ## A302730.P15679761165828004875

`A302728(A167499(n+3))+A007949(3*n+4)`
-/

namespace A302730.P15679761165828004875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A167499 (n + 3)).toNat + A007949 (3 * n + 4)

end

end A302730.P15679761165828004875

/-!
# A302731: Number of 6Xn 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302731, there is no canonical definition to state claims against.
-/

/-! ## A302731.P10900828776377463516

`A302728(A056115(n)+21)`
-/

namespace A302731.P10900828776377463516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A056115 n + 21).toNat

end

end A302731.P10900828776377463516

/-! ## A302731.P9481218846599472699

`A302728(A167499(n+4)+1)`
-/

namespace A302731.P9481218846599472699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A167499 (n + 4) + 1).toNat

end

end A302731.P9481218846599472699

/-! ## A302731.P13301453022287851768

`A302728(A000124(n+5)+5)`
-/

namespace A302731.P13301453022287851768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A000124 (n + 5) + 5).toNat

end

end A302731.P13301453022287851768

/-! ## A302731.P198586476884195561

`A302728(A000096(n+4)+7)`
-/

namespace A302731.P198586476884195561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A000096 (n + 4) + 7).toNat

end

end A302731.P198586476884195561

/-!
# A302732: Number of 7Xn 0..1 arrays with every element equal to 1, 2, 4 or 6 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302732, there is no canonical definition to state claims against.
-/

/-! ## A302732.P12523042252213123841

`A302728(A167487(n+5))`
-/

namespace A302732.P12523042252213123841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A167487 (n + 5)).toNat

end

end A302732.P12523042252213123841

/-! ## A302732.P15544388219582034000

`A302728(A056119(n)+28)`
-/

namespace A302732.P15544388219582034000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A056119 n + 28).toNat

end

end A302732.P15544388219582034000

/-! ## A302732.P12493972860274470904

`A302728(eq[11, A066657(n)])`
-/

namespace A302732.P12493972860274470904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302732.P12493972860274470904

/-! ## A302732.P14553343095056862041

`A302728(A167499(n+5)+2)`
-/

namespace A302732.P14553343095056862041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A167499 (n + 5) + 2).toNat

end

end A302732.P14553343095056862041

/-! ## A302732.P2385865276420656115

`A302728(A167614(n+5)+4)`
-/

namespace A302732.P2385865276420656115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302728 (A167614 (n + 5) + 4).toNat

end

end A302732.P2385865276420656115

/-!
# A302734: Number of paths in the n-path complement graph.

The programs for A302734, there is no canonical definition to state claims against.
-/

/-! ## A302734.P5542602703708558758

`∑[floor(A000255(n)/2)]`
-/

namespace A302734.P5542602703708558758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000255 n : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302734.P5542602703708558758

/-! ## A302734.P14928152091779494814

`∑[A216779(n)+A216778(n+1)]`
-/

namespace A302734.P14928152091779494814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216779 n + A216778 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302734.P14928152091779494814

/-! ## A302734.P18394768466141727940

`∑[A014508(n+1)-A000274(n+1)]`
-/

namespace A302734.P18394768466141727940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014508 (n + 1) - A000274 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302734.P18394768466141727940

/-! ## A302734.P15564384881621829353

`∑[A000387(n+1)+A000387(n)-and(1, n)]`
-/

namespace A302734.P15564384881621829353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 (n + 1) + A000387 n - (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302734.P15564384881621829353

/-! ## A302734.P3853936987878708935

`∑[a(n-1)+A000255(n)-A000153(n)]` with `a(0)=0`
-/

namespace A302734.P3853936987878708935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  f1 (n - 1) + (A000255 n - A000153 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302734.P3853936987878708935

/-! ## A302734.P4029861766143009629

`∑[A000387(n+1)+A000387(n)-A000035(n)]`
-/

namespace A302734.P4029861766143009629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000387 (n + 1) + A000387 n - A000035 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302734.P4029861766143009629

/-! ## A302734.P988761310056912201

`∑[A216778(n+2)/(n+1)]`
-/

namespace A302734.P988761310056912201
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216778 (n + 2) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302734.P988761310056912201

/-!
# A302735: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302735, there is no canonical definition to state claims against.
-/

/-! ## A302735.P700852178357083473

`A302741(∑[4*n]+1)`
-/

namespace A302735.P700852178357083473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302735.P700852178357083473

/-! ## A302735.P13929391302823083490

`record[A003982(n)*A302741(n+1)]`
-/

namespace A302735.P13929391302823083490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A302741 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302735.P13929391302823083490

/-! ## A302735.P16677309679862534527

`record[and(A185917(n+1), A302741(n+1))]`
-/

namespace A302735.P16677309679862534527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A185917 (n + 1)) (A302741 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302735.P16677309679862534527

/-! ## A302735.P9264879962685776683

`A302741(A001844(n))+A025439(n)`
-/

namespace A302735.P9264879962685776683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A001844 n).toNat + A025439 n

end

end A302735.P9264879962685776683

/-! ## A302735.P1423830486815093229

`A302741(A001844(n))+A184955(n)`
-/

namespace A302735.P1423830486815093229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A001844 n).toNat + A184955 n

end

end A302735.P1423830486815093229

/-!
# A302736: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302736, there is no canonical definition to state claims against.
-/

/-! ## A302736.P4962911536989708825

`A302741(∑[n+3]+1)`
-/

namespace A302736.P4962911536989708825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A302736.P4962911536989708825

/-! ## A302736.P7515429994493180559

`record[A302741(A198464(n+1))]`
-/

namespace A302736.P7515429994493180559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A198464 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302736.P7515429994493180559

/-!
# A302737: Number of nX4 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302737, there is no canonical definition to state claims against.
-/

/-! ## A302737.P10268955477074137154

`A302741(A141214(n+1))`
-/

namespace A302737.P10268955477074137154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A141214 (n + 1)).toNat

end

end A302737.P10268955477074137154

/-! ## A302737.P1996640131936877871

`A302741(A055998(n+2))`
-/

namespace A302737.P1996640131936877871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A055998 (n + 2)).toNat

end

end A302737.P1996640131936877871

/-! ## A302737.P5338179730983240417

`A302741(A155212(n)+5)`
-/

namespace A302737.P5338179730983240417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A155212 n + 5).toNat

end

end A302737.P5338179730983240417

/-! ## A302737.P17647012788888112221

`A302741(eq[2, A152157(n)])`
-/

namespace A302737.P17647012788888112221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302737.P17647012788888112221

/-! ## A302737.P7351308096045520263

`A302741(eq[4, A209438(n)])`
-/

namespace A302737.P7351308096045520263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209438 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302737.P7351308096045520263

/-!
# A302738: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302738, there is no canonical definition to state claims against.
-/

/-! ## A302738.P16545535793784658672

`A302741(Δ[A264443(n)])`
-/

namespace A302738.P16545535793784658672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (f1 (n + 1) - f1 n).toNat

end

end A302738.P16545535793784658672

/-! ## A302738.P3468226821176509797

`A302741(eq[3, A152157(n)])`
-/

namespace A302738.P3468226821176509797
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152157 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302738.P3468226821176509797

/-! ## A302738.P14786075697257736710

`A302741(eq[4, A193592(n)])`
-/

namespace A302738.P14786075697257736710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302738.P14786075697257736710

/-! ## A302738.P8974643304055882538

`A302741(Δ[A023545(n+1)])`
-/

namespace A302738.P8974643304055882538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023545 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (f1 (n + 1) - f1 n).toNat

end

end A302738.P8974643304055882538

/-! ## A302738.P4959847813280626444

`A302741(eq[4, A025581(n)]+1)`
-/

namespace A302738.P4959847813280626444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A302738.P4959847813280626444

/-!
# A302739: Number of nX6 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302739, there is no canonical definition to state claims against.
-/

/-! ## A302739.P828121237820838322

`A302741(A052905(n+3))`
-/

namespace A302739.P828121237820838322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A052905 (n + 3)).toNat

end

end A302739.P828121237820838322

/-! ## A302739.P12803175722889328180

`A302741(A056119(n)+16)`
-/

namespace A302739.P12803175722889328180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A056119 n + 16).toNat

end

end A302739.P12803175722889328180

/-! ## A302739.P15442909672550114959

`A302741(eq[3, A219347(n)])`
-/

namespace A302739.P15442909672550114959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302739.P15442909672550114959

/-! ## A302739.P15634516640203390537

`A302741(eq[5, A193592(n)])`
-/

namespace A302739.P15634516640203390537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302739.P15634516640203390537

/-! ## A302739.P17989816668871028791

`A302741(eq[8, A258709(n)])`
-/

namespace A302739.P17989816668871028791
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302739.P17989816668871028791

/-!
# A302740: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302740, there is no canonical definition to state claims against.
-/

/-! ## A302740.P3354580752070823248

`A302741(A055999(n+4))`
-/

namespace A302740.P3354580752070823248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A055999 (n + 4)).toNat

end

end A302740.P3354580752070823248

/-! ## A302740.P15837970438561282904

`A302741(eq[4, A219347(n)])`
-/

namespace A302740.P15837970438561282904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302740.P15837970438561282904

/-! ## A302740.P4760769590719263637

`A302741(eq[6, A193592(n)])`
-/

namespace A302740.P4760769590719263637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302740.P4760769590719263637

/-! ## A302740.P8871839571959913411

`A302741(A052905(n+4)-1)`
-/

namespace A302740.P8871839571959913411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A052905 (n + 4) - 1).toNat

end

end A302740.P8871839571959913411

/-! ## A302740.P401936791128800563

`A302741(eq[7, A200370(n+1)])`
-/

namespace A302740.P401936791128800563
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302740.P401936791128800563

/-!
# A302741: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302741, there is no canonical definition to state claims against.
-/

/-! ## A302741.P144129673614413960

`A317565(n+1)+A309785(A287215(n))`
-/

namespace A302741.P144129673614413960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317565 (n + 1) + A309785 (A287215 n).toNat

end

end A302741.P144129673614413960

/-! ## A302741.P8769676756527858101

`A300215(n+1)-A185284(A005349(n+1))`
-/

namespace A302741.P8769676756527858101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (n + 1) - A185284 (A005349 (n + 1)).toNat

end

end A302741.P8769676756527858101

/-! ## A302741.P1764197239978186054

`A300215(n+1)-A185284(A013948(n+1))`
-/

namespace A302741.P1764197239978186054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300215 (n + 1) - A185284 (A013948 (n + 1)).toNat

end

end A302741.P1764197239978186054

/-! ## A302741.P12361919716618622512

`A255408(A300215(n+1))`
-/

namespace A302741.P12361919716618622512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A300215 (n + 1)).toNat

end

end A302741.P12361919716618622512

/-! ## A302741.P8876178448682773993

`A255408(A300804(n+1))`
-/

namespace A302741.P8876178448682773993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255408 (A300804 (n + 1)).toNat

end

end A302741.P8876178448682773993

/-!
# A302742: Number of 3Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302742, there is no canonical definition to state claims against.
-/

/-! ## A302742.P13932151528700775157

`A302741(∑[n+2]+4)`
-/

namespace A302742.P13932151528700775157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A302742.P13932151528700775157

/-! ## A302742.P9169923699631935415

`A302741(A167614(n+1))+A185284(n)`
-/

namespace A302742.P9169923699631935415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A167614 (n + 1)).toNat + A185284 n

end

end A302742.P9169923699631935415

/-! ## A302742.P2187458287278035428

`A302741(A167614(n+1))+A192541(n)`
-/

namespace A302742.P2187458287278035428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A167614 (n + 1)).toNat + A192541 n

end

end A302742.P2187458287278035428

/-! ## A302742.P15425995133888858410

`A016182(n)*A302741(A167614(n+1))`
-/

namespace A302742.P15425995133888858410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016182 n * A302741 (A167614 (n + 1)).toNat

end

end A302742.P15425995133888858410

/-! ## A302742.P629580327464637945

`A278657(n)*A302741(A167614(n+1))`
-/

namespace A302742.P629580327464637945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278657 n * A302741 (A167614 (n + 1)).toNat

end

end A302742.P629580327464637945

/-!
# A302743: Number of 4Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302743, there is no canonical definition to state claims against.
-/

/-! ## A302743.P16719307034003485766

`A302741(A141214(n)+7)`
-/

namespace A302743.P16719307034003485766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A141214 n + 7).toNat

end

end A302743.P16719307034003485766

/-! ## A302743.P6248146729967115193

`A302741(A055999(n)+10)`
-/

namespace A302743.P6248146729967115193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A055999 n + 10).toNat

end

end A302743.P6248146729967115193

/-! ## A302743.P12209098985982633206

`A302741(A167614(n+2)+1)`
-/

namespace A302743.P12209098985982633206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A167614 (n + 2) + 1).toNat

end

end A302743.P12209098985982633206

/-! ## A302743.P15897989906321407364

`A302741(A167499(n+2)-1)`
-/

namespace A302743.P15897989906321407364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A167499 (n + 2) - 1).toNat

end

end A302743.P15897989906321407364

/-! ## A302743.P14175604349502380082

`A302741(A055998(n+1)+7)`
-/

namespace A302743.P14175604349502380082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A055998 (n + 1) + 7).toNat

end

end A302743.P14175604349502380082

/-!
# A302744: Number of 5Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302744, there is no canonical definition to state claims against.
-/

/-! ## A302744.P2009136318397030796

`A302741(A167499(n+3))`
-/

namespace A302744.P2009136318397030796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A167499 (n + 3)).toNat

end

end A302744.P2009136318397030796

/-! ## A302744.P16091082715535233929

`A302741(A155212(n)+13)`
-/

namespace A302744.P16091082715535233929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A155212 n + 13).toNat

end

end A302744.P16091082715535233929

/-! ## A302744.P1237328753575311303

`A302741(A056000(n)+15)`
-/

namespace A302744.P1237328753575311303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A056000 n + 15).toNat

end

end A302744.P1237328753575311303

/-! ## A302744.P9942435652175549342

`A302741(eq[7, A066657(n)])`
-/

namespace A302744.P9942435652175549342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302744.P9942435652175549342

/-! ## A302744.P11495207825275509423

`A302741(A167614(n+3)+2)`
-/

namespace A302744.P11495207825275509423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A167614 (n + 3) + 2).toNat

end

end A302744.P11495207825275509423

/-!
# A302745: Number of 6 X n 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302745, there is no canonical definition to state claims against.
-/

/-! ## A302745.P2366147208363853301

`A302741(A056115(n)+21)`
-/

namespace A302745.P2366147208363853301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A056115 n + 21).toNat

end

end A302745.P2366147208363853301

/-! ## A302745.P5678390630803158157

`A302741(A000217(n+5)+6)`
-/

namespace A302745.P5678390630803158157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A000217 (n + 5) + 6).toNat

end

end A302745.P5678390630803158157

/-! ## A302745.P2434128538673946960

`A302741(A055998(n+3)+9)`
-/

namespace A302745.P2434128538673946960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A055998 (n + 3) + 9).toNat

end

end A302745.P2434128538673946960

/-! ## A302745.P295684594895382887

`A302741(eq[7, A131818(n+1)])`
-/

namespace A302745.P295684594895382887
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302745.P295684594895382887

/-! ## A302745.P10929637811739551575

`A302741(A034856(n+6)-5-2*n)`
-/

namespace A302745.P10929637811739551575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A034856 (n + 6) - 5 - (2 * n : ℤ)).toNat

end

end A302745.P10929637811739551575

/-!
# A302746: Number of 7Xn 0..1 arrays with every element equal to 0, 1, 2, 3 or 4 horizontally, diagonally or antidiagonally adjacent elements, with upper left element zero.

The programs for A302746, there is no canonical definition to state claims against.
-/

/-! ## A302746.P18111647137387933853

`A302741(A056119(n)+28)`
-/

namespace A302746.P18111647137387933853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A056119 n + 28).toNat

end

end A302746.P18111647137387933853

/-! ## A302746.P7524398300836205686

`A302741(eq[11, A066657(n)])`
-/

namespace A302746.P7524398300836205686
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302746.P7524398300836205686

/-! ## A302746.P13008433464888916383

`A302741(A167614(n+5)+4)`
-/

namespace A302746.P13008433464888916383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A167614 (n + 5) + 4).toNat

end

end A302746.P13008433464888916383

/-! ## A302746.P13828919303796629818

`A302741(A000217(n+6)+7)`
-/

namespace A302746.P13828919303796629818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (A000217 (n + 6) + 7).toNat

end

end A302746.P13828919303796629818

/-! ## A302746.P10101156349386019696

`A302741(eq[8, A131818(n+1)])`
-/

namespace A302746.P10101156349386019696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302741 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302746.P10101156349386019696

/-!
# A302747: Triangle read by rows: T(0,0) = 1; T(n,k) = -2*T(n-1,k) + 3*T(n-2,k-1) for 0 <= k <= floor(n/2); T(n,k)=0 for n or k < 0.

The programs for A302747, there is no canonical definition to state claims against.
-/

/-! ## A302747.P11437272070286208208

`A317498(A091018(n))`
-/

namespace A302747.P11437272070286208208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317498 (A091018 n).toNat

end

end A302747.P11437272070286208208

/-! ## A302747.P2547194747277072932

`A317498(A056536(n+1)-1)`
-/

namespace A302747.P2547194747277072932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317498 (A056536 (n + 1) - 1).toNat

end

end A302747.P2547194747277072932

/-! ## A302747.P16542900693091037906

`A122803(A082375(n))*A304236(n)`
-/

namespace A302747.P16542900693091037906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122803 (A082375 n).toNat * A304236 n

end

end A302747.P16542900693091037906

/-! ## A302747.P13010446491956982553

`Δ[A053615(n)]*A013620(A091018(n))`
-/

namespace A302747.P13010446491956982553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053615 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A013620 (A091018 n).toNat

end

end A302747.P13010446491956982553

/-! ## A302747.P11893248054527126940

`A013610(A056536(n+1)-1)*A122803(A082375(n))`
-/

namespace A302747.P11893248054527126940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013610 (A056536 (n + 1) - 1).toNat * A122803 (A082375 n).toNat

end

end A302747.P11893248054527126940

/-!
# A302748: Half thrice the previous number, rounded down, plus 1, starting with 6.

The programs for A302748, the canonical program `A302748.P14998198941522945629` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302748 has offset 0).

The definition of A302748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302748.P14998198941522945629

`floor(3*a(n-1)/2)+1` with `a(0)=6`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302748

/-- `floor(3*a(n-1)/2)+1` -/
def P14998198941522945629.Spec : Prop :=
  ∀ n, P14998198941522945629.a n = A302748 n

theorem P14998198941522945629.correct : P14998198941522945629.Spec := by
  intro n
  simp only [A302748]

end A302748

/-! ## A302748.P17482544502708401143

`floor(a(n-1)/2+a(n-1)+1)` with `a(0)=6`
-/

namespace A302748.P17482544502708401143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌊(a (n - 1) : ℚ) / 2 + (a (n - 1) + 1 : ℚ)⌋

end

end A302748.P17482544502708401143

namespace A302748

/-- `floor(a(n-1)/2+a(n-1)+1)` -/
def P17482544502708401143.Spec : Prop :=
  ∀ n, P17482544502708401143.a n = A302748 n

end A302748

/-! ## A302748.P5558841412017820497

`A386792(n)-2`
-/

namespace A302748.P5558841412017820497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386792 n - 2

end

end A302748.P5558841412017820497

namespace A302748

/-- `A386792(n)-2` -/
def P5558841412017820497.Spec : Prop :=
  ∀ n, P5558841412017820497.a n = A302748 n

end A302748

/-! ## A302748.P7389363840865379473

`ceil((3*a(n-1)+1)/2)` with `a(0)=6`
-/

namespace A302748.P7389363840865379473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌈(3 * a (n - 1) + 1 : ℚ) / 2⌉

end

end A302748.P7389363840865379473

namespace A302748

/-- `ceil((3*a(n-1)+1)/2)` -/
def P7389363840865379473.Spec : Prop :=
  ∀ n, P7389363840865379473.a n = A302748 n

end A302748

/-! ## A302748.P7297286834372989369

`round((3*a(n-1)+1)/2)` with `a(0)=6`
-/

namespace A302748.P7297286834372989369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  SequenceMachineLib.roundAway ((3 * a (n - 1) + 1 : ℚ) / 2)

end

end A302748.P7297286834372989369

namespace A302748

/-- `round((3*a(n-1)+1)/2)` -/
def P7297286834372989369.Spec : Prop :=
  ∀ n, P7297286834372989369.a n = A302748 n

end A302748

/-! ## A302748.P12935140230370629941

`ceil(or(1, 3*a(n-1))/2)` with `a(0)=6`
-/

namespace A302748.P12935140230370629941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6] fun n a =>
  ⌈(Int.lor 1 (3 * a (n - 1)) : ℚ) / 2⌉

end

end A302748.P12935140230370629941

namespace A302748

/-- `ceil(or(1, 3*a(n-1))/2)` -/
def P12935140230370629941.Spec : Prop :=
  ∀ n, P12935140230370629941.a n = A302748 n

end A302748

/-!
# A302752: Numbers k such that k divides the sum of largest parts of all partitions of k.

The programs for A302752, there is no canonical definition to state claims against.
-/

/-! ## A302752.P2466313567934006325

`eq[0, A161981(n+1)]+1`
-/

namespace A302752.P2466313567934006325
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161981 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A302752.P2466313567934006325

/-! ## A302752.P15129055701598288917

`lt[A006128(n+1)%(n+1), 1]+1`
-/

namespace A302752.P15129055701598288917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006128 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A302752.P15129055701598288917

/-! ## A302752.P17727115969657068932

`eq[n, A028310(gcd(n, A006128(n)))]`
-/

namespace A302752.P17727115969657068932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.gcd (n : ℤ) (A006128 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A302752.P17727115969657068932

/-! ## A302752.P13915360292595288727

`eq[A000038(n), A161981(A028310(n))]`
-/

namespace A302752.P13915360292595288727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161981 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302752.P13915360292595288727

/-!
# A302753: Prime-additive numbers: numbers m with at least 2 distinct prime factors, that can be represented as m = Sum_{p|m} p^e_p, with e_p > 0.

The programs for A302753, there is no canonical definition to state claims against.
-/

/-! ## A302753.P9827380079059180560

`∩[A296717(n+1), A366914(n+1)]`
-/

namespace A302753.P9827380079059180560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296717 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P9827380079059180560

/-! ## A302753.P5501197888942240556

`∩[A000977(n+1), A366914(n+1)]`
-/

namespace A302753.P5501197888942240556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000977 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P5501197888942240556

/-! ## A302753.P8998384234762145055

`∩[A366914(n+1), A376384(n+1)]`
-/

namespace A302753.P8998384234762145055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376384 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P8998384234762145055

/-! ## A302753.P12371821778904358101

`∩[A307517(n+1), A366914(n+1)]`
-/

namespace A302753.P12371821778904358101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307517 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P12371821778904358101

/-! ## A302753.P3618688205362801185

`∩[A299991(n+1), A366914(n+1)]`
-/

namespace A302753.P3618688205362801185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P3618688205362801185

/-! ## A302753.P12603675434602746940

`∩[A070537(n+1), A366914(n+1)]`
-/

namespace A302753.P12603675434602746940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P12603675434602746940

/-! ## A302753.P16607803588363664057

`∩[A346608(n+1), A366914(n+1)]`
-/

namespace A302753.P16607803588363664057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346608 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P16607803588363664057

/-! ## A302753.P16058069604686556781

`∩[A085232(n+1), A366914(n+1)]`
-/

namespace A302753.P16058069604686556781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085232 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P16058069604686556781

/-! ## A302753.P4847741306357181506

`∩[A069900(n+1), A366914(n+1)]`
-/

namespace A302753.P4847741306357181506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069900 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P4847741306357181506

/-! ## A302753.P17334212693427521606

`∩[A085234(n+1), A366914(n+1)]`
-/

namespace A302753.P17334212693427521606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085234 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P17334212693427521606

/-! ## A302753.P2983860017714568451

`∩[A024619(n+1), A366914(n+1)]`
-/

namespace A302753.P2983860017714568451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024619 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P2983860017714568451

/-! ## A302753.P5034976408112324825

`∩[A081062(n+1), A366914(n+1)]`
-/

namespace A302753.P5034976408112324825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P5034976408112324825

/-! ## A302753.P14646211662458463693

`∩[A158871(n+1), A366914(n+1)]`
-/

namespace A302753.P14646211662458463693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158871 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P14646211662458463693

/-! ## A302753.P14888828804739012647

`∩[A359870(n+1), A366914(n+1)]`
-/

namespace A302753.P14888828804739012647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P14888828804739012647

/-! ## A302753.P4916572671208358492

`∩[A361102(n+1), A366914(n+1)]`
-/

namespace A302753.P4916572671208358492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361102 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P4916572671208358492

/-! ## A302753.P16215906791501745780

`∩[A366914(n+1), A396265(n+1)]`
-/

namespace A302753.P16215906791501745780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396265 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A302753.P16215906791501745780

/-! ## A302753.P9438636902498131985

`filter[A366914(n+1), A143731(#)]`
-/

namespace A302753.P9438636902498131985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366914 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A143731 (f1 j).toNat = 1) n)

end

end A302753.P9438636902498131985

/-!
# A302756: a(n) is the least possible greatest prime in any partition of prime(n) into three primes; n >= 4.

The programs for A302756, there is no canonical definition to state claims against.
-/

/-! ## A302756.P3574468821014031486

`A164023(p?[A020742(n)])`
-/

namespace A302756.P3574468821014031486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A302756.P3574468821014031486

/-! ## A302756.P3326285448637798302

`A164023(p?[A267873(n)])`
-/

namespace A302756.P3326285448637798302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A302756.P3326285448637798302

/-! ## A302756.P6022664689504370768

`A164023(A004139(n+2))`
-/

namespace A302756.P6022664689504370768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (A004139 (n + 2)).toNat

end

end A302756.P6022664689504370768

/-! ## A302756.P12209060843345920411

`A164023(A215848(n+2))`
-/

namespace A302756.P12209060843345920411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (A215848 (n + 2)).toNat

end

end A302756.P12209060843345920411

/-! ## A302756.P13941692361633862910

`A164023(A000040(n+4))`
-/

namespace A302756.P13941692361633862910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (A000040 (n + 4)).toNat

end

end A302756.P13941692361633862910

/-! ## A302756.P11389207366952018275

`A164023(A008578(n+5))`
-/

namespace A302756.P11389207366952018275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (A008578 (n + 5)).toNat

end

end A302756.P11389207366952018275

/-! ## A302756.P2528766135677233252

`A164023(record[A006530(n+7)])`
-/

namespace A302756.P2528766135677233252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302756.P2528766135677233252

/-! ## A302756.P1865155753828492490

`A164023(record[A014963(n+7)])`
-/

namespace A302756.P1865155753828492490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302756.P1865155753828492490

/-! ## A302756.P17400865203803003059

`A164023(A090417(n+1))`
-/

namespace A302756.P17400865203803003059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (A090417 (n + 1)).toNat

end

end A302756.P17400865203803003059

/-! ## A302756.P1158124614486581131

`A164023(A173135(n+2))`
-/

namespace A302756.P1158124614486581131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164023 (A173135 (n + 2)).toNat

end

end A302756.P1158124614486581131

/-!
# A302757: a(n) is the smallest number whose greedy representation as a sum of terms of A126684 uses n terms.

The programs for A302757, the canonical program `A302757.P2494402806790835498` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302757 has offset 1).

The definition of A302757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302757.P14080501481340956643

`ogf((1-3x+4x^2)/(1-6x+9x^2-4x^3))`
-/

namespace A302757.P14080501481340956643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -6, 9, -4] n

end

end A302757.P14080501481340956643

namespace A302757

/-- `ogf((1-3x+4x^2)/(1-6x+9x^2-4x^3))` -/
def P14080501481340956643.Spec : Prop :=
  ∀ n, P14080501481340956643.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P2494402806790835498

`4*a(n-1)+2*(n+1)-5` with `a(0)=1`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302757

/-- `4*a(n-1)+2*(n+1)-5` -/
def P2494402806790835498.Spec : Prop :=
  ∀ n, P2494402806790835498.a n = A302757 (n + 1)

theorem P2494402806790835498.correct : P2494402806790835498.Spec := by
  intro n
  simp only [A302757, Nat.add_sub_cancel]

end A302757

/-! ## A302757.P12359065664645870258

`(7+2^(1+2*(n+1))-6*(n+1))/9`
-/

namespace A302757.P12359065664645870258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((7 + 2 ^ (1 + 2 * (n + 1)) : ℤ) - (6 * (n + 1) : ℤ) : ℚ) / 9

end

end A302757.P12359065664645870258

namespace A302757

/-- `(7+2^(1+2*(n+1))-6*(n+1))/9` -/
def P12359065664645870258.Spec : Prop :=
  ∀ n, P12359065664645870258.a n = (A302757 (n + 1) : ℚ)

theorem P12359065664645870258.correct : P12359065664645870258.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A302757, Nat.add_sub_cancel, A302757.P12359065664645870258.a, A302757.P2494402806790835498.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A302757, Nat.add_sub_cancel, A302757.P12359065664645870258.a, A302757.P2494402806790835498.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A302757

/-! ## A302757.P7238846197757758860

`∑[ogf((1-3x+4x^2)/(1-5x+4x^2))]`
-/

namespace A302757.P7238846197757758860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 4] [1, -5, 4] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302757.P7238846197757758860

namespace A302757

/-- `∑[ogf((1-3x+4x^2)/(1-5x+4x^2))]` -/
def P7238846197757758860.Spec : Prop :=
  ∀ n, P7238846197757758860.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P17767400731464113428

`or(1, ∑[∑[floor(4^n/2)]])`
-/

namespace A302757.P17767400731464113428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302757.P17767400731464113428

namespace A302757

/-- `or(1, ∑[∑[floor(4^n/2)]])` -/
def P17767400731464113428.Spec : Prop :=
  ∀ n, P17767400731464113428.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P4458222926824347102

`xor(1, ∑[∑[floor(4^n/2)]])`
-/

namespace A302757.P4458222926824347102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(4 ^ n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A302757.P4458222926824347102

namespace A302757

/-- `xor(1, ∑[∑[floor(4^n/2)]])` -/
def P4458222926824347102.Spec : Prop :=
  ∀ n, P4458222926824347102.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P6957037644987173986

`∑[4*a(n-1)+2]` with `a(0)=1, a(1)=2`
-/

namespace A302757.P6957037644987173986
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  4 * f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302757.P6957037644987173986

namespace A302757

/-- `∑[4*a(n-1)+2]` -/
def P6957037644987173986.Spec : Prop :=
  ∀ n, (P6957037644987173986.a n : ℤ) = A302757 (n + 1)

end A302757

/-! ## A302757.P13454891949279330141

`∑[or(2, 4*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A302757.P13454891949279330141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.lor 2 (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302757.P13454891949279330141

namespace A302757

/-- `∑[or(2, 4*a(n-1))]` -/
def P13454891949279330141.Spec : Prop :=
  ∀ n, (P13454891949279330141.a n : ℤ) = A302757 (n + 1)

end A302757

/-! ## A302757.P15670874761906870302

`∑[xor(2, 4*a(n-1))]` with `a(0)=1, a(1)=2`
-/

namespace A302757.P15670874761906870302
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  Nat.xor 2 (4 * f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302757.P15670874761906870302

namespace A302757

/-- `∑[xor(2, 4*a(n-1))]` -/
def P15670874761906870302.Spec : Prop :=
  ∀ n, (P15670874761906870302.a n : ℤ) = A302757 (n + 1)

end A302757

/-! ## A302757.P1798831283425043025

`∑[∑[4*a(n-1)]]` with `a(0)=1, a(1)=1, a(2)=8`
-/

namespace A302757.P1798831283425043025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 8] fun n f2 =>
  4 * f2 (n - 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302757.P1798831283425043025

namespace A302757

/-- `∑[∑[4*a(n-1)]]` -/
def P1798831283425043025.Spec : Prop :=
  ∀ n, (P1798831283425043025.a n : ℤ) = A302757 (n + 1)

end A302757

/-! ## A302757.P7305672355875964134

`record[1-(2*a(n-1)+n)]` with `a(0)=1`
-/

namespace A302757.P7305672355875964134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  1 - (2 * f1 (n - 1) + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302757.P7305672355875964134

namespace A302757

/-- `record[1-(2*a(n-1)+n)]` -/
def P7305672355875964134.Spec : Prop :=
  ∀ n, P7305672355875964134.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P9161885420333589075

`2*n+4*a(n-1)-3` with `a(0)=1`
-/

namespace A302757.P9161885420333589075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) + (4 * a (n - 1) - 3)

end

end A302757.P9161885420333589075

namespace A302757

/-- `2*n+4*a(n-1)-3` -/
def P9161885420333589075.Spec : Prop :=
  ∀ n, P9161885420333589075.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P18007560212686076301

`2*n-(3-4*a(n-1))` with `a(0)=1`
-/

namespace A302757.P18007560212686076301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (2 * n : ℤ) - (3 - 4 * a (n - 1))

end

end A302757.P18007560212686076301

namespace A302757

/-- `2*n-(3-4*a(n-1))` -/
def P18007560212686076301.Spec : Prop :=
  ∀ n, P18007560212686076301.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P4300892105217491376

`∑[a(n-1)+4^n/2]` with `a(0)=1, a(1)=2`
-/

namespace A302757.P4300892105217491376
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + (4 ^ n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302757.P4300892105217491376

namespace A302757

/-- `∑[a(n-1)+4^n/2]` -/
def P4300892105217491376.Spec : Prop :=
  ∀ n, P4300892105217491376.a n = (A302757 (n + 1) : ℚ)

end A302757

/-! ## A302757.P6817705414532137311

`A145766(n)+1`
-/

namespace A302757.P6817705414532137311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145766 n + 1

end

end A302757.P6817705414532137311

namespace A302757

/-- `A145766(n)+1` -/
def P6817705414532137311.Spec : Prop :=
  ∀ n, P6817705414532137311.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P2989235208215719509

`A103196(2*n)`
-/

namespace A302757.P2989235208215719509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103196 (2 * n)

end

end A302757.P2989235208215719509

namespace A302757

/-- `A103196(2*n)` -/
def P2989235208215719509.Spec : Prop :=
  ∀ n, P2989235208215719509.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P12685166663741254338

`A160156(n)-n`
-/

namespace A302757.P12685166663741254338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160156 n - (n : ℤ)

end

end A302757.P12685166663741254338

namespace A302757

/-- `A160156(n)-n` -/
def P12685166663741254338.Spec : Prop :=
  ∀ n, P12685166663741254338.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P15662059644744298504

`∑[record[A078052(n)]]`
-/

namespace A302757.P15662059644744298504
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078052 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302757.P15662059644744298504

namespace A302757

/-- `∑[record[A078052(n)]]` -/
def P15662059644744298504.Spec : Prop :=
  ∀ n, P15662059644744298504.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P4254678921339026945

`∑[record[A112691(n)]]`
-/

namespace A302757.P4254678921339026945
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112691 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302757.P4254678921339026945

namespace A302757

/-- `∑[record[A112691(n)]]` -/
def P4254678921339026945.Spec : Prop :=
  ∀ n, P4254678921339026945.a n = A302757 (n + 1)

end A302757

/-! ## A302757.P1062705451179528742

`∑[record[A167193(n)]]`
-/

namespace A302757.P1062705451179528742
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167193 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302757.P1062705451179528742

namespace A302757

/-- `∑[record[A167193(n)]]` -/
def P1062705451179528742.Spec : Prop :=
  ∀ n, P1062705451179528742.a n = A302757 (n + 1)

end A302757

/-!
# A302758: a(n) = n^2*(n*(4*n + 3) + 3*n*(-1)^n - 4)/96.

The programs for A302758, the canonical program `A302758.P10970032568912674995` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302758 has offset 1).

The definition of A302758 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A302758.anchor (n : ℕ) : (A302758 (n + 1) : ℚ) = (((n + 1) ^ 2 : ℤ) * (((n + 1) * (4 * (n + 1) + 3) : ℤ) + (3 * (n + 1) : ℤ) * (-1) ^ (n + 1) - 4) : ℚ) / 96` in `Proof.A302.A302758`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302758.P18031969692659839919

`ogf((x+2x^2+7x^3+3x^4+3x^5)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))`
-/

namespace A302758.P18031969692659839919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 7, 3, 3] [1, -1, -4, 4, 6, -6, -4, 4, 1, -1] n

end

end A302758.P18031969692659839919

namespace A302758

/-- `ogf((x+2x^2+7x^3+3x^4+3x^5)/(1-x-4x^2+4x^3+6x^4-6x^5-4x^6+4x^7+x^8-x^9))` -/
def P18031969692659839919.Spec : Prop :=
  ∀ n, P18031969692659839919.a n = A302758 (n + 1)

end A302758

/-! ## A302758.P10970032568912674995

`(n+1)²*((n+1)*(4*(n+1)+3)+3*(n+1)*(-1)^(n+1)-4)/96`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302758

/-- `(n+1)²*((n+1)*(4*(n+1)+3)+3*(n+1)*(-1)^(n+1)-4)/96` -/
def P10970032568912674995.Spec : Prop :=
  ∀ n, P10970032568912674995.a n = (A302758 (n + 1) : ℚ)

end A302758

/-! ## A302758.P1692603173608847736

`(n+1)/2*∑{#}[floor((n+1)/2)-1, (#+1)*(n+1-(#+1))]`
-/

namespace A302758.P1692603173608847736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * ((∑ k ∈ Finset.range (f1 n + 1).toNat, (k + 1 : ℤ) * ((n + 1 : ℤ) - (k + 1 : ℤ)) : ℤ) : ℚ)

end

end A302758.P1692603173608847736

namespace A302758

/-- `(n+1)/2*∑{#}[floor((n+1)/2)-1, (#+1)*(n+1-(#+1))]` -/
def P1692603173608847736.Spec : Prop :=
  ∀ n, P1692603173608847736.a n = (A302758 (n + 1) : ℚ)

end A302758

/-!
# A302759: Number of total dominating sets in the n-Andrásfai graph.

The programs for A302759, there is no canonical definition to state claims against.
-/

/-! ## A302759.P1503928893462592126

`A125127(A360417(n+1))`
-/

namespace A302759.P1503928893462592126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A360417 (n + 1)).toNat

end

end A302759.P1503928893462592126

/-! ## A302759.P12795968123339411232

`A125127(A139275(n)+A017101(n))`
-/

namespace A302759.P12795968123339411232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A139275 n + A017101 n).toNat

end

end A302759.P12795968123339411232

/-! ## A302759.P4986121532846591619

`A125127(A016777(n)+A000124(4*n+1))`
-/

namespace A302759.P4986121532846591619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125127 (A016777 n + A000124 (4 * n + 1)).toNat

end

end A302759.P4986121532846591619

/-! ## A302759.P10442645084621817954

`A185722(∑[n+1]+(2*n+1)²)`
-/

namespace A302759.P10442645084621817954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185722 (∑ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1) ^ 2)

end

end A302759.P10442645084621817954

/-!
# A302760: Number of total dominating sets in the n-antiprism graph.

The programs for A302760, the canonical program `A302760.P13515310308798562350` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302760 has offset 1).

The definition of A302760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302760.P13515310308798562350

`ogf((3+2x+18x^2-12x^3+7x^6)/(1-3x-x^2-6x^3+3x^4-x^7))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302760

/-- `ogf((3+2x+18x^2-12x^3+7x^6)/(1-3x-x^2-6x^3+3x^4-x^7))` -/
def P13515310308798562350.Spec : Prop :=
  ∀ n, P13515310308798562350.a n = A302760 (n + 1)

theorem P13515310308798562350.correct : P13515310308798562350.Spec := by
  intro n
  simp only [A302760, Nat.add_sub_cancel]

end A302760

/-!
# A302761: Number of total dominating sets in the n-barbell graph.

The programs for A302761, the canonical program `A302761.P16876720085967964429` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302761 has offset 1).

The definition of A302761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302761.P16876720085967964429

`(2^(n+1)-(n+1))²-(2^(n+1)-2*(n+1))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302761

/-- `(2^(n+1)-(n+1))²-(2^(n+1)-2*(n+1))` -/
def P16876720085967964429.Spec : Prop :=
  ∀ n, P16876720085967964429.a n = A302761 (n + 1)

theorem P16876720085967964429.correct : P16876720085967964429.Spec := by
  intro n
  simp only [A302761, Nat.add_sub_cancel]

end A302761

/-!
# A302762: Number of minimal total dominating sets in the n-Andrásfai graph.

The programs for A302762, the canonical program `A302762.P12324775016637000009` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302762 has offset 1).

The definition of A302762 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302762.P12324775016637000009

`ogf((1-x-x^2+15x^3-27x^4+15x^5+2x^6-x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302762

/-- `ogf((1-x-x^2+15x^3-27x^4+15x^5+2x^6-x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P12324775016637000009.Spec : Prop :=
  ∀ n, P12324775016637000009.a n = A302762 (n + 1)

theorem P12324775016637000009.correct : P12324775016637000009.Spec := by
  intro n
  simp only [A302762, Nat.add_sub_cancel]

end A302762

/-! ## A302762.P11789832156807850276

`A192080(n)-A007953(A015565(n))`
-/

namespace A302762.P11789832156807850276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192080 n - A007953 (A015565 n).toNat

end

end A302762.P11789832156807850276

namespace A302762

/-- `A192080(n)-A007953(A015565(n))` -/
def P11789832156807850276.Spec : Prop :=
  ∀ n, P11789832156807850276.a n = A302762 (n + 1)

end A302762

/-!
# A302764: Pascal-like triangle with A000012 as the left border and A080956 as the right border.

The programs for A302764, the canonical program `A302764.P1454018840970518205` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302764 has offset 1).

The definition of A302764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A302764.P10414814211709568575

`(row(n)-2*col(n)+2)*C(row(n)+1, col(n))/(row(n)-col(n)+2)`
-/

namespace A302764.P10414814211709568575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((SequenceMachineLib.triRow n : ℤ) - (2 * SequenceMachineLib.triCol n : ℤ) + 2) * (Nat.choose (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n) : ℤ) : ℚ) / ((SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ) + 2 : ℚ)

end

end A302764.P10414814211709568575

namespace A302764

/-- `(row(n)-2*col(n)+2)*C(row(n)+1, col(n))/(row(n)-col(n)+2)` -/
def P10414814211709568575.Spec : Prop :=
  ∀ n, P10414814211709568575.a n = (A302764 (n + 1) : ℚ)

end A302764

/-! ## A302764.P13990352420350437797

`2*A074909(n)-A209518(n)`
-/

namespace A302764.P13990352420350437797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A074909 n - A209518 n

end

end A302764.P13990352420350437797

namespace A302764

/-- `2*A074909(n)-A209518(n)` -/
def P13990352420350437797.Spec : Prop :=
  ∀ n, P13990352420350437797.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P16307164466268628156

`A080233(n)+A080233(n)-A080236(n)`
-/

namespace A302764.P16307164466268628156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 n + (A080233 n - A080236 n)

end

end A302764.P16307164466268628156

namespace A302764

/-- `A080233(n)+A080233(n)-A080236(n)` -/
def P16307164466268628156.Spec : Prop :=
  ∀ n, P16307164466268628156.a n = A302764 (n + 1)

theorem P16307164466268628156.correct : P16307164466268628156.Spec := by
  intro n
  simp only [A302764, Nat.add_sub_cancel, A302764.P16307164466268628156.a, A302764.P1454018840970518205.a, A007401, A007401.P15765701893365026453.a, A074909, A074909.P6402560185863182536.a, A080233, A080233.P15572603627752373411.a, A080236, A080236.P11120207343015903809.a, A056943, A056943.P2657344456391598982.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A302764

/-! ## A302764.P1454018840970518205

`2*A074909(n)-A074909(A007401(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A302764

/-- `2*A074909(n)-A074909(A007401(n+1))` -/
def P1454018840970518205.Spec : Prop :=
  ∀ n, P1454018840970518205.a n = A302764 (n + 1)

theorem P1454018840970518205.correct : P1454018840970518205.Spec := by
  intro n
  simp only [A302764, Nat.add_sub_cancel]

end A302764

/-! ## A302764.P16074496889120570812

`A131085(A061579(n))`
-/

namespace A302764.P16074496889120570812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131085 (A061579 n).toNat

end

end A302764.P16074496889120570812

namespace A302764

/-- `A131085(A061579(n))` -/
def P16074496889120570812.Spec : Prop :=
  ∀ n, P16074496889120570812.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P6596041817487515845

`A131085(A114327(n)+n)`
-/

namespace A302764.P6596041817487515845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131085 (A114327 n + (n : ℤ)).toNat

end

end A302764.P6596041817487515845

namespace A302764

/-- `A131085(A114327(n)+n)` -/
def P6596041817487515845.Spec : Prop :=
  ∀ n, P6596041817487515845.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P17161974257553297407

`A131085(A038722(n+1)-1)`
-/

namespace A302764.P17161974257553297407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131085 (A038722 (n + 1) - 1).toNat

end

end A302764.P17161974257553297407

namespace A302764

/-- `A131085(A038722(n+1)-1)` -/
def P17161974257553297407.Spec : Prop :=
  ∀ n, P17161974257553297407.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P7840163796545469773

`A131085((A003056(n)+1)²-(n+1))`
-/

namespace A302764.P7840163796545469773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131085 ((A003056 n + 1) ^ 2 - (n + 1 : ℤ)).toNat

end

end A302764.P7840163796545469773

namespace A302764

/-- `A131085((A003056(n)+1)²-(n+1))` -/
def P7840163796545469773.Spec : Prop :=
  ∀ n, P7840163796545469773.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P5521011276036820843

`A080233(A007401(n+1))`
-/

namespace A302764.P5521011276036820843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (A007401 (n + 1)).toNat

end

end A302764.P5521011276036820843

namespace A302764

/-- `A080233(A007401(n+1))` -/
def P5521011276036820843.Spec : Prop :=
  ∀ n, P5521011276036820843.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P12162346570907164067

`A080233(A014132(n+1)-1)`
-/

namespace A302764.P12162346570907164067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (A014132 (n + 1) - 1).toNat

end

end A302764.P12162346570907164067

namespace A302764

/-- `A080233(A014132(n+1)-1)` -/
def P12162346570907164067.Spec : Prop :=
  ∀ n, P12162346570907164067.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P14772109607552150373

`A080233(A080036(n+1)-2)`
-/

namespace A302764.P14772109607552150373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (A080036 (n + 1) - 2).toNat

end

end A302764.P14772109607552150373

namespace A302764

/-- `A080233(A080036(n+1)-2)` -/
def P14772109607552150373.Spec : Prop :=
  ∀ n, P14772109607552150373.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P5328789081537947184

`A080233(A003056(n)+1+n)`
-/

namespace A302764.P5328789081537947184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080233 (A003056 n + 1 + (n : ℤ)).toNat

end

end A302764.P5328789081537947184

namespace A302764

/-- `A080233(A003056(n)+1+n)` -/
def P5328789081537947184.Spec : Prop :=
  ∀ n, P5328789081537947184.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P461465305023757378

`A037012(eq[0, A097806(n)])`
-/

namespace A302764.P461465305023757378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302764.P461465305023757378

namespace A302764

/-- `A037012(eq[0, A097806(n)])` -/
def P461465305023757378.Spec : Prop :=
  ∀ n, P461465305023757378.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P2838632470876479008

`A037012(eq[0, A128541(n)])`
-/

namespace A302764.P2838632470876479008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128541 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302764.P2838632470876479008

namespace A302764

/-- `A037012(eq[0, A128541(n)])` -/
def P2838632470876479008.Spec : Prop :=
  ∀ n, P2838632470876479008.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P10394099940897611055

`A037012(eq[0, A167374(n)])`
-/

namespace A302764.P10394099940897611055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167374 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A302764.P10394099940897611055

namespace A302764

/-- `A037012(eq[0, A167374(n)])` -/
def P10394099940897611055.Spec : Prop :=
  ∀ n, P10394099940897611055.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P7729933366499842899

`A037012(lt[1, A025581(n)])`
-/

namespace A302764.P7729933366499842899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A302764.P7729933366499842899

namespace A302764

/-- `A037012(lt[1, A025581(n)])` -/
def P7729933366499842899.Spec : Prop :=
  ∀ n, P7729933366499842899.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P16075134080579215901

`A037012(lt[2, A004736(n+1)])`
-/

namespace A302764.P16075134080579215901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A302764.P16075134080579215901

namespace A302764

/-- `A037012(lt[2, A004736(n+1)])` -/
def P16075134080579215901.Spec : Prop :=
  ∀ n, P16075134080579215901.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P14681961990952579417

`A037012(lt[2, A002260(n+1)]-2)`
-/

namespace A302764.P14681961990952579417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n - 2)

end

end A302764.P14681961990952579417

namespace A302764

/-- `A037012(lt[2, A002260(n+1)]-2)` -/
def P14681961990952579417.Spec : Prop :=
  ∀ n, P14681961990952579417.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P17603456822490584595

`A037012(lt[A003056(n), A091435(n)])`
-/

namespace A302764.P17603456822490584595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091435 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302764.P17603456822490584595

namespace A302764

/-- `A037012(lt[A003056(n), A091435(n)])` -/
def P17603456822490584595.Spec : Prop :=
  ∀ n, P17603456822490584595.a n = A302764 (n + 1)

end A302764

/-! ## A302764.P92281398824694155

`A037012(lt[A002260(n+1), A003056(n)])`
-/

namespace A302764.P92281398824694155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037012 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A302764.P92281398824694155

namespace A302764

/-- `A037012(lt[A002260(n+1), A003056(n)])` -/
def P92281398824694155.Spec : Prop :=
  ∀ n, P92281398824694155.a n = A302764 (n + 1)

end A302764

/-!
# A302766: a(n) = n*((4*n + 1)*(7*n - 4) + 15*n*(-1)^n)/48.

The programs for A302766, the canonical program `A302766.P6149337397434714441` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302766 has offset 1).

The definition of A302766 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A302766.anchor (n : ℕ) : (A302766 (n + 1) : ℚ) = ((n + 1 : ℤ) * ((4 * (n + 1) + 1 : ℤ) * ((7 * (n + 1) : ℤ) - 4) + (15 * (n + 1) : ℤ) * (-1) ^ (n + 1)) : ℚ) / 48` in `Proof.A302.A302766`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302766.P9393157760946958431

`ogf((5x+6x^2+13x^3+3x^4+x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))`
-/

namespace A302766.P9393157760946958431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5, 6, 13, 3, 1] [1, -1, -3, 3, 3, -3, -1, 1] n

end

end A302766.P9393157760946958431

namespace A302766

/-- `ogf((5x+6x^2+13x^3+3x^4+x^5)/(1-x-3x^2+3x^3+3x^4-3x^5-x^6+x^7))` -/
def P9393157760946958431.Spec : Prop :=
  ∀ n, P9393157760946958431.a n = A302766 (n + 1)

end A302766

/-! ## A302766.P6149337397434714441

`(n+1)*((4*(n+1)+1)*(7*(n+1)-4)+15*(n+1)*(-1)^(n+1))/48`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302766

/-- `(n+1)*((4*(n+1)+1)*(7*(n+1)-4)+15*(n+1)*(-1)^(n+1))/48` -/
def P6149337397434714441.Spec : Prop :=
  ∀ n, P6149337397434714441.a n = (A302766 (n + 1) : ℚ)

end A302766

/-! ## A302766.P3340039381552190377

`∑{#}[floor((n+1)/2)-1, (n+1)*(#+1)+(n+1)*(n+1-(#+1))+(#+1)*(n+1-(#+1))]`
-/

namespace A302766.P3340039381552190377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1).toNat, (((n + 1) * (k + 1) : ℤ) + (n + 1 : ℤ) * ((n + 1 : ℤ) - (k + 1 : ℤ)) + (k + 1 : ℤ) * ((n + 1 : ℤ) - (k + 1 : ℤ)))

end

end A302766.P3340039381552190377

namespace A302766

/-- `∑{#}[floor((n+1)/2)-1, (n+1)*(#+1)+(n+1)*(n+1-(#+1))+(#+1)*(n+1-(#+1))]` -/
def P3340039381552190377.Spec : Prop :=
  ∀ n, P3340039381552190377.a n = A302766 (n + 1)

end A302766

/-! ## A302766.P8095359490212445020

`A331987(n)-A294139(n+1)`
-/

namespace A302766.P8095359490212445020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331987 n - A294139 (n + 1)

end

end A302766.P8095359490212445020

namespace A302766

/-- `A331987(n)-A294139(n+1)` -/
def P8095359490212445020.Spec : Prop :=
  ∀ n, P8095359490212445020.a n = A302766 (n + 1)

end A302766

/-! ## A302766.P17836755955950035323

`A000292(A007494(n))+A000292(A110654(n))`
-/

namespace A302766.P17836755955950035323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A007494 n).toNat + A000292 (A110654 n).toNat

end

end A302766.P17836755955950035323

namespace A302766

/-- `A000292(A007494(n))+A000292(A110654(n))` -/
def P17836755955950035323.Spec : Prop :=
  ∀ n, P17836755955950035323.a n = A302766 (n + 1)

end A302766

/-! ## A302766.P11309481209849244639

`A000292(A004526(n+1))+A000292(A007494(n))`
-/

namespace A302766.P11309481209849244639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A004526 (n + 1)).toNat + A000292 (A007494 n).toNat

end

end A302766.P11309481209849244639

namespace A302766

/-- `A000292(A004526(n+1))+A000292(A007494(n))` -/
def P11309481209849244639.Spec : Prop :=
  ∀ n, P11309481209849244639.a n = A302766 (n + 1)

end A302766

/-! ## A302766.P11528498465109479591

`A000292(A004526(n+1)+n)+A000292(A004526(n+1))`
-/

namespace A302766.P11528498465109479591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A004526 (n + 1) + (n : ℤ)).toNat + A000292 (A004526 (n + 1)).toNat

end

end A302766.P11528498465109479591

namespace A302766

/-- `A000292(A004526(n+1)+n)+A000292(A004526(n+1))` -/
def P11528498465109479591.Spec : Prop :=
  ∀ n, P11528498465109479591.a n = A302766 (n + 1)

end A302766

/-! ## A302766.P13574427431850763926

`A000292(A057353(2*n+1))+A000292(A110655(2*n))`
-/

namespace A302766.P13574427431850763926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A057353 (2 * n + 1)).toNat + A000292 (A110655 (2 * n)).toNat

end

end A302766.P13574427431850763926

namespace A302766

/-- `A000292(A057353(2*n+1))+A000292(A110655(2*n))` -/
def P13574427431850763926.Spec : Prop :=
  ∀ n, P13574427431850763926.a n = A302766 (n + 1)

end A302766

/-! ## A302766.P745395194679895008

`A000292(A110654(3*n))+A000292(A004526(n+1))`
-/

namespace A302766.P745395194679895008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A110654 (3 * n)).toNat + A000292 (A004526 (n + 1)).toNat

end

end A302766.P745395194679895008

namespace A302766

/-- `A000292(A110654(3*n))+A000292(A004526(n+1))` -/
def P745395194679895008.Spec : Prop :=
  ∀ n, P745395194679895008.a n = A302766 (n + 1)

end A302766

/-!
# A302768: Numbers k whose sum and product of digits are substrings of k.

The programs for A302768, there is no canonical definition to state claims against.
-/

/-! ## A302768.P10356247093483807056

`eq[A007953(A062513(n+1)), A055640(n)]`
-/

namespace A302768.P10356247093483807056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A062513 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055640 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A302768.P10356247093483807056

/-!
# A302769: a(n) = 2*((2*n-1)*a(n-1) - (n-2)!), with a(1) = 4, n > 1.

The programs for A302769, the canonical program `A302769.P1350959766601725244` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302769 has offset 1).

The definition of A302769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*((2*(n+1)-1)*a(n-1)-(n-1)!)` (program `A302769.P1350959766601725244`, by `A302769.P1350959766601725244.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302769.P1350959766601725244

`2*((2*(n+1)-1)*a(n-1)-(n-1)!)` with `a(0)=4`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302769

/-- `2*((2*(n+1)-1)*a(n-1)-(n-1)!)` -/
def P1350959766601725244.Spec : Prop :=
  ∀ n, P1350959766601725244.a n = A302769 (n + 1)

theorem P1350959766601725244.correct : P1350959766601725244.Spec := by
  intro n
  simp only [A302769, Nat.add_sub_cancel]

end A302769

/-!
# A302770: a(n) = (4*n-2)*((n-1)*a(n-1) + ((n-2)!)^2), with a(1) = 0, n > 1.

The programs for A302770, the canonical program `A302770.P6372969951478757172` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302770 has offset 1).

The definition of A302770 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4*(n+1)-2)*(n*a(n-1)+(n-1)!²)` (program `A302770.P6372969951478757172`, by `A302770.P6372969951478757172.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A302770.P6372969951478757172

`(4*(n+1)-2)*(n*a(n-1)+(n-1)!²)` with `a(0)=0`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302770

/-- `(4*(n+1)-2)*(n*a(n-1)+(n-1)!²)` -/
def P6372969951478757172.Spec : Prop :=
  ∀ n, P6372969951478757172.a n = A302770 (n + 1)

theorem P6372969951478757172.correct : P6372969951478757172.Spec := by
  intro n
  simp only [A302770, Nat.add_sub_cancel]

end A302770

/-!
# A302771: If there is Gaussian integer z such that the norm of z is n, a(n) is the absolute value of Product_{the norm of z is n} z. Otherwise a(n) = 0.

The programs for A302771, there is no canonical definition to state claims against.
-/

/-! ## A302771.P7586996314804689399

`(n*(1-A181786(n)))^A010348(A103391(n+1))`
-/

namespace A302771.P7586996314804689399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * (1 - A181786 n) : ℚ) ^ (A010348 (A103391 (n + 1)).toNat : ℤ)

end

end A302771.P7586996314804689399

/-! ## A302771.P11477544259816493867

`A102392(n^A345199(n))`
-/

namespace A302771.P11477544259816493867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102392 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A345199 n : ℤ))).toNat

end

end A302771.P11477544259816493867

/-!
# A302773: Numerators of (3*n + 2)/12.

The programs for A302773, the canonical program `A302773.P2748005059858630180` is in `Seq.B000.C042`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302773 has offset 0).

The definition of A302773 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A302773.P2748005059858630180

`2*a(n-4)-a(n-8)` with `a(0)=1, a(1)=5, a(2)=2, a(3)=11, a(4)=7, a(5)=17, a(6)=5, a(7)=23`

The canonical program, it is in `Seq.B000.C042`.
-/

namespace A302773

/-- `2*a(n-4)-a(n-8)` -/
def P2748005059858630180.Spec : Prop :=
  ∀ n, P2748005059858630180.a n = A302773 n

theorem P2748005059858630180.correct : P2748005059858630180.Spec := by
  intro n
  simp only [A302773]

end A302773

/-! ## A302773.P12524352722285385429

`ogf((1+5x+2x^2+11x^3+5x^4+7x^5+x^6+x^7)/(1-2x^4+x^8))`
-/

namespace A302773.P12524352722285385429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 5, 2, 11, 5, 7, 1, 1] [1, 0, 0, 0, -2, 0, 0, 0, 1] n

end

end A302773.P12524352722285385429

namespace A302773

/-- `ogf((1+5x+2x^2+11x^3+5x^4+7x^5+x^6+x^7)/(1-2x^4+x^8))` -/
def P12524352722285385429.Spec : Prop :=
  ∀ n, P12524352722285385429.a n = A302773 n

end A302773

/-! ## A302773.P9438318853199161308

`A016789(n)/A109008(n+2)`
-/

namespace A302773.P9438318853199161308
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A016789 n : ℚ) / (A109008 (n + 2) : ℚ)

end

end A302773.P9438318853199161308

namespace A302773

/-- `A016789(n)/A109008(n+2)` -/
def P9438318853199161308.Spec : Prop :=
  ∀ n, P9438318853199161308.a n = (A302773 n : ℚ)

end A302773

/-! ## A302773.P13269706483448453463

`lcm(4, 3*n+2)/4`
-/

namespace A302773.P13269706483448453463
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 4 (3 * n + 2) : ℚ) / 4

end

end A302773.P13269706483448453463

namespace A302773

/-- `lcm(4, 3*n+2)/4` -/
def P13269706483448453463.Spec : Prop :=
  ∀ n, P13269706483448453463.a n = (A302773 n : ℚ)

end A302773

/-! ## A302773.P7415921295579193154

`(3*n+2)/gcd(4, n+2)`
-/

namespace A302773.P7415921295579193154
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * n + 2 : ℚ) / (Nat.gcd 4 (n + 2) : ℚ)

end

end A302773.P7415921295579193154

namespace A302773

/-- `(3*n+2)/gcd(4, n+2)` -/
def P7415921295579193154.Spec : Prop :=
  ∀ n, P7415921295579193154.a n = (A302773 n : ℚ)

end A302773

/-! ## A302773.P14508594457163820768

`A166304(n)/A089146(n)`
-/

namespace A302773.P14508594457163820768
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166304 n : ℚ) / (A089146 n : ℚ)

end

end A302773.P14508594457163820768

namespace A302773

/-- `A166304(n)/A089146(n)` -/
def P14508594457163820768.Spec : Prop :=
  ∀ n, P14508594457163820768.a n = (A302773 n : ℚ)

end A302773

/-! ## A302773.P12909440408268648348

`A177049(n)/A176672(n)`
-/

namespace A302773.P12909440408268648348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177049 n : ℚ) / (A176672 n : ℚ)

end

end A302773.P12909440408268648348

namespace A302773

/-- `A177049(n)/A176672(n)` -/
def P12909440408268648348.Spec : Prop :=
  ∀ n, P12909440408268648348.a n = (A302773 n : ℚ)

end A302773

/-! ## A302773.P11446575714980153572

`gcd(A016789(n), A177049(n))`
-/

namespace A302773.P11446575714980153572
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A016789 n) (A177049 n)

end

end A302773.P11446575714980153572

namespace A302773

/-- `gcd(A016789(n), A177049(n))` -/
def P11446575714980153572.Spec : Prop :=
  ∀ n, (P11446575714980153572.a n : ℤ) = A302773 n

end A302773

/-! ## A302773.P8459457770721760879

`gcd(A017233(n), A178370(n))`
-/

namespace A302773.P8459457770721760879
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017233 n) (A178370 n)

end

end A302773.P8459457770721760879

namespace A302773

/-- `gcd(A017233(n), A178370(n))` -/
def P8459457770721760879.Spec : Prop :=
  ∀ n, (P8459457770721760879.a n : ℤ) = A302773 n

end A302773

/-! ## A302773.P8916503418559278136

`A165367(n)/A236398(n+1)`
-/

namespace A302773.P8916503418559278136
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165367 n : ℚ) / (A236398 (n + 1) : ℚ)

end

end A302773.P8916503418559278136

namespace A302773

/-- `A165367(n)/A236398(n+1)` -/
def P8916503418559278136.Spec : Prop :=
  ∀ n, P8916503418559278136.a n = (A302773 n : ℚ)

end A302773

/-! ## A302773.P16245790829417356803

`A178370(n)/A176672(n+2)`
-/

namespace A302773.P16245790829417356803
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178370 n : ℚ) / (A176672 (n + 2) : ℚ)

end

end A302773.P16245790829417356803

namespace A302773

/-- `A178370(n)/A176672(n+2)` -/
def P16245790829417356803.Spec : Prop :=
  ∀ n, P16245790829417356803.a n = (A302773 n : ℚ)

end A302773

/-! ## A302773.P6961820803801451432

`A165355(A165367(n)-(n+1))`
-/

namespace A302773.P6961820803801451432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (A165367 n - (n + 1 : ℤ)).toNat

end

end A302773.P6961820803801451432

namespace A302773

/-- `A165355(A165367(n)-(n+1))` -/
def P6961820803801451432.Spec : Prop :=
  ∀ n, P6961820803801451432.a n = A302773 n

end A302773

/-! ## A302773.P9351222038557986103

`A165355(A165367(n)-1-n)`
-/

namespace A302773.P9351222038557986103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165355 (A165367 n - 1 - (n : ℤ)).toNat

end

end A302773.P9351222038557986103

namespace A302773

/-- `A165355(A165367(n)-1-n)` -/
def P9351222038557986103.Spec : Prop :=
  ∀ n, P9351222038557986103.a n = A302773 n

end A302773

/-! ## A302773.P5350277371605359762

`A051724(3*n+2)`
-/

namespace A302773.P5350277371605359762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 (3 * n + 2)

end

end A302773.P5350277371605359762

namespace A302773

/-- `A051724(3*n+2)` -/
def P5350277371605359762.Spec : Prop :=
  ∀ n, P5350277371605359762.a n = A302773 n

end A302773

/-! ## A302773.P118004330166267615

`A060819(2+3*n)`
-/

namespace A302773.P118004330166267615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (2 + 3 * n)

end

end A302773.P118004330166267615

namespace A302773

/-- `A060819(2+3*n)` -/
def P118004330166267615.Spec : Prop :=
  ∀ n, P118004330166267615.a n = A302773 n

end A302773

/-! ## A302773.P14295790586071566634

`gcd(3*n+2, A276670(3*n+2))`
-/

namespace A302773.P14295790586071566634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 * n + 2 : ℤ) (A276670 (3 * n + 2))

end

end A302773.P14295790586071566634

namespace A302773

/-- `gcd(3*n+2, A276670(3*n+2))` -/
def P14295790586071566634.Spec : Prop :=
  ∀ n, (P14295790586071566634.a n : ℤ) = A302773 n

end A302773

/-! ## A302773.P17591314048076508810

`A026741(A165367(n))`
-/

namespace A302773.P17591314048076508810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A165367 n).toNat

end

end A302773.P17591314048076508810

namespace A302773

/-- `A026741(A165367(n))` -/
def P17591314048076508810.Spec : Prop :=
  ∀ n, P17591314048076508810.a n = A302773 n

end A302773

/-! ## A302773.P1059980586124799403

`A026741(A176672(2*n+1))`
-/

namespace A302773.P1059980586124799403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A176672 (2 * n + 1)).toNat

end

end A302773.P1059980586124799403

namespace A302773

/-- `A026741(A176672(2*n+1))` -/
def P1059980586124799403.Spec : Prop :=
  ∀ n, P1059980586124799403.a n = A302773 n

end A302773

/-! ## A302773.P17993285031247599394

`A026741(A026741(3*n+2))`
-/

namespace A302773.P17993285031247599394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A026741 (3 * n + 2)).toNat

end

end A302773.P17993285031247599394

namespace A302773

/-- `A026741(A026741(3*n+2))` -/
def P17993285031247599394.Spec : Prop :=
  ∀ n, P17993285031247599394.a n = A302773 n

end A302773

/-! ## A302773.P10964982115620548814

`A060789(A176672(n+1+n))`
-/

namespace A302773.P10964982115620548814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060789 (A176672 (n + 1 + n)).toNat

end

end A302773.P10964982115620548814

namespace A302773

/-- `A060789(A176672(n+1+n))` -/
def P10964982115620548814.Spec : Prop :=
  ∀ n, P10964982115620548814.a n = A302773 n

end A302773

/-!
# A302774: a(n) is the position of the first term in A303762 that has prime(n) as one of its prime factors.

The programs for A302774, there is no canonical definition to state claims against.
-/

/-! ## A302774.P9531777776648569454

`∑[A303749(floor(acot(n)+n))]`
-/

namespace A302774.P9531777776648569454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303749 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302774.P9531777776648569454

/-! ## A302774.P18374291400560600524

`A303749(n)+a(n-1)` with `a(0)=1`
-/

namespace A302774.P18374291400560600524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A303749 n + a (n - 1)

end

end A302774.P18374291400560600524

/-! ## A302774.P1636245342491641482

`∑[A303749(round(sqrt(n²+1)))]`
-/

namespace A302774.P1636245342491641482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303749 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302774.P1636245342491641482

/-! ## A302774.P13195934541008930224

`∑[A303749(A000038(n)+n)]-1`
-/

namespace A302774.P13195934541008930224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303749 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A302774.P13195934541008930224

/-! ## A302774.P13882110432097612763

`∑[A303749(n+1)]+1-A303749(n+1)`
-/

namespace A302774.P13882110432097612763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A303749 (n + 1))

end

end A302774.P13882110432097612763

/-!
# A302775: a(n) is the first term in A303762 that has prime(n) as one of its prime factors.

The programs for A302775, there is no canonical definition to state claims against.
-/

/-! ## A302775.P8582794535740686872

`A303762(A302774(n+1))`
-/

namespace A302775.P8582794535740686872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303762 (A302774 (n + 1)).toNat

end

end A302775.P8582794535740686872

/-! ## A302775.P8304584300185672536

`A275733(A271235(n)+A059590(n))`
-/

namespace A302775.P8304584300185672536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (A271235 n + A059590 n).toNat

end

end A302775.P8304584300185672536

/-! ## A302775.P16302203364044378952

`A275733(A276156(n)+A271235(n))`
-/

namespace A302775.P16302203364044378952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275733 (A276156 n + A271235 n).toNat

end

end A302775.P16302203364044378952

/-!
# A302776: a(1) = 1; for n>1, a(n) = n/(largest Fermi-Dirac factor of n).

The programs for A302776, there is no canonical definition to state claims against.
-/

/-! ## A302776.P14216655893028263919

`(n+1)/A223491(n+1)`
-/

namespace A302776.P14216655893028263919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A223491 (n + 1) : ℚ)

end

end A302776.P14216655893028263919

/-! ## A302776.P11644855953513983041

`A302023(A052126(A302024(n+1)))`
-/

namespace A302776.P11644855953513983041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302023 (A052126 (A302024 (n + 1)).toNat).toNat

end

end A302776.P11644855953513983041

/-! ## A302776.P15383125032325649696

`(n+1)/A034699(A353897(n+1))`
-/

namespace A302776.P15383125032325649696
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A034699 (A353897 (n + 1)).toNat : ℚ)

end

end A302776.P15383125032325649696

/-! ## A302776.P4571743507255845778

`(n+1)/A084400(A302785(n+1)+1)`
-/

namespace A302776.P4571743507255845778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A084400 (A302785 (n + 1) + 1).toNat : ℚ)

end

end A302776.P4571743507255845778

/-! ## A302776.P17987316530944797153

`(n+1)/A213925(∑[A064547(n+1)]+1)`
-/

namespace A302776.P17987316530944797153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A213925 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat : ℚ)

end

end A302776.P17987316530944797153

/-! ## A302776.P11524057492765553273

`A052330(A052331(n+1)%A000079(A322823(n+1)))`
-/

namespace A302776.P11524057492765553273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (Int.tmod (A052331 (n + 1)) (A000079 (A322823 (n + 1)).toNat)).toNat

end

end A302776.P11524057492765553273

/-! ## A302776.P13515673325826845989

`A302789((n+1)*A223491(n+1))`
-/

namespace A302776.P13515673325826845989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302789 ((n + 1 : ℤ) * A223491 (n + 1)).toNat

end

end A302776.P13515673325826845989

/-! ## A302776.P6365628146388491109

`A126988(A223491(n+1)+A000217(n))`
-/

namespace A302776.P6365628146388491109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A223491 (n + 1) + A000217 n).toNat

end

end A302776.P6365628146388491109

/-!
# A302777: a(n) = 1 if n is of the form p^(2^k) where p is prime and k >= 0, otherwise 0.

The programs for A302777, the canonical program `A302777.P12979743537694390003` is in `Seq.B001.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302777 has offset 1).

The definition of A302777 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A100995, A209229, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A302777.P12979743537694390003

`A209229(A100995(n+1))`

The canonical program, it is in `Seq.B001.C011`.
-/

namespace A302777

/-- `A209229(A100995(n+1))` -/
def P12979743537694390003.Spec : Prop :=
  ∀ n, P12979743537694390003.a n = A302777 (n + 1)

theorem P12979743537694390003.correct : P12979743537694390003.Spec := by
  intro n
  simp only [A302777, Nat.add_sub_cancel]

end A302777

/-! ## A302777.P3371551113588686013

`char[record[A091732(n+1)]]`
-/

namespace A302777.P3371551113588686013
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302777.P3371551113588686013

namespace A302777

/-- `char[record[A091732(n+1)]]` -/
def P3371551113588686013.Spec : Prop :=
  ∀ n, (P3371551113588686013.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P14811488374705802923

`char[record[A340087(n+1)]]`
-/

namespace A302777.P14811488374705802923
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340087 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302777.P14811488374705802923

namespace A302777

/-- `char[record[A340087(n+1)]]` -/
def P14811488374705802923.Spec : Prop :=
  ∀ n, (P14811488374705802923.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P16165431203176559323

`char[A050376(n+1)-1]`
-/

namespace A302777.P16165431203176559323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302777.P16165431203176559323

namespace A302777

/-- `char[A050376(n+1)-1]` -/
def P16165431203176559323.Spec : Prop :=
  ∀ n, (P16165431203176559323.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P12765640630886108553

`char[A084400(n+2)-1]`
-/

namespace A302777.P12765640630886108553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A302777.P12765640630886108553

namespace A302777

/-- `char[A084400(n+2)-1]` -/
def P12765640630886108553.Spec : Prop :=
  ∀ n, (P12765640630886108553.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P17800320668826473168

`C(C(2, A064547(n+1)), 2)`
-/

namespace A302777.P17800320668826473168
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A064547 (n + 1)).toNat) 2

end

end A302777.P17800320668826473168

namespace A302777

/-- `C(C(2, A064547(n+1)), 2)` -/
def P17800320668826473168.Spec : Prop :=
  ∀ n, (P17800320668826473168.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P2730016805501099659

`C(C(2, A126168(n+1)), 2)`
-/

namespace A302777.P2730016805501099659
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A126168 (n + 1)).toNat) 2

end

end A302777.P2730016805501099659

namespace A302777

/-- `C(C(2, A126168(n+1)), 2)` -/
def P2730016805501099659.Spec : Prop :=
  ∀ n, (P2730016805501099659.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P7173440257176289399

`C(C(2, A340089(n+1)), 2)`
-/

namespace A302777.P7173440257176289399
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A340089 (n + 1)).toNat) 2

end

end A302777.P7173440257176289399

namespace A302777

/-- `C(C(2, A340089(n+1)), 2)` -/
def P7173440257176289399.Spec : Prop :=
  ∀ n, (P7173440257176289399.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P3816317277266209453

`val(A366743(n+1), n+2)`
-/

namespace A302777.P3816317277266209453
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A366743 (n + 1)).toNat (n + 2)

end

end A302777.P3816317277266209453

namespace A302777

/-- `val(A366743(n+1), n+2)` -/
def P3816317277266209453.Spec : Prop :=
  ∀ n, (P3816317277266209453.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P1910243092330174832

`val(A369762(n+1), n+2)`
-/

namespace A302777.P1910243092330174832
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A369762 (n + 1)).toNat (n + 2)

end

end A302777.P1910243092330174832

namespace A302777

/-- `val(A369762(n+1), n+2)` -/
def P1910243092330174832.Spec : Prop :=
  ∀ n, (P1910243092330174832.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P3274696866009781478

`val(A385043(n+1), n+2)`
-/

namespace A302777.P3274696866009781478
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A385043 (n + 1)).toNat (n + 2)

end

end A302777.P3274696866009781478

namespace A302777

/-- `val(A385043(n+1), n+2)` -/
def P3274696866009781478.Spec : Prop :=
  ∀ n, (P3274696866009781478.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P173641152676803855

`val(A394255(n+1), n+2)`
-/

namespace A302777.P173641152676803855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A394255 (n + 1)).toNat (n + 2)

end

end A302777.P173641152676803855

namespace A302777

/-- `val(A394255(n+1), n+2)` -/
def P173641152676803855.Spec : Prop :=
  ∀ n, (P173641152676803855.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P10240828649673985290

`C(A181894(n+1), n+1)`
-/

namespace A302777.P10240828649673985290
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A181894 (n + 1)).toNat (n + 1)

end

end A302777.P10240828649673985290

namespace A302777

/-- `C(A181894(n+1), n+1)` -/
def P10240828649673985290.Spec : Prop :=
  ∀ n, (P10240828649673985290.a n : ℤ) = A302777 (n + 1)

end A302777

/-! ## A302777.P6702959554010882587

`A005369(A037445(n+1))`
-/

namespace A302777.P6702959554010882587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A037445 (n + 1)).toNat

end

end A302777.P6702959554010882587

namespace A302777

/-- `A005369(A037445(n+1))` -/
def P6702959554010882587.Spec : Prop :=
  ∀ n, P6702959554010882587.a n = A302777 (n + 1)

end A302777

/-! ## A302777.P10056980022753763220

`A010051(A074848(n+1))`
-/

namespace A302777.P10056980022753763220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A074848 (n + 1)).toNat

end

end A302777.P10056980022753763220

namespace A302777

/-- `A010051(A074848(n+1))` -/
def P10056980022753763220.Spec : Prop :=
  ∀ n, P10056980022753763220.a n = A302777 (n + 1)

end A302777

/-! ## A302777.P11820467824274752326

`A010051(A293442(n+1))`
-/

namespace A302777.P11820467824274752326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A293442 (n + 1)).toNat

end

end A302777.P11820467824274752326

namespace A302777

/-- `A010051(A293442(n+1))` -/
def P11820467824274752326.Spec : Prop :=
  ∀ n, P11820467824274752326.a n = A302777 (n + 1)

end A302777

/-! ## A302777.P3376061753278767819

`A368980(A037445(n+1)+2)`
-/

namespace A302777.P3376061753278767819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368980 (A037445 (n + 1) + 2).toNat

end

end A302777.P3376061753278767819

namespace A302777

/-- `A368980(A037445(n+1)+2)` -/
def P3376061753278767819.Spec : Prop :=
  ∀ n, P3376061753278767819.a n = A302777 (n + 1)

end A302777

/-! ## A302777.P11810702631821379940

`and(A007664(n), A295279(n+1))`
-/

namespace A302777.P11810702631821379940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007664 n) (A295279 (n + 1))

end

end A302777.P11810702631821379940

namespace A302777

/-- `and(A007664(n), A295279(n+1))` -/
def P11810702631821379940.Spec : Prop :=
  ∀ n, P11810702631821379940.a n = A302777 (n + 1)

end A302777

/-! ## A302777.P3112664098655481938

`and(A054977(n), A295279(n+1))`
-/

namespace A302777.P3112664098655481938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A054977 n) (A295279 (n + 1))

end

end A302777.P3112664098655481938

namespace A302777

/-- `and(A054977(n), A295279(n+1))` -/
def P3112664098655481938.Spec : Prop :=
  ∀ n, P3112664098655481938.a n = A302777 (n + 1)

end A302777

/-!
# A302778: Number of "Fermi-Dirac primes" (A050376) <= n.

The programs for A302778, the canonical program `A302778.P10477543848767176056` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A302778 has offset 1).

The definition of A302778 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A302777, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A302778.P10477543848767176056

`A302777(n+1)+a(n-1)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A302778

/-- `A302777(n+1)+a(n-1)` -/
def P10477543848767176056.Spec : Prop :=
  ∀ n, P10477543848767176056.a n = A302778 (n + 1)

theorem P10477543848767176056.correct : P10477543848767176056.Spec := by
  intro n
  simp only [A302778, Nat.add_sub_cancel]

end A302778

/-! ## A302778.P1865197902439044280

`-∑{#}[floor(log2(n+1))-1, A008683(2*(#+1))*A025528(floor((n+1)^(1/(#+1))))]`
-/

namespace A302778.P1865197902439044280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (n + 1) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ k ∈ Finset.range (f1 n + 1).toNat, A008683 (2 * (k + 1)) * A025528 ⌊(n + 1 : ℝ) ^ (1 / (k + 1 : ℚ) : ℝ)⌋.toNat)

end

end A302778.P1865197902439044280

namespace A302778

/-- `-∑{#}[floor(log2(n+1))-1, A008683(2*(#+1))*A025528(floor((n+1)^(1/(#+1))))]` -/
def P1865197902439044280.Spec : Prop :=
  ∀ n, P1865197902439044280.a n = A302778 (n + 1)

end A302778

/-! ## A302778.P2511600617401471674

`∑[A302777(n+1)]`
-/

namespace A302778.P2511600617401471674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P2511600617401471674

namespace A302778

/-- `∑[A302777(n+1)]` -/
def P2511600617401471674.Spec : Prop :=
  ∀ n, P2511600617401471674.a n = A302778 (n + 1)

end A302778

/-! ## A302778.P14068516709401954603

`∑[char[record[A091732(n+1)]]]`
-/

namespace A302778.P14068516709401954603
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091732 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P14068516709401954603

namespace A302778

/-- `∑[char[record[A091732(n+1)]]]` -/
def P14068516709401954603.Spec : Prop :=
  ∀ n, (P14068516709401954603.a n : ℤ) = A302778 (n + 1)

end A302778

/-! ## A302778.P15425449573622482565

`∑[char[A050376(n+1)-1]]`
-/

namespace A302778.P15425449573622482565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050376 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P15425449573622482565

namespace A302778

/-- `∑[char[A050376(n+1)-1]]` -/
def P15425449573622482565.Spec : Prop :=
  ∀ n, (P15425449573622482565.a n : ℤ) = A302778 (n + 1)

end A302778

/-! ## A302778.P16361485902742535919

`∑[char[A084400(n+2)-1]]`
-/

namespace A302778.P16361485902742535919
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084400 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P16361485902742535919

namespace A302778

/-- `∑[char[A084400(n+2)-1]]` -/
def P16361485902742535919.Spec : Prop :=
  ∀ n, (P16361485902742535919.a n : ℤ) = A302778 (n + 1)

end A302778

/-! ## A302778.P7598154594548398257

`∑[and(2, A037445(n+1))/2]`
-/

namespace A302778.P7598154594548398257
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.land 2 (A037445 (n + 1)) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P7598154594548398257

namespace A302778

/-- `∑[and(2, A037445(n+1))/2]` -/
def P7598154594548398257.Spec : Prop :=
  ∀ n, P7598154594548398257.a n = (A302778 (n + 1) : ℚ)

end A302778

/-! ## A302778.P4877382669763392496

`∑[A005369(A037445(n+1))]`
-/

namespace A302778.P4877382669763392496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005369 (A037445 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P4877382669763392496

namespace A302778

/-- `∑[A005369(A037445(n+1))]` -/
def P4877382669763392496.Spec : Prop :=
  ∀ n, P4877382669763392496.a n = A302778 (n + 1)

end A302778

/-! ## A302778.P687508208683516556

`∑[A010051(A074848(n+1))]`
-/

namespace A302778.P687508208683516556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A074848 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P687508208683516556

namespace A302778

/-- `∑[A010051(A074848(n+1))]` -/
def P687508208683516556.Spec : Prop :=
  ∀ n, P687508208683516556.a n = A302778 (n + 1)

end A302778

/-! ## A302778.P9314906833397522769

`∑[A063524(log2(A037445(n+1)))]`
-/

namespace A302778.P9314906833397522769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (SequenceMachineLib.roundAway (Real.logb 2 (A037445 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P9314906833397522769

namespace A302778

/-- `∑[A063524(log2(A037445(n+1)))]` -/
def P9314906833397522769.Spec : Prop :=
  ∀ n, P9314906833397522769.a n = A302778 (n + 1)

end A302778

/-! ## A302778.P13295683310564931295

`∑[A063524(A037445(n+1)-1)]`
-/

namespace A302778.P13295683310564931295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (A037445 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P13295683310564931295

namespace A302778

/-- `∑[A063524(A037445(n+1)-1)]` -/
def P13295683310564931295.Spec : Prop :=
  ∀ n, P13295683310564931295.a n = A302778 (n + 1)

end A302778

/-! ## A302778.P14423259969340313346

`∑[A015505(A318307(n+1)+6)]`
-/

namespace A302778.P14423259969340313346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015505 (A318307 (n + 1) + 6).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P14423259969340313346

namespace A302778

/-- `∑[A015505(A318307(n+1)+6)]` -/
def P14423259969340313346.Spec : Prop :=
  ∀ n, P14423259969340313346.a n = A302778 (n + 1)

end A302778

/-! ## A302778.P11714294514058969651

`∑[A302776(n+1)%A223490(n+1)]`
-/

namespace A302778.P11714294514058969651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302776 (n + 1)) (A223490 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P11714294514058969651

namespace A302778

/-- `∑[A302776(n+1)%A223490(n+1)]` -/
def P11714294514058969651.Spec : Prop :=
  ∀ n, P11714294514058969651.a n = A302778 (n + 1)

end A302778

/-! ## A302778.P521105813226304049

`∑[val(A312938(2*(A037445(n+1)+7)), 3)]`
-/

namespace A302778.P521105813226304049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A312938 (2 * (A037445 (n + 1) + 7)).toNat).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P521105813226304049

namespace A302778

/-- `∑[val(A312938(2*(A037445(n+1)+7)), 3)]` -/
def P521105813226304049.Spec : Prop :=
  ∀ n, (P521105813226304049.a n : ℤ) = A302778 (n + 1)

end A302778

/-! ## A302778.P13920925751356029298

`∑[A007814(A261179(A318307(n+1)))]`
-/

namespace A302778.P13920925751356029298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A261179 (A318307 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P13920925751356029298

namespace A302778

/-- `∑[A007814(A261179(A318307(n+1)))]` -/
def P13920925751356029298.Spec : Prop :=
  ∀ n, P13920925751356029298.a n = A302778 (n + 1)

end A302778

/-! ## A302778.P8130249480547335598

`∑[char[record[A064380(n+2)]]]`
-/

namespace A302778.P8130249480547335598
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064380 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P8130249480547335598

namespace A302778

/-- `∑[char[record[A064380(n+2)]]]` -/
def P8130249480547335598.Spec : Prop :=
  ∀ n, (P8130249480547335598.a n : ℤ) = A302778 (n + 1)

end A302778

/-! ## A302778.P9178319363997169946

`∑[A069513((A067824(n+1)*A069513(n+1))²+1)]`
-/

namespace A302778.P9178319363997169946
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069513 ((A067824 (n + 1) * A069513 (n + 1)) ^ 2 + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302778.P9178319363997169946

namespace A302778

/-- `∑[A069513((A067824(n+1)*A069513(n+1))²+1)]` -/
def P9178319363997169946.Spec : Prop :=
  ∀ n, P9178319363997169946.a n = A302778 (n + 1)

end A302778

/-!
# A302779: Restricted growth sequence transform of ordered pair [Q(n-Q(n-1)), Q(n-Q(n-2))], the left & right summand of Hofstadter Q-sequence A005185.

The programs for A302779, there is no canonical definition to state claims against.
-/

/-! ## A302779.P10229748697978540124

`A004396(n+1)-A107846(A029965(n+1))`
-/

namespace A302779.P10229748697978540124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (n + 1) - A107846 (A029965 (n + 1)).toNat

end

end A302779.P10229748697978540124

/-! ## A302779.P15926018536494575382

`A015282(A018338(n+1))+A004523(n)`
-/

namespace A302779.P15926018536494575382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015282 (A018338 (n + 1)).toNat + A004523 n

end

end A302779.P15926018536494575382

/-! ## A302779.P3489556472159929373

`A026405(n+1)+A001221(A028377(n))`
-/

namespace A302779.P3489556472159929373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026405 (n + 1) + A001221 (A028377 n).toNat

end

end A302779.P3489556472159929373

/-! ## A302779.P14198720500028475559

`A334098(A283642(n)+A283620(n+1))`
-/

namespace A302779.P14198720500028475559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334098 (A283642 n + A283620 (n + 1)).toNat

end

end A302779.P14198720500028475559

/-! ## A302779.P10576657913511188846

`A032358(A196863(n+2)+A055498(n+3))`
-/

namespace A302779.P10576657913511188846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032358 (A196863 (n + 2) + A055498 (n + 3)).toNat

end

end A302779.P10576657913511188846

/-!
# A302780: Restricted growth sequence transform of 4-tuple [H(H(n-1)), H(n-H(n-1)), Q(n-Q(n-1)), Q(n-Q(n-2))] where H = A004001 and Q = A005185.

The programs for A302780, there is no canonical definition to state claims against.
-/

/-! ## A302780.P7063782544387540498

`∑[A188192(A007899(n))]`
-/

namespace A302780.P7063782544387540498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188192 (A007899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A302780.P7063782544387540498

/-!
# A302781: Divisor-or-multiple permutation of natural numbers constructed from two-dimensional Hilbert curve (A163357) and Fermi-Dirac primes (A050376).

The programs for A302781, there is no canonical definition to state claims against.
-/

/-! ## A302781.P16379926898747044322

`A052330(A302846(n))`
-/

namespace A302781.P16379926898747044322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A302846 n).toNat

end

end A302781.P16379926898747044322

/-! ## A302781.P9648761297027698102

`A207901(A302844(n))`
-/

namespace A302781.P9648761297027698102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A302844 n).toNat

end

end A302781.P9648761297027698102

/-! ## A302781.P16270722036002272296

`A052330(A064706(A163356(n)))`
-/

namespace A302781.P16270722036002272296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A064706 (A163356 n).toNat).toNat

end

end A302781.P16270722036002272296

/-! ## A302781.P2693722406837398201

`A207901(A006068(A302846(A006068(A003188(n)))))`
-/

namespace A302781.P2693722406837398201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (A302846 (A006068 (A003188 n).toNat).toNat).toNat).toNat

end

end A302781.P2693722406837398201

/-! ## A302781.P14118459770350304492

`A282291(A302854(A302846(n))+1)`
-/

namespace A302781.P14118459770350304492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282291 (A302854 (A302846 n).toNat + 1).toNat

end

end A302781.P14118459770350304492

/-!
# A302782: Inverse permutation to A302781.

The programs for A302782, there is no canonical definition to state claims against.
-/

/-! ## A302782.P2469209681982089168

`A302845(A052331(n+1))`
-/

namespace A302782.P2469209681982089168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A052331 (n + 1)).toNat

end

end A302782.P2469209681982089168

/-! ## A302782.P14998094848605893928

`A302843(A302029(n+1))`
-/

namespace A302782.P14998094848605893928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A302029 (n + 1)).toNat

end

end A302782.P14998094848605893928

/-! ## A302782.P10729031356786220615

`A302845(A064358(n+1)-1)`
-/

namespace A302782.P10729031356786220615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (A064358 (n + 1) - 1).toNat

end

end A302782.P10729031356786220615

/-! ## A302782.P5352767260923341708

`A302843(A302030(n+1)-1)`
-/

namespace A302782.P5352767260923341708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302843 (A302030 (n + 1) - 1).toNat

end

end A302782.P5352767260923341708

/-! ## A302782.P7475925994832408771

`A302845(∑{d}[A160102(n+1), A297108(#)])`
-/

namespace A302782.P7475925994832408771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302845 (∑ d ∈ Nat.divisors (f1 n).natAbs, A297108 d).toNat

end

end A302782.P7475925994832408771

/-!
# A302783: A divisor-or-multiple permutation of natural numbers: a(n) = A052330(A006068(n)).

The programs for A302783, there is no canonical definition to state claims against.
-/

/-! ## A302783.P1347381536122601033

`A052330(A006068(n))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302783.P1347381536122601033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A006068 n).toNat

end

end A302783.P1347381536122601033

/-! ## A302783.P4037651433101466814

`A207901(A064707(n))`
-/

namespace A302783.P4037651433101466814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A064707 n).toNat

end

end A302783.P4037651433101466814

/-! ## A302783.P4594148701142505969

`A302781(A302845(A006068(A057300(A057300(n)))))`
-/

namespace A302783.P4594148701142505969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302781 (A302845 (A006068 (A057300 (A057300 n).toNat).toNat).toNat).toNat

end

end A302783.P4594148701142505969

/-! ## A302783.P7212234109143927671

`A052330(A292600(2*n))`
-/

namespace A302783.P7212234109143927671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A292600 (2 * n)).toNat

end

end A302783.P7212234109143927671

/-! ## A302783.P2302994435515471385

`A052330(A286546(n)+n)`
-/

namespace A302783.P2302994435515471385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A286546 n + (n : ℤ)).toNat

end

end A302783.P2302994435515471385

/-! ## A302783.P14719988433130606826

`A052330(xor(n, A292600(n)))`
-/

namespace A302783.P14719988433130606826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (Int.xor (n : ℤ) (A292600 n)).toNat

end

end A302783.P14719988433130606826

/-! ## A302783.P12534405241577019403

`A052330(A066194(n+1)-1)`
-/

namespace A302783.P12534405241577019403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A066194 (n + 1) - 1).toNat

end

end A302783.P12534405241577019403

/-! ## A302783.P8454040234326218617

`A052330(A064707(A003188(n)))`
-/

namespace A302783.P8454040234326218617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A064707 (A003188 n).toNat).toNat

end

end A302783.P8454040234326218617

/-! ## A302783.P14521827334930274479

`A052330(A302844(A302845(n)))`
-/

namespace A302783.P14521827334930274479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A302844 (A302845 n).toNat).toNat

end

end A302783.P14521827334930274479

/-! ## A302783.P7408981771979711100

`A052330(A180200(A003188(A180200(n))))`
-/

namespace A302783.P7408981771979711100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A180200 (A003188 (A180200 n).toNat).toNat).toNat

end

end A302783.P7408981771979711100

/-! ## A302783.P8611519039365784017

`A207901(A006068(A300839(A057300(n))))`
-/

namespace A302783.P8611519039365784017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (A300839 (A057300 n).toNat).toNat).toNat

end

end A302783.P8611519039365784017

/-! ## A302783.P9559227583152231065

`A052330(A300839(A003188(A300839(n))))`
-/

namespace A302783.P9559227583152231065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A300839 (A003188 (A300839 n).toNat).toNat).toNat

end

end A302783.P9559227583152231065

/-! ## A302783.P5298634905498600808

`A207901(A006068(A163356(A302843(n))))`
-/

namespace A302783.P5298634905498600808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (A163356 (A302843 n).toNat).toNat).toNat

end

end A302783.P5298634905498600808

/-! ## A302783.P14535050520642855474

`A207901(A006068(A006068(A302843(A302844(n)))))`
-/

namespace A302783.P14535050520642855474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (A006068 (A302843 (A302844 n).toNat).toNat).toNat).toNat

end

end A302783.P14535050520642855474

/-! ## A302783.P8517231872588122032

`A207901(A300839(A006068(A006068(A300838(n)))))`
-/

namespace A302783.P8517231872588122032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A300839 (A006068 (A006068 (A300838 n).toNat).toNat).toNat).toNat

end

end A302783.P8517231872588122032

/-!
# A302784: Inverse permutation to A302783: a(n) = A003188(A052331(n)).

The programs for A302784, there is no canonical definition to state claims against.
-/

/-! ## A302784.P3183408726213259856

`A003188(A052331(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302784.P3183408726213259856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A052331 (n + 1)).toNat

end

end A302784.P3183408726213259856

/-! ## A302784.P5990651863468957398

`xor(A052331(n+1), A052331(A300840(n+1)))`
-/

namespace A302784.P5990651863468957398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052331 (n + 1)) (A052331 (A300840 (n + 1)).toNat)

end

end A302784.P5990651863468957398

/-! ## A302784.P10425306519568500713

`A003188(A064358(n+1)-1)`
-/

namespace A302784.P10425306519568500713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A064358 (n + 1) - 1).toNat

end

end A302784.P10425306519568500713

/-! ## A302784.P17046709844173190453

`A003188(A003188(A302029(n+1)))`
-/

namespace A302784.P17046709844173190453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A003188 (A302029 (n + 1)).toNat).toNat

end

end A302784.P17046709844173190453

/-! ## A302784.P9502229610454009568

`A003188(A156552(A302024(n+1)))`
-/

namespace A302784.P9502229610454009568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003188 (A156552 (A302024 (n + 1)).toNat).toNat

end

end A302784.P9502229610454009568

/-!
# A302785: Index of the largest Fermi-Dirac factor of n, a(1) = 0 by convention: a(n) = A302778(A223491(n)).

The programs for A302785, there is no canonical definition to state claims against.
-/

/-! ## A302785.P16185573744704997381

`A302778(A223491(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302785.P16185573744704997381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (A223491 (n + 1)).toNat

end

end A302785.P16185573744704997381

/-! ## A302785.P16101883096175714715

`1+a(A300840(n+1)-1)` with `a(0)=0`
-/

namespace A302785.P16101883096175714715
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A300840 (n + 1) - 1).toNat

end

end A302785.P16101883096175714715

/-! ## A302785.P9156860980875935411

`A061395(A160102(n+1))`
-/

namespace A302785.P9156860980875935411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A160102 (n + 1)).toNat

end

end A302785.P9156860980875935411

/-! ## A302785.P11226156780325187549

`A302778((n+1)/A302776(n+1))`
-/

namespace A302785.P11226156780325187549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A302776 (n + 1) : ℚ))).toNat

end

end A302785.P11226156780325187549

/-! ## A302785.P6463874596026177972

`A302786((n+1)/A302776(n+1))`
-/

namespace A302785.P6463874596026177972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302786 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A302776 (n + 1) : ℚ))).toNat

end

end A302785.P6463874596026177972

/-! ## A302785.P18298049942412058316

`A302786(A223491(2*n+1-n))`
-/

namespace A302785.P18298049942412058316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302786 (A223491 (2 * n + 1 - n)).toNat

end

end A302785.P18298049942412058316

/-! ## A302785.P1339266747453751306

`ceil(log2(A302030(n+1)))`
-/

namespace A302785.P1339266747453751306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A302030 (n + 1) : ℝ)⌉

end

end A302785.P1339266747453751306

/-! ## A302785.P2624518309421897892

`ceil(log2(A302029(n+1)+1))`
-/

namespace A302785.P2624518309421897892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A302029 (n + 1) + 1 : ℝ)⌉

end

end A302785.P2624518309421897892

/-! ## A302785.P4095406532802952011

`A322823(A013636(n+1))`
-/

namespace A302785.P4095406532802952011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322823 (A013636 (n + 1)).toNat

end

end A302785.P4095406532802952011

/-! ## A302785.P4554366180573533955

`A322823(A004928(n+1))`
-/

namespace A302785.P4554366180573533955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322823 (A004928 (n + 1)).toNat

end

end A302785.P4554366180573533955

/-! ## A302785.P2827671030529241695

`A322823((n+1)*A000961(n+2))`
-/

namespace A302785.P2827671030529241695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322823 ((n + 1 : ℤ) * A000961 (n + 2)).toNat

end

end A302785.P2827671030529241695

/-! ## A302785.P9808277300649247626

`A322823((n+1)*A050376(n+1))`
-/

namespace A302785.P9808277300649247626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322823 ((n + 1 : ℤ) * A050376 (n + 1)).toNat

end

end A302785.P9808277300649247626

/-! ## A302785.P9872665921408506040

`A322823(A033286(n+1))`
-/

namespace A302785.P9872665921408506040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322823 (A033286 (n + 1)).toNat

end

end A302785.P9872665921408506040

/-! ## A302785.P1760690959046965313

`A322823(A117495(n+2))`
-/

namespace A302785.P1760690959046965313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322823 (A117495 (n + 2)).toNat

end

end A302785.P1760690959046965313

/-! ## A302785.P1851636926746064533

`A322823((n+1)*A000040(n+1))`
-/

namespace A302785.P1851636926746064533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322823 ((n + 1 : ℤ) * A000040 (n + 1)).toNat

end

end A302785.P1851636926746064533

/-! ## A302785.P9532581498104499895

`A322823(A306192(n+2))`
-/

namespace A302785.P9532581498104499895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322823 (A306192 (n + 2)).toNat

end

end A302785.P9532581498104499895

/-!
# A302786: Index of the smallest Fermi-Dirac factor of n, a(1) = 0 by convention: a(n) = A302778(A223490(n)).

The programs for A302786, there is no canonical definition to state claims against.
-/

/-! ## A302786.P6408522050531144333

`A302778(A223490(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302786.P6408522050531144333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (A223490 (n + 1)).toNat

end

end A302786.P6408522050531144333

/-! ## A302786.P15103381056024369442

`A302778((n+1)/A302792(n+1))`
-/

namespace A302786.P15103381056024369442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302778 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A302792 (n + 1) : ℚ))).toNat

end

end A302786.P15103381056024369442

/-! ## A302786.P436751776918527207

`A302785(A223490(2*n+1-n))`
-/

namespace A302786.P436751776918527207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302785 (A223490 (2 * n + 1 - n)).toNat

end

end A302786.P436751776918527207

/-! ## A302786.P16325857458870321140

`A302785(gcd(n+1, A223490(n+1)))`
-/

namespace A302786.P16325857458870321140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302785 (Int.gcd (n + 1 : ℤ) (A223490 (n + 1)))

end

end A302786.P16325857458870321140

/-! ## A302786.P16675317853689294114

`A302785(A223490(n+1))%A001845(n)`
-/

namespace A302786.P16675317853689294114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A302785 (A223490 (n + 1)).toNat) (A001845 n)

end

end A302786.P16675317853689294114

/-! ## A302786.P7978890992419599098

`A302785(A223490(n+1)%A000040(n+1))`
-/

namespace A302786.P7978890992419599098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302785 (Int.tmod (A223490 (n + 1)) (A000040 (n + 1))).toNat

end

end A302786.P7978890992419599098

/-! ## A302786.P5438335193459713001

`A055396(A302024(n+1))`
-/

namespace A302786.P5438335193459713001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A302024 (n + 1)).toNat

end

end A302786.P5438335193459713001

/-! ## A302786.P1855360187687925822

`A055396(A160102(n+1))`
-/

namespace A302786.P1855360187687925822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A160102 (n + 1)).toNat

end

end A302786.P1855360187687925822

/-! ## A302786.P8836124911910440191

`A319825(A223490(2*n-n+1))`
-/

namespace A302786.P8836124911910440191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319825 (A223490 ((2 * n : ℤ) - (n : ℤ) + 1).toNat).toNat

end

end A302786.P8836124911910440191

/-! ## A302786.P17984810197637053854

`A319825(lcm(A000034(n), A223490(n+1)))`
-/

namespace A302786.P17984810197637053854
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319825 (Int.lcm (A000034 n) (A223490 (n + 1)))

end

end A302786.P17984810197637053854

/-!
# A302787: a(1) = 0; for n > 1, a(n) = A000265(A052331(n)).

The programs for A302787, there is no canonical definition to state claims against.
-/

/-! ## A302787.P12621362893181722374

`A322993(A302024(n+1))`
-/

namespace A302787.P12621362893181722374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322993 (A302024 (n + 1)).toNat

end

end A302787.P12621362893181722374

/-! ## A302787.P4390762393279946390

`∑{d}[A302024(n+1), A322994(#)]`
-/

namespace A302787.P4390762393279946390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A322994 d

end

end A302787.P4390762393279946390

/-! ## A302787.P4732292019039906160

`A322821(A160102(n+1))`
-/

namespace A302787.P4732292019039906160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322821 (A160102 (n + 1)).toNat

end

end A302787.P4732292019039906160

/-! ## A302787.P17759517414827128719

`A052331(n+1)/gcd(A000079(n), A052331(n+1))`
-/

namespace A302787.P17759517414827128719
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A052331 (n + 1) : ℚ) / (Int.gcd (A000079 n) (A052331 (n + 1)) : ℚ)

end

end A302787.P17759517414827128719

/-! ## A302787.P2088642747943397923

`lcm(A000079(n), A052331(n+1))/A000079(n)`
-/

namespace A302787.P2088642747943397923
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000079 n) (A052331 (n + 1)) : ℚ) / (A000079 n : ℚ)

end

end A302787.P2088642747943397923

/-!
# A302788: Number of times the smallest Fermi-Dirac factor of n is the smallest Fermi-Dirac factor for numbers <= n; a(1) = 1.

The programs for A302788, there is no canonical definition to state claims against.
-/

/-! ## A302788.P13053417052034725780

`A002487(A103505(A302787(n+1)))`
-/

namespace A302788.P13053417052034725780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A103505 (A302787 (n + 1)).toNat).toNat

end

end A302788.P13053417052034725780

/-! ## A302788.P1852612025966575542

`A000120(4*A302030(n+1))`
-/

namespace A302788.P1852612025966575542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (4 * A302030 (n + 1)).toNat

end

end A302788.P1852612025966575542

/-! ## A302788.P17638467570593096903

`A000120(A302030(n+1)%A346498(n+1))`
-/

namespace A302788.P17638467570593096903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Int.tmod (A302030 (n + 1)) (A346498 (n + 1))).toNat

end

end A302788.P17638467570593096903

/-! ## A302788.P4878703456158653014

`A064547(A052330(A302030(n+1)))`
-/

namespace A302788.P4878703456158653014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (A052330 (A302030 (n + 1)).toNat).toNat

end

end A302788.P4878703456158653014

/-! ## A302788.P6036152912276812696

`A070939(A302787(n+1)%A218416(n+1))`
-/

namespace A302788.P6036152912276812696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (Int.tmod (A302787 (n + 1)) (A218416 (n + 1))).toNat

end

end A302788.P6036152912276812696

/-!
# A302789: Number of times the largest Fermi-Dirac factor of n is the largest Fermi-Dirac factor for numbers <= n; a(1) = 1.

The programs for A302789, there is no canonical definition to state claims against.
-/

/-! ## A302789.P17159333015692991922

`A172103(A302776(n+1))-A337196(A337211(n+1))`
-/

namespace A302789.P17159333015692991922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172103 (A302776 (n + 1)).toNat - A337196 (A337211 (n + 1)).toNat

end

end A302789.P17159333015692991922

/-! ## A302789.P14025309628795748090

`A003324(A275543(n)*A302776(n+1))`
-/

namespace A302789.P14025309628795748090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003324 (A275543 n * A302776 (n + 1)).toNat

end

end A302789.P14025309628795748090

/-! ## A302789.P9310381838948284123

`A235121(A302776(n+1)%A134245(n+1))`
-/

namespace A302789.P9310381838948284123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235121 (Int.tmod (A302776 (n + 1)) (A134245 (n + 1))).toNat

end

end A302789.P9310381838948284123

/-! ## A302789.P10777637683772598998

`A055641(10^A302776(n+1))`
-/

namespace A302789.P10777637683772598998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055641 (SequenceMachineLib.roundAway ((10 : ℚ) ^ (A302776 (n + 1) : ℤ))).toNat

end

end A302789.P10777637683772598998

/-! ## A302789.P11388161492063319973

`A346089(n+1)%A107781(3*n+4)`
-/

namespace A302789.P11388161492063319973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A346089 (n + 1)) (A107781 (3 * n + 4))

end

end A302789.P11388161492063319973

/-!
# A302790: Number of runs of consecutive Fermi-Dirac factors of n (the runs are separated by gaps between indices of factors): a(n) = A069010(A052331(n)).

The programs for A302790, there is no canonical definition to state claims against.
-/

/-! ## A302790.P14920879514349186730

`A001221(A302024(n+1))`
-/

namespace A302790.P14920879514349186730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A302024 (n + 1)).toNat

end

end A302790.P14920879514349186730

/-! ## A302790.P10830532570171804475

`A069010(A302787(n+1))`
-/

namespace A302790.P10830532570171804475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A302787 (n + 1)).toNat

end

end A302790.P10830532570171804475

/-! ## A302790.P13213590019842592039

`A069010(A052331(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A302790.P13213590019842592039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069010 (A052331 (n + 1)).toNat

end

end A302790.P13213590019842592039

/-! ## A302790.P2026391555318353045

`∑{p}[A302024(n+1), A001222(#)]`
-/

namespace A302790.P2026391555318353045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A001222 p

end

end A302790.P2026391555318353045

/-! ## A302790.P16594936441677947873

`∑{p}[A302024(n+1), A010051(#)]`
-/

namespace A302790.P16594936441677947873
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A010051 p

end

end A302790.P16594936441677947873

/-! ## A302790.P15053086322641918293

`A001222(∏{p}[A302024(n+1), #])`
-/

namespace A302790.P15053086322641918293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A302790.P15053086322641918293

/-! ## A302790.P16039014469574583749

`A064547(∏{p}[A302024(n+1), #])`
-/

namespace A302790.P16039014469574583749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064547 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A302790.P16039014469574583749

/-! ## A302790.P13589783807622728516

`∑{e}[A302024(n+1), A083235(#)]`
-/

namespace A302790.P13589783807622728516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A083235 (Nat.factorization (f1 n).natAbs p)

end

end A302790.P13589783807622728516

/-! ## A302790.P4828347483952452704

`∑{e}[A302024(n+1), A131217(#)]`
-/

namespace A302790.P4828347483952452704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A131217 (Nat.factorization (f1 n).natAbs p)

end

end A302790.P4828347483952452704

/-! ## A302790.P18000781052337032550

`∑{p}[A302024(n+1), A000079(A302024(n+1)%#)]`
-/

namespace A302790.P18000781052337032550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000079 (Int.tmod (A302024 (n + 1)) (p : ℤ)).toNat

end

end A302790.P18000781052337032550

/-! ## A302790.P18066482740830446697

`∑{p}[A302024(n+1), A046523(#)-1]`
-/

namespace A302790.P18066482740830446697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302024 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, (A046523 p - 1)

end

end A302790.P18066482740830446697

/-! ## A302790.P8073285040533321960

`A287170(A160102(n+1))`
-/

namespace A302790.P8073285040533321960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287170 (A160102 (n + 1)).toNat

end

end A302790.P8073285040533321960

/-!
# A302791: A filter sequence for Fermi-Dirac factorization: restricted growth sequence transform of A046523(A302024(n)).

The programs for A302791, there is no canonical definition to state claims against.
-/

/-! ## A302791.P12830415468548296328

`A335424(A160102(n+1))`
-/

namespace A302791.P12830415468548296328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335424 (A160102 (n + 1)).toNat

end

end A302791.P12830415468548296328

/-! ## A302791.P1932191526222319303

`A318307(A302776(n+1))+A069010(A302787(n+1))`
-/

namespace A302791.P1932191526222319303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318307 (A302776 (n + 1)).toNat + A069010 (A302787 (n + 1)).toNat

end

end A302791.P1932191526222319303

/-! ## A302791.P16969258664998582629

`A246029(A302787(n+1))-A014849(A305252(n+1))`
-/

namespace A302791.P16969258664998582629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246029 (A302787 (n + 1)).toNat - A014849 (A305252 (n + 1)).toNat

end

end A302791.P16969258664998582629

/-! ## A302791.P3785780978435443503

`A110591(A293524(A302024(n+1))²)`
-/

namespace A302791.P3785780978435443503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A293524 (A302024 (n + 1)).toNat ^ 2).toNat

end

end A302791.P3785780978435443503

/-! ## A302791.P4680595241879242126

`A001222(5^A101296(A302024(n+1)))`
-/

namespace A302791.P4680595241879242126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A101296 (A302024 (n + 1)).toNat : ℤ))).toNat

end

end A302791.P4680595241879242126

/-! ## A302791.P14728867929422749968

`A181819(A302024(n+1))%A136260(n+1)`
-/

namespace A302791.P14728867929422749968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A181819 (A302024 (n + 1)).toNat) (A136260 (n + 1))

end

end A302791.P14728867929422749968

/-! ## A302791.P7459756625338878725

`∑{d}[5^A101296(A302024(n+1)), A001221(#)]`
-/

namespace A302791.P7459756625338878725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A101296 (A302024 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A001221 d

end

end A302791.P7459756625338878725

/-! ## A302791.P16693052032000758665

`∑{d}[5^A101296(A302024(n+1)), A087049(#)]`
-/

namespace A302791.P16693052032000758665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) ^ (A101296 (A302024 (n + 1)).toNat : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A087049 d

end

end A302791.P16693052032000758665

/-!
# A302792: a(1) = 1; for n>1, a(n) = n/(smallest Fermi-Dirac factor of n).

The programs for A302792, there is no canonical definition to state claims against.
-/

/-! ## A302792.P3606819168218294434

`(n+1)/A223490(n+1)`
-/

namespace A302792.P3606819168218294434
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A223490 (n + 1) : ℚ)

end

end A302792.P3606819168218294434

/-! ## A302792.P15991568174956156476

`A300841(A302023(A032742(A302024(n+1))))`
-/

namespace A302792.P15991568174956156476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300841 (A302023 (A032742 (A302024 (n + 1)).toNat).toNat).toNat

end

end A302792.P15991568174956156476

/-! ## A302792.P1626923344075789580

`(n+1)/A084400(A302786(n+1)+1)`
-/

namespace A302792.P1626923344075789580
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A084400 (A302786 (n + 1) + 1).toNat : ℚ)

end

end A302792.P1626923344075789580

/-! ## A302792.P1052582913736684994

`A302023(A032742(A302024(A300841(n+1))))`
-/

namespace A302792.P1052582913736684994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302023 (A032742 (A302024 (A300841 (n + 1)).toNat).toNat).toNat

end

end A302792.P1052582913736684994

/-! ## A302792.P503549315228449988

`(n+1)/A077609(record[2-A077609(n+1)+n]+1)`
-/

namespace A302792.P503549315228449988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A077609 (n + 1) + (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A077609 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat : ℚ)

end

end A302792.P503549315228449988

/-! ## A302792.P8188909016785072928

`A077609(∑[A037445(n+1)]-A057427(n))`
-/

namespace A302792.P8188909016785072928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (∑ j ∈ Finset.range (n + 1), f1 j - A057427 n).toNat

end

end A302792.P8188909016785072928

/-! ## A302792.P12546632765330751274

`A219158(A223490(n+1)+A000217(n))`
-/

namespace A302792.P12546632765330751274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219158 (A223490 (n + 1) + A000217 n).toNat

end

end A302792.P12546632765330751274

/-! ## A302792.P1263655789858531177

`A077609(record[A233583(n+1)-A077609(n+1)])`
-/

namespace A302792.P1263655789858531177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1) - A077609 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077609 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A302792.P1263655789858531177

/-! ## A302792.P1593761322417904529

`A234575(A223490(n+1)+A000217(n))`
-/

namespace A302792.P1593761322417904529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234575 (A223490 (n + 1) + A000217 n).toNat

end

end A302792.P1593761322417904529

/-! ## A302792.P14815608718098249818

`A126988(A223490(n+1)+∑[n])`
-/

namespace A302792.P14815608718098249818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126988 (A223490 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)).toNat

end

end A302792.P14815608718098249818

/-! ## A302792.P4896074384229550656

`A051537(A223490(n+1)+A000217(n))`
-/

namespace A302792.P4896074384229550656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051537 (A223490 (n + 1) + A000217 n).toNat

end

end A302792.P4896074384229550656

/-! ## A302792.P13109528518686748293

`A054531(A223490(n+1)+A000217(n))`
-/

namespace A302792.P13109528518686748293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054531 (A223490 (n + 1) + A000217 n).toNat

end

end A302792.P13109528518686748293

/-!
# A302793: Permutation of nonnegative integers: a(0) = 0; for n >= 1, a(n) = A193231(1+A193231(n-1)), where A193231(n) is blue code of n.

The programs for A302793, there is no canonical definition to state claims against.
-/

/-! ## A302793.P157013606484089419

`A193231(A302794(A193231(n)))`
-/

namespace A302793.P157013606484089419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A302794 (A193231 n).toNat).toNat

end

end A302793.P157013606484089419

/-!
# A302794: Permutation of nonnegative integers: a(0) = 0; for n >= 1, a(n) = 1+A193231(A193231(n)-1), where A193231(n) is blue code of n.

The programs for A302794, there is no canonical definition to state claims against.
-/

/-! ## A302794.P1567442322921114474

`A193231(A193231(n)-A057427(n))+1-C(2, n+2)`
-/

namespace A302794.P1567442322921114474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A193231 n - A057427 n).toNat + (1 - (Nat.choose 2 (n + 2) : ℤ))

end

end A302794.P1567442322921114474

/-! ## A302794.P550659939236880028

`A193231(A193231(n)+A057428(n))+A057427(n)`
-/

namespace A302794.P550659939236880028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A193231 n + A057428 n).toNat + A057427 n

end

end A302794.P550659939236880028

/-! ## A302794.P11897566894643722644

`A193231(A193231(n)-A057427(n))+A057427(n)`
-/

namespace A302794.P11897566894643722644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A193231 n - A057427 n).toNat + A057427 n

end

end A302794.P11897566894643722644

/-! ## A302794.P9937924411245154368

`A193231(A193231(n)-A057427(n))-A057428(n)`
-/

namespace A302794.P9937924411245154368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A193231 n - A057427 n).toNat - A057428 n

end

end A302794.P9937924411245154368

/-! ## A302794.P972734576372480358

`A193231(A302793(A193231(n)))`
-/

namespace A302794.P972734576372480358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193231 (A302793 (A193231 n).toNat).toNat

end

end A302794.P972734576372480358

/-! ## A302794.P16836081610094720959

`2-(A208645(2*n)-A193231(A193231(n)-A057427(n)))`
-/

namespace A302794.P16836081610094720959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A208645 (2 * n) - A193231 (A193231 n - A057427 n).toNat)

end

end A302794.P16836081610094720959

/-!
# A302796: Squarefree numbers whose prime indices are relatively prime. Nonprime Heinz numbers of strict integer partitions with relatively prime parts.

The programs for A302796, there is no canonical definition to state claims against.
-/

/-! ## A302796.P5024351134803646253

`record[A327529(∏{p}[n, #])]`
-/

namespace A302796.P5024351134803646253
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327529 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302796.P5024351134803646253

/-! ## A302796.P2492524194344018785

`record[A316437(A003967(n+1))]`
-/

namespace A302796.P2492524194344018785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A003967 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302796.P2492524194344018785

/-! ## A302796.P5514570493231059119

`record[A316437(A005117(n+1))]`
-/

namespace A302796.P5514570493231059119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302796.P5514570493231059119

/-! ## A302796.P8396180954160114559

`record[A316437(A007913(n+1))]`
-/

namespace A302796.P8396180954160114559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302796.P8396180954160114559

/-! ## A302796.P1343093964339262064

`record[A316437(A007947(n+1))]`
-/

namespace A302796.P1343093964339262064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302796.P1343093964339262064

/-! ## A302796.P10372783800999863783

`record[A316437(A015053(n+1))]`
-/

namespace A302796.P10372783800999863783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A015053 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302796.P10372783800999863783

/-! ## A302796.P1549664245861972612

`record[A316437(A019554(n+1))]`
-/

namespace A302796.P1549664245861972612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A019554 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302796.P1549664245861972612

/-! ## A302796.P1290883262402231944

`record[A316437(A019555(n+1))]`
-/

namespace A302796.P1290883262402231944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A019555 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302796.P1290883262402231944

/-! ## A302796.P5957131883129728033

`record[A316437(A053166(n+1))]`
-/

namespace A302796.P5957131883129728033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A053166 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302796.P5957131883129728033

/-! ## A302796.P1464945767790464331

`record[A316437(A097248(n+1))]`
-/

namespace A302796.P1464945767790464331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316437 (A097248 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302796.P1464945767790464331

/-!
# A302797: Squarefree numbers whose prime indices are pairwise coprime. Heinz numbers of strict integer partitions with pairwise coprime parts.

The programs for A302797, there is no canonical definition to state claims against.
-/

/-! ## A302797.P8118441045346125398

`record[A327512(∏{p}[n, #])]`
-/

namespace A302797.P8118441045346125398
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (∏ p ∈ Nat.primeFactors (f2 n), p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302797.P8118441045346125398

/-! ## A302797.P3420911906697625103

`record[A327512((n+1)/4^val(n+1, 4))]`
-/

namespace A302797.P3420911906697625103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (4 ^ SequenceMachineLib.valuation (n + 1) 4 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302797.P3420911906697625103

/-! ## A302797.P18078446808020650094

`record[A007913(A302696(n+1))]`
-/

namespace A302797.P18078446808020650094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A302696 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302797.P18078446808020650094

/-! ## A302797.P689254386037250656

`record[A327512(A003967(n+1))]`
-/

namespace A302797.P689254386037250656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (A003967 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302797.P689254386037250656

/-! ## A302797.P8373957716118384265

`record[A327512(A005117(n+1))]`
-/

namespace A302797.P8373957716118384265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (A005117 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302797.P8373957716118384265

/-! ## A302797.P16019648884990300721

`record[A327512(A007913(n+1))]`
-/

namespace A302797.P16019648884990300721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (A007913 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302797.P16019648884990300721

/-! ## A302797.P3196475939183484493

`record[A327512(A007947(n+1))]`
-/

namespace A302797.P3196475939183484493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327512 (A007947 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302797.P3196475939183484493

/-! ## A302797.P128520863986229224

`filter[A302696(n+1), A008966(#)]`
-/

namespace A302797.P128520863986229224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A302797.P128520863986229224

/-! ## A302797.P16883267920859479931

`filter[A302696(n+1), A166486(#)]`
-/

namespace A302797.P16883267920859479931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A166486 (f1 j).toNat = 1) n)

end

end A302797.P16883267920859479931

/-! ## A302797.P15639460689751543614

`filter[A302696(n+1), A353559(#)]`
-/

namespace A302797.P15639460689751543614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302696 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A302797.P15639460689751543614

/-!
# A302798: Squarefree numbers that are prime or whose prime indices are pairwise coprime. Heinz numbers of strict integer partitions that either consist of a single part or have pairwise coprime parts.

The programs for A302798, there is no canonical definition to state claims against.
-/

/-! ## A302798.P12834344144277375299

`∪[A302797(n+1), p?[a(n-1)+2]]` with `a(0)=1`
-/

namespace A302798.P12834344144277375299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302797 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = x) n

end

end A302798.P12834344144277375299

/-! ## A302798.P8921201220292382504

`record[A327512(A133466(n+1))/4]`
-/

namespace A302798.P8921201220292382504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A327512 (A133466 (n + 1)).toNat : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A302798.P8921201220292382504

/-! ## A302798.P2884538106082813932

`∪[A000040(n+1), A302797(n+1)]`
-/

namespace A302798.P2884538106082813932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302798.P2884538106082813932

/-! ## A302798.P16899943522427951763

`∪[A006005(n+1), A302797(n+1)]`
-/

namespace A302798.P16899943522427951763
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302798.P16899943522427951763

/-! ## A302798.P10893710918426996715

`∪[A008578(n+1), A302797(n+1)]`
-/

namespace A302798.P10893710918426996715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302798.P10893710918426996715

/-! ## A302798.P9426927333365790729

`∪[A015919(n+1), A302797(n+1)]`
-/

namespace A302798.P9426927333365790729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302798.P9426927333365790729

/-! ## A302798.P5138607204505777926

`∪[A049551(n+1), A302797(n+1)]`
-/

namespace A302798.P5138607204505777926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049551 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302798.P5138607204505777926

/-! ## A302798.P6820028682868798563

`∪[A049569(n+1), A302797(n+1)]`
-/

namespace A302798.P6820028682868798563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302798.P6820028682868798563

/-! ## A302798.P4324396744562193536

`∪[A050260(n+1), A302797(n+1)]`
-/

namespace A302798.P4324396744562193536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302798.P4324396744562193536

/-! ## A302798.P17774238271615781104

`∪[A057448(n+1), A302797(n+1)]`
-/

namespace A302798.P17774238271615781104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057448 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302797 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A302798.P17774238271615781104

