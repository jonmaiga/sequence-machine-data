import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C045
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
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
import Seq.B004.C002
import Seq.B005.C000
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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

/-!
# A226600: Number of ordered triples (i,j,k) with i*j*k <= n and i,j,k >= 0.

The programs for A226600, the canonical program `A226600.P13950365899487578283` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226600 has offset 0).

The definition of A226600 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226600.P17121182947444366058

`A003215(n)+∑[∑{d}[n, A000005(#)]]`
-/

namespace A226600.P17121182947444366058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003215 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226600.P17121182947444366058

namespace A226600

/-- `A003215(n)+∑[∑{d}[n, A000005(#)]]` -/
def P17121182947444366058.Spec : Prop :=
  ∀ n, P17121182947444366058.a n = A226600 n

end A226600

/-! ## A226600.P6438411193221164039

`∑[A008458(n)+∑{d}[n, A000005(#)]]`
-/

namespace A226600.P6438411193221164039
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ∑ d ∈ Nat.divisors (f2 n), A000005 d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226600.P6438411193221164039

namespace A226600

/-- `∑[A008458(n)+∑{d}[n, A000005(#)]]` -/
def P6438411193221164039.Spec : Prop :=
  ∀ n, P6438411193221164039.a n = A226600 n

end A226600

/-! ## A226600.P8229709082370919381

`∑[∑{d}[n, A000005(#)]+A008706(n)+n]`
-/

namespace A226600.P8229709082370919381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), A000005 d + (A008706 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226600.P8229709082370919381

namespace A226600

/-- `∑[∑{d}[n, A000005(#)]+A008706(n)+n]` -/
def P8229709082370919381.Spec : Prop :=
  ∀ n, P8229709082370919381.a n = A226600 n

end A226600

/-! ## A226600.P6003112467611268381

`∑[A008458(n)+∑{d}[n, #-A049820(#)]]`
-/

namespace A226600.P6003112467611268381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n + ∑ d ∈ Nat.divisors (f2 n), ((d : ℤ) - A049820 d)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226600.P6003112467611268381

namespace A226600

/-- `∑[A008458(n)+∑{d}[n, #-A049820(#)]]` -/
def P6003112467611268381.Spec : Prop :=
  ∀ n, P6003112467611268381.a n = A226600 n

end A226600

/-! ## A226600.P13950365899487578283

`A061201(n+1)+A003215(n)-A007425(n+1)`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A226600

/-- `A061201(n+1)+A003215(n)-A007425(n+1)` -/
def P13950365899487578283.Spec : Prop :=
  ∀ n, P13950365899487578283.a n = A226600 n

theorem P13950365899487578283.correct : P13950365899487578283.Spec := by
  intro n
  simp only [A226600]

end A226600

/-!
# A226602: Number of ordered triples (i,j,k) with i*j*k = n, i,j,k >= 0 and gcd(i,j,k) <= 1.

The programs for A226602, the canonical program `A226602.P15401380654171723407` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226602 has offset 0).

The definition of A226602 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226602.P15401380654171723407

`∏{e}[n, 3*#]`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A226602

/-- `∏{e}[n, 3*#]` -/
def P15401380654171723407.Spec : Prop :=
  ∀ n, (P15401380654171723407.a n : ℤ) = A226602 n

theorem P15401380654171723407.correct : P15401380654171723407.Spec := by
  intro n
  simp only [A226602]

end A226602

/-! ## A226602.P1678275591203679659

`∏{p}[n, 3*val(n, #)]`
-/

namespace A226602.P1678275591203679659
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 3 * SequenceMachineLib.valuation n p

end

end A226602.P1678275591203679659

namespace A226602

/-- `∏{p}[n, 3*val(n, #)]` -/
def P1678275591203679659.Spec : Prop :=
  ∀ n, (P1678275591203679659.a n : ℤ) = A226602 n

end A226602

/-! ## A226602.P941282003283955683

`∏{p}[n, val(n^3, #)]`
-/

namespace A226602.P941282003283955683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), SequenceMachineLib.valuation (n ^ 3) p

end

end A226602.P941282003283955683

namespace A226602

/-- `∏{p}[n, val(n^3, #)]` -/
def P941282003283955683.Spec : Prop :=
  ∀ n, (P941282003283955683.a n : ℤ) = A226602 n

end A226602

/-! ## A226602.P5223647503015097416

`2^∑{e}[n, log2(3*#)]`
-/

namespace A226602.P5223647503015097416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (3 * Nat.factorization (f1 n) p : ℝ))

end

end A226602.P5223647503015097416

namespace A226602

/-- `2^∑{e}[n, log2(3*#)]` -/
def P5223647503015097416.Spec : Prop :=
  ∀ n, P5223647503015097416.a n = (A226602 n : ℝ)

end A226602

/-! ## A226602.P6108473560700302050

`A028310(∑{d}[n, A073184(#)])`
-/

namespace A226602.P6108473560700302050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), A073184 d).toNat

end

end A226602.P6108473560700302050

namespace A226602

/-- `A028310(∑{d}[n, A073184(#)])` -/
def P6108473560700302050.Spec : Prop :=
  ∀ n, P6108473560700302050.a n = A226602 n

end A226602

/-! ## A226602.P10903988108140868

`A000027(∏{e}[n, A008585(#)])`
-/

namespace A226602.P10903988108140868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n), A008585 (Nat.factorization (f1 n) p)).toNat

end

end A226602.P10903988108140868

namespace A226602

/-- `A000027(∏{e}[n, A008585(#)])` -/
def P10903988108140868.Spec : Prop :=
  ∀ n, P10903988108140868.a n = A226602 n

end A226602

/-! ## A226602.P14029099187349038300

`abs(∏{e}[n^3, -#])`
-/

namespace A226602.P14029099187349038300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.factorization (f1 n) p : ℤ))|

end

end A226602.P14029099187349038300

namespace A226602

/-- `abs(∏{e}[n^3, -#])` -/
def P14029099187349038300.Spec : Prop :=
  ∀ n, P14029099187349038300.a n = A226602 n

end A226602

/-! ## A226602.P6689313510563816668

`sqrt(∏{e}[n^3, #²])`
-/

namespace A226602.P6689313510563816668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p ^ 2 : ℕ) : ℝ)

end

end A226602.P6689313510563816668

namespace A226602

/-- `sqrt(∏{e}[n^3, #²])` -/
def P6689313510563816668.Spec : Prop :=
  ∀ n, P6689313510563816668.a n = (A226602 n : ℝ)

end A226602

/-! ## A226602.P17959282841180109845

`∏{e}[n^3, root(#, 2)]²`
-/

namespace A226602.P17959282841180109845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A226602.P17959282841180109845

namespace A226602

/-- `∏{e}[n^3, root(#, 2)]²` -/
def P17959282841180109845.Spec : Prop :=
  ∀ n, P17959282841180109845.a n = (A226602 n : ℝ)

end A226602

/-! ## A226602.P8893840789085196238

`A000027(∏{e}[n^3, #])`
-/

namespace A226602.P8893840789085196238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A226602.P8893840789085196238

namespace A226602

/-- `A000027(∏{e}[n^3, #])` -/
def P8893840789085196238.Spec : Prop :=
  ∀ n, P8893840789085196238.a n = A226602 n

end A226602

/-! ## A226602.P12030546411635328030

`∏{e}[n^3, #]%A063908(n+1)`
-/

namespace A226602.P12030546411635328030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ) (A063908 (n + 1))

end

end A226602.P12030546411635328030

namespace A226602

/-- `∏{e}[n^3, #]%A063908(n+1)` -/
def P12030546411635328030.Spec : Prop :=
  ∀ n, P12030546411635328030.a n = A226602 n

end A226602

/-! ## A226602.P11297008291902058373

`A028310(∏{e}[A000578(n), #])`
-/

namespace A226602.P11297008291902058373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p)

end

end A226602.P11297008291902058373

namespace A226602

/-- `A028310(∏{e}[A000578(n), #])` -/
def P11297008291902058373.Spec : Prop :=
  ∀ n, P11297008291902058373.a n = A226602 n

end A226602

/-!
# A226606: Irregular array read by rows in which a(n) is the denominator of the rational number, in a 3x+1 cycle, with numerator A226605(n).

The programs for A226606, there is no canonical definition to state claims against.
-/

/-! ## A226606.P4381216466549515088

`abs(A226619(n+1)%A128024(n+5))`
-/

namespace A226606.P4381216466549515088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A226619 (n + 1)) (A128024 (n + 5))|

end

end A226606.P4381216466549515088

/-! ## A226606.P5098136664553189427

`abs(A226619(n+1))%A226616(4*n+5)`
-/

namespace A226606.P5098136664553189427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod |A226619 (n + 1)| (A226616 (4 * n + 5))

end

end A226606.P5098136664553189427

/-! ## A226606.P12654216810682967457

`gcd(A008683(A000142(n)), A226619(n+1))`
-/

namespace A226606.P12654216810682967457
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (A000142 n).toNat) (A226619 (n + 1))

end

end A226606.P12654216810682967457

/-! ## A226606.P14813325512654521121

`lcm(A035191(A000244(n)), A226619(n+1))`
-/

namespace A226606.P14813325512654521121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035191 (A000244 n).toNat) (A226619 (n + 1))

end

end A226606.P14813325512654521121

/-!
# A226607: Irregular array read by rows in which row floor(k/3)+1, where gcd(k,6)=1, lists the smallest elements, in ascending order, of conjecturally all primitive cycles of positive integers under iteration by the 3x+k function.

The programs for A226607, there is no canonical definition to state claims against.
-/

/-! ## A226607.P8143024457700694004

`A039512(A292125(n+1)-A292136(n))`
-/

namespace A226607.P8143024457700694004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039512 (A292125 (n + 1) - A292136 n).toNat

end

end A226607.P8143024457700694004

/-! ## A226607.P11074723309283158901

`A039512(n+2)%A151278(A151272(n))`
-/

namespace A226607.P11074723309283158901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039512 (n + 2)) (A151278 (A151272 n).toNat)

end

end A226607.P11074723309283158901

/-!
# A226611: Irregular array read by rows. a(n) is the smallest starting value of a T_k trajectory that includes A226607(n), where T_k is the 3x+k function associated with A226607(n).

The programs for A226611, there is no canonical definition to state claims against.
-/

/-! ## A226611.P17140563916801621058

`or(A012361(n), A162235(A162221(n)))`
-/

namespace A226611.P17140563916801621058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A012361 n) (A162235 (A162221 n).toNat)

end

end A226611.P17140563916801621058

/-! ## A226611.P9181995107200586597

`or(A034691(n), A085310(A322137(n)))`
-/

namespace A226611.P9181995107200586597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A034691 n) (A085310 (A322137 n).toNat)

end

end A226611.P9181995107200586597

/-!
# A226612: Index of the first element of row n of A226607.

The programs for A226612, there is no canonical definition to state claims against.
-/

/-! ## A226612.P15829282549691757205

`A226613(n)+a(n-1)` with `a(0)=1`
-/

namespace A226612.P15829282549691757205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226613 n + a (n - 1)

end

end A226612.P15829282549691757205

/-! ## A226612.P3395048798198742766

`∑[A226613(A028310(n))]`
-/

namespace A226612.P3395048798198742766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226613 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226612.P3395048798198742766

/-! ## A226612.P5190158129875448162

`∑[A226613(A000007(n)+n)]`
-/

