import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
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
import Seq.Opaque.C009
import Seq.Opaque.C010
import Seq.Opaque.C011
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
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
# A034403: Multiplicity of highest weight (or singular) vectors associated with character chi_15 of Monster module.

The programs for A034403, there is no canonical definition to state claims against.
-/

/-! ## A034403.P1561784503954882602

`floor((A255057(floor(A353392(n)/4))+1)/4)`
-/

namespace A034403.P1561784503954882602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A255057 ⌊(A353392 n : ℚ) / 4⌋.toNat + 1 : ℚ) / 4⌋

end

end A034403.P1561784503954882602

/-!
# A034404: Values of C(n,3) which can be written as C(x,3) + C(y,3).

The programs for A034404, there is no canonical definition to state claims against.
-/

/-! ## A034404.P15344187831616364095

`A000292(A002311(n+1))`
-/

namespace A034404.P15344187831616364095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A002311 (n + 1)).toNat

end

end A034404.P15344187831616364095

/-! ## A034404.P17619581160580179468

`C(A010330(n+1), 3)`
-/

namespace A034404.P17619581160580179468
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A010330 (n + 1)).toNat 3

end

end A034404.P17619581160580179468

/-! ## A034404.P9665715347864696988

`A000292(A010330(n+1)-2)`
-/

namespace A034404.P9665715347864696988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A010330 (n + 1) - 2).toNat

end

end A034404.P9665715347864696988

/-! ## A034404.P4747569500600583680

`A027480(A010330(n+1)-2)/3`
-/

namespace A034404.P4747569500600583680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027480 (A010330 (n + 1) - 2).toNat : ℚ) / 3

end

end A034404.P4747569500600583680

/-! ## A034404.P4677107401082271657

`A000292(A280560(2*n+1)+A010330(n+1))`
-/

namespace A034404.P4677107401082271657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (A280560 (2 * n + 1) + A010330 (n + 1)).toNat

end

end A034404.P4677107401082271657

/-!
# A034405: Let f(x) = (Pi - 2*arctan(1/(sqrt(x)*sqrt(x+2))))/(2*sqrt(x)*sqrt(x+2)), take (-1)^n*(n-th derivative from right at x=0) and multiply by A001147(n+1).

The programs for A034405, there is no canonical definition to state claims against.
-/

/-! ## A034405.P8909465034406105781

`n!*A034430(n)`
-/

namespace A034405.P8909465034406105781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A034430 n

end

end A034405.P8909465034406105781

/-! ## A034405.P6015603606192560637

`n!*A336601(∑[n+1])`
-/

namespace A034405.P6015603606192560637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A336601 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034405.P6015603606192560637

/-! ## A034405.P9528586368072140546

`A000142(n)*A034430(n)`
-/

namespace A034405.P9528586368072140546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A034430 n

end

end A034405.P9528586368072140546

/-! ## A034405.P7669724497239798978

`abs(A034430(n)*A133942(n))`
-/

namespace A034405.P7669724497239798978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034430 n * A133942 n|

end

end A034405.P7669724497239798978

/-!
# A034416: Multiplicity of highest weight (or singular) vectors associated with character chi_28 of Monster module.

The programs for A034416, there is no canonical definition to state claims against.
-/

/-! ## A034416.P9615302175750841147

`floor(A129852(n)/A319163(2*n+5))`
-/

namespace A034416.P9615302175750841147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A129852 n : ℚ) / (A319163 (2 * n + 5) : ℚ)⌋

end

end A034416.P9615302175750841147

/-!
# A034419: Multiplicity of highest weight (or singular) vectors associated with character chi_31 of Monster module.

The programs for A034419, there is no canonical definition to state claims against.
-/

/-! ## A034419.P13814880705600099496

`floor(A007454(n+2)/A339156(n+10))`
-/

namespace A034419.P13814880705600099496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A007454 (n + 2) : ℚ) / (A339156 (n + 10) : ℚ)⌋

end

end A034419.P13814880705600099496

/-!
# A034423: Multiplicity of highest weight (or singular) vectors associated with character chi_35 of Monster module.

The programs for A034423, there is no canonical definition to state claims against.
-/

/-! ## A034423.P18310954525776780627

`∑{d}[A034461(n+1), A330955(#)]`
-/

namespace A034423.P18310954525776780627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034461 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A330955 d

end

end A034423.P18310954525776780627

/-! ## A034423.P16184739913904449266

`A003893(A185238(n)*A342674(n+1))`
-/

namespace A034423.P16184739913904449266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003893 (A185238 n * A342674 (n + 1)).toNat

end

end A034423.P16184739913904449266

/-! ## A034423.P9210508038595218622

`A078268(n+1)%A316039(A185238(n))`
-/

namespace A034423.P9210508038595218622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078268 (n + 1)) (A316039 (A185238 n).toNat)

end

end A034423.P9210508038595218622

/-! ## A034423.P8596836265592502868

`A093030(n+1)%A315498(A185238(n))`
-/

namespace A034423.P8596836265592502868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093030 (n + 1)) (A315498 (A185238 n).toNat)

end

end A034423.P8596836265592502868

/-! ## A034423.P16220634540606410342

`A132740(n+1)%A301722(A185238(n))`
-/

namespace A034423.P16220634540606410342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132740 (n + 1)) (A301722 (A185238 n).toNat)

end

end A034423.P16220634540606410342

/-!
# A034427: Multiplicity of highest weight (or singular) vectors associated with character chi_39 of Monster module.

The programs for A034427, there is no canonical definition to state claims against.
-/

/-! ## A034427.P11333622520829532138

`A036839(C(2*n, 90))`
-/

namespace A034427.P11333622520829532138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036839 (Nat.choose (2 * n) 90)

end

end A034427.P11333622520829532138

/-! ## A034427.P9972662702528215943

`A055570(A034429(n+2))`
-/

namespace A034427.P9972662702528215943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055570 (A034429 (n + 2)).toNat

end

end A034427.P9972662702528215943

/-! ## A034427.P14258882965024053008

`A185217(A034432(n+2))`
-/

namespace A034427.P14258882965024053008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 (A034432 (n + 2)).toNat

end

end A034427.P14258882965024053008

/-! ## A034427.P24312519674474782

`A346702(A034443(n+2))`
-/

namespace A034427.P24312519674474782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346702 (A034443 (n + 2)).toNat

end

end A034427.P24312519674474782

/-! ## A034427.P9151126019159386105

`A005101(A376532(3*n+4))%A322354(3*n+5)`
-/

namespace A034427.P9151126019159386105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005101 (A376532 (3 * n + 4)).toNat) (A322354 (3 * n + 5))

end

end A034427.P9151126019159386105

/-!
# A034428: E.g.f.: 1 - (1-x)*(tan(x) + sec(x)).

The programs for A034428, there is no canonical definition to state claims against.
-/

/-! ## A034428.P16472700834465328593

`A109449(A000124(n))-A000111(n)`
-/

namespace A034428.P16472700834465328593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000124 n).toNat - A000111 n

end

end A034428.P16472700834465328593

/-! ## A034428.P4693310335073575479

`A109449(A000124(n))-abs(A346838(n))`
-/

namespace A034428.P4693310335073575479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000124 n).toNat - |A346838 n|

end

end A034428.P4693310335073575479

/-! ## A034428.P15724431827712114365

`A109449(sqrt(A086601(n)))-A000111(n)`
-/

namespace A034428.P15724431827712114365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (SequenceMachineLib.roundAway (Real.sqrt (A086601 n : ℝ))).toNat - A000111 n

end

end A034428.P15724431827712114365

/-! ## A034428.P6649434765091052899

`A109449(∑[A028310(n)])-A000111(n)`
-/

namespace A034428.P6649434765091052899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A000111 n

end

end A034428.P6649434765091052899

/-! ## A034428.P17490080486079965070

`A109449(A000124(n))-A109449(∑[n])`
-/

namespace A034428.P17490080486079965070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000124 n).toNat - A109449 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034428.P17490080486079965070

/-! ## A034428.P16347660649423968846

`A109449(A000124(n))-A008281(A000096(n))`
-/

namespace A034428.P16347660649423968846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000124 n).toNat - A008281 (A000096 n).toNat

end

end A034428.P16347660649423968846

/-! ## A034428.P12047150292060514914

`A109449(A000124(n))-A010094(A238531(n))`
-/

namespace A034428.P12047150292060514914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000124 n).toNat - A010094 (A238531 n).toNat

end

end A034428.P12047150292060514914

/-! ## A034428.P929861850019142577

`A109449(A000124(n))-A108040(A266665(n))`
-/

namespace A034428.P929861850019142577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000124 n).toNat - A108040 (A266665 n).toNat

end

end A034428.P929861850019142577

/-! ## A034428.P16108609093215469174

`A109449(A000124(n))-A008281(A000124(n+1))`
-/

namespace A034428.P16108609093215469174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109449 (A000124 n).toNat - A008281 (A000124 (n + 1)).toNat

end

end A034428.P16108609093215469174

/-!
# A034429: Multiplicity of highest weight (or singular) vectors associated with character chi_41 of Monster module.

The programs for A034429, there is no canonical definition to state claims against.
-/

/-! ## A034429.P3302750109707520544

`A057768(C(n, 45))`
-/

namespace A034429.P3302750109707520544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057768 (Nat.choose n 45)

end

end A034429.P3302750109707520544

/-! ## A034429.P9964847466457366348

`A316658(C(n, 45))`
-/

namespace A034429.P9964847466457366348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316658 (Nat.choose n 45)

end

end A034429.P9964847466457366348

/-! ## A034429.P4734744718587364221

`∑[A048735(C(n, 45))]/3`
-/

namespace A034429.P4734744718587364221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (Nat.choose n 45)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 3

end

end A034429.P4734744718587364221

/-! ## A034429.P8282381894595499840

`A305212(A172353(n))`
-/

namespace A034429.P8282381894595499840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305212 (A172353 n).toNat

end

end A034429.P8282381894595499840

/-! ## A034429.P11129649766032450158

`A001086(A034432(n+1))`
-/

namespace A034429.P11129649766032450158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001086 (A034432 (n + 1)).toNat

end

end A034429.P11129649766032450158

/-!
# A034430: Convolution of A001147 (double factorial numbers) with itself.

The programs for A034430, the canonical program `A034430.P7564438678359042526` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034430 has offset 0).

The definition of A034430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034430.P7564438678359042526

`(3*n-1)*a(n-1)-(2*n-1)*(n-1)*a(n-2)` with `a(0)=1, a(1)=2`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034430

/-- `(3*n-1)*a(n-1)-(2*n-1)*(n-1)*a(n-2)` -/
def P7564438678359042526.Spec : Prop :=
  ∀ n, P7564438678359042526.a n = A034430 n

theorem P7564438678359042526.correct : P7564438678359042526.Spec := by
  intro n
  simp only [A034430]

end A034430

/-! ## A034430.P17605254904044605461

`abs(∏[a(n-1)-2])+n*a(n-1)` with `a(0)=1`
-/

namespace A034430.P17605254904044605461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |∏ j ∈ Finset.range (n + 1), f1 j| + (n : ℤ) * a (n - 1)

end

end A034430.P17605254904044605461

namespace A034430

/-- `abs(∏[a(n-1)-2])+n*a(n-1)` -/
def P17605254904044605461.Spec : Prop :=
  ∀ n, P17605254904044605461.a n = A034430 n

end A034430

/-! ## A034430.P17170950268944718424

`xor(-2, ∏[2*n-1])+n*a(n-1)` with `a(0)=1`
-/

