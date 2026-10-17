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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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

/-!
# A086600: Number of primitive prime factors in the n-th Lucas number A000204(n).

The programs for A086600, there is no canonical definition to state claims against.
-/

/-! ## A086600.P12767216312649060242

`A086597(char[2]+2*(n+1))`
-/

namespace A086600.P12767216312649060242
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 ((if ∃ j, f1 j = n then 1 else 0) + 2 * (n + 1))

end

end A086600.P12767216312649060242

/-! ## A086600.P18384477333450702946

`A086597(A103517(n))+char[2]`
-/

namespace A086600.P18384477333450702946
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A103517 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A086600.P18384477333450702946

/-! ## A086600.P13263044901217381844

`A086597(2*(n+1))+A063524(A014681(n))`
-/

namespace A086600.P13263044901217381844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (2 * (n + 1)) + A063524 (A014681 n).toNat

end

end A086600.P13263044901217381844

/-! ## A086600.P16794154277117948108

`A086597(2*(n+1))+A063524(A321986(n))`
-/

namespace A086600.P16794154277117948108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (2 * (n + 1)) + A063524 (A321986 n).toNat

end

end A086600.P16794154277117948108

/-! ## A086600.P3584566647052646232

`or(A000007(A025882(n)), A086597(2*(n+1)))`
-/

namespace A086600.P3584566647052646232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 (A025882 n).toNat) (A086597 (2 * (n + 1)))

end

end A086600.P3584566647052646232

/-! ## A086600.P2946658282975589590

`or(A063524(A003984(n)), A086597(2*(n+1)))`
-/

namespace A086600.P2946658282975589590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A063524 (A003984 n).toNat) (A086597 (2 * (n + 1)))

end

end A086600.P2946658282975589590

/-!
# A086601: Triangular numbers + 1 squared.

The programs for A086601, the canonical program `A086601.P131040437580756644` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086601 has offset 0).

The definition of A086601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086601.P10795027518060410993

`(n+2+n²)²/4`
-/

namespace A086601.P10795027518060410993
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + (2 + n ^ 2)) ^ 2 : ℚ) / 4

end

end A086601.P10795027518060410993

namespace A086601

/-- `(n+2+n²)²/4` -/
def P10795027518060410993.Spec : Prop :=
  ∀ n, P10795027518060410993.a n = (A086601 n : ℚ)

end A086601

/-! ## A086601.P131040437580756644

`A000124(n)²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086601

/-- `A000124(n)²` -/
def P131040437580756644.Spec : Prop :=
  ∀ n, P131040437580756644.a n = A086601 n

theorem P131040437580756644.correct : P131040437580756644.Spec := by
  intro n
  simp only [A086601]

end A086601

/-! ## A086601.P7365134011724261556

`1+A061316(n)`
-/

namespace A086601.P7365134011724261556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A061316 n

end

end A086601.P7365134011724261556

namespace A086601

/-- `1+A061316(n)` -/
def P7365134011724261556.Spec : Prop :=
  ∀ n, P7365134011724261556.a n = A086601 n

end A086601

/-! ## A086601.P6851472946481263345

`(A000217(n)+1)²`
-/

namespace A086601.P6851472946481263345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 n + 1) ^ 2

end

end A086601.P6851472946481263345

namespace A086601

/-- `(A000217(n)+1)²` -/
def P6851472946481263345.Spec : Prop :=
  ∀ n, P6851472946481263345.a n = A086601 n

end A086601

/-! ## A086601.P3989371762504103697

`(∑[n]+1)^(2%(n+2))`
-/

namespace A086601.P3989371762504103697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ (2 % (n + 2))

end

end A086601.P3989371762504103697

namespace A086601

/-- `(∑[n]+1)^(2%(n+2))` -/
def P3989371762504103697.Spec : Prop :=
  ∀ n, (P3989371762504103697.a n : ℤ) = A086601 n

end A086601

/-! ## A086601.P8696114771175042862

`(∑[n]+1)^gcd(2, 2*n)`
-/

namespace A086601.P8696114771175042862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) ^ Nat.gcd 2 (2 * n)

end

end A086601.P8696114771175042862

namespace A086601

/-- `(∑[n]+1)^gcd(2, 2*n)` -/
def P8696114771175042862.Spec : Prop :=
  ∀ n, (P8696114771175042862.a n : ℤ) = A086601 n

end A086601

/-! ## A086601.P13968901387126705264

`(∑[n]+1)^ceil(atan(n+1))`
-/

namespace A086601.P13968901387126705264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℕ) : ℚ) ^ (⌈Real.arctan (n + 1 : ℝ)⌉ : ℤ)

end

end A086601.P13968901387126705264

namespace A086601

/-- `(∑[n]+1)^ceil(atan(n+1))` -/
def P13968901387126705264.Spec : Prop :=
  ∀ n, P13968901387126705264.a n = (A086601 n : ℚ)

end A086601

/-! ## A086601.P6634217940388466716

`∑[a(n-1)-1]²` with `a(0)=-1, a(1)=-1`
-/

namespace A086601.P6634217940388466716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A086601.P6634217940388466716

namespace A086601

/-- `∑[a(n-1)-1]²` -/
def P6634217940388466716.Spec : Prop :=
  ∀ n, P6634217940388466716.a n = A086601 n

end A086601

/-! ## A086601.P6575984551641673524

`∑[a(n-1)+1]^2` with `a(0)=1, a(1)=1`
-/

namespace A086601.P6575984551641673524
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A086601.P6575984551641673524

namespace A086601

/-- `∑[a(n-1)+1]^2` -/
def P6575984551641673524.Spec : Prop :=
  ∀ n, (P6575984551641673524.a n : ℤ) = A086601 n

end A086601

/-! ## A086601.P610261947737982687

`a(n-1)+n*(n²+2)` with `a(0)=1`
-/

namespace A086601.P610261947737982687
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n * (n ^ 2 + 2)

end

end A086601.P610261947737982687

namespace A086601

/-- `a(n-1)+n*(n²+2)` -/
def P610261947737982687.Spec : Prop :=
  ∀ n, (P610261947737982687.a n : ℤ) = A086601 n

end A086601

/-! ## A086601.P14809924186739429580

`2*n+a(n-1)+n^3` with `a(0)=1`
-/

namespace A086601.P14809924186739429580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  2 * n + (a (n - 1) + n ^ 3)

end

end A086601.P14809924186739429580

namespace A086601

/-- `2*n+a(n-1)+n^3` -/
def P14809924186739429580.Spec : Prop :=
  ∀ n, (P14809924186739429580.a n : ℤ) = A086601 n

end A086601

/-! ## A086601.P18416128143145085555

`C(n+1, 2)²+n²+1+n`
-/

namespace A086601.P18416128143145085555
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) 2 ^ 2 + (n ^ 2 + 1 + n)

end

end A086601.P18416128143145085555

namespace A086601

/-- `C(n+1, 2)²+n²+1+n` -/
def P18416128143145085555.Spec : Prop :=
  ∀ n, (P18416128143145085555.a n : ℤ) = A086601 n

end A086601

/-! ## A086601.P15293897445740524526

`a(n-1)+n^3+n+n` with `a(0)=1`
-/

namespace A086601.P15293897445740524526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n ^ 3 + n) + n

end

end A086601.P15293897445740524526

namespace A086601

/-- `a(n-1)+n^3+n+n` -/
def P15293897445740524526.Spec : Prop :=
  ∀ n, (P15293897445740524526.a n : ℤ) = A086601 n

end A086601

/-! ## A086601.P4121545080421899866

`(1/∑[a(n-1)-1])^(-2)` with `a(0)=-1, a(1)=-1`
-/

namespace A086601.P4121545080421899866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n f1 =>
  f1 (n - 1) - 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)) ^ (-2 : ℤ)

end

end A086601.P4121545080421899866

namespace A086601

/-- `(1/∑[a(n-1)-1])^(-2)` -/
def P4121545080421899866.Spec : Prop :=
  ∀ n, P4121545080421899866.a n = (A086601 n : ℚ)

end A086601

/-! ## A086601.P3467561253500096693

`floor(a(n-1)+n*(n*n+2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A086601.P3467561253500096693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n * (n * n + 2)

end

end A086601.P3467561253500096693

namespace A086601

/-- `floor(a(n-1)+n*(n*n+2))` -/
def P3467561253500096693.Spec : Prop :=
  ∀ n, (P3467561253500096693.a n : ℤ) = A086601 n

end A086601

/-! ## A086601.P13678132419804071989

`n*(a(n-1)/n+n*n+2)` with `a(0)=1`
-/

namespace A086601.P13678132419804071989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * (a (n - 1) / (n : ℚ) + (n * n + 2 : ℚ))

end

end A086601.P13678132419804071989

namespace A086601

/-- `n*(a(n-1)/n+n*n+2)` -/
def P13678132419804071989.Spec : Prop :=
  ∀ n, P13678132419804071989.a n = (A086601 n : ℚ)

end A086601

/-! ## A086601.P6365374300443111871

`a(n-1)+n*n*n+n+n` with `a(0)=1`
-/

namespace A086601.P6365374300443111871
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + n * (n * n) + n + n

end

end A086601.P6365374300443111871

namespace A086601

/-- `a(n-1)+n*n*n+n+n` -/
def P6365374300443111871.Spec : Prop :=
  ∀ n, (P6365374300443111871.a n : ℤ) = A086601 n

end A086601

/-! ## A086601.P13281598664669655840

`A123350(n)+n`
-/

namespace A086601.P13281598664669655840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123350 n + (n : ℤ)

end

end A086601.P13281598664669655840

namespace A086601

/-- `A123350(n)+n` -/
def P13281598664669655840.Spec : Prop :=
  ∀ n, P13281598664669655840.a n = A086601 n

end A086601

/-! ## A086601.P17044577716203130722

`∑[A028310(n)]²`
-/

namespace A086601.P17044577716203130722
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A086601.P17044577716203130722

namespace A086601

/-- `∑[A028310(n)]²` -/
def P17044577716203130722.Spec : Prop :=
  ∀ n, P17044577716203130722.a n = A086601 n

end A086601

/-! ## A086601.P10747291038844780383

`∑[A054602(n)]+1`
-/

namespace A086601.P10747291038844780383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A086601.P10747291038844780383

namespace A086601

/-- `∑[A054602(n)]+1` -/
def P10747291038844780383.Spec : Prop :=
  ∀ n, P10747291038844780383.a n = A086601 n

end A086601

/-!
# A086602: a(n) = A000217(A000217(n))-n^2.

The programs for A086602, the canonical program `A086602.P17561333100341916164` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086602 has offset 0).

The definition of A086602 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000217(A000217(n))-n²` (program `A086602.P17561333100341916164`, by `A086602.P17561333100341916164.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A086602.P18341643875406401976

`n*(n-1)*(n²+3*n-2)/8`
-/

namespace A086602.P18341643875406401976
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (((n : ℤ) - 1 : ℚ) * (((n ^ 2 + 3 * n : ℤ) - 2 : ℚ) / 8))

end

end A086602.P18341643875406401976

namespace A086602

/-- `n*(n-1)*(n²+3*n-2)/8` -/
def P18341643875406401976.Spec : Prop :=
  ∀ n, P18341643875406401976.a n = (A086602 n : ℚ)

end A086602

/-! ## A086602.P17040141302280655665

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=0, a(1)=0, a(2)=2, a(3)=12, a(4)=39`
-/

namespace A086602.P17040141302280655665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 2, 12, 39] fun n a =>
  5 * a (n - 1) - 10 * a (n - 2) + 10 * a (n - 3) - 5 * a (n - 4) + a (n - 5)

end

end A086602.P17040141302280655665

namespace A086602

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P17040141302280655665.Spec : Prop :=
  ∀ n, P17040141302280655665.a n = A086602 n

end A086602

/-! ## A086602.P17561333100341916164

`A000217(A000217(n))-n²`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086602

/-- `A000217(A000217(n))-n²` -/
def P17561333100341916164.Spec : Prop :=
  ∀ n, P17561333100341916164.a n = A086602 n

theorem P17561333100341916164.correct : P17561333100341916164.Spec := by
  intro n
  simp only [A086602]

end A086602

/-! ## A086602.P9854425162394161141

`C(∑[n], 2)-C(n, 2)`
-/

namespace A086602.P9854425162394161141
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A086602.P9854425162394161141

namespace A086602

/-- `C(∑[n], 2)-C(n, 2)` -/
def P9854425162394161141.Spec : Prop :=
  ∀ n, P9854425162394161141.a n = A086602 n

end A086602

/-! ## A086602.P1674632515105132736

`∑[n*C(n, 2)]+C(n, 3)`
-/

namespace A086602.P1674632515105132736
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose n 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.choose n 3

end

end A086602.P1674632515105132736

namespace A086602

/-- `∑[n*C(n, 2)]+C(n, 3)` -/
def P1674632515105132736.Spec : Prop :=
  ∀ n, (P1674632515105132736.a n : ℤ) = A086602 n

end A086602

/-! ## A086602.P15786982579265130997

`3*C(n+2, 4)-C(n, 2)`
-/

namespace A086602.P15786982579265130997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * Nat.choose (n + 2) 4 : ℤ) - (Nat.choose n 2 : ℤ)

end

end A086602.P15786982579265130997

namespace A086602

/-- `3*C(n+2, 4)-C(n, 2)` -/
def P15786982579265130997.Spec : Prop :=
  ∀ n, P15786982579265130997.a n = A086602 n

end A086602

/-! ## A086602.P9430256170101665542

`A294259(n)-n`
-/

namespace A086602.P9430256170101665542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294259 n - (n : ℤ)

end

end A086602.P9430256170101665542

namespace A086602

/-- `A294259(n)-n` -/
def P9430256170101665542.Spec : Prop :=
  ∀ n, P9430256170101665542.a n = A086602 n

end A086602

/-! ## A086602.P11851134670673873178

`A002817(n)-n²`
-/

namespace A086602.P11851134670673873178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002817 n - (n ^ 2 : ℤ)

end

end A086602.P11851134670673873178

namespace A086602

/-- `A002817(n)-n²` -/
def P11851134670673873178.Spec : Prop :=
  ∀ n, P11851134670673873178.a n = A086602 n

end A086602

/-! ## A086602.P16767420592484206609

`∑[A006003(n)]-n²`
-/

namespace A086602.P16767420592484206609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006003 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℤ)

end

end A086602.P16767420592484206609

namespace A086602

/-- `∑[A006003(n)]-n²` -/
def P16767420592484206609.Spec : Prop :=
  ∀ n, P16767420592484206609.a n = A086602 n

end A086602

/-! ## A086602.P15378042824578954295

`A001621(n)/2-n²`
-/

namespace A086602.P15378042824578954295
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001621 n : ℚ) / 2 - (n ^ 2 : ℚ)

end

end A086602.P15378042824578954295

namespace A086602

/-- `A001621(n)/2-n²` -/
def P15378042824578954295.Spec : Prop :=
  ∀ n, P15378042824578954295.a n = (A086602 n : ℚ)

end A086602

/-! ## A086602.P5820887783521483814

`C(A000124(n), 2)-n²`
-/

namespace A086602.P5820887783521483814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (A000124 n).toNat 2 : ℤ) - (n ^ 2 : ℤ)

end

end A086602.P5820887783521483814

namespace A086602

/-- `C(A000124(n), 2)-n²` -/
def P5820887783521483814.Spec : Prop :=
  ∀ n, P5820887783521483814.a n = A086602 n

end A086602

/-! ## A086602.P9768896547824011459

`A176145(n+3)-∑[n]`
-/

namespace A086602.P9768896547824011459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176145 (n + 3) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A086602.P9768896547824011459

namespace A086602

/-- `A176145(n+3)-∑[n]` -/
def P9768896547824011459.Spec : Prop :=
  ∀ n, P9768896547824011459.a n = A086602 n

end A086602

/-! ## A086602.P9000610547433073900

`∑[A121670(n)/2]+n`
-/

namespace A086602.P9000610547433073900
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A121670 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℚ)

end

end A086602.P9000610547433073900

namespace A086602

/-- `∑[A121670(n)/2]+n` -/
def P9000610547433073900.Spec : Prop :=
  ∀ n, P9000610547433073900.a n = (A086602 n : ℚ)

end A086602

/-! ## A086602.P15062893758543919171

`C(∑[n], 2)-A161680(n)`
-/

namespace A086602.P15062893758543919171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ) - A161680 n

end

end A086602.P15062893758543919171

namespace A086602

/-- `C(∑[n], 2)-A161680(n)` -/
def P15062893758543919171.Spec : Prop :=
  ∀ n, P15062893758543919171.a n = A086602 n

end A086602

/-! ## A086602.P1242471519844765092

`∑[A135503(n)-n]+n`
-/

namespace A086602.P1242471519844765092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135503 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A086602.P1242471519844765092

namespace A086602

/-- `∑[A135503(n)-n]+n` -/
def P1242471519844765092.Spec : Prop :=
  ∀ n, P1242471519844765092.a n = A086602 n

end A086602

/-! ## A086602.P8800057327936348738

`∑[sqrt(A135509(n))]-n²`
-/

namespace A086602.P8800057327936348738
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A135509 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n ^ 2 : ℝ)

end

end A086602.P8800057327936348738

namespace A086602

/-- `∑[sqrt(A135509(n))]-n²` -/
def P8800057327936348738.Spec : Prop :=
  ∀ n, P8800057327936348738.a n = (A086602 n : ℝ)

end A086602

/-! ## A086602.P3669627017439495669

`Δ[n²]-A110426(n+1)`
-/

namespace A086602.P3669627017439495669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - A110426 (n + 1)

end

end A086602.P3669627017439495669

namespace A086602

/-- `Δ[n²]-A110426(n+1)` -/
def P3669627017439495669.Spec : Prop :=
  ∀ n, P3669627017439495669.a n = A086602 n

end A086602

/-! ## A086602.P10006404110864779865

`A090809(n)+A007290(n)`
-/

namespace A086602.P10006404110864779865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090809 n + A007290 n

end

end A086602.P10006404110864779865

namespace A086602

/-- `A090809(n)+A007290(n)` -/
def P10006404110864779865.Spec : Prop :=
  ∀ n, P10006404110864779865.a n = A086602 n

end A086602

/-! ## A086602.P15107172797218635583

`A008911(n)-A000332(n)`
-/

namespace A086602.P15107172797218635583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008911 n - A000332 n

end

end A086602.P15107172797218635583

namespace A086602

/-- `A008911(n)-A000332(n)` -/
def P15107172797218635583.Spec : Prop :=
  ∀ n, P15107172797218635583.a n = A086602 n

end A086602

/-! ## A086602.P12893123381632187036

`A006528(n)-A037255(n)`
-/

namespace A086602.P12893123381632187036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006528 n - A037255 n

end

end A086602.P12893123381632187036

namespace A086602

/-- `A006528(n)-A037255(n)` -/
def P12893123381632187036.Spec : Prop :=
  ∀ n, P12893123381632187036.a n = A086602 n

end A086602

/-!
# A086603: a(n) = n^3*3^(n-1).

The programs for A086603, the canonical program `A086603.P17512914696361509578` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086603 has offset 0).

The definition of A086603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086603.P17512914696361509578

`3^(n-1)*n^3`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A086603

/-- `3^(n-1)*n^3` -/
def P17512914696361509578.Spec : Prop :=
  ∀ n, P17512914696361509578.a n = (A086603 n : ℚ)

end A086603

/-! ## A086603.P9094094269022309399

`A017163(n)/3^(7-n)`
-/

namespace A086603.P9094094269022309399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017163 n : ℚ) / (3 : ℚ) ^ (7 - (n : ℤ) : ℤ)

end

end A086603.P9094094269022309399

namespace A086603

/-- `A017163(n)/3^(7-n)` -/
def P9094094269022309399.Spec : Prop :=
  ∀ n, P9094094269022309399.a n = (A086603 n : ℚ)

end A086603

/-! ## A086603.P16613620071074033343

`floor((C(2, n)+3^n*n^3)/3)`
-/

namespace A086603.P16613620071074033343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose 2 n + 3 ^ n * n ^ 3 : ℚ) / 3⌋

end

end A086603.P16613620071074033343

namespace A086603

/-- `floor((C(2, n)+3^n*n^3)/3)` -/
def P16613620071074033343.Spec : Prop :=
  ∀ n, P16613620071074033343.a n = A086603 n

end A086603

/-! ## A086603.P17017521680983020040

`floor((ceil(abs(sin(n)))+n*n²*3^n)/3)`
-/

namespace A086603.P17017521680983020040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌈|Real.sin (n : ℝ)|⌉ + (n * n ^ 2 * 3 ^ n : ℤ) : ℚ) / 3⌋

end

end A086603.P17017521680983020040

namespace A086603

/-- `floor((ceil(abs(sin(n)))+n*n²*3^n)/3)` -/
def P17017521680983020040.Spec : Prop :=
  ∀ n, P17017521680983020040.a n = A086603 n

end A086603

/-! ## A086603.P16527330434323957727

`A062074(n)/3`
-/

namespace A086603.P16527330434323957727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062074 n : ℚ) / 3

end

end A086603.P16527330434323957727

namespace A086603

/-- `A062074(n)/3` -/
def P16527330434323957727.Spec : Prop :=
  ∀ n, P16527330434323957727.a n = (A086603 n : ℚ)

end A086603

/-! ## A086603.P17822871737532096960

`floor(A168299(n)/3)`
-/

namespace A086603.P17822871737532096960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168299 n : ℚ) / 3⌋

end

end A086603.P17822871737532096960

namespace A086603

/-- `floor(A168299(n)/3)` -/
def P17822871737532096960.Spec : Prop :=
  ∀ n, P17822871737532096960.a n = A086603 n

end A086603

/-! ## A086603.P6947423199956971632

`n*A127960(n)/3`
-/

namespace A086603.P6947423199956971632
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A127960 n : ℚ) / 3

end

end A086603.P6947423199956971632

namespace A086603

/-- `n*A127960(n)/3` -/
def P6947423199956971632.Spec : Prop :=
  ∀ n, P6947423199956971632.a n = (A086603 n : ℚ)

end A086603

/-! ## A086603.P11790100383997452800

`n*n²*A000244(n)/3`
-/

namespace A086603.P11790100383997452800
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((n ^ 2 : ℤ) * A000244 n) : ℚ) / 3

end

end A086603.P11790100383997452800

namespace A086603

/-- `n*n²*A000244(n)/3` -/
def P11790100383997452800.Spec : Prop :=
  ∀ n, P11790100383997452800.a n = (A086603 n : ℚ)

end A086603

/-! ## A086603.P18289278415981597757

`n*3^n*A000290(n)/3`
-/

namespace A086603.P18289278415981597757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * ((3 ^ n : ℤ) * A000290 n) : ℚ) / 3

end

end A086603.P18289278415981597757

namespace A086603

/-- `n*3^n*A000290(n)/3` -/
def P18289278415981597757.Spec : Prop :=
  ∀ n, P18289278415981597757.a n = (A086603 n : ℚ)

end A086603

/-! ## A086603.P11521064477823216232

`A000244(n)*A000578(n)/3`
-/

namespace A086603.P11521064477823216232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n * A000578 n : ℚ) / 3

end

end A086603.P11521064477823216232

namespace A086603

/-- `A000244(n)*A000578(n)/3` -/
def P11521064477823216232.Spec : Prop :=
  ∀ n, P11521064477823216232.a n = (A086603 n : ℚ)

end A086603

/-! ## A086603.P1350955803792335874

`A000578(n)*A008776(n)/6`
-/

namespace A086603.P1350955803792335874
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000578 n * A008776 n : ℚ) / 6

end

end A086603.P1350955803792335874

namespace A086603

/-- `A000578(n)*A008776(n)/6` -/
def P1350955803792335874.Spec : Prop :=
  ∀ n, P1350955803792335874.a n = (A086603 n : ℚ)

end A086603

/-!
# A086604: a(n) = 2^(n-3)n(9n^2-9n+4).

The programs for A086604, the canonical program `A086604.P7902740807253303637` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086604 has offset 0).

The definition of A086604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086604.P7902740807253303637

`2^(n-3)*n*(9*n²-9*n+4)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A086604

/-- `2^(n-3)*n*(9*n²-9*n+4)` -/
def P7902740807253303637.Spec : Prop :=
  ∀ n, P7902740807253303637.a n = (A086604 n : ℚ)

end A086604

/-!
# A086605: a(n) = 9*n^3 - 18*n^2 + 10*n.

The programs for A086605, the canonical program `A086605.P6064100126227182586` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086605 has offset 0).

The definition of A086605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086605.P6064100126227182586

`n*(1+9*(n-1)²)`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A086605

/-- `n*(1+9*(n-1)²)` -/
def P6064100126227182586.Spec : Prop :=
  ∀ n, P6064100126227182586.a n = A086605 n

theorem P6064100126227182586.correct : P6064100126227182586.Spec := by
  intro n
  simp only [A086605]

end A086605

/-! ## A086605.P8971097259487336018

`3*A270205(n)+n`
-/

namespace A086605.P8971097259487336018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A270205 n + (n : ℤ)

end

end A086605.P8971097259487336018

namespace A086605

/-- `3*A270205(n)+n` -/
def P8971097259487336018.Spec : Prop :=
  ∀ n, P8971097259487336018.a n = A086605 n

end A086605

/-! ## A086605.P9606490142399288459

`A134171(n+1)+A006566(n)`
-/

namespace A086605.P9606490142399288459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134171 (n + 1) + A006566 n

end

end A086605.P9606490142399288459

namespace A086605

/-- `A134171(n+1)+A006566(n)` -/
def P9606490142399288459.Spec : Prop :=
  ∀ n, P9606490142399288459.a n = A086605 n

end A086605

/-! ## A086605.P17831252704285092082

`A006566(n)+n*A000096(3*n)-A014107(3*n)`
-/

namespace A086605.P17831252704285092082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006566 n + ((n : ℤ) * A000096 (3 * n) - A014107 (3 * n))

end

end A086605.P17831252704285092082

namespace A086605

/-- `A006566(n)+n*A000096(3*n)-A014107(3*n)` -/
def P17831252704285092082.Spec : Prop :=
  ∀ n, P17831252704285092082.a n = A086605 n

end A086605

/-! ## A086605.P1035251548090320133

`A008585(A270205(n))+n`
-/

namespace A086605.P1035251548090320133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008585 (A270205 n).toNat + (n : ℤ)

end

end A086605.P1035251548090320133

namespace A086605

/-- `A008585(A270205(n))+n` -/
def P1035251548090320133.Spec : Prop :=
  ∀ n, P1035251548090320133.a n = A086605 n

end A086605

/-!
# A086606: Triangle, read by rows, where the n-th row is the first n terms of the n-th self-convolution of the sequence formed by flattening this triangle.

The programs for A086606, there is no canonical definition to state claims against.
-/

/-! ## A086606.P12646001892535323160

`A003056(C(A162202(n), A002262(n)))`
-/

namespace A086606.P12646001892535323160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A162202 n).toNat (A002262 n).toNat)

end

end A086606.P12646001892535323160

/-! ## A086606.P17038296188960477550

`A003056(C(A284507(n+1), A002262(n)))`
-/

namespace A086606.P17038296188960477550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (A284507 (n + 1)).toNat (A002262 n).toNat)

end

end A086606.P17038296188960477550

/-! ## A086606.P9085163372722017841

`A161906(A002618(n+1)+A000583(n))`
-/

namespace A086606.P9085163372722017841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161906 (A002618 (n + 1) + A000583 n).toNat

