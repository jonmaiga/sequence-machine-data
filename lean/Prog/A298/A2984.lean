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
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
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
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C001
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
import Seq.Opaque.C025
import Seq.Opaque.C026

/-!
# A298400: a(n) = a(n-1) + a(n-2) - n*a(floor(n/2)), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298400, the canonical program `A298400.P12231505655467386187` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298400 has offset 0).

The definition of A298400 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-n*a(floor(n/2))` (program `A298400.P12231505655467386187`, by `A298400.P12231505655467386187.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298400.P12231505655467386187

`a(n-1)+a(n-2)-n*a(floor(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298400

/-- `a(n-1)+a(n-2)-n*a(floor(n/2))` -/
def P12231505655467386187.Spec : Prop :=
  ∀ n, P12231505655467386187.a n = A298400 n

theorem P12231505655467386187.correct : P12231505655467386187.Spec := by
  intro n
  simp only [A298400]

end A298400

/-!
# A298401: a(n) = a(n-1) + a(n-2) - n*a(floor(n/2)), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298401, the canonical program `A298401.P1171999209325999402` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298401 has offset 0).

The definition of A298401 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)-n*a(floor(n/2))` (program `A298401.P1171999209325999402`, by `A298401.P1171999209325999402.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298401.P1171999209325999402

`a(n-1)+a(n-2)-n*a(floor(n/2))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298401

/-- `a(n-1)+a(n-2)-n*a(floor(n/2))` -/
def P1171999209325999402.Spec : Prop :=
  ∀ n, P1171999209325999402.a n = A298401 n

theorem P1171999209325999402.correct : P1171999209325999402.Spec := by
  intro n
  simp only [A298401]

end A298401

/-!
# A298402: a(n) = 2*a(n-1) - a(n-3) + a(floor(n/2)), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298402, the canonical program `A298402.P8276775823710286170` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298402 has offset 0).

The definition of A298402 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-3)+a(floor(n/2))` (program `A298402.P8276775823710286170`, by `A298402.P8276775823710286170.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298402.P8276775823710286170

`2*a(n-1)-a(n-3)+a(floor(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298402

/-- `2*a(n-1)-a(n-3)+a(floor(n/2))` -/
def P8276775823710286170.Spec : Prop :=
  ∀ n, P8276775823710286170.a n = A298402 n

theorem P8276775823710286170.correct : P8276775823710286170.Spec := by
  intro n
  simp only [A298402]

end A298402

/-! ## A298402.P8268804664316693796

`A057142(floor(sqrt(A324167(n))))`
-/

namespace A298402.P8268804664316693796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057142 (Int.sqrt (A324167 n)).toNat

end

end A298402.P8268804664316693796

namespace A298402

/-- `A057142(floor(sqrt(A324167(n))))` -/
def P8268804664316693796.Spec : Prop :=
  ∀ n, P8268804664316693796.a n = A298402 n

end A298402

/-! ## A298402.P8929488541520125603

`A005041(A102407(n)-A241824(n))`
-/

namespace A298402.P8929488541520125603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A102407 n - A241824 n).toNat

end

end A298402.P8929488541520125603

namespace A298402

/-- `A005041(A102407(n)-A241824(n))` -/
def P8929488541520125603.Spec : Prop :=
  ∀ n, P8929488541520125603.a n = A298402 n

end A298402

/-! ## A298402.P6933666262872366365

`2*A307088(a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A298402.P6933666262872366365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  2 * A307088 (a (n - 1)).toNat

end

end A298402.P6933666262872366365

namespace A298402

/-- `2*A307088(a(n-1))` -/
def P6933666262872366365.Spec : Prop :=
  ∀ n, P6933666262872366365.a n = A298402 n

end A298402

/-! ## A298402.P10717943855444750903

`A347262(∑[char[(n+1)^3]]+a(n-1))` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A298402.P10717943855444750903
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A347262 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + a (n - 1)).toNat

end

end A298402.P10717943855444750903

namespace A298402

/-- `A347262(∑[char[(n+1)^3]]+a(n-1))` -/
def P10717943855444750903.Spec : Prop :=
  ∀ n, P10717943855444750903.a n = A298402 n

end A298402

/-!
# A298403: a(n) = 2*a(n-1) - a(n-3) + a(floor(n/2)), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298403, the canonical program `A298403.P10612846480176851938` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298403 has offset 0).

The definition of A298403 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-3)+a(floor(n/2))` (program `A298403.P10612846480176851938`, by `A298403.P10612846480176851938.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298403.P10612846480176851938

`2*a(n-1)-a(n-3)+a(floor(n/2))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298403

/-- `2*a(n-1)-a(n-3)+a(floor(n/2))` -/
def P10612846480176851938.Spec : Prop :=
  ∀ n, P10612846480176851938.a n = A298403 n

theorem P10612846480176851938.correct : P10612846480176851938.Spec := by
  intro n
  simp only [A298403]

end A298403

/-! ## A298403.P17952420079500845826

`A321318(A150189(n))`
-/

namespace A298403.P17952420079500845826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321318 (A150189 n).toNat

end

end A298403.P17952420079500845826

namespace A298403

/-- `A321318(A150189(n))` -/
def P17952420079500845826.Spec : Prop :=
  ∀ n, P17952420079500845826.a n = A298403 n

end A298403

/-! ## A298403.P5263930082960595500

`A096578(Δ[n²])+A001523(n)`
-/

namespace A298403.P5263930082960595500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096578 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A001523 n

end

end A298403.P5263930082960595500

namespace A298403

/-- `A096578(Δ[n²])+A001523(n)` -/
def P5263930082960595500.Spec : Prop :=
  ∀ n, P5263930082960595500.a n = A298403 n

end A298403

/-! ## A298403.P991517977704752293

`∑[A246202(A074323(floor(n²/3)))]`
-/

namespace A298403.P991517977704752293
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246202 (A074323 ⌊(n ^ 2 : ℚ) / 3⌋.toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298403.P991517977704752293

namespace A298403

/-- `∑[A246202(A074323(floor(n²/3)))]` -/
def P991517977704752293.Spec : Prop :=
  ∀ n, P991517977704752293.a n = A298403 n

end A298403

/-!
# A298404: a(n) = 2*a(n-1) - a(n-3) + a(ceiling(n/2)), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298404, the canonical program `A298404.P6394994165676085903` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298404 has offset 0).

The definition of A298404 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-3)+a(ceil(n/2))` (program `A298404.P6394994165676085903`, by `A298404.P6394994165676085903.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298404.P6394994165676085903

`2*a(n-1)-a(n-3)+a(ceil(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298404

/-- `2*a(n-1)-a(n-3)+a(ceil(n/2))` -/
def P6394994165676085903.Spec : Prop :=
  ∀ n, P6394994165676085903.a n = A298404 n

theorem P6394994165676085903.correct : P6394994165676085903.Spec := by
  intro n
  simp only [A298404]

end A298404

/-! ## A298404.P11134860729005508473

`A003056(A025192(n)-A036366(n+3))`
-/

namespace A298404.P11134860729005508473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A025192 n - A036366 (n + 3)).toNat

end

end A298404.P11134860729005508473

namespace A298404

/-- `A003056(A025192(n)-A036366(n+3))` -/
def P11134860729005508473.Spec : Prop :=
  ∀ n, P11134860729005508473.a n = A298404 n

end A298404

/-! ## A298404.P5549259470059360129

`A344291(a(n-1))+a(n-2)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A298404.P5549259470059360129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A344291 (a (n - 1)).toNat + a (n - 2)

end

end A298404.P5549259470059360129

namespace A298404

/-- `A344291(a(n-1))+a(n-2)` -/
def P5549259470059360129.Spec : Prop :=
  ∀ n, P5549259470059360129.a n = A298404 n

end A298404

/-! ## A298404.P8527241191851424956

`A344952(a(n-1))+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A298404.P8527241191851424956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A344952 (a (n - 1)).toNat + a (n - 3)

end

end A298404.P8527241191851424956

namespace A298404

/-- `A344952(a(n-1))+a(n-3)` -/
def P8527241191851424956.Spec : Prop :=
  ∀ n, P8527241191851424956.a n = A298404 n

end A298404

/-! ## A298404.P17127259843679701976

`floor(A139561(n)/round(record[((2-n)²-3)/2]))`
-/

namespace A298404.P17127259843679701976
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 - (n : ℤ)) ^ 2 - 3 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A139561 n : ℚ) / (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ)⌋

end

end A298404.P17127259843679701976

namespace A298404

/-- `floor(A139561(n)/round(record[((2-n)²-3)/2]))` -/
def P17127259843679701976.Spec : Prop :=
  ∀ n, P17127259843679701976.a n = A298404 n

end A298404

/-!
# A298405: a(n) = 2*a(n-1) - a(n-3) + a(ceiling(n/2)), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298405, the canonical program `A298405.P1109017059078032587` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298405 has offset 0).

The definition of A298405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-1)-a(n-3)+a(ceil(n/2))` (program `A298405.P1109017059078032587`, by `A298405.P1109017059078032587.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298405.P1109017059078032587

`2*a(n-1)-a(n-3)+a(ceil(n/2))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298405

/-- `2*a(n-1)-a(n-3)+a(ceil(n/2))` -/
def P1109017059078032587.Spec : Prop :=
  ∀ n, P1109017059078032587.a n = A298405 n

theorem P1109017059078032587.correct : P1109017059078032587.Spec := by
  intro n
  simp only [A298405]

end A298405

/-! ## A298405.P7090739647885842554

`A333396(n+1)-A001222(A094258(n+1))`
-/

namespace A298405.P7090739647885842554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333396 (n + 1) - A001222 (A094258 (n + 1)).toNat

end

end A298405.P7090739647885842554

namespace A298405

/-- `A333396(n+1)-A001222(A094258(n+1))` -/
def P7090739647885842554.Spec : Prop :=
  ∀ n, P7090739647885842554.a n = A298405 n

end A298405

/-!
# A298406: a(n) = 2*a(n-1) - a(n-3) + a(floor(n/2)) + a(floor(n/3)) + ... + a(floor(n/n)), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298406, there is no canonical definition to state claims against.
-/

/-! ## A298406.P5061074113488376899

`or(A260652(A319642(n)), A360672(3*n+4))`
-/

namespace A298406.P5061074113488376899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A260652 (A319642 n).toNat) (A360672 (3 * n + 4))

end

end A298406.P5061074113488376899

/-!
# A298407: a(n) = 2*a(n-1) - a(n-3) + a(floor(n/2)) + a(floor(n/3)) + ... + a(floor(n/n)), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298407, there is no canonical definition to state claims against.
-/

/-! ## A298407.P5060411215255941422

`A246706(a(n-1)+1)` with `a(0)=1, a(1)=2, a(2)=3`
-/

namespace A298407.P5060411215255941422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3] fun n a =>
  A246706 (a (n - 1) + 1).toNat

end

end A298407.P5060411215255941422

/-! ## A298407.P4664363489303582397

`A067086(or(3^n-2^n, C(3, n²)))`
-/

namespace A298407.P4664363489303582397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067086 (Int.lor ((3 ^ n : ℤ) - (2 ^ n : ℤ)) (Nat.choose 3 (n ^ 2) : ℤ)).toNat

end

end A298407.P4664363489303582397

/-! ## A298407.P12281414320598257057

`∑[2^n-A001222(A209069(n+1))]`
-/

namespace A298407.P12281414320598257057
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A001222 (A209069 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298407.P12281414320598257057

/-!
# A298408: a(n) = 2*a(n-1) - a(n-3) + 2*a(floor(n/2)) + 3*a(floor(n/3)) + ... + n*a(floor(n/n)), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298408, there is no canonical definition to state claims against.
-/

/-! ## A298408.P567910535451534393

`A385754(A365903(n))`
-/

namespace A298408.P567910535451534393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385754 (A365903 n).toNat

end

end A298408.P567910535451534393

/-! ## A298408.P7058188942679931266

`A094751(ceil(2^(n-1)))-A036038(n+1)`
-/

namespace A298408.P7058188942679931266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094751 ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat - A036038 (n + 1)

end

end A298408.P7058188942679931266

/-! ## A298408.P16879199924913815862

`A351594(A055642(3*(n+1))*A351623(n+1))`
-/

namespace A298408.P16879199924913815862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351594 (A055642 (3 * (n + 1)) * A351623 (n + 1)).toNat

end

end A298408.P16879199924913815862

/-!
# A298409: a(n) = 2*a(n-1) - a(n-3) + 2*a(floor(n/2)) + 3*a(floor(n/3)) + ... + n*a(floor(n/n)), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298409, there is no canonical definition to state claims against.
-/

/-! ## A298409.P92775138216833908

`A118981(A290527(n)+3)`
-/

namespace A298409.P92775138216833908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118981 (A290527 n + 3).toNat

end

end A298409.P92775138216833908

/-! ## A298409.P11499582602303331706

`∑[A167637(∑[A139445(n+1)])]`
-/

namespace A298409.P11499582602303331706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139445 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167637 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298409.P11499582602303331706

/-!
# A298410: Unique least common multiples for {1,2,...,n}.

The programs for A298410, there is no canonical definition to state claims against.
-/

/-! ## A298410.P18183798284918491998

`A003418(A134459(n+1))`
-/

namespace A298410.P18183798284918491998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A134459 (n + 1)).toNat

end

end A298410.P18183798284918491998

/-! ## A298410.P12220364747148210978

`A003418(A334020(n+1))`
-/

namespace A298410.P12220364747148210978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A334020 (n + 1)).toNat

end

end A298410.P12220364747148210978

/-! ## A298410.P7008403650171024390

`A003418(A006549(n+2))`
-/

namespace A298410.P7008403650171024390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (A006549 (n + 2)).toNat

end

end A298410.P7008403650171024390

/-! ## A298410.P11055617346886086510

`A003418(eq[2, A001221((n+1)*(n+2))]+1)`
-/

namespace A298410.P11055617346886086510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 ((n + 1) * (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003418 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A298410.P11055617346886086510

/-!
# A298412: a(n) = 2*a(n-1) + a(n-2) + a([n/2]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298412, the canonical program `A298412.P14274729733255714264` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298412 has offset 0).

The definition of A298412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298412.P14274729733255714264

`2*a(n-1)+a(n-2)+a(floor(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298412

/-- `2*a(n-1)+a(n-2)+a(floor(n/2))` -/
def P14274729733255714264.Spec : Prop :=
  ∀ n, (P14274729733255714264.a n : ℤ) = A298412 n

theorem P14274729733255714264.correct : P14274729733255714264.Spec := by
  intro n
  simp only [A298412]

end A298412

/-! ## A298412.P11661072312401526851

`A342734(A056362(n))`
-/

namespace A298412.P11661072312401526851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342734 (A056362 n).toNat

end

end A298412.P11661072312401526851

namespace A298412

/-- `A342734(A056362(n))` -/
def P11661072312401526851.Spec : Prop :=
  ∀ n, P11661072312401526851.a n = A298412 n

end A298412

/-! ## A298412.P7319411496451272469

`A192400(n)-A266716(A173951(n+1))`
-/

namespace A298412.P7319411496451272469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192400 n - A266716 (A173951 (n + 1)).toNat

end

end A298412.P7319411496451272469

namespace A298412

/-- `A192400(n)-A266716(A173951(n+1))` -/
def P7319411496451272469.Spec : Prop :=
  ∀ n, P7319411496451272469.a n = A298412 n

end A298412

/-!
# A298413: a(n) = a(floor(n/2))*a(ceiling(n/2)), where a(0) = 1, a(1) = 2, a(2) = 3.

The programs for A298413, the canonical program `A298413.P14578350472468168555` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298413 has offset 0).

The definition of A298413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/2))*a(ceil(n/2))` (program `A298413.P14578350472468168555`, by `A298413.P14578350472468168555.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A298413.P14578350472468168555

`a(floor(n/2))*a(ceil(n/2))` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298413

/-- `a(floor(n/2))*a(ceil(n/2))` -/
def P14578350472468168555.Spec : Prop :=
  ∀ n, (P14578350472468168555.a n : ℤ) = A298413 n