namespace A034430.P17170950268944718424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor (-2) (∏ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A034430.P17170950268944718424

namespace A034430

/-- `xor(-2, ∏[2*n-1])+n*a(n-1)` -/
def P17170950268944718424.Spec : Prop :=
  ∀ n, P17170950268944718424.a n = A034430 n

end A034430

/-! ## A034430.P500667741093182628

`abs(∏[a(n-1)-2])+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A034430.P500667741093182628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 2

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((|∏ j ∈ Finset.range (n + 1), f1 j| : ℤ) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A034430.P500667741093182628

namespace A034430

/-- `abs(∏[a(n-1)-2])+a(n-1)/n^(-1)` -/
def P500667741093182628.Spec : Prop :=
  ∀ n, P500667741093182628.a n = (A034430 n : ℚ)

end A034430

/-! ## A034430.P10726320483125787199

`or(1, -∏[2*n-1])+a(n-1)/n^(-1)` with `a(0)=1`
-/

namespace A034430.P10726320483125787199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - 1

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lor 1 (-(∏ j ∈ Finset.range (n + 1), f1 j)) : ℚ) + a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A034430.P10726320483125787199

namespace A034430

/-- `or(1, -∏[2*n-1])+a(n-1)/n^(-1)` -/
def P10726320483125787199.Spec : Prop :=
  ∀ n, P10726320483125787199.a n = (A034430 n : ℚ)

end A034430

/-! ## A034430.P14010554471848720683

`abs(∏[or(1, -2*n)])+n*a((2*n)%(n+1))` with `a(0)=1`
-/

namespace A034430.P14010554471848720683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |∏ j ∈ Finset.range (n + 1), f1 j| + (n : ℤ) * a (2 * n % (n + 1))

end

end A034430.P14010554471848720683

namespace A034430

/-- `abs(∏[or(1, -2*n)])+n*a((2*n)%(n+1))` -/
def P14010554471848720683.Spec : Prop :=
  ∀ n, P14010554471848720683.a n = A034430 n

end A034430

/-! ## A034430.P8103659592538915027

`A001147(n)+n*a(n-1)` with `a(0)=1`
-/

namespace A034430.P8103659592538915027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001147 n + (n : ℤ) * a (n - 1)

end

end A034430.P8103659592538915027

namespace A034430

/-- `A001147(n)+n*a(n-1)` -/
def P8103659592538915027.Spec : Prop :=
  ∀ n, P8103659592538915027.a n = A034430 n

end A034430

/-! ## A034430.P6378626116422605442

`A001497(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A034430.P6378626116422605442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001497 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A034430.P6378626116422605442

namespace A034430

/-- `A001497(∑[n])+n*a(n-1)` -/
def P6378626116422605442.Spec : Prop :=
  ∀ n, P6378626116422605442.a n = A034430 n

end A034430

/-! ## A034430.P17521226027465243760

`A102625(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A034430.P17521226027465243760
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A102625 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A034430.P17521226027465243760

namespace A034430

/-- `A102625(∑[n])+n*a(n-1)` -/
def P17521226027465243760.Spec : Prop :=
  ∀ n, P17521226027465243760.a n = A034430 n

end A034430

/-! ## A034430.P6514660147952160484

`A161198(∑[n])+n*a(n-1)` with `a(0)=1`
-/

namespace A034430.P6514660147952160484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161198 (∑ j ∈ Finset.range (n + 1), f1 j) + (n : ℤ) * a (n - 1)

end

end A034430.P6514660147952160484

namespace A034430

/-- `A161198(∑[n])+n*a(n-1)` -/
def P6514660147952160484.Spec : Prop :=
  ∀ n, P6514660147952160484.a n = A034430 n

end A034430

/-!
# A034432: Multiplicity of highest weight (or singular) vectors associated with character chi_44 of Monster module.

The programs for A034432, there is no canonical definition to state claims against.
-/

/-! ## A034432.P14291121928262692315

`A048735(C(n, 45))`
-/

namespace A034432.P14291121928262692315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048735 (Nat.choose n 45)

end

end A034432.P14291121928262692315

/-! ## A034432.P205470633909261554

`A063691(C(n, 45))`
-/

namespace A034432.P205470633909261554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (Nat.choose n 45)

end

end A034432.P205470633909261554

/-! ## A034432.P1032124192172594994

`A284263(C(n, 45))`
-/

namespace A034432.P1032124192172594994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284263 (Nat.choose n 45)

end

end A034432.P1032124192172594994

/-! ## A034432.P613716959845366315

`A091245(A034427(n+1))`
-/

namespace A034432.P613716959845366315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091245 (A034427 (n + 1)).toNat

end

end A034432.P613716959845366315

/-! ## A034432.P8307124018210069375

`A131308(A034443(n+1))`
-/

namespace A034432.P8307124018210069375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131308 (A034443 (n + 1)).toNat

end

end A034432.P8307124018210069375

/-!
# A034433: Expansion of q^(-3) * (eta(q) * eta(q^8))^8 in powers of q.

The programs for A034433, there is no canonical definition to state claims against.
-/

/-! ## A034433.P4059880259256689783

`A282942(n)-A010894(A079983(n))`
-/

namespace A034433.P4059880259256689783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282942 n - A010894 ((A079983 n).toNat + 21)

end

end A034433.P4059880259256689783

/-! ## A034433.P13401338760283838879

`A282942(n)-A085982(A007097(n))`
-/

namespace A034433.P13401338760283838879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282942 n - A085982 (A007097 n).toNat

end

end A034433.P13401338760283838879

/-! ## A034433.P5977379691273419161

`A282942(n)-A109527(A109525(n))`
-/

namespace A034433.P5977379691273419161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282942 n - A109527 (A109525 n).toNat

end

end A034433.P5977379691273419161

/-! ## A034433.P13660842934528054598

`A282942(n)-A188014(A046979(n))`
-/

namespace A034433.P13660842934528054598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282942 n - A188014 (A046979 n).toNat

end

end A034433.P13660842934528054598

/-! ## A034433.P14362012443904445910

`A282942(n)-A289025(A006253(n))`
-/

namespace A034433.P14362012443904445910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282942 n - A289025 (A006253 n).toNat

end

end A034433.P14362012443904445910

/-!
# A034435: Multiplicity of highest weight (or singular) vectors associated with character chi_47 of Monster module.

The programs for A034435, there is no canonical definition to state claims against.
-/

/-! ## A034435.P4870504782504980321

`A010881(C(n, 40))`
-/

namespace A034435.P4870504782504980321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010881 (Nat.choose n 40)

end

end A034435.P4870504782504980321

/-! ## A034435.P9886576161727295313

`A053737(C(n, 40))`
-/

namespace A034435.P9886576161727295313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053737 (Nat.choose n 40)

end

end A034435.P9886576161727295313

/-! ## A034435.P12797097137799087282

`A053824(C(n, 40))`
-/

namespace A034435.P12797097137799087282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053824 (Nat.choose n 40)

end

end A034435.P12797097137799087282

/-! ## A034435.P7133599974657197735

`A053833(C(n, 40))`
-/

namespace A034435.P7133599974657197735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053833 (Nat.choose n 40)

end

end A034435.P7133599974657197735

/-! ## A034435.P15098243320001774301

`A070474(C(n, 40))`
-/

namespace A034435.P15098243320001774301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070474 (Nat.choose n 40)

end

end A034435.P15098243320001774301

/-!
# A034439: Multiplicity of highest weight (or singular) vectors associated with character chi_51 of Monster module.

The programs for A034439, there is no canonical definition to state claims against.
-/

/-! ## A034439.P1380761209127214271

`A347223(4*A161618(n+1))`
-/

namespace A034439.P1380761209127214271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347223 (4 * A161618 (n + 1)).toNat

end

end A034439.P1380761209127214271

/-! ## A034439.P6796954702384378362

`A347223(lcm(4, A161618(n+1)))`
-/

namespace A034439.P6796954702384378362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347223 (Int.lcm 4 (A161618 (n + 1)))

end

end A034439.P6796954702384378362

/-! ## A034439.P18396907282606419007

`floor(A342364(n+1)/A284927(2*n+5))`
-/

namespace A034439.P18396907282606419007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A342364 (n + 1) : ℚ) / (A284927 (2 * n + 5) : ℚ)⌋

end

end A034439.P18396907282606419007

/-! ## A034439.P7119746500963584540

`A126792(A034501(n+1))*A214248(n)`
-/

namespace A034439.P7119746500963584540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126792 (A034501 (n + 1)).toNat * A214248 n

end

end A034439.P7119746500963584540

/-! ## A034439.P4612446210051522595

`A161673(A161618(n+1)^A161684(n))`
-/

namespace A034439.P4612446210051522595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161673 (SequenceMachineLib.roundAway ((A161618 (n + 1) : ℚ) ^ (A161684 n : ℤ))).toNat

end

end A034439.P4612446210051522595

/-!
# A034441: Multiplicity of highest weight (or singular) vectors associated with character chi_53 of Monster module.

The programs for A034441, there is no canonical definition to state claims against.
-/

/-! ## A034441.P14794472472073344230

`A071912(C(n, 44))`
-/

namespace A034441.P14794472472073344230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071912 (Nat.choose n 44)

end

end A034441.P14794472472073344230

/-! ## A034441.P15175276660143287030

`A054861(A034447(n+1)^A151899(n))`
-/

namespace A034441.P15175276660143287030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (SequenceMachineLib.roundAway ((A034447 (n + 1) : ℚ) ^ (A151899 n : ℤ))).toNat

end

end A034441.P15175276660143287030

/-! ## A034441.P13781249285620016943

`A054861(C(A034447(n+1), A151899(n)))`
-/

namespace A034441.P13781249285620016943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054861 (Nat.choose (A034447 (n + 1)).toNat (A151899 n).toNat)

end

end A034441.P13781249285620016943

/-! ## A034441.P12945729447705391657

`A007967(C(n, 44))`
-/

namespace A034441.P12945729447705391657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007967 (Nat.choose n 44)

end

end A034441.P12945729447705391657

/-! ## A034441.P8674319057505903184

`A233440(C(n, 44))`
-/

namespace A034441.P8674319057505903184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233440 (Nat.choose n 44)

end

end A034441.P8674319057505903184

/-!
# A034442: Arrange digits of primes in ascending order (omitting any that contain 0's), then sort list.

The programs for A034442, there is no canonical definition to state claims against.
-/

/-! ## A034442.P1225704091844674166

`A328447(p?[A261370(n)%A072857(n+1)])`
-/

namespace A034442.P1225704091844674166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A261370 n) (A072857 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A034442.P1225704091844674166

/-! ## A034442.P10831908786242374452

`A328447(p?[∏{d}[A261370(n), #]])`
-/

namespace A034442.P10831908786242374452
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261370 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f2 n).natAbs, d

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328447 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A034442.P10831908786242374452

/-!
# A034443: Multiplicity of highest weight (or singular) vectors associated with character chi_55 of Monster module.

The programs for A034443, there is no canonical definition to state claims against.
-/

/-! ## A034443.P10972510755437857001

`A193508(A034429(n+2))`
-/

namespace A034443.P10972510755437857001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193508 (A034429 (n + 2)).toNat

end

end A034443.P10972510755437857001

/-! ## A034443.P16339411776791631835

`n%A005496(A034427(n+1))`
-/

namespace A034443.P16339411776791631835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (A005496 (A034427 (n + 1)).toNat)

end

end A034443.P16339411776791631835

/-! ## A034443.P2625670817659315557

`A034429(n+2)%A225419(n)`
-/

namespace A034443.P2625670817659315557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034429 (n + 2)) (A225419 n)

end

end A034443.P2625670817659315557

/-! ## A034443.P14946446579904895323

`filter[A034429(n+1), A103583(#)]`
-/

namespace A034443.P14946446579904895323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103583 (f1 j).toNat = 1) n)

end

end A034443.P14946446579904895323

/-! ## A034443.P7340980413287286828

`filter[A034429(n+1), A125999(#)]`
-/

namespace A034443.P7340980413287286828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034429 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A125999 (f1 j).toNat = 1) n)

end

end A034443.P7340980413287286828

/-!
# A034444: a(n) is the number of unitary divisors of n (d such that d divides n, gcd(d, n/d) = 1).

The programs for A034444, the canonical program `A034444.P6574915864346323298` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034444 has offset 1).

The definition of A034444 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001221, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034444.P6574915864346323298

`2^A001221(n+1)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A034444

/-- `2^A001221(n+1)` -/
def P6574915864346323298.Spec : Prop :=
  ∀ n, P6574915864346323298.a n = (A034444 (n + 1) : ℚ)

end A034444

/-! ## A034444.P12525148700609609526

`A000005(n+1)-A048105(n+1)`
-/

namespace A034444.P12525148700609609526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A048105 (n + 1)

end

end A034444.P12525148700609609526

namespace A034444

/-- `A000005(n+1)-A048105(n+1)` -/
def P12525148700609609526.Spec : Prop :=
  ∀ n, P12525148700609609526.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P16167762308184789662

`A005361((n+1)²)/A005361(n+1)`
-/

namespace A034444.P16167762308184789662
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005361 ((n + 1) ^ 2) : ℚ) / (A005361 (n + 1) : ℚ)

end

end A034444.P16167762308184789662

namespace A034444

/-- `A005361((n+1)²)/A005361(n+1)` -/
def P16167762308184789662.Spec : Prop :=
  ∀ n, P16167762308184789662.a n = (A034444 (n + 1) : ℚ)

end A034444

/-! ## A034444.P1100692989037593796

`A277561(A156552(n+1))`
-/

namespace A034444.P1100692989037593796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277561 (A156552 (n + 1)).toNat

end

end A034444.P1100692989037593796

namespace A034444

/-- `A277561(A156552(n+1))` -/
def P1100692989037593796.Spec : Prop :=
  ∀ n, P1100692989037593796.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P17357214388232833624

`∏{p}[n+1, ceil(atan(#))]`
-/

namespace A034444.P17357214388232833624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈Real.arctan (p : ℝ)⌉

end

end A034444.P17357214388232833624

namespace A034444

/-- `∏{p}[n+1, ceil(atan(#))]` -/
def P17357214388232833624.Spec : Prop :=
  ∀ n, P17357214388232833624.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P16890634736667822338

`∏{p}[n+1, 2%#²]`
-/

namespace A034444.P16890634736667822338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), 2 % p ^ 2

end

end A034444.P16890634736667822338

namespace A034444

/-- `∏{p}[n+1, 2%#²]` -/
def P16890634736667822338.Spec : Prop :=
  ∀ n, (P16890634736667822338.a n : ℤ) = A034444 (n + 1)

end A034444

/-! ## A034444.P9682909399598569879

`∏{p}[n+1, ceil(root(2, #))]`
-/

namespace A034444.P9682909399598569879
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(2 : ℝ) ^ (1 / (p : ℝ))⌉

end

end A034444.P9682909399598569879

namespace A034444

/-- `∏{p}[n+1, ceil(root(2, #))]` -/
def P9682909399598569879.Spec : Prop :=
  ∀ n, P9682909399598569879.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P12952183743526934712

`∏{e}[n+1, ceil(root(2, #))]`
-/

namespace A034444.P12952183743526934712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ⌈(2 : ℝ) ^ (1 / (Nat.factorization (f1 n) p : ℝ))⌉

end

end A034444.P12952183743526934712

namespace A034444

/-- `∏{e}[n+1, ceil(root(2, #))]` -/
def P12952183743526934712.Spec : Prop :=
  ∀ n, P12952183743526934712.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P13341023894120229675

`2^∑{p}[n+1, gcd(n, #)]`
-/

namespace A034444.P13341023894120229675
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A034444.P13341023894120229675

namespace A034444

/-- `2^∑{p}[n+1, gcd(n, #)]` -/
def P13341023894120229675.Spec : Prop :=
  ∀ n, (P13341023894120229675.a n : ℤ) = A034444 (n + 1)

end A034444

/-! ## A034444.P7974014912270014942

`2^∑{e}[∏{p}[n+1, #], #]`
-/

namespace A034444.P7974014912270014942
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p)

end

end A034444.P7974014912270014942

namespace A034444

/-- `2^∑{e}[∏{p}[n+1, #], #]` -/
def P7974014912270014942.Spec : Prop :=
  ∀ n, (P7974014912270014942.a n : ℤ) = A034444 (n + 1)

end A034444

/-! ## A034444.P10060246472936424648

`2^∑{p}[n+1, ceil(1/#)]`
-/

namespace A034444.P10060246472936424648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (p : ℚ)⌉ : ℤ)

