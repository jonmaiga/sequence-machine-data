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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C045
import Seq.B000.C049
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
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
# A071500: Sprague-Grundy values for octal game .366.

The programs for A071500, there is no canonical definition to state claims against.
-/

/-! ## A071500.P13184916836324708361

`A071516(n+1)%A071518(A037166(n+1))`
-/

namespace A071500.P13184916836324708361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071516 (n + 1)) (A071518 (A037166 (n + 1)).toNat)

end

end A071500.P13184916836324708361

/-! ## A071500.P10838220922018367375

`A071516(n+1)%Δ[A119753(2*n+3)]`
-/

namespace A071500.P10838220922018367375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119753 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071516 (n + 1)) (f1 (n + 1) - f1 n)

end

end A071500.P10838220922018367375

/-! ## A071500.P3771312229068947216

`A257992(3^A071516(n+1))`
-/

namespace A071500.P3771312229068947216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A071516 (n + 1) : ℤ))).toNat

end

end A071500.P3771312229068947216

/-! ## A071500.P8081728906993484672

`A071516(n+1)%A349207(n)²`
-/

namespace A071500.P8081728906993484672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071516 (n + 1)) (A349207 (n + 21) ^ 2)

end

end A071500.P8081728906993484672

/-! ## A071500.P3391718908236628939

`A015969(2*(n+1))%2*A071516(n+1)`
-/

namespace A071500.P3391718908236628939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A015969 (2 * (n + 1))) 2 * A071516 (n + 1)

end

end A071500.P3391718908236628939

/-!
# A071504: Sprague-Grundy values for octal games .376 and .3761.

The programs for A071504, there is no canonical definition to state claims against.
-/

/-! ## A071504.P3711198616179819266

`A125943(n+1)-A185284(A158611(n+1))`
-/

namespace A071504.P3711198616179819266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125943 (n + 1) - A185284 (A158611 (n + 1)).toNat

end

end A071504.P3711198616179819266

/-!
# A071505: Sprague-Grundy values for octal game .13737.

The programs for A071505, there is no canonical definition to state claims against.
-/

/-! ## A071505.P17521043339291470929

`and(A005408(A119753(n+1)), A071508(n+1))`
-/

namespace A071505.P17521043339291470929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A005408 (A119753 (n + 1)).toNat) (A071508 (n + 1))

end

end A071505.P17521043339291470929

/-! ## A071505.P6928019493300451138

`A071508(n+1)%A071508(A075764(n+1))`
-/

namespace A071505.P6928019493300451138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071508 (n + 1)) (A071508 (A075764 (n + 1)).toNat)

end

end A071505.P6928019493300451138

/-! ## A071505.P9949999973922792970

`∑{e}[A077522(A071508(n+1)), #]`
-/

namespace A071505.P9949999973922792970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077522 (A071508 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p

end

end A071505.P9949999973922792970

/-! ## A071505.P4497448845990924797

`A000005(5^A071508(n+1))-1`
-/

namespace A071505.P4497448845990924797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A071508 (n + 1) : ℤ))).toNat - 1

end

end A071505.P4497448845990924797

/-! ## A071505.P13482192739620146482

`∑{d}[A379761(2*n+1), A071508(n+1)%#]`
-/

namespace A071505.P13482192739620146482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379761 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, Int.tmod (A071508 (n + 1)) (d : ℤ)

end

end A071505.P13482192739620146482

/-!
# A071507: Sprague-Grundy values for octal game .1737 and .17371.

The programs for A071507, there is no canonical definition to state claims against.
-/

/-! ## A071507.P13392861516275317310

`A071509(n+1)+A014055(A245950(n+1))`
-/

namespace A071507.P13392861516275317310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071509 (n + 1) + A014055 (A245950 (n + 1)).toNat

end

end A071507.P13392861516275317310

/-! ## A071507.P11666236729199248165

`A071509(n+1)-A014082(A222177(n))`
-/

namespace A071507.P11666236729199248165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071509 (n + 1) - A014082 (A222177 n).toNat

end

end A071507.P11666236729199248165

/-! ## A071507.P6270865729893130784

`A071509(n+1)%A071508(A054602(n+1))`
-/

namespace A071507.P6270865729893130784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071509 (n + 1)) (A071508 (A054602 (n + 1)).toNat)

end

end A071507.P6270865729893130784

/-! ## A071507.P10880207704743196509

`A071509(n+1)-A055641(A127968(n))`
-/

namespace A071507.P10880207704743196509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071509 (n + 1) - A055641 (A127968 n).toNat

end

end A071507.P10880207704743196509

/-! ## A071507.P14881179394129083828

`C(A071509(n+1), A036297(A324820(n+1)))`
-/

namespace A071507.P14881179394129083828
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A071509 (n + 1)).toNat (A036297 (A324820 (n + 1)).toNat).toNat

end

end A071507.P14881179394129083828

/-!
# A071509: Sprague-Grundy values for octal games .1777 and .17771.

The programs for A071509, there is no canonical definition to state claims against.
-/

/-! ## A071509.P8108349777480842881

`A071507(n+1)-A014055(A245950(n+1))`
-/

namespace A071509.P8108349777480842881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071507 (n + 1) - A014055 (A245950 (n + 1)).toNat

end

end A071509.P8108349777480842881

/-! ## A071509.P10638589491352047074

`or(A071507(n+1), A144603(A278778(n+1)))`
-/

namespace A071509.P10638589491352047074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A071507 (n + 1)) (A144603 (A278778 (n + 1)).toNat)

end

end A071509.P10638589491352047074

/-! ## A071509.P6489687249400851771

`A028310(A071507(n+1))-A007949(A000384(3*n+4))`
-/

namespace A071509.P6489687249400851771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A071507 (n + 1)).toNat - A007949 (A000384 (3 * n + 4)).toNat

end

end A071509.P6489687249400851771

/-! ## A071509.P9676234607583176037

`A028310(A071507(n+1)%A119143(n+1))`
-/

namespace A071509.P9676234607583176037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A071507 (n + 1)) (A119143 (n + 1))).toNat

end

end A071509.P9676234607583176037

/-! ## A071509.P14844205182981063920

`A028310(A071507(n+1))%A329449(A000040(n+1))`
-/

namespace A071509.P14844205182981063920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A028310 (A071507 (n + 1)).toNat) (A329449 (A000040 (n + 1)).toNat)

end

end A071509.P14844205182981063920

/-!
# A071510: Sprague-Grundy values for octal game .524.

The programs for A071510, there is no canonical definition to state claims against.
-/

/-! ## A071510.P10637612760608027147

`and(A167289(A157904(n)), A253553(n+1))`
-/

namespace A071510.P10637612760608027147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A167289 (A157904 n).toNat) (A253553 (n + 1))

end

end A071510.P10637612760608027147

/-! ## A071510.P14170225920545780353

`and(A003056(A026570(n+1)), A065362(n+1))`
-/

namespace A071510.P14170225920545780353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A003056 (A026570 (n + 1)).toNat) (A065362 (n + 1))

end

end A071510.P14170225920545780353

/-!
# A071515: Sprague-Grundy values for octal game .744.

The programs for A071515, there is no canonical definition to state claims against.
-/

/-! ## A071515.P7803426176785660124

`A071495(A000005(Δ[A050732(n+1)]))`
-/

namespace A071515.P7803426176785660124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050732 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071495 (A000005 (f1 (n + 1) - f1 n).toNat).toNat

end

end A071515.P7803426176785660124

/-! ## A071515.P6155082822539988838

`A071495(A187829(n+1))`
-/

namespace A071515.P6155082822539988838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071495 (A187829 (n + 1)).toNat

end

end A071515.P6155082822539988838

/-! ## A071515.P1904388436682883934

`A071495(n+1)%A006530(A153894(n))`
-/

namespace A071515.P1904388436682883934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A071495 (n + 1)) (A006530 (A153894 n).toNat)

end

end A071515.P1904388436682883934

/-! ## A071515.P17159371994313131555

`A071495(n+1)+A000007(A000041(2*(n+2)))`
-/

namespace A071515.P17159371994313131555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071495 (n + 1) + A000007 (A000041 (2 * (n + 2))).toNat

end

end A071515.P17159371994313131555

/-! ## A071515.P9448338398015823096

`A071495(A077168(n))`
-/

namespace A071515.P9448338398015823096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071495 (A077168 n).toNat

end

end A071515.P9448338398015823096

/-!
# A071519: Numbers whose square is a zeroless pandigital number (i.e., use the digits 1 through 9 once).

The programs for A071519, there is no canonical definition to state claims against.
-/

/-! ## A071519.P17405514179282186222

`sqrt(A036744(n+1))`
-/

namespace A071519.P17405514179282186222
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A036744 (n + 1) : ℝ)

end

end A071519.P17405514179282186222

/-! ## A071519.P14300017108682176260

`sqrt(A352329(n+7))`
-/

namespace A071519.P14300017108682176260
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A352329 (n + 7) : ℝ)

end

end A071519.P14300017108682176260

/-! ## A071519.P3476145412496724701

`sqrt(A353025(n+7))`
-/

namespace A071519.P3476145412496724701
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A353025 (n + 7) : ℝ)

end

end A071519.P3476145412496724701

/-! ## A071519.P8884448559009592489

`3*A162859(n+1)`
-/

namespace A071519.P8884448559009592489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A162859 (n + 1)

end

end A071519.P8884448559009592489

/-! ## A071519.P9796612329854284337

`lcm(3, A294661(n+1))`
-/

namespace A071519.P9796612329854284337
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (A294661 (n + 1))

end

end A071519.P9796612329854284337

/-!
# A071520: Number of 5-smooth numbers (A051037) <= n.

The programs for A071520, the canonical program `A071520.P14427511125662410922` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071520 has offset 1).

The definition of A071520 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071520.P9275677206386954965

`∑[char[A051037(1+n)-1]]`
-/

namespace A071520.P9275677206386954965
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P9275677206386954965

namespace A071520

/-- `∑[char[A051037(1+n)-1]]` -/
def P9275677206386954965.Spec : Prop :=
  ∀ n, (P9275677206386954965.a n : ℤ) = A071520 (n + 1)

end A071520

/-! ## A071520.P5270419984211186040

`∑[char[A112757(n+1)-1]]`
-/

namespace A071520.P5270419984211186040
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112757 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P5270419984211186040

namespace A071520

/-- `∑[char[A112757(n+1)-1]]` -/
def P5270419984211186040.Spec : Prop :=
  ∀ n, (P5270419984211186040.a n : ℤ) = A071520 (n + 1)

end A071520

/-! ## A071520.P2010301704238347105

`∑[char[lt[A061395(n+1), 4]]]`
-/

namespace A071520.P2010301704238347105
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P2010301704238347105

namespace A071520

/-- `∑[char[lt[A061395(n+1), 4]]]` -/
def P2010301704238347105.Spec : Prop :=
  ∀ n, (P2010301704238347105.a n : ℤ) = A071520 (n + 1)

end A071520

/-! ## A071520.P4849542040454998988

`∑[char[lt[A332899(n+1), 4]]]`
-/

namespace A071520.P4849542040454998988
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332899 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P4849542040454998988

namespace A071520

/-- `∑[char[lt[A332899(n+1), 4]]]` -/
def P4849542040454998988.Spec : Prop :=
  ∀ n, (P4849542040454998988.a n : ℤ) = A071520 (n + 1)

end A071520

/-! ## A071520.P2960020347253887899

`∑[char[lt[A006530(n+1), 6]]]`
-/

namespace A071520.P2960020347253887899
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P2960020347253887899

namespace A071520

/-- `∑[char[lt[A006530(n+1), 6]]]` -/
def P2960020347253887899.Spec : Prop :=
  ∀ n, (P2960020347253887899.a n : ℤ) = A071520 (n + 1)

end A071520

/-! ## A071520.P14427511125662410922

