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
import Seq.B000.C033
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
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C000
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A002900: Number of n-step walks on square lattice.

The programs for A002900, there is no canonical definition to state claims against.
-/

/-! ## A002900.P532024733504852417

`1/2*A001411(n+1)`
-/

namespace A002900.P532024733504852417
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A001411 (n + 1) : ℚ)

end

end A002900.P532024733504852417

/-! ## A002900.P7423399377150435268

`2*A046661(n+1)`
-/

namespace A002900.P7423399377150435268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A046661 (n + 1)

end

end A002900.P7423399377150435268

/-! ## A002900.P17058805487166924186

`A001411(n+1)/2`
-/

namespace A002900.P17058805487166924186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001411 (n + 1) : ℚ) / 2

end

end A002900.P17058805487166924186

/-! ## A002900.P5572386364722357651

`Δ[∑[A001411(n)]/2]`
-/

namespace A002900.P5572386364722357651
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002900.P5572386364722357651

/-! ## A002900.P3883578175529607325

`record[A001411(A123108(n))/2]`
-/

namespace A002900.P3883578175529607325
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001411 (A123108 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002900.P3883578175529607325

/-! ## A002900.P108232704585250756

`lcm(2, A046661(A000027(n+1)))`
-/

namespace A002900.P108232704585250756
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A046661 (A000027 (n + 1)).toNat)

end

end A002900.P108232704585250756

/-! ## A002900.P7471360887012272339

`A046661(A000027(n+1))+A046661(n+1)`
-/

namespace A002900.P7471360887012272339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046661 (A000027 (n + 1)).toNat + A046661 (n + 1)

end

end A002900.P7471360887012272339

/-! ## A002900.P15756148337991892676

`or(A046661(n+1)+A046661(n+1), A000038(n))`
-/

namespace A002900.P15756148337991892676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A046661 (n + 1) + A046661 (n + 1)) (A000038 n)

end

end A002900.P15756148337991892676

/-! ## A002900.P16153804674529687994

`A001411(n+1)-(A046661(n+1)+A046661(n+1))`
-/

namespace A002900.P16153804674529687994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001411 (n + 1) - (A046661 (n + 1) + A046661 (n + 1))

end

end A002900.P16153804674529687994

/-! ## A002900.P15207262992033024300

`A046661(n+1)+A046661(A178334(n)+A028310(n))`
-/

namespace A002900.P15207262992033024300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046661 (n + 1) + A046661 (A178334 n + A028310 n).toNat

end

end A002900.P15207262992033024300

/-!
# A002901: a(n) = n^3 - floor( n/3 ).

The programs for A002901, the canonical program `A002901.P7863587713057795293` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002901 has offset 0).

The definition of A002901 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n^3-floor(n/3)` (program `A002901.P7863587713057795293`, by `A002901.P7863587713057795293.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002901.P7863587713057795293

`n^3-floor(n/3)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002901

/-- `n^3-floor(n/3)` -/
def P7863587713057795293.Spec : Prop :=
  ∀ n, P7863587713057795293.a n = A002901 n

theorem P7863587713057795293.correct : P7863587713057795293.Spec := by
  intro n
  simp only [A002901]

end A002901

/-! ## A002901.P6871648209297246832

`ceil(n/acot(n)²-n)`
-/

namespace A002901.P6871648209297246832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / SequenceMachineLib.acot (n : ℝ) ^ 2 - (n : ℝ)⌉

end

end A002901.P6871648209297246832

namespace A002901

/-- `ceil(n/acot(n)²-n)` -/
def P6871648209297246832.Spec : Prop :=
  ∀ n, P6871648209297246832.a n = A002901 n

end A002901

/-! ## A002901.P11685262271083025719

`ceil(Δ[C(n, 2)²]-n/3)`
-/

namespace A002901.P11685262271083025719
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2 ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℚ) - (n : ℚ) / 3⌉

end

end A002901.P11685262271083025719

namespace A002901

/-- `ceil(Δ[C(n, 2)²]-n/3)` -/
def P11685262271083025719.Spec : Prop :=
  ∀ n, P11685262271083025719.a n = A002901 n

end A002901

/-! ## A002901.P3894147732724550294

`ceil(2*A004188(n)/3)`
-/

namespace A002901.P3894147732724550294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(2 * A004188 n : ℚ) / 3⌉

end

end A002901.P3894147732724550294

namespace A002901

/-- `ceil(2*A004188(n)/3)` -/
def P3894147732724550294.Spec : Prop :=
  ∀ n, P3894147732724550294.a n = A002901 n

end A002901

/-! ## A002901.P14128837352166775823

`abs(n^3-A002264(n))`
-/

namespace A002901.P14128837352166775823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 3 : ℤ) - A002264 n|

end

end A002901.P14128837352166775823

namespace A002901

/-- `abs(n^3-A002264(n))` -/
def P14128837352166775823.Spec : Prop :=
  ∀ n, P14128837352166775823.a n = A002901 n

end A002901

/-! ## A002901.P8317865665165949336

`ceil(A000578(n)-n/3)`
-/

namespace A002901.P8317865665165949336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A000578 n : ℚ) - (n : ℚ) / 3⌉

end

end A002901.P8317865665165949336

namespace A002901

/-- `ceil(A000578(n)-n/3)` -/
def P8317865665165949336.Spec : Prop :=
  ∀ n, P8317865665165949336.a n = A002901 n

end A002901

/-! ## A002901.P7156540465729830283

`abs(n^3-(A008620(n)-1))`
-/

namespace A002901.P7156540465729830283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 3 : ℤ) - (A008620 n - 1)|

end

end A002901.P7156540465729830283

namespace A002901

/-- `abs(n^3-(A008620(n)-1))` -/
def P7156540465729830283.Spec : Prop :=
  ∀ n, P7156540465729830283.a n = A002901 n

end A002901

/-! ## A002901.P4302211080420291518

`abs(n^3+n-comp[A004767(n)])`
-/

namespace A002901.P4302211080420291518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n ^ 3 + n : ℤ) - (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)|

end

end A002901.P4302211080420291518

namespace A002901

/-- `abs(n^3+n-comp[A004767(n)])` -/
def P4302211080420291518.Spec : Prop :=
  ∀ n, P4302211080420291518.a n = A002901 n

end A002901

/-! ## A002901.P810834806247421683

`ceil((3*n*n²-A028310(n))/3)`
-/

namespace A002901.P810834806247421683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((3 * (n * n ^ 2) : ℤ) - A028310 n : ℚ) / 3⌉

end

end A002901.P810834806247421683

namespace A002901

/-- `ceil((3*n*n²-A028310(n))/3)` -/
def P810834806247421683.Spec : Prop :=
  ∀ n, P810834806247421683.a n = A002901 n

end A002901

/-! ## A002901.P10909376240542702428

`abs(∑[char[A016777(n+2)-4]]-n^3)`
-/

namespace A002901.P10909376240542702428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 (n + 2) - 4

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n ^ 3 : ℤ)|

end

end A002901.P10909376240542702428

namespace A002901

/-- `abs(∑[char[A016777(n+2)-4]]-n^3)` -/
def P10909376240542702428.Spec : Prop :=
  ∀ n, P10909376240542702428.a n = A002901 n

end A002901

/-! ## A002901.P2144418229438881286

`abs(A002264(n)-A000578(n))`
-/

namespace A002901.P2144418229438881286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002264 n - A000578 n|

end

end A002901.P2144418229438881286

namespace A002901

/-- `abs(A002264(n)-A000578(n))` -/
def P2144418229438881286.Spec : Prop :=
  ∀ n, P2144418229438881286.a n = A002901 n

end A002901

/-! ## A002901.P2892408175593776588

`abs(A004773(n)-A034262(n))`
-/

namespace A002901.P2892408175593776588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A004773 n - A034262 n|

end

end A002901.P2892408175593776588

namespace A002901

/-- `abs(A004773(n)-A034262(n))` -/
def P2892408175593776588.Spec : Prop :=
  ∀ n, P2892408175593776588.a n = A002901 n

end A002901

/-! ## A002901.P1287838431659040561

`abs(val(A005015(2*n), 64)-n*n²)`
-/

namespace A002901.P1287838431659040561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(SequenceMachineLib.valuation (A005015 (2 * n)).toNat 64 : ℤ) - (n * n ^ 2 : ℤ)|

end

end A002901.P1287838431659040561

namespace A002901

/-- `abs(val(A005015(2*n), 64)-n*n²)` -/
def P1287838431659040561.Spec : Prop :=
  ∀ n, P1287838431659040561.a n = A002901 n

end A002901

/-!
# A002902: Number of n-step self-avoiding walks on a cubic lattice with a first step along the positive x, y, or z axis.

The programs for A002902, there is no canonical definition to state claims against.
-/

/-! ## A002902.P11368795109988395278

`A001412(n+1)/2`
-/

namespace A002902.P11368795109988395278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001412 (n + 1) : ℚ) / 2

end

end A002902.P11368795109988395278

/-! ## A002902.P10130041114130641711

`3*A078717(n+1)`
-/

namespace A002902.P10130041114130641711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A078717 (n + 1)

end

end A002902.P10130041114130641711

/-! ## A002902.P11420446774261638591

`Δ[∑[A001412(n)]/2]`
-/

namespace A002902.P11420446774261638591
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001412 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002902.P11420446774261638591

/-! ## A002902.P6181443618995919089

`floor(A001412(abs(Δ[n²]-n))/2)`
-/

namespace A002902.P6181443618995919089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001412 |(f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)|.toNat : ℚ) / 2⌋

end

end A002902.P6181443618995919089

/-! ## A002902.P14572038776719984352

`record[A001412(ceil(abs((1-n)/2)))/2]`
-/

namespace A002902.P14572038776719984352
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001412 ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉.toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002902.P14572038776719984352

/-!
# A002903: Number of n-step self-avoiding walks on b.c.c. lattice (version 1).

The programs for A002903, there is no canonical definition to state claims against.
-/

/-! ## A002903.P9996222233262962680

`ceil(A001666(n)/2)`
-/

namespace A002903.P9996222233262962680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001666 n : ℚ) / 2⌉

end

end A002903.P9996222233262962680

/-! ## A002903.P1948432010482569481

`A001666(n)/A000005(gcd(n+1, 1-∑[2^n]))`
-/

namespace A002903.P1948432010482569481
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001666 n : ℚ) / (A000005 (Int.gcd (n + 1 : ℤ) (1 - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))) : ℚ)

end

end A002903.P1948432010482569481

/-! ## A002903.P13187548984681612772

`A001666(n)/A020639(Δ[A000040(n+1)])`
-/

namespace A002903.P13187548984681612772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001666 n : ℚ) / (A020639 (f1 (n + 1) - f1 n).toNat : ℚ)

end

end A002903.P13187548984681612772

/-! ## A002903.P8168731839189207399

`A001666(n)/A020639(A000040(n+1)-1)`
-/

namespace A002903.P8168731839189207399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001666 n : ℚ) / (A020639 (A000040 (n + 1) - 1).toNat : ℚ)

end

end A002903.P8168731839189207399

/-!
# A002905: Number of connected graphs with n edges.

The programs for A002905, there is no canonical definition to state claims against.
-/

/-! ## A002905.P12384395627073178244

`A275421(C(n, 2)+1)`
-/

namespace A002905.P12384395627073178244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275421 (Nat.choose n 2 + 1)

end

end A002905.P12384395627073178244

/-! ## A002905.P6475756216198129002

`A275421(∑[abs(1-n)])`
-/

namespace A002905.P6475756216198129002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275421 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002905.P6475756216198129002

/-! ## A002905.P12729351871803871715

`abs(1-A275421(A152947(n+1)))+1`
-/

namespace A002905.P12729351871803871715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A275421 (A152947 (n + 1)).toNat| + 1

end

end A002905.P12729351871803871715

/-! ## A002905.P15017436218353113442

`A275421(A152947(n+1))^A178334(n)`
-/

namespace A002905.P15017436218353113442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275421 (A152947 (n + 1)).toNat : ℚ) ^ (A178334 n : ℤ)

end

end A002905.P15017436218353113442

/-! ## A002905.P15473945560306173835

`A275421(A152947(n+1))%A074616(n)`
-/

namespace A002905.P15473945560306173835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A275421 (A152947 (n + 1)).toNat) (A074616 n)

end

end A002905.P15473945560306173835

/-! ## A002905.P11186928644937416716

`gcd(A000038(n), A275421(A152947(n+1)))`
-/

namespace A002905.P11186928644937416716
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A275421 (A152947 (n + 1)).toNat)

end

end A002905.P11186928644937416716

/-! ## A002905.P1344263085675956336

`or(A000007(n), A275421(A000124(n)-n))`
-/

namespace A002905.P1344263085675956336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A275421 (A000124 n - (n : ℤ)).toNat)

end

end A002905.P1344263085675956336

/-! ## A002905.P12116599483754727443

`char[A002262(n)]*A275421(A152947(n+1))`
-/

namespace A002905.P12116599483754727443
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A275421 (A152947 (n + 1)).toNat

end

end A002905.P12116599483754727443

/-! ## A002905.P17141139652831166207

`A007318(floor(1/(n+1)))*A275421(A152947(n+1))`
-/

namespace A002905.P17141139652831166207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊1 / (n + 1 : ℚ)⌋.toNat * A275421 (A152947 (n + 1)).toNat

end

end A002905.P17141139652831166207

/-! ## A002905.P12585693462273932862

`A275421(A152947(n+1))^(record[A014963(n+2)]%2)`
-/

namespace A002905.P12585693462273932862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275421 (A152947 (n + 1)).toNat : ℚ) ^ (Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) 2 : ℤ)

end

end A002905.P12585693462273932862

/-!
# A002906: High temperature series for spin-1/2 Ising magnetic susceptibility on 2D square lattice.

The programs for A002906, there is no canonical definition to state claims against.
-/

/-! ## A002906.P6409179979705458269

`p?[(n-1)*A036617(n)+1]-1`
-/

namespace A002906.P6409179979705458269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A036617 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A002906.P6409179979705458269

/-! ## A002906.P13878907861050986208

`A191756(n^or(1, C(n, ceil(n/2)+2)))`
-/

namespace A002906.P13878907861050986208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191756 (n ^ Nat.lor 1 (Nat.choose n (⌈(n : ℚ) / 2⌉ + 2).toNat))

end

end A002906.P13878907861050986208

/-!
# A002907: High temperature series in v = tanh(J/kT) for residual correlation function (correction to susceptibility) for the spin-1/2 Ising model on square lattice.

The programs for A002907, there is no canonical definition to state claims against.
-/

/-! ## A002907.P2432827834608882570

`A100358(n*a(n-3))` with `a(0)=2, a(1)=2, a(2)=20`
-/

namespace A002907.P2432827834608882570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 2, 20] fun n a =>
  A100358 ((n : ℤ) * a (n - 3)).toNat

end

end A002907.P2432827834608882570

/-!
# A002908: High temperature expansion of -u/J in odd powers of v = tanh(J/kT), where u is energy per site of the spin-1/2 Ising model on square lattice with nearest-neighbor interaction J at temperature T.

The programs for A002908, there is no canonical definition to state claims against.
-/

/-! ## A002908.P14435127379136132749

`A117818(abs(Δ[A002909(n)]))`
-/

namespace A002908.P14435127379136132749
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 |f1 (n + 1) - f1 n|.toNat

end

end A002908.P14435127379136132749

/-! ## A002908.P12802372875440518740

`A117818(Δ[-A002909(n)])`
-/

namespace A002908.P12802372875440518740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A002909 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117818 (f1 (n + 1) - f1 n).toNat

end

end A002908.P12802372875440518740

/-! ## A002908.P10780146825836108497

`Δ[A116922(4-A002909(n))]`
-/

namespace A002908.P10780146825836108497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116922 (4 - A002909 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002908.P10780146825836108497

/-!
# A002909: Low temperature energy function for square lattice.

The programs for A002909, there is no canonical definition to state claims against.
-/

/-! ## A002909.P157240954807376461

`5-A260191(A015892(n+1))`
-/

namespace A002909.P157240954807376461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - A260191 (A015892 (n + 1)).toNat

end

end A002909.P157240954807376461

/-! ## A002909.P3090958557600930349

`A070355(A000556(n))-A000244(n)`
-/

namespace A002909.P3090958557600930349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070355 (A000556 n).toNat - A000244 n

end

end A002909.P3090958557600930349

/-!
# A002910: High-temperature series in v = tanh(J/kT) for susceptibility for the Ising model on honeycomb structure.

The programs for A002910, there is no canonical definition to state claims against.
-/

/-! ## A002910.P13439467782507397782

`A192871(A073790(n))`
-/

namespace A002910.P13439467782507397782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192871 (A073790 n).toNat

end

end A002910.P13439467782507397782

/-! ## A002910.P2196717605454500057

`A192871(A004870(n+1))`
-/

namespace A002910.P2196717605454500057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192871 (A004870 (n + 1)).toNat

end

end A002910.P2196717605454500057

/-! ## A002910.P4088120546383672092

`A192871(A004881(n+1))`
-/

namespace A002910.P4088120546383672092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192871 (A004881 (n + 1)).toNat

end

end A002910.P4088120546383672092

/-! ## A002910.P18253975492525638107

`A192871(A004892(n+1))`
-/

namespace A002910.P18253975492525638107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192871 (A004892 (n + 1)).toNat

end

end A002910.P18253975492525638107

/-! ## A002910.P5274799538943909373

`A192871(A004903(n+1))`
-/

namespace A002910.P5274799538943909373
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192871 (A004903 (n + 1)).toNat

end

end A002910.P5274799538943909373

/-!
# A002912: Low-temperature series in z = exp(-2J/kT) for ferromagnetic susceptibility for the Ising model on honeycomb structure.

The programs for A002912, there is no canonical definition to state claims against.
-/

/-! ## A002912.P5971188040923368548

`A054896(xor(n, A151090(n))+2)`
-/

namespace A002912.P5971188040923368548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054896 (Int.xor (n : ℤ) (A151090 n) + 2).toNat

end

end A002912.P5971188040923368548

/-! ## A002912.P8297859473161664047

`A002266(A014445(n))-A026825(n)`
-/

namespace A002912.P8297859473161664047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A014445 n).toNat - A026825 n

end

end A002912.P8297859473161664047

/-!
# A002913: High temperature series for spin-1/2 Ising magnetic susceptibility on 3-dimensional simple cubic lattice.

The programs for A002913, there is no canonical definition to state claims against.
-/

/-! ## A002913.P4579533665699273778

`A157519(n)-A173453(A225258(n+1))`
-/

namespace A002913.P4579533665699273778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157519 n - A173453 (A225258 (n + 1)).toNat

end

end A002913.P4579533665699273778

/-! ## A002913.P12310328367632643690

`A028310(A157519(n))`
-/

namespace A002913.P12310328367632643690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A157519 n).toNat

end

end A002913.P12310328367632643690

/-!
# A002916: High temperature series for spin-1/2 Ising specific heat on 3-dimensional simple cubic lattice.

The programs for A002916, there is no canonical definition to state claims against.
-/

/-! ## A002916.P12388593545336378248

`3*A001408(n)`
-/

namespace A002916.P12388593545336378248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A001408 n

end

end A002916.P12388593545336378248

/-! ## A002916.P11030329286793688499

`lcm(A001408(n), A334579(A001348(n+1)))`
-/

namespace A002916.P11030329286793688499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A001408 n) (A334579 (A001348 (n + 1)).toNat)

end

end A002916.P11030329286793688499

/-!
# A002919: High-temperature series for susceptibility for the spin-1/2 Ising model on hexagonal lattice.

The programs for A002919, there is no canonical definition to state claims against.
-/

/-! ## A002919.P10654632870303079219

`A002910(2*n)`
-/

namespace A002919.P10654632870303079219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002910 (2 * n)

end

end A002919.P10654632870303079219

/-! ## A002919.P8787180262097739820

`record[A002910(and(n, n+1))]`
-/

namespace A002919.P8787180262097739820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002910 (Nat.land n (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002919.P8787180262097739820

/-! ## A002919.P13479671721863940042

`record[A002910(n)/(-1)^n]`
-/

namespace A002919.P13479671721863940042
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002910 n : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002919.P13479671721863940042

/-! ## A002919.P13909034974032114885

`record[A002910(A014681(n))]`
-/

namespace A002919.P13909034974032114885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002910 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002919.P13909034974032114885

/-! ## A002919.P12859893009505504606

`gcd(floor(1/(n+1)), A002910(A004277(n)))`
-/

namespace A002919.P12859893009505504606
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ⌊1 / (n + 1 : ℚ)⌋ (A002910 (A004277 n).toNat)

end

end A002919.P12859893009505504606

/-!
# A002920: High-temperature series in w = tanh(J/kT) for ferromagnetic susceptibility for the spin-1/2 Ising model on hexagonal lattice.

The programs for A002920, there is no canonical definition to state claims against.
-/

/-! ## A002920.P14665566380631817462

`A255463(n)-A091009(A241524(n))`
-/

namespace A002920.P14665566380631817462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255463 n - A091009 (A241524 n).toNat

end

end A002920.P14665566380631817462

/-!
# A002921: Susceptibility series for f.c.c. lattice.

The programs for A002921, there is no canonical definition to state claims against.
-/

/-! ## A002921.P12600005339104300140

`A001336(n)-A361392(A074358(n))`
-/

namespace A002921.P12600005339104300140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001336 n - A361392 (A074358 n).toNat

end

end A002921.P12600005339104300140

/-!
# A002923: Susceptibility series for diamond.

The programs for A002923, there is no canonical definition to state claims against.
-/

/-! ## A002923.P3887077023192207193

`∑[A349162(A336702(n+1)+5)]`
-/

namespace A002923.P3887077023192207193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349162 (A336702 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002923.P3887077023192207193

/-!
# A002925: Susceptibility series for b.c.c. lattice.

The programs for A002925, there is no canonical definition to state claims against.
-/

/-! ## A002925.P5277761819038593425

`A030046(A153583(∑[n]))`
-/

namespace A002925.P5277761819038593425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030046 (A153583 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A002925.P5277761819038593425

/-! ## A002925.P13938296975599827926

`A030046(A185095(∑[n]))`
-/

namespace A002925.P13938296975599827926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030046 (A185095 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A002925.P13938296975599827926

/-! ## A002925.P1152940738271891933

`A030046(record[A219209(n)])`
-/

namespace A002925.P1152940738271891933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030046 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A002925.P1152940738271891933

/-! ## A002925.P5017269156804128141

`A030046(A043316(n+1))`
-/

namespace A002925.P5017269156804128141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030046 (A043316 (n + 1)).toNat

end

end A002925.P5017269156804128141

/-! ## A002925.P10701387886120575332

`A030046(A044913(n+1))`
-/

namespace A002925.P10701387886120575332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030046 (A044913 (n + 1)).toNat

end

end A002925.P10701387886120575332

/-!
# A002927: Low temperature series for spin-1/2 Ising magnetic susceptibility on 2D square lattice.

The programs for A002927, there is no canonical definition to state claims against.
-/

/-! ## A002927.P10027349999154161318

`A194698(∑[4^n+6*a(n-1)])` with `a(0)=1, a(1)=1, a(2)=17`
-/

namespace A002927.P10027349999154161318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 17] fun n f1 =>
  4 ^ n + 6 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194698 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002927.P10027349999154161318

/-! ## A002927.P17715676741926162392

`A120327(10*a(n-1)-23*a(n-2))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=8`
-/

namespace A002927.P17715676741926162392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 8] fun n a =>
  A120327 (10 * a (n - 1) - 23 * a (n - 2)).toNat

end

end A002927.P17715676741926162392

/-!
# A002928: Magnetization for square lattice.

The programs for A002928, there is no canonical definition to state claims against.
-/

/-! ## A002928.P14633314582614873058

`and(2, A119323(n^n+1))-∑[n!]`
-/

namespace A002928.P14633314582614873058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A119323 (n ^ n + 1)) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A002928.P14633314582614873058

/-! ## A002928.P6168313581176529342

`2-A185283(A194471(n))`
-/

namespace A002928.P6168313581176529342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - A185283 (A194471 n).toNat

end

end A002928.P6168313581176529342

/-!
# A002930: Magnetization series for diamond.

The programs for A002930, there is no canonical definition to state claims against.
-/

/-! ## A002930.P14301585687417520943

`A126966(n)-A111427(A139398(n))`
-/

namespace A002930.P14301585687417520943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126966 n - A111427 (A139398 n).toNat

end

end A002930.P14301585687417520943

/-! ## A002930.P4502172096665531633

`A336420(A230664(n+1))-A000245(n)`
-/

namespace A002930.P4502172096665531633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336420 (A230664 (n + 1)).toNat - A000245 n

end

end A002930.P4502172096665531633

/-!
# A002931: Number of self-avoiding polygons of length 2n on square lattice (not allowing rotations).

The programs for A002931, there is no canonical definition to state claims against.
-/

/-! ## A002931.P4507536040512294426

`A019266(n+1)/4*2/(n+1)`
-/

namespace A002931.P4507536040512294426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A019266 (n + 1) : ℚ) / 4 * (2 / (n + 1 : ℚ))

end

end A002931.P4507536040512294426

/-! ## A002931.P10383221638450220556

`A010566(n+1)/(4*(n+1))`
-/

namespace A002931.P10383221638450220556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A010566 (n + 1) : ℚ) / (4 * (n + 1) : ℚ)

end

end A002931.P10383221638450220556

/-! ## A002931.P13597312177974943949

`abs(A010566(n+1)/Δ[A046092(n)])`
-/

namespace A002931.P13597312177974943949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046092 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A010566 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)|

end

end A002931.P13597312177974943949

/-! ## A002931.P12925322022104360536

`floor(A010566(n+1)/A008574(n+1))`
-/

namespace A002931.P12925322022104360536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A010566 (n + 1) : ℚ) / (A008574 (n + 1) : ℚ)⌋

end

end A002931.P12925322022104360536

/-! ## A002931.P15051468412490531446

`floor(A010566(n+1)/4)/(1-A001489(n))`
-/

namespace A002931.P15051468412490531446
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(A010566 (n + 1) : ℚ) / 4⌋ : ℚ) / (1 - A001489 n : ℚ)

end

end A002931.P15051468412490531446

/-! ## A002931.P7099807231422951203

`(A225877(n+1)/(n+1))%A225877(n+1)`
-/

namespace A002931.P7099807231422951203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway ((A225877 (n + 1) : ℚ) / (n + 1 : ℚ))) (A225877 (n + 1))

end

end A002931.P7099807231422951203

/-!
# A002935: Number of series-reduced star graphs with n edges.

The programs for A002935, there is no canonical definition to state claims against.
-/

/-! ## A002935.P17938384510097959261

`A324701(A324768(n+1))-floor(n/(xor(n, n+1)+1))`
-/

namespace A002935.P17938384510097959261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324701 (A324768 (n + 1)).toNat - ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A002935.P17938384510097959261

/-! ## A002935.P10138114783865369785

`A233547(A000142(n))+A003116(n)`
-/

namespace A002935.P10138114783865369785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233547 (A000142 n).toNat + A003116 n

end

end A002935.P10138114783865369785

/-! ## A002935.P10057192024892716556

`A316359(A001764(n))+A124380(n)`
-/

namespace A002935.P10057192024892716556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316359 (A001764 n).toNat + A124380 n

end

end A002935.P10057192024892716556

/-! ## A002935.P1156681155434991524

`A099963(n)-A037803(A000984(n))`
-/

namespace A002935.P1156681155434991524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099963 n - A037803 (A000984 n).toNat

end

end A002935.P1156681155434991524

/-!
# A002936: Solid partitions of n, distinct along rows.

The programs for A002936, there is no canonical definition to state claims against.
-/

/-! ## A002936.P10561117473044830525

`A226190(A375235(n+1))`
-/

namespace A002936.P10561117473044830525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226190 (A375235 (n + 1)).toNat

end

end A002936.P10561117473044830525

/-! ## A002936.P17392431379784315569

`A281811(n+1)-A001842(A281817(n))`
-/

namespace A002936.P17392431379784315569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281811 (n + 1) - A001842 (A281817 n).toNat

end

end A002936.P17392431379784315569

/-! ## A002936.P7761224609163803392

`A281811(n+1)-A102677(A199142(2*n+1))`
-/

namespace A002936.P7761224609163803392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281811 (n + 1) - A102677 (A199142 (2 * n + 1)).toNat

end

end A002936.P7761224609163803392

/-!
# A002938: The minimal sequence from solving n^3 - m^2 = a(n).

The programs for A002938, the canonical program `A002938.P11008138429574408607` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002938 has offset 1).

The definition of A002938 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002938.P11008138429574408607

`abs(A077119(n+1))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002938