end

end A034444.P10060246472936424648

namespace A034444

/-- `2^∑{p}[n+1, ceil(1/#)]` -/
def P10060246472936424648.Spec : Prop :=
  ∀ n, P10060246472936424648.a n = (A034444 (n + 1) : ℚ)

end A034444

/-! ## A034444.P12068705537068540679

`2^∑{e}[n+1, ceil(1/#)]`
-/

namespace A034444.P12068705537068540679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (∑ p ∈ Nat.primeFactors (f1 n), ⌈1 / (Nat.factorization (f1 n) p : ℚ)⌉ : ℤ)

end

end A034444.P12068705537068540679

namespace A034444

/-- `2^∑{e}[n+1, ceil(1/#)]` -/
def P12068705537068540679.Spec : Prop :=
  ∀ n, P12068705537068540679.a n = (A034444 (n + 1) : ℚ)

end A034444

/-! ## A034444.P7205625350227652502

`floor(∏{e}[n+1, #/(n+1)+2])`
-/

namespace A034444.P7205625350227652502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), ((Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ) + 2)⌋

end

end A034444.P7205625350227652502

namespace A034444

/-- `floor(∏{e}[n+1, #/(n+1)+2])` -/
def P7205625350227652502.Spec : Prop :=
  ∀ n, P7205625350227652502.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P6093870056776297184

`ceil(∏{e}[n+1, 2-#/(n+1)])`
-/

namespace A034444.P6093870056776297184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.factorization (f1 n) p : ℚ) / (n + 1 : ℚ))⌉

end

end A034444.P6093870056776297184

namespace A034444

/-- `ceil(∏{e}[n+1, 2-#/(n+1)])` -/
def P6093870056776297184.Spec : Prop :=
  ∀ n, P6093870056776297184.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P12016101968063714700

`round(∏{e}[n+1, 2-#/(n+3)])`
-/

namespace A034444.P12016101968063714700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f1 n), (2 - (Nat.factorization (f1 n) p : ℚ) / (n + 3 : ℚ)))

end

end A034444.P12016101968063714700

namespace A034444

/-- `round(∏{e}[n+1, 2-#/(n+3)])` -/
def P12016101968063714700.Spec : Prop :=
  ∀ n, P12016101968063714700.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P11479312109875385962

`floor(∏{p}[n+1, #/(2*n+1)+2])`
-/

namespace A034444.P11479312109875385962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∏ p ∈ Nat.primeFactors (f1 n), ((p : ℚ) / (2 * n + 1 : ℚ) + 2)⌋

end

end A034444.P11479312109875385962

namespace A034444

/-- `floor(∏{p}[n+1, #/(2*n+1)+2])` -/
def P11479312109875385962.Spec : Prop :=
  ∀ n, P11479312109875385962.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P2668272789053617688

`ceil(∏{p}[n+1, 2-#/(2*n+1)])`
-/

namespace A034444.P2668272789053617688
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ p ∈ Nat.primeFactors (f1 n), (2 - (p : ℚ) / (2 * n + 1 : ℚ))⌉

end

end A034444.P2668272789053617688

namespace A034444

/-- `ceil(∏{p}[n+1, 2-#/(2*n+1)])` -/
def P2668272789053617688.Spec : Prop :=
  ∀ n, P2668272789053617688.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P8686242377361222824

`abs(A158522(n+1))`
-/

namespace A034444.P8686242377361222824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A158522 (n + 1)|

end

end A034444.P8686242377361222824

namespace A034444

/-- `abs(A158522(n+1))` -/
def P8686242377361222824.Spec : Prop :=
  ∀ n, P8686242377361222824.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P1195549707455884711

`A309307(n+1)+1`
-/

namespace A034444.P1195549707455884711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309307 (n + 1) + 1

end

end A034444.P1195549707455884711

namespace A034444

/-- `A309307(n+1)+1` -/
def P1195549707455884711.Spec : Prop :=
  ∀ n, P1195549707455884711.a n = A034444 (n + 1)

end A034444

/-! ## A034444.P8150977620202429565

`∑{d}[n+1, A008966(#)]`
-/

namespace A034444.P8150977620202429565
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d

end

end A034444.P8150977620202429565

namespace A034444

/-- `∑{d}[n+1, A008966(#)]` -/
def P8150977620202429565.Spec : Prop :=
  ∀ n, P8150977620202429565.a n = A034444 (n + 1)

end A034444

/-!
# A034445: Multiplicity of highest weight (or singular) vectors associated with character chi_57 of Monster module.

The programs for A034445, there is no canonical definition to state claims against.
-/

/-! ## A034445.P8754440998169108843

`A330881(A000196(A034450(n+1)²))`
-/

namespace A034445.P8754440998169108843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330881 (A000196 (A034450 (n + 1) ^ 2).toNat).toNat

end

end A034445.P8754440998169108843

/-! ## A034445.P1150001826423353465

`A330881(A034450(n+1)%A226905(n+5))`
-/

namespace A034445.P1150001826423353465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330881 (Int.tmod (A034450 (n + 1)) (A226905 (n + 5))).toNat

end

end A034445.P1150001826423353465

/-!
# A034446: Multiplicity of highest weight (or singular) vectors associated with character chi_58 of Monster module.

The programs for A034446, there is no canonical definition to state claims against.
-/

/-! ## A034446.P11935273920172360217

`A034449(n+3)-A034797(A034483(n+1))`
-/

namespace A034446.P11935273920172360217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034449 (n + 3) - A034797 (A034483 (n + 1)).toNat

end

end A034446.P11935273920172360217

/-!
# A034447: Multiplicity of highest weight (or singular) vectors associated with character chi_59 of Monster module.

The programs for A034447, there is no canonical definition to state claims against.
-/

/-! ## A034447.P13602711725283521411

`A334476(C(n, 43))`
-/

namespace A034447.P13602711725283521411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334476 (Nat.choose n 43)

end

end A034447.P13602711725283521411

/-! ## A034447.P18164711068960002909

`A049310(C(n+1, 44)+1)`
-/

namespace A034447.P18164711068960002909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 (Nat.choose (n + 1) 44 + 1)

end

end A034447.P18164711068960002909

/-! ## A034447.P595447525814514765

`Δ[A151845(A034441(n+1)²)]`
-/

namespace A034447.P595447525814514765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151845 (A034441 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034447.P595447525814514765

/-! ## A034447.P5930497870491931504

`Δ[A351846(A034441(n+1)²)]`
-/

namespace A034447.P5930497870491931504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351846 (A034441 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034447.P5930497870491931504

/-! ## A034447.P16870339342619802284

`A032741(C(n, A081063(2*(n+1))))`
-/

namespace A034447.P16870339342619802284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Nat.choose n (A081063 (2 * (n + 1))).toNat)

end

end A034447.P16870339342619802284

/-!
# A034448: usigma(n) = sum of unitary divisors of n (divisors d such that gcd(d, n/d)=1); also called UnitarySigma(n).

The programs for A034448, the canonical program `A034448.P17017727775393200719` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034448 has offset 1).

The definition of A034448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A034448.P7560406036877144782

`A345451(n+1)+1`
-/

namespace A034448.P7560406036877144782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) + 1

end

end A034448.P7560406036877144782

namespace A034448

/-- `A345451(n+1)+1` -/
def P7560406036877144782.Spec : Prop :=
  ∀ n, P7560406036877144782.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P11229265544409245030

`∑{d}[n+1, A254503(#)]`
-/

namespace A034448.P11229265544409245030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A254503 d

end

end A034448.P11229265544409245030

namespace A034448

/-- `∑{d}[n+1, A254503(#)]` -/
def P11229265544409245030.Spec : Prop :=
  ∀ n, P11229265544409245030.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P17407013621018053071

`n+1+A034460(n+1)`
-/

namespace A034448.P17407013621018053071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + A034460 (n + 1)

end

end A034448.P17407013621018053071

namespace A034448

/-- `n+1+A034460(n+1)` -/
def P17407013621018053071.Spec : Prop :=
  ∀ n, P17407013621018053071.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P17017727775393200719