namespace A226612.P5190158129875448162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226613 (A000007 n + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226612.P5190158129875448162

/-! ## A226612.P8194833606697124218

`∑[A226613(or(n, A000007(n)))]`
-/

namespace A226612.P8194833606697124218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226613 (Int.lor (n : ℤ) (A000007 n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226612.P8194833606697124218

/-! ## A226612.P18128964863650565979

`∑[A226613(and(1, A004016(n))+n)]`
-/

namespace A226612.P18128964863650565979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226613 (Int.land 1 (A004016 n) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226612.P18128964863650565979

/-! ## A226612.P11487980116793026162

`∑[A226613(n+1)]+1-A226613(n+1)`
-/

namespace A226612.P11487980116793026162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A226613 (n + 1))

end

end A226612.P11487980116793026162

/-!
# A226613: a(n) is the conjectured number of primitive cycles of positive integers under iteration by the Collatz-like 3x+k function, where n=floor(k/3)+1.

The programs for A226613, there is no canonical definition to state claims against.
-/

/-! ## A226613.P2924483524942422283

`A226612(n+2)-A226612(n+1)`
-/

namespace A226613.P2924483524942422283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226612 (n + 2) - A226612 (n + 1)

end

end A226613.P2924483524942422283

/-! ## A226613.P9259106537497284499

`Δ[A226612(n+1)]`
-/

namespace A226613.P9259106537497284499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226613.P9259106537497284499

/-! ## A226613.P15849091296484762680

`abs(Δ[A226612(ϕ²-(ϕ-n))])`
-/

namespace A226613.P15849091296484762680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226612 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A226613.P15849091296484762680

/-! ## A226613.P10529732772369173674

`Δ[record[A226612(A344180(n))]]`
-/

namespace A226613.P10529732772369173674
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226612 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226613.P10529732772369173674

/-! ## A226613.P2868137679342680924

`Δ[A226612(ϕ²-(ϕ-n))%A017041(n)]`
-/

namespace A226613.P2868137679342680924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226612 (SequenceMachineLib.roundAway (Real.goldenRatio ^ 2 - (Real.goldenRatio - (n : ℝ)))).toNat) (A017041 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226613.P2868137679342680924

/-! ## A226613.P4184746175311711073

`Δ[record[A226612(A128227(n))]]`
-/

namespace A226613.P4184746175311711073
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226612 (A128227 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226613.P4184746175311711073

/-!
# A226614: Positive integers k for which 1 is in a cycle of integers under iteration by the Collatz-like 3x+k function.

The programs for A226614, there is no canonical definition to state claims against.
-/

/-! ## A226614.P3243396638590779366

`A007310(eq[1, A102280(n+1)]+1)`
-/

namespace A226614.P3243396638590779366
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A226614.P3243396638590779366

/-! ## A226614.P13926096362937870370

`record[A007310(n+1)/A102280(n+1)]`
-/

namespace A226614.P13926096362937870370
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007310 (n + 1) : ℚ) / (A102280 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226614.P13926096362937870370

/-! ## A226614.P7408287251218401947

`A007310(record[root(n+1, A102280(n+1))])`
-/

namespace A226614.P7408287251218401947
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (A102280 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A226614.P7408287251218401947

/-! ## A226614.P8079360527419682717

`A007310(record[n+1-A102280(n+1)²²]+1)`
-/

namespace A226614.P8079360527419682717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A102280 (n + 1) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A226614.P8079360527419682717

/-! ## A226614.P16351963919405014824

`record[A007310(n+1)/A226607(A226612(n+1))]`
-/

namespace A226614.P16351963919405014824
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007310 (n + 1) : ℚ) / (A226607 (A226612 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226614.P16351963919405014824

/-! ## A226614.P13656387849815519096

`2*A127143(n)+1`
-/

namespace A226614.P13656387849815519096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A127143 n + 1

end

end A226614.P13656387849815519096

/-! ## A226614.P1740570942668050991

`A005408(A127143(n))`
-/

namespace A226614.P1740570942668050991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A127143 n).toNat

end

end A226614.P1740570942668050991

/-! ## A226614.P2336046904104793845

`A004273(A127143(n)+1)`
-/

namespace A226614.P2336046904104793845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A127143 n + 1).toNat

end

end A226614.P2336046904104793845

/-! ## A226614.P13746834825661776716

`A004442(2*A127143(n))`
-/

namespace A226614.P13746834825661776716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (2 * A127143 n).toNat

end

end A226614.P13746834825661776716

/-! ## A226614.P17278028485665544994

`A008619(4*A127143(n))`
-/

namespace A226614.P17278028485665544994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A127143 n).toNat

end

end A226614.P17278028485665544994

/-!
# A226615: Length of the Collatz-like 3x+k cycle associated with A226614(n).

The programs for A226615, there is no canonical definition to state claims against.
-/

/-! ## A226615.P8110291367947381233

`A226609(A226612(floor(A226614(n+1)/3)+1))`
-/

namespace A226615.P8110291367947381233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (A226612 (⌊(A226614 (n + 1) : ℚ) / 3⌋ + 1).toNat).toNat

end

end A226615.P8110291367947381233

/-! ## A226615.P18076259207915726504

`A102284(record[(n+1)/A102280(n+1)])`
-/

namespace A226615.P18076259207915726504
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A102280 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102284 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A226615.P18076259207915726504

/-! ## A226615.P74672009008546304

`A102284(record[root(n+1, A102280(n+1))])`
-/

namespace A226615.P74672009008546304
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) ^ (1 / (A102280 (n + 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102284 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A226615.P74672009008546304

/-! ## A226615.P9871993162387001892

`A226609(eq[1, A226607(n+1)]+1)`
-/

namespace A226615.P9871993162387001892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226607 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A226615.P9871993162387001892

/-! ## A226615.P2969600080821393230

`A226609(record[n/A226607(n+1)²]+1)`
-/

namespace A226615.P2969600080821393230
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A226607 (n + 1) ^ 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A226615.P2969600080821393230

/-! ## A226615.P16113173607958685701

`A226609(record[n*(2-A226607(n+1))]+1)`
-/

namespace A226615.P16113173607958685701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (2 - A226607 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A226615.P16113173607958685701

/-! ## A226615.P4560327637835190778

`A226609(record[n/(2-A226607(n+1))]+1)`
-/

namespace A226615.P4560327637835190778
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (2 - A226607 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A226615.P4560327637835190778

/-! ## A226615.P7915876787564786574

`A226609(record[n^(2-A226607(n+1))]+1)`
-/

namespace A226615.P7915876787564786574
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (2 - A226607 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1)).toNat

end

end A226615.P7915876787564786574

/-! ## A226615.P13372931245057337696

`A226609(record[A226612(n+1)/A102280(n+1)])`
-/

namespace A226615.P13372931245057337696
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226612 (n + 1) : ℚ) / (A102280 (n + 1) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A226615.P13372931245057337696

/-!
# A226616: Smallest positive integer k for which 1 is in a primitive cycle of n positive integers (n>1) under iteration by the Collatz-like 3x+k function.

The programs for A226616, there is no canonical definition to state claims against.
-/

/-! ## A226616.P13969247130379444359

`A226618(lt[A226594(n), A226607(n+2)])`
-/

namespace A226616.P13969247130379444359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226594 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226607 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226616.P13969247130379444359

/-! ## A226616.P7454903409023020836

`A226618(lt[A083705(n), A096898(3*n+2)])`
-/

namespace A226616.P7454903409023020836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083705 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096898 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226618 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226616.P7454903409023020836

/-! ## A226616.P17275096487173406267

`A226618(lt[A053445(n+1), 3]+1)`
-/

namespace A226616.P17275096487173406267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053445 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226618 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1)

end

end A226616.P17275096487173406267

/-!
# A226617: Smallest positive integer k (or 0 if no such k) with a primitive cycle of positive integers, n of which are odd including 1, under iteration by the Collatz-like 3x+k function.

The programs for A226617, there is no canonical definition to state claims against.
-/

/-! ## A226617.P15124814122030288400

`A248052(A176479(n))+A248050(n)`
-/

namespace A226617.P15124814122030288400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248052 (A176479 n).toNat + A248050 n

end

end A226617.P15124814122030288400

/-!
# A226622: Expansion of phi(x^2) / f(-x) in powers of x where phi(), f() are Ramanujan theta functions.

The programs for A226622, there is no canonical definition to state claims against.
-/

/-! ## A226622.P11457228501341658744

`A022597(2*n)`
-/

namespace A226622.P11457228501341658744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022597 (2 * n)

end

end A226622.P11457228501341658744

/-! ## A226622.P4402174596604032721

`A073252(2*n)`
-/

namespace A226622.P4402174596604032721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073252 (2 * n)

end

end A226622.P4402174596604032721

/-! ## A226622.P16184260520287933996

`abs(A022597(n+n))`
-/

namespace A226622.P16184260520287933996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A022597 (n + n)|

end

end A226622.P16184260520287933996

/-! ## A226622.P2652603380594417116

`A073252(n+n)+A000007(n+1)`
-/

namespace A226622.P2652603380594417116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073252 (n + n) + A000007 (n + 1)

end

end A226622.P2652603380594417116

/-! ## A226622.P10679681265215530080

`A073252(n+n)%A073252(A287087(n+1))`
-/

namespace A226622.P10679681265215530080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073252 (n + n)) (A073252 (A287087 (n + 1)).toNat)

end

end A226622.P10679681265215530080

/-! ## A226622.P11504706251902639702

`A089814(10*n)`
-/

namespace A226622.P11504706251902639702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089814 (10 * n)

end

end A226622.P11504706251902639702

/-! ## A226622.P6982705395156673966

`A112166(12*n)`
-/

namespace A226622.P6982705395156673966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112166 (12 * n)

end

end A226622.P6982705395156673966

/-! ## A226622.P11460462739083442004

`A112167(12*n)`
-/

namespace A226622.P11460462739083442004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112167 (12 * n)

end

end A226622.P11460462739083442004

/-! ## A226622.P18216198933467715735

`A286352((n+3)*Δ[n²])`
-/

namespace A226622.P18216198933467715735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286352 ((n + 3 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A226622.P18216198933467715735

/-!
# A226624: Irregular array read by rows. a(n) is the largest element in the primitive Collatz-like 3x-k cycle associated with A226623(n).

The programs for A226624, there is no canonical definition to state claims against.
-/

/-! ## A226624.P16953343953295659746

`A002143(A084789(n+1)*A270995(2*n+3))`
-/

namespace A226624.P16953343953295659746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002143 (A084789 (n + 1) * A270995 (2 * n + 3)).toNat

end

end A226624.P16953343953295659746

/-!
# A226626: Irregular array read by rows. a(n) is the number of odd elements in the primitive Collatz-like 3x-k cycle associated with A226623(n).

The programs for A226626, there is no canonical definition to state claims against.
-/

/-! ## A226626.P2202346489904033609

`A020915(A226625(n+1))%(A099260(n)+1)²`
-/

namespace A226626.P2202346489904033609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020915 (A226625 (n + 1)).toNat) ((A099260 n + 1) ^ 2)

end

end A226626.P2202346489904033609

/-! ## A226626.P11093510154765848462

`A025439(A123731(n))+A020915(A226625(n+1))`
-/

namespace A226626.P11093510154765848462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025439 (A123731 n).toNat + A020915 (A226625 (n + 1)).toNat

end

end A226626.P11093510154765848462

/-! ## A226626.P12226473969798336573

`A020915(A226625(n+1))%A002246(A099260(n))`
-/

namespace A226626.P12226473969798336573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A020915 (A226625 (n + 1)).toNat) (A002246 (A099260 n).toNat)

end

end A226626.P12226473969798336573

/-! ## A226626.P4325349652008672562

`A020915(A226625(n+1))*A057427(A303590(n+1))`
-/

namespace A226626.P4325349652008672562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A226625 (n + 1)).toNat * A057427 (A303590 (n + 1)).toNat

end

end A226626.P4325349652008672562

/-! ## A226626.P18259672231568603328

`A020915(A226625(n+1))+A000038(A242093(n))`
-/

namespace A226626.P18259672231568603328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A226625 (n + 1)).toNat + A000038 (A242093 n).toNat

end

end A226626.P18259672231568603328

/-! ## A226626.P6655212590951198294

`A020915(A226625(n+1))*A211487(A325323(n+2))`
-/

namespace A226626.P6655212590951198294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020915 (A226625 (n + 1)).toNat * A211487 (A325323 (n + 2)).toNat

end

end A226626.P6655212590951198294

/-!
# A226628: Index of the first element of row n of A226623.

The programs for A226628, there is no canonical definition to state claims against.
-/

/-! ## A226628.P6717158126317649824

`A226629(n)+a(n-1)` with `a(0)=1`
-/

namespace A226628.P6717158126317649824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A226629 n + a (n - 1)

end

end A226628.P6717158126317649824

/-! ## A226628.P15838795904599179037

`∑[A226629(abs(1-n)+1)]`
-/

namespace A226628.P15838795904599179037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226628.P15838795904599179037

/-! ## A226628.P11313094328680283508

`∑[A226629(round(sqrt(n²+1)))]-2`
-/

namespace A226628.P11313094328680283508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A226628.P11313094328680283508

/-! ## A226628.P4695194781444602462

`∑[A226629(n+1)]-A226629(n+1)+1`
-/

namespace A226628.P4695194781444602462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A226629 (n + 1) + 1

end

end A226628.P4695194781444602462

/-! ## A226628.P3835152501942043006

`abs(∑[A226629(A137735(n²))]-2)`
-/

namespace A226628.P3835152501942043006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - 2|

end

end A226628.P3835152501942043006

/-!
# A226629: a(n) is the conjectured number of primitive cycles of positive integers under iteration by the Collatz-like 3x-k function, where k=A226630(n).

The programs for A226629, there is no canonical definition to state claims against.
-/

/-! ## A226629.P3354201844858836437

`A226628(n+2)-A226628(n+1)`
-/

namespace A226629.P3354201844858836437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226628 (n + 2) - A226628 (n + 1)

end

end A226629.P3354201844858836437

/-! ## A226629.P2025549607488446636

`Δ[A226628(n+1)]`
-/

namespace A226629.P2025549607488446636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226629.P2025549607488446636

/-! ## A226629.P3966707942801687574

`Δ[record[A226628(A263131(n))]]`
-/

namespace A226629.P3966707942801687574
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226628 (A263131 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226629.P3966707942801687574

/-! ## A226629.P9893931202333803681

`Δ[record[A226628(A344180(n))]]`
-/

namespace A226629.P9893931202333803681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226628 (A344180 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226629.P9893931202333803681

/-! ## A226629.P6004983681604004173

`abs(Δ[A226628(A008611(3*n))])`
-/

namespace A226629.P6004983681604004173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226628 (A008611 (3 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A226629.P6004983681604004173

/-! ## A226629.P5698127605322633522

`Δ[record[A226628(A134478(n))]]`
-/

namespace A226629.P5698127605322633522
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226628 (A134478 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226629.P5698127605322633522

/-!
# A226630: Positive integers k with at least one primitive cycle of positive integers under iteration by the 3x-k function.

The programs for A226630, there is no canonical definition to state claims against.
-/

/-! ## A226630.P15169873916361675507

`record[A284254(A233583(n+1)+A140888(n+1))]`
-/

namespace A226630.P15169873916361675507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284254 (A233583 (n + 1) + A140888 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226630.P15169873916361675507

/-!
# A226631: Length of the shortest primitive cycle(s) of positive integers under iteration by the 3x-k function, where k=A226630(n).

The programs for A226631, there is no canonical definition to state claims against.
-/

/-! ## A226631.P11951321837883783336

`A226625(∑[A226629(n+1)]%∑[n+2])`
-/

namespace A226631.P11951321837883783336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226625 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)).toNat

end

end A226631.P11951321837883783336

/-! ## A226631.P9458818336272165070

`A226625(∑[A226629(n+1)])%A155212(n)`
-/

namespace A226631.P9458818336272165070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226625 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A155212 n)

end

end A226631.P9458818336272165070

/-! ## A226631.P6197231919445956832

`A226625(A226628(n+2)-1)%A017293(n)`
-/

namespace A226631.P6197231919445956832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226625 (A226628 (n + 2) - 1).toNat) (A017293 n)

end

end A226631.P6197231919445956832

/-! ## A226631.P6890413034722163043

`A226625((A226628(n+2)-2)%A226630(n+1)+1)`
-/

namespace A226631.P6890413034722163043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226625 (Int.tmod (A226628 (n + 2) - 2) (A226630 (n + 1)) + 1).toNat

end

end A226631.P6890413034722163043

/-! ## A226631.P14220999992611533684

`A226625(A226628(n+2)-1)^A005812(n²%(n+1))`
-/

namespace A226631.P14220999992611533684
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226625 (A226628 (n + 2) - 1).toNat : ℚ) ^ (A005812 (n ^ 2 % (n + 1)) : ℤ)

end

end A226631.P14220999992611533684

/-!
# A226632: Fewest odd numbers in a primitive cycle of positive integers under iteration by the 3x-k function, where k=A226630(n).

The programs for A226632, there is no canonical definition to state claims against.
-/

/-! ## A226632.P4372889782913828734

`A226626(∑[A226629(n+1)])%A287185(n)`
-/

namespace A226632.P4372889782913828734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226626 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A287185 n)

end

end A226632.P4372889782913828734

/-! ## A226632.P2737072349866883093

`A226626((A226628(n+2)-2)%A226630(n+1)+1)`
-/

namespace A226632.P2737072349866883093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226626 (Int.tmod (A226628 (n + 2) - 2) (A226630 (n + 1)) + 1).toNat

end

end A226632.P2737072349866883093

/-! ## A226632.P9386521664260189168

`(A226626(∑[A226629(n+1)])-1)%A000079(n+1)+1`
-/

namespace A226632.P9386521664260189168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226626 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - 1) (A000079 (n + 1)) + 1

end

end A226632.P9386521664260189168

/-! ## A226632.P7164210893790319660

`A226626(∑[A226629(n+1)]%A226670(n+1))`
-/

namespace A226632.P7164210893790319660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226626 (Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A226670 (n + 1))).toNat