/-- `abs(A077119(n+1))` -/
def P11008138429574408607.Spec : Prop :=
  ∀ n, P11008138429574408607.a n = A002938 (n + 1)

theorem P11008138429574408607.correct : P11008138429574408607.Spec := by
  intro n
  simp only [A002938, Nat.add_sub_cancel]

end A002938

/-! ## A002938.P8132088793068879631

`lcm(A033999(n), A077119(n+1))`
-/

namespace A002938.P8132088793068879631
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A077119 (n + 1))

end

end A002938.P8132088793068879631

namespace A002938

/-- `lcm(A033999(n), A077119(n+1))` -/
def P8132088793068879631.Spec : Prop :=
  ∀ n, (P8132088793068879631.a n : ℤ) = A002938 (n + 1)

end A002938

/-! ## A002938.P13328933087662681506

`gcd(A000038(n+1), A077119(n+1))`
-/

namespace A002938.P13328933087662681506
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 (n + 1)) (A077119 (n + 1))

end

end A002938.P13328933087662681506

namespace A002938

/-- `gcd(A000038(n+1), A077119(n+1))` -/
def P13328933087662681506.Spec : Prop :=
  ∀ n, (P13328933087662681506.a n : ℤ) = A002938 (n + 1)

end A002938

/-! ## A002938.P3910613004467675648

`sqrt(A077119(n+1)^A020639(2*(n+1)))`
-/

namespace A002938.P3910613004467675648
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt ((A077119 (n + 1) : ℚ) ^ (A020639 (2 * (n + 1)) : ℤ) : ℝ)

end

end A002938.P3910613004467675648

namespace A002938

/-- `sqrt(A077119(n+1)^A020639(2*(n+1)))` -/
def P3910613004467675648.Spec : Prop :=
  ∀ n, P3910613004467675648.a n = (A002938 (n + 1) : ℝ)

end A002938

/-! ## A002938.P17514132836028970884

`lcm(A077119(A000027(n+1)), A106400(n))`
-/

namespace A002938.P17514132836028970884
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A077119 (A000027 (n + 1)).toNat) (A106400 n)

end

end A002938.P17514132836028970884

namespace A002938

/-- `lcm(A077119(A000027(n+1)), A106400(n))` -/
def P17514132836028970884.Spec : Prop :=
  ∀ n, (P17514132836028970884.a n : ℤ) = A002938 (n + 1)

end A002938

/-! ## A002938.P13433987402114006113

`lcm((-1)^n, A077119((n+1)%A000954(n)))`
-/

namespace A002938.P13433987402114006113
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A077119 (Int.tmod (n + 1 : ℤ) (A000954 n)).toNat)

end

end A002938.P13433987402114006113

namespace A002938

/-- `lcm((-1)^n, A077119((n+1)%A000954(n)))` -/
def P13433987402114006113.Spec : Prop :=
  ∀ n, (P13433987402114006113.a n : ℤ) = A002938 (n + 1)

end A002938

/-! ## A002938.P10242225395746305750

`lcm(A000034(2*n)*A077119(n+1), A000034(2*n))`
-/

namespace A002938.P10242225395746305750
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000034 (2 * n) * A077119 (n + 1)) (A000034 (2 * n))

end

end A002938.P10242225395746305750

namespace A002938

/-- `lcm(A000034(2*n)*A077119(n+1), A000034(2*n))` -/
def P10242225395746305750.Spec : Prop :=
  ∀ n, (P10242225395746305750.a n : ℤ) = A002938 (n + 1)

end A002938

/-! ## A002938.P5386167905352591737

`∑{d}[A077119(n+1), A000010(#)]`
-/

namespace A002938.P5386167905352591737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077119 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A002938.P5386167905352591737

namespace A002938

/-- `∑{d}[A077119(n+1), A000010(#)]` -/
def P5386167905352591737.Spec : Prop :=
  ∀ n, P5386167905352591737.a n = A002938 (n + 1)

end A002938

/-! ## A002938.P15622760175878345472

`A073072(A002821(n+1))`
-/

namespace A002938.P15622760175878345472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073072 (A002821 (n + 1)).toNat

end

end A002938.P15622760175878345472

namespace A002938

/-- `A073072(A002821(n+1))` -/
def P15622760175878345472.Spec : Prop :=
  ∀ n, P15622760175878345472.a n = A002938 (n + 1)

end A002938

/-!
# A002939: a(n) = 2*n*(2*n-1).

The programs for A002939, the canonical program `A002939.P11095602872349887610` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002939 has offset 0).

The definition of A002939 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(2*n-1)` (program `A002939.P11095602872349887610`, by `A002939.P11095602872349887610.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002939.P17598103819593901796

`2*C(2*n, 2)`
-/

namespace A002939.P17598103819593901796
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * Nat.choose (2 * n) 2

end

end A002939.P17598103819593901796

namespace A002939

/-- `2*C(2*n, 2)` -/
def P17598103819593901796.Spec : Prop :=
  ∀ n, (P17598103819593901796.a n : ℤ) = A002939 n

end A002939

/-! ## A002939.P11095602872349887610