`A064971(n+1)/(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A034448

/-- `A064971(n+1)/(n+1)` -/
def P17017727775393200719.Spec : Prop :=
  ∀ n, P17017727775393200719.a n = (A034448 (n + 1) : ℚ)

end A034448

/-! ## A034448.P7831195430869302202

`A064992(n)+a(n-1)` with `a(0)=1`
-/

namespace A034448.P7831195430869302202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A064992 n + a (n - 1)

end

end A034448.P7831195430869302202

namespace A034448

/-- `A064992(n)+a(n-1)` -/
def P7831195430869302202.Spec : Prop :=
  ∀ n, P7831195430869302202.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P3886985208470848566

`A129468(n+1)+2*(n+1)`
-/

namespace A034448.P3886985208470848566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 1) + (2 * (n + 1) : ℤ)

end

end A034448.P3886985208470848566

namespace A034448

/-- `A129468(n+1)+2*(n+1)` -/
def P3886985208470848566.Spec : Prop :=
  ∀ n, P3886985208470848566.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P8934947017102074416

`A098189(n+1)+Δ[A002088(n)]`
-/

namespace A034448.P8934947017102074416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1) + (f1 (n + 1) - f1 n)

end

end A034448.P8934947017102074416

namespace A034448

/-- `A098189(n+1)+Δ[A002088(n)]` -/
def P8934947017102074416.Spec : Prop :=
  ∀ n, P8934947017102074416.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P11512493168438164204

`A098189(n+1)+A000010(n+1)`
-/

namespace A034448.P11512493168438164204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1) + A000010 (n + 1)

end

end A034448.P11512493168438164204

namespace A034448

/-- `A098189(n+1)+A000010(n+1)` -/
def P11512493168438164204.Spec : Prop :=
  ∀ n, P11512493168438164204.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P3848193906088104136

`A063085(n+1)+A061468(n+1)`
-/

namespace A034448.P3848193906088104136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063085 (n + 1) + A061468 (n + 1)

end

end A034448.P3848193906088104136

namespace A034448

/-- `A063085(n+1)+A061468(n+1)` -/
def P3848193906088104136.Spec : Prop :=
  ∀ n, P3848193906088104136.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P16071012758561288168

`A087156(n+1)+A063919(n+1)`
-/

namespace A034448.P16071012758561288168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) + A063919 (n + 1)

end

end A034448.P16071012758561288168

namespace A034448

/-- `A087156(n+1)+A063919(n+1)` -/
def P16071012758561288168.Spec : Prop :=
  ∀ n, P16071012758561288168.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P412293740873570744

`A325814(n+1)+A001065(n+1)`
-/

namespace A034448.P412293740873570744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1) + A001065 (n + 1)

end

end A034448.P412293740873570744

namespace A034448

/-- `A325814(n+1)+A001065(n+1)` -/
def P412293740873570744.Spec : Prop :=
  ∀ n, P412293740873570744.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P9040963891864278586

`A389162(n+1)+A048250(n+1)`
-/

namespace A034448.P9040963891864278586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389162 (n + 1) + A048250 (n + 1)

end

end A034448.P9040963891864278586

namespace A034448

/-- `A389162(n+1)+A048250(n+1)` -/
def P9040963891864278586.Spec : Prop :=
  ∀ n, P9040963891864278586.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P15279216955542498115

`A389204(n+1)+A162296(n+1)`
-/

namespace A034448.P15279216955542498115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389204 (n + 1) + A162296 (n + 1)

end

end A034448.P15279216955542498115

namespace A034448

/-- `A389204(n+1)+A162296(n+1)` -/
def P15279216955542498115.Spec : Prop :=
  ∀ n, P15279216955542498115.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P17919749725153857262

`A000203(n+1)-A048146(n+1)`
-/

namespace A034448.P17919749725153857262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A048146 (n + 1)

end

end A034448.P17919749725153857262

namespace A034448

/-- `A000203(n+1)-A048146(n+1)` -/
def P17919749725153857262.Spec : Prop :=
  ∀ n, P17919749725153857262.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P13582761238622701055

`A064212(n+1)-A000203(n+1)`
-/

namespace A034448.P13582761238622701055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064212 (n + 1) - A000203 (n + 1)

end

end A034448.P13582761238622701055

namespace A034448

/-- `A064212(n+1)-A000203(n+1)` -/
def P13582761238622701055.Spec : Prop :=
  ∀ n, P13582761238622701055.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P18357640271336480556

`A003959(n+1)-A348732(n+1)`
-/

namespace A034448.P18357640271336480556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003959 (n + 1) - A348732 (n + 1)

end

end A034448.P18357640271336480556

namespace A034448

/-- `A003959(n+1)-A348732(n+1)` -/
def P18357640271336480556.Spec : Prop :=
  ∀ n, P18357640271336480556.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P9584331097280505675

`A092261(n+1)*A360720(n+1)`
-/

namespace A034448.P9584331097280505675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092261 (n + 1) * A360720 (n + 1)

end

end A034448.P9584331097280505675

namespace A034448

/-- `A092261(n+1)*A360720(n+1)` -/
def P9584331097280505675.Spec : Prop :=
  ∀ n, P9584331097280505675.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P2324083058835183784

`A192066(n+1)*A385047(n+1)`
-/

namespace A034448.P2324083058835183784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192066 (n + 1) * A385047 (n + 1)

end

end A034448.P2324083058835183784

namespace A034448

/-- `A192066(n+1)*A385047(n+1)` -/
def P2324083058835183784.Spec : Prop :=
  ∀ n, P2324083058835183784.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P16411078227939875559

`A323166(n+1)*A332882(n+1)`
-/

namespace A034448.P16411078227939875559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323166 (n + 1) * A332882 (n + 1)

end

end A034448.P16411078227939875559

namespace A034448

/-- `A323166(n+1)*A332882(n+1)` -/
def P16411078227939875559.Spec : Prop :=
  ∀ n, P16411078227939875559.a n = A034448 (n + 1)

end A034448

/-! ## A034448.P18150604598238323725

`A348503(n+1)*A348505(n+1)`
-/

namespace A034448.P18150604598238323725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348503 (n + 1) * A348505 (n + 1)

end

end A034448.P18150604598238323725

namespace A034448

/-- `A348503(n+1)*A348505(n+1)` -/
def P18150604598238323725.Spec : Prop :=
  ∀ n, P18150604598238323725.a n = A034448 (n + 1)

end A034448

/-!
# A034449: Multiplicity of highest weight (or singular) vectors associated with character chi_61 of Monster module.

The programs for A034449, there is no canonical definition to state claims against.
-/

/-! ## A034449.P16713584934755482214

`A323048(A034452(n+1)+1)`
-/

namespace A034449.P16713584934755482214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323048 (A034452 (n + 1) + 1).toNat

end

end A034449.P16713584934755482214

/-! ## A034449.P6853487509216181218

`A118759(A034452(n+1)+A011742(n))`
-/

namespace A034449.P6853487509216181218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A034452 (n + 1) + A011742 n).toNat

end

end A034449.P6853487509216181218

/-! ## A034449.P12358979686530819095

`A034452(n+1)+A006926(A034504(n+1))`
-/

namespace A034449.P12358979686530819095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034452 (n + 1) + A006926 (A034504 (n + 1)).toNat

end

end A034449.P12358979686530819095

/-! ## A034449.P2812747717362955060

`A118759(A034452(n+1))+A034484(n+1)`
-/

namespace A034449.P2812747717362955060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A034452 (n + 1)).toNat + A034484 (n + 1)

end

end A034449.P2812747717362955060

/-! ## A034449.P2101552547965799550

`A072088(A034452(n+1))`
-/

namespace A034449.P2101552547965799550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A034452 (n + 1)).toNat

end

end A034449.P2101552547965799550

/-!
# A034452: Multiplicity of highest weight (or singular) vectors associated with character chi_64 of Monster module.

The programs for A034452, there is no canonical definition to state claims against.
-/

/-! ## A034452.P7612294994642715081

`A118759(A034449(n+1)-A011742(n))`
-/

namespace A034452.P7612294994642715081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A034449 (n + 1) - A011742 n).toNat

end

end A034452.P7612294994642715081

/-! ## A034452.P17529655186953414611

`A118759(xor(A011742(n), A034449(n+1)))`
-/

namespace A034452.P17529655186953414611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (Int.xor (A011742 n) (A034449 (n + 1))).toNat

end

end A034452.P17529655186953414611

/-! ## A034452.P14459442345972126610

`A000196((A034449(n+1)-A011742(n))²)`
-/

namespace A034452.P14459442345972126610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((A034449 (n + 1) - A011742 n) ^ 2).toNat

end

end A034452.P14459442345972126610

/-! ## A034452.P7310926928535060593

`A000196(xor(A034449(n+1)², A011742(n)))`
-/

namespace A034452.P7310926928535060593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (Int.xor (A034449 (n + 1) ^ 2) (A011742 n)).toNat

end

end A034452.P7310926928535060593

/-! ## A034452.P9064834416121433008

`A118759(A034449(n+1)-A034484(n+1))`
-/

namespace A034452.P9064834416121433008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118759 (A034449 (n + 1) - A034484 (n + 1)).toNat

end

end A034452.P9064834416121433008

/-!
# A034457: Multiplicity of highest weight (or singular) vectors associated with character chi_69 of Monster module.

The programs for A034457, there is no canonical definition to state claims against.
-/

/-! ## A034457.P3918095203255738180

`A073200(A185245(n+2))`
-/

namespace A034457.P3918095203255738180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073200 (A185245 (n + 2)).toNat

end

end A034457.P3918095203255738180

/-! ## A034457.P1330550832006514604

`A000120(C(A257676(n), 37))`
-/

namespace A034457.P1330550832006514604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (Nat.choose (A257676 n).toNat 37)

end

end A034457.P1330550832006514604

/-! ## A034457.P12283208220537674608

`Δ[A238969(Δ[A185245(n)])]`
-/

namespace A034457.P12283208220537674608
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238969 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034457.P12283208220537674608

/-! ## A034457.P8390032540650113500

`A241825(Δ[A161618(n+2)])`
-/

namespace A034457.P8390032540650113500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161618 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241825 (f1 (n + 1) - f1 n).toNat

end

end A034457.P8390032540650113500

/-! ## A034457.P10363811261098707687

`round(A093314(n+1)/A017665(n+1))`
-/

namespace A034457.P10363811261098707687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A093314 (n + 1) : ℚ) / (A017665 (n + 1) : ℚ))

end

end A034457.P10363811261098707687

/-!
# A034458: Multiplicity of highest weight (or singular) vectors associated with character chi_70 of Monster module.

The programs for A034458, there is no canonical definition to state claims against.
-/

/-! ## A034458.P8531354806040685746

`floor(A033286(n+1)/A008888(A276855(n)))`
-/

namespace A034458.P8531354806040685746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A033286 (n + 1) : ℚ) / (A008888 (A276855 n).toNat : ℚ)⌋

end

end A034458.P8531354806040685746

/-! ## A034458.P5817453025544165812

`A124767(C(2*n-ceil(n/2), 53))`
-/

namespace A034458.P5817453025544165812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (Nat.choose ((2 * n : ℤ) - ⌈(n : ℚ) / 2⌉).toNat 53)

end

end A034458.P5817453025544165812

/-! ## A034458.P3279391943099926332

`A004247(∑[A185284(n)])`
-/

namespace A034458.P3279391943099926332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004247 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034458.P3279391943099926332

/-! ## A034458.P16025179292620696629

`A048720(∑[A185284(n)])`
-/

namespace A034458.P16025179292620696629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048720 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034458.P16025179292620696629

/-! ## A034458.P5956669572774050211

`A168068(A034510(n+1))`
-/

namespace A034458.P5956669572774050211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168068 (A034510 (n + 1)).toNat

end

end A034458.P5956669572774050211

/-!
# A034459: Multiplicity of highest weight (or singular) vectors associated with character chi_71 of Monster module.

The programs for A034459, there is no canonical definition to state claims against.
-/

/-! ## A034459.P1574313119517339181

`A047920(n)%A117331(A161618(n+1))`
-/

namespace A034459.P1574313119517339181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047920 n) (A117331 (A161618 (n + 1)).toNat)

end

end A034459.P1574313119517339181

/-! ## A034459.P7452078437197330679

`A182839(A034493(n+1))`
-/

namespace A034459.P7452078437197330679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182839 (A034493 (n + 1)).toNat

end

end A034459.P7452078437197330679

/-! ## A034459.P8148833543701294689

`A182839(A034495(n+1))`
-/

namespace A034459.P8148833543701294689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182839 (A034495 (n + 1)).toNat

end

end A034459.P8148833543701294689

/-! ## A034459.P4480655513114431653

`A182439(A034473(n+2))`
-/

namespace A034459.P4480655513114431653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182439 (A034473 (n + 2)).toNat

end

end A034459.P4480655513114431653

/-! ## A034459.P4876497872728682341

`A354763(A073200(C(n, 39)))`
-/

namespace A034459.P4876497872728682341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354763 (A073200 (Nat.choose n 39)).toNat

end

end A034459.P4876497872728682341

/-!
# A034460: a(n) = usigma(n) - n, where usigma(n) = sum of unitary divisors of n (A034448).

The programs for A034460, the canonical program `A034460.P1958235575820581513` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034460 has offset 1).

The definition of A034460 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A034460.P1958235575820581513

`A034448(n+1)-(n+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A034460

/-- `A034448(n+1)-(n+1)` -/
def P1958235575820581513.Spec : Prop :=
  ∀ n, P1958235575820581513.a n = A034460 (n + 1)

theorem P1958235575820581513.correct : P1958235575820581513.Spec := by
  intro n
  simp only [A034460, Nat.add_sub_cancel]

end A034460

/-! ## A034460.P8781729477445183645

`A345451(n+1)-n`
-/

namespace A034460.P8781729477445183645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345451 (n + 1) - (n : ℤ)

end

end A034460.P8781729477445183645

namespace A034460

/-- `A345451(n+1)-n` -/
def P8781729477445183645.Spec : Prop :=
  ∀ n, P8781729477445183645.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P10248291388986535865

`A129468(n+1)+1+n`
-/

namespace A034460.P10248291388986535865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129468 (n + 1) + 1 + (n : ℤ)

end

end A034460.P10248291388986535865

namespace A034460

/-- `A129468(n+1)+1+n` -/
def P10248291388986535865.Spec : Prop :=
  ∀ n, P10248291388986535865.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P3597728960395143209

`A063919(n+1)%Δ[n²]`
-/

namespace A034460.P3597728960395143209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063919 (n + 1)) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A034460.P3597728960395143209

namespace A034460

/-- `A063919(n+1)%Δ[n²]` -/
def P3597728960395143209.Spec : Prop :=
  ∀ n, P3597728960395143209.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P11805959725190873700

`A064971(n+1)/(n+1)-(n+1)`
-/

namespace A034460.P11805959725190873700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064971 (n + 1) : ℚ) / (n + 1 : ℚ) - (n + 1 : ℚ)

end

end A034460.P11805959725190873700

namespace A034460

/-- `A064971(n+1)/(n+1)-(n+1)` -/
def P11805959725190873700.Spec : Prop :=
  ∀ n, P11805959725190873700.a n = (A034460 (n + 1) : ℚ)

end A034460

/-! ## A034460.P1126575762283806092

`∑{d}[n+1, #]-(n+1)-A048146(n+1)`
-/

namespace A034460.P1126575762283806092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ) - (n + 1 : ℤ) - A048146 (n + 1)

end

end A034460.P1126575762283806092

namespace A034460

/-- `∑{d}[n+1, #]-(n+1)-A048146(n+1)` -/
def P1126575762283806092.Spec : Prop :=
  ∀ n, P1126575762283806092.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P16268135289620849520

`A063919(n+1)-A000007(n)`
-/

namespace A034460.P16268135289620849520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1) - A000007 n

end

end A034460.P16268135289620849520

namespace A034460

/-- `A063919(n+1)-A000007(n)` -/
def P16268135289620849520.Spec : Prop :=
  ∀ n, P16268135289620849520.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P4498351504832503288

`A057427(n)*A063919(n+1)`
-/

namespace A034460.P4498351504832503288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A063919 (n + 1)

end

end A034460.P4498351504832503288

namespace A034460

/-- `A057427(n)*A063919(n+1)` -/
def P4498351504832503288.Spec : Prop :=
  ∀ n, P4498351504832503288.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P10916926489827707136

`and(A057428(n), A063919(n+1))`
-/

namespace A034460.P10916926489827707136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A057428 n) (A063919 (n + 1))

end

end A034460.P10916926489827707136

namespace A034460

/-- `and(A057428(n), A063919(n+1))` -/
def P10916926489827707136.Spec : Prop :=
  ∀ n, P10916926489827707136.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P11157511131410767287

`and(A063919(n+1), A134824(n))`
-/

namespace A034460.P11157511131410767287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A063919 (n + 1)) (A134824 n)

end

end A034460.P11157511131410767287

namespace A034460

/-- `and(A063919(n+1), A134824(n))` -/
def P11157511131410767287.Spec : Prop :=
  ∀ n, P11157511131410767287.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P10129474155255338926

`A325814(n+1)+A033880(n+1)`
-/

namespace A034460.P10129474155255338926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1) + A033880 (n + 1)

end

end A034460.P10129474155255338926

namespace A034460

/-- `A325814(n+1)+A033880(n+1)` -/
def P10129474155255338926.Spec : Prop :=
  ∀ n, P10129474155255338926.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P12395745404286754580

`A001065(n+1)-A048146(n+1)`
-/

namespace A034460.P12395745404286754580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) - A048146 (n + 1)

end

end A034460.P12395745404286754580

namespace A034460

/-- `A001065(n+1)-A048146(n+1)` -/
def P12395745404286754580.Spec : Prop :=
  ∀ n, P12395745404286754580.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P2234940980020220048

`A098189(n+1)-A051953(n+1)`
-/

namespace A034460.P2234940980020220048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098189 (n + 1) - A051953 (n + 1)

end

end A034460.P2234940980020220048

namespace A034460

/-- `A098189(n+1)-A051953(n+1)` -/
def P2234940980020220048.Spec : Prop :=
  ∀ n, P2234940980020220048.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P15903221483733333596

`A064212(n+1)-A155085(n+1)`
-/

namespace A034460.P15903221483733333596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064212 (n + 1) - A155085 (n + 1)

end

end A034460.P15903221483733333596

namespace A034460

/-- `A064212(n+1)-A155085(n+1)` -/
def P15903221483733333596.Spec : Prop :=
  ∀ n, P15903221483733333596.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P4087404865742215286

`A325814(n+1)-A033879(n+1)`
-/

namespace A034460.P4087404865742215286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325814 (n + 1) - A033879 (n + 1)

end

end A034460.P4087404865742215286

namespace A034460

/-- `A325814(n+1)-A033879(n+1)` -/
def P4087404865742215286.Spec : Prop :=
  ∀ n, P4087404865742215286.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P3852541376984585921

`A348507(n+1)-A348732(n+1)`
-/

namespace A034460.P3852541376984585921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348507 (n + 1) - A348732 (n + 1)

end

end A034460.P3852541376984585921

namespace A034460

/-- `A348507(n+1)-A348732(n+1)` -/
def P3852541376984585921.Spec : Prop :=
  ∀ n, P3852541376984585921.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P11360926940475251943

`A063919(n+1)+n-A028310(n)`
-/