theorem P14578350472468168555.correct : P14578350472468168555.Spec := by
  intro n
  simp only [A298413]

end A298413

/-! ## A298413.P15840019942801441082

`record[A050361(2*n+1)*A323642(n+1)]`
-/

namespace A298413.P15840019942801441082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (2 * n + 1) * A323642 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298413.P15840019942801441082

namespace A298413

/-- `record[A050361(2*n+1)*A323642(n+1)]` -/
def P15840019942801441082.Spec : Prop :=
  ∀ n, P15840019942801441082.a n = A298413 n

end A298413

/-! ## A298413.P1267680443672376234

`record[A018393(n+1)/A092400(3*n+1)]`
-/

namespace A298413.P1267680443672376234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A018393 (n + 1) : ℚ) / (A092400 (3 * n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298413.P1267680443672376234

namespace A298413

/-- `record[A018393(n+1)/A092400(3*n+1)]` -/
def P1267680443672376234.Spec : Prop :=
  ∀ n, P1267680443672376234.a n = (A298413 n : ℚ)

end A298413

/-! ## A298413.P4492009348878359188

`A265570(A048812(n+9))`
-/

namespace A298413.P4492009348878359188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265570 (A048812 (n + 9)).toNat

end

end A298413.P4492009348878359188

namespace A298413

/-- `A265570(A048812(n+9))` -/
def P4492009348878359188.Spec : Prop :=
  ∀ n, P4492009348878359188.a n = A298413 n

end A298413

/-! ## A298413.P6066017032923155347

`record[A133700(A133684(n)+1)]`
-/

namespace A298413.P6066017032923155347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133700 (A133684 n + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298413.P6066017032923155347

namespace A298413

/-- `record[A133700(A133684(n)+1)]` -/
def P6066017032923155347.Spec : Prop :=
  ∀ n, P6066017032923155347.a n = A298413 n

end A298413

/-!
# A298414: a(n) = 2*a(n-1) - a(n-2) + a([n/2]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298414, the canonical program `A298414.P10362000514603884814` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298414 has offset 0).

The definition of A298414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298414.P10362000514603884814

`2*a(n-1)-a(n-2)+a(floor(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298414

/-- `2*a(n-1)-a(n-2)+a(floor(n/2))` -/
def P10362000514603884814.Spec : Prop :=
  ∀ n, P10362000514603884814.a n = A298414 n

theorem P10362000514603884814.correct : P10362000514603884814.Spec := by
  intro n
  simp only [A298414]

end A298414

/-! ## A298414.P17515130261727761892

`ceil(A173283(n)/8)`
-/

namespace A298414.P17515130261727761892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A173283 n : ℚ) / 8⌉

end

end A298414.P17515130261727761892

namespace A298414

/-- `ceil(A173283(n)/8)` -/
def P17515130261727761892.Spec : Prop :=
  ∀ n, P17515130261727761892.a n = A298414 n

end A298414

/-! ## A298414.P11640123165458364133

`round(A173283(round(acot(n)+n))/4)/2`
-/

namespace A298414.P11640123165458364133
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((A173283 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ))).toNat : ℚ) / 4) : ℚ) / 2

end

end A298414.P11640123165458364133

namespace A298414

/-- `round(A173283(round(acot(n)+n))/4)/2` -/
def P11640123165458364133.Spec : Prop :=
  ∀ n, P11640123165458364133.a n = (A298414 n : ℚ)

end A298414

/-! ## A298414.P10192621432553130342

`A173283(A233583(n+1))/8`
-/

namespace A298414.P10192621432553130342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173283 (A233583 (n + 1)).toNat : ℚ) / 8

end

end A298414.P10192621432553130342

namespace A298414

/-- `A173283(A233583(n+1))/8` -/
def P10192621432553130342.Spec : Prop :=
  ∀ n, P10192621432553130342.a n = (A298414 n : ℚ)

end A298414

/-! ## A298414.P9614110539608778782

`A173283(n)/dr(A052996(n))`
-/

namespace A298414.P9614110539608778782
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173283 n : ℚ) / (SequenceMachineLib.digitalRoot (A052996 n) : ℚ)

end

end A298414.P9614110539608778782

namespace A298414

/-- `A173283(n)/dr(A052996(n))` -/
def P9614110539608778782.Spec : Prop :=
  ∀ n, P9614110539608778782.a n = (A298414 n : ℚ)

end A298414

/-! ## A298414.P17448133786612597067

`round(1/A003946(n)+A173283(n)/8)`
-/

namespace A298414.P17448133786612597067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (1 / (A003946 n : ℚ) + (A173283 n : ℚ) / 8)

end

end A298414.P17448133786612597067

namespace A298414

/-- `round(1/A003946(n)+A173283(n)/8)` -/
def P17448133786612597067.Spec : Prop :=
  ∀ n, P17448133786612597067.a n = A298414 n

end A298414

/-! ## A298414.P12129694038031993528

`ceil(∑[A171238(n+1)]%A252952(n+1)/8)`
-/

namespace A298414.P12129694038031993528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A252952 (n + 1)) : ℚ) / 8⌉

end

end A298414.P12129694038031993528

namespace A298414

/-- `ceil(∑[A171238(n+1)]%A252952(n+1)/8)` -/
def P12129694038031993528.Spec : Prop :=
  ∀ n, P12129694038031993528.a n = A298414 n

end A298414

/-! ## A298414.P15692682839047332863

`ceil(∑[A171238(n+1)%A198277(n)]/8)`
-/

namespace A298414.P15692682839047332863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A171238 (n + 1)) (A198277 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 8⌉

end

end A298414.P15692682839047332863

namespace A298414

/-- `ceil(∑[A171238(n+1)%A198277(n)]/8)` -/
def P15692682839047332863.Spec : Prop :=
  ∀ n, P15692682839047332863.a n = A298414 n

end A298414

/-!
# A298415: a(n) = a(n-1) + 2*a(n-2) + a([n/2]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298415, the canonical program `A298415.P867522533917728255` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298415 has offset 0).

The definition of A298415 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298415.P867522533917728255

`a(n-1)+2*a(n-2)+a(floor(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298415

/-- `a(n-1)+2*a(n-2)+a(floor(n/2))` -/
def P867522533917728255.Spec : Prop :=
  ∀ n, (P867522533917728255.a n : ℤ) = A298415 n

theorem P867522533917728255.correct : P867522533917728255.Spec := by
  intro n
  simp only [A298415]

end A298415

/-! ## A298415.P16490585504447216014

`A214319(A087051(n))-A057355(n)`
-/

namespace A298415.P16490585504447216014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214319 (A087051 n).toNat - A057355 n

end

end A298415.P16490585504447216014

namespace A298415

/-- `A214319(A087051(n))-A057355(n)` -/
def P16490585504447216014.Spec : Prop :=
  ∀ n, P16490585504447216014.a n = A298415 n

end A298415

/-! ## A298415.P9652194473292880631

`A005041(A148463(n)-A107131(n))`
-/

namespace A298415.P9652194473292880631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005041 (A148463 n - A107131 n).toNat

end

end A298415.P9652194473292880631

namespace A298415

/-- `A005041(A148463(n)-A107131(n))` -/
def P9652194473292880631.Spec : Prop :=
  ∀ n, P9652194473292880631.a n = A298415 n

end A298415

/-! ## A298415.P8669045057343063763

`A316355(A148978(n))-A000701(n)`
-/

namespace A298415.P8669045057343063763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316355 (A148978 n).toNat - A000701 n

end

end A298415.P8669045057343063763

namespace A298415

/-- `A316355(A148978(n))-A000701(n)` -/
def P8669045057343063763.Spec : Prop :=
  ∀ n, P8669045057343063763.a n = A298415 n

end A298415

/-! ## A298415.P15347459814188869435

`A035936(A056570(n)-A054404(n+1))`
-/

namespace A298415.P15347459814188869435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035936 (A056570 n - A054404 (n + 1)).toNat

end

end A298415.P15347459814188869435

namespace A298415

/-- `A035936(A056570(n)-A054404(n+1))` -/
def P15347459814188869435.Spec : Prop :=
  ∀ n, P15347459814188869435.a n = A298415 n

end A298415

/-!
# A298416: a(n) = 2*a(n-1) + 2*a(n-2) - a([n/2]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298416, the canonical program `A298416.P403869217785424006` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298416 has offset 0).

The definition of A298416 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298416.P403869217785424006

`2*a(n-1)+2*a(n-2)-a(floor(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298416

/-- `2*a(n-1)+2*a(n-2)-a(floor(n/2))` -/
def P403869217785424006.Spec : Prop :=
  ∀ n, P403869217785424006.a n = A298416 n

theorem P403869217785424006.correct : P403869217785424006.Spec := by
  intro n
  simp only [A298416]

end A298416

/-! ## A298416.P17724758298868844103

`A060819(A293006(n)+A060546(n))`
-/

namespace A298416.P17724758298868844103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060819 (A293006 n + A060546 n).toNat

end

end A298416.P17724758298868844103

namespace A298416

/-- `A060819(A293006(n)+A060546(n))` -/
def P17724758298868844103.Spec : Prop :=
  ∀ n, P17724758298868844103.a n = A298416 n

end A298416

/-! ## A298416.P11162089863215795575

`A144150(n)+A054900(A191756(n))`
-/

namespace A298416.P11162089863215795575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144150 n + A054900 (A191756 n).toNat

end

end A298416.P11162089863215795575

namespace A298416

/-- `A144150(n)+A054900(A191756(n))` -/
def P11162089863215795575.Spec : Prop :=
  ∀ n, P11162089863215795575.a n = A298416 n

end A298416

/-! ## A298416.P7038451883924101391

`A275210(n)+A112971(A005195(n))`
-/

namespace A298416.P7038451883924101391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275210 n + A112971 (A005195 n).toNat

end

end A298416.P7038451883924101391

namespace A298416

/-- `A275210(n)+A112971(A005195(n))` -/
def P7038451883924101391.Spec : Prop :=
  ∀ n, P7038451883924101391.a n = A298416 n

end A298416

/-! ## A298416.P609074659094782572

`A212363(n)+A054900(A191756(n))`
-/

namespace A298416.P609074659094782572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212363 n + A054900 (A191756 n).toNat

end

end A298416.P609074659094782572

namespace A298416

/-- `A212363(n)+A054900(A191756(n))` -/
def P609074659094782572.Spec : Prop :=
  ∀ n, P609074659094782572.a n = A298416 n

end A298416

/-!
# A298417: a(n) = 2*a(n-1) + 2*a(n-2) + a([n/2]), where a(0) = 1, a(1) = 1, a(2) = 1.

The programs for A298417, the canonical program `A298417.P10509268762408103219` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298417 has offset 0).

The definition of A298417 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A298417.P10509268762408103219

`2*a(n-1)+2*a(n-2)+a(floor(n/2))` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298417

/-- `2*a(n-1)+2*a(n-2)+a(floor(n/2))` -/
def P10509268762408103219.Spec : Prop :=
  ∀ n, (P10509268762408103219.a n : ℤ) = A298417 n

theorem P10509268762408103219.correct : P10509268762408103219.Spec := by
  intro n
  simp only [A298417]

end A298417

/-! ## A298417.P17315611110357476958

`A239936(A002697(n))`
-/

namespace A298417.P17315611110357476958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239936 (A002697 n).toNat

end

end A298417.P17315611110357476958

namespace A298417

/-- `A239936(A002697(n))` -/
def P17315611110357476958.Spec : Prop :=
  ∀ n, P17315611110357476958.a n = A298417 n

end A298417

/-! ## A298417.P16914143405345255416

`A157966(A093128(n))`
-/

namespace A298417.P16914143405345255416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157966 (A093128 n).toNat

end

end A298417.P16914143405345255416

namespace A298417

/-- `A157966(A093128(n))` -/
def P16914143405345255416.Spec : Prop :=
  ∀ n, P16914143405345255416.a n = A298417 n

end A298417

/-!
# A298418: Solution (c(n)) of the system of 3 complementary equations in Comments.

The programs for A298418, there is no canonical definition to state claims against.
-/

/-! ## A298418.P16025087576525498393

`A298170(n)+A297838(n)`
-/

namespace A298418.P16025087576525498393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298170 n + A297838 n

end

end A298418.P16025087576525498393

/-! ## A298418.P9355357402388689125

`A036554(n+1)+A297838(n)+A286490(A264557(n+1))`
-/

namespace A298418.P9355357402388689125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036554 (n + 1) + (A297838 n + A286490 (A264557 (n + 1)).toNat)

end

end A298418.P9355357402388689125

/-!
# A298420: Expansion of f(x, x) * f(x, x^2) * f(x^2, x^4) in powers of x where f(, ) is Ramanujan's general theta function.

The programs for A298420, there is no canonical definition to state claims against.
-/

/-! ## A298420.P14203129966986428694

`A298933(2*n)`
-/

namespace A298420.P14203129966986428694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298933 (2 * n)

end

end A298420.P14203129966986428694

/-! ## A298420.P1032366340130769639

`A298933(A005843(n))%(n+4)`
-/

namespace A298420.P1032366340130769639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298933 (A005843 n).toNat) (n + 4 : ℤ)

end

end A298420.P1032366340130769639

/-! ## A298420.P636709043373231080

`A298933(A004277(n))-A000007(n)`
-/

namespace A298420.P636709043373231080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298933 (A004277 n).toNat - A000007 n

end

end A298420.P636709043373231080

/-! ## A298420.P3288892756982679346

`or(1-(A298001(n)-A297836(n)), A298933(n+n))`
-/

namespace A298420.P3288892756982679346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (1 - (A298001 n - A297836 n)) (A298933 (n + n))

end

end A298420.P3288892756982679346

/-! ## A298420.P6018653498491763543

`A298932(4*n)`
-/

namespace A298420.P6018653498491763543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298932 (4 * n)

end

end A298420.P6018653498491763543

/-! ## A298420.P10736804552217787239

`A298933(n+n)+A010052(A052248(n+2))`
-/

namespace A298420.P10736804552217787239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298933 (n + n) + A010052 (A052248 (n + 2)).toNat

end

end A298420.P10736804552217787239

/-! ## A298420.P4970614313618903039

`A298931(12*n)`
-/

namespace A298420.P4970614313618903039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298931 (12 * n)

end

end A298420.P4970614313618903039

/-! ## A298420.P11022872464121022627

`A045827(A017557(2*n))`
-/

namespace A298420.P11022872464121022627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045827 (A017557 (2 * n)).toNat

end

end A298420.P11022872464121022627

/-! ## A298420.P10434530671872839773

`A045827(A017077(n)+2*A017077(n))`
-/

namespace A298420.P10434530671872839773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045827 (A017077 n + 2 * A017077 n).toNat

end

end A298420.P10434530671872839773

/-!
# A298422: Number of rooted trees with n nodes in which all positive outdegrees are the same.

The programs for A298422, there is no canonical definition to state claims against.
-/

/-! ## A298422.P2096682729152863875

`A205946(A018795(n))+A018783(n)`
-/

namespace A298422.P2096682729152863875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205946 (A018795 n).toNat + A018783 n

end

end A298422.P2096682729152863875

/-! ## A298422.P17842705001226369389

`A140356(A038001(n+1))+A018783(n)`
-/

namespace A298422.P17842705001226369389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140356 (A038001 (n + 1)).toNat + A018783 n

end

end A298422.P17842705001226369389

/-! ## A298422.P11342565947165586575

`A008728(A018783(n)%A228150(n+1))`
-/

namespace A298422.P11342565947165586575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008728 (Int.tmod (A018783 n) (A228150 (n + 1))).toNat

end

end A298422.P11342565947165586575

/-! ## A298422.P6297995735128672796

`A106466(A010894(3*n+4))+A018783(n)`
-/

namespace A298422.P6297995735128672796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106466 (A010894 (3 * n + 4 + 21)).toNat + A018783 n

end

end A298422.P6297995735128672796

/-! ## A298422.P12619020150248503066

`A061383(A328673(n)%A242964(3*(n+1)))`
-/

namespace A298422.P12619020150248503066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061383 (Int.tmod (A328673 n) (A242964 (3 * (n + 1)))).toNat

end

end A298422.P12619020150248503066

/-!
# A298423: Number of integer partitions of n such that the predecessor of each part is divisible by the number of parts.

The programs for A298423, there is no canonical definition to state claims against.
-/

/-! ## A298423.P10558251731081421784

`A323347(n)+A101637(A083318(n))`
-/

namespace A298423.P10558251731081421784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323347 n + A101637 (A083318 n).toNat

end

end A298423.P10558251731081421784

/-! ## A298423.P13479471953605558245

`A323347(n)+A186748(A237984(n+1))`
-/

namespace A298423.P13479471953605558245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323347 n + A186748 (A237984 (n + 1)).toNat

end

end A298423.P13479471953605558245

/-! ## A298423.P1449540293035239148

`A323347(n)+A011672(A343513(n+1))`
-/

namespace A298423.P1449540293035239148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323347 n + A011672 (A343513 (n + 1)).toNat

end

end A298423.P1449540293035239148

/-! ## A298423.P18373238794895300091

`A323347(n)+A080940(A048004(A100953(n)))`
-/

namespace A298423.P18373238794895300091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323347 n + A080940 (A048004 (A100953 n).toNat).toNat

end

end A298423.P18373238794895300091

/-! ## A298423.P6823869171306290836

`A323347(n)+A003982(A102098(n))`
-/

namespace A298423.P6823869171306290836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323347 n + A003982 (A102098 n).toNat

end

end A298423.P6823869171306290836

/-!
# A298424: Matula-Goebel numbers of rooted trees in which all positive outdegrees are the same.

The programs for A298424, there is no canonical definition to state claims against.
-/

/-! ## A298424.P6230613015880962433

`record[A032742(A198323(n+1))]`
-/

namespace A298424.P6230613015880962433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (A198323 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298424.P6230613015880962433

/-! ## A298424.P5008288833951044555

`record[A078898(A198323(n+3))]`
-/

namespace A298424.P5008288833951044555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078898 (A198323 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298424.P5008288833951044555

/-! ## A298424.P14614052958446800916

`A000720(p?[A198323(n+1)])`
-/

namespace A298424.P14614052958446800916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A298424.P14614052958446800916

/-! ## A298424.P15896384655344799083

`A003963(p?[A198323(n+1)])`
-/

namespace A298424.P15896384655344799083
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003963 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A298424.P15896384655344799083

/-! ## A298424.P1705662313104530994

`A026233(p?[A198323(n+1)])`
-/

namespace A298424.P1705662313104530994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198323 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026233 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A298424.P1705662313104530994

/-!
# A298426: Regular triangle where T(n,k) is number of k-ary rooted trees with n nodes.

The programs for A298426, there is no canonical definition to state claims against.
-/

/-! ## A298426.P8900500050339489635

`A327103(A113704(n)*A278657(n))`
-/

namespace A298426.P8900500050339489635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A113704 n * A278657 n).toNat

end

end A298426.P8900500050339489635

/-! ## A298426.P6803564569109652398

`A327103(A113704(n)*A292086(n+1))`
-/

namespace A298426.P6803564569109652398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327103 (A113704 n * A292086 (n + 1)).toNat

end

end A298426.P6803564569109652398

/-! ## A298426.P7520301285764073721

`1-A014548(A346085(n))`
-/

namespace A298426.P7520301285764073721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A014548 (A346085 n).toNat

end

end A298426.P7520301285764073721

/-! ## A298426.P25347345645592263

`A275811(4*A346085(n))`
-/

namespace A298426.P25347345645592263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275811 (4 * A346085 n).toNat

end

end A298426.P25347345645592263

/-! ## A298426.P4940609625477749940

`A241067(A364310(n))`
-/

namespace A298426.P4940609625477749940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241067 (A364310 n).toNat

end

end A298426.P4940609625477749940

/-!
# A298432: a(n) = Sum_{k=0..n-1} T(n-k, k+1) where T(n, k) is the number of tight n X k pavings (defined in A285357).

The programs for A298432, there is no canonical definition to state claims against.
-/

/-! ## A298432.P16848514957769500031

`A336072(n+1)-A239455(A061992(n))`
-/

namespace A298432.P16848514957769500031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336072 (n + 1) - A239455 (A061992 n).toNat

end

end A298432.P16848514957769500031

/-! ## A298432.P769433434641218048

`A141310(A336072(n+1))-A146278(n+1)`
-/

namespace A298432.P769433434641218048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A336072 (n + 1)).toNat - A146278 (n + 1)

end

end A298432.P769433434641218048

/-! ## A298432.P13606267844618289436

`A028310(A336072(n+1)-A338866(n+1))`
-/

namespace A298432.P13606267844618289436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A336072 (n + 1) - A338866 (n + 1)).toNat

end

end A298432.P13606267844618289436

/-!
# A298433: a(n) is the number of tight n X n pavings (defined in A285357).

The programs for A298433, there is no canonical definition to state claims against.
-/

/-! ## A298433.P848990057942415642

`A298362(∑[n+1])`
-/

namespace A298433.P848990057942415642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298362 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298433.P848990057942415642

/-! ## A298433.P2198673043934055426

`record[A298362(comp[∑[n-1]])]`
-/

namespace A298433.P2198673043934055426
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298362 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298433.P2198673043934055426

/-! ## A298433.P1747327842805277149

`record[1-Δ[A298362(n+1)]]`
-/

namespace A298433.P1747327842805277149
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298362 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298433.P1747327842805277149

/-! ## A298433.P18346224551654691042

`record[A049310(n)*A298362(n+1)]`
-/

namespace A298433.P18346224551654691042
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049310 n * A298362 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298433.P18346224551654691042

/-!
# A298434: Expansion of Product_{k>=1} 1/(1 - x^(k^3))^2.

The programs for A298434, there is no canonical definition to state claims against.
-/

/-! ## A298434.P4511975947344379154

`∑[A325565(A274863(A303168(n)))]`
-/

namespace A298434.P4511975947344379154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325565 (A274863 (A303168 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298434.P4511975947344379154

/-! ## A298434.P16980655894603170074

`∑[A001222(3^A303168(n))]`
-/

namespace A298434.P16980655894603170074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A303168 n : ℤ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298434.P16980655894603170074

/-! ## A298434.P14007665117076035486

`∑[A303168(n)%A019593(n)]`
-/

namespace A298434.P14007665117076035486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A303168 n) (A019593 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298434.P14007665117076035486

/-! ## A298434.P5111624124751976700

`∑[A309093(A279223(n)²)]`
-/

namespace A298434.P5111624124751976700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309093 (A279223 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298434.P5111624124751976700

/-! ## A298434.P2653713946841371791

`∑[A065704(A291720(n)²)]`
-/

namespace A298434.P2653713946841371791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065704 (A291720 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298434.P2653713946841371791

/-!
# A298435: Expansion of Product_{k>=1} 1/(1 - x^(k*(k+1)/2))^2.

The programs for A298435, there is no canonical definition to state claims against.
-/

/-! ## A298435.P7500344383388940958

`∑[∑[abs(1-n)*A079978(n^4)]]`
-/

namespace A298435.P7500344383388940958
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| * A079978 (n ^ 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298435.P7500344383388940958

/-! ## A298435.P4034819266137767212

`A035167(∏[a(n-a(n-1))+1])` with `a(0)=1`
-/

namespace A298435.P4034819266137767212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035167 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A298435.P4034819266137767212

/-! ## A298435.P11962625065958019023

`A072078(∏[a(n-a(n-1))+1])` with `a(0)=1`
-/

namespace A298435.P11962625065958019023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - f1 (n - 1)) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A298435.P11962625065958019023

/-! ## A298435.P13119565397659097207

`A035143(A010552(n+1))`
-/

namespace A298435.P13119565397659097207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035143 (A010552 (n + 1)).toNat

end

end A298435.P13119565397659097207

/-! ## A298435.P7791092024084813450

`A395087(A289501(n+1))`
-/

namespace A298435.P7791092024084813450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395087 (A289501 (n + 1)).toNat

end

end A298435.P7791092024084813450

/-!
# A298438: Number of n X n 0..1 arrays with every element equal to 0, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298438, there is no canonical definition to state claims against.
-/

/-! ## A298438.P6377524606198898258

`A298444(∑[4*n]+1)`
-/

namespace A298438.P6377524606198898258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298438.P6377524606198898258

/-! ## A298438.P5350325314931096070

`and(-1, A298444(A001844(n)))`
-/

namespace A298438.P5350325314931096070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298444 (A001844 n).toNat)

end

end A298438.P5350325314931096070

/-! ## A298438.P9806115951280832641

`A298444(A001844(n))+A025439(n)`
-/

namespace A298438.P9806115951280832641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A001844 n).toNat + A025439 n

end

end A298438.P9806115951280832641

/-! ## A298438.P3998105260014281434

`A298444(A001844(n))+A185036(n)`
-/

namespace A298438.P3998105260014281434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A001844 n).toNat + A185036 n

end

end A298438.P3998105260014281434

/-! ## A298438.P14691952584348679834

`A326627(n)+A298444(A001844(n))`
-/

namespace A298438.P14691952584348679834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326627 n + A298444 (A001844 n).toNat

end

end A298438.P14691952584348679834

/-!
# A298439: Number of nX3 0..1 arrays with every element equal to 0, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298439, there is no canonical definition to state claims against.
-/

/-! ## A298439.P16136918284196057705

`A298444(∑[n+2]+4)`
-/

namespace A298439.P16136918284196057705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298439.P16136918284196057705

/-! ## A298439.P12325331249164293886

`A298444(A167614(n+1))+char[19]`
-/

namespace A298439.P12325331249164293886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298439.P12325331249164293886

/-! ## A298439.P3648001633407496872

`A298444(A167614(n+1))%A082411(n)`
-/

namespace A298439.P3648001633407496872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298444 (A167614 (n + 1)).toNat) (A082411 n)

end

end A298439.P3648001633407496872

/-! ## A298439.P2144876387338889088

`gcd(A000038(n), A298444(A167614(n+1)))`
-/

namespace A298439.P2144876387338889088
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A298444 (A167614 (n + 1)).toNat)

end

end A298439.P2144876387338889088

/-! ## A298439.P11670630913444671450

`lcm(A291149(n), A298444(A167614(n+1)))`
-/

namespace A298439.P11670630913444671450
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A291149 n) (A298444 (A167614 (n + 1)).toNat)

end

end A298439.P11670630913444671450

/-!
# A298440: Number of nX4 0..1 arrays with every element equal to 0, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298440, there is no canonical definition to state claims against.
-/

/-! ## A298440.P3266805763414812845

`A298444(∑[n+3]+7)`
-/

namespace A298440.P3266805763414812845
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298440.P3266805763414812845

/-! ## A298440.P2407536790165045730

`A298444(A055999(n)+10)+char[18]`
-/

namespace A298440.P2407536790165045730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A055999 n + 10).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298440.P2407536790165045730

/-! ## A298440.P16763569463041203613

`or(char[3], A298444(A141214(n)+7))`
-/

namespace A298440.P16763569463041203613
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298444 (A141214 n + 7).toNat)

end

end A298440.P16763569463041203613

/-! ## A298440.P8220852311341488120

`A007318(C(2, n))*A298444(A055999(n)+10)`
-/

namespace A298440.P8220852311341488120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298444 (A055999 n + 10).toNat

end

end A298440.P8220852311341488120

/-! ## A298440.P13429117077187398261

`A007318(C(2, n))*A298444(A167614(n+2)+1)`
-/

namespace A298440.P13429117077187398261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298444 (A167614 (n + 2) + 1).toNat

end

end A298440.P13429117077187398261

/-!
# A298441: Number of nX5 0..1 arrays with every element equal to 0, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298441, there is no canonical definition to state claims against.
-/

/-! ## A298441.P3961966421862370630

`A298444(A167499(n+3))`
-/

namespace A298441.P3961966421862370630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A167499 (n + 3)).toNat

end

end A298441.P3961966421862370630

/-! ## A298441.P13328325759630470869

`A298444(A077169(n+5))`
-/

namespace A298441.P13328325759630470869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A077169 (n + 5)).toNat

end

end A298441.P13328325759630470869

/-! ## A298441.P16711280805031673368

`A298444(A155212(n)+13)`
-/

namespace A298441.P16711280805031673368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A155212 n + 13).toNat

end

end A298441.P16711280805031673368

/-! ## A298441.P204958639770928630

`A298444(A056000(n)+15)`
-/

namespace A298441.P204958639770928630
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A056000 n + 15).toNat

end

end A298441.P204958639770928630

/-! ## A298441.P15882432248350941191

`A298444(eq[7, A066657(n)])`
-/

namespace A298441.P15882432248350941191
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298441.P15882432248350941191

/-!
# A298442: Number of n X 6 0..1 arrays with every element equal to 0, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298442, there is no canonical definition to state claims against.
-/

/-! ## A298442.P14464195037492510174

`A298444(A166136(n+4))`
-/

namespace A298442.P14464195037492510174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A166136 (n + 4)).toNat

end

end A298442.P14464195037492510174

/-! ## A298442.P9316487527822342440

`A298444(A056115(n)+21)`
-/

namespace A298442.P9316487527822342440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A056115 n + 21).toNat

end

end A298442.P9316487527822342440

/-! ## A298442.P8234185308281349613

`A298444(A000124(n+5)+5)`
-/

namespace A298442.P8234185308281349613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A000124 (n + 5) + 5).toNat

end

end A298442.P8234185308281349613

/-! ## A298442.P891711735998321056

`A298444(A000096(n+4)+7)`
-/

namespace A298442.P891711735998321056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A000096 (n + 4) + 7).toNat

end

end A298442.P891711735998321056

/-! ## A298442.P7781726221137122982

`A298444(A000217(n+5)+6)`
-/

namespace A298442.P7781726221137122982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A000217 (n + 5) + 6).toNat

end

end A298442.P7781726221137122982

/-!
# A298443: Number of nX7 0..1 arrays with every element equal to 0, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298443, there is no canonical definition to state claims against.
-/

/-! ## A298443.P10547508332255025016

`A298444(A056119(n)+28)`
-/

namespace A298443.P10547508332255025016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A056119 n + 28).toNat

end

end A298443.P10547508332255025016

/-! ## A298443.P3845560011133218678

`A298444(eq[11, A066657(n)])`
-/

namespace A298443.P3845560011133218678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298443.P3845560011133218678

/-! ## A298443.P8812113883114611928

`A298444(A166136(n+5)+1)`
-/

namespace A298443.P8812113883114611928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A166136 (n + 5) + 1).toNat

end

end A298443.P8812113883114611928

/-! ## A298443.P5456689326202496144

`A298444(A167614(n+5)+4)`
-/

namespace A298443.P5456689326202496144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A167614 (n + 5) + 4).toNat

end

end A298443.P5456689326202496144

/-! ## A298443.P4637754745028040078

`A298444(A000124(n+6)+6)`
-/

namespace A298443.P4637754745028040078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298444 (A000124 (n + 6) + 6).toNat

end

end A298443.P4637754745028040078

/-!
# A298444: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298444, there is no canonical definition to state claims against.
-/

/-! ## A298444.P9307900814995160603

`and(A233561(A141690(n)), A299321(n+1))`
-/

namespace A298444.P9307900814995160603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A233561 (A141690 n).toNat) (A299321 (n + 1))

end

end A298444.P9307900814995160603

/-! ## A298444.P8534812309311527033

`and(A233561(A176200(n)), A299321(n+1))`
-/

namespace A298444.P8534812309311527033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A233561 (A176200 n).toNat) (A299321 (n + 1))

end

end A298444.P8534812309311527033

/-! ## A298444.P7929492487157419217

`A376975(A299521(n+1))+A298782(n+1)`
-/

namespace A298444.P7929492487157419217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376975 (A299521 (n + 1)).toNat + A298782 (n + 1)

end

end A298444.P7929492487157419217

/-!
# A298445: Triangle T(n,k) read by rows: number of n-node simple graphs with rectilinear crossing number k (k=0..A014540(n)).

The programs for A298445, there is no canonical definition to state claims against.
-/

/-! ## A298445.P7984750147724504386

`A294224(n+1)-A077394(A263324(n+1))`
-/

namespace A298445.P7984750147724504386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294224 (n + 1) - A077394 (A263324 (n + 1)).toNat

end

end A298445.P7984750147724504386

/-! ## A298445.P18098564502249521547

`A294224(A043316(n+1))`
-/

namespace A298445.P18098564502249521547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294224 (A043316 (n + 1)).toNat

end

end A298445.P18098564502249521547

/-! ## A298445.P18339866913539055358

`A294224(A044913(n+1))`
-/

namespace A298445.P18339866913539055358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294224 (A044913 (n + 1)).toNat

end

end A298445.P18339866913539055358

/-! ## A298445.P17233519260000759769

`A294224(A049872(n+1))`
-/

namespace A298445.P17233519260000759769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294224 (A049872 (n + 1)).toNat

end

end A298445.P17233519260000759769

/-! ## A298445.P18209465444080803685

`A294224(A061147(n+1))`
-/

namespace A298445.P18209465444080803685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294224 (A061147 (n + 1)).toNat

end

end A298445.P18209465444080803685

/-!
# A298447: Number of n X n 0..1 arrays with every element equal to 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298447, there is no canonical definition to state claims against.
-/

/-! ## A298447.P15337520970996230318

`A298454(∑[4*n]+1)`
-/

namespace A298447.P15337520970996230318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298447.P15337520970996230318

/-! ## A298447.P8757446960714836890

`∑{digits}[n, A298454(A001844(#))]`
-/

namespace A298447.P8757446960714836890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => A298454 (A001844 x).toNat).sum

end

end A298447.P8757446960714836890

/-! ## A298447.P10314707708901065059

`and(-1, A298454(A001844(n)))`
-/

namespace A298447.P10314707708901065059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298454 (A001844 n).toNat)

end

end A298447.P10314707708901065059

/-! ## A298447.P4458054607604597192

`A342845(n)+A298454(A001844(n))`
-/

namespace A298447.P4458054607604597192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342845 n + A298454 (A001844 n).toNat

end

end A298447.P4458054607604597192

/-! ## A298447.P18111240727289890289

`A347689(n)+A298454(A001844(n))`
-/

namespace A298447.P18111240727289890289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347689 n + A298454 (A001844 n).toNat

end

end A298447.P18111240727289890289

/-!
# A298448: Number of nX2 0..1 arrays with every element equal to 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298448, the canonical program `A298448.P6924916541334903515` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298448 has offset 1).

The definition of A298448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 246 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298448.P6924916541334903515

`2*a(n-1)+8*a(n-3)-8*a(n-4)-8*a(n-5)` with `a(0)=1, a(1)=4, a(2)=4, a(3)=16, a(4)=48`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298448

/-- `2*a(n-1)+8*a(n-3)-8*a(n-4)-8*a(n-5)` -/
def P6924916541334903515.Spec : Prop :=
  ∀ n, P6924916541334903515.a n = A298448 (n + 1)

theorem P6924916541334903515.correct : P6924916541334903515.Spec := by
  intro n
  simp only [A298448, Nat.add_sub_cancel]

end A298448

/-! ## A298448.P17465843560259271886

`A298454(∑[n+1]+2)`
-/

namespace A298448.P17465843560259271886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298448.P17465843560259271886

namespace A298448

/-- `A298454(∑[n+1]+2)` -/
def P17465843560259271886.Spec : Prop :=
  ∀ n, P17465843560259271886.a n = A298448 (n + 1)

end A298448

/-! ## A298448.P15649338173537869361

`A298622(∑[n+1]+2)`
-/

namespace A298448.P15649338173537869361
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298448.P15649338173537869361

namespace A298448

/-- `A298622(∑[n+1]+2)` -/
def P15649338173537869361.Spec : Prop :=
  ∀ n, P15649338173537869361.a n = A298448 (n + 1)

end A298448

/-! ## A298448.P13467683483135139717

`A298834(∑[n+1]+2)`
-/

namespace A298448.P13467683483135139717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298834 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298448.P13467683483135139717

namespace A298448

/-- `A298834(∑[n+1]+2)` -/
def P13467683483135139717.Spec : Prop :=
  ∀ n, P13467683483135139717.a n = A298448 (n + 1)

end A298448

/-! ## A298448.P9666719078526208580

`A299528(∑[n+1]+2)`
-/

namespace A298448.P9666719078526208580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A298448.P9666719078526208580

namespace A298448

/-- `A299528(∑[n+1]+2)` -/
def P9666719078526208580.Spec : Prop :=
  ∀ n, P9666719078526208580.a n = A298448 (n + 1)

end A298448

/-!
# A298449: Number of nX3 0..1 arrays with every element equal to 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298449, there is no canonical definition to state claims against.
-/

/-! ## A298449.P2937905543083737909

`A298454(∑[n+2]+4)`
-/

namespace A298449.P2937905543083737909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298449.P2937905543083737909

/-! ## A298449.P6521833366681575148

`ceil(acot(n))*A298454(A167614(n+1))`
-/

namespace A298449.P6521833366681575148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ)⌉ * A298454 (A167614 (n + 1)).toNat

end

end A298449.P6521833366681575148

/-! ## A298449.P4905967649371168144

`A298454(A167614(n+1))+A011738(n)`
-/

namespace A298449.P4905967649371168144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A167614 (n + 1)).toNat + A011738 n

end

end A298449.P4905967649371168144

/-! ## A298449.P10085277054239752905

`A298454(A167614(n+1))+A185037(n)`
-/

namespace A298449.P10085277054239752905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A167614 (n + 1)).toNat + A185037 n

end

end A298449.P10085277054239752905

/-! ## A298449.P18344717635520124943

`A298454(A167614(n+1))+A185264(n)`
-/

namespace A298449.P18344717635520124943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A167614 (n + 1)).toNat + A185264 n

end

end A298449.P18344717635520124943

/-!
# A298450: Number of nX4 0..1 arrays with every element equal to 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298450, there is no canonical definition to state claims against.
-/

/-! ## A298450.P12539481336314549039

`A298454(A374004(n+1))`
-/

namespace A298450.P12539481336314549039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A374004 (n + 1)).toNat

end

end A298450.P12539481336314549039

/-! ## A298450.P4365231516427185850

`A298454(A141214(n)+7)`
-/

namespace A298450.P4365231516427185850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A141214 n + 7).toNat

