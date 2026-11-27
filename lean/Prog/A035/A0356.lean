import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
import Seq.B006.C001
import Seq.B006.C002
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
# A035600: Number of points of L1 norm 6 in cubic lattice Z^n.

The programs for A035600, the canonical program `A035600.P16790839402554441971` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035600 has offset 0).

The definition of A035600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035600.P918572340627887469

`ogf((2x+10x^2+20x^3+20x^4+10x^5+2x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`
-/

namespace A035600.P918572340627887469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 10, 20, 20, 10, 2] [1, -7, 21, -35, 35, -21, 7, -1] n

end

end A035600.P918572340627887469

namespace A035600

/-- `ogf((2x+10x^2+20x^3+20x^4+10x^5+2x^6)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P918572340627887469.Spec : Prop :=
  ∀ n, P918572340627887469.a n = A035600 n

end A035600

/-! ## A035600.P16790839402554441971

`(4*n^6+40*n^4+46*n²)/45`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035600

/-- `(4*n^6+40*n^4+46*n²)/45` -/
def P16790839402554441971.Spec : Prop :=
  ∀ n, P16790839402554441971.a n = (A035600 n : ℚ)

end A035600

/-! ## A035600.P16404044998788724492

`2*A069039(n)`
-/

namespace A035600.P16404044998788724492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A069039 n

end

end A035600.P16404044998788724492

namespace A035600

/-- `2*A069039(n)` -/
def P16404044998788724492.Spec : Prop :=
  ∀ n, P16404044998788724492.a n = A035600 n

end A035600

/-! ## A035600.P13080808980986579877

`12*a(n-1)/(n-1)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A035600.P13080808980986579877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  12 * a (n - 1) / ((n : ℤ) - 1 : ℚ) + a (n - 2)

end

end A035600.P13080808980986579877

namespace A035600

/-- `12*a(n-1)/(n-1)+a(n-2)` -/
def P13080808980986579877.Spec : Prop :=
  ∀ n, P13080808980986579877.a n = (A035600 n : ℚ)

end A035600

/-! ## A035600.P52313664487626873

`n/3*A364429(n)`
-/

namespace A035600.P52313664487626873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 3 * (A364429 n : ℚ)

end

end A035600.P52313664487626873

namespace A035600

/-- `n/3*A364429(n)` -/
def P52313664487626873.Spec : Prop :=
  ∀ n, P52313664487626873.a n = (A035600 n : ℚ)

end A035600

/-! ## A035600.P17271433115228298751

`∑[∑[∑[2*A287324(n)]]]`
-/

namespace A035600.P17271433115228298751
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A287324 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035600.P17271433115228298751

namespace A035600

/-- `∑[∑[∑[2*A287324(n)]]]` -/
def P17271433115228298751.Spec : Prop :=
  ∀ n, P17271433115228298751.a n = A035600 n

end A035600

/-! ## A035600.P384183861783965347

`n/2*A008414(n)/3`
-/

namespace A035600.P384183861783965347
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * ((A008414 n : ℚ) / 3)

end

end A035600.P384183861783965347

namespace A035600

/-- `n/2*A008414(n)/3` -/
def P384183861783965347.Spec : Prop :=
  ∀ n, P384183861783965347.a n = (A035600 n : ℚ)

end A035600

/-! ## A035600.P17303911572706324919

`A001848(n)-A001847(n)`
-/

namespace A035600.P17303911572706324919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n - A001847 n

end

end A035600.P17303911572706324919

namespace A035600

/-- `A001848(n)-A001847(n)` -/
def P17303911572706324919.Spec : Prop :=
  ∀ n, P17303911572706324919.a n = A035600 n

end A035600

/-! ## A035600.P1010161421881417812

`∑[2*A035599(n)]-A035599(n)`
-/

namespace A035600.P1010161421881417812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035599 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035599 n

end

end A035600.P1010161421881417812

namespace A035600

/-- `∑[2*A035599(n)]-A035599(n)` -/
def P1010161421881417812.Spec : Prop :=
  ∀ n, P1010161421881417812.a n = A035600 n

end A035600

/-! ## A035600.P1818343918554577973

`A069039(A005843(n)/2)+A069039(n)`
-/

namespace A035600.P1818343918554577973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A069039 n

end

end A035600.P1818343918554577973

namespace A035600

/-- `A069039(A005843(n)/2)+A069039(n)` -/
def P1818343918554577973.Spec : Prop :=
  ∀ n, P1818343918554577973.a n = A035600 n

end A035600

/-! ## A035600.P16219846641033003090

`A001848(n)-(A035599(n)+A001846(n))`
-/

namespace A035600.P16219846641033003090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n - (A035599 n + A001846 n)

end

end A035600.P16219846641033003090

namespace A035600

/-- `A001848(n)-(A035599(n)+A001846(n))` -/
def P16219846641033003090.Spec : Prop :=
  ∀ n, P16219846641033003090.a n = A035600 n

end A035600

/-! ## A035600.P3832188039748025842

`A069039(A005843(n)-n)+A069039(n)`
-/

namespace A035600.P3832188039748025842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 (A005843 n - (n : ℤ)).toNat + A069039 n

end

end A035600.P3832188039748025842

namespace A035600

/-- `A069039(A005843(n)-n)+A069039(n)` -/
def P3832188039748025842.Spec : Prop :=
  ∀ n, P3832188039748025842.a n = A035600 n

end A035600

/-! ## A035600.P9841711584322656989

`A069039(n+1)+A069039(n)-A001847(n)`
-/

namespace A035600.P9841711584322656989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069039 (n + 1) + (A069039 n - A001847 n)

end

end A035600.P9841711584322656989

namespace A035600

/-- `A069039(n+1)+A069039(n)-A001847(n)` -/
def P9841711584322656989.Spec : Prop :=
  ∀ n, P9841711584322656989.a n = A035600 n

end A035600

/-! ## A035600.P17123275029972894513

`A001848(n)+A069039(n)-A069039(n+1)`
-/

namespace A035600.P17123275029972894513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n + (A069039 n - A069039 (n + 1))

end

end A035600.P17123275029972894513

namespace A035600

/-- `A001848(n)+A069039(n)-A069039(n+1)` -/
def P17123275029972894513.Spec : Prop :=
  ∀ n, P17123275029972894513.a n = A035600 n

end A035600

/-!
# A035601: Number of points of L1 norm 7 in cubic lattice Z^n.

The programs for A035601, the canonical program `A035601.P1303867217452346543` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035601 has offset 0).

The definition of A035601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035601.P9960026639490463375

`ogf((2x+12x^2+30x^3+40x^4+30x^5+12x^6+2x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))`
-/

namespace A035601.P9960026639490463375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 12, 30, 40, 30, 12, 2] [1, -8, 28, -56, 70, -56, 28, -8, 1] n

end

end A035601.P9960026639490463375

namespace A035601

/-- `ogf((2x+12x^2+30x^3+40x^4+30x^5+12x^6+2x^7)/(1-8x+28x^2-56x^3+70x^4-56x^5+28x^6-8x^7+x^8))` -/
def P9960026639490463375.Spec : Prop :=
  ∀ n, P9960026639490463375.a n = A035601 n

end A035601

/-! ## A035601.P1303867217452346543

`(8*n^7+140*n^5+392*n^3+90*n)/315`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035601

/-- `(8*n^7+140*n^5+392*n^3+90*n)/315` -/
def P1303867217452346543.Spec : Prop :=
  ∀ n, P1303867217452346543.a n = (A035601 n : ℚ)

end A035601

/-! ## A035601.P18152443761778306162

`2*A099193(n)`
-/

namespace A035601.P18152443761778306162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099193 n

end

end A035601.P18152443761778306162

namespace A035601

/-- `2*A099193(n)` -/
def P18152443761778306162.Spec : Prop :=
  ∀ n, P18152443761778306162.a n = A035601 n

end A035601

/-! ## A035601.P13886921621419582801

`n/7*A008415(n)`
-/

namespace A035601.P13886921621419582801
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 7 * (A008415 n : ℚ)

end

end A035601.P13886921621419582801

namespace A035601

/-- `n/7*A008415(n)` -/
def P13886921621419582801.Spec : Prop :=
  ∀ n, P13886921621419582801.a n = (A035601 n : ℚ)

end A035601

/-! ## A035601.P11027295878836765326

`A001849(n)-A001848(n)`
-/

namespace A035601.P11027295878836765326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 n - A001848 n

end

end A035601.P11027295878836765326

namespace A035601

/-- `A001849(n)-A001848(n)` -/
def P11027295878836765326.Spec : Prop :=
  ∀ n, P11027295878836765326.a n = A035601 n

end A035601

/-! ## A035601.P13830089481056819056

`A001849(n)-∑[A008414(n)]`
-/

namespace A035601.P13830089481056819056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001849 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035601.P13830089481056819056

namespace A035601

/-- `A001849(n)-∑[A008414(n)]` -/
def P13830089481056819056.Spec : Prop :=
  ∀ n, P13830089481056819056.a n = A035601 n

end A035601

/-! ## A035601.P17859590831030902947

`∑[A008415(n)]-A001848(n)`
-/

namespace A035601.P17859590831030902947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001848 n

end

end A035601.P17859590831030902947

namespace A035601

/-- `∑[A008415(n)]-A001848(n)` -/
def P17859590831030902947.Spec : Prop :=
  ∀ n, P17859590831030902947.a n = A035601 n

end A035601

/-! ## A035601.P12521535299210819556

`∑[A008415(n)-A008414(n)]`
-/

namespace A035601.P12521535299210819556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008415 n - A008414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035601.P12521535299210819556

namespace A035601

/-- `∑[A008415(n)-A008414(n)]` -/
def P12521535299210819556.Spec : Prop :=
  ∀ n, P12521535299210819556.a n = A035601 n

end A035601

/-! ## A035601.P14285606983370200896

`∑[2*A035600(n)]-A035600(n)`
-/

namespace A035601.P14285606983370200896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035600 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035600 n

end

end A035601.P14285606983370200896

namespace A035601

/-- `∑[2*A035600(n)]-A035600(n)` -/
def P14285606983370200896.Spec : Prop :=
  ∀ n, P14285606983370200896.a n = A035601 n

end A035601

/-! ## A035601.P14373108107799020404

`A099193(n)+A099193(n%(n+1))`
-/

namespace A035601.P14373108107799020404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 n + A099193 (n % (n + 1))

end

end A035601.P14373108107799020404

namespace A035601

/-- `A099193(n)+A099193(n%(n+1))` -/
def P14373108107799020404.Spec : Prop :=
  ∀ n, P14373108107799020404.a n = A035601 n

end A035601

/-! ## A035601.P549203277801678445

`A099193(A005843(n)/2)+A099193(n)`
-/

namespace A035601.P549203277801678445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A099193 n

end

end A035601.P549203277801678445

namespace A035601

/-- `A099193(A005843(n)/2)+A099193(n)` -/
def P549203277801678445.Spec : Prop :=
  ∀ n, P549203277801678445.a n = A035601 n

end A035601

/-! ## A035601.P10731178302851334912

`A099193(A005843(n)-n)+A099193(n)`
-/

namespace A035601.P10731178302851334912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 (A005843 n - (n : ℤ)).toNat + A099193 n

end

end A035601.P10731178302851334912

namespace A035601

/-- `A099193(A005843(n)-n)+A099193(n)` -/
def P10731178302851334912.Spec : Prop :=
  ∀ n, P10731178302851334912.a n = A035601 n

end A035601

/-! ## A035601.P3524963728750557763

`A099193(or(n, A292272(n)))+A099193(n)`
-/

namespace A035601.P3524963728750557763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099193 (Int.lor (n : ℤ) (A292272 n)).toNat + A099193 n

end

end A035601.P3524963728750557763

namespace A035601

/-- `A099193(or(n, A292272(n)))+A099193(n)` -/
def P3524963728750557763.Spec : Prop :=
  ∀ n, P3524963728750557763.a n = A035601 n

end A035601

/-! ## A035601.P5488241206370139031

`∑[A001848(n)]+A099193(n)-A001848(n)`
-/

namespace A035601.P5488241206370139031
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001848 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A099193 n - A001848 n)

end

end A035601.P5488241206370139031

namespace A035601

/-- `∑[A001848(n)]+A099193(n)-A001848(n)` -/
def P5488241206370139031.Spec : Prop :=
  ∀ n, P5488241206370139031.a n = A035601 n

end A035601

/-!
# A035602: Number of points of L1 norm 8 in cubic lattice Z^n.

The programs for A035602, the canonical program `A035602.P11295284103592876625` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035602 has offset 0).

The definition of A035602 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035602.P11944707155541730423

`ogf((2x+14x^2+42x^3+70x^4+70x^5+42x^6+14x^7+2x^8)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))`
-/

namespace A035602.P11944707155541730423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 14, 42, 70, 70, 42, 14, 2] [1, -9, 36, -84, 126, -126, 84, -36, 9, -1] n

end

end A035602.P11944707155541730423

namespace A035602

/-- `ogf((2x+14x^2+42x^3+70x^4+70x^5+42x^6+14x^7+2x^8)/(1-9x+36x^2-84x^3+126x^4-126x^5+84x^6-36x^7+9x^8-x^9))` -/
def P11944707155541730423.Spec : Prop :=
  ∀ n, P11944707155541730423.a n = A035602 n

end A035602

/-! ## A035602.P16528086253765950299

`2*n²*(n^6+28*n^4+154*n²+132)/315`
-/

namespace A035602.P16528086253765950299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n ^ 2 * (n ^ 6 + 28 * n ^ 4 + 154 * n ^ 2 + 132) : ℚ) / 315

end

end A035602.P16528086253765950299

namespace A035602

/-- `2*n²*(n^6+28*n^4+154*n²+132)/315` -/
def P16528086253765950299.Spec : Prop :=
  ∀ n, P16528086253765950299.a n = (A035602 n : ℚ)

end A035602

/-! ## A035602.P11295284103592876625