`2*n*(2*n-1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002939

/-- `2*n*(2*n-1)` -/
def P11095602872349887610.Spec : Prop :=
  ∀ n, P11095602872349887610.a n = A002939 n

theorem P11095602872349887610.correct : P11095602872349887610.Spec := by
  intro n
  simp only [A002939]

end A002939

/-! ## A002939.P5529967051460119424

`A118729(8*n+1)`
-/

namespace A002939.P5529967051460119424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (8 * n + 1)

end

end A002939.P5529967051460119424

namespace A002939

/-- `A118729(8*n+1)` -/
def P5529967051460119424.Spec : Prop :=
  ∀ n, P5529967051460119424.a n = A002939 n

end A002939

/-! ## A002939.P9739282800139904532

`record[n*xor(1, n-2)]`
-/

namespace A002939.P9739282800139904532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.xor 1 ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002939.P9739282800139904532

namespace A002939

/-- `record[n*xor(1, n-2)]` -/
def P9739282800139904532.Spec : Prop :=
  ∀ n, P9739282800139904532.a n = A002939 n

end A002939

/-! ## A002939.P2828784973156202880

`record[n^gcd(2, n)-n]`
-/

namespace A002939.P2828784973156202880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.gcd 2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002939.P2828784973156202880

namespace A002939

/-- `record[n^gcd(2, n)-n]` -/
def P2828784973156202880.Spec : Prop :=
  ∀ n, P2828784973156202880.a n = A002939 n

end A002939

/-! ## A002939.P10355989754584424929

`record[and(n, -2)²-n]`
-/

namespace A002939.P10355989754584424929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-2) ^ 2 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002939.P10355989754584424929

namespace A002939

/-- `record[and(n, -2)²-n]` -/
def P10355989754584424929.Spec : Prop :=
  ∀ n, P10355989754584424929.a n = A002939 n

end A002939

/-! ## A002939.P5971645794932026092

`∑[a(n-1)+8]` with `a(0)=0, a(1)=2`
-/

namespace A002939.P5971645794932026092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002939.P5971645794932026092

namespace A002939

/-- `∑[a(n-1)+8]` -/
def P5971645794932026092.Spec : Prop :=
  ∀ n, (P5971645794932026092.a n : ℤ) = A002939 n

end A002939

/-! ## A002939.P5083734576024615319

`∑[ogf((2x+6x^2)/(1-2x+x^2))]`
-/

namespace A002939.P5083734576024615319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 6] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002939.P5083734576024615319

namespace A002939

/-- `∑[ogf((2x+6x^2)/(1-2x+x^2))]` -/
def P5083734576024615319.Spec : Prop :=
  ∀ n, P5083734576024615319.a n = A002939 n

end A002939

/-! ## A002939.P11215443470082256968

`ogf((2x+6x^2)/(1-3x+3x^2-x^3))`
-/

namespace A002939.P11215443470082256968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2, 6] [1, -3, 3, -1] n

end

end A002939.P11215443470082256968

namespace A002939

/-- `ogf((2x+6x^2)/(1-3x+3x^2-x^3))` -/
def P11215443470082256968.Spec : Prop :=
  ∀ n, P11215443470082256968.a n = A002939 n

end A002939

/-! ## A002939.P3389570673308621666

`6-∑[a(n-1)-8]` with `a(0)=6`
-/

namespace A002939.P3389570673308621666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002939.P3389570673308621666

namespace A002939

/-- `6-∑[a(n-1)-8]` -/
def P3389570673308621666.Spec : Prop :=
  ∀ n, P3389570673308621666.a n = A002939 n

end A002939

/-! ## A002939.P5330765162880209839

`lcm(2*n, or(1, -(2*n)))`
-/

namespace A002939.P5330765162880209839
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n : ℤ) (Int.lor 1 (-(2 * n : ℤ)))

end

end A002939.P5330765162880209839

namespace A002939

/-- `lcm(2*n, or(1, -(2*n)))` -/
def P5330765162880209839.Spec : Prop :=
  ∀ n, (P5330765162880209839.a n : ℤ) = A002939 n

end A002939

/-! ## A002939.P10333143497282369561

`record[(n+1)*n*n%2]`
-/

namespace A002939.P10333143497282369561
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n * (n % 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002939.P10333143497282369561

namespace A002939

/-- `record[(n+1)*n*n%2]` -/
def P10333143497282369561.Spec : Prop :=
  ∀ n, (P10333143497282369561.a n : ℤ) = A002939 n

end A002939

/-! ## A002939.P3670167877589327339

`record[(n+1)*n*and(1, n)]`
-/

namespace A002939.P3670167877589327339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * (n * Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002939.P3670167877589327339

namespace A002939

/-- `record[(n+1)*n*and(1, n)]` -/
def P3670167877589327339.Spec : Prop :=
  ∀ n, (P3670167877589327339.a n : ℤ) = A002939 n

end A002939

/-! ## A002939.P4252786217331780302

`record[xor(1, -n)²-(n+1)]`
-/

namespace A002939.P4252786217331780302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(n : ℤ)) ^ 2 - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002939.P4252786217331780302

namespace A002939

/-- `record[xor(1, -n)²-(n+1)]` -/
def P4252786217331780302.Spec : Prop :=
  ∀ n, P4252786217331780302.a n = A002939 n

end A002939

/-! ## A002939.P531194325459796459

`record[lcm(n-1, and(n, n+1))]`
-/

namespace A002939.P531194325459796459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (Nat.land n (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002939.P531194325459796459

namespace A002939

/-- `record[lcm(n-1, and(n, n+1))]` -/
def P531194325459796459.Spec : Prop :=
  ∀ n, (P531194325459796459.a n : ℤ) = A002939 n

end A002939

/-! ## A002939.P17541129133181762647

`abs(2*n*or(1, -(2*n)))`
-/

namespace A002939.P17541129133181762647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) * Int.lor 1 (-(2 * n : ℤ))|

end

end A002939.P17541129133181762647

namespace A002939

/-- `abs(2*n*or(1, -(2*n)))` -/
def P17541129133181762647.Spec : Prop :=
  ∀ n, P17541129133181762647.a n = A002939 n

end A002939

/-! ## A002939.P15979033067373619549

`-(2*n*or(1, -(2*n)))`
-/

namespace A002939.P15979033067373619549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * Int.lor 1 (-(2 * n : ℤ)))

end

end A002939.P15979033067373619549

namespace A002939

/-- `-(2*n*or(1, -(2*n)))` -/
def P15979033067373619549.Spec : Prop :=
  ∀ n, P15979033067373619549.a n = A002939 n

end A002939

/-! ## A002939.P7025998629645509820

`abs(2*n*xor(1, -(2*n)))`
-/

namespace A002939.P7025998629645509820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n : ℤ) * Int.xor 1 (-(2 * n : ℤ))|

end

end A002939.P7025998629645509820

namespace A002939

/-- `abs(2*n*xor(1, -(2*n)))` -/
def P7025998629645509820.Spec : Prop :=
  ∀ n, P7025998629645509820.a n = A002939 n

end A002939

/-! ## A002939.P16942665503518708230

`-(2*n*xor(1, -(2*n)))`
-/

namespace A002939.P16942665503518708230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n : ℤ) * Int.xor 1 (-(2 * n : ℤ)))

end

end A002939.P16942665503518708230

namespace A002939

/-- `-(2*n*xor(1, -(2*n)))` -/
def P16942665503518708230.Spec : Prop :=
  ∀ n, P16942665503518708230.a n = A002939 n

end A002939

/-! ## A002939.P16482925020538879307

`lcm(n-1+n, 1-Δ[n²])`
-/

namespace A002939.P16482925020538879307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1 + (n : ℤ)) (1 - ((f1 (n + 1) : ℤ) - (f1 n : ℤ)))

end

end A002939.P16482925020538879307

namespace A002939

/-- `lcm(n-1+n, 1-Δ[n²])` -/
def P16482925020538879307.Spec : Prop :=
  ∀ n, (P16482925020538879307.a n : ℤ) = A002939 n

end A002939

/-!
# A002940: Arrays of dumbbells.

The programs for A002940, the canonical program `A002940.P17152713707969123307` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002940 has offset 1).

The definition of A002940 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002940.P17152713707969123307

`2*a(n-1)-a(n-3)+A000045(n+2)` with `a(0)=1, a(1)=4, a(2)=11`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002940

/-- `2*a(n-1)-a(n-3)+A000045(n+2)` -/
def P17152713707969123307.Spec : Prop :=
  ∀ n, P17152713707969123307.a n = A002940 (n + 1)

theorem P17152713707969123307.correct : P17152713707969123307.Spec := by
  intro n
  simp only [A002940, Nat.add_sub_cancel]

end A002940

/-! ## A002940.P13828894328287329174

`∑[ogf((1+x)/(1-2x-x^2+2x^3+x^4))]`
-/

namespace A002940.P13828894328287329174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -2, -1, 2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P13828894328287329174

namespace A002940

/-- `∑[ogf((1+x)/(1-2x-x^2+2x^3+x^4))]` -/
def P13828894328287329174.Spec : Prop :=
  ∀ n, P13828894328287329174.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P6057684613773545825

`ogf((1+x)/(1-3x+x^2+3x^3-x^4-x^5))`
-/

namespace A002940.P6057684613773545825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1] [1, -3, 1, 3, -1, -1] n

end

end A002940.P6057684613773545825

namespace A002940

/-- `ogf((1+x)/(1-3x+x^2+3x^3-x^4-x^5))` -/
def P6057684613773545825.Spec : Prop :=
  ∀ n, P6057684613773545825.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P14899499183634579359

`∑[2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)]` with `a(0)=1, a(1)=3, a(2)=7, a(3)=15`
-/

namespace A002940.P14899499183634579359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 7, 15] fun n f1 =>
  2 * f1 (n - 1) + (f1 (n - 2) - 2 * f1 (n - 3)) - f1 (n - 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P14899499183634579359

namespace A002940

/-- `∑[2*a(n-1)+a(n-2)-2*a(n-3)-a(n-4)]` -/
def P14899499183634579359.Spec : Prop :=
  ∀ n, P14899499183634579359.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P12857836167621886251

`∑[A023610(n)]`
-/

namespace A002940.P12857836167621886251
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023610 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P12857836167621886251

namespace A002940

/-- `∑[A023610(n)]` -/
def P12857836167621886251.Spec : Prop :=
  ∀ n, P12857836167621886251.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P3426747290164957197

`∑[∑[∑[A208354(n)]]]`
-/

namespace A002940.P3426747290164957197
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208354 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P3426747290164957197

namespace A002940

/-- `∑[∑[∑[A208354(n)]]]` -/
def P3426747290164957197.Spec : Prop :=
  ∀ n, P3426747290164957197.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P2422259306329261988

`∑[∑[A029907(n+1)]]`
-/

namespace A002940.P2422259306329261988
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029907 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P2422259306329261988

namespace A002940

/-- `∑[∑[A029907(n+1)]]` -/
def P2422259306329261988.Spec : Prop :=
  ∀ n, P2422259306329261988.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P4591157869522921982

`∑[A113684(n)+1+n]`
-/

namespace A002940.P4591157869522921982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113684 n + 1 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P4591157869522921982

namespace A002940

/-- `∑[A113684(n)+1+n]` -/
def P4591157869522921982.Spec : Prop :=
  ∀ n, P4591157869522921982.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P6194625099166606914

`∑[∑[A211228(2*n+1)]]`
-/

namespace A002940.P6194625099166606914
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211228 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P6194625099166606914

namespace A002940

/-- `∑[∑[A211228(2*n+1)]]` -/
def P6194625099166606914.Spec : Prop :=
  ∀ n, P6194625099166606914.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P5122806438749971921

`∑[A004798(n+1)-a(n-1)]` with `a(0)=1`
-/

namespace A002940.P5122806438749971921
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A004798 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P5122806438749971921

namespace A002940

/-- `∑[A004798(n+1)-a(n-1)]` -/
def P5122806438749971921.Spec : Prop :=
  ∀ n, P5122806438749971921.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P15874082185493299954

`∑[∑[A000045(n)+a(n-2)+a(n-1)]]` with `a(0)=1, a(1)=2`
-/

namespace A002940.P15874082185493299954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  A000045 n + (f2 (n - 2) + f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P15874082185493299954

namespace A002940

/-- `∑[∑[A000045(n)+a(n-2)+a(n-1)]]` -/
def P15874082185493299954.Spec : Prop :=
  ∀ n, P15874082185493299954.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P6654217873399360790

`∑[A131913(n)+A001629(n)]`
-/

namespace A002940.P6654217873399360790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131913 n + A001629 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P6654217873399360790

namespace A002940

/-- `∑[A131913(n)+A001629(n)]` -/
def P6654217873399360790.Spec : Prop :=
  ∀ n, P6654217873399360790.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P16991197761575717200

`∑[∑[A055244(n)+A000045(n)]]`
-/

namespace A002940.P16991197761575717200
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055244 n + A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P16991197761575717200

namespace A002940

/-- `∑[∑[A055244(n)+A000045(n)]]` -/
def P16991197761575717200.Spec : Prop :=
  ∀ n, P16991197761575717200.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P15730015718705131164

`record[A006478(n)+1-A000045(n)]`
-/

namespace A002940.P15730015718705131164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 n + (1 - A000045 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002940.P15730015718705131164

namespace A002940

/-- `record[A006478(n)+1-A000045(n)]` -/
def P15730015718705131164.Spec : Prop :=
  ∀ n, P15730015718705131164.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P5190631676219386762

`A014286(n+1)+A001629(n+1)`
-/

namespace A002940.P5190631676219386762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014286 (n + 1) + A001629 (n + 1)

end

end A002940.P5190631676219386762

namespace A002940

/-- `A014286(n+1)+A001629(n+1)` -/
def P5190631676219386762.Spec : Prop :=
  ∀ n, P5190631676219386762.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P3929326552618614901

`A178523(n+1)+A001629(n+2)`
-/

namespace A002940.P3929326552618614901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178523 (n + 1) + A001629 (n + 2)

end

end A002940.P3929326552618614901

namespace A002940

/-- `A178523(n+1)+A001629(n+2)` -/
def P3929326552618614901.Spec : Prop :=
  ∀ n, P3929326552618614901.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P4715644696555071888

`A006478(n+2)+A006478(n+3)`
-/

namespace A002940.P4715644696555071888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006478 (n + 2) + A006478 (n + 3)

end

end A002940.P4715644696555071888

namespace A002940

/-- `A006478(n+2)+A006478(n+3)` -/
def P4715644696555071888.Spec : Prop :=
  ∀ n, P4715644696555071888.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P18116228592529127449

`∑[∑[A001629(n+1)+A000045(n+1)]]`
-/

namespace A002940.P18116228592529127449
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001629 (n + 1) + A000045 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002940.P18116228592529127449

namespace A002940

/-- `∑[∑[A001629(n+1)+A000045(n+1)]]` -/
def P18116228592529127449.Spec : Prop :=
  ∀ n, P18116228592529127449.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P17133354010457611578

`A118425(n+3)-A118425(n+1)`
-/

namespace A002940.P17133354010457611578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118425 (n + 3) - A118425 (n + 1)

end

end A002940.P17133354010457611578

namespace A002940

/-- `A118425(n+3)-A118425(n+1)` -/
def P17133354010457611578.Spec : Prop :=
  ∀ n, P17133354010457611578.a n = A002940 (n + 1)

end A002940

/-! ## A002940.P7360052578956569585

`A178523(n+3)-A067331(n+1)`
-/

namespace A002940.P7360052578956569585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178523 (n + 3) - A067331 (n + 1)

end

end A002940.P7360052578956569585

namespace A002940

/-- `A178523(n+3)-A067331(n+1)` -/
def P7360052578956569585.Spec : Prop :=
  ∀ n, P7360052578956569585.a n = A002940 (n + 1)

end A002940

/-!
# A002941: Arrays of dumbbells.

The programs for A002941, the canonical program `A002941.P6570335642059118853` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002941 has offset 1).

The definition of A002941 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002941.P6570335642059118853

`2*a(n-1)-a(n-3)+A002940(n+1)+A002940(n)` with `a(0)=1, a(1)=7, a(2)=29`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002941

/-- `2*a(n-1)-a(n-3)+A002940(n+1)+A002940(n)` -/
def P6570335642059118853.Spec : Prop :=
  ∀ n, P6570335642059118853.a n = A002941 (n + 1)

theorem P6570335642059118853.correct : P6570335642059118853.Spec := by
  intro n
  simp only [A002941, Nat.add_sub_cancel]

end A002941

/-! ## A002941.P13777255562258902735

`∑[∑[∑[A054455(n)+a(n-1)]]]` with `a(0)=1`
-/

namespace A002941.P13777255562258902735
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f3 =>
  A054455 n + f3 (n - 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002941.P13777255562258902735

namespace A002941

/-- `∑[∑[∑[A054455(n)+a(n-1)]]]` -/
def P13777255562258902735.Spec : Prop :=
  ∀ n, P13777255562258902735.a n = A002941 (n + 1)

end A002941

/-! ## A002941.P18263303309862147352

`abs(A308244(A167614(n+1)-1))`
-/

namespace A002941.P18263303309862147352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A308244 (A167614 (n + 1) - 1).toNat|

end

end A002941.P18263303309862147352

namespace A002941

/-- `abs(A308244(A167614(n+1)-1))` -/
def P18263303309862147352.Spec : Prop :=
  ∀ n, P18263303309862147352.a n = A002941 (n + 1)

end A002941

/-! ## A002941.P14791679788292815977

`∑[∑[A209145(A034856(n+1)+5)]]`
-/

namespace A002941.P14791679788292815977
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209145 (A034856 (n + 1) + 5).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002941.P14791679788292815977

namespace A002941

/-- `∑[∑[A209145(A034856(n+1)+5)]]` -/
def P14791679788292815977.Spec : Prop :=
  ∀ n, P14791679788292815977.a n = A002941 (n + 1)

end A002941

/-! ## A002941.P5553827783141351887

`A033999(n)*A308244(A167614(n+1)-1)`
-/

namespace A002941.P5553827783141351887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A308244 (A167614 (n + 1) - 1).toNat

end

end A002941.P5553827783141351887

namespace A002941

/-- `A033999(n)*A308244(A167614(n+1)-1)` -/
def P5553827783141351887.Spec : Prop :=
  ∀ n, P5553827783141351887.a n = A002941 (n + 1)

end A002941

/-! ## A002941.P9688760909744321001

`gcd(A000038(n), A308244(A167614(n+1)-1))`
-/

namespace A002941.P9688760909744321001
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A308244 (A167614 (n + 1) - 1).toNat)

end

end A002941.P9688760909744321001

namespace A002941

/-- `gcd(A000038(n), A308244(A167614(n+1)-1))` -/
def P9688760909744321001.Spec : Prop :=
  ∀ n, (P9688760909744321001.a n : ℤ) = A002941 (n + 1)

end A002941

/-! ## A002941.P3635966536769395352

`lcm(A020985(n), A308244(A167614(n+1)-1))`
-/

namespace A002941.P3635966536769395352
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A308244 (A167614 (n + 1) - 1).toNat)

end

end A002941.P3635966536769395352

namespace A002941

/-- `lcm(A020985(n), A308244(A167614(n+1)-1))` -/
def P3635966536769395352.Spec : Prop :=
  ∀ n, (P3635966536769395352.a n : ℤ) = A002941 (n + 1)

end A002941

/-! ## A002941.P346336108803882040

`A046741(∑[n+3])`
-/

namespace A002941.P346336108803882040
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002941.P346336108803882040

namespace A002941

/-- `A046741(∑[n+3])` -/
def P346336108803882040.Spec : Prop :=
  ∀ n, P346336108803882040.a n = A002941 (n + 1)

end A002941

/-! ## A002941.P17977877688909486222

`record[A046741(A055998(A002260(n+1)))]`
-/

namespace A002941.P17977877688909486222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A055998 (A002260 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002941.P17977877688909486222

namespace A002941

/-- `record[A046741(A055998(A002260(n+1)))]` -/
def P17977877688909486222.Spec : Prop :=
  ∀ n, P17977877688909486222.a n = A002941 (n + 1)

end A002941

/-! ## A002941.P8978354339696543287

`record[A046741(A055998(A026233(n+1)))]`
-/

namespace A002941.P8978354339696543287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A055998 (A026233 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002941.P8978354339696543287

namespace A002941

/-- `record[A046741(A055998(A026233(n+1)))]` -/
def P8978354339696543287.Spec : Prop :=
  ∀ n, P8978354339696543287.a n = A002941 (n + 1)

end A002941

/-! ## A002941.P14641397590734444416

`record[A046741(A055998(A074712(n+1)))]`
-/

namespace A002941.P14641397590734444416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046741 (A055998 (A074712 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002941.P14641397590734444416

namespace A002941

/-- `record[A046741(A055998(A074712(n+1)))]` -/
def P14641397590734444416.Spec : Prop :=
  ∀ n, P14641397590734444416.a n = A002941 (n + 1)

end A002941

/-!
# A002942: a(n) = n^2 written backwards.

The programs for A002942, there is no canonical definition to state claims against.
-/

/-! ## A002942.P13050719323002469309

`A061226(n+1)-(n+1)²`
-/

namespace A002942.P13050719323002469309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061226 (n + 1) - ((n + 1) ^ 2 : ℤ)

end

end A002942.P13050719323002469309

/-! ## A002942.P3336973605718373862

`∑[Δ[A061226(n)]-(2*n+1)]`
-/

namespace A002942.P3336973605718373862
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061226 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n - (2 * n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002942.P3336973605718373862

/-! ## A002942.P15309206629673489697

`∑[-Δ[A020985(n)²-(A061226(n)-n²)]]`
-/

namespace A002942.P15309206629673489697
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020985 n ^ 2 - (A061226 n - (n ^ 2 : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002942.P15309206629673489697

/-! ## A002942.P13877067426598548653

`A004086((n+1)²)`
-/

namespace A002942.P13877067426598548653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 ((n + 1) ^ 2)

end

end A002942.P13877067426598548653

/-! ## A002942.P4533908566295389230

`or(char[10], A004086(∑[2*n+1]))`
-/

namespace A002942.P4533908566295389230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A004086 (∑ j ∈ Finset.range (n + 1), f2 j))

end

end A002942.P4533908566295389230

/-! ## A002942.P16278947569231899026

`abs(1-A004086(∑[n+1+n]))+1`
-/

namespace A002942.P16278947569231899026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A004086 (∑ j ∈ Finset.range (n + 1), f1 j)| + 1

end

end A002942.P16278947569231899026

/-! ## A002942.P11714429062006630429

`A000027(A004086((n+1)^2))`
-/

namespace A002942.P11714429062006630429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A004086 ((n + 1) ^ 2)).toNat

end

end A002942.P11714429062006630429

/-! ## A002942.P13358761852128700090

`gcd(A000038(n), A004086(∑[2*n+1]))`
-/

namespace A002942.P13358761852128700090
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A004086 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A002942.P13358761852128700090

/-! ## A002942.P8164572914554572185

`A004086(∑[2*n+1])%A202532(n+1)`
-/

namespace A002942.P8164572914554572185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (∑ j ∈ Finset.range (n + 1), f1 j)) (A202532 (n + 1))

end

end A002942.P8164572914554572185

/-! ## A002942.P12342540623443317080

`A007318(C(2, n))*A004086(∑[n+1+n])`
-/

namespace A002942.P12342540623443317080
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A004086 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002942.P12342540623443317080

/-! ## A002942.P11525226116538330149

`A004086(∑[A005408(n)])%A165280(n+1)`
-/

namespace A002942.P11525226116538330149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) (A165280 (n + 1))

end

end A002942.P11525226116538330149

/-! ## A002942.P14090415432799166771

`A004086(A000290(n+1))+A000035(2*n)`
-/

namespace A002942.P14090415432799166771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004086 (A000290 (n + 1)).toNat + A000035 (2 * n)

end

end A002942.P14090415432799166771

/-! ## A002942.P11870177526661172113

`A004086(A000290(n+1))%A154671(n+1)`
-/

namespace A002942.P11870177526661172113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (A000290 (n + 1)).toNat) (A154671 (n + 1))

end

end A002942.P11870177526661172113

/-! ## A002942.P14194349864455925044

`lcm(A004086(A000290(n+1)), A008836(n+1))`
-/

namespace A002942.P14194349864455925044
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004086 (A000290 (n + 1)).toNat) (A008836 (n + 1))

end

end A002942.P14194349864455925044

/-! ## A002942.P16694923772018675517

`A000164(A000164(n+1))*A004086(A000290(n+1))`
-/

namespace A002942.P16694923772018675517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A000164 (n + 1)).toNat * A004086 (A000290 (n + 1)).toNat

end

end A002942.P16694923772018675517

/-! ## A002942.P9634242154953417978

`A110749(∑[n+1])`
-/

namespace A002942.P9634242154953417978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110749 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002942.P9634242154953417978

/-! ## A002942.P17896751210330406547

`A056964((n+1)²)-(n+1)²`
-/

namespace A002942.P17896751210330406547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056964 ((n + 1) ^ 2) - ((n + 1) ^ 2 : ℤ)

end

end A002942.P17896751210330406547

/-! ## A002942.P11779508350245101497

`A000164(A130321(n))*A004086(A000290(n+1))`
-/

namespace A002942.P11779508350245101497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000164 (A130321 n).toNat * A004086 (A000290 (n + 1)).toNat

end

end A002942.P11779508350245101497

/-! ## A002942.P8231305918739601919

`A004086(A000290(n+1))/A000164(A130321(n+1))`
-/

namespace A002942.P8231305918739601919
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004086 (A000290 (n + 1)).toNat : ℚ) / (A000164 (A130321 (n + 1)).toNat : ℚ)

end

end A002942.P8231305918739601919

/-! ## A002942.P16901058577523767895

`(n+1)²-A056965((n+1)²)`
-/

namespace A002942.P16901058577523767895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) - A056965 ((n + 1) ^ 2)

end

end A002942.P16901058577523767895

/-!
# A002943: a(n) = 2*n*(2*n+1).

The programs for A002943, the canonical program `A002943.P6554007946647441496` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002943 has offset 0).

The definition of A002943 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*n*(2*n+1)` (program `A002943.P6554007946647441496`, by `A002943.P6554007946647441496.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002943.P12469421256372326603

`4*n²+2*n`
-/

namespace A002943.P12469421256372326603
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n ^ 2 + 2 * n

end

end A002943.P12469421256372326603

namespace A002943

/-- `4*n²+2*n` -/
def P12469421256372326603.Spec : Prop :=
  ∀ n, (P12469421256372326603.a n : ℤ) = A002943 n

theorem P12469421256372326603.correct : P12469421256372326603.Spec := by
  intro n
  simp only [A002943, Nat.add_sub_cancel, A002943.P12469421256372326603.a, A002943.P6554007946647441496.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002943

/-! ## A002943.P6554007946647441496

`2*n*(2*n+1)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002943

/-- `2*n*(2*n+1)` -/
def P6554007946647441496.Spec : Prop :=
  ∀ n, (P6554007946647441496.a n : ℤ) = A002943 n

theorem P6554007946647441496.correct : P6554007946647441496.Spec := by
  intro n
  simp only [A002943]

end A002943

/-! ## A002943.P17630967301806417819

`A118729(8*n+5)`
-/

namespace A002943.P17630967301806417819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118729 (8 * n + 5)

end

end A002943.P17630967301806417819

namespace A002943

/-- `A118729(8*n+5)` -/
def P17630967301806417819.Spec : Prop :=
  ∀ n, P17630967301806417819.a n = A002943 n

end A002943

/-! ## A002943.P4334208507197979360

`lcm(2*n, Δ[n²])`
-/

namespace A002943.P4334208507197979360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A002943.P4334208507197979360

namespace A002943

/-- `lcm(2*n, Δ[n²])` -/
def P4334208507197979360.Spec : Prop :=
  ∀ n, (P4334208507197979360.a n : ℤ) = A002943 n

end A002943

/-! ## A002943.P2747128768438542995

`record[lcm(n, and(n, n-1))]`
-/

namespace A002943.P2747128768438542995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (Int.land (n : ℤ) ((n : ℤ) - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002943.P2747128768438542995

namespace A002943

/-- `record[lcm(n, and(n, n-1))]` -/
def P2747128768438542995.Spec : Prop :=
  ∀ n, (P2747128768438542995.a n : ℤ) = A002943 n

end A002943

/-! ## A002943.P11744569519402647751

`record[n*C(xor(1, n), n)]`
-/

namespace A002943.P11744569519402647751
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (Nat.xor 1 n) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002943.P11744569519402647751

namespace A002943

/-- `record[n*C(xor(1, n), n)]` -/
def P11744569519402647751.Spec : Prop :=
  ∀ n, (P11744569519402647751.a n : ℤ) = A002943 n

end A002943

/-! ## A002943.P3504111362746646043

`∑[a(n-1)+8]` with `a(0)=0, a(1)=6`
-/

namespace A002943.P3504111362746646043
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 6] fun n f1 =>
  f1 (n - 1) + 8

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002943.P3504111362746646043

namespace A002943

/-- `∑[a(n-1)+8]` -/
def P3504111362746646043.Spec : Prop :=
  ∀ n, (P3504111362746646043.a n : ℤ) = A002943 n

end A002943

/-! ## A002943.P6633611362658604397

`∑[xor(1, abs(1-8*n))]`
-/

namespace A002943.P6633611362658604397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 |1 - (8 * n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002943.P6633611362658604397

namespace A002943

/-- `∑[xor(1, abs(1-8*n))]` -/
def P6633611362658604397.Spec : Prop :=
  ∀ n, P6633611362658604397.a n = A002943 n

end A002943

/-! ## A002943.P10798959952258127054

`record[or(1, n)²-(n+1)]`
-/

namespace A002943.P10798959952258127054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002943.P10798959952258127054

namespace A002943

/-- `record[or(1, n)²-(n+1)]` -/
def P10798959952258127054.Spec : Prop :=
  ∀ n, P10798959952258127054.a n = A002943 n

end A002943

/-! ## A002943.P7538456264455727154

`record[or(1, n)²-1-n]`
-/

namespace A002943.P7538456264455727154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n ^ 2 : ℤ) - 1 - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002943.P7538456264455727154

namespace A002943

/-- `record[or(1, n)²-1-n]` -/
def P7538456264455727154.Spec : Prop :=
  ∀ n, P7538456264455727154.a n = A002943 n

end A002943

/-! ## A002943.P6422493806851814116

`record[xor(1, n)²-(n+1)]`
-/

namespace A002943.P6422493806851814116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.xor 1 n ^ 2 : ℤ) - (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002943.P6422493806851814116

namespace A002943

/-- `record[xor(1, n)²-(n+1)]` -/
def P6422493806851814116.Spec : Prop :=
  ∀ n, P6422493806851814116.a n = A002943 n

end A002943

/-! ## A002943.P7435974144550058014

`∑[ogf((6x+2x^2)/(1-2x+x^2))]`
-/

namespace A002943.P7435974144550058014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002943.P7435974144550058014

namespace A002943

/-- `∑[ogf((6x+2x^2)/(1-2x+x^2))]` -/
def P7435974144550058014.Spec : Prop :=
  ∀ n, P7435974144550058014.a n = A002943 n

end A002943

/-! ## A002943.P16016439444164015366

`ogf((6x+2x^2)/(1-3x+3x^2-x^3))`
-/

namespace A002943.P16016439444164015366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6, 2] [1, -3, 3, -1] n

end

end A002943.P16016439444164015366

namespace A002943

/-- `ogf((6x+2x^2)/(1-3x+3x^2-x^3))` -/
def P16016439444164015366.Spec : Prop :=
  ∀ n, P16016439444164015366.a n = A002943 n

end A002943

/-! ## A002943.P11047616514195255094

`n*record[lcm(4, 1-n)]/2`
-/

namespace A002943.P11047616514195255094
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (1 - (n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2

end

end A002943.P11047616514195255094

namespace A002943

/-- `n*record[lcm(4, 1-n)]/2` -/
def P11047616514195255094.Spec : Prop :=
  ∀ n, P11047616514195255094.a n = (A002943 n : ℚ)

end A002943

/-! ## A002943.P5721018046503279018

`floor(Δ[C(2*n, 2)/2]²)`
-/

namespace A002943.P5721018046503279018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (2 * n) 2 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(f1 (n + 1) - f1 n) ^ 2⌋

end

end A002943.P5721018046503279018

namespace A002943

/-- `floor(Δ[C(2*n, 2)/2]²)` -/
def P5721018046503279018.Spec : Prop :=
  ∀ n, P5721018046503279018.a n = A002943 n

end A002943

/-! ## A002943.P17780613507664219224

`record[(n-1)*n*and(1, n)]`
-/

namespace A002943.P17780613507664219224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * (n * Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002943.P17780613507664219224

namespace A002943

/-- `record[(n-1)*n*and(1, n)]` -/
def P17780613507664219224.Spec : Prop :=
  ∀ n, P17780613507664219224.a n = A002943 n

end A002943

/-! ## A002943.P8401820193796440945

`record[n^gcd(2, n+1)-n]`
-/

namespace A002943.P8401820193796440945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ Nat.gcd 2 (n + 1) : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002943.P8401820193796440945

namespace A002943

/-- `record[n^gcd(2, n+1)-n]` -/
def P8401820193796440945.Spec : Prop :=
  ∀ n, P8401820193796440945.a n = A002943 n

end A002943

/-! ## A002943.P14884914814818137769

`and(2*n*Δ[n²], -2)`
-/

namespace A002943.P14884914814818137769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((2 * n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))) (-2)

end

end A002943.P14884914814818137769

namespace A002943

/-- `and(2*n*Δ[n²], -2)` -/
def P14884914814818137769.Spec : Prop :=
  ∀ n, P14884914814818137769.a n = A002943 n

end A002943

/-! ## A002943.P5940197180054227123

`floor(2*n/acot(comp[2*n]))`
-/

namespace A002943.P5940197180054227123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n : ℝ) / SequenceMachineLib.acot (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ)⌋

end

end A002943.P5940197180054227123

namespace A002943

/-- `floor(2*n/acot(comp[2*n]))` -/
def P5940197180054227123.Spec : Prop :=
  ∀ n, P5940197180054227123.a n = A002943 n

end A002943

/-! ## A002943.P17998845726447975802

`round(2*n/acot(comp[2*n]))`
-/

namespace A002943.P17998845726447975802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 * n : ℝ) / SequenceMachineLib.acot (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℝ))