end

end A298450.P4365231516427185850

/-! ## A298450.P11746492597674476414

`A298454(A052905(n)+9)`
-/

namespace A298450.P11746492597674476414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A052905 n + 9).toNat

end

end A298450.P11746492597674476414

/-! ## A298450.P7556178201882300747

`A298454(A055999(n)+10)`
-/

namespace A298450.P7556178201882300747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A055999 n + 10).toNat

end

end A298450.P7556178201882300747

/-! ## A298450.P2619414255831299008

`A298454(A167614(n+2)+1)`
-/

namespace A298450.P2619414255831299008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A167614 (n + 2) + 1).toNat

end

end A298450.P2619414255831299008

/-!
# A298451: Number of nX5 0..1 arrays with every element equal to 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298451, there is no canonical definition to state claims against.
-/

/-! ## A298451.P14091059600570657636

`A298454(A374005(n+1))`
-/

namespace A298451.P14091059600570657636
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A374005 (n + 1)).toNat

end

end A298451.P14091059600570657636

/-! ## A298451.P10069353259566564948

`A298454(A167499(n+3))`
-/

namespace A298451.P10069353259566564948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A167499 (n + 3)).toNat

end

end A298451.P10069353259566564948

/-! ## A298451.P14102901773013692657

`A298454(A155212(n)+13)`
-/