`2*A099195(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035602

/-- `2*A099195(n)` -/
def P11295284103592876625.Spec : Prop :=
  ∀ n, P11295284103592876625.a n = A035602 n

theorem P11295284103592876625.correct : P11295284103592876625.Spec := by
  intro n
  simp only [A035602]

end A035602

/-! ## A035602.P14696110815662914810

`n*A008416(n)/8`
-/

namespace A035602.P14696110815662914810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A008416 n : ℚ) / 8)

end

end A035602.P14696110815662914810

namespace A035602

/-- `n*A008416(n)/8` -/
def P14696110815662914810.Spec : Prop :=
  ∀ n, P14696110815662914810.a n = (A035602 n : ℚ)

end A035602

/-! ## A035602.P7020324453775776394

`A008417(n)-A001849(n)`
-/

namespace A035602.P7020324453775776394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008417 n - A001849 n

end

end A035602.P7020324453775776394

namespace A035602

/-- `A008417(n)-A001849(n)` -/
def P7020324453775776394.Spec : Prop :=
  ∀ n, P7020324453775776394.a n = A035602 n

end A035602

/-! ## A035602.P8111226858553620864

`∑[A008416(n)]-A001849(n)`
-/

namespace A035602.P8111226858553620864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001849 n

end

end A035602.P8111226858553620864

namespace A035602

/-- `∑[A008416(n)]-A001849(n)` -/
def P8111226858553620864.Spec : Prop :=
  ∀ n, P8111226858553620864.a n = A035602 n

end A035602

/-! ## A035602.P8253660505070182298

`Δ[A099196(n)]-A001849(n)`
-/

namespace A035602.P8253660505070182298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001849 n

end

end A035602.P8253660505070182298

namespace A035602

/-- `Δ[A099196(n)]-A001849(n)` -/
def P8253660505070182298.Spec : Prop :=
  ∀ n, P8253660505070182298.a n = A035602 n

end A035602

/-! ## A035602.P14240369049360755815

`∑[2*A035601(n)]-A035601(n)`
-/

namespace A035602.P14240369049360755815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035601 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035601 n

end

end A035602.P14240369049360755815

namespace A035602

/-- `∑[2*A035601(n)]-A035601(n)` -/
def P14240369049360755815.Spec : Prop :=
  ∀ n, P14240369049360755815.a n = A035602 n

end A035602

/-! ## A035602.P788809826272670775

`A099195(A005843(n)/2)+A099195(n)`
-/

namespace A035602.P788809826272670775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A099195 n

end

end A035602.P788809826272670775

namespace A035602

/-- `A099195(A005843(n)/2)+A099195(n)` -/
def P788809826272670775.Spec : Prop :=
  ∀ n, P788809826272670775.a n = A035602 n

end A035602

/-! ## A035602.P12274359895832390061

`A099195(A005843(n)-n)+A099195(n)`
-/

namespace A035602.P12274359895832390061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099195 (A005843 n - (n : ℤ)).toNat + A099195 n

end

end A035602.P12274359895832390061

namespace A035602

/-- `A099195(A005843(n)-n)+A099195(n)` -/
def P12274359895832390061.Spec : Prop :=
  ∀ n, P12274359895832390061.a n = A035602 n

end A035602

/-! ## A035602.P6865454556100849810

`A099196(n+1)-(A099196(n)+A001849(n))`
-/

namespace A035602.P6865454556100849810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (n + 1) - (A099196 n + A001849 n)

end

end A035602.P6865454556100849810

namespace A035602

/-- `A099196(n+1)-(A099196(n)+A001849(n))` -/
def P6865454556100849810.Spec : Prop :=
  ∀ n, P6865454556100849810.a n = A035602 n

end A035602

/-! ## A035602.P8694730420999467161

`A008417(n)-(A099193(n+1)+A099193(n))`
-/

namespace A035602.P8694730420999467161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008417 n - (A099193 (n + 1) + A099193 n)

end

end A035602.P8694730420999467161

namespace A035602

/-- `A008417(n)-(A099193(n+1)+A099193(n))` -/
def P8694730420999467161.Spec : Prop :=
  ∀ n, P8694730420999467161.a n = A035602 n

end A035602

/-!
# A035603: Number of points of L1 norm 9 in cubic lattice Z^n.

The programs for A035603, the canonical program `A035603.P5033389381879539558` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035603 has offset 0).

The definition of A035603 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035603.P8216619325521160577

`ogf((2x+16x^2+56x^3+112x^4+140x^5+112x^6+56x^7+16x^8+2x^9)/(1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10))`
-/

namespace A035603.P8216619325521160577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 16, 56, 112, 140, 112, 56, 16, 2] [1, -10, 45, -120, 210, -252, 210, -120, 45, -10, 1] n

end

end A035603.P8216619325521160577

namespace A035603

/-- `ogf((2x+16x^2+56x^3+112x^4+140x^5+112x^6+56x^7+16x^8+2x^9)/(1-10x+45x^2-120x^3+210x^4-252x^5+210x^6-120x^7+45x^8-10x^9+x^10))` -/
def P8216619325521160577.Spec : Prop :=
  ∀ n, P8216619325521160577.a n = A035603 n

end A035603

/-! ## A035603.P5033389381879539558

`2*A099196(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035603

/-- `2*A099196(n)` -/
def P5033389381879539558.Spec : Prop :=
  ∀ n, P5033389381879539558.a n = A035603 n

theorem P5033389381879539558.correct : P5033389381879539558.Spec := by
  intro n
  simp only [A035603]

end A035603

/-! ## A035603.P13188836954234037992

`n/9*A008418(n)`
-/

namespace A035603.P13188836954234037992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 9 * (A008418 n : ℚ)

end

end A035603.P13188836954234037992

namespace A035603

/-- `n/9*A008418(n)` -/
def P13188836954234037992.Spec : Prop :=
  ∀ n, P13188836954234037992.a n = (A035603 n : ℚ)

end A035603

/-! ## A035603.P9359885272986108361

`A008419(n)-A008417(n)`
-/

namespace A035603.P9359885272986108361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n - A008417 n

end

end A035603.P9359885272986108361

namespace A035603

/-- `A008419(n)-A008417(n)` -/
def P9359885272986108361.Spec : Prop :=
  ∀ n, P9359885272986108361.a n = A035603 n

end A035603

/-! ## A035603.P4362285385264047620

`∑[A008418(n)-A008416(n)]`
-/

namespace A035603.P4362285385264047620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008418 n - A008416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035603.P4362285385264047620

namespace A035603

/-- `∑[A008418(n)-A008416(n)]` -/
def P4362285385264047620.Spec : Prop :=
  ∀ n, P4362285385264047620.a n = A035603 n

end A035603

/-! ## A035603.P18137864137526368094

`A008419(n)-∑[A008416(n)]`
-/

namespace A035603.P18137864137526368094
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008416 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035603.P18137864137526368094

namespace A035603

/-- `A008419(n)-∑[A008416(n)]` -/
def P18137864137526368094.Spec : Prop :=
  ∀ n, P18137864137526368094.a n = A035603 n

end A035603

/-! ## A035603.P803263579175720344

`A008419(n)-Δ[A099196(n)]`
-/

namespace A035603.P803263579175720344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008419 n - (f1 (n + 1) - f1 n)

end

end A035603.P803263579175720344

namespace A035603

/-- `A008419(n)-Δ[A099196(n)]` -/
def P803263579175720344.Spec : Prop :=
  ∀ n, P803263579175720344.a n = A035603 n

end A035603

/-! ## A035603.P243408170815970568

`∑[2*(A008417(n)-A008416(n))]`
-/

namespace A035603.P243408170815970568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A008417 n - A008416 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035603.P243408170815970568

namespace A035603

/-- `∑[2*(A008417(n)-A008416(n))]` -/
def P243408170815970568.Spec : Prop :=
  ∀ n, P243408170815970568.a n = A035603 n

end A035603

/-! ## A035603.P12804949232950695048

`∑[2*A035602(n)]-A035602(n)`
-/

namespace A035603.P12804949232950695048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035602 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035602 n

end

end A035603.P12804949232950695048

namespace A035603

/-- `∑[2*A035602(n)]-A035602(n)` -/
def P12804949232950695048.Spec : Prop :=
  ∀ n, P12804949232950695048.a n = A035603 n

end A035603

/-! ## A035603.P14332093609640204515

`A099196(A005843(n)/2)+A099196(n)`
-/

namespace A035603.P14332093609640204515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A099196 n

end

end A035603.P14332093609640204515

namespace A035603

/-- `A099196(A005843(n)/2)+A099196(n)` -/
def P14332093609640204515.Spec : Prop :=
  ∀ n, P14332093609640204515.a n = A035603 n

end A035603

/-! ## A035603.P12998952854546671820

`A099196(A005843(n)-n)+A099196(n)`
-/

namespace A035603.P12998952854546671820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (A005843 n - (n : ℤ)).toNat + A099196 n

end

end A035603.P12998952854546671820

namespace A035603

/-- `A099196(A005843(n)-n)+A099196(n)` -/
def P12998952854546671820.Spec : Prop :=
  ∀ n, P12998952854546671820.a n = A035603 n

end A035603

/-! ## A035603.P13856960599383661069

`∑[A008417(n)]+A099196(n)-A008417(n)`
-/

namespace A035603.P13856960599383661069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008417 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A099196 n - A008417 n)

end

end A035603.P13856960599383661069

namespace A035603

/-- `∑[A008417(n)]+A099196(n)-A008417(n)` -/
def P13856960599383661069.Spec : Prop :=
  ∀ n, P13856960599383661069.a n = A035603 n

end A035603

/-! ## A035603.P11814824937159690655

`A099196(n+1)+A099196(n)-A008417(n)`
-/

namespace A035603.P11814824937159690655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 (n + 1) + (A099196 n - A008417 n)

end

end A035603.P11814824937159690655

namespace A035603

/-- `A099196(n+1)+A099196(n)-A008417(n)` -/
def P11814824937159690655.Spec : Prop :=
  ∀ n, P11814824937159690655.a n = A035603 n

end A035603

/-! ## A035603.P3765790319133247422

`A099196(n)+A099196(n%A038221(n))`
-/

namespace A035603.P3765790319133247422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099196 n + A099196 (Int.tmod (n : ℤ) (A038221 n)).toNat

end

end A035603.P3765790319133247422

namespace A035603

/-- `A099196(n)+A099196(n%A038221(n))` -/
def P3765790319133247422.Spec : Prop :=
  ∀ n, P3765790319133247422.a n = A035603 n

end A035603

/-!
# A035604: Number of points of L1 norm 10 in cubic lattice Z^n.

The programs for A035604, the canonical program `A035604.P40572468847417807` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035604 has offset 0).

The definition of A035604 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035604.P6052758277340229081

`ogf((2x+18x^2+72x^3+168x^4+252x^5+252x^6+168x^7+72x^8+18x^9+2x^10)/(1-11x+55x^2-165x^3+330x^4-462x^5+462x^6-330x^7+165x^8-55x^9+11x^10-x^11))`
-/

namespace A035604.P6052758277340229081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 18, 72, 168, 252, 252, 168, 72, 18, 2] [1, -11, 55, -165, 330, -462, 462, -330, 165, -55, 11, -1] n

end

end A035604.P6052758277340229081

namespace A035604

/-- `ogf((2x+18x^2+72x^3+168x^4+252x^5+252x^6+168x^7+72x^8+18x^9+2x^10)/(1-11x+55x^2-165x^3+330x^4-462x^5+462x^6-330x^7+165x^8-55x^9+11x^10-x^11))` -/
def P6052758277340229081.Spec : Prop :=
  ∀ n, P6052758277340229081.a n = A035604 n

end A035604

/-! ## A035604.P4496248476466646212

`2*A099197(n)`
-/

namespace A035604.P4496248476466646212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099197 n

end

end A035604.P4496248476466646212

namespace A035604

/-- `2*A099197(n)` -/
def P4496248476466646212.Spec : Prop :=
  ∀ n, P4496248476466646212.a n = A035604 n

end A035604

/-! ## A035604.P40572468847417807

`a(n-1)+A035603(n)+A035603(n-1)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A035604

/-- `a(n-1)+A035603(n)+A035603(n-1)` -/
def P40572468847417807.Spec : Prop :=
  ∀ n, P40572468847417807.a n = A035604 n

theorem P40572468847417807.correct : P40572468847417807.Spec := by
  intro n
  simp only [A035604]

end A035604

/-! ## A035604.P15448750732314462877

`20*a(n-1)/(n-1)+a(n-2)` with `a(0)=0, a(1)=2`
-/

namespace A035604.P15448750732314462877
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 2] fun n a =>
  20 * (a (n - 1) / ((n : ℤ) - 1 : ℚ)) + a (n - 2)

end

end A035604.P15448750732314462877

namespace A035604

/-- `20*a(n-1)/(n-1)+a(n-2)` -/
def P15448750732314462877.Spec : Prop :=
  ∀ n, P15448750732314462877.a n = (A035604 n : ℚ)

end A035604

/-! ## A035604.P7859339513024278206

`A008420(n)/10*n`
-/

namespace A035604.P7859339513024278206
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008420 n : ℚ) / 10 * (n : ℚ)

end

end A035604.P7859339513024278206

namespace A035604

/-- `A008420(n)/10*n` -/
def P7859339513024278206.Spec : Prop :=
  ∀ n, P7859339513024278206.a n = (A035604 n : ℚ)

end A035604

/-! ## A035604.P16838372770043412984

`A008421(n)-A008419(n)`
-/

namespace A035604.P16838372770043412984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008421 n - A008419 n

end

end A035604.P16838372770043412984

namespace A035604

/-- `A008421(n)-A008419(n)` -/
def P16838372770043412984.Spec : Prop :=
  ∀ n, P16838372770043412984.a n = A035604 n

end A035604

/-! ## A035604.P5707940388300735980

`∑[2*A035603(n)]-A035603(n)`
-/

namespace A035604.P5707940388300735980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035603 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035603 n

end

end A035604.P5707940388300735980

namespace A035604

/-- `∑[2*A035603(n)]-A035603(n)` -/
def P5707940388300735980.Spec : Prop :=
  ∀ n, P5707940388300735980.a n = A035604 n

end A035604

/-! ## A035604.P7829192735054040935

`2*(∑[2*A099196(n)]-A099196(n))`
-/

namespace A035604.P7829192735054040935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A099196 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - A099196 n)

end

end A035604.P7829192735054040935

namespace A035604

/-- `2*(∑[2*A099196(n)]-A099196(n))` -/
def P7829192735054040935.Spec : Prop :=
  ∀ n, P7829192735054040935.a n = A035604 n

end A035604

/-! ## A035604.P6839417420095033603

`A099197(A005843(n)/2)+A099197(n)`
-/

namespace A035604.P6839417420095033603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099197 (SequenceMachineLib.roundAway ((A005843 n : ℚ) / 2)).toNat + A099197 n

end

end A035604.P6839417420095033603

namespace A035604

/-- `A099197(A005843(n)/2)+A099197(n)` -/
def P6839417420095033603.Spec : Prop :=
  ∀ n, P6839417420095033603.a n = A035604 n

end A035604

/-! ## A035604.P17894562107263651087

`A099197(A005843(n)-n)+A099197(n)`
-/

namespace A035604.P17894562107263651087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099197 (A005843 n - (n : ℤ)).toNat + A099197 n

end

end A035604.P17894562107263651087

namespace A035604

/-- `A099197(A005843(n)-n)+A099197(n)` -/
def P17894562107263651087.Spec : Prop :=
  ∀ n, P17894562107263651087.a n = A035604 n

end A035604

/-! ## A035604.P13040934208586920092

`A008421(n)-(A099196(n+1)+A099196(n))`
-/

namespace A035604.P13040934208586920092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008421 n - (A099196 (n + 1) + A099196 n)

end

end A035604.P13040934208586920092

namespace A035604

/-- `A008421(n)-(A099196(n+1)+A099196(n))` -/
def P13040934208586920092.Spec : Prop :=
  ∀ n, P13040934208586920092.a n = A035604 n

end A035604

/-! ## A035604.P3011345734773796549

`A099197(n)+A099197(n)/A003114(A058306(n))`
-/

namespace A035604.P3011345734773796549
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A099197 n : ℚ) + (A099197 n : ℚ) / (A003114 (A058306 n).toNat : ℚ)

end

end A035604.P3011345734773796549

namespace A035604

/-- `A099197(n)+A099197(n)/A003114(A058306(n))` -/
def P3011345734773796549.Spec : Prop :=
  ∀ n, P3011345734773796549.a n = (A035604 n : ℚ)

end A035604

/-!
# A035605: Number of points of L1 norm 11 in cubic lattice Z^n.

The programs for A035605, the canonical program `A035605.P11180636216770319209` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035605 has offset 0).

The definition of A035605 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035605.P11180636216770319209

`ogf((2x+20x^2+90x^3+240x^4+420x^5+504x^6+420x^7+240x^8+90x^9+20x^10+2x^11)/(1-12x+66x^2-220x^3+495x^4-792x^5+924x^6-792x^7+495x^8-220x^9+66x^10-12x^11+x^12))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035605

/-- `ogf((2x+20x^2+90x^3+240x^4+420x^5+504x^6+420x^7+240x^8+90x^9+20x^10+2x^11)/(1-12x+66x^2-220x^3+495x^4-792x^5+924x^6-792x^7+495x^8-220x^9+66x^10-12x^11+x^12))` -/
def P11180636216770319209.Spec : Prop :=
  ∀ n, P11180636216770319209.a n = A035605 n

theorem P11180636216770319209.correct : P11180636216770319209.Spec := by
  intro n
  simp only [A035605]

end A035605

/-! ## A035605.P8016562028173320135

`2*A300624(n)`
-/

namespace A035605.P8016562028173320135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A300624 n

end

end A035605.P8016562028173320135

namespace A035605

/-- `2*A300624(n)` -/
def P8016562028173320135.Spec : Prop :=
  ∀ n, P8016562028173320135.a n = A035605 n

end A035605

/-! ## A035605.P12398268495685427744

`n/11*A035706(n)`
-/

namespace A035605.P12398268495685427744
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 11 * (A035706 n : ℚ)

end

end A035605.P12398268495685427744

namespace A035605

/-- `n/11*A035706(n)` -/
def P12398268495685427744.Spec : Prop :=
  ∀ n, P12398268495685427744.a n = (A035605 n : ℚ)

end A035605

/-! ## A035605.P6929353404158913088

`A240876(n)-A008421(n)`
-/

namespace A035605.P6929353404158913088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240876 n - A008421 n

end

end A035605.P6929353404158913088

namespace A035605

/-- `A240876(n)-A008421(n)` -/
def P6929353404158913088.Spec : Prop :=
  ∀ n, P6929353404158913088.a n = A035605 n

end A035605

/-! ## A035605.P8746881321390343686

`∑[2*A035604(n)]-A035604(n)`
-/

namespace A035605.P8746881321390343686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035604 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A035604 n

end

end A035605.P8746881321390343686

namespace A035605

/-- `∑[2*A035604(n)]-A035604(n)` -/
def P8746881321390343686.Spec : Prop :=
  ∀ n, P8746881321390343686.a n = A035605 n

end A035605

/-! ## A035605.P13637992616639927260

`A300624(n)+A300624(n%(n+1))`
-/

namespace A035605.P13637992616639927260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300624 n + A300624 (n % (n + 1))

end

end A035605.P13637992616639927260

namespace A035605

/-- `A300624(n)+A300624(n%(n+1))` -/
def P13637992616639927260.Spec : Prop :=
  ∀ n, P13637992616639927260.a n = A035605 n

end A035605

/-! ## A035605.P15450419521508567995

`∑[2*(∑[A008420(n)]-A008420(n))]`
-/