end

end A226632.P7164210893790319660

/-! ## A226632.P10802639753382956047

`A226626(A226628(n+1)%A226650(n+2))`
-/

namespace A226632.P10802639753382956047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226626 (Int.tmod (A226628 (n + 1)) (A226650 (n + 2))).toNat

end

end A226632.P10802639753382956047

/-!
# A226633: Smallest positive integer in the primitive cycle(s) under iteration by the 3x-k function, where k=A226630(n).

The programs for A226633, there is no canonical definition to state claims against.
-/

/-! ## A226633.P6534633043445780776

`A226623(A226628(n+1))`
-/

namespace A226633.P6534633043445780776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226623 (A226628 (n + 1)).toNat

end

end A226633.P6534633043445780776

/-! ## A226633.P8152955836094073847

`A226623(∑[A226629(abs(1-n)+1)])`
-/

namespace A226633.P8152955836094073847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226623 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226633.P8152955836094073847

/-! ## A226633.P8334918977458995557

`A226623(∑[A226629(n+1)]-A226629(n+1)+1)`
-/

namespace A226633.P8334918977458995557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226623 (∑ j ∈ Finset.range (n + 1), f1 j - A226629 (n + 1) + 1).toNat

end

end A226633.P8334918977458995557

/-! ## A226633.P14474165305457786076

`A226623(∑[∏{e}[2^n, A226629(#)]])`
-/

namespace A226633.P14474165305457786076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A226629 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226623 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226633.P14474165305457786076

/-!
# A226634: Length of the primitive 3x-k cycle associated with A226633(n).

The programs for A226634, there is no canonical definition to state claims against.
-/

/-! ## A226634.P664357687429378374

`A226625(A226628(n+1))`
-/

namespace A226634.P664357687429378374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226625 (A226628 (n + 1)).toNat

end

end A226634.P664357687429378374

/-! ## A226634.P702549325003159575

`A226625(∑[A226629(abs(1-n)+1)])`
-/

namespace A226634.P702549325003159575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (|1 - (n : ℤ)| + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226625 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226634.P702549325003159575

/-! ## A226634.P751217810117350114

`A226625(∑[A226629(n+1)]-A226629(n+1)+1)`
-/

namespace A226634.P751217810117350114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226625 (∑ j ∈ Finset.range (n + 1), f1 j - A226629 (n + 1) + 1).toNat

end

end A226634.P751217810117350114

/-! ## A226634.P2363227351213013275

`A226625(∑[∏{e}[2^n, A226629(#)]])`
-/

namespace A226634.P2363227351213013275
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), A226629 (Nat.factorization (f2 n) p)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226625 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A226634.P2363227351213013275

/-!
# A226635: Expansion of psi(x^4) / f(-x) in powers of x where psi(), f() are Ramanujan theta functions.

The programs for A226635, there is no canonical definition to state claims against.
-/

/-! ## A226635.P14113235102656208683

`A073252(Δ[n²])/2`
-/

namespace A226635.P14113235102656208683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073252 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat : ℚ) / 2

end

end A226635.P14113235102656208683

/-! ## A226635.P4376311318147262820

`abs(A022597(2*n+1)/2)`
-/

namespace A226635.P4376311318147262820
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A022597 (2 * n + 1) : ℚ) / 2|

end

end A226635.P4376311318147262820

/-! ## A226635.P15004030539399639061

`gcd(A000038(n), A022597(2*n+1))/2`
-/

namespace A226635.P15004030539399639061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A000038 n) (A022597 (2 * n + 1)) : ℚ) / 2

end

end A226635.P15004030539399639061

/-! ## A226635.P12816465107439465095

`A022597(2*n+1)/(A000038(n+1)-2)`
-/

namespace A226635.P12816465107439465095
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022597 (2 * n + 1) : ℚ) / (A000038 (n + 1) - 2 : ℚ)

end

end A226635.P12816465107439465095

/-! ## A226635.P16900035022164898503

`lcm(A000034(n+1), A022597(2*n+1))/2`
-/

namespace A226635.P16900035022164898503
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm (A000034 (n + 1)) (A022597 (2 * n + 1)) : ℚ) / 2

end

end A226635.P16900035022164898503

/-! ## A226635.P525056007421076382

`A022597(2*n+1)/(A033999(2*n+1)-1)`
-/

namespace A226635.P525056007421076382
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022597 (2 * n + 1) : ℚ) / (A033999 (2 * n + 1) - 1 : ℚ)

end

end A226635.P525056007421076382

/-! ## A226635.P6292442752209832936

`A022597(2*n+1)/A000034(2*n+1)-A022597(2*n+1)`
-/