namespace A034460.P11360926940475251943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063919 (n + 1) + ((n : ℤ) - A028310 n)

end

end A034460.P11360926940475251943

namespace A034460

/-- `A063919(n+1)+n-A028310(n)` -/
def P11360926940475251943.Spec : Prop :=
  ∀ n, P11360926940475251943.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P17311922695429879186

`2*A325977(n+1)-A325313(n+1)`
-/

namespace A034460.P17311922695429879186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A325977 (n + 1) - A325313 (n + 1)

end

end A034460.P17311922695429879186

namespace A034460

/-- `2*A325977(n+1)-A325313(n+1)` -/
def P17311922695429879186.Spec : Prop :=
  ∀ n, P17311922695429879186.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P14035307185110268116

`A063085(n+1)+A073757(n+1)-n`
-/

namespace A034460.P14035307185110268116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063085 (n + 1) + (A073757 (n + 1) - (n : ℤ))

end

end A034460.P14035307185110268116

namespace A034460

/-- `A063085(n+1)+A073757(n+1)-n` -/
def P14035307185110268116.Spec : Prop :=
  ∀ n, P14035307185110268116.a n = A034460 (n + 1)

end A034460

/-! ## A034460.P2080905554349340367

`A064212(n+1)-(A088580(n+1)+n)`
-/

namespace A034460.P2080905554349340367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064212 (n + 1) - (A088580 (n + 1) + (n : ℤ))

end

end A034460.P2080905554349340367

namespace A034460

/-- `A064212(n+1)-(A088580(n+1)+n)` -/
def P2080905554349340367.Spec : Prop :=
  ∀ n, P2080905554349340367.a n = A034460 (n + 1)

end A034460

/-!
# A034461: Multiplicity of highest weight (or singular) vectors associated with character chi_73 of Monster module.

The programs for A034461, there is no canonical definition to state claims against.
-/

/-! ## A034461.P12722390132310439508

`A329025(A034515(n+1)+1)`
-/

namespace A034461.P12722390132310439508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329025 (A034515 (n + 1) + 1).toNat

end

end A034461.P12722390132310439508

/-! ## A034461.P7799485917167218633

`A067168(A036370(n))`
-/

namespace A034461.P7799485917167218633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067168 ((A036370 n).toNat + 10)

end

end A034461.P7799485917167218633

/-! ## A034461.P7910809359299596272

`A317190(A034563(n+1))`
-/

namespace A034461.P7910809359299596272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317190 (A034563 (n + 1)).toNat

end

end A034461.P7910809359299596272

/-! ## A034461.P4495804597177996906

`A330416(A034529(n+1))`
-/

namespace A034461.P4495804597177996906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330416 (A034529 (n + 1)).toNat

end

end A034461.P4495804597177996906

/-! ## A034461.P2707168047382376631

`A326152(A034518(n+2))`
-/

namespace A034461.P2707168047382376631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326152 (A034518 (n + 2)).toNat

end

end A034461.P2707168047382376631

/-!
# A034462: Multiplicity of highest weight (or singular) vectors associated with character chi_74 of Monster module.

The programs for A034462, there is no canonical definition to state claims against.
-/

/-! ## A034462.P10396435151850530993

`A004159(C(comp[5*n], 51))`
-/

namespace A034462.P10396435151850530993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004159 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 51)

end

end A034462.P10396435151850530993

/-! ## A034462.P1583424709372067909

`A107859(A034471(n+1))`
-/

namespace A034462.P1583424709372067909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107859 (A034471 (n + 1)).toNat

end

end A034462.P1583424709372067909

/-! ## A034462.P12777810117517215843

`A334236(C(A078137(n+4), 56))`
-/

namespace A034462.P12777810117517215843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334236 (Nat.choose (A078137 (n + 4)).toNat 56)

end

end A034462.P12777810117517215843

/-! ## A034462.P13410065850366192952

`A219905(and((n+1)²/∏{p}[n+1, #], A074989(n)))`
-/

namespace A034462.P13410065850366192952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219905 (Int.land (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ))) (A074989 n)).toNat

end

end A034462.P13410065850366192952

/-! ## A034462.P9153624697455016268

`A034473(n+1)-A004197(A185245(n))`
-/

namespace A034462.P9153624697455016268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034473 (n + 1) - A004197 (A185245 n).toNat

end

end A034462.P9153624697455016268

/-!
# A034463: Maximal number of residue classes mod n such that no subset adds to 0.

The programs for A034463, there is no canonical definition to state claims against.
-/

/-! ## A034463.P1687672974756254074

`A000194(eq[0, A228360(n+2)]-A000194(n+1))`
-/

namespace A034463.P1687672974756254074
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228360 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 ((SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) - A000194 (n + 1)).toNat

end

end A034463.P1687672974756254074

/-! ## A034463.P9968371377962763371

`A202304(A105098(n+1))+A057427(n)`
-/

namespace A034463.P9968371377962763371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A105098 (n + 1)).toNat + A057427 n

end

end A034463.P9968371377962763371

/-! ## A034463.P3846879842913360580

`A000196(lt[A353830(2*(n+1)), A353856(n+3)])`
-/

namespace A034463.P3846879842913360580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353830 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353856 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A034463.P3846879842913360580

/-! ## A034463.P13863343349765755164

`A062153(A062153(n+5)*A102378(n+1))`
-/

namespace A034463.P13863343349765755164
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062153 (A062153 (n + 5) * A102378 (n + 1)).toNat

end

end A034463.P13863343349765755164

/-! ## A034463.P6751890075777350150

`A000196(A378033(2*(n+1))-1)`
-/

namespace A034463.P6751890075777350150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A378033 (2 * (n + 1)) - 1).toNat

end

end A034463.P6751890075777350150

/-!
# A034469: Multiplicity of highest weight (or singular) vectors associated with character chi_81 of Monster module.

The programs for A034469, there is no canonical definition to state claims against.
-/

/-! ## A034469.P16102787137969862589

`A025581(C(round(8*n/7), 45))`
-/

namespace A034469.P16102787137969862589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (Nat.choose (SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))).toNat 45)

end

end A034469.P16102787137969862589

/-! ## A034469.P4876142285755838134

`A000194(C(comp[or(2, n)+n], 63))`
-/

namespace A034469.P4876142285755838134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n + n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000194 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 63)

end

end A034469.P4876142285755838134

/-! ## A034469.P14539905503645316963

`Δ[abs(A038760(A185245(n)))]`
-/

namespace A034469.P14539905503645316963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A038760 (A185245 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034469.P14539905503645316963

/-! ## A034469.P3677632125683664427

`∑[A252735(A076303(n+2))]`
-/

namespace A034469.P3677632125683664427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252735 (A076303 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034469.P3677632125683664427

/-! ## A034469.P3837209507656422240

`∑{e}[C(2*n+1, 78), #]`
-/

namespace A034469.P3837209507656422240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 78

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p

end

end A034469.P3837209507656422240

/-!
# A034470: Prime numbers using only the curved digits 0, 2, 3, 5, 6, 8 and 9.

The programs for A034470, there is no canonical definition to state claims against.
-/

/-! ## A034470.P16264968899170256601

`∩[A386330(n+1), A386333(n+1)]`
-/

namespace A034470.P16264968899170256601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P16264968899170256601

/-! ## A034470.P9369731148632737026

`∩[A386330(n+1), A386347(n+1)]`
-/

namespace A034470.P9369731148632737026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P9369731148632737026

/-! ## A034470.P6366947710034999192

`∩[A386333(n+1), A386347(n+1)]`
-/

namespace A034470.P6366947710034999192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P6366947710034999192

/-! ## A034470.P4124109579949524674

`∩[A038603(n+1), A386347(n+1)]`
-/

namespace A034470.P4124109579949524674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P4124109579949524674

/-! ## A034470.P14294873154462401355

`∩[A307636(n+1), A386347(n+1)]`
-/

namespace A034470.P14294873154462401355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P14294873154462401355

/-! ## A034470.P11882604445570165389

`∩[A132080(n+1), A386347(n+1)]`
-/

namespace A034470.P11882604445570165389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132080 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386347 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P11882604445570165389

/-! ## A034470.P15264815419477824184

`∩[A038615(n+1), A386330(n+1)]`
-/

namespace A034470.P15264815419477824184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386330 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P15264815419477824184

/-! ## A034470.P9189861151569279837

`∩[A038612(n+1), A386333(n+1)]`
-/

namespace A034470.P9189861151569279837
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P9189861151569279837

/-! ## A034470.P1108601393602491087

`p?[A028374(n+1)]`
-/

namespace A034470.P1108601393602491087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034470.P1108601393602491087

/-! ## A034470.P2671066993393518792

`p?[record[A028374(A292266(n))]]`
-/

namespace A034470.P2671066993393518792
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (A292266 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034470.P2671066993393518792

/-! ## A034470.P17951300290081703020

`p?[record[A028374(A324343(n))]]`
-/

namespace A034470.P17951300290081703020
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (A324343 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034470.P17951300290081703020

/-! ## A034470.P12983679661045882318

`p?[record[A028374(A324344(n))]]`
-/

namespace A034470.P12983679661045882318
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (A324344 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A034470.P12983679661045882318

/-! ## A034470.P11856520715670209357

`record[A020639(A028374(n+2))]`
-/

namespace A034470.P11856520715670209357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A028374 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034470.P11856520715670209357

/-! ## A034470.P2779931831514820020

`filter[A028374(n+2), A010051(#)]`
-/

namespace A034470.P2779931831514820020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A034470.P2779931831514820020

/-! ## A034470.P17585920604243721840

`∩[A000040(n+1), A028374(n+1)]`
-/

namespace A034470.P17585920604243721840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P17585920604243721840

/-! ## A034470.P4697759785370150315

`∩[A008578(n+1), A028374(n+1)]`
-/

namespace A034470.P4697759785370150315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P4697759785370150315

/-! ## A034470.P5704360546460884286

`∩[A028374(n+1), A038603(n+1)]`
-/

namespace A034470.P5704360546460884286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P5704360546460884286

/-! ## A034470.P1964947576587610690

`∩[A028374(n+1), A038612(n+1)]`
-/

namespace A034470.P1964947576587610690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038612 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P1964947576587610690

/-! ## A034470.P12650566711134814487

`∩[A028374(n+1), A038615(n+1)]`
-/

namespace A034470.P12650566711134814487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038615 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P12650566711134814487

/-! ## A034470.P8026214775345297267

`∩[A028374(n+1), A040159(n+1)]`
-/

namespace A034470.P8026214775345297267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A034470.P8026214775345297267

/-!
# A034471: Multiplicity of highest weight (or singular) vectors associated with character chi_83 of Monster module.

The programs for A034471, there is no canonical definition to state claims against.
-/

/-! ## A034471.P8852322547451492842

`A261104(C(n, 40))`
-/

namespace A034471.P8852322547451492842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261104 (Nat.choose n 40)

end

end A034471.P8852322547451492842

/-! ## A034471.P15241006687924090035

`A300856(A034462(n+1))`
-/

namespace A034471.P15241006687924090035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300856 (A034462 (n + 1)).toNat

end

end A034471.P15241006687924090035

/-! ## A034471.P10842095835629123432

`A051516(xor(35, A185245(n)))`
-/

namespace A034471.P10842095835629123432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051516 (Int.xor 35 (A185245 n)).toNat

end

end A034471.P10842095835629123432

/-! ## A034471.P7494581119883505307

`A048865(A076303(n+1))%48`
-/

namespace A034471.P7494581119883505307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048865 (A076303 (n + 1)).toNat) 48

end

end A034471.P7494581119883505307

/-! ## A034471.P5548223179971139992

`A049581(C(A347457(n+1), 45))`
-/

namespace A034471.P5548223179971139992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049581 (Nat.choose (A347457 (n + 1)).toNat 45)

end

end A034471.P5548223179971139992

/-!
# A034472: a(n) = 3^n + 1.

The programs for A034472, the canonical program `A034472.P6935477064191477456` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034472 has offset 0).

The definition of A034472 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+1` (program `A034472.P6935477064191477456`, by `A034472.P6935477064191477456.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034472.P6935477064191477456

`3^n+1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034472

/-- `3^n+1` -/
def P6935477064191477456.Spec : Prop :=
  ∀ n, (P6935477064191477456.a n : ℤ) = A034472 n

theorem P6935477064191477456.correct : P6935477064191477456.Spec := by
  intro n
  simp only [A034472]

end A034472

/-!
# A034473: Multiplicity of highest weight (or singular) vectors associated with character chi_85 of Monster module.

The programs for A034473, there is no canonical definition to state claims against.
-/

/-! ## A034473.P11944011735800967403

`A034462(n+1)+A004197(A185245(n))`
-/

namespace A034473.P11944011735800967403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034462 (n + 1) + A004197 (A185245 n).toNat

end

end A034473.P11944011735800967403

/-! ## A034473.P15520035485504107587

`A107859(A034471(n+1))+A004197(A185245(n))`
-/

namespace A034473.P15520035485504107587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107859 (A034471 (n + 1)).toNat + A004197 (A185245 n).toNat

end

end A034473.P15520035485504107587

/-! ## A034473.P5531010832463482826

`A279891(C(comp[n²], 47))`
-/

namespace A034473.P5531010832463482826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279891 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) 47)

end

end A034473.P5531010832463482826

/-! ## A034473.P16690424361813260185

`A103328(C(comp[10*n-2], 44))`
-/

namespace A034473.P16690424361813260185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103328 (Nat.choose (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) 44)

end

end A034473.P16690424361813260185

/-! ## A034473.P5375791877821728418

`A064574(A076303(n+1))`
-/

namespace A034473.P5375791877821728418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064574 (A076303 (n + 1)).toNat

end

end A034473.P5375791877821728418

/-!
# A034474: a(n) = 5^n + 1.

The programs for A034474, the canonical program `A034474.P1568972853745923564` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034474 has offset 0).

The definition of A034474 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5^n+1` (program `A034474.P1568972853745923564`, by `A034474.P1568972853745923564.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034474.P1568972853745923564

`5^n+1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034474

/-- `5^n+1` -/
def P1568972853745923564.Spec : Prop :=
  ∀ n, (P1568972853745923564.a n : ℤ) = A034474 n

theorem P1568972853745923564.correct : P1568972853745923564.Spec := by
  intro n
  simp only [A034474]

end A034474

/-!
# A034475: Multiplicity of highest weight (or singular) vectors associated with character chi_87 of Monster module.

The programs for A034475, there is no canonical definition to state claims against.
-/

/-! ## A034475.P4268668785411438371

`A122322(A034501(n+1))%(n+2)`
-/

namespace A034475.P4268668785411438371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122322 (A034501 (n + 1)).toNat) (n + 2 : ℤ)

end

end A034475.P4268668785411438371

/-! ## A034475.P12668189753041978653

`A185237(A185219(n))%A078840(n)`
-/

namespace A034475.P12668189753041978653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A185237 (A185219 n).toNat) (A078840 n)

end

end A034475.P12668189753041978653

/-! ## A034475.P4074278711536788749

`A282544(n)%A281976(A034574(n+1))`
-/

namespace A034475.P4074278711536788749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282544 n) (A281976 (A034574 (n + 1)).toNat)

end

end A034475.P4074278711536788749

/-! ## A034475.P1637904626302198511

`A049502(C(3%comp[∑[n]]+n, 38))`
-/

namespace A034475.P1637904626302198511
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049502 (Nat.choose (3 % SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + n) 38)

end

end A034475.P1637904626302198511

/-! ## A034475.P8869706693229107915

`A049615(∑[A185284(n)])`
-/

namespace A034475.P8869706693229107915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049615 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A034475.P8869706693229107915

/-!
# A034476: Multiplicity of highest weight (or singular) vectors associated with character chi_88 of Monster module.

The programs for A034476, there is no canonical definition to state claims against.
-/

/-! ## A034476.P6106516686787164498

`A358473(A161618(n+2))`
-/

namespace A034476.P6106516686787164498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358473 (A161618 (n + 2)).toNat

end

end A034476.P6106516686787164498

/-! ## A034476.P7389419164379989710

`Δ[Δ[A110493(A185245(n))]]`
-/

namespace A034476.P7389419164379989710
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110493 (A185245 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A034476.P7389419164379989710

/-! ## A034476.P12780283212987703171

`A333519(A185245(n))%A080608(n+1)`
-/

namespace A034476.P12780283212987703171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A333519 (A185245 n).toNat) (A080608 (n + 1))

end

end A034476.P12780283212987703171

/-! ## A034476.P381384337467486980

`A328324(A034487(n+1))+A034487(n+1)`
-/

namespace A034476.P381384337467486980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328324 (A034487 (n + 1)).toNat + A034487 (n + 1)

end

end A034476.P381384337467486980

/-! ## A034476.P2349881881898364132

`A360924(C(n, 38))`
-/

namespace A034476.P2349881881898364132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360924 (Nat.choose n 38)

end

end A034476.P2349881881898364132

/-!
# A034477: Multiplicity of highest weight (or singular) vectors associated with character chi_89 of Monster module.

The programs for A034477, there is no canonical definition to state claims against.
-/

/-! ## A034477.P408798319939717110

`A065070(A034490(n+2)+1)`
-/

namespace A034477.P408798319939717110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065070 (A034490 (n + 2) + 1).toNat

end

end A034477.P408798319939717110

/-! ## A034477.P9591291750945764257

`A264966(2*n+1)%A158991(A185245(n+1))`
-/

namespace A034477.P9591291750945764257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264966 (2 * n + 1)) (A158991 (A185245 (n + 1)).toNat)