`∑[val(A006530(5*(n+1)), 5)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071520

/-- `∑[val(A006530(5*(n+1)), 5)]` -/
def P14427511125662410922.Spec : Prop :=
  ∀ n, (P14427511125662410922.a n : ℤ) = A071520 (n + 1)

theorem P14427511125662410922.correct : P14427511125662410922.Spec := by
  intro n
  simp only [A071520, Nat.add_sub_cancel]

end A071520

/-! ## A071520.P13880131816644586507

`∑[C(5, A006530(10*(n+1)))]`
-/

namespace A071520.P13880131816644586507
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose 5 (A006530 (10 * (n + 1))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P13880131816644586507

namespace A071520

/-- `∑[C(5, A006530(10*(n+1)))]` -/
def P13880131816644586507.Spec : Prop :=
  ∀ n, (P13880131816644586507.a n : ℤ) = A071520 (n + 1)

end A071520

/-! ## A071520.P1249644404363239505

`∑[round(1/A069897(2*(n+1)))]`
-/

namespace A071520.P1249644404363239505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A069897 (2 * (n + 1)) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P1249644404363239505

namespace A071520

/-- `∑[round(1/A069897(2*(n+1)))]` -/
def P1249644404363239505.Spec : Prop :=
  ∀ n, P1249644404363239505.a n = A071520 (n + 1)

end A071520

/-! ## A071520.P5477907166638639526

`∑[round(3/A006530(3*(n+1)))]`
-/

namespace A071520.P5477907166638639526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (3 / (A006530 (3 * (n + 1)) : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P5477907166638639526

namespace A071520

/-- `∑[round(3/A006530(3*(n+1)))]` -/
def P5477907166638639526.Spec : Prop :=
  ∀ n, P5477907166638639526.a n = A071520 (n + 1)

end A071520

/-! ## A071520.P12883731397200543575

`∑[char[lt[n-A243291(n+1), 3]]]`
-/

namespace A071520.P12883731397200543575
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243291 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P12883731397200543575

namespace A071520

/-- `∑[char[lt[n-A243291(n+1), 3]]]` -/
def P12883731397200543575.Spec : Prop :=
  ∀ n, (P12883731397200543575.a n : ℤ) = A071520 (n + 1)

end A071520

/-! ## A071520.P3395954121146271038

`∑[A097806(A006530(n+1)-1)]`
-/

namespace A071520.P3395954121146271038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097806 (A006530 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P3395954121146271038

namespace A071520

/-- `∑[A097806(A006530(n+1)-1)]` -/
def P3395954121146271038.Spec : Prop :=
  ∀ n, P3395954121146271038.a n = A071520 (n + 1)

end A071520

/-! ## A071520.P6564192090587181038

`A301506(n+1)+A071521(n+1)`
-/

namespace A071520.P6564192090587181038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301506 (n + 1) + A071521 (n + 1)

end

end A071520.P6564192090587181038

namespace A071520

/-- `A301506(n+1)+A071521(n+1)` -/
def P6564192090587181038.Spec : Prop :=
  ∀ n, P6564192090587181038.a n = A071520 (n + 1)

end A071520

/-! ## A071520.P7579128320733616536

`∑[A016168((A334202(n+1)+1)²)]`
-/

namespace A071520.P7579128320733616536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016168 ((A334202 (n + 1) + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P7579128320733616536

namespace A071520

/-- `∑[A016168((A334202(n+1)+1)²)]` -/
def P7579128320733616536.Spec : Prop :=
  ∀ n, P7579128320733616536.a n = A071520 (n + 1)

end A071520

/-! ## A071520.P9864192134003739125

`∑[C(A321030(n+1), A321029(n+1))]`
-/

namespace A071520.P9864192134003739125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A321030 (n + 1)).toNat (A321029 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P9864192134003739125

namespace A071520

/-- `∑[C(A321030(n+1), A321029(n+1))]` -/
def P9864192134003739125.Spec : Prop :=
  ∀ n, (P9864192134003739125.a n : ℤ) = A071520 (n + 1)

end A071520

/-! ## A071520.P892411125692264090

`∑[A010054(A006530(2*(n+1)+3*(n+1))+1)]`
-/

namespace A071520.P892411125692264090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 (A006530 (2 * (n + 1) + 3 * (n + 1)) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P892411125692264090

namespace A071520

/-- `∑[A010054(A006530(2*(n+1)+3*(n+1))+1)]` -/
def P892411125692264090.Spec : Prop :=
  ∀ n, P892411125692264090.a n = A071520 (n + 1)

end A071520

/-! ## A071520.P13098131637650310574

`∑[C(A003979(n+1), A003981(n+1))]`
-/

namespace A071520.P13098131637650310574
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003979 (n + 1)).toNat (A003981 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P13098131637650310574

namespace A071520

/-- `∑[C(A003979(n+1), A003981(n+1))]` -/
def P13098131637650310574.Spec : Prop :=
  ∀ n, (P13098131637650310574.a n : ℤ) = A071520 (n + 1)

end A071520

/-! ## A071520.P17866739524248331880

`A301506(5*(n+1))`
-/

namespace A071520.P17866739524248331880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301506 (5 * (n + 1))

end

end A071520.P17866739524248331880

namespace A071520

/-- `A301506(5*(n+1))` -/
def P17866739524248331880.Spec : Prop :=
  ∀ n, P17866739524248331880.a n = A071520 (n + 1)

end A071520

/-! ## A071520.P6942384367018789190

`∑[A014698((2-A006530(n+1))²)]`
-/

namespace A071520.P6942384367018789190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014698 ((2 - A006530 (n + 1)) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071520.P6942384367018789190

namespace A071520

/-- `∑[A014698((2-A006530(n+1))²)]` -/
def P6942384367018789190.Spec : Prop :=
  ∀ n, P6942384367018789190.a n = A071520 (n + 1)

end A071520

/-!
# A071521: Number of 3-smooth numbers <= n.

The programs for A071521, the canonical program `A071521.P11592925929345367135` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071521 has offset 1).

The definition of A071521 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071521.P11592925929345367135

`∑{#}[n, A008683(6*(#+1))*floor((n+1)/(#+1))]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071521

/-- `∑{#}[n, A008683(6*(#+1))*floor((n+1)/(#+1))]` -/
def P11592925929345367135.Spec : Prop :=
  ∀ n, P11592925929345367135.a n = A071521 (n + 1)

theorem P11592925929345367135.correct : P11592925929345367135.Spec := by
  intro n
  simp only [A071521, Nat.add_sub_cancel]

end A071521

/-! ## A071521.P12574352510277425710

`∑[∏{p}[1+n, floor(3/#)]]`
-/

namespace A071521.P12574352510277425710
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), ⌊3 / (p : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P12574352510277425710

namespace A071521

/-- `∑[∏{p}[1+n, floor(3/#)]]` -/
def P12574352510277425710.Spec : Prop :=
  ∀ n, P12574352510277425710.a n = A071521 (n + 1)

end A071521

/-! ## A071521.P7902119611975655487

`∑[round(∏{p}[n+1, 2/#])]`
-/

namespace A071521.P7902119611975655487
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∏ p ∈ Nat.primeFactors (f2 n), 2 / (p : ℚ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P7902119611975655487

namespace A071521

/-- `∑[round(∏{p}[n+1, 2/#])]` -/
def P7902119611975655487.Spec : Prop :=
  ∀ n, P7902119611975655487.a n = A071521 (n + 1)

end A071521

/-! ## A071521.P1554388016173844281

`∑[C(2^val(n+1, 2), (n+1)/3^val(n+1, 3))]`
-/

namespace A071521.P1554388016173844281
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 ^ SequenceMachineLib.valuation (n + 1) 2) (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P1554388016173844281

namespace A071521

/-- `∑[C(2^val(n+1, 2), (n+1)/3^val(n+1, 3))]` -/
def P1554388016173844281.Spec : Prop :=
  ∀ n, (P1554388016173844281.a n : ℤ) = A071521 (n + 1)

end A071521

/-! ## A071521.P811848439922862547

`∑[val(3^(1+val(n+1, 3)), 3*(n+1)/2^val(n+1, 2))]`
-/

namespace A071521.P811848439922862547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (3 ^ (1 + SequenceMachineLib.valuation (n + 1) 3)) (SequenceMachineLib.roundAway ((3 * (n + 1) : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P811848439922862547

namespace A071521

/-- `∑[val(3^(1+val(n+1, 3)), 3*(n+1)/2^val(n+1, 2))]` -/
def P811848439922862547.Spec : Prop :=
  ∀ n, (P811848439922862547.a n : ℤ) = A071521 (n + 1)

end A071521

/-! ## A071521.P15551249020815465203

`∑[char[A230445(n)]]`
-/

namespace A071521.P15551249020815465203
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230445 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P15551249020815465203

namespace A071521

/-- `∑[char[A230445(n)]]` -/
def P15551249020815465203.Spec : Prop :=
  ∀ n, (P15551249020815465203.a n : ℤ) = A071521 (n + 1)

end A071521

/-! ## A071521.P4668125880215571536

`∑[A065333(n+1)]`
-/

namespace A071521.P4668125880215571536
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P4668125880215571536

namespace A071521

/-- `∑[A065333(n+1)]` -/
def P4668125880215571536.Spec : Prop :=
  ∀ n, P4668125880215571536.a n = A071521 (n + 1)

end A071521

/-! ## A071521.P10599296144919597985

`∑[char[A069353(n+1)]]`
-/

namespace A071521.P10599296144919597985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069353 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P10599296144919597985

namespace A071521

/-- `∑[char[A069353(n+1)]]` -/
def P10599296144919597985.Spec : Prop :=
  ∀ n, (P10599296144919597985.a n : ℤ) = A071521 (n + 1)

end A071521

/-! ## A071521.P6962944019090472052

`∑[char[A036561(n)-1]]`
-/

namespace A071521.P6962944019090472052
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036561 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P6962944019090472052

namespace A071521

/-- `∑[char[A036561(n)-1]]` -/
def P6962944019090472052.Spec : Prop :=
  ∀ n, (P6962944019090472052.a n : ℤ) = A071521 (n + 1)

end A071521

/-! ## A071521.P2370275791628063486

`∑[char[A175840(n)-1]]`
-/

namespace A071521.P2370275791628063486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175840 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P2370275791628063486

namespace A071521

/-- `∑[char[A175840(n)-1]]` -/
def P2370275791628063486.Spec : Prop :=
  ∀ n, (P2370275791628063486.a n : ℤ) = A071521 (n + 1)

end A071521

/-! ## A071521.P5671378393902107893

`∑[char[A247936(n)-1]]`
-/

namespace A071521.P5671378393902107893
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247936 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P5671378393902107893

namespace A071521

/-- `∑[char[A247936(n)-1]]` -/
def P5671378393902107893.Spec : Prop :=
  ∀ n, (P5671378393902107893.a n : ℤ) = A071521 (n + 1)

end A071521

/-! ## A071521.P2768796204599049967

`∑[A340363(3*(n+1))]`
-/

namespace A071521.P2768796204599049967
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340363 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P2768796204599049967

namespace A071521

/-- `∑[A340363(3*(n+1))]` -/
def P2768796204599049967.Spec : Prop :=
  ∀ n, P2768796204599049967.a n = A071521 (n + 1)

end A071521

/-! ## A071521.P10517334754166084218

`∑[A340373(3*(n+1))]`
-/

namespace A071521.P10517334754166084218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340373 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P10517334754166084218

namespace A071521

/-- `∑[A340373(3*(n+1))]` -/
def P10517334754166084218.Spec : Prop :=
  ∀ n, P10517334754166084218.a n = A071521 (n + 1)

end A071521

/-! ## A071521.P7001112129722514019

`∑[char[A003586(n+1)-1]]`
-/

namespace A071521.P7001112129722514019
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003586 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P7001112129722514019

namespace A071521

/-- `∑[char[A003586(n+1)-1]]` -/
def P7001112129722514019.Spec : Prop :=
  ∀ n, (P7001112129722514019.a n : ℤ) = A071521 (n + 1)

end A071521

/-! ## A071521.P10166846077294170608

`∑[char[lt[A006530(n+1), 4]]]`
-/

namespace A071521.P10166846077294170608
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P10166846077294170608

namespace A071521

/-- `∑[char[lt[A006530(n+1), 4]]]` -/
def P10166846077294170608.Spec : Prop :=
  ∀ n, (P10166846077294170608.a n : ℤ) = A071521 (n + 1)

end A071521

/-! ## A071521.P14058009022995603203

`∑[val(A006530(3*(n+1)), 3)]`
-/

namespace A071521.P14058009022995603203
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (3 * (n + 1))).toNat 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P14058009022995603203

namespace A071521

/-- `∑[val(A006530(3*(n+1)), 3)]` -/
def P14058009022995603203.Spec : Prop :=
  ∀ n, (P14058009022995603203.a n : ℤ) = A071521 (n + 1)

end A071521

/-! ## A071521.P15115815115870828789

`∑[A065332(n+1)/(n+1)]`
-/

namespace A071521.P15115815115870828789
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065332 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P15115815115870828789

namespace A071521

/-- `∑[A065332(n+1)/(n+1)]` -/
def P15115815115870828789.Spec : Prop :=
  ∀ n, P15115815115870828789.a n = (A071521 (n + 1) : ℚ)

end A071521

/-! ## A071521.P15285100612837598084

`∑[floor(acot(A117370(2*(n+1))))]`
-/

namespace A071521.P15285100612837598084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (A117370 (2 * (n + 1)) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P15285100612837598084

namespace A071521

/-- `∑[floor(acot(A117370(2*(n+1))))]` -/
def P15285100612837598084.Spec : Prop :=
  ∀ n, P15285100612837598084.a n = A071521 (n + 1)

end A071521

/-! ## A071521.P7609374383970375072

`∑[round(acot(A069897(2*(n+1))))]`
-/

namespace A071521.P7609374383970375072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (A069897 (2 * (n + 1)) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P7609374383970375072

namespace A071521

/-- `∑[round(acot(A069897(2*(n+1))))]` -/
def P7609374383970375072.Spec : Prop :=
  ∀ n, P7609374383970375072.a n = A071521 (n + 1)

end A071521

/-! ## A071521.P10002550955212311521

`∑[floor(3/A006530(2*(n+1)))]`
-/

namespace A071521.P10002550955212311521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊3 / (A006530 (2 * (n + 1)) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071521.P10002550955212311521

namespace A071521

/-- `∑[floor(3/A006530(2*(n+1)))]` -/
def P10002550955212311521.Spec : Prop :=
  ∀ n, P10002550955212311521.a n = A071521 (n + 1)

end A071521

/-!
# A071522: Numbers n such that x^n + x^(n-1) + x^(n-2) + ... + x + 1 is irreducible over GF(5).

The programs for A071522, there is no canonical definition to state claims against.
-/

/-! ## A071522.P13968515091660317076

`A019335(n+1)-1`
-/

namespace A071522.P13968515091660317076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019335 (n + 1) - 1

end

end A071522.P13968515091660317076

/-! ## A071522.P8959180977517544398

`A359833(A006005(n+4))+A019335(n+1)`
-/

namespace A071522.P8959180977517544398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359833 (A006005 (n + 4)).toNat + A019335 (n + 1)

end

end A071522.P8959180977517544398

/-! ## A071522.P5029091198826712203

`p?[A167793(n+1)]-1`
-/

namespace A071522.P5029091198826712203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A071522.P5029091198826712203

/-! ## A071522.P2181177107856675482

`∩[A003631(n+1), A167793(n+1)]-1`
-/

namespace A071522.P2181177107856675482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P2181177107856675482

/-! ## A071522.P11523018697850974294

`∩[A042993(n+1), A167793(n+1)]-1`
-/

namespace A071522.P11523018697850974294
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P11523018697850974294

/-! ## A071522.P2086860524967705488

`∩[A042986(n+1), A167793(n+1)]-1`
-/

namespace A071522.P2086860524967705488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042986 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P2086860524967705488

/-! ## A071522.P10410642722143801458

`A308077(A074473(2*(n+2)))+A019335(n+1)`
-/

namespace A071522.P10410642722143801458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308077 (A074473 (2 * (n + 2))).toNat + A019335 (n + 1)

end

end A071522.P10410642722143801458

/-! ## A071522.P1494560590953395766

`∩[A040179(n+1), A167793(n+1)]-1`
-/

namespace A071522.P1494560590953395766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040179 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P1494560590953395766

/-! ## A071522.P11545746415212736626

`∩[A040990(n+1), A167793(n+1)]-1`
-/

namespace A071522.P11545746415212736626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040990 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P11545746415212736626

/-! ## A071522.P12302649854705341139

`∩[A040970(n+1), A167793(n+1)]-1`
-/

namespace A071522.P12302649854705341139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040970 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P12302649854705341139

/-! ## A071522.P134361849981704462

`∩[A040972(n+1), A167793(n+1)]-1`
-/

namespace A071522.P134361849981704462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040972 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P134361849981704462

/-! ## A071522.P15627979745130756168

`∩[A040161(n+1), A167793(n+1)]-1`
-/

namespace A071522.P15627979745130756168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040161 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P15627979745130756168

/-! ## A071522.P13388914219864762344

`∩[A040169(n+1), A167793(n+1)]-1`
-/

namespace A071522.P13388914219864762344
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040169 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P13388914219864762344

/-! ## A071522.P7010909984840084776

`∩[A040159(n+1), A167793(n+1)]-1`
-/

namespace A071522.P7010909984840084776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040159 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P7010909984840084776

/-! ## A071522.P9693214964270807605

`∩[A040980(n+1), A167793(n+1)]-1`
-/

namespace A071522.P9693214964270807605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040980 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P9693214964270807605

/-! ## A071522.P2692391197781940403

`∩[A040982(n+1), A167793(n+1)]-1`
-/

namespace A071522.P2692391197781940403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040982 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P2692391197781940403

/-! ## A071522.P11023529124791576601

`∩[A040171(n+1), A167793(n+1)]-1`
-/

namespace A071522.P11023529124791576601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040171 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P11023529124791576601

/-! ## A071522.P3251013999417190279

`∩[A040165(n+1), A167793(n+1)]-1`
-/

namespace A071522.P3251013999417190279
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040165 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P3251013999417190279

/-! ## A071522.P3575583096331485847

`∩[A040978(n+1), A167793(n+1)]-1`
-/

namespace A071522.P3575583096331485847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040978 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P3575583096331485847

/-! ## A071522.P9012428114390252987

`∩[A040184(n+1), A167793(n+1)]-1`
-/

namespace A071522.P9012428114390252987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040184 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167793 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071522.P9012428114390252987

/-!
# A071523: Number of 11-smooth numbers <= n.

The programs for A071523, the canonical program `A071523.P13389231110135260503` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071523 has offset 1).

The definition of A071523 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071523.P7376027968424035543

`∑[∏{p}[n+1, round(sqrt(3/#))]]`
-/

namespace A071523.P7376027968424035543
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), SequenceMachineLib.roundAway (Real.sqrt (3 / (p : ℚ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071523.P7376027968424035543

namespace A071523

/-- `∑[∏{p}[n+1, round(sqrt(3/#))]]` -/
def P7376027968424035543.Spec : Prop :=
  ∀ n, P7376027968424035543.a n = A071523 (n + 1)

end A071523

/-! ## A071523.P16515858419908252733

`∑[char[A051038(n+1)-1]]`
-/

namespace A071523.P16515858419908252733
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051038 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071523.P16515858419908252733

namespace A071523

/-- `∑[char[A051038(n+1)-1]]` -/
def P16515858419908252733.Spec : Prop :=
  ∀ n, (P16515858419908252733.a n : ℤ) = A071523 (n + 1)

end A071523

/-! ## A071523.P10096557466072596259

`∑[char[lt[A061395(n+1), 6]]]`
-/

namespace A071523.P10096557466072596259
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071523.P10096557466072596259

namespace A071523

/-- `∑[char[lt[A061395(n+1), 6]]]` -/
def P10096557466072596259.Spec : Prop :=
  ∀ n, (P10096557466072596259.a n : ℤ) = A071523 (n + 1)

end A071523

/-! ## A071523.P162191680802422442

`∑[char[lt[A006530(n+1), 12]]]`
-/

namespace A071523.P162191680802422442
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071523.P162191680802422442

namespace A071523

/-- `∑[char[lt[A006530(n+1), 12]]]` -/
def P162191680802422442.Spec : Prop :=
  ∀ n, (P162191680802422442.a n : ℤ) = A071523 (n + 1)

end A071523

/-! ## A071523.P13389231110135260503

`∑[round(6/A006530(5*(n+1)))]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A071523

/-- `∑[round(6/A006530(5*(n+1)))]` -/
def P13389231110135260503.Spec : Prop :=
  ∀ n, P13389231110135260503.a n = A071523 (n + 1)

theorem P13389231110135260503.correct : P13389231110135260503.Spec := by
  intro n
  simp only [A071523, Nat.add_sub_cancel]

end A071523

/-! ## A071523.P1586352983747762005

`∑[floor(11/A006530(7*(n+1)))]`
-/

namespace A071523.P1586352983747762005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊11 / (A006530 (7 * (n + 1)) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071523.P1586352983747762005

namespace A071523

/-- `∑[floor(11/A006530(7*(n+1)))]` -/
def P1586352983747762005.Spec : Prop :=
  ∀ n, P1586352983747762005.a n = A071523 (n + 1)

end A071523

/-! ## A071523.P1485021930916456545

`∑[char[lt[n-A243291(n+1)+1, 6]]]`
-/

namespace A071523.P1485021930916456545
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A243291 (n + 1) + 1

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071523.P1485021930916456545

namespace A071523

/-- `∑[char[lt[n-A243291(n+1)+1, 6]]]` -/
def P1485021930916456545.Spec : Prop :=
  ∀ n, (P1485021930916456545.a n : ℤ) = A071523 (n + 1)

end A071523

/-! ## A071523.P9794042739688754993

`∑[A001221(ceil(13/A006530(n+1)))]`
-/

namespace A071523.P9794042739688754993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ⌈13 / (A006530 (n + 1) : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071523.P9794042739688754993

namespace A071523

/-- `∑[A001221(ceil(13/A006530(n+1)))]` -/
def P9794042739688754993.Spec : Prop :=
  ∀ n, P9794042739688754993.a n = A071523 (n + 1)

end A071523

/-! ## A071523.P14110758908806309516

`∑[A001222(ceil(13/A006530(n+1)))]`
-/

namespace A071523.P14110758908806309516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ⌈13 / (A006530 (n + 1) : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071523.P14110758908806309516

namespace A071523

/-- `∑[A001222(ceil(13/A006530(n+1)))]` -/
def P14110758908806309516.Spec : Prop :=
  ∀ n, P14110758908806309516.a n = A071523 (n + 1)

end A071523

/-! ## A071523.P9890714286227316885

`∑[val(A006530(11*(n+1)), 11)]`
-/

namespace A071523.P9890714286227316885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006530 (11 * (n + 1))).toNat 11

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071523.P9890714286227316885

namespace A071523

/-- `∑[val(A006530(11*(n+1)), 11)]` -/
def P9890714286227316885.Spec : Prop :=
  ∀ n, (P9890714286227316885.a n : ℤ) = A071523 (n + 1)

end A071523

/-!
# A071526: Numbers k such that j mod phi(j) < k mod phi(k) for any j < k.

The programs for A071526, there is no canonical definition to state claims against.
-/

/-! ## A071526.P8177333919774558307

`A234642(record[A068494(n+1)])`
-/

namespace A071526.P8177333919774558307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068494 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071526.P8177333919774558307

/-! ## A071526.P12397045938774978702

`A234642(record[(n+1)%A349137(2*n+1)])`
-/

namespace A071526.P12397045938774978702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A349137 (2 * n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071526.P12397045938774978702

/-! ## A071526.P15115039888881760786

`A234642(record[(2*n+1-n)%(A219428(n+1)-n)])`
-/

namespace A071526.P15115039888881760786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((2 * n + 1 : ℤ) - (n : ℤ)) (A219428 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234642 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071526.P15115039888881760786

/-! ## A071526.P539707259638581280

`record[gcd(A242883(n+1), A242883(n+4))]`
-/

namespace A071526.P539707259638581280
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A242883 (n + 1)) (A242883 (n + 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071526.P539707259638581280

/-! ## A071526.P3895450764870827953

`eq[A335225(n+1), A353269(n+1)]`
-/

namespace A071526.P3895450764870827953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335225 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353269 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071526.P3895450764870827953

/-!
# A071530: Numbers that are the sum of 3 triangular numbers in exactly 2 ways.

The programs for A071530, there is no canonical definition to state claims against.
-/

/-! ## A071530.P681565559990392538

`eq[2, A002636(n)]`
-/

namespace A071530.P681565559990392538
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002636 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071530.P681565559990392538

/-! ## A071530.P10714971769529525626

`eq[2, A000164(8*n+3)]`
-/

namespace A071530.P10714971769529525626
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071530.P10714971769529525626

/-! ## A071530.P11964985790858241687

`eq[2, A025427(8*n+3)]`
-/

namespace A071530.P11964985790858241687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025427 (8 * n + 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071530.P11964985790858241687

/-! ## A071530.P791170512449155942

`lt[A072480(A002636(n)²), 1]`
-/

namespace A071530.P791170512449155942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072480 (A002636 n ^ 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071530.P791170512449155942

/-! ## A071530.P16092125444960406122

`eq[4, A000164(A017101(n))²]`
-/

namespace A071530.P16092125444960406122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A017101 n).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071530.P16092125444960406122

/-!
# A071531: Smallest exponent r such that n^r contains at least one zero digit (in base 10).

The programs for A071531, there is no canonical definition to state claims against.
-/

/-! ## A071531.P11282782301114204420

`val(A305941(n+2), n+2)`
-/

namespace A071531.P11282782301114204420
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A305941 (n + 2)).toNat (n + 2)

end

end A071531.P11282782301114204420

/-!
# A071532: a(n) = (-1) * Sum_{k=1..n} (-1)^floor((3/2)^k).

The programs for A071532, the canonical program `A071532.P10723472939112800491` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071532 has offset 1).

The definition of A071532 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071532.P10723472939112800491

`∑[2*A072418(n+1)-1]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071532

/-- `∑[2*A072418(n+1)-1]` -/
def P10723472939112800491.Spec : Prop :=
  ∀ n, P10723472939112800491.a n = A071532 (n + 1)

theorem P10723472939112800491.correct : P10723472939112800491.Spec := by
  intro n
  simp only [A071532, Nat.add_sub_cancel]

end A071532

/-! ## A071532.P5604014134297054198

`A004273(∑[A072418(n+1)])-n`
-/

namespace A071532.P5604014134297054198
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A071532.P5604014134297054198

namespace A071532

/-- `A004273(∑[A072418(n+1)])-n` -/
def P5604014134297054198.Spec : Prop :=
  ∀ n, P5604014134297054198.a n = A071532 (n + 1)

end A071532

/-! ## A071532.P629715377039099056

`A004277(∑[A072418(n+1)])-(n+1)`
-/

namespace A071532.P629715377039099056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A071532.P629715377039099056

namespace A071532

/-- `A004277(∑[A072418(n+1)])-(n+1)` -/
def P629715377039099056.Spec : Prop :=
  ∀ n, P629715377039099056.a n = A071532 (n + 1)

end A071532

/-! ## A071532.P5810217986599411822

`A005843(∑[A072418(n+1)])-(n+1)`
-/

namespace A071532.P5810217986599411822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 1 : ℤ)

end

end A071532.P5810217986599411822

namespace A071532

/-- `A005843(∑[A072418(n+1)])-(n+1)` -/
def P5810217986599411822.Spec : Prop :=
  ∀ n, P5810217986599411822.a n = A071532 (n + 1)

end A071532

/-! ## A071532.P8010229267881916965

`A005408(∑[A072418(n+1)])-(n+2)`
-/

namespace A071532.P8010229267881916965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n + 2 : ℤ)

end

end A071532.P8010229267881916965

namespace A071532

/-- `A005408(∑[A072418(n+1)])-(n+2)` -/
def P8010229267881916965.Spec : Prop :=
  ∀ n, P8010229267881916965.a n = A071532 (n + 1)

end A071532

/-! ## A071532.P12594426612759057216

`∑[A033999(A242734(n+1))]+2`
-/

namespace A071532.P12594426612759057216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A242734 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A071532.P12594426612759057216

namespace A071532

/-- `∑[A033999(A242734(n+1))]+2` -/
def P12594426612759057216.Spec : Prop :=
  ∀ n, P12594426612759057216.a n = A071532 (n + 1)

end A071532

/-! ## A071532.P2936169431200891981

`A247328(∑[A002379(n+1)%2])-n`
-/

namespace A071532.P2936169431200891981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002379 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A071532.P2936169431200891981

namespace A071532

/-- `A247328(∑[A002379(n+1)%2])-n` -/
def P2936169431200891981.Spec : Prop :=
  ∀ n, P2936169431200891981.a n = A071532 (n + 1)

end A071532

/-! ## A071532.P3912140270137596100

`A247328(∑[and(1, A002379(n+1))])-n`
-/

namespace A071532.P3912140270137596100
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A002379 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247328 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - (n : ℤ)

end

end A071532.P3912140270137596100

namespace A071532

/-- `A247328(∑[and(1, A002379(n+1))])-n` -/
def P3912140270137596100.Spec : Prop :=
  ∀ n, P3912140270137596100.a n = A071532 (n + 1)

end A071532

/-! ## A071532.P8208151465134822979

`∑[A002804(n+1)-xor(1, A002804(n+1))]`
-/

namespace A071532.P8208151465134822979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002804 (n + 1) - Int.xor 1 (A002804 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071532.P8208151465134822979

namespace A071532

/-- `∑[A002804(n+1)-xor(1, A002804(n+1))]` -/
def P8208151465134822979.Spec : Prop :=
  ∀ n, P8208151465134822979.a n = A071532 (n + 1)

end A071532

/-!
# A071533: Determinant of n X n matrix of form [1 2 3 0 0 0 0 0 0 0 / 2 1 2 3 0 0 0 0 0 0 / 3 2 1 2 3 0 0 0 0 0 / 0 3 2 1 2 3 0 0 0 0 / 0 0 3 2 1 2 3 0 0 0 / 0 0 0 3 2 1 2 3 0 0 / 0 0 0 0 3 2 1 2 3 0 / 0 0 0 0 0 3 2 1 2 3 / 0 0 0 0 0 0 3 2 1 2 / 0 0 0 0 0 0 0 3 2 1].

The programs for A071533, there is no canonical definition to state claims against.
-/

/-! ## A071533.P1491799753346623526

`A083878(n)-A195860(A000716(n))`
-/

namespace A071533.P1491799753346623526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083878 n - A195860 (A000716 n).toNat

end

end A071533.P1491799753346623526

/-!
# A071534: Determinant of n X n matrix of form : [1 2 1 0 0 0 0 0 0 0 / 2 1 2 1 0 0 0 0 0 0 / 1 2 1 2 1 0 0 0 0 0 / 0 1 2 1 2 1 0 0 0 0 / 0 0 1 2 1 2 1 0 0 0 / 0 0 0 1 2 1 2 1 0 0 / 0 0 0 0 1 2 1 2 1 0 / 0 0 0 0 0 1 2 1 2 1 / 0 0 0 0 0 0 1 2 1 2 / 0 0 0 0 0 0 0 1 2 1].

The programs for A071534, the canonical program `A071534.P13346568896368500707` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071534 has offset 1).

The definition of A071534 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071534.P13346568896368500707

`ogf((1-3x+3x^2+x^4)/(1+3x^2-3x^3-x^5))`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071534

/-- `ogf((1-3x+3x^2+x^4)/(1+3x^2-3x^3-x^5))` -/
def P13346568896368500707.Spec : Prop :=
  ∀ n, P13346568896368500707.a n = A071534 (n + 1)

theorem P13346568896368500707.correct : P13346568896368500707.Spec := by
  intro n
  simp only [A071534, Nat.add_sub_cancel]

end A071534

/-!
# A071535: (-1)^(n+1) * Determinant of n X n matrix of form [1^2 2^2 3^2 4^2 5^2 / 2^2 1^2 2^2 3^2 4^2 / 3^2 2^2 1^2 2^2 3^2 / 4^2 3^2 2^2 1^2 2^2 / 5^2 4^2 3^2 2^2 1^2].

The programs for A071535, the canonical program `A071535.P8937540856175484874` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071535 has offset 1).

The definition of A071535 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071535.P11559358934218446463

`4^(n-1)*C(n+4, 3)+(n+4)*4^(n-1)*∑[∑[n]]`
-/

namespace A071535.P11559358934218446463
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 4) 3 : ℚ) + (n + 4 : ℚ) * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A071535.P11559358934218446463

namespace A071535

/-- `4^(n-1)*C(n+4, 3)+(n+4)*4^(n-1)*∑[∑[n]]` -/
def P11559358934218446463.Spec : Prop :=
  ∀ n, P11559358934218446463.a n = (A071535 (n + 1) : ℚ)

end A071535

/-! ## A071535.P8937540856175484874

`(A131577(n)+A082138(n))*A001792(n)`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071535

/-- `(A131577(n)+A082138(n))*A001792(n)` -/
def P8937540856175484874.Spec : Prop :=
  ∀ n, P8937540856175484874.a n = A071535 (n + 1)

theorem P8937540856175484874.correct : P8937540856175484874.Spec := by
  intro n
  simp only [A071535, Nat.add_sub_cancel]

end A071535

/-!
# A071536: Number of extensions to a semigroup of the (categorical) composition of arrows in the complete directed graph on n labeled nodes.

The programs for A071536, there is no canonical definition to state claims against.
-/

/-! ## A071536.P13222637154485031357

`49*a(n-1)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=3`
-/

namespace A071536.P13222637154485031357
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3, 3] fun n a =>
  49 * a (n - 1)

end

end A071536.P13222637154485031357

/-!
# A071538: Number of twin prime pairs (p, p+2) with p <= n.

The programs for A071538, the canonical program `A071538.P6551224478824605829` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071538 has offset 1).

The definition of A071538 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071538.P3717773508623450081

`∑[A353463(n+1)]`
-/

namespace A071538.P3717773508623450081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P3717773508623450081

namespace A071538

/-- `∑[A353463(n+1)]` -/
def P3717773508623450081.Spec : Prop :=
  ∀ n, P3717773508623450081.a n = A071538 (n + 1)

end A071538

/-! ## A071538.P288130737017769748

`∑[A353464(n+3)]`
-/

namespace A071538.P288130737017769748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353464 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P288130737017769748

namespace A071538

/-- `∑[A353464(n+3)]` -/
def P288130737017769748.Spec : Prop :=
  ∀ n, P288130737017769748.a n = A071538 (n + 1)

end A071538

/-! ## A071538.P6955812007749399404

`∑[char[A144834(1+n)]]`
-/

namespace A071538.P6955812007749399404
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144834 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P6955812007749399404

namespace A071538

/-- `∑[char[A144834(1+n)]]` -/
def P6955812007749399404.Spec : Prop :=
  ∀ n, (P6955812007749399404.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P3754214635450955230

`∑[char[A001359(n+1)-1]]`
-/

namespace A071538.P3754214635450955230
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P3754214635450955230

namespace A071538

/-- `∑[char[A001359(n+1)-1]]` -/
def P3754214635450955230.Spec : Prop :=
  ∀ n, (P3754214635450955230.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P10093861233530270154

`∑[char[A014574(n+1)-2]]`
-/

namespace A071538.P10093861233530270154
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P10093861233530270154

namespace A071538

/-- `∑[char[A014574(n+1)-2]]` -/
def P10093861233530270154.Spec : Prop :=
  ∀ n, (P10093861233530270154.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P11873638514792403025

`∑[val(n+1, A112823(n+2))]`
-/

namespace A071538.P11873638514792403025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) (A112823 (n + 2)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P11873638514792403025

namespace A071538

/-- `∑[val(n+1, A112823(n+2))]` -/
def P11873638514792403025.Spec : Prop :=
  ∀ n, (P11873638514792403025.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P3736998811213623678

`∑[char[p?[A040976(n+1)]-1]]`
-/

namespace A071538.P3736998811213623678
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P3736998811213623678

namespace A071538

/-- `∑[char[p?[A040976(n+1)]-1]]` -/
def P3736998811213623678.Spec : Prop :=
  ∀ n, (P3736998811213623678.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P4869559047646442990

`∑[char[A077800(2*n+1)-1]]`
-/

namespace A071538.P4869559047646442990
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077800 (2 * n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P4869559047646442990

namespace A071538

/-- `∑[char[A077800(2*n+1)-1]]` -/
def P4869559047646442990.Spec : Prop :=
  ∀ n, (P4869559047646442990.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P7436621463536832563

`∑[char[p?[A000040(n+1)-2]-1]]`
-/

namespace A071538.P7436621463536832563
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P7436621463536832563

namespace A071538

/-- `∑[char[p?[A000040(n+1)-2]-1]]` -/
def P7436621463536832563.Spec : Prop :=
  ∀ n, (P7436621463536832563.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P14478319126958432098

`∑[char[p?[A006530(n+1)-2]-1]]`
-/

namespace A071538.P14478319126958432098
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P14478319126958432098

namespace A071538

/-- `∑[char[p?[A006530(n+1)-2]-1]]` -/
def P14478319126958432098.Spec : Prop :=
  ∀ n, (P14478319126958432098.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P9238584787352501022

`∑[char[p?[A020639(n+2)-2]-1]]`
-/

namespace A071538.P9238584787352501022
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P9238584787352501022

namespace A071538

/-- `∑[char[p?[A020639(n+2)-2]-1]]` -/
def P9238584787352501022.Spec : Prop :=
  ∀ n, (P9238584787352501022.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P1108121497339838657

`∑[char[A000010(A001359(n+1))]]`
-/

namespace A071538.P1108121497339838657
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001359 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P1108121497339838657

namespace A071538

/-- `∑[char[A000010(A001359(n+1))]]` -/
def P1108121497339838657.Spec : Prop :=
  ∀ n, (P1108121497339838657.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P3270354554654837424

`∑[char[A000010(A108605(n+1))]]`
-/

namespace A071538.P3270354554654837424
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A108605 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P3270354554654837424

namespace A071538

/-- `∑[char[A000010(A108605(n+1))]]` -/
def P3270354554654837424.Spec : Prop :=
  ∀ n, (P3270354554654837424.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P13063656368608694329

`A071702(n+1)+A071701(n+1)`
-/

namespace A071538.P13063656368608694329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071702 (n + 1) + A071701 (n + 1)

end

end A071538.P13063656368608694329

namespace A071538

/-- `A071702(n+1)+A071701(n+1)` -/
def P13063656368608694329.Spec : Prop :=
  ∀ n, P13063656368608694329.a n = A071538 (n + 1)

theorem P13063656368608694329.correct : P13063656368608694329.Spec := by
  intro n
  simp only [A071538, Nat.add_sub_cancel, A071538.P13063656368608694329.a, A071538.P6551224478824605829.f1, A071538.P6551224478824605829.a, A010051, A010051.P2964579406648181973.f1, A010051.P2964579406648181973.a, A071701, A071701.P18388032048899093452.a, A071702, A071702.P15723999407089021494.f2, A071702.P15723999407089021494.f1, A071702.P15723999407089021494.a, A071699, A071699.P16239091930221922648.f1, A071699.P16239091930221922648.f2, A071699.P16239091930221922648.a, A006512, A006512.P8157243218962949380.a, A123079, A123079.P7689964899485436980.a, A001359, A001359.P8865495035699438537.a, A067829, A067829.P11035517801110487741.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A071538

/-! ## A071538.P12209683318697052761

`∑[char[A000010(A006512(n+1)-2)]]`
-/

namespace A071538.P12209683318697052761
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A006512 (n + 1) - 2).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P12209683318697052761

namespace A071538

/-- `∑[char[A000010(A006512(n+1)-2)]]` -/
def P12209683318697052761.Spec : Prop :=
  ∀ n, (P12209683318697052761.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P6551224478824605829

`∑[A010051(n+1)*A010051(n+3)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071538

/-- `∑[A010051(n+1)*A010051(n+3)]` -/
def P6551224478824605829.Spec : Prop :=
  ∀ n, P6551224478824605829.a n = A071538 (n + 1)

theorem P6551224478824605829.correct : P6551224478824605829.Spec := by
  intro n
  simp only [A071538, Nat.add_sub_cancel]

end A071538

/-! ## A071538.P2855161958845896090

`∑[char[eq[A000203(n+1), A000010(n+3)]]]`
-/

namespace A071538.P2855161958845896090
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 3)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P2855161958845896090

namespace A071538

/-- `∑[char[eq[A000203(n+1), A000010(n+3)]]]` -/
def P2855161958845896090.Spec : Prop :=
  ∀ n, (P2855161958845896090.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P1544784459336801329

`∑[val(A000203(A014963(n+1)), A000010(n+3))]`
-/

namespace A071538.P1544784459336801329
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000203 (A014963 (n + 1)).toNat).toNat (A000010 (n + 3)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P1544784459336801329

namespace A071538

/-- `∑[val(A000203(A014963(n+1)), A000010(n+3))]` -/
def P1544784459336801329.Spec : Prop :=
  ∀ n, (P1544784459336801329.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P6135160581052501337

`∑[char[eq[1, A047160(n+2)]]]`
-/

namespace A071538.P6135160581052501337
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047160 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P6135160581052501337

namespace A071538

/-- `∑[char[eq[1, A047160(n+2)]]]` -/
def P6135160581052501337.Spec : Prop :=
  ∀ n, (P6135160581052501337.a n : ℤ) = A071538 (n + 1)

end A071538

/-! ## A071538.P15876243979936605520

`∑[char[p?[A014963(n+2)-2]-1]]`
-/

namespace A071538.P15876243979936605520
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071538.P15876243979936605520

namespace A071538

/-- `∑[char[p?[A014963(n+2)-2]-1]]` -/
def P15876243979936605520.Spec : Prop :=
  ∀ n, (P15876243979936605520.a n : ℤ) = A071538 (n + 1)

end A071538

/-!
# A071539: Number of n-tuples of elements e_1,e_2,...,e_n in the symmetric group S_3 such that the subgroup generated by e_1,e_2,...,e_n is S_3.

The programs for A071539, the canonical program `A071539.P13656588960528907038` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071539 has offset 1).

The definition of A071539 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071539.P4260661182561396704

`ogf((18x-48x^2)/(1-12x+47x^2-72x^3+36x^4))`
-/

namespace A071539.P4260661182561396704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 18, -48] [1, -12, 47, -72, 36] n

end

end A071539.P4260661182561396704

namespace A071539

/-- `ogf((18x-48x^2)/(1-12x+47x^2-72x^3+36x^4))` -/
def P4260661182561396704.Spec : Prop :=
  ∀ n, P4260661182561396704.a n = A071539 (n + 1)

end A071539

/-! ## A071539.P13656588960528907038

`6^(n+1)-3*2^(n+1)-3^(n+1)+3`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071539

/-- `6^(n+1)-3*2^(n+1)-3^(n+1)+3` -/
def P13656588960528907038.Spec : Prop :=
  ∀ n, P13656588960528907038.a n = A071539 (n + 1)

theorem P13656588960528907038.correct : P13656588960528907038.Spec := by
  intro n
  simp only [A071539, Nat.add_sub_cancel]

end A071539

/-! ## A071539.P7639303687221877459

`lcm(3^n-1, ∑[A007283(n)])`
-/

namespace A071539.P7639303687221877459
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((3 ^ n : ℤ) - 1) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071539.P7639303687221877459

namespace A071539

/-- `lcm(3^n-1, ∑[A007283(n)])` -/
def P7639303687221877459.Spec : Prop :=
  ∀ n, (P7639303687221877459.a n : ℤ) = A071539 (n + 1)

end A071539

/-! ## A071539.P17765363447729736466

`∑[A007283(n)]*A024023(n)`
-/

namespace A071539.P17765363447729736466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007283 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A024023 n

end

end A071539.P17765363447729736466

namespace A071539

/-- `∑[A007283(n)]*A024023(n)` -/
def P17765363447729736466.Spec : Prop :=
  ∀ n, P17765363447729736466.a n = A071539 (n + 1)

end A071539

/-! ## A071539.P9215379523485871976

`A024023(n)*A068156(n+1)`
-/

namespace A071539.P9215379523485871976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024023 n * A068156 (n + 1)

end

end A071539.P9215379523485871976

namespace A071539

/-- `A024023(n)*A068156(n+1)` -/
def P9215379523485871976.Spec : Prop :=
  ∀ n, P9215379523485871976.a n = A071539 (n + 1)

end A071539

/-! ## A071539.P17694905143421120276

`A029858(n+1)*A134067(n)`
-/

namespace A071539.P17694905143421120276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) * A134067 n

end

end A071539.P17694905143421120276

namespace A071539

/-- `A029858(n+1)*A134067(n)` -/
def P17694905143421120276.Spec : Prop :=
  ∀ n, P17694905143421120276.a n = A071539 (n + 1)

end A071539

/-! ## A071539.P5945819898427251564

`A000225(n+1)*A058809(n+1)`
-/

namespace A071539.P5945819898427251564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 (n + 1) * A058809 (n + 1)

end

end A071539.P5945819898427251564

namespace A071539

/-- `A000225(n+1)*A058809(n+1)` -/
def P5945819898427251564.Spec : Prop :=
  ∀ n, P5945819898427251564.a n = A071539 (n + 1)

end A071539

/-! ## A071539.P940758288146724905

`A029858(n+1)*A307457(n+1)`
-/

namespace A071539.P940758288146724905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) * A307457 (n + 1)

end

end A071539.P940758288146724905

namespace A071539

/-- `A029858(n+1)*A307457(n+1)` -/
def P940758288146724905.Spec : Prop :=
  ∀ n, P940758288146724905.a n = A071539 (n + 1)

end A071539

/-! ## A071539.P14025733825717451499

`A000918(n+2)*A029858(n+1)`
-/

namespace A071539.P14025733825717451499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000918 (n + 2) * A029858 (n + 1)

end

end A071539.P14025733825717451499

namespace A071539

/-- `A000918(n+2)*A029858(n+1)` -/
def P14025733825717451499.Spec : Prop :=
  ∀ n, P14025733825717451499.a n = A071539 (n + 1)

end A071539

/-! ## A071539.P4104116977120760104

`A027383(2*n+1)*A029858(n+1)`
-/

namespace A071539.P4104116977120760104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027383 (2 * n + 1) * A029858 (n + 1)

end

end A071539.P4104116977120760104

namespace A071539

/-- `A027383(2*n+1)*A029858(n+1)` -/
def P4104116977120760104.Spec : Prop :=
  ∀ n, P4104116977120760104.a n = A071539 (n + 1)

end A071539

/-! ## A071539.P18082097210654664020

`A029858(n+1)*A075427(2*n+1)`
-/

namespace A071539.P18082097210654664020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029858 (n + 1) * A075427 (2 * n + 1)

end

end A071539.P18082097210654664020

namespace A071539

/-- `A029858(n+1)*A075427(2*n+1)` -/
def P18082097210654664020.Spec : Prop :=
  ∀ n, P18082097210654664020.a n = A071539 (n + 1)

end A071539

/-! ## A071539.P6949541671517857572

`(A000225(n+1)+A000225(n+1))*A029858(n+1)`
-/

namespace A071539.P6949541671517857572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (n + 1) + A000225 (n + 1)) * A029858 (n + 1)

end

end A071539.P6949541671517857572

namespace A071539

/-- `(A000225(n+1)+A000225(n+1))*A029858(n+1)` -/
def P6949541671517857572.Spec : Prop :=
  ∀ n, P6949541671517857572.a n = A071539 (n + 1)

end A071539

/-!
# A071540: Number of k's less than or equal to 10^n such that there are no middle divisors of k (A071561).

The programs for A071540, there is no canonical definition to state claims against.
-/

/-! ## A071540.P8019765526263620277

`10^(n+1)-A071541(n+1)`
-/

namespace A071540.P8019765526263620277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A071541 (n + 1)

end

end A071540.P8019765526263620277

/-!
# A071541: Number of k's less than or equal to 10^n such that there are middle divisors of k (A071562).

The programs for A071541, there is no canonical definition to state claims against.
-/

/-! ## A071541.P6247720147760635404

`10^(n+1)-A071540(n+1)`
-/

namespace A071541.P6247720147760635404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 ^ (n + 1) : ℤ) - A071540 (n + 1)

end

end A071541.P6247720147760635404

/-!
# A071542: Number of steps to reach 0 starting with n and using the iterated process : x -> x - (number of 1's in binary representation of x).

The programs for A071542, the canonical program `A071542.P16885098736669888413` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071542 has offset 0).

The definition of A071542 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071542.P16885098736669888413

`1+a(n-A000120(n))` with `a(0)=0`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071542

/-- `1+a(n-A000120(n))` -/
def P16885098736669888413.Spec : Prop :=
  ∀ n, (P16885098736669888413.a n : ℤ) = A071542 n

theorem P16885098736669888413.correct : P16885098736669888413.Spec := by
  intro n
  simp only [A071542]

end A071542

/-! ## A071542.P7475309599235127175

`∑[char[∑[A086876(n)]]]`
-/

namespace A071542.P7475309599235127175
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086876 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071542.P7475309599235127175

namespace A071542

/-- `∑[char[∑[A086876(n)]]]` -/
def P7475309599235127175.Spec : Prop :=
  ∀ n, (P7475309599235127175.a n : ℤ) = A071542 n

end A071542

/-! ## A071542.P757842115832045753

`1+a(A011371(n))` with `a(0)=0`
-/

namespace A071542.P757842115832045753
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A011371 n).toNat

end

end A071542.P757842115832045753

namespace A071542

/-- `1+a(A011371(n))` -/
def P757842115832045753.Spec : Prop :=
  ∀ n, (P757842115832045753.a n : ℤ) = A071542 n

end A071542

/-! ## A071542.P18205299272132512361

`∑[char[1+A173601(n)]]`
-/

namespace A071542.P18205299272132512361
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A173601 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071542.P18205299272132512361

namespace A071542

/-- `∑[char[1+A173601(n)]]` -/
def P18205299272132512361.Spec : Prop :=
  ∀ n, (P18205299272132512361.a n : ℤ) = A071542 n

end A071542

/-! ## A071542.P8791468574573669612

`∑[char[A213708(n+1)]]`
-/

namespace A071542.P8791468574573669612
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213708 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071542.P8791468574573669612

namespace A071542

/-- `∑[char[A213708(n+1)]]` -/
def P8791468574573669612.Spec : Prop :=
  ∀ n, (P8791468574573669612.a n : ℤ) = A071542 n

end A071542

/-! ## A071542.P286536682213209527

`∑[char[A213708(n)]]-1`
-/

namespace A071542.P286536682213209527
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213708 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A071542.P286536682213209527

namespace A071542

/-- `∑[char[A213708(n)]]-1` -/
def P286536682213209527.Spec : Prop :=
  ∀ n, P286536682213209527.a n = A071542 n

end A071542

/-! ## A071542.P1093869656795497663

`a(A005187(n)-n)+1` with `a(0)=0`
-/

namespace A071542.P1093869656795497663
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A005187 n - (n : ℤ)).toNat + 1

end

end A071542.P1093869656795497663

namespace A071542

/-- `a(A005187(n)-n)+1` -/
def P1093869656795497663.Spec : Prop :=
  ∀ n, (P1093869656795497663.a n : ℤ) = A071542 n

end A071542

/-! ## A071542.P5563670230119202171

`∑[char[A046699(a(n-1)+1)+A046699(a(n-1)+1)]]` with `a(0)=1`
-/

namespace A071542.P5563670230119202171
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A046699 (f2 (n - 1) + 1).toNat + A046699 (f2 (n - 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071542.P5563670230119202171

namespace A071542

/-- `∑[char[A046699(a(n-1)+1)+A046699(a(n-1)+1)]]` -/
def P5563670230119202171.Spec : Prop :=
  ∀ n, (P5563670230119202171.a n : ℤ) = A071542 n

end A071542

/-! ## A071542.P4988139890098838303

`a(n-A005811(A341916(n)))+1` with `a(0)=0`
-/

namespace A071542.P4988139890098838303
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A005811 (A341916 n).toNat).toNat + 1

end

end A071542.P4988139890098838303

namespace A071542

/-- `a(n-A005811(A341916(n)))+1` -/
def P4988139890098838303.Spec : Prop :=
  ∀ n, (P4988139890098838303.a n : ℤ) = A071542 n

end A071542

/-! ## A071542.P16360273837493679937

`a(n-A001222(A278222(n)))+1` with `a(0)=0`
-/

namespace A071542.P16360273837493679937
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A001222 (A278222 n).toNat).toNat + 1

end

end A071542.P16360273837493679937

namespace A071542

/-- `a(n-A001222(A278222(n)))+1` -/
def P16360273837493679937.Spec : Prop :=
  ∀ n, (P16360273837493679937.a n : ℤ) = A071542 n

end A071542

/-! ## A071542.P17339591920385951327

`a(val(n!, 2))+1` with `a(0)=0`
-/

namespace A071542.P17339591920385951327
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.valuation (Nat.factorial n) 2) + 1

end

end A071542.P17339591920385951327

namespace A071542

/-- `a(val(n!, 2))+1` -/
def P17339591920385951327.Spec : Prop :=
  ∀ n, (P17339591920385951327.a n : ℤ) = A071542 n

end A071542

/-!
# A071543: a(n) = det M_n where M_n is the n X n matrix m(i,j) = prime(i+j); a(0) = 1 by convention.

The programs for A071543, there is no canonical definition to state claims against.
-/

/-! ## A071543.P10992869155643181950

`A350200(∑[n+2]-1)`
-/

namespace A071543.P10992869155643181950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350200 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A071543.P10992869155643181950

/-! ## A071543.P12392372459324757906

`A350200(A034856(n+1))+A025466(n)`
-/

namespace A071543.P12392372459324757906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350200 (A034856 (n + 1)).toNat + A025466 n

end

end A071543.P12392372459324757906

/-! ## A071543.P6898729285409937356

`A350200(A034856(n+1))+A084904(n)`
-/

namespace A071543.P6898729285409937356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350200 (A034856 (n + 1)).toNat + A084904 n

end

end A071543.P6898729285409937356

/-! ## A071543.P5531783764242195866

`A350200(A034856(n+1))+A102683(n)`
-/

namespace A071543.P5531783764242195866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350200 (A034856 (n + 1)).toNat + A102683 n

end

end A071543.P5531783764242195866

/-! ## A071543.P12299585382724512543

`A350200(A034856(n+1))-A326632(n)`
-/

namespace A071543.P12299585382724512543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350200 (A034856 (n + 1)).toNat - A326632 n

end

end A071543.P12299585382724512543

/-!
# A071546: Smallest integer > 1 of the form (k^2+1)/(n^2+1).

The programs for A071546, there is no canonical definition to state claims against.
-/

/-! ## A071546.P2655656287735023894

`(A065876(n+1)²+1)/((n+1)²+1)`
-/

namespace A071546.P2655656287735023894
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065876 (n + 1) ^ 2 + 1 : ℚ) / ((n + 1) ^ 2 + 1 : ℚ)

end

end A071546.P2655656287735023894

/-! ## A071546.P15952040389272745422

`A002522(A065876(n+1))/A002522(n+1)`
-/

namespace A071546.P15952040389272745422
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002522 (A065876 (n + 1)).toNat : ℚ) / (A002522 (n + 1) : ℚ)

end

end A071546.P15952040389272745422

/-! ## A071546.P10125664317086717864

`A261969(lcm(5, (n²+1)²))`
-/

namespace A071546.P10125664317086717864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261969 (Nat.lcm 5 ((n ^ 2 + 1) ^ 2))

end

end A071546.P10125664317086717864

/-!
# A071549: a(n) = (7n)!/n!^7.

The programs for A071549, there is no canonical definition to state claims against.
-/

/-! ## A071549.P6905730413957727346

`A187783(eq[8, A002260(n+1)])`
-/

namespace A071549.P6905730413957727346
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071549.P6905730413957727346

/-! ## A071549.P14417871838560106162

`A089759(A055999(n+5)-2)`
-/

namespace A071549.P14417871838560106162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089759 (A055999 (n + 5) - 2).toNat

end

end A071549.P14417871838560106162

/-!
# A071550: a(n) = (8n)!/n!^8.

The programs for A071550, there is no canonical definition to state claims against.
-/

/-! ## A071550.P2380113394633962771

`A008977(2*n)*A186420(n)`
-/

namespace A071550.P2380113394633962771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008977 (2 * n) * A186420 n

end

end A071550.P2380113394633962771

/-! ## A071550.P10130188799735468085

`A187783(eq[8, A144328(n+1)])`
-/

namespace A071550.P10130188799735468085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071550.P10130188799735468085

/-!
# A071551: a(n) = (9n)!/n!^9.

The programs for A071551, there is no canonical definition to state claims against.
-/

/-! ## A071551.P18162533015929279570

`A187783(A000124(n+9)+8)`
-/

namespace A071551.P18162533015929279570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (A000124 (n + 9) + 8).toNat

end

end A071551.P18162533015929279570

/-! ## A071551.P13544152446653847635

`A187783(eq[9, A144328(n+1)])`
-/

namespace A071551.P13544152446653847635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A071551.P13544152446653847635

/-!
# A071552: a(n) = (10n)!/n!^10.

The programs for A071552, there is no canonical definition to state claims against.
-/

/-! ## A071552.P16303181816380168591

`A187783(eq[9, A144328(n+1)]+n+11)`
-/

namespace A071552.P16303181816380168591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144328 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187783 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + n + 11)

end

end A071552.P16303181816380168591

/-!
# A071553: Least x greater than 1 such that x^n == 1 (mod i) for each i=1,2,3,...,n.

The programs for A071553, there is no canonical definition to state claims against.
-/

/-! ## A071553.P194991998695556549

`A006530(A089431(n)+A000108(n))`
-/

namespace A071553.P194991998695556549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A089431 n + A000108 n).toNat

end

end A071553.P194991998695556549

/-!
# A071554: Smallest x > 1 such that x^prime(n) == 1 mod(prime(i)) 2<=i<=n.

The programs for A071554, the canonical program `A071554.P6297629732204208795` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071554 has offset 2).

The definition of A071554 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071554.P6297629732204208795

`1/2*(A006862(n+2)+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071554

/-- `1/2*(A006862(n+2)+1)` -/
def P6297629732204208795.Spec : Prop :=
  ∀ n, P6297629732204208795.a n = (A071554 (n + 2) : ℚ)

end A071554

/-! ## A071554.P36511297392925943

`∏[p?[Δ[n²]]]+1`
-/

namespace A071554.P36511297392925943
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071554.P36511297392925943

namespace A071554

/-- `∏[p?[Δ[n²]]]+1` -/
def P36511297392925943.Spec : Prop :=
  ∀ n, P36511297392925943.a n = A071554 (n + 2)

end A071554

/-! ## A071554.P9542784818891149215

`A135249(n+2)`
-/

namespace A071554.P9542784818891149215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135249 (n + 2)

end

end A071554.P9542784818891149215

namespace A071554

/-- `A135249(n+2)` -/
def P9542784818891149215.Spec : Prop :=
  ∀ n, P9542784818891149215.a n = A071554 (n + 2)

end A071554

/-! ## A071554.P3524911250438036910

`record[A370135(n+2)]`
-/

namespace A071554.P3524911250438036910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370135 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071554.P3524911250438036910

namespace A071554

/-- `record[A370135(n+2)]` -/
def P3524911250438036910.Spec : Prop :=
  ∀ n, P3524911250438036910.a n = A071554 (n + 2)

end A071554

/-! ## A071554.P15116686823444574333

`A070826(n+2)+1`
-/

namespace A071554.P15116686823444574333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070826 (n + 2) + 1

end

end A071554.P15116686823444574333

namespace A071554

/-- `A070826(n+2)+1` -/
def P15116686823444574333.Spec : Prop :=
  ∀ n, P15116686823444574333.a n = A071554 (n + 2)

end A071554

/-! ## A071554.P5184861103574680107

`A240803(n+1)-1`
-/

namespace A071554.P5184861103574680107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240803 (n + 1) - 1

end

end A071554.P5184861103574680107

namespace A071554

/-- `A240803(n+1)-1` -/
def P5184861103574680107.Spec : Prop :=
  ∀ n, P5184861103574680107.a n = A071554 (n + 2)

end A071554

/-! ## A071554.P10301988928016524272

`A240804(n+1)+3`
-/

namespace A071554.P10301988928016524272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240804 (n + 1) + 3

end

end A071554.P10301988928016524272

namespace A071554

/-- `A240804(n+1)+3` -/
def P10301988928016524272.Spec : Prop :=
  ∀ n, P10301988928016524272.a n = A071554 (n + 2)

end A071554

/-! ## A071554.P11927567614343999533

`A370135(∑[n+1]+1)`
-/

namespace A071554.P11927567614343999533
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370135 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A071554.P11927567614343999533

namespace A071554

/-- `A370135(∑[n+1]+1)` -/
def P11927567614343999533.Spec : Prop :=
  ∀ n, P11927567614343999533.a n = A071554 (n + 2)

end A071554

/-! ## A071554.P16221344588877239403

`∏[A065091(n+1)]+1`
-/

namespace A071554.P16221344588877239403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071554.P16221344588877239403

namespace A071554

/-- `∏[A065091(n+1)]+1` -/
def P16221344588877239403.Spec : Prop :=
  ∀ n, P16221344588877239403.a n = A071554 (n + 2)

end A071554

/-! ## A071554.P9656513848610458585

`∏[A000040(n+2)]+1`
-/

namespace A071554.P9656513848610458585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071554.P9656513848610458585

namespace A071554

/-- `∏[A000040(n+2)]+1` -/
def P9656513848610458585.Spec : Prop :=
  ∀ n, P9656513848610458585.a n = A071554 (n + 2)

end A071554

/-!
# A071555: Smallest x > 1 such that x^prime(n) == 1 mod(prime(i)) 3<=i<=n.

The programs for A071555, the canonical program `A071555.P10545301006804963414` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071555 has offset 3).

The definition of A071555 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071555.P10545301006804963414

`1+A002110(n+3)/6`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071555

/-- `1+A002110(n+3)/6` -/
def P10545301006804963414.Spec : Prop :=
  ∀ n, P10545301006804963414.a n = (A071555 (n + 3) : ℚ)

end A071555

/-! ## A071555.P10726880452594960709

`∏[p?[2*n+5]]+1`
-/

namespace A071555.P10726880452594960709
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 5

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071555.P10726880452594960709

namespace A071555

/-- `∏[p?[2*n+5]]+1` -/
def P10726880452594960709.Spec : Prop :=
  ∀ n, (P10726880452594960709.a n : ℤ) = A071555 (n + 3)

end A071555

/-! ## A071555.P780167895787795396

`∏[A215848(n+1)]+1`
-/

namespace A071555.P780167895787795396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071555.P780167895787795396

namespace A071555

/-- `∏[A215848(n+1)]+1` -/
def P780167895787795396.Spec : Prop :=
  ∀ n, P780167895787795396.a n = A071555 (n + 3)

end A071555

/-! ## A071555.P10842591530423912893

`∏[A045344(n+2)]+1`
-/

namespace A071555.P10842591530423912893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071555.P10842591530423912893

namespace A071555

/-- `∏[A045344(n+2)]+1` -/
def P10842591530423912893.Spec : Prop :=
  ∀ n, P10842591530423912893.a n = A071555 (n + 3)

end A071555

/-! ## A071555.P209782608371591843

`∏[A065091(n+2)]+1`
-/

namespace A071555.P209782608371591843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071555.P209782608371591843

namespace A071555

/-- `∏[A065091(n+2)]+1` -/
def P209782608371591843.Spec : Prop :=
  ∀ n, P209782608371591843.a n = A071555 (n + 3)

end A071555

/-! ## A071555.P6359632352518460072

`∏[A000040(n+3)]+1`
-/

namespace A071555.P6359632352518460072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071555.P6359632352518460072

namespace A071555

/-- `∏[A000040(n+3)]+1` -/
def P6359632352518460072.Spec : Prop :=
  ∀ n, P6359632352518460072.a n = A071555 (n + 3)

end A071555

/-! ## A071555.P16525527027257704706

`∏[A015919(n+4)]+1`
-/

namespace A071555.P16525527027257704706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071555.P16525527027257704706

namespace A071555

/-- `∏[A015919(n+4)]+1` -/
def P16525527027257704706.Spec : Prop :=
  ∀ n, P16525527027257704706.a n = A071555 (n + 3)

end A071555

/-! ## A071555.P9254100595350218529

`A370135(A167614(n+1)-1)`
-/

namespace A071555.P9254100595350218529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370135 (A167614 (n + 1) - 1).toNat

end

end A071555.P9254100595350218529

namespace A071555

/-- `A370135(A167614(n+1)-1)` -/
def P9254100595350218529.Spec : Prop :=
  ∀ n, P9254100595350218529.a n = A071555 (n + 3)

end A071555

/-!
# A071556: Smallest x > 1 such that x^prime(n) == 1 mod(prime(i)) 4<=i<=n.

The programs for A071556, the canonical program `A071556.P8477878609162426221` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071556 has offset 4).

The definition of A071556 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071556.P8477878609162426221

`1+A002110(n+4)/30`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071556

/-- `1+A002110(n+4)/30` -/
def P8477878609162426221.Spec : Prop :=
  ∀ n, P8477878609162426221.a n = (A071556 (n + 4) : ℚ)

end A071556

/-! ## A071556.P6612351931820961639

`∏[p?[2*n+7]]+1`
-/

namespace A071556.P6612351931820961639
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 7

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071556.P6612351931820961639

namespace A071556

/-- `∏[p?[2*n+7]]+1` -/
def P6612351931820961639.Spec : Prop :=
  ∀ n, (P6612351931820961639.a n : ℤ) = A071556 (n + 4)

end A071556

/-! ## A071556.P10039381961862347498

`∏[A090417(n+1)]+1`
-/

namespace A071556.P10039381961862347498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090417 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071556.P10039381961862347498

namespace A071556

/-- `∏[A090417(n+1)]+1` -/
def P10039381961862347498.Spec : Prop :=
  ∀ n, P10039381961862347498.a n = A071556 (n + 4)

end A071556

/-! ## A071556.P5101023493809470509

`∏[A065091(n+3)]+1`
-/

namespace A071556.P5101023493809470509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071556.P5101023493809470509

namespace A071556

/-- `∏[A065091(n+3)]+1` -/
def P5101023493809470509.Spec : Prop :=
  ∀ n, P5101023493809470509.a n = A071556 (n + 4)

end A071556

/-! ## A071556.P5985949057548534445

`∏[A000040(n+4)]+1`
-/

namespace A071556.P5985949057548534445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071556.P5985949057548534445

namespace A071556

/-- `∏[A000040(n+4)]+1` -/
def P5985949057548534445.Spec : Prop :=
  ∀ n, P5985949057548534445.a n = A071556 (n + 4)

end A071556

/-! ## A071556.P13768460368928765479

`∏[A006005(n+4)]+1`
-/

namespace A071556.P13768460368928765479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071556.P13768460368928765479

namespace A071556

/-- `∏[A006005(n+4)]+1` -/
def P13768460368928765479.Spec : Prop :=
  ∀ n, P13768460368928765479.a n = A071556 (n + 4)

end A071556

/-! ## A071556.P12080369446677738846

`∏[record[A006530(n+7)]]+1`
-/

namespace A071556.P12080369446677738846
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071556.P12080369446677738846

namespace A071556

/-- `∏[record[A006530(n+7)]]+1` -/
def P12080369446677738846.Spec : Prop :=
  ∀ n, P12080369446677738846.a n = A071556 (n + 4)

end A071556

/-! ## A071556.P3084363670100355201

`∏[record[A020639(n+7)]]+1`
-/

namespace A071556.P3084363670100355201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j + 1

end

end A071556.P3084363670100355201

namespace A071556

/-- `∏[record[A020639(n+7)]]+1` -/
def P3084363670100355201.Spec : Prop :=
  ∀ n, P3084363670100355201.a n = A071556 (n + 4)

end A071556

/-! ## A071556.P17032147688149059456

`A370135(A167614(n+2))`
-/

namespace A071556.P17032147688149059456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370135 (A167614 (n + 2)).toNat

end

end A071556.P17032147688149059456

namespace A071556

/-- `A370135(A167614(n+2))` -/
def P17032147688149059456.Spec : Prop :=
  ∀ n, P17032147688149059456.a n = A071556 (n + 4)

end A071556

/-!
# A071557: Numbers k such that A065876(k) = k^2-k+1.

The programs for A071557, the canonical program `A071557.P9922815785651542708` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071557 has offset 1).

The definition of A071557 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1302 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071557.P7584914289585715

`ceil(sqrt(A300164(1+n)-2))`
-/

namespace A071557.P7584914289585715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A300164 (1 + n) - 2 : ℝ)⌉

end

end A071557.P7584914289585715

namespace A071557

/-- `ceil(sqrt(A300164(1+n)-2))` -/
def P7584914289585715.Spec : Prop :=
  ∀ n, P7584914289585715.a n = A071557 (n + 1)

end A071557

/-! ## A071557.P13510553766112873961

`eq[A002061(n), A065876(n)]`
-/

namespace A071557.P13510553766112873961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002061 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065876 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071557.P13510553766112873961

namespace A071557

/-- `eq[A002061(n), A065876(n)]` -/
def P13510553766112873961.Spec : Prop :=
  ∀ n, (P13510553766112873961.a n : ℤ) = A071557 (n + 1)

end A071557

/-! ## A071557.P848161283975536419

`A300164(n+1)%record[A065876(n)]`
-/

namespace A071557.P848161283975536419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065876 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A300164 (n + 1)) (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A071557.P848161283975536419

namespace A071557

/-- `A300164(n+1)%record[A065876(n)]` -/
def P848161283975536419.Spec : Prop :=
  ∀ n, P848161283975536419.a n = A071557 (n + 1)

end A071557

/-! ## A071557.P4386732560893269695

`round(sqrt(A300164(n+1)-A029837(n+3)))`
-/

namespace A071557.P4386732560893269695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A300164 (n + 1) - A029837 (n + 3) : ℝ))

end

end A071557.P4386732560893269695

namespace A071557

/-- `round(sqrt(A300164(n+1)-A029837(n+3)))` -/
def P4386732560893269695.Spec : Prop :=
  ∀ n, P4386732560893269695.a n = A071557 (n + 1)

end A071557

/-! ## A071557.P3586872430852608206

`round(sqrt(A300164(n+1)-A237593(n+3)))`
-/

namespace A071557.P3586872430852608206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A300164 (n + 1) - A237593 (n + 3) : ℝ))

end

end A071557.P3586872430852608206

namespace A071557

/-- `round(sqrt(A300164(n+1)-A237593(n+3)))` -/
def P3586872430852608206.Spec : Prop :=
  ∀ n, P3586872430852608206.a n = A071557 (n + 1)

end A071557

/-! ## A071557.P9922815785651542708

`eq[A000034(n), A128428(A000007(n)+n)]`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071557

/-- `eq[A000034(n), A128428(A000007(n)+n)]` -/
def P9922815785651542708.Spec : Prop :=
  ∀ n, (P9922815785651542708.a n : ℤ) = A071557 (n + 1)

theorem P9922815785651542708.correct : P9922815785651542708.Spec := by
  intro n
  simp only [A071557, Nat.add_sub_cancel]

end A071557

/-! ## A071557.P14129932395293065603

`lt[A281116(a(A354110(n²+1))+18), 2]` with `a(0)=0, a(1)=5`
-/

namespace A071557.P14129932395293065603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 5] fun n f1 =>
  A281116 (f1 (A354110 (n ^ 2 + 1)).toNat + 18).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071557.P14129932395293065603

namespace A071557

/-- `lt[A281116(a(A354110(n²+1))+18), 2]` -/
def P14129932395293065603.Spec : Prop :=
  ∀ n, (P14129932395293065603.a n : ℤ) = A071557 (n + 1)

end A071557

/-! ## A071557.P10030838068368197124

`eq[2, A001221(2*((A000038(n)+n)²+1))]`
-/

namespace A071557.P10030838068368197124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (2 * ((A000038 n + (n : ℤ)) ^ 2 + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071557.P10030838068368197124

namespace A071557

/-- `eq[2, A001221(2*((A000038(n)+n)²+1))]` -/
def P10030838068368197124.Spec : Prop :=
  ∀ n, (P10030838068368197124.a n : ℤ) = A071557 (n + 1)

end A071557

/-! ## A071557.P8008387626157527076

`record[2*n/A001221(4*(n²+1))]`
-/

namespace A071557.P8008387626157527076
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * n : ℚ) / (A001221 (4 * (n ^ 2 + 1)) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071557.P8008387626157527076

namespace A071557

/-- `record[2*n/A001221(4*(n²+1))]` -/
def P8008387626157527076.Spec : Prop :=
  ∀ n, P8008387626157527076.a n = (A071557 (n + 1) : ℚ)

end A071557

/-! ## A071557.P17805760735301756204

`eq[Δ[A032766(n)], A345942(n²+1)]`
-/

namespace A071557.P17805760735301756204
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032766 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345942 (n ^ 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n

end

end A071557.P17805760735301756204

namespace A071557

/-- `eq[Δ[A032766(n)], A345942(n²+1)]` -/
def P17805760735301756204.Spec : Prop :=
  ∀ n, (P17805760735301756204.a n : ℤ) = A071557 (n + 1)

end A071557

/-!
# A071558: Smallest k such that n*k + 1 and n*k - 1 are twin primes.

The programs for A071558, there is no canonical definition to state claims against.
-/

/-! ## A071558.P14037713847092475013

`A071256(n+1)/(n+1)`
-/

namespace A071558.P14037713847092475013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071256 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A071558.P14037713847092475013

/-! ## A071558.P2615052047171431293

`(6*A071256(n+1))%A016969(n)`
-/

namespace A071558.P2615052047171431293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (6 * A071256 (n + 1)) (A016969 n)

end

end A071558.P2615052047171431293

/-! ## A071558.P3656276642715734949

`(11*A071256(n+1))%A017509(n)`
-/

namespace A071558.P3656276642715734949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (11 * A071256 (n + 1)) (A017509 n)

end

end A071558.P3656276642715734949

/-! ## A071558.P3790781479560274831

`(n+1)^A008683(A055211(n+2))*A071256(n+1)`
-/

namespace A071558.P3790781479560274831
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A008683 (A055211 (n + 2)).toNat : ℤ) * (A071256 (n + 1) : ℚ)

end

end A071558.P3790781479560274831

/-! ## A071558.P13412792292477862484

`A008458(A071256(n+1))%A016969(n)`
-/

namespace A071558.P13412792292477862484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008458 (A071256 (n + 1)).toNat) (A016969 n)

end

end A071558.P13412792292477862484

/-! ## A071558.P12360424202560688590

`A008593(A071256(n+1))%A017509(n)`
-/

namespace A071558.P12360424202560688590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008593 (A071256 (n + 1)).toNat) (A017509 n)

end

end A071558.P12360424202560688590

/-!
# A071559: Smallest k such that n + k and n^2 + k^2 are simultaneously primes.

The programs for A071559, there is no canonical definition to state claims against.
-/

/-! ## A071559.P14102263428394930394

`A276417(A243065(2*n+3)+A000217(n)²)`
-/

namespace A071559.P14102263428394930394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276417 (A243065 (2 * n + 3) + A000217 n ^ 2).toNat

end

end A071559.P14102263428394930394

/-!
# A071561: Numbers with no middle divisors (cf. A071090).

The programs for A071561, the canonical program `A071561.P9594246998475944590` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071561 has offset 1).

The definition of A071561 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 7140 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071561.P3964420375547500792

`comp[(row(n)+col(n))*row(n)]`
-/

namespace A071561.P3964420375547500792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.triRow n + SequenceMachineLib.triCol n) * SequenceMachineLib.triRow n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A071561.P3964420375547500792

namespace A071561

/-- `comp[(row(n)+col(n))*row(n)]` -/
def P3964420375547500792.Spec : Prop :=
  ∀ n, (P3964420375547500792.a n : ℤ) = A071561 (n + 1)

end A071561

/-! ## A071561.P12598414523311654199

`comp[(2*row(n)-col(n))*row(n)]`
-/

namespace A071561.P12598414523311654199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * SequenceMachineLib.triRow n : ℤ) - (SequenceMachineLib.triCol n : ℤ)) * (SequenceMachineLib.triRow n : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A071561.P12598414523311654199

namespace A071561

/-- `comp[(2*row(n)-col(n))*row(n)]` -/
def P12598414523311654199.Spec : Prop :=
  ∀ n, (P12598414523311654199.a n : ℤ) = A071561 (n + 1)

end A071561

/-! ## A071561.P3225085214944874684

`eq[0, A347950(n+1)]+1`
-/

namespace A071561.P3225085214944874684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347950 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071561.P3225085214944874684

namespace A071561

/-- `eq[0, A347950(n+1)]+1` -/
def P3225085214944874684.Spec : Prop :=
  ∀ n, (P3225085214944874684.a n : ℤ) = A071561 (n + 1)

end A071561

/-! ## A071561.P3805802708015197487

`lt[0, A348327(n+1)]+1`
-/

namespace A071561.P3805802708015197487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071561.P3805802708015197487

namespace A071561

/-- `lt[0, A348327(n+1)]+1` -/
def P3805802708015197487.Spec : Prop :=
  ∀ n, (P3805802708015197487.a n : ℤ) = A071561 (n + 1)

end A071561

/-! ## A071561.P6492174103519948722

`eq[1, A348364(n+1)]+1`
-/

namespace A071561.P6492174103519948722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071561.P6492174103519948722

namespace A071561

/-- `eq[1, A348364(n+1)]+1` -/
def P6492174103519948722.Spec : Prop :=
  ∀ n, (P6492174103519948722.a n : ℤ) = A071561 (n + 1)

end A071561

/-! ## A071561.P10509155957432320077

`eq[1, A348406(n+1)]+1`
-/

namespace A071561.P10509155957432320077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071561.P10509155957432320077

namespace A071561

/-- `eq[1, A348406(n+1)]+1` -/
def P10509155957432320077.Spec : Prop :=
  ∀ n, (P10509155957432320077.a n : ℤ) = A071561 (n + 1)

end A071561

/-! ## A071561.P3105257202490442279

`comp[∪[A071562(n+1), n²]]`
-/

namespace A071561.P3105257202490442279
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071562 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = x) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A071561.P3105257202490442279

namespace A071561

/-- `comp[∪[A071562(n+1), n²]]` -/
def P3105257202490442279.Spec : Prop :=
  ∀ n, (P3105257202490442279.a n : ℤ) = A071561 (n + 1)

end A071561

/-! ## A071561.P9622887531981374363

`filter[A344180(n), A348327(#)]`
-/

namespace A071561.P9622887531981374363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344180 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A071561.P9622887531981374363

namespace A071561

/-- `filter[A344180(n), A348327(#)]` -/
def P9622887531981374363.Spec : Prop :=
  ∀ n, P9622887531981374363.a n = A071561 (n + 1)

end A071561

/-! ## A071561.P1190907956552010522

`∪[A319801(n+1), A319802(n+1)]`
-/

namespace A071561.P1190907956552010522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319801 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319802 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071561.P1190907956552010522

namespace A071561

/-- `∪[A319801(n+1), A319802(n+1)]` -/
def P1190907956552010522.Spec : Prop :=
  ∀ n, (P1190907956552010522.a n : ℤ) = A071561 (n + 1)

end A071561

/-! ## A071561.P15175559004371930286

`filter[A266347(n+1), A348327(#)]`
-/

namespace A071561.P15175559004371930286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A071561.P15175559004371930286

namespace A071561

/-- `filter[A266347(n+1), A348327(#)]` -/
def P15175559004371930286.Spec : Prop :=
  ∀ n, P15175559004371930286.a n = A071561 (n + 1)

end A071561

/-! ## A071561.P12633701108285701078

`filter[A238524(n+1), A348327(#)]`
-/

namespace A071561.P12633701108285701078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A071561.P12633701108285701078

namespace A071561

/-- `filter[A238524(n+1), A348327(#)]` -/
def P12633701108285701078.Spec : Prop :=
  ∀ n, P12633701108285701078.a n = A071561 (n + 1)

end A071561

/-! ## A071561.P6918890853686840014

`filter[A281005(n+1), A348327(#)]`
-/

namespace A071561.P6918890853686840014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A071561.P6918890853686840014

namespace A071561

/-- `filter[A281005(n+1), A348327(#)]` -/
def P6918890853686840014.Spec : Prop :=
  ∀ n, P6918890853686840014.a n = A071561 (n + 1)

end A071561

/-! ## A071561.P3102470394115976927

`filter[A049068(n+1), A348327(#)]`
-/

namespace A071561.P3102470394115976927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049068 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A071561.P3102470394115976927

namespace A071561

/-- `filter[A049068(n+1), A348327(#)]` -/
def P3102470394115976927.Spec : Prop :=
  ∀ n, P3102470394115976927.a n = A071561 (n + 1)

end A071561

/-! ## A071561.P1346079784929726168

`filter[A028983(n+1), A348327(#)]`
-/

namespace A071561.P1346079784929726168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028983 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A071561.P1346079784929726168

namespace A071561

/-- `filter[A028983(n+1), A348327(#)]` -/
def P1346079784929726168.Spec : Prop :=
  ∀ n, P1346079784929726168.a n = A071561 (n + 1)

end A071561

/-! ## A071561.P6663052152906349081

`filter[A080259(n+1), A348327(#)]`
-/

namespace A071561.P6663052152906349081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080259 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A071561.P6663052152906349081

namespace A071561

/-- `filter[A080259(n+1), A348327(#)]` -/
def P6663052152906349081.Spec : Prop :=
  ∀ n, P6663052152906349081.a n = A071561 (n + 1)

end A071561

/-! ## A071561.P920296854349884228

`filter[A067715(n+1), A348327(#)]`
-/

namespace A071561.P920296854349884228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067715 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A071561.P920296854349884228

namespace A071561

/-- `filter[A067715(n+1), A348327(#)]` -/
def P920296854349884228.Spec : Prop :=
  ∀ n, P920296854349884228.a n = A071561 (n + 1)

end A071561

/-! ## A071561.P1438091547363159228

`filter[A182834(n+1), A348327(#)]`
-/

namespace A071561.P1438091547363159228
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182834 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A348327 (f1 j).toNat = 1) n)