namespace A226635.P6292442752209832936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022597 (2 * n + 1) : ℚ) / (A000034 (2 * n + 1) : ℚ) - (A022597 (2 * n + 1) : ℚ)

end

end A226635.P6292442752209832936

/-! ## A226635.P6690216972872997614

`abs(A089814(10*n+5)/2)`
-/

namespace A226635.P6690216972872997614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A089814 (10 * n + 5) : ℚ) / 2|

end

end A226635.P6690216972872997614

/-!
# A226636: Numbers whose base-3 sum of digits is 3.

The programs for A226636, the canonical program `A226636.P1432254579412042459` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226636 has offset 1).

The definition of A226636 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226636.P1432254579412042459

`∪[A023741(n+1), A038465(n+1)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A226636

/-- `∪[A023741(n+1), A038465(n+1)]` -/
def P1432254579412042459.Spec : Prop :=
  ∀ n, (P1432254579412042459.a n : ℤ) = A226636 (n + 1)

theorem P1432254579412042459.correct : P1432254579412042459.Spec := by
  intro n
  simp only [A226636, Nat.add_sub_cancel]

end A226636

/-! ## A226636.P18408590046692720709

`A325984(A014311(n+1))`
-/

namespace A226636.P18408590046692720709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325984 (A014311 (n + 1)).toNat

end

end A226636.P18408590046692720709

namespace A226636

/-- `A325984(A014311(n+1))` -/
def P18408590046692720709.Spec : Prop :=
  ∀ n, P18408590046692720709.a n = A226636 (n + 1)

end A226636

/-! ## A226636.P3057296251789073331

`A325984(eq[3, A000120(n)])`
-/

namespace A226636.P3057296251789073331
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226636.P3057296251789073331

namespace A226636

/-- `A325984(eq[3, A000120(n)])` -/
def P3057296251789073331.Spec : Prop :=
  ∀ n, P3057296251789073331.a n = A226636 (n + 1)

end A226636

/-! ## A226636.P572890288283171727

`A325984(eq[5, A050315(n)])`
-/

namespace A226636.P572890288283171727
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050315 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226636.P572890288283171727

namespace A226636

/-- `A325984(eq[5, A050315(n)])` -/
def P572890288283171727.Spec : Prop :=
  ∀ n, P572890288283171727.a n = A226636 (n + 1)

end A226636

/-! ## A226636.P5402337159176257

`A325984(eq[7, A038573(n)])`
-/

namespace A226636.P5402337159176257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038573 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226636.P5402337159176257

namespace A226636

/-- `A325984(eq[7, A038573(n)])` -/
def P5402337159176257.Spec : Prop :=
  ∀ n, P5402337159176257.a n = A226636 (n + 1)

end A226636

/-! ## A226636.P8941148442116595692

`A325984(eq[8, A001316(n)])`
-/

namespace A226636.P8941148442116595692
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325984 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A226636.P8941148442116595692

namespace A226636

/-- `A325984(eq[8, A001316(n)])` -/
def P8941148442116595692.Spec : Prop :=
  ∀ n, P8941148442116595692.a n = A226636 (n + 1)

end A226636

/-! ## A226636.P3106327216260886310

`A319021(a(n-1))` with `a(0)=5`
-/

namespace A226636.P3106327216260886310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A319021 (a (n - 1)).toNat

end

end A226636.P3106327216260886310

namespace A226636

/-- `A319021(a(n-1))` -/
def P3106327216260886310.Spec : Prop :=
  ∀ n, P3106327216260886310.a n = A226636 (n + 1)

end A226636

/-! ## A226636.P1207896288114140507

`eq[3, A053735(n)]`
-/

namespace A226636.P1207896288114140507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053735 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226636.P1207896288114140507

namespace A226636

/-- `eq[3, A053735(n)]` -/
def P1207896288114140507.Spec : Prop :=
  ∀ n, (P1207896288114140507.a n : ℤ) = A226636 (n + 1)

end A226636

/-! ## A226636.P920326114331794270

`eq[6, A269223(n)]`
-/

namespace A226636.P920326114331794270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269223 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226636.P920326114331794270

namespace A226636

/-- `eq[6, A269223(n)]` -/
def P920326114331794270.Spec : Prop :=
  ∀ n, (P920326114331794270.a n : ℤ) = A226636 (n + 1)

end A226636

/-! ## A226636.P3024916207561351184

`eq[8, A051638(n)]`
-/

namespace A226636.P3024916207561351184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051638 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226636.P3024916207561351184

namespace A226636

/-- `eq[8, A051638(n)]` -/
def P3024916207561351184.Spec : Prop :=
  ∀ n, (P3024916207561351184.a n : ℤ) = A226636 (n + 1)

end A226636

/-! ## A226636.P12529684066251509708

`eq[4, A173523(n+1)]`
-/

namespace A226636.P12529684066251509708
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173523 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226636.P12529684066251509708

namespace A226636

/-- `eq[4, A173523(n+1)]` -/
def P12529684066251509708.Spec : Prop :=
  ∀ n, (P12529684066251509708.a n : ℤ) = A226636 (n + 1)

end A226636

/-! ## A226636.P13137009678163386572

`eq[n+3, A230641(n)]`
-/

namespace A226636.P13137009678163386572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230641 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226636.P13137009678163386572

namespace A226636

/-- `eq[n+3, A230641(n)]` -/
def P13137009678163386572.Spec : Prop :=
  ∀ n, (P13137009678163386572.a n : ℤ) = A226636 (n + 1)

end A226636

/-! ## A226636.P3579580469190758888

`eq[3, n-A344853(n)]`
-/

namespace A226636.P3579580469190758888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A344853 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226636.P3579580469190758888

namespace A226636

/-- `eq[3, n-A344853(n)]` -/
def P3579580469190758888.Spec : Prop :=
  ∀ n, (P3579580469190758888.a n : ℤ) = A226636 (n + 1)

end A226636

/-! ## A226636.P12855314079785794774

`eq[2, A062602(A038574(n)+3)]`
-/

namespace A226636.P12855314079785794774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062602 (A038574 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226636.P12855314079785794774

namespace A226636

/-- `eq[2, A062602(A038574(n)+3)]` -/
def P12855314079785794774.Spec : Prop :=
  ∀ n, (P12855314079785794774.a n : ℤ) = A226636 (n + 1)

end A226636

/-! ## A226636.P14464923059064278158

`eq[A089792(n), A097065(n+1)]`
-/

namespace A226636.P14464923059064278158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089792 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097065 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226636.P14464923059064278158

namespace A226636

/-- `eq[A089792(n), A097065(n+1)]` -/
def P14464923059064278158.Spec : Prop :=
  ∀ n, (P14464923059064278158.a n : ℤ) = A226636 (n + 1)

end A226636

/-!
# A226637: Numbers m having with m+1 no common digit in decimal representations.

The programs for A226637, there is no canonical definition to state claims against.
-/

/-! ## A226637.P15886972738266320718

`A051885(comp[Δ[A235332(n)]])`
-/

namespace A226637.P15886972738266320718
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A226637.P15886972738266320718

/-! ## A226637.P10024914733536788123

`A051885(comp[Δ[A000217(3*n+4)]-1])`
-/

namespace A226637.P10024914733536788123
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051885 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A226637.P10024914733536788123

/-! ## A226637.P2483077061051024938

`eq[0, A076489(n)]`
-/

namespace A226637.P2483077061051024938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076489 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226637.P2483077061051024938

/-! ## A226637.P7315711902886751786

`eq[n+1, A358097(n)]`
-/

namespace A226637.P7315711902886751786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358097 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226637.P7315711902886751786

/-! ## A226637.P11330748960335306639

`eq[n, A358098(n+1)]`
-/

namespace A226637.P11330748960335306639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358098 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A226637.P11330748960335306639

/-!
# A226638: Product of Pell and Lucas numbers.

The programs for A226638, the canonical program `A226638.P11166279411822104802` is in `Seq.B000.C034`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226638 has offset 0).

The definition of A226638 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A226638.P17049486579631951347

`ogf((x+4x^2+x^3)/(1-2x-7x^2-2x^3+x^4))`
-/

namespace A226638.P17049486579631951347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 4, 1] [1, -2, -7, -2, 1] n

end

end A226638.P17049486579631951347

namespace A226638

/-- `ogf((x+4x^2+x^3)/(1-2x-7x^2-2x^3+x^4))` -/
def P17049486579631951347.Spec : Prop :=
  ∀ n, P17049486579631951347.a n = A226638 n

end A226638

/-! ## A226638.P11166279411822104802

`2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=20`

The canonical program, it is in `Seq.B000.C034`.
-/

namespace A226638

/-- `2*a(n-1)+7*a(n-2)+2*a(n-3)-a(n-4)` -/
def P11166279411822104802.Spec : Prop :=
  ∀ n, P11166279411822104802.a n = A226638 n

theorem P11166279411822104802.correct : P11166279411822104802.Spec := by
  intro n
  simp only [A226638]

end A226638

/-! ## A226638.P9718967227213863959

`A000129(n)*A000032(n)`
-/

namespace A226638.P9718967227213863959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 n * A000032 n

end

end A226638.P9718967227213863959

namespace A226638

/-- `A000129(n)*A000032(n)` -/
def P9718967227213863959.Spec : Prop :=
  ∀ n, P9718967227213863959.a n = A226638 n

end A226638

/-! ## A226638.P11898751208769694286

`A000032(n)*A000129(n)`
-/

namespace A226638.P11898751208769694286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A000129 n

end

end A226638.P11898751208769694286

namespace A226638

/-- `A000032(n)*A000129(n)` -/
def P11898751208769694286.Spec : Prop :=
  ∀ n, P11898751208769694286.a n = A226638 n

end A226638

/-! ## A226638.P7066181489780688368

`Δ[A001610(n)]*A000129(n)`
-/

namespace A226638.P7066181489780688368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000129 n

end

end A226638.P7066181489780688368

namespace A226638

/-- `Δ[A001610(n)]*A000129(n)` -/
def P7066181489780688368.Spec : Prop :=
  ∀ n, P7066181489780688368.a n = A226638 n

end A226638

/-! ## A226638.P4339299541092678680

`A000032(n)*Δ[A171842(n)]`
-/

namespace A226638.P4339299541092678680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (f1 (n + 1) - f1 n)

end

end A226638.P4339299541092678680

namespace A226638

/-- `A000032(n)*Δ[A171842(n)]` -/
def P4339299541092678680.Spec : Prop :=
  ∀ n, P4339299541092678680.a n = A226638 n

end A226638

/-! ## A226638.P1207467168427353440

`(A174191(n)-1)*A000032(n)`
-/

namespace A226638.P1207467168427353440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A174191 n - 1) * A000032 n

end

end A226638.P1207467168427353440

namespace A226638

/-- `(A174191(n)-1)*A000032(n)` -/
def P1207467168427353440.Spec : Prop :=
  ∀ n, P1207467168427353440.a n = A226638 n

end A226638

/-! ## A226638.P16713083172324598685

`A000032(n)*A002965(2*n)`
-/

namespace A226638.P16713083172324598685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A002965 (2 * n)

end

end A226638.P16713083172324598685

namespace A226638

/-- `A000032(n)*A002965(2*n)` -/
def P16713083172324598685.Spec : Prop :=
  ∀ n, P16713083172324598685.a n = A226638 n

end A226638

/-! ## A226638.P10582655381756903411

`A000032(n)*A116558(2*n)`
-/

namespace A226638.P10582655381756903411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A116558 (2 * n)

end

end A226638.P10582655381756903411

namespace A226638

/-- `A000032(n)*A116558(2*n)` -/
def P10582655381756903411.Spec : Prop :=
  ∀ n, P10582655381756903411.a n = A226638 n

end A226638

/-! ## A226638.P3738160463446542687

`A000032(n)*A135153(2*n)`
-/

namespace A226638.P3738160463446542687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A135153 (2 * n)

end

end A226638.P3738160463446542687

namespace A226638

/-- `A000032(n)*A135153(2*n)` -/
def P3738160463446542687.Spec : Prop :=
  ∀ n, P3738160463446542687.a n = A226638 n

end A226638

/-! ## A226638.P4796706607567183003

`A000032(n)*A249576(3*n)`
-/

namespace A226638.P4796706607567183003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A249576 (3 * n)

end

end A226638.P4796706607567183003

namespace A226638

/-- `A000032(n)*A249576(3*n)` -/
def P4796706607567183003.Spec : Prop :=
  ∀ n, P4796706607567183003.a n = A226638 n

end A226638

/-! ## A226638.P6146255371604938308

`A000032(n)*A116560(6*n)`
-/

namespace A226638.P6146255371604938308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * A116560 (6 * n)

end

end A226638.P6146255371604938308

namespace A226638

/-- `A000032(n)*A116560(6*n)` -/
def P6146255371604938308.Spec : Prop :=
  ∀ n, P6146255371604938308.a n = A226638 n

end A226638

/-! ## A226638.P13416726795596529145

`xor(1, A111954(n))*A000032(n)`
-/

namespace A226638.P13416726795596529145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A111954 n) * A000032 n

end

end A226638.P13416726795596529145

namespace A226638

/-- `xor(1, A111954(n))*A000032(n)` -/
def P13416726795596529145.Spec : Prop :=
  ∀ n, P13416726795596529145.a n = A226638 n

end A226638

/-! ## A226638.P9720176750947086931

`abs(A176981(n+1))*A000032(n)`
-/

namespace A226638.P9720176750947086931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 (n + 1)| * A000032 n

end

end A226638.P9720176750947086931

namespace A226638

/-- `abs(A176981(n+1))*A000032(n)` -/
def P9720176750947086931.Spec : Prop :=
  ∀ n, P9720176750947086931.a n = A226638 n

end A226638

/-! ## A226638.P9826472884127791728

`floor(A052542(n)/2)*A000032(n)`
-/

namespace A226638.P9826472884127791728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A052542 n : ℚ) / 2⌋ * A000032 n

end

end A226638.P9826472884127791728

namespace A226638

/-- `floor(A052542(n)/2)*A000032(n)` -/
def P9826472884127791728.Spec : Prop :=
  ∀ n, P9826472884127791728.a n = A226638 n

end A226638

/-! ## A226638.P13071043559282634091

`Δ[A000204(n+1)]*A000129(n)`
-/

namespace A226638.P13071043559282634091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000204 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000129 n

end

end A226638.P13071043559282634091

namespace A226638

/-- `Δ[A000204(n+1)]*A000129(n)` -/
def P13071043559282634091.Spec : Prop :=
  ∀ n, P13071043559282634091.a n = A226638 n

end A226638

/-! ## A226638.P12028183762516392077

`A000032(n)/2*Δ[A001333(n)]`
-/

namespace A226638.P12028183762516392077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001333 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000032 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A226638.P12028183762516392077

namespace A226638

/-- `A000032(n)/2*Δ[A001333(n)]` -/
def P12028183762516392077.Spec : Prop :=
  ∀ n, P12028183762516392077.a n = (A226638 n : ℚ)

end A226638

/-! ## A226638.P9862332585712135520

`A000129(n)/2*Δ[A022112(n)]`
-/

namespace A226638.P9862332585712135520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022112 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000129 n : ℚ) / 2 * (f1 (n + 1) - f1 n : ℚ)

end

end A226638.P9862332585712135520

namespace A226638

/-- `A000129(n)/2*Δ[A022112(n)]` -/
def P9862332585712135520.Spec : Prop :=
  ∀ n, P9862332585712135520.a n = (A226638 n : ℚ)

end A226638

/-! ## A226638.P4060730588319011201

`A000032(n)*Δ[-∑[A176981(n)]]`
-/

namespace A226638.P4060730588319011201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176981 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 n * (f1 (n + 1) - f1 n)

end

end A226638.P4060730588319011201

namespace A226638

/-- `A000032(n)*Δ[-∑[A176981(n)]]` -/
def P4060730588319011201.Spec : Prop :=
  ∀ n, P4060730588319011201.a n = A226638 n

end A226638

/-! ## A226638.P17463613074578028083

`(A006684(n)+A000045(n))*A000032(n)`
-/

namespace A226638.P17463613074578028083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006684 n + A000045 n) * A000032 n

end

end A226638.P17463613074578028083

namespace A226638

/-- `(A006684(n)+A000045(n))*A000032(n)` -/
def P17463613074578028083.Spec : Prop :=
  ∀ n, P17463613074578028083.a n = A226638 n

end A226638

/-!
# A226639: a(n) = n^4/8 + (5*n^3)/12 - n^2/8 - (5*n)/12 + 1.

The programs for A226639, there is no canonical definition to state claims against.
-/

/-! ## A226639.P6126484059693788502

`(n-1)^4/8+5*(n-1)^3/12-(n-1)²/8-5*(n-1)/12+1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226639.P6126484059693788502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) ^ 4 : ℚ) / 8 + (5 * ((n : ℤ) - 1) ^ 3 : ℚ) / 12 - (((n : ℤ) - 1) ^ 2 : ℚ) / 8 - (5 * ((n : ℤ) - 1) : ℚ) / 12 + 1