namespace A035605.P15450419521508567995
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008420 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f2 j - A008420 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035605.P15450419521508567995

namespace A035605

/-- `∑[2*(∑[A008420(n)]-A008420(n))]` -/
def P15450419521508567995.Spec : Prop :=
  ∀ n, P15450419521508567995.a n = A035605 n

end A035605

/-!
# A035606: Number of points of L1 norm 12 in cubic lattice Z^n.

The programs for A035606, the canonical program `A035606.P15826716796151369121` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035606 has offset 0).

The definition of A035606 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035606.P15560727577176765727

`n/12*A035707(n)`
-/

namespace A035606.P15560727577176765727
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 12 * (A035707 n : ℚ)

end

end A035606.P15560727577176765727

namespace A035606

/-- `n/12*A035707(n)` -/
def P15560727577176765727.Spec : Prop :=
  ∀ n, P15560727577176765727.a n = (A035606 n : ℚ)

end A035606

/-! ## A035606.P16235612076650002388

`A053805(n)-A240876(n)`
-/

namespace A035606.P16235612076650002388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053805 n - A240876 n

end

end A035606.P16235612076650002388

namespace A035606

/-- `A053805(n)-A240876(n)` -/
def P16235612076650002388.Spec : Prop :=
  ∀ n, P16235612076650002388.a n = A035606 n

end A035606

/-! ## A035606.P14937264229626967058

`∑[A035707(n)-A035706(n)]`
-/

namespace A035606.P14937264229626967058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035707 n - A035706 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035606.P14937264229626967058

namespace A035606

/-- `∑[A035707(n)-A035706(n)]` -/
def P14937264229626967058.Spec : Prop :=
  ∀ n, P14937264229626967058.a n = A035606 n

end A035606

/-! ## A035606.P5791489854884790089

`(A035708(n)-A035706(n))/2`
-/

namespace A035606.P5791489854884790089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035708 n - A035706 n : ℚ) / 2

end

end A035606.P5791489854884790089

namespace A035606

/-- `(A035708(n)-A035706(n))/2` -/
def P5791489854884790089.Spec : Prop :=
  ∀ n, P5791489854884790089.a n = (A035606 n : ℚ)

theorem P5791489854884790089.correct : P5791489854884790089.Spec := by
  intro n
  simp only [A035606, Nat.add_sub_cancel, A035606.P5791489854884790089.a, A035606.P15826716796151369121.f1, A035606.P15826716796151369121.a, A035605, A035605.P11180636216770319209.a, A035706, A035706.P4382289677266167437.a, A035708, A035708.P6521280316452753711.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A035606

/-! ## A035606.P15826716796151369121

`∑[2*A035605(n)]-A035605(n)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035606

/-- `∑[2*A035605(n)]-A035605(n)` -/
def P15826716796151369121.Spec : Prop :=
  ∀ n, P15826716796151369121.a n = A035606 n

theorem P15826716796151369121.correct : P15826716796151369121.Spec := by
  intro n
  simp only [A035606]

end A035606

/-! ## A035606.P14707843636881018896

`2*∑{#}[n, #*A035706(n-#)]`
-/

namespace A035606.P14707843636881018896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ k ∈ Finset.range (f1 n + 1), (k : ℤ) * A035706 (n - k))

end

end A035606.P14707843636881018896

namespace A035606

/-- `2*∑{#}[n, #*A035706(n-#)]` -/
def P14707843636881018896.Spec : Prop :=
  ∀ n, P14707843636881018896.a n = A035606 n

end A035606

/-! ## A035606.P9428771705285035864

`A266213(A000096(n+11)+13)`
-/

namespace A035606.P9428771705285035864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A000096 (n + 11) + 13).toNat

end

end A035606.P9428771705285035864

namespace A035606

/-- `A266213(A000096(n+11)+13)` -/
def P9428771705285035864.Spec : Prop :=
  ∀ n, P9428771705285035864.a n = A035606 n

end A035606

/-! ## A035606.P12910907732601971020

`A122542(A000217(n+12)+n)`
-/

namespace A035606.P12910907732601971020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122542 (A000217 (n + 12) + (n : ℤ)).toNat

end

end A035606.P12910907732601971020

namespace A035606

/-- `A122542(A000217(n+12)+n)` -/
def P12910907732601971020.Spec : Prop :=
  ∀ n, P12910907732601971020.a n = A035606 n

end A035606

/-!
# A035607: Table a(d,m) of number of points of L1 norm m in cubic lattice Z^d, read by antidiagonals (d >= 1, m >= 0).

The programs for A035607, the canonical program `A035607.P2767228634989126353` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035607 has offset 0).

The definition of A035607 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035607.P2767228634989126353

`T(n-1,k-1)+T(n-1,k)+T(n-2,k-1)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035607

/-- `T(n-1,k-1)+T(n-1,k)+T(n-2,k-1)` -/
def P2767228634989126353.Spec : Prop :=
  ∀ n, (P2767228634989126353.a n : ℤ) = A035607 n

theorem P2767228634989126353.correct : P2767228634989126353.Spec := by
  intro n
  simp only [A035607]

end A035607

/-! ## A035607.P10009147969319523121

`T(n-1,k)+T(n-2,k-1)+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A035607.P10009147969319523121
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  SequenceMachineLib.triUp a n + SequenceMachineLib.triUp2Left a n + SequenceMachineLib.triUpLeft a n

end

end A035607.P10009147969319523121

namespace A035607

/-- `T(n-1,k)+T(n-2,k-1)+T(n-1,k-1)` -/
def P10009147969319523121.Spec : Prop :=
  ∀ n, (P10009147969319523121.a n : ℤ) = A035607 n

end A035607

/-! ## A035607.P18355352542355530237

`T(n-2,k-1)+T(row(n)-1, col(n))+T(n-1,k-1)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=1`
-/

namespace A035607.P18355352542355530237
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2, 1] fun n a =>
  SequenceMachineLib.triUp2Left a n + (SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 1) (SequenceMachineLib.triCol n : ℤ) + SequenceMachineLib.triUpLeft a n)

end

end A035607.P18355352542355530237

namespace A035607

/-- `T(n-2,k-1)+T(row(n)-1, col(n))+T(n-1,k-1)` -/
def P18355352542355530237.Spec : Prop :=
  ∀ n, (P18355352542355530237.a n : ℤ) = A035607 n

end A035607

/-! ## A035607.P9982089680467429757

`T(row(n)-2, col(n)-1)+T(n-1,k-1)+T(n-1,k)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A035607.P9982089680467429757
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  SequenceMachineLib.triAt a ((SequenceMachineLib.triRow n : ℤ) - 2) ((SequenceMachineLib.triCol n : ℤ) - 1) + SequenceMachineLib.triUpLeft a n + SequenceMachineLib.triUp a n

end

end A035607.P9982089680467429757

namespace A035607

/-- `T(row(n)-2, col(n)-1)+T(n-1,k-1)+T(n-1,k)` -/
def P9982089680467429757.Spec : Prop :=
  ∀ n, (P9982089680467429757.a n : ℤ) = A035607 n

end A035607

/-! ## A035607.P18262902188743034246

`2*A008288(n)-T(n-1,k)` with `a(0)=1`
-/

namespace A035607.P18262902188743034246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A008288 n - SequenceMachineLib.triUp a n

end

end A035607.P18262902188743034246

namespace A035607

/-- `2*A008288(n)-T(n-1,k)` -/
def P18262902188743034246.Spec : Prop :=
  ∀ n, P18262902188743034246.a n = A035607 n

end A035607

/-! ## A035607.P511310615416921630

`2*A008288(n)-A266213(n)`
-/

namespace A035607.P511310615416921630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008288 n - A266213 n

end

end A035607.P511310615416921630

namespace A035607

/-- `2*A008288(n)-A266213(n)` -/
def P511310615416921630.Spec : Prop :=
  ∀ n, P511310615416921630.a n = A035607 n

end A035607

/-! ## A035607.P10027210233766366476

`A113413(n)+A122542(n)-A266213(n)`
-/

namespace A035607.P10027210233766366476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 n + (A122542 n - A266213 n)

end

end A035607.P10027210233766366476

namespace A035607

/-- `A113413(n)+A122542(n)-A266213(n)` -/
def P10027210233766366476.Spec : Prop :=
  ∀ n, P10027210233766366476.a n = A035607 n

end A035607

/-! ## A035607.P7105757504883412883

`A113413(A061579(n))`
-/

namespace A035607.P7105757504883412883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (A061579 n).toNat

end

end A035607.P7105757504883412883

namespace A035607

/-- `A113413(A061579(n))` -/
def P7105757504883412883.Spec : Prop :=
  ∀ n, P7105757504883412883.a n = A035607 n

end A035607

/-! ## A035607.P11648424042264146543

`A266213(comp[∑[n-1]])`
-/

namespace A035607.P11648424042264146543
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A035607.P11648424042264146543

namespace A035607

/-- `A266213(comp[∑[n-1]])` -/
def P11648424042264146543.Spec : Prop :=
  ∀ n, P11648424042264146543.a n = A035607 n

end A035607

/-! ## A035607.P8552301859288592792

`A128966(n)+A122542(n)`
-/

namespace A035607.P8552301859288592792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128966 n + A122542 n

end

end A035607.P8552301859288592792

namespace A035607

/-- `A128966(n)+A122542(n)` -/
def P8552301859288592792.Spec : Prop :=
  ∀ n, P8552301859288592792.a n = A035607 n

end A035607

/-! ## A035607.P16806028197552396134

`A249252(n)/A059268(n)`
-/

namespace A035607.P16806028197552396134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249252 n : ℚ) / (A059268 n : ℚ)

end

end A035607.P16806028197552396134

namespace A035607

/-- `A249252(n)/A059268(n)` -/
def P16806028197552396134.Spec : Prop :=
  ∀ n, P16806028197552396134.a n = (A035607 n : ℚ)

end A035607

/-!
# A035608: Expansion of g.f. x*(1 + 3*x)/((1 + x)*(1 - x)^3).

The programs for A035608, the canonical program `A035608.P12529111731240771770` is in `Seq.B000.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035608 has offset 0).

The definition of A035608 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((x+3x^2)/(1-2x+2x^3-x^4))` (program `A035608.P12529111731240771770`, by `A035608.P12529111731240771770.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A035608.P17262474454235609735

`floor((n+1/4)²)`
-/

namespace A035608.P17262474454235609735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n : ℚ) + (1 : ℚ) / 4) ^ 2⌋

end

end A035608.P17262474454235609735

namespace A035608

/-- `floor((n+1/4)²)` -/
def P17262474454235609735.Spec : Prop :=
  ∀ n, P17262474454235609735.a n = A035608 n

end A035608

/-! ## A035608.P12529111731240771770

`ogf((x+3x^2)/(1-2x+2x^3-x^4))`

The canonical program, it is in `Seq.B000.C007`.
-/

namespace A035608

/-- `ogf((x+3x^2)/(1-2x+2x^3-x^4))` -/
def P12529111731240771770.Spec : Prop :=
  ∀ n, P12529111731240771770.a n = A035608 n

theorem P12529111731240771770.correct : P12529111731240771770.Spec := by
  intro n
  simp only [A035608]

end A035608

/-! ## A035608.P8704608447673750942

`a(n-2)+4*n-3` with `a(0)=0, a(1)=1`
-/

namespace A035608.P8704608447673750942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 2) + (4 * n : ℤ) - 3

end

end A035608.P8704608447673750942

namespace A035608

/-- `a(n-2)+4*n-3` -/
def P8704608447673750942.Spec : Prop :=
  ∀ n, P8704608447673750942.a n = A035608 n

end A035608

/-! ## A035608.P8204296968428704917

`A139592(n)/2`
-/

namespace A035608.P8204296968428704917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139592 n : ℚ) / 2

end

end A035608.P8204296968428704917

namespace A035608

/-- `A139592(n)/2` -/
def P8204296968428704917.Spec : Prop :=
  ∀ n, P8204296968428704917.a n = (A035608 n : ℚ)

end A035608

/-! ## A035608.P13919477619303120902

`3*A002620(n)+A002620(n+1)`
-/

namespace A035608.P13919477619303120902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A002620 n + A002620 (n + 1)

end

end A035608.P13919477619303120902

namespace A035608

/-- `3*A002620(n)+A002620(n+1)` -/
def P13919477619303120902.Spec : Prop :=
  ∀ n, P13919477619303120902.a n = A035608 n

end A035608

/-! ## A035608.P4615916722416960138

`2*A006578(n)-A002378(n)/2`
-/

namespace A035608.P4615916722416960138
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A006578 n : ℚ) - (A002378 n : ℚ) / 2

end

end A035608.P4615916722416960138

namespace A035608

/-- `2*A006578(n)-A002378(n)/2` -/
def P4615916722416960138.Spec : Prop :=
  ∀ n, P4615916722416960138.a n = (A035608 n : ℚ)

end A035608

/-! ## A035608.P11178897896882174010

`A002378(n)-A004526(n+1)`
-/

namespace A035608.P11178897896882174010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 n - A004526 (n + 1)

end

end A035608.P11178897896882174010

namespace A035608

/-- `A002378(n)-A004526(n+1)` -/
def P11178897896882174010.Spec : Prop :=
  ∀ n, P11178897896882174010.a n = A035608 n

end A035608

/-! ## A035608.P6586553969925396090

`A002265(n+2)+A173562(n)`
-/

namespace A035608.P6586553969925396090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (n + 2) + A173562 n

end

end A035608.P6586553969925396090

namespace A035608

/-- `A002265(n+2)+A173562(n)` -/
def P6586553969925396090.Spec : Prop :=
  ∀ n, P6586553969925396090.a n = A035608 n

end A035608

/-! ## A035608.P12366257996061643096

`A011848(2*n+1)`
-/

namespace A035608.P12366257996061643096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (2 * n + 1)

end

end A035608.P12366257996061643096

namespace A035608

/-- `A011848(2*n+1)` -/
def P12366257996061643096.Spec : Prop :=
  ∀ n, P12366257996061643096.a n = A035608 n

end A035608

/-! ## A035608.P137382967881614436

`∑[comp[or(2, n)]]`
-/

namespace A035608.P137382967881614436
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P137382967881614436

namespace A035608

/-- `∑[comp[or(2, n)]]` -/
def P137382967881614436.Spec : Prop :=
  ∀ n, (P137382967881614436.a n : ℤ) = A035608 n

end A035608

/-! ## A035608.P18405348873485926696

`∑[lt[n, or(2, n)]]`
-/

namespace A035608.P18405348873485926696
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P18405348873485926696

namespace A035608

/-- `∑[lt[n, or(2, n)]]` -/
def P18405348873485926696.Spec : Prop :=
  ∀ n, (P18405348873485926696.a n : ℤ) = A035608 n

end A035608

/-! ## A035608.P12394133823608171558

`∑[lt[n, xor(2, n)]]`
-/

namespace A035608.P12394133823608171558
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P12394133823608171558

namespace A035608

/-- `∑[lt[n, xor(2, n)]]` -/
def P12394133823608171558.Spec : Prop :=
  ∀ n, (P12394133823608171558.a n : ℤ) = A035608 n

end A035608

/-! ## A035608.P1119761215842422234

`∑[record[and(n, -3)]]`
-/

namespace A035608.P1119761215842422234
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-3)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P1119761215842422234

namespace A035608

/-- `∑[record[and(n, -3)]]` -/
def P1119761215842422234.Spec : Prop :=
  ∀ n, P1119761215842422234.a n = A035608 n

end A035608

/-! ## A035608.P10309792741676732203

`∑[comp[record[xor(2, n)]]]`
-/

namespace A035608.P10309792741676732203
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => ∀ l < j, f3 l < f3 j) n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P10309792741676732203

namespace A035608

/-- `∑[comp[record[xor(2, n)]]]` -/
def P10309792741676732203.Spec : Prop :=
  ∀ n, (P10309792741676732203.a n : ℤ) = A035608 n

end A035608

/-! ## A035608.P14245823647109565566

`∑[record[or(2, n)-2]]`
-/

namespace A035608.P14245823647109565566
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P14245823647109565566

namespace A035608

/-- `∑[record[or(2, n)-2]]` -/
def P14245823647109565566.Spec : Prop :=
  ∀ n, P14245823647109565566.a n = A035608 n

end A035608

/-! ## A035608.P10486371766695869451

`∑[record[xor(2, n)-2]]`
-/

namespace A035608.P10486371766695869451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P10486371766695869451

namespace A035608

/-- `∑[record[xor(2, n)-2]]` -/
def P10486371766695869451.Spec : Prop :=
  ∀ n, P10486371766695869451.a n = A035608 n

end A035608

/-! ## A035608.P2219714521170985100

`∑[xor(2, record[xor(2, n)])]`
-/

namespace A035608.P2219714521170985100
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P2219714521170985100

namespace A035608

