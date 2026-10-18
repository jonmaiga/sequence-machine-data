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
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B007.C002
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A107900: Sum of terms of continued fraction for prime(n)/n.

The programs for A107900, there is no canonical definition to state claims against.
-/

/-! ## A107900.P16001582709515963844

`A049834(A072205(n+1)+n)`
-/

namespace A107900.P16001582709515963844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A072205 (n + 1) + (n : ℤ)).toNat

end

end A107900.P16001582709515963844

/-! ## A107900.P1149823046827099432

`A049834(A008837(n+1)+1+n)`
-/

namespace A107900.P1149823046827099432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A008837 (n + 1) + 1 + (n : ℤ)).toNat

end

end A107900.P1149823046827099432

/-! ## A107900.P18401417575724452501

`A049834(A034953(n+1)-(n+1))`
-/

namespace A107900.P18401417575724452501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (A034953 (n + 1) - (n + 1 : ℤ)).toNat

end

end A107900.P18401417575724452501

/-! ## A107900.P9897636667432872951

`A049834(C(A000040(n+1), 2)+n+1)`
-/

namespace A107900.P9897636667432872951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049834 (Nat.choose (A000040 (n + 1)).toNat 2 + (n + 1))

end

end A107900.P9897636667432872951

/-! ## A107900.P16293778440351772400

`A285721(C(A000040(n+1), 2)-n)+2`
-/

namespace A107900.P16293778440351772400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285721 (Nat.choose (A000040 (n + 1)).toNat 2 - n) + 2

end

end A107900.P16293778440351772400

/-!
# A107901: Length of continued fraction for prime(n)/n.

The programs for A107901, there is no canonical definition to state claims against.
-/

/-! ## A107901.P10895672891262779988

`A107898(n+1)-1`
-/

namespace A107901.P10895672891262779988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107898 (n + 1) - 1

end

end A107901.P10895672891262779988

/-! ## A107901.P5143779515897391381

`A057918(A107898(n+1)²)`
-/

namespace A107901.P5143779515897391381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 (A107898 (n + 1) ^ 2).toNat

end

end A107901.P5143779515897391381

/-! ## A107901.P8082091131208173453

`A086520(A107898(n+1)²)`
-/

namespace A107901.P8082091131208173453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A107898 (n + 1) ^ 2).toNat

end

end A107901.P8082091131208173453

/-! ## A107901.P3373016288052445239

`A088226(A107898(n+1)²)`
-/

namespace A107901.P3373016288052445239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088226 (A107898 (n + 1) ^ 2).toNat

end

end A107901.P3373016288052445239

/-! ## A107901.P15063582817773856829

`A171173(A107898(n+1)²)`
-/

namespace A107901.P15063582817773856829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 (A107898 (n + 1) ^ 2).toNat

end

end A107901.P15063582817773856829

/-! ## A107901.P3797453587322783839

`A259361(A107898(n+1)²)`
-/

namespace A107901.P3797453587322783839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A107898 (n + 1) ^ 2).toNat

end

end A107901.P3797453587322783839

/-! ## A107901.P3743830874068138636

`A007318(C(A107898(n+1), 2)+1)`
-/

namespace A107901.P3743830874068138636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose (A107898 (n + 1)).toNat 2 + 1)

end

end A107901.P3743830874068138636

/-! ## A107901.P15608479883962277423

`A171173((A107898(n+1)+2)*A107898(n+1))`
-/

namespace A107901.P15608479883962277423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171173 ((A107898 (n + 1) + 2) * A107898 (n + 1)).toNat

end

end A107901.P15608479883962277423

/-! ## A107901.P9060980187865554353

`A072828(n+1)%A107898(n+1)`
-/

namespace A107901.P9060980187865554353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A107898 (n + 1))

end

end A107901.P9060980187865554353

/-! ## A107901.P1995231461867085602

`A282531(n+1)%A107898(n+1)`
-/

namespace A107901.P1995231461867085602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A282531 (n + 1)) (A107898 (n + 1))

end

end A107901.P1995231461867085602

/-!
# A107902: Expansion coefficients of the solution of a functional equation.

The programs for A107902, there is no canonical definition to state claims against.
-/

/-! ## A107902.P11997752785009588593

`A122856(A000045(2*n+3))+A034827(n)`
-/

namespace A107902.P11997752785009588593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122856 (A000045 (2 * n + 3)).toNat + A034827 n

end

end A107902.P11997752785009588593

/-!
# A107903: Generalized NSW numbers.

The programs for A107903, the canonical program `A107903.P8087527072714100656` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107903 has offset 0).

The definition of A107903 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107903.P8087527072714100656

`8*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=10`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107903

/-- `8*a(n-1)-4*a(n-2)` -/
def P8087527072714100656.Spec : Prop :=
  ∀ n, P8087527072714100656.a n = A107903 n

theorem P8087527072714100656.correct : P8087527072714100656.Spec := by
  intro n
  simp only [A107903]

end A107903

/-! ## A107903.P13127119612672640528

`((1+sqrt(3))*(4+2*sqrt(3))^n+(1-sqrt(3))*(4-2*sqrt(3))^n)/2`
-/

namespace A107903.P13127119612672640528
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((1 + Real.sqrt (3 : ℝ)) * (4 + 2 * Real.sqrt (3 : ℝ)) ^ n + (1 - Real.sqrt (3 : ℝ)) * (4 - 2 * Real.sqrt (3 : ℝ)) ^ n) / 2

end

end A107903.P13127119612672640528

namespace A107903

/-- `((1+sqrt(3))*(4+2*sqrt(3))^n+(1-sqrt(3))*(4-2*sqrt(3))^n)/2` -/
def P13127119612672640528.Spec : Prop :=
  ∀ n, P13127119612672640528.a n = (A107903 n : ℝ)

end A107903

/-! ## A107903.P6213692259656295434

`2^n*A001834(n)`
-/

namespace A107903.P6213692259656295434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A001834 n

end

end A107903.P6213692259656295434

namespace A107903

/-- `2^n*A001834(n)` -/
def P6213692259656295434.Spec : Prop :=
  ∀ n, P6213692259656295434.a n = A107903 n

end A107903

/-! ## A107903.P4794921227449523981

`A099156(n+1)+2*A099156(n)`
-/

namespace A107903.P4794921227449523981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099156 (n + 1) + 2 * A099156 n

end

end A107903.P4794921227449523981

namespace A107903

/-- `A099156(n+1)+2*A099156(n)` -/
def P4794921227449523981.Spec : Prop :=
  ∀ n, P4794921227449523981.a n = A107903 n

end A107903

/-! ## A107903.P9699703919246259230

`ogf((1+2x)/(1-8x+4x^2))`
-/

namespace A107903.P9699703919246259230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 2] [1, -8, 4] n

end

end A107903.P9699703919246259230

namespace A107903

/-- `ogf((1+2x)/(1-8x+4x^2))` -/
def P9699703919246259230.Spec : Prop :=
  ∀ n, P9699703919246259230.a n = A107903 n

end A107903

/-! ## A107903.P1584833412955260528

`A026150(Δ[n²])`
-/

namespace A107903.P1584833412955260528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A107903.P1584833412955260528

namespace A107903

/-- `A026150(Δ[n²])` -/
def P1584833412955260528.Spec : Prop :=
  ∀ n, P1584833412955260528.a n = A107903 n

end A107903

/-! ## A107903.P16903466441747285978

`∑[A121907(2*n)]`
-/

namespace A107903.P16903466441747285978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121907 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107903.P16903466441747285978

namespace A107903

/-- `∑[A121907(2*n)]` -/
def P16903466441747285978.Spec : Prop :=
  ∀ n, P16903466441747285978.a n = A107903 n

end A107903

/-! ## A107903.P12392026741631542784

`Δ[A028860(Δ[n²])]`
-/

namespace A107903.P12392026741631542784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028860 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107903.P12392026741631542784

namespace A107903

/-- `Δ[A028860(Δ[n²])]` -/
def P12392026741631542784.Spec : Prop :=
  ∀ n, P12392026741631542784.a n = A107903 n

end A107903

/-! ## A107903.P13195772227211494365

`Δ[A080876(Δ[n²])]`
-/

namespace A107903.P13195772227211494365
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080876 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107903.P13195772227211494365

namespace A107903

/-- `Δ[A080876(Δ[n²])]` -/
def P13195772227211494365.Spec : Prop :=
  ∀ n, P13195772227211494365.a n = A107903 n

end A107903

/-! ## A107903.P15452999097322586311

`A160444(4*(n+1))`
-/

namespace A107903.P15452999097322586311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160444 (4 * (n + 1))

end

end A107903.P15452999097322586311

namespace A107903

/-- `A160444(4*(n+1))` -/
def P15452999097322586311.Spec : Prop :=
  ∀ n, P15452999097322586311.a n = A107903 n

end A107903

/-! ## A107903.P8932163671409579328

`A160572(3*(n+1)+n)`
-/

namespace A107903.P8932163671409579328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160572 (3 * (n + 1) + n)

end

end A107903.P8932163671409579328

namespace A107903

/-- `A160572(3*(n+1)+n)` -/
def P8932163671409579328.Spec : Prop :=
  ∀ n, P8932163671409579328.a n = A107903 n

end A107903

/-! ## A107903.P15730740989049766374

`A121907(n+n)+a(n-1)` with `a(0)=1`
-/

namespace A107903.P15730740989049766374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A121907 (n + n) + a (n - 1)

end

end A107903.P15730740989049766374

namespace A107903

/-- `A121907(n+n)+a(n-1)` -/
def P15730740989049766374.Spec : Prop :=
  ∀ n, P15730740989049766374.a n = A107903 n

end A107903

/-! ## A107903.P15058574978820252280

`record[A026150(A152204(n))]`
-/

namespace A107903.P15058574978820252280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (A152204 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107903.P15058574978820252280

namespace A107903

/-- `record[A026150(A152204(n))]` -/
def P15058574978820252280.Spec : Prop :=
  ∀ n, P15058574978820252280.a n = A107903 n

end A107903

/-! ## A107903.P12279102777303184140

`lcm(A000079(n), A001834(n))`
-/

namespace A107903.P12279102777303184140
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A001834 n)

end

end A107903.P12279102777303184140

namespace A107903

/-- `lcm(A000079(n), A001834(n))` -/
def P12279102777303184140.Spec : Prop :=
  ∀ n, (P12279102777303184140.a n : ℤ) = A107903 n

end A107903

/-! ## A107903.P13458389146069671581

`record[A026150(A014681(n)+1)]`
-/

namespace A107903.P13458389146069671581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (A014681 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107903.P13458389146069671581

namespace A107903

/-- `record[A026150(A014681(n)+1)]` -/
def P13458389146069671581.Spec : Prop :=
  ∀ n, P13458389146069671581.a n = A107903 n

end A107903

/-! ## A107903.P17394404350957737517

`record[A026150(A237420(n)+1)]`
-/

namespace A107903.P17394404350957737517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 (A237420 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107903.P17394404350957737517

namespace A107903

/-- `record[A026150(A237420(n)+1)]` -/
def P17394404350957737517.Spec : Prop :=
  ∀ n, P17394404350957737517.a n = A107903 n

end A107903

/-! ## A107903.P5548536195535160505

`record[A080040(A026741(n))/2]`
-/

namespace A107903.P5548536195535160505
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080040 (A026741 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107903.P5548536195535160505

namespace A107903

/-- `record[A080040(A026741(n))/2]` -/
def P5548536195535160505.Spec : Prop :=
  ∀ n, P5548536195535160505.a n = (A107903 n : ℚ)

end A107903

/-! ## A107903.P10313470442833620229

`record[A026150(n-A237420(n))]`
-/

namespace A107903.P10313470442833620229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026150 ((n : ℤ) - A237420 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107903.P10313470442833620229

namespace A107903

/-- `record[A026150(n-A237420(n))]` -/
def P10313470442833620229.Spec : Prop :=
  ∀ n, P10313470442833620229.a n = A107903 n

end A107903

/-! ## A107903.P16860600488732948989

`A028859(2*n)+A002605(2*n)`
-/

namespace A107903.P16860600488732948989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028859 (2 * n) + A002605 (2 * n)

end

end A107903.P16860600488732948989

namespace A107903

/-- `A028859(2*n)+A002605(2*n)` -/
def P16860600488732948989.Spec : Prop :=
  ∀ n, P16860600488732948989.a n = A107903 n

end A107903

/-! ## A107903.P15134026799018735695

`A083337(2*n)+A026150(2*n)`
-/

namespace A107903.P15134026799018735695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083337 (2 * n) + A026150 (2 * n)

end

end A107903.P15134026799018735695

namespace A107903

/-- `A083337(2*n)+A026150(2*n)` -/
def P15134026799018735695.Spec : Prop :=
  ∀ n, P15134026799018735695.a n = A107903 n

end A107903

/-!
# A107904: Expansion of (1+6x)/(1-12x^2).

The programs for A107904, the canonical program `A107904.P9999716943143012864` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107904 has offset 0).

The definition of A107904 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+6x)/(1-12x^2))` (program `A107904.P9999716943143012864`, by `A107904.P9999716943143012864.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107904.P9999716943143012864

`ogf((1+6x)/(1-12x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107904

/-- `ogf((1+6x)/(1-12x^2))` -/
def P9999716943143012864.Spec : Prop :=
  ∀ n, P9999716943143012864.a n = A107904 n

theorem P9999716943143012864.correct : P9999716943143012864.Spec := by
  intro n
  simp only [A107904]

end A107904

/-! ## A107904.P5417495946962981595

`2^n*A108411(n+1)`
-/

namespace A107904.P5417495946962981595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A108411 (n + 1)

end

end A107904.P5417495946962981595

namespace A107904

/-- `2^n*A108411(n+1)` -/
def P5417495946962981595.Spec : Prop :=
  ∀ n, P5417495946962981595.a n = A107904 n

end A107904

/-! ## A107904.P16685379240072803391

`12*a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A107904.P16685379240072803391
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  12 * a (n - 2)

end

end A107904.P16685379240072803391

namespace A107904

/-- `12*a(n-2)` -/
def P16685379240072803391.Spec : Prop :=
  ∀ n, (P16685379240072803391.a n : ℤ) = A107904 n

end A107904

/-! ## A107904.P3551163298990287270

`∏[gcd(6, 2^n-2)]`
-/

namespace A107904.P3551163298990287270
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 6 ((2 ^ n : ℤ) - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P3551163298990287270

namespace A107904

/-- `∏[gcd(6, 2^n-2)]` -/
def P3551163298990287270.Spec : Prop :=
  ∀ n, (P3551163298990287270.a n : ℤ) = A107904 n

end A107904

/-! ## A107904.P4389103366485984774

`∏[abs(a(n-2))]` with `a(0)=1, a(1)=6, a(2)=2`
-/

namespace A107904.P4389103366485984774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P4389103366485984774

namespace A107904

/-- `∏[abs(a(n-2))]` -/
def P4389103366485984774.Spec : Prop :=
  ∀ n, (P4389103366485984774.a n : ℤ) = A107904 n

end A107904

/-! ## A107904.P14563910257696813247

`∏[8-a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A107904.P14563910257696813247
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  8 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P14563910257696813247

namespace A107904

/-- `∏[8-a(n-1)]` -/
def P14563910257696813247.Spec : Prop :=
  ∀ n, P14563910257696813247.a n = A107904 n

end A107904

/-! ## A107904.P17453499600416601685

`∏[(and(1, n)+2)!]/2`
-/

namespace A107904.P17453499600416601685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.land 1 n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A107904.P17453499600416601685

namespace A107904

/-- `∏[(and(1, n)+2)!]/2` -/
def P17453499600416601685.Spec : Prop :=
  ∀ n, P17453499600416601685.a n = (A107904 n : ℚ)

end A107904

/-! ## A107904.P5311997795490076498

`2^n*3^ceil(n/2)`
-/

namespace A107904.P5311997795490076498
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℚ) * (3 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)

end

end A107904.P5311997795490076498

namespace A107904

/-- `2^n*3^ceil(n/2)` -/
def P5311997795490076498.Spec : Prop :=
  ∀ n, P5311997795490076498.a n = (A107904 n : ℚ)

end A107904

/-! ## A107904.P9186944998841403599

`∏[2*and(3, 2*n+1)]/2`
-/

namespace A107904.P9186944998841403599
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land 3 (2 * n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2

end

end A107904.P9186944998841403599

namespace A107904

/-- `∏[2*and(3, 2*n+1)]/2` -/
def P9186944998841403599.Spec : Prop :=
  ∀ n, P9186944998841403599.a n = (A107904 n : ℚ)

end A107904

/-! ## A107904.P751822149199280786

`∏[dr(A009946(n))]`
-/

namespace A107904.P751822149199280786
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A009946 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P751822149199280786

namespace A107904

/-- `∏[dr(A009946(n))]` -/
def P751822149199280786.Spec : Prop :=
  ∀ n, (P751822149199280786.a n : ℤ) = A107904 n

end A107904

/-! ## A107904.P17238006402037918809

`∏[A126664(n+1)]`
-/

namespace A107904.P17238006402037918809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126664 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P17238006402037918809

namespace A107904

/-- `∏[A126664(n+1)]` -/
def P17238006402037918809.Spec : Prop :=
  ∀ n, P17238006402037918809.a n = A107904 n

end A107904

/-! ## A107904.P5213320539728495261

`∏[A164356(2*n)]`
-/

namespace A107904.P5213320539728495261
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164356 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P5213320539728495261

namespace A107904

/-- `∏[A164356(2*n)]` -/
def P5213320539728495261.Spec : Prop :=
  ∀ n, P5213320539728495261.a n = A107904 n

end A107904

/-! ## A107904.P6642925675200126059

`∏[A099856(n)%8]`
-/

namespace A107904.P6642925675200126059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099856 n) 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P6642925675200126059

namespace A107904

/-- `∏[A099856(n)%8]` -/
def P6642925675200126059.Spec : Prop :=
  ∀ n, P6642925675200126059.a n = A107904 n

end A107904

/-! ## A107904.P6114690128509090181

`A176710(n+1)/2`
-/

namespace A107904.P6114690128509090181
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A176710 (n + 1) : ℚ) / 2

end

end A107904.P6114690128509090181

namespace A107904

/-- `A176710(n+1)/2` -/
def P6114690128509090181.Spec : Prop :=
  ∀ n, P6114690128509090181.a n = (A107904 n : ℚ)

end A107904

/-! ## A107904.P14415436521526683967

`∏[A186181(2*n)!]`
-/

namespace A107904.P14415436521526683967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A186181 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P14415436521526683967

namespace A107904

/-- `∏[A186181(2*n)!]` -/
def P14415436521526683967.Spec : Prop :=
  ∀ n, (P14415436521526683967.a n : ℤ) = A107904 n

end A107904

/-! ## A107904.P7092098938645646774

`∏[dr(A040375(2*n))]`
-/

namespace A107904.P7092098938645646774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A040375 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P7092098938645646774

namespace A107904

/-- `∏[dr(A040375(2*n))]` -/
def P7092098938645646774.Spec : Prop :=
  ∀ n, (P7092098938645646774.a n : ℤ) = A107904 n

end A107904

/-! ## A107904.P14918411509581234022

`∏[dr(A297443(2*n))]`
-/

namespace A107904.P14918411509581234022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A297443 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P14918411509581234022

namespace A107904

/-- `∏[dr(A297443(2*n))]` -/
def P14918411509581234022.Spec : Prop :=
  ∀ n, (P14918411509581234022.a n : ℤ) = A107904 n

end A107904

/-! ## A107904.P11079872431735152189

`∏[dr(A299285(2*n))]`
-/

namespace A107904.P11079872431735152189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A299285 (2 * n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P11079872431735152189

namespace A107904

/-- `∏[dr(A299285(2*n))]` -/
def P11079872431735152189.Spec : Prop :=
  ∀ n, (P11079872431735152189.a n : ℤ) = A107904 n

end A107904

/-! ## A107904.P17048460275506341669

`∏[A064926(a(n-1))]` with `a(0)=1`
-/

namespace A107904.P17048460275506341669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A064926 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P17048460275506341669

namespace A107904

/-- `∏[A064926(a(n-1))]` -/
def P17048460275506341669.Spec : Prop :=
  ∀ n, P17048460275506341669.a n = A107904 n

end A107904

/-! ## A107904.P11932540918399628345

`∏[A114141(a(n-1))]` with `a(0)=1`
-/

namespace A107904.P11932540918399628345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A114141 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107904.P11932540918399628345

namespace A107904

/-- `∏[A114141(a(n-1))]` -/
def P11932540918399628345.Spec : Prop :=
  ∀ n, P11932540918399628345.a n = A107904 n

end A107904

/-!
# A107905: Decimal expansion of (5+sqrt(21))/2.

The programs for A107905, there is no canonical definition to state claims against.
-/

/-! ## A107905.P16412065777036500330

`A090458(floor(a(n-1)+n)-a(n-1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A107905.P16412065777036500330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A090458 ((a (n - 1) + (n : ℤ) - a (n - 1)).toNat + 1)

end

end A107905.P16412065777036500330

/-! ## A107905.P2796835907575950341

`A090458(n-(floor(a(n-1))-a(n-1)))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A107905.P2796835907575950341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A090458 (((n : ℤ) - (a (n - 1) - a (n - 1))).toNat + 1)

end

end A107905.P2796835907575950341

/-! ## A107905.P6369123825375830652

`A090458(n)+A000007(n)`
-/

namespace A107905.P6369123825375830652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + A000007 n

end

end A107905.P6369123825375830652

/-! ## A107905.P13335341580378697401

`(A000007(n)+1)*A222134(n)`
-/

namespace A107905.P13335341580378697401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n + 1) * A222134 (n + 1)

end

end A107905.P13335341580378697401

/-! ## A107905.P16113362694997807665

`2*A090458(n)-A222134(n)`
-/

namespace A107905.P16113362694997807665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A090458 (n + 1) - A222134 (n + 1)

end

end A107905.P16113362694997807665

/-! ## A107905.P10985326906376183672

`A090458(n)+∏{d}[n, A051126(#)]`
-/

namespace A107905.P10985326906376183672
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + ∏ d ∈ Nat.divisors (f1 n), A051126 d

end

end A107905.P10985326906376183672

/-! ## A107905.P1388437765238567449

`A090388(n)+A090458(n)-A002194(n)`
-/

namespace A107905.P1388437765238567449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090388 (n + 1) + (A090458 (n + 1) - A002194 (n + 1))

end

end A107905.P1388437765238567449

/-! ## A107905.P9826633086936285988

`A090458(n)+A033683(A001222(n+1)+1)`
-/

namespace A107905.P9826633086936285988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + A033683 (A001222 (n + 1) + 1).toNat

end

end A107905.P9826633086936285988

/-! ## A107905.P15335002535611901110

`(A152950(n+1)-A133263(n))*A222134(n)`
-/

namespace A107905.P15335002535611901110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A152950 (n + 1) - A133263 n) * A222134 (n + 1)

end

end A107905.P15335002535611901110

/-! ## A107905.P7845739611105386664

`A090458(n)+A049084(A221361(a(n-1)+1)+1)` with `a(0)=4`
-/

namespace A107905.P7845739611105386664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A090458 (n + 1) + A049084 (A221361 (a (n - 1) + 1).toNat + 1).toNat

end

end A107905.P7845739611105386664

/-! ## A107905.P15035240707194408861

`A090458(n)+A049084(2*(n+1))`
-/

namespace A107905.P15035240707194408861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + A049084 (2 * (n + 1))

end

end A107905.P15035240707194408861

/-! ## A107905.P18237800880343009456

`A090458(n)-A008683(A338506(2*n+1))`
-/

namespace A107905.P18237800880343009456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - A008683 (A338506 (2 * n + 1)).toNat

end

end A107905.P18237800880343009456

/-! ## A107905.P9166094120867930707

`A090458(n)-A008683(A124434(n+1))`
-/

namespace A107905.P9166094120867930707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) - A008683 (A124434 (n + 1)).toNat

end

end A107905.P9166094120867930707

/-! ## A107905.P15487654074254357252

`A090458(n)+A033683(A133263(n)-n)`
-/

namespace A107905.P15487654074254357252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + A033683 (A133263 n - (n : ℤ)).toNat

end

end A107905.P15487654074254357252

/-! ## A107905.P9614017150423507647

`A090458(n)+A033683(A133263(n))`
-/

namespace A107905.P9614017150423507647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + A033683 (A133263 n).toNat

end

end A107905.P9614017150423507647

/-! ## A107905.P17264828366739028698

`A090458(n)+A008683(2*A124434(n+1))`
-/

namespace A107905.P17264828366739028698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + A008683 (2 * A124434 (n + 1)).toNat

end

end A107905.P17264828366739028698

/-! ## A107905.P6853852998060403557

`A090458(n)+A008683((n+1)²)`
-/

namespace A107905.P6853852998060403557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + A008683 ((n + 1) ^ 2)

end

end A107905.P6853852998060403557

/-! ## A107905.P15025569060823467658

`A090458(n)+A033683(n²+1)`
-/

namespace A107905.P15025569060823467658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + A033683 (n ^ 2 + 1)

end

end A107905.P15025569060823467658

/-! ## A107905.P805796743104921758

`A090458(n)+1-A002262(A000124(n))`
-/

namespace A107905.P805796743104921758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090458 (n + 1) + (1 - A002262 (A000124 n).toNat)

end

end A107905.P805796743104921758

/-! ## A107905.P12209565351685828735

`(2-A002262(A000124(n)))*A222134(n)`
-/

namespace A107905.P12209565351685828735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A002262 (A000124 n).toNat) * A222134 (n + 1)

end

end A107905.P12209565351685828735

/-!
# A107906: Expansion of (1+8*x)/(1-16*x^2).

The programs for A107906, the canonical program `A107906.P14628539891669119614` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107906 has offset 0).

The definition of A107906 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+8x)/(1-16x^2))` (program `A107906.P14628539891669119614`, by `A107906.P14628539891669119614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A107906.P14628539891669119614

`ogf((1+8x)/(1-16x^2))`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107906

/-- `ogf((1+8x)/(1-16x^2))` -/
def P14628539891669119614.Spec : Prop :=
  ∀ n, P14628539891669119614.a n = A107906 n

theorem P14628539891669119614.correct : P14628539891669119614.Spec := by
  intro n
  simp only [A107906]

end A107906

/-! ## A107906.P3418215027658519983

`2^A014601(n)`
-/

namespace A107906.P3418215027658519983
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A014601 n : ℤ)

end

end A107906.P3418215027658519983

namespace A107906

/-- `2^A014601(n)` -/
def P3418215027658519983.Spec : Prop :=
  ∀ n, P3418215027658519983.a n = (A107906 n : ℚ)

end A107906

/-! ## A107906.P15588875894278081546

`record[gcd(2, ∑[n])^n]`
-/

namespace A107906.P15588875894278081546
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 (∑ j ∈ Finset.range (n + 1), f2 j) ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107906.P15588875894278081546

namespace A107906

/-- `record[gcd(2, ∑[n])^n]` -/
def P15588875894278081546.Spec : Prop :=
  ∀ n, (P15588875894278081546.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P14587672865809059862

`16*a(n-2)` with `a(0)=1, a(1)=8`
-/

namespace A107906.P14587672865809059862
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 8] fun n a =>
  16 * a (n - 2)

end

end A107906.P14587672865809059862

namespace A107906