end

end A226639.P6126484059693788502

/-! ## A226639.P14216859957663588839

`∑[∑[∑[a(n-1)+3]]]` with `a(0)=1, a(1)=-2`
-/

namespace A226639.P14216859957663588839
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1, -2] fun n f3 =>
  f3 (n - 1) + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226639.P14216859957663588839

/-! ## A226639.P14438493366366936010

`a(n-1)+(n+1)*C(n-1, 2)` with `a(0)=1`
-/

namespace A226639.P14438493366366936010
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) * Nat.choose ((n : ℤ) - 1).toNat 2

end

end A226639.P14438493366366936010

/-! ## A226639.P8984036055176586728

`∑[A158842(n)-n²]`
-/

namespace A226639.P8984036055176586728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158842 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226639.P8984036055176586728

/-! ## A226639.P14035613176735559285

`∑[1+n*(n+1)*(n-1)/2-A000290(n)]`
-/

namespace A226639.P14035613176735559285
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 + ((n * (n + 1) : ℤ) * ((n : ℤ) - 1) : ℚ) / 2 - (A000290 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A226639.P14035613176735559285

/-! ## A226639.P6348000421893550410

`A337898(n+1)%A153977(n+1)`
-/

namespace A226639.P6348000421893550410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A337898 (n + 1)) (A153977 (n + 1))

end

end A226639.P6348000421893550410

/-! ## A226639.P11484692034354424346

`A125811(A212342(n))`
-/

namespace A226639.P11484692034354424346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125811 (A212342 n).toNat

end

end A226639.P11484692034354424346

/-! ## A226639.P4381887063644336284

`A125811(A175631(n+2))`
-/

namespace A226639.P4381887063644336284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125811 (A175631 (n + 2)).toNat

end

end A226639.P4381887063644336284

/-! ## A226639.P11206595434015729701

`A105794(∑[n+3])`
-/

namespace A226639.P11206595434015729701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105794 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226639.P11206595434015729701

/-!
# A226640: a(n) = 2^x+2^y where p(n) is the n-th prime of the form 4*k+1 and x, y is the unique integer solution to p(n) = x^2+y^2.

The programs for A226640, there is no canonical definition to state claims against.
-/

/-! ## A226640.P13112369777507851268

`2^A002972(n+1)+4^A002973(n+1)`
-/

namespace A226640.P13112369777507851268
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A002972 (n + 1) : ℤ) + (4 : ℚ) ^ (A002973 (n + 1) : ℤ)

end

end A226640.P13112369777507851268

/-!
# A226641: Number of ways to express 2/n as Egyptian fractions in just three terms; i.e., 2/n = 1/x + 1/y + 1/z satisfying 1<=x<=y<=z.

The programs for A226641, there is no canonical definition to state claims against.
-/

/-! ## A226641.P15541777587427839482

`A192787(2*(n+1))`
-/

namespace A226641.P15541777587427839482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192787 (2 * (n + 1))

end

end A226641.P15541777587427839482

/-! ## A226641.P9724949803016959641

`or(A000007(n), A192787(n+2+n))`
-/

namespace A226641.P9724949803016959641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A192787 (n + 2 + n))

end

end A226641.P9724949803016959641

/-! ## A226641.P9591740474597083662

`A192787(n+2+n)/A000041(C(2, n+2))`
-/

namespace A226641.P9591740474597083662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192787 (n + 2 + n) : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A226641.P9591740474597083662

/-! ## A226641.P17054354814719321114

`A192787(n+2+n)^A001221(A034444(n+1))`
-/

namespace A226641.P17054354814719321114
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192787 (n + 2 + n) : ℚ) ^ (A001221 (A034444 (n + 1)).toNat : ℤ)

end

end A226641.P17054354814719321114

/-! ## A226641.P4402432308256093649

`A226645(3*(n+1))`
-/

namespace A226641.P4402432308256093649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226645 (3 * (n + 1))

end

end A226641.P4402432308256093649

/-!
# A226642: Number of ways to express 3/n as Egyptian fractions in just three terms; i.e., 3/n = 1/x + 1/y + 1/z satisfying 1<=x<=y<=z.

The programs for A226642, there is no canonical definition to state claims against.
-/

/-! ## A226642.P4592439520081440566

`A226645(2*(n+1))`
-/

namespace A226642.P4592439520081440566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226645 (2 * (n + 1))

end

end A226642.P4592439520081440566

/-! ## A226642.P651245207251572725

`or(char[1], A226645(n+2+n))`
-/

namespace A226642.P651245207251572725
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A226645 (n + 2 + n))

end

end A226642.P651245207251572725

/-! ## A226642.P203186879269710475

`A000027(A226645(n+2+n))`
-/

namespace A226642.P203186879269710475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A226645 (n + 2 + n)).toNat

end

end A226642.P203186879269710475

/-! ## A226642.P7469841462301771792

`A226645(n+2+n)%A017569(n)`
-/

namespace A226642.P7469841462301771792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226645 (n + 2 + n)) (A017569 n)

end

end A226642.P7469841462301771792

/-! ## A226642.P13438007131711135509

`A226645(n+2+n)/A007318(C(2, n))`
-/

namespace A226642.P13438007131711135509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226645 (n + 2 + n) : ℚ) / (A007318 (Nat.choose 2 n) : ℚ)

end

end A226642.P13438007131711135509

/-! ## A226642.P3831284922499016354

`A226645(n+2+n)^A007318(C(3, n))`
-/

namespace A226642.P3831284922499016354
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226645 (n + 2 + n) : ℚ) ^ (A007318 (Nat.choose 3 n) : ℤ)

end

end A226642.P3831284922499016354

/-! ## A226642.P2548041089170550902