/-- `∑[xor(2, record[xor(2, n)])]` -/
def P2219714521170985100.Spec : Prop :=
  ∀ n, (P2219714521170985100.a n : ℤ) = A035608 n

end A035608

/-! ## A035608.P141959483076009948

`∑[fp[or(2, n)/2]]`
-/

namespace A035608.P141959483076009948
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℚ) / 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P141959483076009948

namespace A035608

/-- `∑[fp[or(2, n)/2]]` -/
def P141959483076009948.Spec : Prop :=
  ∀ n, (P141959483076009948.a n : ℤ) = A035608 n

end A035608

/-! ## A035608.P18121199426924374219

`∑[fp[xor(2, n)/2]]`
-/

namespace A035608.P18121199426924374219
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor 2 n : ℚ) / 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℚ) < f2 j) 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P18121199426924374219

namespace A035608

/-- `∑[fp[xor(2, n)/2]]` -/
def P18121199426924374219.Spec : Prop :=
  ∀ n, (P18121199426924374219.a n : ℤ) = A035608 n

end A035608

/-! ## A035608.P2422040088088098519

`∑[and(n, -2)+n]`
-/

namespace A035608.P2422040088088098519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P2422040088088098519

namespace A035608

/-- `∑[and(n, -2)+n]` -/
def P2422040088088098519.Spec : Prop :=
  ∀ n, P2422040088088098519.a n = A035608 n

end A035608

/-!
# A035610: G.f.: 3/(1 + 2*sqrt(1-12*x)).

The programs for A035610, the canonical program `A035610.P14607550852246093511` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035610 has offset 0).

The definition of A035610 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035610.P14607550852246093511

`∑{#}[n, A039599(C(n+1, 2)+#)*3^(n-#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A035610

/-- `∑{#}[n, A039599(C(n+1, 2)+#)*3^(n-#)]` -/
def P14607550852246093511.Spec : Prop :=
  ∀ n, P14607550852246093511.a n = (A035610 n : ℚ)

end A035610

/-! ## A035610.P9909286091038191012

`A128386(2*n)`
-/

namespace A035610.P9909286091038191012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128386 (2 * n)

end

end A035610.P9909286091038191012

namespace A035610

/-- `A128386(2*n)` -/
def P9909286091038191012.Spec : Prop :=
  ∀ n, P9909286091038191012.a n = A035610 n

end A035610

/-! ## A035610.P7735966564816151189

`record[A128386(C(n, xor(1, n))+1)]`
-/

namespace A035610.P7735966564816151189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128386 (Nat.choose n (Nat.xor 1 n) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035610.P7735966564816151189

namespace A035610

/-- `record[A128386(C(n, xor(1, n))+1)]` -/
def P7735966564816151189.Spec : Prop :=
  ∀ n, P7735966564816151189.a n = A035610 n

end A035610

/-! ## A035610.P14282156214381101185

`record[A128386(C(n, a(n-1)))]` with `a(0)=1`
-/

namespace A035610.P14282156214381101185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A128386 (Nat.choose n (f1 (n - 1)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035610.P14282156214381101185

namespace A035610

/-- `record[A128386(C(n, a(n-1)))]` -/
def P14282156214381101185.Spec : Prop :=
  ∀ n, P14282156214381101185.a n = A035610 n

end A035610

/-! ## A035610.P4737917829935898909

`gcd(4, C(2, n+2))*A194724(n)`
-/

namespace A035610.P4737917829935898909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (Nat.choose 2 (n + 2)) : ℤ) * A194724 n

end

end A035610.P4737917829935898909

namespace A035610

/-- `gcd(4, C(2, n+2))*A194724(n)` -/
def P4737917829935898909.Spec : Prop :=
  ∀ n, P4737917829935898909.a n = A035610 n

end A035610

/-! ## A035610.P17823744653839286142

`A010685(A038573(n))*A194724(n)`
-/

namespace A035610.P17823744653839286142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A038573 n).toNat * A194724 n

end

end A035610.P17823744653839286142

namespace A035610

/-- `A010685(A038573(n))*A194724(n)` -/
def P17823744653839286142.Spec : Prop :=
  ∀ n, P17823744653839286142.a n = A035610 n

end A035610

/-! ## A035610.P6086622901147972220

`A010685(A040976(n+1))*A194724(n)`
-/

namespace A035610.P6086622901147972220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A040976 (n + 1)).toNat * A194724 n

end

end A035610.P6086622901147972220

namespace A035610

/-- `A010685(A040976(n+1))*A194724(n)` -/
def P6086622901147972220.Spec : Prop :=
  ∀ n, P6086622901147972220.a n = A035610 n

end A035610

/-! ## A035610.P7184442153996435613

`A039598(A020705(C(2, n+2)))*A194724(n)`
-/

namespace A035610.P7184442153996435613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A020705 (Nat.choose 2 (n + 2))).toNat * A194724 n

end

end A035610.P7184442153996435613

namespace A035610

/-- `A039598(A020705(C(2, n+2)))*A194724(n)` -/
def P7184442153996435613.Spec : Prop :=
  ∀ n, P7184442153996435613.a n = A035610 n

end A035610

/-! ## A035610.P10476077695482393362

`A183135(n+6+∑[n+4])`
-/

namespace A035610.P10476077695482393362
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (n + 6 + ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035610.P10476077695482393362

namespace A035610

/-- `A183135(n+6+∑[n+4])` -/
def P10476077695482393362.Spec : Prop :=
  ∀ n, P10476077695482393362.a n = A035610 n

end A035610

/-! ## A035610.P7497218402764193016

`record[A183135(A052905(n))]`
-/

namespace A035610.P7497218402764193016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183135 (A052905 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035610.P7497218402764193016

namespace A035610

/-- `record[A183135(A052905(n))]` -/
def P7497218402764193016.Spec : Prop :=
  ∀ n, P7497218402764193016.a n = A035610 n

end A035610

/-!
# A035612: Horizontal para-Fibonacci sequence: says which column of Wythoff array (starting column count at 1) contains n.

The programs for A035612, the canonical program `A035612.P10790304675127339633` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035612 has offset 1).

The definition of A035612 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035612.P12107438272523657495

`A035614(n)+1`
-/

namespace A035612.P12107438272523657495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035614 n + 1

end

end A035612.P12107438272523657495

namespace A035612

/-- `A035614(n)+1` -/
def P12107438272523657495.Spec : Prop :=
  ∀ n, P12107438272523657495.a n = A035612 (n + 1)

end A035612

/-! ## A035612.P10790304675127339633

`val(A022340(1+n), 2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035612

/-- `val(A022340(1+n), 2)` -/
def P10790304675127339633.Spec : Prop :=
  ∀ n, (P10790304675127339633.a n : ℤ) = A035612 (n + 1)

theorem P10790304675127339633.correct : P10790304675127339633.Spec := by
  intro n
  simp only [A035612, Nat.add_sub_cancel]

end A035612

/-! ## A035612.P8490347078629842155

`floor(log2(A085358(n)))+1`
-/

namespace A035612.P8490347078629842155
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A085358 n).toNat + 1

end

end A035612.P8490347078629842155

namespace A035612

/-- `floor(log2(A085358(n)))+1` -/
def P8490347078629842155.Spec : Prop :=
  ∀ n, (P8490347078629842155.a n : ℤ) = A035612 (n + 1)

end A035612

/-! ## A035612.P9873471740642005961

`ceil(log2(A319432(n+1)))`
-/

namespace A035612.P9873471740642005961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A319432 (n + 1) : ℝ)⌉

end

end A035612.P9873471740642005961

namespace A035612

/-- `ceil(log2(A319432(n+1)))` -/
def P9873471740642005961.Spec : Prop :=
  ∀ n, P9873471740642005961.a n = A035612 (n + 1)

end A035612

/-! ## A035612.P9460905919640413441

`val(∑[A129761(n)], 2)+1`
-/

namespace A035612.P9460905919640413441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2 + 1

end

end A035612.P9460905919640413441

namespace A035612

/-- `val(∑[A129761(n)], 2)+1` -/
def P9460905919640413441.Spec : Prop :=
  ∀ n, (P9460905919640413441.a n : ℤ) = A035612 (n + 1)

end A035612

/-! ## A035612.P14330064034763147265

`val(A014417(n+1), 2)+1`
-/

namespace A035612.P14330064034763147265
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014417 (n + 1)).toNat 2 + 1

end

end A035612.P14330064034763147265

namespace A035612

/-- `val(A014417(n+1), 2)+1` -/
def P14330064034763147265.Spec : Prop :=
  ∀ n, (P14330064034763147265.a n : ℤ) = A035612 (n + 1)

end A035612

/-! ## A035612.P7789896736104760610

`val(A048679(n+1), 2)+1`
-/

namespace A035612.P7789896736104760610
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048679 (n + 1)).toNat 2 + 1

end

end A035612.P7789896736104760610

namespace A035612

/-- `val(A048679(n+1), 2)+1` -/
def P7789896736104760610.Spec : Prop :=
  ∀ n, (P7789896736104760610.a n : ℤ) = A035612 (n + 1)

end A035612

/-! ## A035612.P2116211252538786937

`val(A277335(n+1), 2)+1`
-/

namespace A035612.P2116211252538786937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277335 (n + 1)).toNat 2 + 1

end

end A035612.P2116211252538786937

namespace A035612

/-- `val(A277335(n+1), 2)+1` -/
def P2116211252538786937.Spec : Prop :=
  ∀ n, (P2116211252538786937.a n : ℤ) = A035612 (n + 1)

end A035612

/-! ## A035612.P12194118247975806690

`val(A290258(n+2), 2)+1`
-/

namespace A035612.P12194118247975806690
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290258 (n + 2)).toNat 2 + 1

end

end A035612.P12194118247975806690

namespace A035612

/-- `val(A290258(n+2), 2)+1` -/
def P12194118247975806690.Spec : Prop :=
  ∀ n, (P12194118247975806690.a n : ℤ) = A035612 (n + 1)

end A035612

/-! ## A035612.P476972657622243023

`A130245(A139764(n+1))`
-/

namespace A035612.P476972657622243023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130245 (A139764 (n + 1)).toNat

end

end A035612.P476972657622243023

namespace A035612

/-- `A130245(A139764(n+1))` -/
def P476972657622243023.Spec : Prop :=
  ∀ n, P476972657622243023.a n = A035612 (n + 1)

end A035612

/-! ## A035612.P3644952861633334560

`A008619(2*A035614(n))`
-/

namespace A035612.P3644952861633334560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * A035614 n).toNat

end

end A035612.P3644952861633334560

namespace A035612

/-- `A008619(2*A035614(n))` -/
def P3644952861633334560.Spec : Prop :=
  ∀ n, P3644952861633334560.a n = A035612 (n + 1)

end A035612

/-! ## A035612.P18011446140768740930

`A028242(2*A035614(n))`
-/

namespace A035612.P18011446140768740930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (2 * A035614 n).toNat

end

end A035612.P18011446140768740930

namespace A035612

/-- `A028242(2*A035614(n))` -/
def P18011446140768740930.Spec : Prop :=
  ∀ n, P18011446140768740930.a n = A035612 (n + 1)

end A035612

/-! ## A035612.P15440411115828089269

`Δ[A219641(n)+A219640(n)]`
-/

namespace A035612.P15440411115828089269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + A219640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035612.P15440411115828089269

namespace A035612

/-- `Δ[A219641(n)+A219640(n)]` -/
def P15440411115828089269.Spec : Prop :=
  ∀ n, P15440411115828089269.a n = A035612 (n + 1)

end A035612

/-! ## A035612.P116248475421618810

`A008621(2*2*A035614(n))`
-/

namespace A035612.P116248475421618810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * (2 * A035614 n)).toNat

end

end A035612.P116248475421618810

namespace A035612

/-- `A008621(2*2*A035614(n))` -/
def P116248475421618810.Spec : Prop :=
  ∀ n, P116248475421618810.a n = A035612 (n + 1)

end A035612

/-! ## A035612.P17726429053667663114

`A191360(n+1)+A003603(n+1)`
-/

namespace A035612.P17726429053667663114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191360 (n + 1) + A003603 (n + 1)

end

end A035612.P17726429053667663114

namespace A035612

/-- `A191360(n+1)+A003603(n+1)` -/
def P17726429053667663114.Spec : Prop :=
  ∀ n, P17726429053667663114.a n = A035612 (n + 1)

theorem P17726429053667663114.correct : P17726429053667663114.Spec := by
  intro n
  simp only [A035612, Nat.add_sub_cancel, A035612.P17726429053667663114.a, A035612.P10790304675127339633.a, A003603, A003603.P16957953193221149440.a, A022340, A022340.P3334581410869230776.a, A191360, A191360.P15454014504453218478.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P7428461359431683456.f1, A193564.P7428461359431683456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A035612

/-! ## A035612.P14573164063568419831

`A360485(n+1)-A019586(n+1)`
-/

namespace A035612.P14573164063568419831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360485 (n + 1) - A019586 (n + 1)

end

end A035612.P14573164063568419831

namespace A035612

/-- `A360485(n+1)-A019586(n+1)` -/
def P14573164063568419831.Spec : Prop :=
  ∀ n, P14573164063568419831.a n = A035612 (n + 1)

theorem P14573164063568419831.correct : P14573164063568419831.Spec := by
  intro n
  simp only [A035612, Nat.add_sub_cancel, A035612.P14573164063568419831.a, A035612.P10790304675127339633.a, A019586, A019586.P5450545110218476192.a, A022340, A022340.P3334581410869230776.a, A360485, A360485.P910775861642857530.a, A003603, A003603.P16957953193221149440.a, A003714, A003714.P565032106299634425.a, A022342, A022342.P1190268710273068250.a, A003849, A003849.P15070805603138295355.a, A193564, A193564.P7428461359431683456.f1, A193564.P7428461359431683456.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A035612

/-! ## A035612.P3889573373402888969

`A141310(2*A035614(n))-A035614(n)`
-/

namespace A035612.P3889573373402888969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (2 * A035614 n).toNat - A035614 n

end

end A035612.P3889573373402888969

namespace A035612

/-- `A141310(2*A035614(n))-A035614(n)` -/
def P3889573373402888969.Spec : Prop :=
  ∀ n, P3889573373402888969.a n = A035612 (n + 1)

end A035612

/-! ## A035612.P8651891623973609139

`A219641(n+1)+A261095(n)-A219641(n)`
-/

namespace A035612.P8651891623973609139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (n + 1) + (A261095 n - A219641 n)

end

end A035612.P8651891623973609139

namespace A035612

/-- `A219641(n+1)+A261095(n)-A219641(n)` -/
def P8651891623973609139.Spec : Prop :=
  ∀ n, P8651891623973609139.a n = A035612 (n + 1)

end A035612

/-! ## A035612.P12759168015133242021

`val(A003714(n+1), 2)+1`
-/

namespace A035612.P12759168015133242021
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003714 (n + 1)).toNat 2 + 1

end

end A035612.P12759168015133242021

namespace A035612

/-- `val(A003714(n+1), 2)+1` -/
def P12759168015133242021.Spec : Prop :=
  ∀ n, (P12759168015133242021.a n : ℤ) = A035612 (n + 1)

end A035612

/-! ## A035612.P5160647911464976230

`val(A118113(n+1)-1, 2)`
-/

namespace A035612.P5160647911464976230
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A118113 (n + 1) - 1).toNat 2

end

end A035612.P5160647911464976230

namespace A035612

/-- `val(A118113(n+1)-1, 2)` -/
def P5160647911464976230.Spec : Prop :=
  ∀ n, (P5160647911464976230.a n : ℤ) = A035612 (n + 1)

end A035612

/-! ## A035612.P8228914083886575288

`val(record[or(n, floor(n/2))+1], 2)+1`
-/

namespace A035612.P8228914083886575288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2 + 1

end

end A035612.P8228914083886575288

namespace A035612

/-- `val(record[or(n, floor(n/2))+1], 2)+1` -/
def P8228914083886575288.Spec : Prop :=
  ∀ n, (P8228914083886575288.a n : ℤ) = A035612 (n + 1)

end A035612

/-!
# A035614: Horizontal para-Fibonacci sequence: says which column of Wythoff array (starting column count at 0) contains n+1.

The programs for A035614, the canonical program `A035614.P10309424226365457496` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035614 has offset 0).

The definition of A035614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A035614.P8303577409908070135

`A025581(A064274(n+1)-1)`
-/

namespace A035614.P8303577409908070135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (A064274 (n + 1) - 1).toNat

end

end A035614.P8303577409908070135

namespace A035614

/-- `A025581(A064274(n+1)-1)` -/
def P8303577409908070135.Spec : Prop :=
  ∀ n, P8303577409908070135.a n = A035614 n

end A035614

/-! ## A035614.P3600084451030689081

`floor(log2(A085358(n)))`
-/

namespace A035614.P3600084451030689081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A085358 n).toNat

end

end A035614.P3600084451030689081

namespace A035614

/-- `floor(log2(A085358(n)))` -/
def P3600084451030689081.Spec : Prop :=
  ∀ n, (P3600084451030689081.a n : ℤ) = A035614 n

end A035614

/-! ## A035614.P15114366626395231883

`val(∑[A129761(n)], 2)`
-/

namespace A035614.P15114366626395231883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129761 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j).toNat 2

end

end A035614.P15114366626395231883

namespace A035614

/-- `val(∑[A129761(n)], 2)` -/
def P15114366626395231883.Spec : Prop :=
  ∀ n, (P15114366626395231883.a n : ℤ) = A035614 n

end A035614

/-! ## A035614.P10309424226365457496

`A035612(1+n)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035614

/-- `A035612(1+n)-1` -/
def P10309424226365457496.Spec : Prop :=
  ∀ n, P10309424226365457496.a n = A035614 n

theorem P10309424226365457496.correct : P10309424226365457496.Spec := by
  intro n
  simp only [A035614]

end A035614

/-! ## A035614.P14113070721408536448

`val(A014417(n+1), 2)`
-/

namespace A035614.P14113070721408536448
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A014417 (n + 1)).toNat 2