end

end A071561.P1438091547363159228

namespace A071561

/-- `filter[A182834(n+1), A348327(#)]` -/
def P1438091547363159228.Spec : Prop :=
  ∀ n, P1438091547363159228.a n = A071561 (n + 1)

end A071561

/-! ## A071561.P9594246998475944590

`comp[A100345(n)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071561

/-- `comp[A100345(n)]` -/
def P9594246998475944590.Spec : Prop :=
  ∀ n, (P9594246998475944590.a n : ℤ) = A071561 (n + 1)

theorem P9594246998475944590.correct : P9594246998475944590.Spec := by
  intro n
  simp only [A071561, Nat.add_sub_cancel]

end A071561

/-! ## A071561.P11493534711094394902

`comp[A069011(n)+A004247(n)]`
-/

namespace A071561.P11493534711094394902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069011 n + A004247 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A071561.P11493534711094394902

namespace A071561

/-- `comp[A069011(n)+A004247(n)]` -/
def P11493534711094394902.Spec : Prop :=
  ∀ n, (P11493534711094394902.a n : ℤ) = A071561 (n + 1)

end A071561

/-! ## A071561.P13087098196541862745

`comp[A132111(n)-A143844(n)]`
-/

namespace A071561.P13087098196541862745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132111 n - A143844 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A071561.P13087098196541862745

namespace A071561

/-- `comp[A132111(n)-A143844(n)]` -/
def P13087098196541862745.Spec : Prop :=
  ∀ n, (P13087098196541862745.a n : ℤ) = A071561 (n + 1)

end A071561

/-!
# A071562: Numbers n such that the sum of the middle divisors of n (A071090) is not zero.

The programs for A071562, the canonical program `A071562.P5214642878803367351` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071562 has offset 1).

The definition of A071562 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071562.P5214642878803367351

`lt[0, A347950(n+1)]+1`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071562

/-- `lt[0, A347950(n+1)]+1` -/
def P5214642878803367351.Spec : Prop :=
  ∀ n, (P5214642878803367351.a n : ℤ) = A071562 (n + 1)

theorem P5214642878803367351.correct : P5214642878803367351.Spec := by
  intro n
  simp only [A071562, Nat.add_sub_cancel]

end A071562

/-! ## A071562.P10268665611970765674

`lt[A348327(n+1), 1]+1`
-/

namespace A071562.P10268665611970765674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348327 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071562.P10268665611970765674

namespace A071562

/-- `lt[A348327(n+1), 1]+1` -/
def P10268665611970765674.Spec : Prop :=
  ∀ n, (P10268665611970765674.a n : ℤ) = A071562 (n + 1)

end A071562

/-! ## A071562.P16896736604017753654

`lt[1, A348406(n+1)]+1`
-/

namespace A071562.P16896736604017753654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348406 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A071562.P16896736604017753654

namespace A071562

/-- `lt[1, A348406(n+1)]+1` -/
def P16896736604017753654.Spec : Prop :=
  ∀ n, (P16896736604017753654.a n : ℤ) = A071562 (n + 1)

end A071562

/-! ## A071562.P3760925549766288547

`A280919(n)+a(n-1)` with `a(0)=1`
-/

namespace A071562.P3760925549766288547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A280919 n + a (n - 1)

end

end A071562.P3760925549766288547

namespace A071562

/-- `A280919(n)+a(n-1)` -/
def P3760925549766288547.Spec : Prop :=
  ∀ n, P3760925549766288547.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P13172674275976831556

`∪[A001284(n+1), A028982(n+1)]`
-/

namespace A071562.P13172674275976831556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028982 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071562.P13172674275976831556

namespace A071562

/-- `∪[A001284(n+1), A028982(n+1)]` -/
def P13172674275976831556.Spec : Prop :=
  ∀ n, (P13172674275976831556.a n : ℤ) = A071562 (n + 1)

end A071562

/-! ## A071562.P993378952637543098

`∪[A001284(n+1), A320137(n+1)]`
-/

namespace A071562.P993378952637543098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001284 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320137 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071562.P993378952637543098

namespace A071562

/-- `∪[A001284(n+1), A320137(n+1)]` -/
def P993378952637543098.Spec : Prop :=
  ∀ n, (P993378952637543098.a n : ℤ) = A071562 (n + 1)

end A071562

/-! ## A071562.P4949052013915506176

`∪[A319529(n+1), A319796(n+1)]`
-/

namespace A071562.P4949052013915506176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319529 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A319796 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071562.P4949052013915506176

namespace A071562

/-- `∪[A319529(n+1), A319796(n+1)]` -/
def P4949052013915506176.Spec : Prop :=
  ∀ n, (P4949052013915506176.a n : ℤ) = A071562 (n + 1)

end A071562

/-! ## A071562.P12049086793322244402

`∑[A280919(n+1)]+1-A280919(n+1)`
-/

namespace A071562.P12049086793322244402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A280919 (n + 1))

end

end A071562.P12049086793322244402

namespace A071562

/-- `∑[A280919(n+1)]+1-A280919(n+1)` -/
def P12049086793322244402.Spec : Prop :=
  ∀ n, P12049086793322244402.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P2703016894826474869

`∑[A280919(A123108(2*n))]`
-/

namespace A071562.P2703016894826474869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280919 (A123108 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071562.P2703016894826474869

namespace A071562

/-- `∑[A280919(A123108(2*n))]` -/
def P2703016894826474869.Spec : Prop :=
  ∀ n, P2703016894826474869.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P13916779698208905437

`1+eq[2, A348364(n+1)]`
-/

namespace A071562.P13916779698208905437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348364 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071562.P13916779698208905437

namespace A071562

/-- `1+eq[2, A348364(n+1)]` -/
def P13916779698208905437.Spec : Prop :=
  ∀ n, (P13916779698208905437.a n : ℤ) = A071562 (n + 1)

end A071562

/-! ## A071562.P12781542467017345502

`filter[A343012(n+1), A347950(#)]`
-/

namespace A071562.P12781542467017345502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343012 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A071562.P12781542467017345502

namespace A071562

/-- `filter[A343012(n+1), A347950(#)]` -/
def P12781542467017345502.Spec : Prop :=
  ∀ n, P12781542467017345502.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P17407240027879140675

`filter[A316350(n+1), A347950(#)]`
-/

namespace A071562.P17407240027879140675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316350 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A071562.P17407240027879140675

namespace A071562

/-- `filter[A316350(n+1), A347950(#)]` -/
def P17407240027879140675.Spec : Prop :=
  ∀ n, P17407240027879140675.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P10520622975752336717

`A244367(A282131(n+1))`
-/

namespace A071562.P10520622975752336717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (A282131 (n + 1)).toNat

end

end A071562.P10520622975752336717

namespace A071562

/-- `A244367(A282131(n+1))` -/
def P10520622975752336717.Spec : Prop :=
  ∀ n, P10520622975752336717.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P11721482424151840029

`A244367(∑[runs[A244367(n+1)]])`
-/

namespace A071562.P11721482424151840029
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) (n + 1) - SequenceMachineLib.nth (fun j => j = 0 ∨ f2 j ≠ f2 (j - 1)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A071562.P11721482424151840029

namespace A071562

/-- `A244367(∑[runs[A244367(n+1)]])` -/
def P11721482424151840029.Spec : Prop :=
  ∀ n, P11721482424151840029.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P3770552135249872954

`filter[A253567(n+1), A347950(#)]`
-/

namespace A071562.P3770552135249872954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253567 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A071562.P3770552135249872954

namespace A071562

/-- `filter[A253567(n+1), A347950(#)]` -/
def P3770552135249872954.Spec : Prop :=
  ∀ n, P3770552135249872954.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P14315343831573921890

`filter[A101513(n+1), A347950(#)]`
-/

namespace A071562.P14315343831573921890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101513 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A071562.P14315343831573921890

namespace A071562

/-- `filter[A101513(n+1), A347950(#)]` -/
def P14315343831573921890.Spec : Prop :=
  ∀ n, P14315343831573921890.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P950592359370517770

`filter[A065090(n+1), A347950(#)]`
-/

namespace A071562.P950592359370517770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065090 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A071562.P950592359370517770

namespace A071562

/-- `filter[A065090(n+1), A347950(#)]` -/
def P950592359370517770.Spec : Prop :=
  ∀ n, P950592359370517770.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P5976784698394493251

`filter[A171581(n+1), A347950(#)]`
-/

namespace A071562.P5976784698394493251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171581 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A071562.P5976784698394493251

namespace A071562

/-- `filter[A171581(n+1), A347950(#)]` -/
def P5976784698394493251.Spec : Prop :=
  ∀ n, P5976784698394493251.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P11307912503078908866

`filter[A338924(n+1), A347950(#)]`
-/

namespace A071562.P11307912503078908866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338924 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A071562.P11307912503078908866

namespace A071562

/-- `filter[A338924(n+1), A347950(#)]` -/
def P11307912503078908866.Spec : Prop :=
  ∀ n, P11307912503078908866.a n = A071562 (n + 1)

end A071562

/-! ## A071562.P8737562953793112896

`filter[A173905(n+2), A347950(#)]`
-/

namespace A071562.P8737562953793112896
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173905 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347950 (f1 j).toNat = 1) n)