end

end A002943.P17998845726447975802

namespace A002943

/-- `round(2*n/acot(comp[2*n]))` -/
def P17998845726447975802.Spec : Prop :=
  ∀ n, P17998845726447975802.a n = A002943 n

end A002943

/-!
# A002944: a(n) = LCM(1,2,...,n) / n.

The programs for A002944, the canonical program `A002944.P11615207776596987764` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002944 has offset 1).

The definition of A002944 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002944.P11615207776596987764

`A003418(n+1)/(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002944

/-- `A003418(n+1)/(n+1)` -/
def P11615207776596987764.Spec : Prop :=
  ∀ n, P11615207776596987764.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P17780043404184485634

`n*lcm(n+1, a(n-1))/(n+1)` with `a(0)=1`
-/

namespace A002944.P17780043404184485634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((Int.lcm (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) / (n + 1 : ℚ))

end

end A002944.P17780043404184485634

namespace A002944

/-- `n*lcm(n+1, a(n-1))/(n+1)` -/
def P17780043404184485634.Spec : Prop :=
  ∀ n, P17780043404184485634.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P15942249730125943274

`n/gcd(n+1, a(n-1))*a(n-1)` with `a(0)=1`
-/

namespace A002944.P15942249730125943274
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) / (Int.gcd (n + 1 : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ) * a (n - 1)

end

end A002944.P15942249730125943274

namespace A002944

/-- `n/gcd(n+1, a(n-1))*a(n-1)` -/
def P15942249730125943274.Spec : Prop :=
  ∀ n, P15942249730125943274.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P5122309560892730089

`a(n-1)*A014963(n+1)*n/(n+1)` with `a(0)=1`
-/

namespace A002944.P5122309560892730089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (A014963 (n + 1) : ℚ) * ((n : ℚ) / (n + 1 : ℚ))

end

end A002944.P5122309560892730089

namespace A002944

/-- `a(n-1)*A014963(n+1)*n/(n+1)` -/
def P5122309560892730089.Spec : Prop :=
  ∀ n, P5122309560892730089.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P9903695625241811934

`A001405(n)*A048619(n)`
-/

namespace A002944.P9903695625241811934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 n * A048619 n

end

end A002944.P9903695625241811934

namespace A002944

/-- `A001405(n)*A048619(n)` -/
def P9903695625241811934.Spec : Prop :=
  ∀ n, P9903695625241811934.a n = A002944 (n + 1)

end A002944

/-! ## A002944.P4300812197194110089

`lcm(A027611(n+1), A046826(n))`
-/

namespace A002944.P4300812197194110089
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A027611 (n + 1)) (A046826 n)

end

end A002944.P4300812197194110089

namespace A002944

/-- `lcm(A027611(n+1), A046826(n))` -/
def P4300812197194110089.Spec : Prop :=
  ∀ n, (P4300812197194110089.a n : ℤ) = A002944 (n + 1)

end A002944

/-! ## A002944.P16425645048710880691

`A038610(n+1)*A133910(n+1)`
-/

namespace A002944.P16425645048710880691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038610 (n + 1) * A133910 (n + 1)

end

end A002944.P16425645048710880691

namespace A002944

/-- `A038610(n+1)*A133910(n+1)` -/
def P16425645048710880691.Spec : Prop :=
  ∀ n, P16425645048710880691.a n = A002944 (n + 1)

end A002944

/-! ## A002944.P1208457455174162881

`lcm(A038610(n+1), A099946(n+2))`
-/

namespace A002944.P1208457455174162881
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A038610 (n + 1)) (A099946 (n + 2))

end

end A002944.P1208457455174162881

namespace A002944

/-- `lcm(A038610(n+1), A099946(n+2))` -/
def P1208457455174162881.Spec : Prop :=
  ∀ n, (P1208457455174162881.a n : ℤ) = A002944 (n + 1)

end A002944

/-! ## A002944.P4505015691778176486

`∏[A065033(2*n)/A048671(n+1)]`
-/

namespace A002944.P4505015691778176486
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A065033 (2 * n) : ℚ) / (A048671 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A002944.P4505015691778176486

namespace A002944

/-- `∏[A065033(2*n)/A048671(n+1)]` -/
def P4505015691778176486.Spec : Prop :=
  ∀ n, P4505015691778176486.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P18161482730509294663

`A028310(n)*A099946(A028310(n)+1)`
-/

namespace A002944.P18161482730509294663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n * A099946 (A028310 n + 1).toNat

end

end A002944.P18161482730509294663

namespace A002944

/-- `A028310(n)*A099946(A028310(n)+1)` -/
def P18161482730509294663.Spec : Prop :=
  ∀ n, P18161482730509294663.a n = A002944 (n + 1)

end A002944

/-! ## A002944.P6477744780292111991

`A000793(n)/A048671(n+1)*A225558(n)`
-/

namespace A002944.P6477744780292111991
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000793 n : ℚ) / (A048671 (n + 1) : ℚ) * (A225558 n : ℚ)

end

end A002944.P6477744780292111991

namespace A002944

/-- `A000793(n)/A048671(n+1)*A225558(n)` -/
def P6477744780292111991.Spec : Prop :=
  ∀ n, P6477744780292111991.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P12398716555402420732

`A180000(n+1)/A152271(n)*A001405(n)`
-/

namespace A002944.P12398716555402420732
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A180000 (n + 1) : ℚ) / (A152271 n : ℚ) * (A001405 n : ℚ)

end

end A002944.P12398716555402420732

namespace A002944

/-- `A180000(n+1)/A152271(n)*A001405(n)` -/
def P12398716555402420732.Spec : Prop :=
  ∀ n, P12398716555402420732.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P5962521983990089726

`A027611(n+1)*A110566(n+1)/A120263(n+1)`
-/

namespace A002944.P5962521983990089726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A027611 (n + 1) * A110566 (n + 1) : ℚ) / (A120263 (n + 1) : ℚ)

end

end A002944.P5962521983990089726

namespace A002944

/-- `A027611(n+1)*A110566(n+1)/A120263(n+1)` -/
def P5962521983990089726.Spec : Prop :=
  ∀ n, P5962521983990089726.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P16404625936823108297

`A067391(n+1)/gcd(n+1, A067391(n+1))`
-/

namespace A002944.P16404625936823108297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A067391 (n + 1) : ℚ) / (Int.gcd (n + 1 : ℤ) (A067391 (n + 1)) : ℚ)

end

end A002944.P16404625936823108297

namespace A002944

/-- `A067391(n+1)/gcd(n+1, A067391(n+1))` -/
def P16404625936823108297.Spec : Prop :=
  ∀ n, P16404625936823108297.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P12396935068530202404

`A003418(n)/A263673(n)*A048619(n)`
-/

namespace A002944.P12396935068530202404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003418 n : ℚ) / (A263673 n : ℚ) * (A048619 n : ℚ)

end

end A002944.P12396935068530202404

namespace A002944

/-- `A003418(n)/A263673(n)*A048619(n)` -/
def P12396935068530202404.Spec : Prop :=
  ∀ n, P12396935068530202404.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P9899368876781781357

`∏[∏{p}[n*∑{e}[∏{p}[n+1, #], #]!%2+1, #]]/(n+1)`
-/

namespace A002944.P9899368876781781357
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f4 n), p

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (Nat.factorial (∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p) % 2) + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A002944.P9899368876781781357

namespace A002944

/-- `∏[∏{p}[n*∑{e}[∏{p}[n+1, #], #]!%2+1, #]]/(n+1)` -/
def P9899368876781781357.Spec : Prop :=
  ∀ n, P9899368876781781357.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P13303964200040268391

`Δ[A173185(n)]/(n+1)`
-/

namespace A002944.P13303964200040268391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173185 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A002944.P13303964200040268391

namespace A002944

/-- `Δ[A173185(n)]/(n+1)` -/
def P13303964200040268391.Spec : Prop :=
  ∀ n, P13303964200040268391.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P8017369803941421390

`Δ[A236856(n)]/(n+1)`
-/

namespace A002944.P8017369803941421390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236856 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) / (n + 1 : ℚ)

end

end A002944.P8017369803941421390

namespace A002944

/-- `Δ[A236856(n)]/(n+1)` -/
def P8017369803941421390.Spec : Prop :=
  ∀ n, P8017369803941421390.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P7931417009528034963

`(A070198(n)+1)/(n+1)`
-/

namespace A002944.P7931417009528034963
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070198 n + 1 : ℚ) / (n + 1 : ℚ)

end

end A002944.P7931417009528034963

namespace A002944

/-- `(A070198(n)+1)/(n+1)` -/
def P7931417009528034963.Spec : Prop :=
  ∀ n, P7931417009528034963.a n = (A002944 (n + 1) : ℚ)

end A002944

/-! ## A002944.P17000183813740892081

`A387027(n+1)/(n+2)`
-/

namespace A002944.P17000183813740892081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A387027 (n + 1) : ℚ) / (n + 2 : ℚ)

end

end A002944.P17000183813740892081

namespace A002944

/-- `A387027(n+1)/(n+2)` -/
def P17000183813740892081.Spec : Prop :=
  ∀ n, P17000183813740892081.a n = (A002944 (n + 1) : ℚ)

end A002944

/-!
# A002952: Smaller of unitary amicable pair.

The programs for A002952, there is no canonical definition to state claims against.
-/

/-! ## A002952.P4145457981352087378

`A180277(n+1)-A002953(n+1)`
-/

namespace A002952.P4145457981352087378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180277 (n + 1) - A002953 (n + 1)

end

end A002952.P4145457981352087378

/-! ## A002952.P13081182044282820961

`A180277(A000027(n+1))%A002953(n+1)`
-/

namespace A002952.P13081182044282820961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180277 (A000027 (n + 1)).toNat) (A002953 (n + 1))

end

end A002952.P13081182044282820961

/-! ## A002952.P4018085058766406290

`A180277(A028310(n+1))%A002953(n+1)`
-/

namespace A002952.P4018085058766406290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180277 (A028310 (n + 1)).toNat) (A002953 (n + 1))

end

end A002952.P4018085058766406290

/-! ## A002952.P13260785925168101654

`A180277(A008619(2*n))%A002953(n+1)`
-/

namespace A002952.P13260785925168101654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A180277 (A008619 (2 * n)).toNat) (A002953 (n + 1))

end

end A002952.P13260785925168101654

/-! ## A002952.P9052630214944076860

`lcm(A151659(n), A180277(n+1))%A002953(n+1)`
-/

namespace A002952.P9052630214944076860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lcm (A151659 n) (A180277 (n + 1)) : ℤ) (A002953 (n + 1))

end

end A002952.P9052630214944076860

/-!
# A002953: Larger of unitary amicable pair.

The programs for A002953, there is no canonical definition to state claims against.
-/

/-! ## A002953.P17892382327907349278

`A180277(n+1)-A002952(n+1)`
-/

namespace A002953.P17892382327907349278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180277 (n + 1) - A002952 (n + 1)

end

end A002953.P17892382327907349278

/-! ## A002953.P17060304302905758677

`A180277(n+1)-∩[A063991(n+1), A336219(n+1)]`
-/

namespace A002953.P17060304302905758677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063991 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336219 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180277 (n + 1) - (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ)

end

end A002953.P17060304302905758677

/-! ## A002953.P3378569738181636516

`A063991(A029970(n+3)+n)`
-/

namespace A002953.P3378569738181636516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063991 (A029970 (n + 3) + (n : ℤ)).toNat

end

end A002953.P3378569738181636516

/-! ## A002953.P4310475190957498339

`A180277(n+1)-A063991(A000005(4^n))`
-/

namespace A002953.P4310475190957498339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180277 (n + 1) - A063991 (A000005 (4 ^ n)).toNat

end

end A002953.P4310475190957498339

/-! ## A002953.P1500423139978621724

`A180277(n+1)-A063991(Δ[A118758(n)²])`
-/

namespace A002953.P1500423139978621724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118758 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180277 (n + 1) - A063991 (f1 (n + 1) - f1 n).toNat

end

end A002953.P1500423139978621724

/-!
# A002955: Number of (unordered, unlabeled) rooted trimmed trees with n nodes.

The programs for A002955, there is no canonical definition to state claims against.
-/

/-! ## A002955.P2922691959619064911

`A255704(∑[char[1]+n]+1)`
-/

namespace A002955.P2922691959619064911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002955.P2922691959619064911

/-! ## A002955.P9361044582170106663

`A255704(A133263(n))%A188161(n)`
-/

namespace A002955.P9361044582170106663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A255704 (A133263 n).toNat) (A188161 n)

end

end A002955.P9361044582170106663

/-! ## A002955.P8819824085824124601

`gcd(A000038(n), A255704(A133263(n)))`
-/

namespace A002955.P8819824085824124601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A255704 (A133263 n).toNat)

end

end A002955.P8819824085824124601

/-! ## A002955.P8023693060507977491

`or(A000007(n), A255704(A133263(n)))`
-/

namespace A002955.P8023693060507977491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A255704 (A133263 n).toNat)

end

end A002955.P8023693060507977491

/-! ## A002955.P17953571913170808470

`A255704(A133263(n))+char[A017512(n)]`
-/

namespace A002955.P17953571913170808470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017512 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A133263 n).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A002955.P17953571913170808470

/-! ## A002955.P1912474966858509133

`A255704(A133263(n))+A035363(4*n+1)`
-/

namespace A002955.P1912474966858509133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255704 (A133263 n).toNat + A035363 (4 * n + 1)

end

end A002955.P1912474966858509133

/-! ## A002955.P3843549561185174872

`A000120(A060632(n))*A255704(A133263(n))`
-/

namespace A002955.P3843549561185174872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A060632 n).toNat * A255704 (A133263 n).toNat

end

end A002955.P3843549561185174872

/-! ## A002955.P16772683748684122109

`A001222(A072742(n+1))*A255704(A133263(n))`
-/

namespace A002955.P16772683748684122109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A072742 (n + 1)).toNat * A255704 (A133263 n).toNat

end

end A002955.P16772683748684122109

/-! ## A002955.P10114725128186706168

`A255636(∑[n+2])`
-/

namespace A002955.P10114725128186706168
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255636 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A002955.P10114725128186706168

/-!
# A002956: Number of basic invariants for cyclic group of order and degree n.

The programs for A002956, there is no canonical definition to state claims against.
-/

/-! ## A002956.P9963866088387577408

`A096337(n+1)+1`
-/

namespace A002956.P9963866088387577408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096337 (n + 1) + 1

end

end A002956.P9963866088387577408

/-! ## A002956.P14021229486091872932

`Δ[A000070(n)+∑[A181887(n)]]`
-/

namespace A002956.P14021229486091872932
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181887 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n + ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002956.P14021229486091872932

/-! ## A002956.P3168265045621518937

`A181887(n+1)+Δ[A000070(n)]`
-/

namespace A002956.P3168265045621518937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000070 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181887 (n + 1) + (f1 (n + 1) - f1 n)

end

end A002956.P3168265045621518937

/-! ## A002956.P14346459219005871285

`A181887(n+1)+A000041(n+1)`
-/

namespace A002956.P14346459219005871285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181887 (n + 1) + A000041 (n + 1)

end

end A002956.P14346459219005871285

/-! ## A002956.P3317137866852189422

`A000065(n+1)+A181887(n+1)+1`
-/

namespace A002956.P3317137866852189422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000065 (n + 1) + (A181887 (n + 1) + 1)

end

end A002956.P3317137866852189422

/-!
# A002957: Numbers k such that 2*10^k - 1 is prime.

The programs for A002957, there is no canonical definition to state claims against.
-/

/-! ## A002957.P17694872535298754063

`eq[1, A241018(n+2)]+1`
-/

namespace A002957.P17694872535298754063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241018 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002957.P17694872535298754063

/-! ## A002957.P17606051471188261085

`eq[2, A120642(n+1)]+1`
-/

namespace A002957.P17606051471188261085
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120642 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002957.P17606051471188261085

/-! ## A002957.P2284832440885870897

`eq[A046698(n), A102707(n)]`
-/

namespace A002957.P2284832440885870897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046698 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102707 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002957.P2284832440885870897

/-! ## A002957.P17597956574756164039

`eq[A000007(n), A002264(A102707(n))]`
-/

namespace A002957.P17597956574756164039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A102707 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002957.P17597956574756164039

/-! ## A002957.P18035471419171890297

`eq[A000010(A102707(n)), A056926(n)]`
-/

namespace A002957.P18035471419171890297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A102707 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002957.P18035471419171890297

/-!
# A002958: Numbers k such that 2*25^k - 1 is prime.

The programs for A002958, there is no canonical definition to state claims against.
-/

/-! ## A002958.P15681201530553285117

`A120375(n+1)/2`
-/

namespace A002958.P15681201530553285117
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A120375 (n + 1) : ℚ) / 2

end

end A002958.P15681201530553285117

/-! ## A002958.P18310714381797925825

`Δ[∑[A120375(A028310(n))]/2]`
-/

namespace A002958.P18310714381797925825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120375 (A028310 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A002958.P18310714381797925825

/-! ## A002958.P3427269005401599279

`A014682(A120375(n+1))`
-/

namespace A002958.P3427269005401599279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A120375 (n + 1)).toNat

end

end A002958.P3427269005401599279

/-! ## A002958.P13977352024078923977

`A246425(A120375(n+1)-1)`
-/

namespace A002958.P13977352024078923977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246425 (A120375 (n + 1) - 1).toNat

end

end A002958.P13977352024078923977

/-! ## A002958.P7805332235966071927

`A349414(A120375(n+1)-1)`
-/

namespace A002958.P7805332235966071927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349414 (A120375 (n + 1) - 1).toNat

end

end A002958.P7805332235966071927

/-!
# A002960: The square sieve.

The programs for A002960, the canonical program `A002960.P16550551170324434256` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002960 has offset 1).

The definition of A002960 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3043 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002960.P16550551170324434256