end

end A035614.P14113070721408536448

namespace A035614

/-- `val(A014417(n+1), 2)` -/
def P14113070721408536448.Spec : Prop :=
  ∀ n, (P14113070721408536448.a n : ℤ) = A035614 n

end A035614

/-! ## A035614.P15598629325323241158

`val(A048679(n+1), 2)`
-/

namespace A035614.P15598629325323241158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048679 (n + 1)).toNat 2

end

end A035614.P15598629325323241158

namespace A035614

/-- `val(A048679(n+1), 2)` -/
def P15598629325323241158.Spec : Prop :=
  ∀ n, (P15598629325323241158.a n : ℤ) = A035614 n

end A035614

/-! ## A035614.P10851578716639955712

`val(A277335(n+1), 2)`
-/

namespace A035614.P10851578716639955712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277335 (n + 1)).toNat 2

end

end A035614.P10851578716639955712

namespace A035614

/-- `val(A277335(n+1), 2)` -/
def P10851578716639955712.Spec : Prop :=
  ∀ n, (P10851578716639955712.a n : ℤ) = A035614 n

end A035614

/-! ## A035614.P4523140316104480434

`val(A060140(n+1), 3)`
-/

namespace A035614.P4523140316104480434
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060140 (n + 1)).toNat 3

end

end A035614.P4523140316104480434

namespace A035614

/-- `val(A060140(n+1), 3)` -/
def P4523140316104480434.Spec : Prop :=
  ∀ n, (P4523140316104480434.a n : ℤ) = A035614 n

end A035614

/-! ## A035614.P11711789697792025255

`val(A060141(n+1), 3)`
-/

namespace A035614.P11711789697792025255
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A060141 (n + 1)).toNat 3

end

end A035614.P11711789697792025255

namespace A035614

/-- `val(A060141(n+1), 3)` -/
def P11711789697792025255.Spec : Prop :=
  ∀ n, (P11711789697792025255.a n : ℤ) = A035614 n

end A035614

/-! ## A035614.P2640099219280556120

`val(A290258(n+2), 2)`
-/

namespace A035614.P2640099219280556120
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A290258 (n + 2)).toNat 2

end

end A035614.P2640099219280556120

namespace A035614

/-- `val(A290258(n+2), 2)` -/
def P2640099219280556120.Spec : Prop :=
  ∀ n, (P2640099219280556120.a n : ℤ) = A035614 n

end A035614

/-! ## A035614.P13957327866372850873

`val(A022340(n+1), 2)-1`
-/

namespace A035614.P13957327866372850873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (A022340 (n + 1)).toNat 2 : ℤ) - 1

end

end A035614.P13957327866372850873

namespace A035614

/-- `val(A022340(n+1), 2)-1` -/
def P13957327866372850873.Spec : Prop :=
  ∀ n, P13957327866372850873.a n = A035614 n

end A035614

/-! ## A035614.P10800564628886159715

`ceil(log2(A319432(n+1)))-1`
-/

namespace A035614.P10800564628886159715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (A319432 (n + 1) : ℝ)⌉ - 1

end

end A035614.P10800564628886159715

namespace A035614

/-- `ceil(log2(A319432(n+1)))-1` -/
def P10800564628886159715.Spec : Prop :=
  ∀ n, P10800564628886159715.a n = A035614 n

end A035614

/-! ## A035614.P2801041018370679431

`A130233(A139764(n+1))-2`
-/

namespace A035614.P2801041018370679431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130233 (A139764 (n + 1)).toNat - 2

end

end A035614.P2801041018370679431

namespace A035614

/-- `A130233(A139764(n+1))-2` -/
def P2801041018370679431.Spec : Prop :=
  ∀ n, P2801041018370679431.a n = A035614 n

end A035614

/-! ## A035614.P11519306500654262199

`Δ[A219641(n)+A219640(n)]-1`
-/

namespace A035614.P11519306500654262199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 n + A219640 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A035614.P11519306500654262199

namespace A035614

/-- `Δ[A219641(n)+A219640(n)]-1` -/
def P11519306500654262199.Spec : Prop :=
  ∀ n, P11519306500654262199.a n = A035614 n

end A035614

/-! ## A035614.P14045691699759037338

`A191360(n+1)+A019586(n+1)`
-/

namespace A035614.P14045691699759037338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191360 (n + 1) + A019586 (n + 1)

end

end A035614.P14045691699759037338

namespace A035614

/-- `A191360(n+1)+A019586(n+1)` -/
def P14045691699759037338.Spec : Prop :=
  ∀ n, P14045691699759037338.a n = A035614 n

end A035614

/-! ## A035614.P15526031902746782082

`A360485(n+1)-A003603(n+1)`
-/

namespace A035614.P15526031902746782082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360485 (n + 1) - A003603 (n + 1)

end

end A035614.P15526031902746782082

namespace A035614

/-- `A360485(n+1)-A003603(n+1)` -/
def P15526031902746782082.Spec : Prop :=
  ∀ n, P15526031902746782082.a n = A035614 n

end A035614

/-! ## A035614.P15828523978426028114

`A019586(A035336(A035612(n+1)))`
-/

namespace A035614.P15828523978426028114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A035336 (A035612 (n + 1)).toNat).toNat

end

end A035614.P15828523978426028114

namespace A035614

/-- `A019586(A035336(A035612(n+1)))` -/
def P15828523978426028114.Spec : Prop :=
  ∀ n, P15828523978426028114.a n = A035614 n

end A035614

/-! ## A035614.P10600110985868644573

`A191362(A360485(n+1)+A191360(n+1))`
-/

namespace A035614.P10600110985868644573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191362 (A360485 (n + 1) + A191360 (n + 1)).toNat

end

end A035614.P10600110985868644573

namespace A035614

/-- `A191362(A360485(n+1)+A191360(n+1))` -/
def P10600110985868644573.Spec : Prop :=
  ∀ n, P10600110985868644573.a n = A035614 n

end A035614

/-! ## A035614.P2863119631138344723

`A102364(n+1)-A102364(A349238(n+1))`
-/

namespace A035614.P2863119631138344723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102364 (n + 1) - A102364 (A349238 (n + 1)).toNat

end

end A035614.P2863119631138344723

namespace A035614

/-- `A102364(n+1)-A102364(A349238(n+1))` -/
def P2863119631138344723.Spec : Prop :=
  ∀ n, P2863119631138344723.a n = A035614 n

end A035614

/-! ## A035614.P11179938969003269584

`A007895(n)+A261095(n)-A007895(n+1)`
-/

namespace A035614.P11179938969003269584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n + (A261095 n - A007895 (n + 1))

end

end A035614.P11179938969003269584

namespace A035614

/-- `A007895(n)+A261095(n)-A007895(n+1)` -/
def P11179938969003269584.Spec : Prop :=
  ∀ n, P11179938969003269584.a n = A035614 n

end A035614

/-! ## A035614.P14203915996463909604

`val(record[or(n, floor(n/2))+1], 2)`
-/

namespace A035614.P14203915996463909604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) ⌊(n : ℚ) / 2⌋ + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A035614.P14203915996463909604

namespace A035614

/-- `val(record[or(n, floor(n/2))+1], 2)` -/
def P14203915996463909604.Spec : Prop :=
  ∀ n, (P14203915996463909604.a n : ℤ) = A035614 n

end A035614

/-!
# A035615: Number of winning length n strings with a 2-symbol alphabet in "same game".

The programs for A035615, there is no canonical definition to state claims against.
-/

/-! ## A035615.P4492670004648688477

`A323844(∑[n])`
-/

namespace A035615.P4492670004648688477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A035615.P4492670004648688477

/-!
# A035617: Number of winning length n strings with a 3-symbol alphabet in "same game".

The programs for A035617, there is no canonical definition to state claims against.
-/

/-! ## A035617.P11973890725282786446

`A323844(eq[1, col(n)])`
-/

namespace A035617.P11973890725282786446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A035617.P11973890725282786446

/-!
# A035618: Number of partitions of n into parts 3k and 3k+1 with at least one part of each type.

The programs for A035618, there is no canonical definition to state claims against.
-/

/-! ## A035618.P12258986417575133056

`A035638(2*(1+n))`
-/

namespace A035618.P12258986417575133056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035638 (2 * (1 + n))

end

end A035618.P12258986417575133056

/-! ## A035618.P16666297225181593178

`record[A065033(n)+A035638(n+1)]-(n+1)`
-/

namespace A035618.P16666297225181593178
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 n + A035638 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - (n + 1 : ℤ)

end

end A035618.P16666297225181593178

/-!
# A035619: Number of partitions of n into parts 3k and 3k+2 with at least one part of each type.

The programs for A035619, there is no canonical definition to state claims against.
-/

/-! ## A035619.P18070016740791423625

`A035640((1+n)*2)`
-/

namespace A035619.P18070016740791423625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035640 ((1 + n) * 2)

end

end A035619.P18070016740791423625

/-!
# A035620: Number of partitions of n into parts 3k+1 and 3k+2 with at least one part of each type.

The programs for A035620, there is no canonical definition to state claims against.
-/

/-! ## A035620.P13921264595867105463

`A000726(n+1)-(A035386(n+1)+A035382(n+1))`
-/

namespace A035620.P13921264595867105463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000726 (n + 1) - (A035386 (n + 1) + A035382 (n + 1))

end

end A035620.P13921264595867105463

/-! ## A035620.P13029386657065303368

`A035647(2*(1+n))`
-/

namespace A035620.P13029386657065303368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035647 (2 * (1 + n))

end

end A035620.P13029386657065303368

/-! ## A035620.P15619088970847443718

`A353090(A102186(n+1))`
-/

namespace A035620.P15619088970847443718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353090 (A102186 (n + 1)).toNat

end

end A035620.P15619088970847443718

/-!
# A035621: Number of partitions of n into parts 4k and 4k+1 with at least one part of each type.

The programs for A035621, there is no canonical definition to state claims against.
-/

/-! ## A035621.P7563124887543912715

`A035673(2*(n+1))`
-/

namespace A035621.P7563124887543912715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035673 (2 * (n + 1))

end

end A035621.P7563124887543912715

/-!
# A035622: Number of partitions of n into parts 4k and 4k+2 with at least one part of each type.

The programs for A035622, there is no canonical definition to state claims against.
-/

/-! ## A035622.P9642796611715132956

`A035639(A301729(n))`
-/

namespace A035622.P9642796611715132956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A301729 n).toNat

end

end A035622.P9642796611715132956

/-! ## A035622.P2905791712079697806

`A006477(gcd(n, floor(n/2)))`
-/

namespace A035622.P2905791712079697806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006477 (Int.gcd (n : ℤ) ⌊(n : ℚ) / 2⌋)

end

end A035622.P2905791712079697806

/-! ## A035622.P11340463418042372858

`A035675(A257088(n))`
-/

namespace A035622.P11340463418042372858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A257088 n).toNat

end

end A035622.P11340463418042372858

/-! ## A035622.P11578242942113580306

`A035675(abs(1-2*n)+1)`
-/

namespace A035622.P11578242942113580306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (|1 - (2 * n : ℤ)| + 1).toNat

end

end A035622.P11578242942113580306

/-!
# A035623: Number of partitions of n into parts 4k and 4k+3 with at least one part of each type.

The programs for A035623, there is no canonical definition to state claims against.
-/

/-! ## A035623.P5943345532500016568

`A035677(2*(n+1))`
-/

namespace A035623.P5943345532500016568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035677 (2 * (n + 1))

end

end A035623.P5943345532500016568

/-!
# A035624: Number of partitions of n into parts 4k+1 and 4k+2 with at least one part of each type.

The programs for A035624, there is no canonical definition to state claims against.
-/

/-! ## A035624.P13644026311666555379

`A035686(2*(n+1))`
-/

namespace A035624.P13644026311666555379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035686 (2 * (n + 1))

end

end A035624.P13644026311666555379

/-!
# A035625: Number of partitions of n into parts 4k+1 and 4k+3 with at least one part of each type.

The programs for A035625, there is no canonical definition to state claims against.
-/

/-! ## A035625.P15646935178090011644

`A000009(n+1)-(A035462(n+1)+A035451(n+1))`
-/

namespace A035625.P15646935178090011644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (n + 1) - (A035462 (n + 1) + A035451 (n + 1))

end

end A035625.P15646935178090011644

/-! ## A035625.P1004492801906185016

`A035688(2*(1+n))`
-/

namespace A035625.P1004492801906185016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035688 (2 * (1 + n))

end

end A035625.P1004492801906185016

/-!
# A035626: Number of partitions of n into parts 4k+2 and 4k+3 with at least one part of each type.

The programs for A035626, there is no canonical definition to state claims against.
-/

/-! ## A035626.P7392316190558270204

`A035695(2*(1+n))`
-/

namespace A035626.P7392316190558270204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035695 (2 * (1 + n))

end

end A035626.P7392316190558270204

/-! ## A035626.P113465087622625493

`A285006(A313434(n))`
-/

namespace A035626.P113465087622625493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285006 (A313434 n).toNat

end

end A035626.P113465087622625493

/-! ## A035626.P10443550873735550433

`A202177(A076736(n+2))`
-/

namespace A035626.P10443550873735550433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202177 (A076736 (n + 2)).toNat

end

end A035626.P10443550873735550433

/-!
# A035627: Number of partitions of n into parts 5k and 5k+1 with at least one part of each type.

The programs for A035627, there is no canonical definition to state claims against.
-/

/-! ## A035627.P8997650880084578055

`A035637(lt[A344678(n), A228337(n)])`
-/

namespace A035627.P8997650880084578055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344678 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228337 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035637 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035627.P8997650880084578055

/-!
# A035628: Number of partitions of n into parts 5k and 5k+2 with at least one part of each type.

The programs for A035628, there is no canonical definition to state claims against.
-/

/-! ## A035628.P6004542760458107053

`A178696(A110591(n)^A086520(n))`
-/

namespace A035628.P6004542760458107053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178696 (SequenceMachineLib.roundAway ((A110591 n : ℚ) ^ (A086520 n : ℤ))).toNat

end

end A035628.P6004542760458107053

/-! ## A035628.P2879249873636262846

`A128831(n+1)%A086389(A072493(n+1))`
-/

namespace A035628.P2879249873636262846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128831 (n + 1)) (A086389 (A072493 (n + 1)).toNat)

end

end A035628.P2879249873636262846

/-! ## A035628.P876410702366964627

`A001399(A074324(n))%A213933(A004526(n))`
-/

namespace A035628.P876410702366964627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001399 (A074324 n).toNat) (A213933 (A004526 n).toNat)

end

end A035628.P876410702366964627

/-! ## A035628.P14459031322112060681

`A264044(A094980(n))%A094990(n)`
-/

namespace A035628.P14459031322112060681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A264044 (A094980 n).toNat) (A094990 n)

end

end A035628.P14459031322112060681

/-! ## A035628.P14629677986924515532

`A000203(2^n)%A163314(A002266(n))`
-/

namespace A035628.P14629677986924515532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000203 (2 ^ n)) (A163314 (A002266 n).toNat)

end

end A035628.P14629677986924515532

/-!
# A035629: Number of partitions of n into parts 5k and 5k+3 with at least one part of each type.

The programs for A035629, there is no canonical definition to state claims against.
-/

/-! ## A035629.P2463310119454756436

`A290101(A009194(A033082(n+1)))`
-/

namespace A035629.P2463310119454756436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290101 (A009194 (A033082 (n + 1)).toNat).toNat

end

end A035629.P2463310119454756436

/-! ## A035629.P8763466862332105857

`A057944(A036870(A229621(n+1)+2))`
-/

namespace A035629.P8763466862332105857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 (A036870 (A229621 (n + 1) + 2).toNat).toNat