end

end A071562.P8737562953793112896

namespace A071562

/-- `filter[A173905(n+2), A347950(#)]` -/
def P8737562953793112896.Spec : Prop :=
  ∀ n, P8737562953793112896.a n = A071562 (n + 1)

end A071562

/-!
# A071563: Least k such that there are no middle divisors of k (A071090) through k+n.

The programs for A071563, there is no canonical definition to state claims against.
-/

/-! ## A071563.P4968681170207385989

`A244367(A279286(n+2))+1`
-/

namespace A071563.P4968681170207385989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (A279286 (n + 2)).toNat + 1

end

end A071563.P4968681170207385989

/-! ## A071563.P6816233846621441990

`A244367(A282197(n+2))+1`
-/

namespace A071563.P6816233846621441990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244367 (A282197 (n + 2)).toNat + 1

end

end A071563.P6816233846621441990

/-! ## A071563.P16242934656812630054

`A020725(A280295(n+2))`
-/

namespace A071563.P16242934656812630054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A280295 (n + 2)).toNat

end

end A071563.P16242934656812630054

/-! ## A071563.P16050292018224210939

`A280295(n+2)-A008683(A067756(n+4))`
-/

namespace A071563.P16050292018224210939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280295 (n + 2) - A008683 (A067756 (n + 4)).toNat