namespace A298451.P14102901773013692657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A155212 n + 13).toNat

end

end A298451.P14102901773013692657

/-! ## A298451.P3501478333275809542

`A298454(A056000(n)+15)`
-/

namespace A298451.P3501478333275809542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A056000 n + 15).toNat

end

end A298451.P3501478333275809542

/-! ## A298451.P8457097244324164134

`A298454(eq[6, A131818(n+1)])`
-/

namespace A298451.P8457097244324164134
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298451.P8457097244324164134

/-!
# A298452: Number of nX6 0..1 arrays with every element equal to 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298452, there is no canonical definition to state claims against.
-/

/-! ## A298452.P12061103062252271718

`A298454(A374007(n+1))`
-/

namespace A298452.P12061103062252271718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A374007 (n + 1)).toNat

end

end A298452.P12061103062252271718

/-! ## A298452.P3613542535130163827

`A298454(A166136(n+4))`
-/

namespace A298452.P3613542535130163827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A166136 (n + 4)).toNat

end

end A298452.P3613542535130163827

/-! ## A298452.P590851838903635701

`A298454(A056115(n)+21)`
-/

namespace A298452.P590851838903635701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A056115 n + 21).toNat

end

end A298452.P590851838903635701

/-! ## A298452.P2630141762231023099

`A298454(eq[6, A130270(n+1)])`
-/

namespace A298452.P2630141762231023099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130270 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298452.P2630141762231023099

/-! ## A298452.P10378544812022288048

`A298454(eq[7, A131818(n+1)])`
-/

namespace A298452.P10378544812022288048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298452.P10378544812022288048

/-!
# A298453: Number of nX7 0..1 arrays with every element equal to 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298453, there is no canonical definition to state claims against.
-/

/-! ## A298453.P7204481694596976070

`A298454(A374008(n+1))`
-/

namespace A298453.P7204481694596976070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A374008 (n + 1)).toNat

end

end A298453.P7204481694596976070

/-! ## A298453.P15108925055170133488

`A298454(eq[6, A002262(n)]+1)`
-/

namespace A298453.P15108925055170133488
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A298453.P15108925055170133488

/-! ## A298453.P725440961054030307

`A298454(eq[8, A131818(n+1)])`
-/

namespace A298453.P725440961054030307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298453.P725440961054030307

/-! ## A298453.P16304010146127396139

`A298454(A055999(n+4))`
-/

namespace A298453.P16304010146127396139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (A055999 (n + 4)).toNat

end

end A298453.P16304010146127396139

/-! ## A298453.P3629914446766738055

`A298454(eq[4, A219347(n)])`
-/

namespace A298453.P3629914446766738055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298454 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298453.P3629914446766738055

/-!
# A298454: T(n,k)=Number of nXk 0..1 arrays with every element equal to 1, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298454, there is no canonical definition to state claims against.
-/

/-! ## A298454.P13981770866647740914

`A299528(n+1)-A082858(A289481(n))`
-/

namespace A298454.P13981770866647740914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299528 (n + 1) - A082858 (A289481 n).toNat

end

end A298454.P13981770866647740914

/-! ## A298454.P14224655308413224623

`A300146(n+1)-A309785(A174116(n))`
-/

namespace A298454.P14224655308413224623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300146 (n + 1) - A309785 (A174116 n).toNat

end

end A298454.P14224655308413224623

/-! ## A298454.P14197023264739494107

`xor(A299528(n+1), A309785(A174116(n)))`
-/

namespace A298454.P14197023264739494107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A299528 (n + 1)) (A309785 (A174116 n).toNat)

end

end A298454.P14197023264739494107

/-! ## A298454.P3201402166716546937

`A298622(n+1)+A166301(A174116(n))²`
-/

namespace A298454.P3201402166716546937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (n + 1) + A166301 (A174116 n).toNat ^ 2

end

end A298454.P3201402166716546937

/-! ## A298454.P3090554389736311488

`A298622(n+1)+A166301(A174545(n))²`
-/

namespace A298454.P3090554389736311488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298622 (n + 1) + A166301 (A174545 n).toNat ^ 2

end

end A298454.P3090554389736311488

/-!
# A298455: Number of n X n 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298455, there is no canonical definition to state claims against.
-/

/-! ## A298455.P8902298743817022290

`A298461(∑[4*n]+1)`
-/

namespace A298455.P8902298743817022290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298455.P8902298743817022290

/-! ## A298455.P8173490827263276375

`A298461(A001844(n))+A025439(n)`
-/

namespace A298455.P8173490827263276375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A001844 n).toNat + A025439 n

end

end A298455.P8173490827263276375

/-! ## A298455.P16222668340327449780

`A298461(A001844(n))+A025469(n)`
-/

namespace A298455.P16222668340327449780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A001844 n).toNat + A025469 n

end

end A298455.P16222668340327449780

/-! ## A298455.P3314100850616863212

`A298461(A001844(n))+A185238(n)`
-/

namespace A298455.P3314100850616863212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A001844 n).toNat + A185238 n

end

end A298455.P3314100850616863212

/-! ## A298455.P5895969872224291461

`A027828(n)*A298461(A001844(n))`
-/

namespace A298455.P5895969872224291461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027828 n * A298461 (A001844 n).toNat

end

end A298455.P5895969872224291461

/-!
# A298456: Number of nX3 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298456, there is no canonical definition to state claims against.
-/

/-! ## A298456.P11246792857117919262

`A298461(∑[n+2]+4)`
-/

namespace A298456.P11246792857117919262
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298456.P11246792857117919262

/-! ## A298456.P13809431927645396169

`gcd(n, n+1)*A298461(A166136(n+1)-3)`
-/

namespace A298456.P13809431927645396169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd n (n + 1) : ℤ) * A298461 (A166136 (n + 1) - 3).toNat

end

end A298456.P13809431927645396169

/-! ## A298456.P15337154134098935725

`A298461(A167614(n+1))%A213462(n+1)`
-/

namespace A298456.P15337154134098935725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298461 (A167614 (n + 1)).toNat) (A213462 (n + 1))

end

end A298456.P15337154134098935725

/-! ## A298456.P3068786160482163109

`lcm(A298461(A167614(n+1)), A309873(n+1))`
-/

namespace A298456.P3068786160482163109
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A298461 (A167614 (n + 1)).toNat) (A309873 (n + 1))

end

end A298456.P3068786160482163109

/-! ## A298456.P2074771747762142575

`A001221(A245396(n+1))*A298461(A166136(n+1)-3)`
-/

namespace A298456.P2074771747762142575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A245396 (n + 1)).toNat * A298461 (A166136 (n + 1) - 3).toNat

end

end A298456.P2074771747762142575

/-!
# A298457: Number of nX4 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298457, there is no canonical definition to state claims against.
-/

/-! ## A298457.P4874809782064977751

`A298461(A374004(n+1))`
-/

namespace A298457.P4874809782064977751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A374004 (n + 1)).toNat

end

end A298457.P4874809782064977751

/-! ## A298457.P8693562360858920858

`A298461(A141214(n)+7)`
-/

namespace A298457.P8693562360858920858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A141214 n + 7).toNat

end

end A298457.P8693562360858920858

/-! ## A298457.P1143086208284171952

`A298461(A167614(n+2)+1)`
-/

namespace A298457.P1143086208284171952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A167614 (n + 2) + 1).toNat

end

end A298457.P1143086208284171952

/-! ## A298457.P13114695698685353796

`A298461(A166136(n+2)-2)`
-/

namespace A298457.P13114695698685353796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A166136 (n + 2) - 2).toNat

end

end A298457.P13114695698685353796

/-! ## A298457.P13385014808446259332

`A298461(A166136(n+1)+1+n)`
-/

namespace A298457.P13385014808446259332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A166136 (n + 1) + 1 + (n : ℤ)).toNat

end

end A298457.P13385014808446259332

/-!
# A298458: Number of nX5 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298458, there is no canonical definition to state claims against.
-/

/-! ## A298458.P7169468638177912419

`A298461(A374005(n+1))`
-/

namespace A298458.P7169468638177912419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A374005 (n + 1)).toNat

end

end A298458.P7169468638177912419

/-! ## A298458.P1592695582460065997

`A298461(A155212(n)+13)`
-/

namespace A298458.P1592695582460065997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A155212 n + 13).toNat

end

end A298458.P1592695582460065997

