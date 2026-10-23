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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C037
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
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
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

/-!
# A035600: Number of points of L1 norm 6 in cubic lattice Z^n.

The programs for A035600, the canonical program `A035600.P16790839402554441971` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035600 has offset 0).

The definition of A035600 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035600.P16790839402554441971

`(4*n^6+40*n^4+46*n²)/45`

The canonical program, it is in `Seq.B000.C006`.
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

The programs for A035601, the canonical program `A035601.P1303867217452346543` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035601 has offset 0).

The definition of A035601 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A035601.P1303867217452346543

`(8*n^7+140*n^5+392*n^3+90*n)/315`

The canonical program, it is in `Seq.B000.C006`.
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

The programs for A035605, the canonical program `A035605.P8746881321390343686` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035605 has offset 0).

The definition of A035605 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A035605

/-- `∑[2*A035604(n)]-A035604(n)` -/
def P8746881321390343686.Spec : Prop :=
  ∀ n, P8746881321390343686.a n = A035605 n

theorem P8746881321390343686.correct : P8746881321390343686.Spec := by
  intro n
  simp only [A035605]

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

The programs for A035606, the canonical program `A035606.P15826716796151369121` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035606 has offset 0).

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

end A035606

/-! ## A035606.P15826716796151369121

`∑[2*A035605(n)]-A035605(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A035606

/-- `∑[2*A035605(n)]-A035605(n)` -/
def P15826716796151369121.Spec : Prop :=
  ∀ n, P15826716796151369121.a n = A035606 n

theorem P15826716796151369121.correct : P15826716796151369121.Spec := by
  intro n
  simp only [A035606]

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

The programs for A035607, there is no canonical definition to state claims against.
-/

/-! ## A035607.P511310615416921630

`2*A008288(n)-A266213(n)`
-/

namespace A035607.P511310615416921630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008288 n - A266213 n

end

end A035607.P511310615416921630

/-! ## A035607.P10027210233766366476

`A113413(n)+A122542(n)-A266213(n)`
-/

namespace A035607.P10027210233766366476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 n + (A122542 n - A266213 n)

end

end A035607.P10027210233766366476

/-! ## A035607.P7105757504883412883

`A113413(A061579(n))`
-/

namespace A035607.P7105757504883412883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113413 (A061579 n).toNat

end

end A035607.P7105757504883412883

/-! ## A035607.P7811795884436603652

`A266213(A007401(n+1))`
-/

namespace A035607.P7811795884436603652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A007401 (n + 1)).toNat

end

end A035607.P7811795884436603652

/-! ## A035607.P10040384780231533595

`A266213(A014132(n+1)-1)`
-/

namespace A035607.P10040384780231533595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (A014132 (n + 1) - 1).toNat

end

end A035607.P10040384780231533595

/-! ## A035607.P747892692581417163

`A266213(lt[A073423(n+1), 1])`
-/

namespace A035607.P747892692581417163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A035607.P747892692581417163

/-! ## A035607.P17315874810159397829

`A266213(lt[A073423(n), 1]-1)`
-/

namespace A035607.P17315874810159397829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073423 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n - 1)

end

end A035607.P17315874810159397829

/-! ## A035607.P4851158301740051182

`A266213(lt[1, A136614(n)*A266213(n)])`
-/

namespace A035607.P4851158301740051182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136614 n * A266213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A035607.P4851158301740051182

/-! ## A035607.P1054209412981580665

`A266213(lt[A073423(n)/2, A266213(n)])`
-/

namespace A035607.P1054209412981580665
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073423 n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266213 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A035607.P1054209412981580665

/-! ## A035607.P8552301859288592792

`A128966(n)+A122542(n)`
-/

namespace A035607.P8552301859288592792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128966 n + A122542 n

end

end A035607.P8552301859288592792

/-! ## A035607.P16806028197552396134

`A249252(n)/A059268(n)`
-/

namespace A035607.P16806028197552396134
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249252 n : ℚ) / (A059268 n : ℚ)

end

end A035607.P16806028197552396134

/-!
# A035608: Expansion of g.f. x*(1 + 3*x)/((1 + x)*(1 - x)^3).

The programs for A035608, the canonical program `A035608.P12529111731240771770` is in `Seq.B000.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035608 has offset 0).

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

The canonical program, it is in `Seq.B000.C006`.
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

/-! ## A035608.P15564790109270183715

`∑[record[and(2, n)+n]]`
-/

namespace A035608.P15564790109270183715
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 2 n + n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P15564790109270183715

namespace A035608

/-- `∑[record[and(2, n)+n]]` -/
def P15564790109270183715.Spec : Prop :=
  ∀ n, (P15564790109270183715.a n : ℤ) = A035608 n

end A035608

/-! ## A035608.P11407013800608480641

`∑[record[n-and(2, n)]]`
-/

namespace A035608.P11407013800608480641
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (Nat.land 2 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P11407013800608480641

namespace A035608

/-- `∑[record[n-and(2, n)]]` -/
def P11407013800608480641.Spec : Prop :=
  ∀ n, P11407013800608480641.a n = A035608 n

end A035608

/-! ## A035608.P1658240953387774203

`∑[2*n-n%2]`
-/

namespace A035608.P1658240953387774203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - ((n % 2 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P1658240953387774203

namespace A035608

/-- `∑[2*n-n%2]` -/
def P1658240953387774203.Spec : Prop :=
  ∀ n, P1658240953387774203.a n = A035608 n

end A035608

/-! ## A035608.P2362180240668142399

`∑[or(1, n)-1+n]`
-/

namespace A035608.P2362180240668142399
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P2362180240668142399

namespace A035608

/-- `∑[or(1, n)-1+n]` -/
def P2362180240668142399.Spec : Prop :=
  ∀ n, P2362180240668142399.a n = A035608 n

end A035608

/-! ## A035608.P8284672909029360309

`∑[n-(1-or(1, n))]`
-/

namespace A035608.P8284672909029360309
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (1 - (Nat.lor 1 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A035608.P8284672909029360309

namespace A035608

/-- `∑[n-(1-or(1, n))]` -/
def P8284672909029360309.Spec : Prop :=
  ∀ n, P8284672909029360309.a n = A035608 n

end A035608

/-!
# A035609: Coordination sequence for lattice D*_20 (with edges defined by l_1 norm = 1).

The programs for A035609, there is no canonical definition to state claims against.
-/

/-! ## A035609.P6346738362427217138

`record[gcd(floor(n/10), A035715(n))]`
-/

namespace A035609.P6346738362427217138
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊(n : ℚ) / 10⌋ (A035715 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035609.P6346738362427217138

/-! ## A035609.P11926904084051130736

`A035715(n^A139337(n))`
-/

namespace A035609.P11926904084051130736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035715 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A139337 n : ℤ))).toNat

end

end A035609.P11926904084051130736

/-! ## A035609.P4411493102632938103

`A035715(n^A213217(n))`
-/

namespace A035609.P4411493102632938103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035715 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A213217 n : ℤ))).toNat

end

end A035609.P4411493102632938103

/-! ## A035609.P6022881635218336757

`A035715(n)^exp(A056965(n))`
-/

namespace A035609.P6022881635218336757
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035715 n : ℝ) ^ (Real.exp (A056965 n : ℝ))

end

end A035609.P6022881635218336757

/-! ## A035609.P6974893708696905519

`A035715(n)^exp(A309660(n))`
-/

namespace A035609.P6974893708696905519
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A035715 n : ℝ) ^ (Real.exp (A309660 n : ℝ))

end

end A035609.P6974893708696905519

/-!
# A035610: G.f.: 3/(1 + 2*sqrt(1-12*x)).

The programs for A035610, there is no canonical definition to state claims against.
-/

/-! ## A035610.P9909286091038191012

`A128386(2*n)`
-/

namespace A035610.P9909286091038191012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128386 (2 * n)

end

end A035610.P9909286091038191012

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

/-! ## A035610.P4737917829935898909

`gcd(4, C(2, n+2))*A194724(n)`
-/

namespace A035610.P4737917829935898909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 4 (Nat.choose 2 (n + 2)) : ℤ) * A194724 n

end

end A035610.P4737917829935898909

/-! ## A035610.P17823744653839286142

`A010685(A038573(n))*A194724(n)`
-/

namespace A035610.P17823744653839286142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A038573 n).toNat * A194724 n

end

end A035610.P17823744653839286142

/-! ## A035610.P6086622901147972220

`A010685(A040976(n+1))*A194724(n)`
-/

namespace A035610.P6086622901147972220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 (A040976 (n + 1)).toNat * A194724 n

end

end A035610.P6086622901147972220

/-! ## A035610.P7184442153996435613

`A039598(A020705(C(2, n+2)))*A194724(n)`
-/

namespace A035610.P7184442153996435613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039598 (A020705 (Nat.choose 2 (n + 2))).toNat * A194724 n

end

end A035610.P7184442153996435613

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

/-! ## A035610.P16176868498004756141

`record[A183135(n+1)/A050166(n+6)]`
-/