end

end A071563.P16050292018224210939

/-! ## A071563.P11209152171951931602

`A368169(A067756(n+1))+A280295(n+2)`
-/

namespace A071563.P11209152171951931602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A368169 (A067756 (n + 1)).toNat + A280295 (n + 2)

end

end A071563.P11209152171951931602

/-!
# A071565: Numbers k such that x^k + x^(k-1) + x^(k-2) + ... + x + 1 is irreducible over GF(7).

The programs for A071565, there is no canonical definition to state claims against.
-/

/-! ## A071565.P7632891497211411673

`A019337(n+2)-1`
-/

namespace A071565.P7632891497211411673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019337 (n + 2) - 1

end

end A071565.P7632891497211411673

/-! ## A071565.P9971751843451214137

`p?[A167795(n+2)]-1`
-/

namespace A071565.P9971751843451214137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167795 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A071565.P9971751843451214137

/-! ## A071565.P16248258528774148150

`record[A211243(n+3)]`
-/

namespace A071565.P16248258528774148150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211243 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071565.P16248258528774148150

/-! ## A071565.P17281144531171228901

`A000010(A019337(n+2))`
-/

namespace A071565.P17281144531171228901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019337 (n + 2)).toNat

end

end A071565.P17281144531171228901

/-! ## A071565.P10965002033861653408

`record[A007738(A000040(n+3))]`
-/

namespace A071565.P10965002033861653408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (A000040 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071565.P10965002033861653408

/-! ## A071565.P6592447500101874039

`eq[A007738(n+1), A038608(n)]`
-/

namespace A071565.P6592447500101874039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P6592447500101874039

/-! ## A071565.P7337728871020003638

`eq[A007738(n+1), A059029(n)]`
-/

namespace A071565.P7337728871020003638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P7337728871020003638

/-! ## A071565.P651263682373390639

`eq[A007738(n+1), A066104(n)]`
-/

namespace A071565.P651263682373390639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P651263682373390639

/-! ## A071565.P17361370510229776762

`eq[n, A038608(A054708(n+1))]`
-/

namespace A071565.P17361370510229776762
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A054708 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071565.P17361370510229776762

/-! ## A071565.P7955373628937521104

`eq[A054708(n+1), A059029(n)]`
-/

namespace A071565.P7955373628937521104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P7955373628937521104

/-! ## A071565.P7025861119756822137

`eq[A007738(n+1), A109043(n)]`
-/

namespace A071565.P7025861119756822137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P7025861119756822137

/-! ## A071565.P11740326907010474833

`eq[A054708(n+1), A066104(n)]`
-/

namespace A071565.P11740326907010474833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P11740326907010474833

/-! ## A071565.P5518861233514765631

`eq[A007738(n+1), A137501(n)]`
-/

namespace A071565.P5518861233514765631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137501 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P5518861233514765631

/-! ## A071565.P6120749640870392698

`eq[A054708(n+1), A109043(n)]`
-/

namespace A071565.P6120749640870392698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P6120749640870392698

/-! ## A071565.P8950956211914713290

`eq[A007738(n+1), A159966(n)]`
-/

namespace A071565.P8950956211914713290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P8950956211914713290

/-! ## A071565.P12042565612537473993

`eq[A054708(n+1), A137501(n)]`
-/

namespace A071565.P12042565612537473993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137501 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P12042565612537473993

/-! ## A071565.P17284167517540733744

`eq[A007738(n+1), A201629(n)]`
-/

namespace A071565.P17284167517540733744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P17284167517540733744

/-! ## A071565.P17139979208531973437

`eq[A054708(n+1), A159966(n)]`
-/

namespace A071565.P17139979208531973437
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P17139979208531973437

/-! ## A071565.P5756758302135350157

`eq[A007738(n+1), A237420(n)]`
-/

namespace A071565.P5756758302135350157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007738 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P5756758302135350157

/-! ## A071565.P10366813658095215764

`eq[A054708(n+1), A201629(n)]`
-/

namespace A071565.P10366813658095215764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071565.P10366813658095215764

/-!
# A071566: Numbers k such that x^k + x^(k-1) + x^(k-2) + ... + x + 1 is irreducible over GF(11).

The programs for A071566, there is no canonical definition to state claims against.
-/

/-! ## A071566.P9130581288881127044

`A019339(n+2)-1`
-/

namespace A071566.P9130581288881127044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019339 (n + 2) - 1

end

end A071566.P9130581288881127044

/-! ## A071566.P4566627192459012480

`∑[lcm(2, Δ[A019339(n+1)])]`
-/

namespace A071566.P4566627192459012480
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019339 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (f2 (n + 1) - f2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071566.P4566627192459012480

/-! ## A071566.P17613509556883406535

`p?[A240028(n+2)]-1`
-/

namespace A071566.P17613509556883406535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A071566.P17613509556883406535

/-! ## A071566.P5336444534420176777

`∩[A038882(n+2), A240028(n+2)]-1`
-/

namespace A071566.P5336444534420176777
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038882 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240028 (n + 2)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A071566.P5336444534420176777

/-! ## A071566.P11197512613751507112

`A000010(A019339(n+2))`
-/

namespace A071566.P11197512613751507112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A019339 (n + 2)).toNat

end

end A071566.P11197512613751507112

/-! ## A071566.P8987563816022762339

`eq[n, A038608(A351524(n+1))]`
-/

namespace A071566.P8987563816022762339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A351524 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071566.P8987563816022762339

/-! ## A071566.P6689643230391491941

`eq[A059029(n), A351524(n+1)]`
-/

namespace A071566.P6689643230391491941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059029 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P6689643230391491941

/-! ## A071566.P5374622618768808166

`eq[A066104(n), A351524(n+1)]`
-/

namespace A071566.P5374622618768808166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066104 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P5374622618768808166

/-! ## A071566.P5245893836502191211

`eq[A109043(n), A351524(n+1)]`
-/

namespace A071566.P5245893836502191211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P5245893836502191211

/-! ## A071566.P10668305513075308702

`eq[A137501(n), A351524(n+1)]`
-/

namespace A071566.P10668305513075308702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137501 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P10668305513075308702

/-! ## A071566.P6209356993406314836

`eq[A159966(n), A351524(n+1)]`
-/

namespace A071566.P6209356993406314836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P6209356993406314836

/-! ## A071566.P10154201219855199388

`eq[A201629(n), A351524(n+1)]`
-/

namespace A071566.P10154201219855199388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201629 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P10154201219855199388

/-! ## A071566.P16872952953590802571

`eq[A237420(n), A351524(n+1)]`
-/

namespace A071566.P16872952953590802571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237420 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P16872952953590802571

/-! ## A071566.P8159801264566233071

`eq[A254667(n), A351524(n+1)]`
-/

namespace A071566.P8159801264566233071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254667 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P8159801264566233071

/-! ## A071566.P3523403712242126631

`eq[A347365(n), A351524(n+1)]`
-/

namespace A071566.P3523403712242126631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347365 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P3523403712242126631

/-! ## A071566.P3277871079324035646

`eq[A351524(n+1), A390255(n)]`
-/

namespace A071566.P3277871079324035646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390255 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P3277871079324035646

/-! ## A071566.P2595663180589714265

`∑{d}[A019339(n+2), A004442(#)]`
-/

namespace A071566.P2595663180589714265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019339 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A004442 d

end

end A071566.P2595663180589714265

/-! ## A071566.P3828543387798920503

`eq[A046666(n+2), A351524(n+1)]`
-/

namespace A071566.P3828543387798920503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351524 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P3828543387798920503

/-! ## A071566.P313240295374322656

`eq[A070680(n+1), A274922(n)]`
-/

namespace A071566.P313240295374322656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070680 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274922 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P313240295374322656

/-! ## A071566.P14967172251507334278

`eq[A029936(n+1), A070680(n+1)]`
-/

namespace A071566.P14967172251507334278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029936 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070680 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071566.P14967172251507334278

/-!
# A071567: Smallest k>n such that n^2+n+1 divides k^2+k+1.

The programs for A071567, there is no canonical definition to state claims against.
-/

/-! ## A071567.P720916538423924766

`A111704(n+1)-A010816(A038318(n))`
-/

namespace A071567.P720916538423924766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111704 (n + 1) - A010816 (A038318 n).toNat

end

end A071567.P720916538423924766

/-!
# A071568: Smallest k>n such that n^3+1 divides k*n^2+1.

The programs for A071568, the canonical program `A071568.P7566850844924228464` is in `Seq.B000.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071568 has offset 0).

The definition of A071568 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071568.P7566850844924228464

`n^3+n+1`

The canonical program, it is in `Seq.B000.C013`.
-/

namespace A071568

/-- `n^3+n+1` -/
def P7566850844924228464.Spec : Prop :=
  ∀ n, (P7566850844924228464.a n : ℤ) = A071568 n

theorem P7566850844924228464.correct : P7566850844924228464.Spec := by
  intro n
  simp only [A071568]

end A071568

/-! ## A071568.P4097491749341884243

`ogf((1-x+5x^2+x^3)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A071568.P4097491749341884243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 5, 1] [1, -4, 6, -4, 1] n

end

end A071568.P4097491749341884243

namespace A071568

/-- `ogf((1-x+5x^2+x^3)/(1-4x+6x^2-4x^3+x^4))` -/
def P4097491749341884243.Spec : Prop :=
  ∀ n, P4097491749341884243.a n = A071568 n

end A071568

/-! ## A071568.P13469995654905478511

`ceil(acot(n)^-3)`
-/

namespace A071568.P13469995654905478511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ) ^ (-3 : ℤ)⌉

end

end A071568.P13469995654905478511

namespace A071568

/-- `ceil(acot(n)^-3)` -/
def P13469995654905478511.Spec : Prop :=
  ∀ n, P13469995654905478511.a n = A071568 n

end A071568

/-! ## A071568.P15927890848294089204

`ceil(1/acot(n)^3)`
-/

namespace A071568.P15927890848294089204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈1 / SequenceMachineLib.acot (n : ℝ) ^ 3⌉

end

end A071568.P15927890848294089204

namespace A071568

/-- `ceil(1/acot(n)^3)` -/
def P15927890848294089204.Spec : Prop :=
  ∀ n, P15927890848294089204.a n = A071568 n

end A071568

/-! ## A071568.P15527156250316572675

`or(1, n*(1+n²))`
-/

namespace A071568.P15527156250316572675
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n * (1 + n ^ 2))

end

end A071568.P15527156250316572675

namespace A071568

/-- `or(1, n*(1+n²))` -/
def P15527156250316572675.Spec : Prop :=
  ∀ n, (P15527156250316572675.a n : ℤ) = A071568 n

end A071568

/-! ## A071568.P9783815921778886546

`xor(1, n*(n²+1))`
-/

namespace A071568.P9783815921778886546
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (n * (n ^ 2 + 1))

end

end A071568.P9783815921778886546

namespace A071568

/-- `xor(1, n*(n²+1))` -/
def P9783815921778886546.Spec : Prop :=
  ∀ n, (P9783815921778886546.a n : ℤ) = A071568 n

end A071568

/-! ## A071568.P11693569024899141479

`Δ[∑[n]+C(n, 2)²]`
-/

namespace A071568.P11693569024899141479
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A071568.P11693569024899141479

namespace A071568

/-- `Δ[∑[n]+C(n, 2)²]` -/
def P11693569024899141479.Spec : Prop :=
  ∀ n, P11693569024899141479.a n = A071568 n

end A071568

/-! ## A071568.P13516087635499401245

`floor(n/acot(n²)+n+1)`
-/

namespace A071568.P13516087635499401245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ) + (n + 1 : ℝ)⌋

end

end A071568.P13516087635499401245

namespace A071568

/-- `floor(n/acot(n²)+n+1)` -/
def P13516087635499401245.Spec : Prop :=
  ∀ n, P13516087635499401245.a n = A071568 n

end A071568

/-! ## A071568.P4164191827540037954

`round(n/acot(n²)+n+1)`
-/

namespace A071568.P4164191827540037954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℝ) / SequenceMachineLib.acot (n ^ 2 : ℝ) + (n + 1 : ℝ))

end

end A071568.P4164191827540037954

namespace A071568

/-- `round(n/acot(n²)+n+1)` -/
def P4164191827540037954.Spec : Prop :=
  ∀ n, P4164191827540037954.a n = A071568 n

end A071568

/-! ## A071568.P12407484471078647069

`∑[∑[a(n-1)+6]]` with `a(0)=1, a(1)=1, a(2)=6`
-/

namespace A071568.P12407484471078647069
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 6] fun n f2 =>
  f2 (n - 1) + 6

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071568.P12407484471078647069

namespace A071568

/-- `∑[∑[a(n-1)+6]]` -/
def P12407484471078647069.Spec : Prop :=
  ∀ n, (P12407484471078647069.a n : ℤ) = A071568 n

end A071568

/-! ## A071568.P968435888383360061

`lcm(2, (n²+1)*2*n+2)/2`
-/

namespace A071568.P968435888383360061
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 ((n ^ 2 + 1) * (2 * n) + 2) : ℚ) / 2

end

end A071568.P968435888383360061

namespace A071568

/-- `lcm(2, (n²+1)*2*n+2)/2` -/
def P968435888383360061.Spec : Prop :=
  ∀ n, P968435888383360061.a n = (A071568 n : ℚ)

end A071568

/-! ## A071568.P3079129282978385716

`C(n*(n²+1)+1, n*(n²+1))`
-/

namespace A071568.P3079129282978385716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n * (n ^ 2 + 1) + 1) (n * (n ^ 2 + 1))

end

end A071568.P3079129282978385716

namespace A071568

/-- `C(n*(n²+1)+1, n*(n²+1))` -/
def P3079129282978385716.Spec : Prop :=
  ∀ n, (P3079129282978385716.a n : ℤ) = A071568 n

theorem P3079129282978385716.correct : P3079129282978385716.Spec := by
  intro n
  simp only [A071568, Nat.add_sub_cancel, A071568.P3079129282978385716.a, A071568.P7566850844924228464.a, SequenceMachineLib.memo_apply]
  try norm_num [Nat.choose_two_right, Nat.factorial]
  try ring_nf

end A071568

/-! ## A071568.P9902518823001611006

`abs((n-1)*lcm(n, n+1)+2*n+1)`
-/

namespace A071568.P9902518823001611006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n : ℤ) - 1) * (Nat.lcm n (n + 1) : ℤ) + (2 * n + 1 : ℤ)|

end

end A071568.P9902518823001611006

namespace A071568

/-- `abs((n-1)*lcm(n, n+1)+2*n+1)` -/
def P9902518823001611006.Spec : Prop :=
  ∀ n, P9902518823001611006.a n = A071568 n

end A071568

/-! ## A071568.P10421514521500677703

`∑[A077588(n)]`
-/

namespace A071568.P10421514521500677703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077588 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071568.P10421514521500677703

namespace A071568

/-- `∑[A077588(n)]` -/
def P10421514521500677703.Spec : Prop :=
  ∀ n, P10421514521500677703.a n = A071568 n

end A071568

/-! ## A071568.P13630683800047548827

`(A119536(n)+3)/3`
-/

namespace A071568.P13630683800047548827
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A119536 n + 3 : ℚ) / 3

end

end A071568.P13630683800047548827

namespace A071568

/-- `(A119536(n)+3)/3` -/
def P13630683800047548827.Spec : Prop :=
  ∀ n, P13630683800047548827.a n = (A071568 n : ℚ)

theorem P13630683800047548827.correct : P13630683800047548827.Spec := by
  intro n
  simp only [A071568, Nat.add_sub_cancel, A071568.P13630683800047548827.a, A071568.P7566850844924228464.a, A119536, A119536.P17684524526440716851.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071568

/-! ## A071568.P18242992383012431054

`ceil(sqrt(A002604(n))+n)`
-/

namespace A071568.P18242992383012431054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A002604 n : ℝ) + (n : ℝ)⌉

end

end A071568.P18242992383012431054

namespace A071568

/-- `ceil(sqrt(A002604(n))+n)` -/
def P18242992383012431054.Spec : Prop :=
  ∀ n, P18242992383012431054.a n = A071568 n

end A071568

/-! ## A071568.P556066587664141829

`ceil(sqrt(A060883(n))+n)`
-/

namespace A071568.P556066587664141829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt (A060883 n : ℝ) + (n : ℝ)⌉

end

end A071568.P556066587664141829

namespace A071568

/-- `ceil(sqrt(A060883(n))+n)` -/
def P556066587664141829.Spec : Prop :=
  ∀ n, P556066587664141829.a n = A071568 n

end A071568

/-! ## A071568.P16914200516881117073

`∑[A386486(n)-n²]`
-/

namespace A071568.P16914200516881117073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A386486 n - (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071568.P16914200516881117073

namespace A071568

/-- `∑[A386486(n)-n²]` -/
def P16914200516881117073.Spec : Prop :=
  ∀ n, P16914200516881117073.a n = A071568 n

end A071568

/-! ## A071568.P12622077052387419978

`ceil(A053699(n)/(n+1))`
-/

namespace A071568.P12622077052387419978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A053699 n : ℚ) / (n + 1 : ℚ)⌉

end

end A071568.P12622077052387419978

namespace A071568

/-- `ceil(A053699(n)/(n+1))` -/
def P12622077052387419978.Spec : Prop :=
  ∀ n, P12622077052387419978.a n = A071568 n

end A071568

/-! ## A071568.P112892998669601872

`(A061317(n)+2+n)/2`
-/

namespace A071568.P112892998669601872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061317 n + 2 + (n : ℤ) : ℚ) / 2

end

end A071568.P112892998669601872

namespace A071568

/-- `(A061317(n)+2+n)/2` -/
def P112892998669601872.Spec : Prop :=
  ∀ n, P112892998669601872.a n = (A071568 n : ℚ)

theorem P112892998669601872.correct : P112892998669601872.Spec := by
  intro n
  simp only [A071568, Nat.add_sub_cancel, A071568.P112892998669601872.a, A071568.P7566850844924228464.a, A061317, A061317.P8488168899613189018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071568

/-!
# A071569: Det(M_n) where M_n is the n X n matrix m(i,j)=1 if floor(i/j) is even, 0 otherwise.

The programs for A071569, the canonical program `A071569.P6797074587690204173` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071569 has offset 1).