`A226645(n+2+n)^ceil(n/A000041(n))`
-/

namespace A226642.P2548041089170550902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226645 (n + 2 + n) : ℚ) ^ (⌈(n : ℚ) / (A000041 n : ℚ)⌉ : ℤ)

end

end A226642.P2548041089170550902

/-! ## A226642.P7189679145188122090

`A226645(n+2+n)/A000041(C(2, n+2))`
-/

namespace A226642.P7189679145188122090
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226645 (n + 2 + n) : ℚ) / (A000041 (Nat.choose 2 (n + 2)) : ℚ)

end

end A226642.P7189679145188122090

/-! ## A226642.P7774917600635198161

`A226645(n+2+n)/A000108(C(2, n+2))`
-/

namespace A226642.P7774917600635198161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226645 (n + 2 + n) : ℚ) / (A000108 (Nat.choose 2 (n + 2)) : ℚ)

end

end A226642.P7774917600635198161

/-!
# A226643: Numbers n such that the binary XOR of the divisors of n (A178910) is a binary palindrome (A006995) and not a power of 2 (A000079).

The programs for A226643, there is no canonical definition to state claims against.
-/

/-! ## A226643.P1480963115717329017

`A179867(A195268(n+1)+1)`
-/

namespace A226643.P1480963115717329017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179867 (A195268 (n + 1) + 1).toNat

end

end A226643.P1480963115717329017

/-! ## A226643.P15284495294145855947

`filter[A179867(n+3), A053866(#)]`
-/

namespace A226643.P15284495294145855947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179867 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A053866 (f1 j).toNat = 1) n)

end

end A226643.P15284495294145855947

/-!
# A226649: Fibonacci shuffles: a(2n) = A000071(n) and a(2n+1) = A001611(n+2).

The programs for A226649, the canonical program `A226649.P15664765570718738223` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226649 has offset 0).

The definition of A226649 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 959 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226649.P15664765570718738223

`A000045(floor((n-1)/2))+a(n-2)` with `a(0)=0, a(1)=2`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A226649

/-- `A000045(floor((n-1)/2))+a(n-2)` -/
def P15664765570718738223.Spec : Prop :=
  ∀ n, P15664765570718738223.a n = A226649 n

theorem P15664765570718738223.correct : P15664765570718738223.Spec := by
  intro n
  simp only [A226649]

end A226649

/-! ## A226649.P14479940537770499011

`A000045(A080513(n))-A033999(n)`
-/

namespace A226649.P14479940537770499011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A080513 n).toNat - A033999 n

end

end A226649.P14479940537770499011

namespace A226649

/-- `A000045(A080513(n))-A033999(n)` -/
def P14479940537770499011.Spec : Prop :=
  ∀ n, P14479940537770499011.a n = A226649 n

end A226649

/-! ## A226649.P9130486017081950016

`A033999(n+1)+A000045(A080513(n))`
-/

namespace A226649.P9130486017081950016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A000045 (A080513 n).toNat

end

end A226649.P9130486017081950016

namespace A226649

/-- `A033999(n+1)+A000045(A080513(n))` -/
def P9130486017081950016.Spec : Prop :=
  ∀ n, P9130486017081950016.a n = A226649 n

end A226649

/-! ## A226649.P15360892436649047409

`n+1-(A014681(n+1)-A053602(A014681(n+1)))`
-/

namespace A226649.P15360892436649047409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - (A014681 (n + 1) - A053602 (A014681 (n + 1)).toNat)

end

end A226649.P15360892436649047409

namespace A226649

/-- `n+1-(A014681(n+1)-A053602(A014681(n+1)))` -/
def P15360892436649047409.Spec : Prop :=
  ∀ n, P15360892436649047409.a n = A226649 n

end A226649

/-! ## A226649.P782621785236922934

`abs(Δ[Δ[A131524(n+2)]]+1)`
-/

namespace A226649.P782621785236922934
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131524 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n + 1|

end

end A226649.P782621785236922934

namespace A226649

/-- `abs(Δ[Δ[A131524(n+2)]]+1)` -/
def P782621785236922934.Spec : Prop :=
  ∀ n, P782621785236922934.a n = A226649 n

end A226649

/-! ## A226649.P11676518866456531961

`A355018(n+1)+A355019(n)-A033999(n)`
-/

namespace A226649.P11676518866456531961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355018 (n + 1) + (A355019 n - A033999 n)

end

end A226649.P11676518866456531961

namespace A226649

/-- `A355018(n+1)+A355019(n)-A033999(n)` -/
def P11676518866456531961.Spec : Prop :=
  ∀ n, P11676518866456531961.a n = A226649 n

end A226649

/-! ## A226649.P12894902842262986791

`A033999(n+1)+A355019(n)+A355018(n+1)`
-/

namespace A226649.P12894902842262986791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + (A355019 n + A355018 (n + 1))

end

end A226649.P12894902842262986791

namespace A226649

/-- `A033999(n+1)+A355019(n)+A355018(n+1)` -/
def P12894902842262986791.Spec : Prop :=
  ∀ n, P12894902842262986791.a n = A226649 n

end A226649

/-! ## A226649.P11688405228013091412

`Δ[A096748(n)+a(n-2)]` with `a(0)=1, a(1)=1`
-/

namespace A226649.P11688405228013091412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A096748 n + f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A226649.P11688405228013091412

namespace A226649

/-- `Δ[A096748(n)+a(n-2)]` -/
def P11688405228013091412.Spec : Prop :=
  ∀ n, P11688405228013091412.a n = A226649 n

end A226649

/-! ## A226649.P18225959255261249093

`A000045(A275416(∑[n+1]+1))-A033999(n)`
-/

namespace A226649.P18225959255261249093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A275416 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat - A033999 n

end

end A226649.P18225959255261249093

namespace A226649

/-- `A000045(A275416(∑[n+1]+1))-A033999(n)` -/
def P18225959255261249093.Spec : Prop :=
  ∀ n, P18225959255261249093.a n = A226649 n

end A226649

/-! ## A226649.P3701999150823249326

`A033999(n+1)+A000045(A275416(∑[n+1]+1))`
-/

namespace A226649.P3701999150823249326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) + A000045 (A275416 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A226649.P3701999150823249326

namespace A226649

/-- `A033999(n+1)+A000045(A275416(∑[n+1]+1))` -/
def P3701999150823249326.Spec : Prop :=
  ∀ n, P3701999150823249326.a n = A226649 n

end A226649

/-!
# A226652: Numbers n such that 6n - /+ 1 are twin prime pair and n = r + s where 6r - /+ 1 and 6s - / 1 are consecutive smaller pairs of twin primes.

The programs for A226652, there is no canonical definition to state claims against.
-/

/-! ## A226652.P10344888483561288449

`A160916(n+1)/6`
-/

namespace A226652.P10344888483561288449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160916 (n + 1) : ℚ) / 6

end

end A226652.P10344888483561288449

/-! ## A226652.P7951831739370753281

`ceil(A225943(n+1)/6)`
-/

namespace A226652.P7951831739370753281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A225943 (n + 1) : ℚ) / 6⌉

end

end A226652.P7951831739370753281

/-! ## A226652.P5624853735320428343

`floor(A007318(C(2, n))+A225943(n+1)/6)`
-/

namespace A226652.P5624853735320428343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007318 (Nat.choose 2 n) : ℚ) + (A225943 (n + 1) : ℚ) / 6⌋

end

end A226652.P5624853735320428343

/-! ## A226652.P7134829095387590436

`and(round(A225943(n+1)/6), A153881(n+2))`
-/

namespace A226652.P7134829095387590436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway ((A225943 (n + 1) : ℚ) / 6)) (A153881 (n + 2))

end

end A226652.P7134829095387590436

/-! ## A226652.P1855949183189164822

`A353461(A225943(n+1))`
-/

namespace A226652.P1855949183189164822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (A225943 (n + 1)).toNat

end

end A226652.P1855949183189164822

/-! ## A226652.P12534995153253371590

`A353461(A160916(n+1)+1)`
-/

namespace A226652.P12534995153253371590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353461 (A160916 (n + 1) + 1).toNat

end

end A226652.P12534995153253371590

/-! ## A226652.P3973794209563886280

`A255591(A160916(n+1))`
-/

namespace A226652.P3973794209563886280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255591 (A160916 (n + 1)).toNat

end

end A226652.P3973794209563886280

/-!
# A226653: Numbers n for which A226182(n^2) = n.

The programs for A226653, there is no canonical definition to state claims against.
-/

/-! ## A226653.P16956523913717647364

`p?[or(1, A203076(2*n))]`
-/

namespace A226653.P16956523913717647364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A203076 (2 * n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A226653.P16956523913717647364

/-! ## A226653.P4943450819338104372

`p?[lt[A117118(n+5), val(n+1, 2)+1]]`
-/

namespace A226653.P4943450819338104372
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117118 (n + 5)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A226653.P4943450819338104372

/-! ## A226653.P10080571414209887698

`A067629(A301590(n+2)²)`
-/

namespace A226653.P10080571414209887698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067629 (A301590 (n + 2) ^ 2).toNat

end

end A226653.P10080571414209887698

/-! ## A226653.P10314199007744936675

`∩[A116959(n+1), A203076(n)]`
-/

namespace A226653.P10314199007744936675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203076 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226653.P10314199007744936675

/-! ## A226653.P8960609252192000933

`eq[A158972(n+1), A354366(n+1)]`
-/

namespace A226653.P8960609252192000933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354366 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A226653.P8960609252192000933

/-!
# A226657: Smallest of the first four consecutive primes that comprise two sets of primes with difference 2*n.

The programs for A226657, there is no canonical definition to state claims against.
-/

/-! ## A226657.P5958333187108317946

`A229021(xor(8, n+9))`
-/

namespace A226657.P5958333187108317946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229021 (Nat.xor 8 (n + 9))

end

end A226657.P5958333187108317946

/-! ## A226657.P16911004326959105748

`A229021(C(comp[8*n], n))`
-/

namespace A226657.P16911004326959105748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229021 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) n)

end

end A226657.P16911004326959105748

/-! ## A226657.P7130791177369474965

`A229021(((n+1)/∏{p}[n+1, #^val(n+1, #²)])^((n+1)/∏{p}[n+1, #]))`
-/

namespace A226657.P7130791177369474965
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229021 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) (p ^ 2) : ℕ) : ℚ) : ℝ) ^ ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) : ℝ))).toNat

end

end A226657.P7130791177369474965

/-!
# A226658: T(n,k)=Number of nXk 0..4 arrays of sums of 2X2 subblocks of some (n+1)X(k+1) binary array.

The programs for A226658, there is no canonical definition to state claims against.
-/

/-! ## A226658.P198737943777111863

`A262307(eq[0, A103451(n)]+1)`
-/

namespace A226658.P198737943777111863
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A226658.P198737943777111863

/-! ## A226658.P13315325614643710363

`A262307(eq[0, A158821(n)]+1)`
-/

namespace A226658.P13315325614643710363
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A226658.P13315325614643710363

/-! ## A226658.P1406610194136834788

`A262307(lt[1, A262307(n+1)]+1)`
-/

namespace A226658.P1406610194136834788
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A226658.P1406610194136834788

/-! ## A226658.P2050472244339241232

`A262307(eq[n+1, (n+1)%A290632(n+1)]+1)`
-/

namespace A226658.P2050472244339241232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A290632 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A226658.P2050472244339241232