end

end A086606.P9085163372722017841

/-!
# A086607: Main diagonal of triangle A086606: the n-th term of the n-th self-convolution of the sequence formed by flattening triangle A086606.

The programs for A086607, there is no canonical definition to state claims against.
-/

/-! ## A086607.P13114176709867597522

`A086606(∑[n]+n)`
-/

namespace A086607.P13114176709867597522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086606 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A086607.P13114176709867597522

/-! ## A086607.P16026826384955440518

`record[A086606(A061579(n))]`
-/

namespace A086607.P16026826384955440518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086606 (A061579 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086607.P16026826384955440518

/-! ## A086607.P2439658895427472775

`record[A086606(A038722(n+1))]`
-/

namespace A086607.P2439658895427472775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086606 (A038722 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086607.P2439658895427472775

/-! ## A086607.P5822387278777793837

`record[A086606(A049777(n+1))]`
-/

namespace A086607.P5822387278777793837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086606 (A049777 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086607.P5822387278777793837

/-! ## A086607.P3370414954429423737

`or(char[2], A086606(A000096(n)))`
-/

namespace A086607.P3370414954429423737
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A086606 (A000096 n).toNat)

end

end A086607.P3370414954429423737

/-!
# A086608: Row sums of triangle A086606: the sum of the first n terms of the n-th self-convolution of the sequence formed by flattening triangle A086606.

The programs for A086608, there is no canonical definition to state claims against.
-/

/-! ## A086608.P4144252251728781070

`A150849(n)+A091972(Δ[A150849(n)])`
-/

namespace A086608.P4144252251728781070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150849 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A150849 n + A091972 (f1 (n + 1) - f1 n).toNat

end

end A086608.P4144252251728781070

/-! ## A086608.P15157617256849072589

`A269381(A334288(n)+A334260(n+1))`
-/

namespace A086608.P15157617256849072589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269381 (A334288 n + A334260 (n + 1)).toNat

end

end A086608.P15157617256849072589

/-!
# A086609: Number of primes between consecutive partition numbers.

The programs for A086609, there is no canonical definition to state claims against.
-/

/-! ## A086609.P16405727756749720578

`A000720(A000041(n+1))-A000720(A000041(n))`
-/

namespace A086609.P16405727756749720578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000041 (n + 1)).toNat - A000720 (A000041 n).toNat

end

end A086609.P16405727756749720578

/-! ## A086609.P6868905833312404571

`Δ[A000720(A000041(n))]`
-/

namespace A086609.P6868905833312404571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000041 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086609.P6868905833312404571

/-! ## A086609.P277037015326041004

`Δ[A000720(A213598(n))]`
-/

namespace A086609.P277037015326041004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A213598 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086609.P277037015326041004

/-! ## A086609.P12823290528145525474

`Δ[A000720(sqrt(A001255(n)))]`
-/

namespace A086609.P12823290528145525474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway (Real.sqrt (A001255 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086609.P12823290528145525474

/-! ## A086609.P8278741025051521378

`Δ[A000720(∑[A002865(n)])]`
-/

namespace A086609.P8278741025051521378
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086609.P8278741025051521378

/-!
# A086611: Row sums of triangle of coefficients (A086610) where T(n,k) is the coefficient of x^n*y^k in f(x,y) that satisfies f(x,y) = (1-x-x^2)/(1-x)^2 + xy*f(x,y)^2.

The programs for A086611, there is no canonical definition to state claims against.
-/

/-! ## A086611.P12945554251597065503

`A145596(A139398(n))+A001678(2*n+3)`
-/

namespace A086611.P12945554251597065503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145596 (A139398 n).toNat + A001678 (2 * n + 3)

end

end A086611.P12945554251597065503

/-! ## A086611.P279258637298322748

`A034968(A072879(n+1))+A001678(2*n+3)`
-/

namespace A086611.P279258637298322748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034968 (A072879 (n + 1)).toNat + A001678 (2 * n + 3)

end

end A086611.P279258637298322748

/-! ## A086611.P5679744397449478457

`∑[A157001(ceil(2^(n-1))+1)]`
-/

namespace A086611.P5679744397449478457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157001 (⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉ + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086611.P5679744397449478457

/-!
# A086613: Row sums of triangle A086612.

The programs for A086613, there is no canonical definition to state claims against.
-/

/-! ## A086613.P10928088011090579020

`round(2*n/3)+A277330(n!*ceil(n/2))%n!+1`
-/

namespace A086613.P10928088011090579020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * ((n : ℚ) / 3)) + (Int.tmod (A277330 ((Nat.factorial n : ℤ) * ⌈(n : ℚ) / 2⌉).toNat) (Nat.factorial n : ℤ) + 1)

end

end A086613.P10928088011090579020

/-! ## A086613.P18271705942637364803

`A054404(A047126(n))+1`
-/

namespace A086613.P18271705942637364803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A047126 n).toNat + 1

end

end A086613.P18271705942637364803

/-! ## A086613.P10125076641049020852

`A081753(A189177(n+2)+4)`
-/

namespace A086613.P10125076641049020852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081753 (A189177 (n + 2) + 4).toNat

end

end A086613.P10125076641049020852

/-!
# A086614: Triangle read by rows, where T(n,k) is the coefficient of x^n*y^k in f(x,y) that satisfies f(x,y) = 1/(1-x)^2 + xy*f(x,y)^2.

The programs for A086614, there is no canonical definition to state claims against.
-/

/-! ## A086614.P6925898862106470984

`abs(A303700(n)/A158405(n+1))`
-/

namespace A086614.P6925898862106470984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A303700 n : ℚ) / (A158405 (n + 1) : ℚ)|

end

end A086614.P6925898862106470984

/-! ## A086614.P18262923730826443668

`A000108(A002262(n))*A078812(n)`
-/

namespace A086614.P18262923730826443668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A002262 n).toNat * A078812 n

end

end A086614.P18262923730826443668

/-! ## A086614.P17848033717653740409

`A039599(A112367(n))*A078812(n)`
-/

namespace A086614.P17848033717653740409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039599 (A112367 n).toNat * A078812 n

end

end A086614.P17848033717653740409

/-! ## A086614.P17782195860687846673

`A000108(A163351(n))*A078812(n)`
-/

namespace A086614.P17782195860687846673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A163351 n).toNat * A078812 n

end

end A086614.P17782195860687846673

/-! ## A086614.P1979744561454262001

`abs(A000108(A002262(n))*A053122(n))`
-/

namespace A086614.P1979744561454262001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000108 (A002262 n).toNat * A053122 n|

end

end A086614.P1979744561454262001

/-! ## A086614.P5518758174194403460

`A000108(A025668(n+1))*A078812(n)`
-/

namespace A086614.P5518758174194403460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025668 (n + 1)).toNat * A078812 n

end

end A086614.P5518758174194403460

/-! ## A086614.P11223013639192147726

`A000108(A025690(n+1))*A078812(n)`
-/

namespace A086614.P11223013639192147726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A025690 (n + 1)).toNat * A078812 n

end

end A086614.P11223013639192147726

/-! ## A086614.P3198996680537149234

`A078812(n)*A120588(A002260(n+1))`
-/

namespace A086614.P3198996680537149234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078812 n * A120588 (A002260 (n + 1)).toNat

end

end A086614.P3198996680537149234

/-! ## A086614.P3002705238095426090

`A000108(A144328(n+1))*A078812(n)`
-/

namespace A086614.P3002705238095426090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A144328 (n + 1)).toNat * A078812 n

end

end A086614.P3002705238095426090

/-!
# A086615: Antidiagonal sums of triangle A086614.

The programs for A086615, the canonical program `A086615.P3603228253136164052` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086615 has offset 0).

The definition of A086615 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 217 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086615.P3603228253136164052

`∑[A001006(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086615

/-- `∑[A001006(n)]` -/
def P3603228253136164052.Spec : Prop :=
  ∀ n, P3603228253136164052.a n = A086615 n

theorem P3603228253136164052.correct : P3603228253136164052.Spec := by
  intro n
  simp only [A086615]

end A086615

/-! ## A086615.P7028448468419297849

`∑[A086246(n+2)]`
-/

namespace A086615.P7028448468419297849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086246 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P7028448468419297849

namespace A086615

/-- `∑[A086246(n+2)]` -/
def P7028448468419297849.Spec : Prop :=
  ∀ n, P7028448468419297849.a n = A086615 n

end A086615

/-! ## A086615.P15338308976659712322

`∑[A168049(n+2)]`
-/

namespace A086615.P15338308976659712322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168049 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P15338308976659712322

namespace A086615

/-- `∑[A168049(n+2)]` -/
def P15338308976659712322.Spec : Prop :=
  ∀ n, P15338308976659712322.a n = A086615 n

end A086615

/-! ## A086615.P16180751908770652914

`∑[abs(Δ[A097332(n)])]`
-/

namespace A086615.P16180751908770652914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P16180751908770652914

namespace A086615

/-- `∑[abs(Δ[A097332(n)])]` -/
def P16180751908770652914.Spec : Prop :=
  ∀ n, P16180751908770652914.a n = A086615 n

end A086615

/-! ## A086615.P6422182618510804933

`A097332(n+1)-1`
-/

namespace A086615.P6422182618510804933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097332 (n + 1) - 1

end

end A086615.P6422182618510804933

namespace A086615

/-- `A097332(n+1)-1` -/
def P6422182618510804933.Spec : Prop :=
  ∀ n, P6422182618510804933.a n = A086615 n

end A086615

/-! ## A086615.P8178292765830161766

`∑[abs(A166587(n+1))]`
-/

namespace A086615.P8178292765830161766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A166587 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P8178292765830161766

namespace A086615

/-- `∑[abs(A166587(n+1))]` -/
def P8178292765830161766.Spec : Prop :=
  ∀ n, P8178292765830161766.a n = A086615 n

end A086615

/-! ## A086615.P6725408107970087209

`∑[abs(A168051(n+2))]`
-/

namespace A086615.P6725408107970087209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A168051 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P6725408107970087209

namespace A086615

/-- `∑[abs(A168051(n+2))]` -/
def P6725408107970087209.Spec : Prop :=
  ∀ n, P6725408107970087209.a n = A086615 n

end A086615

/-! ## A086615.P13575813893529128505

`∑[abs(A292440(n+2))]`
-/

namespace A086615.P13575813893529128505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292440 (n + 2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P13575813893529128505

namespace A086615

/-- `∑[abs(A292440(n+2))]` -/
def P13575813893529128505.Spec : Prop :=
  ∀ n, P13575813893529128505.a n = A086615 n

end A086615

/-! ## A086615.P6590838891377489106

`∑[∑[A244884(n)]]-n`
-/

namespace A086615.P6590838891377489106
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244884 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)

end

end A086615.P6590838891377489106

namespace A086615

/-- `∑[∑[A244884(n)]]-n` -/
def P6590838891377489106.Spec : Prop :=
  ∀ n, P6590838891377489106.a n = A086615 n

end A086615

/-! ## A086615.P8868918827653473996

`∑[abs(Δ[A099323(n+1)])]`
-/

namespace A086615.P8868918827653473996
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099323 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P8868918827653473996

namespace A086615

/-- `∑[abs(Δ[A099323(n+1)])]` -/
def P8868918827653473996.Spec : Prop :=
  ∀ n, P8868918827653473996.a n = A086615 n

end A086615

/-! ## A086615.P2118554403607881903

`∑[∑[A105695(n+1)]+1]`
-/

namespace A086615.P2118554403607881903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105695 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P2118554403607881903

namespace A086615

/-- `∑[∑[A105695(n+1)]+1]` -/
def P2118554403607881903.Spec : Prop :=
  ∀ n, P2118554403607881903.a n = A086615 n

end A086615

/-! ## A086615.P5550800135127618823

`∑[A005043(n+1)+A005043(n)]`
-/

namespace A086615.P5550800135127618823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005043 (n + 1) + A005043 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P5550800135127618823

namespace A086615

/-- `∑[A005043(n+1)+A005043(n)]` -/
def P5550800135127618823.Spec : Prop :=
  ∀ n, P5550800135127618823.a n = A086615 n

end A086615

/-! ## A086615.P1689217537461822486

`∑[A033999(n)*A166587(n+1)]`
-/

namespace A086615.P1689217537461822486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A166587 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P1689217537461822486

namespace A086615

/-- `∑[A033999(n)*A166587(n+1)]` -/
def P1689217537461822486.Spec : Prop :=
  ∀ n, P1689217537461822486.a n = A086615 n

end A086615

/-! ## A086615.P10621998736439875384

`∑[lcm(A033999(n+1), A166587(n+1))]`
-/

namespace A086615.P10621998736439875384
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (n + 1)) (A166587 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P10621998736439875384

namespace A086615

/-- `∑[lcm(A033999(n+1), A166587(n+1))]` -/
def P10621998736439875384.Spec : Prop :=
  ∀ n, (P10621998736439875384.a n : ℤ) = A086615 n

end A086615

/-! ## A086615.P11672188514047770162

`∑[gcd(A166587(n+1), A182492(2*n))]`
-/

namespace A086615.P11672188514047770162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A166587 (n + 1)) (A182492 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P11672188514047770162

namespace A086615

/-- `∑[gcd(A166587(n+1), A182492(2*n))]` -/
def P11672188514047770162.Spec : Prop :=
  ∀ n, (P11672188514047770162.a n : ℤ) = A086615 n

end A086615

/-! ## A086615.P6146594304184398757

`∑[A007971(n+2)/2]`
-/

namespace A086615.P6146594304184398757
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007971 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P6146594304184398757

namespace A086615

/-- `∑[A007971(n+2)/2]` -/
def P6146594304184398757.Spec : Prop :=
  ∀ n, P6146594304184398757.a n = (A086615 n : ℚ)

end A086615

/-! ## A086615.P15776839244245694185

`∑[A126068(n+2)/2]`
-/

namespace A086615.P15776839244245694185
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126068 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P15776839244245694185

namespace A086615

/-- `∑[A126068(n+2)/2]` -/
def P15776839244245694185.Spec : Prop :=
  ∀ n, P15776839244245694185.a n = (A086615 n : ℚ)

end A086615

/-! ## A086615.P6128029842463347517

`∑[A168055(n+2)/2]`
-/

namespace A086615.P6128029842463347517
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168055 (n + 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P6128029842463347517

namespace A086615

/-- `∑[A168055(n+2)/2]` -/
def P6128029842463347517.Spec : Prop :=
  ∀ n, P6128029842463347517.a n = (A086615 n : ℚ)

end A086615

/-! ## A086615.P8875162827690431813

`Δ[A295112(n+1)/2]`
-/

namespace A086615.P8875162827690431813
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A295112 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086615.P8875162827690431813

namespace A086615

/-- `Δ[A295112(n+1)/2]` -/
def P8875162827690431813.Spec : Prop :=
  ∀ n, P8875162827690431813.a n = (A086615 n : ℚ)

end A086615

/-! ## A086615.P6455343268348408665

`∑[A168073(n+2)/3]`
-/

namespace A086615.P6455343268348408665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168073 (n + 2) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086615.P6455343268348408665

namespace A086615

/-- `∑[A168073(n+2)/3]` -/
def P6455343268348408665.Spec : Prop :=
  ∀ n, P6455343268348408665.a n = (A086615 n : ℚ)

end A086615

/-!
# A086616: Partial sums of the large Schroeder numbers (A006318).

The programs for A086616, the canonical program `A086616.P4854257795119713207` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086616 has offset 0).

The definition of A086616 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 135 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086616.P2001947501923547234

`∑[A006318(n)]`
-/

namespace A086616.P2001947501923547234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P2001947501923547234

namespace A086616

/-- `∑[A006318(n)]` -/
def P2001947501923547234.Spec : Prop :=
  ∀ n, P2001947501923547234.a n = A086616 n

end A086616

/-! ## A086616.P15165774343368111554

`record[A336859(n)]`
-/

namespace A086616.P15165774343368111554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336859 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086616.P15165774343368111554

namespace A086616

/-- `record[A336859(n)]` -/
def P15165774343368111554.Spec : Prop :=
  ∀ n, P15165774343368111554.a n = A086616 n

end A086616

/-! ## A086616.P5519252556371019701

`∑[∑[A006319(n)]]`
-/

namespace A086616.P5519252556371019701
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006319 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P5519252556371019701

namespace A086616

/-- `∑[∑[A006319(n)]]` -/
def P5519252556371019701.Spec : Prop :=
  ∀ n, P5519252556371019701.a n = A086616 n

end A086616

/-! ## A086616.P14084100755496822772

`∑[A073150(∑[n])]`
-/

namespace A086616.P14084100755496822772
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073150 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P14084100755496822772

namespace A086616

/-- `∑[A073150(∑[n])]` -/
def P14084100755496822772.Spec : Prop :=
  ∀ n, P14084100755496822772.a n = A086616 n

end A086616

/-! ## A086616.P1007239594786364350

`∑[A080247(∑[n])]`
-/

namespace A086616.P1007239594786364350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080247 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P1007239594786364350

namespace A086616

/-- `∑[A080247(∑[n])]` -/
def P1007239594786364350.Spec : Prop :=
  ∀ n, P1007239594786364350.a n = A086616 n

end A086616

/-! ## A086616.P3071325867111111770

`∑[A133367(∑[n])]`
-/

namespace A086616.P3071325867111111770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133367 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P3071325867111111770

namespace A086616

/-- `∑[A133367(∑[n])]` -/
def P3071325867111111770.Spec : Prop :=
  ∀ n, P3071325867111111770.a n = A086616 n

end A086616

/-! ## A086616.P4804494212426636311

`∑[A351385(∑[n])]`
-/

namespace A086616.P4804494212426636311
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351385 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P4804494212426636311

namespace A086616

/-- `∑[A351385(∑[n])]` -/
def P4804494212426636311.Spec : Prop :=
  ∀ n, P4804494212426636311.a n = A086616 n

end A086616

/-! ## A086616.P5862115830471006670

`∑[record[A122538(n)]]`
-/

namespace A086616.P5862115830471006670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122538 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P5862115830471006670

namespace A086616

/-- `∑[record[A122538(n)]]` -/
def P5862115830471006670.Spec : Prop :=
  ∀ n, P5862115830471006670.a n = A086616 n

end A086616

/-! ## A086616.P15982826286364432572

`∑[A035011(n)+1]`
-/

namespace A086616.P15982826286364432572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035011 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P15982826286364432572

namespace A086616

/-- `∑[A035011(n)+1]` -/
def P15982826286364432572.Spec : Prop :=
  ∀ n, P15982826286364432572.a n = A086616 n

end A086616

/-! ## A086616.P1996066801285672617

`∑[A155069(n+1)]`
-/

namespace A086616.P1996066801285672617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155069 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P1996066801285672617

namespace A086616

/-- `∑[A155069(n+1)]` -/
def P1996066801285672617.Spec : Prop :=
  ∀ n, P1996066801285672617.a n = A086616 n

end A086616

/-! ## A086616.P9732824577732950756

`∑[A238111(n)/2]`
-/

namespace A086616.P9732824577732950756
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A238111 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P9732824577732950756

namespace A086616

/-- `∑[A238111(n)/2]` -/
def P9732824577732950756.Spec : Prop :=
  ∀ n, P9732824577732950756.a n = (A086616 n : ℚ)

end A086616

/-! ## A086616.P6354053788745288005

`Δ[A245769(n)/2]`
-/

namespace A086616.P6354053788745288005
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245769 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086616.P6354053788745288005

namespace A086616

/-- `Δ[A245769(n)/2]` -/
def P6354053788745288005.Spec : Prop :=
  ∀ n, P6354053788745288005.a n = (A086616 n : ℚ)

end A086616

/-! ## A086616.P6797692957113759659

`∑[abs(A080245(∑[n]))]`
-/

namespace A086616.P6797692957113759659
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080245 (∑ j ∈ Finset.range (n + 1), f2 j)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P6797692957113759659

namespace A086616

/-- `∑[abs(A080245(∑[n]))]` -/
def P6797692957113759659.Spec : Prop :=
  ∀ n, P6797692957113759659.a n = A086616 n

end A086616

/-! ## A086616.P13023022178474079492

`∑[record[ratio[A132372(n)]]]`
-/

namespace A086616.P13023022178474079492
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℚ) / (f3 n : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P13023022178474079492

namespace A086616

/-- `∑[record[ratio[A132372(n)]]]` -/
def P13023022178474079492.Spec : Prop :=
  ∀ n, P13023022178474079492.a n = (A086616 n : ℚ)

end A086616

/-! ## A086616.P28472765796313954

`A176006(n+1)-1`
-/

namespace A086616.P28472765796313954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176006 (n + 1) - 1

end

end A086616.P28472765796313954

namespace A086616

/-- `A176006(n+1)-1` -/
def P28472765796313954.Spec : Prop :=
  ∀ n, P28472765796313954.a n = A086616 n

end A086616

/-! ## A086616.P4854257795119713207

`2*A104858(n)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A086616

/-- `2*A104858(n)-1` -/
def P4854257795119713207.Spec : Prop :=
  ∀ n, P4854257795119713207.a n = A086616 n

theorem P4854257795119713207.correct : P4854257795119713207.Spec := by
  intro n
  simp only [A086616]

end A086616

/-! ## A086616.P8563333275497157785

`∑[abs(A086456(n+1))]`
-/

namespace A086616.P8563333275497157785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A086456 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P8563333275497157785

namespace A086616

/-- `∑[abs(A086456(n+1))]` -/
def P8563333275497157785.Spec : Prop :=
  ∀ n, P8563333275497157785.a n = A086616 n

end A086616

/-! ## A086616.P4234699485941633042

`∑[abs(A103137(n+1))]`
-/

namespace A086616.P4234699485941633042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A103137 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P4234699485941633042

namespace A086616

/-- `∑[abs(A103137(n+1))]` -/
def P4234699485941633042.Spec : Prop :=
  ∀ n, P4234699485941633042.a n = A086616 n

end A086616

/-! ## A086616.P8840711758132124272

`∑[A033877(∑[n+1])]`
-/

namespace A086616.P8840711758132124272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033877 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P8840711758132124272

namespace A086616

/-- `∑[A033877(∑[n+1])]` -/
def P8840711758132124272.Spec : Prop :=
  ∀ n, P8840711758132124272.a n = A086616 n

end A086616

/-! ## A086616.P6755283828495254405

`∑[A132372(∑[n+1])]`
-/

namespace A086616.P6755283828495254405
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132372 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086616.P6755283828495254405

namespace A086616

/-- `∑[A132372(∑[n+1])]` -/
def P6755283828495254405.Spec : Prop :=
  ∀ n, P6755283828495254405.a n = A086616 n

end A086616

/-!
# A086617: Symmetric square table of coefficients, read by antidiagonals, where T(n,k) is the coefficient of x^n*y^k in f(x,y) that satisfies f(x,y) = 1/((1-x)(1-y)) + xy*f(x,y)^2.

The programs for A086617, there is no canonical definition to state claims against.
-/

/-! ## A086617.P1815310452642135448

`A108359(n%A156587(n))-A101164(n)`
-/

namespace A086617.P1815310452642135448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108359 (Int.tmod (n : ℤ) (A156587 n)).toNat - A101164 n

end

end A086617.P1815310452642135448

/-! ## A086617.P12975568601915094065

`A060576(A067538(n+2))*A108359(n)-A101164(n)`
-/

namespace A086617.P12975568601915094065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 (A067538 (n + 2)).toNat * A108359 n - A101164 n

end

end A086617.P12975568601915094065

/-! ## A086617.P12620506884170043421

`A008288(n)-A130696(A114197(n))`
-/

namespace A086617.P12620506884170043421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008288 n - A130696 (A114197 n).toNat

end

end A086617.P12620506884170043421

/-! ## A086617.P7385881212648602538

`A118759(A100936(n)-A101164(n))`
-/

namespace A086617.P7385881212648602538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A100936 n - A101164 n).toNat

end

end A086617.P7385881212648602538

/-! ## A086617.P12565229457817328133

`A118759(A108359(n)-A101164(n))`
-/

namespace A086617.P12565229457817328133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A108359 n - A101164 n).toNat

end

end A086617.P12565229457817328133

/-!
# A086618: a(n) = Sum{k=0..n} binomial(n,k)^2*C(k), where C() = A000108() are the Catalan numbers.

The programs for A086618, there is no canonical definition to state claims against.
-/

/-! ## A086618.P236730429639808510

`A002893(n)-A228514(n)`
-/

namespace A086618.P236730429639808510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002893 n - A228514 n

end

end A086618.P236730429639808510

/-! ## A086618.P5165576474772526275

`A087457(n+1)-3*A228514(n)`
-/

namespace A086618.P5165576474772526275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087457 (n + 1) - 3 * A228514 n

end

end A086618.P5165576474772526275

/-! ## A086618.P9473914020153117651

`A002893(n)-(A087457(n+1)-A002893(n))/2`
-/

namespace A086618.P9473914020153117651
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002893 n : ℚ) - (A087457 (n + 1) - A002893 n : ℚ) / 2

end

end A086618.P9473914020153117651

/-! ## A086618.P15962885098872316955

`∑[A246459(n)]/(n+1)²`
-/

namespace A086618.P15962885098872316955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246459 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / ((n + 1) ^ 2 : ℚ)

end

end A086618.P15962885098872316955

/-! ## A086618.P3077294843422617053

`A136045(n)/A000984(n)`
-/

namespace A086618.P3077294843422617053
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136045 n : ℚ) / (A000984 n : ℚ)

end

end A086618.P3077294843422617053

/-!
# A086619: Product of first n terms of the binomial transform of the Catalan numbers (A007317).

The programs for A086619, there is no canonical definition to state claims against.
-/

/-! ## A086619.P17397744641941107700

`∏[∑[A002212(n)]]`
-/

namespace A086619.P17397744641941107700
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002212 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086619.P17397744641941107700

/-! ## A086619.P3939905954373748602

`∏[A104259(∑[n])]`
-/

namespace A086619.P3939905954373748602
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104259 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086619.P3939905954373748602

/-! ## A086619.P11801586273372491474

`∏[A106534(∑[n])]`
-/

namespace A086619.P11801586273372491474
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106534 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086619.P11801586273372491474

/-! ## A086619.P332970603039682903

`∏[record[A104259(n)]]`
-/

namespace A086619.P332970603039682903
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104259 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086619.P332970603039682903

/-! ## A086619.P9395631919999543664

`∏[record[A106534(n)]]`
-/

namespace A086619.P9395631919999543664
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106534 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A086619.P9395631919999543664

/-!
# A086620: Symmetric square table of coefficients, read by antidiagonals, where T(n,k) is the coefficient of x^n*y^k in f(x,y) that satisfies f(x,y) = 1/(1-x-y) + xy*f(x,y)^2.

The programs for A086620, there is no canonical definition to state claims against.
-/

/-! ## A086620.P2559930738520603901

`or(A100936(n), A137579(A055652(n)))`
-/

namespace A086620.P2559930738520603901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100936 n) (A137579 (A055652 n).toNat)

end

end A086620.P2559930738520603901

/-! ## A086620.P1817556425740545890

`or(A100936(n), A137579(A102413(n)))`
-/

namespace A086620.P1817556425740545890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A100936 n) (A137579 (A102413 n).toNat)

end

end A086620.P1817556425740545890

/-! ## A086620.P16609741530059512831

`A089867(A100936(n))`
-/

namespace A086620.P16609741530059512831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089867 (A100936 n).toNat

end

end A086620.P16609741530059512831