The definition of A071569 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 203 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071569.P13764290155622291431

`(A347030(n+1)-1)*(-1)^n`
-/

namespace A071569.P13764290155622291431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A347030 (n + 1) - 1) * (-1) ^ n

end

end A071569.P13764290155622291431

namespace A071569

/-- `(A347030(n+1)-1)*(-1)^n` -/
def P13764290155622291431.Spec : Prop :=
  ∀ n, P13764290155622291431.a n = A071569 (n + 1)

end A071569

/-! ## A071569.P6797074587690204173

`(∑[A067856(n+1)]-1)*(-1)^n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A071569

/-- `(∑[A067856(n+1)]-1)*(-1)^n` -/
def P6797074587690204173.Spec : Prop :=
  ∀ n, P6797074587690204173.a n = A071569 (n + 1)

theorem P6797074587690204173.correct : P6797074587690204173.Spec := by
  intro n
  simp only [A071569, Nat.add_sub_cancel]

end A071569

/-! ## A071569.P17681908585495841810

`(1-A347030(1+n))*A062157(n)`
-/

namespace A071569.P17681908585495841810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A347030 (1 + n)) * A062157 n

end

end A071569.P17681908585495841810

namespace A071569

/-- `(1-A347030(1+n))*A062157(n)` -/
def P17681908585495841810.Spec : Prop :=
  ∀ n, P17681908585495841810.a n = A071569 (n + 1)

end A071569

/-! ## A071569.P6981197481865412532

`(1-∑[A067856(n+1)])*A062157(n)`
-/

namespace A071569.P6981197481865412532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ∑ j ∈ Finset.range (n + 1), f1 j) * A062157 n

end

end A071569.P6981197481865412532

namespace A071569

/-- `(1-∑[A067856(n+1)])*A062157(n)` -/
def P6981197481865412532.Spec : Prop :=
  ∀ n, P6981197481865412532.a n = A071569 (n + 1)

end A071569

/-! ## A071569.P11824944728002933905

`(∑[A067856(n+1)]-1)/A033999(n)`
-/

namespace A071569.P11824944728002933905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / (A033999 n : ℚ)

end

end A071569.P11824944728002933905

namespace A071569

/-- `(∑[A067856(n+1)]-1)/A033999(n)` -/
def P11824944728002933905.Spec : Prop :=
  ∀ n, P11824944728002933905.a n = (A071569 (n + 1) : ℚ)

end A071569

/-! ## A071569.P11135037444938984993

`((∑[A067856(n+1)]-1)*A033999(n))%A297469(n)`
-/

namespace A071569.P11135037444938984993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067856 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j - 1) * A033999 n) (A297469 n)

end

end A071569.P11135037444938984993

namespace A071569

/-- `((∑[A067856(n+1)]-1)*A033999(n))%A297469(n)` -/
def P11135037444938984993.Spec : Prop :=
  ∀ n, P11135037444938984993.a n = A071569 (n + 1)

end A071569

/-! ## A071569.P17336263185843984225

`A347030(n+1)/A062157(n+1)-A062157(n+1)`
-/

namespace A071569.P17336263185843984225
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A347030 (n + 1) : ℚ) / (A062157 (n + 1) : ℚ) - (A062157 (n + 1) : ℚ)

end

end A071569.P17336263185843984225

namespace A071569

/-- `A347030(n+1)/A062157(n+1)-A062157(n+1)` -/
def P17336263185843984225.Spec : Prop :=
  ∀ n, P17336263185843984225.a n = (A071569 (n + 1) : ℚ)

end A071569

/-!
# A071570: a(n) = 2 * Sum_{d|n} 2^mu(d).

The programs for A071570, the canonical program `A071570.P5877234860766934149` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071570 has offset 1).

The definition of A071570 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071570.P5877234860766934149

`2*∑{d}[n+1, 2^A008683(#)]`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071570

/-- `2*∑{d}[n+1, 2^A008683(#)]` -/
def P5877234860766934149.Spec : Prop :=
  ∀ n, P5877234860766934149.a n = (A071570 (n + 1) : ℚ)

end A071570

/-! ## A071570.P9819046737177574054

`A004526(∑{d}[n+1, (A008683(#)+2)²])`
-/

namespace A071570.P9819046737177574054
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), (A008683 d + 2) ^ 2).toNat

end

end A071570.P9819046737177574054

namespace A071570

/-- `A004526(∑{d}[n+1, (A008683(#)+2)²])` -/
def P9819046737177574054.Spec : Prop :=
  ∀ n, P9819046737177574054.a n = A071570 (n + 1)

end A071570

/-! ## A071570.P8465262628528370942

`A123108(∑{d}[n+1, (A008683(#)+2)²])`
-/

namespace A071570.P8465262628528370942
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (∑ d ∈ Nat.divisors (f1 n), (A008683 d + 2) ^ 2).toNat

end

end A071570.P8465262628528370942

namespace A071570

/-- `A123108(∑{d}[n+1, (A008683(#)+2)²])` -/
def P8465262628528370942.Spec : Prop :=
  ∀ n, P8465262628528370942.a n = A071570 (n + 1)

end A071570

/-! ## A071570.P2898065486159107855

`A114003(n+1)+A052938(A034444(n+1))`
-/

namespace A071570.P2898065486159107855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114003 (n + 1) + A052938 (A034444 (n + 1)).toNat

end

end A071570.P2898065486159107855

namespace A071570

/-- `A114003(n+1)+A052938(A034444(n+1))` -/
def P2898065486159107855.Spec : Prop :=
  ∀ n, P2898065486159107855.a n = A071570 (n + 1)

end A071570

/-! ## A071570.P16050349158961801199

`A004526(∑{d}[n+1, A080847(#)*A080847(#)])`
-/

namespace A071570.P16050349158961801199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (∑ d ∈ Nat.divisors (f1 n), A080847 d * A080847 d).toNat

end

end A071570.P16050349158961801199

namespace A071570

/-- `A004526(∑{d}[n+1, A080847(#)*A080847(#)])` -/
def P16050349158961801199.Spec : Prop :=
  ∀ n, P16050349158961801199.a n = A071570 (n + 1)

end A071570

/-!
# A071572: Least k such that nextprime(k*prime(n)) - k*prime(n) is nonprime.

The programs for A071572, there is no canonical definition to state claims against.
-/

/-! ## A071572.P18382070537650174567

`gcd(A337135(A344044(n+1)), A344036(n))`
-/

namespace A071572.P18382070537650174567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A337135 (A344044 (n + 1)).toNat) (A344036 n)

end

end A071572.P18382070537650174567

/-! ## A071572.P7330556614016359792

`A347437(A226778(n+1)+A048958(2*n+3))`
-/

namespace A071572.P7330556614016359792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347437 (A226778 (n + 1) + A048958 (2 * n + 3)).toNat

end

end A071572.P7330556614016359792

/-! ## A071572.P7475761335661026893

`gcd(A078197(n), A284393(A000135(n+1)))`
-/

namespace A071572.P7475761335661026893
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A078197 n) (A284393 (A000135 (n + 1)).toNat)

end

end A071572.P7475761335661026893

/-! ## A071572.P8560039753672044995

`gcd(A027586(A269742(n+1)), A028260(n+1))`
-/

namespace A071572.P8560039753672044995
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A027586 (A269742 (n + 1)).toNat) (A028260 (n + 1))

end

end A071572.P8560039753672044995

/-! ## A071572.P5700943360506169571

`gcd(A091090(A192165(n+1)), A192159(n+1))`
-/

namespace A071572.P5700943360506169571
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A091090 (A192165 (n + 1)).toNat) (A192159 (n + 1))

end

end A071572.P5700943360506169571

/-!
# A071573: a(1) = 1; a(n) = a(n-1)-th nontotient number.

The programs for A071573, there is no canonical definition to state claims against.
-/

/-! ## A071573.P3513231014265335705

`A005277(a(n-1))` with `a(0)=1`
-/

namespace A071573.P3513231014265335705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A005277 (a (n - 1)).toNat

end

end A071573.P3513231014265335705

/-! ## A071573.P2569447935961281519

`2*A079695(a(n-1))` with `a(0)=1`
-/

namespace A071573.P2569447935961281519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * A079695 (a (n - 1)).toNat

end

end A071573.P2569447935961281519

/-! ## A071573.P12090825533381669975

`record[A005277(a(∑[n]%n))]` with `a(0)=1`
-/

namespace A071573.P12090825533381669975
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A005277 (f1 ((∑ j ∈ Finset.range (n + 1), f2 j) % n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071573.P12090825533381669975

/-!
# A071574: If n = k-th prime, a(n) = 2*a(k) + 1; if n = k-th nonprime, a(n) = 2*a(k).

The programs for A071574, there is no canonical definition to state claims against.
-/

/-! ## A071574.P101319550530485955

`A243071(A269847(n+1))`
-/

namespace A071574.P101319550530485955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (A269847 (n + 1)).toNat

end

end A071574.P101319550530485955

/-! ## A071574.P12062483420830503838

`∑{d}[A269847(n+1), A297171(#)]`
-/

namespace A071574.P12062483420830503838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269847 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A297171 d

end

end A071574.P12062483420830503838

/-! ## A071574.P3456052112725082102

`A252756(A269857(n+1))`
-/

namespace A071574.P3456052112725082102
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252756 (A269857 (n + 1)).toNat

end

end A071574.P3456052112725082102

/-! ## A071574.P7624321640004598963

`A332811(A269847(n+1)%A138025(n+1))`
-/

namespace A071574.P7624321640004598963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A332811 (Int.tmod (A269847 (n + 1)) (A138025 (n + 1))).toNat

end

end A071574.P7624321640004598963

/-! ## A071574.P17159504963093012697

`A243071(A269857(n+1)%A034316(n))`
-/

namespace A071574.P17159504963093012697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243071 (Int.tmod (A269857 (n + 1)) (A034316 n)).toNat

end

end A071574.P17159504963093012697

/-!
# A071575: Number of iterations of cototient(n) needed to reach 1 (cototient(n) = n-phi(n)).

The programs for A071575, the canonical program `A071575.P1413525790656994869` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071575 has offset 1).

The definition of A071575 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A071575.P1413525790656994869

`A076640(n+1)-1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071575

/-- `A076640(n+1)-1` -/
def P1413525790656994869.Spec : Prop :=
  ∀ n, P1413525790656994869.a n = A071575 (n + 1)

theorem P1413525790656994869.correct : P1413525790656994869.Spec := by
  intro n
  simp only [A071575, Nat.add_sub_cancel]

end A071575

/-! ## A071575.P2452345528104532067

`a(n-A000010(n+1))+1` with `a(0)=0`
-/

namespace A071575.P2452345528104532067
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000010 (n + 1)).toNat + 1

end

end A071575.P2452345528104532067

namespace A071575

/-- `a(n-A000010(n+1))+1` -/
def P2452345528104532067.Spec : Prop :=
  ∀ n, (P2452345528104532067.a n : ℤ) = A071575 (n + 1)

end A071575

/-! ## A071575.P6028345149461822576

`A053475(n+1)-2`
-/

namespace A071575.P6028345149461822576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053475 (n + 1) - 2

end

end A071575.P6028345149461822576

namespace A071575

/-- `A053475(n+1)-2` -/
def P6028345149461822576.Spec : Prop :=
  ∀ n, P6028345149461822576.a n = A071575 (n + 1)

theorem P6028345149461822576.correct : P6028345149461822576.Spec := by
  intro n
  simp only [A071575, Nat.add_sub_cancel, A071575.P6028345149461822576.a, A071575.P1413525790656994869.a, A053475, A053475.P4915054486335898870.a, A076640, A076640.P16940052079035633537.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A173557, A173557.P308518469657070908.f1, A173557.P308518469657070908.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071575

/-! ## A071575.P10503394034529505425

`1+a(A016035(n+1))` with `a(0)=0`
-/

namespace A071575.P10503394034529505425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A016035 (n + 1)).toNat

end

end A071575.P10503394034529505425

namespace A071575

/-- `1+a(A016035(n+1))` -/
def P10503394034529505425.Spec : Prop :=
  ∀ n, (P10503394034529505425.a n : ℤ) = A071575 (n + 1)

end A071575

/-! ## A071575.P13266630652196454886

`a(n-Δ[A005728(n)])+1` with `a(0)=0`
-/

namespace A071575.P13266630652196454886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat + 1

end

end A071575.P13266630652196454886

namespace A071575

/-- `a(n-Δ[A005728(n)])+1` -/
def P13266630652196454886.Spec : Prop :=
  ∀ n, (P13266630652196454886.a n : ℤ) = A071575 (n + 1)

end A071575

/-! ## A071575.P9282895963323844997

`a(A051953(n+1)-1)+1` with `a(0)=0`
-/

namespace A071575.P9282895963323844997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A051953 (n + 1) - 1).toNat + 1

end

end A071575.P9282895963323844997

namespace A071575

/-- `a(A051953(n+1)-1)+1` -/
def P9282895963323844997.Spec : Prop :=
  ∀ n, (P9282895963323844997.a n : ℤ) = A071575 (n + 1)

end A071575

/-! ## A071575.P8261411323785880789

`a(n+1-A039649(n+1))+1` with `a(0)=0`
-/

namespace A071575.P8261411323785880789
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n + 1 : ℤ) - A039649 (n + 1)).toNat + 1

end

end A071575.P8261411323785880789

namespace A071575

/-- `a(n+1-A039649(n+1))+1` -/
def P8261411323785880789.Spec : Prop :=
  ∀ n, (P8261411323785880789.a n : ℤ) = A071575 (n + 1)

end A071575

/-! ## A071575.P16743014963190583904

`a(n-A109606(n+1)-1)+1` with `a(0)=0`
-/

namespace A071575.P16743014963190583904
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A109606 (n + 1) - 1).toNat + 1

end

end A071575.P16743014963190583904

namespace A071575

/-- `a(n-A109606(n+1)-1)+1` -/
def P16743014963190583904.Spec : Prop :=
  ∀ n, (P16743014963190583904.a n : ℤ) = A071575 (n + 1)

end A071575

/-! ## A071575.P5341365459271292948

`A023444(A053475(n+1))`
-/

namespace A071575.P5341365459271292948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023444 (A053475 (n + 1)).toNat

end

end A071575.P5341365459271292948

namespace A071575

/-- `A023444(A053475(n+1))` -/
def P5341365459271292948.Spec : Prop :=
  ∀ n, P5341365459271292948.a n = A071575 (n + 1)

end A071575

/-! ## A071575.P10334529047567596821

`1+a(∑{#}[n, 1-floor(1/gcd(n+1, #))]-1)` with `a(0)=0`
-/

namespace A071575.P10334529047567596821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (∑ k ∈ Finset.range (f1 n + 1), (1 - ⌊1 / (Nat.gcd (n + 1) k : ℚ)⌋) - 1).toNat

end

end A071575.P10334529047567596821

namespace A071575

/-- `1+a(∑{#}[n, 1-floor(1/gcd(n+1, #))]-1)` -/
def P10334529047567596821.Spec : Prop :=
  ∀ n, (P10334529047567596821.a n : ℤ) = A071575 (n + 1)

end A071575

/-! ## A071575.P8351704347975600101

`A117010(n+1)%A076640(n+1)`
-/

namespace A071575.P8351704347975600101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A117010 (n + 1)) (A076640 (n + 1))

end

end A071575.P8351704347975600101

namespace A071575

/-- `A117010(n+1)%A076640(n+1)` -/
def P8351704347975600101.Spec : Prop :=
  ∀ n, P8351704347975600101.a n = A071575 (n + 1)

end A071575

/-! ## A071575.P201729459404941891

`A070198(n)%A076640(n+1)`
-/

namespace A071575.P201729459404941891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A070198 n) (A076640 (n + 1))

end

end A071575.P201729459404941891

namespace A071575

/-- `A070198(n)%A076640(n+1)` -/
def P201729459404941891.Spec : Prop :=
  ∀ n, P201729459404941891.a n = A071575 (n + 1)

end A071575

/-! ## A071575.P1323677590698502119

`A079782(n+1)%A076640(n+1)`
-/

namespace A071575.P1323677590698502119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A079782 (n + 1)) (A076640 (n + 1))

end

end A071575.P1323677590698502119

namespace A071575

/-- `A079782(n+1)%A076640(n+1)` -/
def P1323677590698502119.Spec : Prop :=
  ∀ n, P1323677590698502119.a n = A071575 (n + 1)

end A071575

/-! ## A071575.P15225261003023589948

`A083685(n+1)%A076640(n+1)`
-/

namespace A071575.P15225261003023589948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A083685 (n + 1)) (A076640 (n + 1))

end

end A071575.P15225261003023589948

namespace A071575

/-- `A083685(n+1)%A076640(n+1)` -/
def P15225261003023589948.Spec : Prop :=
  ∀ n, P15225261003023589948.a n = A071575 (n + 1)

end A071575

/-! ## A071575.P7061674809856204212

`A121934(n+1)%A076640(n+1)`
-/

namespace A071575.P7061674809856204212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A121934 (n + 1)) (A076640 (n + 1))

end

end A071575.P7061674809856204212

namespace A071575

/-- `A121934(n+1)%A076640(n+1)` -/
def P7061674809856204212.Spec : Prop :=
  ∀ n, P7061674809856204212.a n = A071575 (n + 1)

end A071575

/-! ## A071575.P3186616420362982714

`A254078(n+2)%A053475(n+1)`
-/

namespace A071575.P3186616420362982714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A053475 (n + 1))

end

end A071575.P3186616420362982714

namespace A071575

/-- `A254078(n+2)%A053475(n+1)` -/
def P3186616420362982714.Spec : Prop :=
  ∀ n, P3186616420362982714.a n = A071575 (n + 1)

end A071575

/-! ## A071575.P6928999890962466135

`A030494(n+1)%A076640(n+1)`
-/

namespace A071575.P6928999890962466135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030494 (n + 1)) (A076640 (n + 1))

end

end A071575.P6928999890962466135

namespace A071575

/-- `A030494(n+1)%A076640(n+1)` -/
def P6928999890962466135.Spec : Prop :=
  ∀ n, P6928999890962466135.a n = A071575 (n + 1)

end A071575

/-! ## A071575.P16571377701514961774

`A072828(n+1)%A076640(n+1)`
-/

namespace A071575.P16571377701514961774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A072828 (n + 1)) (A076640 (n + 1))

end

end A071575.P16571377701514961774

namespace A071575

/-- `A072828(n+1)%A076640(n+1)` -/
def P16571377701514961774.Spec : Prop :=
  ∀ n, P16571377701514961774.a n = A071575 (n + 1)

end A071575

/-! ## A071575.P15137011671151020186

`A198277(n)%A076640(n+1)`
-/

namespace A071575.P15137011671151020186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A198277 n) (A076640 (n + 1))

end

end A071575.P15137011671151020186

namespace A071575

/-- `A198277(n)%A076640(n+1)` -/
def P15137011671151020186.Spec : Prop :=
  ∀ n, P15137011671151020186.a n = A071575 (n + 1)

end A071575

/-!
# A071576: a(n) = least k such that 2ik + 1 is prime for all 1 <= i <= n.

The programs for A071576, there is no canonical definition to state claims against.
-/

/-! ## A071576.P16582018032032920432

`ceil(A088250(n+1)/2)`
-/

namespace A071576.P16582018032032920432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A088250 (n + 1) : ℚ) / 2⌉

end

end A071576.P16582018032032920432

/-! ## A071576.P7033087881913955738

`A088250(n+1)/gcd(2, A000010(n+1))`
-/

namespace A071576.P7033087881913955738
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088250 (n + 1) : ℚ) / (Int.gcd 2 (A000010 (n + 1)) : ℚ)

end

end A071576.P7033087881913955738

/-! ## A071576.P4227452477799448598

`A088250(n+1)/A014963(A085543(n))`
-/

namespace A071576.P4227452477799448598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088250 (n + 1) : ℚ) / (A014963 (A085543 n).toNat : ℚ)

end

end A071576.P4227452477799448598

/-! ## A071576.P13730497513731663917

`A088250(n+1)/A000034(A088652(n+1))`
-/

namespace A071576.P13730497513731663917
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A088250 (n + 1) : ℚ) / (A000034 (A088652 (n + 1)).toNat : ℚ)

end

end A071576.P13730497513731663917

/-! ## A071576.P1660498497046148023

`round(A088250(n+1)/A020639(A177917(n+1)))`
-/

namespace A071576.P1660498497046148023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A088250 (n + 1) : ℚ) / (A020639 (A177917 (n + 1)).toNat : ℚ))

end

end A071576.P1660498497046148023

/-!
# A071577: Smallest k such that 2ik+1 is squarefree for 1<=i<=n.

The programs for A071577, there is no canonical definition to state claims against.
-/

/-! ## A071577.P7800232965320045282

`ceil(A071808(n+1)/2)`
-/

namespace A071577.P7800232965320045282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A071808 (n + 1) : ℚ) / 2⌉

end

end A071577.P7800232965320045282

/-! ## A071577.P7338228751154536755

`round(A071808(char[1]+1+n)/2)`
-/

namespace A071577.P7338228751154536755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A071808 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n) : ℚ) / 2)

end

end A071577.P7338228751154536755

/-! ## A071577.P7890020398249624695

`A071808(round(acot(n)+n+1))/2`
-/

namespace A071577.P7890020398249624695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071808 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n + 1 : ℝ))).toNat : ℚ) / 2

end

end A071577.P7890020398249624695

/-! ## A071577.P2278290514041508512

`A071808(n*a(n%2)+1)/2` with `a(0)=1, a(1)=1`
-/

namespace A071577.P2278290514041508512
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A071808 (SequenceMachineLib.roundAway ((n : ℚ) * a (n % 2) + 1)).toNat : ℚ) / 2

end

end A071577.P2278290514041508512

/-! ## A071577.P17847797804348397289

`A071808(gcd(2, a(gcd(2, n)-1))+n)/2` with `a(0)=1, a(1)=1`
-/

namespace A071577.P17847797804348397289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A071808 (Int.gcd 2 (SequenceMachineLib.roundAway (a (Nat.gcd 2 n - 1))) + n) : ℚ) / 2

end

end A071577.P17847797804348397289

/-! ## A071577.P15211349205512448968

`A071808(a(1-and(1, A000040(n+1)))+n)/2` with `a(0)=1, a(1)=1`
-/

namespace A071577.P15211349205512448968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1] fun n a =>
  (A071808 (SequenceMachineLib.roundAway (a (1 - Int.land 1 (A000040 (n + 1))).toNat + (n : ℚ))).toNat : ℚ) / 2

end

end A071577.P15211349205512448968

/-! ## A071577.P680662588600474113

`A071808(n+1)/A020639(A000010(n+1))`
-/

namespace A071577.P680662588600474113
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071808 (n + 1) : ℚ) / (A020639 (A000010 (n + 1)).toNat : ℚ)

end

end A071577.P680662588600474113

/-! ## A071577.P7297303739418642079

`A004525(A071808(n+1))`
-/

namespace A071577.P7297303739418642079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A071808 (n + 1)).toNat

end

end A071577.P7297303739418642079

/-!
# A071578: Number of iterations of Pi(n) needed to reach 1, where Pi(x) denotes the number of primes <= x.

The programs for A071578, the canonical program `A071578.P14197670125788474709` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071578 has offset 1).

The definition of A071578 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A060197, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071578.P14197670125788474709