`a(n-1)+1+floor(sqrt(a(n-1)+1+floor(sqrt(a(n-1)))))` with `a(0)=2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002960

/-- `a(n-1)+1+floor(sqrt(a(n-1)+1+floor(sqrt(a(n-1)))))` -/
def P16550551170324434256.Spec : Prop :=
  ∀ n, (P16550551170324434256.a n : ℤ) = A002960 (n + 1)

theorem P16550551170324434256.correct : P16550551170324434256.Spec := by
  intro n
  simp only [A002960, Nat.add_sub_cancel]

end A002960

/-! ## A002960.P15590637904821777277

`∑[A274089(n+2)]`
-/

namespace A002960.P15590637904821777277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274089 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P15590637904821777277

namespace A002960

/-- `∑[A274089(n+2)]` -/
def P15590637904821777277.Spec : Prop :=
  ∀ n, P15590637904821777277.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P5817104349146365400

`A274004(n)+a(n-1)` with `a(0)=2`
-/

namespace A002960.P5817104349146365400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A274004 n + a (n - 1)

end

end A002960.P5817104349146365400

namespace A002960

/-- `A274004(n)+a(n-1)` -/
def P5817104349146365400.Spec : Prop :=
  ∀ n, P5817104349146365400.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P12594356467650090823

`∑[ceil(lt[2, A278222(n)]/2)]`
-/

namespace A002960.P12594356467650090823
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278222 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P12594356467650090823

namespace A002960

/-- `∑[ceil(lt[2, A278222(n)]/2)]` -/
def P12594356467650090823.Spec : Prop :=
  ∀ n, P12594356467650090823.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P6880345619074679038

`∑[round((comp[A000225(n)]+1)/2)]`
-/

namespace A002960.P6880345619074679038
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n + 1 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P6880345619074679038

namespace A002960

/-- `∑[round((comp[A000225(n)]+1)/2)]` -/
def P6880345619074679038.Spec : Prop :=
  ∀ n, P6880345619074679038.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P1712504796726346874

`∑[floor(A062289(n+1)/2)+1]`
-/

namespace A002960.P1712504796726346874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A062289 (n + 1) : ℚ) / 2⌋ + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P1712504796726346874

namespace A002960

/-- `∑[floor(A062289(n+1)/2)+1]` -/
def P1712504796726346874.Spec : Prop :=
  ∀ n, P1712504796726346874.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P3568038452605430508

`∑[comp[A131577(n)]-a(n-1)]` with `a(0)=2`
-/

namespace A002960.P3568038452605430508
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P3568038452605430508

namespace A002960

/-- `∑[comp[A131577(n)]-a(n-1)]` -/
def P3568038452605430508.Spec : Prop :=
  ∀ n, P3568038452605430508.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P9026963815617171018

`∑[A057716(n+1)-a(n-1)]` with `a(0)=2`
-/

namespace A002960.P9026963815617171018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A057716 (n + 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P9026963815617171018

namespace A002960

/-- `∑[A057716(n+1)-a(n-1)]` -/
def P9026963815617171018.Spec : Prop :=
  ∀ n, P9026963815617171018.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P13298020427390854994

`∑[A138591(n+2)-a(n-1)]` with `a(0)=2`
-/

namespace A002960.P13298020427390854994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A138591 (n + 2) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P13298020427390854994

namespace A002960

/-- `∑[A138591(n+2)-a(n-1)]` -/
def P13298020427390854994.Spec : Prop :=
  ∀ n, P13298020427390854994.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P1842028683224883672

`∑[ceil(lt[A165825(n+1), n²]/2)]`
-/

namespace A002960.P1842028683224883672
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165825 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P1842028683224883672

namespace A002960

/-- `∑[ceil(lt[A165825(n+1), n²]/2)]` -/
def P1842028683224883672.Spec : Prop :=
  ∀ n, P1842028683224883672.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P12901405191147720653

`∑[lt[A302436(n), n]-a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A002960.P12901405191147720653
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302436 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P12901405191147720653

namespace A002960

/-- `∑[lt[A302436(n), n]-a(n-1)]` -/
def P12901405191147720653.Spec : Prop :=
  ∀ n, P12901405191147720653.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P11035883471061845269

`∑[A008619(comp[A000225(n)])]`
-/

namespace A002960.P11035883471061845269
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P11035883471061845269

namespace A002960

/-- `∑[A008619(comp[A000225(n)])]` -/
def P11035883471061845269.Spec : Prop :=
  ∀ n, P11035883471061845269.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P8208771774664476373

`∑[A008619(comp[A003817(n)])]`
-/

namespace A002960.P8208771774664476373
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P8208771774664476373

namespace A002960

/-- `∑[A008619(comp[A003817(n)])]` -/
def P8208771774664476373.Spec : Prop :=
  ∀ n, P8208771774664476373.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P5010298385559301326

`∑[A008619(A062289(n+1))]`
-/

namespace A002960.P5010298385559301326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A062289 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P5010298385559301326

namespace A002960

/-- `∑[A008619(A062289(n+1))]` -/
def P5010298385559301326.Spec : Prop :=
  ∀ n, P5010298385559301326.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P2930719799164187741

`∑[A065033(A057716(n+1))]`
-/

namespace A002960.P2930719799164187741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A057716 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P2930719799164187741

namespace A002960

/-- `∑[A065033(A057716(n+1))]` -/
def P2930719799164187741.Spec : Prop :=
  ∀ n, P2930719799164187741.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P15444681471806745881

`∑[A026922(A177712(n+1))]`
-/

namespace A002960.P15444681471806745881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026922 (A177712 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P15444681471806745881

namespace A002960

/-- `∑[A026922(A177712(n+1))]` -/
def P15444681471806745881.Spec : Prop :=
  ∀ n, P15444681471806745881.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P612781919410866736

`∑[A065033(A062289(n+2))]`
-/

namespace A002960.P612781919410866736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A062289 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P612781919410866736

namespace A002960

/-- `∑[A065033(A062289(n+2))]` -/
def P612781919410866736.Spec : Prop :=
  ∀ n, P612781919410866736.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P17752255865658706767

`∑[A002265(A177712(n+2))]`
-/

namespace A002960.P17752255865658706767
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (A177712 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P17752255865658706767

namespace A002960

/-- `∑[A002265(A177712(n+2))]` -/
def P17752255865658706767.Spec : Prop :=
  ∀ n, P17752255865658706767.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P7880591215741841658

`∑[A065033(A138591(n+2))]`
-/

namespace A002960.P7880591215741841658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A138591 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P7880591215741841658

namespace A002960

/-- `∑[A065033(A138591(n+2))]` -/
def P7880591215741841658.Spec : Prop :=
  ∀ n, P7880591215741841658.a n = A002960 (n + 1)

end A002960

/-! ## A002960.P5809084027018717750

`∑[A004526(lt[2, A283166(n)])]`
-/

namespace A002960.P5809084027018717750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283166 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002960.P5809084027018717750

namespace A002960

/-- `∑[A004526(lt[2, A283166(n)])]` -/
def P5809084027018717750.Spec : Prop :=
  ∀ n, P5809084027018717750.a n = A002960 (n + 1)

end A002960

/-!
# A002961: Numbers k such that k and k+1 have same sum of divisors.

The programs for A002961, there is no canonical definition to state claims against.
-/

/-! ## A002961.P12327634441700536346

`A231546(n+1)-1`
-/

namespace A002961.P12327634441700536346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231546 (n + 1) - 1

end

end A002961.P12327634441700536346

/-! ## A002961.P3650247439168206993

`∪[A054004(n+1), A054007(n+1)]`
-/

namespace A002961.P3650247439168206993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054004 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054007 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002961.P3650247439168206993

/-! ## A002961.P11207780319184708320

`A058072(eq[1, A077089(n+1)]+1)`
-/

namespace A002961.P11207780319184708320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077089 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A002961.P11207780319184708320

/-! ## A002961.P1343508117858273794

`∩[A058072(n+1), A058073(n+1)]`
-/

namespace A002961.P1343508117858273794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002961.P1343508117858273794

/-! ## A002961.P12675014911410541840

`∩[A058073(n+1), A223136(n+1)]`
-/

namespace A002961.P12675014911410541840
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002961.P12675014911410541840

/-! ## A002961.P647270493618543957

`A225757(Δ[n²])`
-/

namespace A002961.P647270493618543957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A002961.P647270493618543957

/-! ## A002961.P982747946760426713

`A225757(2*(n+1))-1`
-/

namespace A002961.P982747946760426713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (2 * (n + 1)) - 1

end

end A002961.P982747946760426713

/-! ## A002961.P14053367558760820088

`record[log2(gcd(2, n))*A225757(n+1)]`
-/

namespace A002961.P14053367558760820088
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) * (A225757 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002961.P14053367558760820088

/-! ## A002961.P15255118782095165853

`record[A225757(A000265(n+1))]`
-/

namespace A002961.P15255118782095165853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002961.P15255118782095165853

/-! ## A002961.P93910300821155901

`∩[A058072(n+1), A225757(n+1)]`
-/

namespace A002961.P93910300821155901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058072 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002961.P93910300821155901

/-! ## A002961.P14828707128783861608

`∩[A058073(n+1), A225757(n+1)]`
-/

namespace A002961.P14828707128783861608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058073 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002961.P14828707128783861608

/-! ## A002961.P8621050384077843501

`∩[A072611(n+1), A225757(n+1)]`
-/

namespace A002961.P8621050384077843501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002961.P8621050384077843501

/-! ## A002961.P17716972004043007343

`∩[A223136(n+1), A225757(n+1)]`
-/

namespace A002961.P17716972004043007343
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002961.P17716972004043007343

/-! ## A002961.P12776325326288906484

`record[A225757(n+1)/A001511(n+1)]`
-/

namespace A002961.P12776325326288906484
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225757 (n + 1) : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002961.P12776325326288906484

/-! ## A002961.P9063775254762050788

`record[A225757(n+1)/A038712(n+1)]`
-/

namespace A002961.P9063775254762050788
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A225757 (n + 1) : ℚ) / (A038712 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002961.P9063775254762050788

/-! ## A002961.P11133377410332580486

`lcm(A034947(n+1), A225757(2*n+1))`
-/

namespace A002961.P11133377410332580486
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A034947 (n + 1)) (A225757 (2 * n + 1))

end

end A002961.P11133377410332580486

/-! ## A002961.P4988378089106736883

`∩[A225757(n+1), A227307(n+1)-1]`
-/

namespace A002961.P4988378089106736883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227307 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002961.P4988378089106736883

/-! ## A002961.P4545030191332887979

`gcd(A053723(n+1)*A225757(2*n+1), A225757(2*n+1))`
-/

namespace A002961.P4545030191332887979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053723 (n + 1) * A225757 (2 * n + 1)) (A225757 (2 * n + 1))

end

end A002961.P4545030191332887979

/-! ## A002961.P15637402079290482766

`∩[A083540(n+1), A223136(n+1)]`
-/

namespace A002961.P15637402079290482766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002961.P15637402079290482766

/-! ## A002961.P4276518792489456334

`∩[A083540(n+1), A225757(n+1)]`
-/

namespace A002961.P4276518792489456334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225757 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002961.P4276518792489456334

/-!
# A002962: Number of simple imperfect squared squares of order n up to symmetry.

The programs for A002962, there is no canonical definition to state claims against.
-/

/-! ## A002962.P400199903709256476

`A220164(n+1)-A006983(n+1)`
-/

namespace A002962.P400199903709256476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220164 (n + 1) - A006983 (n + 1)

end

end A002962.P400199903709256476

/-! ## A002962.P9697657319042571829

`A217155(n+1)+A220164(n+1)-A217156(n+1)`
-/

namespace A002962.P9697657319042571829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217155 (n + 1) + (A220164 (n + 1) - A217156 (n + 1))

end

end A002962.P9697657319042571829

/-! ## A002962.P16272586547321916378

`A220164(n+1)+1-A178688(n+1)`
-/

namespace A002962.P16272586547321916378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220164 (n + 1) + (1 - A178688 (n + 1))

end

end A002962.P16272586547321916378

/-! ## A002962.P2371570280521865862

`A002881(n+1)-A220165(n+1)`
-/

namespace A002962.P2371570280521865862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002881 (n + 1) - A220165 (n + 1)

end

end A002962.P2371570280521865862

/-! ## A002962.P17746949720783269984

`A002881(n+1)+A057428(n)*A220165(n+1)`
-/

namespace A002962.P17746949720783269984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002881 (n + 1) + A057428 n * A220165 (n + 1)

end

end A002962.P17746949720783269984

/-!
# A002963: Number of chisel strokes required for Roman numerals for n.

The programs for A002963, there is no canonical definition to state claims against.
-/

/-! ## A002963.P6044843562373244915

`A001222(∏{digits}[A061493(n+1), A238365(#)])`
-/

namespace A002963.P6044843562373244915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061493 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A238365 x).prod.toNat

end

end A002963.P6044843562373244915

/-! ## A002963.P1729934891109962148

`ceil(A238365(n+1)/2)`
-/

namespace A002963.P1729934891109962148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A238365 (n + 1) : ℚ) / 2⌉

end

end A002963.P1729934891109962148

/-! ## A002963.P15488204329959468557

`A034888(A238365(n+1))`
-/

namespace A002963.P15488204329959468557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A238365 (n + 1)).toNat

end

end A002963.P15488204329959468557

/-! ## A002963.P13107232969493296330

`A004526(A238365(n+1)+1)`
-/

namespace A002963.P13107232969493296330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A238365 (n + 1) + 1).toNat

end

end A002963.P13107232969493296330

/-! ## A002963.P5628596105479753568

`A123108(A238365(n+1)+1)`
-/

namespace A002963.P5628596105479753568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A238365 (n + 1) + 1).toNat

end

end A002963.P5628596105479753568

/-! ## A002963.P14910747187232845476

`A008619(A238365(n+1)-1)`
-/

namespace A002963.P14910747187232845476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A238365 (n + 1) - 1).toNat

end

end A002963.P14910747187232845476

/-! ## A002963.P8011259162292038179

`A028242(xor(1, A238365(n+1)))`
-/

namespace A002963.P8011259162292038179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Int.xor 1 (A238365 (n + 1))).toNat

end

end A002963.P8011259162292038179

/-! ## A002963.P6881746309578000939

`A002265(2*(A238365(n+1)+1))`
-/

namespace A002963.P6881746309578000939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (A238365 (n + 1) + 1)).toNat

end

end A002963.P6881746309578000939

/-! ## A002963.P12423269800080162334

`val(A000079(A238365(n+1)+1), 4)`
-/

namespace A002963.P12423269800080162334
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000079 (A238365 (n + 1) + 1).toNat).toNat 4

end

end A002963.P12423269800080162334

/-! ## A002963.P8672137293377937824

`A004524(or(1, A238365(n+1)+1))`
-/

namespace A002963.P8672137293377937824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (Int.lor 1 (A238365 (n + 1) + 1)).toNat

end

end A002963.P8672137293377937824

/-!
# A002964: Smallest number requiring n chisel strokes for its representation in Roman numerals.

The programs for A002964, there is no canonical definition to state claims against.
-/

/-! ## A002964.P17639118576600996675

`∑[A097291(A094024(n))²]`
-/

namespace A002964.P17639118576600996675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097291 (A094024 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002964.P17639118576600996675

/-!
# A002965: Interleave denominators (A000129) and numerators (A001333) of convergents to sqrt(2).

The programs for A002965, the canonical program `A002965.P15097078351005189053` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002965 has offset 0).

The definition of A002965 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A002965.P15097078351005189053

`2*a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002965

/-- `2*a(n-2)+a(n-4)` -/
def P15097078351005189053.Spec : Prop :=
  ∀ n, (P15097078351005189053.a n : ℤ) = A002965 n

theorem P15097078351005189053.correct : P15097078351005189053.Spec := by
  intro n
  simp only [A002965]

end A002965

/-! ## A002965.P2366531586070799804

`ogf((x+x^2-x^3)/(1-2x^2-x^4))`
-/

namespace A002965.P2366531586070799804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 1, -1] [1, 0, -2, 0, -1] n

end

end A002965.P2366531586070799804

namespace A002965

/-- `ogf((x+x^2-x^3)/(1-2x^2-x^4))` -/
def P2366531586070799804.Spec : Prop :=
  ∀ n, P2366531586070799804.a n = A002965 n

end A002965

/-! ## A002965.P3867857444994135476

`a(n-1)+a(n-(n%2+2))` with `a(0)=0, a(1)=1`
-/

namespace A002965.P3867857444994135476
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - (n % 2 + 2))

end

end A002965.P3867857444994135476

namespace A002965

/-- `a(n-1)+a(n-(n%2+2))` -/
def P3867857444994135476.Spec : Prop :=
  ∀ n, (P3867857444994135476.a n : ℤ) = A002965 n

end A002965

/-! ## A002965.P13070295789390046398

`a(n-2)+a(n-2)+a(n-4)` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1`
-/

namespace A002965.P13070295789390046398
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1, 1] fun n a =>
  a (n - 2) + (a (n - 2) + a (n - 4))

end

end A002965.P13070295789390046398

namespace A002965

/-- `a(n-2)+a(n-2)+a(n-4)` -/
def P13070295789390046398.Spec : Prop :=
  ∀ n, (P13070295789390046398.a n : ℤ) = A002965 n