end

end A035629.P8763466862332105857

/-! ## A035629.P12832395215559505535

`∑{d}[A036870(A229621(n+1)+2), A122204(#)]`
-/

namespace A035629.P12832395215559505535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036870 (A229621 (n + 1) + 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A122204 d

end

end A035629.P12832395215559505535

/-! ## A035629.P3482185448475127111

`gcd(A036870(A229621(n+1)+2), A280912(n+2))`
-/

namespace A035629.P3482185448475127111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036870 (A229621 (n + 1) + 2).toNat) (A280912 (n + 2))

end

end A035629.P3482185448475127111

/-! ## A035629.P7113605760441189971

`ceil(A036870(A229621(n+1)+2)/A143811(n+1))`
-/

namespace A035629.P7113605760441189971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036870 (A229621 (n + 1) + 2).toNat : ℚ) / (A143811 (n + 1) : ℚ)⌉

end

end A035629.P7113605760441189971

/-!
# A035630: Number of partitions of n into parts 5k and 5k+4 with at least one part of each type.

The programs for A035630, there is no canonical definition to state claims against.
-/

/-! ## A035630.P4141266474233257559

`A008619(A227375(n))%A027935(n)`
-/

namespace A035630.P4141266474233257559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008619 (A227375 n).toNat) (A027935 n)

end

end A035630.P4141266474233257559

/-!
# A035631: Number of partitions of n into parts 5k+1 and 5k+2 with at least one part of each type.

The programs for A035631, there is no canonical definition to state claims against.
-/

/-! ## A035631.P6294813227334570072

`A045778(A000079(n))-A176723(n)`
-/

namespace A035631.P6294813227334570072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045778 (A000079 n).toNat - A176723 n

end

end A035631.P6294813227334570072

/-!
# A035632: Number of partitions of n into parts 5k+1 and 5k+3 with at least one part of each type.

The programs for A035632, there is no canonical definition to state claims against.
-/

/-! ## A035632.P3217650598204426411

`A035659(A079726(n+1)%A048372(n+3))`
-/

namespace A035632.P3217650598204426411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035659 (Int.tmod (A079726 (n + 1)) (A048372 (n + 3))).toNat

end

end A035632.P3217650598204426411

/-!
# A035633: Number of partitions of n into parts 5k+1 and 5k+4 with at least one part of each type.

The programs for A035633, there is no canonical definition to state claims against.
-/

/-! ## A035633.P4791487257240841648

`A039903(1+n)-A039899(n+1)`
-/

namespace A035633.P4791487257240841648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039903 (1 + n) - A039899 (n + 1)

end

end A035633.P4791487257240841648

/-! ## A035633.P1302458446429478084

`A039903(n+1)%A039899(A233583(n+2))`
-/

namespace A035633.P1302458446429478084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039903 (n + 1)) (A039899 (A233583 (n + 2)).toNat)

end

end A035633.P1302458446429478084

/-! ## A035633.P6374298909871117157

`A035683(∑[A000034(A075426(n))])`
-/

namespace A035633.P6374298909871117157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A075426 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035683 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035633.P6374298909871117157

/-!
# A035634: Number of partitions of n into parts 5k+2 and 5k+3 with at least one part of each type.

The programs for A035634, there is no canonical definition to state claims against.
-/

/-! ## A035634.P10435418585767626570

`A003106(n+1)-(A109699(n+1)+A109698(n+1))`
-/

namespace A035634.P10435418585767626570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003106 (n + 1) - (A109699 (n + 1) + A109698 (n + 1))

end

end A035634.P10435418585767626570

/-! ## A035634.P1858699967707031380

`A039904(n+1)-A039900(n+1)`
-/

namespace A035634.P1858699967707031380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039904 (n + 1) - A039900 (n + 1)

end

end A035634.P1858699967707031380

/-! ## A035634.P17584236251894648791

`A039904(1+n)%A039900(n+1)`
-/

namespace A035634.P17584236251894648791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039904 (1 + n)) (A039900 (n + 1))

end

end A035634.P17584236251894648791

/-!
# A035635: Number of partitions of n into parts 5k+2 and 5k+4 with at least one part of each type.

The programs for A035635, there is no canonical definition to state claims against.
-/

/-! ## A035635.P9072793124880078927

`and(A007094(A007088(n)), A123576(n))`
-/

namespace A035635.P9072793124880078927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A007094 (A007088 n).toNat) (A123576 n)

end

end A035635.P9072793124880078927

/-!
# A035636: Number of partitions of n into parts 5k+3 and 5k+4 with at least one part of each type.

The programs for A035636, there is no canonical definition to state claims against.
-/

/-! ## A035636.P17559521538971695566

`A111895(3*n+1)-A261990(A273419(n))`
-/

namespace A035636.P17559521538971695566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111895 (3 * n + 1) - A261990 (A273419 n).toNat

end

end A035636.P17559521538971695566

/-!
# A035638: Number of partitions of n into parts 6k and 6k+2 with at least one part of each type.

The programs for A035638, there is no canonical definition to state claims against.
-/

/-! ## A035638.P10410416154718622066

`A035618(gcd(ceil(n/2), n+1))`
-/

namespace A035638.P10410416154718622066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035618 (Int.gcd ⌈(n : ℚ) / 2⌉ (n + 1 : ℤ))

end

end A035638.P10410416154718622066

/-! ## A035638.P16608685197897748683

`∑{d}[n+1, A035618(#)*A063524((n+1)/#-1)]`
-/

namespace A035638.P16608685197897748683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035618 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035638.P16608685197897748683

/-! ## A035638.P9061036841851230247

`Δ[A008619(n)]*A035618(A008619(n))`
-/

namespace A035638.P9061036841851230247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A035618 (A008619 n).toNat

end

end A035638.P9061036841851230247

/-! ## A035638.P10639302019715030533

`A249422(A109532(n))`
-/

namespace A035638.P10639302019715030533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249422 (A109532 n).toNat

end

end A035638.P10639302019715030533

/-! ## A035638.P12880262632089873617

`A195828(A099206(n+2))`
-/

namespace A035638.P12880262632089873617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195828 (A099206 (n + 2)).toNat

end

end A035638.P12880262632089873617

/-!
# A035639: Number of partitions of n into parts 6k and 6k+3 with at least one part of each type.

The programs for A035639, there is no canonical definition to state claims against.
-/

/-! ## A035639.P8240718744375821995

`A035622(ceil((2*n+1)/3))`
-/

namespace A035639.P8240718744375821995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 ⌈(2 * n + 1 : ℚ) / 3⌉.toNat

end

end A035639.P8240718744375821995

/-! ## A035639.P11582707246254346772

`A006477(A175676(n+1))`
-/

namespace A035639.P11582707246254346772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006477 (A175676 (n + 1)).toNat

end

end A035639.P11582707246254346772

/-! ## A035639.P8778179183676550107

`A035675(A098003(n+1))`
-/

namespace A035639.P8778179183676550107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A098003 (n + 1)).toNat

end

end A035639.P8778179183676550107

/-! ## A035639.P10149261694266720949

`A035675(A304800(n))`
-/

namespace A035639.P10149261694266720949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A304800 n).toNat

end

end A035639.P10149261694266720949

/-!
# A035640: Number of partitions of n into parts 6k and 6k+4 with at least one part of each type.

The programs for A035640, there is no canonical definition to state claims against.
-/

/-! ## A035640.P3257710944302706345

`A035619(gcd(1+n, ∑[gcd(2, n)]))`
-/

namespace A035640.P3257710944302706345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035619 (Nat.gcd (1 + n) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A035640.P3257710944302706345

/-! ## A035640.P6938690095246454308

`∑{d}[n+1, A035619(#)*A063524((n+1)/#-1)]`
-/

namespace A035640.P6938690095246454308
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035619 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035640.P6938690095246454308

/-!
# A035641: Number of partitions of n into parts 6k and 6k+5 with at least one part of each type.

The programs for A035641, there is no canonical definition to state claims against.
-/

/-! ## A035641.P14129973462203112943

`A035656(A047253(n+1)%A166945(n+1))`
-/

namespace A035641.P14129973462203112943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035656 (Int.tmod (A047253 (n + 1)) (A166945 (n + 1))).toNat

end

end A035641.P14129973462203112943

/-!
# A035647: Number of partitions of n into parts 6k+2 and 6k+4 with at least one part of each type.

The programs for A035647, there is no canonical definition to state claims against.
-/

/-! ## A035647.P4956676947574289124

`A035620(A152271(n))`
-/

namespace A035647.P4956676947574289124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035620 (A152271 n).toNat

end

end A035647.P4956676947574289124

/-! ## A035647.P3028488654575150020

`∑{d}[n+1, A035620(#)*A063524((n+1)/#-1)]`
-/

namespace A035647.P3028488654575150020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035620 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035647.P3028488654575150020

/-! ## A035647.P12620686259524444315

`A173863(A022902(n+1))`
-/

namespace A035647.P12620686259524444315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173863 (A022902 (n + 1)).toNat

end

end A035647.P12620686259524444315

/-! ## A035647.P14446400236283450778

`A283982(A361522(n+1))`
-/

namespace A035647.P14446400236283450778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283982 (A361522 (n + 1)).toNat

end

end A035647.P14446400236283450778

/-!
# A035648: Number of partitions of n into parts 6k+2 and 6k+5 with at least one part of each type.

The programs for A035648, there is no canonical definition to state claims against.
-/

/-! ## A035648.P12826558592537257590

`A051903(A029198(n)!)`
-/

namespace A035648.P12826558592537257590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051903 (Nat.factorial (A029198 n).toNat)

end

end A035648.P12826558592537257590

/-! ## A035648.P10536540524523156596

`val(A029198(A008554(n+1))!, 2)`
-/

namespace A035648.P10536540524523156596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A029198 (A008554 (n + 1)).toNat).toNat) 2

end

end A035648.P10536540524523156596

/-! ## A035648.P5164299434369899062

`A001222(A034699(A029198(n)!))`
-/

namespace A035648.P5164299434369899062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034699 (Nat.factorial (A029198 n).toNat)).toNat

end

end A035648.P5164299434369899062

/-! ## A035648.P17891109841727068703

`A001222(C(31, A254436(n+1)))`
-/

namespace A035648.P17891109841727068703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (Nat.choose 31 (A254436 (n + 1)).toNat)

end

end A035648.P17891109841727068703

/-! ## A035648.P11667493172016698993

`lcm(A030401(A218115(n)), A035687(n+1))`
-/

namespace A035648.P11667493172016698993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A030401 (A218115 n).toNat) (A035687 (n + 1))

end

end A035648.P11667493172016698993

/-!
# A035649: Number of partitions of n into parts 6k+3 and 6k+4 with at least one part of each type.

The programs for A035649, there is no canonical definition to state claims against.
-/

/-! ## A035649.P18190165566545359681

`∑{e}[A012396(A288165(n+4)), #]`
-/

namespace A035649.P18190165566545359681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A012396 (A288165 (n + 4)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A035649.P18190165566545359681

/-! ## A035649.P14850161753620225951

`A058682(A008612(n)%A288941(n))`
-/

namespace A035649.P14850161753620225951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058682 (Int.tmod (A008612 n) (A288941 n)).toNat

end

end A035649.P14850161753620225951

/-! ## A035649.P8513497946667523665

`A146829(n+1)%A011782(A008612(n))`
-/

namespace A035649.P8513497946667523665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A146829 (n + 1)) (A011782 (A008612 n).toNat)

end

end A035649.P8513497946667523665

/-!
# A035650: Number of partitions of n into parts 6k+3 and 6k+5 with at least one part of each type.

The programs for A035650, there is no canonical definition to state claims against.
-/

/-! ## A035650.P2359784821163176133

`A223556(n+1)%A038548(A325545(n))`
-/

namespace A035650.P2359784821163176133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223556 (n + 1)) (A038548 (A325545 n).toNat)

end

end A035650.P2359784821163176133

/-! ## A035650.P17377921784285653904

`A073139(A120037(n))%A058398(3*(n+1))`
-/

namespace A035650.P17377921784285653904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A073139 (A120037 n).toNat) (A058398 (3 * (n + 1)))

end

end A035650.P17377921784285653904

/-!
# A035652: Number of partitions of n into parts 7k and 7k+2 with at least one part of each type.

The programs for A035652, there is no canonical definition to state claims against.
-/

/-! ## A035652.P13081114852838041507

`A001221(A194511(n+2)!!)`
-/

namespace A035652.P13081114852838041507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (Nat.factorial (A194511 (n + 2)).toNat))

end

end A035652.P13081114852838041507

/-! ## A035652.P16872207676836139218

`3%A000005(A194511(n+2)!!)`
-/

namespace A035652.P16872207676836139218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A000005 (Nat.factorial (Nat.factorial (A194511 (n + 2)).toNat)))

end

end A035652.P16872207676836139218

/-! ## A035652.P9498597174078182231

`A001222(A194511(n+2)!!)%4`
-/

namespace A035652.P9498597174078182231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001222 (Nat.factorial (Nat.factorial (A194511 (n + 2)).toNat))) 4

end

end A035652.P9498597174078182231

/-! ## A035652.P12415459282857938697

`A001222(ceil(sqrt(A194511(n+2)!!)))`
-/

namespace A035652.P12415459282857938697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈Real.sqrt (Nat.factorial (Nat.factorial (A194511 (n + 2)).toNat) : ℝ)⌉.toNat

end

end A035652.P12415459282857938697

/-! ## A035652.P11269951934688800492

`A316524(A275074(n))`
-/

namespace A035652.P11269951934688800492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (A275074 n).toNat

end

end A035652.P11269951934688800492

/-!
# A035653: Number of partitions of n into parts 7k and 7k+3 with at least one part of each type.

The programs for A035653, there is no canonical definition to state claims against.
-/

/-! ## A035653.P1742282047986079642

`A291217(A004273(n)%A094838(n+1))`
-/

namespace A035653.P1742282047986079642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291217 (Int.tmod (A004273 n) (A094838 (n + 1))).toNat

end

end A035653.P1742282047986079642

/-! ## A035653.P9062128420599515698

`A358479(A343638(n)^A261226(n))`
-/

namespace A035653.P9062128420599515698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358479 (SequenceMachineLib.roundAway ((A343638 n : ℚ) ^ (A261226 n : ℤ))).toNat

end

end A035653.P9062128420599515698

/-! ## A035653.P8758194951146074408

`A014081(A029362(A346127(n+1))!)`
-/

namespace A035653.P8758194951146074408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Nat.factorial (A029362 (A346127 (n + 1)).toNat).toNat)

end

end A035653.P8758194951146074408

/-! ## A035653.P79303863512828622

`A168399(n)%A168399(A120041(n))`
-/

namespace A035653.P79303863512828622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168399 n) (A168399 (A120041 n).toNat)

end

end A035653.P79303863512828622

/-!
# A035654: Number of partitions of n into parts 7k and 7k+4 with at least one part of each type.

The programs for A035654, there is no canonical definition to state claims against.
-/

/-! ## A035654.P4510519240377647889

`A377129(A249347(2*n+1)+2)`
-/

namespace A035654.P4510519240377647889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377129 (A249347 (2 * n + 1) + 2).toNat

end

end A035654.P4510519240377647889

/-! ## A035654.P7761922519680908995

`A037800(A026813(A194753(n+1))²)`
-/

namespace A035654.P7761922519680908995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A026813 (A194753 (n + 1)).toNat ^ 2).toNat

end

end A035654.P7761922519680908995

/-! ## A035654.P901568570056323227

`A001221(A008838(A194753(n+1))!)`
-/

namespace A035654.P901568570056323227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Nat.factorial (A008838 (A194753 (n + 1)).toNat).toNat)

end

end A035654.P901568570056323227

/-! ## A035654.P9098104693653995842

`A220166(n+1)%A219158(A065033(n))`
-/

namespace A035654.P9098104693653995842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A220166 (n + 1)) (A219158 (A065033 n).toNat)

end

end A035654.P9098104693653995842

/-! ## A035654.P6266623468082953508

`A072702(n+3)%A144379(A241377(n)+1)`
-/

namespace A035654.P6266623468082953508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072702 (n + 3)) (A144379 (A241377 n + 1).toNat)

end

end A035654.P6266623468082953508

/-!
# A035655: Number of partitions of n into parts 7k and 7k+5 with at least one part of each type.

The programs for A035655, there is no canonical definition to state claims against.
-/

/-! ## A035655.P15221569454759330258

`C(A269246(A002412(n)), 2)`
-/

namespace A035655.P15221569454759330258
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A269246 (A002412 n).toNat).toNat 2

end

end A035655.P15221569454759330258

/-! ## A035655.P231340912729866954

`Δ[A225638(C(A242763(n+1), 2))]`
-/