/-! ## A298458.P2080763325622058572

`A298461(A056000(n)+15)`
-/

namespace A298458.P2080763325622058572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A056000 n + 15).toNat

end

end A298458.P2080763325622058572

/-! ## A298458.P3939423249912099938

`A298461(eq[6, A131818(n+1)])`
-/

namespace A298458.P3939423249912099938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298458.P3939423249912099938

/-! ## A298458.P841975888895264647

`A298461(Δ[A264443(n)])`
-/

namespace A298458.P841975888895264647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (f1 (n + 1) - f1 n).toNat

end

end A298458.P841975888895264647

/-!
# A298459: Number of nX6 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298459, there is no canonical definition to state claims against.
-/

/-! ## A298459.P10742089452167635494

`A298461(A374007(n+1))`
-/

namespace A298459.P10742089452167635494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A374007 (n + 1)).toNat

end

end A298459.P10742089452167635494

/-! ## A298459.P6254827335109038848

`A298461(A056115(n)+21)`
-/

namespace A298459.P6254827335109038848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A056115 n + 21).toNat

end

end A298459.P6254827335109038848

/-! ## A298459.P16827344555968346621

`A298461(eq[6, A256910(n)])`
-/

namespace A298459.P16827344555968346621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256910 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298459.P16827344555968346621

/-! ## A298459.P13153835898290138757

`A298461(eq[7, A131818(n+1)])`
-/

namespace A298459.P13153835898290138757
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298459.P13153835898290138757

/-! ## A298459.P10683854426203511899

`A298461(eq[3, A219347(n)])`
-/

namespace A298459.P10683854426203511899
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298459.P10683854426203511899

/-!
# A298460: Number of nX7 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298460, there is no canonical definition to state claims against.
-/

/-! ## A298460.P1869420678637284524

`A298461(A374008(n+1))`
-/

namespace A298460.P1869420678637284524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A374008 (n + 1)).toNat

end

end A298460.P1869420678637284524

/-! ## A298460.P211160436368965677

`A298461(eq[11, A066657(n)])`
-/

namespace A298460.P211160436368965677
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066657 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298460.P211160436368965677

/-! ## A298460.P7679582139300722892

`A298461(A000217(n+6)+7)`
-/

namespace A298460.P7679582139300722892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (A000217 (n + 6) + 7).toNat

end

end A298460.P7679582139300722892

/-! ## A298460.P3943487288343534866

`A298461(eq[8, A131818(n+1)])`
-/

namespace A298460.P3943487288343534866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131818 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298460.P3943487288343534866

/-! ## A298460.P7318175154823987213

`A298461(eq[4, A219347(n)])`
-/

namespace A298460.P7318175154823987213
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298461 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A298460.P7318175154823987213

/-!
# A298461: T(n,k)=Number of nXk 0..1 arrays with every element equal to 2, 3, 4, 5 or 6 king-move adjacent elements, with upper left element zero.

The programs for A298461, there is no canonical definition to state claims against.
-/

/-! ## A298461.P4691408014581139145

`A127288(A298629(n+1))`
-/

namespace A298461.P4691408014581139145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127288 (A298629 (n + 1)).toNat

end

end A298461.P4691408014581139145

/-! ## A298461.P6670948376799681149

`A298629(n+1)+A065040(A296548(n))`
-/

namespace A298461.P6670948376799681149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298629 (n + 1) + A065040 (A296548 n).toNat

end

end A298461.P6670948376799681149

/-! ## A298461.P14257738760316263226

`A299554(n+1)-A121262(A228900(n))`
-/

namespace A298461.P14257738760316263226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299554 (n + 1) - A121262 (A228900 n).toNat

end

end A298461.P14257738760316263226

/-! ## A298461.P6562860243285137960

`A297978(n+1)+A235943(A297978(n+1))`
-/

namespace A298461.P6562860243285137960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297978 (n + 1) + A235943 (A297978 (n + 1)).toNat

end

end A298461.P6562860243285137960

/-! ## A298461.P6303273937862708382

`A300175(n+1)-A285097(A317525(n+1))`
-/

namespace A298461.P6303273937862708382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A300175 (n + 1) - A285097 (A317525 (n + 1)).toNat

end

end A298461.P6303273937862708382

/-!
# A298462: The first of two consecutive triangular numbers the sum of which is equal to the sum of two consecutive prime numbers.

The programs for A298462, there is no canonical definition to state claims against.
-/

/-! ## A298462.P11410687962496533198

`C(A074924(n+1), 2)`
-/

namespace A298462.P11410687962496533198
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A074924 (n + 1)).toNat 2

end

end A298462.P11410687962496533198

/-! ## A298462.P2625073340061135032

`C(sqrt(A062703(n+1)), 2)`
-/

namespace A298462.P2625073340061135032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.sqrt (A062703 (n + 1) : ℝ))).toNat 2

end

end A298462.P2625073340061135032

/-! ## A298462.P6109216312751508362

`(A062703(n+1)-A074924(n+1))/2`
-/

namespace A298462.P6109216312751508362
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062703 (n + 1) - A074924 (n + 1) : ℚ) / 2

end

end A298462.P6109216312751508362

/-! ## A298462.P16808371667789758822

`C(2*A139013(n+1), 2)`
-/

namespace A298462.P16808371667789758822
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (2 * A139013 (n + 1)).toNat 2

end

end A298462.P16808371667789758822

/-! ## A298462.P13097261777026813433

`(A074924(n+1)-1)*A139013(n+1)`
-/

namespace A298462.P13097261777026813433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A074924 (n + 1) - 1) * A139013 (n + 1)

end

end A298462.P13097261777026813433

/-! ## A298462.P3511447788055719649

`A062703(n+1)/2-A139013(n+1)`
-/

namespace A298462.P3511447788055719649
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062703 (n + 1) : ℚ) / 2 - (A139013 (n + 1) : ℚ)

end

end A298462.P3511447788055719649

/-! ## A298462.P1557408924907254504

`A000217(A074924(n+1)-1)`
-/

namespace A298462.P1557408924907254504
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A074924 (n + 1) - 1).toNat

end

end A298462.P1557408924907254504

/-! ## A298462.P6240462258395557304

`A000217(2*A139013(n+1)-1)`
-/

namespace A298462.P6240462258395557304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (2 * A139013 (n + 1) - 1).toNat

end

end A298462.P6240462258395557304

/-! ## A298462.P7963103496942086525

`A000217(A139013(n+1)+A139013(n+1)-1)`
-/

namespace A298462.P7963103496942086525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A139013 (n + 1) + (A139013 (n + 1) - 1)).toNat

end

end A298462.P7963103496942086525

/-! ## A298462.P10626045053091677644

`A000217(A113429(gcd(n, n+1))+A074924(n+1))`
-/

namespace A298462.P10626045053091677644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (A113429 (Nat.gcd n (n + 1)) + A074924 (n + 1)).toNat

end

end A298462.P10626045053091677644

/-! ## A298462.P2982937323236159131

`A000384(A139013(n+1))`
-/

namespace A298462.P2982937323236159131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000384 (A139013 (n + 1)).toNat

end

end A298462.P2982937323236159131

/-! ## A298462.P6572739912607656107

`A074134(A074924(n+1))`
-/

namespace A298462.P6572739912607656107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074134 (A074924 (n + 1)).toNat

end

end A298462.P6572739912607656107

/-! ## A298462.P461146146743174563

`A139013(n+1)*A199969(2*A139013(n+1))`
-/

namespace A298462.P461146146743174563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139013 (n + 1) * A199969 (2 * A139013 (n + 1)).toNat

end

end A298462.P461146146743174563

/-!
# A298468: Solution (aa(n)) of the system of 3 complementary equations in Comments.

The programs for A298468, the canonical program `A298468.P9775696212957372657` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298468 has offset 0).

The definition of A298468 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298468.P5931917910291845342

`floor(n/2)+Δ[n²]+val(comp[2*(n+1)]+1, 2)%2`
-/

namespace A298468.P5931917910291845342
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1) 2 % 2 : ℕ) : ℤ))

end

end A298468.P5931917910291845342

namespace A298468

/-- `floor(n/2)+Δ[n²]+val(comp[2*(n+1)]+1, 2)%2` -/
def P5931917910291845342.Spec : Prop :=
  ∀ n, P5931917910291845342.a n = A298468 n

end A298468

/-! ## A298468.P9775696212957372657

`floor(A026491(n)+n/2)`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A298468

/-- `floor(A026491(n)+n/2)` -/
def P9775696212957372657.Spec : Prop :=
  ∀ n, P9775696212957372657.a n = A298468 n

theorem P9775696212957372657.correct : P9775696212957372657.Spec := by
  intro n
  simp only [A298468]

end A298468

/-! ## A298468.P13264413474103464768

`A047219(n+1)+char[lt[0, xor(n, n-1)%3]]`
-/

namespace A298468.P13264413474103464768
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.xor (n : ℤ) ((n : ℤ) - 1)) 3

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047219 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298468.P13264413474103464768

namespace A298468

/-- `A047219(n+1)+char[lt[0, xor(n, n-1)%3]]` -/
def P13264413474103464768.Spec : Prop :=
  ∀ n, P13264413474103464768.a n = A298468 n

end A298468

/-! ## A298468.P18118601625700711213

`A026491(n)+A004526(n)`
-/

namespace A298468.P18118601625700711213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 n + A004526 n

end

end A298468.P18118601625700711213

namespace A298468

/-- `A026491(n)+A004526(n)` -/
def P18118601625700711213.Spec : Prop :=
  ∀ n, P18118601625700711213.a n = A298468 n

end A298468

/-! ## A298468.P4858145949879968289

`A028242(or(1, n))+A026491(n)`
-/

namespace A298468.P4858145949879968289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 (Nat.lor 1 n) + A026491 n

end

end A298468.P4858145949879968289

namespace A298468

/-- `A028242(or(1, n))+A026491(n)` -/
def P4858145949879968289.Spec : Prop :=
  ∀ n, P4858145949879968289.a n = A298468 n

end A298468

/-! ## A298468.P17527265604672007552

`A026491(n)+n-A110654(n)`
-/

namespace A298468.P17527265604672007552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 n + ((n : ℤ) - A110654 n)

end

end A298468.P17527265604672007552

namespace A298468

/-- `A026491(n)+n-A110654(n)` -/
def P17527265604672007552.Spec : Prop :=
  ∀ n, P17527265604672007552.a n = A298468 n

end A298468

/-! ## A298468.P2141609323098818295

`A285383(n+1)+A047219(n+1)`
-/

namespace A298468.P2141609323098818295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1) + A047219 (n + 1)

end

end A298468.P2141609323098818295

namespace A298468

/-- `A285383(n+1)+A047219(n+1)` -/
def P2141609323098818295.Spec : Prop :=
  ∀ n, P2141609323098818295.a n = A298468 n

end A298468

/-! ## A298468.P7089952159536784307

`A047211(n+1)-A284948(n+1)`
-/

namespace A298468.P7089952159536784307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047211 (n + 1) - A284948 (n + 1)

end

end A298468.P7089952159536784307

namespace A298468

/-- `A047211(n+1)-A284948(n+1)` -/
def P7089952159536784307.Spec : Prop :=
  ∀ n, P7089952159536784307.a n = A298468 n

end A298468

/-! ## A298468.P1792741750774525157

`A285383(n+1)+∑[A003991(A265353(a(n-1))+1)]` with `a(0)=1`
-/