end

end A034477.P9591291750945764257

/-! ## A034477.P18028693615324501544

`A038575(C(n, 36))`
-/

namespace A034477.P18028693615324501544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038575 (Nat.choose n 36)

end

end A034477.P18028693615324501544

/-! ## A034477.P13024793933770612046

`A120565(A034512(n+1))`
-/

namespace A034477.P13024793933770612046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120565 (A034512 (n + 1)).toNat

end

end A034477.P13024793933770612046

/-! ## A034477.P12085951128689292009

`A285189(A034516(n+1))`
-/

namespace A034477.P12085951128689292009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285189 (A034516 (n + 1)).toNat

end

end A034477.P12085951128689292009

/-!
# A034478: a(n) = (5^n + 1)/2.

The programs for A034478, the canonical program `A034478.P14299507060647208907` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034478 has offset 0).

The definition of A034478 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5^n+1)/2` (program `A034478.P6168429449470538206`, by `A034478.P6168429449470538206.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034478.P6168429449470538206

`(5^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034478.P6168429449470538206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 ^ n + 1 : ℚ) / 2

end

end A034478.P6168429449470538206

namespace A034478

/-- `(5^n+1)/2` -/
def P6168429449470538206.Spec : Prop :=
  ∀ n, P6168429449470538206.a n = (A034478 n : ℚ)

theorem P6168429449470538206.correct : P6168429449470538206.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A034478, Nat.add_sub_cancel, A034478.P6168429449470538206.a, A034478.P14299507060647208907.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A034478, Nat.add_sub_cancel, A034478.P6168429449470538206.a, A034478.P14299507060647208907.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A034478

/-! ## A034478.P14299507060647208907

`5*a(n-1)-2` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034478

/-- `5*a(n-1)-2` -/
def P14299507060647208907.Spec : Prop :=
  ∀ n, P14299507060647208907.a n = A034478 n

theorem P14299507060647208907.correct : P14299507060647208907.Spec := by
  intro n
  simp only [A034478]

end A034478

/-! ## A034478.P592024358834851910

`or(1, floor(5^n/2))`
-/

namespace A034478.P592024358834851910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 ⌊(5 ^ n : ℚ) / 2⌋

end

end A034478.P592024358834851910

namespace A034478

/-- `or(1, floor(5^n/2))` -/
def P592024358834851910.Spec : Prop :=
  ∀ n, P592024358834851910.a n = A034478 n

end A034478

/-! ## A034478.P9896792328558042389

`round(or(1, 5^n)/2)`
-/

namespace A034478.P9896792328558042389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.lor 1 (5 ^ n) : ℚ) / 2)

end

end A034478.P9896792328558042389

namespace A034478

/-- `round(or(1, 5^n)/2)` -/
def P9896792328558042389.Spec : Prop :=
  ∀ n, P9896792328558042389.a n = A034478 n

end A034478

/-! ## A034478.P16072395025851504061

`lcm(5, a(n-1))-2` with `a(0)=1`
-/

namespace A034478.P16072395025851504061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 5 (a (n - 1)) : ℤ) - 2

end

end A034478.P16072395025851504061

namespace A034478

/-- `lcm(5, a(n-1))-2` -/
def P16072395025851504061.Spec : Prop :=
  ∀ n, P16072395025851504061.a n = A034478 n

end A034478

/-! ## A034478.P4799020534258600222

`round(5^gcd(n, 2*n)/2)`
-/

namespace A034478.P4799020534258600222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 ^ Nat.gcd n (2 * n) : ℚ) / 2)

end

end A034478.P4799020534258600222

namespace A034478

/-- `round(5^gcd(n, 2*n)/2)` -/
def P4799020534258600222.Spec : Prop :=
  ∀ n, P4799020534258600222.a n = A034478 n

end A034478

/-! ## A034478.P8639702402165241595

`a(n-1)/(1-4/5)-2` with `a(0)=1`
-/

namespace A034478.P8639702402165241595
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (1 - (4 : ℚ) / 5) - 2

end

end A034478.P8639702402165241595

namespace A034478

/-- `a(n-1)/(1-4/5)-2` -/
def P8639702402165241595.Spec : Prop :=
  ∀ n, P8639702402165241595.a n = (A034478 n : ℚ)

end A034478

/-! ## A034478.P707591631527840143

`a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)-2` with `a(0)=1`
-/

namespace A034478.P707591631527840143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 2))))

end

end A034478.P707591631527840143

namespace A034478

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)+a(n-1)-2` -/
def P707591631527840143.Spec : Prop :=
  ∀ n, P707591631527840143.a n = A034478 n