/-- `16*a(n-2)` -/
def P14587672865809059862.Spec : Prop :=
  ∀ n, (P14587672865809059862.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P12133158158485086250

`2^comp[or(2, n)-1]`
-/

namespace A107906.P12133158158485086250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 2 n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A107906.P12133158158485086250

namespace A107906

/-- `2^comp[or(2, n)-1]` -/
def P12133158158485086250.Spec : Prop :=
  ∀ n, (P12133158158485086250.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P12272857766551519155

`record[and(2, n-1)^n]`
-/

namespace A107906.P12272857766551519155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 ((n : ℤ) - 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107906.P12272857766551519155

namespace A107906

/-- `record[and(2, n-1)^n]` -/
def P12272857766551519155.Spec : Prop :=
  ∀ n, P12272857766551519155.a n = A107906 n

end A107906

/-! ## A107906.P7966854334389179549

`∏[abs(a(n-2))]` with `a(0)=1, a(1)=8, a(2)=2`
-/

namespace A107906.P7966854334389179549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 8, 2] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107906.P7966854334389179549

namespace A107906

/-- `∏[abs(a(n-2))]` -/
def P7966854334389179549.Spec : Prop :=
  ∀ n, (P7966854334389179549.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P1910603197688563170

`∏[10-a(n-1)]` with `a(0)=1, a(1)=8`
-/

namespace A107906.P1910603197688563170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 8] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A107906.P1910603197688563170

namespace A107906

/-- `∏[10-a(n-1)]` -/
def P1910603197688563170.Spec : Prop :=
  ∀ n, P1910603197688563170.a n = A107906 n

end A107906

/-! ## A107906.P18025298744287941558

`2^(n%2+2*n)`
-/

namespace A107906.P18025298744287941558
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n % 2 + 2 * n)

end

end A107906.P18025298744287941558

namespace A107906

/-- `2^(n%2+2*n)` -/
def P18025298744287941558.Spec : Prop :=
  ∀ n, (P18025298744287941558.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P5540473358351231485

`2^(and(1, n)+2*n)`
-/

namespace A107906.P5540473358351231485
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (Nat.land 1 n + 2 * n)

end

end A107906.P5540473358351231485

namespace A107906

/-- `2^(and(1, n)+2*n)` -/
def P5540473358351231485.Spec : Prop :=
  ∀ n, (P5540473358351231485.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P7892143544350012619

`2^or(2*n, and(1, n))`
-/

namespace A107906.P7892143544350012619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.lor (2 * n) (Nat.land 1 n)

end

end A107906.P7892143544350012619

namespace A107906

/-- `2^or(2*n, and(1, n))` -/
def P7892143544350012619.Spec : Prop :=
  ∀ n, (P7892143544350012619.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P2018182287693839424

`2^xor(2*n, and(1, n))`
-/

namespace A107906.P2018182287693839424
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ Nat.xor (2 * n) (Nat.land 1 n)

end

end A107906.P2018182287693839424

namespace A107906

/-- `2^xor(2*n, and(1, n))` -/
def P2018182287693839424.Spec : Prop :=
  ∀ n, (P2018182287693839424.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P6534304044916630338

`2^lt[or(2, n-1), n]`
-/

namespace A107906.P6534304044916630338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107906.P6534304044916630338

namespace A107906

/-- `2^lt[or(2, n-1), n]` -/
def P6534304044916630338.Spec : Prop :=
  ∀ n, (P6534304044916630338.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P2585500679866335291

`2^lt[n, xor(2, n+1)]`
-/

namespace A107906.P2585500679866335291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107906.P2585500679866335291

namespace A107906

/-- `2^lt[n, xor(2, n+1)]` -/
def P2585500679866335291.Spec : Prop :=
  ∀ n, (P2585500679866335291.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P9710699152353868734

`2^lt[xor(2, n-1), n]`
-/

namespace A107906.P9710699152353868734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ((n : ℤ) - 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107906.P9710699152353868734

namespace A107906

/-- `2^lt[xor(2, n-1), n]` -/
def P9710699152353868734.Spec : Prop :=
  ∀ n, (P9710699152353868734.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P8626363650747689896

`2^(and(1, n)+n+n)`
-/

namespace A107906.P8626363650747689896
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (Nat.land 1 n + n + n)

end

end A107906.P8626363650747689896

namespace A107906

/-- `2^(and(1, n)+n+n)` -/
def P8626363650747689896.Spec : Prop :=
  ∀ n, (P8626363650747689896.a n : ℤ) = A107906 n

end A107906

/-! ## A107906.P16838258812784035754

`record[2^(or(2, n-1)+1)]`
-/

namespace A107906.P16838258812784035754
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (Int.lor 2 ((n : ℤ) - 1) + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107906.P16838258812784035754

namespace A107906

/-- `record[2^(or(2, n-1)+1)]` -/
def P16838258812784035754.Spec : Prop :=
  ∀ n, P16838258812784035754.a n = (A107906 n : ℚ)

end A107906

/-! ## A107906.P10129631399567578600

`record[2*2^or(2, n-1)]`
-/

namespace A107906.P10129631399567578600
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ (Int.lor 2 ((n : ℤ) - 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107906.P10129631399567578600

namespace A107906

/-- `record[2*2^or(2, n-1)]` -/
def P10129631399567578600.Spec : Prop :=
  ∀ n, P10129631399567578600.a n = (A107906 n : ℚ)

end A107906

/-! ## A107906.P4078923307544002725

`record[2^(xor(2, n+1)-3)]`
-/

namespace A107906.P4078923307544002725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((Nat.xor 2 (n + 1) : ℤ) - 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107906.P4078923307544002725

namespace A107906

/-- `record[2^(xor(2, n+1)-3)]` -/
def P4078923307544002725.Spec : Prop :=
  ∀ n, P4078923307544002725.a n = (A107906 n : ℚ)

end A107906

/-! ## A107906.P3954987370837612739

`record[2*2^xor(2, n-3)]`
-/

namespace A107906.P3954987370837612739
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (2 : ℚ) ^ (Int.xor 2 ((n : ℤ) - 3) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107906.P3954987370837612739

namespace A107906

/-- `record[2*2^xor(2, n-3)]` -/
def P3954987370837612739.Spec : Prop :=
  ∀ n, P3954987370837612739.a n = (A107906 n : ℚ)

end A107906

/-!
# A107907: Numbers having consecutive zeros or consecutive ones in binary representation.

The programs for A107907, the canonical program `A107907.P15405250453524004240` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107907 has offset 1).

The definition of A107907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107907.P9019985778142921117

`comp[floor(2^n/3)]`
-/

namespace A107907.P9019985778142921117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / 3⌋

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A107907.P9019985778142921117

namespace A107907

/-- `comp[floor(2^n/3)]` -/
def P9019985778142921117.Spec : Prop :=
  ∀ n, (P9019985778142921117.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P15405250453524004240

`lt[1, and(n, 3*n+2)]`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107907

/-- `lt[1, and(n, 3*n+2)]` -/
def P15405250453524004240.Spec : Prop :=
  ∀ n, (P15405250453524004240.a n : ℤ) = A107907 (n + 1)

theorem P15405250453524004240.correct : P15405250453524004240.Spec := by
  intro n
  simp only [A107907, Nat.add_sub_cancel]

end A107907

/-! ## A107907.P7330084653990044179

`lt[2, and(n, 3*n)]-1`
-/

namespace A107907.P7330084653990044179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land n (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1

end

end A107907.P7330084653990044179

namespace A107907

/-- `lt[2, and(n, 3*n)]-1` -/
def P7330084653990044179.Spec : Prop :=
  ∀ n, P7330084653990044179.a n = A107907 (n + 1)

end A107907

/-! ## A107907.P5757339699362594027

`eq[0, C(2, and(n, 3*n+2))]`
-/

namespace A107907.P5757339699362594027
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 2 (Nat.land n (3 * n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107907.P5757339699362594027

namespace A107907

/-- `eq[0, C(2, and(n, 3*n+2))]` -/
def P5757339699362594027.Spec : Prop :=
  ∀ n, (P5757339699362594027.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P16438746738545585673

`lt[xor(n, floor(n/2))-n, (a(n-1)-1+n)%n]` with `a(0)=0`
-/

namespace A107907.P16438746738545585673
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ⌊(n : ℚ) / 2⌋ - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  Int.tmod (f2 (n - 1) - 1 + (n : ℤ)) (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107907.P16438746738545585673

namespace A107907

/-- `lt[xor(n, floor(n/2))-n, (a(n-1)-1+n)%n]` -/
def P16438746738545585673.Spec : Prop :=
  ∀ n, (P16438746738545585673.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P9325741089561390702

`lt[1, A284559(n)]`
-/

namespace A107907.P9325741089561390702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107907.P9325741089561390702

namespace A107907

/-- `lt[1, A284559(n)]` -/
def P9325741089561390702.Spec : Prop :=
  ∀ n, (P9325741089561390702.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P16850653103283314385

`lt[1, A284579(n)]`
-/

namespace A107907.P16850653103283314385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284579 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107907.P16850653103283314385

namespace A107907

/-- `lt[1, A284579(n)]` -/
def P16850653103283314385.Spec : Prop :=
  ∀ n, (P16850653103283314385.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P8042712135182055483

`lt[1, A284583(n)]`
-/

namespace A107907.P8042712135182055483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284583 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107907.P8042712135182055483

namespace A107907

/-- `lt[1, A284583(n)]` -/
def P8042712135182055483.Spec : Prop :=
  ∀ n, (P8042712135182055483.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P4092791870006207200

`lt[1, A286558(n)]`
-/

namespace A107907.P4092791870006207200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286558 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107907.P4092791870006207200

namespace A107907

/-- `lt[1, A286558(n)]` -/
def P4092791870006207200.Spec : Prop :=
  ∀ n, (P4092791870006207200.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P16912722575493000785

`lt[1, A319416(n)]`
-/

namespace A107907.P16912722575493000785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319416 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107907.P16912722575493000785

namespace A107907

/-- `lt[1, A319416(n)]` -/
def P16912722575493000785.Spec : Prop :=
  ∀ n, (P16912722575493000785.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P15138155052642466951

`comp[A084639(n)]+1`
-/

namespace A107907.P15138155052642466951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084639 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A107907.P15138155052642466951

namespace A107907

/-- `comp[A084639(n)]+1` -/
def P15138155052642466951.Spec : Prop :=
  ∀ n, (P15138155052642466951.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P2909149697396794251

`lt[0, A319419(n)+1]`
-/

namespace A107907.P2909149697396794251
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107907.P2909149697396794251

namespace A107907

/-- `lt[0, A319419(n)+1]` -/
def P2909149697396794251.Spec : Prop :=
  ∀ n, (P2909149697396794251.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P9201253289996512902

`eq[A318921(n), A319419(n)]`
-/

namespace A107907.P9201253289996512902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319419 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107907.P9201253289996512902

namespace A107907

/-- `eq[A318921(n), A319419(n)]` -/
def P9201253289996512902.Spec : Prop :=
  ∀ n, (P9201253289996512902.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P5510824156127584313

`∪[A004753(n+1), A004780(n+1)]`
-/

namespace A107907.P5510824156127584313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107907.P5510824156127584313

namespace A107907

/-- `∪[A004753(n+1), A004780(n+1)]` -/
def P5510824156127584313.Spec : Prop :=
  ∀ n, (P5510824156127584313.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P10930597182625688295

`∪[A004753(n+1), A153033(n+1)]`
-/

namespace A107907.P10930597182625688295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153033 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107907.P10930597182625688295

namespace A107907

/-- `∪[A004753(n+1), A153033(n+1)]` -/
def P10930597182625688295.Spec : Prop :=
  ∀ n, (P10930597182625688295.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P1551238168479682924

`∪[A004780(n+1), A153034(n+1)]`
-/

namespace A107907.P1551238168479682924
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107907.P1551238168479682924

namespace A107907

/-- `∪[A004780(n+1), A153034(n+1)]` -/
def P1551238168479682924.Spec : Prop :=
  ∀ n, (P1551238168479682924.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P303860273942631038

`∪[A037969(n+1), A136037(n+1)]`
-/

namespace A107907.P303860273942631038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037969 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107907.P303860273942631038

namespace A107907

/-- `∪[A037969(n+1), A136037(n+1)]` -/
def P303860273942631038.Spec : Prop :=
  ∀ n, (P303860273942631038.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P15070371583867779460

`eq[n*A105348(2*n+1), A105348(2*n)]`
-/

namespace A107907.P15070371583867779460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A105348 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105348 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107907.P15070371583867779460

namespace A107907

/-- `eq[n*A105348(2*n+1), A105348(2*n)]` -/
def P15070371583867779460.Spec : Prop :=
  ∀ n, (P15070371583867779460.a n : ℤ) = A107907 (n + 1)

end A107907

/-! ## A107907.P18279214668949129484

`eq[n*A147612(2*n+1), A147612(2*n)]`
-/

namespace A107907.P18279214668949129484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A147612 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107907.P18279214668949129484

namespace A107907

/-- `eq[n*A147612(2*n+1), A147612(2*n)]` -/
def P18279214668949129484.Spec : Prop :=
  ∀ n, (P18279214668949129484.a n : ℤ) = A107907 (n + 1)

end A107907

/-!
# A107908: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)*(3*n+5)/720.

The programs for A107908, the canonical program `A107908.P17845839568030537237` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107908 has offset 0).

The definition of A107908 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107908.P17845839568030537237

`(n+1)*(n+2)²*(n+3)²*(n+4)*(3*n+5)/720`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107908

/-- `(n+1)*(n+2)²*(n+3)²*(n+4)*(3*n+5)/720` -/
def P17845839568030537237.Spec : Prop :=
  ∀ n, P17845839568030537237.a n = (A107908 n : ℚ)

end A107908

/-! ## A107908.P17501410020430934738

`∑[A114240(n)]`
-/

namespace A107908.P17501410020430934738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114240 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107908.P17501410020430934738

namespace A107908

/-- `∑[A114240(n)]` -/
def P17501410020430934738.Spec : Prop :=
  ∀ n, P17501410020430934738.a n = A107908 n

end A107908

/-! ## A107908.P7436038800406264163

`(A108178(n)+A107956(n))/(n+2)`
-/

namespace A107908.P7436038800406264163
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108178 n + A107956 n : ℚ) / (n + 2 : ℚ)

end

end A107908.P7436038800406264163

namespace A107908

/-- `(A108178(n)+A107956(n))/(n+2)` -/
def P7436038800406264163.Spec : Prop :=
  ∀ n, P7436038800406264163.a n = (A107908 n : ℚ)

end A107908

/-! ## A107908.P8429309975603489014

`A107891(n)+A107959(n)-A108178(n)`
-/

namespace A107908.P8429309975603489014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A107959 n - A108178 n)

end

end A107908.P8429309975603489014

namespace A107908

/-- `A107891(n)+A107959(n)-A108178(n)` -/
def P8429309975603489014.Spec : Prop :=
  ∀ n, P8429309975603489014.a n = A107908 n

end A107908

/-! ## A107908.P9184093881079592843

`A107891(n)+A107956(n)-A108645(n)`
-/

namespace A107908.P9184093881079592843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A107956 n - A108645 n)

end

end A107908.P9184093881079592843

namespace A107908

/-- `A107891(n)+A107956(n)-A108645(n)` -/
def P9184093881079592843.Spec : Prop :=
  ∀ n, P9184093881079592843.a n = A107908 n

end A107908

/-! ## A107908.P9722003503372559155

`A107959(n)+A108680(n)-A107968(n)`
-/

namespace A107908.P9722003503372559155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107959 n + (A108680 n - A107968 n)

end

end A107908.P9722003503372559155

namespace A107908

/-- `A107959(n)+A108680(n)-A107968(n)` -/
def P9722003503372559155.Spec : Prop :=
  ∀ n, P9722003503372559155.a n = A107908 n

end A107908

/-! ## A107908.P198238303069479984

`A107968(n)+A108680(n)-A108645(n)`
-/

namespace A107908.P198238303069479984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107968 n + (A108680 n - A108645 n)

end

end A107908.P198238303069479984

namespace A107908

/-- `A107968(n)+A108680(n)-A108645(n)` -/
def P198238303069479984.Spec : Prop :=
  ∀ n, P198238303069479984.a n = A107908 n

end A107908

/-! ## A107908.P9231091007661556084

`∑[∑[A085461(n+1)+A006414(n)]-A006414(n)]`
-/

namespace A107908.P9231091007661556084
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085461 (n + 1) + A006414 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - A006414 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107908.P9231091007661556084

namespace A107908

/-- `∑[∑[A085461(n+1)+A006414(n)]-A006414(n)]` -/
def P9231091007661556084.Spec : Prop :=
  ∀ n, P9231091007661556084.a n = A107908 n

end A107908

/-!
# A107909: Numbers having no consecutive zeros or no consecutive ones in binary representation.

The programs for A107909, the canonical program `A107909.P15363396485693245278` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107909 has offset 0).

The definition of A107909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107909.P17500161923757126197

`∑[A107910(n)]-A107910(n)`
-/

namespace A107909.P17500161923757126197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A107910 n

end

end A107909.P17500161923757126197

namespace A107909

/-- `∑[A107910(n)]-A107910(n)` -/
def P17500161923757126197.Spec : Prop :=
  ∀ n, P17500161923757126197.a n = A107909 n

end A107909

/-! ## A107909.P15363396485693245278

`∪[A003754(n+1), A003714(n)]`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A107909

/-- `∪[A003754(n+1), A003714(n)]` -/
def P15363396485693245278.Spec : Prop :=
  ∀ n, (P15363396485693245278.a n : ℤ) = A107909 n

theorem P15363396485693245278.correct : P15363396485693245278.Spec := by
  intro n
  simp only [A107909]

end A107909

/-! ## A107909.P9692702879378285796

`∪[A153033(n+1), A003714(n)]`
-/

namespace A107909.P9692702879378285796
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153033 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107909.P9692702879378285796

namespace A107909

/-- `∪[A153033(n+1), A003714(n)]` -/
def P9692702879378285796.Spec : Prop :=
  ∀ n, (P9692702879378285796.a n : ℤ) = A107909 n

end A107909

/-! ## A107909.P1151639093365901705

`∪[A003754(n+1), A153034(n+1)]`
-/

namespace A107909.P1151639093365901705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153034 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107909.P1151639093365901705

namespace A107909

/-- `∪[A003754(n+1), A153034(n+1)]` -/
def P1151639093365901705.Spec : Prop :=
  ∀ n, (P1151639093365901705.a n : ℤ) = A107909 n

end A107909

/-! ## A107909.P13698068386958638264

`lt[A261461(n), 5]`
-/

namespace A107909.P13698068386958638264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107909.P13698068386958638264

namespace A107909

/-- `lt[A261461(n), 5]` -/
def P13698068386958638264.Spec : Prop :=
  ∀ n, (P13698068386958638264.a n : ℤ) = A107909 n

end A107909

/-! ## A107909.P428426227387244286

`lt[A261922(n), 5]`
-/

namespace A107909.P428426227387244286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261922 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A107909.P428426227387244286

namespace A107909

/-- `lt[A261922(n), 5]` -/
def P428426227387244286.Spec : Prop :=
  ∀ n, (P428426227387244286.a n : ℤ) = A107909 n

end A107909

/-! ## A107909.P1546551107147681054

`eq[1, A109543(A091460(n))]`
-/

namespace A107909.P1546551107147681054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109543 (A091460 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107909.P1546551107147681054

namespace A107909

/-- `eq[1, A109543(A091460(n))]` -/
def P1546551107147681054.Spec : Prop :=
  ∀ n, (P1546551107147681054.a n : ℤ) = A107909 n

end A107909

/-! ## A107909.P5757984867292379819

`eq[A107782(n*A085357(n)), A107782(n)]`
-/

namespace A107909.P5757984867292379819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 ((n : ℤ) * A085357 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107782 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107909.P5757984867292379819

namespace A107909

/-- `eq[A107782(n*A085357(n)), A107782(n)]` -/
def P5757984867292379819.Spec : Prop :=
  ∀ n, (P5757984867292379819.a n : ℤ) = A107909 n

end A107909

/-!
# A107910: A107909(n+1) - A107909(n).

The programs for A107910, the canonical program `A107910.P11998485290685143921` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107910 has offset 0).

The definition of A107910 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107909, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107910.P11998485290685143921

`A107909(n+1)-A107909(n)`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A107910

/-- `A107909(n+1)-A107909(n)` -/
def P11998485290685143921.Spec : Prop :=
  ∀ n, P11998485290685143921.a n = A107910 n

theorem P11998485290685143921.correct : P11998485290685143921.Spec := by
  intro n
  simp only [A107910]

end A107910

/-! ## A107910.P13775992199768247274

`Δ[A107909(n)]`
-/

namespace A107910.P13775992199768247274
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107910.P13775992199768247274

namespace A107910

/-- `Δ[A107909(n)]` -/
def P13775992199768247274.Spec : Prop :=
  ∀ n, P13775992199768247274.a n = A107910 n

theorem P13775992199768247274.correct : P13775992199768247274.Spec := by
  intro n
  simp only [A107910, Nat.add_sub_cancel, A107910.P13775992199768247274.f1, A107910.P13775992199768247274.a, A107910.P11998485290685143921.a, SequenceMachineLib.memo_apply]

end A107910

/-! ## A107910.P12638966073256036304

`Δ[∪[A003754(n+1), A003714(n)]]`
-/

namespace A107910.P12638966073256036304
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003754 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107910.P12638966073256036304

namespace A107910

/-- `Δ[∪[A003754(n+1), A003714(n)]]` -/
def P12638966073256036304.Spec : Prop :=
  ∀ n, P12638966073256036304.a n = A107910 n

end A107910

/-! ## A107910.P3181241563540030265

`Δ[lt[A091460(n), 5]]`
-/

namespace A107910.P3181241563540030265
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107910.P3181241563540030265

namespace A107910

/-- `Δ[lt[A091460(n), 5]]` -/
def P3181241563540030265.Spec : Prop :=
  ∀ n, P3181241563540030265.a n = A107910 n

end A107910

/-! ## A107910.P15027106711616905295

`Δ[lt[A261461(n), 5]]`
-/

namespace A107910.P15027106711616905295
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107910.P15027106711616905295

namespace A107910

/-- `Δ[lt[A261461(n), 5]]` -/
def P15027106711616905295.Spec : Prop :=
  ∀ n, P15027106711616905295.a n = A107910 n

end A107910

/-! ## A107910.P15733955422038128939

`Δ[lt[A261922(n), 5]]`
-/

namespace A107910.P15733955422038128939
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261922 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A107910.P15733955422038128939

namespace A107910

/-- `Δ[lt[A261922(n), 5]]` -/
def P15733955422038128939.Spec : Prop :=
  ∀ n, P15733955422038128939.a n = A107910 n

end A107910

/-!
# A107911: Numbers having consecutive zeros and also consecutive ones in binary representation.

The programs for A107911, the canonical program `A107911.P8660801977051093778` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107911 has offset 1).

The definition of A107911 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107911.P8660801977051093778

`comp[A107909(n)]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A107911

/-- `comp[A107909(n)]` -/
def P8660801977051093778.Spec : Prop :=
  ∀ n, (P8660801977051093778.a n : ℤ) = A107911 (n + 1)

theorem P8660801977051093778.correct : P8660801977051093778.Spec := by
  intro n
  simp only [A107911, Nat.add_sub_cancel]

end A107911

/-! ## A107911.P9996233103107049553

`∩[A004753(n+1), A004780(n+1)]`
-/

namespace A107911.P9996233103107049553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004753 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004780 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107911.P9996233103107049553

namespace A107911

/-- `∩[A004753(n+1), A004780(n+1)]` -/
def P9996233103107049553.Spec : Prop :=
  ∀ n, (P9996233103107049553.a n : ℤ) = A107911 (n + 1)

end A107911

/-! ## A107911.P10895708443689057890

`lt[4, A091460(n)]`
-/

namespace A107911.P10895708443689057890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091460 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107911.P10895708443689057890

namespace A107911

/-- `lt[4, A091460(n)]` -/
def P10895708443689057890.Spec : Prop :=
  ∀ n, (P10895708443689057890.a n : ℤ) = A107911 (n + 1)

end A107911

/-! ## A107911.P16893558479866191232

`lt[4, A261461(n)]`
-/

namespace A107911.P16893558479866191232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261461 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107911.P16893558479866191232

namespace A107911

/-- `lt[4, A261461(n)]` -/
def P16893558479866191232.Spec : Prop :=
  ∀ n, (P16893558479866191232.a n : ℤ) = A107911 (n + 1)

end A107911

/-! ## A107911.P12706911269672093200

`lt[4, A261922(n)]`
-/

namespace A107911.P12706911269672093200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261922 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A107911.P12706911269672093200

namespace A107911

/-- `lt[4, A261922(n)]` -/
def P12706911269672093200.Spec : Prop :=
  ∀ n, (P12706911269672093200.a n : ℤ) = A107911 (n + 1)

end A107911

/-! ## A107911.P15531279041029108395

`eq[3, A316831(A279645(n))]`
-/

namespace A107911.P15531279041029108395
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316831 (A279645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107911.P15531279041029108395

namespace A107911

/-- `eq[3, A316831(A279645(n))]` -/
def P15531279041029108395.Spec : Prop :=
  ∀ n, (P15531279041029108395.a n : ℤ) = A107911 (n + 1)

end A107911

/-! ## A107911.P10132744094932078805

`eq[2, A055642(2*A261461(n))]`
-/

namespace A107911.P10132744094932078805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (2 * A261461 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107911.P10132744094932078805

namespace A107911

/-- `eq[2, A055642(2*A261461(n))]` -/
def P10132744094932078805.Spec : Prop :=
  ∀ n, (P10132744094932078805.a n : ℤ) = A107911 (n + 1)

end A107911

/-! ## A107911.P6582440819214634989

`eq[A000038(A107782(n)), A085357(n)]`
-/

namespace A107911.P6582440819214634989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A107782 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107911.P6582440819214634989

namespace A107911

/-- `eq[A000038(A107782(n)), A085357(n)]` -/
def P6582440819214634989.Spec : Prop :=
  ∀ n, (P6582440819214634989.a n : ℤ) = A107911 (n + 1)

end A107911

/-! ## A107911.P12191378253748618522

`eq[A000038(A107782(n)), A132971(n)]`
-/

namespace A107911.P12191378253748618522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (A107782 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132971 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107911.P12191378253748618522

namespace A107911

/-- `eq[A000038(A107782(n)), A132971(n)]` -/
def P12191378253748618522.Spec : Prop :=
  ∀ n, (P12191378253748618522.a n : ℤ) = A107911 (n + 1)

end A107911

/-!
# A107912: Numbers k that require two iterations of the sigma function to be >= 2*k.

The programs for A107912, there is no canonical definition to state claims against.
-/

/-! ## A107912.P18013044187092941642

`eq[2, A055020(n+2)]+2`
-/

namespace A107912.P18013044187092941642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055020 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107912.P18013044187092941642

/-! ## A107912.P5114767510921309380

`eq[2, A055020(n*a(and(1, n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A107912.P5114767510921309380
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A055020 ((n : ℤ) * f2 (Int.land 1 ((n : ℤ) - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107912.P5114767510921309380

/-! ## A107912.P10834919730727650714

`record[A001057(A055020(n+2)+A005408(n))]`
-/

namespace A107912.P10834919730727650714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A055020 (n + 2) + A005408 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107912.P10834919730727650714

/-! ## A107912.P442810465324564019

`lt[A070475(A317703(n+4)), A070498(n)]`
-/

namespace A107912.P442810465324564019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070475 (A317703 (n + 4)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070498 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107912.P442810465324564019

/-! ## A107912.P13632887771775047709

`A106249(3*n)+2-A006466(A160571(2*n+3))`
-/

namespace A107912.P13632887771775047709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (3 * n) + 2 - A006466 (A160571 (2 * n + 3)).toNat

end

end A107912.P13632887771775047709

/-!
# A107913: Numbers k that require three iterations of the sigma function to be >= 2*k.

The programs for A107913, there is no canonical definition to state claims against.
-/

/-! ## A107913.P10868433282715117698

`eq[3, A055020(n+2)]+2`
-/

namespace A107913.P10868433282715117698
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055020 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A107913.P10868433282715117698

/-! ## A107913.P11745707143787198209

`eq[3, A055020(n*a(and(1, n-1)))]` with `a(0)=1, a(1)=1`
-/

namespace A107913.P11745707143787198209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f2 =>
  A055020 ((n : ℤ) * f2 (Int.land 1 ((n : ℤ) - 1)).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107913.P11745707143787198209

/-! ## A107913.P7253663415071384780

`A009056(eq[3, A055020(n+2)])`
-/

namespace A107913.P7253663415071384780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055020 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009056 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107913.P7253663415071384780

/-! ## A107913.P1357639860826032948

`eq[3, A055020(A233583(n+1))]`
-/

namespace A107913.P1357639860826032948
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055020 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107913.P1357639860826032948

/-! ## A107913.P3142454642032182588

`∩[A075025(n+1), A227759(n+1)]`
-/

namespace A107913.P3142454642032182588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075025 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227759 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107913.P3142454642032182588

/-!
# A107914: Numbers k that require four iterations of the sigma function to be >= 2*k.

The programs for A107914, there is no canonical definition to state claims against.
-/

/-! ## A107914.P10701949975573998242

`filter[A237613(n+1), A103674(#)]`
-/

namespace A107914.P10701949975573998242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A103674 (f1 j).toNat = 1) n)

end

end A107914.P10701949975573998242

/-!
# A107915: a(n) = binomial(n+4,4)*binomial(n+5,4)*binomial(n+6,4)/75.

The programs for A107915, the canonical program `A107915.P6962663084114423435` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107915 has offset 0).

The definition of A107915 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107915.P3586215175766345556

`∑[A107917(n)]`
-/

namespace A107915.P3586215175766345556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107917 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107915.P3586215175766345556

namespace A107915

/-- `∑[A107917(n)]` -/
def P3586215175766345556.Spec : Prop :=
  ∀ n, P3586215175766345556.a n = A107915 n

end A107915

/-! ## A107915.P6962663084114423435

`∑[∑[A107965(n)]]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A107915

/-- `∑[∑[A107965(n)]]` -/
def P6962663084114423435.Spec : Prop :=
  ∀ n, P6962663084114423435.a n = A107915 n

theorem P6962663084114423435.correct : P6962663084114423435.Spec := by
  intro n
  simp only [A107915]

end A107915

/-! ## A107915.P7991114576641909535

`A056939(A155212(n)+12)`
-/

namespace A107915.P7991114576641909535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (A155212 n + 12).toNat

end

end A107915.P7991114576641909535

namespace A107915

/-- `A056939(A155212(n)+12)` -/
def P7991114576641909535.Spec : Prop :=
  ∀ n, P7991114576641909535.a n = A107915 n

end A107915

/-! ## A107915.P4131509943072807981

`A056939(eq[4, A002262(n)])`
-/

namespace A107915.P4131509943072807981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107915.P4131509943072807981

namespace A107915

/-- `A056939(eq[4, A002262(n)])` -/
def P4131509943072807981.Spec : Prop :=
  ∀ n, P4131509943072807981.a n = A107915 n

end A107915

/-! ## A107915.P7475141075323943174

`A056939(eq[16, A143844(n)])`
-/

namespace A107915.P7475141075323943174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143844 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107915.P7475141075323943174

namespace A107915

/-- `A056939(eq[16, A143844(n)])` -/
def P7475141075323943174.Spec : Prop :=
  ∀ n, P7475141075323943174.a n = A107915 n

end A107915

/-! ## A107915.P18390100679860998403

`A056939(eq[5, A002260(n+1)])`
-/

namespace A107915.P18390100679860998403
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107915.P18390100679860998403

namespace A107915

/-- `A056939(eq[5, A002260(n+1)])` -/
def P18390100679860998403.Spec : Prop :=
  ∀ n, P18390100679860998403.a n = A107915 n

end A107915

/-! ## A107915.P1484792786394361944

`A056939(eq[2, A144328(n+1)-2])`
-/

namespace A107915.P1484792786394361944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107915.P1484792786394361944

namespace A107915

/-- `A056939(eq[2, A144328(n+1)-2])` -/
def P1484792786394361944.Spec : Prop :=
  ∀ n, P1484792786394361944.a n = A107915 n

end A107915

/-! ## A107915.P18416396420957376460

`A056939(A052905(n+2))`
-/

namespace A107915.P18416396420957376460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (A052905 (n + 2)).toNat

end

end A107915.P18416396420957376460

namespace A107915

/-- `A056939(A052905(n+2))` -/
def P18416396420957376460.Spec : Prop :=
  ∀ n, P18416396420957376460.a n = A107915 n

end A107915

/-! ## A107915.P981839205460164484

`A056939(A056115(n)+10)`
-/

namespace A107915.P981839205460164484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (A056115 n + 10).toNat

end

end A107915.P981839205460164484

namespace A107915

/-- `A056939(A056115(n)+10)` -/
def P981839205460164484.Spec : Prop :=
  ∀ n, P981839205460164484.a n = A107915 n

end A107915

/-! ## A107915.P18411646085367698351

`A056939(eq[4, A025581(n)])`
-/

namespace A107915.P18411646085367698351
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056939 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107915.P18411646085367698351

namespace A107915

/-- `A056939(eq[4, A025581(n)])` -/
def P18411646085367698351.Spec : Prop :=
  ∀ n, P18411646085367698351.a n = A107915 n

end A107915

/-!
# A107916: a(n) = binomial(n+3,2)*binomial(n+4,3)*binomial(n+5,5)/12.

The programs for A107916, the canonical program `A107916.P271474803577046997` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107916 has offset 0).

The definition of A107916 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107916.P271474803577046997

`∑[A107966(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107916

/-- `∑[A107966(n)]` -/
def P271474803577046997.Spec : Prop :=
  ∀ n, P271474803577046997.a n = A107916 n

theorem P271474803577046997.correct : P271474803577046997.Spec := by
  intro n
  simp only [A107916]

end A107916

/-! ## A107916.P206891458976395245

`(n+2)/2*A047819(n)`
-/

namespace A107916.P206891458976395245
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A047819 n : ℚ)

end

end A107916.P206891458976395245

namespace A107916

/-- `(n+2)/2*A047819(n)` -/
def P206891458976395245.Spec : Prop :=
  ∀ n, P206891458976395245.a n = (A107916 n : ℚ)

end A107916

/-! ## A107916.P15346677736640130686

`(n/2+1)*∑[A107891(n)]`
-/

namespace A107916.P15346677736640130686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A107916.P15346677736640130686

namespace A107916

/-- `(n/2+1)*∑[A107891(n)]` -/
def P15346677736640130686.Spec : Prop :=
  ∀ n, P15346677736640130686.a n = (A107916 n : ℚ)

end A107916

/-! ## A107916.P3990845545875571983

`∑[(A107967(n)+A107942(n))/2]`
-/

namespace A107916.P3990845545875571983
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107967 n + A107942 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107916.P3990845545875571983

namespace A107916

/-- `∑[(A107967(n)+A107942(n))/2]` -/
def P3990845545875571983.Spec : Prop :=
  ∀ n, P3990845545875571983.a n = (A107916 n : ℚ)

end A107916

/-! ## A107916.P13833671852299272378

`A006857(n)/A005585(n+1)*A114242(n)`
-/

namespace A107916.P13833671852299272378
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006857 n : ℚ) / (A005585 (n + 1) : ℚ) * (A114242 n : ℚ)

end

end A107916.P13833671852299272378

namespace A107916

/-- `A006857(n)/A005585(n+1)*A114242(n)` -/
def P13833671852299272378.Spec : Prop :=
  ∀ n, P13833671852299272378.a n = (A107916 n : ℚ)

end A107916

/-! ## A107916.P6036735974086861265

`A107966(and(n, A000225(n)))+a(n-1)` with `a(0)=1`
-/

namespace A107916.P6036735974086861265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A107966 (Int.land (n : ℤ) (A000225 n)).toNat + a (n - 1)

end

end A107916.P6036735974086861265

namespace A107916

/-- `A107966(and(n, A000225(n)))+a(n-1)` -/
def P6036735974086861265.Spec : Prop :=
  ∀ n, P6036735974086861265.a n = A107916 n

end A107916

/-!
# A107917: a(n) = (n+1)(n+2)^2*(n+3)^3*(n+4)^2*(n+5)(n^2 + 6n + 10)/86400.

The programs for A107917, the canonical program `A107917.P17887768737804748010` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107917 has offset 0).

The definition of A107917 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107917.P17887768737804748010

`∑[A107965(n)]`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A107917

/-- `∑[A107965(n)]` -/
def P17887768737804748010.Spec : Prop :=
  ∀ n, P17887768737804748010.a n = A107917 n

theorem P17887768737804748010.correct : P17887768737804748010.Spec := by
  intro n
  simp only [A107917]

end A107917

/-! ## A107917.P11079816596866213928

`A000007(n)+Δ[A056940(A167614(n+1))]`
-/

namespace A107917.P11079816596866213928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A167614 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A107917.P11079816596866213928

namespace A107917

/-- `A000007(n)+Δ[A056940(A167614(n+1))]` -/
def P11079816596866213928.Spec : Prop :=
  ∀ n, P11079816596866213928.a n = A107917 n

end A107917

/-! ## A107917.P13383620326949012466

`Δ[A056940(A167614(n+1))-A054977(n)]`
-/

namespace A107917.P13383620326949012466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A167614 (n + 1)).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107917.P13383620326949012466

namespace A107917

/-- `Δ[A056940(A167614(n+1))-A054977(n)]` -/
def P13383620326949012466.Spec : Prop :=
  ∀ n, P13383620326949012466.a n = A107917 n

end A107917

/-! ## A107917.P1353760373868396860

`Δ[A056940(A167614(n+1))%A107915(n)]`
-/

namespace A107917.P1353760373868396860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056940 (A167614 (n + 1)).toNat) (A107915 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107917.P1353760373868396860

namespace A107917

/-- `Δ[A056940(A167614(n+1))%A107915(n)]` -/
def P1353760373868396860.Spec : Prop :=
  ∀ n, P1353760373868396860.a n = A107917 n

end A107917

/-! ## A107917.P10429369465670683100

`Δ[A056940(A167614(n+1))+A036453(n+1)]`
-/

namespace A107917.P10429369465670683100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056940 (A167614 (n + 1)).toNat + A036453 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107917.P10429369465670683100

namespace A107917

/-- `Δ[A056940(A167614(n+1))+A036453(n+1)]` -/
def P10429369465670683100.Spec : Prop :=
  ∀ n, P10429369465670683100.a n = A107917 n

end A107917

/-!
# A107918: Length of continued fraction for the harmonic mean of n and n-th prime.

The programs for A107918, there is no canonical definition to state claims against.
-/

/-! ## A107918.P14254421694253102014

`∑{e}[A325037(n+1)^A002262(n)+n, #%2]+2`
-/

namespace A107918.P14254421694253102014
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A325037 (n + 1) : ℚ) ^ (A002262 n : ℤ) + (n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, Nat.factorization (SequenceMachineLib.roundAway (f1 n)).natAbs p % 2 + 2

end

end A107918.P14254421694253102014

/-! ## A107918.P5871962051963434767

`A001221(A001157(n+3)*A326083(n))`
-/

namespace A107918.P5871962051963434767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001157 (n + 3) * A326083 n).toNat

end

end A107918.P5871962051963434767

/-! ## A107918.P7207561005165614635

`A294903(A294931(n+1)*A294939(n+3))`
-/

namespace A107918.P7207561005165614635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294903 (A294931 (n + 1) * A294939 (n + 3)).toNat

end

end A107918.P7207561005165614635

/-! ## A107918.P5495462776940316498

`A071215(A348569(n+1)%A096172(3*n+5))`
-/

namespace A107918.P5495462776940316498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071215 (Int.tmod (A348569 (n + 1)) (A096172 (3 * n + 5))).toNat

end

end A107918.P5495462776940316498

/-! ## A107918.P6045444309961974561

`A071215(A348569(n+1))`
-/

namespace A107918.P6045444309961974561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071215 (A348569 (n + 1)).toNat

end

end A107918.P6045444309961974561

/-!
# A107920: Lucas and Lehmer numbers with parameters (1 +- sqrt(-7))/2.

The programs for A107920, the canonical program `A107920.P1612071859933460530` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107920 has offset 0).

The definition of A107920 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107920.P1612071859933460530

`a(n-1)-2*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107920

/-- `a(n-1)-2*a(n-2)` -/
def P1612071859933460530.Spec : Prop :=
  ∀ n, P1612071859933460530.a n = A107920 n

theorem P1612071859933460530.correct : P1612071859933460530.Spec := by
  intro n
  simp only [A107920]

end A107920

/-! ## A107920.P10658576332896195574

`ogf(x/(1-x+2x^2))`
-/

namespace A107920.P10658576332896195574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -1, 2] n

end

end A107920.P10658576332896195574

namespace A107920

/-- `ogf(x/(1-x+2x^2))` -/
def P10658576332896195574.Spec : Prop :=
  ∀ n, P10658576332896195574.a n = A107920 n

end A107920

/-! ## A107920.P6172617233403556354

`a(n-1)-(a(n-2)+a(n-2))` with `a(0)=0, a(1)=1`
-/

namespace A107920.P6172617233403556354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - (a (n - 2) + a (n - 2))

end

end A107920.P6172617233403556354

namespace A107920

/-- `a(n-1)-(a(n-2)+a(n-2))` -/
def P6172617233403556354.Spec : Prop :=
  ∀ n, P6172617233403556354.a n = A107920 n

theorem P6172617233403556354.correct : P6172617233403556354.Spec := by
  intro n
  simp only [A107920, Nat.add_sub_cancel, A107920.P6172617233403556354.a, A107920.P1612071859933460530.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107920

/-! ## A107920.P11940175238869954252

`a(n-1)-a(n-2)-a(n-2)` with `a(0)=0, a(1)=1`
-/

namespace A107920.P11940175238869954252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) - a (n - 2) - a (n - 2)

end

end A107920.P11940175238869954252

namespace A107920

/-- `a(n-1)-a(n-2)-a(n-2)` -/
def P11940175238869954252.Spec : Prop :=
  ∀ n, P11940175238869954252.a n = A107920 n

theorem P11940175238869954252.correct : P11940175238869954252.Spec := by
  intro n
  simp only [A107920, Nat.add_sub_cancel, A107920.P11940175238869954252.a, A107920.P1612071859933460530.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A107920

/-! ## A107920.P12079092646656506519

`Δ[-A105578(n)]`
-/

namespace A107920.P12079092646656506519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A105578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107920.P12079092646656506519

namespace A107920

/-- `Δ[-A105578(n)]` -/
def P12079092646656506519.Spec : Prop :=
  ∀ n, P12079092646656506519.a n = A107920 n

end A107920

/-! ## A107920.P7371905481261027470

`∑[A078020(abs(1-n))]`
-/

namespace A107920.P7371905481261027470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107920.P7371905481261027470

namespace A107920

/-- `∑[A078020(abs(1-n))]` -/
def P7371905481261027470.Spec : Prop :=
  ∀ n, P7371905481261027470.a n = A107920 n

end A107920

/-! ## A107920.P8024919686422789540

`A078020(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A107920.P8024919686422789540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A078020 (n - 1) + a (n - 1)

end

end A107920.P8024919686422789540

namespace A107920

/-- `A078020(n-1)+a(n-1)` -/
def P8024919686422789540.Spec : Prop :=
  ∀ n, P8024919686422789540.a n = A107920 n

end A107920

/-! ## A107920.P4037264342119249340

`A105578(n)-A105578(n+1)`
-/

namespace A107920.P4037264342119249340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105578 n - A105578 (n + 1)

end

end A107920.P4037264342119249340

namespace A107920

/-- `A105578(n)-A105578(n+1)` -/
def P4037264342119249340.Spec : Prop :=
  ∀ n, P4037264342119249340.a n = A107920 n

end A107920

/-! ## A107920.P3698448721824544908

`∑[A078020(n)]-A078020(n)`
-/

namespace A107920.P3698448721824544908
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078020 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A078020 n

end

end A107920.P3698448721824544908

namespace A107920

/-- `∑[A078020(n)]-A078020(n)` -/
def P3698448721824544908.Spec : Prop :=
  ∀ n, P3698448721824544908.a n = A107920 n

end A107920

/-! ## A107920.P9771247310514105603

`2*A105578(n)-1-A078020(n)`
-/

namespace A107920.P9771247310514105603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A105578 n - 1 - A078020 n

end

end A107920.P9771247310514105603

namespace A107920

/-- `2*A105578(n)-1-A078020(n)` -/
def P9771247310514105603.Spec : Prop :=
  ∀ n, P9771247310514105603.a n = A107920 n

end A107920

/-! ## A107920.P1706963955771487289

`(1-4/2)/2*A078020(n+1)`
-/

namespace A107920.P1706963955771487289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 - (4 : ℚ) / 2) / 2 * (A078020 (n + 1) : ℚ)

end

end A107920.P1706963955771487289

namespace A107920

/-- `(1-4/2)/2*A078020(n+1)` -/
def P1706963955771487289.Spec : Prop :=
  ∀ n, P1706963955771487289.a n = (A107920 n : ℚ)

end A107920

/-! ## A107920.P4085632090929926535

`A078020(n+1)/2-A078020(n+1)`
-/

namespace A107920.P4085632090929926535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078020 (n + 1) : ℚ) / 2 - (A078020 (n + 1) : ℚ)

end

end A107920.P4085632090929926535

namespace A107920

/-- `A078020(n+1)/2-A078020(n+1)` -/
def P4085632090929926535.Spec : Prop :=
  ∀ n, P4085632090929926535.a n = (A107920 n : ℚ)

end A107920

/-! ## A107920.P14978525844688186244

`A001607(n)*A062157(n)`
-/

namespace A107920.P14978525844688186244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 n * A062157 n

end

end A107920.P14978525844688186244

namespace A107920

/-- `A001607(n)*A062157(n)` -/
def P14978525844688186244.Spec : Prop :=
  ∀ n, P14978525844688186244.a n = A107920 n

end A107920

/-! ## A107920.P730227979636842324

`A001607(n)*A165326(n)`
-/

namespace A107920.P730227979636842324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001607 n * A165326 n

end

end A107920.P730227979636842324

namespace A107920

/-- `A001607(n)*A165326(n)` -/
def P730227979636842324.Spec : Prop :=
  ∀ n, P730227979636842324.a n = A107920 n

end A107920

/-! ## A107920.P8012259009266518232

`A001607(n)/A062157(n+2)`
-/

namespace A107920.P8012259009266518232
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001607 n : ℚ) / (A062157 (n + 2) : ℚ)

end

end A107920.P8012259009266518232

namespace A107920

/-- `A001607(n)/A062157(n+2)` -/
def P8012259009266518232.Spec : Prop :=
  ∀ n, P8012259009266518232.a n = (A107920 n : ℚ)

end A107920

/-! ## A107920.P11406353164390628243

`Δ[A078020(n+2)/4]`
-/

namespace A107920.P11406353164390628243
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078020 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107920.P11406353164390628243

namespace A107920

/-- `Δ[A078020(n+2)/4]` -/
def P11406353164390628243.Spec : Prop :=
  ∀ n, P11406353164390628243.a n = (A107920 n : ℚ)

end A107920

/-! ## A107920.P13093150455397785680

`(A105578(n)-A105225(n))/2`
-/

namespace A107920.P13093150455397785680
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105578 n - A105225 n : ℚ) / 2

end

end A107920.P13093150455397785680

namespace A107920

/-- `(A105578(n)-A105225(n))/2` -/
def P13093150455397785680.Spec : Prop :=
  ∀ n, P13093150455397785680.a n = (A107920 n : ℚ)

end A107920

/-! ## A107920.P5844506309362241111

`A077876(n)-A105578(n)`
-/

namespace A107920.P5844506309362241111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077876 n - A105578 n

end

end A107920.P5844506309362241111

namespace A107920

/-- `A077876(n)-A105578(n)` -/
def P5844506309362241111.Spec : Prop :=
  ∀ n, P5844506309362241111.a n = A107920 n

end A107920

/-! ## A107920.P16972166045866100940

`(A105577(n)-A105579(n))/2`
-/

namespace A107920.P16972166045866100940
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A105577 n - A105579 n : ℚ) / 2

end

end A107920.P16972166045866100940

namespace A107920

/-- `(A105577(n)-A105579(n))/2` -/
def P16972166045866100940.Spec : Prop :=
  ∀ n, P16972166045866100940.a n = (A107920 n : ℚ)

end A107920

/-! ## A107920.P14226256664449456904

`A169998(n+1)/A167433(n)*A001607(n)`
-/

namespace A107920.P14226256664449456904
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169998 (n + 1) : ℚ) / (A167433 n : ℚ) * (A001607 n : ℚ)

end

end A107920.P14226256664449456904

namespace A107920

/-- `A169998(n+1)/A167433(n)*A001607(n)` -/
def P14226256664449456904.Spec : Prop :=
  ∀ n, P14226256664449456904.a n = (A107920 n : ℚ)

end A107920

/-!
# A107923: Prime numbers occurring in A107919.

The programs for A107923, there is no canonical definition to state claims against.
-/

/-! ## A107923.P6997645598617141679

`p?[A107919(n+1)]`
-/

namespace A107923.P6997645598617141679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107923.P6997645598617141679

/-! ## A107923.P12329236939080658628

`filter[A107919(n+1), A010051(#)]`
-/

namespace A107923.P12329236939080658628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A107923.P12329236939080658628

/-! ## A107923.P14895512904902049655

`filter[A107919(n+1), A080339(#)]`
-/

namespace A107923.P14895512904902049655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A107923.P14895512904902049655

/-! ## A107923.P8414929827893495204

`filter[A107919(n+1), A080545(#)]`
-/

namespace A107923.P8414929827893495204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A107923.P8414929827893495204

/-! ## A107923.P15072905620856516624

`filter[A107919(n+1), A171387(#)]`
-/

namespace A107923.P15072905620856516624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A107923.P15072905620856516624

/-!
# A107924: Even numbers n such that n^2 is an arithmetic number.

The programs for A107924, there is no canonical definition to state claims against.
-/

/-! ## A107924.P13228257703455912912

`∩[A353062(n+1), A008590(n)]`
-/

namespace A107924.P13228257703455912912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008590 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107924.P13228257703455912912

/-! ## A107924.P4606027373433840949

`∩[A353062(n+1), A273315(n)]`
-/

namespace A107924.P4606027373433840949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273315 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107924.P4606027373433840949

/-! ## A107924.P14937188532042817764

`∩[A353062(n+1), A273481(n)]`
-/

namespace A107924.P14937188532042817764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273481 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107924.P14937188532042817764

/-! ## A107924.P5505740564650332789

`∩[A323629(n+1), A353062(n+1)]`
-/

namespace A107924.P5505740564650332789
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107924.P5505740564650332789

/-! ## A107924.P15109078696765915601

`filter[A353062(n+2), A121262(#)]`
-/

namespace A107924.P15109078696765915601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A107924.P15109078696765915601

/-! ## A107924.P997737472129813754

`filter[A353062(n+2), A323170(#)]`
-/

namespace A107924.P997737472129813754
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323170 (f1 j).toNat = 1) n)

end

end A107924.P997737472129813754

/-! ## A107924.P18230193799513377595

`∩[A353062(n+1), A273337(n)]`
-/

namespace A107924.P18230193799513377595
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273337 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107924.P18230193799513377595

/-! ## A107924.P15455960791834510128

`∩[A353062(n+1), A273448(n)]`
-/

namespace A107924.P15455960791834510128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273448 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107924.P15455960791834510128

/-! ## A107924.P8509684736530025821

`∩[A353062(n+1), A273769(n)]`
-/

namespace A107924.P8509684736530025821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273769 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107924.P8509684736530025821

/-! ## A107924.P15052358794865524653

`∩[A353062(n+1), A273791(n)]`
-/

namespace A107924.P15052358794865524653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273791 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107924.P15052358794865524653

/-! ## A107924.P2176251891954974480

`∩[A353062(n+1), A273782(n)]`
-/

namespace A107924.P2176251891954974480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273782 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107924.P2176251891954974480

/-! ## A107924.P11043342655330785284

`∩[A353062(n+1), A273850(n)]`
-/

namespace A107924.P11043342655330785284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353062 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273850 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107924.P11043342655330785284

/-!
# A107925: Odd numbers k such that k^2 is an arithmetic number.

The programs for A107925, there is no canonical definition to state claims against.
-/

/-! ## A107925.P13638464540290021380

`record[A000265(sqrt(A277793(n+1)))]`
-/

namespace A107925.P13638464540290021380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.roundAway (Real.sqrt (A277793 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107925.P13638464540290021380

/-! ## A107925.P2313541702305664751

`record[A093411(sqrt(A277793(n+1)))]`
-/

namespace A107925.P2313541702305664751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093411 (SequenceMachineLib.roundAway (Real.sqrt (A277793 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107925.P2313541702305664751

/-! ## A107925.P14275197906962151862

`record[A328478(sqrt(A277793(n+1)))]`
-/

namespace A107925.P14275197906962151862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328478 (SequenceMachineLib.roundAway (Real.sqrt (A277793 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107925.P14275197906962151862

/-! ## A107925.P1569867603597757353

`record[A026741(sqrt(A277793(n+1)))]`
-/

namespace A107925.P1569867603597757353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (SequenceMachineLib.roundAway (Real.sqrt (A277793 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107925.P1569867603597757353

/-! ## A107925.P4051848132165200184

`record[A029579(sqrt(A277793(n+1)))]`
-/

namespace A107925.P4051848132165200184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 (SequenceMachineLib.roundAway (Real.sqrt (A277793 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107925.P4051848132165200184

/-!
# A107926: The least number k such that there are primes p and q with p - q = 2*n, p + q = k, and p the least such prime >= k/2.

The programs for A107926, there is no canonical definition to state claims against.
-/

/-! ## A107926.P13729692326174905748

`2*A103147(n)`
-/

namespace A107926.P13729692326174905748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A103147 n

end

end A107926.P13729692326174905748

/-! ## A107926.P11679660269487587600

`2*(A155766(n)+n)`
-/

namespace A107926.P11679660269487587600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155766 n + (n : ℤ))

end

end A107926.P11679660269487587600

/-! ## A107926.P18107008634330217541

`2*(A155767(n)-n)`
-/

namespace A107926.P18107008634330217541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A155767 n - (n : ℤ))

end

end A107926.P18107008634330217541

/-! ## A107926.P4096298456587682988

`A155767(n)+A155766(n)`
-/

namespace A107926.P4096298456587682988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155767 n + A155766 n

end

end A107926.P4096298456587682988

/-! ## A107926.P1616054916685197003

`A103147(n)+A155766(n)+n`
-/

namespace A107926.P1616054916685197003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103147 n + (A155766 n + (n : ℤ))

end

end A107926.P1616054916685197003

/-! ## A107926.P6290958093739500610

`A103147(n)+A155767(n)-n`
-/

namespace A107926.P6290958093739500610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103147 n + (A155767 n - (n : ℤ))

end

end A107926.P6290958093739500610

/-! ## A107926.P13221723859308950300

`A155766(n)+A155766(n)+record[A014681(n)]`
-/

namespace A107926.P13221723859308950300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155766 n + (A155766 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A107926.P13221723859308950300

/-! ## A107926.P1049306392109163836

`A103147(n)+A103147(n%A001704(n+1))`
-/

namespace A107926.P1049306392109163836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103147 n + A103147 (Int.tmod (n : ℤ) (A001704 (n + 1))).toNat

end

end A107926.P1049306392109163836

/-! ## A107926.P8115495938592517962

`A103147(n)-A103147(n)/A008683(A141852(n+1))`
-/

namespace A107926.P8115495938592517962
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A103147 n : ℚ) - (A103147 n : ℚ) / (A008683 (A141852 (n + 1)).toNat : ℚ)

end

end A107926.P8115495938592517962

/-! ## A107926.P10217504915048469027

`A004277(A103147(n))`
-/

namespace A107926.P10217504915048469027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A103147 n).toNat

end

end A107926.P10217504915048469027

/-!
# A107928: a(n) is the numerator of harmonic mean of a(n-1) and a(n-2).

The programs for A107928, there is no canonical definition to state claims against.
-/

/-! ## A107928.P14694690525776983205

`lcm(a((n+2)%3), A000079(n))` with `a(0)=2, a(1)=3`
-/

namespace A107928.P14694690525776983205
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  Int.lcm (a ((n + 2) % 3) : ℤ) (A000079 n)

end

end A107928.P14694690525776983205

/-! ## A107928.P8176652384811278121

`xor(A095121(A117571(n)), A296965(n))`
-/

namespace A107928.P8176652384811278121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A095121 (A117571 n).toNat) (A296965 n)

end

end A107928.P8176652384811278121

/-! ## A107928.P4716771185781162951

`xor(A296965(A117571(n)+1), A296965(n))`
-/

namespace A107928.P4716771185781162951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A296965 (A117571 n + 1).toNat) (A296965 n)

end

end A107928.P4716771185781162951

/-! ## A107928.P3343777858489234664

`A010887(A324003(n+4))*A011782(n)`
-/

namespace A107928.P3343777858489234664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010887 (A324003 (n + 4)).toNat * A011782 n

end

end A107928.P3343777858489234664

/-!
# A107929: Smallest list of integers from 1 to n such that sum of any two adjacent terms is a square.

The programs for A107929, there is no canonical definition to state claims against.
-/

/-! ## A107929.P11310648832679800534

`A033816(∑[n]+1)%16`
-/

namespace A107929.P11310648832679800534
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033816 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) 16

end

end A107929.P11310648832679800534

/-! ## A107929.P12942430683096475719

`(A128862(n+1)+7)%16`
-/

namespace A107929.P12942430683096475719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128862 (n + 1) + 7) 16

end

end A107929.P12942430683096475719

/-! ## A107929.P5860563355516117329

`A005475(∑[2*n]+3)%16`
-/

namespace A107929.P5860563355516117329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005475 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) 16

end

end A107929.P5860563355516117329

/-! ## A107929.P8345910648513369517

`A133263(∑[2*n]+3)%16`
-/

namespace A107929.P8345910648513369517
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A133263 (∑ j ∈ Finset.range (n + 1), f1 j + 3)) 16

end

end A107929.P8345910648513369517

/-! ## A107929.P13602361259470739970

`A056000(∑[2*n]+7)%16`
-/

namespace A107929.P13602361259470739970
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056000 (∑ j ∈ Finset.range (n + 1), f1 j + 7)) 16

end

end A107929.P13602361259470739970

/-!
# A107931: Numbers n such that n and n-th prime have only one common digit = 0.

The programs for A107931, there is no canonical definition to state claims against.
-/

/-! ## A107931.P11662770294822911022

`eq[0, A081229(A028310(n))]`
-/

namespace A107931.P11662770294822911022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081229 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107931.P11662770294822911022

/-! ## A107931.P10518307766695090228

`A011760(eq[A000007(n), A081229(n+1)])`
-/

namespace A107931.P10518307766695090228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011760 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A107931.P10518307766695090228

/-! ## A107931.P14385510937562633144

`eq[0, A081229(A233583(n+1))]`
-/

namespace A107931.P14385510937562633144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081229 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107931.P14385510937562633144

/-!
# A107932: Numbers n such that n and n-th prime have only one common digit = 1.

The programs for A107932, there is no canonical definition to state claims against.
-/

/-! ## A107932.P15481121456826369756

`eq[A081227(n+1), A081229(n+1)]+1`
-/

namespace A107932.P15481121456826369756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081229 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A107932.P15481121456826369756

/-! ## A107932.P13857321998643938236

`A326178(eq[A081227(n+1), A081229(n+1)])`
-/

namespace A107932.P13857321998643938236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081227 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326178 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A107932.P13857321998643938236

/-!
# A107941: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)^2*(n+5)(3n^2 + 13n + 15)/43200.

The programs for A107941, the canonical program `A107941.P1134882377618123010` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107941 has offset 0).

The definition of A107941 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107941.P11558129884047573035

`∑[A107967(n)]`
-/

namespace A107941.P11558129884047573035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107941.P11558129884047573035

namespace A107941

/-- `∑[A107967(n)]` -/
def P11558129884047573035.Spec : Prop :=
  ∀ n, P11558129884047573035.a n = A107941 n

end A107941

/-! ## A107941.P5171557766549211011

`∑[2*A107966(n)-A107942(n)]`
-/

namespace A107941.P5171557766549211011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107966 n - A107942 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107941.P5171557766549211011

namespace A107941

/-- `∑[2*A107966(n)-A107942(n)]` -/
def P5171557766549211011.Spec : Prop :=
  ∀ n, P5171557766549211011.a n = A107941 n

end A107941

/-! ## A107941.P1134882377618123010

`∑[(n+2)*A108680(n)-A107968(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A107941

/-- `∑[(n+2)*A108680(n)-A107968(n)]` -/
def P1134882377618123010.Spec : Prop :=
  ∀ n, P1134882377618123010.a n = A107941 n

theorem P1134882377618123010.correct : P1134882377618123010.Spec := by
  intro n
  simp only [A107941]

end A107941

/-! ## A107941.P18182032118650107264

`∑[∑[A000292(n+1)]/(n+1)*A213547(n+1)]`
-/

namespace A107941.P18182032118650107264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (n + 1 : ℚ) * (A213547 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107941.P18182032118650107264

namespace A107941

/-- `∑[∑[A000292(n+1)]/(n+1)*A213547(n+1)]` -/
def P18182032118650107264.Spec : Prop :=
  ∀ n, P18182032118650107264.a n = (A107941 n : ℚ)

end A107941

/-! ## A107941.P17705847938153273692

`A107942(n)+A107965(n)-A107916(n)`
-/

namespace A107941.P17705847938153273692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107942 n + (A107965 n - A107916 n)

end

end A107941.P17705847938153273692

namespace A107941

/-- `A107942(n)+A107965(n)-A107916(n)` -/
def P17705847938153273692.Spec : Prop :=
  ∀ n, P17705847938153273692.a n = A107941 n

end A107941

/-! ## A107941.P16768153736023646162

`∑[A107966(n)+A047819(n)]-A047819(n)`
-/

namespace A107941.P16768153736023646162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107966 n + A047819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A047819 n

end

end A107941.P16768153736023646162

namespace A107941

/-- `∑[A107966(n)+A047819(n)]-A047819(n)` -/
def P16768153736023646162.Spec : Prop :=
  ∀ n, P16768153736023646162.a n = A107941 n

end A107941

/-! ## A107941.P11272070174925543100

`∑[A047819(n)-(A107891(n)-A107966(n))]`
-/

namespace A107941.P11272070174925543100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047819 n - (A107891 n - A107966 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107941.P11272070174925543100

namespace A107941

/-- `∑[A047819(n)-(A107891(n)-A107966(n))]` -/
def P11272070174925543100.Spec : Prop :=
  ∀ n, P11272070174925543100.a n = A107941 n

end A107941

/-! ## A107941.P3650939023070942760

`∑[A213547(n+1)/A040977(n)*A047819(n)]`
-/

namespace A107941.P3650939023070942760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213547 (n + 1) : ℚ) / (A040977 n : ℚ) * (A047819 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107941.P3650939023070942760

namespace A107941

/-- `∑[A213547(n+1)/A040977(n)*A047819(n)]` -/
def P3650939023070942760.Spec : Prop :=
  ∀ n, P3650939023070942760.a n = (A107941 n : ℚ)

end A107941

/-!
# A107942: a(n) = (n+1)(n+2)^3*(n+3)^3*(n+4)(2n+5)/4320.

The programs for A107942, the canonical program `A107942.P11863838632754258616` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107942 has offset 0).

The definition of A107942 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107942.P4854631988831261597

`∑[(n/2+1)*A114239(n)]`
-/

namespace A107942.P4854631988831261597
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A114239 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107942.P4854631988831261597

namespace A107942

/-- `∑[(n/2+1)*A114239(n)]` -/
def P4854631988831261597.Spec : Prop :=
  ∀ n, P4854631988831261597.a n = (A107942 n : ℚ)

end A107942

/-! ## A107942.P11863838632754258616

`2*A107966(n)-A107967(n)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A107942

/-- `2*A107966(n)-A107967(n)` -/
def P11863838632754258616.Spec : Prop :=
  ∀ n, P11863838632754258616.a n = A107942 n

theorem P11863838632754258616.correct : P11863838632754258616.Spec := by
  intro n
  simp only [A107942]

end A107942

/-! ## A107942.P15795230000152998938

`A114242(n)²/A005585(n+1)`
-/

namespace A107942.P15795230000152998938
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114242 n ^ 2 : ℚ) / (A005585 (n + 1) : ℚ)

end

end A107942.P15795230000152998938

namespace A107942

/-- `A114242(n)²/A005585(n+1)` -/
def P15795230000152998938.Spec : Prop :=
  ∀ n, P15795230000152998938.a n = (A107942 n : ℚ)

end A107942

/-! ## A107942.P5670129720046207675

`A107891(n)+A107966(n)-A047819(n)`
-/

namespace A107942.P5670129720046207675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A107966 n - A047819 n)

end

end A107942.P5670129720046207675

namespace A107942

/-- `A107891(n)+A107966(n)-A047819(n)` -/
def P5670129720046207675.Spec : Prop :=
  ∀ n, P5670129720046207675.a n = A107942 n

end A107942

/-! ## A107942.P3236873226003873018

`A107916(n)+A107941(n)-A107965(n)`
-/

namespace A107942.P3236873226003873018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107916 n + (A107941 n - A107965 n)

end

end A107942.P3236873226003873018

namespace A107942

/-- `A107916(n)+A107941(n)-A107965(n)` -/
def P3236873226003873018.Spec : Prop :=
  ∀ n, P3236873226003873018.a n = A107942 n

end A107942

/-! ## A107942.P1723479647663321515

`∑[∑[A088889(n+2)]]`
-/

namespace A107942.P1723479647663321515
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088889 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107942.P1723479647663321515

namespace A107942

/-- `∑[∑[A088889(n+2)]]` -/
def P1723479647663321515.Spec : Prop :=
  ∀ n, P1723479647663321515.a n = A107942 n

end A107942

/-! ## A107942.P5860120150510974294

`∑[A078876(n+2)]`
-/

namespace A107942.P5860120150510974294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078876 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107942.P5860120150510974294

namespace A107942

/-- `∑[A078876(n+2)]` -/
def P5860120150510974294.Spec : Prop :=
  ∀ n, P5860120150510974294.a n = A107942 n

end A107942

/-!
# A107943: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)^2*(n+5)*(2n+3)/8640.

The programs for A107943, the canonical program `A107943.P11946784365522022534` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107943 has offset 0).

The definition of A107943 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107943.P2785067318919238698

`∑[A107968(n)]`
-/

namespace A107943.P2785067318919238698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107968 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107943.P2785067318919238698

namespace A107943

/-- `∑[A107968(n)]` -/
def P2785067318919238698.Spec : Prop :=
  ∀ n, P2785067318919238698.a n = A107943 n

end A107943

/-! ## A107943.P8197826228822361220

`∑[(n+2)*A107908(n)/2]`
-/

namespace A107943.P8197826228822361220
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 2 : ℤ) * A107908 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107943.P8197826228822361220

namespace A107943

/-- `∑[(n+2)*A107908(n)/2]` -/
def P8197826228822361220.Spec : Prop :=
  ∀ n, P8197826228822361220.a n = (A107943 n : ℚ)

end A107943

/-! ## A107943.P11946784365522022534

`2*A047819(n)-A006857(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A107943

/-- `2*A047819(n)-A006857(n)` -/
def P11946784365522022534.Spec : Prop :=
  ∀ n, P11946784365522022534.a n = A107943 n

theorem P11946784365522022534.correct : P11946784365522022534.Spec := by
  intro n
  simp only [A107943]

end A107943

/-! ## A107943.P1041579585023025379

`(A107959(n)+A107942(n))/2`
-/

namespace A107943.P1041579585023025379
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107959 n + A107942 n : ℚ) / 2

end

end A107943.P1041579585023025379

namespace A107943

/-- `(A107959(n)+A107942(n))/2` -/
def P1041579585023025379.Spec : Prop :=
  ∀ n, P1041579585023025379.a n = (A107943 n : ℚ)

end A107943

/-! ## A107943.P9047405109326984066

`∑[2*A107891(n)-A114242(n)]`
-/

namespace A107943.P9047405109326984066
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107891 n - A114242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107943.P9047405109326984066

namespace A107943

/-- `∑[2*A107891(n)-A114242(n)]` -/
def P9047405109326984066.Spec : Prop :=
  ∀ n, P9047405109326984066.a n = A107943 n

end A107943

/-! ## A107943.P14001246283770659988

`A006857(n)+A107418(n)-A108680(n)`
-/

namespace A107943.P14001246283770659988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 n + (A107418 n - A108680 n)

end

end A107943.P14001246283770659988

namespace A107943

/-- `A006857(n)+A107418(n)-A108680(n)` -/
def P14001246283770659988.Spec : Prop :=
  ∀ n, P14001246283770659988.a n = A107943 n

end A107943

/-! ## A107943.P10163536728671808312

`A047819(n)+A105947(n)-A107916(n)`
-/

namespace A107943.P10163536728671808312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047819 n + (A105947 n - A107916 n)

end

end A107943.P10163536728671808312

namespace A107943

/-- `A047819(n)+A105947(n)-A107916(n)` -/
def P10163536728671808312.Spec : Prop :=
  ∀ n, P10163536728671808312.a n = A107943 n

end A107943

/-! ## A107943.P16014904055821130058

`A000330(n+1)/A000217(n+1)*A006857(n)`
-/

namespace A107943.P16014904055821130058
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000330 (n + 1) : ℚ) / (A000217 (n + 1) : ℚ) * (A006857 n : ℚ)

end

end A107943.P16014904055821130058

namespace A107943

/-- `A000330(n+1)/A000217(n+1)*A006857(n)` -/
def P16014904055821130058.Spec : Prop :=
  ∀ n, P16014904055821130058.a n = (A107943 n : ℚ)

end A107943

/-!
# A107945: G.f. A(x) satisfies: A(x) = x*f(A(x),A(x)^2/x) where f(,) is Ramanujan's theta function; i.e., A(x) = x*Sum_{n=-oo,+oo} A(x)^(n*(n+1)/2) * (A(x)^2/x)^(n*(n-1)/2).

The programs for A107945, there is no canonical definition to state claims against.
-/

/-! ## A107945.P7124063788146328637

`A014330(n)-A341793(A000079(n))`
-/

namespace A107945.P7124063788146328637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014330 n - A341793 ((A000079 n).toNat + 10)

end

end A107945.P7124063788146328637

/-! ## A107945.P17861100021988688369

`A014330(n)-A230386(A322262(n))`
-/

namespace A107945.P17861100021988688369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014330 n - A230386 (A322262 n).toNat

end

end A107945.P17861100021988688369

/-! ## A107945.P12790476943786978396

`A014330(n)-A056649(A124480(n+1))`
-/

namespace A107945.P12790476943786978396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014330 n - A056649 (A124480 (n + 1)).toNat

end

end A107945.P12790476943786978396

/-!
# A107946: Start with S(0)={1}, then S(k+1) equals the concatenation of S(k) with the partial sums of S(k); the limit gives this sequence.

The programs for A107946, the canonical program `A107946.P13683536467666203313` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107946 has offset 1).

The definition of A107946 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107946.P13683536467666203313

`A107947(A065033(A006257(n)))`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107946

/-- `A107947(A065033(A006257(n)))` -/
def P13683536467666203313.Spec : Prop :=
  ∀ n, P13683536467666203313.a n = A107946 (n + 1)

theorem P13683536467666203313.correct : P13683536467666203313.Spec := by
  intro n
  simp only [A107946, Nat.add_sub_cancel]

end A107946

/-! ## A107946.P13015499522681045689

`A000007(n)+Δ[A107947(A028310(n))]`
-/

namespace A107946.P13015499522681045689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A107946.P13015499522681045689

namespace A107946

/-- `A000007(n)+Δ[A107947(A028310(n))]` -/
def P13015499522681045689.Spec : Prop :=
  ∀ n, P13015499522681045689.a n = A107946 (n + 1)

end A107946

/-! ## A107946.P8551208268039272380

`Δ[A107947(A028310(n))-A054977(n)]`
-/

namespace A107946.P8551208268039272380
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 (A028310 n).toNat - A054977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107946.P8551208268039272380

namespace A107946

/-- `Δ[A107947(A028310(n))-A054977(n)]` -/
def P8551208268039272380.Spec : Prop :=
  ∀ n, P8551208268039272380.a n = A107946 (n + 1)

end A107946

/-! ## A107946.P16684797918274256001

`Δ[A107947(A028310(n))%A001780(n)]`
-/

namespace A107946.P16684797918274256001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107947 (A028310 n).toNat) (A001780 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107946.P16684797918274256001

namespace A107946

/-- `Δ[A107947(A028310(n))%A001780(n)]` -/
def P16684797918274256001.Spec : Prop :=
  ∀ n, P16684797918274256001.a n = A107946 (n + 1)

end A107946

/-! ## A107946.P7546683357253600480

`A019590(n+2)+Δ[A107947(A028310(n))]`
-/

namespace A107946.P7546683357253600480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019590 (n + 2) + (f1 (n + 1) - f1 n)

end

end A107946.P7546683357253600480

namespace A107946

/-- `A019590(n+2)+Δ[A107947(A028310(n))]` -/
def P7546683357253600480.Spec : Prop :=
  ∀ n, P7546683357253600480.a n = A107946 (n + 1)

end A107946

/-! ## A107946.P1880755866151440698

`A107947(n+1)+A000007(n)-A107947(A028310(n))`
-/

namespace A107946.P1880755866151440698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 (n + 1) + (A000007 n - A107947 (A028310 n).toNat)

end

end A107946.P1880755866151440698

namespace A107946

/-- `A107947(n+1)+A000007(n)-A107947(A028310(n))` -/
def P1880755866151440698.Spec : Prop :=
  ∀ n, P1880755866151440698.a n = A107946 (n + 1)

end A107946

/-! ## A107946.P9178593061357622336

`A054977(n)*A107947(n+1)-A107947(A028310(n))`
-/

namespace A107946.P9178593061357622336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A107947 (n + 1) - A107947 (A028310 n).toNat

end

end A107946.P9178593061357622336

namespace A107946

/-- `A054977(n)*A107947(n+1)-A107947(A028310(n))` -/
def P9178593061357622336.Spec : Prop :=
  ∀ n, P9178593061357622336.a n = A107946 (n + 1)

end A107946

/-! ## A107946.P12196710545191004829

`A028310(Δ[A107947(A028310(n))])`
-/

namespace A107946.P12196710545191004829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (f1 (n + 1) - f1 n).toNat

end

end A107946.P12196710545191004829

namespace A107946

/-- `A028310(Δ[A107947(A028310(n))])` -/
def P12196710545191004829.Spec : Prop :=
  ∀ n, P12196710545191004829.a n = A107946 (n + 1)

end A107946

/-! ## A107946.P5273577768979909128

`A028310(A107947(n+1)-A107947(A028310(n)))`
-/

namespace A107946.P5273577768979909128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A107947 (n + 1) - A107947 (A028310 n).toNat).toNat

end

end A107946.P5273577768979909128

namespace A107946

/-- `A028310(A107947(n+1)-A107947(A028310(n)))` -/
def P5273577768979909128.Spec : Prop :=
  ∀ n, P5273577768979909128.a n = A107946 (n + 1)

end A107946

/-!
# A107947: Partial sums of A107946.

The programs for A107947, the canonical program `A107947.P8270504018113973656` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107947 has offset 1).

The definition of A107947 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 8192 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107947.P17164816990489860529

`∑[A107946(n+1)]`
-/

namespace A107947.P17164816990489860529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107947.P17164816990489860529

namespace A107947

/-- `∑[A107946(n+1)]` -/
def P17164816990489860529.Spec : Prop :=
  ∀ n, P17164816990489860529.a n = A107947 (n + 1)

end A107947

/-! ## A107947.P3900199963596000099

`a(n-1)+a(A053645(n))` with `a(0)=1`
-/

namespace A107947.P3900199963596000099
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + a (A053645 n).toNat

end

end A107947.P3900199963596000099

namespace A107947

/-- `a(n-1)+a(A053645(n))` -/
def P3900199963596000099.Spec : Prop :=
  ∀ n, (P3900199963596000099.a n : ℤ) = A107947 (n + 1)

end A107947

/-! ## A107947.P8270504018113973656

`a(n-1)+a(n%A053644(n))` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107947

/-- `a(n-1)+a(n%A053644(n))` -/
def P8270504018113973656.Spec : Prop :=
  ∀ n, (P8270504018113973656.a n : ℤ) = A107947 (n + 1)

theorem P8270504018113973656.correct : P8270504018113973656.Spec := by
  intro n
  simp only [A107947, Nat.add_sub_cancel]

end A107947

/-! ## A107947.P3109374183330513471

`record[A107946(n+2)]`
-/

namespace A107947.P3109374183330513471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107947.P3109374183330513471

namespace A107947

/-- `record[A107946(n+2)]` -/
def P3109374183330513471.Spec : Prop :=
  ∀ n, P3109374183330513471.a n = A107947 (n + 1)

end A107947

/-! ## A107947.P3587372395298325755

`A107946(A004760(n+2)+1)`
-/

namespace A107947.P3587372395298325755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (A004760 (n + 2) + 1).toNat

end

end A107947.P3587372395298325755

namespace A107947

/-- `A107946(A004760(n+2)+1)` -/
def P3587372395298325755.Spec : Prop :=
  ∀ n, P3587372395298325755.a n = A107947 (n + 1)

end A107947

/-! ## A107947.P3148985052650647668

`A107946(A004755(n+1))`
-/

namespace A107947.P3148985052650647668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (A004755 (n + 1)).toNat

end

end A107947.P3148985052650647668

namespace A107947

/-- `A107946(A004755(n+1))` -/
def P3148985052650647668.Spec : Prop :=
  ∀ n, P3148985052650647668.a n = A107947 (n + 1)

end A107947

/-! ## A107947.P10988907837955081384

`A107946(A004760(n+3))`
-/

namespace A107947.P10988907837955081384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (A004760 (n + 3)).toNat

end

end A107947.P10988907837955081384

namespace A107947

/-- `A107946(A004760(n+3))` -/
def P10988907837955081384.Spec : Prop :=
  ∀ n, P10988907837955081384.a n = A107947 (n + 1)

end A107947

/-! ## A107947.P2224954840659675915

`A107946(A206332(n+1)+1)`
-/

namespace A107947.P2224954840659675915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (A206332 (n + 1) + 1).toNat

end

end A107947.P2224954840659675915

namespace A107947

/-- `A107946(A206332(n+1)+1)` -/
def P2224954840659675915.Spec : Prop :=
  ∀ n, P2224954840659675915.a n = A107947 (n + 1)

end A107947

/-! ## A107947.P10663238029320586690

`A107946(A206332(n+2))`
-/

namespace A107947.P10663238029320586690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (A206332 (n + 2)).toNat

end

end A107947.P10663238029320586690

namespace A107947

/-- `A107946(A206332(n+2))` -/
def P10663238029320586690.Spec : Prop :=
  ∀ n, P10663238029320586690.a n = A107947 (n + 1)

end A107947

/-! ## A107947.P6783762644225268577

`A107946(A004757(n+1))`
-/

namespace A107947.P6783762644225268577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (A004757 (n + 1)).toNat

end

end A107947.P6783762644225268577

namespace A107947

/-- `A107946(A004757(n+1))` -/
def P6783762644225268577.Spec : Prop :=
  ∀ n, P6783762644225268577.a n = A107947 (n + 1)

end A107947

/-!
# A107948: Terms at positions 2^n of A107946 for n>=0.

The programs for A107948, the canonical program `A107948.P506921335463334465` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107948 has offset 0).

The definition of A107948 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107946, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107948.P506921335463334465

`A107946(2^n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A107948

/-- `A107946(2^n)` -/
def P506921335463334465.Spec : Prop :=
  ∀ n, P506921335463334465.a n = A107948 n

theorem P506921335463334465.correct : P506921335463334465.Spec := by
  intro n
  simp only [A107948]

end A107948

/-! ## A107948.P1923858379094418363

`A107947(ceil(2^(n-1)))`
-/

namespace A107948.P1923858379094418363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat

end

end A107948.P1923858379094418363

namespace A107948

/-- `A107947(ceil(2^(n-1)))` -/
def P1923858379094418363.Spec : Prop :=
  ∀ n, P1923858379094418363.a n = A107948 n

end A107948

/-! ## A107948.P4903083417281322634

`lcm((-1)^n, A107947(A011782(n)))`
-/

namespace A107948.P4903083417281322634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A107947 (A011782 n).toNat)

end

end A107948.P4903083417281322634

namespace A107948

/-- `lcm((-1)^n, A107947(A011782(n)))` -/
def P4903083417281322634.Spec : Prop :=
  ∀ n, (P4903083417281322634.a n : ℤ) = A107948 n

end A107948

/-! ## A107948.P6999280030376664913

`A185255(n)+A107947(A011782(n))`
-/

namespace A107948.P6999280030376664913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185255 n + A107947 (A011782 n).toNat

end

end A107948.P6999280030376664913

namespace A107948

/-- `A185255(n)+A107947(A011782(n))` -/
def P6999280030376664913.Spec : Prop :=
  ∀ n, P6999280030376664913.a n = A107948 n

end A107948

/-! ## A107948.P13702584731844465608

`A107947(A011782(n))^A014676(n)`
-/

namespace A107948.P13702584731844465608
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107947 (A011782 n).toNat : ℚ) ^ (A014676 n : ℤ)

end

end A107948.P13702584731844465608

namespace A107948

/-- `A107947(A011782(n))^A014676(n)` -/
def P13702584731844465608.Spec : Prop :=
  ∀ n, P13702584731844465608.a n = (A107948 n : ℚ)

end A107948

/-!
# A107952: Increasing partial quotients in A107951.

The programs for A107952, there is no canonical definition to state claims against.
-/

/-! ## A107952.P18190184363418183019

`record[A107951(n)]`
-/

namespace A107952.P18190184363418183019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107951 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107952.P18190184363418183019

/-! ## A107952.P9276611115134850873

`A107951(A106643(n))`
-/

namespace A107952.P9276611115134850873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107951 (A106643 n).toNat

end

end A107952.P9276611115134850873

/-!
# A107953: Number of chains in the power set lattice of an (n+3)-element set X_(n+3) of specification n^1 2^1 1, that is, n identical objects of one kind, 2 identical objects of another kind and one other kind. It is the same as the number of fuzzy subsets X_(n+3).

The programs for A107953, the canonical program `A107953.P11831864381445031109` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107953 has offset 0).

The definition of A107953 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107953.P11831864381445031109

`2^(n+1)*(n²/2*(n+13)+21*n+16)-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107953

/-- `2^(n+1)*(n²/2*(n+13)+21*n+16)-1` -/
def P11831864381445031109.Spec : Prop :=
  ∀ n, P11831864381445031109.a n = (A107953 n : ℚ)

end A107953

/-! ## A107953.P2880736394918353487

`Δ[n*A107392(n)]`
-/

namespace A107953.P2880736394918353487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A107392 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107953.P2880736394918353487

namespace A107953

/-- `Δ[n*A107392(n)]` -/
def P2880736394918353487.Spec : Prop :=
  ∀ n, P2880736394918353487.a n = A107953 n

end A107953

/-! ## A107953.P10398418146194161676

`Δ[n*(A100312(n+1)-1)]`
-/

namespace A107953.P10398418146194161676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A100312 (n + 1) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107953.P10398418146194161676

namespace A107953

/-- `Δ[n*(A100312(n+1)-1)]` -/
def P10398418146194161676.Spec : Prop :=
  ∀ n, P10398418146194161676.a n = A107953 n

end A107953

/-! ## A107953.P14472083598726285873

`Δ[n*Δ[n*Δ[A048493(n)]]]`
-/

namespace A107953.P14472083598726285873
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048493 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107953.P14472083598726285873

namespace A107953

/-- `Δ[n*Δ[n*Δ[A048493(n)]]]` -/
def P14472083598726285873.Spec : Prop :=
  ∀ n, P14472083598726285873.a n = A107953 n

end A107953

/-! ## A107953.P16340440972578319415

`Δ[n*Δ[n*∑[A045623(n+1)]]]`
-/

namespace A107953.P16340440972578319415
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107953.P16340440972578319415

namespace A107953

/-- `Δ[n*Δ[n*∑[A045623(n+1)]]]` -/
def P16340440972578319415.Spec : Prop :=
  ∀ n, P16340440972578319415.a n = A107953 n

end A107953

/-!
# A107954: Number of chains in the power set lattice, or the number of fuzzy subsets of an (n+4)-element set X_(n+4) with specification n elements of one kind, 3 elements of another and 1 of yet another kind.

The programs for A107954, the canonical program `A107954.P3318325505383224859` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107954 has offset 0).

The definition of A107954 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107954.P3318325505383224859

`2^n*(n^4+23*n^3+158*n²+370*n+240)/3-1`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107954

/-- `2^n*(n^4+23*n^3+158*n²+370*n+240)/3-1` -/
def P3318325505383224859.Spec : Prop :=
  ∀ n, P3318325505383224859.a n = (A107954 n : ℚ)

end A107954

/-! ## A107954.P4455194599083112224

`A253249(9*A110286(n))`
-/

namespace A107954.P4455194599083112224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253249 (9 * A110286 n).toNat

end

end A107954.P4455194599083112224

namespace A107954

/-- `A253249(9*A110286(n))` -/
def P4455194599083112224.Spec : Prop :=
  ∀ n, P4455194599083112224.a n = A107954 n

end A107954

/-! ## A107954.P9135671075545116241

`A253249(27*A020714(n))`
-/

namespace A107954.P9135671075545116241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253249 (27 * A020714 n).toNat

end

end A107954.P9135671075545116241

namespace A107954

/-- `A253249(27*A020714(n))` -/
def P9135671075545116241.Spec : Prop :=
  ∀ n, P9135671075545116241.a n = A107954 n

end A107954

/-! ## A107954.P14821527126915204865

`A253249(A005010(n+4)-A005010(n))`
-/

namespace A107954.P14821527126915204865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253249 (A005010 (n + 4) - A005010 n).toNat

end

end A107954.P14821527126915204865

namespace A107954

/-- `A253249(A005010(n+4)-A005010(n))` -/
def P14821527126915204865.Spec : Prop :=
  ∀ n, P14821527126915204865.a n = A107954 n

end A107954

/-!
# A107955: Number of chains in the power set lattice or the number of fuzzy subsets of an (n+5)-element set X_(n+5) with specification n elements of one kind, 4 elements of another and 1 of yet another kind.

The programs for A107955, there is no canonical definition to state claims against.
-/

/-! ## A107955.P8596693777395690801

`A253249(80*3^n)`
-/

namespace A107955.P8596693777395690801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253249 (80 * 3 ^ n)

end

end A107955.P8596693777395690801

/-!
# A107956: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)(5n^2 + 21n + 20)/2880.

The programs for A107956, the canonical program `A107956.P15713167515399959811` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107956 has offset 0).

The definition of A107956 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107956.P15713167515399959811

`∑[A107969(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107956

/-- `∑[A107969(n)]` -/
def P15713167515399959811.Spec : Prop :=
  ∀ n, P15713167515399959811.a n = A107956 n

theorem P15713167515399959811.correct : P15713167515399959811.Spec := by
  intro n
  simp only [A107956]

end A107956

/-! ## A107956.P15605858395393638451

`2*A107891(n)-A006857(n)`
-/

namespace A107956.P15605858395393638451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107891 n - A006857 n

end

end A107956.P15605858395393638451

namespace A107956

/-- `2*A107891(n)-A006857(n)` -/
def P15605858395393638451.Spec : Prop :=
  ∀ n, P15605858395393638451.a n = A107956 n

end A107956

/-! ## A107956.P230093457842905127

`(A107968(n)+A107959(n))/2`
-/

namespace A107956.P230093457842905127
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107968 n + A107959 n : ℚ) / 2

end

end A107956.P230093457842905127

namespace A107956

/-- `(A107968(n)+A107959(n))/2` -/
def P230093457842905127.Spec : Prop :=
  ∀ n, P230093457842905127.a n = (A107956 n : ℚ)

end A107956

/-! ## A107956.P16779171823794689509

`2*A107891(n)-∑[A114242(n)]`
-/

namespace A107956.P16779171823794689509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107891 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107956.P16779171823794689509

namespace A107956

/-- `2*A107891(n)-∑[A114242(n)]` -/
def P16779171823794689509.Spec : Prop :=
  ∀ n, P16779171823794689509.a n = A107956 n

end A107956

/-! ## A107956.P16331402912387816494

`∑[2*A114239(n)-A114242(n)]`
-/

namespace A107956.P16331402912387816494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114239 n - A114242 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107956.P16331402912387816494

namespace A107956

/-- `∑[2*A114239(n)-A114242(n)]` -/
def P16331402912387816494.Spec : Prop :=
  ∀ n, P16331402912387816494.a n = A107956 n

end A107956

/-! ## A107956.P6927288886428392368

`A107891(n)+A107959(n)-A108680(n)`
-/

namespace A107956.P6927288886428392368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A107959 n - A108680 n)

end

end A107956.P6927288886428392368

namespace A107956

/-- `A107891(n)+A107959(n)-A108680(n)` -/
def P6927288886428392368.Spec : Prop :=
  ∀ n, P6927288886428392368.a n = A107956 n

end A107956

/-! ## A107956.P13599046861291678229

`A107968(n)+A108680(n)-A107891(n)`
-/

namespace A107956.P13599046861291678229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107968 n + (A108680 n - A107891 n)

end

end A107956.P13599046861291678229

namespace A107956

/-- `A107968(n)+A108680(n)-A107891(n)` -/
def P13599046861291678229.Spec : Prop :=
  ∀ n, P13599046861291678229.a n = A107956 n

end A107956

/-!
# A107957: Partial sums of A107947.

The programs for A107957, there is no canonical definition to state claims against.
-/

/-! ## A107957.P11250847202871764345

`∑[A107947(n+1)]`
-/

namespace A107957.P11250847202871764345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107957.P11250847202871764345

/-! ## A107957.P1967384510556671026

`∑[∑[A107946(n+1)]]`
-/

namespace A107957.P1967384510556671026
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107957.P1967384510556671026

/-! ## A107957.P15246527187811377230

`∑[record[A107946(1-(n-2*n))]]`
-/

namespace A107957.P15246527187811377230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (1 - ((n : ℤ) - (2 * n : ℤ))).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107957.P15246527187811377230

/-! ## A107957.P900534208779319665

`∑[a(n-1)+a(A053645(n))]` with `a(0)=1`
-/

namespace A107957.P900534208779319665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) + f1 (A053645 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107957.P900534208779319665

/-! ## A107957.P4499733875573554247

`∑[A107946(lt[n, 2*and(n, 2*n)])]`
-/

namespace A107957.P4499733875573554247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.land n (2 * n)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107946 (SequenceMachineLib.nth (fun j => f2 j < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107957.P4499733875573554247

/-!
# A107958: a(n) = term at position 2^n in A107957.

The programs for A107958, the canonical program `A107958.P8038566449556300179` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107958 has offset 0).

The definition of A107958 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A107947, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107958.P8038566449556300179

`A107947(2^(n+1)-1)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107958

/-- `A107947(2^(n+1)-1)` -/
def P8038566449556300179.Spec : Prop :=
  ∀ n, P8038566449556300179.a n = A107958 n

theorem P8038566449556300179.correct : P8038566449556300179.Spec := by
  intro n
  simp only [A107958]

end A107958

/-! ## A107958.P9231754113370284977

`Δ[A107948(n+1)]`
-/

namespace A107958.P9231754113370284977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107958.P9231754113370284977

namespace A107958

/-- `Δ[A107948(n+1)]` -/
def P9231754113370284977.Spec : Prop :=
  ∀ n, P9231754113370284977.a n = A107958 n

end A107958

/-! ## A107958.P17184966646953374008

`Δ[A107947(2^n)]`
-/

namespace A107958.P17184966646953374008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107947 (2 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107958.P17184966646953374008

namespace A107958

/-- `Δ[A107947(2^n)]` -/
def P17184966646953374008.Spec : Prop :=
  ∀ n, P17184966646953374008.a n = A107958 n

end A107958

/-! ## A107958.P7995931921231123304

`Δ[record[A107948(∑[(-1)^(n%3)])]]`
-/

namespace A107958.P7995931921231123304
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (-1) ^ (n % 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107948 (∑ j ∈ Finset.range (n + 1), f3 j).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107958.P7995931921231123304

namespace A107958

/-- `Δ[record[A107948(∑[(-1)^(n%3)])]]` -/
def P7995931921231123304.Spec : Prop :=
  ∀ n, P7995931921231123304.a n = A107958 n

end A107958

/-! ## A107958.P14557646691117603976

`Δ[record[A107948(n-2*floor(n/10))]]`
-/

namespace A107958.P14557646691117603976
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107948 ((n : ℤ) - 2 * ⌊(n : ℚ) / 10⌋).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A107958.P14557646691117603976

namespace A107958

/-- `Δ[record[A107948(n-2*floor(n/10))]]` -/
def P14557646691117603976.Spec : Prop :=
  ∀ n, P14557646691117603976.a n = A107958 n

end A107958

/-!
# A107959: a(n) = (n+1)*(n+2)^2*(n+3)^2*(n+4)*(n^2 + 5*n + 5)/720.

The programs for A107959, the canonical program `A107959.P13522799043123851570` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107959 has offset 0).

The definition of A107959 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107959.P6132382487122724533

`∑[∑[∑[n+1]²]]/(n+1)*∑[∑[n+1]]`
-/

namespace A107959.P6132382487122724533
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f3 j) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f4 j : ℕ) : ℚ)

end

end A107959.P6132382487122724533

namespace A107959

/-- `∑[∑[∑[n+1]²]]/(n+1)*∑[∑[n+1]]` -/
def P6132382487122724533.Spec : Prop :=
  ∀ n, P6132382487122724533.a n = (A107959 n : ℚ)

end A107959

/-! ## A107959.P13522799043123851570

`∑[A107970(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A107959

/-- `∑[A107970(n)]` -/
def P13522799043123851570.Spec : Prop :=
  ∀ n, P13522799043123851570.a n = A107959 n

theorem P13522799043123851570.correct : P13522799043123851570.Spec := by
  intro n
  simp only [A107959]

end A107959

/-! ## A107959.P75875950069722064

`2*A107956(n)-A107968(n)`
-/

namespace A107959.P75875950069722064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107956 n - A107968 n

end

end A107959.P75875950069722064

namespace A107959

/-- `2*A107956(n)-A107968(n)` -/
def P75875950069722064.Spec : Prop :=
  ∀ n, P75875950069722064.a n = A107959 n

end A107959

/-! ## A107959.P8585082109421313187

`2*A107968(n)-A108645(n)`
-/

namespace A107959.P8585082109421313187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107968 n - A108645 n

end

end A107959.P8585082109421313187

namespace A107959

/-- `2*A107968(n)-A108645(n)` -/
def P8585082109421313187.Spec : Prop :=
  ∀ n, P8585082109421313187.a n = A107959 n

end A107959

/-! ## A107959.P7843907891957905099

`A107891(n)+A108680(n)-A006857(n)`
-/

namespace A107959.P7843907891957905099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A108680 n - A006857 n)

end

end A107959.P7843907891957905099

namespace A107959

/-- `A107891(n)+A108680(n)-A006857(n)` -/
def P7843907891957905099.Spec : Prop :=
  ∀ n, P7843907891957905099.a n = A107959 n

end A107959

/-! ## A107959.P15683796146956099081

`A107956(n)+A108680(n)-A107891(n)`
-/

namespace A107959.P15683796146956099081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107956 n + (A108680 n - A107891 n)

end

end A107959.P15683796146956099081

namespace A107959

/-- `A107956(n)+A108680(n)-A107891(n)` -/
def P15683796146956099081.Spec : Prop :=
  ∀ n, P15683796146956099081.a n = A107959 n

end A107959

/-! ## A107959.P184307320675974493

`A107908(n)+A107968(n)-A108680(n)`
-/

namespace A107959.P184307320675974493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107908 n + (A107968 n - A108680 n)

end

end A107959.P184307320675974493

namespace A107959

/-- `A107908(n)+A107968(n)-A108680(n)` -/
def P184307320675974493.Spec : Prop :=
  ∀ n, P184307320675974493.a n = A107959 n

end A107959

/-! ## A107959.P18141710192780468848

`∑[A024166(n+1)]*A000292(n+1)/(n+1)`
-/

namespace A107959.P18141710192780468848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024166 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) * A000292 (n + 1) : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A107959.P18141710192780468848

namespace A107959

/-- `∑[A024166(n+1)]*A000292(n+1)/(n+1)` -/
def P18141710192780468848.Spec : Prop :=
  ∀ n, P18141710192780468848.a n = (A107959 n : ℚ)

end A107959

/-!
# A107960: Numbers n such that 11*n - 1 is prime.

The programs for A107960, the canonical program `A107960.P3984212502500301092` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107960 has offset 1).

The definition of A107960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107960.P3984212502500301092

`ceil(A141857(n+1)/11)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107960

/-- `ceil(A141857(n+1)/11)` -/
def P3984212502500301092.Spec : Prop :=
  ∀ n, P3984212502500301092.a n = A107960 (n + 1)

theorem P3984212502500301092.correct : P3984212502500301092.Spec := by
  intro n
  simp only [A107960, Nat.add_sub_cancel]

end A107960

/-! ## A107960.P8218025285805653290

`A000027(floor(A141857(n+1)/11)+1)`
-/

namespace A107960.P8218025285805653290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (⌊(A141857 (n + 1) : ℚ) / 11⌋ + 1).toNat

end

end A107960.P8218025285805653290

namespace A107960

/-- `A000027(floor(A141857(n+1)/11)+1)` -/
def P8218025285805653290.Spec : Prop :=
  ∀ n, P8218025285805653290.a n = A107960 (n + 1)

end A107960

/-! ## A107960.P14289921866509741184

`round(p?[a(n-1)+11]/11)` with `a(0)=10`
-/

namespace A107960.P14289921866509741184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11)

end

end A107960.P14289921866509741184

namespace A107960

/-- `round(p?[a(n-1)+11]/11)` -/
def P14289921866509741184.Spec : Prop :=
  ∀ n, P14289921866509741184.a n = A107960 (n + 1)

end A107960

/-! ## A107960.P2803595356717938539

`ceil(p?[a(n-1)+11]/11)` with `a(0)=32`
-/

namespace A107960.P2803595356717938539
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [32] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌉

end

end A107960.P2803595356717938539

namespace A107960

/-- `ceil(p?[a(n-1)+11]/11)` -/
def P2803595356717938539.Spec : Prop :=
  ∀ n, P2803595356717938539.a n = A107960 (n + 1)

end A107960

/-! ## A107960.P7567123913800541421

`lt[∑{e}[11*n+10, #], 2]+1`
-/

namespace A107960.P7567123913800541421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11 * n + 10

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f3 j) n + 1

end

end A107960.P7567123913800541421

namespace A107960

/-- `lt[∑{e}[11*n+10, #], 2]+1` -/
def P7567123913800541421.Spec : Prop :=
  ∀ n, (P7567123913800541421.a n : ℤ) = A107960 (n + 1)

end A107960

/-! ## A107960.P10875764419229485064

`1-A001489(floor(A141857(n+1)/11))`
-/

namespace A107960.P10875764419229485064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A001489 ⌊(A141857 (n + 1) : ℚ) / 11⌋.toNat

end

end A107960.P10875764419229485064

namespace A107960

/-- `1-A001489(floor(A141857(n+1)/11))` -/
def P10875764419229485064.Spec : Prop :=
  ∀ n, P10875764419229485064.a n = A107960 (n + 1)

end A107960

/-! ## A107960.P13733179967057080014

`2*A003602(floor(A141857(n+1)/11))`
-/

namespace A107960.P13733179967057080014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003602 ⌊(A141857 (n + 1) : ℚ) / 11⌋.toNat

end

end A107960.P13733179967057080014

namespace A107960

/-- `2*A003602(floor(A141857(n+1)/11))` -/
def P13733179967057080014.Spec : Prop :=
  ∀ n, P13733179967057080014.a n = A107960 (n + 1)

end A107960

/-! ## A107960.P8186510179015205148

`eq[1, A001222(A017509(n))]+1`
-/

namespace A107960.P8186510179015205148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A017509 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107960.P8186510179015205148

namespace A107960

/-- `eq[1, A001222(A017509(n))]+1` -/
def P8186510179015205148.Spec : Prop :=
  ∀ n, (P8186510179015205148.a n : ℤ) = A107960 (n + 1)

end A107960

/-! ## A107960.P2972324257365722307

`lt[A008864(n+1), A020639(A017509(n))]+1`
-/

namespace A107960.P2972324257365722307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017509 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A107960.P2972324257365722307

namespace A107960

/-- `lt[A008864(n+1), A020639(A017509(n))]+1` -/
def P2972324257365722307.Spec : Prop :=
  ∀ n, (P2972324257365722307.a n : ℤ) = A107960 (n + 1)

end A107960

/-! ## A107960.P221361810441819792

`lt[A018252(n+2), A020639(A017509(n))]+1`
-/

namespace A107960.P221361810441819792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A017509 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A107960.P221361810441819792

namespace A107960

/-- `lt[A018252(n+2), A020639(A017509(n))]+1` -/
def P221361810441819792.Spec : Prop :=
  ∀ n, (P221361810441819792.a n : ℤ) = A107960 (n + 1)

end A107960

/-! ## A107960.P11141743772005672551

`eq[1, A001222(A016969(n)+A016873(n)+3)]+1`
-/

namespace A107960.P11141743772005672551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 n + A016873 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107960.P11141743772005672551

namespace A107960

/-- `eq[1, A001222(A016969(n)+A016873(n)+3)]+1` -/
def P11141743772005672551.Spec : Prop :=
  ∀ n, (P11141743772005672551.a n : ℤ) = A107960 (n + 1)

end A107960

/-! ## A107960.P8516690450576533234

`A008619(2*floor(A141857(n+1)/11))`
-/

namespace A107960.P8516690450576533234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * ⌊(A141857 (n + 1) : ℚ) / 11⌋).toNat

end

end A107960.P8516690450576533234

namespace A107960

/-- `A008619(2*floor(A141857(n+1)/11))` -/
def P8516690450576533234.Spec : Prop :=
  ∀ n, P8516690450576533234.a n = A107960 (n + 1)

end A107960

/-! ## A107960.P722094515942765820

`eq[2, A000005(A005843(A008458(n))-(n+1))]`
-/

namespace A107960.P722094515942765820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A005843 (A008458 n).toNat - (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107960.P722094515942765820

namespace A107960

/-- `eq[2, A000005(A005843(A008458(n))-(n+1))]` -/
def P722094515942765820.Spec : Prop :=
  ∀ n, (P722094515942765820.a n : ℤ) = A107960 (n + 1)

end A107960

/-! ## A107960.P11995199997441356642

`A106612(p?[A017509(n)]+1)`
-/

namespace A107960.P11995199997441356642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 1).toNat

end

end A107960.P11995199997441356642

namespace A107960

/-- `A106612(p?[A017509(n)]+1)` -/
def P11995199997441356642.Spec : Prop :=
  ∀ n, P11995199997441356642.a n = A107960 (n + 1)

end A107960

/-! ## A107960.P12333805719585642862

`A014681(p?[A014681(11*n)])/11`
-/

namespace A107960.P12333805719585642862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (11 * n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A014681 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat : ℚ) / 11

end

end A107960.P12333805719585642862

namespace A107960

/-- `A014681(p?[A014681(11*n)])/11` -/
def P12333805719585642862.Spec : Prop :=
  ∀ n, P12333805719585642862.a n = (A107960 (n + 1) : ℚ)

end A107960

/-! ## A107960.P1667249885522710709

`A106612(A014681(p?[A017509(n)]))`
-/

namespace A107960.P1667249885522710709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A014681 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A107960.P1667249885522710709

namespace A107960

/-- `A106612(A014681(p?[A017509(n)]))` -/
def P1667249885522710709.Spec : Prop :=
  ∀ n, P1667249885522710709.a n = A107960 (n + 1)

end A107960

/-! ## A107960.P18409101701803839460

`A106612(A113646(p?[A017509(n)]))`
-/

namespace A107960.P18409101701803839460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106612 (A113646 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A107960.P18409101701803839460

namespace A107960

/-- `A106612(A113646(p?[A017509(n)]))` -/
def P18409101701803839460.Spec : Prop :=
  ∀ n, P18409101701803839460.a n = A107960 (n + 1)

end A107960

/-! ## A107960.P3036495802911124922

`A008611(A262115(p?[A017509(n)]))`
-/

namespace A107960.P3036495802911124922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017509 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A262115 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat).toNat

end

end A107960.P3036495802911124922

namespace A107960

/-- `A008611(A262115(p?[A017509(n)]))` -/
def P3036495802911124922.Spec : Prop :=
  ∀ n, P3036495802911124922.a n = A107960 (n + 1)

end A107960

/-! ## A107960.P11772298116877320128

`lt[A014963(n+1), A014963(A017509(n))]+1`
-/

namespace A107960.P11772298116877320128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A017509 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A107960.P11772298116877320128

namespace A107960

/-- `lt[A014963(n+1), A014963(A017509(n))]+1` -/
def P11772298116877320128.Spec : Prop :=
  ∀ n, (P11772298116877320128.a n : ℤ) = A107960 (n + 1)

end A107960

/-!
# A107961: Pythagorean semiprimes: products of two Pythagorean primes (A002313).

The programs for A107961, there is no canonical definition to state claims against.
-/

/-! ## A107961.P8161655628119745378

`record[A072436(A001358(n+1))]`
-/

namespace A107961.P8161655628119745378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (A001358 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107961.P8161655628119745378

/-! ## A107961.P12818775384178091824

`record[A179312(A000404(n+3))]`
-/

namespace A107961.P12818775384178091824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A000404 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107961.P12818775384178091824

/-! ## A107961.P12152045758384334494

`filter[A057129(n+1), A064911(#)]`
-/

namespace A107961.P12152045758384334494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A107961.P12152045758384334494

/-! ## A107961.P4625067274898905913

`filter[A072437(n+1), A064911(#)]`
-/

namespace A107961.P4625067274898905913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A107961.P4625067274898905913

/-! ## A107961.P11265141539996935063

`eq[A001842(n)+2, A105700(n)]`
-/

namespace A107961.P11265141539996935063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107961.P11265141539996935063

/-! ## A107961.P1331981727229336409

`eq[A001842(n)+2, A284289(n)]`
-/

namespace A107961.P1331981727229336409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001842 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284289 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107961.P1331981727229336409

/-! ## A107961.P14176133965295576721

`record[A072436(sqrt(A074985(n+1)))]`
-/

namespace A107961.P14176133965295576721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (SequenceMachineLib.roundAway (Real.sqrt (A074985 (n + 1) : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107961.P14176133965295576721

/-! ## A107961.P4768991899499786947

`record[A072436(A075818(n+1)/2)]`
-/

namespace A107961.P4768991899499786947
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072436 (SequenceMachineLib.roundAway ((A075818 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107961.P4768991899499786947

/-! ## A107961.P8050827064856379845

`∩[A001358(n+1), A057129(n+1)]`
-/

namespace A107961.P8050827064856379845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057129 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107961.P8050827064856379845

/-! ## A107961.P5638043710930399191

`∩[A001358(n+1), A072437(n+1)]`
-/

namespace A107961.P5638043710930399191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072437 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107961.P5638043710930399191

/-!
# A107962: a(n) = (n+1)*(n+2)^2*(n+3)*(n+4)*(5*n^2 + 18*n + 15)/720.

The programs for A107962, the canonical program `A107962.P7935471928400297137` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107962 has offset 0).

The definition of A107962 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107962.P7935471928400297137

`(n+1)*(n+2)²*(n+3)*(n+4)*(5*n²+18*n+15)/720`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107962

/-- `(n+1)*(n+2)²*(n+3)*(n+4)*(5*n²+18*n+15)/720` -/
def P7935471928400297137.Spec : Prop :=
  ∀ n, P7935471928400297137.a n = (A107962 n : ℚ)

end A107962

/-! ## A107962.P4052248921970221592

`∑[A107971(n)]`
-/

namespace A107962.P4052248921970221592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107971 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107962.P4052248921970221592

namespace A107962

/-- `∑[A107971(n)]` -/
def P4052248921970221592.Spec : Prop :=
  ∀ n, P4052248921970221592.a n = A107962 n

end A107962

/-! ## A107962.P9787560566341175593

`2*A107970(n)-A108646(n)`
-/

namespace A107962.P9787560566341175593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107970 n - A108646 n

end

end A107962.P9787560566341175593

namespace A107962

/-- `2*A107970(n)-A108646(n)` -/
def P9787560566341175593.Spec : Prop :=
  ∀ n, P9787560566341175593.a n = A107962 n

end A107962

/-! ## A107962.P8500676798484231046

`2*A107956(n)-A108670(n)`
-/

namespace A107962.P8500676798484231046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107956 n - A108670 n

end

end A107962.P8500676798484231046

namespace A107962

/-- `2*A107956(n)-A108670(n)` -/
def P8500676798484231046.Spec : Prop :=
  ∀ n, P8500676798484231046.a n = A107962 n

end A107962

/-! ## A107962.P10825360586320794938

`A051923(n)+n*A006542(n+4)`
-/

namespace A107962.P10825360586320794938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051923 n + (n : ℤ) * A006542 (n + 4)

end

end A107962.P10825360586320794938

namespace A107962

/-- `A051923(n)+n*A006542(n+4)` -/
def P10825360586320794938.Spec : Prop :=
  ∀ n, P10825360586320794938.a n = A107962 n

end A107962

/-! ## A107962.P14215901361837025162

`∑[A001249(n)+∑[(n+1)*A001296(n)]]`
-/

namespace A107962.P14215901361837025162
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001296 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107962.P14215901361837025162

namespace A107962

/-- `∑[A001249(n)+∑[(n+1)*A001296(n)]]` -/
def P14215901361837025162.Spec : Prop :=
  ∀ n, P14215901361837025162.a n = A107962 n

end A107962

/-! ## A107962.P5096441641739060116

`A107959(n)+A107968(n)-A108670(n)`
-/

namespace A107962.P5096441641739060116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107959 n + (A107968 n - A108670 n)

end

end A107962.P5096441641739060116

namespace A107962

/-- `A107959(n)+A107968(n)-A108670(n)` -/
def P5096441641739060116.Spec : Prop :=
  ∀ n, P5096441641739060116.a n = A107962 n

end A107962

/-! ## A107962.P7064683606630091483

`A107969(n)+A107970(n)-A108671(n)`
-/

namespace A107962.P7064683606630091483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107969 n + (A107970 n - A108671 n)

end

end A107962.P7064683606630091483

namespace A107962

/-- `A107969(n)+A107970(n)-A108671(n)` -/
def P7064683606630091483.Spec : Prop :=
  ∀ n, P7064683606630091483.a n = A107962 n

end A107962

/-! ## A107962.P12067114966839938225

`A005585(n+1)+A108647(n)-A040977(n)`
-/

namespace A107962.P12067114966839938225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005585 (n + 1) + (A108647 n - A040977 n)

end

end A107962.P12067114966839938225

namespace A107962

/-- `A005585(n+1)+A108647(n)-A040977(n)` -/
def P12067114966839938225.Spec : Prop :=
  ∀ n, P12067114966839938225.a n = A107962 n

end A107962

/-!
# A107963: a(n) = (n+1)*(n+2)*(n+3)*(n+4)*(5*n^2 + 19*n + 15)/360.

The programs for A107963, the canonical program `A107963.P17423164446142603950` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107963 has offset 0).

The definition of A107963 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107963.P17423164446142603950

`(n+1)*(n+2)*(n+3)*(n+4)*(5*n²+19*n+15)/360`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107963

/-- `(n+1)*(n+2)*(n+3)*(n+4)*(5*n²+19*n+15)/360` -/
def P17423164446142603950.Spec : Prop :=
  ∀ n, P17423164446142603950.a n = (A107963 n : ℚ)

end A107963

/-! ## A107963.P7074941649791723294

`∑[C(n+3, 3)*∑[n+1]]`
-/

namespace A107963.P7074941649791723294
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 3) 3 * (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107963.P7074941649791723294

namespace A107963

/-- `∑[C(n+3, 3)*∑[n+1]]` -/
def P7074941649791723294.Spec : Prop :=
  ∀ n, (P7074941649791723294.a n : ℤ) = A107963 n

end A107963

/-! ## A107963.P3795056221870460500

`a(n-1)+(n+1)*∑[∑[(n+1)²]]` with `a(0)=1`
-/

namespace A107963.P3795056221870460500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107963.P3795056221870460500

namespace A107963

/-- `a(n-1)+(n+1)*∑[∑[(n+1)²]]` -/
def P3795056221870460500.Spec : Prop :=
  ∀ n, (P3795056221870460500.a n : ℤ) = A107963 n

end A107963

/-! ## A107963.P16490401172741954821

`A071953(n+3)/4`
-/

namespace A107963.P16490401172741954821
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071953 (n + 3) : ℚ) / 4

end

end A107963.P16490401172741954821

namespace A107963

/-- `A071953(n+3)/4` -/
def P16490401172741954821.Spec : Prop :=
  ∀ n, P16490401172741954821.a n = (A107963 n : ℚ)

end A107963

/-! ## A107963.P17960661828479993209

`∑[∑[A117066(n+1)]]`
-/

namespace A107963.P17960661828479993209
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117066 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107963.P17960661828479993209

namespace A107963

/-- `∑[∑[A117066(n+1)]]` -/
def P17960661828479993209.Spec : Prop :=
  ∀ n, P17960661828479993209.a n = A107963 n

end A107963

/-! ## A107963.P16289155594158551227

`∑[A165187(n+1)/(n+1)]`
-/

namespace A107963.P16289155594158551227
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A165187 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107963.P16289155594158551227

namespace A107963

/-- `∑[A165187(n+1)/(n+1)]` -/
def P16289155594158551227.Spec : Prop :=
  ∀ n, P16289155594158551227.a n = (A107963 n : ℚ)

end A107963

/-! ## A107963.P7413043809421474839

`A001249(n)-∑[A004282(n)]`
-/

namespace A107963.P7413043809421474839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004282 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107963.P7413043809421474839

namespace A107963

/-- `A001249(n)-∑[A004282(n)]` -/
def P7413043809421474839.Spec : Prop :=
  ∀ n, P7413043809421474839.a n = A107963 n

end A107963

/-! ## A107963.P10197539586837282996

`2*A006542(n+4)-A005585(n+1)`
-/

namespace A107963.P10197539586837282996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A006542 (n + 4) - A005585 (n + 1)

end

end A107963.P10197539586837282996

namespace A107963

/-- `2*A006542(n+4)-A005585(n+1)` -/
def P10197539586837282996.Spec : Prop :=
  ∀ n, P10197539586837282996.a n = A107963 n

end A107963

/-! ## A107963.P12389080202998302568

`∑[A004302(n+1)]`
-/

namespace A107963.P12389080202998302568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107963.P12389080202998302568

namespace A107963

/-- `∑[A004302(n+1)]` -/
def P12389080202998302568.Spec : Prop :=
  ∀ n, P12389080202998302568.a n = A107963 n

end A107963

/-! ## A107963.P8053688322242450508

`∑[A192832(n+2)/4]/12`
-/

namespace A107963.P8053688322242450508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A192832 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 12

end

end A107963.P8053688322242450508

namespace A107963

/-- `∑[A192832(n+2)/4]/12` -/
def P8053688322242450508.Spec : Prop :=
  ∀ n, P8053688322242450508.a n = (A107963 n : ℚ)

end A107963

/-! ## A107963.P4547346326969001991

`A034264(n+1)+A034264(n+1)-A034263(n)`
-/

namespace A107963.P4547346326969001991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034264 (n + 1) + (A034264 (n + 1) - A034263 n)

end

end A107963.P4547346326969001991

namespace A107963

/-- `A034264(n+1)+A034264(n+1)-A034263(n)` -/
def P4547346326969001991.Spec : Prop :=
  ∀ n, P4547346326969001991.a n = A107963 n

end A107963

/-! ## A107963.P3982726684630307890

`A382225(A167614(n+2))`
-/

namespace A107963.P3982726684630307890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382225 (A167614 (n + 2)).toNat

end

end A107963.P3982726684630307890

namespace A107963

/-- `A382225(A167614(n+2))` -/
def P3982726684630307890.Spec : Prop :=
  ∀ n, P3982726684630307890.a n = A107963 n

end A107963

/-! ## A107963.P13520251920756761309

`∑[A124848(∑[n+3])]`
-/

namespace A107963.P13520251920756761309
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124848 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107963.P13520251920756761309

namespace A107963

/-- `∑[A124848(∑[n+3])]` -/
def P13520251920756761309.Spec : Prop :=
  ∀ n, P13520251920756761309.a n = A107963 n

end A107963

/-! ## A107963.P14767545750726195738

`∑[A132813(∑[n+3])]`
-/

namespace A107963.P14767545750726195738
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132813 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107963.P14767545750726195738

namespace A107963

/-- `∑[A132813(∑[n+3])]` -/
def P14767545750726195738.Spec : Prop :=
  ∀ n, P14767545750726195738.a n = A107963 n

end A107963

/-!
# A107964: a(n) = A107712(n) - A002110(n).

The programs for A107964, there is no canonical definition to state claims against.
-/

/-! ## A107964.P18281402561917305509

`A107712(n)-A002110(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A107964.P18281402561917305509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107712 n - A002110 n

end

end A107964.P18281402561917305509

/-! ## A107964.P17706230612789542702

`A107712(n)-A096334(∑[n])`
-/

namespace A107964.P17706230612789542702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107712 n - A096334 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107964.P17706230612789542702

/-! ## A107964.P393960195829713400

`A107712(n)-record[A096334(n)]`
-/

namespace A107964.P393960195829713400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096334 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107712 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107964.P393960195829713400

/-! ## A107964.P1725653241448737993

`A107712(n)-record[A121281(n)]`
-/

namespace A107964.P1725653241448737993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107712 n - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107964.P1725653241448737993

/-! ## A107964.P17431424802587876126

`A093433(n)-2*A002110(n)`
-/

namespace A107964.P17431424802587876126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093433 n - 2 * A002110 n

end

end A107964.P17431424802587876126

/-!
# A107965: a(n) = (n+1)(n+2)^2*(n+3)^2*(n+4)(11n^4 + 110n^3 + 439n^2 + 820n + 600)/86400.

The programs for A107965, the canonical program `A107965.P6077412395707171614` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107965 has offset 0).

The definition of A107965 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107965.P6077412395707171614

`A107916(n)+A107941(n)-A107942(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A107965

/-- `A107916(n)+A107941(n)-A107942(n)` -/
def P6077412395707171614.Spec : Prop :=
  ∀ n, P6077412395707171614.a n = A107965 n

theorem P6077412395707171614.correct : P6077412395707171614.Spec := by
  intro n
  simp only [A107965]

end A107965

/-! ## A107965.P6119934372074075254

`A107916(n)+A107941(n)-∑[(n/2+1)*A114239(n)]`
-/

namespace A107965.P6119934372074075254
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A114239 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107916 n : ℚ) + ((A107941 n : ℚ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107965.P6119934372074075254

namespace A107965

/-- `A107916(n)+A107941(n)-∑[(n/2+1)*A114239(n)]` -/
def P6119934372074075254.Spec : Prop :=
  ∀ n, P6119934372074075254.a n = (A107965 n : ℚ)

end A107965

/-! ## A107965.P730915668412098320

`A107916(n)+A107941(n)-A114242(n)²/A005585(n+1)`
-/

namespace A107965.P730915668412098320
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107916 n : ℚ) + ((A107941 n : ℚ) - (A114242 n ^ 2 : ℚ) / (A005585 (n + 1) : ℚ))

end

end A107965.P730915668412098320

namespace A107965

/-- `A107916(n)+A107941(n)-A114242(n)²/A005585(n+1)` -/
def P730915668412098320.Spec : Prop :=
  ∀ n, P730915668412098320.a n = (A107965 n : ℚ)

end A107965

/-! ## A107965.P9013818665562190745

`A107916(n)+A107941(n)-∑[A078876(n+2)]`
-/

namespace A107965.P9013818665562190745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078876 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107916 n + (A107941 n - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A107965.P9013818665562190745

namespace A107965

/-- `A107916(n)+A107941(n)-∑[A078876(n+2)]` -/
def P9013818665562190745.Spec : Prop :=
  ∀ n, P9013818665562190745.a n = A107965 n

end A107965

/-!
# A107966: a(n) = (n+1)(n+2)^3*(n+3)^2*(n+4)(5n^2 + 23n + 30)/8640.

The programs for A107966, the canonical program `A107966.P11630518422278864542` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107966 has offset 0).

The definition of A107966 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107966.P1584310435189540584

`(A107967(n)+A107942(n))/2`
-/

namespace A107966.P1584310435189540584
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107967 n + A107942 n : ℚ) / 2

end

end A107966.P1584310435189540584

namespace A107966

/-- `(A107967(n)+A107942(n))/2` -/
def P1584310435189540584.Spec : Prop :=
  ∀ n, P1584310435189540584.a n = (A107966 n : ℚ)

end A107966

/-! ## A107966.P9618587504550573702

`A047819(n)+A107942(n)-A107891(n)`
-/

namespace A107966.P9618587504550573702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047819 n + (A107942 n - A107891 n)

end

end A107966.P9618587504550573702

namespace A107966

/-- `A047819(n)+A107942(n)-A107891(n)` -/
def P9618587504550573702.Spec : Prop :=
  ∀ n, P9618587504550573702.a n = A107966 n

end A107966

/-! ## A107966.P16366779707086752252

`A107891(n)+A107967(n)-A047819(n)`
-/

namespace A107966.P16366779707086752252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A107967 n - A047819 n)

end

end A107966.P16366779707086752252

namespace A107966

/-- `A107891(n)+A107967(n)-A047819(n)` -/
def P16366779707086752252.Spec : Prop :=
  ∀ n, P16366779707086752252.a n = A107966 n

end A107966

/-! ## A107966.P13586798430737252029

`(A107942(n)+(n+2)*A108680(n)-A107968(n))/2`
-/

namespace A107966.P13586798430737252029
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A107942 n + ((n + 2 : ℤ) * A108680 n - A107968 n) : ℚ) / 2

end

end A107966.P13586798430737252029

namespace A107966

/-- `(A107942(n)+(n+2)*A108680(n)-A107968(n))/2` -/
def P13586798430737252029.Spec : Prop :=
  ∀ n, P13586798430737252029.a n = (A107966 n : ℚ)

end A107966

/-! ## A107966.P15740960586948198094

`∑[(n/2+1)*A114239(n)]+A047819(n)-A107891(n)`
-/

namespace A107966.P15740960586948198094
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℚ) / 2 + 1) * (A114239 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A047819 n - A107891 n : ℚ)

end

end A107966.P15740960586948198094

namespace A107966

/-- `∑[(n/2+1)*A114239(n)]+A047819(n)-A107891(n)` -/
def P15740960586948198094.Spec : Prop :=
  ∀ n, P15740960586948198094.a n = (A107966 n : ℚ)

end A107966

/-! ## A107966.P11630518422278864542

`(n+2)*A108680(n)-A107968(n)+A107891(n)-A047819(n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A107966

/-- `(n+2)*A108680(n)-A107968(n)+A107891(n)-A047819(n)` -/
def P11630518422278864542.Spec : Prop :=
  ∀ n, P11630518422278864542.a n = A107966 n

theorem P11630518422278864542.correct : P11630518422278864542.Spec := by
  intro n
  simp only [A107966]

end A107966

/-! ## A107966.P3289312111567592934

`∑[A078876(n+2)]+A047819(n)-A107891(n)`
-/

namespace A107966.P3289312111567592934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078876 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (A047819 n - A107891 n)

end

end A107966.P3289312111567592934

namespace A107966

/-- `∑[A078876(n+2)]+A047819(n)-A107891(n)` -/
def P3289312111567592934.Spec : Prop :=
  ∀ n, P3289312111567592934.a n = A107966 n

end A107966

/-!
# A107967: a(n) = (n+1)(n+2)^3*(n+3)^2*(n+4)(n^2 + 4n + 5)/1440.

The programs for A107967, the canonical program `A107967.P4280652455653893188` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107967 has offset 0).

The definition of A107967 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107967.P16505461001693538571

`2*A107966(n)-A107942(n)`
-/

namespace A107967.P16505461001693538571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107966 n - A107942 n

end

end A107967.P16505461001693538571

namespace A107967

/-- `2*A107966(n)-A107942(n)` -/
def P16505461001693538571.Spec : Prop :=
  ∀ n, P16505461001693538571.a n = A107967 n

end A107967

/-! ## A107967.P4280652455653893188

`(n+2)*A108680(n)-A107968(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A107967

/-- `(n+2)*A108680(n)-A107968(n)` -/
def P4280652455653893188.Spec : Prop :=
  ∀ n, P4280652455653893188.a n = A107967 n

theorem P4280652455653893188.correct : P4280652455653893188.Spec := by
  intro n
  simp only [A107967]

end A107967

/-! ## A107967.P13953444711682841916

`∑[A000292(n+1)]/(n+1)*A213547(n+1)`
-/

namespace A107967.P13953444711682841916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) * (A213547 (n + 1) : ℚ)

end

end A107967.P13953444711682841916

namespace A107967

/-- `∑[A000292(n+1)]/(n+1)*A213547(n+1)` -/
def P13953444711682841916.Spec : Prop :=
  ∀ n, P13953444711682841916.a n = (A107967 n : ℚ)

end A107967

/-! ## A107967.P16624427871702142971

`A047819(n)+A107966(n)-A107891(n)`
-/

namespace A107967.P16624427871702142971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047819 n + (A107966 n - A107891 n)

end

end A107967.P16624427871702142971

namespace A107967

/-- `A047819(n)+A107966(n)-A107891(n)` -/
def P16624427871702142971.Spec : Prop :=
  ∀ n, P16624427871702142971.a n = A107967 n

end A107967

/-! ## A107967.P10849826297268397172

`A213547(n+1)/A040977(n)*A047819(n)`
-/

namespace A107967.P10849826297268397172
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213547 (n + 1) : ℚ) / (A040977 n : ℚ) * (A047819 n : ℚ)

end

end A107967.P10849826297268397172

namespace A107967

/-- `A213547(n+1)/A040977(n)*A047819(n)` -/
def P10849826297268397172.Spec : Prop :=
  ∀ n, P10849826297268397172.a n = (A107967 n : ℚ)

end A107967

/-!
# A107968: a(n) = (n+1)*(n+2)^3*(n+3)^2*(n+4)*(3n+5)/1440.

The programs for A107968, the canonical program `A107968.P7358323612675776155` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107968 has offset 0).

The definition of A107968 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107968.P17513638954133394431

`(n+2)/2*A107908(n)`
-/

namespace A107968.P17513638954133394431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / 2 * (A107908 n : ℚ)

end

end A107968.P17513638954133394431

namespace A107968

/-- `(n+2)/2*A107908(n)` -/
def P17513638954133394431.Spec : Prop :=
  ∀ n, P17513638954133394431.a n = (A107968 n : ℚ)

end A107968

/-! ## A107968.P7358323612675776155

`2*A107956(n)-A107959(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107968

/-- `2*A107956(n)-A107959(n)` -/
def P7358323612675776155.Spec : Prop :=
  ∀ n, P7358323612675776155.a n = A107968 n

theorem P7358323612675776155.correct : P7358323612675776155.Spec := by
  intro n
  simp only [A107968]

end A107968

/-! ## A107968.P3624119461093204146

`(A108178(n)+A107956(n))/2`
-/

namespace A107968.P3624119461093204146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108178 n + A107956 n : ℚ) / 2

end

end A107968.P3624119461093204146

namespace A107968

/-- `(A108178(n)+A107956(n))/2` -/
def P3624119461093204146.Spec : Prop :=
  ∀ n, P3624119461093204146.a n = (A107968 n : ℚ)

end A107968

/-! ## A107968.P10190811002877752214

`(A108645(n)+A107959(n))/2`
-/

namespace A107968.P10190811002877752214
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A108645 n + A107959 n : ℚ) / 2

end

end A107968.P10190811002877752214

namespace A107968

/-- `(A108645(n)+A107959(n))/2` -/
def P10190811002877752214.Spec : Prop :=
  ∀ n, P10190811002877752214.a n = (A107968 n : ℚ)

end A107968

/-! ## A107968.P965229215648392179

`2*A107891(n)-A114242(n)`
-/

namespace A107968.P965229215648392179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A107891 n - A114242 n

end

end A107968.P965229215648392179

namespace A107968

/-- `2*A107891(n)-A114242(n)` -/
def P965229215648392179.Spec : Prop :=
  ∀ n, P965229215648392179.a n = A107968 n

end A107968

/-! ## A107968.P9335079564491836665

`∑[2*A114239(n)]-A114242(n)`
-/

namespace A107968.P9335079564491836665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114239 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A114242 n

end

end A107968.P9335079564491836665

namespace A107968

/-- `∑[2*A114239(n)]-A114242(n)` -/
def P9335079564491836665.Spec : Prop :=
  ∀ n, P9335079564491836665.a n = A107968 n

end A107968

/-! ## A107968.P1437910473881247151

`A107891(n)+A107956(n)-A108680(n)`
-/

namespace A107968.P1437910473881247151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n + (A107956 n - A108680 n)

end

end A107968.P1437910473881247151

namespace A107968

/-- `A107891(n)+A107956(n)-A108680(n)` -/
def P1437910473881247151.Spec : Prop :=
  ∀ n, P1437910473881247151.a n = A107968 n

end A107968

/-! ## A107968.P5316137862647621017

`A107959(n)+A108680(n)-A107908(n)`
-/

namespace A107968.P5316137862647621017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107959 n + (A108680 n - A107908 n)

end

end A107968.P5316137862647621017

namespace A107968

/-- `A107959(n)+A108680(n)-A107908(n)` -/
def P5316137862647621017.Spec : Prop :=
  ∀ n, P5316137862647621017.a n = A107968 n

end A107968

/-! ## A107968.P5331878323805774007

`A107959(n)-(A107956(n)-A108178(n))`
-/

namespace A107968.P5331878323805774007
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107959 n - (A107956 n - A108178 n)

end

end A107968.P5331878323805774007

namespace A107968

/-- `A107959(n)-(A107956(n)-A108178(n))` -/
def P5331878323805774007.Spec : Prop :=
  ∀ n, P5331878323805774007.a n = A107968 n

end A107968

/-!
# A107969: a(n) = (n+1)(n+2)^2*(n+3)(2n+3)(5n^2 + 19n + 20)/720.

The programs for A107969, the canonical program `A107969.P11782759167931248072` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107969 has offset 0).

The definition of A107969 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107969.P11782759167931248072

`(n+1)*(n+2)²*(n+3)*(2*n+3)*(5*n²+19*n+20)/720`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107969

/-- `(n+1)*(n+2)²*(n+3)*(2*n+3)*(5*n²+19*n+20)/720` -/
def P11782759167931248072.Spec : Prop :=
  ∀ n, P11782759167931248072.a n = (A107969 n : ℚ)

end A107969

/-! ## A107969.P2197250733483699777

`2*A114239(n)-A114242(n)`
-/

namespace A107969.P2197250733483699777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A114239 n - A114242 n

end

end A107969.P2197250733483699777

namespace A107969

/-- `2*A114239(n)-A114242(n)` -/
def P2197250733483699777.Spec : Prop :=
  ∀ n, P2197250733483699777.a n = A107969 n

end A107969

/-! ## A107969.P4728606881759080743

`A107962(n)+A108671(n)-A107970(n)`
-/

namespace A107969.P4728606881759080743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107962 n + (A108671 n - A107970 n)

end

end A107969.P4728606881759080743

namespace A107969

/-- `A107962(n)+A108671(n)-A107970(n)` -/
def P4728606881759080743.Spec : Prop :=
  ∀ n, P4728606881759080743.a n = A107969 n

end A107969

/-! ## A107969.P6192611608874183431

`A107970(n)+A108671(n)-A108646(n)`
-/

namespace A107969.P6192611608874183431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107970 n + (A108671 n - A108646 n)

end

end A107969.P6192611608874183431

namespace A107969

/-- `A107970(n)+A108671(n)-A108646(n)` -/
def P6192611608874183431.Spec : Prop :=
  ∀ n, P6192611608874183431.a n = A107969 n

end A107969

/-! ## A107969.P6640685473331319500

`A107970(n)+A114242(n)-A114244(n)`
-/

namespace A107969.P6640685473331319500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107970 n + (A114242 n - A114244 n)

end

end A107969.P6640685473331319500

namespace A107969

/-- `A107970(n)+A114242(n)-A114244(n)` -/
def P6640685473331319500.Spec : Prop :=
  ∀ n, P6640685473331319500.a n = A107969 n

end A107969

/-! ## A107969.P4938268429986445683

`A108682(n)+A114239(n)-A114244(n)`
-/

namespace A107969.P4938268429986445683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108682 n + (A114239 n - A114244 n)

end

end A107969.P4938268429986445683

namespace A107969

/-- `A108682(n)+A114239(n)-A114244(n)` -/
def P4938268429986445683.Spec : Prop :=
  ∀ n, P4938268429986445683.a n = A107969 n

end A107969

/-!
# A107970: a(n) = (n+1)*(n+2)^3*(n+3)*(2n+3)*(2n+5)/360.

The programs for A107970, the canonical program `A107970.P1019314691583436284` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107970 has offset 0).

The definition of A107970 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107970.P1019314691583436284

`(n+1)*(n+2)^3*(n+3)*(2*n+3)*(2*n+5)/360`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107970

/-- `(n+1)*(n+2)^3*(n+3)*(2*n+3)*(2*n+5)/360` -/
def P1019314691583436284.Spec : Prop :=
  ∀ n, P1019314691583436284.a n = (A107970 n : ℚ)

end A107970

/-! ## A107970.P6541659981623856819

`A133351(n)/A006414(n)`
-/

namespace A107970.P6541659981623856819
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A133351 n : ℚ) / (A006414 n : ℚ)

end

end A107970.P6541659981623856819

namespace A107970

/-- `A133351(n)/A006414(n)` -/
def P6541659981623856819.Spec : Prop :=
  ∀ n, P6541659981623856819.a n = (A107970 n : ℚ)

end A107970

/-! ## A107970.P10355248243807790402

`2*A108682(n)-A114244(n)`
-/

namespace A107970.P10355248243807790402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A108682 n - A114244 n

end

end A107970.P10355248243807790402

namespace A107970

/-- `2*A108682(n)-A114244(n)` -/
def P10355248243807790402.Spec : Prop :=
  ∀ n, P10355248243807790402.a n = A107970 n

end A107970

/-! ## A107970.P12280531193068745863

`A107962(n)+A108671(n)-A107969(n)`
-/

namespace A107970.P12280531193068745863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107962 n + (A108671 n - A107969 n)

end

end A107970.P12280531193068745863

namespace A107970

/-- `A107962(n)+A108671(n)-A107969(n)` -/
def P12280531193068745863.Spec : Prop :=
  ∀ n, P12280531193068745863.a n = A107970 n

end A107970

/-! ## A107970.P2994765061511058714

`A107969(n)+A108682(n)-A114239(n)`
-/

namespace A107970.P2994765061511058714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107969 n + (A108682 n - A114239 n)

end

end A107970.P2994765061511058714

namespace A107970

/-- `A107969(n)+A108682(n)-A114239(n)` -/
def P2994765061511058714.Spec : Prop :=
  ∀ n, P2994765061511058714.a n = A107970 n

end A107970

/-! ## A107970.P7027546533702405487

`A107969(n)+A114244(n)-A114242(n)`
-/

namespace A107970.P7027546533702405487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107969 n + (A114244 n - A114242 n)

end

end A107970.P7027546533702405487

namespace A107970

/-- `A107969(n)+A114244(n)-A114242(n)` -/
def P7027546533702405487.Spec : Prop :=
  ∀ n, P7027546533702405487.a n = A107970 n

end A107970

/-! ## A107970.P7433185566365470840

`A108682(n)+A114239(n)-A114242(n)`
-/

namespace A107970.P7433185566365470840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108682 n + (A114239 n - A114242 n)

end

end A107970.P7433185566365470840

namespace A107970

/-- `A108682(n)+A114239(n)-A114242(n)` -/
def P7433185566365470840.Spec : Prop :=
  ∀ n, P7433185566365470840.a n = A107970 n

end A107970

/-!
# A107971: a(n) = (n+1)(n+2)(n+3)(35n^3 + 153n^2 + 232n + 120)/720.

The programs for A107971, the canonical program `A107971.P6540949145389929533` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107971 has offset 0).

The definition of A107971 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107971.P6540949145389929533

`(n+1)*(n+2)*(n+3)*(35*n^3+153*n²+232*n+120)/720`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107971

/-- `(n+1)*(n+2)*(n+3)*(35*n^3+153*n²+232*n+120)/720` -/
def P6540949145389929533.Spec : Prop :=
  ∀ n, P6540949145389929533.a n = (A107971 n : ℚ)

end A107971

/-! ## A107971.P11078686726120126870

`∑[∑[A213549(n+1)+A011195(n)]]`
-/

namespace A107971.P11078686726120126870
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213549 (n + 1) + A011195 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107971.P11078686726120126870

namespace A107971

/-- `∑[∑[A213549(n+1)+A011195(n)]]` -/
def P11078686726120126870.Spec : Prop :=
  ∀ n, P11078686726120126870.a n = A107971 n

end A107971

/-! ## A107971.P4415366105295671670

`A001249(n)+∑[(n+1)*A001296(n)]`
-/

namespace A107971.P4415366105295671670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001249 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107971.P4415366105295671670

namespace A107971

/-- `A001249(n)+∑[(n+1)*A001296(n)]` -/
def P4415366105295671670.Spec : Prop :=
  ∀ n, P4415366105295671670.a n = A107971 n

end A107971

/-! ## A107971.P11904627580714391459

`A108673(n)+A108683(n)-A108684(n)`
-/

namespace A107971.P11904627580714391459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108673 n + (A108683 n - A108684 n)

end

end A107971.P11904627580714391459

namespace A107971

/-- `A108673(n)+A108683(n)-A108684(n)` -/
def P11904627580714391459.Spec : Prop :=
  ∀ n, P11904627580714391459.a n = A107971 n

end A107971

/-! ## A107971.P12952479371331056272

`∑[(n+1)*A001296(n)]+A008619(A180118(n))²`
-/

namespace A107971.P12952479371331056272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001296 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A008619 (A180118 n).toNat ^ 2

end

end A107971.P12952479371331056272

namespace A107971

/-- `∑[(n+1)*A001296(n)]+A008619(A180118(n))²` -/
def P12952479371331056272.Spec : Prop :=
  ∀ n, P12952479371331056272.a n = A107971 n

end A107971

/-!
# A107972: Triangle read by rows: T(n,k) = (k+1)(k+2)(n+2)(3n-2k+3)/12 for 0<=k<=n.

The programs for A107972, the canonical program `A107972.P1932068832478795391` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107972 has offset 0).

The definition of A107972 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107972.P1932068832478795391

`(comp[∑[n]]-n)/2*A177877(n)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A107972

/-- `(comp[∑[n]]-n)/2*A177877(n)` -/
def P1932068832478795391.Spec : Prop :=
  ∀ n, P1932068832478795391.a n = (A107972 n : ℚ)

end A107972

/-! ## A107972.P13161591370103798299

`A003057(n+2)*A177877(n)/2`
-/

namespace A107972.P13161591370103798299
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003057 (n + 2) * A177877 n : ℚ) / 2

end

end A107972.P13161591370103798299

namespace A107972

/-- `A003057(n+2)*A177877(n)/2` -/
def P13161591370103798299.Spec : Prop :=
  ∀ n, P13161591370103798299.a n = (A107972 n : ℚ)

end A107972

/-! ## A107972.P8156458635251243742

`A014682(A003057(n+2)*A177877(n))`
-/

namespace A107972.P8156458635251243742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A003057 (n + 2) * A177877 n).toNat

end

end A107972.P8156458635251243742

namespace A107972

/-- `A014682(A003057(n+2)*A177877(n))` -/
def P8156458635251243742.Spec : Prop :=
  ∀ n, P8156458635251243742.a n = A107972 n

end A107972

/-! ## A107972.P10596143524210940908

`A004525((comp[∑[n]]-n)*A177877(n))`
-/

namespace A107972.P10596143524210940908
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A177877 n).toNat

end

end A107972.P10596143524210940908

namespace A107972

/-- `A004525((comp[∑[n]]-n)*A177877(n))` -/
def P10596143524210940908.Spec : Prop :=
  ∀ n, P10596143524210940908.a n = A107972 n

end A107972

/-! ## A107972.P801595986263436076

`A004526((comp[∑[n]]-n)*A177877(n))`
-/

namespace A107972.P801595986263436076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A177877 n).toNat

end

end A107972.P801595986263436076

namespace A107972

/-- `A004526((comp[∑[n]]-n)*A177877(n))` -/
def P801595986263436076.Spec : Prop :=
  ∀ n, P801595986263436076.a n = A107972 n

end A107972

/-! ## A107972.P8157998038472386729

`A029578((comp[∑[n]]-n)*A177877(n))`
-/

namespace A107972.P8157998038472386729
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A177877 n).toNat

end

end A107972.P8157998038472386729

namespace A107972

/-- `A029578((comp[∑[n]]-n)*A177877(n))` -/
def P8157998038472386729.Spec : Prop :=
  ∀ n, P8157998038472386729.a n = A107972 n

end A107972

/-! ## A107972.P17196759238965425247

`A060681((comp[∑[n]]-n)*A177877(n))`
-/

namespace A107972.P17196759238965425247
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060681 (((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)) * A177877 n).toNat

end

end A107972.P17196759238965425247

namespace A107972

/-- `A060681((comp[∑[n]]-n)*A177877(n))` -/
def P17196759238965425247.Spec : Prop :=
  ∀ n, P17196759238965425247.a n = A107972 n

end A107972

/-! ## A107972.P4762331375300193900

`A001281(A003057(n+2)*A177877(n))`
-/

namespace A107972.P4762331375300193900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A003057 (n + 2) * A177877 n).toNat

end

end A107972.P4762331375300193900

namespace A107972

/-- `A001281(A003057(n+2)*A177877(n))` -/
def P4762331375300193900.Spec : Prop :=
  ∀ n, P4762331375300193900.a n = A107972 n

end A107972

/-! ## A107972.P11884695805570824112

`A025480(A003057(n+2)*A177877(n))`
-/

namespace A107972.P11884695805570824112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A003057 (n + 2) * A177877 n).toNat

end

end A107972.P11884695805570824112

namespace A107972

/-- `A025480(A003057(n+2)*A177877(n))` -/
def P11884695805570824112.Spec : Prop :=
  ∀ n, P11884695805570824112.a n = A107972 n

end A107972

/-! ## A107972.P14592558890191349890

`A026741(A003057(n+2)*A177877(n))`
-/

namespace A107972.P14592558890191349890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A003057 (n + 2) * A177877 n).toNat

end

end A107972.P14592558890191349890

namespace A107972

/-- `A026741(A003057(n+2)*A177877(n))` -/
def P14592558890191349890.Spec : Prop :=
  ∀ n, P14592558890191349890.a n = A107972 n

end A107972

/-!
# A107973: Numbers of the form a^2 + b for a= 21 to 40 and b= 20 to 1 step -1.

The programs for A107973, there is no canonical definition to state claims against.
-/

/-! ## A107973.P7222428029462710828

`(n+21)²+20-n`
-/

namespace A107973.P7222428029462710828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 21) ^ 2 : ℤ) + (20 - (n : ℤ))

end

end A107973.P7222428029462710828

/-! ## A107973.P8232712414089046923

`∑[a(n-1)+2]` with `a(0)=461, a(1)=42`
-/

namespace A107973.P8232712414089046923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [461, 42] fun n f1 =>
  f1 (n - 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A107973.P8232712414089046923

/-! ## A107973.P6462721091252739930

`A202018(n+20)`
-/

namespace A107973.P6462721091252739930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202018 (n + 20)

end

end A107973.P6462721091252739930

/-! ## A107973.P9007999750695910510

`A005846(n+21)`
-/

namespace A107973.P9007999750695910510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005846 (n + 21)

end

end A107973.P9007999750695910510

/-! ## A107973.P4445991456218764608

`A155884(n+21)`
-/

namespace A107973.P4445991456218764608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155884 (n + 21)

end

end A107973.P4445991456218764608

/-!
# A107975: First differences give the same sequence written as a string of individual digits.

The programs for A107975, there is no canonical definition to state claims against.
-/

/-! ## A107975.P5751642099609329832

`A240919(n+2)/ceil(acot(n))`
-/

namespace A107975.P5751642099609329832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240919 (n + 2) : ℚ) / (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℚ)

end

end A107975.P5751642099609329832

/-! ## A107975.P5894833469079363832

`A240919(n%a(n-1)+2)` with `a(0)=5`
-/

namespace A107975.P5894833469079363832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A240919 (Int.tmod (n : ℤ) (a (n - 1)) + 2).toNat

end

end A107975.P5894833469079363832

/-! ## A107975.P15680329186224218990

`A240919(n+2)/A054977(n)`
-/

namespace A107975.P15680329186224218990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240919 (n + 2) : ℚ) / (A054977 n : ℚ)

end

end A107975.P15680329186224218990

/-! ## A107975.P16681933300829318258

`A240919(n+2)/A000038(n)!`
-/

namespace A107975.P16681933300829318258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240919 (n + 2) : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A107975.P16681933300829318258

/-! ## A107975.P10398064893359859948

`A240919(n+2)/(A000007(n)+1)`
-/

namespace A107975.P10398064893359859948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240919 (n + 2) : ℚ) / (A000007 n + 1 : ℚ)

end

end A107975.P10398064893359859948

/-! ## A107975.P15153072104353299963

`A240919(n+2)/A014963(4*n+2)`
-/

namespace A107975.P15153072104353299963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240919 (n + 2) : ℚ) / (A014963 (4 * n + 2) : ℚ)

end

end A107975.P15153072104353299963

/-! ## A107975.P5758021249038293349

`A240919(n+2)/A000079(C(2, n+2))`
-/

namespace A107975.P5758021249038293349
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240919 (n + 2) : ℚ) / (A000079 (Nat.choose 2 (n + 2)) : ℚ)

end

end A107975.P5758021249038293349

/-! ## A107975.P17205878120855751627

`A240919(n+2)/A001611(C(2, n+2))`
-/

namespace A107975.P17205878120855751627
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240919 (n + 2) : ℚ) / (A001611 (Nat.choose 2 (n + 2)) : ℚ)

end

end A107975.P17205878120855751627

/-! ## A107975.P10442895674086816278

`A240919(n+2)/A001511(A000040(n+1))`
-/

namespace A107975.P10442895674086816278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240919 (n + 2) : ℚ) / (A001511 (A000040 (n + 1)).toNat : ℚ)

end

end A107975.P10442895674086816278

/-! ## A107975.P5432487539126469566

`A240919(n+2)/A000034(∏{d}[n, A000034(#)])`
-/

namespace A107975.P5432487539126469566
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240919 (n + 2) : ℚ) / (A000034 (∏ d ∈ Nat.divisors (f1 n), A000034 d).toNat : ℚ)