theorem P13070295789390046398.correct : P13070295789390046398.Spec := by
  intro n
  simp only [A002965, Nat.add_sub_cancel, A002965.P13070295789390046398.a, A002965.P15097078351005189053.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A002965

/-! ## A002965.P8746082155565987994

`A249576(comp[3*n-1])`
-/

namespace A002965.P8746082155565987994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249576 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A002965.P8746082155565987994

namespace A002965

/-- `A249576(comp[3*n-1])` -/
def P8746082155565987994.Spec : Prop :=
  ∀ n, P8746082155565987994.a n = A002965 n

end A002965

/-! ## A002965.P13269172984890661389

`a(n-A010693(n))+a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A002965.P13269172984890661389
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n a =>
  a ((n : ℤ) - A010693 n).toNat + a (n - 1)

end

end A002965.P13269172984890661389

namespace A002965

/-- `a(n-A010693(n))+a(n-1)` -/
def P13269172984890661389.Spec : Prop :=
  ∀ n, (P13269172984890661389.a n : ℤ) = A002965 n

end A002965

/-! ## A002965.P12323794413438607063

`∑[abs(A176981(floor((2*n+1)/4)))]-1`
-/

namespace A002965.P12323794413438607063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A176981 ⌊(2 * n + 1 : ℚ) / 4⌋.toNat|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A002965.P12323794413438607063

namespace A002965

/-- `∑[abs(A176981(floor((2*n+1)/4)))]-1` -/
def P12323794413438607063.Spec : Prop :=
  ∀ n, P12323794413438607063.a n = A002965 n

end A002965

/-! ## A002965.P17249400855218604119

`A116560(A047225(n+1))`
-/

namespace A002965.P17249400855218604119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A047225 (n + 1)).toNat

end

end A002965.P17249400855218604119

namespace A002965

/-- `A116560(A047225(n+1))` -/
def P17249400855218604119.Spec : Prop :=
  ∀ n, P17249400855218604119.a n = A002965 n

end A002965

/-! ## A002965.P12881717999332544317

`A116560((A146512(n+1)-1)/2)`
-/

namespace A002965.P12881717999332544317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (SequenceMachineLib.roundAway ((A146512 (n + 1) - 1 : ℚ) / 2)).toNat

end

end A002965.P12881717999332544317

namespace A002965

/-- `A116560((A146512(n+1)-1)/2)` -/
def P12881717999332544317.Spec : Prop :=
  ∀ n, P12881717999332544317.a n = A002965 n

end A002965

/-! ## A002965.P3725601444546998895

`A116560(A136320(n))`
-/

namespace A002965.P3725601444546998895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116560 (A136320 n).toNat

end

end A002965.P3725601444546998895

namespace A002965

/-- `A116560(A136320(n))` -/
def P3725601444546998895.Spec : Prop :=
  ∀ n, P3725601444546998895.a n = A002965 n

end A002965

/-! ## A002965.P16471563340324973267

`(record[A119016(n)]-A119016(n))/2`
-/

namespace A002965.P16471563340324973267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119016 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A119016 n : ℚ) / 2

end

end A002965.P16471563340324973267

namespace A002965

/-- `(record[A119016(n)]-A119016(n))/2` -/
def P16471563340324973267.Spec : Prop :=
  ∀ n, P16471563340324973267.a n = (A002965 n : ℚ)

end A002965

/-!
# A002966: Egyptian fractions: number of solutions of 1 = 1/x_1 + ... + 1/x_n where 0 < x_1 <= ... <= x_n.

The programs for A002966, there is no canonical definition to state claims against.
-/

/-! ## A002966.P14904756410502275240

`A156869(∑[n]+1)`
-/

namespace A002966.P14904756410502275240
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156869 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002966.P14904756410502275240

/-! ## A002966.P18051910374996598885

`A156869(A000124(n))+char[8]`
-/

namespace A002966.P18051910374996598885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156869 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002966.P18051910374996598885

/-! ## A002966.P16259509527389430620

`A225099(n)+A156869(A000124(n))`
-/

namespace A002966.P16259509527389430620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225099 n + A156869 (A000124 n).toNat

end

end A002966.P16259509527389430620

/-! ## A002966.P17849716797990178957

`A229659(n)+A156869(A000124(n))`
-/

namespace A002966.P17849716797990178957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A229659 n + A156869 (A000124 n).toNat

end

end A002966.P17849716797990178957

/-!
# A002967: Egyptian fractions: number of solutions of 1 = 1/x_1 + ... + 1/x_n in positive integers.

The programs for A002967, there is no canonical definition to state claims against.
-/

/-! ## A002967.P4996698132574581820

`A280519(∑[n]+1)`
-/

namespace A002967.P4996698132574581820
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280519 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A002967.P4996698132574581820

/-! ## A002967.P11914348254591710130

`A280519(A000124(n))+char[8]`
-/

namespace A002967.P11914348254591710130
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280519 (A000124 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002967.P11914348254591710130

/-! ## A002967.P8778441722246379897

`A326642(n)+A280519(A000124(n))`
-/

namespace A002967.P8778441722246379897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326642 n + A280519 (A000124 n).toNat

end

end A002967.P8778441722246379897

/-! ## A002967.P6189928724191177101

`A348811(n)+A280519(A000124(n))`
-/

namespace A002967.P6189928724191177101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348811 n + A280519 (A000124 n).toNat

end

end A002967.P6189928724191177101

/-!
# A002968: Number of pairings {(b(1), c(1)), (b(2), c(2)), ..., (b(n), c(n))} of the first 2n positive integers satisfying b(i) < c(i) and such that the 2n numbers c(i)+b(i) and c(i)-b(i) are all distinct.

The programs for A002968, there is no canonical definition to state claims against.
-/

/-! ## A002968.P4633426307116639187

`A260189(4*n+1)`
-/

namespace A002968.P4633426307116639187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260189 (4 * n + 1)

end

end A002968.P4633426307116639187

/-! ## A002968.P4554346750778301700

`A260189(A016813(n))+char[16]`
-/

namespace A002968.P4554346750778301700
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260189 (A016813 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A002968.P4554346750778301700

/-! ## A002968.P13126732834229224295

`A033148(4*n+1)/∑[A011782(n)]`
-/

namespace A002968.P13126732834229224295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A033148 (4 * n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A002968.P13126732834229224295

/-! ## A002968.P10152542140145692357

`A260189(A016813(n))%A020728(n)`
-/

namespace A002968.P10152542140145692357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260189 (A016813 n).toNat) (A020728 n)

end

end A002968.P10152542140145692357

/-! ## A002968.P5384897304494256611

`lcm(A033999(n), A260189(A016813(n)))`
-/

namespace A002968.P5384897304494256611
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A260189 (A016813 n).toNat)

end

end A002968.P5384897304494256611

/-!
# A002969: E.g.f. 1/(1 - sin(x) + sin(x)^2).

The programs for A002969, there is no canonical definition to state claims against.
-/

/-! ## A002969.P7799063072472364330

`A029585(n)*A033999(n)`
-/

namespace A002969.P7799063072472364330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029585 n * A033999 n

end

end A002969.P7799063072472364330

/-! ## A002969.P9702225335431276052

`xor(A029585(n), A084099(n²+2))`
-/

namespace A002969.P9702225335431276052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A029585 n) (A084099 (n ^ 2 + 2))

end

end A002969.P9702225335431276052

/-! ## A002969.P9579434554023404280

`A029585(n)/A033999(A000384(n))`
-/

namespace A002969.P9579434554023404280
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029585 n : ℚ) / (A033999 (A000384 n).toNat : ℚ)

end

end A002969.P9579434554023404280

/-! ## A002969.P15951262902869445303

`A029585(n)/A033999(A007094(n))`
-/

namespace A002969.P15951262902869445303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029585 n : ℚ) / (A033999 (A007094 n).toNat : ℚ)

end

end A002969.P15951262902869445303

/-! ## A002969.P16541620054316626640

`A029585(n)/A033999(A106442(n))`
-/

namespace A002969.P16541620054316626640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029585 n : ℚ) / (A033999 (A106442 n).toNat : ℚ)

end

end A002969.P16541620054316626640

/-! ## A002969.P12109263158300596219

`A029585(n)/A033999(A144433(n+1))`
-/

namespace A002969.P12109263158300596219
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A029585 n : ℚ) / (A033999 (A144433 (n + 1)).toNat : ℚ)

end

end A002969.P12109263158300596219

/-!
# A002970: Numbers k such that 4*k^2 + 9 is prime.

The programs for A002970, there is no canonical definition to state claims against.
-/

/-! ## A002970.P9304038926426316436

`A114272(n+1)/2`
-/

namespace A002970.P9304038926426316436
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A114272 (n + 1) : ℚ) / 2

end

end A002970.P9304038926426316436

/-! ## A002970.P6640015488840152588

`A325642(A114272(n+1))`
-/

namespace A002970.P6640015488840152588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325642 (A114272 (n + 1)).toNat

end

end A002970.P6640015488840152588

/-! ## A002970.P6377950218666783282

`A260739(A114272(n+1))%A102296(n)`
-/

namespace A002970.P6377950218666783282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A260739 (A114272 (n + 1)).toNat) (A102296 n)

end

end A002970.P6377950218666783282

/-! ## A002970.P2587226714882062036

`A260739(A114272(n+1)%A069280(n+1))`
-/

namespace A002970.P2587226714882062036
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260739 (Int.tmod (A114272 (n + 1)) (A069280 (n + 1))).toNat

end

end A002970.P2587226714882062036

/-! ## A002970.P5545573291383124028

`A004526(A114272(n+1)+1)`
-/

namespace A002970.P5545573291383124028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A114272 (n + 1) + 1).toNat

end

end A002970.P5545573291383124028

/-! ## A002970.P7267327074706164727

`A001057(A114272(n+1)-1)`
-/

namespace A002970.P7267327074706164727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A114272 (n + 1) - 1).toNat

end

end A002970.P7267327074706164727

/-! ## A002970.P3995262515710821818

`A008619(A114272(n+1)-1)`
-/

namespace A002970.P3995262515710821818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A114272 (n + 1) - 1).toNat

end

end A002970.P3995262515710821818

/-! ## A002970.P3133339548019975374

`A082500(A114272(n+1)-1)`
-/

namespace A002970.P3133339548019975374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082500 (A114272 (n + 1) - 1).toNat

end

end A002970.P3133339548019975374

/-! ## A002970.P17552312026114035935

`A052938(A114272(n+1)-2)`
-/

namespace A002970.P17552312026114035935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (A114272 (n + 1) - 2).toNat

end

end A002970.P17552312026114035935

/-! ## A002970.P11536460988272498663

`A252463(lcm(2, A114272(n+1)))`
-/

namespace A002970.P11536460988272498663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A252463 (Int.lcm 2 (A114272 (n + 1)))

end

end A002970.P11536460988272498663

/-! ## A002970.P8300980955731057919

`A008615(A114272(n+1)+2*A114272(n+1))`
-/

namespace A002970.P8300980955731057919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008615 (A114272 (n + 1) + 2 * A114272 (n + 1)).toNat

end

end A002970.P8300980955731057919

/-!
# A002971: Numbers k such that 4*k^2 + 25 is prime.

The programs for A002971, there is no canonical definition to state claims against.
-/

/-! ## A002971.P18121465695189034783

`eq[1, A237053(A255842(n))]`
-/

namespace A002971.P18121465695189034783
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237053 (A255842 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002971.P18121465695189034783

/-! ## A002971.P919511575205109590

`eq[1, A001222((2*n)²+25)]`
-/

namespace A002971.P919511575205109590
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 ((2 * n) ^ 2 + 25)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002971.P919511575205109590

/-! ## A002971.P2058120765064844570

`eq[2, A000005((2*n)²+25)]`
-/

namespace A002971.P2058120765064844570
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((2 * n) ^ 2 + 25)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002971.P2058120765064844570

/-! ## A002971.P6759141031429321769

`lt[A000005(4*n²+25), 3]`
-/

namespace A002971.P6759141031429321769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (4 * n ^ 2 + 25)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A002971.P6759141031429321769

/-! ## A002971.P5916013321853585617

`lt[A001222(4*(n²+6)+1), 2]`
-/

namespace A002971.P5916013321853585617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (4 * (n ^ 2 + 6) + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A002971.P5916013321853585617

/-! ## A002971.P14500525225760254818

`eq[2, A000005((n+2)*4*n+29)]+1`
-/

namespace A002971.P14500525225760254818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 ((n + 2) * (4 * n) + 29)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A002971.P14500525225760254818

/-! ## A002971.P6941218841287928200

`eq[A005899(n)+23, A006530(A005899(n)+23)]`
-/

namespace A002971.P6941218841287928200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005899 n + 23

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A005899 n + 23).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002971.P6941218841287928200

/-!
# A002972: a(n) is the odd member of {x,y}, where x^2 + y^2 is the n-th prime of the form 4i+1.

The programs for A002972, there is no canonical definition to state claims against.
-/

/-! ## A002972.P17637604641286072743

`abs(A046730(n+1))`
-/

namespace A002972.P17637604641286072743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A046730 (n + 1)|

end

end A002972.P17637604641286072743

/-! ## A002972.P6485567299130879580

`2*A208295(n+1)+1`
-/

namespace A002972.P6485567299130879580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A208295 (n + 1) + 1

end

end A002972.P6485567299130879580

/-! ## A002972.P1871283156053840523

`A060819(lcm(2, A046730(n+1)))`
-/

namespace A002972.P1871283156053840523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (Int.lcm 2 (A046730 (n + 1)))

end

end A002972.P1871283156053840523

/-! ## A002972.P11391972691494964846

`gcd(A000038(n), A046730(n+1))`
-/

namespace A002972.P11391972691494964846
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A046730 (n + 1))

end

end A002972.P11391972691494964846

/-! ## A002972.P16910876368667149641

`∑{d}[A046730(n+1), A000010(#)]`
-/

namespace A002972.P16910876368667149641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046730 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A000010 d

end

end A002972.P16910876368667149641

/-! ## A002972.P6712990078836240074

`A070151(n+1)/A002973(n+1)`
-/

namespace A002972.P6712990078836240074
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070151 (n + 1) : ℚ) / (A002973 (n + 1) : ℚ)

end

end A002972.P6712990078836240074

/-! ## A002972.P8667331769189434628

`A079886(n+1)-2*A002973(n+1)`
-/

namespace A002972.P8667331769189434628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079886 (n + 1) - 2 * A002973 (n + 1)

end

end A002972.P8667331769189434628

/-! ## A002972.P4510983878798668147

`filter[A103432(n+2), A000035(#)]`
-/

namespace A002972.P4510983878798668147
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103432 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A002972.P4510983878798668147

/-! ## A002972.P2224905235898041077

`abs(A002171(A005098(n+1))/2)`
-/

namespace A002972.P2224905235898041077
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A002171 (A005098 (n + 1)).toNat : ℚ) / 2|

end

end A002972.P2224905235898041077

/-! ## A002972.P1717254821741746705

`abs(A002172(n+1)/2)`
-/

namespace A002972.P1717254821741746705
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A002172 (n + 1) : ℚ) / 2|

end

end A002972.P1717254821741746705

/-! ## A002972.P7581150524286197481

`abs(A267859(n+1)/2)`
-/

namespace A002972.P7581150524286197481
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A267859 (n + 1) : ℚ) / 2|

end

end A002972.P7581150524286197481

/-! ## A002972.P14803589429060180826

`A002265(abs(2*A002172(n+1)))`
-/

namespace A002972.P14803589429060180826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 |2 * A002172 (n + 1)|.toNat

end

end A002972.P14803589429060180826

/-! ## A002972.P4002448363180756513

`A002265(abs(2*A267859(n+1)))`
-/

namespace A002972.P4002448363180756513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 |2 * A267859 (n + 1)|.toNat

end

end A002972.P4002448363180756513

/-! ## A002972.P15298164213149732644

`A119239(n+1)%A002172(n+1)`
-/

namespace A002972.P15298164213149732644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A119239 (n + 1)) (A002172 (n + 1))

end

end A002972.P15298164213149732644

/-! ## A002972.P3848626144749751080

`gcd(A119239(n+1), A267859(n+1))`
-/

namespace A002972.P3848626144749751080
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A119239 (n + 1)) (A267859 (n + 1))

end

end A002972.P3848626144749751080

/-! ## A002972.P13062318202998408058

`A323499(n+2)%A002172(n+1)`
-/

namespace A002972.P13062318202998408058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323499 (n + 2)) (A002172 (n + 1))

end

end A002972.P13062318202998408058

/-!
# A002973: a(n) is half of the even member of {x,y}, where x^2 + y^2 is the n-th prime of the form 4i+1.

The programs for A002973, there is no canonical definition to state claims against.
-/

/-! ## A002973.P1594501496338579710

`A096029(n+1)-A208295(n+1)`
-/

namespace A002973.P1594501496338579710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096029 (n + 1) - A208295 (n + 1)

end

end A002973.P1594501496338579710

/-! ## A002973.P16719714014702523871

`A070151(n+1)/A002972(n+1)`
-/

namespace A002973.P16719714014702523871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A070151 (n + 1) : ℚ) / (A002972 (n + 1) : ℚ)

end

end A002973.P16719714014702523871

/-! ## A002973.P2307073662734144892

`abs(A070151(n+1)/A046730(n+1))`
-/

namespace A002973.P2307073662734144892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A070151 (n + 1) : ℚ) / (A046730 (n + 1) : ℚ)|

end

end A002973.P2307073662734144892

/-! ## A002973.P11595881055925612407

`(A079886(n+1)-A002972(n+1))/2`
-/

namespace A002973.P11595881055925612407
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A079886 (n + 1) - A002972 (n + 1) : ℚ) / 2

end

end A002973.P11595881055925612407

/-! ## A002973.P12630435894253685311

`A001281(A079886(n+1)-A002972(n+1))`
-/

namespace A002973.P12630435894253685311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A079886 (n + 1) - A002972 (n + 1)).toNat

end

end A002973.P12630435894253685311

/-! ## A002973.P8281221746215537924

`A029578(A079886(n+1)-A002972(n+1))`
-/

namespace A002973.P8281221746215537924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (A079886 (n + 1) - A002972 (n + 1)).toNat

end

end A002973.P8281221746215537924

/-! ## A002973.P5009970655745787743

`(A002972(n+1)*A096029(n+1))%A079886(n+1)`
-/

namespace A002973.P5009970655745787743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002972 (n + 1) * A096029 (n + 1)) (A079886 (n + 1))

end

end A002973.P5009970655745787743

/-! ## A002973.P14955062521888126415

`(A005098(n+1)-A002378(A096030(n+1)))/A002972(n+1)`
-/

namespace A002973.P14955062521888126415
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005098 (n + 1) - A002378 (A096030 (n + 1)).toNat : ℚ) / (A002972 (n + 1) : ℚ)

end

end A002973.P14955062521888126415

/-! ## A002973.P1225748599304563866

`A145019(n+1)/(A002972(n+1)+A002972(n+1))`
-/

namespace A002973.P1225748599304563866
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A145019 (n + 1) : ℚ) / (A002972 (n + 1) + A002972 (n + 1) : ℚ)

end

end A002973.P1225748599304563866

/-! ## A002973.P7034601343030588611

`A000720(p?[A073846(A103431(n+1))])`
-/

namespace A002973.P7034601343030588611
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A103431 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A002973.P7034601343030588611

/-!
# A002974: Number of restricted solid partitions of n.

The programs for A002974, there is no canonical definition to state claims against.
-/

/-! ## A002974.P2103600371906064571

`A189627(n+1)+A161205(A052367(n))`
-/

namespace A002974.P2103600371906064571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189627 (n + 1) + A161205 (A052367 n).toNat

end

end A002974.P2103600371906064571

/-! ## A002974.P15654360014477883745

`A123088(A131298(n))`
-/

namespace A002974.P15654360014477883745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123088 (A131298 n).toNat

end

end A002974.P15654360014477883745

/-! ## A002974.P5185152085247297753

`A380834(A225391(n))`
-/

namespace A002974.P5185152085247297753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380834 (A225391 n).toNat

end

end A002974.P5185152085247297753

/-! ## A002974.P1672192672632207257

`A380834(A094926(n+1))`
-/

namespace A002974.P1672192672632207257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380834 (A094926 (n + 1)).toNat

end

end A002974.P1672192672632207257

/-! ## A002974.P1974324062152417289

`A318274(xor(n, A264564(n+1)-1))`
-/

namespace A002974.P1974324062152417289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318274 (Int.xor (n : ℤ) (A264564 (n + 1) - 1)).toNat

end

end A002974.P1974324062152417289

/-!
# A002975: Primitive weird numbers: weird numbers with no proper weird divisors.

The programs for A002975, there is no canonical definition to state claims against.
-/

/-! ## A002975.P16526335401244373410

`∪[A258401(n+1), A258882(n+1)]`
-/

namespace A002975.P16526335401244373410
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002975.P16526335401244373410

/-! ## A002975.P15909452340932756689

`∩[A006037(n+1), A006039(n+1)]`
-/

namespace A002975.P15909452340932756689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002975.P15909452340932756689

/-! ## A002975.P2037188402123812032

`∩[A006037(n+1), A071395(n+1)]`
-/

namespace A002975.P2037188402123812032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071395 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002975.P2037188402123812032

/-! ## A002975.P6713867523077798773

`∩[A006037(n+1), A342669(n+1)]`
-/

namespace A002975.P6713867523077798773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342669 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002975.P6713867523077798773

/-! ## A002975.P8678596341322921711

`∩[A006039(n+1), A364862(n+1)]`
-/

namespace A002975.P8678596341322921711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364862 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002975.P8678596341322921711

/-!
# A002976: Number of certain self-avoiding walks with n steps on square lattice (see reference for precise definition).

The programs for A002976, there is no canonical definition to state claims against.
-/

/-! ## A002976.P2759453999306475313

`A006142(n+4)+2*A006143(n+4)+A006144(n+4)`
-/

namespace A002976.P2759453999306475313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006142 (n + 4) + 2 * A006143 (n + 4) + A006144 (n + 4)

end

end A002976.P2759453999306475313

/-! ## A002976.P5399462725839194429

`(n^3)%(A353391(2*n+3)+1)`
-/

namespace A002976.P5399462725839194429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 3 : ℤ) (A353391 (2 * n + 3) + 1)

end

end A002976.P5399462725839194429

/-! ## A002976.P11622704989297829480

`abs(A307012(∑[A049124(n)]))`
-/

namespace A002976.P11622704989297829480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A307012 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A002976.P11622704989297829480

/-! ## A002976.P2908181782496217411

`A245456(A032528(n))%A284530(n+1)`
-/

namespace A002976.P2908181782496217411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A245456 (A032528 n).toNat) (A284530 (n + 1))

end

end A002976.P2908181782496217411

/-! ## A002976.P17681368118427397395

`A033914(A029707(n+1))%A280303(n+1)`
-/

namespace A002976.P17681368118427397395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A033914 (A029707 (n + 1)).toNat) (A280303 (n + 1))

end

end A002976.P17681368118427397395

/-!
# A002977: Klarner-Rado sequence: a(1) = 1; subsequent terms are defined by the rule that if m is present so are 2m+1 and 3m+1.

The programs for A002977, there is no canonical definition to state claims against.
-/

/-! ## A002977.P3090084256014527192

`A076291(n)+a(n-1)` with `a(0)=1`
-/

namespace A002977.P3090084256014527192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A076291 n + a (n - 1)

end

end A002977.P3090084256014527192

/-! ## A002977.P14041411763558471237

`A190807(n+2)-1`
-/

namespace A002977.P14041411763558471237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190807 (n + 2) - 1

end

end A002977.P14041411763558471237

/-! ## A002977.P14005025108496301922

`(A190811(n+2)-1)/2`
-/

namespace A002977.P14005025108496301922
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190811 (n + 2) - 1 : ℚ) / 2

end

end A002977.P14005025108496301922

/-! ## A002977.P11624474366477597414

`∑[Δ[A190811(n+1)]/2]`
-/

namespace A002977.P11624474366477597414
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190811 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002977.P11624474366477597414

/-! ## A002977.P9642066558123128207

`∑[2*Δ[A190807(n+1)/2]]`
-/

namespace A002977.P9642066558123128207
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A190807 (n + 1) : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f2 (n + 1) - f2 n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002977.P9642066558123128207

/-! ## A002977.P11712447475486166980

`A190811(n+2)%A190807(n+2)`
-/

namespace A002977.P11712447475486166980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A190811 (n + 2)) (A190807 (n + 2))

end

end A002977.P11712447475486166980

/-! ## A002977.P16986041458003802435

`∑[A255589(Δ[2*A190811(n+1)])]`
-/

namespace A002977.P16986041458003802435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A190811 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255589 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002977.P16986041458003802435

/-! ## A002977.P6333373442693537575

`record[A276786(A003602(n+1))]`
-/