/-!
# A086621: Main diagonal of square table A086620 of coefficients, T(n,k), of x^n*y^k in f(x,y) that satisfies f(x,y) = 1/(1-x-y) + xy*f(x,y)^2.

The programs for A086621, there is no canonical definition to state claims against.
-/

/-! ## A086621.P14000965355760261112

`A086620(∑[4*n])`
-/

namespace A086621.P14000965355760261112
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086620 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086621.P14000965355760261112

/-! ## A086621.P7775990358181958260

`record[A086620(∑[(n²-1)%Δ[n²]])]`
-/

namespace A086621.P7775990358181958260
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2 : ℤ) - 1) ((f3 (n + 1) : ℤ) - (f3 n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086620 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086621.P7775990358181958260

/-!
# A086622: G.f. A(x) satisfies: A(x) = 1/(1-2*x) + x^2*A(x)^2.

The programs for A086622, there is no canonical definition to state claims against.
-/

/-! ## A086622.P10119047085691267713

`record[A137564(Δ[A247100(n)])]`
-/

namespace A086622.P10119047085691267713
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247100 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137564 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086622.P10119047085691267713

/-! ## A086622.P13351810065890174305

`Δ[A247100(A004892(n+1))]`
-/

namespace A086622.P13351810065890174305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247100 (A004892 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086622.P13351810065890174305

/-! ## A086622.P6190833453175026852

`Δ[A247100(A029965(n+1))]`
-/

namespace A086622.P6190833453175026852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247100 (A029965 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086622.P6190833453175026852

/-! ## A086622.P10233369645102842124

`Δ[A247100(n)]^A290848(n)`
-/

namespace A086622.P10233369645102842124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247100 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) ^ (A290848 n : ℤ)

end

end A086622.P10233369645102842124

/-!
# A086623: Symmetric square table of coefficients, read by antidiagonals, where T(n,k) is the coefficient of x^n*y^k in f(x,y) that satisfies f(x,y) = (1-xy)/[(1-x)(1-y)] + xy*f(x,y)^2.

The programs for A086623, there is no canonical definition to state claims against.
-/

/-! ## A086623.P10234095627167199453

`A048766(A156184(n)+A099759(n))`
-/

namespace A086623.P10234095627167199453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A156184 n + A099759 n).toNat

end

end A086623.P10234095627167199453

/-! ## A086623.P9348319128531692307

`A048766(or(A099759(n), A156184(n)))`
-/

namespace A086623.P9348319128531692307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (Int.lor (A099759 n) (A156184 n)).toNat

end

end A086623.P9348319128531692307

/-! ## A086623.P2423468722170722718

`A048766(A229557(n+1)+A099759(n))`
-/

namespace A086623.P2423468722170722718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A229557 (n + 1) + A099759 n).toNat

end

end A086623.P2423468722170722718

/-! ## A086623.P14671134244181362520

`A115594(n+1)`
-/

namespace A086623.P14671134244181362520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115594 (n + 1)

end

end A086623.P14671134244181362520

/-! ## A086623.P9988542993976286190

`A260999(A117401(n))`
-/

namespace A086623.P9988542993976286190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (A117401 n).toNat

end

end A086623.P9988542993976286190

/-!
# A086624: Main diagonal of square table A086623 of coefficients of f(x,y) that satisfies f(x,y) = (1-xy)/[(1-x)(1-y)] + xy*f(x,y)^2.

The programs for A086624, there is no canonical definition to state claims against.
-/

/-! ## A086624.P14843747735569275556

`A285950(A064062(n)-A000467(n+1))`
-/

namespace A086624.P14843747735569275556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285950 (A064062 n - A000467 (n + 1)).toNat

end

end A086624.P14843747735569275556

/-! ## A086624.P453554148349554362

`A086623(∑[4*n])`
-/

namespace A086624.P453554148349554362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086623 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086624.P453554148349554362

/-!
# A086625: Antidiagonal sums of square table A086623.

The programs for A086625, there is no canonical definition to state claims against.
-/

/-! ## A086625.P7947899979858752297

`A152172(n+1)`
-/

namespace A086625.P7947899979858752297
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152172 (n + 1)

end

end A086625.P7947899979858752297

/-! ## A086625.P17367025218023360837

`∑[A025243(n+2)]-1`
-/

namespace A086625.P17367025218023360837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025243 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A086625.P17367025218023360837

/-! ## A086625.P6440545807068545496

`∑[A025243(round(sqrt(n²+1))+2)]`
-/

namespace A086625.P6440545807068545496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025243 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ)) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086625.P6440545807068545496

/-! ## A086625.P17836489252311901439

`record[A152172(A286552(n))]`
-/

namespace A086625.P17836489252311901439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152172 (A286552 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086625.P17836489252311901439

/-! ## A086625.P15008128808034146581

`∑[A273349(∑[n-1]+3)]`
-/

namespace A086625.P15008128808034146581
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273349 (∑ j ∈ Finset.range (n + 1), f2 j + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086625.P15008128808034146581

/-!
# A086627: Main diagonal of square table A086626 of coefficients of x^n*y^k in f(x,y) that satisfies f(x,y) = (1-xy)/[(1-x)(1-y)] + xy*f(x,y)^3.

The programs for A086627, there is no canonical definition to state claims against.
-/

/-! ## A086627.P13817000510609659957

`A086626(∑[4*n])`
-/

namespace A086627.P13817000510609659957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086626 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086627.P13817000510609659957

/-! ## A086627.P5547096443811109549

`A086626(A046092(n))+char[26]`
-/

namespace A086627.P5547096443811109549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  26

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086626 (A046092 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A086627.P5547096443811109549

/-!
# A086628: Antidiagonal sums of square table A086626.

The programs for A086628, there is no canonical definition to state claims against.
-/

/-! ## A086628.P6048382408514083870

`A026834(A006192(n+1))`
-/

namespace A086628.P6048382408514083870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A006192 (n + 1)).toNat

end

end A086628.P6048382408514083870

/-! ## A086628.P12589000534256413806

`A023990(∑[A019302(2*n)]+1)`
-/

namespace A086628.P12589000534256413806
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019302 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023990 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A086628.P12589000534256413806

/-! ## A086628.P778610497937756116

`A000196(A101220(n))+A000108(n)`
-/

namespace A086628.P778610497937756116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A101220 n).toNat + A000108 n

end

end A086628.P778610497937756116

/-!
# A086629: Symmetric square table of coefficients, read by antidiagonals, where T(n,k) is the coefficient of x^n*y^k in f(x,y) that satisfies f(x,y) = 1/[(1-x)(1-y)] + xy*f(x,y)^3.

The programs for A086629, there is no canonical definition to state claims against.
-/

/-! ## A086629.P3191627671026061516

`A373811(A176156(n))`
-/

namespace A086629.P3191627671026061516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373811 (A176156 n).toNat

end

end A086629.P3191627671026061516

/-! ## A086629.P3361948685369131684

`A373810(A176157(n))`
-/

namespace A086629.P3361948685369131684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373810 (A176157 n).toNat

end

end A086629.P3361948685369131684

/-! ## A086629.P3778062260483633576

`A114176(n)-A000523(A059328(n))`
-/

namespace A086629.P3778062260483633576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114176 n - A000523 (A059328 n).toNat

end

end A086629.P3778062260483633576

/-! ## A086629.P2465001672413586132

`A072088(A114176(n)-A014473(n))`
-/

namespace A086629.P2465001672413586132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A114176 n - A014473 n).toNat

end

end A086629.P2465001672413586132

/-! ## A086629.P9103032811248210214

`A114176(n)-A034463(A156184(n))`
-/

namespace A086629.P9103032811248210214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114176 n - A034463 (A156184 n).toNat

end

end A086629.P9103032811248210214

/-!
# A086630: Main diagonal of square table A086629; coefficients of x^n*y^n in f(x,y) that satisfies f(x,y) = 1/[(1-x)(1-y)] + xy*f(x,y)^3.

The programs for A086630, there is no canonical definition to state claims against.
-/

/-! ## A086630.P10488999067691067291

`A086629(∑[4*n])`
-/

namespace A086630.P10488999067691067291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086629 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086630.P10488999067691067291

/-! ## A086630.P10691081270364664184

`record[A086629(∑[A266724(n)])]`
-/

namespace A086630.P10691081270364664184
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266724 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086629 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086630.P10691081270364664184

/-!
# A086631: Antidiagonal sums of square table A086629.

The programs for A086631, there is no canonical definition to state claims against.
-/

/-! ## A086631.P73947197188560535

`A008621(A149997(n)+A080040(n))`
-/

namespace A086631.P73947197188560535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A149997 n + A080040 n).toNat

end

end A086631.P73947197188560535

/-! ## A086631.P4199389197458305015

`∑[A071969(n)]-A339089(A045625(n))`
-/

namespace A086631.P4199389197458305015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071969 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A339089 (A045625 n).toNat

end

end A086631.P4199389197458305015

/-! ## A086631.P18374781639556112790

`A260734(A383275(n+1))`
-/

namespace A086631.P18374781639556112790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260734 (A383275 (n + 1)).toNat

end

end A086631.P18374781639556112790

/-!
# A086633: Row sums of triangle A086632.

The programs for A086633, there is no canonical definition to state claims against.
-/

/-! ## A086633.P9261925859659614537

`A008619(or(n+1, A348312(n)))`
-/

namespace A086633.P9261925859659614537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.lor (n + 1 : ℤ) (A348312 n)).toNat

end

end A086633.P9261925859659614537

/-! ## A086633.P58571254876997192

`ceil(A110706(2*n)/A296778(n+2))`
-/

namespace A086633.P58571254876997192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A110706 (2 * n) : ℚ) / (A296778 (n + 2) : ℚ)⌉

end

end A086633.P58571254876997192

/-!
# A086635: Row sums of triangle A086634.

The programs for A086635, there is no canonical definition to state claims against.
-/

/-! ## A086635.P15640066886252546399

`A005350(A165817(n)+2)`
-/

namespace A086635.P15640066886252546399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005350 (A165817 n + 2).toNat

end

end A086635.P15640066886252546399

/-! ## A086635.P3136908592270096226

`A008619(∑[A059397(2*n²)])`
-/

namespace A086635.P3136908592270096226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059397 (2 * n ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086635.P3136908592270096226

/-!
# A086637: Row sums of triangle A086636.

The programs for A086637, there is no canonical definition to state claims against.
-/

/-! ## A086637.P2591473799697959958

`or(A004736(A024720(n)), A024719(n))`
-/

namespace A086637.P2591473799697959958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A004736 (A024720 n).toNat) (A024719 n)

end

end A086637.P2591473799697959958

/-! ## A086637.P9179555427222272882

`or(A024719(n), A348325(A000079(n)))`
-/

namespace A086637.P9179555427222272882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A024719 n) (A348325 (A000079 n).toNat)

end

end A086637.P9179555427222272882

/-!
# A086638: Numbers with no 11 or 000 in their binary expansion.

The programs for A086638, the canonical program `A086638.P13942084754070889199` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086638 has offset 0).

The definition of A086638 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 463 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086638.P13942084754070889199

`∩[A063037(n+1), A003714(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A086638

/-- `∩[A063037(n+1), A003714(n)]` -/
def P13942084754070889199.Spec : Prop :=
  ∀ n, (P13942084754070889199.a n : ℤ) = A086638 n

theorem P13942084754070889199.correct : P13942084754070889199.Spec := by
  intro n
  simp only [A086638]

end A086638

/-! ## A086638.P13655756084731004918

`∩[A003796(n+1), A003714(n)]`
-/

namespace A086638.P13655756084731004918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086638.P13655756084731004918

namespace A086638

/-- `∩[A003796(n+1), A003714(n)]` -/
def P13655756084731004918.Spec : Prop :=
  ∀ n, (P13655756084731004918.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P16952285095943980275

`filter[A003796(n+1), A085357(#)]`
-/

namespace A086638.P16952285095943980275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003796 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A086638.P16952285095943980275

namespace A086638

/-- `filter[A003796(n+1), A085357(#)]` -/
def P16952285095943980275.Spec : Prop :=
  ∀ n, P16952285095943980275.a n = A086638 n

end A086638

/-! ## A086638.P8192267804369377667

`filter[A063037(n+1), A085357(#)]`
-/

namespace A086638.P8192267804369377667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063037 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A085357 (f1 j).toNat = 1) n)

end

end A086638.P8192267804369377667

namespace A086638

/-- `filter[A063037(n+1), A085357(#)]` -/
def P8192267804369377667.Spec : Prop :=
  ∀ n, P8192267804369377667.a n = A086638 n

end A086638

/-! ## A086638.P6948923995229010303

`eq[n, A380183(A090077(n))]`
-/

namespace A086638.P6948923995229010303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A090077 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086638.P6948923995229010303

namespace A086638

/-- `eq[n, A380183(A090077(n))]` -/
def P6948923995229010303.Spec : Prop :=
  ∀ n, (P6948923995229010303.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P18360342059409238769

`eq[A090077(n), A380184(n)]`
-/

namespace A086638.P18360342059409238769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086638.P18360342059409238769

namespace A086638

/-- `eq[A090077(n), A380184(n)]` -/
def P18360342059409238769.Spec : Prop :=
  ∀ n, (P18360342059409238769.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P15704199889238910367

`eq[n, A380183(A179821(n))]`
-/

namespace A086638.P15704199889238910367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A179821 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086638.P15704199889238910367

namespace A086638

/-- `eq[n, A380183(A179821(n))]` -/
def P15704199889238910367.Spec : Prop :=
  ∀ n, (P15704199889238910367.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P12954127401309516169

`eq[A179821(n), A380184(n)]`
-/

namespace A086638.P12954127401309516169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179821 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086638.P12954127401309516169

namespace A086638

/-- `eq[A179821(n), A380184(n)]` -/
def P12954127401309516169.Spec : Prop :=
  ∀ n, (P12954127401309516169.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P14435337091507235066

`eq[n, A380183(A184617(n))]`
-/

namespace A086638.P14435337091507235066
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A184617 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086638.P14435337091507235066

namespace A086638

/-- `eq[n, A380183(A184617(n))]` -/
def P14435337091507235066.Spec : Prop :=
  ∀ n, (P14435337091507235066.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P14411442666511746281

`eq[A184617(n), A380184(n)]`
-/

namespace A086638.P14411442666511746281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184617 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086638.P14411442666511746281

namespace A086638

/-- `eq[A184617(n), A380184(n)]` -/
def P14411442666511746281.Spec : Prop :=
  ∀ n, (P14411442666511746281.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P17361920666992512982

`eq[n, A380183(A229763(n))]`
-/

namespace A086638.P17361920666992512982
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A229763 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086638.P17361920666992512982

namespace A086638

/-- `eq[n, A380183(A229763(n))]` -/
def P17361920666992512982.Spec : Prop :=
  ∀ n, (P17361920666992512982.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P12892549029053000090

`eq[A229763(n), A380184(n)]`
-/

namespace A086638.P12892549029053000090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229763 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086638.P12892549029053000090

namespace A086638

/-- `eq[A229763(n), A380184(n)]` -/
def P12892549029053000090.Spec : Prop :=
  ∀ n, (P12892549029053000090.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P4068027218497355242

`eq[A283165(n), A380185(n)]`
-/

namespace A086638.P4068027218497355242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283165 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380185 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086638.P4068027218497355242

namespace A086638

/-- `eq[A283165(n), A380185(n)]` -/
def P4068027218497355242.Spec : Prop :=
  ∀ n, (P4068027218497355242.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P9872714960958490767

`eq[n, A380183(A292272(n))]`
-/

namespace A086638.P9872714960958490767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A292272 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086638.P9872714960958490767

namespace A086638

/-- `eq[n, A380183(A292272(n))]` -/
def P9872714960958490767.Spec : Prop :=
  ∀ n, (P9872714960958490767.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P16921357515285580724

`eq[A292272(n), A380184(n)]`
-/

namespace A086638.P16921357515285580724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292272 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086638.P16921357515285580724

namespace A086638

/-- `eq[A292272(n), A380184(n)]` -/
def P16921357515285580724.Spec : Prop :=
  ∀ n, (P16921357515285580724.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P16994216479487459458

`eq[n, A380183(A361645(n))]`
-/

namespace A086638.P16994216479487459458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A361645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086638.P16994216479487459458

namespace A086638

/-- `eq[n, A380183(A361645(n))]` -/
def P16994216479487459458.Spec : Prop :=
  ∀ n, (P16994216479487459458.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P8370010329939772336

`eq[A361645(n), A380184(n)]`
-/

namespace A086638.P8370010329939772336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361645 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086638.P8370010329939772336

namespace A086638

/-- `eq[A361645(n), A380184(n)]` -/
def P8370010329939772336.Spec : Prop :=
  ∀ n, (P8370010329939772336.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P6521163626761345644

`eq[n, A380183(A374356(n))]`
-/

namespace A086638.P6521163626761345644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380183 (A374356 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A086638.P6521163626761345644

namespace A086638

/-- `eq[n, A380183(A374356(n))]` -/
def P6521163626761345644.Spec : Prop :=
  ∀ n, (P6521163626761345644.a n : ℤ) = A086638 n

end A086638

/-! ## A086638.P1478104429487911292

`eq[A374356(n), A380184(n)]`
-/

namespace A086638.P1478104429487911292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374356 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380184 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A086638.P1478104429487911292

namespace A086638

/-- `eq[A374356(n), A380184(n)]` -/
def P1478104429487911292.Spec : Prop :=
  ∀ n, (P1478104429487911292.a n : ℤ) = A086638 n

end A086638

/-!
# A086639: Write decimal expansion of Pi in triangular form; sequence gives left edge.

The programs for A086639, there is no canonical definition to state claims against.
-/

/-! ## A086639.P6203931167952182110

`A000796(∑[n])`
-/

namespace A086639.P6203931167952182110
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A086639.P6203931167952182110

/-! ## A086639.P14308049337030939774

`9-A030644(∑[n])`
-/

namespace A086639.P14308049337030939774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A030644 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A086639.P14308049337030939774

/-! ## A086639.P10649134572591726900

`A123152(∑[n]+1)-1`
-/

namespace A086639.P10649134572591726900
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123152 (∑ j ∈ Finset.range (n + 1), f1 j + 1) - 1

end

end A086639.P10649134572591726900

/-! ## A086639.P17989718349060693313

`dr(A000796(C(n+1, 2)))`
-/

namespace A086639.P17989718349060693313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000796 (Nat.choose (n + 1) 2 + 1))

end

end A086639.P17989718349060693313

/-! ## A086639.P2621502591636759525

`A065253(∑[n]+1)%10`
-/

namespace A086639.P2621502591636759525
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 10

end

end A086639.P2621502591636759525

/-! ## A086639.P13392019721726624882

`dr(A000796((n+1)*n/2))`
-/

namespace A086639.P13392019721726624882
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000796 ((SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n : ℚ) / 2))).toNat + 1))

end

end A086639.P13392019721726624882

/-! ## A086639.P8217992340259026817

`A000796(n²-C(n, 2))%10`
-/

namespace A086639.P8217992340259026817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 (n ^ 2 - Nat.choose n 2 + 1)) 10

end

end A086639.P8217992340259026817

/-! ## A086639.P17775016069776455323

`A000796(A000217(n))%10`
-/

namespace A086639.P17775016069776455323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000796 ((A000217 n).toNat + 1)) 10

end

end A086639.P17775016069776455323

/-! ## A086639.P4188086192085570052

`lcm(A000796(A000217(n)), A020985(n))`
-/

namespace A086639.P4188086192085570052
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000796 ((A000217 n).toNat + 1)) (A020985 n)

end

end A086639.P4188086192085570052

/-! ## A086639.P1742934014559768932

`and(A000796(A000217(n)), A125169(n))`
-/

namespace A086639.P1742934014559768932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000796 ((A000217 n).toNat + 1)) (A125169 n)

end

end A086639.P1742934014559768932

/-! ## A086639.P12527754751922216567

`or(A000007(n), A000796(A000217(n)))`
-/

namespace A086639.P12527754751922216567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A000796 ((A000217 n).toNat + 1))

end

end A086639.P12527754751922216567

/-! ## A086639.P17305401808158983024

`char[A061579(n)]*A000796(A000217(n))`
-/

namespace A086639.P17305401808158983024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000796 ((A000217 n).toNat + 1)

end

end A086639.P17305401808158983024

/-! ## A086639.P15072600813673531551

`char[A163355(n)]*A000796(A000217(n))`
-/

namespace A086639.P15072600813673531551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163355 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A000796 ((A000217 n).toNat + 1)

end

end A086639.P15072600813673531551

/-! ## A086639.P5537632023122314368

`A036987(A016825(n))+A000796(A000217(n))`
-/

namespace A086639.P5537632023122314368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (A016825 n).toNat + A000796 ((A000217 n).toNat + 1)

end

end A086639.P5537632023122314368

/-! ## A086639.P17303270010028790223

`A055671(A055671(n))+A000796(A000217(n))`
-/

namespace A086639.P17303270010028790223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (A055671 n).toNat + A000796 ((A000217 n).toNat + 1)

end

end A086639.P17303270010028790223

/-! ## A086639.P6170538065278751251

`A064834(A064834(n))+A000796(A000217(n))`
-/

namespace A086639.P6170538065278751251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 (A064834 n).toNat + A000796 ((A000217 n).toNat + 1)

end

end A086639.P6170538065278751251

/-! ## A086639.P18300328263667930623

`A136517(n)%10`
-/

namespace A086639.P18300328263667930623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136517 n) 10

end

end A086639.P18300328263667930623

/-! ## A086639.P10988329556364519978

`A001355(∑[2*n]+1)`
-/

namespace A086639.P10988329556364519978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A086639.P10988329556364519978

/-! ## A086639.P5690937372593927122

`A110766(∑[2*n]+1)`
-/

namespace A086639.P5690937372593927122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A086639.P5690937372593927122

/-! ## A086639.P5725806530344406485

`A076790(n²+n+1)`
-/

namespace A086639.P5725806530344406485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 (n ^ 2 + (n + 1))

end

end A086639.P5725806530344406485

/-!
# A086640: Arrange n^2 octagons that each have area 7 so that they leave (n-1)^2 square gaps each with area 2; a(n) is the total area of these polygons.

The programs for A086640, the canonical program `A086640.P12394422566063861792` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086640 has offset 1).

The definition of A086640 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086640.P12394422566063861792

`∑[18*n+5]+2`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A086640

/-- `∑[18*n+5]+2` -/
def P12394422566063861792.Spec : Prop :=
  ∀ n, (P12394422566063861792.a n : ℤ) = A086640 (n + 1)

theorem P12394422566063861792.correct : P12394422566063861792.Spec := by
  intro n
  simp only [A086640, Nat.add_sub_cancel]

end A086640

/-! ## A086640.P7081174093367229694

`∑[a(n-1)+18]` with `a(0)=7, a(1)=23`
-/

namespace A086640.P7081174093367229694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 23] fun n f1 =>
  f1 (n - 1) + 18

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086640.P7081174093367229694

namespace A086640

/-- `∑[a(n-1)+18]` -/
def P7081174093367229694.Spec : Prop :=
  ∀ n, (P7081174093367229694.a n : ℤ) = A086640 (n + 1)

end A086640

/-! ## A086640.P9146353709107687601

`or(2, (9*n+5)*(n+1))`
-/

namespace A086640.P9146353709107687601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 ((9 * n + 5) * (n + 1))

end

end A086640.P9146353709107687601

namespace A086640

/-- `or(2, (9*n+5)*(n+1))` -/
def P9146353709107687601.Spec : Prop :=
  ∀ n, (P9146353709107687601.a n : ℤ) = A086640 (n + 1)

end A086640

/-! ## A086640.P11584201419632696192

`xor(2, (2*n+n+2)²+2*n+1)`
-/

namespace A086640.P11584201419632696192
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 ((2 * n + (n + 2)) ^ 2 + (2 * n + 1))

end

end A086640.P11584201419632696192

namespace A086640

/-- `xor(2, (2*n+n+2)²+2*n+1)` -/
def P11584201419632696192.Spec : Prop :=
  ∀ n, (P11584201419632696192.a n : ℤ) = A086640 (n + 1)

end A086640

/-! ## A086640.P11193034260504718425

`Δ[A067389(n)+∑[n]]`
-/

namespace A086640.P11193034260504718425
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067389 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086640.P11193034260504718425

namespace A086640

/-- `Δ[A067389(n)+∑[n]]` -/
def P11193034260504718425.Spec : Prop :=
  ∀ n, P11193034260504718425.a n = A086640 (n + 1)

end A086640

/-! ## A086640.P3670372751517197199

`abs(A152743(n+1)-(n-1))`
-/

namespace A086640.P3670372751517197199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A152743 (n + 1) - ((n : ℤ) - 1)|

end

end A086640.P3670372751517197199

namespace A086640

/-- `abs(A152743(n+1)-(n-1))` -/
def P3670372751517197199.Spec : Prop :=
  ∀ n, P3670372751517197199.a n = A086640 (n + 1)

end A086640

/-! ## A086640.P16917876481167378821

`abs(2*n-A013656(n+1))`
-/

namespace A086640.P16917876481167378821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) - A013656 (n + 1)|

end

end A086640.P16917876481167378821

namespace A086640

/-- `abs(2*n-A013656(n+1))` -/
def P16917876481167378821.Spec : Prop :=
  ∀ n, P16917876481167378821.a n = A086640 (n + 1)

end A086640

/-! ## A086640.P1069507582555561609

`Δ[A027903(n)-A000326(n)]`
-/

namespace A086640.P1069507582555561609
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027903 n - A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086640.P1069507582555561609

namespace A086640

/-- `Δ[A027903(n)-A000326(n)]` -/
def P1069507582555561609.Spec : Prop :=
  ∀ n, P1069507582555561609.a n = A086640 (n + 1)

end A086640

/-! ## A086640.P11870098058525332188

`Δ[A130885(n+1)-A060544(n+1)]`
-/

namespace A086640.P11870098058525332188
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130885 (n + 1) - A060544 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086640.P11870098058525332188

namespace A086640

/-- `Δ[A130885(n+1)-A060544(n+1)]` -/
def P11870098058525332188.Spec : Prop :=
  ∀ n, P11870098058525332188.a n = A086640 (n + 1)

end A086640

/-! ## A086640.P11211012082184353615

`record[Δ[A000567(A026741(n)+1)]-n]`
-/

namespace A086640.P11211012082184353615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000567 (A026741 n + 1).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086640.P11211012082184353615

namespace A086640

/-- `record[Δ[A000567(A026741(n)+1)]-n]` -/
def P11211012082184353615.Spec : Prop :=
  ∀ n, P11211012082184353615.a n = A086640 (n + 1)

end A086640

/-! ## A086640.P757542237162023011

`A008816(3*(3*n+2))`
-/

namespace A086640.P757542237162023011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008816 (3 * (3 * n + 2))

end

end A086640.P757542237162023011

namespace A086640

/-- `A008816(3*(3*n+2))` -/
def P757542237162023011.Spec : Prop :=
  ∀ n, P757542237162023011.a n = A086640 (n + 1)

end A086640

/-! ## A086640.P7076921474751210198

`∑[record[A139391(A347365(n+3))]]`
-/