end

end A107975.P5432487539126469566

/-!
# A107977: First differences give the same sequence written as a string of individual digits.

The programs for A107977, there is no canonical definition to state claims against.
-/

/-! ## A107977.P4776239606260061859

`lt[A247888(n+1), A215078(A169805(n))]`
-/

namespace A107977.P4776239606260061859
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247888 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215078 (A169805 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107977.P4776239606260061859

/-!
# A107978: Products of two primes of the form 4n+3 (A002145).

The programs for A107978, the canonical program `A107978.P3263671017790150072` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107978 has offset 1).

The definition of A107978 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107978.P3263671017790150072

`filter[A057948(n+1), A005171(#)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A107978

/-- `filter[A057948(n+1), A005171(#)]` -/
def P3263671017790150072.Spec : Prop :=
  ∀ n, P3263671017790150072.a n = A107978 (n + 1)

theorem P3263671017790150072.correct : P3263671017790150072.Spec := by
  intro n
  simp only [A107978, Nat.add_sub_cancel]

end A107978

/-! ## A107978.P7220258053895545643

`filter[A004614(n+1), A064911(#)]`
-/

namespace A107978.P7220258053895545643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A107978.P7220258053895545643

namespace A107978

/-- `filter[A004614(n+1), A064911(#)]` -/
def P7220258053895545643.Spec : Prop :=
  ∀ n, P7220258053895545643.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P17316585269556285310

`filter[A057948(n+1), A064911(#)]`
-/

namespace A107978.P17316585269556285310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A107978.P17316585269556285310

namespace A107978

/-- `filter[A057948(n+1), A064911(#)]` -/
def P17316585269556285310.Spec : Prop :=
  ∀ n, P17316585269556285310.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P298919498387933234

`filter[A057948(n+1), A065043(#)]`
-/

namespace A107978.P298919498387933234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065043 (f1 j).toNat = 1) n)