namespace A298468.P1792741750774525157
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A003991 (A265353 (f1 (n - 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298468.P1792741750774525157

namespace A298468

/-- `A285383(n+1)+∑[A003991(A265353(a(n-1))+1)]` -/
def P1792741750774525157.Spec : Prop :=
  ∀ n, P1792741750774525157.a n = A298468 n

end A298468

/-! ## A298468.P10982095725911638030

`A285383(n+1)+∑[A174550(A311067(a(n-1))+1)]` with `a(0)=1`
-/

namespace A298468.P10982095725911638030
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A174550 (A311067 (f1 (n - 1)).toNat + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285383 (n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298468.P10982095725911638030

namespace A298468

/-- `A285383(n+1)+∑[A174550(A311067(a(n-1))+1)]` -/
def P10982095725911638030.Spec : Prop :=
  ∀ n, P10982095725911638030.a n = A298468 n

end A298468

/-! ## A298468.P15111367599001962130

`record[A328196(n+1)/gcd(2, n)]`
-/

namespace A298468.P15111367599001962130
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A328196 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298468.P15111367599001962130

namespace A298468

/-- `record[A328196(n+1)/gcd(2, n)]` -/
def P15111367599001962130.Spec : Prop :=
  ∀ n, P15111367599001962130.a n = (A298468 n : ℚ)

end A298468

/-! ## A298468.P1285361088927804697

`A001068(A026491(n)-1)+1`
-/

namespace A298468.P1285361088927804697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001068 (A026491 n - 1).toNat + 1

end

end A298468.P1285361088927804697

namespace A298468

/-- `A001068(A026491(n)-1)+1` -/
def P1285361088927804697.Spec : Prop :=
  ∀ n, P1285361088927804697.a n = A298468 n

end A298468

/-! ## A298468.P12032505509007157793

`record[A328196(n+1)-A284948(n+1)]`
-/

namespace A298468.P12032505509007157793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328196 (n + 1) - A284948 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298468.P12032505509007157793

namespace A298468

/-- `record[A328196(n+1)-A284948(n+1)]` -/
def P12032505509007157793.Spec : Prop :=
  ∀ n, P12032505509007157793.a n = A298468 n

end A298468

/-! ## A298468.P50099532566730763

`10*n+A047218(n+2)-A297469(2*n)`
-/

namespace A298468.P50099532566730763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (10 * n : ℤ) + (A047218 (n + 2) - A297469 (2 * n))

end

end A298468.P50099532566730763

namespace A298468

/-- `10*n+A047218(n+2)-A297469(2*n)` -/
def P50099532566730763.Spec : Prop :=
  ∀ n, P50099532566730763.a n = A298468 n

end A298468

/-! ## A298468.P3999805533502203503

`A047201(A026491(n))`
-/

namespace A298468.P3999805533502203503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047201 (A026491 n).toNat

end

end A298468.P3999805533502203503

namespace A298468

/-- `A047201(A026491(n))` -/
def P3999805533502203503.Spec : Prop :=
  ∀ n, P3999805533502203503.a n = A298468 n

end A298468

/-! ## A298468.P14843874555459024368

`A026491(n)+A002265(2*n)`
-/

namespace A298468.P14843874555459024368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026491 n + A002265 (2 * n)

end

end A298468.P14843874555459024368

namespace A298468

/-- `A026491(n)+A002265(2*n)` -/
def P14843874555459024368.Spec : Prop :=
  ∀ n, P14843874555459024368.a n = A298468 n

end A298468

/-! ## A298468.P3893064220038603426

`A328190(2*n+1)-A047218(n+1)`
-/

namespace A298468.P3893064220038603426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328190 (2 * n + 1) - A047218 (n + 1)

end

end A298468.P3893064220038603426

namespace A298468

/-- `A328190(2*n+1)-A047218(n+1)` -/
def P3893064220038603426.Spec : Prop :=
  ∀ n, P3893064220038603426.a n = A298468 n

end A298468

/-! ## A298468.P13951809699193367661

`A328190(2*n+1)-A047203(2*n+1)`
-/

namespace A298468.P13951809699193367661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328190 (2 * n + 1) - A047203 (2 * n + 1)

end

end A298468.P13951809699193367661

namespace A298468

/-- `A328190(2*n+1)-A047203(2*n+1)` -/
def P13951809699193367661.Spec : Prop :=
  ∀ n, P13951809699193367661.a n = A298468 n

end A298468

/-! ## A298468.P13791437736129272519

`A328979(2*n+1)+A328984(2*(n+1))-2`
-/

namespace A298468.P13791437736129272519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328979 (2 * n + 1) + (A328984 (2 * (n + 1)) - 2)

end

end A298468.P13791437736129272519

namespace A298468

/-- `A328979(2*n+1)+A328984(2*(n+1))-2` -/
def P13791437736129272519.Spec : Prop :=
  ∀ n, P13791437736129272519.a n = A298468 n

end A298468

/-! ## A298468.P17940451350010393394

`A006368(2*n+1)+A328979(2*n+1)+n`
-/

namespace A298468.P17940451350010393394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006368 (2 * n + 1) + (A328979 (2 * n + 1) + (n : ℤ))

end

end A298468.P17940451350010393394

namespace A298468

/-- `A006368(2*n+1)+A328979(2*n+1)+n` -/
def P17940451350010393394.Spec : Prop :=
  ∀ n, P17940451350010393394.a n = A298468 n

end A298468

/-!
# A298472: Numbers n such that n and n-1 are both nontrivial binomial coefficients.

The programs for A298472, there is no canonical definition to state claims against.
-/

/-! ## A298472.P2982374008412902430

`∩[A006987(n+1)+1, A006987(n+1)]`
-/

namespace A298472.P2982374008412902430
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298472.P2982374008412902430

/-! ## A298472.P7554696317756123222

`∩[A182237(n+1)+1, A182237(n+1)]`
-/

namespace A298472.P7554696317756123222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182237 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298472.P7554696317756123222

/-! ## A298472.P733898939032649585

`∩[A006987(n+1), A020725(A006987(n+1))]`
-/

namespace A298472.P733898939032649585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A006987 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298472.P733898939032649585

/-! ## A298472.P11061008013697633169

`∩[A006987(n+1), A065475(A182237(n+1))]`
-/

namespace A298472.P11061008013697633169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A182237 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298472.P11061008013697633169

/-! ## A298472.P8952600186309628288

`∩[A006987(n+2), A065475(A006987(n+2))]`
-/

namespace A298472.P8952600186309628288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006987 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (A006987 (n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A298472.P8952600186309628288

/-!
# A298473: a(n) = n * lambda(n) * 2^omega(n).

The programs for A298473, the canonical program `A298473.P12382154419653735353` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298473 has offset 1).

The definition of A298473 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298473.P12382154419653735353

`(n+1)*∏{e}[n+1, 2*(-1)^#]`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A298473

/-- `(n+1)*∏{e}[n+1, 2*(-1)^#]` -/
def P12382154419653735353.Spec : Prop :=
  ∀ n, P12382154419653735353.a n = A298473 (n + 1)

theorem P12382154419653735353.correct : P12382154419653735353.Spec := by
  intro n
  simp only [A298473, Nat.add_sub_cancel]

end A298473

/-! ## A298473.P17605137583271448990

`(n+1)*A158522(n+1)`
-/

namespace A298473.P17605137583271448990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A158522 (n + 1)

end

end A298473.P17605137583271448990

namespace A298473

/-- `(n+1)*A158522(n+1)` -/
def P17605137583271448990.Spec : Prop :=
  ∀ n, P17605137583271448990.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P11327293380581308068

`∑{d}[n+1, (n+1)*A326415(#)]`
-/

namespace A298473.P11327293380581308068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (n + 1 : ℤ) * A326415 d

end

end A298473.P11327293380581308068

namespace A298473

/-- `∑{d}[n+1, (n+1)*A326415(#)]` -/
def P11327293380581308068.Spec : Prop :=
  ∀ n, P11327293380581308068.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P15933746880919857482

`(n+1)*2^∑{e}[n+1, #]/A162512(n+1)`
-/

namespace A298473.P15933746880919857482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1) * 2 ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p) : ℚ) / (A162512 (n + 1) : ℚ)

end

end A298473.P15933746880919857482

namespace A298473

/-- `(n+1)*2^∑{e}[n+1, #]/A162512(n+1)` -/
def P15933746880919857482.Spec : Prop :=
  ∀ n, P15933746880919857482.a n = (A298473 (n + 1) : ℚ)

end A298473

/-! ## A298473.P14867283842368364566

`A034444(n+1)*A061019(n+1)`
-/

namespace A298473.P14867283842368364566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A061019 (n + 1)

end

end A298473.P14867283842368364566

namespace A298473

/-- `A034444(n+1)*A061019(n+1)` -/
def P14867283842368364566.Spec : Prop :=
  ∀ n, P14867283842368364566.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P6240248448801753875

`A123667(n+1)/A162512(n+1)`
-/

namespace A298473.P6240248448801753875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A123667 (n + 1) : ℚ) / (A162512 (n + 1) : ℚ)

end

end A298473.P6240248448801753875

namespace A298473

/-- `A123667(n+1)/A162512(n+1)` -/
def P6240248448801753875.Spec : Prop :=
  ∀ n, P6240248448801753875.a n = (A298473 (n + 1) : ℚ)

end A298473

/-! ## A298473.P16815364158056320866

`(n+1)*A008836(n+1)*A034444(n+1)`
-/

namespace A298473.P16815364158056320866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A008836 (n + 1) * A034444 (n + 1))

end

end A298473.P16815364158056320866

namespace A298473

/-- `(n+1)*A008836(n+1)*A034444(n+1)` -/
def P16815364158056320866.Spec : Prop :=
  ∀ n, P16815364158056320866.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P3919908368944426663

`(n+1)*A061142(n+1)/A162512(n+1)`
-/

namespace A298473.P3919908368944426663
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A061142 (n + 1) : ℚ) / (A162512 (n + 1) : ℚ))

end

end A298473.P3919908368944426663

namespace A298473

/-- `(n+1)*A061142(n+1)/A162512(n+1)` -/
def P3919908368944426663.Spec : Prop :=
  ∀ n, P3919908368944426663.a n = (A298473 (n + 1) : ℚ)

end A298473

/-! ## A298473.P2875377354123482697

`∑{d}[n+1, A046692(#)*A061020((n+1)/#)]`
-/

namespace A298473.P2875377354123482697
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A046692 d * A061020 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298473.P2875377354123482697

namespace A298473

/-- `∑{d}[n+1, A046692(#)*A061020((n+1)/#)]` -/
def P2875377354123482697.Spec : Prop :=
  ∀ n, P2875377354123482697.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P7445588695811263847

`∑{d}[n+1, A055615(#)*A061019((n+1)/#)]`
-/

namespace A298473.P7445588695811263847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A055615 d * A061019 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298473.P7445588695811263847

namespace A298473

/-- `∑{d}[n+1, A055615(#)*A061019((n+1)/#)]` -/
def P7445588695811263847.Spec : Prop :=
  ∀ n, P7445588695811263847.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P12382789202571070313

`∑{d}[n+1, A023900(#)*A158523((n+1)/#)]`
-/

namespace A298473.P12382789202571070313
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A158523 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298473.P12382789202571070313

namespace A298473

/-- `∑{d}[n+1, A023900(#)*A158523((n+1)/#)]` -/
def P12382789202571070313.Spec : Prop :=
  ∀ n, P12382789202571070313.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P10404522079497698172

`∑{d}[n+1, A035316(#)*A327960((n+1)/#)]`
-/

namespace A298473.P10404522079497698172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035316 d * A327960 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298473.P10404522079497698172

namespace A298473

/-- `∑{d}[n+1, A035316(#)*A327960((n+1)/#)]` -/
def P10404522079497698172.Spec : Prop :=
  ∀ n, P10404522079497698172.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P17298998299883257437

`∑{d}[n+1, A118209(#)*A327278((n+1)/#)]`
-/

namespace A298473.P17298998299883257437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A118209 d * A327278 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298473.P17298998299883257437

namespace A298473

/-- `∑{d}[n+1, A118209(#)*A327278((n+1)/#)]` -/
def P17298998299883257437.Spec : Prop :=
  ∀ n, P17298998299883257437.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P2399556129098314359

`∑{d}[n+1, A101035(#)*A358272((n+1)/#)]`
-/

namespace A298473.P2399556129098314359
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A358272 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A298473.P2399556129098314359

namespace A298473

/-- `∑{d}[n+1, A101035(#)*A358272((n+1)/#)]` -/
def P2399556129098314359.Spec : Prop :=
  ∀ n, P2399556129098314359.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P11660636239674806764

`(n+1)*A290099(A124508(n+1))`
-/

namespace A298473.P11660636239674806764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A290099 (A124508 (n + 1)).toNat

end

end A298473.P11660636239674806764

namespace A298473

/-- `(n+1)*A290099(A124508(n+1))` -/
def P11660636239674806764.Spec : Prop :=
  ∀ n, P11660636239674806764.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P7025082324047164429

`(n+1)*A355837(A102631(n+1))`
-/

namespace A298473.P7025082324047164429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A355837 (A102631 (n + 1)).toNat

end

end A298473.P7025082324047164429

namespace A298473

/-- `(n+1)*A355837(A102631(n+1))` -/
def P7025082324047164429.Spec : Prop :=
  ∀ n, P7025082324047164429.a n = A298473 (n + 1)

end A298473

/-! ## A298473.P2979376203720029080

`(n+1)*A055975(A247516(n+1))`
-/

namespace A298473.P2979376203720029080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A055975 (A247516 (n + 1)).toNat

end

end A298473.P2979376203720029080

namespace A298473

/-- `(n+1)*A055975(A247516(n+1))` -/
def P2979376203720029080.Spec : Prop :=
  ∀ n, P2979376203720029080.a n = A298473 (n + 1)

end A298473

/-!
# A298474: a(n) is the least k such that A090701(k) = n.

The programs for A298474, the canonical program `A298474.P2356451179476190984` is in `Seq.B003.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298474 has offset 1).

The definition of A298474 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298474.P16664624693354004409

`floor(log2(A298476(n+1)))+1`
-/

namespace A298474.P16664624693354004409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A298476 (n + 1)).toNat + 1

end

end A298474.P16664624693354004409

namespace A298474

/-- `floor(log2(A298476(n+1)))+1` -/
def P16664624693354004409.Spec : Prop :=
  ∀ n, (P16664624693354004409.a n : ℤ) = A298474 (n + 1)

end A298474

/-! ## A298474.P2356451179476190984

`A008486(n)-(A035336(n+1)%A002522(n))%2`

The canonical program, it is in `Seq.B003.C004`.
-/

namespace A298474

/-- `A008486(n)-(A035336(n+1)%A002522(n))%2` -/
def P2356451179476190984.Spec : Prop :=
  ∀ n, P2356451179476190984.a n = A298474 (n + 1)

theorem P2356451179476190984.correct : P2356451179476190984.Spec := by
  intro n
  simp only [A298474, Nat.add_sub_cancel]

end A298474

/-! ## A298474.P12538128420805414689

`A008486(n)-(A008486(n)%A032350(n+1))%2`
-/

namespace A298474.P12538128420805414689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - Int.tmod (Int.tmod (A008486 n) (A032350 (n + 1))) 2

end

end A298474.P12538128420805414689

namespace A298474

/-- `A008486(n)-(A008486(n)%A032350(n+1))%2` -/
def P12538128420805414689.Spec : Prop :=
  ∀ n, P12538128420805414689.a n = A298474 (n + 1)

end A298474

/-! ## A298474.P14444964794888190938

`A004275(A001651(n+1))-char[4]`
-/

namespace A298474.P14444964794888190938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A001651 (n + 1)).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298474.P14444964794888190938

namespace A298474

/-- `A004275(A001651(n+1))-char[4]` -/
def P14444964794888190938.Spec : Prop :=
  ∀ n, P14444964794888190938.a n = A298474 (n + 1)

end A298474

/-! ## A298474.P10512413546953399372

`record[A051724(n)+1]-char[4]`
-/

namespace A298474.P10512413546953399372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298474.P10512413546953399372

namespace A298474

/-- `record[A051724(n)+1]-char[4]` -/
def P10512413546953399372.Spec : Prop :=
  ∀ n, P10512413546953399372.a n = A298474 (n + 1)

end A298474

/-! ## A298474.P3060874234164792889

`A280749(A063982(n+2))+eq[n, A051724(n)]`
-/

namespace A298474.P3060874234164792889
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051724 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280749 (A063982 (n + 2)).toNat + (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ)

end

end A298474.P3060874234164792889

namespace A298474

/-- `A280749(A063982(n+2))+eq[n, A051724(n)]` -/
def P3060874234164792889.Spec : Prop :=
  ∀ n, P3060874234164792889.a n = A298474 (n + 1)

end A298474

/-! ## A298474.P13832568277450203364

`A008486(n)-A038189(A222947(n))`
-/

namespace A298474.P13832568277450203364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n - A038189 (A222947 n).toNat

end

end A298474.P13832568277450203364

namespace A298474

/-- `A008486(n)-A038189(A222947(n))` -/
def P13832568277450203364.Spec : Prop :=
  ∀ n, P13832568277450203364.a n = A298474 (n + 1)

end A298474

/-! ## A298474.P7087786569149515899

`A047241(n+1)-A001221(A273064(n+1))`
-/

namespace A298474.P7087786569149515899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047241 (n + 1) - A001221 (A273064 (n + 1)).toNat

end

end A298474.P7087786569149515899

namespace A298474

/-- `A047241(n+1)-A001221(A273064(n+1))` -/
def P7087786569149515899.Spec : Prop :=
  ∀ n, P7087786569149515899.a n = A298474 (n + 1)

end A298474

/-! ## A298474.P9357101146061860577

`A047235(n+1)-A320111(A192583(n+1))`
-/

namespace A298474.P9357101146061860577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047235 (n + 1) - A320111 (A192583 (n + 1)).toNat

end

end A298474.P9357101146061860577

namespace A298474

/-- `A047235(n+1)-A320111(A192583(n+1))` -/
def P9357101146061860577.Spec : Prop :=
  ∀ n, P9357101146061860577.a n = A298474 (n + 1)

end A298474

/-!
# A298475: Minimal size of a palindromic partition of the binary representation of n.

The programs for A298475, there is no canonical definition to state claims against.
-/

/-! ## A298475.P13474764857055792056

`∑[A117165(A003215(A344220(n)))]`
-/

namespace A298475.P13474764857055792056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117165 (A003215 (A344220 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A298475.P13474764857055792056

/-! ## A298475.P5629792042559398654

`ceil(root(A259656(n+1), A031285(n)))`
-/

namespace A298475.P5629792042559398654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A259656 (n + 1) : ℝ) ^ (1 / (A031285 n : ℝ))⌉

end

end A298475.P5629792042559398654

/-! ## A298475.P12242899244934509876

`gcd(2, A318537(A086757(n+1)))`
-/

namespace A298475.P12242899244934509876
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A318537 (A086757 (n + 1)).toNat)

end

end A298475.P12242899244934509876

/-! ## A298475.P17108039611341726693

`gcd(A023905(n), A175096(n+1))`
-/

namespace A298475.P17108039611341726693
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023905 n) (A175096 (n + 1))

end

end A298475.P17108039611341726693

/-! ## A298475.P13570737359436722754

`A175096(A175096(n+1)^A323436(n))`
-/

namespace A298475.P13570737359436722754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175096 (SequenceMachineLib.roundAway ((A175096 (n + 1) : ℚ) ^ (A323436 n : ℤ))).toNat

end

end A298475.P13570737359436722754

/-!
# A298476: Least k such that A298475(k) = n.

The programs for A298476, there is no canonical definition to state claims against.
-/

/-! ## A298476.P2401661386255340742

`xor(A176850(A186654(n+1)), A243607(n+1))`
-/

namespace A298476.P2401661386255340742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A176850 (A186654 (n + 1)).toNat) (A243607 (n + 1))

end

end A298476.P2401661386255340742

/-!
# A298478: Number of unlabeled rooted trees with n nodes in which all positive outdegrees are different.

The programs for A298478, there is no canonical definition to state claims against.
-/

/-! ## A298478.P7864334030531864441

`A054071(A321655(n)+A008687(n))`
-/

namespace A298478.P7864334030531864441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (A321655 n + A008687 n).toNat

end

end A298478.P7864334030531864441

/-! ## A298478.P4711384474763423724

`or(A054071(A321655(n)), A115205(n))`
-/

namespace A298478.P4711384474763423724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A054071 (A321655 n).toNat) (A115205 n)

end

end A298478.P4711384474763423724

/-! ## A298478.P13090119217683072843

`A118168(A330765(n))`
-/

namespace A298478.P13090119217683072843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118168 (A330765 n).toNat

end

end A298478.P13090119217683072843

/-! ## A298478.P16781372472499246362

`A375462(A323301(n))`
-/

namespace A298478.P16781372472499246362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375462 (A323301 n).toNat

end

end A298478.P16781372472499246362

/-! ## A298478.P13723070679148049931

`A302931(A032020(n))+A032020(n)`
-/

namespace A298478.P13723070679148049931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302931 (A032020 n).toNat + A032020 n

end

end A298478.P13723070679148049931

/-!
# A298479: Matula-Goebel numbers of rooted trees in which all positive outdegrees are different.

The programs for A298479, there is no canonical definition to state claims against.
-/

/-! ## A298479.P6528022712268216303

`record[gcd(A064542(n+1), A160124(n))]`
-/

namespace A298479.P6528022712268216303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A064542 (n + 1)) (A160124 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298479.P6528022712268216303

/-! ## A298479.P8328492792363901149

`record[A295653(n+2)-A295659(n+1)]`
-/

namespace A298479.P8328492792363901149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295653 (n + 2) - A295659 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A298479.P8328492792363901149

/-!
# A298480: Lexicographically earliest sequence of distinct positive terms such that the Fermi-Dirac factorizations of two consecutive terms differ by exactly one factor.

The programs for A298480, there is no canonical definition to state claims against.
-/

/-! ## A298480.P5792429695024585844

`A052330(A163252(n))`
-/

namespace A298480.P5792429695024585844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (A163252 n).toNat

end

end A298480.P5792429695024585844

/-! ## A298480.P5363993808812102795

`A207901(A006068(A163252(A057300(A057300(n)))))`
-/

namespace A298480.P5363993808812102795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (A163252 (A057300 (A057300 n).toNat).toNat).toNat).toNat

end

end A298480.P5363993808812102795

/-! ## A298480.P7266179246066843431

`A207901(A006068(A163252(A300839(A300838(n)))))`
-/

namespace A298480.P7266179246066843431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207901 (A006068 (A163252 (A300839 (A300838 n).toNat).toNat).toNat).toNat

end

end A298480.P7266179246066843431

/-! ## A298480.P8782543060015705207

`∏{p}[A330919(n+1), A302023(#)]`
-/

namespace A298480.P8782543060015705207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302023 p

end

end A298480.P8782543060015705207

/-! ## A298480.P13707537908889798416

`∏{p}[A019565(A163252(n)), A302023(#)]`
-/

namespace A298480.P13707537908889798416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019565 (A163252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A302023 p

end

end A298480.P13707537908889798416

/-! ## A298480.P2423155697337682824

`A052330(∑{p}[A330919(n+1), A162474(#)])`
-/

namespace A298480.P2423155697337682824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A162474 p).toNat

end

end A298480.P2423155697337682824

/-! ## A298480.P15698125849666839111

`A052330(∑{p}[A330919(n+1), A297112(#)])`
-/

namespace A298480.P15698125849666839111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330919 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052330 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A297112 p).toNat

end

end A298480.P15698125849666839111

/-!
# A298481: a(n) is the number of ways to partition the binary representation of n into the minimal number of palindromic parts.

The programs for A298481, there is no canonical definition to state claims against.
-/

/-! ## A298481.P860574962250933696

`gcd(A022300(A102541(n+4)), A156233(n+2))`
-/

namespace A298481.P860574962250933696
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022300 (A102541 (n + 4)).toNat) (A156233 (n + 2))