namespace A086640.P7076921474751210198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139391 (A347365 (n + 3)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086640.P7076921474751210198

namespace A086640

/-- `∑[record[A139391(A347365(n+3))]]` -/
def P7076921474751210198.Spec : Prop :=
  ∀ n, P7076921474751210198.a n = A086640 (n + 1)

end A086640

/-! ## A086640.P7377639080720606296

`A008809(A019557(n+1))`
-/

namespace A086640.P7377639080720606296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008809 (A019557 (n + 1)).toNat

end

end A086640.P7377639080720606296

namespace A086640

/-- `A008809(A019557(n+1))` -/
def P7377639080720606296.Spec : Prop :=
  ∀ n, P7377639080720606296.a n = A086640 (n + 1)

end A086640

/-!
# A086642: Maximal number of zeros in a column of the character table of the symmetric group S_n.

The programs for A086642, there is no canonical definition to state claims against.
-/

/-! ## A086642.P17194846616757402705

`record[A168019(n+4)]-n`
-/

namespace A086642.P17194846616757402705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168019 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A086642.P17194846616757402705

/-! ## A086642.P9986835990124736849

`record[A026794(n+5)]-n`
-/

namespace A086642.P9986835990124736849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026794 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A086642.P9986835990124736849

/-! ## A086642.P4738994306951009563

`record[A182703(n+5)]-n`
-/

namespace A086642.P4738994306951009563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182703 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n : ℤ)

end

end A086642.P4738994306951009563

/-! ## A086642.P13768944194132999940

`∑[A083751(n+1)+char[2]]`
-/

namespace A086642.P13768944194132999940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083751 (n + 1) + ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086642.P13768944194132999940

/-! ## A086642.P7882546577249693919

`(A000041(n+1)-n)%n!`
-/

namespace A086642.P7882546577249693919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000041 (n + 1) - (n : ℤ)) (Nat.factorial n : ℤ)

end

end A086642.P7882546577249693919

/-!
# A086643: Number of zeros in the character table of the group GL(2,Z_n).

The programs for A086643, there is no canonical definition to state claims against.
-/

/-! ## A086643.P178793394960824152

`A074989(floor(∑[3^(n-1)+1])²)`
-/

namespace A086643.P178793394960824152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074989 (⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ ^ 2).toNat

end

end A086643.P178793394960824152

/-!
# A086645: Triangle read by rows: T(n, k) = binomial(2n, 2k).

The programs for A086645, the canonical program `A086645.P14421537294405242217` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086645 has offset 0).

The definition of A086645 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086645.P14421537294405242217

`A034870(A133280(n))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A086645

/-- `A034870(A133280(n))` -/
def P14421537294405242217.Spec : Prop :=
  ∀ n, P14421537294405242217.a n = A086645 n

theorem P14421537294405242217.correct : P14421537294405242217.Spec := by
  intro n
  simp only [A086645]

end A086645

/-! ## A086645.P7981338744407111676

`2*A232535(n)-A091042(n)`
-/

namespace A086645.P7981338744407111676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A232535 n - A091042 n

end

end A086645.P7981338744407111676

namespace A086645

/-- `2*A232535(n)-A091042(n)` -/
def P7981338744407111676.Spec : Prop :=
  ∀ n, P7981338744407111676.a n = A086645 n

end A086645

/-! ## A086645.P10866206656877749056

`A103327(n)+∑[A091042(n)-A103327(n)]`
-/

namespace A086645.P10866206656877749056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 n - A103327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103327 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086645.P10866206656877749056

namespace A086645

/-- `A103327(n)+∑[A091042(n)-A103327(n)]` -/
def P10866206656877749056.Spec : Prop :=
  ∀ n, P10866206656877749056.a n = A086645 n

end A086645

/-! ## A086645.P156626310522718542

`A155495(n)/A007318(n)`
-/

namespace A086645.P156626310522718542
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A155495 n : ℚ) / (A007318 n : ℚ)

end

end A086645.P156626310522718542

namespace A086645

/-- `A155495(n)/A007318(n)` -/
def P156626310522718542.Spec : Prop :=
  ∀ n, P156626310522718542.a n = (A086645 n : ℚ)

end A086645

/-! ## A086645.P16071656934461284540

`2/A028326(n)*A155495(n)`
-/

namespace A086645.P16071656934461284540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A028326 n : ℚ) * (A155495 n : ℚ)

end

end A086645.P16071656934461284540

namespace A086645

/-- `2/A028326(n)*A155495(n)` -/
def P16071656934461284540.Spec : Prop :=
  ∀ n, P16071656934461284540.a n = (A086645 n : ℚ)

end A086645

/-! ## A086645.P11996330332718307377

`A356546(n)/A068555(n)`
-/

namespace A086645.P11996330332718307377
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A356546 n : ℚ) / (A068555 n : ℚ)

end

end A086645.P11996330332718307377

namespace A086645

/-- `A356546(n)/A068555(n)` -/
def P11996330332718307377.Spec : Prop :=
  ∀ n, P11996330332718307377.a n = (A086645 n : ℚ)

end A086645

/-! ## A086645.P10143563350587832176

`A034839(A061885(n))`
-/

namespace A086645.P10143563350587832176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034839 (A061885 n).toNat

end

end A086645.P10143563350587832176

namespace A086645

/-- `A034839(A061885(n))` -/
def P10143563350587832176.Spec : Prop :=
  ∀ n, P10143563350587832176.a n = A086645 n

end A086645

/-! ## A086645.P9711097524610289075

`A342982(n)/A078391(n)`
-/

namespace A086645.P9711097524610289075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A342982 n : ℚ) / (A078391 n : ℚ)

end

end A086645.P9711097524610289075

namespace A086645

/-- `A342982(n)/A078391(n)` -/
def P9711097524610289075.Spec : Prop :=
  ∀ n, P9711097524610289075.a n = (A086645 n : ℚ)

end A086645

/-! ## A086645.P2530107203678480650

`A069466(n)/A067804(n)`
-/

namespace A086645.P2530107203678480650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A069466 n : ℚ) / (A067804 n : ℚ)

end

end A086645.P2530107203678480650

namespace A086645

/-- `A069466(n)/A067804(n)` -/
def P2530107203678480650.Spec : Prop :=
  ∀ n, P2530107203678480650.a n = (A086645 n : ℚ)

end A086645

/-! ## A086645.P9926971555527973818

`A202023(A292564(n))`
-/

namespace A086645.P9926971555527973818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202023 (A292564 n).toNat

end

end A086645.P9926971555527973818

namespace A086645

/-- `A202023(A292564(n))` -/
def P9926971555527973818.Spec : Prop :=
  ∀ n, P9926971555527973818.a n = A086645 n

end A086645

/-! ## A086645.P109772617339837480

`A007318(A185868(n+1)-1)`
-/

namespace A086645.P109772617339837480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A185868 (n + 1) - 1).toNat

end

end A086645.P109772617339837480

namespace A086645

/-- `A007318(A185868(n+1)-1)` -/
def P109772617339837480.Spec : Prop :=
  ∀ n, P109772617339837480.a n = A086645 n

end A086645

/-! ## A086645.P13659966777973743299

`A007318(A005843(n)+A003056(n)²)`
-/

namespace A086645.P13659966777973743299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A005843 n + A003056 n ^ 2).toNat

end

end A086645.P13659966777973743299

namespace A086645

/-- `A007318(A005843(n)+A003056(n)²)` -/
def P13659966777973743299.Spec : Prop :=
  ∀ n, P13659966777973743299.a n = A086645 n

end A086645

/-! ## A086645.P10116836958027638436

`A127625(A185868(n+1))`
-/

namespace A086645.P10116836958027638436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127625 (A185868 (n + 1)).toNat

end

end A086645.P10116836958027638436

namespace A086645

/-- `A127625(A185868(n+1))` -/
def P10116836958027638436.Spec : Prop :=
  ∀ n, P10116836958027638436.a n = A086645 n

end A086645

/-! ## A086645.P6912692665066553046

`A097805(A185869(n+1))`
-/

namespace A086645.P6912692665066553046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A185869 (n + 1)).toNat

end

end A086645.P6912692665066553046

namespace A086645

/-- `A097805(A185869(n+1))` -/
def P6912692665066553046.Spec : Prop :=
  ∀ n, P6912692665066553046.a n = A086645 n

end A086645

/-! ## A086645.P14664940983619219655

`A071919(A185869(n+1)-1)`
-/

namespace A086645.P14664940983619219655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (A185869 (n + 1) - 1).toNat

end

end A086645.P14664940983619219655

namespace A086645

/-- `A071919(A185869(n+1)-1)` -/
def P14664940983619219655.Spec : Prop :=
  ∀ n, P14664940983619219655.a n = A086645 n

end A086645

/-! ## A086645.P434481261600680190

`A097805(A185870(n+1)-1)`
-/

namespace A086645.P434481261600680190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (A185870 (n + 1) - 1).toNat

end

end A086645.P434481261600680190

namespace A086645

/-- `A097805(A185870(n+1)-1)` -/
def P434481261600680190.Spec : Prop :=
  ∀ n, P434481261600680190.a n = A086645 n

end A086645

/-! ## A086645.P10465516772613457847

`A007318(eq[1, A327571(n+2)])`
-/

namespace A086645.P10465516772613457847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327571 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A086645.P10465516772613457847

namespace A086645

/-- `A007318(eq[1, A327571(n+2)])` -/
def P10465516772613457847.Spec : Prop :=
  ∀ n, P10465516772613457847.a n = A086645 n

end A086645

/-! ## A086645.P12623355140738201822

`A007318(lt[A327571(n+2), 2])`
-/

namespace A086645.P12623355140738201822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327571 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A086645.P12623355140738201822

namespace A086645

/-- `A007318(lt[A327571(n+2), 2])` -/
def P12623355140738201822.Spec : Prop :=
  ∀ n, P12623355140738201822.a n = A086645 n

end A086645

/-! ## A086645.P13808815303460959839

`A110555(lt[A238801(n+1), A091917(n+1)])`
-/

namespace A086645.P13808815303460959839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110555 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086645.P13808815303460959839

namespace A086645

/-- `A110555(lt[A238801(n+1), A091917(n+1)])` -/
def P13808815303460959839.Spec : Prop :=
  ∀ n, P13808815303460959839.a n = A086645 n

end A086645

/-! ## A086645.P15742399152192483945

`A144225(A185871(n+1))`
-/

namespace A086645.P15742399152192483945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144225 (A185871 (n + 1)).toNat

end

end A086645.P15742399152192483945

namespace A086645

/-- `A144225(A185871(n+1))` -/
def P15742399152192483945.Spec : Prop :=
  ∀ n, P15742399152192483945.a n = A086645 n

end A086645

/-!
# A086646: Triangle, read by rows, of numbers T(n,k), 0 <= k <= n, given by T(n,k) = A000364(n-k)*binomial(2*n, 2*k).

The programs for A086646, there is no canonical definition to state claims against.
-/

/-! ## A086646.P16040988597967310162

`abs(A119879(eq[0, A155998(n)]))`
-/

namespace A086646.P16040988597967310162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A119879 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)|

end

end A086646.P16040988597967310162

/-! ## A086646.P9476205193263476883

`A109449(∑[char[∑[n+1]]]²+2*n)`
-/

namespace A086646.P9476205193263476883
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 + 2 * n)

end

end A086646.P9476205193263476883

/-! ## A086646.P14424670656784905037

`A247453(eq[0, A155998(n)])`
-/

namespace A086646.P14424670656784905037
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247453 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A086646.P14424670656784905037

/-! ## A086646.P15912165575786303411

`A247453(comp[A132118(n+1)])`
-/

namespace A086646.P15912165575786303411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132118 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247453 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A086646.P15912165575786303411

/-! ## A086646.P793367621824457982

`A247453(A185868(n+1)-1)`
-/

namespace A086646.P793367621824457982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247453 (A185868 (n + 1) - 1).toNat

end

end A086646.P793367621824457982

/-!
# A086647: Number of monomials in expansion of permanent of an n X n Toeplitz matrix [t(|i-j|) ] in terms of its entries.

The programs for A086647, there is no canonical definition to state claims against.
-/

/-! ## A086647.P3170740206971717629

`A306242(A025142(n+1)+A001700(n))`
-/

namespace A086647.P3170740206971717629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306242 (A025142 (n + 1) + A001700 n).toNat

end

end A086647.P3170740206971717629

/-! ## A086647.P429441150685691946

`A026834(A150053(n))`
-/

namespace A086647.P429441150685691946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A150053 n).toNat

end

end A086647.P429441150685691946

/-! ## A086647.P17871564674544446847

`A026834(A150065(n))`
-/

namespace A086647.P17871564674544446847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026834 (A150065 n).toNat

end

end A086647.P17871564674544446847

/-!
# A086649: 

The programs for A086649, there is no canonical definition to state claims against.
-/

/-! ## A086649.P3218544638571822992

`A001359(n+1)^p?[A000040(n+1)+2]`
-/

namespace A086649.P3218544638571822992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001359 (n + 1) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A086649.P3218544638571822992

/-!
# A086650: n-th composite number raised to the n-th prime number.

The programs for A086650, the canonical program `A086650.P6036601122150280832` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086650 has offset 1).

The definition of A086650 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A002808, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086650.P6036601122150280832

`A002808(n+1)^A000040(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086650

/-- `A002808(n+1)^A000040(n+1)` -/
def P6036601122150280832.Spec : Prop :=
  ∀ n, P6036601122150280832.a n = (A086650 (n + 1) : ℚ)

end A086650

/-! ## A086650.P5279190532015507348

`A018252(n+2)^A000040(n+1)`
-/

namespace A086650.P5279190532015507348
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) ^ (A000040 (n + 1) : ℤ)

end

end A086650.P5279190532015507348

namespace A086650

/-- `A018252(n+2)^A000040(n+1)` -/
def P5279190532015507348.Spec : Prop :=
  ∀ n, P5279190532015507348.a n = (A086650 (n + 1) : ℚ)

end A086650

/-! ## A086650.P550390032352383168

`A018252(n+2)^record[A006530(n+2)]`
-/

namespace A086650.P550390032352383168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A086650.P550390032352383168

namespace A086650

/-- `A018252(n+2)^record[A006530(n+2)]` -/
def P550390032352383168.Spec : Prop :=
  ∀ n, P550390032352383168.a n = (A086650 (n + 1) : ℚ)

end A086650

/-! ## A086650.P10370692578203520765

`A018252(n+2)^record[A020639(n+2)]`
-/

namespace A086650.P10370692578203520765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ)

end

end A086650.P10370692578203520765

namespace A086650

/-- `A018252(n+2)^record[A020639(n+2)]` -/
def P10370692578203520765.Spec : Prop :=
  ∀ n, P10370692578203520765.a n = (A086650 (n + 1) : ℚ)

end A086650

/-! ## A086650.P13653854831811799855

`A018252(n+2)^p?[A018252(n+1)-7]`
-/

namespace A086650.P13653854831811799855
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 7

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018252 (n + 2) : ℚ) ^ (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℤ)

end

end A086650.P13653854831811799855

namespace A086650

/-- `A018252(n+2)^p?[A018252(n+1)-7]` -/
def P13653854831811799855.Spec : Prop :=
  ∀ n, P13653854831811799855.a n = (A086650 (n + 1) : ℚ)

end A086650

/-!
# A086652: a(n) = A000225(n+3)-A052955(n).

The programs for A086652, the canonical program `A086652.P12039658509500316263` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086652 has offset 0).

The definition of A086652 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086652.P12039658509500316263