end

end A107978.P298919498387933234

namespace A107978

/-- `filter[A057948(n+1), A065043(#)]` -/
def P298919498387933234.Spec : Prop :=
  ∀ n, P298919498387933234.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P2468577937275661805

`filter[A057948(n+1), A066247(#)]`
-/

namespace A107978.P2468577937275661805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A107978.P2468577937275661805

namespace A107978

/-- `filter[A057948(n+1), A066247(#)]` -/
def P2468577937275661805.Spec : Prop :=
  ∀ n, P2468577937275661805.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P9804024128955396603

`filter[A057948(n+1), A174898(#)]`
-/

namespace A107978.P9804024128955396603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174898 (f1 j).toNat = 1) n)

end

end A107978.P9804024128955396603

namespace A107978

/-- `filter[A057948(n+1), A174898(#)]` -/
def P9804024128955396603.Spec : Prop :=
  ∀ n, P9804024128955396603.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P15253139874711072257

`filter[A176258(n+1), A064911(#)]`
-/

namespace A107978.P15253139874711072257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A107978.P15253139874711072257

namespace A107978

/-- `filter[A176258(n+1), A064911(#)]` -/
def P15253139874711072257.Spec : Prop :=
  ∀ n, P15253139874711072257.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P14488131470511730221

`filter[A057948(n+1), A202238(#)]`
-/