theorem P707591631527840143.correct : P707591631527840143.Spec := by
  intro n
  simp only [A034478, Nat.add_sub_cancel, A034478.P707591631527840143.a, A034478.P14299507060647208907.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A034478

/-! ## A034478.P7787071125127564414

`a(n-1)-(2-a(n-1)-a(n-1)-a(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A034478.P7787071125127564414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (2 - a (n - 1) - a (n - 1) - a (n - 1) - a (n - 1))

end

end A034478.P7787071125127564414

namespace A034478

/-- `a(n-1)-(2-a(n-1)-a(n-1)-a(n-1)-a(n-1))` -/
def P7787071125127564414.Spec : Prop :=
  ∀ n, P7787071125127564414.a n = A034478 n

theorem P7787071125127564414.correct : P7787071125127564414.Spec := by
  intro n
  simp only [A034478, Nat.add_sub_cancel, A034478.P7787071125127564414.a, A034478.P14299507060647208907.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A034478

/-! ## A034478.P10559099168138953587

`∑[A020699(n)]`
-/

namespace A034478.P10559099168138953587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020699 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034478.P10559099168138953587

namespace A034478

/-- `∑[A020699(n)]` -/
def P10559099168138953587.Spec : Prop :=
  ∀ n, P10559099168138953587.a n = A034478 n

end A034478

/-! ## A034478.P12943508839853524251

`A132079(n)-1`
-/

namespace A034478.P12943508839853524251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132079 n - 1

end

end A034478.P12943508839853524251

namespace A034478

/-- `A132079(n)-1` -/
def P12943508839853524251.Spec : Prop :=
  ∀ n, P12943508839853524251.a n = A034478 n

end A034478

/-! ## A034478.P13979783693922720813

`A137410(n)+2`
-/

namespace A034478.P13979783693922720813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137410 n + 2

end

end A034478.P13979783693922720813

namespace A034478

/-- `A137410(n)+2` -/
def P13979783693922720813.Spec : Prop :=
  ∀ n, P13979783693922720813.a n = A034478 n

end A034478

/-! ## A034478.P519956323187772989

`A294566(Δ[n²])`
-/

namespace A034478.P519956323187772989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294566 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A034478.P519956323187772989

namespace A034478

/-- `A294566(Δ[n²])` -/
def P519956323187772989.Spec : Prop :=
  ∀ n, P519956323187772989.a n = A034478 n

end A034478

/-! ## A034478.P6875054034744478622

`Δ[A185055(n)]+1`
-/

namespace A034478.P6875054034744478622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A034478.P6875054034744478622

namespace A034478

/-- `Δ[A185055(n)]+1` -/
def P6875054034744478622.Spec : Prop :=
  ∀ n, P6875054034744478622.a n = A034478 n

end A034478

/-! ## A034478.P9260447937201962083

`A121177(n+1)+1`
-/

namespace A034478.P9260447937201962083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121177 (n + 1) + 1

end

end A034478.P9260447937201962083

namespace A034478

/-- `A121177(n+1)+1` -/
def P9260447937201962083.Spec : Prop :=
  ∀ n, P9260447937201962083.a n = A034478 n

end A034478

/-! ## A034478.P18202891232875140348

`2*A003463(n)+1`
-/

namespace A034478.P18202891232875140348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003463 n + 1

end

end A034478.P18202891232875140348

namespace A034478

/-- `2*A003463(n)+1` -/
def P18202891232875140348.Spec : Prop :=
  ∀ n, P18202891232875140348.a n = A034478 n

end A034478

/-!
# A034479: Multiplicity of highest weight (or singular) vectors associated with character chi_91 of Monster module.

The programs for A034479, there is no canonical definition to state claims against.
-/

/-! ## A034479.P15261380092167008133

`A213709(n+1)%A128282(A034461(n+1))`
-/

namespace A034479.P15261380092167008133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A213709 (n + 1)) (A128282 (A034461 (n + 1)).toNat)

end

end A034479.P15261380092167008133

/-! ## A034479.P1901461065027437340

`A326292(n+1)+∑[A305615(A034551(n+1))]`
-/

namespace A034479.P1901461065027437340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305615 (A034551 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326292 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A034479.P1901461065027437340

/-! ## A034479.P1051294904179133244

`A328114(C(n+2, 32))`
-/

namespace A034479.P1051294904179133244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328114 (Nat.choose (n + 2) 32)

end

end A034479.P1051294904179133244

/-! ## A034479.P12744736522015298842

`A108611(A034497(n+1))`
-/

namespace A034479.P12744736522015298842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108611 (A034497 (n + 1)).toNat

end

end A034479.P12744736522015298842

/-! ## A034479.P6792796463533512653

`A301636(A034565(n+2))`
-/

namespace A034479.P6792796463533512653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301636 (A034565 (n + 2)).toNat

end

end A034479.P6792796463533512653

/-!
# A034480: Multiplicity of highest weight (or singular) vectors associated with character chi_92 of Monster module.

The programs for A034480, there is no canonical definition to state claims against.
-/

/-! ## A034480.P11968561680265229311

`A262882(A034482(n+2))`
-/

namespace A034480.P11968561680265229311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A034482 (n + 2)).toNat

end

end A034480.P11968561680265229311

/-! ## A034480.P6684824438138351203

`A333220(∏[A342696(n)!])`
-/

namespace A034480.P6684824438138351203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A342696 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333220 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A034480.P6684824438138351203

/-! ## A034480.P9424920588848784092

`floor(A019246(n+3)/A107968(n))`
-/

namespace A034480.P9424920588848784092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A019246 (n + 3) : ℚ) / (A107968 n : ℚ)⌋

end

end A034480.P9424920588848784092

/-!
# A034481: Multiplicity of highest weight (or singular) vectors associated with character chi_93 of Monster module.

The programs for A034481, there is no canonical definition to state claims against.
-/

/-! ## A034481.P1122396019161286219

`floor(A095339(n+1)/A224355(n+1))`
-/

namespace A034481.P1122396019161286219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095339 (n + 1) : ℚ) / (A224355 (n + 1) : ℚ)⌋

end

end A034481.P1122396019161286219

/-! ## A034481.P3072637506756841646

`A131209(floor(A004149(n)/A192537(n+1)))`
-/

namespace A034481.P3072637506756841646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131209 ⌊(A004149 n : ℚ) / (A192537 (n + 1) : ℚ)⌋.toNat

end

end A034481.P3072637506756841646

/-! ## A034481.P544494627085531619

`A242921(floor(A242882(n)/A242905(n+1)))`
-/

namespace A034481.P544494627085531619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242921 ⌊(A242882 n : ℚ) / (A242905 (n + 1) : ℚ)⌋.toNat

end

end A034481.P544494627085531619

/-!
# A034482: Multiplicity of highest weight (or singular) vectors associated with character chi_94 of Monster module.

The programs for A034482, there is no canonical definition to state claims against.
-/

/-! ## A034482.P9899767852225011970

`A122298(round(3^n/A345863(n+1)))`
-/

namespace A034482.P9899767852225011970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122298 (SequenceMachineLib.roundAway ((3 ^ n : ℚ) / (A345863 (n + 1) : ℚ))).toNat

end

end A034482.P9899767852225011970

/-!
# A034483: Multiplicity of highest weight (or singular) vectors associated with character chi_95 of Monster module.

The programs for A034483, there is no canonical definition to state claims against.
-/

/-! ## A034483.P3111171331448894111

`A105566(A034480(n+1)+1)`
-/

namespace A034483.P3111171331448894111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105566 (A034480 (n + 1) + 1).toNat

end

end A034483.P3111171331448894111

/-!
# A034484: Multiplicity of highest weight (or singular) vectors associated with character chi_96 of Monster module.

The programs for A034484, there is no canonical definition to state claims against.
-/

/-! ## A034484.P1129115465657679317

`A260195(Δ[A034543(n+1)])`
-/

namespace A034484.P1129115465657679317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034543 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260195 (f1 (n + 1) - f1 n).toNat

end

end A034484.P1129115465657679317

/-! ## A034484.P12706204770932291232

`A170965(or(6, A034531(n+1)))`
-/

namespace A034484.P12706204770932291232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170965 (Int.lor 6 (A034531 (n + 1))).toNat

end

end A034484.P12706204770932291232

/-! ## A034484.P6249712559607427225

`floor(A095294(n+1)/A172314(n+1))`
-/

namespace A034484.P6249712559607427225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A095294 (n + 1) : ℚ) / (A172314 (n + 1) : ℚ)⌋

end

end A034484.P6249712559607427225

/-! ## A034484.P4852761889387664478

`A198317(A192184(n)-A107236(n))`
-/

namespace A034484.P4852761889387664478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198317 (A192184 n - A107236 n).toNat

end

end A034484.P4852761889387664478

/-! ## A034484.P14606572080721344420

`A198317(A192184(n)%A107236(n))`
-/

namespace A034484.P14606572080721344420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198317 (Int.tmod (A192184 n) (A107236 n)).toNat

end

end A034484.P14606572080721344420

/-!
# A034486: Multiplicity of highest weight (or singular) vectors associated with character chi_98 of Monster module.

The programs for A034486, there is no canonical definition to state claims against.
-/

/-! ## A034486.P17359888011501618113

`A092106(A034511(n+1))+A000096(A185238(n))`
-/

namespace A034486.P17359888011501618113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092106 (A034511 (n + 1)).toNat + A000096 (A185238 n).toNat

end

end A034486.P17359888011501618113

/-! ## A034486.P2425062648395890978

`A103298(A034461(n+1)²)`
-/

namespace A034486.P2425062648395890978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103298 (A034461 (n + 1) ^ 2).toNat

end

end A034486.P2425062648395890978

/-! ## A034486.P1095770536814199729

`A056559(∑[A034529(n+1)]²)`
-/

namespace A034486.P1095770536814199729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056559 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A034486.P1095770536814199729

/-! ## A034486.P8064442213160288262

`A001222(A000010(n+2)^A210632(n))`
-/

namespace A034486.P8064442213160288262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((A000010 (n + 2) : ℚ) ^ (A210632 n : ℤ))).toNat

end

end A034486.P8064442213160288262

/-! ## A034486.P14746337733832039593

`and(A034539(n+1), A319794(A032742(3*(n+1))))`
-/

namespace A034486.P14746337733832039593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A034539 (n + 1)) (A319794 (A032742 (3 * (n + 1))).toNat)

end

end A034486.P14746337733832039593

/-!
# A034487: Multiplicity of highest weight (or singular) vectors associated with character chi_99 of Monster module.

The programs for A034487, there is no canonical definition to state claims against.
-/

/-! ## A034487.P16547643887369588124

`A003056(C(n+7, 45))`
-/

namespace A034487.P16547643887369588124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (Nat.choose (n + 7) 45)

end

end A034487.P16547643887369588124

/-! ## A034487.P2535774654532902626

`A131417(A185245(n)+1)`
-/

namespace A034487.P2535774654532902626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131417 (A185245 n + 1).toNat

end

end A034487.P2535774654532902626

/-! ## A034487.P5351771616071837520

`A217152(or(12, A185245(n)))`
-/

namespace A034487.P5351771616071837520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217152 (Int.lor 12 (A185245 n)).toNat

end

end A034487.P5351771616071837520

/-! ## A034487.P10030171289059555638

`A167877(∑[A185245(n)]²)`
-/

namespace A034487.P10030171289059555638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185245 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167877 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2).toNat

end

end A034487.P10030171289059555638

/-! ## A034487.P15464464159449172

`C(9, A055916(n+3))`
-/

namespace A034487.P15464464159449172
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 9 (A055916 (n + 3)).toNat

end

end A034487.P15464464159449172

/-!
# A034488: Sum of n-th powers of divisors of 6.

The programs for A034488, the canonical program `A034488.P3302094356914207733` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034488 has offset 0).

The definition of A034488 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034488.P3302094356914207733

`(2^n+1)*(3^n+1)`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034488

/-- `(2^n+1)*(3^n+1)` -/
def P3302094356914207733.Spec : Prop :=
  ∀ n, (P3302094356914207733.a n : ℤ) = A034488 n

theorem P3302094356914207733.correct : P3302094356914207733.Spec := by
  intro n
  simp only [A034488]

end A034488

/-! ## A034488.P11138935259968538619

`∑{d}[-a(n-1), #^n]` with `a(0)=6`
-/

namespace A034488.P11138935259968538619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A034488.P11138935259968538619

namespace A034488

/-- `∑{d}[-a(n-1), #^n]` -/
def P11138935259968538619.Spec : Prop :=
  ∀ n, (P11138935259968538619.a n : ℤ) = A034488 n

end A034488

/-! ## A034488.P10381663094054013242

`or(2^n+3^n+6^n, floor(acot(n)²))+1`
-/

namespace A034488.P10381663094054013242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 ^ n + (3 ^ n + 6 ^ n) : ℤ) ⌊SequenceMachineLib.acot (n : ℝ) ^ 2⌋ + 1

end

end A034488.P10381663094054013242

namespace A034488

/-- `or(2^n+3^n+6^n, floor(acot(n)²))+1` -/
def P10381663094054013242.Spec : Prop :=
  ∀ n, P10381663094054013242.a n = A034488 n

end A034488

/-! ## A034488.P9015714269232413435

`A074528(n)+1`
-/

namespace A034488.P9015714269232413435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074528 n + 1

end

end A034488.P9015714269232413435

namespace A034488

/-- `A074528(n)+1` -/
def P9015714269232413435.Spec : Prop :=
  ∀ n, P9015714269232413435.a n = A034488 n

end A034488

/-! ## A034488.P16013636912959979142

`A246985(n+1)+1`
-/

namespace A034488.P16013636912959979142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246985 (n + 1) + 1

end

end A034488.P16013636912959979142

namespace A034488

/-- `A246985(n+1)+1` -/
def P16013636912959979142.Spec : Prop :=
  ∀ n, P16013636912959979142.a n = A034488 n

end A034488

/-! ## A034488.P8958967504452380653

`A074508(n)+2^n`
-/

namespace A034488.P8958967504452380653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074508 n + (2 ^ n : ℤ)

end

end A034488.P8958967504452380653

namespace A034488

/-- `A074508(n)+2^n` -/
def P8958967504452380653.Spec : Prop :=
  ∀ n, P8958967504452380653.a n = A034488 n

end A034488

/-! ## A034488.P260577726357780133

`A001550(n)+6^n`
-/

namespace A034488.P260577726357780133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001550 n + (6 ^ n : ℤ)

end

end A034488.P260577726357780133

namespace A034488

/-- `A001550(n)+6^n` -/
def P260577726357780133.Spec : Prop :=
  ∀ n, P260577726357780133.a n = A034488 n

end A034488

/-! ## A034488.P5037448751021429805

`6^n+A007689(n)+1`
-/

namespace A034488.P5037448751021429805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 ^ n : ℤ) + (A007689 n + 1)

end

end A034488.P5037448751021429805

namespace A034488

/-- `6^n+A007689(n)+1` -/
def P5037448751021429805.Spec : Prop :=
  ∀ n, P5037448751021429805.a n = A034488 n

end A034488

/-! ## A034488.P14817830082753969198

`A062394(n)+2^n+3^n`
-/

namespace A034488.P14817830082753969198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062394 n + (2 ^ n + 3 ^ n : ℤ)

end

end A034488.P14817830082753969198

namespace A034488

/-- `A062394(n)+2^n+3^n` -/
def P14817830082753969198.Spec : Prop :=
  ∀ n, P14817830082753969198.a n = A034488 n

end A034488

/-! ## A034488.P16523695291076901818

`A000400(n)+2^n+3^n+1`
-/

namespace A034488.P16523695291076901818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000400 n + (2 ^ n + (3 ^ n + 1) : ℤ)

end

end A034488.P16523695291076901818

namespace A034488

/-- `A000400(n)+2^n+3^n+1` -/
def P16523695291076901818.Spec : Prop :=
  ∀ n, P16523695291076901818.a n = A034488 n

end A034488

/-! ## A034488.P6849888803462216577

`2^n+1+Δ[A003462(n)]+6^n`
-/

namespace A034488.P6849888803462216577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n + 1 : ℤ) + (f1 (n + 1) - f1 n + (6 ^ n : ℤ))

end

end A034488.P6849888803462216577

namespace A034488

/-- `2^n+1+Δ[A003462(n)]+6^n` -/
def P6849888803462216577.Spec : Prop :=
  ∀ n, P6849888803462216577.a n = A034488 n

end A034488

/-! ## A034488.P3025544478983516353

`A074607(n)+A000051(n)`
-/

namespace A034488.P3025544478983516353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074607 n + A000051 n

end

end A034488.P3025544478983516353

namespace A034488

/-- `A074607(n)+A000051(n)` -/
def P3025544478983516353.Spec : Prop :=
  ∀ n, P3025544478983516353.a n = A034488 n

end A034488

/-! ## A034488.P13315265298138963934

`A074601(n)+A034472(n)`
-/

namespace A034488.P13315265298138963934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074601 n + A034472 n

end

end A034488.P13315265298138963934

namespace A034488

/-- `A074601(n)+A034472(n)` -/
def P13315265298138963934.Spec : Prop :=
  ∀ n, P13315265298138963934.a n = A034488 n

end A034488

/-! ## A034488.P11447597310110364955

`A000079(n)+A074607(n)+1`
-/

namespace A034488.P11447597310110364955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A074607 n + 1)

end

end A034488.P11447597310110364955

namespace A034488

/-- `A000079(n)+A074607(n)+1` -/
def P11447597310110364955.Spec : Prop :=
  ∀ n, P11447597310110364955.a n = A034488 n

end A034488

/-! ## A034488.P5158668971806136878

`A092807(n+1)+A034472(n)`
-/

namespace A034488.P5158668971806136878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092807 (n + 1) + A034472 n

end

end A034488.P5158668971806136878

namespace A034488

/-- `A092807(n+1)+A034472(n)` -/
def P5158668971806136878.Spec : Prop :=
  ∀ n, P5158668971806136878.a n = A034488 n

end A034488

/-! ## A034488.P18205359629463302016

`A000225(n)+A074607(n)+2`
-/

namespace A034488.P18205359629463302016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + (A074607 n + 2)

end

end A034488.P18205359629463302016

namespace A034488

/-- `A000225(n)+A074607(n)+2` -/
def P18205359629463302016.Spec : Prop :=
  ∀ n, P18205359629463302016.a n = A034488 n

end A034488

/-! ## A034488.P16094415649695493598

`∑[A011782(n)]+A074607(n)+1`
-/

namespace A034488.P16094415649695493598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A074607 n + 1)

end

end A034488.P16094415649695493598

namespace A034488

/-- `∑[A011782(n)]+A074607(n)+1` -/
def P16094415649695493598.Spec : Prop :=
  ∀ n, P16094415649695493598.a n = A034488 n

end A034488

/-! ## A034488.P3000289015326170984

`A000051(n)+A000400(n)+A000244(n)`
-/

namespace A034488.P3000289015326170984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A000400 n + A000244 n)

end

end A034488.P3000289015326170984

namespace A034488

/-- `A000051(n)+A000400(n)+A000244(n)` -/
def P3000289015326170984.Spec : Prop :=
  ∀ n, P3000289015326170984.a n = A034488 n

end A034488

/-! ## A034488.P10496392724849056160

`A001551(n)+A000079(n)*A001047(n)`
-/

namespace A034488.P10496392724849056160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001551 n + A000079 n * A001047 n

end

end A034488.P10496392724849056160

namespace A034488