`A000225(n+3)-A052955(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086652

/-- `A000225(n+3)-A052955(n)` -/
def P12039658509500316263.Spec : Prop :=
  ∀ n, P12039658509500316263.a n = A086652 n

theorem P12039658509500316263.correct : P12039658509500316263.Spec := by
  intro n
  simp only [A086652]

end A086652

/-! ## A086652.P5619595243108897344

`2^floor(n/2)+2*a(n-1)` with `a(0)=6`
-/

namespace A086652.P5619595243108897344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [6] fun n a =>
  (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) + 2 * a (n - 1)

end

end A086652.P5619595243108897344

namespace A086652

/-- `2^floor(n/2)+2*a(n-1)` -/
def P5619595243108897344.Spec : Prop :=
  ∀ n, P5619595243108897344.a n = (A086652 n : ℚ)

end A086652

/-! ## A086652.P10028784356585966357

`2^(n+3)-A164090(n+1)`
-/

namespace A086652.P10028784356585966357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A164090 (n + 1)

end

end A086652.P10028784356585966357

namespace A086652

/-- `2^(n+3)-A164090(n+1)` -/
def P10028784356585966357.Spec : Prop :=
  ∀ n, P10028784356585966357.a n = A086652 n

end A086652

/-! ## A086652.P5988134048471565802

`2^(n+3)-A029744(n+2)`
-/

namespace A086652.P5988134048471565802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 3) : ℤ) - A029744 (n + 2)

end

end A086652.P5988134048471565802

namespace A086652

/-- `2^(n+3)-A029744(n+2)` -/
def P5988134048471565802.Spec : Prop :=
  ∀ n, P5988134048471565802.a n = A086652 n

end A086652

/-! ## A086652.P2702700401544457218

`A274230(n)+A086224(n)`
-/

namespace A086652.P2702700401544457218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n + A086224 n

end

end A086652.P2702700401544457218

namespace A086652

/-- `A274230(n)+A086224(n)` -/
def P2702700401544457218.Spec : Prop :=
  ∀ n, P2702700401544457218.a n = A086652 n

end A086652

/-! ## A086652.P14610313789844236487

`A083705(n)-A183978(n+1)`
-/

namespace A086652.P14610313789844236487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083705 n - A183978 (n + 1)

end

end A086652.P14610313789844236487

namespace A086652

/-- `A083705(n)-A183978(n+1)` -/
def P14610313789844236487.Spec : Prop :=
  ∀ n, P14610313789844236487.a n = A086652 n

end A086652

/-! ## A086652.P11675759952761596741

`A126646(n+2)-A052955(n)`
-/

namespace A086652.P11675759952761596741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126646 (n + 2) - A052955 n

end

end A086652.P11675759952761596741

namespace A086652

/-- `A126646(n+2)-A052955(n)` -/
def P11675759952761596741.Spec : Prop :=
  ∀ n, P11675759952761596741.a n = A086652 n

end A086652

/-! ## A086652.P12676161920680886596

`∪[A086221(n+1), A171496(n)]`
-/

namespace A086652.P12676161920680886596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171496 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A086652.P12676161920680886596

namespace A086652

/-- `∪[A086221(n+1), A171496(n)]` -/
def P12676161920680886596.Spec : Prop :=
  ∀ n, (P12676161920680886596.a n : ℤ) = A086652 n

end A086652

/-! ## A086652.P2060152283357121688

`A164090(n+1)+A107659(n+1)`
-/

namespace A086652.P2060152283357121688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + A107659 (n + 1)

end

end A086652.P2060152283357121688

namespace A086652

/-- `A164090(n+1)+A107659(n+1)` -/
def P2060152283357121688.Spec : Prop :=
  ∀ n, P2060152283357121688.a n = A086652 n

end A086652

/-! ## A086652.P13876447585117498369

`A134067(n+1)-A052955(n)+1`
-/

namespace A086652.P13876447585117498369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134067 (n + 1) - A052955 n + 1

end

end A086652.P13876447585117498369

namespace A086652

/-- `A134067(n+1)-A052955(n)+1` -/
def P13876447585117498369.Spec : Prop :=
  ∀ n, P13876447585117498369.a n = A086652 n

end A086652

/-! ## A086652.P4318997249440407271

`A354294(n+1)+A135098(n+2)`
-/

namespace A086652.P4318997249440407271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354294 (n + 1) + A135098 (n + 2)

end

end A086652.P4318997249440407271

namespace A086652

/-- `A354294(n+1)+A135098(n+2)` -/
def P4318997249440407271.Spec : Prop :=
  ∀ n, P4318997249440407271.a n = A086652 n

end A086652

/-! ## A086652.P6453370381255315882

`A135094(n+2)+A001445(n+2)`
-/

namespace A086652.P6453370381255315882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135094 (n + 2) + A001445 (n + 2)

end

end A086652.P6453370381255315882

namespace A086652

/-- `A135094(n+2)+A001445(n+2)` -/
def P6453370381255315882.Spec : Prop :=
  ∀ n, P6453370381255315882.a n = A086652 n

end A086652

/-! ## A086652.P13335241685868034551

`A153972(n+3)-A209724(n+1)`
-/

namespace A086652.P13335241685868034551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 (n + 3) - A209724 (n + 1)

end

end A086652.P13335241685868034551

namespace A086652

/-- `A153972(n+3)-A209724(n+1)` -/
def P13335241685868034551.Spec : Prop :=
  ∀ n, P13335241685868034551.a n = A086652 n

end A086652

/-! ## A086652.P15767250504122097265

`A052955(2*(n+2))-A052955(n)`
-/

namespace A086652.P15767250504122097265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 (2 * (n + 2)) - A052955 n

end

end A086652.P15767250504122097265

namespace A086652

/-- `A052955(2*(n+2))-A052955(n)` -/
def P15767250504122097265.Spec : Prop :=
  ∀ n, P15767250504122097265.a n = A086652 n

end A086652

/-! ## A086652.P313852495621475234

`A107659(n+1)+A163978(n+2)/2`
-/

namespace A086652.P313852495621475234
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107659 (n + 1) : ℚ) + (A163978 (n + 2) : ℚ) / 2

end

end A086652.P313852495621475234

namespace A086652

/-- `A107659(n+1)+A163978(n+2)/2` -/
def P313852495621475234.Spec : Prop :=
  ∀ n, P313852495621475234.a n = (A086652 n : ℚ)

end A086652

/-! ## A086652.P428651199759437891

`A020707(n+1)-A163978(n+2)/2`
-/

namespace A086652.P428651199759437891
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A020707 (n + 1) : ℚ) - (A163978 (n + 2) : ℚ) / 2

end

end A086652.P428651199759437891

namespace A086652

/-- `A020707(n+1)-A163978(n+2)/2` -/
def P428651199759437891.Spec : Prop :=
  ∀ n, P428651199759437891.a n = (A086652 n : ℚ)

end A086652

/-! ## A086652.P16937278638480373927

`A209724(2*n+5)-A209724(n+1)`
-/

namespace A086652.P16937278638480373927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (2 * n + 5) - A209724 (n + 1)

end

end A086652.P16937278638480373927

namespace A086652

/-- `A209724(2*n+5)-A209724(n+1)` -/
def P16937278638480373927.Spec : Prop :=
  ∀ n, P16937278638480373927.a n = A086652 n

end A086652

/-! ## A086652.P17609541014497377288

`A010737(2*n+1)+A027556(n+1)/2`
-/

namespace A086652.P17609541014497377288
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010737 (2 * n + 1) : ℚ) + (A027556 (n + 1) : ℚ) / 2

end

end A086652.P17609541014497377288

namespace A086652

/-- `A010737(2*n+1)+A027556(n+1)/2` -/
def P17609541014497377288.Spec : Prop :=
  ∀ n, P17609541014497377288.a n = (A086652 n : ℚ)

end A086652

/-! ## A086652.P12101568570913326213

`A143095(2*n+1)+A107659(n+1)/2`
-/

namespace A086652.P12101568570913326213
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143095 (2 * n + 1) : ℚ) + (A107659 (n + 1) : ℚ) / 2

end

end A086652.P12101568570913326213

namespace A086652

/-- `A143095(2*n+1)+A107659(n+1)/2` -/
def P12101568570913326213.Spec : Prop :=
  ∀ n, P12101568570913326213.a n = (A086652 n : ℚ)

end A086652

/-!
# A086653: a(n) = 2^n + 3*n.

The programs for A086653, the canonical program `A086653.P4827462805386509383` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086653 has offset 1).

The definition of A086653 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A086653.P4827462805386509383

`4*a(n-1)-5*a(n-2)+2*a(n-3)` with `a(0)=5, a(1)=10, a(2)=17`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A086653

/-- `4*a(n-1)-5*a(n-2)+2*a(n-3)` -/
def P4827462805386509383.Spec : Prop :=
  ∀ n, P4827462805386509383.a n = A086653 (n + 1)

theorem P4827462805386509383.correct : P4827462805386509383.Spec := by
  intro n
  simp only [A086653, Nat.add_sub_cancel]

end A086653

/-! ## A086653.P14555512469799046143

`∑[2^n+3]+1`
-/

namespace A086653.P14555512469799046143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A086653.P14555512469799046143

namespace A086653

/-- `∑[2^n+3]+1` -/
def P14555512469799046143.Spec : Prop :=
  ∀ n, (P14555512469799046143.a n : ℤ) = A086653 (n + 1)

end A086653

/-! ## A086653.P13560871185262716395

`∑[4-or(1, -2^n)]`
-/

namespace A086653.P13560871185262716395
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - Int.lor 1 (-(2 ^ n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086653.P13560871185262716395

namespace A086653

/-- `∑[4-or(1, -2^n)]` -/
def P13560871185262716395.Spec : Prop :=
  ∀ n, P13560871185262716395.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P8986601682197073770

`∑[2*a(n-1)-3]` with `a(0)=5, a(1)=5`
-/

namespace A086653.P8986601682197073770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f1 =>
  2 * f1 (n - 1) - 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086653.P8986601682197073770

namespace A086653

/-- `∑[2*a(n-1)-3]` -/
def P8986601682197073770.Spec : Prop :=
  ∀ n, P8986601682197073770.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P13911226445642050486

`floor(2^n+a(n-1)+3)` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A086653.P13911226445642050486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5] fun n a =>
  2 ^ n + (a (n - 1) + 3)

end

end A086653.P13911226445642050486

namespace A086653

/-- `floor(2^n+a(n-1)+3)` -/
def P13911226445642050486.Spec : Prop :=
  ∀ n, (P13911226445642050486.a n : ℤ) = A086653 (n + 1)

end A086653

/-! ## A086653.P4680615819922623278

`∑[a(n-1)+a(n-1)-3]` with `a(0)=5, a(1)=5`
-/

namespace A086653.P4680615819922623278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f1 =>
  f1 (n - 1) + (f1 (n - 1) - 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086653.P4680615819922623278

namespace A086653

/-- `∑[a(n-1)+a(n-1)-3]` -/
def P4680615819922623278.Spec : Prop :=
  ∀ n, P4680615819922623278.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P17002463350982656886

`∑[a(n-1)-(3-a(n-1))]` with `a(0)=5, a(1)=5`
-/

namespace A086653.P17002463350982656886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 5] fun n f1 =>
  f1 (n - 1) - (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086653.P17002463350982656886

namespace A086653

/-- `∑[a(n-1)-(3-a(n-1))]` -/
def P17002463350982656886.Spec : Prop :=
  ∀ n, P17002463350982656886.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P15003918244651653683

`∑[A255047(n)+4]`
-/

namespace A086653.P15003918244651653683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255047 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086653.P15003918244651653683

namespace A086653

/-- `∑[A255047(n)+4]` -/
def P15003918244651653683.Spec : Prop :=
  ∀ n, P15003918244651653683.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P7059599134118731506

`∑[or(1, A062709(n))]`
-/

namespace A086653.P7059599134118731506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A062709 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086653.P7059599134118731506

namespace A086653

/-- `∑[or(1, A062709(n))]` -/
def P7059599134118731506.Spec : Prop :=
  ∀ n, P7059599134118731506.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P7637929482636345220

`∑[Δ[A155559(n)]+3]`
-/

namespace A086653.P7637929482636345220
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155559 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086653.P7637929482636345220

namespace A086653

/-- `∑[Δ[A155559(n)]+3]` -/
def P7637929482636345220.Spec : Prop :=
  ∀ n, P7637929482636345220.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P18165095093795091703

`∑[2*A011782(n)+3]`
-/

namespace A086653.P18165095093795091703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A011782 n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086653.P18165095093795091703

namespace A086653

/-- `∑[2*A011782(n)+3]` -/
def P18165095093795091703.Spec : Prop :=
  ∀ n, P18165095093795091703.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P13134428845848175437

`abs(∑[∑[A157823(n)]]+n)`
-/

namespace A086653.P13134428845848175437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157823 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)|

end

end A086653.P13134428845848175437

namespace A086653

/-- `abs(∑[∑[A157823(n)]]+n)` -/
def P13134428845848175437.Spec : Prop :=
  ∀ n, P13134428845848175437.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P7488479143348400669

`abs(∑[A000079(n)+4]-n)`
-/

namespace A086653.P7488479143348400669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)|

end

end A086653.P7488479143348400669

namespace A086653

/-- `abs(∑[A000079(n)+4]-n)` -/
def P7488479143348400669.Spec : Prop :=
  ∀ n, P7488479143348400669.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P4946288744558377490

`∑[A000051(A028310(n))+2]`
-/

namespace A086653.P4946288744558377490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (A028310 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086653.P4946288744558377490

namespace A086653

/-- `∑[A000051(A028310(n))+2]` -/
def P4946288744558377490.Spec : Prop :=
  ∀ n, P4946288744558377490.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P10478839885944310391

`∑[A131572(A004277(n)+1)+3]`
-/

namespace A086653.P10478839885944310391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131572 (A004277 n + 1).toNat + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086653.P10478839885944310391

namespace A086653

/-- `∑[A131572(A004277(n)+1)+3]` -/
def P10478839885944310391.Spec : Prop :=
  ∀ n, P10478839885944310391.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P15508672176140514715

`Δ[A132109(n+1)+n²]`
-/

namespace A086653.P15508672176140514715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132109 (n + 1) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086653.P15508672176140514715

namespace A086653

/-- `Δ[A132109(n+1)+n²]` -/
def P15508672176140514715.Spec : Prop :=
  ∀ n, P15508672176140514715.a n = A086653 (n + 1)

end A086653

/-! ## A086653.P13774554735761361798

`Δ[A335439(n+2)+n²]`
-/

namespace A086653.P13774554735761361798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335439 (n + 2) + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086653.P13774554735761361798

namespace A086653

/-- `Δ[A335439(n+2)+n²]` -/
def P13774554735761361798.Spec : Prop :=
  ∀ n, P13774554735761361798.a n = A086653 (n + 1)

end A086653

/-!
# A086655: (binomial(2*p,p)-2)/(2*p) where p runs through the primes.

The programs for A086655, there is no canonical definition to state claims against.
-/

/-! ## A086655.P13314894517302258230

`A006177(p?[comp[n²]])`
-/

namespace A086655.P13314894517302258230
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006177 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086655.P13314894517302258230

/-! ## A086655.P15174802408761704595

`A022553(p?[comp[n²]])`
-/

namespace A086655.P15174802408761704595
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022553 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086655.P15174802408761704595

/-! ## A086655.P12319768598827988569

`A177454(n+1)/2`
-/

namespace A086655.P12319768598827988569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177454 (n + 1) : ℚ) / 2

end

end A086655.P12319768598827988569

/-! ## A086655.P12888262290344341544

`A006177(A000040(n+1))`
-/

namespace A086655.P12888262290344341544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006177 (A000040 (n + 1)).toNat

end

end A086655.P12888262290344341544

/-! ## A086655.P256012606897074430

`A006177(A006005(n+1))`
-/

namespace A086655.P256012606897074430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006177 (A006005 (n + 1)).toNat

end

end A086655.P256012606897074430

/-!
# A086657: Write decimal expansion of e in triangular form; sequence gives right edge.

The programs for A086657, there is no canonical definition to state claims against.
-/

/-! ## A086657.P2752725359891923252

`A001113(∑[n]+n)`
-/

namespace A086657.P2752725359891923252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (∑ j ∈ Finset.range (n + 1), f1 j + n + 1)

end

end A086657.P2752725359891923252

/-! ## A086657.P3219366424417726956

`9-A121239(∑[n]+n)`
-/

namespace A086657.P3219366424417726956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A121239 (∑ j ∈ Finset.range (n + 1), f1 j + n + 1)

end

end A086657.P3219366424417726956

/-! ## A086657.P4697519762461430607

`A001113(record[C(n, 2)-n])%10`
-/

namespace A086657.P4697519762461430607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1)) 10

end

end A086657.P4697519762461430607

/-! ## A086657.P10067800429279890222

`A001113(floor(n*cosh(log(n+3))))%64`
-/

namespace A086657.P10067800429279890222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 (⌊(n : ℝ) * Real.cosh (Real.log (n + 3 : ℝ))⌋.toNat + 1)) 64

end

end A086657.P10067800429279890222

/-! ## A086657.P8023046829982290686

`A001113(round(n*cosh(log(n+3))))%64`
-/

namespace A086657.P8023046829982290686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 ((SequenceMachineLib.roundAway ((n : ℝ) * Real.cosh (Real.log (n + 3 : ℝ)))).toNat + 1)) 64

end

end A086657.P8023046829982290686

/-! ## A086657.P12444750873275449675

`A001113(round(n*sinh(log(n+3))))%64`
-/

namespace A086657.P12444750873275449675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 ((SequenceMachineLib.roundAway ((n : ℝ) * Real.sinh (Real.log (n + 3 : ℝ)))).toNat + 1)) 64

end

end A086657.P12444750873275449675

/-! ## A086657.P15682793460490856483

`A001113(round(n-(tan(3)-∑[n])))%64`
-/

namespace A086657.P15682793460490856483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 ((SequenceMachineLib.roundAway ((n : ℝ) - (Real.tan (3 : ℝ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)))).toNat + 1)) 64

end

end A086657.P15682793460490856483

/-! ## A086657.P3039219906129371759

`A001113(2*(C(n, 2)/2+n))%64`
-/

namespace A086657.P3039219906129371759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001113 ((SequenceMachineLib.roundAway (2 * ((Nat.choose n 2 : ℚ) / 2 + (n : ℚ)))).toNat + 1)) 64

end

end A086657.P3039219906129371759

/-! ## A086657.P11562223366591912331

`dr(A001113(A000096(n)))`
-/

namespace A086657.P11562223366591912331
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001113 ((A000096 n).toNat + 1))

end

end A086657.P11562223366591912331

/-! ## A086657.P213651202239464664

`dr(A001113(Δ[A005581(n)]))`
-/

namespace A086657.P213651202239464664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005581 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001113 ((f1 (n + 1) - f1 n).toNat + 1))

end

end A086657.P213651202239464664

/-! ## A086657.P14243741257678629576

`dr(A001113(record[A061579(n)]))`
-/

namespace A086657.P14243741257678629576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001113 ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat + 1))

end

end A086657.P14243741257678629576

/-! ## A086657.P10811894701409344720

`dr(A001113(A175631(n+3)))`
-/

namespace A086657.P10811894701409344720
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001113 ((A175631 (n + 3)).toNat + 1))

end

end A086657.P10811894701409344720

/-! ## A086657.P897364712060700488

`dr(A001113(A000217(n)+n))`
-/

namespace A086657.P897364712060700488
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001113 ((A000217 n + (n : ℤ)).toNat + 1))

end

end A086657.P897364712060700488

/-! ## A086657.P5939207153401248249

`dr(A001113(A055998(n)-n))`
-/

namespace A086657.P5939207153401248249
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001113 ((A055998 n - (n : ℤ)).toNat + 1))

end

end A086657.P5939207153401248249

/-! ## A086657.P12165823035445623005

`A014963(10*(n+1))*A001113(A000096(n))`
-/

namespace A086657.P12165823035445623005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (10 * (n + 1)) * A001113 ((A000096 n).toNat + 1)

end

end A086657.P12165823035445623005

/-! ## A086657.P10362338618489904594

`A001113(A000096(n))+and(2, A000040(n+1)²)`
-/

namespace A086657.P10362338618489904594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A000096 n).toNat + 1) + Int.land 2 (A000040 (n + 1) ^ 2)

end

end A086657.P10362338618489904594

/-! ## A086657.P12039163632476577098

`A001113(A000217(n)+n)+A008683(4*(n+1))`
-/

namespace A086657.P12039163632476577098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A000217 n + (n : ℤ)).toNat + 1) + A008683 (4 * (n + 1))

end

end A086657.P12039163632476577098

/-! ## A086657.P10569179419519526442

`A007318(C(2, n+1))*A001113(A000217(n)+n)`
-/

namespace A086657.P10569179419519526442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 1)) * A001113 ((A000217 n + (n : ℤ)).toNat + 1)

end

end A086657.P10569179419519526442

/-! ## A086657.P1571365511449006255

`A014963(52*(n+1))*A001113(A000217(n)+n)`
-/

namespace A086657.P1571365511449006255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (52 * (n + 1)) * A001113 ((A000217 n + (n : ℤ)).toNat + 1)

end

end A086657.P1571365511449006255

/-! ## A086657.P9336436391169521169

`A001113(A000217(n)+n)+A001222(gcd(n, n+1))`
-/

namespace A086657.P9336436391169521169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A000217 n + (n : ℤ)).toNat + 1) + A001222 (Nat.gcd n (n + 1))

end

end A086657.P9336436391169521169

/-!
# A086658: Write decimal expansion of e in triangular form; sequence gives left edge.

The programs for A086658, there is no canonical definition to state claims against.
-/

/-! ## A086658.P3430184205403762905

`A001113(∑[n])`
-/

namespace A086658.P3430184205403762905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A086658.P3430184205403762905

/-! ## A086658.P5968153440060928766

`9-A121239(∑[n])`
-/

namespace A086658.P5968153440060928766
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A121239 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A086658.P5968153440060928766

/-! ## A086658.P17636201322345391666

`A001355(2*(∑[n]+1))`
-/

namespace A086658.P17636201322345391666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 (2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1))

end

end A086658.P17636201322345391666

/-! ## A086658.P16191894289878031978

`dr(A001113(C(n+1, 2)))`
-/

namespace A086658.P16191894289878031978
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001113 (Nat.choose (n + 1) 2 + 1))

end

end A086658.P16191894289878031978

/-! ## A086658.P13389167880308792814

`A110779(n²+n+1)`
-/

namespace A086658.P13389167880308792814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110779 (n ^ 2 + (n + 1))

end

end A086658.P13389167880308792814

/-! ## A086658.P16436297851445588555

`A091131(∑[n])+floor(acot(n))`
-/

namespace A086658.P16436297851445588555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091131 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A086658.P16436297851445588555

/-! ## A086658.P11703119854304727365

`dr(A001113(n²-C(n, 2)))`
-/

namespace A086658.P11703119854304727365
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001113 (n ^ 2 - Nat.choose n 2 + 1))

end

end A086658.P11703119854304727365

/-! ## A086658.P12767133689046423697

`A001355(n²+2+n)%10`
-/

namespace A086658.P12767133689046423697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001355 (n ^ 2 + 2 + n)) 10

end

end A086658.P12767133689046423697

/-! ## A086658.P8389703321142465859

`dr(A001113(A000217(n)))`
-/

namespace A086658.P8389703321142465859
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001113 ((A000217 n).toNat + 1))

end

end A086658.P8389703321142465859

/-! ## A086658.P8140721164594718224

`dr(A001113(A000096(n)-n))`
-/

namespace A086658.P8140721164594718224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A001113 ((A000096 n - (n : ℤ)).toNat + 1))

end

end A086658.P8140721164594718224

/-! ## A086658.P7547043857358443787

`A054977(n)*A091131(∑[n])`
-/

namespace A086658.P7547043857358443787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A091131 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A086658.P7547043857358443787

/-!
# A086659: T(n,k) counts the set partitions of n containing k-1 blocks of length 1.

The programs for A086659, there is no canonical definition to state claims against.
-/

/-! ## A086659.P16882809152557452008

`A124323(lt[1, A124328(n+2)])`
-/

namespace A086659.P16882809152557452008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124328 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A086659.P16882809152557452008

/-! ## A086659.P12163285584140745671

`A124323(A005408(A002024(n+1))+n)`
-/

namespace A086659.P12163285584140745671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (A005408 (A002024 (n + 1)).toNat + (n : ℤ)).toNat

end

end A086659.P12163285584140745671

/-! ## A086659.P6355468970763454737

`A124323(A004273(A003057(n+2))+n)`
-/

namespace A086659.P6355468970763454737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (A004273 (A003057 (n + 2)).toNat + (n : ℤ)).toNat

end

end A086659.P6355468970763454737

/-! ## A086659.P7423091375075223759

`A124323(∑[A035214(n)+A035214(n)-1])`
-/

namespace A086659.P7423091375075223759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n + (A035214 n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086659.P7423091375075223759

/-! ## A086659.P4335417020329328927

`A124323(∑[A035214(n)-(1-A035214(n))])`
-/

namespace A086659.P4335417020329328927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n - (1 - A035214 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086659.P4335417020329328927

/-! ## A086659.P653209950963036596

`A124323(A005843(A002024(n+1))+n+1)`
-/

namespace A086659.P653209950963036596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (A005843 (A002024 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A086659.P653209950963036596

/-! ## A086659.P13254958451567409086

`A124323(lt[n+1, A175757(n+1)])`
-/

namespace A086659.P13254958451567409086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175757 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A086659.P13254958451567409086

/-! ## A086659.P12583625659560028977

`A124323(lt[A056861(n+4), A056861(n+2)])`
-/

namespace A086659.P12583625659560028977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056861 (n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056861 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086659.P12583625659560028977

/-! ## A086659.P3719191264614893250

`A124323(lt[A056860(n+1), A033306(n)])`
-/

namespace A086659.P3719191264614893250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056860 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033306 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086659.P3719191264614893250

/-! ## A086659.P18298537687680806824

`A124323(lt[2*n, A214152(n+1)])`
-/

namespace A086659.P18298537687680806824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A086659.P18298537687680806824

/-! ## A086659.P4268615398846310961

`A124323(lt[n, A214152(n+1)/2])`
-/

namespace A086659.P4268615398846310961
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A214152 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A086659.P4268615398846310961

/-! ## A086659.P11186186788173240803

`A124323(lt[n, A214152(n+1)-n])`
-/

namespace A086659.P11186186788173240803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (n + 1) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A086659.P11186186788173240803

/-! ## A086659.P17589670527346801029

`A124323(lt[A001972(n)², A214152(n+1)²])`
-/

namespace A086659.P17589670527346801029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001972 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214152 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124323 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A086659.P17589670527346801029

/-!
# A086661: Numbers k such that k*4^k-1 is prime.

The programs for A086661, there is no canonical definition to state claims against.
-/

/-! ## A086661.P3234986104990137693

`record[A246425(A230769(n+1))]`
-/

namespace A086661.P3234986104990137693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A230769 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086661.P3234986104990137693

/-! ## A086661.P11962479268628545189

`record[A152271(A230769(n+2))]`
-/

namespace A086661.P11962479268628545189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152271 (A230769 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086661.P11962479268628545189

/-!
# A086662: Stirling transform of Catalan numbers: Sum_{k=0..n} |Stirling1(n, k)|*binomial(2*k, k)/(k+1).

The programs for A086662, there is no canonical definition to state claims against.
-/

/-! ## A086662.P3327012813866295729

`char[4]+ceil(record[A275810(n+1)/12])`
-/

namespace A086662.P3327012813866295729
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275810 (n + 1) : ℚ) / 12

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) + ⌈f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)⌉

end

end A086662.P3327012813866295729

/-! ## A086662.P11786435205180667451

`A060384(A101054(n)+1)`
-/

namespace A086662.P11786435205180667451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060384 (A101054 n + 1).toNat

end

end A086662.P11786435205180667451

/-!
# A086663: Number of non-attacking knights on an n X n board with all non-perimeteral squares removed.

The programs for A086663, the canonical program `A086663.P4483690269531476833` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086663 has offset 1).

The definition of A086663 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086663.P4483690269531476833

`4*(n-1)-4%a(n-2)` with `a(0)=1, a(1)=4`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A086663

/-- `4*(n-1)-4%a(n-2)` -/
def P4483690269531476833.Spec : Prop :=
  ∀ n, P4483690269531476833.a n = A086663 (n + 1)

theorem P4483690269531476833.correct : P4483690269531476833.Spec := by
  intro n
  simp only [A086663, Nat.add_sub_cancel]

end A086663

/-!
# A086664: a(n) = n - (sum of prime power components of n).

The programs for A086664, the canonical program `A086664.P2485339941124509508` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086664 has offset 1).

The definition of A086664 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086664.P16481062120464781992

`1-∑{p}[n+1, #^val(n+1, #)]+n`
-/

namespace A086664.P16481062120464781992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((∑ p ∈ Nat.primeFactors (f1 n), p ^ SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) + (n : ℤ)

end

end A086664.P16481062120464781992

namespace A086664

/-- `1-∑{p}[n+1, #^val(n+1, #)]+n` -/
def P16481062120464781992.Spec : Prop :=
  ∀ n, P16481062120464781992.a n = A086664 (n + 1)

end A086664

/-! ## A086664.P2485339941124509508

`1-A008475(n+1)+n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086664

/-- `1-A008475(n+1)+n` -/
def P2485339941124509508.Spec : Prop :=
  ∀ n, P2485339941124509508.a n = A086664 (n + 1)

theorem P2485339941124509508.correct : P2485339941124509508.Spec := by
  intro n
  simp only [A086664, Nat.add_sub_cancel]

end A086664

/-! ## A086664.P15744041054473501990

`2-A159077(n+1)+n`
-/

namespace A086664.P15744041054473501990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A159077 (n + 1) + (n : ℤ)

end

end A086664.P15744041054473501990

namespace A086664

/-- `2-A159077(n+1)+n` -/
def P15744041054473501990.Spec : Prop :=
  ∀ n, P15744041054473501990.a n = A086664 (n + 1)

end A086664

/-! ## A086664.P13019743111629933901

`(n-A222416(n+1))%(n+1)+1`
-/

namespace A086664.P13019743111629933901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - A222416 (n + 1)) (n + 1 : ℤ) + 1

end

end A086664.P13019743111629933901

namespace A086664

/-- `(n-A222416(n+1))%(n+1)+1` -/
def P13019743111629933901.Spec : Prop :=
  ∀ n, P13019743111629933901.a n = A086664 (n + 1)

end A086664

/-! ## A086664.P15620819108511268574

`A024000(A008475(n+1))+n`
-/

namespace A086664.P15620819108511268574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A008475 (n + 1)).toNat + (n : ℤ)

end

end A086664.P15620819108511268574

namespace A086664

/-- `A024000(A008475(n+1))+n` -/
def P15620819108511268574.Spec : Prop :=
  ∀ n, P15620819108511268574.a n = A086664 (n + 1)

end A086664

/-! ## A086664.P9887236028995713025

`A075255(n+1)-A078771(n+1)`
-/

namespace A086664.P9887236028995713025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1) - A078771 (n + 1)

end

end A086664.P9887236028995713025

namespace A086664

/-- `A075255(n+1)-A078771(n+1)` -/
def P9887236028995713025.Spec : Prop :=
  ∀ n, P9887236028995713025.a n = A086664 (n + 1)

end A086664

/-! ## A086664.P8935673940829331279

`A167515(n+1)-A001065(n+1)`
-/

namespace A086664.P8935673940829331279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167515 (n + 1) - A001065 (n + 1)

end

end A086664.P8935673940829331279

namespace A086664

/-- `A167515(n+1)-A001065(n+1)` -/
def P8935673940829331279.Spec : Prop :=
  ∀ n, P8935673940829331279.a n = A086664 (n + 1)

end A086664

/-! ## A086664.P12342747851547514351

`A028310(n)+1-A222416(n+1)`
-/

namespace A086664.P12342747851547514351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n + (1 - A222416 (n + 1))

end

end A086664.P12342747851547514351

namespace A086664

/-- `A028310(n)+1-A222416(n+1)` -/
def P12342747851547514351.Spec : Prop :=
  ∀ n, P12342747851547514351.a n = A086664 (n + 1)

end A086664

/-! ## A086664.P6244646049283275289

`A167515(n+1)+n+1-A000203(n+1)`
-/

namespace A086664.P6244646049283275289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167515 (n + 1) + ((n + 1 : ℤ) - A000203 (n + 1))

end

end A086664.P6244646049283275289

namespace A086664

/-- `A167515(n+1)+n+1-A000203(n+1)` -/
def P6244646049283275289.Spec : Prop :=
  ∀ n, P6244646049283275289.a n = A086664 (n + 1)

end A086664

/-! ## A086664.P1769314227238345909

`A008619(2*n)-A008475(A008619(2*n))`
-/

namespace A086664.P1769314227238345909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) - A008475 (A008619 (2 * n)).toNat

end

end A086664.P1769314227238345909

namespace A086664

/-- `A008619(2*n)-A008475(A008619(2*n))` -/
def P1769314227238345909.Spec : Prop :=
  ∀ n, P1769314227238345909.a n = A086664 (n + 1)

end A086664

/-! ## A086664.P1627100798890222594

`n+1-A304037(A064988(n+1))`
-/

namespace A086664.P1627100798890222594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A304037 (A064988 (n + 1)).toNat

end

end A086664.P1627100798890222594

namespace A086664

/-- `n+1-A304037(A064988(n+1))` -/
def P1627100798890222594.Spec : Prop :=
  ∀ n, P1627100798890222594.a n = A086664 (n + 1)

end A086664

/-! ## A086664.P7133292671704232072

`1-A171453(A064549(n+1))+n`
-/

namespace A086664.P7133292671704232072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A171453 (A064549 (n + 1)).toNat + (n : ℤ)

end

end A086664.P7133292671704232072

namespace A086664

/-- `1-A171453(A064549(n+1))+n` -/
def P7133292671704232072.Spec : Prop :=
  ∀ n, P7133292671704232072.a n = A086664 (n + 1)

end A086664

/-!
# A086665: Difference between sum of divisors of n and integer log of n, i.e., A000203(n) - A001414(n).

The programs for A086665, the canonical program `A086665.P3185455482541912894` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086665 has offset 1).

The definition of A086665 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086665.P3185455482541912894

`A000203(n+1)-A001414(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086665

/-- `A000203(n+1)-A001414(n+1)` -/
def P3185455482541912894.Spec : Prop :=
  ∀ n, P3185455482541912894.a n = A086665 (n + 1)

theorem P3185455482541912894.correct : P3185455482541912894.Spec := by
  intro n
  simp only [A086665, Nat.add_sub_cancel]

end A086665

/-! ## A086665.P11143915638125000720

`∑{d}[n+1, #]-∑{p}[n+1, #*val(n+1, #)]`
-/

namespace A086665.P11143915638125000720
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)

end

end A086665.P11143915638125000720

namespace A086665

/-- `∑{d}[n+1, #]-∑{p}[n+1, #*val(n+1, #)]` -/
def P11143915638125000720.Spec : Prop :=
  ∀ n, P11143915638125000720.a n = A086665 (n + 1)

end A086665

/-! ## A086665.P15887182483040918372

`xor(∑{p}[n+1, #*val(n+1, #)], -1)+∑{d}[n+1, #]+1`
-/

namespace A086665.P15887182483040918372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor ((∑ p ∈ Nat.primeFactors (f1 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ) (-1) + ((∑ d ∈ Nat.divisors (f2 n), d + 1 : ℕ) : ℤ)

end

end A086665.P15887182483040918372

namespace A086665

/-- `xor(∑{p}[n+1, #*val(n+1, #)], -1)+∑{d}[n+1, #]+1` -/
def P15887182483040918372.Spec : Prop :=
  ∀ n, P15887182483040918372.a n = A086665 (n + 1)

end A086665

/-! ## A086665.P11697845373248689897

`∑{d}[n+1, #]+-∑{p}[n+1, #*val(n+1, #)]%∑{d}[n+1, #]`
-/

namespace A086665.P11697845373248689897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) + Int.tmod (-((∑ p ∈ Nat.primeFactors (f2 n), p * SequenceMachineLib.valuation (n + 1) p : ℕ) : ℤ)) ((∑ d ∈ Nat.divisors (f3 n), d : ℕ) : ℤ)

end

end A086665.P11697845373248689897

namespace A086665

/-- `∑{d}[n+1, #]+-∑{p}[n+1, #*val(n+1, #)]%∑{d}[n+1, #]` -/
def P11697845373248689897.Spec : Prop :=
  ∀ n, P11697845373248689897.a n = A086665 (n + 1)

end A086665

/-! ## A086665.P9972423285706898322

`A374127(n+1)+1+n`
-/

namespace A086665.P9972423285706898322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374127 (n + 1) + 1 + (n : ℤ)

end

end A086665.P9972423285706898322

namespace A086665

/-- `A374127(n+1)+1+n` -/
def P9972423285706898322.Spec : Prop :=
  ∀ n, P9972423285706898322.a n = A086665 (n + 1)

end A086665

/-! ## A086665.P12182743173860029958

`∑{d}[n+1, #-A120007(#)]`
-/

namespace A086665.P12182743173860029958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - A120007 d)

end

end A086665.P12182743173860029958

namespace A086665

/-- `∑{d}[n+1, #-A120007(#)]` -/
def P12182743173860029958.Spec : Prop :=
  ∀ n, P12182743173860029958.a n = A086665 (n + 1)

end A086665

/-! ## A086665.P7867895972884619533

`∑{d}[n+1, #]-Δ[A025281(n)]`
-/

namespace A086665.P7867895972884619533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (f2 (n + 1) - f2 n)

end

end A086665.P7867895972884619533

namespace A086665

/-- `∑{d}[n+1, #]-Δ[A025281(n)]` -/
def P7867895972884619533.Spec : Prop :=
  ∀ n, P7867895972884619533.a n = A086665 (n + 1)

end A086665

/-! ## A086665.P14428920489056783841

`A000203(n+1)-Δ[A025281(n)]`
-/

namespace A086665.P14428920489056783841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - (f1 (n + 1) - f1 n)

end

end A086665.P14428920489056783841

namespace A086665

/-- `A000203(n+1)-Δ[A025281(n)]` -/
def P14428920489056783841.Spec : Prop :=
  ∀ n, P14428920489056783841.a n = A086665 (n + 1)

end A086665

/-! ## A086665.P12916533294683087262

`Δ[A160664(n)]-A001414(n+1)`
-/

namespace A086665.P12916533294683087262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001414 (n + 1)

end

end A086665.P12916533294683087262

namespace A086665

/-- `Δ[A160664(n)]-A001414(n+1)` -/
def P12916533294683087262.Spec : Prop :=
  ∀ n, P12916533294683087262.a n = A086665 (n + 1)

end A086665

/-! ## A086665.P15143176468009002891

`A075255(n+1)+A001065(n+1)`
-/

namespace A086665.P15143176468009002891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1) + A001065 (n + 1)

end

end A086665.P15143176468009002891

namespace A086665

/-- `A075255(n+1)+A001065(n+1)` -/
def P15143176468009002891.Spec : Prop :=
  ∀ n, P15143176468009002891.a n = A086665 (n + 1)

end A086665

/-! ## A086665.P12679853174544750911

`A167515(n+1)+A078771(n+1)`
-/

namespace A086665.P12679853174544750911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167515 (n + 1) + A078771 (n + 1)

end

end A086665.P12679853174544750911

namespace A086665

/-- `A167515(n+1)+A078771(n+1)` -/
def P12679853174544750911.Spec : Prop :=
  ∀ n, P12679853174544750911.a n = A086665 (n + 1)

end A086665

/-! ## A086665.P11176187587783515545

`A008472(n+1)+A023890(n+1)-A001414(n+1)`
-/

namespace A086665.P11176187587783515545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 1) + (A023890 (n + 1) - A001414 (n + 1))