namespace A002977.P6333373442693537575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276786 (A003602 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P6333373442693537575

/-! ## A002977.P3796040970183472040

`record[A276786(A032742(n+1))]`
-/

namespace A002977.P3796040970183472040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276786 (A032742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P3796040970183472040

/-! ## A002977.P7130133195703808627

`record[A276786(A101279(n+1))]`
-/

namespace A002977.P7130133195703808627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276786 (A101279 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P7130133195703808627

/-! ## A002977.P12211772940868628281

`record[A276786(A103627(n)+1)]`
-/

namespace A002977.P12211772940868628281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276786 (A103627 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P12211772940868628281

/-! ## A002977.P2914193340439972902

`A007448(a(n-1))` with `a(0)=1`
-/

namespace A002977.P2914193340439972902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007448 (a (n - 1)).toNat

end

end A002977.P2914193340439972902

/-! ## A002977.P4362263186451783498

`record[A007448(n-A142150(n))]`
-/

namespace A002977.P4362263186451783498
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 ((n : ℤ) - A142150 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P4362263186451783498

/-! ## A002977.P7516303615019958225

`record[A007448(n)/A058281(n)]`
-/

namespace A002977.P7516303615019958225
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007448 n : ℚ) / (A058281 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P7516303615019958225

/-! ## A002977.P12361552815875537557

`record[A007448(A038502(n+1)-1)]`
-/

namespace A002977.P12361552815875537557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 (A038502 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P12361552815875537557

/-! ## A002977.P14178387368767801409

`record[A007448(A051176(n+1)-1)]`
-/

namespace A002977.P14178387368767801409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 (A051176 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P14178387368767801409

/-! ## A002977.P16130247036975194509

`record[A007448(A106610(n+1)-1)]`
-/

namespace A002977.P16130247036975194509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 (A106610 (n + 1) - 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P16130247036975194509

/-! ## A002977.P14710995267395353338

`record[A007448(n)%A007429(n+5)]`
-/

namespace A002977.P14710995267395353338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007448 n) (A007429 (n + 5))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P14710995267395353338

/-! ## A002977.P6964802825999801849

`record[A007448(n)/A006083(2*n+1)]`
-/

namespace A002977.P6964802825999801849
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007448 n : ℚ) / (A006083 (2 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P6964802825999801849

/-! ## A002977.P6655297638765070211

`record[A007448(A005408(n)-A007448(n))]`
-/

namespace A002977.P6655297638765070211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007448 (A005408 n - A007448 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002977.P6655297638765070211

/-!
# A002979: Low-temperature series in exp(4J/kT) for antiferromagnetic susceptibility for the Ising model on square lattice.

The programs for A002979, there is no canonical definition to state claims against.
-/

/-! ## A002979.P9090714470345179283

`A028963(A027910(n+2))`
-/

namespace A002979.P9090714470345179283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028963 (A027910 (n + 2)).toNat

end

end A002979.P9090714470345179283

/-! ## A002979.P7425560271641765636

`4*A038698(A121418(n))`
-/

namespace A002979.P7425560271641765636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A038698 (A121418 n).toNat

end

end A002979.P7425560271641765636

/-!
# A002980: E.g.f: 1/(1 - sin(x) + sin(x)^2 - sin(x)^3).

The programs for A002980, there is no canonical definition to state claims against.
-/

/-! ## A002980.P12913832232117435952

`A008683(A082147(n))+24*C(n, 4)`
-/

namespace A002980.P12913832232117435952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A082147 n).toNat + (24 * Nat.choose n 4 : ℤ)

end

end A002980.P12913832232117435952

/-! ## A002980.P6880745058349751287

`A052754(n)+A010891(A052717(n))`
-/

namespace A002980.P6880745058349751287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052754 n + A010891 (A052717 n).toNat

end

end A002980.P6880745058349751287

/-!
# A002981: Numbers k such that k! + 1 is prime.

The programs for A002981, there is no canonical definition to state claims against.
-/

/-! ## A002981.P16677732412221062936

`eq[1, A033932(n)]`
-/

namespace A002981.P16677732412221062936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002981.P16677732412221062936

/-! ## A002981.P4360431166259869587

`lt[A245695(n+1), n+2]`
-/

namespace A002981.P4360431166259869587
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245695 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A002981.P4360431166259869587

/-! ## A002981.P11487912065341843919

`eq[1, A053714(A028310(n))]`
-/

namespace A002981.P11487912065341843919
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053714 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002981.P11487912065341843919

/-! ## A002981.P9153566692753303049

`record[and(n, A008683(2*A033932(n)))]`
-/

namespace A002981.P9153566692753303049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A008683 (2 * A033932 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002981.P9153566692753303049

/-! ## A002981.P2609548775748486322

`lt[A033932(n), A000040(A193592(n))]`
-/

namespace A002981.P2609548775748486322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A193592 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A002981.P2609548775748486322

/-!
# A002982: Numbers k such that k! - 1 is prime.

The programs for A002982, there is no canonical definition to state claims against.
-/

/-! ## A002982.P9395212987695559265

`eq[1, A033933(n+2)]+2`
-/

namespace A002982.P9395212987695559265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033933 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A002982.P9395212987695559265

/-! ## A002982.P10193220746133987110

`record[(n+3)/A033933(n+3)]`
-/

namespace A002982.P10193220746133987110
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / (A033933 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002982.P10193220746133987110

/-! ## A002982.P5677444225098160744

`eq[A033932(n), A340802(A028310(n))]`
-/

namespace A002982.P5677444225098160744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002982.P5677444225098160744

/-! ## A002982.P193344799760283717

`eq[1, A033933(A233583(n+1))]`
-/

namespace A002982.P193344799760283717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033933 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002982.P193344799760283717

/-! ## A002982.P14761887136733777482

`eq[A033932(n), A340802(A233583(n+1))]`
-/

namespace A002982.P14761887136733777482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033932 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340802 (A233583 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A002982.P14761887136733777482

/-!
# A002984: a(0) = 1; for n > 0, a(n) = a(n-1) + floor(sqrt(a(n-1))).

The programs for A002984, the canonical program `A002984.P15223125474561592321` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002984 has offset 0).

The definition of A002984 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+floor(sqrt(a(n-1)))` (program `A002984.P15223125474561592321`, by `A002984.P15223125474561592321.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A002984.P15223125474561592321

`a(n-1)+floor(sqrt(a(n-1)))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A002984

/-- `a(n-1)+floor(sqrt(a(n-1)))` -/
def P15223125474561592321.Spec : Prop :=
  ∀ n, (P15223125474561592321.a n : ℤ) = A002984 n

theorem P15223125474561592321.correct : P15223125474561592321.Spec := by
  intro n
  simp only [A002984]

end A002984

/-! ## A002984.P2269120735785689461

`round(a(n-1)+sqrt(a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A002984.P2269120735785689461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  SequenceMachineLib.roundAway ((a (n - 1) : ℝ) + Real.sqrt (a (n - 2) : ℝ))

end

end A002984.P2269120735785689461

namespace A002984

/-- `round(a(n-1)+sqrt(a(n-2)))` -/
def P2269120735785689461.Spec : Prop :=
  ∀ n, P2269120735785689461.a n = A002984 n

end A002984

/-! ## A002984.P3984436446962159309

`ceil(a(n-1)+sqrt(a(n-3)))` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A002984.P3984436446962159309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  ⌈(a (n - 1) : ℝ) + Real.sqrt (a (n - 3) : ℝ)⌉

end

end A002984.P3984436446962159309

namespace A002984

/-- `ceil(a(n-1)+sqrt(a(n-3)))` -/
def P3984436446962159309.Spec : Prop :=
  ∀ n, P3984436446962159309.a n = A002984 n

end A002984

/-! ## A002984.P2317501127590144696

`floor(a(n-1)+a(n-1)^(1/2))` with `a(0)=1`
-/

namespace A002984.P2317501127590144696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(a (n - 1) : ℝ) + (a (n - 1) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A002984.P2317501127590144696

namespace A002984

/-- `floor(a(n-1)+a(n-1)^(1/2))` -/
def P2317501127590144696.Spec : Prop :=
  ∀ n, P2317501127590144696.a n = A002984 n

end A002984

/-! ## A002984.P2069550112180943991

`∑[A109964(n)]`
-/

namespace A002984.P2069550112180943991
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109964 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002984.P2069550112180943991

namespace A002984

/-- `∑[A109964(n)]` -/
def P2069550112180943991.Spec : Prop :=
  ∀ n, P2069550112180943991.a n = A002984 n

end A002984

/-! ## A002984.P11118259544486323378

`∑[round(A103354(n+1)/2)]`
-/

namespace A002984.P11118259544486323378
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A103354 (n + 1) : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002984.P11118259544486323378

namespace A002984

/-- `∑[round(A103354(n+1)/2)]` -/
def P11118259544486323378.Spec : Prop :=
  ∀ n, P11118259544486323378.a n = A002984 n

end A002984

/-! ## A002984.P11155794298178165552

`A006697(n)+1-a(n-1)` with `a(0)=1`
-/

namespace A002984.P11155794298178165552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A006697 n + (1 - a (n - 1))

end

end A002984.P11155794298178165552

namespace A002984

/-- `A006697(n)+1-a(n-1)` -/
def P11155794298178165552.Spec : Prop :=
  ∀ n, P11155794298178165552.a n = A002984 n

end A002984

/-! ## A002984.P878253874873541879

`∑[A103354(n-a(n-1))]` with `a(0)=1, a(1)=1`
-/

namespace A002984.P878253874873541879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  A103354 ((n : ℤ) - f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002984.P878253874873541879

namespace A002984

/-- `∑[A103354(n-a(n-1))]` -/
def P878253874873541879.Spec : Prop :=
  ∀ n, P878253874873541879.a n = A002984 n

end A002984

/-! ## A002984.P16455223166861608160

`∑[A065033(A103354(n+1))]`
-/

namespace A002984.P16455223166861608160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A103354 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002984.P16455223166861608160

namespace A002984

/-- `∑[A065033(A103354(n+1))]` -/
def P16455223166861608160.Spec : Prop :=
  ∀ n, P16455223166861608160.a n = A002984 n

end A002984

/-! ## A002984.P541138173761291102

`∑[A008619(∑[A288132(n+1)])]`
-/

namespace A002984.P541138173761291102
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002984.P541138173761291102

namespace A002984

/-- `∑[A008619(∑[A288132(n+1)])]` -/
def P541138173761291102.Spec : Prop :=
  ∀ n, P541138173761291102.a n = A002984 n

end A002984

/-! ## A002984.P1990632863765161704

`∑[A065033(∑[A288132(n+1)]+1)]`
-/

namespace A002984.P1990632863765161704
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002984.P1990632863765161704

namespace A002984

/-- `∑[A065033(∑[A288132(n+1)]+1)]` -/
def P1990632863765161704.Spec : Prop :=
  ∀ n, P1990632863765161704.a n = A002984 n

end A002984

/-! ## A002984.P2959612926541045088

`A109965(n+1)`
-/

namespace A002984.P2959612926541045088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109965 (n + 1)

end

end A002984.P2959612926541045088

namespace A002984

/-- `A109965(n+1)` -/
def P2959612926541045088.Spec : Prop :=
  ∀ n, P2959612926541045088.a n = A002984 n

end A002984

/-! ## A002984.P18129212433078938332

`∑[A065033(∑[A288132(n+2)])]`
-/

namespace A002984.P18129212433078938332
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002984.P18129212433078938332

namespace A002984

/-- `∑[A065033(∑[A288132(n+2)])]` -/
def P18129212433078938332.Spec : Prop :=
  ∀ n, P18129212433078938332.a n = A002984 n

end A002984

/-! ## A002984.P7940626646498078006

`∑[A002265(2*(∑[A288132(n+1)]+2)+1)]`
-/

namespace A002984.P7940626646498078006
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288132 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * (∑ j ∈ Finset.range (n + 1), f2 j + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002984.P7940626646498078006

namespace A002984

/-- `∑[A002265(2*(∑[A288132(n+1)]+2)+1)]` -/
def P7940626646498078006.Spec : Prop :=
  ∀ n, P7940626646498078006.a n = A002984 n

end A002984

/-! ## A002984.P10984701922345381811

`A003059(a(n-3))+a(n-1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A002984.P10984701922345381811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A003059 (a (n - 3)).toNat + a (n - 1)

end

end A002984.P10984701922345381811

namespace A002984

/-- `A003059(a(n-3))+a(n-1)` -/
def P10984701922345381811.Spec : Prop :=
  ∀ n, P10984701922345381811.a n = A002984 n

end A002984

/-! ## A002984.P15445755570781555764

`A000194(a(n-2))+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A002984.P15445755570781555764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A000194 (a (n - 2)).toNat + a (n - 1)

end

end A002984.P15445755570781555764

namespace A002984

/-- `A000194(a(n-2))+a(n-1)` -/
def P15445755570781555764.Spec : Prop :=
  ∀ n, P15445755570781555764.a n = A002984 n

end A002984

/-! ## A002984.P5775583557614478914

`eq[1, A030101(A322832(n))]`
-/

namespace A002984.P5775583557614478914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030101 (A322832 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A002984.P5775583557614478914

namespace A002984

/-- `eq[1, A030101(A322832(n))]` -/
def P5775583557614478914.Spec : Prop :=
  ∀ n, (P5775583557614478914.a n : ℤ) = A002984 n

end A002984

/-! ## A002984.P12583108772421950306

`A028392(a(n-1))` with `a(0)=1`
-/

namespace A002984.P12583108772421950306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A028392 (a (n - 1)).toNat

end

end A002984.P12583108772421950306

namespace A002984

/-- `A028392(a(n-1))` -/
def P12583108772421950306.Spec : Prop :=
  ∀ n, P12583108772421950306.a n = A002984 n

end A002984

/-!
# A002985: Number of trees in an n-node wheel.

The programs for A002985, there is no canonical definition to state claims against.
-/

/-! ## A002985.P6365749479862410871

`A003293(n)-∑[A002620(A008619(n))]`
-/

namespace A002985.P6365749479862410871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003293 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A002985.P6365749479862410871

/-! ## A002985.P11556527722070914034

`round(sqrt(A123462(n+1))/2)`
-/

namespace A002985.P11556527722070914034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A123462 (n + 1) : ℝ) / 2)

end

end A002985.P11556527722070914034

/-! ## A002985.P18149090501427543710

`A194258(A054542(n))`
-/

namespace A002985.P18149090501427543710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194258 (A054542 n).toNat

end

end A002985.P18149090501427543710

/-! ## A002985.P14578169506189130817

`A065708(A274160(n))`
-/

namespace A002985.P14578169506189130817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065708 (A274160 n).toNat

end

end A002985.P14578169506189130817

/-! ## A002985.P14258403645519345554

`A093608(A250264(n))`
-/

namespace A002985.P14258403645519345554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093608 (A250264 n).toNat

end

end A002985.P14258403645519345554

/-!
# A002986: Number of non-cyclic hydrocarbons with n carbon atoms (excluding stereoisomers).

The programs for A002986, there is no canonical definition to state claims against.
-/

/-! ## A002986.P14598226943664957445

`A273516(A152873(n+2))`
-/

namespace A002986.P14598226943664957445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273516 (A152873 (n + 2)).toNat

end

end A002986.P14598226943664957445

/-! ## A002986.P1290581376360957565

`A006984(A051162(n)+A006948(n+1))`
-/

namespace A002986.P1290581376360957565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006984 (A051162 n + A006948 (n + 1)).toNat

end

end A002986.P1290581376360957565

/-! ## A002986.P14252636841302784605

`A065033(A143093(n))+A001065(n+1)`
-/

namespace A002986.P14252636841302784605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A143093 n).toNat + A001065 (n + 1)

end

end A002986.P14252636841302784605

/-!
# A002989: Number of n-node trees with a forbidden limb of length 3.

The programs for A002989, there is no canonical definition to state claims against.
-/

/-! ## A002989.P1967816122374849922

`A265535(A023421(n))`
-/

namespace A002989.P1967816122374849922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265535 (A023421 n).toNat

end

end A002989.P1967816122374849922

/-! ## A002989.P14695035272868370927

`A265566(A309352(n))`
-/

namespace A002989.P14695035272868370927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265566 (A309352 n).toNat

end

end A002989.P14695035272868370927

/-! ## A002989.P15795461210001352906

`A265535(A023422(n+1))`
-/

namespace A002989.P15795461210001352906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265535 (A023422 (n + 1)).toNat

end

end A002989.P15795461210001352906

/-! ## A002989.P11825923250369040343

`A265535(A210542(n+1))`
-/

namespace A002989.P11825923250369040343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265535 (A210542 (n + 1)).toNat

end

end A002989.P11825923250369040343

/-! ## A002989.P6894256588356693630

`A265535(A248847(n+1))`
-/

namespace A002989.P6894256588356693630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265535 (A248847 (n + 1)).toNat

end

end A002989.P6894256588356693630

/-!
# A002990: Number of n-node trees with a forbidden limb of length 4.

The programs for A002990, there is no canonical definition to state claims against.
-/

/-! ## A002990.P4560946673698712622

`A023193(A222380(n)+A007318(n))`
-/

namespace A002990.P4560946673698712622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A222380 n + A007318 n).toNat

end

end A002990.P4560946673698712622

/-! ## A002990.P13598097473962367665

`A023193(A222380(n)+A034799(n))`
-/

namespace A002990.P13598097473962367665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A222380 n + A034799 n).toNat

end

end A002990.P13598097473962367665

/-! ## A002990.P17442082844985024262

`A023193(A222380(n)+A104878(n))`
-/

namespace A002990.P17442082844985024262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A222380 n + A104878 n).toNat

end

end A002990.P17442082844985024262

/-! ## A002990.P5963631003926347205

`A023193(A294783(n)+A222380(n))`
-/

namespace A002990.P5963631003926347205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A294783 n + A222380 n).toNat

end

end A002990.P5963631003926347205

/-! ## A002990.P10166465270007924399

`A023193(A222380(n)+A095133(n+1))`
-/

namespace A002990.P10166465270007924399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023193 (A222380 n + A095133 (n + 1)).toNat

end

end A002990.P10166465270007924399

/-!
# A002991: Number of n-node trees with a forbidden limb of length 5.

The programs for A002991, there is no canonical definition to state claims against.
-/

/-! ## A002991.P12639399146575790426

`A206551(floor(sqrt(A000105(n))))`
-/

namespace A002991.P12639399146575790426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206551 (Int.sqrt (A000105 n)).toNat

end

end A002991.P12639399146575790426

/-! ## A002991.P1934879608165339547

`floor(sqrt(A342290(n)/A171019(n+1)+2))`
-/

namespace A002991.P1934879608165339547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A342290 n : ℚ) / (A171019 (n + 1) : ℚ) + 2 : ℝ)⌋

end

end A002991.P1934879608165339547

/-! ## A002991.P16587839907627276529

`floor(sqrt(A342290(n)/A171027(n+1)+2))`
-/

namespace A002991.P16587839907627276529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A342290 n : ℚ) / (A171027 (n + 1) : ℚ) + 2 : ℝ)⌋

end

end A002991.P16587839907627276529

/-! ## A002991.P6864893201570992633

`A069623(A054782(n)+A006966(n))`
-/

namespace A002991.P6864893201570992633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069623 (A054782 n + A006966 n).toNat

end

end A002991.P6864893201570992633

/-! ## A002991.P2773948505811117326

`A002024(A007548(n+1))-A005088(A007548(n+1))`
-/

namespace A002991.P2773948505811117326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (A007548 (n + 1)).toNat - A005088 (A007548 (n + 1)).toNat

end

end A002991.P2773948505811117326

/-!
# A002992: Number of n-node trees with a forbidden limb of length 6.

The programs for A002992, there is no canonical definition to state claims against.
-/

/-! ## A002992.P7102057889393109383

`A054404(A330393(n)+A090345(n))`
-/

namespace A002992.P7102057889393109383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054404 (A330393 n + A090345 n).toNat

end

end A002992.P7102057889393109383

/-! ## A002992.P9329613634987151425

`A051889(A081150(n)+1)`
-/

namespace A002992.P9329613634987151425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (A081150 n + 1).toNat

end

end A002992.P9329613634987151425

/-! ## A002992.P2709129654331033722

`A261906(A036650(n))-1`
-/

namespace A002992.P2709129654331033722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261906 (A036650 n).toNat - 1

end

end A002992.P2709129654331033722

/-! ## A002992.P15195060220019959352

`A051889(or(1, A081150(n)))`
-/

namespace A002992.P15195060220019959352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051889 (Int.lor 1 (A081150 n)).toNat

end

end A002992.P15195060220019959352

/-! ## A002992.P4161354191999776512

`A340998(n²)+A014270(n)`
-/

namespace A002992.P4161354191999776512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340998 (n ^ 2 + 140) + A014270 n

end

end A002992.P4161354191999776512

/-!
# A002993: Initial digits of squares.

The programs for A002993, the canonical program `A002993.P8258847895073826332` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002993 has offset 0).

The definition of A002993 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000030, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A002993.P8258847895073826332

`A000030(A000290(n))`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A002993

/-- `A000030(A000290(n))` -/
def P8258847895073826332.Spec : Prop :=
  ∀ n, P8258847895073826332.a n = A002993 n

theorem P8258847895073826332.correct : P8258847895073826332.Spec := by
  intro n
  simp only [A002993]

end A002993

/-! ## A002993.P13235395626969156878

`A084009(n)%10`
-/

namespace A002993.P13235395626969156878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084009 n) 10

end

end A002993.P13235395626969156878

namespace A002993

/-- `A084009(n)%10` -/
def P13235395626969156878.Spec : Prop :=
  ∀ n, P13235395626969156878.a n = A002993 n

end A002993

/-! ## A002993.P707674885229662758

`A032760(n+1)%10`
-/

namespace A002993.P707674885229662758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032760 (n + 1)) 10

end

end A002993.P707674885229662758

namespace A002993

/-- `A032760(n+1)%10` -/
def P707674885229662758.Spec : Prop :=
  ∀ n, P707674885229662758.a n = A002993 n

end A002993

/-! ## A002993.P18269894079206841714

`(A061226(n)-n²)%10`
-/

namespace A002993.P18269894079206841714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061226 n - (n ^ 2 : ℤ)) 10

end

end A002993.P18269894079206841714

namespace A002993

/-- `(A061226(n)-n²)%10` -/
def P18269894079206841714.Spec : Prop :=
  ∀ n, P18269894079206841714.a n = A002993 n

end A002993

/-! ## A002993.P16139153062103103371

`A061226(10*n)%10`
-/

namespace A002993.P16139153062103103371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A061226 (10 * n)) 10

end

end A002993.P16139153062103103371

namespace A002993

/-- `A061226(10*n)%10` -/
def P16139153062103103371.Spec : Prop :=
  ∀ n, P16139153062103103371.a n = A002993 n

end A002993

/-! ## A002993.P1070736372572347473

`A004086(n²)%10`
-/

namespace A002993.P1070736372572347473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (n ^ 2)) 10

end

end A002993.P1070736372572347473

namespace A002993

/-- `A004086(n²)%10` -/
def P1070736372572347473.Spec : Prop :=
  ∀ n, P1070736372572347473.a n = A002993 n

end A002993

/-! ## A002993.P99117355950539827

`A010879(A032760(n+1))`
-/

namespace A002993.P99117355950539827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A032760 (n + 1)).toNat

end

end A002993.P99117355950539827

namespace A002993

/-- `A010879(A032760(n+1))` -/
def P99117355950539827.Spec : Prop :=
  ∀ n, P99117355950539827.a n = A002993 n

end A002993

/-! ## A002993.P11898741523849918881

`A000030(n²)`
-/

namespace A002993.P11898741523849918881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000030 (n ^ 2)

end

end A002993.P11898741523849918881

namespace A002993

/-- `A000030(n²)` -/
def P11898741523849918881.Spec : Prop :=
  ∀ n, P11898741523849918881.a n = A002993 n

end A002993

/-! ## A002993.P10290130389475875517

`val(A061509(n²), 2)`
-/

namespace A002993.P10290130389475875517
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A061509 (n ^ 2)).toNat 2

end

end A002993.P10290130389475875517

namespace A002993

/-- `val(A061509(n²), 2)` -/
def P10290130389475875517.Spec : Prop :=
  ∀ n, (P10290130389475875517.a n : ℤ) = A002993 n

end A002993

/-! ## A002993.P4604029868460465

`dr(A000030(n*n))`
-/

namespace A002993.P4604029868460465
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A000030 (n * n))

end

end A002993.P4604029868460465

namespace A002993

/-- `dr(A000030(n*n))` -/
def P4604029868460465.Spec : Prop :=
  ∀ n, (P4604029868460465.a n : ℤ) = A002993 n

end A002993

/-! ## A002993.P171227401516795829

`A000030(n^2)%16`
-/

namespace A002993.P171227401516795829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000030 (n ^ 2)) 16

end

end A002993.P171227401516795829

namespace A002993

/-- `A000030(n^2)%16` -/
def P171227401516795829.Spec : Prop :=
  ∀ n, P171227401516795829.a n = A002993 n

end A002993

/-! ## A002993.P9709058268912674941

`A182324(n²)-n²`
-/

namespace A002993.P9709058268912674941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182324 (n ^ 2) - (n ^ 2 : ℤ)

end

end A002993.P9709058268912674941

namespace A002993

/-- `A182324(n²)-n²` -/
def P9709058268912674941.Spec : Prop :=
  ∀ n, P9709058268912674941.a n = A002993 n

end A002993

/-! ## A002993.P1024447705857124131

`A010879(A004086(n²))`
-/

namespace A002993.P1024447705857124131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A004086 (n ^ 2)).toNat

end

end A002993.P1024447705857124131

namespace A002993

/-- `A010879(A004086(n²))` -/
def P1024447705857124131.Spec : Prop :=
  ∀ n, P1024447705857124131.a n = A002993 n

end A002993

/-! ## A002993.P10059455282327950293

`A010879(A032762(n²))`
-/

namespace A002993.P10059455282327950293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A032762 (n ^ 2)).toNat

end

end A002993.P10059455282327950293

namespace A002993

/-- `A010879(A032762(n²))` -/
def P10059455282327950293.Spec : Prop :=
  ∀ n, P10059455282327950293.a n = A002993 n

end A002993

/-! ## A002993.P15392007146378670531

`A054055(A355221(n²))`
-/

namespace A002993.P15392007146378670531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A355221 (n ^ 2)).toNat

end

end A002993.P15392007146378670531

namespace A002993

/-- `A054055(A355221(n²))` -/
def P15392007146378670531.Spec : Prop :=
  ∀ n, P15392007146378670531.a n = A002993 n

end A002993

/-! ## A002993.P7767679907976198049

`A001113(A088576(n²)-1)`
-/

namespace A002993.P7767679907976198049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 ((A088576 (n ^ 2) - 1).toNat + 1)