namespace A107978.P14488131470511730221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A107978.P14488131470511730221

namespace A107978

/-- `filter[A057948(n+1), A202238(#)]` -/
def P14488131470511730221.Spec : Prop :=
  ∀ n, P14488131470511730221.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P4635508653286171539

`filter[A176258(n+1), A101040(#)]`
-/

namespace A107978.P4635508653286171539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176258 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A107978.P4635508653286171539

namespace A107978

/-- `filter[A176258(n+1), A101040(#)]` -/
def P4635508653286171539.Spec : Prop :=
  ∀ n, P4635508653286171539.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P1863256846753598026

`filter[A057948(n+1), A292438(#)]`
-/

namespace A107978.P1863256846753598026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A107978.P1863256846753598026

namespace A107978

/-- `filter[A057948(n+1), A292438(#)]` -/
def P1863256846753598026.Spec : Prop :=
  ∀ n, P1863256846753598026.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P7352739993289065355

`filter[A291180(n+1), A064911(#)]`
-/

namespace A107978.P7352739993289065355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291180 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A107978.P7352739993289065355

namespace A107978

/-- `filter[A291180(n+1), A064911(#)]` -/
def P7352739993289065355.Spec : Prop :=
  ∀ n, P7352739993289065355.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P13992239529420341649