end

end A086665.P11176187587783515545

namespace A086665

/-- `A008472(n+1)+A023890(n+1)-A001414(n+1)` -/
def P11176187587783515545.Spec : Prop :=
  ∀ n, P11176187587783515545.a n = A086665 (n + 1)

end A086665

/-! ## A086665.P81026134408482443

`A023891(n+1)+A074372(n+1)-A001414(n+1)`
-/

namespace A086665.P81026134408482443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023891 (n + 1) + (A074372 (n + 1) - A001414 (n + 1))

end

end A086665.P81026134408482443

namespace A086665

/-- `A023891(n+1)+A074372(n+1)-A001414(n+1)` -/
def P81026134408482443.Spec : Prop :=
  ∀ n, P81026134408482443.a n = A086665 (n + 1)

end A086665

/-!
# A086666: a(n) = sigma_2(n) - sigma_1(n).

The programs for A086666, the canonical program `A086666.P18113632580008504605` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086666 has offset 1).

The definition of A086666 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A069153, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086666.P18113632580008504605

`2*A069153(n+1)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086666

/-- `2*A069153(n+1)` -/
def P18113632580008504605.Spec : Prop :=
  ∀ n, P18113632580008504605.a n = A086666 (n + 1)

theorem P18113632580008504605.correct : P18113632580008504605.Spec := by
  intro n
  simp only [A086666, Nat.add_sub_cancel]

end A086666

/-! ## A086666.P13517460422443988407

`∑{d}[n+1, #²-#]`
-/

namespace A086666.P13517460422443988407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d ^ 2 : ℤ) - (d : ℤ))

end

end A086666.P13517460422443988407

namespace A086666

/-- `∑{d}[n+1, #²-#]` -/
def P13517460422443988407.Spec : Prop :=
  ∀ n, P13517460422443988407.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P6836123344195047008

`2*∑{d}[n+1, C(#, 2)]`
-/

namespace A086666.P6836123344195047008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (∑ d ∈ Nat.divisors (f1 n), Nat.choose d 2)

end

end A086666.P6836123344195047008

namespace A086666

/-- `2*∑{d}[n+1, C(#, 2)]` -/
def P6836123344195047008.Spec : Prop :=
  ∀ n, (P6836123344195047008.a n : ℤ) = A086666 (n + 1)

end A086666

/-! ## A086666.P16101636032648259444

`abs(∑{d}[n+1, #*(1-#)])`
-/

namespace A086666.P16101636032648259444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (1 - (d : ℤ))|

end

end A086666.P16101636032648259444

namespace A086666

/-- `abs(∑{d}[n+1, #*(1-#)])` -/
def P16101636032648259444.Spec : Prop :=
  ∀ n, P16101636032648259444.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P1758683143041539369

`-∑{d}[n+1, #*(1-#)]`
-/

namespace A086666.P1758683143041539369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * (1 - (d : ℤ)))

end

end A086666.P1758683143041539369

namespace A086666

/-- `-∑{d}[n+1, #*(1-#)]` -/
def P1758683143041539369.Spec : Prop :=
  ∀ n, P1758683143041539369.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P3758776669017897386

`A189835(n+1)+A094471(n+1)`
-/

namespace A086666.P3758776669017897386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189835 (n + 1) + A094471 (n + 1)

end

end A086666.P3758776669017897386

namespace A086666

/-- `A189835(n+1)+A094471(n+1)` -/
def P3758776669017897386.Spec : Prop :=
  ∀ n, P3758776669017897386.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P8760105228790291203

`A235799(n+1)+A067558(n+1)`
-/

namespace A086666.P8760105228790291203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235799 (n + 1) + A067558 (n + 1)

end

end A086666.P8760105228790291203

namespace A086666

/-- `A235799(n+1)+A067558(n+1)` -/
def P8760105228790291203.Spec : Prop :=
  ∀ n, P8760105228790291203.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P3609160851876626108

`A001157(n+1)-A000203(n+1)`
-/

namespace A086666.P3609160851876626108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) - A000203 (n + 1)

end

end A086666.P3609160851876626108

namespace A086666

/-- `A001157(n+1)-A000203(n+1)` -/
def P3609160851876626108.Spec : Prop :=
  ∀ n, P3609160851876626108.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P16039219169930600526

`A116913(n+1)-A007437(n+1)`
-/

namespace A086666.P16039219169930600526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116913 (n + 1) - A007437 (n + 1)

end

end A086666.P16039219169930600526

namespace A086666

/-- `A116913(n+1)-A007437(n+1)` -/
def P16039219169930600526.Spec : Prop :=
  ∀ n, P16039219169930600526.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P6914889549258891819

`A092348(n+1)-A092349(n+1)`
-/

namespace A086666.P6914889549258891819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092348 (n + 1) - A092349 (n + 1)

end

end A086666.P6914889549258891819

namespace A086666

/-- `A092348(n+1)-A092349(n+1)` -/
def P6914889549258891819.Spec : Prop :=
  ∀ n, P6914889549258891819.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P780766359955958751

`A278945(n+1)-A001157(n+1)`
-/

namespace A086666.P780766359955958751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278945 (n + 1) - A001157 (n + 1)

end

end A086666.P780766359955958751

namespace A086666

/-- `A278945(n+1)-A001157(n+1)` -/
def P780766359955958751.Spec : Prop :=
  ∀ n, P780766359955958751.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P9308658211745618862

`A278947(n+1)-A116913(n+1)`
-/

namespace A086666.P9308658211745618862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278947 (n + 1) - A116913 (n + 1)

end

end A086666.P9308658211745618862

namespace A086666

/-- `A278947(n+1)-A116913(n+1)` -/
def P9308658211745618862.Spec : Prop :=
  ∀ n, P9308658211745618862.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P3081482331182346101

`A308047(n+1)-A272027(n+1)`
-/

namespace A086666.P3081482331182346101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308047 (n + 1) - A272027 (n + 1)

end

end A086666.P3081482331182346101

namespace A086666

/-- `A308047(n+1)-A272027(n+1)` -/
def P3081482331182346101.Spec : Prop :=
  ∀ n, P3081482331182346101.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P11824052695708816361

`A334136(n+1)-A303384(n+1)`
-/

namespace A086666.P11824052695708816361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334136 (n + 1) - A303384 (n + 1)

end

end A086666.P11824052695708816361

namespace A086666

/-- `A334136(n+1)-A303384(n+1)` -/
def P11824052695708816361.Spec : Prop :=
  ∀ n, P11824052695708816361.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P16240838509471961497

`A001157(n+1)+1-A088580(n+1)`
-/

namespace A086666.P16240838509471961497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (n + 1) + (1 - A088580 (n + 1))

end

end A086666.P16240838509471961497

namespace A086666

/-- `A001157(n+1)+1-A088580(n+1)` -/
def P16240838509471961497.Spec : Prop :=
  ∀ n, P16240838509471961497.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P17670548102343661201

`2*(A363610(n+1)+A065608(n+1))`
-/

namespace A086666.P17670548102343661201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A363610 (n + 1) + A065608 (n + 1))

end

end A086666.P17670548102343661201

namespace A086666

/-- `2*(A363610(n+1)+A065608(n+1))` -/
def P17670548102343661201.Spec : Prop :=
  ∀ n, P17670548102343661201.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P15599121391323085090

`2*(A007437(n+1)-A000203(n+1))`
-/

namespace A086666.P15599121391323085090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A007437 (n + 1) - A000203 (n + 1))

end

end A086666.P15599121391323085090

namespace A086666

/-- `2*(A007437(n+1)-A000203(n+1))` -/
def P15599121391323085090.Spec : Prop :=
  ∀ n, P15599121391323085090.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P12451771983181230081

`2*(A001157(n+1)-A007437(n+1))`
-/

namespace A086666.P12451771983181230081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001157 (n + 1) - A007437 (n + 1))

end

end A086666.P12451771983181230081

namespace A086666

/-- `2*(A001157(n+1)-A007437(n+1))` -/
def P12451771983181230081.Spec : Prop :=
  ∀ n, P12451771983181230081.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P12092382965735202351

`2*(A116913(n+1)-A001157(n+1))`
-/

namespace A086666.P12092382965735202351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A116913 (n + 1) - A001157 (n + 1))

end

end A086666.P12092382965735202351

namespace A086666

/-- `2*(A116913(n+1)-A001157(n+1))` -/
def P12092382965735202351.Spec : Prop :=
  ∀ n, P12092382965735202351.a n = A086666 (n + 1)

end A086666

/-! ## A086666.P2670841928314972487

`2*(A067692(n+1)-A184387(n+1))`
-/

namespace A086666.P2670841928314972487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A067692 (n + 1) - A184387 (n + 1))

end

end A086666.P2670841928314972487

namespace A086666

/-- `2*(A067692(n+1)-A184387(n+1))` -/
def P2670841928314972487.Spec : Prop :=
  ∀ n, P2670841928314972487.a n = A086666 (n + 1)

end A086666

/-!
# A086668: Number of divisors d of n such that 2d+1 is a prime.

The programs for A086668, the canonical program `A086668.P5824346919968236986` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086668 has offset 1).

The definition of A086668 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086668.P5824346919968236986

`A046886(n+1)-1`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A086668

/-- `A046886(n+1)-1` -/
def P5824346919968236986.Spec : Prop :=
  ∀ n, P5824346919968236986.a n = A086668 (n + 1)

theorem P5824346919968236986.correct : P5824346919968236986.Spec := by
  intro n
  simp only [A086668, Nat.add_sub_cancel]

end A086668

/-! ## A086668.P4494545918892902591

`∑{d}[n+1, A101264(#)]`
-/

namespace A086668.P4494545918892902591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101264 d

end

end A086668.P4494545918892902591

namespace A086668

/-- `∑{d}[n+1, A101264(#)]` -/
def P4494545918892902591.Spec : Prop :=
  ∀ n, P4494545918892902591.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P17755394683765829135

`∑{d}[n+1, A156707(#)²]`
-/

namespace A086668.P17755394683765829135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A156707 d ^ 2

end

end A086668.P17755394683765829135

namespace A086668

/-- `∑{d}[n+1, A156707(#)²]` -/
def P17755394683765829135.Spec : Prop :=
  ∀ n, P17755394683765829135.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P13893797187503795183

`∑{d}[n+1, A010051(2*#+1)]`
-/

namespace A086668.P13893797187503795183
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A010051 (2 * d + 1)

end

end A086668.P13893797187503795183

namespace A086668

/-- `∑{d}[n+1, A010051(2*#+1)]` -/
def P13893797187503795183.Spec : Prop :=
  ∀ n, P13893797187503795183.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P5418231285495792856

`A289207(A046886(n+1)+1)`
-/

namespace A086668.P5418231285495792856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A046886 (n + 1) + 1).toNat

end

end A086668.P5418231285495792856

namespace A086668

/-- `A289207(A046886(n+1)+1)` -/
def P5418231285495792856.Spec : Prop :=
  ∀ n, P5418231285495792856.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P15984391181769802880

`A050873(C(A046886(n+1), 2))`
-/

namespace A086668.P15984391181769802880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (Nat.choose (A046886 (n + 1)).toNat 2)

end

end A086668.P15984391181769802880

namespace A086668

/-- `A050873(C(A046886(n+1), 2))` -/
def P15984391181769802880.Spec : Prop :=
  ∀ n, P15984391181769802880.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P4920581332236016487

`A305818(n+1)+A101264(n+1)`
-/

namespace A086668.P4920581332236016487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305818 (n + 1) + A101264 (n + 1)

end

end A086668.P4920581332236016487

namespace A086668

/-- `A305818(n+1)+A101264(n+1)` -/
def P4920581332236016487.Spec : Prop :=
  ∀ n, P4920581332236016487.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P1815087378021420879

`A305818(n+1)+A156707(n+1)²`
-/

namespace A086668.P1815087378021420879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305818 (n + 1) + A156707 (n + 1) ^ 2

end

end A086668.P1815087378021420879

namespace A086668

/-- `A305818(n+1)+A156707(n+1)²` -/
def P1815087378021420879.Spec : Prop :=
  ∀ n, P1815087378021420879.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P2915798311833021691

`A305818(n+1)+A101808(A057427(n)+n)`
-/

namespace A086668.P2915798311833021691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305818 (n + 1) + A101808 (A057427 n + (n : ℤ)).toNat

end

end A086668.P2915798311833021691

namespace A086668

/-- `A305818(n+1)+A101808(A057427(n)+n)` -/
def P2915798311833021691.Spec : Prop :=
  ∀ n, P2915798311833021691.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P1097195860642480696

`A101808(n+1)+A305818(n+1)-A063524(n+1)`
-/

namespace A086668.P1097195860642480696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101808 (n + 1) + (A305818 (n + 1) - A063524 (n + 1))

end

end A086668.P1097195860642480696

namespace A086668

/-- `A101808(n+1)+A305818(n+1)-A063524(n+1)` -/
def P1097195860642480696.Spec : Prop :=
  ∀ n, P1097195860642480696.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P13871790324011875202

`A305818(n+1)+A112448(n+1)*A112448(n+1)`
-/

namespace A086668.P13871790324011875202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305818 (n + 1) + A112448 (n + 1) * A112448 (n + 1)

end

end A086668.P13871790324011875202

namespace A086668

/-- `A305818(n+1)+A112448(n+1)*A112448(n+1)` -/
def P13871790324011875202.Spec : Prop :=
  ∀ n, P13871790324011875202.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P12566845300951153448

`A067513(2*(n+1))-1`
-/

namespace A086668.P12566845300951153448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067513 (2 * (n + 1)) - 1

end

end A086668.P12566845300951153448

namespace A086668

/-- `A067513(2*(n+1))-1` -/
def P12566845300951153448.Spec : Prop :=
  ∀ n, P12566845300951153448.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P11125975782402743226

`A219428(A067513(2*n+1))+A067513(2*(n+1))`
-/

namespace A086668.P11125975782402743226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219428 (A067513 (2 * n + 1)).toNat + A067513 (2 * (n + 1))

end

end A086668.P11125975782402743226

namespace A086668

/-- `A219428(A067513(2*n+1))+A067513(2*(n+1))` -/
def P11125975782402743226.Spec : Prop :=
  ∀ n, P11125975782402743226.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P12067715029556104364

`A001222(A322312(2*(n+1))/2)`
-/

namespace A086668.P12067715029556104364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A322312 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A086668.P12067715029556104364

namespace A086668

/-- `A001222(A322312(2*(n+1))/2)` -/
def P12067715029556104364.Spec : Prop :=
  ∀ n, P12067715029556104364.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P3575476396019292167

`A001222(A322312(2*n+2))-1`
-/

namespace A086668.P3575476396019292167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A322312 (2 * n + 2)).toNat - 1

end

end A086668.P3575476396019292167

namespace A086668

/-- `A001222(A322312(2*n+2))-1` -/
def P3575476396019292167.Spec : Prop :=
  ∀ n, P3575476396019292167.a n = A086668 (n + 1)

end A086668

/-! ## A086668.P14683618013294887637

`A072828(n+1)%A046886(n+1)`
-/

namespace A086668.P14683618013294887637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A046886 (n + 1))

end

end A086668.P14683618013294887637

namespace A086668

/-- `A072828(n+1)%A046886(n+1)` -/
def P14683618013294887637.Spec : Prop :=
  ∀ n, P14683618013294887637.a n = A086668 (n + 1)

end A086668

/-!
# A086669: a(n) = number of divisors of n that are fundamental discriminants.

The programs for A086669, the canonical program `A086669.P4971627234888346327` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086669 has offset 1).

The definition of A086669 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086669.P4971627234888346327

`∑{d}[n+1, A290098(#)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086669

/-- `∑{d}[n+1, A290098(#)]` -/
def P4971627234888346327.Spec : Prop :=
  ∀ n, P4971627234888346327.a n = A086669 (n + 1)

theorem P4971627234888346327.correct : P4971627234888346327.Spec := by
  intro n
  simp only [A086669, Nat.add_sub_cancel]

end A086669

/-! ## A086669.P5655833463176260477

`A006519(Δ[A275018(n)]+1)`
-/

namespace A086669.P5655833463176260477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (f1 (n + 1) - f1 n + 1).toNat

end

end A086669.P5655833463176260477

namespace A086669

/-- `A006519(Δ[A275018(n)]+1)` -/
def P5655833463176260477.Spec : Prop :=
  ∀ n, P5655833463176260477.a n = A086669 (n + 1)

end A086669

/-! ## A086669.P14541563856256303471

`gcd(A000113(n+1), A157223(n+1))`
-/

namespace A086669.P14541563856256303471
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000113 (n + 1)) (A157223 (n + 1))

end

end A086669.P14541563856256303471

namespace A086669

/-- `gcd(A000113(n+1), A157223(n+1))` -/
def P14541563856256303471.Spec : Prop :=
  ∀ n, (P14541563856256303471.a n : ℤ) = A086669 (n + 1)

end A086669

/-! ## A086669.P125815159101288816

`(A060594(n+1)+A000089(n+1))/2`
-/

namespace A086669.P125815159101288816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060594 (n + 1) + A000089 (n + 1) : ℚ) / 2

end

end A086669.P125815159101288816

namespace A086669

/-- `(A060594(n+1)+A000089(n+1))/2` -/
def P125815159101288816.Spec : Prop :=
  ∀ n, P125815159101288816.a n = (A086669 (n + 1) : ℚ)

end A086669

/-! ## A086669.P16426822719059830104

`A000010(A060594(n+1)+A000089(n+1))`
-/

namespace A086669.P16426822719059830104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A060594 (n + 1) + A000089 (n + 1)).toNat

end

end A086669.P16426822719059830104

namespace A086669

/-- `A000010(A060594(n+1)+A000089(n+1))` -/
def P16426822719059830104.Spec : Prop :=
  ∀ n, P16426822719059830104.a n = A086669 (n + 1)

end A086669

/-! ## A086669.P3098395006055874801

`A157228(n+1)+A000010(A060594(n+1))`
-/

namespace A086669.P3098395006055874801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (n + 1) + A000010 (A060594 (n + 1)).toNat

end

end A086669.P3098395006055874801

namespace A086669

/-- `A157228(n+1)+A000010(A060594(n+1))` -/
def P3098395006055874801.Spec : Prop :=
  ∀ n, P3098395006055874801.a n = A086669 (n + 1)

end A086669

/-! ## A086669.P5618565555636525370

`A302043(A060594(n+1)+A000089(n+1))`
-/

namespace A086669.P5618565555636525370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A060594 (n + 1) + A000089 (n + 1)).toNat

end

end A086669.P5618565555636525370

namespace A086669

/-- `A302043(A060594(n+1)+A000089(n+1))` -/
def P5618565555636525370.Spec : Prop :=
  ∀ n, P5618565555636525370.a n = A086669 (n + 1)

end A086669

/-! ## A086669.P3861849205301752310

`A157228(n+1)+A054345(A157230(n+1))`
-/

namespace A086669.P3861849205301752310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157228 (n + 1) + A054345 (A157230 (n + 1)).toNat

end

end A086669.P3861849205301752310

namespace A086669

/-- `A157228(n+1)+A054345(A157230(n+1))` -/
def P3861849205301752310.Spec : Prop :=
  ∀ n, P3861849205301752310.a n = A086669 (n + 1)

end A086669

/-! ## A086669.P15263991964512154887

`A006519(A275018(n+1)-A275018(n)+1)`
-/

namespace A086669.P15263991964512154887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (A275018 (n + 1) - A275018 n + 1).toNat

end

end A086669.P15263991964512154887

namespace A086669

/-- `A006519(A275018(n+1)-A275018(n)+1)` -/
def P15263991964512154887.Spec : Prop :=
  ∀ n, P15263991964512154887.a n = A086669 (n + 1)

end A086669

/-! ## A086669.P522346317084560899

`A019590(n+1)+A157230(n+1)+A157228(n+1)`
-/

namespace A086669.P522346317084560899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 1) + (A157230 (n + 1) + A157228 (n + 1))

end

end A086669.P522346317084560899

namespace A086669

/-- `A019590(n+1)+A157230(n+1)+A157228(n+1)` -/
def P522346317084560899.Spec : Prop :=
  ∀ n, P522346317084560899.a n = A086669 (n + 1)

end A086669

/-! ## A086669.P3010320690010410080

`A000089(n+1)+A157230(n+1)-A157228(n+1)`
-/

namespace A086669.P3010320690010410080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000089 (n + 1) + (A157230 (n + 1) - A157228 (n + 1))

end

end A086669.P3010320690010410080

namespace A086669

/-- `A000089(n+1)+A157230(n+1)-A157228(n+1)` -/
def P3010320690010410080.Spec : Prop :=
  ∀ n, P3010320690010410080.a n = A086669 (n + 1)

end A086669

/-! ## A086669.P17073875476539407707

`A060594(n+1)+A157228(n+1)-A157230(n+1)`
-/

namespace A086669.P17073875476539407707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060594 (n + 1) + (A157228 (n + 1) - A157230 (n + 1))

end

end A086669.P17073875476539407707

namespace A086669

/-- `A060594(n+1)+A157228(n+1)-A157230(n+1)` -/
def P17073875476539407707.Spec : Prop :=
  ∀ n, P17073875476539407707.a n = A086669 (n + 1)

end A086669

/-! ## A086669.P17002263338884497334

`A054345(A157230(n+1)+A157230(n+1)%A000089(n+1)!)`
-/

namespace A086669.P17002263338884497334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054345 (A157230 (n + 1) + Int.tmod (A157230 (n + 1)) (Nat.factorial (A000089 (n + 1)).toNat : ℤ)).toNat

end

end A086669.P17002263338884497334

namespace A086669

/-- `A054345(A157230(n+1)+A157230(n+1)%A000089(n+1)!)` -/
def P17002263338884497334.Spec : Prop :=
  ∀ n, P17002263338884497334.a n = A086669 (n + 1)

end A086669

/-!
# A086670: Sum of floor(d/2) where d is a divisor of n.

The programs for A086670, the canonical program `A086670.P715310048333815188` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086670 has offset 1).

The definition of A086670 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A286015, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086670.P10512947226296147724

`A069734(n+1)-A000005(n+1)`
-/

namespace A086670.P10512947226296147724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069734 (n + 1) - A000005 (n + 1)

end

end A086670.P10512947226296147724

namespace A086670

/-- `A069734(n+1)-A000005(n+1)` -/
def P10512947226296147724.Spec : Prop :=
  ∀ n, P10512947226296147724.a n = A086670 (n + 1)

end A086670

/-! ## A086670.P5330011238070792644

`A000203(n+1)-A079247(n+1)`
-/

namespace A086670.P5330011238070792644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A079247 (n + 1)

end

end A086670.P5330011238070792644

namespace A086670

/-- `A000203(n+1)-A079247(n+1)` -/
def P5330011238070792644.Spec : Prop :=
  ∀ n, P5330011238070792644.a n = A086670 (n + 1)

end A086670

/-! ## A086670.P715310048333815188

`A286015(n+1)-A000593(n+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A086670

/-- `A286015(n+1)-A000593(n+1)` -/
def P715310048333815188.Spec : Prop :=
  ∀ n, P715310048333815188.a n = A086670 (n + 1)

theorem P715310048333815188.correct : P715310048333815188.Spec := by
  intro n
  simp only [A086670, Nat.add_sub_cancel]

end A086670

/-! ## A086670.P1441950623911174359

`(A000203(n+1)-A001227(n+1))/2`
-/

namespace A086670.P1441950623911174359
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A001227 (n + 1) : ℚ) / 2

end

end A086670.P1441950623911174359

namespace A086670

/-- `(A000203(n+1)-A001227(n+1))/2` -/
def P1441950623911174359.Spec : Prop :=
  ∀ n, P1441950623911174359.a n = (A086670 (n + 1) : ℚ)

end A086670

/-! ## A086670.P2990427543534848373

`(A007503(n+1)-A099777(n+1))/2`
-/

namespace A086670.P2990427543534848373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007503 (n + 1) - A099777 (n + 1) : ℚ) / 2

end

end A086670.P2990427543534848373

namespace A086670

/-- `(A007503(n+1)-A099777(n+1))/2` -/
def P2990427543534848373.Spec : Prop :=
  ∀ n, P2990427543534848373.a n = (A086670 (n + 1) : ℚ)

end A086670

/-! ## A086670.P3878859288048750778

`(A129235(n+1)-A048272(n+1))/4`
-/

namespace A086670.P3878859288048750778
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A129235 (n + 1) - A048272 (n + 1) : ℚ) / 4

end

end A086670.P3878859288048750778

namespace A086670

/-- `(A129235(n+1)-A048272(n+1))/4` -/
def P3878859288048750778.Spec : Prop :=
  ∀ n, P3878859288048750778.a n = (A086670 (n + 1) : ℚ)

end A086670

/-! ## A086670.P17912704235316360135

`∑{d}[n+1, floor(#/2)]`
-/

namespace A086670.P17912704235316360135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ⌊(d : ℚ) / 2⌋

end

end A086670.P17912704235316360135

namespace A086670

/-- `∑{d}[n+1, floor(#/2)]` -/
def P17912704235316360135.Spec : Prop :=
  ∀ n, P17912704235316360135.a n = A086670 (n + 1)

end A086670

/-! ## A086670.P15899695990855716549

`∑{d}[n+1, and(#, -2)]/2`
-/

namespace A086670.P15899695990855716549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), Int.land (d : ℤ) (-2) : ℤ) : ℚ) / 2

end

end A086670.P15899695990855716549

namespace A086670

/-- `∑{d}[n+1, and(#, -2)]/2` -/
def P15899695990855716549.Spec : Prop :=
  ∀ n, P15899695990855716549.a n = (A086670 (n + 1) : ℚ)

end A086670

/-! ## A086670.P1859030616527666910

`∑{d}[n+1, or(1, #)-1]/2`
-/

namespace A086670.P1859030616527666910
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((Nat.lor 1 d : ℤ) - 1) : ℤ) : ℚ) / 2

end

end A086670.P1859030616527666910

namespace A086670

/-- `∑{d}[n+1, or(1, #)-1]/2` -/
def P1859030616527666910.Spec : Prop :=
  ∀ n, P1859030616527666910.a n = (A086670 (n + 1) : ℚ)

end A086670

/-! ## A086670.P6064800049934798490

`∑{d}[n+1, #-#%2]/2`
-/

namespace A086670.P6064800049934798490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - ((d % 2 : ℕ) : ℤ)) : ℤ) : ℚ) / 2

end

end A086670.P6064800049934798490

namespace A086670

/-- `∑{d}[n+1, #-#%2]/2` -/
def P6064800049934798490.Spec : Prop :=
  ∀ n, P6064800049934798490.a n = (A086670 (n + 1) : ℚ)

end A086670

/-! ## A086670.P2391256832503359744

`∑{d}[n+1, #-and(1, #)]/2`
-/

namespace A086670.P2391256832503359744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - (Nat.land 1 d : ℤ)) : ℤ) : ℚ) / 2

end

end A086670.P2391256832503359744

namespace A086670

/-- `∑{d}[n+1, #-and(1, #)]/2` -/
def P2391256832503359744.Spec : Prop :=
  ∀ n, P2391256832503359744.a n = (A086670 (n + 1) : ℚ)

end A086670