/-! ## A226658.P6954259513476773266

`A262307(A003057(n+2)²-A023443(n))`
-/

namespace A226658.P6954259513476773266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262307 (A003057 (n + 2) ^ 2 - A023443 n).toNat

end

end A226658.P6954259513476773266

/-!
# A226659: Sum_{k=0..n} A000041( binomial(n,k) ), where A000041(n) is the number of partitions of n.

The programs for A226659, there is no canonical definition to state claims against.
-/

/-! ## A226659.P5773074867744867735

`∑{#}[n, A000041(C(n, #))]`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A226659.P5773074867744867735
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A000041 (Nat.choose n k)

end

end A226659.P5773074867744867735

/-! ## A226659.P2318434095143912157

`A321979(A032277(n+1))+A001654(n)`
-/

namespace A226659.P2318434095143912157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321979 (A032277 (n + 1)).toNat + A001654 n

end

end A226659.P2318434095143912157

/-!
# A226663: Conjectured record-breaking numbers, for ascending positive integers k, of primitive cycles of positive integers under iteration by the Collatz-like 3x+k function.

The programs for A226663, there is no canonical definition to state claims against.
-/

/-! ## A226663.P7493022544010741655

`record[A226613(n+1)]`
-/

namespace A226663.P7493022544010741655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226663.P7493022544010741655

/-!
# A226664: Integer k associated with the record-breaking number A226663(n) of primitive Collatz-like 3x+k cycles.

The programs for A226664, there is no canonical definition to state claims against.
-/

/-! ## A226664.P1920167220802237226

`A226662(A226663(n+1))`
-/

namespace A226664.P1920167220802237226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226662 (A226663 (n + 1)).toNat

end

end A226664.P1920167220802237226

/-! ## A226664.P16344740614206369894

`A226662(record[A226613(n+1)])`
-/

namespace A226664.P16344740614206369894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226662 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226664.P16344740614206369894

/-! ## A226664.P15457575270326893553

`A226662(record[A226612(n+2)-A226612(n+1)])`
-/

namespace A226664.P15457575270326893553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226612 (n + 2) - A226612 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226662 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226664.P15457575270326893553

/-!
# A226665: Conjectured record-breaking maximal values, for ascending positive integers k, of the minimal elements of the primitive cycles of positive integers under iteration by the Collatz-like 3x+k function.

The programs for A226665, there is no canonical definition to state claims against.
-/

/-! ## A226665.P4396705643717750197

`record[A226607(A226612(n+2)-1)]`
-/