`filter[A004614(n+1), A353477(#)]`
-/

namespace A107978.P13992239529420341649
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353477 (f1 j).toNat = 1) n)

end

end A107978.P13992239529420341649

namespace A107978

/-- `filter[A004614(n+1), A353477(#)]` -/
def P13992239529420341649.Spec : Prop :=
  ∀ n, P13992239529420341649.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P1680119812365841195

`filter[A004614(n+1), A353480(#)]`
-/

namespace A107978.P1680119812365841195
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004614 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A107978.P1680119812365841195

namespace A107978

/-- `filter[A004614(n+1), A353480(#)]` -/
def P1680119812365841195.Spec : Prop :=
  ∀ n, P1680119812365841195.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P17840320968917297277

`filter[A057948(n+1), A323162(#)]`
-/

namespace A107978.P17840320968917297277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A107978.P17840320968917297277

namespace A107978

/-- `filter[A057948(n+1), A323162(#)]` -/
def P17840320968917297277.Spec : Prop :=
  ∀ n, P17840320968917297277.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P14937532543329649355

`filter[A057948(n+1), A353374(#)]`
-/

namespace A107978.P14937532543329649355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353374 (f1 j).toNat = 1) n)

end

end A107978.P14937532543329649355

namespace A107978

/-- `filter[A057948(n+1), A353374(#)]` -/
def P14937532543329649355.Spec : Prop :=
  ∀ n, P14937532543329649355.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P11217837709897386375