`A060197(n+1)-2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A071578

/-- `A060197(n+1)-2` -/
def P14197670125788474709.Spec : Prop :=
  ∀ n, P14197670125788474709.a n = A071578 (n + 1)

theorem P14197670125788474709.correct : P14197670125788474709.Spec := by
  intro n
  simp only [A071578, Nat.add_sub_cancel]

end A071578

/-! ## A071578.P11728342971290946574

`a(∑[∑{p}[n+1, C(#, n+1)]]-1)+1` with `a(0)=0`
-/

namespace A071578.P11728342971290946574
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), Nat.choose p (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A071578.P11728342971290946574

namespace A071578

/-- `a(∑[∑{p}[n+1, C(#, n+1)]]-1)+1` -/
def P11728342971290946574.Spec : Prop :=
  ∀ n, (P11728342971290946574.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P10916939018180479500

`a(∑[∑{p}[n+1, floor(#/(n+1))]]-1)+1` with `a(0)=0`
-/

namespace A071578.P10916939018180479500
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), ⌊(p : ℚ) / (n + 1 : ℚ)⌋

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1).toNat + 1

end

end A071578.P10916939018180479500

namespace A071578

/-- `a(∑[∑{p}[n+1, floor(#/(n+1))]]-1)+1` -/
def P10916939018180479500.Spec : Prop :=
  ∀ n, (P10916939018180479500.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P8573024474731831988

`a(A033270(n+1))+1` with `a(0)=0`
-/

namespace A071578.P8573024474731831988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A033270 (n + 1)).toNat + 1

end

end A071578.P8573024474731831988

namespace A071578

/-- `a(A033270(n+1))+1` -/
def P8573024474731831988.Spec : Prop :=
  ∀ n, (P8573024474731831988.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P1722837937240467329

`∑[char[A007097(n+1)-1]]`
-/

namespace A071578.P1722837937240467329
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071578.P1722837937240467329

namespace A071578

/-- `∑[char[A007097(n+1)-1]]` -/
def P1722837937240467329.Spec : Prop :=
  ∀ n, (P1722837937240467329.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P13146841060825045110

`∑[char[A007097(n)-1]]-1`
-/

namespace A071578.P13146841060825045110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007097 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A071578.P13146841060825045110

namespace A071578

/-- `∑[char[A007097(n)-1]]-1` -/
def P13146841060825045110.Spec : Prop :=
  ∀ n, P13146841060825045110.a n = A071578 (n + 1)

end A071578

/-! ## A071578.P3297152849859697056

`∑[C(C(2, A109129(n+1)), 2)]`
-/

namespace A071578.P3297152849859697056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (Nat.choose 2 (A109129 (n + 1)).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071578.P3297152849859697056

namespace A071578

/-- `∑[C(C(2, A109129(n+1)), 2)]` -/
def P3297152849859697056.Spec : Prop :=
  ∀ n, (P3297152849859697056.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P11598128394762051964

`1+a(A000720(n+1)-1)` with `a(0)=0`
-/

namespace A071578.P11598128394762051964
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  1 + a (A000720 (n + 1) - 1).toNat

end

end A071578.P11598128394762051964

namespace A071578

/-- `1+a(A000720(n+1)-1)` -/
def P11598128394762051964.Spec : Prop :=
  ∀ n, (P11598128394762051964.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P4398340674865928061

`a(∑[char[A007918(n)-1]]-1)+1` with `a(0)=0`
-/

namespace A071578.P4398340674865928061
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 n - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A071578.P4398340674865928061

namespace A071578

/-- `a(∑[char[A007918(n)-1]]-1)+1` -/
def P4398340674865928061.Spec : Prop :=
  ∀ n, (P4398340674865928061.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P18333387726859320623

`∑[char[A000040(a(n-1)+1)-1]]` with `a(0)=1`
-/

namespace A071578.P18333387726859320623
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A000040 (f2 (n - 1) + 1).toNat - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071578.P18333387726859320623

namespace A071578

/-- `∑[char[A000040(a(n-1)+1)-1]]` -/
def P18333387726859320623.Spec : Prop :=
  ∀ n, (P18333387726859320623.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P2634661781271665829

`a(∑[C(A000010(n+1), n)]-2)+1` with `a(0)=0`
-/

namespace A071578.P2634661781271665829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A000010 (n + 1)).toNat n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 2) + 1

end

end A071578.P2634661781271665829

namespace A071578

/-- `a(∑[C(A000010(n+1), n)]-2)+1` -/
def P2634661781271665829.Spec : Prop :=
  ∀ n, (P2634661781271665829.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P4896931917344507448

`a(∑[char[A006530(n+2)-1]]-1)+1` with `a(0)=0`
-/

namespace A071578.P4896931917344507448
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A071578.P4896931917344507448

namespace A071578

/-- `a(∑[char[A006530(n+2)-1]]-1)+1` -/
def P4896931917344507448.Spec : Prop :=
  ∀ n, (P4896931917344507448.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P1231286021330751021

`a(∑[char[A020639(n+2)-1]]-1)+1` with `a(0)=0`
-/

namespace A071578.P1231286021330751021
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (∑ j ∈ Finset.range (n + 1), f1 j - 1) + 1

end

end A071578.P1231286021330751021

namespace A071578

/-- `a(∑[char[A020639(n+2)-1]]-1)+1` -/
def P1231286021330751021.Spec : Prop :=
  ∀ n, (P1231286021330751021.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P11479822639288950806

`∑[char[A000010(A007097(n))]]`
-/

namespace A071578.P11479822639288950806
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A007097 n).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A071578.P11479822639288950806

namespace A071578

/-- `∑[char[A000010(A007097(n))]]` -/
def P11479822639288950806.Spec : Prop :=
  ∀ n, (P11479822639288950806.a n : ℤ) = A071578 (n + 1)

end A071578

/-! ## A071578.P10692085899230036346

`A254078(n+2)%A060197(n+1)`
-/

namespace A071578.P10692085899230036346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254078 (n + 2)) (A060197 (n + 1))

end

end A071578.P10692085899230036346

namespace A071578

/-- `A254078(n+2)%A060197(n+1)` -/
def P10692085899230036346.Spec : Prop :=
  ∀ n, P10692085899230036346.a n = A071578 (n + 1)

end A071578

/-!
# A071579: a(n) = 2*a(n-1)*A002812(n-1), starting a(0)=1.

The programs for A071579, the canonical program `A071579.P14432582664150717918` is in `Seq.B001.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071579 has offset 0).

The definition of A071579 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)*A002812(n-1)` (program `A071579.P14432582664150717918`, by `A071579.P14432582664150717918.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A071579.P11227996151373114345

`a(n-1)*sqrt(12*a(n-1)²+4)` with `a(0)=1`
-/

namespace A071579.P11227996151373114345
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * Real.sqrt (12 * a (n - 1) ^ 2 + 4)

end

end A071579.P11227996151373114345

namespace A071579

/-- `a(n-1)*sqrt(12*a(n-1)²+4)` -/
def P11227996151373114345.Spec : Prop :=
  ∀ n, P11227996151373114345.a n = (A071579 n : ℝ)

end A071579

/-! ## A071579.P14432582664150717918

`2*a(n-1)*A002812(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C003`.
-/

namespace A071579

/-- `2*a(n-1)*A002812(n-1)` -/
def P14432582664150717918.Spec : Prop :=
  ∀ n, P14432582664150717918.a n = A071579 n

theorem P14432582664150717918.correct : P14432582664150717918.Spec := by
  intro n
  simp only [A071579]

end A071579

/-! ## A071579.P637057215146819471

`∏[a(n-1)²-2]` with `a(0)=1, a(1)=4`
-/

namespace A071579.P637057215146819471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n f1 =>
  f1 (n - 1) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A071579.P637057215146819471

namespace A071579

/-- `∏[a(n-1)²-2]` -/
def P637057215146819471.Spec : Prop :=
  ∀ n, P637057215146819471.a n = A071579 n

end A071579

/-! ## A071579.P4444890247263114720

`1/sqrt(12)*((2+sqrt(3))^2^n-(2-sqrt(3))^2^n)`
-/

namespace A071579.P4444890247263114720
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 / Real.sqrt (12 : ℝ) * ((2 + Real.sqrt (3 : ℝ)) ^ 2 ^ n - (2 - Real.sqrt (3 : ℝ)) ^ 2 ^ n)

end

end A071579.P4444890247263114720

namespace A071579

/-- `1/sqrt(12)*((2+sqrt(3))^2^n-(2-sqrt(3))^2^n)` -/
def P4444890247263114720.Spec : Prop :=
  ∀ n, P4444890247263114720.a n = (A071579 n : ℝ)

end A071579

/-!
# A071580: Smallest prime of the form k*a(n-1)*a(n-2)*...*a(1)+1.

The programs for A071580, there is no canonical definition to state claims against.
-/

/-! ## A071580.P14310492919521957464

`lcm(n*a(n-1), A000010(a(n-1)))+1` with `a(0)=2`
-/

namespace A071580.P14310492919521957464
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2] fun n a =>
  Int.lcm (n * a (n - 1) : ℤ) (A000010 (a (n - 1))) + 1

end

end A071580.P14310492919521957464

/-! ## A071580.P3899543656923489627

`A359340(∑[A359319(n)²])`
-/

namespace A071580.P3899543656923489627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359319 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359340 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A071580.P3899543656923489627

/-!
# A071581: A003656(n)-prime(n).

The programs for A071581, there is no canonical definition to state claims against.
-/

/-! ## A071581.P9848627846852118836

`A003656(n+1)-A000040(n+1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A071581.P9848627846852118836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1) - A000040 (n + 1)

end

end A071581.P9848627846852118836

/-! ## A071581.P8393821058481499021

`A003656(n+1)-Δ[A007504(n)]`
-/

namespace A071581.P8393821058481499021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1) - (f1 (n + 1) - f1 n)

end

end A071581.P8393821058481499021

/-! ## A071581.P6058590035614213914

`A003656(n+1)-p?[A001057(n)]`
-/

namespace A071581.P6058590035614213914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071581.P6058590035614213914

/-! ## A071581.P10346994972888480351

`A003656(n+1)-A216886(n+1)`
-/

namespace A071581.P10346994972888480351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1) - A216886 (n + 1)

end

end A071581.P10346994972888480351

/-! ## A071581.P12467226796150062390

`A003656(n+1)-p?[A000463(n+1)]`
-/

namespace A071581.P12467226796150062390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071581.P12467226796150062390

/-! ## A071581.P16842728658122838819

`A003656(n+1)-p?[A000961(n+1)]`
-/

namespace A071581.P16842728658122838819
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1) - f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A071581.P16842728658122838819

/-! ## A071581.P14365108509833084994

`A003656(n+1)-record[A006530(n+2)]`
-/

namespace A071581.P14365108509833084994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071581.P14365108509833084994

/-! ## A071581.P14296446615439365724

`A003656(n+1)-record[A020639(n+2)]`
-/

namespace A071581.P14296446615439365724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071581.P14296446615439365724

/-! ## A071581.P8723715772477431336

`A003656(n+1)-record[A000010(n+1)+1]`
-/

namespace A071581.P8723715772477431336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003656 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071581.P8723715772477431336

/-!
# A071582: Powers of 4 written backwards.

The programs for A071582, there is no canonical definition to state claims against.
-/

/-! ## A071582.P9446204464423798728

`A004094(2*n)`
-/

namespace A071582.P9446204464423798728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 (2 * n)

end

end A071582.P9446204464423798728

/-! ## A071582.P12705491828610726518

`A341718(2*n)+1`
-/

namespace A071582.P12705491828610726518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341718 (2 * n) + 1

end

end A071582.P12705491828610726518

/-! ## A071582.P14355440262022587683

`and(-1, A004094(A005843(n)))`
-/

namespace A071582.P14355440262022587683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004094 (A005843 n).toNat)

end

end A071582.P14355440262022587683

/-! ## A071582.P11335357954866088722

`A004094(n+n)/A001222(A151800(n))`
-/

namespace A071582.P11335357954866088722
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004094 (n + n) : ℚ) / (A001222 (A151800 n).toNat : ℚ)

end

end A071582.P11335357954866088722

/-! ## A071582.P4515423070085683106

`A004094(A005843(n))^A007318(∑[n])`
-/

namespace A071582.P4515423070085683106
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004094 (A005843 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A071582.P4515423070085683106

/-! ## A071582.P12282050772492671322

`A004094(n+n)/A297321(∑[n])`
-/

namespace A071582.P12282050772492671322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004094 (n + n) : ℚ) / (A297321 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A071582.P12282050772492671322

/-!
# A071583: Powers of 5 written backwards.

The programs for A071583, there is no canonical definition to state claims against.
-/

/-! ## A071583.P10380563174833650827

`A004086(5^n)`
-/

namespace A071583.P10380563174833650827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (5 ^ n)

end

end A071583.P10380563174833650827

/-! ## A071583.P11303234441499008521

`A056964(5^n)-5^n`
-/

namespace A071583.P11303234441499008521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 (5 ^ n) - (5 ^ n : ℤ)

end

end A071583.P11303234441499008521

/-! ## A071583.P16640500044999375879

`record[A004086(A038243(n))]`
-/

namespace A071583.P16640500044999375879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A038243 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071583.P16640500044999375879

/-!
# A071584: Powers of 7 written backwards.

The programs for A071584, there is no canonical definition to state claims against.
-/

/-! ## A071584.P10964037409238225285

`A134113(A184107(n+1)%A134106(n+1))`
-/

namespace A071584.P10964037409238225285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134113 (Int.tmod (A184107 (n + 1)) (A134106 (n + 1))).toNat

end

end A071584.P10964037409238225285

/-! ## A071584.P13714167472336488080

`A004086(7^n)`
-/

namespace A071584.P13714167472336488080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (7 ^ n)

end

end A071584.P13714167472336488080

/-!
# A071585: Numerator of the continued fraction expansion whose terms are the first-order differences of exponents in the binary representation of 4*n, with the exponents of 2 being listed in descending order.

The programs for A071585, the canonical program `A071585.P327096867554570626` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071585 has offset 0).

The definition of A071585 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A093875, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A071585.P327096867554570626

`A093875(2*n+1)`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A071585

/-- `A093875(2*n+1)` -/
def P327096867554570626.Spec : Prop :=
  ∀ n, P327096867554570626.a n = A071585 n

theorem P327096867554570626.correct : P327096867554570626.Spec := by
  intro n
  simp only [A071585]

end A071585

/-! ## A071585.P16805346648924596122

`A229742(n)+A071766(n)`
-/

namespace A071585.P16805346648924596122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229742 n + A071766 n

end

end A071585.P16805346648924596122

namespace A071585

/-- `A229742(n)+A071766(n)` -/
def P16805346648924596122.Spec : Prop :=
  ∀ n, P16805346648924596122.a n = A071585 n

theorem P16805346648924596122.correct : P16805346648924596122.Spec := by
  intro n
  simp only [A071585, Nat.add_sub_cancel, A071585.P16805346648924596122.a, A071585.P327096867554570626.a, A071766, A071766.P4720922600265952592.a, A093875, A093875.P1175573544664429257.a, A229742, A229742.P11809137219085310732.a, A007305, A007305.P14904390197358887400.a, A093873, A093873.P2224361996583993977.a, A233279, A233279.P10877154597455539139.a, A004761, A004761.P402450897562132298.f1, A004761.P402450897562132298.f2, A004761.P402450897562132298.a, A006068, A006068.P433290056721054414.a, A007306, A007306.P17183682227013142410.a, A063946, A063946.P14831572246508618093.a, A295515, A295515.P11785583445350184235.a, A002487, A002487.P14011177000981426228.a, A003602, A003602.P7612175048291952394.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071585

/-! ## A071585.P957536702071346809

`A324338(n)+A324337(n)`
-/

namespace A071585.P957536702071346809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 n + A324337 n

end

end A071585.P957536702071346809

namespace A071585

/-- `A324338(n)+A324337(n)` -/
def P957536702071346809.Spec : Prop :=
  ∀ n, P957536702071346809.a n = A071585 n

end A071585

/-! ## A071585.P6571421026436459439

`A086593(n+1)-A071766(n)`
-/

namespace A071585.P6571421026436459439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086593 (n + 1) - A071766 n

end

end A071585.P6571421026436459439

namespace A071585

/-- `A086593(n+1)-A071766(n)` -/
def P6571421026436459439.Spec : Prop :=
  ∀ n, P6571421026436459439.a n = A071585 n

theorem P6571421026436459439.correct : P6571421026436459439.Spec := by
  intro n
  simp only [A071585, Nat.add_sub_cancel, A071585.P6571421026436459439.a, A071585.P327096867554570626.a, A071766, A071766.P4720922600265952592.a, A086593, A086593.P15080225113442346150.a, A093875, A093875.P1175573544664429257.a, A007305, A007305.P14904390197358887400.a, A093873, A093873.P2224361996583993977.a, A233279, A233279.P10877154597455539139.a, A004761, A004761.P402450897562132298.f1, A004761.P402450897562132298.f2, A004761.P402450897562132298.a, A006068, A006068.P433290056721054414.a, A007306, A007306.P17183682227013142410.a, A063946, A063946.P14831572246508618093.a, A295515, A295515.P11785583445350184235.a, A002487, A002487.P14011177000981426228.a, A003602, A003602.P7612175048291952394.a, A053644, A053644.P1707366427427647095.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A071585

/-! ## A071585.P6977045352494500110

`A007306(A233279(n)+1)`
-/

namespace A071585.P6977045352494500110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A233279 n + 1).toNat

end

end A071585.P6977045352494500110

namespace A071585

/-- `A007306(A233279(n)+1)` -/
def P6977045352494500110.Spec : Prop :=
  ∀ n, P6977045352494500110.a n = A071585 n

end A071585

/-! ## A071585.P8501344267696052879

`A324337(A000069(n+1))`
-/

namespace A071585.P8501344267696052879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A000069 (n + 1)).toNat

end

end A071585.P8501344267696052879

namespace A071585

/-- `A324337(A000069(n+1))` -/
def P8501344267696052879.Spec : Prop :=
  ∀ n, P8501344267696052879.a n = A071585 n

end A071585

/-! ## A071585.P1528517911713159566

`A245327(A345401(n))`
-/

namespace A071585.P1528517911713159566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245327 (A345401 n).toNat

end

end A071585.P1528517911713159566

namespace A071585

/-- `A245327(A345401(n))` -/
def P1528517911713159566.Spec : Prop :=
  ∀ n, P1528517911713159566.a n = A071585 n

end A071585

/-! ## A071585.P9004646044547720223

`A007306(A006068(n)+1)`
-/

namespace A071585.P9004646044547720223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A006068 n + 1).toNat

end

end A071585.P9004646044547720223

namespace A071585

/-- `A007306(A006068(n)+1)` -/
def P9004646044547720223.Spec : Prop :=
  ∀ n, P9004646044547720223.a n = A071585 n

end A071585

/-! ## A071585.P670920342836865959

`A007306(A066194(n+1))`
-/

namespace A071585.P670920342836865959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007306 (A066194 (n + 1)).toNat

end

end A071585.P670920342836865959

namespace A071585

/-- `A007306(A066194(n+1))` -/
def P670920342836865959.Spec : Prop :=
  ∀ n, P670920342836865959.a n = A071585 n

end A071585

/-! ## A071585.P3961738384575384190

`A324338(A001969(n+1))`
-/

namespace A071585.P3961738384575384190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A001969 (n + 1)).toNat

end

end A071585.P3961738384575384190

namespace A071585

/-- `A324338(A001969(n+1))` -/
def P3961738384575384190.Spec : Prop :=
  ∀ n, P3961738384575384190.a n = A071585 n

end A071585

/-! ## A071585.P15943071707661451464

`A324337(lt[A324335(n), 0])`
-/

namespace A071585.P15943071707661451464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324335 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A071585.P15943071707661451464

namespace A071585

/-- `A324337(lt[A324335(n), 0])` -/
def P15943071707661451464.Spec : Prop :=
  ∀ n, P15943071707661451464.a n = A071585 n

end A071585

/-! ## A071585.P5843919195165555990

`A324338(lt[0, A324335(n)])`
-/

namespace A071585.P5843919195165555990
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A071585.P5843919195165555990

namespace A071585

/-- `A324338(lt[0, A324335(n)])` -/
def P5843919195165555990.Spec : Prop :=
  ∀ n, P5843919195165555990.a n = A071585 n

end A071585

/-! ## A071585.P14156536035738920687

`A324338(lt[n, A324378(n)])`
-/

namespace A071585.P14156536035738920687
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324378 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A071585.P14156536035738920687

namespace A071585

/-- `A324338(lt[n, A324378(n)])` -/
def P14156536035738920687.Spec : Prop :=
  ∀ n, P14156536035738920687.a n = A071585 n

end A071585

/-! ## A071585.P1898173649408520997

`A324338(n)+A002487(A006068(n))`
-/

namespace A071585.P1898173649408520997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 n + A002487 (A006068 n).toNat

end

end A071585.P1898173649408520997

namespace A071585

/-- `A324338(n)+A002487(A006068(n))` -/
def P1898173649408520997.Spec : Prop :=
  ∀ n, P1898173649408520997.a n = A071585 n

end A071585

/-! ## A071585.P12703626668900237429

`A324338(lt[A324337(n), A324338(n)])`
-/

namespace A071585.P12703626668900237429
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A071585.P12703626668900237429

namespace A071585

/-- `A324338(lt[A324337(n), A324338(n)])` -/
def P12703626668900237429.Spec : Prop :=
  ∀ n, P12703626668900237429.a n = A071585 n

end A071585

/-! ## A071585.P8192584260866807383

`A324337(A268717(n+1))+A324337(n)`
-/

namespace A071585.P8192584260866807383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324337 (A268717 (n + 1)).toNat + A324337 n

end

end A071585.P8192584260866807383

namespace A071585

/-- `A324337(A268717(n+1))+A324337(n)` -/
def P8192584260866807383.Spec : Prop :=
  ∀ n, P8192584260866807383.a n = A071585 n

end A071585

/-! ## A071585.P8438107755081344060

`A324338(A063946(A000069(A063946(n)+1)))`
-/

namespace A071585.P8438107755081344060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324338 (A063946 (A000069 (A063946 n + 1).toNat).toNat).toNat

end

end A071585.P8438107755081344060

namespace A071585

/-- `A324338(A063946(A000069(A063946(n)+1)))` -/
def P8438107755081344060.Spec : Prop :=
  ∀ n, P8438107755081344060.a n = A071585 n

end A071585

/-! ## A071585.P1697782015494517837

`A086592(2*n+1)-A071766(n)`
-/

namespace A071585.P1697782015494517837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086592 (2 * n + 1) - A071766 n

end

end A071585.P1697782015494517837

namespace A071585

/-- `A086592(2*n+1)-A071766(n)` -/
def P1697782015494517837.Spec : Prop :=
  ∀ n, P1697782015494517837.a n = A071585 n

end A071585

/-! ## A071585.P9908369521046683391

`A059893(A059893(A093875(n+1+n)))`
-/

namespace A071585.P9908369521046683391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A059893 (A093875 (n + 1 + n)).toNat).toNat

end

end A071585.P9908369521046683391

namespace A071585

/-- `A059893(A059893(A093875(n+1+n)))` -/
def P9908369521046683391.Spec : Prop :=
  ∀ n, P9908369521046683391.a n = A071585 n

end A071585

/-! ## A071585.P1282678833256933866

`A114214(A268716(n))`
-/

namespace A071585.P1282678833256933866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114214 (A268716 n).toNat

end

end A071585.P1282678833256933866

namespace A071585

/-- `A114214(A268716(n))` -/
def P1282678833256933866.Spec : Prop :=
  ∀ n, P1282678833256933866.a n = A071585 n

end A071585

/-!
# A071586: Powers of 8 written backwards.

The programs for A071586, there is no canonical definition to state claims against.
-/

/-! ## A071586.P16556919072229479408

`A004094(3*n)`
-/

namespace A071586.P16556919072229479408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 (3 * n)

end

end A071586.P16556919072229479408

/-! ## A071586.P4086028563209244055

`A341718(3*n)+1`
-/

namespace A071586.P4086028563209244055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341718 (3 * n) + 1

end

end A071586.P4086028563209244055

/-! ## A071586.P17244558286425225038

`A004094(A008486(n))-A000007(n)`
-/

namespace A071586.P17244558286425225038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 (A008486 n).toNat - A000007 n

end

end A071586.P17244558286425225038

/-! ## A071586.P11835590405276077986

`A004094(A008486(n))-A000302(n)%2`
-/

namespace A071586.P11835590405276077986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004094 (A008486 n).toNat - Int.tmod (A000302 n) 2

end

end A071586.P11835590405276077986

/-! ## A071586.P2405394905039364845

`A004094(A008486(n))/A014963(A001545(n))`
-/

namespace A071586.P2405394905039364845
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004094 (A008486 n).toNat : ℚ) / (A014963 (A001545 n).toNat : ℚ)

end

end A071586.P2405394905039364845

/-!
# A071587: Powers of 9 written backwards.

The programs for A071587, there is no canonical definition to state claims against.
-/

/-! ## A071587.P8771197235216858171

`A004167(2*n)`
-/

namespace A071587.P8771197235216858171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004167 (2 * n)

end

end A071587.P8771197235216858171

/-! ## A071587.P6222952397983656821

`and(-1, A004167(A005843(n)))`
-/

namespace A071587.P6222952397983656821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004167 (A005843 n).toNat)

end

end A071587.P6222952397983656821

/-! ## A071587.P7110219464267199368

`A004167(A004277(n))-A000038(n)`
-/

namespace A071587.P7110219464267199368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004167 (A004277 n).toNat - A000038 n

end

end A071587.P7110219464267199368

/-! ## A071587.P12645717356658133570

`A004167(A005843(n))^(A276554(∑[n]+n)+1)`
-/

namespace A071587.P12645717356658133570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004167 (A005843 n).toNat : ℚ) ^ (A276554 (∑ j ∈ Finset.range (n + 1), f1 j + n) + 1 : ℤ)