/-! ## A086670.P14070647034111773439

`A367588(n+1)+A183063(n+1)`
-/

namespace A086670.P14070647034111773439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A367588 (n + 1) + A183063 (n + 1)

end

end A086670.P14070647034111773439

namespace A086670

/-- `A367588(n+1)+A183063(n+1)` -/
def P14070647034111773439.Spec : Prop :=
  ∀ n, P14070647034111773439.a n = A086670 (n + 1)

end A086670

/-! ## A086670.P980267025874373327

`A079247(n+1)-A001227(n+1)`
-/

namespace A086670.P980267025874373327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079247 (n + 1) - A001227 (n + 1)

end

end A086670.P980267025874373327

namespace A086670

/-- `A079247(n+1)-A001227(n+1)` -/
def P980267025874373327.Spec : Prop :=
  ∀ n, P980267025874373327.a n = A086670 (n + 1)

end A086670

/-! ## A086670.P4697796251903439651

`A002131(n+1)-A113415(n+1)`
-/

namespace A086670.P4697796251903439651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002131 (n + 1) - A113415 (n + 1)

end

end A086670.P4697796251903439651

namespace A086670

/-- `A002131(n+1)-A113415(n+1)` -/
def P4697796251903439651.Spec : Prop :=
  ∀ n, P4697796251903439651.a n = A086670 (n + 1)

end A086670

/-! ## A086670.P16759923012360386537

`A145392(n+1)-A001826(n+1)`
-/

namespace A086670.P16759923012360386537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145392 (n + 1) - A001826 (n + 1)

end

end A086670.P16759923012360386537

namespace A086670

/-- `A145392(n+1)-A001826(n+1)` -/
def P16759923012360386537.Spec : Prop :=
  ∀ n, P16759923012360386537.a n = A086670 (n + 1)

end A086670

/-! ## A086670.P5693995061471059051

`A145391(n+1)-A320111(n+1)`
-/

namespace A086670.P5693995061471059051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145391 (n + 1) - A320111 (n + 1)

end

end A086670.P5693995061471059051

namespace A086670

/-- `A145391(n+1)-A320111(n+1)` -/
def P5693995061471059051.Spec : Prop :=
  ∀ n, P5693995061471059051.a n = A086670 (n + 1)

end A086670

/-! ## A086670.P11762385785119954568

`A353149(n+1)-A286014(n+1)`
-/

namespace A086670.P11762385785119954568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353149 (n + 1) - A286014 (n + 1)

end

end A086670.P11762385785119954568

namespace A086670

/-- `A353149(n+1)-A286014(n+1)` -/
def P11762385785119954568.Spec : Prop :=
  ∀ n, P11762385785119954568.a n = A086670 (n + 1)

end A086670

/-! ## A086670.P17778195165174475995

`A368582(n+1)-A369257(n+1)`
-/

namespace A086670.P17778195165174475995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368582 (n + 1) - A369257 (n + 1)

end

end A086670.P17778195165174475995

namespace A086670

/-- `A368582(n+1)-A369257(n+1)` -/
def P17778195165174475995.Spec : Prop :=
  ∀ n, P17778195165174475995.a n = A086670 (n + 1)

end A086670

/-! ## A086670.P15651182848023730089

`(A183063(n+1)+A065608(n+1))/2`
-/

namespace A086670.P15651182848023730089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183063 (n + 1) + A065608 (n + 1) : ℚ) / 2

end

end A086670.P15651182848023730089

namespace A086670

/-- `(A183063(n+1)+A065608(n+1))/2` -/
def P15651182848023730089.Spec : Prop :=
  ∀ n, P15651182848023730089.a n = (A086670 (n + 1) : ℚ)

end A086670

/-! ## A086670.P3606253053253532987

`(A245092(2*n+1)-A001227(n+1))/2`
-/

namespace A086670.P3606253053253532987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A245092 (2 * n + 1) - A001227 (n + 1) : ℚ) / 2

end

end A086670.P3606253053253532987

namespace A086670

/-- `(A245092(2*n+1)-A001227(n+1))/2` -/
def P3606253053253532987.Spec : Prop :=
  ∀ n, P3606253053253532987.a n = (A086670 (n + 1) : ℚ)

end A086670

/-!
# A086671: Sum of floor(sqrt(d)) where d runs through the divisors of n.

The programs for A086671, the canonical program `A086671.P12882375232992588883` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086671 has offset 1).

The definition of A086671 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086671.P12882375232992588883

`∑{d}[n+1, floor(sqrt(#))]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A086671

/-- `∑{d}[n+1, floor(sqrt(#))]` -/
def P12882375232992588883.Spec : Prop :=
  ∀ n, (P12882375232992588883.a n : ℤ) = A086671 (n + 1)

theorem P12882375232992588883.correct : P12882375232992588883.Spec := by
  intro n
  simp only [A086671, Nat.add_sub_cancel]

end A086671

/-! ## A086671.P17977660009627056006

`∑{d}[n+1, #]-∑{d}[n+1, A028391(#)]`
-/

namespace A086671.P17977660009627056006
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - ∑ d ∈ Nat.divisors (f2 n), A028391 d

end

end A086671.P17977660009627056006

namespace A086671

/-- `∑{d}[n+1, #]-∑{d}[n+1, A028391(#)]` -/
def P17977660009627056006.Spec : Prop :=
  ∀ n, P17977660009627056006.a n = A086671 (n + 1)

end A086671

/-! ## A086671.P15375513907978100612

`A000027(∑{d}[n+1, A000196(#)])`
-/

namespace A086671.P15375513907978100612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (∑ d ∈ Nat.divisors (f1 n), A000196 d).toNat

end

end A086671.P15375513907978100612

namespace A086671

/-- `A000027(∑{d}[n+1, A000196(#)])` -/
def P15375513907978100612.Spec : Prop :=
  ∀ n, P15375513907978100612.a n = A086671 (n + 1)

end A086671

/-! ## A086671.P4192109513849559606

`A028310(∑{d}[n+1, A000196(#)])`
-/

namespace A086671.P4192109513849559606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (∑ d ∈ Nat.divisors (f1 n), A000196 d).toNat

end

end A086671.P4192109513849559606

namespace A086671

/-- `A028310(∑{d}[n+1, A000196(#)])` -/
def P4192109513849559606.Spec : Prop :=
  ∀ n, P4192109513849559606.a n = A086671 (n + 1)

end A086671

/-! ## A086671.P9561400456607568501

`A332932(n+1)-A056595(n+1)`
-/

namespace A086671.P9561400456607568501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332932 (n + 1) - A056595 (n + 1)

end

end A086671.P9561400456607568501

namespace A086671

/-- `A332932(n+1)-A056595(n+1)` -/
def P9561400456607568501.Spec : Prop :=
  ∀ n, P9561400456607568501.a n = A086671 (n + 1)

end A086671

/-! ## A086671.P14411107731725168516

`A332932(n+1)+A332933(n+1)-A332935(n+1)`
-/

namespace A086671.P14411107731725168516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332932 (n + 1) + (A332933 (n + 1) - A332935 (n + 1))

end

end A086671.P14411107731725168516

namespace A086671

/-- `A332932(n+1)+A332933(n+1)-A332935(n+1)` -/
def P14411107731725168516.Spec : Prop :=
  ∀ n, P14411107731725168516.a n = A086671 (n + 1)

end A086671

/-! ## A086671.P9561802900019083073

`∑{d}[n+1, A000196(#)]-A000040(n+2)%2+1`
-/

namespace A086671.P9561802900019083073
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000196 d - Int.tmod (A000040 (n + 2)) 2 + 1

end

end A086671.P9561802900019083073

namespace A086671

/-- `∑{d}[n+1, A000196(#)]-A000040(n+2)%2+1` -/
def P9561802900019083073.Spec : Prop :=
  ∀ n, P9561802900019083073.a n = A086671 (n + 1)

end A086671

/-!
# A086673: Number of right-truncatable semiprimes <= n.

The programs for A086673, there is no canonical definition to state claims against.
-/

/-! ## A086673.P25428608260532270

`∑[char[A085733(n+1)-1]]`
-/

namespace A086673.P25428608260532270
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085733 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086673.P25428608260532270

/-! ## A086673.P14739838676456145462

`∑[char[A023443(A085733(n+1))]]`
-/

namespace A086673.P14739838676456145462
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A085733 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086673.P14739838676456145462

/-! ## A086673.P13689861501067275458

`char[A085733(A025882(n)+1)-1]+a(n-1)` with `a(0)=0`
-/

namespace A086673.P13689861501067275458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085733 (A025882 n + 1).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A086673.P13689861501067275458

/-! ## A086673.P13812228861255030728

`char[A085733(A325133(n+1))-1]+a(n-1)` with `a(0)=0`
-/

namespace A086673.P13812228861255030728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085733 (A325133 (n + 1)).toNat - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A086673.P13812228861255030728

/-! ## A086673.P12188721696030363858

`a(n-1)+A073097(2*n)+char[A085733(n+1)-1]` with `a(0)=0`
-/

namespace A086673.P12188721696030363858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085733 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (A073097 (2 * n) + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ))

end

end A086673.P12188721696030363858

/-! ## A086673.P4495164136839576263

`∑[and(A032566(n+1), A064911(n+1))]`
-/

namespace A086673.P4495164136839576263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A032566 (n + 1)) (A064911 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086673.P4495164136839576263

/-!
# A086674: Sum of signed indices from Euler's Pentagonal Theorem (see A000041).

The programs for A086674, there is no canonical definition to state claims against.
-/

/-! ## A086674.P12765382536968502800

`∑[∑[A257628(n)]]`
-/

namespace A086674.P12765382536968502800
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257628 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086674.P12765382536968502800

/-! ## A086674.P13642460098033580028

`∑[1-A078616(n)]`
-/

namespace A086674.P13642460098033580028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A078616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086674.P13642460098033580028

/-! ## A086674.P5275797504857843892

`∑[1-∑[A010815(n)]]`
-/

namespace A086674.P5275797504857843892
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086674.P5275797504857843892

/-! ## A086674.P11582733482234147097

`∑[1-Δ[A246575(n)]]`
-/

namespace A086674.P11582733482234147097
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246575 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086674.P11582733482234147097

/-! ## A086674.P4999505742591263543

`∑[∑[A304082(n)]%3]`
-/

namespace A086674.P4999505742591263543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A304082 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f2 j) 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086674.P4999505742591263543

/-! ## A086674.P5830488355558575749

`∑[1-∑[A322212(∑[n])]]`
-/

namespace A086674.P5830488355558575749
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322212 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086674.P5830488355558575749

/-! ## A086674.P13161781094847200265

`1-A246575(n+1)+n`
-/

namespace A086674.P13161781094847200265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A246575 (n + 1) + (n : ℤ)

end

end A086674.P13161781094847200265

/-! ## A086674.P16041430985562059437

`∑[∑[1-A007706(n)]+1]`
-/

namespace A086674.P16041430985562059437
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A007706 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086674.P16041430985562059437

/-! ## A086674.P14695226646450433950

`∑[1-∑[A274719(2*n)]]`
-/

namespace A086674.P14695226646450433950
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274719 (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086674.P14695226646450433950

/-! ## A086674.P15819960323115858504

`∑[a(n-1)-A134756(n)%2]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A086674.P15819960323115858504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n f1 =>
  f1 (n - 1) - Int.tmod (A134756 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086674.P15819960323115858504

/-!
# A086675: Number of n X n (0,1)-matrices modulo cyclic permutations of the rows.

The programs for A086675, there is no canonical definition to state claims against.
-/

/-! ## A086675.P655600049235261242

`A147574(A181146(n))/A147574(n+1)`
-/

namespace A086675.P655600049235261242
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A147574 (A181146 n).toNat : ℚ) / (A147574 (n + 1) : ℚ)

end

end A086675.P655600049235261242

/-!
# A086676: Number of n-dimensional 2 X 2 X ... X 2 grid graphs needed to cover an n-dimensional 3 X 3 X ... X 3 torus.

The programs for A086676, there is no canonical definition to state claims against.
-/

/-! ## A086676.P5084287262484435161

`A380327(n+3)`
-/

namespace A086676.P5084287262484435161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380327 (n + 3)

end

end A086676.P5084287262484435161

/-! ## A086676.P10608732223504563087

`floor(root(A230906(n+2), 4))`
-/

namespace A086676.P10608732223504563087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A230906 (n + 2) : ℝ) ^ (1 / (4 : ℝ))⌋

end

end A086676.P10608732223504563087

/-! ## A086676.P16427696449924099874

`floor(root(A245390(n+4), 3))`
-/

namespace A086676.P16427696449924099874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A245390 (n + 4) : ℝ) ^ (1 / (3 : ℝ))⌋

end

end A086676.P16427696449924099874

/-! ## A086676.P9087702689743484438

`round(root(A302319(n+1), 4))`
-/

namespace A086676.P9087702689743484438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A302319 (n + 1) : ℝ) ^ (1 / (4 : ℝ)))

end

end A086676.P9087702689743484438

/-! ## A086676.P11966036922532086274

`floor(root(A027143(n+3), 5))`
-/

namespace A086676.P11966036922532086274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A027143 (n + 3) : ℝ) ^ (1 / (5 : ℝ))⌋

end

end A086676.P11966036922532086274

/-!
# A086677: Number of Steiner topologies on n points.

The programs for A086677, there is no canonical definition to state claims against.
-/

/-! ## A086677.P5990774816140008735

`A014132(A246756(n+1))-1`
-/

namespace A086677.P5990774816140008735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014132 (A246756 (n + 1)).toNat - 1

end

end A086677.P5990774816140008735

/-!
# A086680: Number of primes < 4^n.

The programs for A086680, the canonical program `A086680.P9420142532378401602` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086680 has offset 0).

The definition of A086680 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007053, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086680.P9420142532378401602

`A007053(2*n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086680

/-- `A007053(2*n)` -/
def P9420142532378401602.Spec : Prop :=
  ∀ n, P9420142532378401602.a n = A086680 n

theorem P9420142532378401602.correct : P9420142532378401602.Spec := by
  intro n
  simp only [A086680]

end A086680

/-! ## A086680.P7464498616252015034

`record[A007053(n%4+n)]`
-/

namespace A086680.P7464498616252015034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (n % 4 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086680.P7464498616252015034

namespace A086680

/-- `record[A007053(n%4+n)]` -/
def P7464498616252015034.Spec : Prop :=
  ∀ n, P7464498616252015034.a n = A086680 n

end A086680

/-! ## A086680.P17781363598351317199

`record[A007053(and(n, n+1))]`
-/

namespace A086680.P17781363598351317199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086680.P17781363598351317199

namespace A086680

/-- `record[A007053(and(n, n+1))]` -/
def P17781363598351317199.Spec : Prop :=
  ∀ n, P17781363598351317199.a n = A086680 n

end A086680

/-! ## A086680.P4528883680220592864

`record[A007053(n)/(-1)^n]`
-/

namespace A086680.P4528883680220592864
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007053 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086680.P4528883680220592864

namespace A086680

/-- `record[A007053(n)/(-1)^n]` -/
def P4528883680220592864.Spec : Prop :=
  ∀ n, P4528883680220592864.a n = (A086680 n : ℚ)

end A086680

/-! ## A086680.P14300875935346591341

`A185192(A004277(n))`
-/

namespace A086680.P14300875935346591341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (A004277 n).toNat

end

end A086680.P14300875935346591341

namespace A086680

/-- `A185192(A004277(n))` -/
def P14300875935346591341.Spec : Prop :=
  ∀ n, P14300875935346591341.a n = A086680 n

end A086680

/-!
# A086681: Number of primes < 8^n.

The programs for A086681, there is no canonical definition to state claims against.
-/

/-! ## A086681.P1250269748463499890

`A007053(3*n)`
-/

namespace A086681.P1250269748463499890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (3 * n)

end

end A086681.P1250269748463499890

/-! ## A086681.P8394423831808895749

`A185192(A008486(n))`
-/

namespace A086681.P8394423831808895749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (A008486 n).toNat

end

end A086681.P8394423831808895749

/-! ## A086681.P13933043752325033890

`A185192(A028310(3*n))`
-/

namespace A086681.P13933043752325033890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (A028310 (3 * n)).toNat

end

end A086681.P13933043752325033890

/-! ## A086681.P9977328669672608090

`A185192(A004277(n)+n)`
-/

namespace A086681.P9977328669672608090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (A004277 n + (n : ℤ)).toNat

end

end A086681.P9977328669672608090

/-! ## A086681.P8986759270277466047

`A185192(A004275(n+1)+n)`
-/

namespace A086681.P8986759270277466047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185192 (A004275 (n + 1) + (n : ℤ)).toNat

end

end A086681.P8986759270277466047

/-!
# A086682: Number of primes < 9^n.

The programs for A086682, the canonical program `A086682.P120960568963059901` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086682 has offset 0).

The definition of A086682 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A055729, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086682.P120960568963059901

`A055729(2*n)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A086682

/-- `A055729(2*n)` -/
def P120960568963059901.Spec : Prop :=
  ∀ n, P120960568963059901.a n = A086682 n

theorem P120960568963059901.correct : P120960568963059901.Spec := by
  intro n
  simp only [A086682]

end A086682

/-! ## A086682.P7836511524740850717

`record[A055729(A014681(n))]`
-/

namespace A086682.P7836511524740850717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086682.P7836511524740850717

namespace A086682

/-- `record[A055729(A014681(n))]` -/
def P7836511524740850717.Spec : Prop :=
  ∀ n, P7836511524740850717.a n = A086682 n

end A086682

/-! ## A086682.P5875186626581649222

`record[A055729(n)/A033999(n)]`
-/

namespace A086682.P5875186626581649222
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055729 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086682.P5875186626581649222

namespace A086682

/-- `record[A055729(n)/A033999(n)]` -/
def P5875186626581649222.Spec : Prop :=
  ∀ n, P5875186626581649222.a n = (A086682 n : ℚ)

end A086682

/-! ## A086682.P10860853815010644222

`record[A055729(A052928(A028242(n)))]`
-/

namespace A086682.P10860853815010644222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (A052928 (A028242 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086682.P10860853815010644222

namespace A086682

/-- `record[A055729(A052928(A028242(n)))]` -/
def P10860853815010644222.Spec : Prop :=
  ∀ n, P10860853815010644222.a n = A086682 n

end A086682

/-! ## A086682.P7339466928810988602

`record[A055729(A235049(A005408(n)))]`
-/

namespace A086682.P7339466928810988602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (A235049 (A005408 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086682.P7339466928810988602

namespace A086682

/-- `record[A055729(A235049(A005408(n)))]` -/
def P7339466928810988602.Spec : Prop :=
  ∀ n, P7339466928810988602.a n = A086682 n

end A086682

/-!
# A086684: a(n) = n! - Sum_{i} p_i!^e_i, where n = Product_{i} (p_i^e_i).

The programs for A086684, there is no canonical definition to state claims against.
-/

/-! ## A086684.P333892762940044825

`C(A128327(n), A027642(n)²)`
-/

namespace A086684.P333892762940044825
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A128327 n).toNat (A027642 n ^ 2).toNat

end

end A086684.P333892762940044825

/-! ## A086684.P15267159162302453419

`A056897(n)*A105848(2*n²)`
-/

namespace A086684.P15267159162302453419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056897 n * A105848 (2 * n ^ 2)

end

end A086684.P15267159162302453419

/-!
# A086685: Number of 1 <= i < n such that i*n+1 is prime.

The programs for A086685, there is no canonical definition to state claims against.
-/

/-! ## A086685.P5362967479585951840

`A085053(n+1)-A295405(n+1)`
-/

namespace A086685.P5362967479585951840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085053 (n + 1) - A295405 (n + 1)

end

end A086685.P5362967479585951840

/-! ## A086685.P12365583015828436587

`A262311(A283138(n+1)+1)`
-/

namespace A086685.P12365583015828436587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262311 (A283138 (n + 1) + 1).toNat

end

end A086685.P12365583015828436587

/-! ## A086685.P14561228484328008430

`A257248(A000081(n)+A000051(n))`
-/

namespace A086685.P14561228484328008430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257248 (A000081 n + A000051 n).toNat

end

end A086685.P14561228484328008430

/-! ## A086685.P13861223789985995754

`A001222(A321467(n)+A057536(n))`
-/

namespace A086685.P13861223789985995754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A321467 n + A057536 n).toNat

end

end A086685.P13861223789985995754

/-! ## A086685.P14392539158881571360

`A293435(n+1)+A076489(A002905(n))`
-/

namespace A086685.P14392539158881571360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293435 (n + 1) + A076489 (A002905 n).toNat

end

end A086685.P14392539158881571360

/-!
# A086686: Number of 1<=i

The programs for A086686, there is no canonical definition to state claims against.
-/

/-! ## A086686.P13460120653900004568

`A018892(n+1)-A010052(A115846(n))`
-/

namespace A086686.P13460120653900004568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) - A010052 (A115846 n).toNat

end

end A086686.P13460120653900004568

/-! ## A086686.P16528463227864936679

`A018892(n+1)-A079559(A296277(n))`
-/

namespace A086686.P16528463227864936679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) - A079559 (A296277 n).toNat

end

end A086686.P16528463227864936679

/-! ## A086686.P14628935032241110613

`A353379(n+1)+A235046(A292689(n+1))`
-/

namespace A086686.P14628935032241110613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353379 (n + 1) + A235046 (A292689 (n + 1)).toNat

end

end A086686.P14628935032241110613

/-! ## A086686.P16771523744485930652

`A018892(n+1)-A037011(A183565(3*n+11))`
-/

namespace A086686.P16771523744485930652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (n + 1) - A037011 (A183565 (3 * n + 11)).toNat

end

end A086686.P16771523744485930652

/-!
# A086687: a(n) = binomial(n!,n).

The programs for A086687, there is no canonical definition to state claims against.
-/

/-! ## A086687.P1610067569138562779

`C(n!, n)`
-/

namespace A086687.P1610067569138562779
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.factorial n) n

end

end A086687.P1610067569138562779

/-! ## A086687.P2902338550345198994

`C(∏[round(1/acot(n))], n)`
-/

namespace A086687.P2902338550345198994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j).toNat n

end

end A086687.P2902338550345198994

/-! ## A086687.P17218578172088089568

`C(∏[ceil(abs(γ-n))], n)`
-/

namespace A086687.P17218578172088089568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.eulerMascheroniConstant - (n : ℝ)|⌉

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (∏ j ∈ Finset.range (n + 1), f1 j).toNat n

end

end A086687.P17218578172088089568

/-! ## A086687.P7112479891958264489

`and(1-4/2, C(A000142(n), n))`
-/

namespace A086687.P7112479891958264489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (Nat.choose (A000142 n).toNat n : ℤ)

end

end A086687.P7112479891958264489

/-! ## A086687.P2171458373937642209

`gcd(C(A038507(n)-1, n), C(2, n))`
-/

namespace A086687.P2171458373937642209
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (Nat.choose (A038507 n - 1).toNat n) (Nat.choose 2 n)

end

end A086687.P2171458373937642209

/-!
# A086688: Number of primes < prime(n)^3.

The programs for A086688, the canonical program `A086688.P14877409127376688652` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086688 has offset 1).

The definition of A086688 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A030078, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086688.P14877409127376688652

`A000720(A030078(n+1)+1)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A086688

/-- `A000720(A030078(n+1)+1)` -/
def P14877409127376688652.Spec : Prop :=
  ∀ n, P14877409127376688652.a n = A086688 (n + 1)

theorem P14877409127376688652.correct : P14877409127376688652.Spec := by
  intro n
  simp only [A086688, Nat.add_sub_cancel]

end A086688

/-! ## A086688.P10235955260572565542

`A117491(A000040(n+1))+n+1`
-/

namespace A086688.P10235955260572565542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117491 (A000040 (n + 1)).toNat + (n + 1 : ℤ)

end

end A086688.P10235955260572565542

namespace A086688

/-- `A117491(A000040(n+1))+n+1` -/
def P10235955260572565542.Spec : Prop :=
  ∀ n, P10235955260572565542.a n = A086688 (n + 1)

end A086688

/-! ## A086688.P14664762591396689261

`A365767(n)+a(n-1)` with `a(0)=4`
-/

namespace A086688.P14664762591396689261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A365767 n + a (n - 1)

end

end A086688.P14664762591396689261

namespace A086688

/-- `A365767(n)+a(n-1)` -/
def P14664762591396689261.Spec : Prop :=
  ∀ n, P14664762591396689261.a n = A086688 (n + 1)

end A086688

/-! ## A086688.P15297400430752938026

`∑[A365767(round(sqrt(n²+1)))]-1`
-/

namespace A086688.P15297400430752938026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A365767 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A086688.P15297400430752938026

namespace A086688

/-- `∑[A365767(round(sqrt(n²+1)))]-1` -/
def P15297400430752938026.Spec : Prop :=
  ∀ n, P15297400430752938026.a n = A086688 (n + 1)

end A086688

/-! ## A086688.P14263235615627551966

`A038098(∪[p?[2*n+1-(n-1)%7], p?[2*n+1]])`
-/

namespace A086688.P14263235615627551966
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - Int.tmod ((n : ℤ) - 1) 7

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f4 (SequenceMachineLib.nth (fun j => (f4 j).Prime) n)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n)

end

end A086688.P14263235615627551966

namespace A086688

/-- `A038098(∪[p?[2*n+1-(n-1)%7], p?[2*n+1]])` -/
def P14263235615627551966.Spec : Prop :=
  ∀ n, P14263235615627551966.a n = A086688 (n + 1)

end A086688

/-! ## A086688.P3562529028802780186

`A038098(Δ[A007504(n)])`
-/

namespace A086688.P3562529028802780186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (f1 (n + 1) - f1 n).toNat

end

end A086688.P3562529028802780186

namespace A086688

/-- `A038098(Δ[A007504(n)])` -/
def P3562529028802780186.Spec : Prop :=
  ∀ n, P3562529028802780186.a n = A086688 (n + 1)

end A086688

/-! ## A086688.P16750331239879877989

`A038098(A000040(n+1))`
-/

namespace A086688.P16750331239879877989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (A000040 (n + 1)).toNat

end

end A086688.P16750331239879877989

namespace A086688

/-- `A038098(A000040(n+1))` -/
def P16750331239879877989.Spec : Prop :=
  ∀ n, P16750331239879877989.a n = A086688 (n + 1)

end A086688

/-! ## A086688.P11433699914329942512

`A038098(A008578(n+2))`
-/

namespace A086688.P11433699914329942512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (A008578 (n + 2)).toNat

end

end A086688.P11433699914329942512

namespace A086688

/-- `A038098(A008578(n+2))` -/
def P11433699914329942512.Spec : Prop :=
  ∀ n, P11433699914329942512.a n = A086688 (n + 1)

end A086688

/-! ## A086688.P3661817064717520579

`A038098(A182986(n+2))`
-/

namespace A086688.P3661817064717520579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038098 (A182986 (n + 2)).toNat

end

end A086688.P3661817064717520579

namespace A086688

/-- `A038098(A182986(n+2))` -/
def P3661817064717520579.Spec : Prop :=
  ∀ n, P3661817064717520579.a n = A086688 (n + 1)

end A086688

/-!
# A086689: a(n) = Sum_{i=1..n} i^2*t(i), where t = A000217.

The programs for A086689, the canonical program `A086689.P4345152154758465391` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086689 has offset 1).

The definition of A086689 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A086689.P4345152154758465391

`∑[(n+1)²*∑[n+1]]`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A086689

/-- `∑[(n+1)²*∑[n+1]]` -/
def P4345152154758465391.Spec : Prop :=
  ∀ n, (P4345152154758465391.a n : ℤ) = A086689 (n + 1)

theorem P4345152154758465391.correct : P4345152154758465391.Spec := by
  intro n
  simp only [A086689, Nat.add_sub_cancel]

end A086689

/-! ## A086689.P13118385678959529000

`∑[lcm(n+2, (n+1)^3)]/2`
-/

namespace A086689.P13118385678959529000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 2) ((n + 1) ^ 3)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A086689.P13118385678959529000