`filter[A057948(n+1), A353477(#)]`
-/

namespace A107978.P11217837709897386375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353477 (f1 j).toNat = 1) n)

end

end A107978.P11217837709897386375

namespace A107978

/-- `filter[A057948(n+1), A353477(#)]` -/
def P11217837709897386375.Spec : Prop :=
  ∀ n, P11217837709897386375.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P12423023510381217381

`filter[A057948(n+1), A353480(#)]`
-/

namespace A107978.P12423023510381217381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A107978.P12423023510381217381

namespace A107978

/-- `filter[A057948(n+1), A353480(#)]` -/
def P12423023510381217381.Spec : Prop :=
  ∀ n, P12423023510381217381.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P9198589911272720476

`filter[A057948(n+1), A353492(#)]`
-/

namespace A107978.P9198589911272720476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353492 (f1 j).toNat = 1) n)

end

end A107978.P9198589911272720476

namespace A107978

/-- `filter[A057948(n+1), A353492(#)]` -/
def P9198589911272720476.Spec : Prop :=
  ∀ n, P9198589911272720476.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P4461981355947812791

`filter[A057948(n+1), A353495(#)]`
-/

namespace A107978.P4461981355947812791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353495 (f1 j).toNat = 1) n)

end

end A107978.P4461981355947812791

namespace A107978

/-- `filter[A057948(n+1), A353495(#)]` -/
def P4461981355947812791.Spec : Prop :=
  ∀ n, P4461981355947812791.a n = A107978 (n + 1)

end A107978

/-! ## A107978.P16838223861816857588

`filter[A057948(n+1), A353557(#)]`
-/

namespace A107978.P16838223861816857588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353557 (f1 j).toNat = 1) n)

end

end A107978.P16838223861816857588

namespace A107978

/-- `filter[A057948(n+1), A353557(#)]` -/
def P16838223861816857588.Spec : Prop :=
  ∀ n, P16838223861816857588.a n = A107978 (n + 1)

end A107978

/-!
# A107982: Gaussian-Pythagorean semiprimes. Products of a prime of the form 2 or 4n+1 (A002313) and a prime of the form 4n+3 (A002145).

The programs for A107982, there is no canonical definition to state claims against.
-/

/-! ## A107982.P2048073523637420019

`∩[or(2*n, n%4), A001358(n+1)]`
-/

namespace A107982.P2048073523637420019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor (2 * n) (n % 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107982.P2048073523637420019

/-! ## A107982.P12894414277220829843

`record[A055615(A091067(n+2))]`
-/

namespace A107982.P12894414277220829843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A091067 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107982.P12894414277220829843

/-! ## A107982.P4566423024370990008

`record[A055615(A222409(n+2))]`
-/

namespace A107982.P4566423024370990008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055615 (A222409 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107982.P4566423024370990008

/-! ## A107982.P5915410101842269821

`filter[A001358(n+1), A038189(#)]`
-/

namespace A107982.P5915410101842269821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A107982.P5915410101842269821

/-! ## A107982.P18172263042212910373

`filter[A006881(n+1), A038189(#)]`
-/

namespace A107982.P18172263042212910373
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A107982.P18172263042212910373

/-! ## A107982.P10142711164880401371

`filter[A030229(n+1), A038189(#)]`
-/

namespace A107982.P10142711164880401371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030229 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A107982.P10142711164880401371

/-! ## A107982.P5085751540956419058

`filter[A001358(n+1), A089013(#)]`
-/

namespace A107982.P5085751540956419058
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A107982.P5085751540956419058

/-! ## A107982.P11988023236772032976

`filter[A006881(n+1), A089013(#)]`
-/

namespace A107982.P11988023236772032976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A089013 (f1 j).toNat = 1) n)

end

end A107982.P11988023236772032976

/-! ## A107982.P7536890242087454269

`filter[A068993(n+1), A038189(#)]`
-/

namespace A107982.P7536890242087454269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A038189 (f1 j).toNat = 1) n)

end

end A107982.P7536890242087454269

/-! ## A107982.P17157323052002216821

`filter[A047556(n+1), A064911(#)]`
-/

namespace A107982.P17157323052002216821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047556 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A107982.P17157323052002216821

/-!
# A107984: Triangle read by rows: T(n,k) = (k+1)*(n+2)*(2n-k+3)*(n-k+1)/6 for 0 <= k <= n.

The programs for A107984, the canonical program `A107984.P10600243444609299589` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107984 has offset 0).

The definition of A107984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9870 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107984.P14196469472219012134

`A354968(∑[char[∑[n]]]²-n+1)`
-/

namespace A107984.P14196469472219012134
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A354968 ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℕ) : ℤ) - (n : ℤ) + 1).toNat

end

end A107984.P14196469472219012134

namespace A107984

/-- `A354968(∑[char[∑[n]]]²-n+1)` -/
def P14196469472219012134.Spec : Prop :=
  ∀ n, P14196469472219012134.a n = A107984 n

end A107984

/-! ## A107984.P10600243444609299589

`A057103(A061579(n)+2)/24`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A107984

/-- `A057103(A061579(n)+2)/24` -/
def P10600243444609299589.Spec : Prop :=
  ∀ n, P10600243444609299589.a n = (A107984 n : ℚ)

end A107984

/-!
# A107985: Triangle read by rows: T(n,k) = (k+1)*(n+2)*(n-k+1)/2 for 0 <= k <= n.

The programs for A107985, the canonical program `A107985.P3926446649831752432` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107985 has offset 0).

The definition of A107985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107985.P3926446649831752432

`A003991(n+1)/2*∑[A073423(n)]`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A107985

/-- `A003991(n+1)/2*∑[A073423(n)]` -/
def P3926446649831752432.Spec : Prop :=
  ∀ n, P3926446649831752432.a n = (A107985 n : ℚ)

end A107985

/-! ## A107985.P7669676831572109335

`A002260(n+1)/2*A063929(n+1)`
-/

namespace A107985.P7669676831572109335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002260 (n + 1) : ℚ) / 2 * (A063929 (n + 1) : ℚ)

end

end A107985.P7669676831572109335

namespace A107985

/-- `A002260(n+1)/2*A063929(n+1)` -/
def P7669676831572109335.Spec : Prop :=
  ∀ n, P7669676831572109335.a n = (A107985 n : ℚ)

end A107985

/-! ## A107985.P10208767239686990274

`A003991(n+1)/2*A003057(n+2)`
-/

namespace A107985.P10208767239686990274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) : ℚ) / 2 * (A003057 (n + 2) : ℚ)

end

end A107985.P10208767239686990274

namespace A107985

/-- `A003991(n+1)/2*A003057(n+2)` -/
def P10208767239686990274.Spec : Prop :=
  ∀ n, P10208767239686990274.a n = (A107985 n : ℚ)

end A107985

/-! ## A107985.P10136292141914649518

`A127777(n+1)*A127779(n+1)/A143219(n+1)`
-/

namespace A107985.P10136292141914649518
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A127777 (n + 1) * A127779 (n + 1) : ℚ) / (A143219 (n + 1) : ℚ)

end

end A107985.P10136292141914649518

namespace A107985

/-- `A127777(n+1)*A127779(n+1)/A143219(n+1)` -/
def P10136292141914649518.Spec : Prop :=
  ∀ n, P10136292141914649518.a n = (A107985 n : ℚ)

end A107985

/-! ## A107985.P4240630881379869982

`A000217(A002024(n+1))/A002024(n+1)*A003991(n+1)`
-/

namespace A107985.P4240630881379869982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000217 (A002024 (n + 1)).toNat : ℚ) / (A002024 (n + 1) : ℚ) * (A003991 (n + 1) : ℚ)

end

end A107985.P4240630881379869982

namespace A107985

/-- `A000217(A002024(n+1))/A002024(n+1)*A003991(n+1)` -/
def P4240630881379869982.Spec : Prop :=
  ∀ n, P4240630881379869982.a n = (A107985 n : ℚ)

end A107985

/-! ## A107985.P8435341726252660292

`A003991(n+1)*A127739(n+1)/A003991(A127739(n+1))`
-/

namespace A107985.P8435341726252660292
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003991 (n + 1) * A127739 (n + 1) : ℚ) / (A003991 (A127739 (n + 1)).toNat : ℚ)

end

end A107985.P8435341726252660292

namespace A107985

/-- `A003991(n+1)*A127739(n+1)/A003991(A127739(n+1))` -/
def P8435341726252660292.Spec : Prop :=
  ∀ n, P8435341726252660292.a n = (A107985 n : ℚ)

end A107985

/-! ## A107985.P16650329707265688503

`A157636(eq[0, A103451(n)])`
-/

namespace A107985.P16650329707265688503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107985.P16650329707265688503

namespace A107985

/-- `A157636(eq[0, A103451(n)])` -/
def P16650329707265688503.Spec : Prop :=
  ∀ n, P16650329707265688503.a n = A107985 n

end A107985

/-! ## A107985.P16479040610989702083

`A157636(eq[0, A103452(n)])`
-/

namespace A107985.P16479040610989702083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103452 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107985.P16479040610989702083

namespace A107985

/-- `A157636(eq[0, A103452(n)])` -/
def P16479040610989702083.Spec : Prop :=
  ∀ n, P16479040610989702083.a n = A107985 n

end A107985

/-! ## A107985.P10825412905297013644

`A157636(lt[1, A157633(n)])`
-/

namespace A107985.P10825412905297013644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157633 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A107985.P10825412905297013644

namespace A107985

/-- `A157636(lt[1, A157633(n)])` -/
def P10825412905297013644.Spec : Prop :=
  ∀ n, P10825412905297013644.a n = A107985 n

end A107985

/-! ## A107985.P17943585154723817361

`A157636(lt[1, A157634(n)])`
-/

namespace A107985.P17943585154723817361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A107985.P17943585154723817361

namespace A107985

/-- `A157636(lt[1, A157634(n)])` -/
def P17943585154723817361.Spec : Prop :=
  ∀ n, P17943585154723817361.a n = A107985 n

end A107985

/-! ## A107985.P11633279288040870835

`A157636(lt[n, A157636(n)²])`
-/

namespace A107985.P11633279288040870835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A107985.P11633279288040870835

namespace A107985

/-- `A157636(lt[n, A157636(n)²])` -/
def P11633279288040870835.Spec : Prop :=
  ∀ n, P11633279288040870835.a n = A107985 n

end A107985

/-! ## A107985.P11211656065693417324

`A157636(lt[n/A157636(n), A157636(n)])`
-/

namespace A107985.P11211656065693417324
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A157636 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A107985.P11211656065693417324

namespace A107985

/-- `A157636(lt[n/A157636(n), A157636(n)])` -/
def P11211656065693417324.Spec : Prop :=
  ∀ n, P11211656065693417324.a n = A107985 n

end A107985

/-! ## A107985.P3073359806041197918

`A113582(lt[1, A002262(n)])-A113582(n+1)`
-/

namespace A107985.P3073359806041197918
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113582 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - A113582 (n + 1)

end

end A107985.P3073359806041197918

namespace A107985

/-- `A113582(lt[1, A002262(n)])-A113582(n+1)` -/
def P3073359806041197918.Spec : Prop :=
  ∀ n, P3073359806041197918.a n = A107985 n

end A107985

/-! ## A107985.P12440740734782219079

`A093445(n+1)-A062707(n)`
-/

namespace A107985.P12440740734782219079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093445 (n + 1) - A062707 n

end

end A107985.P12440740734782219079

namespace A107985

/-- `A093445(n+1)-A062707(n)` -/
def P12440740734782219079.Spec : Prop :=
  ∀ n, P12440740734782219079.a n = A107985 n

end A107985

/-! ## A107985.P9060693439255536021

`A202363(n+2)/A094310(n+1)`
-/

namespace A107985.P9060693439255536021
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202363 (n + 2) : ℚ) / (A094310 (n + 1) : ℚ)

end

end A107985.P9060693439255536021

namespace A107985

/-- `A202363(n+2)/A094310(n+1)` -/
def P9060693439255536021.Spec : Prop :=
  ∀ n, P9060693439255536021.a n = (A107985 n : ℚ)

end A107985

/-! ## A107985.P17444266770835815001

`A384125(n+1)+A003991(n+1)`
-/

namespace A107985.P17444266770835815001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A384125 (n + 1) + A003991 (n + 1)

end

end A107985.P17444266770835815001

namespace A107985

/-- `A384125(n+1)+A003991(n+1)` -/
def P17444266770835815001.Spec : Prop :=
  ∀ n, P17444266770835815001.a n = A107985 n

end A107985

/-! ## A107985.P5890821375105528238

`A157636(lt[1, A157637(n)])`
-/

namespace A107985.P5890821375105528238
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157637 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A107985.P5890821375105528238

namespace A107985

/-- `A157636(lt[1, A157637(n)])` -/
def P5890821375105528238.Spec : Prop :=
  ∀ n, P5890821375105528238.a n = A107985 n

end A107985

/-! ## A107985.P3201317800551704093

`A157636(lt[1, A157638(n)])`
-/

namespace A107985.P3201317800551704093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157638 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A107985.P3201317800551704093

namespace A107985

/-- `A157636(lt[1, A157638(n)])` -/
def P3201317800551704093.Spec : Prop :=
  ∀ n, P3201317800551704093.a n = A107985 n

end A107985

/-! ## A107985.P10797237528706801738

`A157636(lt[1, A157641(n)])`
-/

namespace A107985.P10797237528706801738
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157641 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157636 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A107985.P10797237528706801738

namespace A107985

/-- `A157636(lt[1, A157641(n)])` -/
def P10797237528706801738.Spec : Prop :=
  ∀ n, P10797237528706801738.a n = A107985 n

end A107985

/-! ## A107985.P1385072273256827270

`A271916(n+1)+A185958(n+1)`
-/

namespace A107985.P1385072273256827270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271916 (n + 1) + A185958 (n + 1)

end

end A107985.P1385072273256827270

namespace A107985

/-- `A271916(n+1)+A185958(n+1)` -/
def P1385072273256827270.Spec : Prop :=
  ∀ n, P1385072273256827270.a n = A107985 n

end A107985

/-!
# A107986: Composite numbers of the form p+2 where p is prime.

The programs for A107986, the canonical program `A107986.P13375461098850866248` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107986 has offset 1).

The definition of A107986 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A067774, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107986.P13375461098850866248

`A067774(n+1)+2`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A107986

/-- `A067774(n+1)+2` -/
def P13375461098850866248.Spec : Prop :=
  ∀ n, P13375461098850866248.a n = A107986 (n + 1)

theorem P13375461098850866248.correct : P13375461098850866248.Spec := by
  intro n
  simp only [A107986, Nat.add_sub_cancel]

end A107986

/-! ## A107986.P5986731668035646536

`A141515(n+1)+3`
-/

namespace A107986.P5986731668035646536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 1) + 3

end

end A107986.P5986731668035646536

namespace A107986

/-- `A141515(n+1)+3` -/
def P5986731668035646536.Spec : Prop :=
  ∀ n, P5986731668035646536.a n = A107986 (n + 1)

end A107986

/-! ## A107986.P11584735703107012793

`∪[A053704(n+1), A107987(n+1)]`
-/

namespace A107986.P11584735703107012793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053704 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107986.P11584735703107012793

namespace A107986

/-- `∪[A053704(n+1), A107987(n+1)]` -/
def P11584735703107012793.Spec : Prop :=
  ∀ n, (P11584735703107012793.a n : ℤ) = A107986 (n + 1)

end A107986

/-! ## A107986.P8203652848540415734

`∪[A062721(n+1), A107987(n+1)]`
-/

namespace A107986.P8203652848540415734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062721 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A107986.P8203652848540415734

namespace A107986

/-- `∪[A062721(n+1), A107987(n+1)]` -/
def P8203652848540415734.Spec : Prop :=
  ∀ n, (P8203652848540415734.a n : ℤ) = A107986 (n + 1)

end A107986

/-! ## A107986.P9849996805934898493

`∪[A002476(n+1), A007510(n+1)]+2`
-/

namespace A107986.P9849996805934898493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002476 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007510 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A107986.P9849996805934898493

namespace A107986

/-- `∪[A002476(n+1), A007510(n+1)]+2` -/
def P9849996805934898493.Spec : Prop :=
  ∀ n, (P9849996805934898493.a n : ℤ) = A107986 (n + 1)

end A107986

/-! ## A107986.P5099370654890976788

`filter[A052147(n+1), A005171(#)]`
-/

namespace A107986.P5099370654890976788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A107986.P5099370654890976788

namespace A107986

/-- `filter[A052147(n+1), A005171(#)]` -/
def P5099370654890976788.Spec : Prop :=
  ∀ n, P5099370654890976788.a n = A107986 (n + 1)

end A107986

/-! ## A107986.P13063920780454945869

`filter[A052147(n+1), A066247(#)]`
-/

namespace A107986.P13063920780454945869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A107986.P13063920780454945869

namespace A107986

/-- `filter[A052147(n+1), A066247(#)]` -/
def P13063920780454945869.Spec : Prop :=
  ∀ n, P13063920780454945869.a n = A107986 (n + 1)

end A107986

/-! ## A107986.P1977686634792934273

`filter[A052147(n+1), A283265(#)]`
-/

namespace A107986.P1977686634792934273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A107986.P1977686634792934273

namespace A107986

/-- `filter[A052147(n+1), A283265(#)]` -/
def P1977686634792934273.Spec : Prop :=
  ∀ n, P1977686634792934273.a n = A107986 (n + 1)

end A107986

/-! ## A107986.P16546302407607382135

`record[A020482(A016789(n))+2]`
-/

namespace A107986.P16546302407607382135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020482 (A016789 n).toNat + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107986.P16546302407607382135

namespace A107986

/-- `record[A020482(A016789(n))+2]` -/
def P16546302407607382135.Spec : Prop :=
  ∀ n, P16546302407607382135.a n = A107986 (n + 1)

end A107986

/-! ## A107986.P9987352927296422414

`∩[A052147(n+1), A078505(n+1)]`
-/

namespace A107986.P9987352927296422414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107986.P9987352927296422414

namespace A107986

/-- `∩[A052147(n+1), A078505(n+1)]` -/
def P9987352927296422414.Spec : Prop :=
  ∀ n, (P9987352927296422414.a n : ℤ) = A107986 (n + 1)

end A107986

/-! ## A107986.P16527113564864722520

`∩[A067187(n+1), A078505(n+1)]`
-/

namespace A107986.P16527113564864722520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067187 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107986.P16527113564864722520

namespace A107986

/-- `∩[A067187(n+1), A078505(n+1)]` -/
def P16527113564864722520.Spec : Prop :=
  ∀ n, (P16527113564864722520.a n : ℤ) = A107986 (n + 1)

end A107986

/-! ## A107986.P13920261848658058181

`∩[A078505(n+1), A088685(n+1)]`
-/

namespace A107986.P13920261848658058181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078505 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107986.P13920261848658058181

namespace A107986

/-- `∩[A078505(n+1), A088685(n+1)]` -/
def P13920261848658058181.Spec : Prop :=
  ∀ n, (P13920261848658058181.a n : ℤ) = A107986 (n + 1)

end A107986

/-! ## A107986.P8459771530966911760

`p?[A002808(n+1)-2]+2`
-/

namespace A107986.P8459771530966911760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A107986.P8459771530966911760

namespace A107986

/-- `p?[A002808(n+1)-2]+2` -/
def P8459771530966911760.Spec : Prop :=
  ∀ n, P8459771530966911760.a n = A107986 (n + 1)

end A107986

/-! ## A107986.P838757182278104404

`p?[A018252(n+1)-2]+2`
-/

namespace A107986.P838757182278104404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) + 2

end

end A107986.P838757182278104404

namespace A107986

/-- `p?[A018252(n+1)-2]+2` -/
def P838757182278104404.Spec : Prop :=
  ∀ n, P838757182278104404.a n = A107986 (n + 1)

end A107986

/-! ## A107986.P10885654355113813427

`A060308(A104279(n+1))+2`
-/

namespace A107986.P10885654355113813427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060308 (A104279 (n + 1)).toNat + 2

end

end A107986.P10885654355113813427

namespace A107986

/-- `A060308(A104279(n+1))+2` -/
def P10885654355113813427.Spec : Prop :=
  ∀ n, P10885654355113813427.a n = A107986 (n + 1)

end A107986

/-! ## A107986.P5775236821807881719

`∩[A051035(n+1), A004276(n)]`
-/

namespace A107986.P5775236821807881719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004276 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107986.P5775236821807881719

namespace A107986

/-- `∩[A051035(n+1), A004276(n)]` -/
def P5775236821807881719.Spec : Prop :=
  ∀ n, (P5775236821807881719.a n : ℤ) = A107986 (n + 1)

end A107986

/-! ## A107986.P1815984908239676574

`∩[A051035(n+1), A004281(n)]`
-/

namespace A107986.P1815984908239676574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004281 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107986.P1815984908239676574

namespace A107986

/-- `∩[A051035(n+1), A004281(n)]` -/
def P1815984908239676574.Spec : Prop :=
  ∀ n, (P1815984908239676574.a n : ℤ) = A107986 (n + 1)

end A107986

/-! ## A107986.P6810603350279658410

`∩[A051035(n+1), A223134(n)]`
-/

namespace A107986.P6810603350279658410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223134 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107986.P6810603350279658410

namespace A107986

/-- `∩[A051035(n+1), A223134(n)]` -/
def P6810603350279658410.Spec : Prop :=
  ∀ n, (P6810603350279658410.a n : ℤ) = A107986 (n + 1)

end A107986

/-! ## A107986.P3187280875997003407

`∩[A051035(n+1), A052147(n+1)]`
-/

namespace A107986.P3187280875997003407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051035 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107986.P3187280875997003407

namespace A107986

/-- `∩[A051035(n+1), A052147(n+1)]` -/
def P3187280875997003407.Spec : Prop :=
  ∀ n, (P3187280875997003407.a n : ℤ) = A107986 (n + 1)

end A107986

/-! ## A107986.P6762696237173880611

`eq[A082023(n), A096500(n+1)]+2`
-/

namespace A107986.P6762696237173880611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082023 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 2

end

end A107986.P6762696237173880611

namespace A107986

/-- `eq[A082023(n), A096500(n+1)]+2` -/
def P6762696237173880611.Spec : Prop :=
  ∀ n, (P6762696237173880611.a n : ℤ) = A107986 (n + 1)

end A107986

/-!
# A107987: Odd composite numbers of the form p+2 where p is prime.

The programs for A107987, the canonical program `A107987.P5415694799470960516` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107987 has offset 1).

The definition of A107987 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A049591, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107987.P5415694799470960516

`A049591(n+1)+2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A107987

/-- `A049591(n+1)+2` -/
def P5415694799470960516.Spec : Prop :=
  ∀ n, P5415694799470960516.a n = A107987 (n + 1)

theorem P5415694799470960516.correct : P5415694799470960516.Spec := by
  intro n
  simp only [A107987, Nat.add_sub_cancel]

end A107987

/-! ## A107987.P1476999156054796947

`A067774(n+2)+2`
-/

namespace A107987.P1476999156054796947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067774 (n + 2) + 2

end

end A107987.P1476999156054796947

namespace A107987

/-- `A067774(n+2)+2` -/
def P1476999156054796947.Spec : Prop :=
  ∀ n, P1476999156054796947.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P2239296765617748768

`A136798(n+1)+1`
-/

namespace A107987.P2239296765617748768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136798 (n + 1) + 1

end

end A107987.P2239296765617748768

namespace A107987

/-- `A136798(n+1)+1` -/
def P2239296765617748768.Spec : Prop :=
  ∀ n, P2239296765617748768.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P9103256539646687528

`A297925(n+1)-3`
-/

namespace A107987.P9103256539646687528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297925 (n + 1) - 3

end

end A107987.P9103256539646687528

namespace A107987

/-- `A297925(n+1)-3` -/
def P9103256539646687528.Spec : Prop :=
  ∀ n, P9103256539646687528.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P4476603311817220144

`2*A104280(n+1)+1`
-/

namespace A107987.P4476603311817220144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104280 (n + 1) + 1

end

end A107987.P4476603311817220144

namespace A107987

/-- `2*A104280(n+1)+1` -/
def P4476603311817220144.Spec : Prop :=
  ∀ n, P4476603311817220144.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P11523791856140771125

`A297150(n+1)/5+2`
-/

namespace A107987.P11523791856140771125
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A297150 (n + 1) : ℚ) / 5 + 2

end

end A107987.P11523791856140771125

namespace A107987

/-- `A297150(n+1)/5+2` -/
def P11523791856140771125.Spec : Prop :=
  ∀ n, P11523791856140771125.a n = (A107987 (n + 1) : ℚ)

end A107987

/-! ## A107987.P5752538160882811148

`A107986(n+2)`
-/

namespace A107987.P5752538160882811148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107986 (n + 2)

end

end A107987.P5752538160882811148

namespace A107987

/-- `A107986(n+2)` -/
def P5752538160882811148.Spec : Prop :=
  ∀ n, P5752538160882811148.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P1967818638771689607

`A141515(n+2)+3`
-/

namespace A107987.P1967818638771689607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141515 (n + 2) + 3

end

end A107987.P1967818638771689607

namespace A107987

/-- `A141515(n+2)+3` -/
def P1967818638771689607.Spec : Prop :=
  ∀ n, P1967818638771689607.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P10334354527524193581

`A052147(A049579(n+1))`
-/

namespace A107987.P10334354527524193581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (A049579 (n + 1)).toNat

end

end A107987.P10334354527524193581

namespace A107987

/-- `A052147(A049579(n+1))` -/
def P10334354527524193581.Spec : Prop :=
  ∀ n, P10334354527524193581.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P813735655862960983

`filter[A175217(n+1), A379952(#)]`
-/

namespace A107987.P813735655862960983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175217 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A107987.P813735655862960983

namespace A107987

/-- `filter[A175217(n+1), A379952(#)]` -/
def P813735655862960983.Spec : Prop :=
  ∀ n, P813735655862960983.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P1099751345577921752

`filter[A048974(n+1), A005171(#)]`
-/

namespace A107987.P1099751345577921752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A107987.P1099751345577921752

namespace A107987

/-- `filter[A048974(n+1), A005171(#)]` -/
def P1099751345577921752.Spec : Prop :=
  ∀ n, P1099751345577921752.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P9267888352716090674

`filter[A048974(n+1), A066247(#)]`
-/

namespace A107987.P9267888352716090674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A107987.P9267888352716090674

namespace A107987

/-- `filter[A048974(n+1), A066247(#)]` -/
def P9267888352716090674.Spec : Prop :=
  ∀ n, P9267888352716090674.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P3481917615799127813

`filter[A048974(n+1), A202238(#)]`
-/

namespace A107987.P3481917615799127813
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A107987.P3481917615799127813

namespace A107987

/-- `filter[A048974(n+1), A202238(#)]` -/
def P3481917615799127813.Spec : Prop :=
  ∀ n, P3481917615799127813.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P4284033381794278527

`filter[A052147(n+1), A202238(#)]`
-/

namespace A107987.P4284033381794278527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A202238 (f1 j).toNat = 1) n)

end

end A107987.P4284033381794278527

namespace A107987

/-- `filter[A052147(n+1), A202238(#)]` -/
def P4284033381794278527.Spec : Prop :=
  ∀ n, P4284033381794278527.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P1912380389546607987

`filter[A048974(n+1), A283265(#)]`
-/

namespace A107987.P1912380389546607987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A283265 (f1 j).toNat = 1) n)

end

end A107987.P1912380389546607987

namespace A107987

/-- `filter[A048974(n+1), A283265(#)]` -/
def P1912380389546607987.Spec : Prop :=
  ∀ n, P1912380389546607987.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P10058962586233995976

`filter[A048974(n+1), A292438(#)]`
-/

namespace A107987.P10058962586233995976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A107987.P10058962586233995976

namespace A107987

/-- `filter[A048974(n+1), A292438(#)]` -/
def P10058962586233995976.Spec : Prop :=
  ∀ n, P10058962586233995976.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P18017660796426266050