namespace A035610.P16176868498004756141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183135 (n + 1) : ℚ) / (A050166 (n + 6) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A035610.P16176868498004756141

/-!
# A035611: Coordination sequence for lattice D*_22 (with edges defined by l_1 norm = 1).

The programs for A035611, there is no canonical definition to state claims against.
-/

/-! ## A035611.P14006450411173495680

`A035717(n)^gcd(11, n)`
-/

namespace A035611.P14006450411173495680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035717 n ^ Nat.gcd 11 n

end

end A035611.P14006450411173495680

/-! ## A035611.P17141859949721149977

`A035717(A062399(n))`
-/

namespace A035611.P17141859949721149977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035717 (A062399 n).toNat

end

end A035611.P17141859949721149977

/-! ## A035611.P18301235833408459361

`A035717(n)^A055961(n)!`
-/

namespace A035611.P18301235833408459361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035717 n ^ Nat.factorial (A055961 n).toNat

end

end A035611.P18301235833408459361

/-! ## A035611.P4927478051131428789

`A035717(n)+A000007(A001519(n))`
-/

namespace A035611.P4927478051131428789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035717 n + A000007 (A001519 n).toNat

end

end A035611.P4927478051131428789

/-! ## A035611.P14591202323680050242

`A035717(n)+A007814(A002426(n))`
-/

namespace A035611.P14591202323680050242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035717 n + A007814 (A002426 n).toNat

end

end A035611.P14591202323680050242

/-!
# A035612: Horizontal para-Fibonacci sequence: says which column of Wythoff array (starting column count at 1) contains n.

The programs for A035612, the canonical program `A035612.P7106491847305260424` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035612 has offset 1).

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

/-! ## A035612.P7106491847305260424