/-- `A001551(n)+A000079(n)*A001047(n)` -/
def P10496392724849056160.Spec : Prop :=
  ∀ n, P10496392724849056160.a n = A034488 n

end A034488

/-! ## A034488.P419186439788811015

`A034472(n)+A000079(n)*A034472(n)`
-/

namespace A034488.P419186439788811015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034472 n + A000079 n * A034472 n

end

end A034488.P419186439788811015

namespace A034488

/-- `A034472(n)+A000079(n)*A034472(n)` -/
def P419186439788811015.Spec : Prop :=
  ∀ n, P419186439788811015.a n = A034488 n

end A034488

/-!
# A034490: Multiplicity of highest weight (or singular) vectors associated with character chi_102 of Monster module.

The programs for A034490, there is no canonical definition to state claims against.
-/

/-! ## A034490.P10298961331479378195

`A046727(A185245(n))%A061085(n+1)`
-/

namespace A034490.P10298961331479378195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046727 (A185245 n).toNat) (A061085 (n + 1))

end

end A034490.P10298961331479378195

/-! ## A034490.P17116931650815173914

`3*Δ[∑{e}[C(2*n+1, 78), #]]`
-/

namespace A034490.P17116931650815173914
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * n + 1) 78

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A034490.P17116931650815173914

/-! ## A034490.P1453020831510275221

`A025460(C(n, 36)+2)`
-/

namespace A034490.P1453020831510275221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025460 (Nat.choose n 36 + 2)

end

end A034490.P1453020831510275221

/-! ## A034490.P5695278443451902372

`A324467(C(∑[gcd(6, n%5)%5]-1, 69))`
-/

namespace A034490.P5695278443451902372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 6 (n % 5) % 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324467 (Nat.choose (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1).toNat 69)

end

end A034490.P5695278443451902372

/-! ## A034490.P17736773011052238816

`A265535(A034493(n+2))`
-/

namespace A034490.P17736773011052238816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265535 (A034493 (n + 2)).toNat

end

end A034490.P17736773011052238816

/-!
# A034491: a(n) = 7^n + 1.

The programs for A034491, the canonical program `A034491.P8360530145105108237` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034491 has offset 0).

The definition of A034491 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7^n+1` (program `A034491.P8360530145105108237`, by `A034491.P8360530145105108237.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034491.P8360530145105108237

`7^n+1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034491

/-- `7^n+1` -/
def P8360530145105108237.Spec : Prop :=
  ∀ n, (P8360530145105108237.a n : ℤ) = A034491 n

theorem P8360530145105108237.correct : P8360530145105108237.Spec := by
  intro n
  simp only [A034491]

end A034491

/-!
# A034493: Multiplicity of highest weight (or singular) vectors associated with character chi_105 of Monster module.

The programs for A034493, there is no canonical definition to state claims against.
-/

/-! ## A034493.P14786524770722392881

`A034495(n+1)%(∑[char[∑[n]]]²^n)`
-/

namespace A034493.P14786524770722392881
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A034495 (n + 1)) ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2) ^ n : ℕ) : ℤ)

end

end A034493.P14786524770722392881

/-! ## A034493.P17642648783855119312

`A034495(n+1)^A045840(n)!`
-/

namespace A034493.P17642648783855119312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034495 (n + 1) ^ Nat.factorial (A045840 n).toNat

end

end A034493.P17642648783855119312

/-! ## A034493.P5356295458608256918

`A034495(gcd(n+1, A122537(n+1)))`
-/

namespace A034493.P5356295458608256918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034495 (Int.gcd (n + 1 : ℤ) (A122537 (n + 1)))

end

end A034493.P5356295458608256918

/-! ## A034493.P2848482318265048901

`A034495(n+1)^gcd(37, A054333(n))`
-/

namespace A034493.P2848482318265048901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034495 (n + 1) ^ Int.gcd 37 (A054333 n)

end

end A034493.P2848482318265048901

/-! ## A034493.P10411761167320055338

`A034495(n+1)+A000007(A299291(n))`
-/

namespace A034493.P10411761167320055338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034495 (n + 1) + A000007 (A299291 n).toNat

end

end A034493.P10411761167320055338

/-! ## A034493.P5074314776111991656

`A001222(A227826(n))*A034495(n+1)`
-/

namespace A034493.P5074314776111991656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A227826 n).toNat * A034495 (n + 1)

end

end A034493.P5074314776111991656

/-! ## A034493.P13481012287208347636

`A001221(A256481(n))*A034495(n+1)`
-/

namespace A034493.P13481012287208347636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A256481 n).toNat * A034495 (n + 1)

end

end A034493.P13481012287208347636

/-! ## A034493.P18104646444238270929

`A034495(n+1)^A014963(A189833(n))`
-/

namespace A034493.P18104646444238270929
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034495 (n + 1) : ℚ) ^ (A014963 (A189833 n).toNat : ℤ)

end

end A034493.P18104646444238270929

/-! ## A034493.P7469179147687001544

`A034495(n+1)^A014963(A311523(n))`
-/

namespace A034493.P7469179147687001544
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034495 (n + 1) : ℚ) ^ (A014963 (A311523 n).toNat : ℤ)

end

end A034493.P7469179147687001544

/-!
# A034494: a(n) = (7^n+1)/2.

The programs for A034494, the canonical program `A034494.P6152540667453221608` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034494 has offset 0).

The definition of A034494 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^n+1)/2` (program `A034494.P2570903576193743711`, by `A034494.P2570903576193743711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A034494.P2570903576193743711

`(7^n+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A034494.P2570903576193743711
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 ^ n + 1 : ℚ) / 2

end

end A034494.P2570903576193743711

namespace A034494

/-- `(7^n+1)/2` -/
def P2570903576193743711.Spec : Prop :=
  ∀ n, P2570903576193743711.a n = (A034494 n : ℚ)

theorem P2570903576193743711.correct : P2570903576193743711.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A034494, Nat.add_sub_cancel, A034494.P2570903576193743711.a, A034494.P6152540667453221608.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A034494, Nat.add_sub_cancel, A034494.P2570903576193743711.a, A034494.P6152540667453221608.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A034494

/-! ## A034494.P6152540667453221608

`7*a(n-1)-3` with `a(0)=1`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034494

/-- `7*a(n-1)-3` -/
def P6152540667453221608.Spec : Prop :=
  ∀ n, P6152540667453221608.a n = A034494 n

theorem P6152540667453221608.correct : P6152540667453221608.Spec := by
  intro n
  simp only [A034494]

end A034494

/-! ## A034494.P2043019007181970930

`lcm(7, a(n-1))-3` with `a(0)=1`
-/

namespace A034494.P2043019007181970930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 7 (a (n - 1)) : ℤ) - 3

end

end A034494.P2043019007181970930

namespace A034494

/-- `lcm(7, a(n-1))-3` -/
def P2043019007181970930.Spec : Prop :=
  ∀ n, P2043019007181970930.a n = A034494 n

end A034494

/-! ## A034494.P13529144945445708229

`A073218(∑[n])`
-/

namespace A034494.P13529144945445708229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073218 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A034494.P13529144945445708229

namespace A034494

/-- `A073218(∑[n])` -/
def P13529144945445708229.Spec : Prop :=
  ∀ n, P13529144945445708229.a n = A034494 n

end A034494

/-! ## A034494.P18368311313437843809

`A120741(n)+1`
-/

namespace A034494.P18368311313437843809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120741 n + 1

end

end A034494.P18368311313437843809

namespace A034494

/-- `A120741(n)+1` -/
def P18368311313437843809.Spec : Prop :=
  ∀ n, P18368311313437843809.a n = A034494 n

end A034494

/-! ## A034494.P4969791511286988307

`round(A103458(n)/2)`
-/

namespace A034494.P4969791511286988307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A103458 n : ℚ) / 2)

end

end A034494.P4969791511286988307

namespace A034494

/-- `round(A103458(n)/2)` -/
def P4969791511286988307.Spec : Prop :=
  ∀ n, P4969791511286988307.a n = A034494 n

end A034494

/-! ## A034494.P10543998414525150657

`3*A023000(n)+1`
-/

namespace A034494.P10543998414525150657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A023000 n + 1

end

end A034494.P10543998414525150657

namespace A034494

/-- `3*A023000(n)+1` -/
def P10543998414525150657.Spec : Prop :=
  ∀ n, P10543998414525150657.a n = A034494 n

end A034494

/-! ## A034494.P10719863005907463532

`A024075(n)/2+1`
-/

namespace A034494.P10719863005907463532
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A024075 n : ℚ) / 2 + 1

end

end A034494.P10719863005907463532

namespace A034494

/-- `A024075(n)/2+1` -/
def P10719863005907463532.Spec : Prop :=
  ∀ n, P10719863005907463532.a n = (A034494 n : ℚ)

end A034494

/-! ## A034494.P902883678051872866

`A297180(3*n+1)`
-/

namespace A034494.P902883678051872866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297180 (3 * n + 1)

end

end A034494.P902883678051872866

namespace A034494

/-- `A297180(3*n+1)` -/
def P902883678051872866.Spec : Prop :=
  ∀ n, P902883678051872866.a n = A034494 n

end A034494

/-! ## A034494.P17062790608916733466

`3*A047852(n)-2`
-/

namespace A034494.P17062790608916733466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A047852 n - 2

end

end A034494.P17062790608916733466

namespace A034494

/-- `3*A047852(n)-2` -/
def P17062790608916733466.Spec : Prop :=
  ∀ n, P17062790608916733466.a n = A034494 n

end A034494

/-!
# A034496: Sum of n-th powers of divisors of 8.

The programs for A034496, the canonical program `A034496.P2641262732449208046` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A034496 has offset 0).

The definition of A034496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A034496.P2641262732449208046

`1+2^n+4^n+8^n`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A034496

/-- `1+2^n+4^n+8^n` -/
def P2641262732449208046.Spec : Prop :=
  ∀ n, (P2641262732449208046.a n : ℤ) = A034496 n

theorem P2641262732449208046.correct : P2641262732449208046.Spec := by
  intro n
  simp only [A034496]

end A034496

/-! ## A034496.P16277374835853421680

`∑{d}[-a(n-1), #^n]` with `a(0)=8`
-/

namespace A034496.P16277374835853421680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  -f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d ^ n

end

end A034496.P16277374835853421680

namespace A034496

/-- `∑{d}[-a(n-1), #^n]` -/
def P16277374835853421680.Spec : Prop :=
  ∀ n, (P16277374835853421680.a n : ℤ) = A034496 n

end A034496

/-! ## A034496.P15100561328478898423

`record[A014551(n)*A052552(n)]`
-/

namespace A034496.P15100561328478898423
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014551 n * A052552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034496.P15100561328478898423

namespace A034496

/-- `record[A014551(n)*A052552(n)]` -/
def P15100561328478898423.Spec : Prop :=
  ∀ n, P15100561328478898423.a n = A034496 n

end A034496

/-! ## A034496.P1038997618726215827

`record[A052531(n)*A052552(n)]`
-/

namespace A034496.P1038997618726215827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052531 n * A052552 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A034496.P1038997618726215827

namespace A034496

/-- `record[A052531(n)*A052552(n)]` -/
def P1038997618726215827.Spec : Prop :=
  ∀ n, P1038997618726215827.a n = A034496 n

end A034496

/-!
# A034497: Multiplicity of highest weight (or singular) vectors associated with character chi_109 of Monster module.

The programs for A034497, there is no canonical definition to state claims against.
-/

/-! ## A034497.P3796212471238035070

`A024495(n)%A292276(A034538(n+1))`
-/

namespace A034497.P3796212471238035070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024495 n) (A292276 (A034538 (n + 1)).toNat)

end

end A034497.P3796212471238035070

/-! ## A034497.P3921658252847649851

`A063503(A185255(n))`
-/

namespace A034497.P3921658252847649851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063503 (A185255 n).toNat

end

end A034497.P3921658252847649851

/-! ## A034497.P15015942016052038797

`A343380(A199840(n+1))`
-/

namespace A034497.P15015942016052038797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343380 (A199840 (n + 1)).toNat

end

end A034497.P15015942016052038797

/-! ## A034497.P11099114878187249186

`A039663(A034553(n+2))`
-/

namespace A034497.P11099114878187249186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039663 (A034553 (n + 2)).toNat

end

end A034497.P11099114878187249186

/-! ## A034497.P1588436275438365830

`A089840(A034539(n+2))`
-/

namespace A034497.P1588436275438365830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089840 (A034539 (n + 2)).toNat

end

end A034497.P1588436275438365830

/-!
# A034499: Multiplicity of highest weight (or singular) vectors associated with character chi_111 of Monster module.

The programs for A034499, there is no canonical definition to state claims against.
-/

/-! ## A034499.P17262061870033065519

`A034500(n+1)+Δ[A131469(A034521(n+1))]`
-/

namespace A034499.P17262061870033065519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131469 (A034521 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034500 (n + 1) + (f1 (n + 1) - f1 n)

end

end A034499.P17262061870033065519

/-! ## A034499.P10510344915275708813

`A262882(A034522(n+3))`
-/

namespace A034499.P10510344915275708813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A034522 (n + 3)).toNat

end

end A034499.P10510344915275708813

/-! ## A034499.P16773318026164459235

`A111660(Δ[5*A034505(n+1)])`
-/

namespace A034499.P16773318026164459235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A034505 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111660 (f1 (n + 1) - f1 n).toNat

end

end A034499.P16773318026164459235

/-! ## A034499.P15706558134436228196

`A262882(A034505(n+1)+A034500(n+1))`
-/

namespace A034499.P15706558134436228196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A034505 (n + 1) + A034500 (n + 1)).toNat

end

end A034499.P15706558134436228196

/-! ## A034499.P3081643326135213373

`A262882(A034506(n+1)+A034500(n+1))`
-/

namespace A034499.P3081643326135213373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262882 (A034506 (n + 1) + A034500 (n + 1)).toNat

end

end A034499.P3081643326135213373