namespace A226665.P4396705643717750197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226607 (A226612 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226665.P4396705643717750197

/-!
# A226666: Integer k associated with the conjectured record-breaking maximal value A226665(n) of the minimal elements of primitive Collatz-like 3x+k cycles.

The programs for A226666, there is no canonical definition to state claims against.
-/

/-! ## A226666.P3292309376195821811

`A072012(A339404(3*(n+1))+A051564(n))`
-/

namespace A226666.P3292309376195821811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072012 (A339404 (3 * (n + 1)) + A051564 n).toNat

end

end A226666.P3292309376195821811

/-!
# A226668: Integer k associated with the conjectured record-breaking maximal element A226667(n) of primitive Collatz-like 3x+k cycles.

The programs for A226668, there is no canonical definition to state claims against.
-/

/-! ## A226668.P17316800776142235362

`A331856(A036037(3*(n+1))+A002059(n+6))`
-/

namespace A226668.P17316800776142235362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331856 (A036037 (3 * (n + 1)) + A002059 (n + 6)).toNat

end

end A226668.P17316800776142235362

/-!
# A226670: Record-breaking values, for increasing positive integers k == 1 or 5 mod 6, of the conjectured length of the longest primitive cycle(s) of positive integers under iteration by the Collatz-like 3x+k function.

The programs for A226670, there is no canonical definition to state claims against.
-/

/-! ## A226670.P12971673529250407662

`record[A226609(A080414(n)+1)]`
-/

namespace A226670.P12971673529250407662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (A080414 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226670.P12971673529250407662

/-! ## A226670.P16016297290774133534

`record[A226609(A262429(n+1))]`
-/

namespace A226670.P16016297290774133534
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (A262429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226670.P16016297290774133534

/-! ## A226670.P2714192463857797214

`record[A226609(A344180(n+8))]`
-/

namespace A226670.P2714192463857797214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (A344180 (n + 8)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226670.P2714192463857797214

/-! ## A226670.P6183072874792447483

`record[A226609(A226577(n)+1)]`
-/

namespace A226670.P6183072874792447483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (A226577 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226670.P6183072874792447483

/-! ## A226670.P8524700477470874338

`record[A226609(A227417(n+1))]`
-/

namespace A226670.P8524700477470874338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (A227417 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226670.P8524700477470874338

/-!
# A226671: Integer k associated with the conjectured record-breaking length A226670(n) of primitive Collatz-like 3x+k cycles.

The programs for A226671, there is no canonical definition to state claims against.
-/

/-! ## A226671.P12283207209454318718

`A226660(A226670(n+1))`
-/

namespace A226671.P12283207209454318718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226660 (A226670 (n + 1)).toNat

end

end A226671.P12283207209454318718

/-! ## A226671.P16454400486777805307

`A226660(record[A226609(n+3)]%A174915(3*n+1))`
-/

namespace A226671.P16454400486777805307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226609 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226660 (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A174915 (3 * n + 1))).toNat

end

end A226671.P16454400486777805307

/-! ## A226671.P5637762120681644569

`A226660(record[A226609(n+4)%A205844(3*(n+1))])`
-/

namespace A226671.P5637762120681644569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226609 (n + 4)) (A205844 (3 * (n + 1)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226660 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226671.P5637762120681644569

/-!
# A226672: Smallest positive integer in the primitive Collatz-like 3x+k cycle(s) with the conjectured record-breaking length A226670(n).

The programs for A226672, there is no canonical definition to state claims against.
-/

/-! ## A226672.P1571833230470828541

`A226675((n+1)^∑{p}[n+1, gcd(n, #)])`
-/

namespace A226672.P1571833230470828541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226675 ((n + 1) ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p))

end

end A226672.P1571833230470828541

/-!
# A226673: Conjectured record-breaking numbers of odd elements, for ascending positive integers k, in primitive cycles of positive integers under iteration by the Collatz-like 3x+k function.

The programs for A226673, there is no canonical definition to state claims against.
-/

/-! ## A226673.P13695969799016379473

`record[A226610(A262429(n+1))]`
-/

namespace A226673.P13695969799016379473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226610 (A262429 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226673.P13695969799016379473

/-! ## A226673.P1962111439405047106

`record[A226610(n+1)*A267868(n)]`
-/

namespace A226673.P1962111439405047106
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226610 (n + 1) * A267868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226673.P1962111439405047106

/-! ## A226673.P2378544601719312477

`record[A226610(n+5)%A226600(3*n+1)]`
-/

namespace A226673.P2378544601719312477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226610 (n + 5)) (A226600 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226673.P2378544601719312477

/-! ## A226673.P11923925251733368752

`record[A226610(A226578(3*n)+1)]`
-/

namespace A226673.P11923925251733368752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226610 (A226578 (3 * n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226673.P11923925251733368752

/-! ## A226673.P4185581002468920133

`record[A226610(A226583(abs(1-8*n)))]`
-/

namespace A226673.P4185581002468920133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226610 (A226583 |1 - (8 * n : ℤ)|.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226673.P4185581002468920133

/-!
# A226674: Integer k associated with the conjectured record-breaking number A226673(n) of odd elements in a primitive Collatz-like 3x+k cycle.

The programs for A226674, there is no canonical definition to state claims against.
-/

/-! ## A226674.P8404670627891926857

`A226661(A226673(n+1))`
-/

namespace A226674.P8404670627891926857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226661 (A226673 (n + 1)).toNat

end

end A226674.P8404670627891926857

/-! ## A226674.P1073720261438090747

`A226661(record[A226610(n+1)*A267868(n)])`
-/

namespace A226674.P1073720261438090747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226610 (n + 1) * A267868 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226661 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226674.P1073720261438090747

/-! ## A226674.P3711819161697170691

`A226661(record[A226610(n+5)%A226600(3*n+1)])`
-/

namespace A226674.P3711819161697170691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A226610 (n + 5)) (A226600 (3 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226661 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226674.P3711819161697170691

/-! ## A226674.P8042640266393123596

`∩[A174670(n+1), A226671(n+1)]`
-/

namespace A226674.P8042640266393123596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174670 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226671 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226674.P8042640266393123596

/-!
# A226675: Smallest element in the primitive Collatz-like 3x+k cycle(s) associated with the conjectured record-breaking number A226673(n) of odd elements.

The programs for A226675, there is no canonical definition to state claims against.
-/

/-! ## A226675.P11782636801261038029

`A226672((comp[2*n+5]+1)*A284099(n+1))`
-/

namespace A226675.P11782636801261038029
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226672 ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℤ) * A284099 (n + 1)).toNat

end

end A226675.P11782636801261038029

/-! ## A226675.P10529597801461896891

`A226672((comp[2*n+5]+1)^A321649(2*n+1))`
-/

namespace A226675.P10529597801461896891
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226672 (SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1 : ℚ) ^ (A321649 (2 * n + 1) : ℤ))).toNat

end

end A226675.P10529597801461896891

/-! ## A226675.P16864272239412010433

`A226672(A117290(n+1)^A279222(n))`
-/

namespace A226675.P16864272239412010433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226672 (SequenceMachineLib.roundAway ((A117290 (n + 1) : ℚ) ^ (A279222 n : ℤ))).toNat

end

end A226675.P16864272239412010433

/-!
# A226677: Smallest positive integer k (or 0 if no such k) with a primitive cycle of positive integers, exactly n of which are odd, under iteration by the Collatz-like 3x-k function.

The programs for A226677, there is no canonical definition to state claims against.
-/

/-! ## A226677.P8157462477050686565

`A321298(∑[9^n])`
-/

namespace A226677.P8157462477050686565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321298 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A226677.P8157462477050686565

/-!
# A226679: Record-breaking values, for increasing k = A226630(n), of the conjectured number of primitive cycles of positive integers under iteration by the Collatz-like 3x-k function.

The programs for A226679, there is no canonical definition to state claims against.
-/

/-! ## A226679.P5339968046306626508

`record[A226629(n+1)]`
-/

namespace A226679.P5339968046306626508
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226679.P5339968046306626508

/-! ## A226679.P8254876921664912701

`record[A226629(A065033(n))/(-1)^n]`
-/

namespace A226679.P8254876921664912701
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A226629 (A065033 n).toNat : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226679.P8254876921664912701

/-! ## A226679.P9022003726519870356

`record[A226628(n+2)-A226628(n+1)]`
-/

namespace A226679.P9022003726519870356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226628 (n + 2) - A226628 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226679.P9022003726519870356

/-!
# A226681: Conjectured record-breaking maximal values, for ascending positive integers k, of the minimal elements of the primitive cycles of positive integers under iteration by the Collatz-like 3x-k function.

The programs for A226681, there is no canonical definition to state claims against.
-/

/-! ## A226681.P4980781579267748810

`record[A226623(∑[A226629(n+1)])]`
-/

namespace A226681.P4980781579267748810
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226629 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226623 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226681.P4980781579267748810

/-!
# A226682: Integer k associated with the conjectured record-breaking maximal value A226681(n) of the minimal elements of primitive Collatz-like 3x-k cycles.

The programs for A226682, there is no canonical definition to state claims against.
-/

/-! ## A226682.P4011342314324980000

`∩[A089084(n+1), A226630(n+1)]`
-/

namespace A226682.P4011342314324980000
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089084 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226682.P4011342314324980000

/-! ## A226682.P14200548224678717203

`A006530(A226630(n+1)*A327057(n))`
-/

namespace A226682.P14200548224678717203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A226630 (n + 1) * A327057 n).toNat

end

end A226682.P14200548224678717203

/-!
# A226684: Integer k associated with the conjectured record-breaking maximal element A226683(n) of primitive 3x-k cycles.

The programs for A226684, there is no canonical definition to state claims against.
-/

/-! ## A226684.P5067934123614197429

`A201132(A171185(n+1))`
-/

namespace A226684.P5067934123614197429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201132 (A171185 (n + 1)).toNat

end

end A226684.P5067934123614197429

/-!
# A226686: Conjectured record-breaking lengths, for ascending positive integers k, of primitive cycles of positive integers under iteration by the Collatz-like 3x-k function.

The programs for A226686, there is no canonical definition to state claims against.
-/

/-! ## A226686.P17823731159255217383

`record[A226625(A226628(n+2)-1)]`
-/

namespace A226686.P17823731159255217383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226625 (A226628 (n + 2) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226686.P17823731159255217383

/-! ## A226686.P10903849821313561059

`record[A226625(A182766(n+1)+1)]`
-/

namespace A226686.P10903849821313561059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226625 (A182766 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226686.P10903849821313561059

/-! ## A226686.P9548213079124796985

`record[A226625(A007444(n+1)+val(n+1, 2)+1)]`
-/

namespace A226686.P9548213079124796985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226625 (A007444 (n + 1) + (SequenceMachineLib.valuation (n + 1) 2 + 1 : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A226686.P9548213079124796985

/-! ## A226686.P6065442647459826835

`A056576(A226689(n+1)*A290684(n))`
-/

namespace A226686.P6065442647459826835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056576 (A226689 (n + 1) * A290684 n).toNat

end

end A226686.P6065442647459826835

/-!
# A226687: Integer k associated with the conjectured record-breaking length A226686(n) of primitive Collatz-like 3x-k cycles.

The programs for A226687, there is no canonical definition to state claims against.
-/

/-! ## A226687.P17323110938971050097

`A226677(A226689(n+1))`
-/

namespace A226687.P17323110938971050097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226677 (A226689 (n + 1)).toNat

end

end A226687.P17323110938971050097

/-! ## A226687.P8248441413263357831

`A226677(record[A226626(n+3)])`
-/

namespace A226687.P8248441413263357831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226626 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226677 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A226687.P8248441413263357831

/-!
# A226689: Conjectured record-breaking numbers of odd elements, for ascending positive integers k, in primitive cycles of positive integers under iteration by the Collatz-like 3x-k function.

The programs for A226689, there is no canonical definition to state claims against.
-/

/-! ## A226689.P14436002308431466277

`A226720(A226686(n+1))-A226686(n+1)`
-/

namespace A226689.P14436002308431466277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226720 (A226686 (n + 1)).toNat - A226686 (n + 1)

end

end A226689.P14436002308431466277

/-!
# A226690: Irregular table read by rows: T(m,n) = Numerators of minimal distance between m elements of the Farey sequence F_n.

The programs for A226690, there is no canonical definition to state claims against.
-/

/-! ## A226690.P9533226293718167690

`A352419(A049455(n+1)^A256384(n))`
-/

namespace A226690.P9533226293718167690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352419 (SequenceMachineLib.roundAway ((A049455 (n + 1) : ℚ) ^ (A256384 n : ℤ))).toNat

end

end A226690.P9533226293718167690

/-! ## A226690.P18425740998840252699

`A146263(n+1)%A000005(A225530(n))`
-/

namespace A226690.P18425740998840252699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146263 (n + 1)) (A000005 (A225530 n).toNat)

end

end A226690.P18425740998840252699

/-! ## A226690.P4726097315813766569

`A078080(A051852(n+2)-1)`
-/

namespace A226690.P4726097315813766569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078080 (A051852 (n + 2) - 1).toNat

end

end A226690.P4726097315813766569

/-! ## A226690.P15351909608087407288

`dr(A049455(n+1)^A176242(n+1))`
-/

namespace A226690.P15351909608087407288
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A049455 (n + 1) : ℚ) ^ (A176242 (n + 1) : ℤ)))

end

end A226690.P15351909608087407288

/-! ## A226690.P1679007631449343349

`dr(A049455(n+1)^A351241(n+1))`
-/

namespace A226690.P1679007631449343349
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (SequenceMachineLib.roundAway ((A049455 (n + 1) : ℚ) ^ (A351241 (n + 1) : ℤ)))

end

end A226690.P1679007631449343349

/-!
# A226692: The first member of a twin prime pair whose sum equals the sums of k consecutive smaller pairs of twin primes, k=3.

The programs for A226692, there is no canonical definition to state claims against.
-/

/-! ## A226692.P2155749649880008765

`A160917(n+1)-1`
-/

namespace A226692.P2155749649880008765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160917 (n + 1) - 1

end

end A226692.P2155749649880008765

/-! ## A226692.P10241379372297574812

`A260196(n+2)+A160917(n+1)`
-/

namespace A226692.P10241379372297574812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (n + 2) + A160917 (n + 1)

end

end A226692.P10241379372297574812

/-! ## A226692.P7222674993782011443

`A280193(Δ[n²])+A160917(n+1)`
-/

namespace A226692.P7222674993782011443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A160917 (n + 1)

end

end A226692.P7222674993782011443

/-! ## A226692.P4738179192790810853

`A295731(∑[A033999(n)])+A160917(n+1)`
-/

namespace A226692.P4738179192790810853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A160917 (n + 1)

end

end A226692.P4738179192790810853

/-! ## A226692.P15514228747386339754

`A355688(A000040(2*n+3))+A160917(n+1)`
-/

namespace A226692.P15514228747386339754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355688 (A000040 (2 * n + 3)).toNat + A160917 (n + 1)

end

end A226692.P15514228747386339754

/-! ## A226692.P9908631623980808372

`A292164(A292164(C(n, n+1)))+A160917(n+1)`
-/

namespace A226692.P9908631623980808372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292164 (A292164 (Nat.choose n (n + 1))).toNat + A160917 (n + 1)

end

end A226692.P9908631623980808372

/-! ## A226692.P9068633014211109608

`A295731(A094497(n))+A160917(n+1)`
-/

namespace A226692.P9068633014211109608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295731 (A094497 n).toNat + A160917 (n + 1)

end

end A226692.P9068633014211109608

/-!
# A226693: Squarefree parts of A079896(n), n>= 1.

The programs for A226693, the canonical program `A226693.P1469923415629545988` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A226693 has offset 1).

The definition of A226693 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A226693.P1469923415629545988

`A007913(A079896(n+1))`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A226693

/-- `A007913(A079896(n+1))` -/
def P1469923415629545988.Spec : Prop :=
  ∀ n, P1469923415629545988.a n = A226693 (n + 1)

theorem P1469923415629545988.correct : P1469923415629545988.Spec := by
  intro n
  simp only [A226693, Nat.add_sub_cancel]

end A226693

/-! ## A226693.P10568221788021725469

`A007913(lt[A000122(n), 1-and(2, n)])`
-/

namespace A226693.P10568221788021725469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (Nat.land 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A226693.P10568221788021725469

namespace A226693

/-- `A007913(lt[A000122(n), 1-and(2, n)])` -/
def P10568221788021725469.Spec : Prop :=
  ∀ n, P10568221788021725469.a n = A226693 (n + 1)

end A226693

/-! ## A226693.P807829428868183419

`A007913(eq[A000122(n), A021913(n)])`
-/

namespace A226693.P807829428868183419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A226693.P807829428868183419

namespace A226693

/-- `A007913(eq[A000122(n), A021913(n)])` -/
def P807829428868183419.Spec : Prop :=
  ∀ n, P807829428868183419.a n = A226693 (n + 1)

end A226693

/-! ## A226693.P9346274134622895717

`A007913(eq[A000122(n), A050605(n)])`
-/

namespace A226693.P9346274134622895717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000122 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050605 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A226693.P9346274134622895717

namespace A226693

/-- `A007913(eq[A000122(n), A050605(n)])` -/
def P9346274134622895717.Spec : Prop :=
  ∀ n, P9346274134622895717.a n = A226693 (n + 1)

end A226693

/-! ## A226693.P9687274424124338624

`A007913(eq[A010052(n), A132380(n)])`
-/

namespace A226693.P9687274424124338624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A226693.P9687274424124338624

namespace A226693

/-- `A007913(eq[A010052(n), A132380(n)])` -/
def P9687274424124338624.Spec : Prop :=
  ∀ n, P9687274424124338624.a n = A226693 (n + 1)

end A226693

/-! ## A226693.P3178886561730520324

`A007913(eq[A010052(n), A220779(n+1)])`
-/

namespace A226693.P3178886561730520324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220779 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A226693.P3178886561730520324

namespace A226693

/-- `A007913(eq[A010052(n), A220779(n+1)])` -/
def P3178886561730520324.Spec : Prop :=
  ∀ n, P3178886561730520324.a n = A226693 (n + 1)

end A226693

/-!
# A226694: Pell equation solutions (32*a(n))^2 - 41*(5*b(n))^2 = -1 with b(n) := A226695(n), n>=0.

The programs for A226694, there is no canonical definition to state claims against.
-/

/-! ## A226694.P5242279789005233993

`∑[2*A174752(n+1)]-1`
-/

namespace A226694.P5242279789005233993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A174752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A226694.P5242279789005233993

/-!
# A226695: Pell equation solutions (32*b(n))^2 - 41*(5*a(n))^2 = -1 with b(n) = A226694(n), n >= 0.

The programs for A226695, there is no canonical definition to state claims against.
-/

/-! ## A226695.P6024014243593095835

`A041303(A016933(n))/5`
-/

namespace A226695.P6024014243593095835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A041303 (A016933 n).toNat : ℚ) / 5

end

end A226695.P6024014243593095835

/-!
# A226696: Discriminants D of indefinite binary quadratic forms (given in A079896) which allow a solution of the Pell equation x^2 - D*y^2 = -4.

The programs for A226696, there is no canonical definition to state claims against.
-/

/-! ## A226696.P67086149163673069

`∩[A172000(n+1), A341420(n+1)]`
-/

namespace A226696.P67086149163673069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172000 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226696.P67086149163673069

/-! ## A226696.P15578910492787242793

`∩[A057129(n+1), A372519(n+1)]`
-/

namespace A226696.P15578910492787242793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226696.P15578910492787242793

/-! ## A226696.P15984393554334903887

`∩[A341420(n+1), A372519(n+1)]`
-/

namespace A226696.P15984393554334903887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341420 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372519 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226696.P15984393554334903887

/-! ## A226696.P13975300869288158730

`∩[A173298(n+1), A341420(n+1)]`
-/

namespace A226696.P13975300869288158730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173298 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226696.P13975300869288158730

/-! ## A226696.P5501312469585414985

`∩[A197128(n+1), A341420(n+1)]`
-/

namespace A226696.P5501312469585414985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341420 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A226696.P5501312469585414985