`val(A022340(n+1), 2)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A035612

/-- `val(A022340(n+1), 2)` -/
def P7106491847305260424.Spec : Prop :=
  ∀ n, (P7106491847305260424.a n : ℤ) = A035612 (n + 1)

theorem P7106491847305260424.correct : P7106491847305260424.Spec := by
  intro n
  simp only [A035612, Nat.add_sub_cancel]

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

/-! ## A035612.P8253338378541265952

`val(record[A130310(n+1)], 2)`
-/

namespace A035612.P8253338378541265952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130310 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat 2

end

end A035612.P8253338378541265952

namespace A035612

/-- `val(record[A130310(n+1)], 2)` -/
def P8253338378541265952.Spec : Prop :=
  ∀ n, (P8253338378541265952.a n : ℤ) = A035612 (n + 1)

end A035612

/-!
# A035614: Horizontal para-Fibonacci sequence: says which column of Wythoff array (starting column count at 0) contains n+1.

The programs for A035614, the canonical program `A035614.P1531182426394583162` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A035614 has offset 0).

The definition of A035614 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

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

/-! ## A035614.P1531182426394583162

`A035612(n+1)-1`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A035614

/-- `A035612(n+1)-1` -/
def P1531182426394583162.Spec : Prop :=
  ∀ n, P1531182426394583162.a n = A035614 n

theorem P1531182426394583162.correct : P1531182426394583162.Spec := by
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

/-! ## A035614.P7982000753070488810

`val(A003714(n+1), 2)`
-/

namespace A035614.P7982000753070488810
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A003714 (n + 1)).toNat 2

end

end A035614.P7982000753070488810

namespace A035614

/-- `val(A003714(n+1), 2)` -/
def P7982000753070488810.Spec : Prop :=
  ∀ n, (P7982000753070488810.a n : ℤ) = A035614 n

end A035614

/-! ## A035614.P9486295788398331683

`val(A048297(n+1)-1, 2)`
-/

namespace A035614.P9486295788398331683
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A048297 (n + 1) - 1).toNat 2

end

end A035614.P9486295788398331683

namespace A035614

/-- `val(A048297(n+1)-1, 2)` -/
def P9486295788398331683.Spec : Prop :=
  ∀ n, (P9486295788398331683.a n : ℤ) = A035614 n

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

/-! ## A035615.P4816478006794095737

`and(-1, A323844(A000217(n)))`
-/

namespace A035615.P4816478006794095737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A323844 (A000217 n).toNat)

end

end A035615.P4816478006794095737

/-! ## A035615.P9757586493251662336

`A323844(A000217(n))+A025442(n)`
-/

namespace A035615.P9757586493251662336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A000217 n).toNat + A025442 n

end

end A035615.P9757586493251662336

/-! ## A035615.P6859260141527275855

`A323844(A000217(n))+A025469(n)`
-/

namespace A035615.P6859260141527275855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A000217 n).toNat + A025469 n

end

end A035615.P6859260141527275855

/-! ## A035615.P865736432112140586

`A323844(A000217(n))+A184945(n)`
-/

namespace A035615.P865736432112140586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A000217 n).toNat + A184945 n

end

end A035615.P865736432112140586

/-!
# A035617: Number of winning length n strings with a 3-symbol alphabet in "same game".

The programs for A035617, there is no canonical definition to state claims against.
-/

/-! ## A035617.P3896909627527036305

`A323844(∑[n+1]+1)`
-/

namespace A035617.P3896909627527036305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A035617.P3896909627527036305

/-! ## A035617.P10576454975105391430

`gcd(A055641(n), A323844(A000124(n+1)))`
-/

namespace A035617.P10576454975105391430
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A055641 n) (A323844 (A000124 (n + 1)).toNat)

end

end A035617.P10576454975105391430

/-! ## A035617.P1974962935691188103

`A323844(A000124(n+1))+A000007(n+4)`
-/

namespace A035617.P1974962935691188103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A000124 (n + 1)).toNat + A000007 (n + 4)

end

end A035617.P1974962935691188103

/-! ## A035617.P9015635085969994765

`C(A323844(A000124(n+1)), A085021(n+1))`
-/

namespace A035617.P9015635085969994765
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A323844 (A000124 (n + 1)).toNat).toNat (A085021 (n + 1)).toNat

end

end A035617.P9015635085969994765

/-! ## A035617.P14804616711580842942

`A323844(A000124(n+1))+A151878(2*n+1)`
-/

namespace A035617.P14804616711580842942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323844 (A000124 (n + 1)).toNat + A151878 (2 * n + 1)

end

end A035617.P14804616711580842942

/-!
# A035618: Number of partitions of n into parts 3k and 3k+1 with at least one part of each type.

The programs for A035618, there is no canonical definition to state claims against.
-/

/-! ## A035618.P9604540594282234903

`A035638(2*(n+1))`
-/

namespace A035618.P9604540594282234903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035638 (2 * (n + 1))

end

end A035618.P9604540594282234903

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

/-! ## A035618.P11832653299453845525

`A035638(A051755(n+2))%A000041(n)`
-/

namespace A035618.P11832653299453845525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035638 (A051755 (n + 2)).toNat) (A000041 n)

end

end A035618.P11832653299453845525

/-!
# A035619: Number of partitions of n into parts 3k and 3k+2 with at least one part of each type.

The programs for A035619, there is no canonical definition to state claims against.
-/

/-! ## A035619.P285856941644161448

`A035640(2*(n+1))`
-/

namespace A035619.P285856941644161448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035640 (2 * (n + 1))

end

end A035619.P285856941644161448

/-! ## A035619.P4230023195684145988

`A035640(A103517(n))%A000726(n)`
-/

namespace A035619.P4230023195684145988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035640 (A103517 n).toNat) (A000726 n)

end

end A035619.P4230023195684145988

/-! ## A035619.P15013054472597011144

`A035640(A103517(n))+A000007(n+1)`
-/

namespace A035619.P15013054472597011144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035640 (A103517 n).toNat + A000007 (n + 1)

end

end A035619.P15013054472597011144

/-! ## A035619.P2718468651359267464

`A035640(A103517(n))+A000038(n+1)`
-/

namespace A035619.P2718468651359267464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035640 (A103517 n).toNat + A000038 (n + 1)

end

end A035619.P2718468651359267464

/-! ## A035619.P13910288882711847759

`(1-A000007(n))*A035640(A103517(n))`
-/

namespace A035619.P13910288882711847759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000007 n) * A035640 (A103517 n).toNat

end

end A035619.P13910288882711847759

/-! ## A035619.P5908704082346662254

`(1-A000038(n))*A035640(A103517(n))`
-/

namespace A035619.P5908704082346662254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A000038 n) * A035640 (A103517 n).toNat

end

end A035619.P5908704082346662254

/-! ## A035619.P16723567412657178246

`A001511(Δ[n²])*A035640(A103517(n))`
-/

namespace A035619.P16723567412657178246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat * A035640 (A103517 n).toNat

end

end A035619.P16723567412657178246

/-! ## A035619.P3440794255341015695

`abs(A035640(A103517(n))/A034947(n+1))`
-/

namespace A035619.P3440794255341015695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A035640 (A103517 n).toNat : ℚ) / (A034947 (n + 1) : ℚ)|

end

end A035619.P3440794255341015695

/-! ## A035619.P6652021864725523745

`A035640(n+2+n)%A279755(n)`
-/

namespace A035619.P6652021864725523745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035640 (n + 2 + n)) (A279755 n)

end

end A035619.P6652021864725523745

/-! ## A035619.P14860048544209273153

`A035640(A103517(n))/A001511(A154833(n+1))`
-/

namespace A035619.P14860048544209273153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035640 (A103517 n).toNat : ℚ) / (A001511 (A154833 (n + 1)).toNat : ℚ)

end

end A035619.P14860048544209273153

/-! ## A035619.P16399403358826152802

`A035640(A103517(n))-A000038(A074909(n))²`
-/

namespace A035619.P16399403358826152802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035640 (A103517 n).toNat - A000038 (A074909 n).toNat ^ 2

end

end A035619.P16399403358826152802

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

/-! ## A035620.P12026291192239327265

`A035647(2*(n+1))`
-/

namespace A035620.P12026291192239327265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035647 (2 * (n + 1))

end

end A035620.P12026291192239327265

/-! ## A035620.P4832419935523995724

`lcm((n-A014681(n))², A035647(n+2+n))`
-/

namespace A035620.P4832419935523995724
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (((n : ℤ) - A014681 n) ^ 2) (A035647 (n + 2 + n))

end

end A035620.P4832419935523995724

/-! ## A035620.P7318619600251025827

`A035647(n+2+n)%A076968(n+1)`
-/

namespace A035620.P7318619600251025827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035647 (n + 2 + n)) (A076968 (n + 1))

end

end A035620.P7318619600251025827

/-! ## A035620.P3739097533589756343

`A035647(n+2+n)%A132045(n)`
-/

namespace A035620.P3739097533589756343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035647 (n + 2 + n)) (A132045 n)

end

end A035620.P3739097533589756343

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

/-! ## A035621.P15555569166116070005

`A035673(Δ[A027691(n)])%A002559(n+1)`
-/

namespace A035621.P15555569166116070005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035673 (f1 (n + 1) - f1 n).toNat) (A002559 (n + 1))

end

end A035621.P15555569166116070005

/-! ## A035621.P13170736682121863460

`A003215(n)%2*A035673(Δ[A027691(n)])`
-/

namespace A035621.P13170736682121863460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003215 n) 2 * A035673 (f1 (n + 1) - f1 n).toNat

end

end A035621.P13170736682121863460

/-! ## A035621.P14678104899209834644

`A035673(Δ[A027691(n)])/A091236(n+1)%2`
-/

namespace A035621.P14678104899209834644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035673 (f1 (n + 1) - f1 n).toNat : ℚ) / (Int.tmod (A091236 (n + 1)) 2 : ℚ)

end

end A035621.P14678104899209834644

/-! ## A035621.P5084587245757900356

`A035673(Δ[A027691(n)])/A351431(n+1)%2`
-/

namespace A035621.P5084587245757900356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035673 (f1 (n + 1) - f1 n).toNat : ℚ) / (Int.tmod (A351431 (n + 1)) 2 : ℚ)

end

end A035621.P5084587245757900356

/-! ## A035621.P9029008396015126966

`A035673(Δ[A027691(n)])%A068921(n)`
-/

namespace A035621.P9029008396015126966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035673 (f1 (n + 1) - f1 n).toNat) (A068921 n)

end

end A035621.P9029008396015126966

/-! ## A035621.P5361385695966442703

`A035673(Δ[A027691(n)])*A321104(3*n)`
-/

namespace A035621.P5361385695966442703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035673 (f1 (n + 1) - f1 n).toNat * A321104 (3 * n)

end

end A035621.P5361385695966442703

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

/-! ## A035622.P11464263249858059745

`A035639(A351412(n+1))`
-/

namespace A035622.P11464263249858059745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A351412 (n + 1)).toNat

end

end A035622.P11464263249858059745

/-! ## A035622.P13940100580919414291

`A035639(A099467(n+1))`
-/

namespace A035622.P13940100580919414291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A099467 (n + 1)).toNat

end

end A035622.P13940100580919414291

/-! ## A035622.P15411228716376134332

`A035639(A267528(n+1))`
-/

namespace A035622.P15411228716376134332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A267528 (n + 1)).toNat

end

end A035622.P15411228716376134332

/-! ## A035622.P7899155900566147508

`A035639(A294732(n+2))`
-/

namespace A035622.P7899155900566147508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A294732 (n + 2)).toNat

end

end A035622.P7899155900566147508

/-! ## A035622.P12615271519877546223

`A006477(A142150(n))`
-/

namespace A035622.P12615271519877546223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006477 (A142150 n).toNat

end

end A035622.P12615271519877546223

/-! ## A035622.P8954912143037939971

`A006477(A166514(n))`
-/

namespace A035622.P8954912143037939971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006477 (A166514 n).toNat

end

end A035622.P8954912143037939971

/-! ## A035622.P15861655468515399566

`A006477(A057979(n+1))`
-/

namespace A035622.P15861655468515399566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006477 (A057979 (n + 1)).toNat

end

end A035622.P15861655468515399566

/-! ## A035622.P11340463418042372858

`A035675(A257088(n))`
-/

namespace A035622.P11340463418042372858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A257088 n).toNat

end

end A035622.P11340463418042372858

/-! ## A035622.P5519358711632842792

`A035675(A019425(n+1))`
-/

namespace A035622.P5519358711632842792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A019425 (n + 1)).toNat

end

end A035622.P5519358711632842792

/-! ## A035622.P4080367390726397503

`A035675(A267046(n+1))`
-/

namespace A035622.P4080367390726397503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A267046 (n + 1)).toNat

end

end A035622.P4080367390726397503

/-! ## A035622.P6988812721118767826

`A035675(A004277(n))`
-/

namespace A035622.P6988812721118767826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A004277 n).toNat

end

end A035622.P6988812721118767826

/-! ## A035622.P15569217083348109034

`A035675(A057543(n))`
-/

namespace A035622.P15569217083348109034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A057543 n).toNat

end

end A035622.P15569217083348109034

/-! ## A035622.P14335896455362028570

`A035675(A004275(n+1))`
-/

namespace A035622.P14335896455362028570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A004275 (n + 1)).toNat

end

end A035622.P14335896455362028570

/-! ## A035622.P14505473627438452944

`A035675(A067016(n+1))`
-/

namespace A035622.P14505473627438452944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A067016 (n + 1)).toNat

end

end A035622.P14505473627438452944

/-! ## A035622.P10248246552407749684

`A035675(A092535(n+1))`
-/

namespace A035622.P10248246552407749684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A092535 (n + 1)).toNat

end

end A035622.P10248246552407749684

/-! ## A035622.P3656751809418474940

`A035675(A154426(n+1))`
-/

namespace A035622.P3656751809418474940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A154426 (n + 1)).toNat

end

end A035622.P3656751809418474940

/-! ## A035622.P890449061013828191

`A035675(A316571(n+1))`
-/

namespace A035622.P890449061013828191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A316571 (n + 1)).toNat

end

end A035622.P890449061013828191

/-! ## A035622.P5932038565602906440

`A035675(A004278(n+2))`
-/

namespace A035622.P5932038565602906440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A004278 (n + 2)).toNat

end

end A035622.P5932038565602906440

/-! ## A035622.P18441518892819085586

`A035675(A058992(n+2))`
-/

namespace A035622.P18441518892819085586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A058992 (n + 2)).toNat

end

end A035622.P18441518892819085586

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

/-! ## A035623.P6609193013092336121

`A020985(n)²*A035677(Δ[A027691(n)])`
-/

namespace A035623.P6609193013092336121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 * A035677 (f1 (n + 1) - f1 n).toNat

end

end A035623.P6609193013092336121

/-! ## A035623.P6069760110603496470

`A033999(n)²*A035677(Δ[A027691(n)])`
-/

namespace A035623.P6069760110603496470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n ^ 2 * A035677 (f1 (n + 1) - f1 n).toNat

end

end A035623.P6069760110603496470

/-! ## A035623.P2922148513816289709

`A035677(Δ[A027691(n)])%A002559(n+1)`
-/

namespace A035623.P2922148513816289709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035677 (f1 (n + 1) - f1 n).toNat) (A002559 (n + 1))

end

end A035623.P2922148513816289709

/-! ## A035623.P13289880915611436527

`A035677(Δ[A027691(n)])-A000035(2*n)`
-/

namespace A035623.P13289880915611436527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035677 (f1 (n + 1) - f1 n).toNat - A000035 (2 * n)

end

end A035623.P13289880915611436527

/-! ## A035623.P7721667760347627457

`A035677(Δ[A027691(n)])%A068921(n)`
-/

namespace A035623.P7721667760347627457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027691 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035677 (f1 (n + 1) - f1 n).toNat) (A068921 n)

end

end A035623.P7721667760347627457

/-! ## A035623.P3608527598818926696

`A035677(A005843(n+1))%A000322(n+4)`
-/

namespace A035623.P3608527598818926696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035677 (A005843 (n + 1)).toNat) (A000322 (n + 4))

end

end A035623.P3608527598818926696

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

/-! ## A035624.P2607914074741234025

`A035686(A004277(n+1))%A014160(n)`
-/

namespace A035624.P2607914074741234025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035686 (A004277 (n + 1)).toNat) (A014160 n)

end

end A035624.P2607914074741234025

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

/-! ## A035625.P12408977224867338910

`A035688(2*(n+1))`
-/

namespace A035625.P12408977224867338910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035688 (2 * (n + 1))

end

end A035625.P12408977224867338910

/-! ## A035625.P13559164388434889843

`A035688(A005843(n+1))/C(2, C(2, n²))`
-/

namespace A035625.P13559164388434889843
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035688 (A005843 (n + 1)).toNat : ℚ) / (Nat.choose 2 (Nat.choose 2 (n ^ 2)) : ℚ)

end

end A035625.P13559164388434889843

/-! ## A035625.P2769940493867561657

`A035688(A004277(n+1))%A014160(n)`
-/

namespace A035625.P2769940493867561657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035688 (A004277 (n + 1)).toNat) (A014160 n)

end

end A035625.P2769940493867561657

/-! ## A035625.P16158601083977202642

`lcm(A035688(A005843(n+1)), A062157(n))`
-/

namespace A035625.P16158601083977202642
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A035688 (A005843 (n + 1)).toNat) (A062157 n)

end

end A035625.P16158601083977202642

/-! ## A035625.P11362999116387715515

`A035688(A005843(n+1))+A000007(n+1)`
-/

namespace A035625.P11362999116387715515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035688 (A005843 (n + 1)).toNat + A000007 (n + 1)

end

end A035625.P11362999116387715515

/-! ## A035625.P8041041449300527074

`A035688(A005843(n+1))/A062157(n+1)²`
-/

namespace A035625.P8041041449300527074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035688 (A005843 (n + 1)).toNat : ℚ) / (A062157 (n + 1) ^ 2 : ℚ)

end

end A035625.P8041041449300527074

/-! ## A035625.P7325764598497589165

`A035688(A005843(n+1))/A000041(C(2, n+1))`
-/

namespace A035625.P7325764598497589165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035688 (A005843 (n + 1)).toNat : ℚ) / (A000041 (Nat.choose 2 (n + 1)) : ℚ)

end

end A035625.P7325764598497589165

/-! ## A035625.P6902537540885761566

`A035688(A005843(n+1))%A000322(n+4)`
-/

namespace A035625.P6902537540885761566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035688 (A005843 (n + 1)).toNat) (A000322 (n + 4))

end

end A035625.P6902537540885761566

/-! ## A035625.P93138333602865668

`and(A000225(n), A035688(A005843(n+1)))`
-/

namespace A035625.P93138333602865668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A035688 (A005843 (n + 1)).toNat)

end

end A035625.P93138333602865668

/-!
# A035626: Number of partitions of n into parts 4k+2 and 4k+3 with at least one part of each type.

The programs for A035626, there is no canonical definition to state claims against.
-/

/-! ## A035626.P12908714522875931255

`A035695(2*(n+1))`
-/

namespace A035626.P12908714522875931255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035695 (2 * (n + 1))

end

end A035626.P12908714522875931255

/-! ## A035626.P6295748317653410290

`A035695(lt[2, A020639(n+1)])%A000041(n)`
-/

namespace A035626.P6295748317653410290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035695 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)) (A000041 n)

end

end A035626.P6295748317653410290

/-! ## A035626.P8315415280920718106

`A035695(A136019(n+1))+A035695(A051755(n+2))`
-/

namespace A035626.P8315415280920718106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035695 (A136019 (n + 1)).toNat + A035695 (A051755 (n + 2)).toNat

end

end A035626.P8315415280920718106

/-! ## A035626.P6390661528100345278

`A035695(A051755(n+2))%A318118(n)`
-/

namespace A035626.P6390661528100345278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035695 (A051755 (n + 2)).toNat) (A318118 n)

end

end A035626.P6390661528100345278

/-!
# A035627: Number of partitions of n into parts 5k and 5k+1 with at least one part of each type.

The programs for A035627, there is no canonical definition to state claims against.
-/

/-! ## A035627.P2558226075462275185

`A035637(A047253(n+1)%A090887(n+1))`
-/

namespace A035627.P2558226075462275185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035637 (Int.tmod (A047253 (n + 1)) (A090887 (n + 1))).toNat

end

end A035627.P2558226075462275185

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

/-! ## A035631.P662369594121867867

`A000108(A245793(n))*A102781(A029024(n))`
-/

namespace A035631.P662369594121867867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (A245793 n).toNat * A102781 (A029024 n).toNat

end

end A035631.P662369594121867867

/-! ## A035631.P17070830181693121766

`A102781(A029024(n))/A000108(A245793(n)²)`
-/

namespace A035631.P17070830181693121766
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102781 (A029024 n).toNat : ℚ) / (A000108 (A245793 n ^ 2).toNat : ℚ)

end

end A035631.P17070830181693121766

/-! ## A035631.P4584285522786188706

`A102781(A029024(n))%A000010(A005594(n))`
-/

namespace A035631.P4584285522786188706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A102781 (A029024 n).toNat) (A000010 (A005594 n).toNat)

end

end A035631.P4584285522786188706

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

/-! ## A035632.P13885905268534687783

`(A109697(2*n+1)-A109697(n+1))%A331554(2*n)`
-/

namespace A035632.P13885905268534687783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109697 (2 * n + 1) - A109697 (n + 1)) (A331554 (2 * n))

end

end A035632.P13885905268534687783

/-!
# A035633: Number of partitions of n into parts 5k+1 and 5k+4 with at least one part of each type.

The programs for A035633, there is no canonical definition to state claims against.
-/

/-! ## A035633.P6559574222646115741

`A039903(n+1)-A039899(n+1)`
-/

namespace A035633.P6559574222646115741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039903 (n + 1) - A039899 (n + 1)

end

end A035633.P6559574222646115741

/-! ## A035633.P1302458446429478084

`A039903(n+1)%A039899(A233583(n+2))`
-/

namespace A035633.P1302458446429478084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039903 (n + 1)) (A039899 (A233583 (n + 2)).toNat)

end

end A035633.P1302458446429478084

/-! ## A035633.P9360490547693236759

`A035661(comp[xor(1, 3*n+1)])%A270929(2*n+1)`
-/

namespace A035633.P9360490547693236759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035661 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A270929 (2 * n + 1))

end

end A035633.P9360490547693236759

/-! ## A035633.P2062841944250456687

`A035661(comp[xor(1, 3*n+1)]%A107804(3*n+1))`
-/

namespace A035633.P2062841944250456687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (3 * n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035661 (Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A107804 (3 * n + 1))).toNat

end

end A035633.P2062841944250456687

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

/-! ## A035634.P7811167766049353730

`A039904((n+1)^floor(atan(n)))%A039900(n+1)`
-/

namespace A035634.P7811167766049353730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039904 (SequenceMachineLib.roundAway ((n + 1 : ℚ) ^ (⌊Real.arctan (n : ℝ)⌋ : ℤ))).toNat) (A039900 (n + 1))

end

end A035634.P7811167766049353730

/-! ## A035634.P17367207440590975765

`A039904(floor(sqrt((n+1)²+1)))%A039900(n+1)`
-/

namespace A035634.P17367207440590975765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A039904 (Nat.sqrt ((n + 1) ^ 2 + 1))) (A039900 (n + 1))

end

end A035634.P17367207440590975765

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
# A035637: Number of partitions of n into parts 6k and 6k+1 with at least one part of each type.

The programs for A035637, there is no canonical definition to state claims against.
-/

/-! ## A035637.P17600973492928168038

`A035672(A047422(n+1))%A064062(n)²`
-/

namespace A035637.P17600973492928168038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035672 (A047422 (n + 1)).toNat) (A064062 n ^ 2)

end

end A035637.P17600973492928168038

/-! ## A035637.P2069890992789166527

`A035672(A047422(n+1))+A000122(A025400(n+1))`
-/

namespace A035637.P2069890992789166527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035672 (A047422 (n + 1)).toNat + A000122 (A025400 (n + 1)).toNat

end

end A035637.P2069890992789166527

/-! ## A035637.P12914234543166239762

`A035672(A047422(n+1))+A000038(A087158(n+1))`
-/

namespace A035637.P12914234543166239762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035672 (A047422 (n + 1)).toNat + A000038 (A087158 (n + 1)).toNat

end

end A035637.P12914234543166239762

/-! ## A035637.P17841949597343921519

`A001221(A118751(n+1))*A035672(A047422(n+1))`
-/

namespace A035637.P17841949597343921519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A118751 (n + 1)).toNat * A035672 (A047422 (n + 1)).toNat

end

end A035637.P17841949597343921519

/-! ## A035637.P2367875415778837863

`A001222(A166575(n+1))*A035672(A047422(n+1))`
-/

namespace A035637.P2367875415778837863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A166575 (n + 1)).toNat * A035672 (A047422 (n + 1)).toNat

end

end A035637.P2367875415778837863

/-! ## A035637.P13225953340774627708

`A003557(A302797(n+1))*A035672(A047422(n+1))`
-/

namespace A035637.P13225953340774627708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A302797 (n + 1)).toNat * A035672 (A047422 (n + 1)).toNat

end

end A035637.P13225953340774627708

/-! ## A035637.P6276988621842747794

`A001222(A191377(n+1))*A035672(A047422(n+1))`
-/

namespace A035637.P6276988621842747794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A191377 (n + 1)).toNat * A035672 (A047422 (n + 1)).toNat

end

end A035637.P6276988621842747794

/-! ## A035637.P10747656934436344834

`A045763(A166579(n+1))+A035672(A047422(n+1))`
-/

namespace A035637.P10747656934436344834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045763 (A166579 (n + 1)).toNat + A035672 (A047422 (n + 1)).toNat

end

end A035637.P10747656934436344834

/-! ## A035637.P3167448662458077457

`A035672(A047422(n+1))+A157426(n+1)%-1`
-/

namespace A035637.P3167448662458077457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035672 (A047422 (n + 1)).toNat + Int.tmod (A157426 (n + 1)) (-1)

end

end A035637.P3167448662458077457

/-!
# A035638: Number of partitions of n into parts 6k and 6k+2 with at least one part of each type.

The programs for A035638, there is no canonical definition to state claims against.
-/

/-! ## A035638.P8801082011023058764

`A035618(A152271(n))`
-/

namespace A035638.P8801082011023058764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035618 (A152271 n).toNat

end

end A035638.P8801082011023058764

/-! ## A035638.P1326896748877915009

`A035618(A057979(n)+1)`
-/

namespace A035638.P1326896748877915009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035618 (A057979 n + 1).toNat

end

end A035638.P1326896748877915009

/-! ## A035638.P15576766332650865708

`A035618((n+1)/A141310(n))`
-/

namespace A035638.P15576766332650865708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035618 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A141310 n : ℚ))).toNat

end

end A035638.P15576766332650865708

/-! ## A035638.P739650400158636920

`A035618(Δ[A055802(n+2)]+1)`
-/

namespace A035638.P739650400158636920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055802 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035618 (f1 (n + 1) - f1 n + 1).toNat

end

end A035638.P739650400158636920

/-! ## A035638.P15175286856414634783

`A035618(gcd(n+1, ∑[A266981(n)]))`
-/

namespace A035638.P15175286856414634783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266981 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035618 (Int.gcd (n + 1 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A035638.P15175286856414634783

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

/-! ## A035639.P7432580293677387119

`A035622(A092942(n+1))*A092942(n)`
-/

namespace A035639.P7432580293677387119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A092942 (n + 1)).toNat * A092942 n

end

end A035639.P7432580293677387119

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

/-! ## A035639.P2582329051264648331

`A035675(A210771(n+1))`
-/

namespace A035639.P2582329051264648331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A210771 (n + 1)).toNat

end

end A035639.P2582329051264648331

/-! ## A035639.P18345608427792484129

`A035675(A265667(n+1))`
-/

namespace A035639.P18345608427792484129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A265667 (n + 1)).toNat

end

end A035639.P18345608427792484129

/-! ## A035639.P10149261694266720949

`A035675(A304800(n))`
-/

namespace A035639.P10149261694266720949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A304800 n).toNat

end

end A035639.P10149261694266720949

/-! ## A035639.P11254333417114838512

`A035675(A004773(n+1))`
-/

namespace A035639.P11254333417114838512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A004773 (n + 1)).toNat

end

end A035639.P11254333417114838512

/-! ## A035639.P15926085519529956152

`A035675(A131452(n+1))`
-/

namespace A035639.P15926085519529956152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A131452 (n + 1)).toNat

end

end A035639.P15926085519529956152

/-! ## A035639.P4133148821730666433

`A035675(A004772(n+2))`
-/

namespace A035639.P4133148821730666433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A004772 (n + 2)).toNat

end

end A035639.P4133148821730666433

/-! ## A035639.P11280167789679399721

`A035675(A042965(n+2))`
-/

namespace A035639.P11280167789679399721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A042965 (n + 2)).toNat

end

end A035639.P11280167789679399721

/-! ## A035639.P11417958142726251847

`A035675(A047424(n+2))`
-/

namespace A035639.P11417958142726251847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A047424 (n + 2)).toNat

end

end A035639.P11417958142726251847

/-! ## A035639.P2274201537623747196

`A035675(A047428(n+2))`
-/

namespace A035639.P2274201537623747196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A047428 (n + 2)).toNat

end

end A035639.P2274201537623747196

/-! ## A035639.P17640958111415485788

`A035675(A047498(n+2))`
-/

namespace A035639.P17640958111415485788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A047498 (n + 2)).toNat

end

end A035639.P17640958111415485788

/-! ## A035639.P15714366508537434753

`A035675(A047503(n+2))`
-/

namespace A035639.P15714366508537434753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A047503 (n + 2)).toNat

end

end A035639.P15714366508537434753

/-! ## A035639.P2569681530118947281

`A035675(A047513(n+2))`
-/

namespace A035639.P2569681530118947281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A047513 (n + 2)).toNat

end

end A035639.P2569681530118947281

/-! ## A035639.P11885443108910111024

`A035675(A047517(n+2))`
-/

namespace A035639.P11885443108910111024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035675 (A047517 (n + 2)).toNat

end

end A035639.P11885443108910111024

/-! ## A035639.P864120516706601737

`A035622(2*n+1)+A035622(A130727(n))`
-/

namespace A035639.P864120516706601737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (2 * n + 1) + A035622 (A130727 n).toNat

end

end A035639.P864120516706601737

/-! ## A035639.P11489577016168704983

`A035622(2*n+1)+A035622(A267808(n))`
-/

namespace A035639.P11489577016168704983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (2 * n + 1) + A035622 (A267808 n).toNat

end

end A035639.P11489577016168704983

/-! ## A035639.P14819723335243417294

`A035622(2*n+1)+A035622(A074305(n+1))`
-/

namespace A035639.P14819723335243417294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (2 * n + 1) + A035622 (A074305 (n + 1)).toNat

end

end A035639.P14819723335243417294

/-!
# A035640: Number of partitions of n into parts 6k and 6k+4 with at least one part of each type.

The programs for A035640, there is no canonical definition to state claims against.
-/

/-! ## A035640.P10020246977795675741

`A035619(gcd(n+1, ∑[gcd(2, n)]))`
-/

namespace A035640.P10020246977795675741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035619 (Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A035640.P10020246977795675741

/-! ## A035640.P16718131908076857641

`A035619(A152271(n))`
-/

namespace A035640.P16718131908076857641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035619 (A152271 n).toNat

end

end A035640.P16718131908076857641

/-! ## A035640.P18261652422129074960

`A035619(A057979(n)+1)`
-/

namespace A035640.P18261652422129074960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035619 (A057979 n + 1).toNat

end

end A035640.P18261652422129074960

/-! ## A035640.P10762365465349720554

`A035619(gcd(n+1, A008619(n)))`
-/

namespace A035640.P10762365465349720554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035619 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A035640.P10762365465349720554

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

/-! ## A035640.P14560681061373345186

`A035619(A053439(n)-A000217(n))`
-/

namespace A035640.P14560681061373345186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035619 (A053439 n - A000217 n).toNat

end

end A035640.P14560681061373345186

/-! ## A035640.P573277275303960893

`A035619(gcd(A008619(n)², A000217(n)))`
-/

namespace A035640.P573277275303960893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035619 (Int.gcd (A008619 n ^ 2) (A000217 n))

end

end A035640.P573277275303960893

/-! ## A035640.P16068447196881180435

`A035619(A000463(n+1)/A008619(n))`
-/

namespace A035640.P16068447196881180435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035619 (SequenceMachineLib.roundAway ((A000463 (n + 1) : ℚ) / (A008619 n : ℚ))).toNat

end

end A035640.P16068447196881180435

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

/-! ## A035641.P12140831573593699861

`A035656(A047253(n+1))%A046125(3*n+2)`
-/

namespace A035641.P12140831573593699861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035656 (A047253 (n + 1)).toNat) (A046125 (3 * n + 2))

end

end A035641.P12140831573593699861

/-! ## A035641.P1040274904735213651

`A035656(lt[A239260(n), A276086(n)])`
-/

namespace A035641.P1040274904735213651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239260 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276086 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035656 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035641.P1040274904735213651

/-!
# A035645: Number of partitions of n into parts 6k+1 and 6k+5 with at least one part of each type.

The programs for A035645, there is no canonical definition to state claims against.
-/

/-! ## A035645.P5724697923598209761

`A035661(A248910(n+1)%A300121(2*n+3))`
-/

namespace A035645.P5724697923598209761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035661 (Int.tmod (A248910 (n + 1)) (A300121 (2 * n + 3))).toNat

end

end A035645.P5724697923598209761

/-! ## A035645.P11852995972282585720

`A001222(A000043(n+1))*A035661(A184522(n+1))`
-/

namespace A035645.P11852995972282585720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000043 (n + 1)).toNat * A035661 (A184522 (n + 1)).toNat

end

end A035645.P11852995972282585720

/-! ## A035645.P15129159267193043219

`A035661(A248910(n+1))%A317546(n+1)`
-/

namespace A035645.P15129159267193043219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035661 (A248910 (n + 1)).toNat) (A317546 (n + 1))

end

end A035645.P15129159267193043219

/-! ## A035645.P17633540037589355162

`A035661(lt[A127913(3*(n+1)), A293181(3*n+5)])`
-/

namespace A035645.P17633540037589355162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127913 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293181 (3 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035661 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035645.P17633540037589355162

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

/-! ## A035647.P15859583783513715529

`A035620(A057979(n)+1)`
-/

namespace A035647.P15859583783513715529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035620 (A057979 n + 1).toNat

end

end A035647.P15859583783513715529

/-! ## A035647.P11968550339168848010

`A035620(gcd(n+1, A001057(n)))`
-/

namespace A035647.P11968550339168848010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035620 (Int.gcd (n + 1 : ℤ) (A001057 n))

end

end A035647.P11968550339168848010

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

/-! ## A035647.P6657417392051031607

`A035620(A029579(n)-A004526(n))`
-/

namespace A035647.P6657417392051031607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035620 (A029579 n - A004526 n).toNat

end

end A035647.P6657417392051031607

/-! ## A035647.P3911183207539624446

`A035620(gcd(A002620(n), A008619(n)))`
-/

namespace A035647.P3911183207539624446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035620 (Int.gcd (A002620 n) (A008619 n))

end

end A035647.P3911183207539624446

/-! ## A035647.P12052081644205387799

`A035620(gcd(A110654(n+1), A110654(n)))`
-/

namespace A035647.P12052081644205387799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035620 (Int.gcd (A110654 (n + 1)) (A110654 n))

end

end A035647.P12052081644205387799

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

/-! ## A035649.P4455491181479738737

`A252784(Δ[ceil(n²/12)])%A160474(n+2)`
-/

namespace A035649.P4455491181479738737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n ^ 2 : ℚ) / 12⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A252784 (f1 (n + 1) - f1 n).toNat) (A160474 (n + 2))

end

end A035649.P4455491181479738737

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

/-! ## A035650.P4014567746237843891

`A340571(A171088(n))^Δ[A004917(n+1)]`
-/

namespace A035650.P4014567746237843891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004917 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340571 (A171088 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A035650.P4014567746237843891

/-! ## A035650.P7997095030673059681

`A340571(A171088(n))^A014963(A167499(n))`
-/

namespace A035650.P7997095030673059681
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340571 (A171088 n).toNat : ℚ) ^ (A014963 (A167499 n).toNat : ℤ)

end

end A035650.P7997095030673059681

/-! ## A035650.P8923579550176819773

`A340571(A171088(n%A291944(n)))`
-/

namespace A035650.P8923579550176819773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340571 (A171088 (Int.tmod (n : ℤ) (A291944 n)).toNat).toNat

end

end A035650.P8923579550176819773

/-! ## A035650.P2359784821163176133

`A223556(n+1)%A038548(A325545(n))`
-/

namespace A035650.P2359784821163176133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A223556 (n + 1)) (A038548 (A325545 n).toNat)

end

end A035650.P2359784821163176133

/-!
# A035651: Number of partitions of n into parts 7k and 7k+1 with at least one part of each type.

The programs for A035651, there is no canonical definition to state claims against.
-/

/-! ## A035651.P14660566792083967665

`A035672(A059561(n+1))+A000007(A003113(n))`
-/

namespace A035651.P14660566792083967665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035672 (A059561 (n + 1)).toNat + A000007 (A003113 n).toNat

end

end A035651.P14660566792083967665

/-! ## A035651.P12741597337745490643

`A035672(A059561(n+1))+A000038(A175965(n+1))`
-/

namespace A035651.P12741597337745490643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035672 (A059561 (n + 1)).toNat + A000038 (A175965 (n + 1)).toNat

end

end A035651.P12741597337745490643

/-! ## A035651.P4125464628550738244

`A154269(A102770(n+2))+A035672(A059561(n+1))`
-/

namespace A035651.P4125464628550738244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154269 (A102770 (n + 2)).toNat + A035672 (A059561 (n + 1)).toNat

end

end A035651.P4125464628550738244

/-! ## A035651.P4177440028142849610

`A000034(A157019(n+1))*A035672(A059561(n+1))`
-/

namespace A035651.P4177440028142849610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A157019 (n + 1)).toNat * A035672 (A059561 (n + 1)).toNat

end

end A035651.P4177440028142849610

/-! ## A035651.P16731743832044432394

`A035672(A059561(n+1))%A141856(A003113(n)+1)`
-/

namespace A035651.P16731743832044432394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035672 (A059561 (n + 1)).toNat) (A141856 (A003113 n + 1).toNat)

end

end A035651.P16731743832044432394

/-! ## A035651.P15190205056704704384

`A035672(A059561(n+1))+A025439(A330026(n+2)-1)`
-/

namespace A035651.P15190205056704704384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035672 (A059561 (n + 1)).toNat + A025439 (A330026 (n + 2) - 1).toNat

end

end A035651.P15190205056704704384

/-! ## A035651.P9238427440831058760

`A035672(A059561(n+1))*A105700(A033204(n+1))`
-/

namespace A035651.P9238427440831058760
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035672 (A059561 (n + 1)).toNat * A105700 (A033204 (n + 1)).toNat

end

end A035651.P9238427440831058760

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

/-! ## A035653.P3599707295296817619

`A035655(A003152(n+1))^A260340(n)`
-/

namespace A035653.P3599707295296817619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035655 (A003152 (n + 1)).toNat : ℚ) ^ (A260340 n : ℤ)

end

end A035653.P3599707295296817619

/-! ## A035653.P8758194951146074408

`A014081(A029362(A346127(n+1))!)`
-/

namespace A035653.P8758194951146074408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014081 (Nat.factorial (A029362 (A346127 (n + 1)).toNat).toNat)

end

end A035653.P8758194951146074408

/-! ## A035653.P11243186227771076787

`A227551(n)%A211400(A005117(n+1))`
-/

namespace A035653.P11243186227771076787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A227551 n) (A211400 (A005117 (n + 1)).toNat)

end

end A035653.P11243186227771076787

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

/-! ## A035655.P5419299176837773285

`A035640(A210062(n))^A007318(lcm(10, n))`
-/

namespace A035655.P5419299176837773285
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035640 (A210062 n).toNat : ℚ) ^ (A007318 (Nat.lcm 10 n) : ℤ)

end

end A035655.P5419299176837773285

/-! ## A035655.P785103642592458283

`A035640(A210062(n))^A014963(∑[n+1]+2)`
-/

namespace A035655.P785103642592458283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A035640 (A210062 n).toNat : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℤ)

end

end A035655.P785103642592458283

/-! ## A035655.P11900225980216261931

`A239871(A156724(3*(n+1)))%A115574(3*n+4)`
-/

namespace A035655.P11900225980216261931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A239871 (A156724 (3 * (n + 1))).toNat) (A115574 (3 * n + 4))

end

end A035655.P11900225980216261931

/-! ## A035655.P5925699712456385508

`A115049(n+1)%A000700(A172545(n+1))`
-/

namespace A035655.P5925699712456385508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A115049 (n + 1)) (A000700 (A172545 (n + 1)).toNat)

end

end A035655.P5925699712456385508

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

/-! ## A035656.P2625601257177708762

`A035678(lt[A326407(n+1), A111840(n+1)])`
-/

namespace A035656.P2625601257177708762
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326407 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035678 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035656.P2625601257177708762

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

/-! ## A035657.P766416633673033007

`A004526(lt[A109588(n+1), 12])`
-/

namespace A035657.P766416633673033007
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109588 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A035657.P766416633673033007

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
# A035660: Number of partitions of n into parts 7k+1 and 7k+5 with at least one part of each type.

The programs for A035660, there is no canonical definition to state claims against.
-/

/-! ## A035660.P1827899896341965804

`A035683(A248910(n+1))%A317546(n+1)`
-/

namespace A035660.P1827899896341965804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035683 (A248910 (n + 1)).toNat) (A317546 (n + 1))

end

end A035660.P1827899896341965804

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

/-! ## A035661.P16723736894331432355

`A035684(lt[A077168(n), A093036(n+1)])`
-/

namespace A035661.P16723736894331432355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093036 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035684 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035661.P16723736894331432355

/-! ## A035661.P7238386732697277068

`A035684(lt[A077168(n), A268448(n+1)])`
-/

namespace A035661.P7238386732697277068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077168 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268448 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035684 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A035661.P7238386732697277068

/-!
# A035663: Number of partitions of n into parts 7k+2 and 7k+4 with at least one part of each type.

The programs for A035663, there is no canonical definition to state claims against.
-/

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

/-! ## A035663.P13930316512277033890

`A185284(A023894(n))+A070101(n+2)`
-/

namespace A035663.P13930316512277033890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (A023894 n).toNat + A070101 (n + 2)

end

end A035663.P13930316512277033890

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

/-! ## A035667.P2724606674012689159

`A125005(∑[∑[A132138(n+1)]])`
-/

namespace A035667.P2724606674012689159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132138 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125005 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A035667.P2724606674012689159

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
# A035671: Number of partitions of n into parts 7k+5 and 7k+6 with at least one part of each type.

The programs for A035671, there is no canonical definition to state claims against.
-/

/-! ## A035671.P746413756088794375

`A035699(A047253(n+1)%A090887(n+1))`
-/

namespace A035671.P746413756088794375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035699 (Int.tmod (A047253 (n + 1)) (A090887 (n + 1))).toNat

end

end A035671.P746413756088794375

/-! ## A035671.P884281655762098535

`A035699(A047253(n+1))+A000038(A000041(n+2))`
-/

namespace A035671.P884281655762098535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035699 (A047253 (n + 1)).toNat + A000038 (A000041 (n + 2)).toNat

end

end A035671.P884281655762098535

/-! ## A035671.P15904654373094884131

`A000108(A034563(n+1)!)*A035699(A047253(n+1))`
-/

namespace A035671.P15904654373094884131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.factorial (A034563 (n + 1)).toNat) * A035699 (A047253 (n + 1)).toNat

end

end A035671.P15904654373094884131

/-! ## A035671.P8592145957577344921

`A035699(A248910(n+1))%A317546(n+1)`
-/

namespace A035671.P8592145957577344921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035699 (A248910 (n + 1)).toNat) (A317546 (n + 1))

end

end A035671.P8592145957577344921

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

/-! ## A035673.P10204950017522337216

`A035621(A057979(n)+1)`
-/

namespace A035673.P10204950017522337216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035621 (A057979 n + 1).toNat

end

end A035673.P10204950017522337216

/-! ## A035673.P10897267660383639070

`A035621(gcd(n+1, A008619(n)))`
-/

namespace A035673.P10897267660383639070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035621 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A035673.P10897267660383639070

/-! ## A035673.P5643540726397691811

`A035621(A008619(n*A000035(n)))`
-/

namespace A035673.P5643540726397691811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035621 (A008619 ((n : ℤ) * A000035 n).toNat).toNat

end

end A035673.P5643540726397691811

/-! ## A035673.P7329829390024069011

`A035621(gcd(A008619(n)², A000217(n)))`
-/

namespace A035673.P7329829390024069011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035621 (Int.gcd (A008619 n ^ 2) (A000217 n))

end

end A035673.P7329829390024069011

/-! ## A035673.P3578809631408105594

`A035621(gcd(A002620(n), A073675(n+1)))`
-/

namespace A035673.P3578809631408105594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035621 (Int.gcd (A002620 n) (A073675 (n + 1)))

end

end A035673.P3578809631408105594

/-! ## A035673.P4141247602221128910

`A035621(gcd(A032742(n+1), A110654(n)))`
-/

namespace A035673.P4141247602221128910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035621 (Int.gcd (A032742 (n + 1)) (A110654 n))

end

end A035673.P4141247602221128910

/-! ## A035673.P6237336442000797352

`A035621(gcd(A110654(2*n+1), A110654(n+1)))`
-/

namespace A035673.P6237336442000797352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035621 (Int.gcd (A110654 (2 * n + 1)) (A110654 (n + 1)))

end

end A035673.P6237336442000797352

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

/-! ## A035673.P5778930693459641964

`A035621(gcd(A162897(n+1), A269538(n+1)))`
-/

namespace A035673.P5778930693459641964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035621 (Int.gcd (A162897 (n + 1)) (A269538 (n + 1)))

end

end A035673.P5778930693459641964

/-!
# A035674: Number of partitions of n into parts 8k and 8k+3 with at least one part of each type.

The programs for A035674, there is no canonical definition to state claims against.
-/

/-! ## A035674.P15679259045697239040

`A136444(A110658(n))%A341745(n+1)`
-/

namespace A035674.P15679259045697239040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136444 (A110658 n).toNat) (A341745 (n + 1))

end

end A035674.P15679259045697239040

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

/-! ## A035674.P4415124793503020082

`A064532(A110657(n)^A110657(n))`
-/

namespace A035674.P4415124793503020082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (SequenceMachineLib.roundAway ((A110657 n : ℚ) ^ (A110657 n : ℤ))).toNat

end

end A035674.P4415124793503020082

/-! ## A035674.P243378092381753620

`A195323(A195323(n))%A070990(n)`
-/

namespace A035674.P243378092381753620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A195323 (A195323 n).toNat) (A070990 n)

end

end A035674.P243378092381753620

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

/-! ## A035675.P9012713070485901981

`A035639(A066530(n))`
-/

namespace A035675.P9012713070485901981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A066530 n).toNat

end

end A035675.P9012713070485901981

/-! ## A035675.P9724743841287405467

`A035622(A152271(n))`
-/

namespace A035675.P9724743841287405467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A152271 n).toNat

end

end A035675.P9724743841287405467

/-! ## A035675.P16598483595795478388

`A035639(A267807(n))`
-/

namespace A035675.P16598483595795478388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A267807 n).toNat

end

end A035675.P16598483595795478388

/-! ## A035675.P12059014075375516401

`A035622(A004525(n+1))`
-/

namespace A035675.P12059014075375516401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A004525 (n + 1)).toNat

end

end A035675.P12059014075375516401

/-! ## A035675.P4439981412929311121

`A035622(A032742(n+1))`
-/

namespace A035675.P4439981412929311121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A032742 (n + 1)).toNat

end

end A035675.P4439981412929311121

/-! ## A035675.P4234115089523668004

`A035622(A049206(n+1))`
-/

namespace A035675.P4234115089523668004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A049206 (n + 1)).toNat

end

end A035675.P4234115089523668004

/-! ## A035675.P5920162763250239642

`A035639(A057353(n)+1)`
-/

namespace A035675.P5920162763250239642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035639 (A057353 n + 1).toNat

end

end A035675.P5920162763250239642

/-! ## A035675.P17143238751757940481

`A035622(A063928(n+1))`
-/

namespace A035675.P17143238751757940481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A063928 (n + 1)).toNat

end

end A035675.P17143238751757940481

/-! ## A035675.P8617571103955138549

`A035622(A117818(n+1))`
-/

namespace A035675.P8617571103955138549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A117818 (n + 1)).toNat

end

end A035675.P8617571103955138549

/-! ## A035675.P1386874135538970346

`A035622(A142150(n+1))`
-/

namespace A035675.P1386874135538970346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A142150 (n + 1)).toNat

end

end A035675.P1386874135538970346

/-! ## A035675.P4564198993661351422

`A035622(A116921(n+2))`
-/

namespace A035675.P4564198993661351422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A116921 (n + 2)).toNat

end

end A035675.P4564198993661351422

/-! ## A035675.P197166754352039520

`A006477(A166514(A166514(n+1)))`
-/

namespace A035675.P197166754352039520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006477 (A166514 (A166514 (n + 1)).toNat).toNat

end

end A035675.P197166754352039520

/-! ## A035675.P16406989895252454592

`A035622(A026741(n+1))`
-/

namespace A035675.P16406989895252454592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A026741 (n + 1)).toNat

end

end A035675.P16406989895252454592

/-! ## A035675.P13355157623407320782

`A035622(A059816(n+1))`
-/

namespace A035675.P13355157623407320782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A059816 (n + 1)).toNat

end

end A035675.P13355157623407320782

/-! ## A035675.P978501779087674057

`A035622(A026184(n+1))`
-/

namespace A035675.P978501779087674057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A026184 (n + 1)).toNat

end

end A035675.P978501779087674057

/-! ## A035675.P7506384262189386312

`A035622(A065172(n+1))`
-/

namespace A035675.P7506384262189386312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A065172 (n + 1)).toNat

end

end A035675.P7506384262189386312

/-! ## A035675.P14457346409863006048

`A035622(A065262(n+1))`
-/

namespace A035675.P14457346409863006048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A065262 (n + 1)).toNat

end

end A035675.P14457346409863006048

/-! ## A035675.P2958828305831629018

`A035622(A059031(n+1))`
-/

namespace A035675.P2958828305831629018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A059031 (n + 1)).toNat

end

end A035675.P2958828305831629018

/-! ## A035675.P5661282076563534412

`A035622(A065259(n+1))`
-/

namespace A035675.P5661282076563534412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035622 (A065259 (n + 1)).toNat

end

end A035675.P5661282076563534412

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

/-! ## A035676.P12369195633039089222

`A063691(or(A029340(n), A097479(n)))`
-/

namespace A035676.P12369195633039089222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063691 (Int.lor (A029340 n) (A097479 n)).toNat

end

end A035676.P12369195633039089222

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

/-! ## A035677.P12902262344529673666

`A035623(A057979(n)+1)`
-/

namespace A035677.P12902262344529673666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (A057979 n + 1).toNat

end

end A035677.P12902262344529673666

/-! ## A035677.P12850756107476293252

`A035623(gcd(n+1, A008619(n)))`
-/

namespace A035677.P12850756107476293252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A035677.P12850756107476293252

/-! ## A035677.P2582444463591037620

`A035623(A008619(n)-A142150(n))`
-/

namespace A035677.P2582444463591037620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (A008619 n - A142150 n).toNat

end

end A035677.P2582444463591037620

/-! ## A035677.P692679325731699369

`A035623(A008619(n*A000035(n)))`
-/

namespace A035677.P692679325731699369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (A008619 ((n : ℤ) * A000035 n).toNat).toNat

end

end A035677.P692679325731699369

/-! ## A035677.P5112035293371737895

`A035623(A065033(n*A000035(n)))`
-/

namespace A035677.P5112035293371737895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (A065033 ((n : ℤ) * A000035 n).toNat).toNat

end

end A035677.P5112035293371737895

/-! ## A035677.P9292014361983007936

`A035623(gcd(A014681(n), A065033(n)))`
-/

namespace A035677.P9292014361983007936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (Int.gcd (A014681 n) (A065033 n))

end

end A035677.P9292014361983007936

/-! ## A035677.P5717116074268271192

`A035623(gcd(A008619(n)², A000217(n)))`
-/

namespace A035677.P5717116074268271192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (Int.gcd (A008619 n ^ 2) (A000217 n))

end

end A035677.P5717116074268271192

/-! ## A035677.P14423998757541191734

`A035623(A008619(n*Δ[A008619(n)]))`
-/

namespace A035677.P14423998757541191734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (A008619 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat).toNat

end

end A035677.P14423998757541191734

/-! ## A035677.P12497909127778125090

`A035623(A008619(n)^Δ[A008619(n)])`
-/

namespace A035677.P12497909127778125090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (SequenceMachineLib.roundAway ((A008619 n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ))).toNat

end

end A035677.P12497909127778125090

/-! ## A035677.P17305516543419383752

`A035623(A008619(n)/(A142150(n)+1))`
-/

namespace A035677.P17305516543419383752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (SequenceMachineLib.roundAway ((A008619 n : ℚ) / (A142150 n + 1 : ℚ))).toNat

end

end A035677.P17305516543419383752

/-! ## A035677.P6855153211526059381

`A035623(gcd(A002378(n), A065262(n+1)))`
-/

namespace A035677.P6855153211526059381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (Int.gcd (A002378 n) (A065262 (n + 1)))

end

end A035677.P6855153211526059381

/-! ## A035677.P592087881491557121

`A035623(A065033(n))*A057979(A019429(n))`
-/

namespace A035677.P592087881491557121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035623 (A065033 n).toNat * A057979 (A019429 n).toNat

end

end A035677.P592087881491557121

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

/-! ## A035686.P10527426911106707283

`A035624(A057979(n)+1)`
-/

namespace A035686.P10527426911106707283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035624 (A057979 n + 1).toNat

end

end A035686.P10527426911106707283

/-! ## A035686.P9760244169261899759

`A035624(A133265(n)/2)`
-/

namespace A035686.P9760244169261899759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035624 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A035686.P9760244169261899759

/-! ## A035686.P11382790640339426724

`A035624(gcd(n+1, A008619(n)))`
-/

namespace A035686.P11382790640339426724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035624 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A035686.P11382790640339426724

/-! ## A035686.P8728545102525630894

`A035624(A008619(n*A000035(n)))`
-/

namespace A035686.P8728545102525630894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035624 (A008619 ((n : ℤ) * A000035 n).toNat).toNat

end

end A035686.P8728545102525630894

/-! ## A035686.P9663795501143401531

`A035624(A065033(n*A000035(n)))`
-/

namespace A035686.P9663795501143401531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035624 (A065033 ((n : ℤ) * A000035 n).toNat).toNat

end

end A035686.P9663795501143401531

/-! ## A035686.P8344498432062910319

`A035624(gcd(A110654(n+1), A110654(n)))`
-/

namespace A035686.P8344498432062910319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035624 (Int.gcd (A110654 (n + 1)) (A110654 n))

end

end A035686.P8344498432062910319

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

/-! ## A035688.P3275192618207562403

`A035625(A057979(n)+1)`
-/

namespace A035688.P3275192618207562403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035625 (A057979 n + 1).toNat

end

end A035688.P3275192618207562403

/-! ## A035688.P11855660965197101168

`A035625(gcd(n+1, A008619(n)))`
-/

namespace A035688.P11855660965197101168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035625 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A035688.P11855660965197101168

/-! ## A035688.P11241887964180379137

`and(1, n)*A035625(A065033(n))`
-/

namespace A035688.P11241887964180379137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) * A035625 (A065033 n).toNat

end

end A035688.P11241887964180379137

/-! ## A035688.P2327462079275061163

`A035625(gcd(A014681(n), A159481(n)))`
-/

namespace A035688.P2327462079275061163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035625 (Int.gcd (A014681 n) (A159481 n))

end

end A035688.P2327462079275061163

/-! ## A035688.P4835316993680107960

`A035625(gcd(A008619(n)², A000217(n)))`
-/

namespace A035688.P4835316993680107960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035625 (Int.gcd (A008619 n ^ 2) (A000217 n))

end

end A035688.P4835316993680107960

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

/-! ## A035688.P14376303307219221619

`A035625(A065033(and(n, A051049(n))))`
-/

namespace A035688.P14376303307219221619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035625 (A065033 (Int.land (n : ℤ) (A051049 n)).toNat).toNat

end

end A035688.P14376303307219221619

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
# A035690: Number of partitions of n into parts 8k+3 and 8k+4 with at least one part of each type.

The programs for A035690, there is no canonical definition to state claims against.
-/

/-! ## A035690.P11172476521732412914

`A003141(A110657(n)%A118929(n))`
-/

namespace A035690.P11172476521732412914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003141 (Int.tmod (A110657 n) (A118929 n)).toNat

end

end A035690.P11172476521732412914

/-! ## A035690.P12772105577125394199

`A340760(A028242(n)%A118929(n))`
-/

namespace A035690.P12772105577125394199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340760 (Int.tmod (A028242 n) (A118929 n)).toNat

end

end A035690.P12772105577125394199

/-! ## A035690.P12997480356443422881

`A003141(A110657(n))%A019435(n+1)`
-/

namespace A035690.P12997480356443422881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A003141 (A110657 n).toNat) (A019435 (n + 1))

end

end A035690.P12997480356443422881

/-! ## A035690.P18071232725401310813

`A340760(A028242(n))^A014963(A008003(n))`
-/

namespace A035690.P18071232725401310813
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A340760 (A028242 n).toNat : ℚ) ^ (A014963 (A008003 n).toNat : ℤ)

end

end A035690.P18071232725401310813

/-! ## A035690.P12967124018972942252

`A340760(A028242(n))%A089861(3*(n+1))`
-/

namespace A035690.P12967124018972942252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340760 (A028242 n).toNat) (A089861 (3 * (n + 1)))

end

end A035690.P12967124018972942252

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

/-! ## A035692.P15375828167312501462

`A196563(A300622(n)^A025432(n))`
-/

namespace A035692.P15375828167312501462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196563 (SequenceMachineLib.roundAway ((A300622 n : ℚ) ^ (A025432 n : ℤ))).toNat

end

end A035692.P15375828167312501462

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

/-! ## A035695.P8145191911743898911

`A035626(A152271(n))`
-/

namespace A035695.P8145191911743898911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035626 (A152271 n).toNat

end

end A035695.P8145191911743898911

/-! ## A035695.P9464716355613401335

`A035626(A057979(n)+1)`
-/

namespace A035695.P9464716355613401335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035626 (A057979 n + 1).toNat

end

end A035695.P9464716355613401335

/-! ## A035695.P1211324005867811803

`A035626(A133265(n)/2)`
-/

namespace A035695.P1211324005867811803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035626 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A035695.P1211324005867811803

/-! ## A035695.P11597664595603886583

`A035626(gcd(n+1, A008619(n)))`
-/

namespace A035695.P11597664595603886583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035626 (Int.gcd (n + 1 : ℤ) (A008619 n))

end

end A035695.P11597664595603886583

/-! ## A035695.P17908499581620884110

`A035626(A008619(n*A000035(n)))`
-/

namespace A035695.P17908499581620884110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035626 (A008619 ((n : ℤ) * A000035 n).toNat).toNat

end

end A035695.P17908499581620884110

/-! ## A035695.P13491965474745975716

`A035626(gcd(A008619(n)², A000217(n)))`
-/

namespace A035695.P13491965474745975716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035626 (Int.gcd (A008619 n ^ 2) (A000217 n))

end

end A035695.P13491965474745975716

/-! ## A035695.P10856394849347516296

`A035626(gcd(A110654(n+1), A110654(n)))`
-/

namespace A035695.P10856394849347516296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035626 (Int.gcd (A110654 (n + 1)) (A110654 n))

end

end A035695.P10856394849347516296

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