end

end A298481.P860574962250933696

/-! ## A298481.P16987564666925859733

`gcd(A022303(A116368(3*(n+1))), A143586(n+1))`
-/

namespace A298481.P16987564666925859733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A022303 (A116368 (3 * (n + 1))).toNat) (A143586 (n + 1))

end

end A298481.P16987564666925859733

/-! ## A298481.P5752193150954331964

`A033761(A033761(∑[C(n, 2)]))`
-/

namespace A298481.P5752193150954331964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (A033761 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A298481.P5752193150954331964

/-! ## A298481.P16175735464703985097

`A033761(A033761(C(n+1, 3)))`
-/

namespace A298481.P16175735464703985097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033761 (A033761 (Nat.choose (n + 1) 3)).toNat

end

end A298481.P16175735464703985097

/-! ## A298481.P2951130343102199135

`A075526(C(A172184(n+2), A090996(n+4)))`
-/

namespace A298481.P2951130343102199135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (Nat.choose (A172184 (n + 2)).toNat (A090996 (n + 4)).toNat)

end

end A298481.P2951130343102199135

/-!
# A298482: a(n) = smallest integer not yet in the sequence with no digits in common with a(n-1), a(n-2), and a(n-3); a(0)=0, a(1)=1, a(2)=2.

The programs for A298482, there is no canonical definition to state claims against.
-/

/-! ## A298482.P16535023807033133413

`(n-9*floor((n-1)/9))*(10^floor((n+8)/9)-1)/9-A004198(2^n-1)`
-/

namespace A298482.P16535023807033133413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 9 * ⌊((n : ℤ) - 1 : ℚ) / 9⌋ : ℚ) * (((10 : ℚ) ^ (⌊(n + 8 : ℚ) / 9⌋ : ℤ) - 1) / 9) - (A004198 (2 ^ n - 1) : ℚ)

end

end A298482.P16535023807033133413

/-! ## A298482.P5331695688004710908

`A301801(A055647(n))`
-/

namespace A298482.P5331695688004710908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301801 (A055647 n).toNat

end

end A298482.P5331695688004710908

/-! ## A298482.P7165174748625844167

`A308540(A077168(n))`
-/

namespace A298482.P7165174748625844167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308540 (A077168 n).toNat

end

end A298482.P7165174748625844167

/-! ## A298482.P7336445554964052702

`A308540(A043319(n+1))`
-/

namespace A298482.P7336445554964052702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308540 (A043319 (n + 1)).toNat

end

end A298482.P7336445554964052702

/-! ## A298482.P6857162364690681640

`A308540(A044916(n+1))`
-/

namespace A298482.P6857162364690681640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308540 (A044916 (n + 1)).toNat

end

end A298482.P6857162364690681640

/-!
# A298483: Numbers n, the smallest of three consecutive numbers that share the property mu(n) <> chi(n).

The programs for A298483, there is no canonical definition to state claims against.
-/

/-! ## A298483.P16812044512857813958

`12*eq[0, A263405(n)]+1`
-/

namespace A298483.P16812044512857813958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263405 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A298483.P16812044512857813958

/-! ## A298483.P1051057347105298095

`A331425(A119753(n+1))`
-/

namespace A298483.P1051057347105298095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331425 (A119753 (n + 1)).toNat

end

end A298483.P1051057347105298095

/-!
# A298484: Square array A(n,k), n >= 1, k >= 1, read by antidiagonals, where A(n,k) is defined by the following: A(1,k) = k and A(n,k) = A(n-1,k)*(A(n-1,k)+1) for n > 1.

The programs for A298484, there is no canonical definition to state claims against.
-/

/-! ## A298484.P18184962343341423291

`A322911(lcm(A002024(n+1), A321741(n+1)))`
-/

namespace A298484.P18184962343341423291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322911 (Int.lcm (A002024 (n + 1)) (A321741 (n + 1)))

end

end A298484.P18184962343341423291

/-! ## A298484.P7149905464905701132

`A284559(or(n, A246019(n)))`
-/

namespace A298484.P7149905464905701132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284559 (Int.lor (n : ℤ) (A246019 n)).toNat

end

end A298484.P7149905464905701132

/-! ## A298484.P17657823113873849047

`A178888(∑[A212365(n)!])`
-/

namespace A298484.P17657823113873849047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A212365 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178888 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A298484.P17657823113873849047

/-! ## A298484.P8163209412164911964

`A289838(lt[A006666(n+1), 6])`
-/

namespace A298484.P8163209412164911964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289838 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A298484.P8163209412164911964

/-!
# A298485: Triangle read by rows; row 0 is 1; the n-th row for n>0 contains the coefficients in the expansion of (2-x)*(1+x)^(n-1).

The programs for A298485, the canonical program `A298485.P7573186523658269829` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A298485 has offset 0).

The definition of A298485 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A298485.P18106601680641778458

`A071919(n)+A037012(n)`
-/

namespace A298485.P18106601680641778458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + A037012 n

end

end A298485.P18106601680641778458

namespace A298485

/-- `A071919(n)+A037012(n)` -/
def P18106601680641778458.Spec : Prop :=
  ∀ n, P18106601680641778458.a n = A298485 n

end A298485

/-! ## A298485.P7090122123736046750

`A071919(n)-A008482(n)`
-/

namespace A298485.P7090122123736046750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n - A008482 n

end

end A298485.P7090122123736046750

namespace A298485

/-- `A071919(n)-A008482(n)` -/
def P7090122123736046750.Spec : Prop :=
  ∀ n, P7090122123736046750.a n = A298485 n

end A298485

/-! ## A298485.P7573186523658269829