namespace A035655.P231340912729866954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225638 (Nat.choose (A242763 (n + 1)).toNat 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A035655.P231340912729866954

/-! ## A035655.P11900225980216261931

`A239871(A156724(3*(n+1)))%A115574(3*n+4)`
-/

namespace A035655.P11900225980216261931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239871 (A156724 (3 * (n + 1))).toNat) (A115574 (3 * n + 4))

end

end A035655.P11900225980216261931

/-!
# A035656: Number of partitions of n into parts 7k and 7k+6 with at least one part of each type.

The programs for A035656, there is no canonical definition to state claims against.
-/

/-! ## A035656.P7293317917435392813

`A035678(A382745(n+1)%A362578(n+1))`
-/

namespace A035656.P7293317917435392813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035678 (Int.tmod (A382745 (n + 1)) (A362578 (n + 1))).toNat

end

end A035656.P7293317917435392813

/-!
# A035657: Number of partitions of n into parts 7k+1 and 7k+2 with at least one part of each type.

The programs for A035657, there is no canonical definition to state claims against.
-/

/-! ## A035657.P867906184946362786

`∑[A185217(A185318(n)^A185218(n+1))]`
-/

namespace A035657.P867906184946362786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185217 (SequenceMachineLib.roundAway ((A185318 n : ℚ) ^ (A185218 (n + 1) : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035657.P867906184946362786

/-! ## A035657.P4944676520078825859

`A004526(lt[A051495(n), 12])`
-/

namespace A035657.P4944676520078825859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051495 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A035657.P4944676520078825859

/-! ## A035657.P1580600990249868447

`∑[abs(A107393(A279143(n)))]`
-/

namespace A035657.P1580600990249868447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A107393 (A279143 n).toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035657.P1580600990249868447

/-! ## A035657.P16396262641622120572

`A008611(∑[A008611(n)%A084507(n)])`
-/

namespace A035657.P16396262641622120572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008611 n) (A084507 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035657.P16396262641622120572

/-! ## A035657.P15202686077253609486

`A280079(A034893(n))`
-/

namespace A035657.P15202686077253609486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280079 (A034893 n).toNat

end

end A035657.P15202686077253609486

/-!
# A035661: Number of partitions of n into parts 7k+1 and 7k+6 with at least one part of each type.

The programs for A035661, there is no canonical definition to state claims against.
-/

/-! ## A035661.P738150998664525242

`A035430(n+1)-(A109708(n+1)+A109703(n+1))`
-/

namespace A035661.P738150998664525242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035430 (n + 1) - (A109708 (n + 1) + A109703 (n + 1))

end

end A035661.P738150998664525242

/-! ## A035661.P13163547047278519810

`A035684(lt[A035684(n+1), A106608(n)])`
-/

namespace A035661.P13163547047278519810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035684 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106608 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035684 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035661.P13163547047278519810

/-!
# A035663: Number of partitions of n into parts 7k+2 and 7k+4 with at least one part of each type.

The programs for A035663, there is no canonical definition to state claims against.
-/

/-! ## A035663.P13844220342019937450

`A035665(n+3)+A016789(n)%A144379(A034296(n))`
-/

namespace A035663.P13844220342019937450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035665 (n + 3) + Int.tmod (A016789 n) (A144379 (A034296 n).toNat)

end

end A035663.P13844220342019937450

/-! ## A035663.P11831899570405485687

`and(floor(n/4), A037308(A229083(n+3)))`
-/

namespace A035663.P11831899570405485687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ⌊(n : ℚ) / 4⌋ (A037308 (A229083 (n + 3)).toNat)

end

end A035663.P11831899570405485687

/-! ## A035663.P1595571299073004278

`and(A002265(n), A329116(A001590(n)))`
-/

namespace A035663.P1595571299073004278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A002265 n) (A329116 (A001590 n).toNat)

end

end A035663.P1595571299073004278

/-! ## A035663.P460707011033150907

`A293513(A159284(p?[A084964(n)]))`
-/

namespace A035663.P460707011033150907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293513 (A159284 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A035663.P460707011033150907

/-! ## A035663.P8938162143692942262

`A028743(n+1)%A008621(A089856(n))`
-/

namespace A035663.P8938162143692942262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028743 (n + 1)) (A008621 (A089856 n).toNat)

end

end A035663.P8938162143692942262

/-!
# A035664: Number of partitions of n into parts 7k+2 and 7k+5 with at least one part of each type.

The programs for A035664, there is no canonical definition to state claims against.
-/

/-! ## A035664.P14757513295379578287

`A035433(n+1)-(A109707(n+1)+A109704(n+1))`
-/

namespace A035664.P14757513295379578287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035433 (n + 1) - (A109707 (n + 1) + A109704 (n + 1))

end

end A035664.P14757513295379578287

/-! ## A035664.P7874297833034407022

`A262303(A263141(2*(n+1))+2)`
-/

namespace A035664.P7874297833034407022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262303 (A263141 (2 * (n + 1)) + 2).toNat

end

end A035664.P7874297833034407022

/-! ## A035664.P11879506036549227383

`A025902(eq[A025893(n+3), A025922(n)])`
-/

namespace A035664.P11879506036549227383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025893 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025922 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025902 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A035664.P11879506036549227383

/-! ## A035664.P500395949151872818

`A329885(A001147(floor(2*n/5))+dr(n)%2)`
-/

namespace A035664.P500395949151872818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329885 (A001147 ⌊2 * ((n : ℚ) / 5)⌋.toNat + ((SequenceMachineLib.digitalRoot (n : ℤ) % 2 : ℕ) : ℤ)).toNat

end

end A035664.P500395949151872818

/-! ## A035664.P7676398780709155178

`A025480(A035368(n+1)%A028743(n+1))`
-/

namespace A035664.P7676398780709155178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (Int.tmod (A035368 (n + 1)) (A028743 (n + 1))).toNat

end

end A035664.P7676398780709155178

/-!
# A035665: Number of partitions of n into parts 7k+2 and 7k+6 with at least one part of each type.

The programs for A035665, there is no canonical definition to state claims against.
-/

/-! ## A035665.P1333379557341263772

`A102673(lcm(A002965(n), A268686(n+2)))`
-/

namespace A035665.P1333379557341263772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102673 (Int.lcm (A002965 n) (A268686 (n + 2)))

end

end A035665.P1333379557341263772

/-!
# A035666: Number of partitions of n into parts 7k+3 and 7k+4 with at least one part of each type.

The programs for A035666, there is no canonical definition to state claims against.
-/

/-! ## A035666.P15884997243099382804

`A035435(n+1)-(A109706(n+1)+A109705(n+1))`
-/

namespace A035666.P15884997243099382804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035435 (n + 1) - (A109706 (n + 1) + A109705 (n + 1))

end

end A035666.P15884997243099382804

/-! ## A035666.P17237533698201493829

`A035654(n+5)+A000217(A004255(n+1))%A303168(n)`
-/

namespace A035666.P17237533698201493829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035654 (n + 5) + Int.tmod (A000217 (A004255 (n + 1)).toNat) (A303168 n)

end

end A035666.P17237533698201493829

/-! ## A035666.P7818173284443753901

`A035654(n+5)+A147515(n+1)%A000005(A147409(n+1))`
-/

namespace A035666.P7818173284443753901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035654 (n + 5) + Int.tmod (A147515 (n + 1)) (A000005 (A147409 (n + 1)).toNat)

end

end A035666.P7818173284443753901

/-! ## A035666.P4195166384619984118

`A319854(lt[A364917(n+1), A034836(3*(n+1))])`
-/

namespace A035666.P4195166384619984118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364917 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034836 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319854 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035666.P4195166384619984118

/-!
# A035667: Number of partitions of n into parts 7k+3 and 7k+5 with at least one part of each type.

The programs for A035667, there is no canonical definition to state claims against.
-/

/-! ## A035667.P12806176715577606255

`A196563(C(A262877(n), A055642(n)))`
-/

namespace A035667.P12806176715577606255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (Nat.choose (A262877 n).toNat (A055642 n).toNat)

end

end A035667.P12806176715577606255

/-! ## A035667.P11611369275346718126

`A125005(∑[∑[A087748(n)]])`
-/

namespace A035667.P11611369275346718126
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087748 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035667.P11611369275346718126

/-! ## A035667.P5789839198374111741

`A102679(A062937(n+1)-n)`
-/

namespace A035667.P5789839198374111741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102679 (A062937 (n + 1) - (n : ℤ)).toNat

end

end A035667.P5789839198374111741

/-!
# A035668: Number of partitions of n into parts 7k+3 and 7k+6 with at least one part of each type.

The programs for A035668, there is no canonical definition to state claims against.
-/

/-! ## A035668.P6448245651234430948

`A102605(A102613(2*n+1)%A102601(3*n+4))`
-/

namespace A035668.P6448245651234430948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102605 (Int.tmod (A102613 (2 * n + 1)) (A102601 (3 * n + 4))).toNat

end

end A035668.P6448245651234430948

/-!
# A035670: Number of partitions of n into parts 7k+4 and 7k+6 with at least one part of each type.

The programs for A035670, there is no canonical definition to state claims against.
-/

/-! ## A035670.P4813999001033151633

`and(A008647(n), A008810(n^3))`
-/

namespace A035670.P4813999001033151633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A008647 n) (A008810 (n ^ 3))

end

end A035670.P4813999001033151633

/-! ## A035670.P16472166527753404752

`and(n+2, A297042(A342589(n+1)))`
-/

namespace A035670.P16472166527753404752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 2 : ℤ) (A297042 (A342589 (n + 1)).toNat)

end

end A035670.P16472166527753404752

/-! ## A035670.P1121661487529761441

`A016789(n)%A144379(A034296(n))`
-/

namespace A035670.P1121661487529761441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016789 n) (A144379 (A034296 n).toNat)

end

end A035670.P1121661487529761441

/-! ## A035670.P13046891528863557608

`A025865(n)%A360493(A000009(n))`
-/

namespace A035670.P13046891528863557608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025865 n) (A360493 (A000009 n).toNat)

end

end A035670.P13046891528863557608

/-!
# A035672: Number of partitions of n into parts 8k and 8k+1 with at least one part of each type.

The programs for A035672, there is no canonical definition to state claims against.
-/

/-! ## A035672.P2227113941847000484

`A035637(A066530(n)%A090887(n+1))`
-/

namespace A035672.P2227113941847000484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035637 (Int.tmod (A066530 n) (A090887 (n + 1))).toNat

end

end A035672.P2227113941847000484

/-!
# A035673: Number of partitions of n into parts 8k and 8k+2 with at least one part of each type.

The programs for A035673, there is no canonical definition to state claims against.
-/

/-! ## A035673.P16348747763528007121

`A035621(A152271(n))`
-/

namespace A035673.P16348747763528007121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035621 (A152271 n).toNat

end

end A035673.P16348747763528007121

/-! ## A035673.P13536504677394825679

`∑{d}[n+1, A035621(#)*A063524((n+1)/#-1)]`
-/

namespace A035673.P13536504677394825679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035621 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035673.P13536504677394825679

/-! ## A035673.P6372869942288677451

`A387908(A022901(n+2))`
-/

namespace A035673.P6372869942288677451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A387908 (A022901 (n + 2)).toNat

end

end A035673.P6372869942288677451

/-! ## A035673.P1816081564361524270

`A391661(A264766(n))`
-/

namespace A035673.P1816081564361524270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391661 (A264766 n).toNat

end

end A035673.P1816081564361524270

/-! ## A035673.P5981417493288162228

`A307727(A306433((n+1)*A071330(n+1)))`
-/

namespace A035673.P5981417493288162228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307727 (A306433 ((n + 1 : ℤ) * A071330 (n + 1)).toNat).toNat

end

end A035673.P5981417493288162228

/-!
# A035674: Number of partitions of n into parts 8k and 8k+3 with at least one part of each type.

The programs for A035674, there is no canonical definition to state claims against.
-/

/-! ## A035674.P12738847516949575094

`A054907(2^A110658(n))`
-/

namespace A035674.P12738847516949575094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054907 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A110658 n : ℤ))).toNat

end

end A035674.P12738847516949575094

/-! ## A035674.P1347161567874795285

`A225643(A110658(n)!)/2`
-/

namespace A035674.P1347161567874795285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225643 (Nat.factorial (A110658 n).toNat) : ℚ) / 2

end

end A035674.P1347161567874795285

/-! ## A035674.P7607760898228586516

`C(A212627(n+3), A065297(A065332(n+1)))`
-/

namespace A035674.P7607760898228586516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A212627 (n + 3)).toNat (A065297 (A065332 (n + 1)).toNat).toNat

end

end A035674.P7607760898228586516

/-! ## A035674.P4415124793503020082

`A064532(A110657(n)^A110657(n))`
-/

namespace A035674.P4415124793503020082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (SequenceMachineLib.roundAway ((A110657 n : ℚ) ^ (A110657 n : ℤ))).toNat

end

end A035674.P4415124793503020082

/-!
# A035675: Number of partitions of n into parts 8k and 8k+4 with at least one part of each type.

The programs for A035675, there is no canonical definition to state claims against.
-/

/-! ## A035675.P3341797683303533908

`A035639(A037915(n))`
-/

namespace A035675.P3341797683303533908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A037915 n).toNat

end

end A035675.P3341797683303533908

/-! ## A035675.P9724743841287405467

`A035622(A152271(n))`
-/

namespace A035675.P9724743841287405467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A152271 n).toNat

end

end A035675.P9724743841287405467

/-! ## A035675.P197166754352039520

`A006477(A166514(A166514(n+1)))`
-/

namespace A035675.P197166754352039520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006477 (A166514 (A166514 (n + 1)).toNat).toNat

end

end A035675.P197166754352039520

/-!
# A035676: Number of partitions of n into parts 8k and 8k+5 with at least one part of each type.

The programs for A035676, there is no canonical definition to state claims against.
-/

/-! ## A035676.P6253824746481135726

`A000035(A025860(n+4))*A294879(A025860(n)!²)`
-/

namespace A035676.P6253824746481135726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A025860 (n + 4)).toNat * A294879 (Nat.factorial (A025860 n).toNat ^ 2)

end

end A035676.P6253824746481135726

/-! ## A035676.P7025919022083006419

`A102677(A025860(3*n))*A294879(A025860(n)!²)`
-/

namespace A035676.P7025919022083006419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102677 (A025860 (3 * n)).toNat * A294879 (Nat.factorial (A025860 n).toNat ^ 2)

end

end A035676.P7025919022083006419

/-! ## A035676.P4273483012898450282

`A063691(A097479(n)+A029340(n))`
-/

namespace A035676.P4273483012898450282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A097479 n + A029340 n).toNat

end

end A035676.P4273483012898450282

/-! ## A035676.P1833660603519118401

`A059433(n)%A276781(A276777(n))`
-/

namespace A035676.P1833660603519118401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A059433 n) (A276781 (A276777 n).toNat)

end

end A035676.P1833660603519118401

/-!
# A035677: Number of partitions of n into parts 8k and 8k + 6 with at least one part of each type.

The programs for A035677, there is no canonical definition to state claims against.
-/

/-! ## A035677.P9884342749729493816

`A035623(A152271(n))`
-/

namespace A035677.P9884342749729493816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (A152271 n).toNat

end

end A035677.P9884342749729493816

/-! ## A035677.P592087881491557121

`A035623(A065033(n))*A057979(A019429(n))`
-/

namespace A035677.P592087881491557121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (A065033 n).toNat * A057979 (A019429 n).toNat

end

end A035677.P592087881491557121

/-! ## A035677.P8213049382899707775

`A035674(A290480(n+1))`
-/

namespace A035677.P8213049382899707775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035674 (A290480 (n + 1)).toNat

end

end A035677.P8213049382899707775

/-! ## A035677.P3850101943268872163

`A035674(n+1)%A398454(n+1)`
-/

namespace A035677.P3850101943268872163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035674 (n + 1)) (A398454 (n + 1))

end

end A035677.P3850101943268872163

/-!
# A035678: Number of partitions of n into parts 8k and 8k+7 with at least one part of each type.

The programs for A035678, there is no canonical definition to state claims against.
-/

/-! ## A035678.P1381386723456638946

`A027800(n)%A176415(A008646(n+1))`
-/

namespace A035678.P1381386723456638946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A027800 n) (A176415 (A008646 (n + 1)).toNat)

end

end A035678.P1381386723456638946

/-! ## A035678.P9963314475711727595

`A274501(n+6)%A093655(A093655(n+2)+1)`
-/

namespace A035678.P9963314475711727595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A274501 (n + 6)) (A093655 (A093655 (n + 2) + 1).toNat)

end

end A035678.P9963314475711727595

/-!
# A035679: Number of partitions of n into parts 8k+1 and 8k+2 with at least one part of each type.

The programs for A035679, there is no canonical definition to state claims against.
-/

/-! ## A035679.P1601779889628628353

`A097545(A185284(2*n+1)+A008619(n))`
-/