`filter[A052147(n+1), A292438(#)]`
-/

namespace A107987.P18017660796426266050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A292438 (f1 j).toNat = 1) n)

end

end A107987.P18017660796426266050

namespace A107987

/-- `filter[A052147(n+1), A292438(#)]` -/
def P18017660796426266050.Spec : Prop :=
  ∀ n, P18017660796426266050.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P1888116899006858999

`filter[A048974(n+1), A323162(#)]`
-/

namespace A107987.P1888116899006858999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A107987.P1888116899006858999

namespace A107987

/-- `filter[A048974(n+1), A323162(#)]` -/
def P1888116899006858999.Spec : Prop :=
  ∀ n, P1888116899006858999.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P18130989743710892041

`filter[A052147(n+1), A323162(#)]`
-/

namespace A107987.P18130989743710892041
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A107987.P18130989743710892041

namespace A107987

/-- `filter[A052147(n+1), A323162(#)]` -/
def P18130989743710892041.Spec : Prop :=
  ∀ n, P18130989743710892041.a n = A107987 (n + 1)

end A107987

/-! ## A107987.P13221653793522077100

`filter[A067187(n+1), A323162(#)]`
-/

namespace A107987.P13221653793522077100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067187 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323162 (f1 j).toNat = 1) n)

end

end A107987.P13221653793522077100

namespace A107987

/-- `filter[A067187(n+1), A323162(#)]` -/
def P13221653793522077100.Spec : Prop :=
  ∀ n, P13221653793522077100.a n = A107987 (n + 1)

end A107987

/-!
# A107988: Numbers of the form (4^i)*(11^j), with i, j >= 0.

The programs for A107988, there is no canonical definition to state claims against.
-/

/-! ## A107988.P15800907302756376948

`filter[A003596(n+1), A372574(#)]`
-/

namespace A107988.P15800907302756376948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A372574 (f1 j).toNat = 1) n)

end

end A107988.P15800907302756376948

/-! ## A107988.P6019153693667712973

`filter[A003596(n+1), A373136(#)]`
-/

namespace A107988.P6019153693667712973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373136 (f1 j).toNat = 1) n)

end

end A107988.P6019153693667712973

/-! ## A107988.P7311467294774033786

`filter[A003596(n+1), A373155(#)]`
-/

namespace A107988.P7311467294774033786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A373155 (f1 j).toNat = 1) n)

end

end A107988.P7311467294774033786

/-! ## A107988.P8206711691588657490

`∩[A003596(n+1), A316621(n+1)]`
-/

namespace A107988.P8206711691588657490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316621 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107988.P8206711691588657490

/-! ## A107988.P4796734643933226212

`filter[A003596(n+1), A035263(#)]`
-/

namespace A107988.P4796734643933226212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003596 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A035263 (f1 j).toNat = 1) n)

end

end A107988.P4796734643933226212

/-!
# A107989: Consider primes p such that integer part of the volume of cube with faces of area p is prime; sequence gives integer part of volumes.

The programs for A107989, there is no canonical definition to state claims against.
-/

/-! ## A107989.P16675857133452696587

`p?[floor(sqrt(A030078(n+1)))]`
-/

namespace A107989.P16675857133452696587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A030078 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107989.P16675857133452696587

/-! ## A107989.P11163769119107483628

`p?[floor(sqrt(A153481(n+1)))]`
-/

namespace A107989.P11163769119107483628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A153481 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107989.P11163769119107483628

/-! ## A107989.P12614230962450738191

`p?[floor(sqrt(A000040(n+1)^3))]`
-/

namespace A107989.P12614230962450738191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A000040 (n + 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107989.P12614230962450738191

/-! ## A107989.P10274284982674314512

`p?[floor(sqrt(A158611(n+1)^3))]`
-/

namespace A107989.P10274284982674314512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A158611 (n + 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107989.P10274284982674314512

/-! ## A107989.P12846310423354418713

`p?[floor(sqrt((A006093(n+1)+1)^3))]`
-/

namespace A107989.P12846310423354418713
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((A006093 (n + 1) + 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107989.P12846310423354418713

/-! ## A107989.P15489084897059691183

`p?[floor(sqrt((A008864(n+1)-1)^3))]`
-/

namespace A107989.P15489084897059691183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((A008864 (n + 1) - 1) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107989.P15489084897059691183

/-! ## A107989.P142130264134263151

`p?[floor(sqrt((A001748(n+1)/3)^3))]`
-/

namespace A107989.P142130264134263151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (((A001748 (n + 1) : ℚ) / 3) ^ 3 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107989.P142130264134263151

/-! ## A107989.P2143976444043519063

`p?[floor((n+1)*sqrt(A089026(n+1)))]`
-/

namespace A107989.P2143976444043519063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (A089026 (n + 1) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107989.P2143976444043519063

/-! ## A107989.P10825091241112162326

`p?[floor(sqrt((A014692(n+1)+n)^3))]`
-/

namespace A107989.P10825091241112162326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt ((A014692 (n + 1) + (n : ℤ)) ^ 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107989.P10825091241112162326

/-! ## A107989.P10567362618217329074

`p?[A000093(A000040(n+1))]`
-/

namespace A107989.P10567362618217329074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000093 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A107989.P10567362618217329074

/-!
# A107990: Primes representing areas of cube faces where the integer part of the cube's volume is also prime.

The programs for A107990, there is no canonical definition to state claims against.
-/

/-! ## A107990.P4855085821935250588

`ceil(root(A107989(n+1), 3)²)`
-/

namespace A107990.P4855085821935250588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((A107989 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2⌉

end

end A107990.P4855085821935250588

/-! ## A107990.P14933702777012911426

`A006530(round(root(A107989(n+1), 3)²))`
-/

namespace A107990.P14933702777012911426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway (((A107989 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2)).toNat

end

end A107990.P14933702777012911426

/-! ## A107990.P15393896710042760299

`A014963(round(root(A107989(n+1), 3)²))`
-/

namespace A107990.P15393896710042760299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (SequenceMachineLib.roundAway (((A107989 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2)).toNat

end

end A107990.P15393896710042760299

/-! ## A107990.P16272622711593172832

`A020639(round(root(A107989(n+1), 3)²))`
-/

namespace A107990.P16272622711593172832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((A107989 (n + 1) : ℝ) ^ (1 / (3 : ℝ))) ^ 2)).toNat

end

end A107990.P16272622711593172832

/-! ## A107990.P10268806360412889160

`A054846(A107989(n+1))`
-/

namespace A107990.P10268806360412889160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054846 (A107989 (n + 1)).toNat

end

end A107990.P10268806360412889160

/-!
# A107991: Number of spanning trees in the simple graph with nodes {1,2,...,n} and edges {i,j} if i + j > n.

The programs for A107991, the canonical program `A107991.P12525170723971700528` is in `Seq.B000.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107991 has offset 1).

The definition of A107991 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A107991.P12525170723971700528

`n!/floor((n+2)/2)`

The canonical program, it is in `Seq.B000.C015`.
-/

namespace A107991

/-- `n!/floor((n+2)/2)` -/
def P12525170723971700528.Spec : Prop :=
  ∀ n, P12525170723971700528.a n = (A107991 (n + 1) : ℚ)

end A107991

/-! ## A107991.P10614019478396769279

`A126074(A008619(n²))`
-/

namespace A107991.P10614019478396769279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (A008619 (n ^ 2)).toNat

end

end A107991.P10614019478396769279

namespace A107991

/-- `A126074(A008619(n²))` -/
def P10614019478396769279.Spec : Prop :=
  ∀ n, P10614019478396769279.a n = A107991 (n + 1)

end A107991

/-! ## A107991.P1898562787886899915

`A081123(n)*A262033(n)`
-/

namespace A107991.P1898562787886899915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n * A262033 n

end

end A107991.P1898562787886899915

namespace A107991

/-- `A081123(n)*A262033(n)` -/
def P1898562787886899915.Spec : Prop :=
  ∀ n, P1898562787886899915.a n = A107991 (n + 1)

end A107991

/-! ## A107991.P17027182104452576660

`A081123(n)²*A057977(n)`
-/

namespace A107991.P17027182104452576660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081123 n ^ 2 * A057977 n

end

end A107991.P17027182104452576660

namespace A107991

/-- `A081123(n)²*A057977(n)` -/
def P17027182104452576660.Spec : Prop :=
  ∀ n, P17027182104452576660.a n = A107991 (n + 1)

end A107991

/-! ## A107991.P7800100912676150482

`A126074(∑[A109613(n)]-n)`
-/

namespace A107991.P7800100912676150482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A107991.P7800100912676150482

namespace A107991

/-- `A126074(∑[A109613(n)]-n)` -/
def P7800100912676150482.Spec : Prop :=
  ∀ n, P7800100912676150482.a n = A107991 (n + 1)

end A107991

/-! ## A107991.P4241424595156385349

`A126074(A000982(n+1)-n)`
-/

namespace A107991.P4241424595156385349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (A000982 (n + 1) - (n : ℤ)).toNat

end

end A107991.P4241424595156385349

namespace A107991

/-- `A126074(A000982(n+1)-n)` -/
def P4241424595156385349.Spec : Prop :=
  ∀ n, P4241424595156385349.a n = A107991 (n + 1)

end A107991

/-! ## A107991.P2801296585628500169

`A126074(A030978(n+1)-n)`
-/

namespace A107991.P2801296585628500169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (A030978 (n + 1) - (n : ℤ)).toNat

end

end A107991.P2801296585628500169

namespace A107991

/-- `A126074(A030978(n+1)-n)` -/
def P2801296585628500169.Spec : Prop :=
  ∀ n, P2801296585628500169.a n = A107991 (n + 1)

end A107991

/-! ## A107991.P16502201060700933288

`A126074(∑[A106249(2*n)]-n)`
-/

namespace A107991.P16502201060700933288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)).toNat

end

end A107991.P16502201060700933288

namespace A107991

/-- `A126074(∑[A106249(2*n)]-n)` -/
def P16502201060700933288.Spec : Prop :=
  ∀ n, P16502201060700933288.a n = A107991 (n + 1)

end A107991

/-! ## A107991.P10488651244463540546

`A126074(∑[A106249(A004273(n))])`
-/

namespace A107991.P10488651244463540546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106249 (A004273 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126074 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A107991.P10488651244463540546

namespace A107991

/-- `A126074(∑[A106249(A004273(n))])` -/
def P10488651244463540546.Spec : Prop :=
  ∀ n, P10488651244463540546.a n = A107991 (n + 1)

end A107991

/-! ## A107991.P13946279651055406291

`A262033(n)/A057977(n)*A262033(n)`
-/

namespace A107991.P13946279651055406291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A262033 n : ℚ) / (A057977 n : ℚ) * (A262033 n : ℚ)

end

end A107991.P13946279651055406291

namespace A107991

/-- `A262033(n)/A057977(n)*A262033(n)` -/
def P13946279651055406291.Spec : Prop :=
  ∀ n, P13946279651055406291.a n = (A107991 (n + 1) : ℚ)

end A107991

/-!
# A107992: Numbers n such that 11*n - 3 is prime.

The programs for A107992, the canonical program `A107992.P639525701864077716` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107992 has offset 1).

The definition of A107992 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A107992.P7344969713316224984

`A108725(n+1)+2`
-/

namespace A107992.P7344969713316224984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108725 (n + 1) + 2

end

end A107992.P7344969713316224984

namespace A107992

/-- `A108725(n+1)+2` -/
def P7344969713316224984.Spec : Prop :=
  ∀ n, P7344969713316224984.a n = A107992 (n + 1)

end A107992

/-! ## A107992.P639525701864077716

`ceil(A141855(n+1)/11)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107992

/-- `ceil(A141855(n+1)/11)` -/
def P639525701864077716.Spec : Prop :=
  ∀ n, P639525701864077716.a n = A107992 (n + 1)

theorem P639525701864077716.correct : P639525701864077716.Spec := by
  intro n
  simp only [A107992, Nat.add_sub_cancel]

end A107992

/-! ## A107992.P4018105277646585418

`round(A141855(n+1)/11)%A002146(n)`
-/

namespace A107992.P4018105277646585418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A141855 (n + 1) : ℚ) / 11)) (A002146 n)

end

end A107992.P4018105277646585418

namespace A107992

/-- `round(A141855(n+1)/11)%A002146(n)` -/
def P4018105277646585418.Spec : Prop :=
  ∀ n, P4018105277646585418.a n = A107992 (n + 1)

end A107992

/-! ## A107992.P7776552942279540643

`ceil(p?[A248339(n)]/11)`
-/

namespace A107992.P7776552942279540643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248339 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 11⌉

end

end A107992.P7776552942279540643

namespace A107992

/-- `ceil(p?[A248339(n)]/11)` -/
def P7776552942279540643.Spec : Prop :=
  ∀ n, P7776552942279540643.a n = A107992 (n + 1)

end A107992

/-! ## A107992.P3921388645225532078

`ceil(p?[A017485(n)]/11)`
-/

namespace A107992.P3921388645225532078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) / 11⌉

end

end A107992.P3921388645225532078

namespace A107992

/-- `ceil(p?[A017485(n)]/11)` -/
def P3921388645225532078.Spec : Prop :=
  ∀ n, P3921388645225532078.a n = A107992 (n + 1)

end A107992

/-! ## A107992.P10322130224485881337

`A145064(A108725(n+1))`
-/

namespace A107992.P10322130224485881337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145064 (A108725 (n + 1)).toNat

end

end A107992.P10322130224485881337

namespace A107992

/-- `A145064(A108725(n+1))` -/
def P10322130224485881337.Spec : Prop :=
  ∀ n, P10322130224485881337.a n = A107992 (n + 1)

end A107992

/-! ## A107992.P5859377563465521512

`lt[A000005(2*n+9*n+8), 3]+1`
-/

namespace A107992.P5859377563465521512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (2 * n + (9 * n + 8))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A107992.P5859377563465521512

namespace A107992

/-- `lt[A000005(2*n+9*n+8), 3]+1` -/
def P5859377563465521512.Spec : Prop :=
  ∀ n, (P5859377563465521512.a n : ℤ) = A107992 (n + 1)

end A107992

/-! ## A107992.P16515236057415127588

`lt[A001222(A008592(n+2)+n-1), 2]+2`
-/

namespace A107992.P16515236057415127588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A008592 (n + 2) + ((n : ℤ) - 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A107992.P16515236057415127588

namespace A107992

/-- `lt[A001222(A008592(n+2)+n-1), 2]+2` -/
def P16515236057415127588.Spec : Prop :=
  ∀ n, (P16515236057415127588.a n : ℤ) = A107992 (n + 1)

end A107992

/-! ## A107992.P7535955208273173637

`eq[1, A001222(A016969(n)+A016873(n)+1)]+1`
-/

namespace A107992.P7535955208273173637
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 n + A016873 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107992.P7535955208273173637

namespace A107992

/-- `eq[1, A001222(A016969(n)+A016873(n)+1)]+1` -/
def P7535955208273173637.Spec : Prop :=
  ∀ n, (P7535955208273173637.a n : ℤ) = A107992 (n + 1)

end A107992

/-! ## A107992.P18063269598669239423

`eq[1, A001222(A016921(n+1)+A016873(n)-1)]+1`
-/

namespace A107992.P18063269598669239423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016921 (n + 1) + A016873 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107992.P18063269598669239423

namespace A107992

/-- `eq[1, A001222(A016921(n+1)+A016873(n)-1)]+1` -/
def P18063269598669239423.Spec : Prop :=
  ∀ n, (P18063269598669239423.a n : ℤ) = A107992 (n + 1)

end A107992

/-! ## A107992.P6311979392616554158

`eq[4, A000005(A017449(A004273(n)))]`
-/

namespace A107992.P6311979392616554158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017449 (A004273 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107992.P6311979392616554158

namespace A107992

/-- `eq[4, A000005(A017449(A004273(n)))]` -/
def P6311979392616554158.Spec : Prop :=
  ∀ n, (P6311979392616554158.a n : ℤ) = A107992 (n + 1)

end A107992

/-! ## A107992.P15706448798505380674

`record[(n+2)%A014963(11*n+19)]`
-/

namespace A107992.P15706448798505380674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 2 : ℤ) (A014963 (11 * n + 19))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107992.P15706448798505380674

namespace A107992

/-- `record[(n+2)%A014963(11*n+19)]` -/
def P15706448798505380674.Spec : Prop :=
  ∀ n, P15706448798505380674.a n = A107992 (n + 1)

end A107992

/-! ## A107992.P17889060060069564149

`A194521(A141855(n+1))`
-/

namespace A107992.P17889060060069564149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194521 (A141855 (n + 1)).toNat

end

end A107992.P17889060060069564149

namespace A107992

/-- `A194521(A141855(n+1))` -/
def P17889060060069564149.Spec : Prop :=
  ∀ n, P17889060060069564149.a n = A107992 (n + 1)

end A107992

/-! ## A107992.P5581848683125740310

`eq[1, A052126(A016969(n)+A016873(n)+1)]+1`
-/

namespace A107992.P5581848683125740310
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052126 (A016969 n + A016873 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107992.P5581848683125740310

namespace A107992

/-- `eq[1, A052126(A016969(n)+A016873(n)+1)]+1` -/
def P5581848683125740310.Spec : Prop :=
  ∀ n, (P5581848683125740310.a n : ℤ) = A107992 (n + 1)

end A107992

/-!
# A107993: Primes of the form r(r(r(r(r(r(n)+1)+1)+1)+1)+1)+1, where A141468(n) = r(n) = n-th nonprime.

The programs for A107993, there is no canonical definition to state claims against.
-/

/-! ## A107993.P15572393004326789294

`A107752(A187829(n+1)+A000523(n+1))`
-/

namespace A107993.P15572393004326789294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107752 (A187829 (n + 1) + A000523 (n + 1)).toNat

end

end A107993.P15572393004326789294

/-! ## A107993.P16178169796052996402

`A107752(A004893(comp[∑[n]]))`
-/

namespace A107993.P16178169796052996402
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107752 (A004893 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A107993.P16178169796052996402

/-!
# A107994: Numbers n such that 11*n - 2 is prime.

The programs for A107994, the canonical program `A107994.P14297671034442261939` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A107994 has offset 1).

The definition of A107994 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141856, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A107994.P14297671034442261939

`(A141856(n+1)+2)/11`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A107994

/-- `(A141856(n+1)+2)/11` -/
def P14297671034442261939.Spec : Prop :=
  ∀ n, P14297671034442261939.a n = (A107994 (n + 1) : ℚ)

end A107994

/-! ## A107994.P8464575659719492454

`A107305(n+1)-1`
-/

namespace A107994.P8464575659719492454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107305 (n + 1) - 1

end

end A107994.P8464575659719492454

namespace A107994

/-- `A107305(n+1)-1` -/
def P8464575659719492454.Spec : Prop :=
  ∀ n, P8464575659719492454.a n = A107994 (n + 1)

end A107994

/-! ## A107994.P14403515988457521116

`A108727(n+1)+3`
-/

namespace A107994.P14403515988457521116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108727 (n + 1) + 3

end

end A107994.P14403515988457521116

namespace A107994

/-- `A108727(n+1)+3` -/
def P14403515988457521116.Spec : Prop :=
  ∀ n, P14403515988457521116.a n = A107994 (n + 1)

end A107994

/-! ## A107994.P15526926156698776388

`ceil(p?[a(n-1)+11]/11)` with `a(0)=6, a(1)=9`
-/

namespace A107994.P15526926156698776388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [6, 9] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11⌉

end

end A107994.P15526926156698776388

namespace A107994

/-- `ceil(p?[a(n-1)+11]/11)` -/
def P15526926156698776388.Spec : Prop :=
  ∀ n, P15526926156698776388.a n = A107994 (n + 1)

end A107994

/-! ## A107994.P11111300183676186082

`round(p?[a(n-1)+11]/11)` with `a(0)=10, a(1)=9`
-/

namespace A107994.P11111300183676186082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [10, 9] fun n f1 =>
  f1 (n - 1) + 11

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℚ) / 11)

end

end A107994.P11111300183676186082

namespace A107994

/-- `round(p?[a(n-1)+11]/11)` -/
def P11111300183676186082.Spec : Prop :=
  ∀ n, P11111300183676186082.a n = A107994 (n + 1)

end A107994

/-! ## A107994.P12485456071094998916

`A014681(A107305(n+1))`
-/

namespace A107994.P12485456071094998916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A107305 (n + 1)).toNat

end

end A107994.P12485456071094998916

namespace A107994

/-- `A014681(A107305(n+1))` -/
def P12485456071094998916.Spec : Prop :=
  ∀ n, P12485456071094998916.a n = A107994 (n + 1)

end A107994

/-! ## A107994.P11121673656611256796

`A165754(A108727(n+1))`
-/

namespace A107994.P11121673656611256796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165754 (A108727 (n + 1)).toNat

end

end A107994.P11121673656611256796

namespace A107994

/-- `A165754(A108727(n+1))` -/
def P11121673656611256796.Spec : Prop :=
  ∀ n, P11121673656611256796.a n = A107994 (n + 1)

end A107994

/-! ## A107994.P7457831325255539618

`A023446(A107305(n+1)+1)+2`
-/

namespace A107994.P7457831325255539618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023446 (A107305 (n + 1) + 1).toNat + 2

end

end A107994.P7457831325255539618

namespace A107994

/-- `A023446(A107305(n+1)+1)+2` -/
def P7457831325255539618.Spec : Prop :=
  ∀ n, P7457831325255539618.a n = A107994 (n + 1)

end A107994

/-! ## A107994.P16357435630180273925

`lt[A001222(11*n+9), 2]+1`
-/

namespace A107994.P16357435630180273925
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (11 * n + 9)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A107994.P16357435630180273925

namespace A107994

/-- `lt[A001222(11*n+9), 2]+1` -/
def P16357435630180273925.Spec : Prop :=
  ∀ n, (P16357435630180273925.a n : ℤ) = A107994 (n + 1)

end A107994

/-! ## A107994.P2567984894645006126

`eq[2, A000005(abs(3-11*n)+1)]`
-/

namespace A107994.P2567984894645006126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|3 - (11 * n : ℤ)| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A107994.P2567984894645006126

namespace A107994

/-- `eq[2, A000005(abs(3-11*n)+1)]` -/
def P2567984894645006126.Spec : Prop :=
  ∀ n, (P2567984894645006126.a n : ℤ) = A107994 (n + 1)

end A107994

/-! ## A107994.P784701736093701641

`lt[A000005(Δ[n²]+9*n+8), 3]+1`
-/

namespace A107994.P784701736093701641
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + (9 * n + 8 : ℤ)).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A107994.P784701736093701641

namespace A107994

/-- `lt[A000005(Δ[n²]+9*n+8), 3]+1` -/
def P784701736093701641.Spec : Prop :=
  ∀ n, (P784701736093701641.a n : ℤ) = A107994 (n + 1)

end A107994

/-! ## A107994.P16789071926628279674

`eq[2, A000005(A017497(n))]+1`
-/

namespace A107994.P16789071926628279674
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A017497 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107994.P16789071926628279674

namespace A107994

/-- `eq[2, A000005(A017497(n))]+1` -/
def P16789071926628279674.Spec : Prop :=
  ∀ n, (P16789071926628279674.a n : ℤ) = A107994 (n + 1)

end A107994

/-! ## A107994.P13829523898516623779

`eq[A000010(A017497(n)), A017485(n)]+1`
-/

namespace A107994.P13829523898516623779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A017497 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017485 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A107994.P13829523898516623779

namespace A107994

/-- `eq[A000010(A017497(n)), A017485(n)]+1` -/
def P13829523898516623779.Spec : Prop :=
  ∀ n, (P13829523898516623779.a n : ℤ) = A107994 (n + 1)

end A107994

/-! ## A107994.P13031498654776159144

`eq[1, A001222(A016969(n)+A016873(n)+2)]+1`
-/

namespace A107994.P13031498654776159144
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A016969 n + A016873 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A107994.P13031498654776159144

namespace A107994

/-- `eq[1, A001222(A016969(n)+A016873(n)+2)]+1` -/
def P13031498654776159144.Spec : Prop :=
  ∀ n, (P13031498654776159144.a n : ℤ) = A107994 (n + 1)

end A107994

/-!
# A107995: Chebyshev polynomial of the second kind U[n,x] evaluated at x=n+2.

The programs for A107995, there is no canonical definition to state claims against.
-/

/-! ## A107995.P15646943837666949258

`A228161((n+1)²+(n+2)²)`
-/

namespace A107995.P15646943837666949258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228161 ((n + 1) ^ 2 + (n + 2) ^ 2)

end

end A107995.P15646943837666949258

/-! ## A107995.P13576321418606262502

`A323182(A132209(n+1))`
-/

namespace A107995.P13576321418606262502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A132209 (n + 1)).toNat

end

end A107995.P13576321418606262502

/-! ## A107995.P1346341342573714305

`A323182(A142463(n+1))`
-/

namespace A107995.P1346341342573714305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A142463 (n + 1)).toNat

end

end A107995.P1346341342573714305

/-! ## A107995.P14251786138319327679

`A323182(eq[2, A114327(n)])`
-/

namespace A107995.P14251786138319327679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A107995.P14251786138319327679

/-! ## A107995.P9235822451841506408

`A323182(A046092(n+1)-1)`
-/

namespace A107995.P9235822451841506408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323182 (A046092 (n + 1) - 1).toNat

end

end A107995.P9235822451841506408

/-!
# A107996: Integers m congruent to 5 modulo 8 such that the minimal solution of the Pell equation x^2 - m*y^2 = +-4 has both x and y odd.

The programs for A107996, there is no canonical definition to state claims against.
-/

/-! ## A107996.P10275406027997038001

`record[and(1, A077058(n+1))*A077425(n+1)]`
-/

namespace A107996.P10275406027997038001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A077058 (n + 1)) * A077425 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107996.P10275406027997038001

/-! ## A107996.P2633367852529460685

`record[A077425(n+1)/A040001(A077058(n+1))]`
-/

namespace A107996.P2633367852529460685
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A077425 (n + 1) : ℚ) / (A040001 (A077058 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107996.P2633367852529460685

/-! ## A107996.P12770461640883382057

`A016813(A247424(n+1))%A325180(3*n+2)`
-/

namespace A107996.P12770461640883382057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A016813 (A247424 (n + 1)).toNat) (A325180 (3 * n + 2))

end

end A107996.P12770461640883382057

/-! ## A107996.P3943929063023878188

`A008586(A247424(n+1))+A001222(A155954(n))`
-/

namespace A107996.P3943929063023878188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A247424 (n + 1)).toNat + A001222 (A155954 n).toNat

end

end A107996.P3943929063023878188

/-! ## A107996.P5685149532170677363

`A008586(A247424(n+1))+A001222(A001153(n+1))`
-/

namespace A107996.P5685149532170677363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 (A247424 (n + 1)).toNat + A001222 (A001153 (n + 1)).toNat

end

end A107996.P5685149532170677363

/-!
# A107997: Squarefree integers m congruent to 5 modulo 8 such that the minimal solution of the Pell equation x^2 - m*y^2 = +-4 has both x and y odd.

The programs for A107997, there is no canonical definition to state claims against.
-/

/-! ## A107997.P16004747893454175579

`record[A007913(A107996(n+1))]`
-/

namespace A107997.P16004747893454175579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A107996 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A107997.P16004747893454175579

/-! ## A107997.P11654966002906500846

`filter[A107996(n+1), A008966(#)]`
-/

namespace A107997.P11654966002906500846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A107997.P11654966002906500846

/-! ## A107997.P3289015369881966277

`filter[A107996(n+1), A105597(#)]`
-/

namespace A107997.P3289015369881966277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A105597 (f1 j).toNat = 1) n)

end

end A107997.P3289015369881966277

/-! ## A107997.P7778924261604844574

`filter[A107996(n+1), A290098(#)]`
-/

namespace A107997.P7778924261604844574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A290098 (f1 j).toNat = 1) n)

end

end A107997.P7778924261604844574

/-! ## A107997.P14703251616029658594

`filter[A107996(n+1), A323154(#)]`
-/

namespace A107997.P14703251616029658594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107996 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A107997.P14703251616029658594

/-!
# A107998: Squarefree integers m for which the fundamental unit of Q(sqrt(m)) is of the form u + v*sqrt(m) for integer u, v.

The programs for A107998, there is no canonical definition to state claims against.
-/

/-! ## A107998.P9829463963903970681

`lt[A323641(n+1), A006530(A323608(2*n+1))]`
-/

namespace A107998.P9829463963903970681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323641 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A323608 (2 * n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A107998.P9829463963903970681

/-! ## A107998.P12339959149515416632

`A005117(lt[A259687(3*n+1), 2*n])`
-/

namespace A107998.P12339959149515416632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259687 (3 * n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A107998.P12339959149515416632

/-! ## A107998.P1955957016240897690

`A005117(lt[A353846(3*n+4), A055818(n+1)])`
-/

namespace A107998.P1955957016240897690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353846 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A107998.P1955957016240897690

/-! ## A107998.P17627800245437919951

`A005117(floor(log2(A293230(3*n+4))))`
-/

namespace A107998.P17627800245437919951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (Nat.log 2 (A293230 (3 * n + 4)).toNat)

end

end A107998.P17627800245437919951

/-! ## A107998.P4011856203309055515

`eq[A028572(A141213(n)), A105570(n)]`
-/

namespace A107998.P4011856203309055515
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028572 (A141213 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A107998.P4011856203309055515

/-!
# A107999: Integers m congruent to 5 modulo 8 such that the minimal solution of the Pell equation x^2 - m*y^2 = +-4 has both x and y even.

The programs for A107999, there is no canonical definition to state claims against.
-/

/-! ## A107999.P4170068830986552906

`∩[A222947(2*n), A055394(n+5)]`
-/

namespace A107999.P4170068830986552906
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222947 (2 * n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055394 (n + 5)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A107999.P4170068830986552906