namespace A086689

/-- `∑[lcm(n+2, (n+1)^3)]/2` -/
def P13118385678959529000.Spec : Prop :=
  ∀ n, P13118385678959529000.a n = (A086689 (n + 1) : ℚ)

end A086689

/-! ## A086689.P14496135024572661627

`floor(∑[∑[n+1]*∑[a(n-1)+2]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A086689.P14496135024572661627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f3 =>
  f3 (n - 1) + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) * (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A086689.P14496135024572661627

namespace A086689

/-- `floor(∑[∑[n+1]*∑[a(n-1)+2]])` -/
def P14496135024572661627.Spec : Prop :=
  ∀ n, (P14496135024572661627.a n : ℤ) = A086689 (n + 1)

end A086689

/-! ## A086689.P12645545478863931214

`a(n-1)+(n+1)²*C(n+2, 2)` with `a(0)=1`
-/

namespace A086689.P12645545478863931214
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) ^ 2 * Nat.choose (n + 2) 2

end

end A086689.P12645545478863931214

namespace A086689

/-- `a(n-1)+(n+1)²*C(n+2, 2)` -/
def P12645545478863931214.Spec : Prop :=
  ∀ n, (P12645545478863931214.a n : ℤ) = A086689 (n + 1)

end A086689

/-! ## A086689.P4319244195149359225

`a(n-1)+∑[n+1]/(n+1)^(-2)` with `a(0)=1`
-/

namespace A086689.P4319244195149359225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) ^ (-2 : ℤ)

end

end A086689.P4319244195149359225

namespace A086689

/-- `a(n-1)+∑[n+1]/(n+1)^(-2)` -/
def P4319244195149359225.Spec : Prop :=
  ∀ n, P4319244195149359225.a n = (A086689 (n + 1) : ℚ)

end A086689

/-! ## A086689.P9892557032733113466

`∑[A179824(n+2)]/2`
-/

namespace A086689.P9892557032733113466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179824 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A086689.P9892557032733113466

namespace A086689

/-- `∑[A179824(n+2)]/2` -/
def P9892557032733113466.Spec : Prop :=
  ∀ n, P9892557032733113466.a n = (A086689 (n + 1) : ℚ)

end A086689

/-! ## A086689.P15612388849233757934

`A085462(n+1)-∑[∑[n]²]`
-/

namespace A086689.P15612388849233757934
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085462 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A086689.P15612388849233757934

namespace A086689

/-- `A085462(n+1)-∑[∑[n]²]` -/
def P15612388849233757934.Spec : Prop :=
  ∀ n, P15612388849233757934.a n = A086689 (n + 1)

end A086689

/-! ## A086689.P15068779048323559149

`A108650(n)-A051836(n)`
-/

namespace A086689.P15068779048323559149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108650 n - A051836 n

end

end A086689.P15068779048323559149

namespace A086689

/-- `A108650(n)-A051836(n)` -/
def P15068779048323559149.Spec : Prop :=
  ∀ n, P15068779048323559149.a n = A086689 (n + 1)

end A086689

/-! ## A086689.P15856117916036484451

`A271567(n)-A033488(n)`
-/

namespace A086689.P15856117916036484451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271567 n - A033488 n

end

end A086689.P15856117916036484451

namespace A086689

/-- `A271567(n)-A033488(n)` -/
def P15856117916036484451.Spec : Prop :=
  ∀ n, P15856117916036484451.a n = A086689 (n + 1)

end A086689

/-! ## A086689.P9260904892979016246

`A187673(n)+A164938(n+1)`
-/

namespace A086689.P9260904892979016246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187673 n + A164938 (n + 1)

end

end A086689.P9260904892979016246

namespace A086689

/-- `A187673(n)+A164938(n+1)` -/
def P9260904892979016246.Spec : Prop :=
  ∀ n, P9260904892979016246.a n = A086689 (n + 1)

end A086689

/-! ## A086689.P13620947467753373799

`A114241(n)+A277935(n+1)/2`
-/

namespace A086689.P13620947467753373799
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114241 n : ℚ) + (A277935 (n + 1) : ℚ) / 2

end

end A086689.P13620947467753373799

namespace A086689

/-- `A114241(n)+A277935(n+1)/2` -/
def P13620947467753373799.Spec : Prop :=
  ∀ n, P13620947467753373799.a n = (A086689 (n + 1) : ℚ)

end A086689

/-! ## A086689.P9254944952236226444

`A051836(n)+A051843(n+1)+A051836(n)`
-/

namespace A086689.P9254944952236226444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051836 n + (A051843 (n + 1) + A051836 n)

end

end A086689.P9254944952236226444

namespace A086689

/-- `A051836(n)+A051843(n+1)+A051836(n)` -/
def P9254944952236226444.Spec : Prop :=
  ∀ n, P9254944952236226444.a n = A086689 (n + 1)

end A086689

/-! ## A086689.P3391918709235859599

`∑[Δ[A000538(n)]+(n+1)^3]/2`
-/

namespace A086689.P3391918709235859599
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + ((n + 1) ^ 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A086689.P3391918709235859599

namespace A086689

/-- `∑[Δ[A000538(n)]+(n+1)^3]/2` -/
def P3391918709235859599.Spec : Prop :=
  ∀ n, P3391918709235859599.a n = (A086689 (n + 1) : ℚ)

end A086689

/-! ## A086689.P2232552850217316220

`A112851(n+1)+A024166(n+1)`
-/

namespace A086689.P2232552850217316220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112851 (n + 1) + A024166 (n + 1)

end

end A086689.P2232552850217316220

namespace A086689

/-- `A112851(n+1)+A024166(n+1)` -/
def P2232552850217316220.Spec : Prop :=
  ∀ n, P2232552850217316220.a n = A086689 (n + 1)

end A086689

/-! ## A086689.P13492437165754197913

`A231303(n+1)-A050534(n+2)`
-/

namespace A086689.P13492437165754197913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231303 (n + 1) - A050534 (n + 2)

end

end A086689.P13492437165754197913

namespace A086689

/-- `A231303(n+1)-A050534(n+2)` -/
def P13492437165754197913.Spec : Prop :=
  ∀ n, P13492437165754197913.a n = A086689 (n + 1)

end A086689

/-! ## A086689.P1894358783003470283

`A001296(n+1)+2*A112851(n+1)`
-/

namespace A086689.P1894358783003470283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001296 (n + 1) + 2 * A112851 (n + 1)

end

end A086689.P1894358783003470283

namespace A086689

/-- `A001296(n+1)+2*A112851(n+1)` -/
def P1894358783003470283.Spec : Prop :=
  ∀ n, P1894358783003470283.a n = A086689 (n + 1)

end A086689

/-! ## A086689.P7135129789514255144

`(A000538(n+1)+A000537(n+1))/2`
-/

namespace A086689.P7135129789514255144
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000538 (n + 1) + A000537 (n + 1) : ℚ) / 2

end

end A086689.P7135129789514255144

namespace A086689

/-- `(A000538(n+1)+A000537(n+1))/2` -/
def P7135129789514255144.Spec : Prop :=
  ∀ n, P7135129789514255144.a n = (A086689 (n + 1) : ℚ)

end A086689

/-! ## A086689.P2970065200554842523

`2*A024166(n+1)-A001296(n+1)`
-/

namespace A086689.P2970065200554842523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A024166 (n + 1) - A001296 (n + 1)

end

end A086689.P2970065200554842523

namespace A086689

/-- `2*A024166(n+1)-A001296(n+1)` -/
def P2970065200554842523.Spec : Prop :=
  ∀ n, P2970065200554842523.a n = A086689 (n + 1)

end A086689

/-! ## A086689.P7424059237464004130

`A207361(n+1)+A271663(n)-A005585(n+1)`
-/

namespace A086689.P7424059237464004130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207361 (n + 1) + (A271663 n - A005585 (n + 1))

end

end A086689.P7424059237464004130

namespace A086689

/-- `A207361(n+1)+A271663(n)-A005585(n+1)` -/
def P7424059237464004130.Spec : Prop :=
  ∀ n, P7424059237464004130.a n = A086689 (n + 1)

end A086689

/-! ## A086689.P5190305086762391319

`Δ[n*∑[A002415(n+1)]]`
-/

namespace A086689.P5190305086762391319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002415 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A086689.P5190305086762391319

namespace A086689

/-- `Δ[n*∑[A002415(n+1)]]` -/
def P5190305086762391319.Spec : Prop :=
  ∀ n, P5190305086762391319.a n = A086689 (n + 1)

end A086689

/-!
# A086690: Number of primes < 2^prime(n).

The programs for A086690, the canonical program `A086690.P3097928174086633679` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086690 has offset 1).

The definition of A086690 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A007053, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086690.P3097928174086633679

`A007053(A000040(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A086690

/-- `A007053(A000040(n+1))` -/
def P3097928174086633679.Spec : Prop :=
  ∀ n, P3097928174086633679.a n = A086690 (n + 1)

theorem P3097928174086633679.correct : P3097928174086633679.Spec := by
  intro n
  simp only [A086690, Nat.add_sub_cancel]

end A086690

/-! ## A086690.P2827694606851620532

`A007053(eq[1, ∑{e}[n, #]])`
-/

namespace A086690.P2827694606851620532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A086690.P2827694606851620532

namespace A086690

/-- `A007053(eq[1, ∑{e}[n, #]])` -/
def P2827694606851620532.Spec : Prop :=
  ∀ n, P2827694606851620532.a n = A086690 (n + 1)

end A086690

/-! ## A086690.P5406067818796551831

`A007053(p?[abs(xor(n, -2))])`
-/

namespace A086690.P5406067818796551831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.xor (n : ℤ) (-2)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A086690.P5406067818796551831

namespace A086690

/-- `A007053(p?[abs(xor(n, -2))])` -/
def P5406067818796551831.Spec : Prop :=
  ∀ n, P5406067818796551831.a n = A086690 (n + 1)

end A086690

/-! ## A086690.P3820469072266311208

`A007053(p?[xor(1, n)+1])`
-/

namespace A086690.P3820469072266311208
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086690.P3820469072266311208

namespace A086690

/-- `A007053(p?[xor(1, n)+1])` -/
def P3820469072266311208.Spec : Prop :=
  ∀ n, P3820469072266311208.a n = A086690 (n + 1)

end A086690

/-! ## A086690.P3315054923546594586

`A007053(p?[n%3+n])`
-/

namespace A086690.P3315054923546594586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 3 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007053 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086690.P3315054923546594586

namespace A086690

/-- `A007053(p?[n%3+n])` -/
def P3315054923546594586.Spec : Prop :=
  ∀ n, P3315054923546594586.a n = A086690 (n + 1)

end A086690

/-!
# A086692: Number of primes < 3^prime(n).

The programs for A086692, there is no canonical definition to state claims against.
-/

/-! ## A086692.P12613324031352170708

`A055729(p?[comp[n²]])`
-/

namespace A086692.P12613324031352170708
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086692.P12613324031352170708

/-! ## A086692.P17232489308937141861

`A055729(A390240(n))`
-/

namespace A086692.P17232489308937141861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (A390240 n).toNat

end

end A086692.P17232489308937141861

/-! ## A086692.P3150585773035327858

`A055729(Δ[A007504(n)])`
-/

namespace A086692.P3150585773035327858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (f1 (n + 1) - f1 n).toNat

end

end A086692.P3150585773035327858

/-! ## A086692.P3138494623852388611

`A055729(A000040(n+1))`
-/

namespace A086692.P3138494623852388611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (A000040 (n + 1)).toNat

end

end A086692.P3138494623852388611

/-! ## A086692.P9460846951183618963

`A055729(A030291(n+1))`
-/

namespace A086692.P9460846951183618963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055729 (A030291 (n + 1)).toNat

end

end A086692.P9460846951183618963

/-!
# A086693: Number of primes less than prime(n)^prime(n).

The programs for A086693, there is no canonical definition to state claims against.
-/

/-! ## A086693.P13698509076596859435

`A064151(p?[comp[n²]])`
-/

namespace A086693.P13698509076596859435
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064151 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A086693.P13698509076596859435

/-! ## A086693.P7404711761290768866

`A064151(Δ[A007504(n)])`
-/

namespace A086693.P7404711761290768866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064151 (f1 (n + 1) - f1 n).toNat

end

end A086693.P7404711761290768866

/-! ## A086693.P13695587413947883348

`A064151(A000040(n+1))`
-/

namespace A086693.P13695587413947883348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064151 (A000040 (n + 1)).toNat

end

end A086693.P13695587413947883348

/-!
# A086694: A run of 2^n 1's followed by a run of 2^n 0's, for n=0, 1, 2, ...

The programs for A086694, the canonical program `A086694.P8380285767258739721` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A086694 has offset 1).

The definition of A086694 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A079882, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A086694.P11752133457642160839

`1-A079944(n)`
-/

namespace A086694.P11752133457642160839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A079944 n

end

end A086694.P11752133457642160839

namespace A086694

/-- `1-A079944(n)` -/
def P11752133457642160839.Spec : Prop :=
  ∀ n, P11752133457642160839.a n = A086694 (n + 1)

end A086694

/-! ## A086694.P8380285767258739721

`2-A079882(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A086694

/-- `2-A079882(n)` -/
def P8380285767258739721.Spec : Prop :=
  ∀ n, P8380285767258739721.a n = A086694 (n + 1)

theorem P8380285767258739721.correct : P8380285767258739721.Spec := by
  intro n
  simp only [A086694, Nat.add_sub_cancel]

end A086694

/-! ## A086694.P3286101701532978127

`a(floor(n/2)-1)` with `a(0)=1, a(1)=0`
-/

namespace A086694.P3286101701532978127
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (⌊(n : ℚ) / 2⌋ - 1).toNat

end

end A086694.P3286101701532978127

namespace A086694

/-- `a(floor(n/2)-1)` -/
def P3286101701532978127.Spec : Prop :=
  ∀ n, (P3286101701532978127.a n : ℤ) = A086694 (n + 1)

end A086694

/-! ## A086694.P4256452962495053980

`abs(a(∑[(n-1)%2]))` with `a(0)=1, a(1)=0`
-/

namespace A086694.P4256452962495053980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) - 1) 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086694.P4256452962495053980

namespace A086694

/-- `abs(a(∑[(n-1)%2]))` -/
def P4256452962495053980.Spec : Prop :=
  ∀ n, (P4256452962495053980.a n : ℤ) = A086694 (n + 1)

end A086694

/-! ## A086694.P14975263983373517840

`sqrt(a(ceil((n-3)/2)))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A086694.P14975263983373517840
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  Real.sqrt (a ⌈((n : ℤ) - 3 : ℚ) / 2⌉.toNat)

end

end A086694.P14975263983373517840

namespace A086694

/-- `sqrt(a(ceil((n-3)/2)))` -/
def P14975263983373517840.Spec : Prop :=
  ∀ n, P14975263983373517840.a n = (A086694 (n + 1) : ℝ)

end A086694

/-! ## A086694.P12171246593768309984

`abs(a(gcd(n, ∑[n])-1))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A086694.P12171246593768309984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f1 j) - 1)

end

end A086694.P12171246593768309984

namespace A086694

/-- `abs(a(gcd(n, ∑[n])-1))` -/
def P12171246593768309984.Spec : Prop :=
  ∀ n, (P12171246593768309984.a n : ℤ) = A086694 (n + 1)

end A086694

/-! ## A086694.P7611653460010680058

`char[lt[n, xor(n, floor(n/2))]-2]`
-/

namespace A086694.P7611653460010680058
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086694.P7611653460010680058

namespace A086694

/-- `char[lt[n, xor(n, floor(n/2))]-2]` -/
def P7611653460010680058.Spec : Prop :=
  ∀ n, (P7611653460010680058.a n : ℤ) = A086694 (n + 1)

end A086694

/-! ## A086694.P11466999207704923503

`a(∑[a(n-2)²]-2)²` with `a(0)=1, a(1)=0`
-/

namespace A086694.P11466999207704923503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 2) ^ 2

end

end A086694.P11466999207704923503

namespace A086694

/-- `a(∑[a(n-2)²]-2)²` -/
def P11466999207704923503.Spec : Prop :=
  ∀ n, (P11466999207704923503.a n : ℤ) = A086694 (n + 1)

end A086694

/-! ## A086694.P14734450061150912353

`floor(a(∑[floor(a(n-2))]-2))` with `a(0)=1, a(1)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A086694.P14734450061150912353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 2)

end

end A086694.P14734450061150912353

namespace A086694

/-- `floor(a(∑[floor(a(n-2))]-2))` -/
def P14734450061150912353.Spec : Prop :=
  ∀ n, (P14734450061150912353.a n : ℤ) = A086694 (n + 1)

end A086694

/-! ## A086694.P18266290448975610347

`char[comp[lt[xor(n, 2*n), 2*n]]-2]`
-/

namespace A086694.P18266290448975610347
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < f4 j) n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086694.P18266290448975610347

namespace A086694

/-- `char[comp[lt[xor(n, 2*n), 2*n]]-2]` -/
def P18266290448975610347.Spec : Prop :=
  ∀ n, (P18266290448975610347.a n : ℤ) = A086694 (n + 1)

end A086694

/-! ## A086694.P3414786533487956659

`∑[char[2*xor(n, n+1)-(n+1)]]%2`
-/

namespace A086694.P3414786533487956659
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor n (n + 1) : ℤ) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % 2

end

end A086694.P3414786533487956659

namespace A086694

/-- `∑[char[2*xor(n, n+1)-(n+1)]]%2` -/
def P3414786533487956659.Spec : Prop :=
  ∀ n, (P3414786533487956659.a n : ℤ) = A086694 (n + 1)

end A086694

/-! ## A086694.P16265084817351270886

`and(1, ∑[char[2*xor(n, n+1)-(n+1)]])`
-/

namespace A086694.P16265084817351270886
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * Nat.xor n (n + 1) : ℤ) - (n + 1 : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A086694.P16265084817351270886

namespace A086694

/-- `and(1, ∑[char[2*xor(n, n+1)-(n+1)]])` -/
def P16265084817351270886.Spec : Prop :=
  ∀ n, (P16265084817351270886.a n : ℤ) = A086694 (n + 1)

end A086694

/-! ## A086694.P13666902063562518481

`char[A038558(n)-2]`
-/

namespace A086694.P13666902063562518481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038558 n - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086694.P13666902063562518481

namespace A086694

/-- `char[A038558(n)-2]` -/
def P13666902063562518481.Spec : Prop :=
  ∀ n, (P13666902063562518481.a n : ℤ) = A086694 (n + 1)

end A086694

/-! ## A086694.P18172642399398185824

`A081241(n+1)%2`
-/

namespace A086694.P18172642399398185824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081241 (n + 1)) 2

end

end A086694.P18172642399398185824

namespace A086694

/-- `A081241(n+1)%2` -/
def P18172642399398185824.Spec : Prop :=
  ∀ n, P18172642399398185824.a n = A086694 (n + 1)

end A086694

/-! ## A086694.P2294559033641505455

`A081242(n+2)%2`
-/

namespace A086694.P2294559033641505455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A081242 (n + 2)) 2

end

end A086694.P2294559033641505455

namespace A086694

/-- `A081242(n+2)%2` -/
def P2294559033641505455.Spec : Prop :=
  ∀ n, P2294559033641505455.a n = A086694 (n + 1)

end A086694

/-! ## A086694.P70070788357213511

`gcd(2, A103697(n))-1`
-/

namespace A086694.P70070788357213511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A103697 n) : ℤ) - 1

end

end A086694.P70070788357213511

namespace A086694

/-- `gcd(2, A103697(n))-1` -/
def P70070788357213511.Spec : Prop :=
  ∀ n, P70070788357213511.a n = A086694 (n + 1)

end A086694

/-! ## A086694.P13490600674565384568

`char[A092754(n+1)-1]`
-/

namespace A086694.P13490600674565384568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092754 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A086694.P13490600674565384568

namespace A086694

/-- `char[A092754(n+1)-1]` -/
def P13490600674565384568.Spec : Prop :=
  ∀ n, (P13490600674565384568.a n : ℤ) = A086694 (n + 1)

end A086694

/-! ## A086694.P3693306374139230452

`1-char[A004760(n+1)-2]`
-/

namespace A086694.P3693306374139230452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004760 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A086694.P3693306374139230452

namespace A086694

/-- `1-char[A004760(n+1)-2]` -/
def P3693306374139230452.Spec : Prop :=
  ∀ n, P3693306374139230452.a n = A086694 (n + 1)

end A086694

/-! ## A086694.P14135059397682147851

`1-char[A053642(n+1)-2]`
-/

namespace A086694.P14135059397682147851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053642 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A086694.P14135059397682147851

namespace A086694

/-- `1-char[A053642(n+1)-2]` -/
def P14135059397682147851.Spec : Prop :=
  ∀ n, P14135059397682147851.a n = A086694 (n + 1)

end A086694

/-! ## A086694.P13595121581609626539

`A005813(A103697(n))`
-/

namespace A086694.P13595121581609626539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005813 (A103697 n).toNat

end

end A086694.P13595121581609626539

namespace A086694

/-- `A005813(A103697(n))` -/
def P13595121581609626539.Spec : Prop :=
  ∀ n, P13595121581609626539.a n = A086694 (n + 1)

end A086694

/-!
# A086695: a(n) = 100^n - 10^n - 1.

The programs for A086695, there is no canonical definition to state claims against.
-/

/-! ## A086695.P14037354607213713432

`A276352(n+1)-1`
-/

namespace A086695.P14037354607213713432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276352 (n + 1) - 1

end

end A086695.P14037354607213713432

/-! ## A086695.P12427997293065497868

`A168624(n+1)-2`
-/

namespace A086695.P12427997293065497868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168624 (n + 1) - 2

end

end A086695.P12427997293065497868

/-! ## A086695.P15806262928571854154

`2*A037182(n+1)-1`
-/

namespace A086695.P15806262928571854154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A037182 (n + 1) - 1

end

end A086695.P15806262928571854154

/-! ## A086695.P17648305461893783857

`A011557(n+1)²-A000533(n+1)`
-/

namespace A086695.P17648305461893783857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) ^ 2 - A000533 (n + 1)

end

end A086695.P17648305461893783857

/-! ## A086695.P7052423108179237792

`A011557(n+1)²-A062397(n+1)`
-/

namespace A086695.P7052423108179237792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011557 (n + 1) ^ 2 - A062397 (n + 1)

end

end A086695.P7052423108179237792

/-! ## A086695.P8603026862139940845

`A178500(n+1)²-A000533(n+1)`
-/

namespace A086695.P8603026862139940845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178500 (n + 1) ^ 2 - A000533 (n + 1)

end

end A086695.P8603026862139940845

/-! ## A086695.P1395706580569233462

`A098608(n+1)-(A002283(n+1)+2)`
-/

namespace A086695.P1395706580569233462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098608 (n + 1) - (A002283 (n + 1) + 2)

end

end A086695.P1395706580569233462

/-! ## A086695.P10310560473271806227

`A002283(n+1)*A011557(n+1)-1`
-/

namespace A086695.P10310560473271806227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) * A011557 (n + 1) - 1

end

end A086695.P10310560473271806227

/-! ## A086695.P14430713056802371377

`A002283(n+1)*A178500(n+1)-1`
-/

namespace A086695.P14430713056802371377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002283 (n + 1) * A178500 (n + 1) - 1

end

end A086695.P14430713056802371377

/-! ## A086695.P10973614899875279546

`A171513(n+1)-(A052268(n+2)+2)`
-/

namespace A086695.P10973614899875279546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171513 (n + 1) - (A052268 (n + 2) + 2)

end

end A086695.P10973614899875279546

/-!
# A086697: Left-truncatable semiprimes, i.e., semiprimes in which repeatedly deleting the leftmost digit gives a semiprime at every step until a single-digit semiprime remains.

The programs for A086697, there is no canonical definition to state claims against.
-/

/-! ## A086697.P8722392255644075247

`∩[A175709(n+1), A391242(n+1)]`
-/

namespace A086697.P8722392255644075247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391242 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086697.P8722392255644075247

/-! ## A086697.P4002491363010177086

`∩[A118951(n+1), A175709(n+1)]`
-/

namespace A086697.P4002491363010177086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086697.P4002491363010177086

/-! ## A086697.P17952904809367470665

`∩[A175709(n+1), A285206(n+2)]`
-/

namespace A086697.P17952904809367470665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285206 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086697.P17952904809367470665

/-! ## A086697.P10492300320238344670

`∩[A066310(A066310(n+1)), A175709(n+1)]`
-/

namespace A086697.P10492300320238344670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066310 (A066310 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175709 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086697.P10492300320238344670

/-! ## A086697.P2633323772424067034

`∩[A175709(n+1), A347792(n)]`
-/

namespace A086697.P2633323772424067034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347792 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086697.P2633323772424067034

/-!
# A086698: Two-sided semiprimes: deleting any number of digits at left or at right, but not both, leaves a semiprime.

The programs for A086698, there is no canonical definition to state claims against.
-/

/-! ## A086698.P17548064126697593650

`∩[A085733(n+1), A086697(n+1)]`
-/

namespace A086698.P17548064126697593650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085733 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086697 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A086698.P17548064126697593650

/-! ## A086698.P13210081042982388858

`A317248(∑[A108131(n)])`
-/

namespace A086698.P13210081042982388858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108131 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317248 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086698.P13210081042982388858

/-! ## A086698.P12834715173892197006

`A317248(∑[A316623(n)])`
-/

namespace A086698.P12834715173892197006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317248 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A086698.P12834715173892197006

/-! ## A086698.P101688786617440888

`A317248(A108131(n)+n)`
-/

namespace A086698.P101688786617440888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317248 (A108131 n + (n : ℤ)).toNat

end

end A086698.P101688786617440888

/-!
# A086699: Number of n X n matrices over GF(2) with rank n-1.

The programs for A086699, there is no canonical definition to state claims against.
-/

/-! ## A086699.P10439261549658918848

`A286331(∑[n+2]-1)`
-/

namespace A086699.P10439261549658918848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286331 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A086699.P10439261549658918848

/-! ## A086699.P9007601444836142568

`∑[2^n]²*A002884(n)`
-/

namespace A086699.P9007601444836142568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) * A002884 n

end

end A086699.P9007601444836142568

/-! ## A086699.P8670941101934319741

`∑[A000079(n)]*∏[4^n-floor(2^(n-1))]`
-/

namespace A086699.P8670941101934319741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 ^ n : ℤ) - ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∏ j ∈ Finset.range (n + 1), f2 j)

end

end A086699.P8670941101934319741

/-! ## A086699.P7417500313159900449

`record[A286331(∑[A158416(n)])]`
-/

namespace A086699.P7417500313159900449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158416 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286331 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A086699.P7417500313159900449

/-! ## A086699.P12411492199793519005

`A002884(n)*A060867(n+1)`
-/

namespace A086699.P12411492199793519005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002884 n * A060867 (n + 1)

end

end A086699.P12411492199793519005