end

end A071587.P12645717356658133570

/-! ## A071587.P7451086579813748314

`A004167(A005843(n))%A001552(n)²`
-/

namespace A071587.P7451086579813748314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004167 (A005843 n).toNat) (A001552 n ^ 2)

end

end A071587.P7451086579813748314

/-!
# A071588: Powers of 6 written backwards.

The programs for A071588, there is no canonical definition to state claims against.
-/

/-! ## A071588.P13354501527549910380

`A004086(A000400(n))`
-/

namespace A071588.P13354501527549910380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000400 n).toNat

end

end A071588.P13354501527549910380

/-! ## A071588.P17026191372323766911

`A004086(6^n)`
-/

namespace A071588.P17026191372323766911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (6 ^ n)

end

end A071588.P17026191372323766911

/-! ## A071588.P7605897309173768424

`and(-1, A004086(A238936(n+1)))`
-/

namespace A071588.P7605897309173768424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A004086 (A238936 (n + 1)).toNat)

end

end A071588.P7605897309173768424

/-!
# A071589: Numbers n such that Reversal(n) > n.

The programs for A071589, there is no canonical definition to state claims against.
-/

/-! ## A071589.P4656987129343251606

`lt[n, A004086(n)]`
-/

namespace A071589.P4656987129343251606
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071589.P4656987129343251606

/-! ## A071589.P944647090184433305

`lt[2*n, A056964(n)]`
-/

namespace A071589.P944647090184433305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071589.P944647090184433305

/-! ## A071589.P10156854625853790324

`eq[n+1, (n+1)%A004086(n+1)]+1`
-/

namespace A071589.P10156854625853790324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A004086 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071589.P10156854625853790324

/-! ## A071589.P13486175354065642681

`∩[A029742(n+1), A131058(n+1)]`
-/

namespace A071589.P13486175354065642681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029742 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071589.P13486175354065642681

/-! ## A071589.P1442918619542720081

`record[A029742(n+2)%A004086(A029742(n+2))]`
-/

namespace A071589.P1442918619542720081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029742 (n + 2)) (A004086 (A029742 (n + 2)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071589.P1442918619542720081

/-! ## A071589.P15842798833375270412

`lt[A056965(n), 0]`
-/

namespace A071589.P15842798833375270412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071589.P15842798833375270412

/-! ## A071589.P11797770593142708022

`lt[n², A061205(n)]`
-/

namespace A071589.P11797770593142708022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071589.P11797770593142708022

/-! ## A071589.P12269140532836508861

`lt[A160928(n+1), 0]`
-/

namespace A071589.P12269140532836508861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160928 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071589.P12269140532836508861

/-! ## A071589.P10280729778550916893

`lt[n, xor(n, A256756(n))]`
-/

namespace A071589.P10280729778550916893
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A256756 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071589.P10280729778550916893

/-! ## A071589.P8668584393204954017

`lt[A068159(n+1), 1]+1`
-/

namespace A071589.P8668584393204954017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068159 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A071589.P8668584393204954017

/-! ## A071589.P16814227122749288655

`lt[A004277(n), A056964(n)-1]`
-/

namespace A071589.P16814227122749288655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071589.P16814227122749288655

/-! ## A071589.P12188550783314466518

`lt[n, A004093(5*n)]`
-/

namespace A071589.P12188550783314466518
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004093 (5 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071589.P12188550783314466518

/-! ## A071589.P13946829361758150641

`A297272(n+1)+A036860(Δ[A297272(n+1)]+1)`
-/

namespace A071589.P13946829361758150641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297272 (n + 1) + A036860 (f1 (n + 1) - f1 n + 1).toNat

end

end A071589.P13946829361758150641

/-! ## A071589.P10931384369750816139

`and(A107953(A297272(n+1)-n), A297272(n+1))`
-/

namespace A071589.P10931384369750816139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107953 (A297272 (n + 1) - (n : ℤ)).toNat) (A297272 (n + 1))

end

end A071589.P10931384369750816139

/-! ## A071589.P18008455016956586321

`and(A107954(A297272(n+1)-n), A297272(n+1))`
-/

namespace A071589.P18008455016956586321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A107954 (A297272 (n + 1) - (n : ℤ)).toNat) (A297272 (n + 1))

end

end A071589.P18008455016956586321

/-! ## A071589.P11965209630008130457

`A297272(and(1, A107953(n))+n)`
-/

namespace A071589.P11965209630008130457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297272 (Int.land 1 (A107953 n) + (n : ℤ)).toNat

end

end A071589.P11965209630008130457

/-! ## A071589.P2878585801987007613

`A297272(and(n-A107953(n), A107953(n)))`
-/

namespace A071589.P2878585801987007613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297272 (Int.land ((n : ℤ) - A107953 n) (A107953 n)).toNat

end

end A071589.P2878585801987007613

/-! ## A071589.P9741551391390741267

`A297272(and(1, A107954(n))+n)`
-/

namespace A071589.P9741551391390741267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297272 (Int.land 1 (A107954 n) + (n : ℤ)).toNat

end

end A071589.P9741551391390741267

/-! ## A071589.P6163993746292068023

`A297272(and(n-A107954(n), A107954(n)))`
-/

namespace A071589.P6163993746292068023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297272 (Int.land ((n : ℤ) - A107954 n) (A107954 n)).toNat

end

end A071589.P6163993746292068023

/-! ## A071589.P10186618016612775570

`A297272(and(1, A107955(n))+n)`
-/

namespace A071589.P10186618016612775570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297272 (Int.land 1 (A107955 n) + (n : ℤ)).toNat

end

end A071589.P10186618016612775570

/-!
# A071590: Numbers k such that reversal(k) < k.

The programs for A071590, there is no canonical definition to state claims against.
-/

/-! ## A071590.P15272680577713436342

`lt[A004086(n), n]`
-/

namespace A071590.P15272680577713436342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071590.P15272680577713436342

/-! ## A071590.P10260136972774149816

`lt[A056964(n), 2*n]`
-/

namespace A071590.P10260136972774149816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071590.P10260136972774149816

/-! ## A071590.P18062875654305100115

`comp[A131058(n+1)]`
-/

namespace A071590.P18062875654305100115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A071590.P18062875654305100115

/-! ## A071590.P11364707527459821594

`lt[0, A056965(n)]`
-/

namespace A071590.P11364707527459821594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071590.P11364707527459821594

/-! ## A071590.P5198738149240909740

`lt[A061205(n), n²]`
-/

namespace A071590.P5198738149240909740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061205 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071590.P5198738149240909740

/-! ## A071590.P15817176255269012625

`lt[xor(n, A256756(n)), n]`
-/

namespace A071590.P15817176255269012625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (A256756 n)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071590.P15817176255269012625

/-! ## A071590.P16012319734496486366

`lt[A160926(n+1), n²]+2`
-/

namespace A071590.P16012319734496486366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160926 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 2

end

end A071590.P16012319734496486366

/-! ## A071590.P4511964752787604552

`lt[A056964(n)+1, A004277(n)]`
-/

namespace A071590.P4511964752787604552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071590.P4511964752787604552

/-! ## A071590.P8990281382513639186

`eq[floor(A004086(n)/(n+1)), A136522(n)]`
-/

namespace A071590.P8990281382513639186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A004086 n : ℚ) / (n + 1 : ℚ)⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136522 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071590.P8990281382513639186

/-! ## A071590.P15311024821719414876

`lt[1, A160928(n+1)]`
-/

namespace A071590.P15311024821719414876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160928 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071590.P15311024821719414876

/-! ## A071590.P7409071022685377887

`lt[A160927(n+1), 2*n]`
-/

namespace A071590.P7409071022685377887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160927 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A071590.P7409071022685377887

/-! ## A071590.P6860305455141159692

`lt[A160936(n+1)/A160926(n+1), n]`
-/

namespace A071590.P6860305455141159692
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A160936 (n + 1) : ℚ) / (A160926 (n + 1) : ℚ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n

end

end A071590.P6860305455141159692

/-! ## A071590.P220443883356754410

`A297270(n+1)%A014470(n+1)`
-/

namespace A071590.P220443883356754410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297270 (n + 1)) (A014470 (n + 1))

end

end A071590.P220443883356754410

/-! ## A071590.P1692621241787471176

`A297270(n+1)%A001816(n)`
-/

namespace A071590.P1692621241787471176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A297270 (n + 1)) (A001816 n)

end

end A071590.P1692621241787471176

/-! ## A071590.P5507789991820358203

`A297270(and(1, A107955(n))+n)`
-/

namespace A071590.P5507789991820358203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297270 (Int.land 1 (A107955 n) + (n : ℤ)).toNat

end

end A071590.P5507789991820358203

/-! ## A071590.P9320976725445796689

`A297270(and(n-A107955(n), A107955(n)))`
-/

namespace A071590.P9320976725445796689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297270 (Int.land ((n : ℤ) - A107955 n) (A107955 n)).toNat

end

end A071590.P9320976725445796689

/-! ## A071590.P2406875572239028113

`A297270(C(A070039(n+1), 30)+n+1)`
-/

namespace A071590.P2406875572239028113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297270 (Nat.choose (A070039 (n + 1)).toNat 30 + n + 1)

end

end A071590.P2406875572239028113

/-!
# A071591: Numbers m such that Reversal(m) is squarefree.

The programs for A071591, there is no canonical definition to state claims against.
-/

/-! ## A071591.P8900270302395670504

`comp[A071592(n+1)-1]+1`
-/

namespace A071591.P8900270302395670504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071592 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A071591.P8900270302395670504

/-! ## A071591.P12904485708149974635

`eq[1, A008683(A004086(n+1))²]+1`
-/

namespace A071591.P12904485708149974635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004086 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071591.P12904485708149974635

/-! ## A071591.P2200401359738775650

`eq[1, A255326(A004086(n))]`
-/

namespace A071591.P2200401359738775650
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071591.P2200401359738775650

/-! ## A071591.P1942541391355759328

`eq[1, A255326(A056964(n)-n)]`
-/

namespace A071591.P1942541391355759328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (A056964 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071591.P1942541391355759328

/-! ## A071591.P16030735183107195515

`eq[1, A255326(n-A056965(n))]`
-/

namespace A071591.P16030735183107195515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 ((n : ℤ) - A056965 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071591.P16030735183107195515

/-! ## A071591.P14251035715804837689

`eq[1, A255326(xor(n, A256756(n)))]`
-/

namespace A071591.P14251035715804837689
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (Int.xor (n : ℤ) (A256756 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071591.P14251035715804837689

/-! ## A071591.P6006744268484179835

`eq[1, A008683(n+1-A056965(n+1))²]+1`
-/

namespace A071591.P6006744268484179835
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 ((n + 1 : ℤ) - A056965 (n + 1)).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071591.P6006744268484179835

/-! ## A071591.P1685353497960677080

`eq[1, abs(A008683(A135020(2*(n+1))))]+1`
-/

namespace A071591.P1685353497960677080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008683 (A135020 (2 * (n + 1))).toNat|

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071591.P1685353497960677080

/-! ## A071591.P6274627241983101609

`eq[1, A255326(A004093(5*n))]`
-/

namespace A071591.P6274627241983101609
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 (A004093 (5 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A071591.P6274627241983101609

/-!
# A071592: Numbers m such that Reversal(m) is not squarefree.

The programs for A071592, there is no canonical definition to state claims against.
-/

/-! ## A071592.P6043661773242872922

`eq[0, A008683(A004086(n+1))]+1`
-/

namespace A071592.P6043661773242872922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A004086 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A071592.P6043661773242872922

/-! ## A071592.P13346723190091445246

`lt[1, ∏{e}[A004086(n), #]]`
-/

namespace A071592.P13346723190091445246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f3 n).natAbs, Nat.factorization (f3 n).natAbs p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A071592.P13346723190091445246

/-! ## A071592.P15409059858969008301

`lt[0, A105570(A004086(n))]`
-/

namespace A071592.P15409059858969008301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A004086 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071592.P15409059858969008301

/-! ## A071592.P9702251978477584978

`lt[0, A105570(A056964(n)-n)]`
-/

namespace A071592.P9702251978477584978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A056964 n - (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071592.P9702251978477584978

/-! ## A071592.P4027356108845472681

`lt[0, A105570(n-A056965(n))]`
-/

namespace A071592.P4027356108845472681
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 ((n : ℤ) - A056965 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071592.P4027356108845472681

/-! ## A071592.P6756012323731784822

`lt[1, A284345(n-A056965(n))]`
-/

namespace A071592.P6756012323731784822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 ((n : ℤ) - A056965 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071592.P6756012323731784822

/-! ## A071592.P16890417264835768654

`lt[0, A105570(xor(n, A256756(n)))]`
-/

namespace A071592.P16890417264835768654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (Int.xor (n : ℤ) (A256756 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071592.P16890417264835768654

/-! ## A071592.P16895684317232601473

`lt[1, A284345(xor(n, A256756(n)))]`
-/

namespace A071592.P16895684317232601473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 (Int.xor (n : ℤ) (A256756 n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071592.P16895684317232601473

/-! ## A071592.P17407644087225856882

`lt[1, A183097(abs(1-A004086(n))+1)]`
-/

namespace A071592.P17407644087225856882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183097 (|1 - A004086 n| + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071592.P17407644087225856882

/-! ## A071592.P9271021615269657956

`lt[0, A105570(A004093(5*n))]`
-/

namespace A071592.P9271021615269657956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105570 (A004093 (5 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A071592.P9271021615269657956

/-!
# A071593: Number of 1's in binary representation of n equals tau(n), the number of divisors of n.

The programs for A071593, the canonical program `A071593.P17632102132566079091` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A071593 has offset 1).

The definition of A071593 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2995 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A071593.P17632102132566079091

`eq[A000079(A000005(n+1)), A001316(n+1)]+1`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A071593

/-- `eq[A000079(A000005(n+1)), A001316(n+1)]+1` -/
def P17632102132566079091.Spec : Prop :=
  ∀ n, (P17632102132566079091.a n : ℤ) = A071593 (n + 1)

theorem P17632102132566079091.correct : P17632102132566079091.Spec := by
  intro n
  simp only [A071593, Nat.add_sub_cancel]

end A071593

/-! ## A071593.P6291222034967064338

`eq[∏{e}[n, #+1], A000120(n)]`
-/

namespace A071593.P6291222034967064338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f3 j) n

end

end A071593.P6291222034967064338

namespace A071593

/-- `eq[∏{e}[n, #+1], A000120(n)]` -/
def P6291222034967064338.Spec : Prop :=
  ∀ n, (P6291222034967064338.a n : ℤ) = A071593 (n + 1)

end A071593

/-! ## A071593.P18296677674919685606

`eq[A032741(n)+1, A000120(n)]`
-/

namespace A071593.P18296677674919685606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071593.P18296677674919685606

namespace A071593

/-- `eq[A032741(n)+1, A000120(n)]` -/
def P18296677674919685606.Spec : Prop :=
  ∀ n, (P18296677674919685606.a n : ℤ) = A071593 (n + 1)

end A071593

/-! ## A071593.P9100447912214224743

`eq[A032741(n)+1, log2(A001316(n))]`
-/

namespace A071593.P9100447912214224743
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n + 1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A071593.P9100447912214224743

namespace A071593

/-- `eq[A032741(n)+1, log2(A001316(n))]` -/
def P9100447912214224743.Spec : Prop :=
  ∀ n, (P9100447912214224743.a n : ℤ) = A071593 (n + 1)

end A071593

/-! ## A071593.P5950893827668242721

`eq[A000005(abs(1-n)+1), A000120(n)]`
-/

namespace A071593.P5950893827668242721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071593.P5950893827668242721

namespace A071593

/-- `eq[A000005(abs(1-n)+1), A000120(n)]` -/
def P5950893827668242721.Spec : Prop :=
  ∀ n, (P5950893827668242721.a n : ℤ) = A071593 (n + 1)

end A071593

/-! ## A071593.P11123247961078782037

`eq[Δ[A006218(n)], A000120(n+1)]+1`
-/

namespace A071593.P11123247961078782037
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A071593.P11123247961078782037

namespace A071593

/-- `eq[Δ[A006218(n)], A000120(n+1)]+1` -/
def P11123247961078782037.Spec : Prop :=
  ∀ n, (P11123247961078782037.a n : ℤ) = A071593 (n + 1)

end A071593

/-! ## A071593.P7054411350697234449

`eq[A000005(n+1), A000120(n+1)]+1`
-/

namespace A071593.P7054411350697234449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071593.P7054411350697234449

namespace A071593

/-- `eq[A000005(n+1), A000120(n+1)]+1` -/
def P7054411350697234449.Spec : Prop :=
  ∀ n, (P7054411350697234449.a n : ℤ) = A071593 (n + 1)

end A071593

/-! ## A071593.P10541875278229625744

`eq[A000005(n+1), A000005(A048896(n))]+1`
-/

namespace A071593.P10541875278229625744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A048896 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071593.P10541875278229625744

namespace A071593

/-- `eq[A000005(n+1), A000005(A048896(n))]+1` -/
def P10541875278229625744.Spec : Prop :=
  ∀ n, (P10541875278229625744.a n : ℤ) = A071593 (n + 1)

end A071593

/-!
# A071594: Numbers k such that the number of 1's in the binary representation of k equals omega(k), the number of distinct primes in the factorization of k.

The programs for A071594, there is no canonical definition to state claims against.
-/

/-! ## A071594.P398866045033139665

`∪[A071595(n+1), A071596(n+1)]`
-/

namespace A071594.P398866045033139665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071595 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071596 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A071594.P398866045033139665

/-! ## A071594.P10797178062269911865

`eq[A001221(abs(1-n)+1), A000120(n)]`
-/

namespace A071594.P10797178062269911865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (|1 - (n : ℤ)| + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071594.P10797178062269911865

/-! ## A071594.P12731258187186656554

`eq[A001221(n+1), A000120(n+1)]+1`
-/

namespace A071594.P12731258187186656554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071594.P12731258187186656554

/-! ## A071594.P8142011250963723336

`eq[∑{p}[n+1, A001222(#)], A000120(n+1)]+1`
-/

namespace A071594.P8142011250963723336
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), A001222 p

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f3 j) n + 1

end

end A071594.P8142011250963723336

/-! ## A071594.P14870938979891276410

`eq[A000120(n+1), A001222(A007947(n+1))]+1`
-/

namespace A071594.P14870938979891276410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071594.P14870938979891276410

/-! ## A071594.P1645558256909195331

`eq[A001316(n+1), A037445(A007947(n+1))]+1`
-/

namespace A071594.P1645558256909195331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037445 (A007947 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A071594.P1645558256909195331

/-! ## A071594.P5196890391061927620

`eq[A001316(n), A157230(A008574(n))]`
-/

namespace A071594.P5196890391061927620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001316 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157230 (A008574 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A071594.P5196890391061927620

/-!
# A071595: Odd numbers k such that the number of 1's in binary representation of k equals omega(k), the number of distinct primes in the factorization of k.

The programs for A071595, there is no canonical definition to state claims against.
-/

/-! ## A071595.P13351965994442183295

`∩[2*n+1, A071594(n+1)]`
-/

namespace A071595.P13351965994442183295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071595.P13351965994442183295

/-! ## A071595.P11926945191480850458

`filter[A071594(n+1), A353638(#)]`
-/

namespace A071595.P11926945191480850458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353638 (f1 j).toNat = 1) n)

end

end A071595.P11926945191480850458

/-! ## A071595.P5041291867739023853

`filter[A071594(n+1), A324908(#)]`
-/

namespace A071595.P5041291867739023853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A324908 (f1 j).toNat = 1) n)

end

end A071595.P5041291867739023853

/-! ## A071595.P16337455416877125103

`filter[A071594(n+2), A391240(#)]`
-/

namespace A071595.P16337455416877125103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391240 (f1 j).toNat = 1) n)

end

end A071595.P16337455416877125103

/-! ## A071595.P9751932688037692548

`∩[A071594(n+1), A004273(n)]`
-/

namespace A071595.P9751932688037692548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071595.P9751932688037692548

/-!
# A071596: Even numbers k such that the number of 1's in binary representation of k equals omega(k), the number of distinct primes in the factorization of k.

The programs for A071596, there is no canonical definition to state claims against.
-/

/-! ## A071596.P3079438510498096813

`∩[2*n, A071594(n+1)]`
-/

namespace A071596.P3079438510498096813
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071596.P3079438510498096813

/-! ## A071596.P11338932595279572028

`filter[A071594(n+1), A354034(#)]`
-/

namespace A071596.P11338932595279572028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A071596.P11338932595279572028

/-! ## A071596.P17925703883692537275

`∩[A071594(n+1), A004271(n)]`
-/

namespace A071596.P17925703883692537275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004271 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071596.P17925703883692537275

/-! ## A071596.P2292491193517661281

`∩[A071594(n+1), A004272(n)]`
-/

namespace A071596.P2292491193517661281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004272 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071596.P2292491193517661281

/-! ## A071596.P15421438138983212861

`∩[A071594(n+1), A004275(n)]`
-/

namespace A071596.P15421438138983212861
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071596.P15421438138983212861

/-! ## A071596.P11354811399716294059

`∩[A071594(n+1), A004277(n)]`
-/

namespace A071596.P11354811399716294059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071596.P11354811399716294059

/-! ## A071596.P4801669300273535457

`∩[A071594(n+1), A004279(n)]`
-/

namespace A071596.P4801669300273535457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004279 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071596.P4801669300273535457

/-! ## A071596.P14791980856585488472

`∩[A071594(n+1), A005843(n)]`
-/

namespace A071596.P14791980856585488472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071596.P14791980856585488472

/-! ## A071596.P10645252727241858231

`∩[A071594(n+1), A176693(n+1)]`
-/

namespace A071596.P10645252727241858231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176693 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071596.P10645252727241858231

/-! ## A071596.P10629388541551893977

`∩[A071594(n+1), A257282(n+1)]`
-/

namespace A071596.P10629388541551893977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257282 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071596.P10629388541551893977

/-! ## A071596.P501458940480791016

`∩[A071594(n+1), A106092(n+1)]`
-/

namespace A071596.P501458940480791016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A071596.P501458940480791016

/-! ## A071596.P15078799143167658899

`record[A038608(A071594(n+1))]`
-/

namespace A071596.P15078799143167658899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038608 (A071594 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A071596.P15078799143167658899

/-! ## A071596.P14403485396715101799

`filter[A071594(n+1), A059841(#)]`
-/

namespace A071596.P14403485396715101799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A071596.P14403485396715101799

/-! ## A071596.P3002671031701574739

`filter[A071594(n+1), A135528(#)]`
-/

namespace A071596.P3002671031701574739
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A071596.P3002671031701574739

/-! ## A071596.P16379953152022852420

`filter[A071594(n+1), A266591(#)]`
-/

namespace A071596.P16379953152022852420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071594 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A071596.P16379953152022852420

/-! ## A071596.P1995664920732844725

`A005843(record[A025480(A071594(n+1))])`
-/

namespace A071596.P1995664920732844725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A071594 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A071596.P1995664920732844725

/-!
# A071598: a(0) = 1; a(n) = half of the a(n-1)-th even nontotient number.

The programs for A071598, there is no canonical definition to state claims against.
-/

/-! ## A071598.P6646928938278653137

`A005277(a(n-1))/2` with `a(0)=1`
-/

namespace A071598.P6646928938278653137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (A005277 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℚ) / 2

end

end A071598.P6646928938278653137

/-! ## A071598.P16498471723519141946

`A014682(A005277(a(n-1)))` with `a(0)=1`
-/

namespace A071598.P16498471723519141946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A014682 (A005277 (a (n - 1)).toNat).toNat

end

end A071598.P16498471723519141946

/-! ## A071598.P18025757308050105777

`A079695(a(n-1))` with `a(0)=1`
-/

namespace A071598.P18025757308050105777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A079695 (a (n - 1)).toNat

end

end A071598.P18025757308050105777

/-! ## A071598.P4700829139114236872

`A355451(n+1)+A302032(A005277(a(n-1)))` with `a(0)=1`
-/

namespace A071598.P4700829139114236872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A355451 (n + 1) + A302032 (A005277 (a (n - 1)).toNat).toNat

end

end A071598.P4700829139114236872

/-!
# A071599: Product of elements in the simple continued fraction for (1+1/n)^n.

The programs for A071599, there is no canonical definition to state claims against.
-/

/-! ## A071599.P12916723691678173159

`A338140(A014137(n)+1)`
-/

namespace A071599.P12916723691678173159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338140 (A014137 n + 1).toNat

end

end A071599.P12916723691678173159