end

end A002993.P7767679907976198049

namespace A002993

/-- `A001113(A088576(n²)-1)` -/
def P7767679907976198049.Spec : Prop :=
  ∀ n, P7767679907976198049.a n = A002993 n

end A002993

/-! ## A002993.P10729530526376560613

`A001622(A088577(n²)-1)`
-/

namespace A002993.P10729530526376560613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 ((A088577 (n ^ 2) - 1).toNat + 1)

end

end A002993.P10729530526376560613

namespace A002993

/-- `A001622(A088577(n²)-1)` -/
def P10729530526376560613.Spec : Prop :=
  ∀ n, P10729530526376560613.a n = A002993 n

end A002993

/-! ## A002993.P11417517277040367347

`A007376(A086044(n²)-1)`
-/

namespace A002993.P11417517277040367347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (A086044 (n ^ 2) - 1).toNat

end

end A002993.P11417517277040367347

namespace A002993

/-- `A007376(A086044(n²)-1)` -/
def P11417517277040367347.Spec : Prop :=
  ∀ n, P11417517277040367347.a n = A002993 n

end A002993

/-! ## A002993.P11940909279018933446

`A056142(n²)%10`
-/

namespace A002993.P11940909279018933446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056142 (n ^ 2)) 10

end

end A002993.P11940909279018933446

namespace A002993

/-- `A056142(n²)%10` -/
def P11940909279018933446.Spec : Prop :=
  ∀ n, P11940909279018933446.a n = A002993 n

end A002993

/-!
# A002994: Initial digit of cubes.

The programs for A002994, there is no canonical definition to state claims against.
-/

/-! ## A002994.P3856527777431274539

`A032761(n)%10`
-/

namespace A002994.P3856527777431274539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A032761 n) 10

end

end A002994.P3856527777431274539

/-! ## A002994.P3137888321044837309

`(A319603(n)-A000578(n))%10`
-/

namespace A002994.P3137888321044837309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319603 n - A000578 n) 10

end

end A002994.P3137888321044837309

/-! ## A002994.P8819755105956230976

`A319603(10*n)%10`
-/

namespace A002994.P8819755105956230976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A319603 (10 * n)) 10

end

end A002994.P8819755105956230976

/-! ## A002994.P9870753605145969029

`A002993(ceil(sqrt((10*n)^3)))`
-/

namespace A002994.P9870753605145969029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002993 ⌈Real.sqrt ((10 * n) ^ 3 : ℝ)⌉.toNat

end

end A002994.P9870753605145969029

/-! ## A002994.P9052083336295255843

`A004086(n^3)%10`
-/

namespace A002994.P9052083336295255843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004086 (n ^ 3)) 10

end

end A002994.P9052083336295255843

/-!
# A002995: Number of unlabeled planar trees (also called plane trees) with n nodes.

The programs for A002995, there is no canonical definition to state claims against.
-/

/-! ## A002995.P15371103689512319026

`A380615(A212342(n))`
-/

namespace A002995.P15371103689512319026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (A212342 n).toNat

end

end A002995.P15371103689512319026

/-! ## A002995.P12398619831485307174

`A380615(A184218(n+1))`
-/

namespace A002995.P12398619831485307174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (A184218 (n + 1)).toNat

end

end A002995.P12398619831485307174

/-! ## A002995.P4514837044956490022

`A380615(A175631(n+2))`
-/

namespace A002995.P4514837044956490022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380615 (A175631 (n + 2)).toNat

end

end A002995.P4514837044956490022

/-! ## A002995.P7105540041088654065

`A303694(A054254(n+1))`
-/

namespace A002995.P7105540041088654065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (A054254 (n + 1)).toNat

end

end A002995.P7105540041088654065

/-! ## A002995.P2322046156875360529

`A303694(A186752(n+2))`
-/

namespace A002995.P2322046156875360529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (A186752 (n + 2)).toNat

end

end A002995.P2322046156875360529

/-! ## A002995.P12173846202128465043

`A303694(abs(9-A167487(n)))`
-/

namespace A002995.P12173846202128465043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 |9 - A167487 n|.toNat

end

end A002995.P12173846202128465043

/-! ## A002995.P4791011305932369808

`A303694(abs(n-A046691(n)))`
-/

namespace A002995.P4791011305932369808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 |(n : ℤ) - A046691 n|.toNat

end

end A002995.P4791011305932369808

/-! ## A002995.P10292581720754742174

`A303694(∑[A157928(n)+n])`
-/

namespace A002995.P10292581720754742174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A002995.P10292581720754742174

/-! ## A002995.P16099424538704252076

`A303694(eq[1, A193739(n+1)])`
-/

namespace A002995.P16099424538704252076
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A002995.P16099424538704252076

/-! ## A002995.P6323809873314395024

`A303694(A027379(n)-(n+1))`
-/

namespace A002995.P6323809873314395024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303694 (A027379 n - (n + 1 : ℤ)).toNat

end

end A002995.P6323809873314395024

/-!
# A002996: a(n) = Sum_{k|n} mu(k)*Catalan(n/k) (mu = Moebius function A008683).

The programs for A002996, the canonical program `A002996.P4447293613268570062` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002996 has offset 1).

The definition of A002996 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 172 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002996.P1212676727153231124

`∑{d}[n+1, A000108(#)*A008683((n+1)/#)]`
-/

namespace A002996.P1212676727153231124
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000108 d * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002996.P1212676727153231124

namespace A002996

/-- `∑{d}[n+1, A000108(#)*A008683((n+1)/#)]` -/
def P1212676727153231124.Spec : Prop :=
  ∀ n, P1212676727153231124.a n = A002996 (n + 1)

end A002996

/-! ## A002996.P4447293613268570062

`∑{d}[n+1, A007427(#)*A237670((n+1)/#)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002996

/-- `∑{d}[n+1, A007427(#)*A237670((n+1)/#)]` -/
def P4447293613268570062.Spec : Prop :=
  ∀ n, P4447293613268570062.a n = A002996 (n + 1)

theorem P4447293613268570062.correct : P4447293613268570062.Spec := by
  intro n
  simp only [A002996, Nat.add_sub_cancel]

end A002996

/-! ## A002996.P2442202818114831422

`∑{d}[n+1, A087003(#)*A187916((n+1)/#)]`
-/

namespace A002996.P2442202818114831422
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A087003 d * A187916 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A002996.P2442202818114831422

namespace A002996

/-- `∑{d}[n+1, A087003(#)*A187916((n+1)/#)]` -/
def P2442202818114831422.Spec : Prop :=
  ∀ n, P2442202818114831422.a n = A002996 (n + 1)

end A002996

/-!
# A002997: Carmichael numbers: composite numbers k such that a^(k-1) == 1 (mod k) for every a coprime to k.

The programs for A002997, there is no canonical definition to state claims against.
-/

/-! ## A002997.P1960068387155331649

`A081703(n+1)*A141710(n+1)`
-/

namespace A002997.P1960068387155331649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A141710 (n + 1)

end

end A002997.P1960068387155331649

/-! ## A002997.P4596978296719545061

`∪[A087788(n+1), A141711(n+1)]`
-/

namespace A002997.P4596978296719545061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087788 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141711 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P4596978296719545061

/-! ## A002997.P16072976680742529452

`∪[A033181(n+1), A262043(n+1)]`
-/

namespace A002997.P16072976680742529452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033181 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262043 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P16072976680742529452

/-! ## A002997.P14141088651949611164

`∪[A141711(n+1), A355039(n+1)]`
-/

namespace A002997.P14141088651949611164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141711 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P14141088651949611164

/-! ## A002997.P16011030662207297252

`∪[A339869(n+1), A340092(n+1)]`
-/

namespace A002997.P16011030662207297252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339869 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340092 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P16011030662207297252

/-! ## A002997.P17824573400161645771

`A174590(n+1)*A306414(n+1)+1`
-/

namespace A002997.P17824573400161645771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174590 (n + 1) * A306414 (n + 1) + 1

end

end A002997.P17824573400161645771

/-! ## A002997.P9853304396151290442

`lcm(A081703(A000027(n+1)), A141710(n+1))`
-/

namespace A002997.P9853304396151290442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081703 (A000027 (n + 1)).toNat) (A141710 (n + 1))

end

end A002997.P9853304396151290442

/-! ## A002997.P4566473257683977292

`lcm(A081703(n+1), A141710(A028310(n+1)))`
-/

namespace A002997.P4566473257683977292
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A081703 (n + 1)) (A141710 (A028310 (n + 1)).toNat)

end

end A002997.P4566473257683977292

/-! ## A002997.P10859650633302301297

`A081703(n+1)*A298701(∑[A135717(n+1)]-A135717(n+1)+1)`
-/

namespace A002997.P10859650633302301297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135717 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081703 (n + 1) * A298701 (∑ j ∈ Finset.range (n + 1), f1 j - A135717 (n + 1) + 1).toNat

end

end A002997.P10859650633302301297

/-! ## A002997.P4874766049338693732

`∩[A087442(n+1), A231569(n+1)]`
-/

namespace A002997.P4874766049338693732
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P4874766049338693732

/-! ## A002997.P4341137167113692159

`∩[A087442(n+1), A318555(n+1)]`
-/

namespace A002997.P4341137167113692159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P4341137167113692159

/-! ## A002997.P4941464051330149892

`∩[A231569(n+1), A231570(n+1)]`
-/

namespace A002997.P4941464051330149892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231570 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P4941464051330149892

/-! ## A002997.P6649812736260410639

`∩[A231570(n+1), A318555(n+1)]`
-/

namespace A002997.P6649812736260410639
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P6649812736260410639

/-! ## A002997.P13607220180263633550

`∩[A080747(n+1), A087442(n+1)]`
-/

namespace A002997.P13607220180263633550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P13607220180263633550

/-! ## A002997.P15023337343142161104

`∩[A231569(n+1), A231572(n+1)]`
-/

namespace A002997.P15023337343142161104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231569 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P15023337343142161104

/-! ## A002997.P3741573919025683325

`∩[A231570(n+1), A231572(n+1)]`
-/

namespace A002997.P3741573919025683325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P3741573919025683325

/-! ## A002997.P3978621426092848450

`∩[A231572(n+1), A318555(n+1)]`
-/

namespace A002997.P3978621426092848450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231572 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318555 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P3978621426092848450

/-! ## A002997.P13871684555865677330

`∩[A087442(n+1), A231571(n+1)]`
-/

namespace A002997.P13871684555865677330
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087442 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P13871684555865677330

/-! ## A002997.P10721675994801522916

`∩[A231570(n+1), A231571(n+1)]`
-/

namespace A002997.P10721675994801522916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231570 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231571 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P10721675994801522916

/-! ## A002997.P2336828726556696828

`∩[A231571(n+1), A231572(n+1)]`
-/

namespace A002997.P2336828726556696828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231571 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231572 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A002997.P2336828726556696828

/-!
# A002998: Smallest multiple of n whose digits sum to n.

The programs for A002998, there is no canonical definition to state claims against.
-/

/-! ## A002998.P5661327408619342551

`n*A131382(abs(1-n)+1)`
-/

namespace A002998.P5661327408619342551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A131382 (|1 - (n : ℤ)| + 1).toNat

end

end A002998.P5661327408619342551

/-! ## A002998.P12234376135225894605

`lcm(n, A082259(A152947(n+1)))`
-/

namespace A002998.P12234376135225894605
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (A082259 (A152947 (n + 1)).toNat)

end

end A002998.P12234376135225894605

/-! ## A002998.P15891205928734512755

`lcm(2*n-n, A082259(A000124(abs(1-n))))`
-/

namespace A002998.P15891205928734512755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 * n : ℤ) - (n : ℤ)) (A082259 (A000124 |1 - (n : ℤ)|.toNat).toNat)

end

end A002998.P15891205928734512755

/-! ## A002998.P7851704882747001717

`A082259(A152947(n+1))-A000007(n)`
-/

namespace A002998.P7851704882747001717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082259 (A152947 (n + 1)).toNat - A000007 n

end

end A002998.P7851704882747001717

/-! ## A002998.P15748012562826864419

`A057427(n)*A082259(A152947(n+1))`
-/

namespace A002998.P15748012562826864419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n * A082259 (A152947 (n + 1)).toNat

end

end A002998.P15748012562826864419

/-! ## A002998.P17840172936994107700

`A082259(A152947(n+1))%A057788(n)`
-/

namespace A002998.P17840172936994107700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082259 (A152947 (n + 1)).toNat) (A057788 n)

end

end A002998.P17840172936994107700

/-! ## A002998.P14183917551481789385

`and(A000225(n), A082259(A152947(n+1)))`
-/

namespace A002998.P14183917551481789385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A082259 (A152947 (n + 1)).toNat)

end

end A002998.P14183917551481789385

/-! ## A002998.P11426997184646154771

`A082259(A000124(abs(1-n)))-A000038(n)`
-/

namespace A002998.P11426997184646154771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082259 (A000124 |1 - (n : ℤ)|.toNat).toNat - A000038 n

end

end A002998.P11426997184646154771

/-! ## A002998.P2799175989928058473

`A082259(A000124(abs(1-n)))%A057788(n)`
-/

namespace A002998.P2799175989928058473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082259 (A000124 |1 - (n : ℤ)|.toNat).toNat) (A057788 n)

end

end A002998.P2799175989928058473

/-! ## A002998.P10706828341615758236

`char[A029579(n)]*A082259(A152947(n+1))`
-/

namespace A002998.P10706828341615758236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029579 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A082259 (A152947 (n + 1)).toNat

end

end A002998.P10706828341615758236

/-! ## A002998.P6700764826965173236

`char[A133310(n)]*A082259(A152947(n+1))`
-/

namespace A002998.P6700764826965173236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133310 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A082259 (A152947 (n + 1)).toNat

end

end A002998.P6700764826965173236

/-! ## A002998.P8075187627658983782

`A082259(A152947(n+1))-∏{d}[n, A001221(#)]`
-/

namespace A002998.P8075187627658983782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082259 (A152947 (n + 1)).toNat - ∏ d ∈ Nat.divisors (f1 n), A001221 d

end

end A002998.P8075187627658983782

/-! ## A002998.P17594166424670044143

`A000040(n+1)%2*A082259(A152947(n+1))`
-/

namespace A002998.P17594166424670044143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A082259 (A152947 (n + 1)).toNat

end

end A002998.P17594166424670044143

/-! ## A002998.P173972125443659639

`A082259(A152947(n+1))-A000045(C(2, n+2))`
-/

namespace A002998.P173972125443659639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082259 (A152947 (n + 1)).toNat - A000045 (Nat.choose 2 (n + 2))

end

end A002998.P173972125443659639

/-! ## A002998.P15855118690666943446

`A001221(A001316(n))*A082259(A152947(n+1))`
-/

namespace A002998.P15855118690666943446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A001316 n).toNat * A082259 (A152947 (n + 1)).toNat

end

end A002998.P15855118690666943446

/-! ## A002998.P11139940118163477570

`A001221(A137688(n))*A082259(A152947(n+1))`
-/

namespace A002998.P11139940118163477570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A137688 n).toNat * A082259 (A152947 (n + 1)).toNat

end

end A002998.P11139940118163477570

/-! ## A002998.P3295076008542294459

`A082259(A152947(n+1))-A001221(A014963(4*n+2))`
-/

namespace A002998.P3295076008542294459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082259 (A152947 (n + 1)).toNat - A001221 (A014963 (4 * n + 2)).toNat

end

end A002998.P3295076008542294459

/-!
# A002999: Expansion of (1 + x*exp(x))^2.

The programs for A002999, the canonical program `A002999.P3630414621016357249` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A002999 has offset 0).

The definition of A002999 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 318 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A002999.P6351458433077257364

`A003013(n)+n`
-/

namespace A002999.P6351458433077257364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003013 n + (n : ℤ)

end

end A002999.P6351458433077257364

namespace A002999

/-- `A003013(n)+n` -/
def P6351458433077257364.Spec : Prop :=
  ∀ n, P6351458433077257364.a n = A002999 n

end A002999

/-! ## A002999.P3630414621016357249

`A004277(n)+A001815(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A002999

/-- `A004277(n)+A001815(n)` -/
def P3630414621016357249.Spec : Prop :=
  ∀ n, P3630414621016357249.a n = A002999 n

theorem P3630414621016357249.correct : P3630414621016357249.Spec := by
  intro n
  simp only [A002999]

end A002999

/-! ## A002999.P9429904221760846111

`A001815(n)+record[A124625(n)]`
-/

namespace A002999.P9429904221760846111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124625 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002999.P9429904221760846111

namespace A002999

/-- `A001815(n)+record[A124625(n)]` -/
def P9429904221760846111.Spec : Prop :=
  ∀ n, P9429904221760846111.a n = A002999 n

end A002999

/-! ## A002999.P7655386371270516018

`A004275(n+1)+A001815(n)`
-/

namespace A002999.P7655386371270516018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (n + 1) + A001815 n

end

end A002999.P7655386371270516018

namespace A002999

/-- `A004275(n+1)+A001815(n)` -/
def P7655386371270516018.Spec : Prop :=
  ∀ n, P7655386371270516018.a n = A002999 n

end A002999

/-! ## A002999.P5873420453623258905

`A028310(2*n)+A001815(n)`
-/

namespace A002999.P5873420453623258905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (2 * n) + A001815 n

end

end A002999.P5873420453623258905

namespace A002999

/-- `A028310(2*n)+A001815(n)` -/
def P5873420453623258905.Spec : Prop :=
  ∀ n, P5873420453623258905.a n = A002999 n

end A002999

/-! ## A002999.P3896652295584431910

`A001815(n)+A028310(n)+n`
-/

namespace A002999.P3896652295584431910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (A028310 n + (n : ℤ))

end

end A002999.P3896652295584431910

namespace A002999

/-- `A001815(n)+A028310(n)+n` -/
def P3896652295584431910.Spec : Prop :=
  ∀ n, P3896652295584431910.a n = A002999 n

end A002999

/-! ## A002999.P16870946863911423051

`A001815(n)+A008486(n)-n`
-/

namespace A002999.P16870946863911423051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + (A008486 n - (n : ℤ))

end

end A002999.P16870946863911423051

namespace A002999

/-- `A001815(n)+A008486(n)-n` -/
def P16870946863911423051.Spec : Prop :=
  ∀ n, P16870946863911423051.a n = A002999 n

end A002999

/-! ## A002999.P4989651128052734815

`A004277(n)+n*A097067(n)`
-/

namespace A002999.P4989651128052734815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (n : ℤ) * A097067 n

end

end A002999.P4989651128052734815

namespace A002999

/-- `A004277(n)+n*A097067(n)` -/
def P4989651128052734815.Spec : Prop :=
  ∀ n, P4989651128052734815.a n = A002999 n

end A002999

/-! ## A002999.P5305440089146976744

`A001815(n)+record[A026741(n)+1]`
-/

namespace A002999.P5305440089146976744
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002999.P5305440089146976744

namespace A002999

/-- `A001815(n)+record[A026741(n)+1]` -/
def P5305440089146976744.Spec : Prop :=
  ∀ n, P5305440089146976744.a n = A002999 n

end A002999

/-! ## A002999.P3065762061592408487

`A001815(n)+record[A254048(n+1)]`
-/

namespace A002999.P3065762061592408487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254048 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A002999.P3065762061592408487

namespace A002999

/-- `A001815(n)+record[A254048(n+1)]` -/
def P3065762061592408487.Spec : Prop :=
  ∀ n, P3065762061592408487.a n = A002999 n

end A002999

/-! ## A002999.P9130860450044858057

`A004277(n)+C(n, 2)*A011782(n)`
-/

namespace A002999.P9130860450044858057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n + (Nat.choose n 2 : ℤ) * A011782 n

end

end A002999.P9130860450044858057

namespace A002999

/-- `A004277(n)+C(n, 2)*A011782(n)` -/
def P9130860450044858057.Spec : Prop :=
  ∀ n, P9130860450044858057.a n = A002999 n

end A002999

/-! ## A002999.P6792001396905690694

`A026741(A008574(n))+A001815(n)`
-/

namespace A002999.P6792001396905690694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A008574 n).toNat + A001815 n

end

end A002999.P6792001396905690694

namespace A002999

/-- `A026741(A008574(n))+A001815(n)` -/
def P6792001396905690694.Spec : Prop :=
  ∀ n, P6792001396905690694.a n = A002999 n

end A002999

/-! ## A002999.P38504453016296814

`A134227(n+1)+A001815(n)-A000096(n)`
-/

namespace A002999.P38504453016296814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134227 (n + 1) + (A001815 n - A000096 n)

end

end A002999.P38504453016296814

namespace A002999

/-- `A134227(n+1)+A001815(n)-A000096(n)` -/
def P38504453016296814.Spec : Prop :=
  ∀ n, P38504453016296814.a n = A002999 n

end A002999

/-! ## A002999.P13046718311886755340

`A003014(n)+n-A052791(n)`
-/

namespace A002999.P13046718311886755340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003014 n + ((n : ℤ) - A052791 n)

end

end A002999.P13046718311886755340

namespace A002999

/-- `A003014(n)+n-A052791(n)` -/
def P13046718311886755340.Spec : Prop :=
  ∀ n, P13046718311886755340.a n = A002999 n

end A002999

/-! ## A002999.P9117164919898114971

`A007318(A000124(n))+A001815(n)+n`
-/

namespace A002999.P9117164919898114971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000124 n).toNat + (A001815 n + (n : ℤ))

end

end A002999.P9117164919898114971

namespace A002999

/-- `A007318(A000124(n))+A001815(n)+n` -/
def P9117164919898114971.Spec : Prop :=
  ∀ n, P9117164919898114971.a n = A002999 n

end A002999

/-! ## A002999.P6403396315936597487

`A134400(A000217(n))+A001815(n)+n`
-/

namespace A002999.P6403396315936597487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134400 (A000217 n).toNat + (A001815 n + (n : ℤ))

end

end A002999.P6403396315936597487

namespace A002999

/-- `A134400(A000217(n))+A001815(n)+n` -/
def P6403396315936597487.Spec : Prop :=
  ∀ n, P6403396315936597487.a n = A002999 n

end A002999