namespace A035679.P1601779889628628353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097545 (A185284 (2 * n + 1) + A008619 n).toNat

end

end A035679.P1601779889628628353

/-!
# A035680: Number of partitions of n into parts 8k+1 and 8k+3 with at least one part of each type.

The programs for A035680, there is no canonical definition to state claims against.
-/

/-! ## A035680.P214806095556235877

`A035685(n+2)+val(A104465(A060805(n+1)), 16)`
-/

namespace A035680.P214806095556235877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035685 (n + 2) + (SequenceMachineLib.valuation (A104465 (A060805 (n + 1)).toNat).toNat 16 : ℤ)

end

end A035680.P214806095556235877

/-!
# A035685: Number of partitions of n into parts 8k+2 and 8k+3 with at least one part of each type.

The programs for A035685, there is no canonical definition to state claims against.
-/

/-! ## A035685.P1647268449347285197

`A340761((A028242(n)+1)%A096603(3*(n+1)))`
-/

namespace A035685.P1647268449347285197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340761 (Int.tmod (A028242 n + 1) (A096603 (3 * (n + 1)))).toNat

end

end A035685.P1647268449347285197

/-! ## A035685.P2739484924397977942

`val(A104465(A060805(n+1)), 16)`
-/

namespace A035685.P2739484924397977942
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A104465 (A060805 (n + 1)).toNat).toNat 16

end

end A035685.P2739484924397977942

/-! ## A035685.P13625639451660019183

`A097545(A185284(2*n+1)+A008619(n))-A035680(n+2)`
-/

namespace A035685.P13625639451660019183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097545 (A185284 (2 * n + 1) + A008619 n).toNat - A035680 (n + 2)

end

end A035685.P13625639451660019183

/-! ## A035685.P5835639651207058584

`A263280(A001444(A028242(n)))`
-/

namespace A035685.P5835639651207058584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263280 (A001444 (A028242 n).toNat).toNat

end

end A035685.P5835639651207058584

/-! ## A035685.P9923657105501438686

`A086597(A146623(n+2))+A035691(n+4)`
-/

namespace A035685.P9923657105501438686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A146623 (n + 2)).toNat + A035691 (n + 4)

end

end A035685.P9923657105501438686

/-!
# A035686: Number of partitions of n into parts 8k+2 and 8k+4 with at least one part of each type.

The programs for A035686, there is no canonical definition to state claims against.
-/

/-! ## A035686.P14051236046350549621

`A035624(A152271(n))`
-/

namespace A035686.P14051236046350549621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035624 (A152271 n).toNat

end

end A035686.P14051236046350549621

/-! ## A035686.P16961073724255055627

`∑{d}[n+1, A035624(#)*A063524((n+1)/#-1)]`
-/

namespace A035686.P16961073724255055627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035624 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035686.P16961073724255055627

/-! ## A035686.P11239153880546440190

`A340831(A004732(n))`
-/

namespace A035686.P11239153880546440190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340831 (A004732 n).toNat

end

end A035686.P11239153880546440190

/-! ## A035686.P16481100570074697969

`A243223(A221074(n))`
-/

namespace A035686.P16481100570074697969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243223 (A221074 n).toNat

end

end A035686.P16481100570074697969

/-! ## A035686.P9214709509408880548

`A333487(A135318(n))`
-/

namespace A035686.P9214709509408880548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333487 (A135318 n).toNat

end

end A035686.P9214709509408880548

/-!
# A035687: Number of partitions of n into parts 8k+2 and 8k+5 with at least one part of each type.

The programs for A035687, there is no canonical definition to state claims against.
-/

/-! ## A035687.P16877856795154486302

`A335097(A260671(A253852(n)²))`
-/

namespace A035687.P16877856795154486302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335097 (A260671 (A253852 n ^ 2).toNat).toNat

end

end A035687.P16877856795154486302

/-! ## A035687.P15555557291981653077

`A173636(A241644(n))`
-/

namespace A035687.P15555557291981653077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173636 (A241644 n).toNat

end

end A035687.P15555557291981653077

/-! ## A035687.P11364838851388452540

`A086597(A146623(n+2))`
-/

namespace A035687.P11364838851388452540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086597 (A146623 (n + 2)).toNat

end

end A035687.P11364838851388452540

/-! ## A035687.P18015485416887490747

`∑{e}[A106245(A185315(n)), #]`
-/

namespace A035687.P18015485416887490747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106245 (A185315 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A035687.P18015485416887490747

/-! ## A035687.P15938449680517089923

`A114841(2*(n+2))%A007895(A001037(n))`
-/

namespace A035687.P15938449680517089923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114841 (2 * (n + 2))) (A007895 (A001037 n).toNat)

end

end A035687.P15938449680517089923

/-!
# A035688: Number of partitions of n into parts 8k+2 and 8k+6 with at least one part of each type.

The programs for A035688, there is no canonical definition to state claims against.
-/

/-! ## A035688.P17151509078791086011

`A035625(A152271(n))`
-/

namespace A035688.P17151509078791086011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035625 (A152271 n).toNat

end

end A035688.P17151509078791086011

/-! ## A035688.P11241887964180379137

`and(1, n)*A035625(A065033(n))`
-/

namespace A035688.P11241887964180379137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A035625 (A065033 n).toNat

end

end A035688.P11241887964180379137

/-! ## A035688.P3540815930174444703

`∑{d}[n+1, A035625(#)*A063524((n+1)/#-1)]`
-/

namespace A035688.P3540815930174444703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035625 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035688.P3540815930174444703

/-! ## A035688.P12559168567801723661

`A037811(A046223(n+1))`
-/

namespace A035688.P12559168567801723661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037811 (A046223 (n + 1)).toNat

end

end A035688.P12559168567801723661

/-! ## A035688.P17383377519975738819

`A025458(A182735(n))`
-/

namespace A035688.P17383377519975738819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025458 (A182735 n).toNat

end

end A035688.P17383377519975738819

/-!
# A035689: Number of partitions of n into parts 8k+2 and 8k+7 with at least one part of each type.

The programs for A035689, there is no canonical definition to state claims against.
-/

/-! ## A035689.P5082712131829575704

`A161680(A025867(n))+A014081(A029362(n+2)!)`
-/

namespace A035689.P5082712131829575704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A025867 n).toNat + A014081 (Nat.factorial (A029362 (n + 2)).toNat)

end

end A035689.P5082712131829575704

/-! ## A035689.P370321310425463567

`A035696(A031285(n+2))+A014081(A029362(n+2)!)`
-/

namespace A035689.P370321310425463567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035696 (A031285 (n + 2)).toNat + A014081 (Nat.factorial (A029362 (n + 2)).toNat)

end

end A035689.P370321310425463567

/-! ## A035689.P11573311093207328451

`A161680(A025867(n))+3%A000120(A029362(n+2)!)`
-/

namespace A035689.P11573311093207328451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (A025867 n).toNat + Int.tmod 3 (A000120 (Nat.factorial (A029362 (n + 2)).toNat))

end

end A035689.P11573311093207328451

/-! ## A035689.P6475997418381546313

`val(A006530(A029229(n)!)!, 2)`
-/

namespace A035689.P6475997418381546313
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (Nat.factorial (A006530 (Nat.factorial (A029229 n).toNat)).toNat) 2

end

end A035689.P6475997418381546313

/-! ## A035689.P9529263372572725761

`A056847(A006530(A029229(n)!))`
-/

namespace A035689.P9529263372572725761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056847 (A006530 (Nat.factorial (A029229 n).toNat)).toNat

end

end A035689.P9529263372572725761

/-!
# A035691: Number of partitions of n into parts 8k+3 and 8k+5 with at least one part of each type.

The programs for A035691, there is no canonical definition to state claims against.
-/

/-! ## A035691.P13433316937065913779

`A345631(A223933(n+2))%A025788(n)`
-/

namespace A035691.P13433316937065913779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A345631 (A223933 (n + 2)).toNat) (A025788 n)

end

end A035691.P13433316937065913779

/-! ## A035691.P756596072572615028

`A262878(A263148(A263142(n+1)²))`
-/

namespace A035691.P756596072572615028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262878 (A263148 (A263142 (n + 1) ^ 2).toNat).toNat

end

end A035691.P756596072572615028

/-! ## A035691.P16961362930645311982

`A065727(n+1)%A323438(A193941(n))`
-/

namespace A035691.P16961362930645311982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065727 (n + 1)) (A323438 (A193941 n).toNat)

end

end A035691.P16961362930645311982

/-! ## A035691.P1489059136034420015

`A107006(3*n+5)%A323438(A193941(n))`
-/

namespace A035691.P1489059136034420015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107006 (3 * n + 5)) (A323438 (A193941 n).toNat)

end

end A035691.P1489059136034420015

/-! ## A035691.P2971757058706719187

`gcd(A035676(n+1)^A035632(2*n+5), A035629(n+1))`
-/

namespace A035691.P2971757058706719187
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((A035676 (n + 1) : ℚ) ^ (A035632 (2 * n + 5) : ℤ))) (A035629 (n + 1))

end

end A035691.P2971757058706719187

/-!
# A035692: Number of partitions of n into parts 8k+3 and 8k+6 with at least one part of each type.

The programs for A035692, there is no canonical definition to state claims against.
-/

/-! ## A035692.P4710282018650780136

`A196563(A300622(n*A025432(n)))`
-/

namespace A035692.P4710282018650780136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (A300622 ((n : ℤ) * A025432 n).toNat).toNat

end

end A035692.P4710282018650780136

/-! ## A035692.P16109761011717328568

`A025437(A270545(n)^A025432(n))`
-/

namespace A035692.P16109761011717328568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (SequenceMachineLib.roundAway ((A270545 n : ℚ) ^ (A025432 n : ℤ))).toNat

end

end A035692.P16109761011717328568

/-! ## A035692.P14800765456514819253

`A001222(A008288(A293517(n)))`
-/

namespace A035692.P14800765456514819253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008288 (A293517 n).toNat).toNat

end

end A035692.P14800765456514819253

/-! ## A035692.P12892679213549754486

`A279061(A000045(n)*A025432(n))`
-/

namespace A035692.P12892679213549754486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279061 (A000045 n * A025432 n).toNat

end

end A035692.P12892679213549754486

/-!
# A035693: Number of partitions of n into parts 8k+3 and 8k+7 with at least one part of each type.

The programs for A035693, there is no canonical definition to state claims against.
-/

/-! ## A035693.P6465407293257033538

`∑[A004457(n)]%A262681(A004068(n))`
-/

namespace A035693.P6465407293257033538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004457 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A262681 (A004068 n).toNat)

end

end A035693.P6465407293257033538

/-! ## A035693.P16766372050015189462

`A073490(A213682(n)+A002260(n+1))`
-/

namespace A035693.P16766372050015189462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073490 (A213682 n + A002260 (n + 1)).toNat

end

end A035693.P16766372050015189462

/-! ## A035693.P17477658255518672482

`A269243(A241737(n)*A358458(n+4))`
-/

namespace A035693.P17477658255518672482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269243 (A241737 n * A358458 (n + 4)).toNat

end

end A035693.P17477658255518672482

/-! ## A035693.P10553021018906389109

`A092573(A261692(3*n+1)-A261692(n))`
-/

namespace A035693.P10553021018906389109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092573 (A261692 (3 * n + 1) - A261692 n).toNat

end

end A035693.P10553021018906389109

/-!
# A035694: Number of partitions of n into parts 8k+4 and 8k+5 with at least one part of each type.

The programs for A035694, there is no canonical definition to state claims against.
-/

/-! ## A035694.P9665475142741937355

`A294879(A025860(n)!²)`
-/

namespace A035694.P9665475142741937355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294879 (Nat.factorial (A025860 n).toNat ^ 2)

end

end A035694.P9665475142741937355

/-! ## A035694.P1994246942353340637

`A007895(A099906(A025860(n)!))`
-/

namespace A035694.P1994246942353340637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (A099906 (Nat.factorial (A025860 n).toNat)).toNat

end

end A035694.P1994246942353340637

/-! ## A035694.P15809587671569551496

`A063691(A097479(n)+A029340(n))+A035676(n+5)`
-/

namespace A035694.P15809587671569551496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (A097479 n + A029340 n).toNat + A035676 (n + 5)

end

end A035694.P15809587671569551496

/-! ## A035694.P5751437934859376438

`A262677(C(and(n, -4)+n, A286751(n+2)))`
-/

namespace A035694.P5751437934859376438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262677 (Nat.choose (Int.land (n : ℤ) (-4) + (n : ℤ)).toNat (A286751 (n + 2)).toNat)

end

end A035694.P5751437934859376438

/-!
# A035695: Number of partitions of n into parts 8k+4 and 8k+6 with at least one part of each type.

The programs for A035695, there is no canonical definition to state claims against.
-/

/-! ## A035695.P1597789702468263604

`A035626(floor(n/2)^(n%2)+1)`
-/

namespace A035695.P1597789702468263604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035626 (⌊(n : ℚ) / 2⌋ ^ (n % 2) + 1).toNat

end

end A035695.P1597789702468263604

/-! ## A035695.P3031235230289488220

`∑{d}[n+1, A035626(#)*A063524((n+1)/#-1)]`
-/

namespace A035695.P3031235230289488220
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035626 d * A063524 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A035695.P3031235230289488220

/-! ## A035695.P6757322941392228709

`A335622(A262155(n+1))`
-/

namespace A035695.P6757322941392228709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335622 (A262155 (n + 1)).toNat

end

end A035695.P6757322941392228709

/-! ## A035695.P4398984114058590063

`A037912(A162396(n+2))`
-/

namespace A035695.P4398984114058590063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037912 (A162396 (n + 2)).toNat

end

end A035695.P4398984114058590063

/-!
# A035696: Number of partitions of n into parts 8k+4 and 8k+7 with at least one part of each type.

The programs for A035696, there is no canonical definition to state claims against.
-/

/-! ## A035696.P13595360349502408206

`A035678(n+1)+A035678(record[A031285(n)])`
-/

namespace A035696.P13595360349502408206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035678 (n + 1) + A035678 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A035696.P13595360349502408206

/-! ## A035696.P2085461943282183092

`A151429(A151429(A035678(n+1)))+A035678(n+5)`
-/

namespace A035696.P2085461943282183092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151429 (A151429 (A035678 (n + 1)).toNat).toNat + A035678 (n + 5)

end

end A035696.P2085461943282183092

/-! ## A035696.P7700030365864442093

`A035678(n+5)+A027800(n)%A176415(A008646(n+1))`
-/

namespace A035696.P7700030365864442093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035678 (n + 5) + Int.tmod (A027800 n) (A176415 (A008646 (n + 1)).toNat)

end

end A035696.P7700030365864442093

/-! ## A035696.P9118175569135987558

`A035678(n+5)+A274501(n+6)%A093655(A093655(n+2)+1)`
-/

namespace A035696.P9118175569135987558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035678 (n + 5) + Int.tmod (A274501 (n + 6)) (A093655 (A093655 (n + 2) + 1).toNat)

end

end A035696.P9118175569135987558

/-! ## A035696.P17054510450488030606

`A161680(A025867(abs(2-n))%A227348(n+1))`
-/

namespace A035696.P17054510450488030606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 (Int.tmod (A025867 |2 - (n : ℤ)|.toNat) (A227348 (n + 1))).toNat

end

end A035696.P17054510450488030606

/-!
# A035698: Number of partitions of n into parts 8k+5 and 8k+7 with at least one part of each type.

The programs for A035698, there is no canonical definition to state claims against.
-/

/-! ## A035698.P2194147968951398347

`comp[∑[n]]%A228351(A246078(3*(n+1)))`
-/

namespace A035698.P2194147968951398347
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A228351 (A246078 (3 * (n + 1))).toNat)

end

end A035698.P2194147968951398347

/-! ## A035698.P14807972405811497934

`A333348(A036851(n+1)^A081705(n+1))`
-/

namespace A035698.P14807972405811497934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333348 (SequenceMachineLib.roundAway ((A036851 (n + 1) : ℚ) ^ (A081705 (n + 1) : ℤ))).toNat

end

end A035698.P14807972405811497934

/-! ## A035698.P5211421636692430709

`floor(A157045(p?[2*n+1])/4)`
-/

namespace A035698.P5211421636692430709
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A157045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) : ℚ) / 4⌋

end

end A035698.P5211421636692430709

/-! ## A035698.P15708165974435742202

`val(A213649(A017910(n)), 4)`
-/

namespace A035698.P15708165974435742202
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A213649 (A017910 n).toNat).toNat 4

end

end A035698.P15708165974435742202

/-! ## A035698.P18078806753929207656

`val(A294675(n+1), A316830(2*n+3)!)`
-/

namespace A035698.P18078806753929207656
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A294675 (n + 1)).toNat (Nat.factorial (A316830 (2 * n + 3)).toNat)

end

end A035698.P18078806753929207656