`A097805(n+1)+A080232(n)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A298485

/-- `A097805(n+1)+A080232(n)` -/
def P7573186523658269829.Spec : Prop :=
  ∀ n, P7573186523658269829.a n = A298485 n

theorem P7573186523658269829.correct : P7573186523658269829.Spec := by
  intro n
  simp only [A298485]

end A298485

/-! ## A298485.P18237278044334057790

`A097805(n)+2*A037012(n)`
-/

namespace A298485.P18237278044334057790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n + 2 * A037012 n

end

end A298485.P18237278044334057790

namespace A298485

/-- `A097805(n)+2*A037012(n)` -/
def P18237278044334057790.Spec : Prop :=
  ∀ n, P18237278044334057790.a n = A298485 n

end A298485

/-! ## A298485.P1954141711474245352

`2*A029653(n)-A029600(n)`
-/

namespace A298485.P1954141711474245352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A029653 n - A029600 n

end

end A298485.P1954141711474245352

namespace A298485

/-- `2*A029653(n)-A029600(n)` -/
def P1954141711474245352.Spec : Prop :=
  ∀ n, P1954141711474245352.a n = A298485 n

end A298485

/-! ## A298485.P17245532397938188218

`A097805(n)-2*A008482(n)`
-/

namespace A298485.P17245532397938188218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 n - 2 * A008482 n

end

end A298485.P17245532397938188218

namespace A298485

/-- `A097805(n)-2*A008482(n)` -/
def P17245532397938188218.Spec : Prop :=
  ∀ n, P17245532397938188218.a n = A298485 n

end A298485

/-! ## A298485.P1755143303096303100

`2*A071919(n)-A097805(n)`
-/

namespace A298485.P1755143303096303100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071919 n - A097805 n

end

end A298485.P1755143303096303100

namespace A298485

/-- `2*A071919(n)-A097805(n)` -/
def P1755143303096303100.Spec : Prop :=
  ∀ n, P1755143303096303100.a n = A298485 n

end A298485

/-! ## A298485.P3483369657921810197

`2*A097805(A061579(n))-A097805(n)`
-/

namespace A298485.P3483369657921810197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097805 (A061579 n).toNat - A097805 n

end

end A298485.P3483369657921810197

namespace A298485

/-- `2*A097805(A061579(n))-A097805(n)` -/
def P3483369657921810197.Spec : Prop :=
  ∀ n, P3483369657921810197.a n = A298485 n

end A298485

/-! ## A298485.P5659504413618896910

`A071919(n)+A080232(n)-A000007(n)`
-/

namespace A298485.P5659504413618896910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 n + (A080232 n - A000007 n)

end

end A298485.P5659504413618896910

namespace A298485

/-- `A071919(n)+A080232(n)-A000007(n)` -/
def P5659504413618896910.Spec : Prop :=
  ∀ n, P5659504413618896910.a n = A298485 n

end A298485

/-! ## A298485.P10827650521182345138

`A000007(n)+A071919(n)-A112467(n)`
-/

namespace A298485.P10827650521182345138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (A071919 n - A112467 n)

end

end A298485.P10827650521182345138

namespace A298485

/-- `A000007(n)+A071919(n)-A112467(n)` -/
def P10827650521182345138.Spec : Prop :=
  ∀ n, P10827650521182345138.a n = A298485 n

end A298485

/-! ## A298485.P1030690975547439568

`A080232(n)-(A112467(n)-A097805(n))`
-/

namespace A298485.P1030690975547439568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080232 n - (A112467 n - A097805 n)

end

end A298485.P1030690975547439568

namespace A298485

/-- `A080232(n)-(A112467(n)-A097805(n))` -/
def P1030690975547439568.Spec : Prop :=
  ∀ n, P1030690975547439568.a n = A298485 n

end A298485

/-! ## A298485.P9549157362887746830

`2*A097805(A087156(n+1))-A097805(n)`
-/

namespace A298485.P9549157362887746830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A097805 (A087156 (n + 1)).toNat - A097805 n

end

end A298485.P9549157362887746830

namespace A298485

/-- `2*A097805(A087156(n+1))-A097805(n)` -/
def P9549157362887746830.Spec : Prop :=
  ∀ n, P9549157362887746830.a n = A298485 n

end A298485

/-! ## A298485.P16198854094388940197

`A008482(n+1)+A080232(n)+A071919(n+1)`
-/

namespace A298485.P16198854094388940197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008482 (n + 1) + (A080232 n + A071919 (n + 1))

end

end A298485.P16198854094388940197

namespace A298485

/-- `A008482(n+1)+A080232(n)+A071919(n+1)` -/
def P16198854094388940197.Spec : Prop :=
  ∀ n, P16198854094388940197.a n = A298485 n

end A298485

/-! ## A298485.P13255307959206362658

`A071919(n+1)+A112467(n+1)+A080232(n)`
-/

namespace A298485.P13255307959206362658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (n + 1) + (A112467 (n + 1) + A080232 n)

end

end A298485.P13255307959206362658

namespace A298485

/-- `A071919(n+1)+A112467(n+1)+A080232(n)` -/
def P13255307959206362658.Spec : Prop :=
  ∀ n, P13255307959206362658.a n = A298485 n

end A298485

/-! ## A298485.P12416991655835118802

`A007318(n+1)+A080232(n)-A071919(n+1)`
-/

namespace A298485.P12416991655835118802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (n + 1) + (A080232 n - A071919 (n + 1))

end

end A298485.P12416991655835118802

namespace A298485

/-- `A007318(n+1)+A080232(n)-A071919(n+1)` -/
def P12416991655835118802.Spec : Prop :=
  ∀ n, P12416991655835118802.a n = A298485 n

end A298485

/-! ## A298485.P2064126258716519612

`A071919(n+1)+A080232(n)-A080232(n+1)`
-/

namespace A298485.P2064126258716519612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071919 (n + 1) + (A080232 n - A080232 (n + 1))

end

end A298485.P2064126258716519612

namespace A298485

/-- `A071919(n+1)+A080232(n)-A080232(n+1)` -/
def P2064126258716519612.Spec : Prop :=
  ∀ n, P2064126258716519612.a n = A298485 n

end A298485

/-! ## A298485.P7645309518190669676

`2*A071919(n)-A071919(A061579(n))`
-/

namespace A298485.P7645309518190669676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A071919 n - A071919 (A061579 n).toNat

end

end A298485.P7645309518190669676

namespace A298485

/-- `2*A071919(n)-A071919(A061579(n))` -/
def P7645309518190669676.Spec : Prop :=
  ∀ n, P7645309518190669676.a n = A298485 n

end A298485

/-!
# A298486: Square array T(n, k), n >= 0, k >= 0, read by antidiagonals upwards: T(n, k) = the (k+1)-th nonnegative number m such that n + m can be computed with carry in decimal base.

The programs for A298486, there is no canonical definition to state claims against.
-/

/-! ## A298486.P4522404766990797976

`A374448(n)+A000007(A038207(n))`
-/

namespace A298486.P4522404766990797976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374448 n + A000007 (A038207 n).toNat

end

end A298486.P4522404766990797976

/-! ## A298486.P5665855507873347789

`A374448(n)+A000007(A376944(n))`
-/

namespace A298486.P5665855507873347789
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374448 n + A000007 (A376944 n).toNat

end

end A298486.P5665855507873347789

/-! ## A298486.P11711204164520466327

`A374448(n)%A062335(A216765(n+1))`
-/

namespace A298486.P11711204164520466327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A374448 n) (A062335 (A216765 (n + 1)).toNat)

end

end A298486.P11711204164520466327

/-! ## A298486.P16165022704606194476

`A374448(n)-A000007(A376944(n))/A000009(n)`
-/

namespace A298486.P16165022704606194476
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374448 n : ℚ) - (A000007 (A376944 n).toNat : ℚ) / (A000009 n : ℚ)

end

end A298486.P16165022704606194476

/-! ## A298486.P8214150303716681083

`A374448(n)-A000007(A376944(n))/A008804(n)`
-/

namespace A298486.P8214150303716681083
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374448 n : ℚ) - (A000007 (A376944 n).toNat : ℚ) / (A008804 n : ℚ)

end

end A298486.P8214150303716681083

/-! ## A298486.P15655327404654218319

`A374448(n)-A000007(A376944(n))/A108646(n)`
-/

namespace A298486.P15655327404654218319
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A374448 n : ℚ) - (A000007 (A376944 n).toNat : ℚ) / (A108646 n : ℚ)

end

end A298486.P15655327404654218319

/-!
# A298488: Number of n X n 0..1 arrays with every element equal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298488, there is no canonical definition to state claims against.
-/

/-! ## A298488.P913055076500171277

`A298494(∑[4*n]+1)`
-/

namespace A298488.P913055076500171277
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298488.P913055076500171277

/-! ## A298488.P5908345381505926510

`A298494(A001844(n))+char[22]`
-/

namespace A298488.P5908345381505926510
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  22

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A001844 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298488.P5908345381505926510

/-! ## A298488.P5480654213848473670

`A298494(A001844(n))%A017334(n)`
-/

namespace A298488.P5480654213848473670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298494 (A001844 n).toNat) (A017334 n)

end

end A298488.P5480654213848473670

/-! ## A298488.P6116098022636202014

`gcd(A018843(n), A298494(A001844(n)))`
-/

namespace A298488.P6116098022636202014
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A018843 n) (A298494 (A001844 n).toNat)

end

end A298488.P6116098022636202014

/-! ## A298488.P7361647086664366707

`xor(A025466(n), A298494(A001844(n)))`
-/

namespace A298488.P7361647086664366707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A025466 n) (A298494 (A001844 n).toNat)

end

end A298488.P7361647086664366707

/-!
# A298489: Number of nX3 0..1 arrays with every element equal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298489, there is no canonical definition to state claims against.
-/

/-! ## A298489.P686570699452278044

`A298494(∑[n+2]+4)`
-/

namespace A298489.P686570699452278044
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298489.P686570699452278044

/-! ## A298489.P11465635550741946825

`or(char[1], A298494(A046691(n)+7))`
-/

namespace A298489.P11465635550741946825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298494 (A046691 n + 7).toNat)

end

end A298489.P11465635550741946825

/-! ## A298489.P16160160157374155390

`xor(1, xor(1, A298494(A167614(n+1))))`
-/

namespace A298489.P16160160157374155390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A298494 (A167614 (n + 1)).toNat))

end

end A298489.P16160160157374155390

/-! ## A298489.P634136138158030150

`A298494(A167614(n+1))%A017334(n)`
-/

namespace A298489.P634136138158030150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298494 (A167614 (n + 1)).toNat) (A017334 n)

end

end A298489.P634136138158030150

/-! ## A298489.P2789693632054045160

`lcm(A033999(n), A298494(A167614(n+1)))`
-/

namespace A298489.P2789693632054045160
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A298494 (A167614 (n + 1)).toNat)

end

end A298489.P2789693632054045160

/-!
# A298490: Number of n X 4 0..1 arrays with every element equal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298490, there is no canonical definition to state claims against.
-/

/-! ## A298490.P2825722072202319290

`A298494(∑[n+3]+7)`
-/

namespace A298490.P2825722072202319290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298490.P2825722072202319290

/-! ## A298490.P10824212485103097608

`or(char[2], A298494(A052905(n)+9))`
-/

namespace A298490.P10824212485103097608
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A298494 (A052905 n + 9).toNat)

end

end A298490.P10824212485103097608

/-! ## A298490.P5839532772821191942

`A000041(C(2, n+2))*A298494(A052905(n)+9)`
-/

namespace A298490.P5839532772821191942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (n + 2)) * A298494 (A052905 n + 9).toNat

end

end A298490.P5839532772821191942

/-! ## A298490.P17411162381880180687

`A007318(val(n+1, 5))*A298494(A052905(n)+9)`
-/

namespace A298490.P17411162381880180687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 5) * A298494 (A052905 n + 9).toNat

end

end A298490.P17411162381880180687

/-! ## A298490.P2618151489763838535

`A000108(gcd(n, n+1))*A298494(A052905(n)+9)`
-/

namespace A298490.P2618151489763838535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.gcd n (n + 1)) * A298494 (A052905 n + 9).toNat

end

end A298490.P2618151489763838535

/-!
# A298491: Number of nX5 0..1 arrays with every element equal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298491, there is no canonical definition to state claims against.
-/

/-! ## A298491.P1857818091030799293

`A298494(A374005(n+1))`
-/

namespace A298491.P1857818091030799293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A374005 (n + 1)).toNat

end

end A298491.P1857818091030799293

/-! ## A298491.P17282890219812482448

`A298494(A167499(n+3))`
-/

namespace A298491.P17282890219812482448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A167499 (n + 3)).toNat

end

end A298491.P17282890219812482448

/-! ## A298491.P16829370687339471412

`A298494(A155212(n)+13)`
-/

namespace A298491.P16829370687339471412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A155212 n + 13).toNat

end

end A298491.P16829370687339471412

/-! ## A298491.P1956390475243141778

`A298494(A056000(n)+15)`
-/

namespace A298491.P1956390475243141778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A056000 n + 15).toNat

end

end A298491.P1956390475243141778

/-! ## A298491.P16721994635136185262

`A298494(A167614(n+3)+2)`
-/

namespace A298491.P16721994635136185262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A167614 (n + 3) + 2).toNat

end

end A298491.P16721994635136185262

/-!
# A298492: Number of n X 6 0..1 arrays with every element equal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298492, there is no canonical definition to state claims against.
-/

/-! ## A298492.P8064556119740169025

`A298494(A374007(n+1))`
-/

namespace A298492.P8064556119740169025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A374007 (n + 1)).toNat

end

end A298492.P8064556119740169025

/-! ## A298492.P9235609154650265284

`A298494(∑[A020710(n)]+16)`
-/

namespace A298492.P9235609154650265284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (∑ j ∈ Finset.range (n + 1), f1 j + 16).toNat

end

end A298492.P9235609154650265284

/-! ## A298492.P2596642398364885329

`A298494(A167499(n+4)+1)`
-/

namespace A298492.P2596642398364885329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A167499 (n + 4) + 1).toNat

end

end A298492.P2596642398364885329

/-! ## A298492.P18031361093695319015

`A298494(A167614(n+4)+3)`
-/

namespace A298492.P18031361093695319015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A167614 (n + 4) + 3).toNat

end

end A298492.P18031361093695319015

/-! ## A298492.P13751204946140970896

`A298494(A000124(n+5)+5)`
-/

namespace A298492.P13751204946140970896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A000124 (n + 5) + 5).toNat

end

end A298492.P13751204946140970896

/-!
# A298493: Number of nX7 0..1 arrays with every element equal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298493, there is no canonical definition to state claims against.
-/

/-! ## A298493.P17158472819977030545

`A298494(A374008(n+1))`
-/

namespace A298493.P17158472819977030545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A374008 (n + 1)).toNat

end

end A298493.P17158472819977030545

/-! ## A298493.P10058897221242954691

`A298494(A167487(n+5))`
-/

namespace A298493.P10058897221242954691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A167487 (n + 5)).toNat

end

end A298493.P10058897221242954691

/-! ## A298493.P1560805799352040172

`A298494(A167499(n+5)+2)`
-/

namespace A298493.P1560805799352040172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A167499 (n + 5) + 2).toNat

end

end A298493.P1560805799352040172

/-! ## A298493.P15147051756384338053

`A298494(A167614(n+5)+4)`
-/

namespace A298493.P15147051756384338053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A167614 (n + 5) + 4).toNat

end

end A298493.P15147051756384338053

/-! ## A298493.P12622955068104242396

`A298494(A000124(n+6)+6)`
-/

namespace A298493.P12622955068104242396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298494 (A000124 (n + 6) + 6).toNat

end

end A298493.P12622955068104242396

/-!
# A298494: T(n,k)=Number of nXk 0..1 arrays with every element equal to 0, 1, 2, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298494, there is no canonical definition to state claims against.
-/

/-! ## A298494.P16349481484578829288

`A297889(n+1)+A025466(A118180(n))`
-/

namespace A298494.P16349481484578829288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297889 (n + 1) + A025466 (A118180 n).toNat

end

end A298494.P16349481484578829288

/-! ## A298494.P10058718191948176225

`or(A025466(A118180(n)), A298294(n+1))`
-/

namespace A298494.P10058718191948176225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025466 (A118180 n).toNat) (A298294 (n + 1))

end

end A298494.P10058718191948176225

/-! ## A298494.P172945886142060707

`or(A025466(A118180(n)), A299388(n+1))`
-/

namespace A298494.P172945886142060707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A025466 (A118180 n).toNat) (A299388 (n + 1))

end

end A298494.P172945886142060707

/-! ## A298494.P11260725148032471243

`A299187(n+1)+A010057(A206582(n))`
-/

namespace A298494.P11260725148032471243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299187 (n + 1) + A010057 (A206582 n).toNat

end

end A298494.P11260725148032471243

/-! ## A298494.P9314786963399425485

`A299948(n+1)+A014017(A201439(3*n+5))`
-/

namespace A298494.P9314786963399425485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299948 (n + 1) + A014017 (A201439 (3 * n + 5)).toNat

end

end A298494.P9314786963399425485

/-!
# A298495: Number of n X n 0..1 arrays with every element equal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298495, there is no canonical definition to state claims against.
-/

/-! ## A298495.P10912058201562809230

`A298501(∑[4*n]+1)`
-/

namespace A298495.P10912058201562809230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A298495.P10912058201562809230

/-! ## A298495.P14591047602663671960

`and(-1, A298501(A001844(n)))`
-/

namespace A298495.P14591047602663671960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-1) (A298501 (A001844 n).toNat)

end

end A298495.P14591047602663671960

/-! ## A298495.P5416328719118879284

`A298501(A001844(n))+A025469(n)`
-/

namespace A298495.P5416328719118879284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A001844 n).toNat + A025469 n

end

end A298495.P5416328719118879284

/-! ## A298495.P7664819114133102014

`A298501(A001844(n))+A185284(n)`
-/

namespace A298495.P7664819114133102014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A001844 n).toNat + A185284 n

end

end A298495.P7664819114133102014

/-! ## A298495.P2551595078182535710

`A326684(n)+A298501(A001844(n))`
-/

namespace A298495.P2551595078182535710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A298501 (A001844 n).toNat

end

end A298495.P2551595078182535710

/-!
# A298496: Number of nX3 0..1 arrays with every element equal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298496, there is no canonical definition to state claims against.
-/

/-! ## A298496.P2809388612840317186

`A298501(∑[n+2]+4)`
-/

namespace A298496.P2809388612840317186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A298496.P2809388612840317186

/-! ## A298496.P1023853490064676594

`A298501(A167614(n+1))+char[19]`
-/

namespace A298496.P1023853490064676594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A167614 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298496.P1023853490064676594

/-! ## A298496.P6754289102257656453

`A298501(A167499(n)+n)+char[27]`
-/

namespace A298496.P6754289102257656453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  27

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A167499 n + (n : ℤ)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298496.P6754289102257656453

/-! ## A298496.P16437491433909436384

`A326684(n)+A298501(A167614(n+1))`
-/

namespace A298496.P16437491433909436384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326684 n + A298501 (A167614 (n + 1)).toNat

end

end A298496.P16437491433909436384

/-! ## A298496.P12650660297985621447

`A298501(A167614(n+1))%A349324(n+1)`
-/

namespace A298496.P12650660297985621447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298501 (A167614 (n + 1)).toNat) (A349324 (n + 1))

end

end A298496.P12650660297985621447

/-!
# A298497: Number of nX4 0..1 arrays with every element equal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298497, there is no canonical definition to state claims against.
-/

/-! ## A298497.P14654281230428242867

`A297903(n+1)+char[3*(n+1)]`
-/

namespace A298497.P14654281230428242867
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297903 (n + 1) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298497.P14654281230428242867

/-! ## A298497.P6477198242078206079

`A298501(∑[n+3]+7)`
-/

namespace A298497.P6477198242078206079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A298497.P6477198242078206079

/-! ## A298497.P1783718960797424666

`A298501(A141214(n)+7)+char[19]`
-/

namespace A298497.P1783718960797424666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A141214 n + 7).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298497.P1783718960797424666

/-! ## A298497.P16427253576223221428

`A298501(A052905(n)+9)+char[43]`
-/

namespace A298497.P16427253576223221428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  43

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A052905 n + 9).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A298497.P16427253576223221428

/-! ## A298497.P11027945856617325642

`A007318(C(2, n))*A298501(A141214(n)+7)`
-/

namespace A298497.P11027945856617325642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A298501 (A141214 n + 7).toNat

end

end A298497.P11027945856617325642

/-!
# A298498: Number of nX5 0..1 arrays with every element equal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298498, there is no canonical definition to state claims against.
-/

/-! ## A298498.P4963340796230777656

`A298501(A374005(n+1))`
-/

namespace A298498.P4963340796230777656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A374005 (n + 1)).toNat

end

end A298498.P4963340796230777656

/-! ## A298498.P16425786253305291946

`A298501(A167499(n+3))`
-/

namespace A298498.P16425786253305291946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A167499 (n + 3)).toNat

end

end A298498.P16425786253305291946

/-! ## A298498.P9719302206843986608

`A298501(A077169(n+5))`
-/

namespace A298498.P9719302206843986608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A077169 (n + 5)).toNat

end

end A298498.P9719302206843986608

/-! ## A298498.P8553583604961161048

`A298501(A155212(n)+13)`
-/

namespace A298498.P8553583604961161048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A155212 n + 13).toNat

end

end A298498.P8553583604961161048

/-! ## A298498.P12295556859517134717

`A298501(A056000(n)+15)`
-/

namespace A298498.P12295556859517134717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A056000 n + 15).toNat

end

end A298498.P12295556859517134717

/-!
# A298499: Number of nX6 0..1 arrays with every element equal to 0, 1, 3, 4 or 7 king-move adjacent elements, with upper left element zero.

The programs for A298499, there is no canonical definition to state claims against.
-/

/-! ## A298499.P6738825612728579202

`A298501(A374007(n+1))`
-/

namespace A298499.P6738825612728579202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A374007 (n + 1)).toNat

end

end A298499.P6738825612728579202

/-! ## A298499.P4275414295839864775

`A298501(A056115(n)+21)`
-/

namespace A298499.P4275414295839864775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A056115 n + 21).toNat

end

end A298499.P4275414295839864775

/-! ## A298499.P9473489123070014439

`A298501(A000124(n+5)+5)`
-/

namespace A298499.P9473489123070014439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A000124 (n + 5) + 5).toNat

end

end A298499.P9473489123070014439

/-! ## A298499.P13430528789647636691

`A298501(A000096(n+4)+7)`
-/

namespace A298499.P13430528789647636691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A000096 (n + 4) + 7).toNat

end

end A298499.P13430528789647636691

/-! ## A298499.P3725787514069487525

`A298501(A000217(n+5)+6)`
-/

namespace A298499.P3725787514069487525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298501 (A000217 (n + 5) + 6).toNat

end

end A298499.P3725787514069487525

