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
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
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
import Seq.B002.C000
import Seq.B002.C001
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
import Seq.Opaque.C012
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A168400: a(n) = 3^n mod 15.

The programs for A168400, the canonical program `A168400.P284412715719809189` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168400 has offset 0).

The definition of A168400 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168400.P284412715719809189

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=12`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168400

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P284412715719809189.Spec : Prop :=
  ∀ n, P284412715719809189.a n = A168400 n

theorem P284412715719809189.correct : P284412715719809189.Spec := by
  intro n
  simp only [A168400]

end A168400

/-!
# A168401: a(n) = 4 + 9*floor(n/2).

The programs for A168401, the canonical program `A168401.P14001014467470403176` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168401 has offset 1).

The definition of A168401 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4+9*floor((n+1)/2)` (program `A168401.P14001014467470403176`, by `A168401.P14001014467470403176.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168401.P14001014467470403176

`4+9*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168401

/-- `4+9*floor((n+1)/2)` -/
def P14001014467470403176.Spec : Prop :=
  ∀ n, P14001014467470403176.a n = A168401 (n + 1)

theorem P14001014467470403176.correct : P14001014467470403176.Spec := by
  intro n
  simp only [A168401, Nat.add_sub_cancel]

end A168401

/-! ## A168401.P9518212903242429354

`∑[abs(a(n-2))]` with `a(0)=4, a(1)=9, a(2)=0`
-/

namespace A168401.P9518212903242429354
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 9, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168401.P9518212903242429354

namespace A168401

/-- `∑[abs(a(n-2))]` -/
def P9518212903242429354.Spec : Prop :=
  ∀ n, (P9518212903242429354.a n : ℤ) = A168401 (n + 1)

end A168401

/-! ## A168401.P6865421594896144765

`∑[9-a(n-1)]` with `a(0)=4, a(1)=9`
-/

namespace A168401.P6865421594896144765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 9] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168401.P6865421594896144765

namespace A168401

/-- `∑[9-a(n-1)]` -/
def P6865421594896144765.Spec : Prop :=
  ∀ n, P6865421594896144765.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P1417690929721790916

`∑[∑[ogf((4+9x-4x^2)/(1+x))]]`
-/

namespace A168401.P1417690929721790916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9, -4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168401.P1417690929721790916

namespace A168401

/-- `∑[∑[ogf((4+9x-4x^2)/(1+x))]]` -/
def P1417690929721790916.Spec : Prop :=
  ∀ n, P1417690929721790916.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P14724760290952721371

`ogf((4+9x-4x^2)/(1-x-x^2+x^3))`
-/

namespace A168401.P14724760290952721371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 9, -4] [1, -1, -1, 1] n

end

end A168401.P14724760290952721371

namespace A168401

/-- `ogf((4+9x-4x^2)/(1-x-x^2+x^3))` -/
def P14724760290952721371.Spec : Prop :=
  ∀ n, P14724760290952721371.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P15331450351826055346

`A017209(ceil(n/2))`
-/

namespace A168401.P15331450351826055346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017209 ⌈(n : ℚ) / 2⌉.toNat

end

end A168401.P15331450351826055346

namespace A168401

/-- `A017209(ceil(n/2))` -/
def P15331450351826055346.Spec : Prop :=
  ∀ n, P15331450351826055346.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P7519307935860669236

`∑[xor(2, A134451(n))²]`
-/

namespace A168401.P7519307935860669236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (A134451 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168401.P7519307935860669236

namespace A168401

/-- `∑[xor(2, A134451(n))²]` -/
def P7519307935860669236.Spec : Prop :=
  ∀ n, P7519307935860669236.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P12501750545915071842

`∑[A259107(a(n-1))]` with `a(0)=4`
-/

namespace A168401.P12501750545915071842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A259107 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168401.P12501750545915071842

namespace A168401

/-- `∑[A259107(a(n-1))]` -/
def P12501750545915071842.Spec : Prop :=
  ∀ n, P12501750545915071842.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P9673024930157995424

`Δ[A195045(n)-(2-n)²]`
-/

namespace A168401.P9673024930157995424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195045 n - (2 - (n : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168401.P9673024930157995424

namespace A168401

/-- `Δ[A195045(n)-(2-n)²]` -/
def P9673024930157995424.Spec : Prop :=
  ∀ n, P9673024930157995424.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P13703377283695672991

`A056991(A163980(n+1)+1)`
-/

namespace A168401.P13703377283695672991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (A163980 (n + 1) + 1).toNat

end

end A168401.P13703377283695672991

namespace A168401

/-- `A056991(A163980(n+1)+1)` -/
def P13703377283695672991.Spec : Prop :=
  ∀ n, P13703377283695672991.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P231855380691508184

`∑[A014197(A020639(n+1))²]`
-/

namespace A168401.P231855380691508184
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014197 (A020639 (n + 1)).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168401.P231855380691508184

namespace A168401

/-- `∑[A014197(A020639(n+1))²]` -/
def P231855380691508184.Spec : Prop :=
  ∀ n, P231855380691508184.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P14545492975365556915

`∑[A070277(A020639(n+1)+1)²]`
-/

namespace A168401.P14545492975365556915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070277 (A020639 (n + 1) + 1).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168401.P14545492975365556915

namespace A168401

/-- `∑[A070277(A020639(n+1)+1)²]` -/
def P14545492975365556915.Spec : Prop :=
  ∀ n, P14545492975365556915.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P17705969283743941014

`A125758(or(1, n+1))`
-/

namespace A168401.P17705969283743941014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (Nat.lor 1 (n + 1))

end

end A168401.P17705969283743941014

namespace A168401

/-- `A125758(or(1, n+1))` -/
def P17705969283743941014.Spec : Prop :=
  ∀ n, P17705969283743941014.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P15073687458014137119

`A156638(or(1, n+1))`
-/

namespace A168401.P15073687458014137119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (Nat.lor 1 (n + 1))

end

end A168401.P15073687458014137119

namespace A168401

/-- `A156638(or(1, n+1))` -/
def P15073687458014137119.Spec : Prop :=
  ∀ n, P15073687458014137119.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P15203125551605730654

`A125758(A109613(n+1))`
-/

namespace A168401.P15203125551605730654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (A109613 (n + 1)).toNat

end

end A168401.P15203125551605730654

namespace A168401

/-- `A125758(A109613(n+1))` -/
def P15203125551605730654.Spec : Prop :=
  ∀ n, P15203125551605730654.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P17667335875735088281

`A125758(A063196(n+2))`
-/

namespace A168401.P17667335875735088281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (A063196 (n + 2)).toNat

end

end A168401.P17667335875735088281

namespace A168401

/-- `A125758(A063196(n+2))` -/
def P17667335875735088281.Spec : Prop :=
  ∀ n, P17667335875735088281.a n = A168401 (n + 1)

end A168401

/-! ## A168401.P17596880025943278729

`A056991(A168269(n+2)-1)`
-/

namespace A168401.P17596880025943278729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (A168269 (n + 2) - 1).toNat

end

end A168401.P17596880025943278729

namespace A168401

/-- `A056991(A168269(n+2)-1)` -/
def P17596880025943278729.Spec : Prop :=
  ∀ n, P17596880025943278729.a n = A168401 (n + 1)

end A168401

/-!
# A168402: E.g.f.: Sum_{n>=0} tanh(2^n*x)^n/n!.

The programs for A168402, there is no canonical definition to state claims against.
-/

/-! ## A168402.P12638415070324175150

`A000027(A168406(n))`
-/

namespace A168402.P12638415070324175150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A168406 n).toNat

end

end A168402.P12638415070324175150

/-!
# A168403: E.g.f.: Sum_{n>=0} sin(2^n*x)^n/n!.

The programs for A168403, there is no canonical definition to state claims against.
-/

/-! ## A168403.P627987356668622783

`A028310(A136647(n))*A177523(n)`
-/

namespace A168403.P627987356668622783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A136647 n).toNat * A177523 n

end

end A168403.P627987356668622783

/-!
# A168404: E.g.f.: Sum_{n>=0} tan(2^n*x)^n/n!.

The programs for A168404, there is no canonical definition to state claims against.
-/

/-! ## A168404.P5631663478190082455

`∏[A157271(4^n)]`
-/

namespace A168404.P5631663478190082455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157271 (4 ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168404.P5631663478190082455

/-!
# A168407: E.g.f.: Sum_{n>=0} (exp(2^n*x) - 1)^n/n!, an analog of the Bell numbers (A000110).

The programs for A168407, there is no canonical definition to state claims against.
-/

/-! ## A168407.P894588625633285615

`A189233(eq[A002262(n), A130321(n)])`
-/

namespace A168407.P894588625633285615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130321 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A168407.P894588625633285615

/-! ## A168407.P11603218883468478599

`A189233(eq[A002262(n), A144464(n)])`
-/

namespace A168407.P11603218883468478599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144464 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189233 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A168407.P11603218883468478599

/-! ## A168407.P10297588932636771844

`A292860(eq[A025581(n), A059268(n)])`
-/

namespace A168407.P10297588932636771844
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292860 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A168407.P10297588932636771844

/-!
# A168409: a(n) = 8 + 9*floor((n-1)/2).

The programs for A168409, the canonical program `A168409.P7028735390541723467` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168409 has offset 1).

The definition of A168409 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8+9*floor(n/2)` (program `A168409.P7028735390541723467`, by `A168409.P7028735390541723467.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168409.P7028735390541723467

`8+9*floor(n/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168409

/-- `8+9*floor(n/2)` -/
def P7028735390541723467.Spec : Prop :=
  ∀ n, P7028735390541723467.a n = A168409 (n + 1)

theorem P7028735390541723467.correct : P7028735390541723467.Spec := by
  intro n
  simp only [A168409, Nat.add_sub_cancel]

end A168409

/-! ## A168409.P2099832889706898370

`∑[9-a(n-1)]` with `a(0)=8, a(1)=0`
-/

namespace A168409.P2099832889706898370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 0] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168409.P2099832889706898370

namespace A168409

/-- `∑[9-a(n-1)]` -/
def P2099832889706898370.Spec : Prop :=
  ∀ n, P2099832889706898370.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P5732353754071683736

`∑[ogf((8+x^2)/(1-x^2))]`
-/

namespace A168409.P5732353754071683736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 0, 1] [1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168409.P5732353754071683736

namespace A168409

/-- `∑[ogf((8+x^2)/(1-x^2))]` -/
def P5732353754071683736.Spec : Prop :=
  ∀ n, P5732353754071683736.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P4306905294772503637

`ogf((8+x^2)/(1-x-x^2+x^3))`
-/

namespace A168409.P4306905294772503637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 0, 1] [1, -1, -1, 1] n

end

end A168409.P4306905294772503637

namespace A168409

/-- `ogf((8+x^2)/(1-x-x^2+x^3))` -/
def P4306905294772503637.Spec : Prop :=
  ∀ n, P4306905294772503637.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P730903037965985956

`A017257(floor(n/2))`
-/

namespace A168409.P730903037965985956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017257 ⌊(n : ℚ) / 2⌋.toNat

end

end A168409.P730903037965985956

namespace A168409

/-- `A017257(floor(n/2))` -/
def P730903037965985956.Spec : Prop :=
  ∀ n, P730903037965985956.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P1415288357352108379

`A056020(or(1, n)+1)`
-/

namespace A168409.P1415288357352108379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (Nat.lor 1 n + 1)

end

end A168409.P1415288357352108379

namespace A168409

/-- `A056020(or(1, n)+1)` -/
def P1415288357352108379.Spec : Prop :=
  ∀ n, P1415288357352108379.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P16437112569619388191

`A253195(or(1, n)+1)`
-/

namespace A168409.P16437112569619388191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (Nat.lor 1 n + 1)

end

end A168409.P16437112569619388191

namespace A168409

/-- `A253195(or(1, n)+1)` -/
def P16437112569619388191.Spec : Prop :=
  ∀ n, P16437112569619388191.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P4910393041546746171

`A274406(or(1, n)+1)`
-/

namespace A168409.P4910393041546746171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (Nat.lor 1 n + 1)

end

end A168409.P4910393041546746171

namespace A168409

/-- `A274406(or(1, n)+1)` -/
def P4910393041546746171.Spec : Prop :=
  ∀ n, P4910393041546746171.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P4603530770637894622

`A017245(or(1, n))/2`
-/

namespace A168409.P4603530770637894622
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017245 (Nat.lor 1 n) : ℚ) / 2

end

end A168409.P4603530770637894622

namespace A168409

/-- `A017245(or(1, n))/2` -/
def P4603530770637894622.Spec : Prop :=
  ∀ n, P4603530770637894622.a n = (A168409 (n + 1) : ℚ)

end A168409

/-! ## A168409.P5039130262972093101

`∑[A036483(a(n-1))]` with `a(0)=8`
-/

namespace A168409.P5039130262972093101
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8] fun n f1 =>
  A036483 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168409.P5039130262972093101

namespace A168409

/-- `∑[A036483(a(n-1))]` -/
def P5039130262972093101.Spec : Prop :=
  ∀ n, P5039130262972093101.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P14136631939894401609

`(3*A168326(n+1)+4)/2`
-/

namespace A168409.P14136631939894401609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 * A168326 (n + 1) + 4 : ℚ) / 2

end

end A168409.P14136631939894401609

namespace A168409

/-- `(3*A168326(n+1)+4)/2` -/
def P14136631939894401609.Spec : Prop :=
  ∀ n, P14136631939894401609.a n = (A168409 (n + 1) : ℚ)

end A168409

/-! ## A168409.P6598143345338358823

`A056020(A109613(n)+1)`
-/

namespace A168409.P6598143345338358823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A109613 n + 1).toNat

end

end A168409.P6598143345338358823

namespace A168409

/-- `A056020(A109613(n)+1)` -/
def P6598143345338358823.Spec : Prop :=
  ∀ n, P6598143345338358823.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P11925589143320761756

`A253195(A109613(n)+1)`
-/

namespace A168409.P11925589143320761756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (A109613 n + 1).toNat

end

end A168409.P11925589143320761756

namespace A168409

/-- `A253195(A109613(n)+1)` -/
def P11925589143320761756.Spec : Prop :=
  ∀ n, P11925589143320761756.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P10653130396600200276

`A056020(2*(A004526(n)+1))`
-/

namespace A168409.P10653130396600200276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (2 * (A004526 n + 1)).toNat

end

end A168409.P10653130396600200276

namespace A168409

/-- `A056020(2*(A004526(n)+1))` -/
def P10653130396600200276.Spec : Prop :=
  ∀ n, P10653130396600200276.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P10726434685503186381

`A274406(2*(A004526(n)+1))`
-/

namespace A168409.P10726434685503186381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274406 (2 * (A004526 n + 1)).toNat

end

end A168409.P10726434685503186381

namespace A168409

/-- `A274406(2*(A004526(n)+1))` -/
def P10726434685503186381.Spec : Prop :=
  ∀ n, P10726434685503186381.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P13457023766551088663

`A056020(A131055(n+2))`
-/

namespace A168409.P13457023766551088663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (A131055 (n + 2)).toNat

end

end A168409.P13457023766551088663

namespace A168409

/-- `A056020(A131055(n+2))` -/
def P13457023766551088663.Spec : Prop :=
  ∀ n, P13457023766551088663.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P6874691926865129987

`xor(A135481(n), A274406(n+2))`
-/

namespace A168409.P6874691926865129987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A135481 n) (A274406 (n + 2))

end

end A168409.P6874691926865129987

namespace A168409

/-- `xor(A135481(n), A274406(n+2))` -/
def P6874691926865129987.Spec : Prop :=
  ∀ n, P6874691926865129987.a n = A168409 (n + 1)

end A168409

/-! ## A168409.P7755700952504088597

`round(A179805(2*round((n+1)/2)+1)/2)`
-/

namespace A168409.P7755700952504088597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A179805 (2 * SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2) + 1).toNat : ℚ) / 2)

end

end A168409.P7755700952504088597

namespace A168409

/-- `round(A179805(2*round((n+1)/2)+1)/2)` -/
def P7755700952504088597.Spec : Prop :=
  ∀ n, P7755700952504088597.a n = A168409 (n + 1)

end A168409

/-!
# A168410: a(n) = 3 + 9*floor(n/2).

The programs for A168410, the canonical program `A168410.P11709711510633606522` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168410 has offset 1).

The definition of A168410 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3+9*floor((n+1)/2)` (program `A168410.P11709711510633606522`, by `A168410.P11709711510633606522.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168410.P11709711510633606522

`3+9*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168410

/-- `3+9*floor((n+1)/2)` -/
def P11709711510633606522.Spec : Prop :=
  ∀ n, P11709711510633606522.a n = A168410 (n + 1)

theorem P11709711510633606522.correct : P11709711510633606522.Spec := by
  intro n
  simp only [A168410, Nat.add_sub_cancel]

end A168410

/-! ## A168410.P17230502684404304188

`3*A168233(n+1)`
-/

namespace A168410.P17230502684404304188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A168233 (n + 1)

end

end A168410.P17230502684404304188

namespace A168410

/-- `3*A168233(n+1)` -/
def P17230502684404304188.Spec : Prop :=
  ∀ n, P17230502684404304188.a n = A168410 (n + 1)

end A168410

/-! ## A168410.P15730823845272988901

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=9, a(2)=0`
-/

namespace A168410.P15730823845272988901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 9, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168410.P15730823845272988901

namespace A168410

/-- `∑[abs(a(n-2))]` -/
def P15730823845272988901.Spec : Prop :=
  ∀ n, (P15730823845272988901.a n : ℤ) = A168410 (n + 1)

end A168410

/-! ## A168410.P16745208095445175985

`∑[9-a(n-1)]` with `a(0)=3, a(1)=9`
-/

namespace A168410.P16745208095445175985
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168410.P16745208095445175985

namespace A168410

/-- `∑[9-a(n-1)]` -/
def P16745208095445175985.Spec : Prop :=
  ∀ n, P16745208095445175985.a n = A168410 (n + 1)

end A168410

/-! ## A168410.P16673185105006005825

`∑[∑[ogf((3+9x-3x^2)/(1+x))]]`
-/

namespace A168410.P16673185105006005825
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 9, -3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168410.P16673185105006005825

namespace A168410

/-- `∑[∑[ogf((3+9x-3x^2)/(1+x))]]` -/
def P16673185105006005825.Spec : Prop :=
  ∀ n, P16673185105006005825.a n = A168410 (n + 1)

end A168410

/-! ## A168410.P1637056130254473697

`ogf((3+9x-3x^2)/(1-x-x^2+x^3))`
-/

namespace A168410.P1637056130254473697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 9, -3] [1, -1, -1, 1] n

end

end A168410.P1637056130254473697

namespace A168410

/-- `ogf((3+9x-3x^2)/(1-x-x^2+x^3))` -/
def P1637056130254473697.Spec : Prop :=
  ∀ n, P1637056130254473697.a n = A168410 (n + 1)

end A168410

/-! ## A168410.P4475569145241337812

`A017197(ceil(n/2))`
-/

namespace A168410.P4475569145241337812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017197 ⌈(n : ℚ) / 2⌉.toNat

end

end A168410.P4475569145241337812

namespace A168410

/-- `A017197(ceil(n/2))` -/
def P4475569145241337812.Spec : Prop :=
  ∀ n, P4475569145241337812.a n = A168410 (n + 1)

end A168410

/-! ## A168410.P628615317792280197

`3*(A168199(n+1)-1)`
-/

namespace A168410.P628615317792280197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A168199 (n + 1) - 1)

end

end A168410.P628615317792280197

namespace A168410

/-- `3*(A168199(n+1)-1)` -/
def P628615317792280197.Spec : Prop :=
  ∀ n, P628615317792280197.a n = A168410 (n + 1)

end A168410

/-! ## A168410.P9849690867237448202

`3/2*A168286(n+1)`
-/

namespace A168410.P9849690867237448202
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A168286 (n + 1) : ℚ)

end

end A168410.P9849690867237448202

namespace A168410

/-- `3/2*A168286(n+1)` -/
def P9849690867237448202.Spec : Prop :=
  ∀ n, P9849690867237448202.a n = (A168410 (n + 1) : ℚ)

end A168410

/-! ## A168410.P10613143774594432967

`3*(A030451(n)+n+1)`
-/

namespace A168410.P10613143774594432967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A030451 n + (n + 1 : ℤ))

end

end A168410.P10613143774594432967

namespace A168410

/-- `3*(A030451(n)+n+1)` -/
def P10613143774594432967.Spec : Prop :=
  ∀ n, P10613143774594432967.a n = A168410 (n + 1)

end A168410

/-! ## A168410.P17928744400018845700

`A234904(A265428(n))`
-/

namespace A168410.P17928744400018845700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A234904 (A265428 n).toNat

end

end A168410.P17928744400018845700

namespace A168410

/-- `A234904(A265428(n))` -/
def P17928744400018845700.Spec : Prop :=
  ∀ n, P17928744400018845700.a n = A168410 (n + 1)

end A168410

/-! ## A168410.P6614697958632929148

`lcm(A168233(n+1), A174971(n))`
-/

namespace A168410.P6614697958632929148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168233 (n + 1)) (A174971 n)

end

end A168410.P6614697958632929148

namespace A168410

/-- `lcm(A168233(n+1), A174971(n))` -/
def P6614697958632929148.Spec : Prop :=
  ∀ n, (P6614697958632929148.a n : ℤ) = A168410 (n + 1)

end A168410

/-! ## A168410.P3397401659417547971

`Δ[3*A238377(n)]`
-/

namespace A168410.P3397401659417547971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A238377 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168410.P3397401659417547971

namespace A168410

/-- `Δ[3*A238377(n)]` -/
def P3397401659417547971.Spec : Prop :=
  ∀ n, P3397401659417547971.a n = A168410 (n + 1)

end A168410

/-! ## A168410.P5940104062408439822

`A016051(or(1, n+1))`
-/

namespace A168410.P5940104062408439822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (Nat.lor 1 (n + 1))

end

end A168410.P5940104062408439822

namespace A168410

/-- `A016051(or(1, n+1))` -/
def P5940104062408439822.Spec : Prop :=
  ∀ n, P5940104062408439822.a n = A168410 (n + 1)

end A168410

/-! ## A168410.P4023924974170909419

`A261953(or(1, n+1))`
-/

namespace A168410.P4023924974170909419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261953 (Nat.lor 1 (n + 1))

end

end A168410.P4023924974170909419

namespace A168410

/-- `A261953(or(1, n+1))` -/
def P4023924974170909419.Spec : Prop :=
  ∀ n, P4023924974170909419.a n = A168410 (n + 1)

end A168410

/-! ## A168410.P3353402942336857468

`3*(A168237(n+1)+1)`
-/

namespace A168410.P3353402942336857468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A168237 (n + 1) + 1)

end

end A168410.P3353402942336857468

namespace A168410

/-- `3*(A168237(n+1)+1)` -/
def P3353402942336857468.Spec : Prop :=
  ∀ n, P3353402942336857468.a n = A168410 (n + 1)

end A168410

/-!
# A168411: a(n) = 7 + 9*floor((n-1)/2).

The programs for A168411, the canonical program `A168411.P6284128778222013299` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168411 has offset 1).

The definition of A168411 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7+9*floor(n/2)` (program `A168411.P6284128778222013299`, by `A168411.P6284128778222013299.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168411.P6284128778222013299

`7+9*floor(n/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168411

/-- `7+9*floor(n/2)` -/
def P6284128778222013299.Spec : Prop :=
  ∀ n, P6284128778222013299.a n = A168411 (n + 1)

theorem P6284128778222013299.correct : P6284128778222013299.Spec := by
  intro n
  simp only [A168411, Nat.add_sub_cancel]

end A168411

/-! ## A168411.P7351558970813658891

`∑[9-a(n-1)]` with `a(0)=7, a(1)=0`
-/

namespace A168411.P7351558970813658891
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 0] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168411.P7351558970813658891

namespace A168411

/-- `∑[9-a(n-1)]` -/
def P7351558970813658891.Spec : Prop :=
  ∀ n, P7351558970813658891.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P12402017075196147943

`∑[∑[ogf((7+2x^2)/(1+x))]]`
-/

namespace A168411.P12402017075196147943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 0, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168411.P12402017075196147943

namespace A168411

/-- `∑[∑[ogf((7+2x^2)/(1+x))]]` -/
def P12402017075196147943.Spec : Prop :=
  ∀ n, P12402017075196147943.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P13104831356476829251

`ogf((7+2x^2)/(1-x-x^2+x^3))`
-/

namespace A168411.P13104831356476829251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 0, 2] [1, -1, -1, 1] n

end

end A168411.P13104831356476829251

namespace A168411

/-- `ogf((7+2x^2)/(1-x-x^2+x^3))` -/
def P13104831356476829251.Spec : Prop :=
  ∀ n, P13104831356476829251.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P15000931116886046766

`A017245(floor(n/2))`
-/

namespace A168411.P15000931116886046766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017245 ⌊(n : ℚ) / 2⌋.toNat

end

end A168411.P15000931116886046766

namespace A168411

/-- `A017245(floor(n/2))` -/
def P15000931116886046766.Spec : Prop :=
  ∀ n, P15000931116886046766.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P16357918579590769529

`A125758(or(1, n)+1)`
-/

namespace A168411.P16357918579590769529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (Nat.lor 1 n + 1)

end

end A168411.P16357918579590769529

namespace A168411

/-- `A125758(or(1, n)+1)` -/
def P16357918579590769529.Spec : Prop :=
  ∀ n, P16357918579590769529.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P12181736363031959640

`A301451(or(1, n)+1)`
-/

namespace A168411.P12181736363031959640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (Nat.lor 1 n + 1)

end

end A168411.P12181736363031959640

namespace A168411

/-- `A301451(or(1, n)+1)` -/
def P12181736363031959640.Spec : Prop :=
  ∀ n, P12181736363031959640.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P17138499788958035183

`A017221(or(1, n))/2`
-/

namespace A168411.P17138499788958035183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017221 (Nat.lor 1 n) : ℚ) / 2

end

end A168411.P17138499788958035183

namespace A168411

/-- `A017221(or(1, n))/2` -/
def P17138499788958035183.Spec : Prop :=
  ∀ n, P17138499788958035183.a n = (A168411 (n + 1) : ℚ)

end A168411

/-! ## A168411.P6317748429616580433

`A056991(or(3, 2*n))`
-/

namespace A168411.P6317748429616580433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (Nat.lor 3 (2 * n))

end

end A168411.P6317748429616580433

namespace A168411

/-- `A056991(or(3, 2*n))` -/
def P6317748429616580433.Spec : Prop :=
  ∀ n, P6317748429616580433.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P2159859953276151238

`∑[A036483(a(n-1))]` with `a(0)=7`
-/

namespace A168411.P2159859953276151238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A036483 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168411.P2159859953276151238

namespace A168411

/-- `∑[A036483(a(n-1))]` -/
def P2159859953276151238.Spec : Prop :=
  ∀ n, P2159859953276151238.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P8009836747089730700

`A056991(A168269(n+1))`
-/

namespace A168411.P8009836747089730700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (A168269 (n + 1)).toNat

end

end A168411.P8009836747089730700

namespace A168411

/-- `A056991(A168269(n+1))` -/
def P8009836747089730700.Spec : Prop :=
  ∀ n, P8009836747089730700.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P422150127804625732

`A125758(A109613(n)+1)`
-/

namespace A168411.P422150127804625732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (A109613 n + 1).toNat

end

end A168411.P422150127804625732

namespace A168411

/-- `A125758(A109613(n)+1)` -/
def P422150127804625732.Spec : Prop :=
  ∀ n, P422150127804625732.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P5620170671664971226

`A125758(2*(A004526(n)+1))`
-/

namespace A168411.P5620170671664971226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125758 (2 * (A004526 n + 1)).toNat

end

end A168411.P5620170671664971226

namespace A168411

/-- `A125758(2*(A004526(n)+1))` -/
def P5620170671664971226.Spec : Prop :=
  ∀ n, P5620170671664971226.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P10154890454594487730

`A301451(2*(A004526(n)+1))`
-/

namespace A168411.P10154890454594487730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301451 (2 * (A004526 n + 1)).toNat

end

end A168411.P10154890454594487730

namespace A168411

/-- `A301451(2*(A004526(n)+1))` -/
def P10154890454594487730.Spec : Prop :=
  ∀ n, P10154890454594487730.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P7027682588256514887

`A017210(n)%A051063(n+1)`
-/

namespace A168411.P7027682588256514887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017210 n) (A051063 (n + 1))

end

end A168411.P7027682588256514887

namespace A168411

/-- `A017210(n)%A051063(n+1)` -/
def P7027682588256514887.Spec : Prop :=
  ∀ n, P7027682588256514887.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P102924658955815362

`A056991(A163980(n+2)-2)`
-/

namespace A168411.P102924658955815362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (A163980 (n + 2) - 2).toNat

end

end A168411.P102924658955815362

namespace A168411

/-- `A056991(A163980(n+2)-2)` -/
def P102924658955815362.Spec : Prop :=
  ∀ n, P102924658955815362.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P4507748863126411449

`A063289(2*A080513(n+1))`
-/

namespace A168411.P4507748863126411449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (2 * A080513 (n + 1)).toNat

end

end A168411.P4507748863126411449

namespace A168411

/-- `A063289(2*A080513(n+1))` -/
def P4507748863126411449.Spec : Prop :=
  ∀ n, P4507748863126411449.a n = A168411 (n + 1)

end A168411

/-! ## A168411.P12202868887448853422

`A112414(A168237(n))`
-/

namespace A168411.P12202868887448853422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112414 (A168237 n).toNat

end

end A168411.P12202868887448853422

namespace A168411

/-- `A112414(A168237(n))` -/
def P12202868887448853422.Spec : Prop :=
  ∀ n, P12202868887448853422.a n = A168411 (n + 1)

end A168411

/-!
# A168412: a(n) = n^5*(n^6 + 1)/2.

The programs for A168412, the canonical program `A168412.P8936657013881824017` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168412 has offset 0).

The definition of A168412 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168412.P8936657013881824017

`n^5*(n^6+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168412

/-- `n^5*(n^6+1)/2` -/
def P8936657013881824017.Spec : Prop :=
  ∀ n, P8936657013881824017.a n = (A168412 n : ℚ)

end A168412

/-! ## A168412.P11872654150138646311

`lcm(n, n*A168220(n))`
-/

namespace A168412.P11872654150138646311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) ((n : ℤ) * A168220 n)

end

end A168412.P11872654150138646311

namespace A168412

/-- `lcm(n, n*A168220(n))` -/
def P11872654150138646311.Spec : Prop :=
  ∀ n, (P11872654150138646311.a n : ℤ) = A168412 n

end A168412

/-! ## A168412.P12728032585182991791

`A321672(n)+A168189(n)`
-/

namespace A168412.P12728032585182991791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321672 n + A168189 n

end

end A168412.P12728032585182991791

namespace A168412

/-- `A321672(n)+A168189(n)` -/
def P12728032585182991791.Spec : Prop :=
  ∀ n, P12728032585182991791.a n = A168412 n

end A168412

/-! ## A168412.P15825894504486127539

`lcm(A060886(n), A168364(n))`
-/

namespace A168412.P15825894504486127539
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060886 n) (A168364 n)

end

end A168412.P15825894504486127539

namespace A168412

/-- `lcm(A060886(n), A168364(n))` -/
def P15825894504486127539.Spec : Prop :=
  ∀ n, (P15825894504486127539.a n : ℤ) = A168412 n

end A168412

/-! ## A168412.P17779340319119862017

`A168189(n)+n²*A135503(n)`
-/

namespace A168412.P17779340319119862017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168189 n + (n ^ 2 : ℤ) * A135503 n

end

end A168412.P17779340319119862017

namespace A168412

/-- `A168189(n)+n²*A135503(n)` -/
def P17779340319119862017.Spec : Prop :=
  ∀ n, P17779340319119862017.a n = A168412 n

end A168412

/-!
# A168413: a(n) = 9*n - a(n-1) - 5, with a(1)=2.

The programs for A168413, the canonical program `A168413.P5633066832920783154` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168413 has offset 1).

The definition of A168413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(n+1)-a(n-1)-5` (program `A168413.P5633066832920783154`, by `A168413.P5633066832920783154.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168413.P5633066832920783154

`9*(n+1)-a(n-1)-5` with `a(0)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168413

/-- `9*(n+1)-a(n-1)-5` -/
def P5633066832920783154.Spec : Prop :=
  ∀ n, P5633066832920783154.a n = A168413 (n + 1)

theorem P5633066832920783154.correct : P5633066832920783154.Spec := by
  intro n
  simp only [A168413, Nat.add_sub_cancel]

end A168413

/-! ## A168413.P8810620203863805866

`a(n-2)+9` with `a(0)=2, a(1)=11`
-/

namespace A168413.P8810620203863805866
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 11] fun n a =>
  a (n - 2) + 9

end

end A168413.P8810620203863805866

namespace A168413

/-- `a(n-2)+9` -/
def P8810620203863805866.Spec : Prop :=
  ∀ n, (P8810620203863805866.a n : ℤ) = A168413 (n + 1)

end A168413

/-! ## A168413.P9310921178616494047

`9*ceil(n/2)+2`
-/

namespace A168413.P9310921178616494047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ⌈(n : ℚ) / 2⌉ + 2

end

end A168413.P9310921178616494047

namespace A168413

/-- `9*ceil(n/2)+2` -/
def P9310921178616494047.Spec : Prop :=
  ∀ n, P9310921178616494047.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P11305228841232288636

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=9, a(2)=0`
-/

namespace A168413.P11305228841232288636
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 9, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168413.P11305228841232288636

namespace A168413

/-- `∑[abs(a(n-2))]` -/
def P11305228841232288636.Spec : Prop :=
  ∀ n, (P11305228841232288636.a n : ℤ) = A168413 (n + 1)

end A168413

/-! ## A168413.P3945857776458984687

`∑[9-a(n-1)]` with `a(0)=2, a(1)=9`
-/

namespace A168413.P3945857776458984687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 9] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168413.P3945857776458984687

namespace A168413

/-- `∑[9-a(n-1)]` -/
def P3945857776458984687.Spec : Prop :=
  ∀ n, P3945857776458984687.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P2315935062761863333

`∑[∑[ogf((2+9x-2x^2)/(1+x))]]`
-/

namespace A168413.P2315935062761863333
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 9, -2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168413.P2315935062761863333

namespace A168413

/-- `∑[∑[ogf((2+9x-2x^2)/(1+x))]]` -/
def P2315935062761863333.Spec : Prop :=
  ∀ n, P2315935062761863333.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P14549633329194533977

`ogf((2+9x-2x^2)/(1-x-x^2+x^3))`
-/

namespace A168413.P14549633329194533977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 9, -2] [1, -1, -1, 1] n

end

end A168413.P14549633329194533977

namespace A168413

/-- `ogf((2+9x-2x^2)/(1-x-x^2+x^3))` -/
def P14549633329194533977.Spec : Prop :=
  ∀ n, P14549633329194533977.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P8058821873864019952

`floor(9*n-(a(n-1)-4))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A168413.P8058821873864019952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (9 * n : ℤ) - (a (n - 1) - 4)

end

end A168413.P8058821873864019952

namespace A168413

/-- `floor(9*n-(a(n-1)-4))` -/
def P8058821873864019952.Spec : Prop :=
  ∀ n, P8058821873864019952.a n = A168413 (n + 1)

theorem P8058821873864019952.correct : P8058821873864019952.Spec := by
  intro n
  simp only [A168413, Nat.add_sub_cancel, A168413.P8058821873864019952.a, A168413.P5633066832920783154.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A168413

/-! ## A168413.P1107651783400564181

`A017185(ceil(n/2))`
-/

namespace A168413.P1107651783400564181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017185 ⌈(n : ℚ) / 2⌉.toNat

end

end A168413.P1107651783400564181

namespace A168413

/-- `A017185(ceil(n/2))` -/
def P1107651783400564181.Spec : Prop :=
  ∀ n, P1107651783400564181.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P2989932287761871166

`abs(3*(∑[A010685(n)]-n)-1)`
-/

namespace A168413.P2989932287761871166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ)) - 1|

end

end A168413.P2989932287761871166

namespace A168413

/-- `abs(3*(∑[A010685(n)]-n)-1)` -/
def P2989932287761871166.Spec : Prop :=
  ∀ n, P2989932287761871166.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P916231170752198137

`A156674(n+1)%A017317(n)`
-/

namespace A168413.P916231170752198137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156674 (n + 1)) (A017317 n)

end

end A168413.P916231170752198137

namespace A168413

/-- `A156674(n+1)%A017317(n)` -/
def P916231170752198137.Spec : Prop :=
  ∀ n, P916231170752198137.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P13851199518520720977

`A241521(n+1)%A017449(n)`
-/

namespace A168413.P13851199518520720977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241521 (n + 1)) (A017449 n)

end

end A168413.P13851199518520720977

namespace A168413

/-- `A241521(n+1)%A017449(n)` -/
def P13851199518520720977.Spec : Prop :=
  ∀ n, P13851199518520720977.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P8542223686466392570

`A176010(n+1)%A306279(n+1)`
-/

namespace A168413.P8542223686466392570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176010 (n + 1)) (A306279 (n + 1))

end

end A168413.P8542223686466392570

namespace A168413

/-- `A176010(n+1)%A306279(n+1)` -/
def P8542223686466392570.Spec : Prop :=
  ∀ n, P8542223686466392570.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P14708245496904514213

`A014682(A168273(n+1)+A109613(n+1))`
-/

namespace A168413.P14708245496904514213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A168273 (n + 1) + A109613 (n + 1)).toNat

end

end A168413.P14708245496904514213

namespace A168413

/-- `A014682(A168273(n+1)+A109613(n+1))` -/
def P14708245496904514213.Spec : Prop :=
  ∀ n, P14708245496904514213.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P9973705026227561972

`A193910(or(1, n+1))`
-/

namespace A168413.P9973705026227561972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (Nat.lor 1 (n + 1))

end

end A168413.P9973705026227561972

namespace A168413

/-- `A193910(or(1, n+1))` -/
def P9973705026227561972.Spec : Prop :=
  ∀ n, P9973705026227561972.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P16416893319957905683

`A063289(or(1, n+3))`
-/

namespace A168413.P16416893319957905683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (Nat.lor 1 (n + 3))

end

end A168413.P16416893319957905683

namespace A168413

/-- `A063289(or(1, n+3))` -/
def P16416893319957905683.Spec : Prop :=
  ∀ n, P16416893319957905683.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P9431591416405902620

`A193910(A109613(n+1))`
-/

namespace A168413.P9431591416405902620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (A109613 (n + 1)).toNat

end

end A168413.P9431591416405902620

namespace A168413

/-- `A193910(A109613(n+1))` -/
def P9431591416405902620.Spec : Prop :=
  ∀ n, P9431591416405902620.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P11915636818586718922

`A063289(A010710(n)-1+n)`
-/

namespace A168413.P11915636818586718922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 (A010710 n - 1 + (n : ℤ)).toNat

end

end A168413.P11915636818586718922

namespace A168413

/-- `A063289(A010710(n)-1+n)` -/
def P11915636818586718922.Spec : Prop :=
  ∀ n, P11915636818586718922.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P6269090658897211561

`A063289(n-(1-A010710(n)))`
-/

namespace A168413.P6269090658897211561
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063289 ((n : ℤ) - (1 - A010710 n)).toNat

end

end A168413.P6269090658897211561

namespace A168413

/-- `A063289(n-(1-A010710(n)))` -/
def P6269090658897211561.Spec : Prop :=
  ∀ n, P6269090658897211561.a n = A168413 (n + 1)

end A168413

/-! ## A168413.P7607961336373136199

`A016789(∑[A010674(n)])`
-/

namespace A168413.P7607961336373136199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010674 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016789 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A168413.P7607961336373136199

namespace A168413

/-- `A016789(∑[A010674(n)])` -/
def P7607961336373136199.Spec : Prop :=
  ∀ n, P7607961336373136199.a n = A168413 (n + 1)

end A168413

/-!
# A168414: a(n) = (18*n - 9*(-1)^n - 3)/4.

The programs for A168414, the canonical program `A168414.P13007170085722683604` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168414 has offset 1).

The definition of A168414 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168414.P13007170085722683604

`6+9*floor(n/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168414

/-- `6+9*floor(n/2)` -/
def P13007170085722683604.Spec : Prop :=
  ∀ n, P13007170085722683604.a n = A168414 (n + 1)

theorem P13007170085722683604.correct : P13007170085722683604.Spec := by
  intro n
  simp only [A168414, Nat.add_sub_cancel]

end A168414

/-! ## A168414.P8513643334810281557

`(18*(n+1)-9*(-1)^(n+1)-3)/4`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168414.P8513643334810281557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((18 * (n + 1) : ℤ) - 9 * (-1) ^ (n + 1) - 3 : ℚ) / 4

end

end A168414.P8513643334810281557

namespace A168414

/-- `(18*(n+1)-9*(-1)^(n+1)-3)/4` -/
def P8513643334810281557.Spec : Prop :=
  ∀ n, P8513643334810281557.a n = (A168414 (n + 1) : ℚ)

end A168414

/-! ## A168414.P6928525127074054646

`3*A168236(n+1)`
-/

namespace A168414.P6928525127074054646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A168236 (n + 1)

end

end A168414.P6928525127074054646

namespace A168414

/-- `3*A168236(n+1)` -/
def P6928525127074054646.Spec : Prop :=
  ∀ n, P6928525127074054646.a n = A168414 (n + 1)

end A168414

/-! ## A168414.P16183709277839574506

`∑[9-a(n-1)]` with `a(0)=6, a(1)=0`
-/

namespace A168414.P16183709277839574506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 0] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168414.P16183709277839574506

namespace A168414

/-- `∑[9-a(n-1)]` -/
def P16183709277839574506.Spec : Prop :=
  ∀ n, P16183709277839574506.a n = A168414 (n + 1)

end A168414

/-! ## A168414.P3759963741660839863

`∑[∑[ogf((6+3x^2)/(1+x))]]`
-/

namespace A168414.P3759963741660839863
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168414.P3759963741660839863

namespace A168414

/-- `∑[∑[ogf((6+3x^2)/(1+x))]]` -/
def P3759963741660839863.Spec : Prop :=
  ∀ n, P3759963741660839863.a n = A168414 (n + 1)

end A168414

/-! ## A168414.P4436780588551740438

`ogf((6+3x^2)/(1-x-x^2+x^3))`
-/

namespace A168414.P4436780588551740438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, 3] [1, -1, -1, 1] n

end

end A168414.P4436780588551740438

namespace A168414

/-- `ogf((6+3x^2)/(1-x-x^2+x^3))` -/
def P4436780588551740438.Spec : Prop :=
  ∀ n, P4436780588551740438.a n = A168414 (n + 1)

end A168414

/-! ## A168414.P6221334914418873290

`A017233(floor(n/2))`
-/

namespace A168414.P6221334914418873290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017233 ⌊(n : ℚ) / 2⌋.toNat

end

end A168414.P6221334914418873290

namespace A168414

/-- `A017233(floor(n/2))` -/
def P6221334914418873290.Spec : Prop :=
  ∀ n, P6221334914418873290.a n = A168414 (n + 1)

end A168414

/-! ## A168414.P15149942851333503325

`3*(A168237(n)+2)`
-/

namespace A168414.P15149942851333503325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A168237 n + 2)

end

end A168414.P15149942851333503325

namespace A168414

/-- `3*(A168237(n)+2)` -/
def P15149942851333503325.Spec : Prop :=
  ∀ n, P15149942851333503325.a n = A168414 (n + 1)

end A168414

/-! ## A168414.P3560422103072416327

`A016051(or(1, n)+1)`
-/

namespace A168414.P3560422103072416327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016051 (Nat.lor 1 n + 1)

end

end A168414.P3560422103072416327

namespace A168414

/-- `A016051(or(1, n)+1)` -/
def P3560422103072416327.Spec : Prop :=
  ∀ n, P3560422103072416327.a n = A168414 (n + 1)

end A168414

/-! ## A168414.P1138161614994261236

`A193910(or(1, n)+1)`
-/

namespace A168414.P1138161614994261236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193910 (Nat.lor 1 n + 1)

end

end A168414.P1138161614994261236

namespace A168414

/-- `A193910(or(1, n)+1)` -/
def P1138161614994261236.Spec : Prop :=
  ∀ n, P1138161614994261236.a n = A168414 (n + 1)

end A168414

/-! ## A168414.P9938080701137299740

`A122709(∑[char[2*n]])`
-/

namespace A168414.P9938080701137299740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122709 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168414.P9938080701137299740

namespace A168414

/-- `A122709(∑[char[2*n]])` -/
def P9938080701137299740.Spec : Prop :=
  ∀ n, P9938080701137299740.a n = A168414 (n + 1)

end A168414

/-! ## A168414.P985416275193171333

`∑[A259107(a(n-1))]` with `a(0)=6`
-/

namespace A168414.P985416275193171333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A259107 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168414.P985416275193171333

namespace A168414

/-- `∑[A259107(a(n-1))]` -/
def P985416275193171333.Spec : Prop :=
  ∀ n, P985416275193171333.a n = A168414 (n + 1)

end A168414

/-! ## A168414.P9715659255969106664

`∑[A309645(a(n-1))]` with `a(0)=6`
-/

namespace A168414.P9715659255969106664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A309645 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168414.P9715659255969106664

namespace A168414

/-- `∑[A309645(a(n-1))]` -/
def P9715659255969106664.Spec : Prop :=
  ∀ n, P9715659255969106664.a n = A168414 (n + 1)

end A168414

/-! ## A168414.P17017248531042087225

`∑[dr(1-A040181(n)²)]`
-/

namespace A168414.P17017248531042087225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A040181 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168414.P17017248531042087225

namespace A168414

/-- `∑[dr(1-A040181(n)²)]` -/
def P17017248531042087225.Spec : Prop :=
  ∀ n, (P17017248531042087225.a n : ℤ) = A168414 (n + 1)

end A168414

/-! ## A168414.P12126079328008358236

`∑[dr(1-A040505(n)²)]`
-/

namespace A168414.P12126079328008358236
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - A040505 n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168414.P12126079328008358236

namespace A168414

/-- `∑[dr(1-A040505(n)²)]` -/
def P12126079328008358236.Spec : Prop :=
  ∀ n, (P12126079328008358236.a n : ℤ) = A168414 (n + 1)

end A168414

/-! ## A168414.P7501692042563770137

`3/2*A168326(n+1)`
-/

namespace A168414.P7501692042563770137
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 2 * (A168326 (n + 1) : ℚ)

end

end A168414.P7501692042563770137

namespace A168414

/-- `3/2*A168326(n+1)` -/
def P7501692042563770137.Spec : Prop :=
  ∀ n, P7501692042563770137.a n = (A168414 (n + 1) : ℚ)

end A168414

/-!
# A168415: a(n) = 2^n + 7.

The programs for A168415, the canonical program `A168415.P15469723963420890649` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168415 has offset 0).

The definition of A168415 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2^n+7` (program `A168415.P15469723963420890649`, by `A168415.P15469723963420890649.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168415.P15469723963420890649

`2^n+7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168415

/-- `2^n+7` -/
def P15469723963420890649.Spec : Prop :=
  ∀ n, (P15469723963420890649.a n : ℤ) = A168415 n

theorem P15469723963420890649.correct : P15469723963420890649.Spec := by
  intro n
  simp only [A168415]

end A168415

/-!
# A168416: a(n) = 1 + 9*floor(n/2).

The programs for A168416, the canonical program `A168416.P10323995912225416260` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168416 has offset 1).

The definition of A168416 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+9*floor((n+1)/2)` (program `A168416.P10323995912225416260`, by `A168416.P10323995912225416260.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168416.P10323995912225416260

`1+9*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168416

/-- `1+9*floor((n+1)/2)` -/
def P10323995912225416260.Spec : Prop :=
  ∀ n, P10323995912225416260.a n = A168416 (n + 1)

theorem P10323995912225416260.correct : P10323995912225416260.Spec := by
  intro n
  simp only [A168416, Nat.add_sub_cancel]

end A168416

/-! ## A168416.P6764038192529930486

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=9, a(2)=0`
-/

namespace A168416.P6764038192529930486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 9, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168416.P6764038192529930486

namespace A168416

/-- `∑[abs(a(n-2))]` -/
def P6764038192529930486.Spec : Prop :=
  ∀ n, (P6764038192529930486.a n : ℤ) = A168416 (n + 1)

end A168416

/-! ## A168416.P7753322906687776776

`∑[9-a(n-1)]` with `a(0)=1, a(1)=9`
-/

namespace A168416.P7753322906687776776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 9] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168416.P7753322906687776776

namespace A168416

/-- `∑[9-a(n-1)]` -/
def P7753322906687776776.Spec : Prop :=
  ∀ n, P7753322906687776776.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P6804767729861843464

`∑[∑[ogf((1+9x-x^2)/(1+x))]]`
-/

namespace A168416.P6804767729861843464
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168416.P6804767729861843464

namespace A168416

/-- `∑[∑[ogf((1+9x-x^2)/(1+x))]]` -/
def P6804767729861843464.Spec : Prop :=
  ∀ n, P6804767729861843464.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P7936100502550238347

`ogf((1+9x-x^2)/(1-x-x^2+x^3))`
-/

namespace A168416.P7936100502550238347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, -1] [1, -1, -1, 1] n

end

end A168416.P7936100502550238347

namespace A168416

/-- `ogf((1+9x-x^2)/(1-x-x^2+x^3))` -/
def P7936100502550238347.Spec : Prop :=
  ∀ n, P7936100502550238347.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P15101916221750699867

`floor(9*n-(a(n-1)-2))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A168416.P15101916221750699867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (9 * n : ℤ) - (a (n - 1) - 2)

end

end A168416.P15101916221750699867

namespace A168416

/-- `floor(9*n-(a(n-1)-2))` -/
def P15101916221750699867.Spec : Prop :=
  ∀ n, P15101916221750699867.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P7189562461691835881

`A017173(ceil(n/2))`
-/

namespace A168416.P7189562461691835881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017173 ⌈(n : ℚ) / 2⌉.toNat

end

end A168416.P7189562461691835881

namespace A168416

/-- `A017173(ceil(n/2))` -/
def P7189562461691835881.Spec : Prop :=
  ∀ n, P7189562461691835881.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P13103669413073584912

`∑[(2-A280193(n))²]`
-/

namespace A168416.P13103669413073584912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A280193 n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168416.P13103669413073584912

namespace A168416

/-- `∑[(2-A280193(n))²]` -/
def P13103669413073584912.Spec : Prop :=
  ∀ n, P13103669413073584912.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P9800505959030719500

`∑[(2-dr(A040093(n)))²]`
-/

namespace A168416.P9800505959030719500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (SequenceMachineLib.digitalRoot (A040093 n) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168416.P9800505959030719500

namespace A168416

/-- `∑[(2-dr(A040093(n)))²]` -/
def P9800505959030719500.Spec : Prop :=
  ∀ n, P9800505959030719500.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P4484751539086008156

`A056991(A163980(n+1))`
-/

namespace A168416.P4484751539086008156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056991 (A163980 (n + 1)).toNat

end

end A168416.P4484751539086008156

namespace A168416

/-- `A056991(A163980(n+1))` -/
def P4484751539086008156.Spec : Prop :=
  ∀ n, P4484751539086008156.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P1848193366274902963

`A082286(n)%A051063(n+1)`
-/

namespace A168416.P1848193366274902963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A082286 n) (A051063 (n + 1))

end

end A168416.P1848193366274902963

namespace A168416

/-- `A082286(n)%A051063(n+1)` -/
def P1848193366274902963.Spec : Prop :=
  ∀ n, P1848193366274902963.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P17501355547532836836

`A128880(n+1)%A017557(n)`
-/

namespace A168416.P17501355547532836836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128880 (n + 1)) (A017557 n)

end

end A168416.P17501355547532836836

namespace A168416

/-- `A128880(n+1)%A017557(n)` -/
def P17501355547532836836.Spec : Prop :=
  ∀ n, P17501355547532836836.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P14804663530499013567

`A169599(n+1)%A017305(n)`
-/

namespace A168416.P14804663530499013567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169599 (n + 1)) (A017305 n)

end

end A168416.P14804663530499013567

namespace A168416

/-- `A169599(n+1)%A017305(n)` -/
def P14804663530499013567.Spec : Prop :=
  ∀ n, P14804663530499013567.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P10262761860115739107

`A159254(n+1)%A171141(n+1)`
-/

namespace A168416.P10262761860115739107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A159254 (n + 1)) (A171141 (n + 1))

end

end A168416.P10262761860115739107

namespace A168416

/-- `A159254(n+1)%A171141(n+1)` -/
def P10262761860115739107.Spec : Prop :=
  ∀ n, P10262761860115739107.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P11130292947884381977

`∑[(A057635(A020639(n+1))/2)²]`
-/

namespace A168416.P11130292947884381977
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((A057635 (A020639 (n + 1)).toNat : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168416.P11130292947884381977

namespace A168416

/-- `∑[(A057635(A020639(n+1))/2)²]` -/
def P11130292947884381977.Spec : Prop :=
  ∀ n, P11130292947884381977.a n = (A168416 (n + 1) : ℚ)

end A168416

/-! ## A168416.P12803955461197731679

`A056020(or(1, n+1))`
-/

namespace A168416.P12803955461197731679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056020 (Nat.lor 1 (n + 1))

end

end A168416.P12803955461197731679

namespace A168416

/-- `A056020(or(1, n+1))` -/
def P12803955461197731679.Spec : Prop :=
  ∀ n, P12803955461197731679.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P1856197321078380272

`A087444(or(1, n+1))`
-/

namespace A168416.P1856197321078380272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087444 (Nat.lor 1 (n + 1))

end

end A168416.P1856197321078380272

namespace A168416

/-- `A087444(or(1, n+1))` -/
def P1856197321078380272.Spec : Prop :=
  ∀ n, P1856197321078380272.a n = A168416 (n + 1)

end A168416

/-! ## A168416.P14461501590555980976

`A166524(or(1, n+1))`
-/

namespace A168416.P14461501590555980976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166524 (Nat.lor 1 (n + 1))

end

end A168416.P14461501590555980976

namespace A168416

/-- `A166524(or(1, n+1))` -/
def P14461501590555980976.Spec : Prop :=
  ∀ n, P14461501590555980976.a n = A168416 (n + 1)

end A168416

/-!
# A168417: Primes q for which 1 concatenated with q^3 (A168327) is prime.

The programs for A168417, there is no canonical definition to state claims against.
-/

/-! ## A168417.P6839794521295840874

`record[A006530(root(A167725(n+2), 3))]`
-/

namespace A168417.P6839794521295840874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.roundAway ((A167725 (n + 2) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168417.P6839794521295840874

/-! ## A168417.P12151139069358719556

`record[A020639(root(A167725(n+2), 3))]`
-/

namespace A168417.P12151139069358719556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((A167725 (n + 2) : ℝ) ^ (1 / (3 : ℝ)))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168417.P12151139069358719556

/-! ## A168417.P18365772537394399596

`p?[A168375(n+1)]`
-/

namespace A168417.P18365772537394399596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168417.P18365772537394399596

/-! ## A168417.P11671805079400385428

`filter[A168375(n+1), A010051(#)]`
-/

namespace A168417.P11671805079400385428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A168417.P11671805079400385428

/-! ## A168417.P2448931333583455068

`filter[A168375(n+1), A323153(#)]`
-/

namespace A168417.P2448931333583455068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A168417.P2448931333583455068

/-! ## A168417.P11641065994770163375

`filter[A168375(n+1), A327861(#)]`
-/

namespace A168417.P11641065994770163375
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A327861 (f1 j).toNat = 1) n)

end

end A168417.P11641065994770163375

/-! ## A168417.P10626350040223759133

`filter[A168375(n+1), A353670(#)]`
-/

namespace A168417.P10626350040223759133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353670 (f1 j).toNat = 1) n)

end

end A168417.P10626350040223759133

/-! ## A168417.P14810217785469358972

`filter[A168375(n+1), A379969(#)]`
-/

namespace A168417.P14810217785469358972
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379969 (f1 j).toNat = 1) n)

end

end A168417.P14810217785469358972

/-! ## A168417.P13864173041032791541

`filter[A168375(n+2), A174897(#)]`
-/

namespace A168417.P13864173041032791541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A168417.P13864173041032791541

/-! ## A168417.P10321040506431980637

`∩[A007645(n+1), A168375(n+1)]`
-/

namespace A168417.P10321040506431980637
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007645 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168417.P10321040506431980637

/-! ## A168417.P6983928426493971684

`∩[A045331(n+1), A168375(n+1)]`
-/

namespace A168417.P6983928426493971684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045331 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168417.P6983928426493971684

/-! ## A168417.P12829525165216593994

`∩[A168375(n+1), A279815(n+1)]`
-/

namespace A168417.P12829525165216593994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168375 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279815 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168417.P12829525165216593994

/-!
# A168418: a(n) = 9*n - a(n-1) - 8 with n>1, a(1)=5.

The programs for A168418, the canonical program `A168418.P1135349340800463269` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168418 has offset 1).

The definition of A168418 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*(n+1)-a(n-1)-8` (program `A168418.P1135349340800463269`, by `A168418.P1135349340800463269.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168418.P1135349340800463269

`9*(n+1)-a(n-1)-8` with `a(0)=5`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168418

/-- `9*(n+1)-a(n-1)-8` -/
def P1135349340800463269.Spec : Prop :=
  ∀ n, P1135349340800463269.a n = A168418 (n + 1)

theorem P1135349340800463269.correct : P1135349340800463269.Spec := by
  intro n
  simp only [A168418, Nat.add_sub_cancel]

end A168418

/-! ## A168418.P12039340402861335855

`a(n-2)+9` with `a(0)=5, a(1)=5`
-/

namespace A168418.P12039340402861335855
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 5] fun n a =>
  a (n - 2) + 9

end

end A168418.P12039340402861335855

namespace A168418

/-- `a(n-2)+9` -/
def P12039340402861335855.Spec : Prop :=
  ∀ n, (P12039340402861335855.a n : ℤ) = A168418 (n + 1)

end A168418

/-! ## A168418.P15003231102230915054

`9*floor(n/2)+5`
-/

namespace A168418.P15003231102230915054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 * ⌊(n : ℚ) / 2⌋ + 5

end

end A168418.P15003231102230915054

namespace A168418

/-- `9*floor(n/2)+5` -/
def P15003231102230915054.Spec : Prop :=
  ∀ n, P15003231102230915054.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P15921887253742029099

`∑[9-a(n-1)]` with `a(0)=5, a(1)=0`
-/

namespace A168418.P15921887253742029099
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 0] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168418.P15921887253742029099

namespace A168418

/-- `∑[9-a(n-1)]` -/
def P15921887253742029099.Spec : Prop :=
  ∀ n, P15921887253742029099.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P14361383788165363264

`∑[∑[ogf((5+4x^2)/(1+x))]]`
-/

namespace A168418.P14361383788165363264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168418.P14361383788165363264

namespace A168418

/-- `∑[∑[ogf((5+4x^2)/(1+x))]]` -/
def P14361383788165363264.Spec : Prop :=
  ∀ n, P14361383788165363264.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P9581078013413259363

`ogf((5+4x^2)/(1-x-x^2+x^3))`
-/

namespace A168418.P9581078013413259363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 0, 4] [1, -1, -1, 1] n

end

end A168418.P9581078013413259363

namespace A168418

/-- `ogf((5+4x^2)/(1-x-x^2+x^3))` -/
def P9581078013413259363.Spec : Prop :=
  ∀ n, P9581078013413259363.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P15197831601298421085

`A168213(or(1, n))`
-/

namespace A168418.P15197831601298421085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168213 (Nat.lor 1 n)

end

end A168418.P15197831601298421085

namespace A168418

/-- `A168213(or(1, n))` -/
def P15197831601298421085.Spec : Prop :=
  ∀ n, P15197831601298421085.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P514580689820565437

`A253195(or(1, n))`
-/

namespace A168418.P514580689820565437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253195 (Nat.lor 1 n)

end

end A168418.P514580689820565437

namespace A168418

/-- `A253195(or(1, n))` -/
def P514580689820565437.Spec : Prop :=
  ∀ n, P514580689820565437.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P7971199448598222077

`A017221(floor(n/2))`
-/

namespace A168418.P7971199448598222077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017221 ⌊(n : ℚ) / 2⌋.toNat

end

end A168418.P7971199448598222077

namespace A168418

/-- `A017221(floor(n/2))` -/
def P7971199448598222077.Spec : Prop :=
  ∀ n, P7971199448598222077.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P962839376952827682

`A156638(or(1, n)+1)`
-/

namespace A168418.P962839376952827682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (Nat.lor 1 n + 1)

end

end A168418.P962839376952827682

namespace A168418

/-- `A156638(or(1, n)+1)` -/
def P962839376952827682.Spec : Prop :=
  ∀ n, P962839376952827682.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P15253621782246020724

`A017173(or(1, n))/2`
-/

namespace A168418.P15253621782246020724
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017173 (Nat.lor 1 n) : ℚ) / 2

end

end A168418.P15253621782246020724

namespace A168418

/-- `A017173(or(1, n))/2` -/
def P15253621782246020724.Spec : Prop :=
  ∀ n, P15253621782246020724.a n = (A168418 (n + 1) : ℚ)

end A168418

/-! ## A168418.P1685523009103163100

`A168213(A028310(n))`
-/

namespace A168418.P1685523009103163100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168213 (A028310 n).toNat

end

end A168418.P1685523009103163100

namespace A168418

/-- `A168213(A028310(n))` -/
def P1685523009103163100.Spec : Prop :=
  ∀ n, P1685523009103163100.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P13933524474566849184

`A168213(A109613(n))`
-/

namespace A168418.P13933524474566849184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168213 (A109613 n).toNat

end

end A168418.P13933524474566849184

namespace A168418

/-- `A168213(A109613(n))` -/
def P13933524474566849184.Spec : Prop :=
  ∀ n, P13933524474566849184.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P2399382378139109719

`A014682(3*A109613(n))`
-/

namespace A168418.P2399382378139109719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (3 * A109613 n).toNat

end

end A168418.P2399382378139109719

namespace A168418

/-- `A014682(3*A109613(n))` -/
def P2399382378139109719.Spec : Prop :=
  ∀ n, P2399382378139109719.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P1442034522299465800

`A156638(2*(A004526(n)+1))`
-/

namespace A168418.P1442034522299465800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (2 * (A004526 n + 1)).toNat

end

end A168418.P1442034522299465800

namespace A168418

/-- `A156638(2*(A004526(n)+1))` -/
def P1442034522299465800.Spec : Prop :=
  ∀ n, P1442034522299465800.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P6928106029966436385

`A156638(A047235(n+1)-2*n)`
-/

namespace A168418.P6928106029966436385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156638 (A047235 (n + 1) - (2 * n : ℤ)).toNat

end

end A168418.P6928106029966436385

namespace A168418

/-- `A156638(A047235(n+1)-2*n)` -/
def P6928106029966436385.Spec : Prop :=
  ∀ n, P6928106029966436385.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P10463302749849451265

`A156796(n+1)%A002798(n+1)`
-/

namespace A168418.P10463302749849451265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156796 (n + 1)) (A002798 (n + 1))

end

end A168418.P10463302749849451265

namespace A168418

/-- `A156796(n+1)%A002798(n+1)` -/
def P10463302749849451265.Spec : Prop :=
  ∀ n, P10463302749849451265.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P11655972175985482855

`A158803(n+1)%A272100(n+1)`
-/

namespace A168418.P11655972175985482855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A158803 (n + 1)) (A272100 (n + 1))

end

end A168418.P11655972175985482855

namespace A168418

/-- `A158803(n+1)%A272100(n+1)` -/
def P11655972175985482855.Spec : Prop :=
  ∀ n, P11655972175985482855.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P8537953121813417942

`A130877(A042948(n+2)-(n+2))`
-/

namespace A168418.P8537953121813417942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130877 (A042948 (n + 2) - (n + 2 : ℤ)).toNat

end

end A168418.P8537953121813417942

namespace A168418

/-- `A130877(A042948(n+2)-(n+2))` -/
def P8537953121813417942.Spec : Prop :=
  ∀ n, P8537953121813417942.a n = A168418 (n + 1)

end A168418

/-! ## A168418.P11228356021050687027

`A120740(or(1, n+2))`
-/

namespace A168418.P11228356021050687027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120740 (Nat.lor 1 (n + 2))

end

end A168418.P11228356021050687027

namespace A168418

/-- `A120740(or(1, n+2))` -/
def P11228356021050687027.Spec : Prop :=
  ∀ n, P11228356021050687027.a n = A168418 (n + 1)

end A168418

/-!
# A168419: a(n) = 9*floor(n/2).

The programs for A168419, the canonical program `A168419.P15805578261380064010` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168419 has offset 1).

The definition of A168419 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9*floor((n+1)/2)` (program `A168419.P15805578261380064010`, by `A168419.P15805578261380064010.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168419.P15805578261380064010

`9*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168419

/-- `9*floor((n+1)/2)` -/
def P15805578261380064010.Spec : Prop :=
  ∀ n, P15805578261380064010.a n = A168419 (n + 1)

theorem P15805578261380064010.correct : P15805578261380064010.Spec := by
  intro n
  simp only [A168419, Nat.add_sub_cancel]

end A168419

/-! ## A168419.P14105002441236605609

`9*n-a(n-1)` with `a(0)=0`
-/

namespace A168419.P14105002441236605609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (9 * n : ℤ) - a (n - 1)

end

end A168419.P14105002441236605609

namespace A168419

/-- `9*n-a(n-1)` -/
def P14105002441236605609.Spec : Prop :=
  ∀ n, P14105002441236605609.a n = A168419 (n + 1)

end A168419

/-! ## A168419.P13631864845790986958

`∑[9*n%2]`
-/

namespace A168419.P13631864845790986958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P13631864845790986958

namespace A168419

/-- `∑[9*n%2]` -/
def P13631864845790986958.Spec : Prop :=
  ∀ n, (P13631864845790986958.a n : ℤ) = A168419 (n + 1)

end A168419

/-! ## A168419.P3661865713046563487

`∑[9*and(1, n)]`
-/

namespace A168419.P3661865713046563487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P3661865713046563487

namespace A168419

/-- `∑[9*and(1, n)]` -/
def P3661865713046563487.Spec : Prop :=
  ∀ n, (P3661865713046563487.a n : ℤ) = A168419 (n + 1)

end A168419

/-! ## A168419.P9976223398754035741

`∑[lcm(9, and(1, n))]`
-/

namespace A168419.P9976223398754035741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 9 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P9976223398754035741

namespace A168419

/-- `∑[lcm(9, and(1, n))]` -/
def P9976223398754035741.Spec : Prop :=
  ∀ n, (P9976223398754035741.a n : ℤ) = A168419 (n + 1)

end A168419

/-! ## A168419.P7177410641679379246

`∑[(lcm(3, n)%6)²]`
-/

namespace A168419.P7177410641679379246
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 3 n % 6) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P7177410641679379246

namespace A168419

/-- `∑[(lcm(3, n)%6)²]` -/
def P7177410641679379246.Spec : Prop :=
  ∀ n, (P7177410641679379246.a n : ℤ) = A168419 (n + 1)

end A168419

/-! ## A168419.P15770346168715034140

`∑[xor(2, gcd(2, n))²]`
-/

namespace A168419.P15770346168715034140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 (Nat.gcd 2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P15770346168715034140

namespace A168419

/-- `∑[xor(2, gcd(2, n))²]` -/
def P15770346168715034140.Spec : Prop :=
  ∀ n, (P15770346168715034140.a n : ℤ) = A168419 (n + 1)

end A168419

/-! ## A168419.P14233524785482591064

`∑[and(9, -n^4)]`
-/

namespace A168419.P14233524785482591064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 9 (-(n ^ 4 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P14233524785482591064

namespace A168419

/-- `∑[and(9, -n^4)]` -/
def P14233524785482591064.Spec : Prop :=
  ∀ n, P14233524785482591064.a n = A168419 (n + 1)

end A168419

/-! ## A168419.P12909642927459845418

`∑[9*char[or(1, n)]]`
-/

namespace A168419.P12909642927459845418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P12909642927459845418

namespace A168419

/-- `∑[9*char[or(1, n)]]` -/
def P12909642927459845418.Spec : Prop :=
  ∀ n, (P12909642927459845418.a n : ℤ) = A168419 (n + 1)

end A168419

/-! ## A168419.P13090164827805342272

`∑[and(3, -n²)²]`
-/

namespace A168419.P13090164827805342272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 3 (-(n ^ 2 : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P13090164827805342272

namespace A168419

/-- `∑[and(3, -n²)²]` -/
def P13090164827805342272.Spec : Prop :=
  ∀ n, P13090164827805342272.a n = A168419 (n + 1)

end A168419

/-! ## A168419.P11706474340608249451

`a(n-2)+9` with `a(0)=0, a(1)=9`
-/

namespace A168419.P11706474340608249451
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 9] fun n a =>
  a (n - 2) + 9

end

end A168419.P11706474340608249451

namespace A168419

/-- `a(n-2)+9` -/
def P11706474340608249451.Spec : Prop :=
  ∀ n, (P11706474340608249451.a n : ℤ) = A168419 (n + 1)

end A168419

/-! ## A168419.P6014440561983986386

`∑[9-a(n-1)]` with `a(0)=0`
-/

namespace A168419.P6014440561983986386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  9 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P6014440561983986386

namespace A168419

/-- `∑[9-a(n-1)]` -/
def P6014440561983986386.Spec : Prop :=
  ∀ n, P6014440561983986386.a n = A168419 (n + 1)

end A168419

/-! ## A168419.P1441247613163554961

`∑[(4-gcd(4, n²))²]`
-/

namespace A168419.P1441247613163554961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 - (Nat.gcd 4 (n ^ 2) : ℤ)) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P1441247613163554961

namespace A168419

/-- `∑[(4-gcd(4, n²))²]` -/
def P1441247613163554961.Spec : Prop :=
  ∀ n, P1441247613163554961.a n = A168419 (n + 1)

end A168419

/-! ## A168419.P13646403083597026199

`∑[9*C(n, or(1, n))]`
-/

namespace A168419.P13646403083597026199
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9 * Nat.choose n (Nat.lor 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P13646403083597026199

namespace A168419

/-- `∑[9*C(n, or(1, n))]` -/
def P13646403083597026199.Spec : Prop :=
  ∀ n, (P13646403083597026199.a n : ℤ) = A168419 (n + 1)

end A168419

/-! ## A168419.P4261598338707551323

`∑[∑[ogf(9x/(1+x))]]`
-/

namespace A168419.P4261598338707551323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P4261598338707551323

namespace A168419

/-- `∑[∑[ogf(9x/(1+x))]]` -/
def P4261598338707551323.Spec : Prop :=
  ∀ n, P4261598338707551323.a n = A168419 (n + 1)

end A168419

/-! ## A168419.P17147574484426951524

`ogf(9x/(1-x-x^2+x^3))`
-/

namespace A168419.P17147574484426951524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9] [1, -1, -1, 1] n

end

end A168419.P17147574484426951524

namespace A168419

/-- `ogf(9x/(1-x-x^2+x^3))` -/
def P17147574484426951524.Spec : Prop :=
  ∀ n, P17147574484426951524.a n = A168419 (n + 1)

end A168419

/-! ## A168419.P12994098300081162061

`9-floor(-a(n-2))` with `a(0)=0, a(1)=9`

`floor` is left out, it is the identity on integers.
-/

namespace A168419.P12994098300081162061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n a =>
  9 - (-a (n - 2))

end

end A168419.P12994098300081162061

namespace A168419

/-- `9-floor(-a(n-2))` -/
def P12994098300081162061.Spec : Prop :=
  ∀ n, P12994098300081162061.a n = A168419 (n + 1)

end A168419

/-! ## A168419.P13302337149773263400

`9-ceil(-a(n-2))` with `a(0)=0, a(1)=9`

`ceil` is left out, it is the identity on integers.
-/

namespace A168419.P13302337149773263400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n a =>
  9 - (-a (n - 2))

end

end A168419.P13302337149773263400

namespace A168419

/-- `9-ceil(-a(n-2))` -/
def P13302337149773263400.Spec : Prop :=
  ∀ n, P13302337149773263400.a n = A168419 (n + 1)

end A168419

/-! ## A168419.P6512773843327055238

`9-round(-a(n-2))` with `a(0)=0, a(1)=9`

`round` is left out, it is the identity on integers.
-/

namespace A168419.P6512773843327055238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 9] fun n a =>
  9 - (-a (n - 2))

end

end A168419.P6512773843327055238

namespace A168419

/-- `9-round(-a(n-2))` -/
def P6512773843327055238.Spec : Prop :=
  ∀ n, P6512773843327055238.a n = A168419 (n + 1)

end A168419

/-! ## A168419.P10527075196793138022

`∑[dr((3*val(n+1, 2))²)]`
-/

namespace A168419.P10527075196793138022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((3 * SequenceMachineLib.valuation (n + 1) 2) ^ 2 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168419.P10527075196793138022

namespace A168419

/-- `∑[dr((3*val(n+1, 2))²)]` -/
def P10527075196793138022.Spec : Prop :=
  ∀ n, (P10527075196793138022.a n : ℤ) = A168419 (n + 1)

end A168419

/-!
# A168420: a(n) = 4 + 10*floor(n/2).

The programs for A168420, the canonical program `A168420.P14372258209542025926` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168420 has offset 1).

The definition of A168420 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4+10*floor((n+1)/2)` (program `A168420.P14372258209542025926`, by `A168420.P14372258209542025926.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168420.P14372258209542025926

`4+10*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168420

/-- `4+10*floor((n+1)/2)` -/
def P14372258209542025926.Spec : Prop :=
  ∀ n, P14372258209542025926.a n = A168420 (n + 1)

theorem P14372258209542025926.correct : P14372258209542025926.Spec := by
  intro n
  simp only [A168420, Nat.add_sub_cancel]

end A168420

/-! ## A168420.P8190099336487582338

`2*A168278(n+1)`
-/

namespace A168420.P8190099336487582338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168278 (n + 1)

end

end A168420.P8190099336487582338

namespace A168420

/-- `2*A168278(n+1)` -/
def P8190099336487582338.Spec : Prop :=
  ∀ n, P8190099336487582338.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P9532372570022646620

`xor(1, 5*or(1, n+1))`
-/

namespace A168420.P9532372570022646620
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (5 * Nat.lor 1 (n + 1))

end

end A168420.P9532372570022646620

namespace A168420

/-- `xor(1, 5*or(1, n+1))` -/
def P9532372570022646620.Spec : Prop :=
  ∀ n, (P9532372570022646620.a n : ℤ) = A168420 (n + 1)

end A168420

/-! ## A168420.P2149037245211904493

`∑[abs(a(n-2))]` with `a(0)=4, a(1)=10, a(2)=0`
-/

namespace A168420.P2149037245211904493
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [4, 10, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168420.P2149037245211904493

namespace A168420

/-- `∑[abs(a(n-2))]` -/
def P2149037245211904493.Spec : Prop :=
  ∀ n, (P2149037245211904493.a n : ℤ) = A168420 (n + 1)

end A168420

/-! ## A168420.P10876873999002458875

`∑[10-a(n-1)]` with `a(0)=4, a(1)=10`
-/

namespace A168420.P10876873999002458875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4, 10] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168420.P10876873999002458875

namespace A168420

/-- `∑[10-a(n-1)]` -/
def P10876873999002458875.Spec : Prop :=
  ∀ n, P10876873999002458875.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P16405890650994249159

`∑[∑[ogf((4+10x-4x^2)/(1+x))]]`
-/

namespace A168420.P16405890650994249159
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 10, -4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168420.P16405890650994249159

namespace A168420

/-- `∑[∑[ogf((4+10x-4x^2)/(1+x))]]` -/
def P16405890650994249159.Spec : Prop :=
  ∀ n, P16405890650994249159.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P8493960815963423879

`ogf((4+10x-4x^2)/(1-x-x^2+x^3))`
-/

namespace A168420.P8493960815963423879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, 10, -4] [1, -1, -1, 1] n

end

end A168420.P8493960815963423879

namespace A168420

/-- `ogf((4+10x-4x^2)/(1-x-x^2+x^3))` -/
def P8493960815963423879.Spec : Prop :=
  ∀ n, P8493960815963423879.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P3747954569669905845

`A017317(ceil(n/2))`
-/

namespace A168420.P3747954569669905845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017317 ⌈(n : ℚ) / 2⌉.toNat

end

end A168420.P3747954569669905845

namespace A168420

/-- `A017317(ceil(n/2))` -/
def P3747954569669905845.Spec : Prop :=
  ∀ n, P3747954569669905845.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P13585997159788559119

`2*(∑[A010676(n)]+2)`
-/

namespace A168420.P13585997159788559119
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A168420.P13585997159788559119

namespace A168420

/-- `2*(∑[A010676(n)]+2)` -/
def P13585997159788559119.Spec : Prop :=
  ∀ n, P13585997159788559119.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P13931417823250720388

`∑[2*(A049071(n)+2)]`
-/

namespace A168420.P13931417823250720388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A049071 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168420.P13931417823250720388

namespace A168420

/-- `∑[2*(A049071(n)+2)]` -/
def P13931417823250720388.Spec : Prop :=
  ∀ n, P13931417823250720388.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P12398486139072822741

`2*(A168282(n+1)+1)`
-/

namespace A168420.P12398486139072822741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168282 (n + 1) + 1)

end

end A168420.P12398486139072822741

namespace A168420

/-- `2*(A168282(n+1)+1)` -/
def P12398486139072822741.Spec : Prop :=
  ∀ n, P12398486139072822741.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P17149600739841680519

`2*(A168209(n+1)-1)`
-/

namespace A168420.P17149600739841680519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168209 (n + 1) - 1)

end

end A168420.P17149600739841680519

namespace A168420

/-- `2*(A168209(n+1)-1)` -/
def P17149600739841680519.Spec : Prop :=
  ∀ n, P17149600739841680519.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P16193272978045416856

`2*(A168284(n+1)+2)`
-/

namespace A168420.P16193272978045416856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168284 (n + 1) + 2)

end

end A168420.P16193272978045416856

namespace A168420

/-- `2*(A168284(n+1)+2)` -/
def P16193272978045416856.Spec : Prop :=
  ∀ n, P16193272978045416856.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P17870545285822008423

`xor(1, 5*A109613(n+1))`
-/

namespace A168420.P17870545285822008423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (5 * A109613 (n + 1))

end

end A168420.P17870545285822008423

namespace A168420

/-- `xor(1, 5*A109613(n+1))` -/
def P17870545285822008423.Spec : Prop :=
  ∀ n, P17870545285822008423.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P3215625685707792869

`2*A016873(n-A004526(n))`
-/

namespace A168420.P3215625685707792869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016873 ((n : ℤ) - A004526 n).toNat

end

end A168420.P3215625685707792869

namespace A168420

/-- `2*A016873(n-A004526(n))` -/
def P3215625685707792869.Spec : Prop :=
  ∀ n, P3215625685707792869.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P5438711503523553126

`2*A016873(A007494(n)-n)`
-/

namespace A168420.P5438711503523553126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016873 (A007494 n - (n : ℤ)).toNat

end

end A168420.P5438711503523553126

namespace A168420

/-- `2*A016873(A007494(n)-n)` -/
def P5438711503523553126.Spec : Prop :=
  ∀ n, P5438711503523553126.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P16289346043985365866

`A127228(n+4)%A166621(n+1)`
-/

namespace A168420.P16289346043985365866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127228 (n + 4)) (A166621 (n + 1))

end

end A168420.P16289346043985365866

namespace A168420

/-- `A127228(n+4)%A166621(n+1)` -/
def P16289346043985365866.Spec : Prop :=
  ∀ n, P16289346043985365866.a n = A168420 (n + 1)

end A168420

/-! ## A168420.P1959109895713477607

`A127229(n+5)%A166621(n+1)`
-/

namespace A168420.P1959109895713477607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127229 (n + 5)) (A166621 (n + 1))

end

end A168420.P1959109895713477607

namespace A168420

/-- `A127229(n+5)%A166621(n+1)` -/
def P1959109895713477607.Spec : Prop :=
  ∀ n, P1959109895713477607.a n = A168420 (n + 1)

end A168420

/-!
# A168421: Small Associated Ramanujan Prime, p_(i-n).

The programs for A168421, there is no canonical definition to state claims against.
-/

/-! ## A168421.P15415419866611234632

`A000040(A179196(n+1)-n)`
-/

namespace A168421.P15415419866611234632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A179196 (n + 1) - (n : ℤ)).toNat

end

end A168421.P15415419866611234632

/-! ## A168421.P12944789610658578500

`A006093(A179196(n+1)-n)+1`
-/

namespace A168421.P12944789610658578500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A179196 (n + 1) - (n : ℤ)).toNat + 1

end

end A168421.P12944789610658578500

/-! ## A168421.P16368019902162536314

`A151800(A084139(n))`
-/

namespace A168421.P16368019902162536314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A084139 n).toNat

end

end A168421.P16368019902162536314

/-! ## A168421.P16863527932940401581

`A151800(A084140(n+1)-1)`
-/

namespace A168421.P16863527932940401581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A084140 (n + 1) - 1).toNat

end

end A168421.P16863527932940401581

/-! ## A168421.P16481043855394718616

`A079953(A179196(n+1))`
-/

namespace A168421.P16481043855394718616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079953 (A179196 (n + 1)).toNat

end

end A168421.P16481043855394718616

/-! ## A168421.P8922602814741084855

`A000040(A000720(A104272(n+1))-n)`
-/

namespace A168421.P8922602814741084855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A104272 (n + 1)).toNat - (n : ℤ)).toNat

end

end A168421.P8922602814741084855

/-! ## A168421.P11546779390200836304

`A000040(A000720(A168425(n+1))-(n+1))`
-/

namespace A168421.P11546779390200836304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A168425 (n + 1)).toNat - (n + 1 : ℤ)).toNat

end

end A168421.P11546779390200836304

/-! ## A168421.P1009985689247372765

`A007918(A084140(n+1))`
-/

namespace A168421.P1009985689247372765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007918 (A084140 (n + 1)).toNat

end

end A168421.P1009985689247372765

/-! ## A168421.P17543437728102032291

`A308052(A104272(n+1))`
-/

namespace A168421.P17543437728102032291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A104272 (n + 1)).toNat

end

end A168421.P17543437728102032291

/-! ## A168421.P16408797606132391442

`A308052(A168425(n+1))`
-/

namespace A168421.P16408797606132391442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308052 (A168425 (n + 1)).toNat

end

end A168421.P16408797606132391442

/-! ## A168421.P12192413681998206601

`A000040(A056239(A104272(n+1))-n)`
-/

namespace A168421.P12192413681998206601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A056239 (A104272 (n + 1)).toNat - (n : ℤ)).toNat

end

end A168421.P12192413681998206601

/-!
# A168422: Number triangle with row sums given by quadruple factorial numbers A001813.

The programs for A168422, there is no canonical definition to state claims against.
-/

/-! ## A168422.P15346311413772233155

`A360441(n)/A059268(n)`
-/

namespace A168422.P15346311413772233155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A360441 n : ℚ) / (A059268 n : ℚ)

end

end A168422.P15346311413772233155

/-!
# A168423: Triangle read by rows: expansion of e.g.f. (1 - x)/(exp(t)*(1 - x*exp(t*(1 - x)))).

The programs for A168423, there is no canonical definition to state claims against.
-/

/-! ## A168423.P14204720476617456361

`A228637(A228161(n)+A093178(n))`
-/

namespace A168423.P14204720476617456361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228637 (A228161 n + A093178 n).toNat

end

end A168423.P14204720476617456361

/-! ## A168423.P9687868778262076384

`and(A097807(n), A106478(A259625(n+1)))`
-/

namespace A168423.P9687868778262076384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A097807 n) (A106478 (A259625 (n + 1)).toNat)

end

end A168423.P9687868778262076384

/-! ## A168423.P11686964615508450302

`A304906(A284697(A175708(n+1)))^A095859(n+1)`
-/

namespace A168423.P11686964615508450302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A304906 (A284697 (A175708 (n + 1)).toNat).toNat : ℚ) ^ (A095859 (n + 1) : ℤ)

end

end A168423.P11686964615508450302

/-!
# A168425: Large Associated Ramanujan Prime, p_i.

The programs for A168425, there is no canonical definition to state claims against.
-/

/-! ## A168425.P12823231373582970541

`A151800(A104272(n+1))`
-/

namespace A168425.P12823231373582970541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151800 (A104272 (n + 1)).toNat

end

end A168425.P12823231373582970541

/-! ## A168425.P14714705620387121348

`A104272(n+1)+A001223(A179196(n+1))`
-/

namespace A168425.P14714705620387121348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1) + A001223 (A179196 (n + 1)).toNat

end

end A168425.P14714705620387121348

/-! ## A168425.P2719161034912660557

`A065091(A179196(n+1))`
-/

namespace A168425.P2719161034912660557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A179196 (n + 1)).toNat

end

end A168425.P2719161034912660557

/-! ## A168425.P9190798669292586254

`A000040(A179196(n+1)+1)`
-/

namespace A168425.P9190798669292586254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A179196 (n + 1) + 1).toNat

end

end A168425.P9190798669292586254

/-! ## A168425.P13019728624039329285

`A093515(2*A179196(n+1))`
-/

namespace A168425.P13019728624039329285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (2 * A179196 (n + 1)).toNat

end

end A168425.P13019728624039329285

/-! ## A168425.P11850987707252718425

`A006093(A179196(n+1)+1)+1`
-/

namespace A168425.P11850987707252718425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A179196 (n + 1) + 1).toNat + 1

end

end A168425.P11850987707252718425

/-! ## A168425.P13763023529704161238

`A000040(A000720(A168421(n+1))+n+1)`
-/

namespace A168425.P13763023529704161238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A168421 (n + 1)).toNat + (n + 1 : ℤ)).toNat

end

end A168425.P13763023529704161238

/-! ## A168425.P10848095816114627678

`A000040(A000720(A104272(n+1))+1)`
-/

namespace A168425.P10848095816114627678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000720 (A104272 (n + 1)).toNat + 1).toNat

end

end A168425.P10848095816114627678

/-! ## A168425.P10076305729718486882

`A194186(n+2)+A080359(n+2)`
-/

namespace A168425.P10076305729718486882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194186 (n + 2) + A080359 (n + 2)

end

end A168425.P10076305729718486882

/-! ## A168425.P17758156549689535974

`A104272(n+2)-A194184(n+2)`
-/

namespace A168425.P17758156549689535974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 2) - A194184 (n + 2)

end

end A168425.P17758156549689535974

/-! ## A168425.P14716288097658284084

`A080359(n+2)+A194217(n+2)-A194184(n+2)`
-/

namespace A168425.P14716288097658284084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080359 (n + 2) + (A194217 (n + 2) - A194184 (n + 2))

end

end A168425.P14716288097658284084

/-! ## A168425.P9941225404777110275

`A003961(p?[A104272(n+1)])`
-/

namespace A168425.P9941225404777110275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104272 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A168425.P9941225404777110275

/-! ## A168425.P7348464569292209851

`A003961(abs(A104272(n+1)-(1-n))-n+1)`
-/

namespace A168425.P7348464569292209851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (|A104272 (n + 1) - (1 - (n : ℤ))| - (n : ℤ) + 1).toNat

end

end A168425.P7348464569292209851

/-! ## A168425.P15392534572600029627

`A000040(A056239(A104272(n+1))+1)`
-/

namespace A168425.P15392534572600029627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A056239 (A104272 (n + 1)).toNat + 1).toNat

end

end A168425.P15392534572600029627

/-! ## A168425.P1005463709420357768

`A003961(2*A104272(n+1)-A104272(n+1))`
-/

namespace A168425.P1005463709420357768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (2 * A104272 (n + 1) - A104272 (n + 1)).toNat

end

end A168425.P1005463709420357768

/-!
# A168426: Square array of denominators of a truncated array of Bernoulli twin numbers (A168516), read by antidiagonals.

The programs for A168426, there is no canonical definition to state claims against.
-/

/-! ## A168426.P4844990394072962592

`A085738(eq[0, A103451(n)])`
-/

namespace A168426.P4844990394072962592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A168426.P4844990394072962592

/-! ## A168426.P13075058149098284792

`A085738(eq[0, A145677(n)])`
-/

namespace A168426.P13075058149098284792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145677 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A168426.P13075058149098284792

/-! ## A168426.P8932224660243783975

`A085738(eq[0, A158821(n)])`
-/

namespace A168426.P8932224660243783975
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158821 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A168426.P8932224660243783975

/-! ## A168426.P8930209812295569077

`A085738(lt[0, A014473(n)])`
-/

namespace A168426.P8930209812295569077
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A168426.P8930209812295569077

/-! ## A168426.P8184294340912917062

`A085738(lt[1, A154983(n)])`
-/

namespace A168426.P8184294340912917062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154983 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A168426.P8184294340912917062

/-!
# A168427: a(n) = 3^n mod 30.

The programs for A168427, the canonical program `A168427.P14330289314272055185` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168427 has offset 0).

The definition of A168427 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168427.P14330289314272055185

`a(n-1)-a(n-2)+a(n-3)` with `a(0)=1, a(1)=3, a(2)=9, a(3)=27`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168427

/-- `a(n-1)-a(n-2)+a(n-3)` -/
def P14330289314272055185.Spec : Prop :=
  ∀ n, P14330289314272055185.a n = A168427 n

theorem P14330289314272055185.correct : P14330289314272055185.Spec := by
  intro n
  simp only [A168427]

end A168427

/-!
# A168428: a(n) = 4^n mod 10.

The programs for A168428, the canonical program `A168428.P13503316147716156565` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168428 has offset 0).

The definition of A168428 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168428.P13503316147716156565

`a(n-2)` with `a(0)=1, a(1)=4, a(2)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168428

/-- `a(n-2)` -/
def P13503316147716156565.Spec : Prop :=
  ∀ n, (P13503316147716156565.a n : ℤ) = A168428 n

theorem P13503316147716156565.correct : P13503316147716156565.Spec := by
  intro n
  simp only [A168428]

end A168428

/-!
# A168429: a(n) = 4^n mod 11.

The programs for A168429, the canonical program `A168429.P13969448444234501064` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168429 has offset 0).

The definition of A168429 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168429.P13969448444234501064

`a(n-5)` with `a(0)=1, a(1)=4, a(2)=5, a(3)=9, a(4)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168429

/-- `a(n-5)` -/
def P13969448444234501064.Spec : Prop :=
  ∀ n, (P13969448444234501064.a n : ℤ) = A168429 n

theorem P13969448444234501064.correct : P13969448444234501064.Spec := by
  intro n
  simp only [A168429]

end A168429

/-!
# A168430: a(n) = 4^n mod 13.

The programs for A168430, the canonical program `A168430.P11778048569321612590` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168430 has offset 0).

The definition of A168430 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168430.P11778048569321612590

`a(n-6)` with `a(0)=1, a(1)=4, a(2)=3, a(3)=12, a(4)=9, a(5)=10`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168430

/-- `a(n-6)` -/
def P11778048569321612590.Spec : Prop :=
  ∀ n, (P11778048569321612590.a n : ℤ) = A168430 n

theorem P11778048569321612590.correct : P11778048569321612590.Spec := by
  intro n
  simp only [A168430]

end A168430

/-!
# A168431: General number of transpositions of n objects with repetitions.

The programs for A168431, there is no canonical definition to state claims against.
-/

/-! ## A168431.P14387724919492735298

`record[A327801(n)-floor(atan(n))]`
-/

namespace A168431.P14387724919492735298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327801 n - ⌊Real.arctan (n : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168431.P14387724919492735298

/-!
# A168432: a(n) = n^5*(n^7 + 1)/2.

The programs for A168432, the canonical program `A168432.P8896843294208155502` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168432 has offset 0).

The definition of A168432 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168432.P8896843294208155502

`n^5*(n^7+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168432

/-- `n^5*(n^7+1)/2` -/
def P8896843294208155502.Spec : Prop :=
  ∀ n, P8896843294208155502.a n = (A168432 n : ℚ)

end A168432

/-! ## A168432.P13423472082294270580

`lcm(A168067(n), A168351(n))`
-/

namespace A168432.P13423472082294270580
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168067 n) (A168351 n)

end

end A168432.P13423472082294270580

namespace A168432

/-- `lcm(A168067(n), A168351(n))` -/
def P13423472082294270580.Spec : Prop :=
  ∀ n, (P13423472082294270580.a n : ℤ) = A168432 n

end A168432

/-! ## A168432.P8916530699060486624

`abs(n*A001489(n)*A168188(n))`
-/

namespace A168432.P8916530699060486624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A001489 n * A168188 n)|

end

end A168432.P8916530699060486624

namespace A168432

/-- `abs(n*A001489(n)*A168188(n))` -/
def P8916530699060486624.Spec : Prop :=
  ∀ n, P8916530699060486624.a n = A168432 n

end A168432

/-! ## A168432.P11736883441680754672

`A168351(n)+A085744(n²)`
-/

namespace A168432.P11736883441680754672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168351 n + A085744 (n ^ 2)

end

end A168432.P11736883441680754672

namespace A168432

/-- `A168351(n)+A085744(n²)` -/
def P11736883441680754672.Spec : Prop :=
  ∀ n, P11736883441680754672.a n = A168432 n

end A168432

/-!
# A168433: One half of (n-th sum of primes between successive pairs of twin primes minus n-th number of primes between successive pairs of twin primes).

The programs for A168433, there is no canonical definition to state claims against.
-/

/-! ## A168433.P5159070406151745531

`(A078731(n+1)-A048614(n+1))/2`
-/

namespace A168433.P5159070406151745531
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078731 (n + 1) - A048614 (n + 1) : ℚ) / 2

end

end A168433.P5159070406151745531

/-! ## A168433.P3900938112381515314

`A001281(A078731(n+1)-A048614(n+1))`
-/

namespace A168433.P3900938112381515314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A078731 (n + 1) - A048614 (n + 1)).toNat

end

end A168433.P3900938112381515314

/-! ## A168433.P4806541562740646603

`A004525(A078731(n+1)-A048614(n+1))`
-/

namespace A168433.P4806541562740646603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A078731 (n + 1) - A048614 (n + 1)).toNat

end

end A168433.P4806541562740646603

/-! ## A168433.P16119379832298363329

`A004526(A078731(n+1)-A048614(n+1))`
-/

namespace A168433.P16119379832298363329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A078731 (n + 1) - A048614 (n + 1)).toNat

end

end A168433.P16119379832298363329

/-! ## A168433.P14577702728307094678

`A026741(A078731(n+1)-A048614(n+1))`
-/

namespace A168433.P14577702728307094678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A078731 (n + 1) - A048614 (n + 1)).toNat

end

end A168433.P14577702728307094678

/-!
# A168434: n-th prime minus number of distinct transpositions of digits of n-th prime.

The programs for A168434, there is no canonical definition to state claims against.
-/

/-! ## A168434.P11423061356910761906

`A073813(A073814(n+1))-A138902(A000040(n+1))`
-/

namespace A168434.P11423061356910761906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073813 (A073814 (n + 1)).toNat - A138902 (A000040 (n + 1)).toNat

end

end A168434.P11423061356910761906

/-! ## A168434.P4050636261814640674

`A000040(n+1)-A276502(Δ[A007504(n)])`
-/

namespace A168434.P4050636261814640674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A276502 (f1 (n + 1) - f1 n).toNat

end

end A168434.P4050636261814640674

/-! ## A168434.P17110461928245303883

`A000040(n+1)-A276502(record[A051698(n)])`
-/

namespace A168434.P17110461928245303883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A276502 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A168434.P17110461928245303883

/-! ## A168434.P15511685587098584703

`A000040(n+1)-A276502(A006005(n+1))`
-/

namespace A168434.P15511685587098584703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A276502 (A006005 (n + 1)).toNat

end

end A168434.P15511685587098584703

/-! ## A168434.P11161009341582382027

`A000040(n+1)-A276502(A063884(n+1))`
-/

namespace A168434.P11161009341582382027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - A276502 (A063884 (n + 1)).toNat

end

end A168434.P11161009341582382027

/-!
# A168437: a(n) = 3 + 10*floor(n/2).

The programs for A168437, the canonical program `A168437.P6944547069059475826` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168437 has offset 1).

The definition of A168437 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3+10*floor((n+1)/2)` (program `A168437.P6944547069059475826`, by `A168437.P6944547069059475826.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168437.P6944547069059475826

`3+10*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168437

/-- `3+10*floor((n+1)/2)` -/
def P6944547069059475826.Spec : Prop :=
  ∀ n, P6944547069059475826.a n = A168437 (n + 1)

theorem P6944547069059475826.correct : P6944547069059475826.Spec := by
  intro n
  simp only [A168437, Nat.add_sub_cancel]

end A168437

/-! ## A168437.P12797018228813058339

`∑[abs(a(n-2))]` with `a(0)=3, a(1)=10, a(2)=0`
-/

namespace A168437.P12797018228813058339
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 10, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168437.P12797018228813058339

namespace A168437

/-- `∑[abs(a(n-2))]` -/
def P12797018228813058339.Spec : Prop :=
  ∀ n, (P12797018228813058339.a n : ℤ) = A168437 (n + 1)

end A168437

/-! ## A168437.P11410229351625887491

`∑[10-a(n-1)]` with `a(0)=3, a(1)=10`
-/

namespace A168437.P11410229351625887491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3, 10] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168437.P11410229351625887491

namespace A168437

/-- `∑[10-a(n-1)]` -/
def P11410229351625887491.Spec : Prop :=
  ∀ n, P11410229351625887491.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P2778296059024029287

`∑[∑[ogf((3+10x-3x^2)/(1+x))]]`
-/

namespace A168437.P2778296059024029287
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 10, -3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168437.P2778296059024029287

namespace A168437

/-- `∑[∑[ogf((3+10x-3x^2)/(1+x))]]` -/
def P2778296059024029287.Spec : Prop :=
  ∀ n, P2778296059024029287.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P10778246578852668498

`ogf((3+10x-3x^2)/(1-x-x^2+x^3))`
-/

namespace A168437.P10778246578852668498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, 10, -3] [1, -1, -1, 1] n

end

end A168437.P10778246578852668498

namespace A168437

/-- `ogf((3+10x-3x^2)/(1-x-x^2+x^3))` -/
def P10778246578852668498.Spec : Prop :=
  ∀ n, P10778246578852668498.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P12363825999217048028

`A017305(ceil(n/2))`
-/

namespace A168437.P12363825999217048028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017305 ⌈(n : ℚ) / 2⌉.toNat

end

end A168437.P12363825999217048028

namespace A168437

/-- `A017305(ceil(n/2))` -/
def P12363825999217048028.Spec : Prop :=
  ∀ n, P12363825999217048028.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P6905364681892176739

`xor(1, A168461(n+1)+2)`
-/

namespace A168437.P6905364681892176739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A168461 (n + 1) + 2)

end

end A168437.P6905364681892176739

namespace A168437

/-- `xor(1, A168461(n+1)+2)` -/
def P6905364681892176739.Spec : Prop :=
  ∀ n, P6905364681892176739.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P11494879022526232282

`A063226(or(1, n+1))`
-/

namespace A168437.P11494879022526232282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (Nat.lor 1 (n + 1))

end

end A168437.P11494879022526232282

namespace A168437

/-- `A063226(or(1, n+1))` -/
def P11494879022526232282.Spec : Prop :=
  ∀ n, P11494879022526232282.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P1521232457146977351

`A075326(or(1, n+1))`
-/

namespace A168437.P1521232457146977351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075326 (Nat.lor 1 (n + 1))

end

end A168437.P1521232457146977351

namespace A168437

/-- `A075326(or(1, n+1))` -/
def P1521232457146977351.Spec : Prop :=
  ∀ n, P1521232457146977351.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P5045605175045271213

`A100531(or(1, n+1))`
-/

namespace A168437.P5045605175045271213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100531 (Nat.lor 1 (n + 1))

end

end A168437.P5045605175045271213

namespace A168437

/-- `A100531(or(1, n+1))` -/
def P5045605175045271213.Spec : Prop :=
  ∀ n, P5045605175045271213.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P9086967168127890916

`A235089(or(1, n+1))`
-/

namespace A168437.P9086967168127890916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235089 (Nat.lor 1 (n + 1))

end

end A168437.P9086967168127890916

namespace A168437

/-- `A235089(or(1, n+1))` -/
def P9086967168127890916.Spec : Prop :=
  ∀ n, P9086967168127890916.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P15939145901831185886

`A268044(or(1, n+1))`
-/

namespace A168437.P15939145901831185886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268044 (Nat.lor 1 (n + 1))

end

end A168437.P15939145901831185886

namespace A168437

/-- `A268044(or(1, n+1))` -/
def P15939145901831185886.Spec : Prop :=
  ∀ n, P15939145901831185886.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P3973494741970702910

`A270968(or(1, n+1))`
-/

namespace A168437.P3973494741970702910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270968 (Nat.lor 1 (n + 1))

end

end A168437.P3973494741970702910

namespace A168437

/-- `A270968(or(1, n+1))` -/
def P3973494741970702910.Spec : Prop :=
  ∀ n, P3973494741970702910.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P2782201133012543514

`A016885(and(1, n)+n)`
-/

namespace A168437.P2782201133012543514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (Nat.land 1 n + n)

end

end A168437.P2782201133012543514

namespace A168437

/-- `A016885(and(1, n)+n)` -/
def P2782201133012543514.Spec : Prop :=
  ∀ n, P2782201133012543514.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P16330433373945802690

`A016885(or(1, n-3)+3)`
-/

namespace A168437.P16330433373945802690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (Int.lor 1 ((n : ℤ) - 3) + 3).toNat

end

end A168437.P16330433373945802690

namespace A168437

/-- `A016885(or(1, n-3)+3)` -/
def P16330433373945802690.Spec : Prop :=
  ∀ n, P16330433373945802690.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P7051494480753359761

`A016885(A052928(n+1))`
-/

namespace A168437.P7051494480753359761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (A052928 (n + 1)).toNat

end

end A168437.P7051494480753359761

namespace A168437

/-- `A016885(A052928(n+1))` -/
def P7051494480753359761.Spec : Prop :=
  ∀ n, P7051494480753359761.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P1132283409547100280

`A063226(A109613(n+1))`
-/

namespace A168437.P1132283409547100280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A109613 (n + 1)).toNat

end

end A168437.P1132283409547100280

namespace A168437

/-- `A063226(A109613(n+1))` -/
def P1132283409547100280.Spec : Prop :=
  ∀ n, P1132283409547100280.a n = A168437 (n + 1)

end A168437

/-! ## A168437.P3980805485921688120

`A063226(A063196(n+2))`
-/

namespace A168437.P3980805485921688120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A063196 (n + 2)).toNat

end

end A168437.P3980805485921688120

namespace A168437

/-- `A063226(A063196(n+2))` -/
def P3980805485921688120.Spec : Prop :=
  ∀ n, P3980805485921688120.a n = A168437 (n + 1)

end A168437

/-!
# A168438: Primes consisting of only 3's and a single 2 in base 10.

The programs for A168438, there is no canonical definition to state claims against.
-/

/-! ## A168438.P3467694553820804580

`∩[A020458(n+1), A168439(n+1)]`
-/

namespace A168438.P3467694553820804580
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020458 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168438.P3467694553820804580

/-! ## A168438.P273373627475630904

`∩[A032810(n+1), A168439(n+1)]`
-/

namespace A168438.P273373627475630904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168439 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168438.P273373627475630904

/-! ## A168438.P16334262701684522171

`∩[A168439(n+1), A260126(n+1)]`
-/

namespace A168438.P16334262701684522171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168439 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260126 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168438.P16334262701684522171

/-! ## A168438.P790962727168941059

`p?[floor(A136934(A014132(n+1))/3)]`
-/

namespace A168438.P790962727168941059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A136934 (A014132 (n + 1)).toNat : ℚ) / 3⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168438.P790962727168941059

/-!
# A168439: Near-repdigit primes with 3 as the repeated digit, and either 2 or 4 as the single digit in base 10.

The programs for A168439, there is no canonical definition to state claims against.
-/

/-! ## A168439.P359234540130992689

`p?[A255404(n)²*A138975(n+1)]`
-/

namespace A168439.P359234540130992689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255404 n ^ 2 * A138975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168439.P359234540130992689

/-! ## A168439.P17135456272047060550

`∩[A048379(A007932(2*n+1)), A030291(n+2)]`
-/

namespace A168439.P17135456272047060550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048379 (A007932 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030291 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168439.P17135456272047060550

/-! ## A168439.P2105288534208208070

`p?[A124779(3*n+4)*A138975(n+1)]`
-/

namespace A168439.P2105288534208208070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124779 (3 * n + 4) * A138975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168439.P2105288534208208070

/-! ## A168439.P11604838084188751316

`p?[A107577(A102480(2*(n+2)))*A138975(n+1)]`
-/

namespace A168439.P11604838084188751316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107577 (A102480 (2 * (n + 2))).toNat * A138975 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168439.P11604838084188751316

/-!
# A168440: a(n) = Product_{k=0..n} ((4*k+1)*(4*k+3))^(n-k).

The programs for A168440, there is no canonical definition to state claims against.
-/

/-! ## A168440.P1032734529132478672

`∏[record[∏[1-2*n]]]`
-/

namespace A168440.P1032734529132478672
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (2 * n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168440.P1032734529132478672

/-! ## A168440.P11510765548411345318

`∏[abs(record[∏[-(2*n+1)]])]`
-/

namespace A168440.P11510765548411345318
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168440.P11510765548411345318

/-! ## A168440.P1072653322639680858

`-∏[record[∏[-(2*n+1)]]]`
-/

namespace A168440.P1072653322639680858
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(2 * n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∏ j ∈ Finset.range (n + 1), f1 j)

end

end A168440.P1072653322639680858

/-! ## A168440.P8200846936120290810

`∏[A101485(n)]`
-/

namespace A168440.P8200846936120290810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101485 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168440.P8200846936120290810

/-! ## A168440.P16247543838827068638

`∏[A094262((2*n+1)²)]`
-/

namespace A168440.P16247543838827068638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094262 ((2 * n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168440.P16247543838827068638

/-!
# A168441: Expansion of 1/(1-x/(1-2x/(1-4x/(1-6x/(1-8x/(1-.... (continued fraction).

The programs for A168441, there is no canonical definition to state claims against.
-/

/-! ## A168441.P17682164205127470170

`or(1, A129253(∏[a(n-1)+3]))` with `a(0)=2, a(1)=1`
-/

namespace A168441.P17682164205127470170
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A129253 (∏ j ∈ Finset.range (n + 1), f1 j))

end

end A168441.P17682164205127470170

/-! ## A168441.P4596810906378297024

`A109613(A135751(n))`
-/

namespace A168441.P4596810906378297024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (A135751 n).toNat

end

end A168441.P4596810906378297024

/-!
# A168442: a(n) = 2^n * Product_{k=1..n} (4*k*(4*k+2))^(n-k).

The programs for A168442, there is no canonical definition to state claims against.
-/

/-! ## A168442.P13709686082343061945

`∏[A000165(comp[2*(n+1)])]`
-/

namespace A168442.P13709686082343061945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000165 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168442.P13709686082343061945

/-! ## A168442.P5546282142232588339

`∏[A037223(A130824(n))]`
-/

namespace A168442.P5546282142232588339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037223 (A130824 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168442.P5546282142232588339

/-! ## A168442.P12065491078245187858

`∏[A006882(record[A109043(n)])]`
-/

namespace A168442.P12065491078245187858
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109043 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168442.P12065491078245187858

/-! ## A168442.P2797915456358466931

`∏[A006882(A111284(n+1))]`
-/

namespace A168442.P2797915456358466931
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006882 (A111284 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168442.P2797915456358466931

/-! ## A168442.P677670589076510820

`∏[∏[A068379(n+1)]/A068379(n+1)]`
-/

namespace A168442.P677670589076510820
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068379 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A068379 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168442.P677670589076510820

/-!
# A168443: Triangle, T(n,k) = number of compositions a(1),...,a(k) of n, such that a(i+1) <= a(i) + 1 for 1 <= i < k.

The programs for A168443, there is no canonical definition to state claims against.
-/

/-! ## A168443.P17543471522563451258

`A087845(A209415(n+1)+A010052(n))`
-/

namespace A168443.P17543471522563451258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A209415 (n + 1) + A010052 n).toNat

end

end A168443.P17543471522563451258

/-! ## A168443.P292287011875752368

`A087845(A209415(n+1)+A059841(n))`
-/

namespace A168443.P292287011875752368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A209415 (n + 1) + A059841 n).toNat

end

end A168443.P292287011875752368

/-! ## A168443.P7780429558337866778

`A087845(A209415(n+1)+A071374(n))`
-/

namespace A168443.P7780429558337866778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A209415 (n + 1) + A071374 n).toNat

end

end A168443.P7780429558337866778

/-! ## A168443.P5191894855771982517

`A087845(A209415(n+1)+A171587(n))`
-/

namespace A168443.P5191894855771982517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A209415 (n + 1) + A171587 n).toNat

end

end A168443.P5191894855771982517

/-! ## A168443.P6066627949124973634

`A087845(A341642(n+1)+A209415(n+1))`
-/

namespace A168443.P6066627949124973634
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087845 (A341642 (n + 1) + A209415 (n + 1)).toNat

end

end A168443.P6066627949124973634

/-!
# A168444: Number of partitions of the set {1,2,...,n} such that no block is a sequence of consecutive integers (including 1-element blocks).

The programs for A168444, there is no canonical definition to state claims against.
-/

/-! ## A168444.P10946710894590783622

`A177254(∑[n])`
-/

namespace A168444.P10946710894590783622
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177254 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168444.P10946710894590783622

/-! ## A168444.P12019369928007240402

`or(A000007(n), A177254(A000217(n)))`
-/

namespace A168444.P12019369928007240402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A177254 (A000217 n).toNat)

end

end A168444.P12019369928007240402

/-! ## A168444.P16590815183642225554

`A177254(A000217(n))+A000007(n+1)`
-/

namespace A168444.P16590815183642225554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177254 (A000217 n).toNat + A000007 (n + 1)

end

end A168444.P16590815183642225554

/-! ## A168444.P3882174049413720778

`(A000051(n)-2^n)*A177254(A000217(n))`
-/

namespace A168444.P3882174049413720778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000051 n - (2 ^ n : ℤ)) * A177254 (A000217 n).toNat

end

end A168444.P3882174049413720778

/-! ## A168444.P577542711970459825

`A177254(A000217(n))+A004198(A161680(n))`
-/

namespace A168444.P577542711970459825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177254 (A000217 n).toNat + A004198 (A161680 n).toNat

end

end A168444.P577542711970459825

/-! ## A168444.P15386802128751505259

`A049063(A002061(n))*A177254(A000217(n))`
-/

namespace A168444.P15386802128751505259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049063 (A002061 n).toNat * A177254 (A000217 n).toNat

end

end A168444.P15386802128751505259

/-! ## A168444.P7703071364435914640

`A177254(A000217(n))^A178489(n)`
-/

namespace A168444.P7703071364435914640
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A177254 (A000217 n).toNat : ℚ) ^ (A178489 n : ℤ)

end

end A168444.P7703071364435914640

/-!
# A168445: Number of compositions a(1),...,a(k) of n, for some k, such that a(i+1) <= a(i) + 1 for 1 <= i < k and a(1) <= a(k) + 1.

The programs for A168445, there is no canonical definition to state claims against.
-/

/-! ## A168445.P15730549984465353847

`xor(A055086(A221792(n+1)), A090330(n+1))`
-/

namespace A168445.P15730549984465353847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A055086 (A221792 (n + 1)).toNat) (A090330 (n + 1))

end

end A168445.P15730549984465353847

/-! ## A168445.P15888900238263608268

`A307531(A141312(n))-A002266(A192654(n))`
-/

namespace A168445.P15888900238263608268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307531 (A141312 n).toNat - A002266 (A192654 n).toNat

end

end A168445.P15888900238263608268

/-! ## A168445.P1919230334934063982

`A163101(A167270(n))`
-/

namespace A168445.P1919230334934063982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163101 (A167270 n).toNat

end

end A168445.P1919230334934063982

/-! ## A168445.P15288053644481212982

`A194335(A091650(n+1))`
-/

namespace A168445.P15288053644481212982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194335 (A091650 (n + 1)).toNat

end

end A168445.P15288053644481212982

/-! ## A168445.P8307667936192580151

`A003056(A000682(n+3))`
-/

namespace A168445.P8307667936192580151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003056 (A000682 (n + 3)).toNat

end

end A168445.P8307667936192580151

/-!
# A168446: Primes p such that floor(p/5) is also prime.

The programs for A168446, the canonical program `A168446.P8835663470605354021` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168446 has offset 1).

The definition of A168446 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 806 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168446.P8835663470605354021

`A000040(eq[1, A001222(A116572(n+1))]+1)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A168446

/-- `A000040(eq[1, A001222(A116572(n+1))]+1)` -/
def P8835663470605354021.Spec : Prop :=
  ∀ n, P8835663470605354021.a n = A168446 (n + 1)

theorem P8835663470605354021.correct : P8835663470605354021.Spec := by
  intro n
  simp only [A168446, Nat.add_sub_cancel]

end A168446

/-! ## A168446.P75709104207463008

`p?[A000040(n+1)*A001222(A116572(n+1))]`
-/

namespace A168446.P75709104207463008
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A001222 (A116572 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168446.P75709104207463008

namespace A168446

/-- `p?[A000040(n+1)*A001222(A116572(n+1))]` -/
def P75709104207463008.Spec : Prop :=
  ∀ n, P75709104207463008.a n = A168446 (n + 1)

end A168446

/-! ## A168446.P11068313011118894945

`p?[A001222(A116572(n+1))*A006005(n+1)]`
-/

namespace A168446.P11068313011118894945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A116572 (n + 1)).toNat * A006005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168446.P11068313011118894945

namespace A168446

/-- `p?[A001222(A116572(n+1))*A006005(n+1)]` -/
def P11068313011118894945.Spec : Prop :=
  ∀ n, P11068313011118894945.a n = A168446 (n + 1)

end A168446

/-! ## A168446.P6721484346556319547

`p?[A001222(A116572(n+1))*A008578(n+2)]`
-/

namespace A168446.P6721484346556319547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A116572 (n + 1)).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168446.P6721484346556319547

namespace A168446

/-- `p?[A001222(A116572(n+1))*A008578(n+2)]` -/
def P6721484346556319547.Spec : Prop :=
  ∀ n, P6721484346556319547.a n = A168446 (n + 1)

end A168446

/-! ## A168446.P16732518461593834396

`p?[A045572(n+1)*A105700(A123108(n))]`
-/

namespace A168446.P16732518461593834396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045572 (n + 1) * A105700 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168446.P16732518461593834396

namespace A168446

/-- `p?[A045572(n+1)*A105700(A123108(n))]` -/
def P16732518461593834396.Spec : Prop :=
  ∀ n, P16732518461593834396.a n = A168446 (n + 1)

end A168446

/-! ## A168446.P4182365694868624128

`p?[A032741(A004526(n))*A045572(n+1)]`
-/

namespace A168446.P4182365694868624128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A004526 n).toNat * A045572 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168446.P4182365694868624128

namespace A168446

/-- `p?[A032741(A004526(n))*A045572(n+1)]` -/
def P4182365694868624128.Spec : Prop :=
  ∀ n, P4182365694868624128.a n = A168446 (n + 1)

end A168446

/-! ## A168446.P10981750382492064549

`p?[A022998(n+1)*A105700(A059995(2*n))]`
-/

namespace A168446.P10981750382492064549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022998 (n + 1) * A105700 (A059995 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168446.P10981750382492064549

namespace A168446

/-- `p?[A022998(n+1)*A105700(A059995(2*n))]` -/
def P10981750382492064549.Spec : Prop :=
  ∀ n, P10981750382492064549.a n = A168446 (n + 1)

end A168446

/-!
# A168447: Primes p such that floor(p/6) is also prime.

The programs for A168447, the canonical program `A168447.P13863996408061354586` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168447 has offset 1).

The definition of A168447 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 471 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168447.P13863996408061354586

`p?[A105700(A004526(n))+A047233(n+1)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A168447

/-- `p?[A105700(A004526(n))+A047233(n+1)]` -/
def P13863996408061354586.Spec : Prop :=
  ∀ n, P13863996408061354586.a n = A168447 (n + 1)

theorem P13863996408061354586.correct : P13863996408061354586.Spec := by
  intro n
  simp only [A168447, Nat.add_sub_cancel]

end A168447

/-! ## A168447.P6701959207774133577

`p?[A007310(n+1)*A032741(A004526(n))]`
-/

namespace A168447.P6701959207774133577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) * A032741 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168447.P6701959207774133577

namespace A168447

/-- `p?[A007310(n+1)*A032741(A004526(n))]` -/
def P6701959207774133577.Spec : Prop :=
  ∀ n, P6701959207774133577.a n = A168447 (n + 1)

end A168447

/-! ## A168447.P11467611724986849033

`p?[A007310(n+1)*A032741(A123108(n))]`
-/

namespace A168447.P11467611724986849033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) * A032741 (A123108 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168447.P11467611724986849033

namespace A168447

/-- `p?[A007310(n+1)*A032741(A123108(n))]` -/
def P11467611724986849033.Spec : Prop :=
  ∀ n, P11467611724986849033.a n = A168447 (n + 1)

end A168447

/-! ## A168447.P9448709908463887109

`p?[A105700(A008611(n))+A103517(n)]`
-/

namespace A168447.P9448709908463887109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A008611 n).toNat + A103517 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168447.P9448709908463887109

namespace A168447

/-- `p?[A105700(A008611(n))+A103517(n)]` -/
def P9448709908463887109.Spec : Prop :=
  ∀ n, P9448709908463887109.a n = A168447 (n + 1)

end A168447

/-! ## A168447.P4397831674358179322

`p?[A005408(n)*A032741(A002264(n))]`
-/

namespace A168447.P4397831674358179322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A032741 (A002264 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168447.P4397831674358179322

namespace A168447

/-- `p?[A005408(n)*A032741(A002264(n))]` -/
def P4397831674358179322.Spec : Prop :=
  ∀ n, P4397831674358179322.a n = A168447 (n + 1)

end A168447

/-! ## A168447.P2007283973893974893

`p?[A020742(n)*A061007(A008620(n))]`
-/

namespace A168447.P2007283973893974893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020742 n * A061007 (A008620 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168447.P2007283973893974893

namespace A168447

/-- `p?[A020742(n)*A061007(A008620(n))]` -/
def P2007283973893974893.Spec : Prop :=
  ∀ n, P2007283973893974893.a n = A168447 (n + 1)

end A168447

/-! ## A168447.P10203524261933949271

`p?[(n+7)*A001222(A154958(n+1))]`
-/

namespace A168447.P10203524261933949271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 7 : ℤ) * A001222 (A154958 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168447.P10203524261933949271

namespace A168447

/-- `p?[(n+7)*A001222(A154958(n+1))]` -/
def P10203524261933949271.Spec : Prop :=
  ∀ n, P10203524261933949271.a n = A168447 (n + 1)

end A168447

/-! ## A168447.P3785940674467294640

`p?[A003415(A008611(n))*A020742(n)]`
-/

namespace A168447.P3785940674467294640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A008611 n).toNat * A020742 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168447.P3785940674467294640

namespace A168447

/-- `p?[A003415(A008611(n))*A020742(n)]` -/
def P3785940674467294640.Spec : Prop :=
  ∀ n, P3785940674467294640.a n = A168447 (n + 1)

end A168447

/-! ## A168447.P7377818071763235229

`p?[A003415(A002264(n))*A267873(n)]`
-/

namespace A168447.P7377818071763235229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (A002264 n).toNat * A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168447.P7377818071763235229

namespace A168447

/-- `p?[A003415(A002264(n))*A267873(n)]` -/
def P7377818071763235229.Spec : Prop :=
  ∀ n, P7377818071763235229.a n = A168447 (n + 1)

end A168447

/-!
# A168448: G.f. satisfies: A(x/A(x)^2) = C(x) where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

The programs for A168448, there is no canonical definition to state claims against.
-/

/-! ## A168448.P5554436020643751416

`A008619(A007017(n))-A000225(n)`
-/

namespace A168448.P5554436020643751416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A007017 n).toNat - A000225 n

end

end A168448.P5554436020643751416

/-! ## A168448.P9861852130450062735

`A050351(n)-A008611(A145349(n))`
-/

namespace A168448.P9861852130450062735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050351 n - A008611 (A145349 n).toNat

end

end A168448.P9861852130450062735

/-!
# A168449: G.f. satisfies: A(x/A(x)) = C(x)^2 where C(x) = 1 + x*C(x)^2 is the g.f. of the Catalan numbers (A000108).

The programs for A168449, there is no canonical definition to state claims against.
-/

/-! ## A168449.P15422894783846701785

`A071693(3*(n+3)^(n-1))`
-/

namespace A168449.P15422894783846701785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071693 (SequenceMachineLib.roundAway (3 * (n + 3 : ℚ) ^ ((n : ℤ) - 1 : ℤ))).toNat

end

end A168449.P15422894783846701785

/-!
# A168450: G.f. A(x) satisfies: A(x) = G(x*A(x)) where A(x/G(x)) = G(x) = g.f. of A004304, where A004304(n) is the number of planar tree-rooted maps with n edges.

The programs for A168450, there is no canonical definition to state claims against.
-/

/-! ## A168450.P7994140820653873948

`A034888(A000255(n+1))`
-/

namespace A168450.P7994140820653873948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034888 (A000255 (n + 1)).toNat

end

end A168450.P7994140820653873948

/-! ## A168450.P14427087521636358943

`Δ[A228297(∑[A206303(n)])]`
-/

namespace A168450.P14427087521636358943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206303 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228297 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168450.P14427087521636358943

/-!
# A168451: Self-convolution of A004304, where A004304(n) is the number of planar tree-rooted maps with n edges.

The programs for A168451, there is no canonical definition to state claims against.
-/

/-! ## A168451.P16591455892131852582

`A063886(n)*A171751(A000598(n+2))`
-/

namespace A168451.P16591455892131852582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063886 n * A171751 (A000598 (n + 2)).toNat

end

end A168451.P16591455892131852582

/-!
# A168452: Self-convolution of A005568, where A005568(n) is the product of two successive Catalan numbers C(n)*C(n+1).

The programs for A168452, there is no canonical definition to state claims against.
-/

/-! ## A168452.P6728776333531565430

`A260040(∑[n]+1)/(n+1)`
-/

namespace A168452.P6728776333531565430
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260040 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A168452.P6728776333531565430

/-! ## A168452.P6025325893804756084

`record[A260040(n+1)]/(n+1)`
-/

namespace A168452.P6025325893804756084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260040 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (n + 1 : ℚ)

end

end A168452.P6025325893804756084

/-! ## A168452.P8089469984154788619

`record[A260040(n+1)/A014430(n)]`
-/

namespace A168452.P8089469984154788619
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260040 (n + 1) : ℚ) / (A014430 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168452.P8089469984154788619

/-! ## A168452.P12562045975569403827

`record[A260040(n+1)/A051597(n)]`
-/

namespace A168452.P12562045975569403827
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260040 (n + 1) : ℚ) / (A051597 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168452.P12562045975569403827

/-! ## A168452.P8139178870540287288

`record[A260040(n+1)/A059298(n)]`
-/

namespace A168452.P8139178870540287288
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A260040 (n + 1) : ℚ) / (A059298 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168452.P8139178870540287288

/-!
# A168454: Terms of A123239 which are primes in Z(sqrt(2)).

The programs for A168454, there is no canonical definition to state claims against.
-/

/-! ## A168454.P9079262307626320369

`filter[A123239(n+1), A260445(#)]`
-/

namespace A168454.P9079262307626320369
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260445 (f1 j).toNat = 1) n)

end

end A168454.P9079262307626320369

/-! ## A168454.P5337080973040655371

`filter[A123239(n+2), A260394(#)]`
-/

namespace A168454.P5337080973040655371
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A260394 (f1 j).toNat = 1) n)

end

end A168454.P5337080973040655371

/-! ## A168454.P2898274051463747125

`∩[A123239(n+1), A008576(n)]`
-/

namespace A168454.P2898274051463747125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008576 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168454.P2898274051463747125

/-! ## A168454.P17844020329662177398

`∩[A003629(n+1), A123239(n+1)]`
-/

namespace A168454.P17844020329662177398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003629 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168454.P17844020329662177398

/-! ## A168454.P12732026629723419015

`∩[A025020(n+1), A123239(n+1)]`
-/

namespace A168454.P12732026629723419015
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168454.P12732026629723419015

/-! ## A168454.P2723016462312483776

`∩[A047425(n+1), A123239(n+1)]`
-/

namespace A168454.P2723016462312483776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047425 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168454.P2723016462312483776

/-! ## A168454.P1978136640031669149

`∩[A047426(n+1), A123239(n+1)]`
-/

namespace A168454.P1978136640031669149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047426 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168454.P1978136640031669149

/-! ## A168454.P15883663392008702085

`∩[A047443(n+1), A123239(n+1)]`
-/

namespace A168454.P15883663392008702085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168454.P15883663392008702085

/-! ## A168454.P11354084174441818472

`∩[A047444(n+1), A123239(n+1)]`
-/

namespace A168454.P11354084174441818472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047444 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168454.P11354084174441818472

/-! ## A168454.P10136500321421906501

`∩[A047598(n+1), A123239(n+1)]`
-/

namespace A168454.P10136500321421906501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047598 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168454.P10136500321421906501

/-!
# A168455: 3^n+n mod 7.

The programs for A168455, the canonical program `A168455.P15838507283143085543` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168455 has offset 0).

The definition of A168455 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 210 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168455.P15838507283143085543

`(3^n+n)%7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168455

/-- `(3^n+n)%7` -/
def P15838507283143085543.Spec : Prop :=
  ∀ n, (P15838507283143085543.a n : ℤ) = A168455 n

theorem P15838507283143085543.correct : P15838507283143085543.Spec := by
  intro n
  simp only [A168455]

end A168455

/-!
# A168456: a(n) = (10*n - 5*(-1)^n + 1)/2.

The programs for A168456, the canonical program `A168456.P8661147138276810209` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168456 has offset 1).

The definition of A168456 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168456.P8661147138276810209

`8+10*floor(n/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168456

/-- `8+10*floor(n/2)` -/
def P8661147138276810209.Spec : Prop :=
  ∀ n, P8661147138276810209.a n = A168456 (n + 1)

theorem P8661147138276810209.correct : P8661147138276810209.Spec := by
  intro n
  simp only [A168456, Nat.add_sub_cancel]

end A168456

/-! ## A168456.P3307518947002332027

`(10*(n+1)-5*(-1)^(n+1)+1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168456.P3307518947002332027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) : ℤ) - 5 * (-1) ^ (n + 1) + 1 : ℚ) / 2

end

end A168456.P3307518947002332027

namespace A168456

/-- `(10*(n+1)-5*(-1)^(n+1)+1)/2` -/
def P3307518947002332027.Spec : Prop :=
  ∀ n, P3307518947002332027.a n = (A168456 (n + 1) : ℚ)

end A168456

/-! ## A168456.P11690066294682831752

`2*A168280(n+1)`
-/

namespace A168456.P11690066294682831752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168280 (n + 1)

end

end A168456.P11690066294682831752

namespace A168456

/-- `2*A168280(n+1)` -/
def P11690066294682831752.Spec : Prop :=
  ∀ n, P11690066294682831752.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P199222278128075885

`∑[10-a(n-1)]` with `a(0)=8, a(1)=0`
-/

namespace A168456.P199222278128075885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [8, 0] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168456.P199222278128075885

namespace A168456

/-- `∑[10-a(n-1)]` -/
def P199222278128075885.Spec : Prop :=
  ∀ n, P199222278128075885.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P17648603072221344321

`∑[∑[ogf((8+2x^2)/(1+x))]]`
-/

namespace A168456.P17648603072221344321
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 0, 2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168456.P17648603072221344321

namespace A168456

/-- `∑[∑[ogf((8+2x^2)/(1+x))]]` -/
def P17648603072221344321.Spec : Prop :=
  ∀ n, P17648603072221344321.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P17912606400652183278

`ogf((8+2x^2)/(1-x-x^2+x^3))`
-/

namespace A168456.P17912606400652183278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, 0, 2] [1, -1, -1, 1] n

end

end A168456.P17912606400652183278

namespace A168456

/-- `ogf((8+2x^2)/(1-x-x^2+x^3))` -/
def P17912606400652183278.Spec : Prop :=
  ∀ n, P17912606400652183278.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P1520199424354097990

`ceil(5/2*or(3, 2*n))`
-/

namespace A168456.P1520199424354097990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(5 : ℚ) / 2 * (Nat.lor 3 (2 * n) : ℚ)⌉

end

end A168456.P1520199424354097990

namespace A168456

/-- `ceil(5/2*or(3, 2*n))` -/
def P1520199424354097990.Spec : Prop :=
  ∀ n, P1520199424354097990.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P9502540322822718741

`round(5/2*or(3, 2*n))`
-/

namespace A168456.P9502540322822718741
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((5 : ℚ) / 2 * (Nat.lor 3 (2 * n) : ℚ))

end

end A168456.P9502540322822718741

namespace A168456

/-- `round(5/2*or(3, 2*n))` -/
def P9502540322822718741.Spec : Prop :=
  ∀ n, P9502540322822718741.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P9539126052051924848

`A016885(or(1, n))`
-/

namespace A168456.P9539126052051924848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016885 (Nat.lor 1 n)

end

end A168456.P9539126052051924848

namespace A168456

/-- `A016885(or(1, n))` -/
def P9539126052051924848.Spec : Prop :=
  ∀ n, P9539126052051924848.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P17592249223990702428

`A017365(floor(n/2))`
-/

namespace A168456.P17592249223990702428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 ⌊(n : ℚ) / 2⌋.toNat

end

end A168456.P17592249223990702428

namespace A168456

/-- `A017365(floor(n/2))` -/
def P17592249223990702428.Spec : Prop :=
  ∀ n, P17592249223990702428.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P8200773899035240707

`∑[log2(A040271(n)²)]`
-/

namespace A168456.P8200773899035240707
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A040271 n ^ 2 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168456.P8200773899035240707

namespace A168456

/-- `∑[log2(A040271(n)²)]` -/
def P8200773899035240707.Spec : Prop :=
  ∀ n, P8200773899035240707.a n = (A168456 (n + 1) : ℝ)

end A168456

/-! ## A168456.P10932283692307127777

`A090772(or(1, n)+1)`
-/

namespace A168456.P10932283692307127777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090772 (Nat.lor 1 n + 1)

end

end A168456.P10932283692307127777

namespace A168456

/-- `A090772(or(1, n)+1)` -/
def P10932283692307127777.Spec : Prop :=
  ∀ n, P10932283692307127777.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P3155749123267145020

`A306277(or(1, n)+1)`
-/

namespace A168456.P3155749123267145020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306277 (Nat.lor 1 n + 1)

end

end A168456.P3155749123267145020

namespace A168456

/-- `A306277(or(1, n)+1)` -/
def P3155749123267145020.Spec : Prop :=
  ∀ n, P3155749123267145020.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P1094824124754997246

`2*A298468(or(1, n))`
-/

namespace A168456.P1094824124754997246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A298468 (Nat.lor 1 n)

end

end A168456.P1094824124754997246

namespace A168456

/-- `2*A298468(or(1, n))` -/
def P1094824124754997246.Spec : Prop :=
  ∀ n, P1094824124754997246.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P7844682778428353199

`2*(A168283(n+1)+1)`
-/

namespace A168456.P7844682778428353199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168283 (n + 1) + 1)

end

end A168456.P7844682778428353199

namespace A168456

/-- `2*(A168283(n+1)+1)` -/
def P7844682778428353199.Spec : Prop :=
  ∀ n, P7844682778428353199.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P1255516679255793841

`2*(A166598(n+1)-1)`
-/

namespace A168456.P1255516679255793841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A166598 (n + 1) - 1)

end

end A168456.P1255516679255793841

namespace A168456

/-- `2*(A166598(n+1)-1)` -/
def P1255516679255793841.Spec : Prop :=
  ∀ n, P1255516679255793841.a n = A168456 (n + 1)

end A168456

/-! ## A168456.P11046262737590646442

`2*(A168200(n+1)+n)`
-/

namespace A168456.P11046262737590646442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168200 (n + 1) + (n : ℤ))

end

end A168456.P11046262737590646442

namespace A168456

/-- `2*(A168200(n+1)+n)` -/
def P11046262737590646442.Spec : Prop :=
  ∀ n, P11046262737590646442.a n = A168456 (n + 1)

end A168456

/-!
# A168457: a(n) = (10*n + 5*(-1)^n - 1)/2.

The programs for A168457, the canonical program `A168457.P13507924282780798244` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168457 has offset 1).

The definition of A168457 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168457.P13507924282780798244

`2+10*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168457

/-- `2+10*floor((n+1)/2)` -/
def P13507924282780798244.Spec : Prop :=
  ∀ n, P13507924282780798244.a n = A168457 (n + 1)

theorem P13507924282780798244.correct : P13507924282780798244.Spec := by
  intro n
  simp only [A168457, Nat.add_sub_cancel]

end A168457

/-! ## A168457.P16649544938914734416

`(10*(n+1)+5*(-1)^(n+1)-1)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168457.P16649544938914734416
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) : ℤ) + 5 * (-1) ^ (n + 1) - 1 : ℚ) / 2

end

end A168457.P16649544938914734416

namespace A168457

/-- `(10*(n+1)+5*(-1)^(n+1)-1)/2` -/
def P16649544938914734416.Spec : Prop :=
  ∀ n, P16649544938914734416.a n = (A168457 (n + 1) : ℚ)

end A168457

/-! ## A168457.P9056115127403661857

`2*A168282(n+1)`
-/

namespace A168457.P9056115127403661857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168282 (n + 1)

end

end A168457.P9056115127403661857

namespace A168457

/-- `2*A168282(n+1)` -/
def P9056115127403661857.Spec : Prop :=
  ∀ n, P9056115127403661857.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P17757561629609812571

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=10, a(2)=0`
-/

namespace A168457.P17757561629609812571
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 10, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168457.P17757561629609812571

namespace A168457

/-- `∑[abs(a(n-2))]` -/
def P17757561629609812571.Spec : Prop :=
  ∀ n, (P17757561629609812571.a n : ℤ) = A168457 (n + 1)

end A168457

/-! ## A168457.P18067240266696521717

`∑[10-a(n-1)]` with `a(0)=2, a(1)=10`
-/

namespace A168457.P18067240266696521717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 10] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168457.P18067240266696521717

namespace A168457

/-- `∑[10-a(n-1)]` -/
def P18067240266696521717.Spec : Prop :=
  ∀ n, P18067240266696521717.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P12394999257651304525

`∑[∑[ogf((2+10x-2x^2)/(1+x))]]`
-/

namespace A168457.P12394999257651304525
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10, -2] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168457.P12394999257651304525

namespace A168457

/-- `∑[∑[ogf((2+10x-2x^2)/(1+x))]]` -/
def P12394999257651304525.Spec : Prop :=
  ∀ n, P12394999257651304525.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P9223068956180855421

`ogf((2+10x-2x^2)/(1-x-x^2+x^3))`
-/

namespace A168457.P9223068956180855421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 10, -2] [1, -1, -1, 1] n

end

end A168457.P9223068956180855421

namespace A168457

/-- `ogf((2+10x-2x^2)/(1-x-x^2+x^3))` -/
def P9223068956180855421.Spec : Prop :=
  ∀ n, P9223068956180855421.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P9797531762770195621

`A017293(ceil(n/2))`
-/

namespace A168457.P9797531762770195621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017293 ⌈(n : ℚ) / 2⌉.toNat

end

end A168457.P9797531762770195621

namespace A168457

/-- `A017293(ceil(n/2))` -/
def P9797531762770195621.Spec : Prop :=
  ∀ n, P9797531762770195621.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P398063513385405333

`sqrt(A017294(round(n/2)))`
-/

namespace A168457.P398063513385405333
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A017294 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat : ℝ)

end

end A168457.P398063513385405333

namespace A168457

/-- `sqrt(A017294(round(n/2)))` -/
def P398063513385405333.Spec : Prop :=
  ∀ n, P398063513385405333.a n = (A168457 (n + 1) : ℝ)

end A168457

/-! ## A168457.P12246525976459459941

`2*(∑[A010676(n)]+1)`
-/

namespace A168457.P12246525976459459941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010676 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A168457.P12246525976459459941

namespace A168457

/-- `2*(∑[A010676(n)]+1)` -/
def P12246525976459459941.Spec : Prop :=
  ∀ n, P12246525976459459941.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P6326074968797028905

`2*(∑[A010687(n)]-n)`
-/

namespace A168457.P6326074968797028905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010687 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A168457.P6326074968797028905

namespace A168457

/-- `2*(∑[A010687(n)]-n)` -/
def P6326074968797028905.Spec : Prop :=
  ∀ n, P6326074968797028905.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P17299829385269071259

`2*(A168284(n+1)+1)`
-/

namespace A168457.P17299829385269071259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168284 (n + 1) + 1)

end

end A168457.P17299829385269071259

namespace A168457

/-- `2*(A168284(n+1)+1)` -/
def P17299829385269071259.Spec : Prop :=
  ∀ n, P17299829385269071259.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P4192902584436385321

`2*(A168278(n+1)-1)`
-/

namespace A168457.P4192902584436385321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168278 (n + 1) - 1)

end

end A168457.P4192902584436385321

namespace A168457

/-- `2*(A168278(n+1)-1)` -/
def P4192902584436385321.Spec : Prop :=
  ∀ n, P4192902584436385321.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P7943304373323665282

`2*(A168209(n+1)-2)`
-/

namespace A168457.P7943304373323665282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168209 (n + 1) - 2)

end

end A168457.P7943304373323665282

namespace A168457

/-- `2*(A168209(n+1)-2)` -/
def P7943304373323665282.Spec : Prop :=
  ∀ n, P7943304373323665282.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P15969095406375421259

`xor(1, A166621(n+1)-2)`
-/

namespace A168457.P15969095406375421259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A166621 (n + 1) - 2)

end

end A168457.P15969095406375421259

namespace A168457

/-- `xor(1, A166621(n+1)-2)` -/
def P15969095406375421259.Spec : Prop :=
  ∀ n, P15969095406375421259.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P17407923187777109149

`2*A016861(A110654(n))`
-/

namespace A168457.P17407923187777109149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A016861 (A110654 n).toNat

end

end A168457.P17407923187777109149

namespace A168457

/-- `2*A016861(A110654(n))` -/
def P17407923187777109149.Spec : Prop :=
  ∀ n, P17407923187777109149.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P9383538547148400430

`A084967(n+1)%A017305(n)`
-/

namespace A168457.P9383538547148400430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084967 (n + 1)) (A017305 n)

end

end A168457.P9383538547148400430

namespace A168457

/-- `A084967(n+1)%A017305(n)` -/
def P9383538547148400430.Spec : Prop :=
  ∀ n, P9383538547148400430.a n = A168457 (n + 1)

end A168457

/-! ## A168457.P15862748494273298647

`∑[2*A231772(A020639(n+1))]`
-/

namespace A168457.P15862748494273298647
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A231772 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168457.P15862748494273298647

namespace A168457

/-- `∑[2*A231772(A020639(n+1))]` -/
def P15862748494273298647.Spec : Prop :=
  ∀ n, P15862748494273298647.a n = A168457 (n + 1)

end A168457

/-!
# A168458: a(n) = 7 + 10*floor((n-1)/2).

The programs for A168458, the canonical program `A168458.P8019906408387016994` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168458 has offset 1).

The definition of A168458 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `7+10*floor(n/2)` (program `A168458.P8019906408387016994`, by `A168458.P8019906408387016994.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168458.P8019906408387016994

`7+10*floor(n/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168458

/-- `7+10*floor(n/2)` -/
def P8019906408387016994.Spec : Prop :=
  ∀ n, P8019906408387016994.a n = A168458 (n + 1)

theorem P8019906408387016994.correct : P8019906408387016994.Spec := by
  intro n
  simp only [A168458, Nat.add_sub_cancel]

end A168458

/-! ## A168458.P7151676213713951809

`∑[10-a(n-1)]` with `a(0)=7, a(1)=0`
-/

namespace A168458.P7151676213713951809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 0] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168458.P7151676213713951809

namespace A168458

/-- `∑[10-a(n-1)]` -/
def P7151676213713951809.Spec : Prop :=
  ∀ n, P7151676213713951809.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P3981726767132634687

`∑[∑[ogf((7+3x^2)/(1+x))]]`
-/

namespace A168458.P3981726767132634687
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 0, 3] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168458.P3981726767132634687

namespace A168458

/-- `∑[∑[ogf((7+3x^2)/(1+x))]]` -/
def P3981726767132634687.Spec : Prop :=
  ∀ n, P3981726767132634687.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P8130791535946887370

`ogf((7+3x^2)/(1-x-x^2+x^3))`
-/

namespace A168458.P8130791535946887370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 0, 3] [1, -1, -1, 1] n

end

end A168458.P8130791535946887370

namespace A168458

/-- `ogf((7+3x^2)/(1-x-x^2+x^3))` -/
def P8130791535946887370.Spec : Prop :=
  ∀ n, P8130791535946887370.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P6279141318570361154

`floor(5/2*or(3, 2*n))`
-/

namespace A168458.P6279141318570361154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(5 : ℚ) / 2 * (Nat.lor 3 (2 * n) : ℚ)⌋

end

end A168458.P6279141318570361154

namespace A168458

/-- `floor(5/2*or(3, 2*n))` -/
def P6279141318570361154.Spec : Prop :=
  ∀ n, P6279141318570361154.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P3905061292140890126

`A016873(or(1, n))`
-/

namespace A168458.P3905061292140890126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (Nat.lor 1 n)

end

end A168458.P3905061292140890126

namespace A168458

/-- `A016873(or(1, n))` -/
def P3905061292140890126.Spec : Prop :=
  ∀ n, P3905061292140890126.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P17151325097878858836

`A297469(or(1, n))`
-/

namespace A168458.P17151325097878858836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297469 (Nat.lor 1 n)

end

end A168458.P17151325097878858836

namespace A168458

/-- `A297469(or(1, n))` -/
def P17151325097878858836.Spec : Prop :=
  ∀ n, P17151325097878858836.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P8267139503157415093

`A017353(floor(n/2))`
-/

namespace A168458.P8267139503157415093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 ⌊(n : ℚ) / 2⌋.toNat

end

end A168458.P8267139503157415093

namespace A168458

/-- `A017353(floor(n/2))` -/
def P8267139503157415093.Spec : Prop :=
  ∀ n, P8267139503157415093.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P18293707515612780975

`A063206(or(1, n)+1)`
-/

namespace A168458.P18293707515612780975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063206 (Nat.lor 1 n + 1)

end

end A168458.P18293707515612780975

namespace A168458

/-- `A063206(or(1, n)+1)` -/
def P18293707515612780975.Spec : Prop :=
  ∀ n, P18293707515612780975.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P4030048678540494095

`A063226(or(1, n)+1)`
-/

namespace A168458.P4030048678540494095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (Nat.lor 1 n + 1)

end

end A168458.P4030048678540494095

namespace A168458

/-- `A063226(or(1, n)+1)` -/
def P4030048678540494095.Spec : Prop :=
  ∀ n, P4030048678540494095.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P2128566635756140925

`A131229(or(1, n)+1)`
-/

namespace A168458.P2128566635756140925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (Nat.lor 1 n + 1)

end

end A168458.P2128566635756140925

namespace A168458

/-- `A131229(or(1, n)+1)` -/
def P2128566635756140925.Spec : Prop :=
  ∀ n, P2128566635756140925.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P153540118550013264

`A017317(or(1, n))/2`
-/

namespace A168458.P153540118550013264
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017317 (Nat.lor 1 n) : ℚ) / 2

end

end A168458.P153540118550013264

namespace A168458

/-- `A017317(or(1, n))/2` -/
def P153540118550013264.Spec : Prop :=
  ∀ n, P153540118550013264.a n = (A168458 (n + 1) : ℚ)

end A168458

/-! ## A168458.P4964688790705735823

`∑[A066156(a(n-1))]` with `a(0)=7`
-/

namespace A168458.P4964688790705735823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A066156 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168458.P4964688790705735823

namespace A168458

/-- `∑[A066156(a(n-1))]` -/
def P4964688790705735823.Spec : Prop :=
  ∀ n, P4964688790705735823.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P3065572513582353268

`A016873(A109613(n))`
-/

namespace A168458.P3065572513582353268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (A109613 n).toNat

end

end A168458.P3065572513582353268

namespace A168458

/-- `A016873(A109613(n))` -/
def P3065572513582353268.Spec : Prop :=
  ∀ n, P3065572513582353268.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P16794379239642159997

`A016873(A052928(n)+1)`
-/

namespace A168458.P16794379239642159997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (A052928 n + 1).toNat

end

end A168458.P16794379239642159997

namespace A168458

/-- `A016873(A052928(n)+1)` -/
def P16794379239642159997.Spec : Prop :=
  ∀ n, P16794379239642159997.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P17445361960898129282

`A063226(A109613(n)+1)`
-/

namespace A168458.P17445361960898129282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063226 (A109613 n + 1).toNat

end

end A168458.P17445361960898129282

namespace A168458

/-- `A063226(A109613(n)+1)` -/
def P17445361960898129282.Spec : Prop :=
  ∀ n, P17445361960898129282.a n = A168458 (n + 1)

end A168458

/-! ## A168458.P3291614008222817317

`A016873(A059841(n)+n)`
-/

namespace A168458.P3291614008222817317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 (A059841 n + (n : ℤ)).toNat

end

end A168458.P3291614008222817317

namespace A168458

/-- `A016873(A059841(n)+n)` -/
def P3291614008222817317.Spec : Prop :=
  ∀ n, P3291614008222817317.a n = A168458 (n + 1)

end A168458

/-!
# A168459: a(n) = (10*n + 5*(-1)^n - 3)/2.

The programs for A168459, the canonical program `A168459.P7261114810073790941` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168459 has offset 1).

The definition of A168459 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168459.P7261114810073790941

`1+10*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168459

/-- `1+10*floor((n+1)/2)` -/
def P7261114810073790941.Spec : Prop :=
  ∀ n, P7261114810073790941.a n = A168459 (n + 1)

theorem P7261114810073790941.correct : P7261114810073790941.Spec := by
  intro n
  simp only [A168459, Nat.add_sub_cancel]

end A168459

/-! ## A168459.P14537726226233615066

`(10*(n+1)+5*(-1)^(n+1)-3)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168459.P14537726226233615066
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((10 * (n + 1) : ℤ) + 5 * (-1) ^ (n + 1) - 3 : ℚ) / 2

end

end A168459.P14537726226233615066

namespace A168459

/-- `(10*(n+1)+5*(-1)^(n+1)-3)/2` -/
def P14537726226233615066.Spec : Prop :=
  ∀ n, P14537726226233615066.a n = (A168459 (n + 1) : ℚ)

end A168459

/-! ## A168459.P18236180536625206486

`or(1, 10*ceil(n/2))`
-/

namespace A168459.P18236180536625206486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (10 * ⌈(n : ℚ) / 2⌉)

end

end A168459.P18236180536625206486

namespace A168459

/-- `or(1, 10*ceil(n/2))` -/
def P18236180536625206486.Spec : Prop :=
  ∀ n, P18236180536625206486.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P12250786510613373768

`xor(1, 10*ceil(n/2))`
-/

namespace A168459.P12250786510613373768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (10 * ⌈(n : ℚ) / 2⌉)

end

end A168459.P12250786510613373768

namespace A168459

/-- `xor(1, 10*ceil(n/2))` -/
def P12250786510613373768.Spec : Prop :=
  ∀ n, P12250786510613373768.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P17410040862598699778

`∑[abs(a(n-2))]` with `a(0)=1, a(1)=10, a(2)=0`
-/

namespace A168459.P17410040862598699778
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 10, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168459.P17410040862598699778

namespace A168459

/-- `∑[abs(a(n-2))]` -/
def P17410040862598699778.Spec : Prop :=
  ∀ n, (P17410040862598699778.a n : ℤ) = A168459 (n + 1)

end A168459

/-! ## A168459.P2818638414550912358

`∑[10-a(n-1)]` with `a(0)=1, a(1)=10`
-/

namespace A168459.P2818638414550912358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 10] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168459.P2818638414550912358

namespace A168459

/-- `∑[10-a(n-1)]` -/
def P2818638414550912358.Spec : Prop :=
  ∀ n, P2818638414550912358.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P17516134892879134433

`∑[∑[ogf((1+10x-x^2)/(1+x))]]`
-/

namespace A168459.P17516134892879134433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -1] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168459.P17516134892879134433

namespace A168459

/-- `∑[∑[ogf((1+10x-x^2)/(1+x))]]` -/
def P17516134892879134433.Spec : Prop :=
  ∀ n, P17516134892879134433.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P287863838865945240

`ogf((1+10x-x^2)/(1-x-x^2+x^3))`
-/

namespace A168459.P287863838865945240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 10, -1] [1, -1, -1, 1] n

end

end A168459.P287863838865945240

namespace A168459

/-- `ogf((1+10x-x^2)/(1-x-x^2+x^3))` -/
def P287863838865945240.Spec : Prop :=
  ∀ n, P287863838865945240.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P1646929162073580332

`abs(4-5*or(1, n+1))`
-/

namespace A168459.P1646929162073580332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (5 * Nat.lor 1 (n + 1) : ℤ)|

end

end A168459.P1646929162073580332

namespace A168459

/-- `abs(4-5*or(1, n+1))` -/
def P1646929162073580332.Spec : Prop :=
  ∀ n, P1646929162073580332.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P2842230612339219614

`A017281(ceil(n/2))`
-/

namespace A168459.P2842230612339219614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 ⌈(n : ℚ) / 2⌉.toNat

end

end A168459.P2842230612339219614

namespace A168459

/-- `A017281(ceil(n/2))` -/
def P2842230612339219614.Spec : Prop :=
  ∀ n, P2842230612339219614.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P18033169075484744070

`A084967(n+1)%A017317(n)`
-/

namespace A168459.P18033169075484744070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084967 (n + 1)) (A017317 n)

end

end A168459.P18033169075484744070

namespace A168459

/-- `A084967(n+1)%A017317(n)` -/
def P18033169075484744070.Spec : Prop :=
  ∀ n, P18033169075484744070.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P7182461385588919896

`A128880(n+1)%A350521(n)`
-/

namespace A168459.P7182461385588919896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A128880 (n + 1)) (A350521 n)

end

end A168459.P7182461385588919896

namespace A168459

/-- `A128880(n+1)%A350521(n)` -/
def P7182461385588919896.Spec : Prop :=
  ∀ n, P7182461385588919896.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P16299031700980318586

`A166137(n+1)%A166621(n+1)`
-/

namespace A168459.P16299031700980318586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166137 (n + 1)) (A166621 (n + 1))

end

end A168459.P16299031700980318586

namespace A168459

/-- `A166137(n+1)%A166621(n+1)` -/
def P16299031700980318586.Spec : Prop :=
  ∀ n, P16299031700980318586.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P9665266047573672465

`∑[A020639(n+1)*A231772(A020639(n+1))]`
-/

namespace A168459.P9665266047573672465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1) * A231772 (A020639 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168459.P9665266047573672465

namespace A168459

/-- `∑[A020639(n+1)*A231772(A020639(n+1))]` -/
def P9665266047573672465.Spec : Prop :=
  ∀ n, P9665266047573672465.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P7993372986759887995

`A090771(or(1, n+1))`
-/

namespace A168459.P7993372986759887995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090771 (Nat.lor 1 (n + 1))

end

end A168459.P7993372986759887995

namespace A168459

/-- `A090771(or(1, n+1))` -/
def P7993372986759887995.Spec : Prop :=
  ∀ n, P7993372986759887995.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P15304177523019082677

`A131229(or(1, n+1))`
-/

namespace A168459.P15304177523019082677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (Nat.lor 1 (n + 1))

end

end A168459.P15304177523019082677

namespace A168459

/-- `A131229(or(1, n+1))` -/
def P15304177523019082677.Spec : Prop :=
  ∀ n, P15304177523019082677.a n = A168459 (n + 1)

end A168459

/-! ## A168459.P424430040768139489

`A166525(or(1, n+1))`
-/

namespace A168459.P424430040768139489
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166525 (Nat.lor 1 (n + 1))

end

end A168459.P424430040768139489

namespace A168459

/-- `A166525(or(1, n+1))` -/
def P424430040768139489.Spec : Prop :=
  ∀ n, P424430040768139489.a n = A168459 (n + 1)

end A168459

/-!
# A168460: a(n) = 6 + 10*floor((n-1)/2).

The programs for A168460, the canonical program `A168460.P8096127157822526444` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168460 has offset 1).

The definition of A168460 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6+10*floor(n/2)` (program `A168460.P8096127157822526444`, by `A168460.P8096127157822526444.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168460.P2593232236664753990

`a(n-2)+10` with `a(0)=6, a(1)=6`
-/

namespace A168460.P2593232236664753990
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [6, 6] fun n a =>
  a (n - 2) + 10

end

end A168460.P2593232236664753990

namespace A168460

/-- `a(n-2)+10` -/
def P2593232236664753990.Spec : Prop :=
  ∀ n, (P2593232236664753990.a n : ℤ) = A168460 (n + 1)

end A168460

/-! ## A168460.P8096127157822526444

`6+10*floor(n/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168460

/-- `6+10*floor(n/2)` -/
def P8096127157822526444.Spec : Prop :=
  ∀ n, P8096127157822526444.a n = A168460 (n + 1)

theorem P8096127157822526444.correct : P8096127157822526444.Spec := by
  intro n
  simp only [A168460, Nat.add_sub_cancel]

end A168460

/-! ## A168460.P10406224079125715272

`A017341(floor(n/2))`
-/

namespace A168460.P10406224079125715272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 ⌊(n : ℚ) / 2⌋.toNat

end

end A168460.P10406224079125715272

namespace A168460

/-- `A017341(floor(n/2))` -/
def P10406224079125715272.Spec : Prop :=
  ∀ n, P10406224079125715272.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P6493692679719111283

`2*A168283(n+1)`
-/

namespace A168460.P6493692679719111283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168283 (n + 1)

end

end A168460.P6493692679719111283

namespace A168460

/-- `2*A168283(n+1)` -/
def P6493692679719111283.Spec : Prop :=
  ∀ n, P6493692679719111283.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P722724499997098705

`∑[10-a(n-1)]` with `a(0)=6, a(1)=0`
-/

namespace A168460.P722724499997098705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6, 0] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168460.P722724499997098705

namespace A168460

/-- `∑[10-a(n-1)]` -/
def P722724499997098705.Spec : Prop :=
  ∀ n, P722724499997098705.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P7757759667854430323

`∑[∑[ogf((6+4x^2)/(1+x))]]`
-/

namespace A168460.P7757759667854430323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168460.P7757759667854430323

namespace A168460

/-- `∑[∑[ogf((6+4x^2)/(1+x))]]` -/
def P7757759667854430323.Spec : Prop :=
  ∀ n, P7757759667854430323.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P15690166842729878443

`ogf((6+4x^2)/(1-x-x^2+x^3))`
-/

namespace A168460.P15690166842729878443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [6, 0, 4] [1, -1, -1, 1] n

end

end A168460.P15690166842729878443

namespace A168460

/-- `ogf((6+4x^2)/(1-x-x^2+x^3))` -/
def P15690166842729878443.Spec : Prop :=
  ∀ n, P15690166842729878443.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P14495135610447048121

`A016861(or(1, n))`
-/

namespace A168460.P14495135610447048121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (Nat.lor 1 n)

end

end A168460.P14495135610447048121

namespace A168460

/-- `A016861(or(1, n))` -/
def P14495135610447048121.Spec : Prop :=
  ∀ n, P14495135610447048121.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P3485148192582302475

`A131501(or(1, n))`
-/

namespace A168460.P3485148192582302475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131501 (Nat.lor 1 n)

end

end A168460.P3485148192582302475

namespace A168460

/-- `A131501(or(1, n))` -/
def P3485148192582302475.Spec : Prop :=
  ∀ n, P3485148192582302475.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P17156587652358347025

`A146951(or(1, n))`
-/

namespace A168460.P17156587652358347025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146951 (Nat.lor 1 n)

end

end A168460.P17156587652358347025

namespace A168460

/-- `A146951(or(1, n))` -/
def P17156587652358347025.Spec : Prop :=
  ∀ n, P17156587652358347025.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P2714237977939051682

`A090773(or(1, n)+1)`
-/

namespace A168460.P2714237977939051682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090773 (Nat.lor 1 n + 1)

end

end A168460.P2714237977939051682

namespace A168460

/-- `A090773(or(1, n)+1)` -/
def P2714237977939051682.Spec : Prop :=
  ∀ n, P2714237977939051682.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P9850272812408136410

`2*A047204(or(1, n))`
-/

namespace A168460.P9850272812408136410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047204 (Nat.lor 1 n)

end

end A168460.P9850272812408136410

namespace A168460

/-- `2*A047204(or(1, n))` -/
def P9850272812408136410.Spec : Prop :=
  ∀ n, P9850272812408136410.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P13932424816201705597

`2*A168209(or(1, n))`
-/

namespace A168460.P13932424816201705597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A168209 (Nat.lor 1 n)

end

end A168460.P13932424816201705597

namespace A168460

/-- `2*A168209(or(1, n))` -/
def P13932424816201705597.Spec : Prop :=
  ∀ n, P13932424816201705597.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P8246461056711102868

`2*A185452(or(1, n))`
-/

namespace A168460.P8246461056711102868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A185452 (Nat.lor 1 n)

end

end A168460.P8246461056711102868

namespace A168460

/-- `2*A185452(or(1, n))` -/
def P8246461056711102868.Spec : Prop :=
  ∀ n, P8246461056711102868.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P10805614234162796926

`A017293(or(1, n))/2`
-/

namespace A168460.P10805614234162796926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017293 (Nat.lor 1 n) : ℚ) / 2

end

end A168460.P10805614234162796926

namespace A168460

/-- `A017293(or(1, n))/2` -/
def P10805614234162796926.Spec : Prop :=
  ∀ n, P10805614234162796926.a n = (A168460 (n + 1) : ℚ)

end A168460

/-! ## A168460.P14640197701224332252

`2*(∑[A040011(n)]-n)`
-/

namespace A168460.P14640197701224332252
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j - (n : ℤ))

end

end A168460.P14640197701224332252

namespace A168460

/-- `2*(∑[A040011(n)]-n)` -/
def P14640197701224332252.Spec : Prop :=
  ∀ n, P14640197701224332252.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P8926231153546647965

`2*(A168280(n+1)-1)`
-/

namespace A168460.P8926231153546647965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168280 (n + 1) - 1)

end

end A168460.P8926231153546647965

namespace A168460

/-- `2*(A168280(n+1)-1)` -/
def P8926231153546647965.Spec : Prop :=
  ∀ n, P8926231153546647965.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P2941675274195459883

`2*(A166598(n+1)-2)`
-/

namespace A168460.P2941675274195459883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A166598 (n + 1) - 2)

end

end A168460.P2941675274195459883

namespace A168460

/-- `2*(A166598(n+1)-2)` -/
def P2941675274195459883.Spec : Prop :=
  ∀ n, P2941675274195459883.a n = A168460 (n + 1)

end A168460

/-! ## A168460.P8712176451571423460

`xor(1, A161365(n+1)-2)`
-/

namespace A168460.P8712176451571423460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A161365 (n + 1) - 2)

end

end A168460.P8712176451571423460

namespace A168460

/-- `xor(1, A161365(n+1)-2)` -/
def P8712176451571423460.Spec : Prop :=
  ∀ n, P8712176451571423460.a n = A168460 (n + 1)

end A168460

/-!
# A168461: a(n) = 10*floor(n/2).

The programs for A168461, the canonical program `A168461.P15386849035522596969` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168461 has offset 1).

The definition of A168461 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `10*floor((n+1)/2)` (program `A168461.P15386849035522596969`, by `A168461.P15386849035522596969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168461.P15386849035522596969

`10*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168461

/-- `10*floor((n+1)/2)` -/
def P15386849035522596969.Spec : Prop :=
  ∀ n, P15386849035522596969.a n = A168461 (n + 1)

theorem P15386849035522596969.correct : P15386849035522596969.Spec := by
  intro n
  simp only [A168461, Nat.add_sub_cancel]

end A168461

/-! ## A168461.P12221226298037155191

`10*n-a(n-1)` with `a(0)=0`
-/

namespace A168461.P12221226298037155191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (10 * n : ℤ) - a (n - 1)

end

end A168461.P12221226298037155191

namespace A168461

/-- `10*n-a(n-1)` -/
def P12221226298037155191.Spec : Prop :=
  ∀ n, P12221226298037155191.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P11212631237437285516

`A168437(n+1)-3`
-/

namespace A168461.P11212631237437285516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168437 (n + 1) - 3

end

end A168461.P11212631237437285516

namespace A168461

/-- `A168437(n+1)-3` -/
def P11212631237437285516.Spec : Prop :=
  ∀ n, P11212631237437285516.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P7832712216966476327

`∑[10*n%2]`
-/

namespace A168461.P7832712216966476327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (n % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168461.P7832712216966476327

namespace A168461

/-- `∑[10*n%2]` -/
def P7832712216966476327.Spec : Prop :=
  ∀ n, (P7832712216966476327.a n : ℤ) = A168461 (n + 1)

end A168461

/-! ## A168461.P770139703354670399

`∑[10*and(1, n)]`
-/

namespace A168461.P770139703354670399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * Nat.land 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168461.P770139703354670399

namespace A168461

/-- `∑[10*and(1, n)]` -/
def P770139703354670399.Spec : Prop :=
  ∀ n, (P770139703354670399.a n : ℤ) = A168461 (n + 1)

end A168461

/-! ## A168461.P65300390603558580

`∑[lcm(10, and(1, n))]`
-/

namespace A168461.P65300390603558580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 10 (Nat.land 1 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168461.P65300390603558580

namespace A168461

/-- `∑[lcm(10, and(1, n))]` -/
def P65300390603558580.Spec : Prop :=
  ∀ n, (P65300390603558580.a n : ℤ) = A168461 (n + 1)

end A168461

/-! ## A168461.P17901974552425101193

`∑[and(10, (-1)^n)]`
-/

namespace A168461.P17901974552425101193
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 10 ((-1) ^ n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168461.P17901974552425101193

namespace A168461

/-- `∑[and(10, (-1)^n)]` -/
def P17901974552425101193.Spec : Prop :=
  ∀ n, P17901974552425101193.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P1560743877946604648

`a(n-2)+10` with `a(0)=0, a(1)=10`
-/

namespace A168461.P1560743877946604648
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n a =>
  a (n - 2) + 10

end

end A168461.P1560743877946604648

namespace A168461

/-- `a(n-2)+10` -/
def P1560743877946604648.Spec : Prop :=
  ∀ n, (P1560743877946604648.a n : ℤ) = A168461 (n + 1)

end A168461

/-! ## A168461.P9979288106358398905

`5-5*or(1, -n)`
-/

namespace A168461.P9979288106358398905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 - 5 * Int.lor 1 (-(n : ℤ))

end

end A168461.P9979288106358398905

namespace A168461

/-- `5-5*or(1, -n)` -/
def P9979288106358398905.Spec : Prop :=
  ∀ n, P9979288106358398905.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P6665050194655349150

`∑[10*(2-gcd(2, n))]`
-/

namespace A168461.P6665050194655349150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 * (2 - (Nat.gcd 2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168461.P6665050194655349150

namespace A168461

/-- `∑[10*(2-gcd(2, n))]` -/
def P6665050194655349150.Spec : Prop :=
  ∀ n, P6665050194655349150.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P297878365900986889

`∑[10-a(n-1)]` with `a(0)=0`
-/

namespace A168461.P297878365900986889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  10 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168461.P297878365900986889

namespace A168461

/-- `∑[10-a(n-1)]` -/
def P297878365900986889.Spec : Prop :=
  ∀ n, P297878365900986889.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P3490728829354998782

`∑[10*n]/or(1, n)`
-/

namespace A168461.P3490728829354998782
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 1 n : ℚ)

end

end A168461.P3490728829354998782

namespace A168461

/-- `∑[10*n]/or(1, n)` -/
def P3490728829354998782.Spec : Prop :=
  ∀ n, P3490728829354998782.a n = (A168461 (n + 1) : ℚ)

end A168461

/-! ## A168461.P2220200387494312967

`∑[∑[ogf(10x/(1+x))]]`
-/

namespace A168461.P2220200387494312967
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168461.P2220200387494312967

namespace A168461

/-- `∑[∑[ogf(10x/(1+x))]]` -/
def P2220200387494312967.Spec : Prop :=
  ∀ n, P2220200387494312967.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P18409870832367439744

`ogf(10x/(1-x-x^2+x^3))`
-/

namespace A168461.P18409870832367439744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10] [1, -1, -1, 1] n

end

end A168461.P18409870832367439744

namespace A168461

/-- `ogf(10x/(1-x-x^2+x^3))` -/
def P18409870832367439744.Spec : Prop :=
  ∀ n, P18409870832367439744.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P9430500723108246085

`5*or(1, n+1)-5`
-/

namespace A168461.P9430500723108246085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * Nat.lor 1 (n + 1) : ℤ) - 5

end

end A168461.P9430500723108246085

namespace A168461

/-- `5*or(1, n+1)-5` -/
def P9430500723108246085.Spec : Prop :=
  ∀ n, P9430500723108246085.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P3104568435780244078

`lcm(2, 5*(and(1, n)+n))`
-/

namespace A168461.P3104568435780244078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (5 * (Nat.land 1 n + n))

end

end A168461.P3104568435780244078

namespace A168461

/-- `lcm(2, 5*(and(1, n)+n))` -/
def P3104568435780244078.Spec : Prop :=
  ∀ n, (P3104568435780244078.a n : ℤ) = A168461 (n + 1)

end A168461

/-! ## A168461.P8961878644828753098

`10-floor(-a(n-2))` with `a(0)=0, a(1)=10`

`floor` is left out, it is the identity on integers.
-/

namespace A168461.P8961878644828753098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n a =>
  10 - (-a (n - 2))

end

end A168461.P8961878644828753098

namespace A168461

/-- `10-floor(-a(n-2))` -/
def P8961878644828753098.Spec : Prop :=
  ∀ n, P8961878644828753098.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P10149319274088852404

`10-ceil(-a(n-2))` with `a(0)=0, a(1)=10`

`ceil` is left out, it is the identity on integers.
-/

namespace A168461.P10149319274088852404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n a =>
  10 - (-a (n - 2))

end

end A168461.P10149319274088852404

namespace A168461

/-- `10-ceil(-a(n-2))` -/
def P10149319274088852404.Spec : Prop :=
  ∀ n, P10149319274088852404.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P1184126863243914823

`10-round(-a(n-2))` with `a(0)=0, a(1)=10`

`round` is left out, it is the identity on integers.
-/

namespace A168461.P1184126863243914823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10] fun n a =>
  10 - (-a (n - 2))

end

end A168461.P1184126863243914823

namespace A168461

/-- `10-round(-a(n-2))` -/
def P1184126863243914823.Spec : Prop :=
  ∀ n, P1184126863243914823.a n = A168461 (n + 1)

end A168461

/-! ## A168461.P8021812147821853657

`∑[5*(xor(1, n+1)-n)]`
-/

namespace A168461.P8021812147821853657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * ((Nat.xor 1 (n + 1) : ℤ) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168461.P8021812147821853657

namespace A168461

/-- `∑[5*(xor(1, n+1)-n)]` -/
def P8021812147821853657.Spec : Prop :=
  ∀ n, P8021812147821853657.a n = A168461 (n + 1)

end A168461

/-!
# A168462: a(n) = n^5*(n^8 + 1)/2.

The programs for A168462, the canonical program `A168462.P3821365518210389630` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168462 has offset 0).

The definition of A168462 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168462.P3821365518210389630

`n^5*(n^8+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168462

/-- `n^5*(n^8+1)/2` -/
def P3821365518210389630.Spec : Prop :=
  ∀ n, P3821365518210389630.a n = (A168462 n : ℚ)

end A168462

/-! ## A168462.P612887424408202590

`abs(A001489(n)*A168227(n))`
-/

namespace A168462.P612887424408202590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A168227 n|

end

end A168462.P612887424408202590

namespace A168462

/-- `abs(A001489(n)*A168227(n))` -/
def P612887424408202590.Spec : Prop :=
  ∀ n, P612887424408202590.a n = A168462 n

end A168462

/-! ## A168462.P234574782565755990

`abs(n*A001489(n)*A168189(n))`
-/

namespace A168462.P234574782565755990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A001489 n * A168189 n)|

end

end A168462.P234574782565755990

namespace A168462

/-- `abs(n*A001489(n)*A168189(n))` -/
def P234574782565755990.Spec : Prop :=
  ∀ n, P234574782565755990.a n = A168462 n

end A168462

/-! ## A168462.P11365221876608340671

`(n+1)*A168345(n)-A168346(n)`
-/

namespace A168462.P11365221876608340671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A168345 n - A168346 n

end

end A168462.P11365221876608340671

namespace A168462

/-- `(n+1)*A168345(n)-A168346(n)` -/
def P11365221876608340671.Spec : Prop :=
  ∀ n, P11365221876608340671.a n = A168462 n

end A168462

/-!
# A168463: a(n) = 5 + 11*floor(n/2).

The programs for A168463, the canonical program `A168463.P3423773516568465254` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168463 has offset 1).

The definition of A168463 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `5+11*floor((n+1)/2)` (program `A168463.P3423773516568465254`, by `A168463.P3423773516568465254.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A168463.P3423773516568465254

`5+11*floor((n+1)/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168463

/-- `5+11*floor((n+1)/2)` -/
def P3423773516568465254.Spec : Prop :=
  ∀ n, P3423773516568465254.a n = A168463 (n + 1)

theorem P3423773516568465254.correct : P3423773516568465254.Spec := by
  intro n
  simp only [A168463, Nat.add_sub_cancel]

end A168463

/-! ## A168463.P16451779324527174030

`∑[abs(a(n-2))]` with `a(0)=5, a(1)=11, a(2)=0`
-/

namespace A168463.P16451779324527174030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [5, 11, 0] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168463.P16451779324527174030

namespace A168463

/-- `∑[abs(a(n-2))]` -/
def P16451779324527174030.Spec : Prop :=
  ∀ n, (P16451779324527174030.a n : ℤ) = A168463 (n + 1)

end A168463

/-! ## A168463.P3311316471697910527

`∑[11-a(n-1)]` with `a(0)=5, a(1)=11`
-/

namespace A168463.P3311316471697910527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [5, 11] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168463.P3311316471697910527

namespace A168463

/-- `∑[11-a(n-1)]` -/
def P3311316471697910527.Spec : Prop :=
  ∀ n, P3311316471697910527.a n = A168463 (n + 1)

end A168463

/-! ## A168463.P18283988043328000269

`A017449(ceil(n/2))`
-/

namespace A168463.P18283988043328000269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017449 ⌈(n : ℚ) / 2⌉.toNat

end

end A168463.P18283988043328000269

namespace A168463

/-- `A017449(ceil(n/2))` -/
def P18283988043328000269.Spec : Prop :=
  ∀ n, P18283988043328000269.a n = A168463 (n + 1)

end A168463

/-! ## A168463.P3201576414835299456

`A017509(A000035(n)+n)/2`
-/

namespace A168463.P3201576414835299456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A017509 (A000035 n + (n : ℤ)).toNat : ℚ) / 2

end

end A168463.P3201576414835299456

namespace A168463

/-- `A017509(A000035(n)+n)/2` -/
def P3201576414835299456.Spec : Prop :=
  ∀ n, P3201576414835299456.a n = (A168463 (n + 1) : ℚ)

end A168463

/-! ## A168463.P9859621816617435718

`A168484(A168269(n+2))`
-/

namespace A168463.P9859621816617435718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168484 (A168269 (n + 2)).toNat

end

end A168463.P9859621816617435718

namespace A168463

/-- `A168484(A168269(n+2))` -/
def P9859621816617435718.Spec : Prop :=
  ∀ n, P9859621816617435718.a n = A168463 (n + 1)

end A168463

/-! ## A168463.P8886180438527344878

`A265188(A168209(n+1))`
-/

namespace A168463.P8886180438527344878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265188 (A168209 (n + 1)).toNat

end

end A168463.P8886180438527344878

namespace A168463

/-- `A265188(A168209(n+1))` -/
def P8886180438527344878.Spec : Prop :=
  ∀ n, P8886180438527344878.a n = A168463 (n + 1)

end A168463

/-! ## A168463.P4405744640490923830

`A265188(A168283(n+2))`
-/

namespace A168463.P4405744640490923830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265188 (A168283 (n + 2)).toNat

end

end A168463.P4405744640490923830

namespace A168463

/-- `A265188(A168283(n+2))` -/
def P4405744640490923830.Spec : Prop :=
  ∀ n, P4405744640490923830.a n = A168463 (n + 1)

end A168463

/-! ## A168463.P7428802176732821597

`A106252(A168329(n+2))`
-/

namespace A168463.P7428802176732821597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106252 (A168329 (n + 2)).toNat

end

end A168463.P7428802176732821597

namespace A168463

/-- `A106252(A168329(n+2))` -/
def P7428802176732821597.Spec : Prop :=
  ∀ n, P7428802176732821597.a n = A168463 (n + 1)

end A168463

/-! ## A168463.P4997473911927501597

`A032797(A168213(n+1))`
-/

namespace A168463.P4997473911927501597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (A168213 (n + 1)).toNat

end

end A168463.P4997473911927501597

namespace A168463

/-- `A032797(A168213(n+1))` -/
def P4997473911927501597.Spec : Prop :=
  ∀ n, P4997473911927501597.a n = A168463 (n + 1)

end A168463

/-! ## A168463.P14083425730496208207

`A032797(A168418(n+2))`
-/

namespace A168463.P14083425730496208207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032797 (A168418 (n + 2)).toNat

end

end A168463.P14083425730496208207

namespace A168463

/-- `A032797(A168418(n+2))` -/
def P14083425730496208207.Spec : Prop :=
  ∀ n, P14083425730496208207.a n = A168463 (n + 1)

end A168463

/-! ## A168463.P5587560577859173729

`A137235(A017497(n))`
-/

namespace A168463.P5587560577859173729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137235 (A017497 n).toNat

end

end A168463.P5587560577859173729

namespace A168463

/-- `A137235(A017497(n))` -/
def P5587560577859173729.Spec : Prop :=
  ∀ n, P5587560577859173729.a n = A168463 (n + 1)

end A168463

/-!
# A168464: a(n) = A085738(n) - A085737(n).

The programs for A168464, there is no canonical definition to state claims against.
-/

/-! ## A168464.P3943232469066321618

`A085738(n)-A085737(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A168464.P3943232469066321618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085738 n - A085737 n

end

end A168464.P3943232469066321618

/-! ## A168464.P3778333020263202103

`2*A085738(n)-A168140(n)`
-/

namespace A168464.P3778333020263202103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A085738 n - A168140 n

end

end A168464.P3778333020263202103

/-! ## A168464.P14509737867031264053

`A168140(n)-2*A085737(n)`
-/

namespace A168464.P14509737867031264053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168140 n - 2 * A085737 n

end

end A168464.P14509737867031264053

/-! ## A168464.P9410657306511697577

`A168140(n)+2*A085737(n)*A008683(A007918(n))`
-/

namespace A168464.P9410657306511697577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168140 n + 2 * A085737 n * A008683 (A007918 n).toNat

end

end A168464.P9410657306511697577

/-! ## A168464.P4751370994757705868

`A000027(A168140(n)-A085737(n))-A085737(n)`
-/

namespace A168464.P4751370994757705868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A168140 n - A085737 n).toNat - A085737 n

end

end A168464.P4751370994757705868

/-! ## A168464.P11028956900009380622

`A007913(A168140(n)-A085737(n))-A085737(n)`
-/

namespace A168464.P11028956900009380622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007913 (A168140 n - A085737 n).toNat - A085737 n

end

end A168464.P11028956900009380622

/-! ## A168464.P10218754439341790274

`A004277(A085738(n))-A168140(n)`
-/

namespace A168464.P10218754439341790274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A085738 n).toNat - A168140 n

end

end A168464.P10218754439341790274

/-! ## A168464.P17689054907693980035

`A038387(A168140(n)-A085737(n))-A085737(n)`
-/

namespace A168464.P17689054907693980035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038387 (A168140 n - A085737 n).toNat - A085737 n

end

end A168464.P17689054907693980035

/-! ## A168464.P9029774202523805272

`A004277(A168140(n)-A085737(n))-A168140(n)`
-/

namespace A168464.P9029774202523805272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A168140 n - A085737 n).toNat - A168140 n

end

end A168464.P9029774202523805272

/-!
# A168465: Numbers that are congruent to 2 or 7 mod 11.

The programs for A168465, the canonical program `A168465.P6772616245369084777` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168465 has offset 1).

The definition of A168465 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168465.P6772616245369084777

`(22*(n+1)-(-1)^(n+1)-3)/4-3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168465

/-- `(22*(n+1)-(-1)^(n+1)-3)/4-3` -/
def P6772616245369084777.Spec : Prop :=
  ∀ n, P6772616245369084777.a n = (A168465 (n + 1) : ℚ)

end A168465

/-! ## A168465.P15848477368928111267

`∑[abs(a(n-2))]` with `a(0)=2, a(1)=5, a(2)=6`
-/

namespace A168465.P15848477368928111267
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 5, 6] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168465.P15848477368928111267

namespace A168465

/-- `∑[abs(a(n-2))]` -/
def P15848477368928111267.Spec : Prop :=
  ∀ n, (P15848477368928111267.a n : ℤ) = A168465 (n + 1)

end A168465

/-! ## A168465.P12076097144273035926

`∑[11-a(n-1)]` with `a(0)=2, a(1)=5`
-/

namespace A168465.P12076097144273035926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168465.P12076097144273035926

namespace A168465

/-- `∑[11-a(n-1)]` -/
def P12076097144273035926.Spec : Prop :=
  ∀ n, P12076097144273035926.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P5506802523055850166

`∑[∑[ogf((2+5x+4x^2)/(1+x))]]`
-/

namespace A168465.P5506802523055850166
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 4] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168465.P5506802523055850166

namespace A168465

/-- `∑[∑[ogf((2+5x+4x^2)/(1+x))]]` -/
def P5506802523055850166.Spec : Prop :=
  ∀ n, P5506802523055850166.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P9041298719429896118

`ogf((2+5x+4x^2)/(1-x-x^2+x^3))`
-/

namespace A168465.P9041298719429896118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 5, 4] [1, -1, -1, 1] n

end

end A168465.P9041298719429896118

namespace A168465

/-- `ogf((2+5x+4x^2)/(1-x-x^2+x^3))` -/
def P9041298719429896118.Spec : Prop :=
  ∀ n, P9041298719429896118.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P4062081346961629800

`floor(a(n-1)-((n-a(n-1))%3-4))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A168465.P4062081346961629800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) - (Int.tmod ((n : ℤ) - a (n - 1)) 3 - 4)

end

end A168465.P4062081346961629800

namespace A168465

/-- `floor(a(n-1)-((n-a(n-1))%3-4))` -/
def P4062081346961629800.Spec : Prop :=
  ∀ n, P4062081346961629800.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P178299910030058388

`floor(A017437(n)/2)`
-/

namespace A168465.P178299910030058388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017437 n : ℚ) / 2⌋

end

end A168465.P178299910030058388

namespace A168465

/-- `floor(A017437(n)/2)` -/
def P178299910030058388.Spec : Prop :=
  ∀ n, P178299910030058388.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P3134979911176164537

`ceil(A017425(n)/2)`
-/

namespace A168465.P3134979911176164537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A017425 n : ℚ) / 2⌉

end

end A168465.P3134979911176164537

namespace A168465

/-- `ceil(A017425(n)/2)` -/
def P3134979911176164537.Spec : Prop :=
  ∀ n, P3134979911176164537.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P1847801310326076177

`floor((A017449(n)-1)/2)`
-/

namespace A168465.P1847801310326076177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A017449 n - 1 : ℚ) / 2⌋

end

end A168465.P1847801310326076177

namespace A168465

/-- `floor((A017449(n)-1)/2)` -/
def P1847801310326076177.Spec : Prop :=
  ∀ n, P1847801310326076177.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P3081353507914062248

`∑[A010717(a(n-1))]` with `a(0)=2`
-/

namespace A168465.P3081353507914062248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A010717 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168465.P3081353507914062248

namespace A168465

/-- `∑[A010717(a(n-1))]` -/
def P3081353507914062248.Spec : Prop :=
  ∀ n, P3081353507914062248.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P13918564115633463449

`∑[A023408(a(n-1))]` with `a(0)=2`
-/

namespace A168465.P13918564115633463449
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A023408 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168465.P13918564115633463449

namespace A168465

/-- `∑[A023408(a(n-1))]` -/
def P13918564115633463449.Spec : Prop :=
  ∀ n, P13918564115633463449.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P533379960606378696

`∑[A046604(a(n-1))]` with `a(0)=2`
-/

namespace A168465.P533379960606378696
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A046604 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168465.P533379960606378696

namespace A168465

/-- `∑[A046604(a(n-1))]` -/
def P533379960606378696.Spec : Prop :=
  ∀ n, P533379960606378696.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P9112328708958205629

`∑[A147653(a(n-1))]` with `a(0)=2`
-/

namespace A168465.P9112328708958205629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A147653 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168465.P9112328708958205629

namespace A168465

/-- `∑[A147653(a(n-1))]` -/
def P9112328708958205629.Spec : Prop :=
  ∀ n, P9112328708958205629.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P5551242857374815842

`∑[A157339(a(n-1))]` with `a(0)=2`
-/

namespace A168465.P5551242857374815842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A157339 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168465.P5551242857374815842

namespace A168465

/-- `∑[A157339(a(n-1))]` -/
def P5551242857374815842.Spec : Prop :=
  ∀ n, P5551242857374815842.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P17151468604723429020

`∑[A249905(a(n-1))]` with `a(0)=2`
-/

namespace A168465.P17151468604723429020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A249905 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168465.P17151468604723429020

namespace A168465

/-- `∑[A249905(a(n-1))]` -/
def P17151468604723429020.Spec : Prop :=
  ∀ n, P17151468604723429020.a n = A168465 (n + 1)

end A168465

/-! ## A168465.P17771975628315417403

`∑[A276860(a(n-1))]` with `a(0)=2`
-/

namespace A168465.P17771975628315417403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A276860 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168465.P17771975628315417403

namespace A168465

/-- `∑[A276860(a(n-1))]` -/
def P17771975628315417403.Spec : Prop :=
  ∀ n, P17771975628315417403.a n = A168465 (n + 1)

end A168465

/-!
# A168467: a(n) = Product_{k=0..n} ((2*k+2)*(2*k+3))^(n-k).

The programs for A168467, there is no canonical definition to state claims against.
-/

/-! ## A168467.P2692683723569390080

`∏[Δ[n²]!]`
-/

namespace A168467.P2692683723569390080
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168467.P2692683723569390080

/-! ## A168467.P11422737371078372214

`∏[record[xor(1, n)!]]`
-/

namespace A168467.P11422737371078372214
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.xor 1 n)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168467.P11422737371078372214

/-! ## A168467.P17074665534330372135

`∏[record[gcd(n, ∑[n])!]]`
-/

namespace A168467.P17074665534330372135
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168467.P17074665534330372135

/-! ## A168467.P14656618293503794063

`∏[record[(lcm(2, n)/2)!]]`
-/

namespace A168467.P14656618293503794063
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway ((Nat.lcm 2 n : ℚ) / 2)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168467.P14656618293503794063

/-! ## A168467.P10775263286009257473

`∏[record[(n*n%2)!]]`
-/

namespace A168467.P10775263286009257473
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n * (n % 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168467.P10775263286009257473

/-!
# A168469: Numbers of the form p^2 - q^2, p, q primes, p > q, with repetitions.

The programs for A168469, there is no canonical definition to state claims against.
-/

/-! ## A168469.P10225030752387905095

`A124865(A258154(n+3)+A108922(n))`
-/

namespace A168469.P10225030752387905095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124865 (A258154 (n + 3) + A108922 n).toNat

end

end A168469.P10225030752387905095

/-! ## A168469.P10055030768223787778

`A124865(A108922(n)%A329441(3*n+2))`
-/

namespace A168469.P10055030768223787778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124865 (Int.tmod (A108922 n) (A329441 (3 * n + 2))).toNat

end

end A168469.P10055030768223787778

/-! ## A168469.P2406291019774644227

`A124865(n+1)-A072088(A241690(2*n+3))`
-/

namespace A168469.P2406291019774644227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124865 (n + 1) - A072088 (A241690 (2 * n + 3)).toNat

end

end A168469.P2406291019774644227

/-! ## A168469.P8799146554474098973

`A124865(n+1)-A339629(A003961(3*n+5))`
-/

namespace A168469.P8799146554474098973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124865 (n + 1) - A339629 (A003961 (3 * n + 5)).toNat

end

end A168469.P8799146554474098973

/-!
# A168470: Number of partitions of prime(n) into prime parts smaller than itself.

The programs for A168470, there is no canonical definition to state claims against.
-/

/-! ## A168470.P13380154940940670470

`A056768(n+1)-1`
-/

namespace A168470.P13380154940940670470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056768 (n + 1) - 1

end

end A168470.P13380154940940670470

/-! ## A168470.P4518232711215321774

`A000607(Δ[A007504(n)])-1`
-/

namespace A168470.P4518232711215321774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (n + 1) - f1 n).toNat - 1

end

end A168470.P4518232711215321774

/-! ## A168470.P1085682246669399450

`A000607(A000040(n+1))-1`
-/

namespace A168470.P1085682246669399450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A000040 (n + 1)).toNat - 1

end

end A168470.P1085682246669399450

/-! ## A168470.P15375791638863028028

`A000607(A008578(n+2))-1`
-/

namespace A168470.P15375791638863028028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A008578 (n + 2)).toNat - 1

end

end A168470.P15375791638863028028

/-! ## A168470.P12226559090900713751

`A000607(A175787(n+2))-1`
-/

namespace A168470.P12226559090900713751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A175787 (n + 2)).toNat - 1

end

end A168470.P12226559090900713751

/-! ## A168470.P10187333136144561222

`A000607(A182986(n+2))-1`
-/

namespace A168470.P10187333136144561222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A182986 (n + 2)).toNat - 1

end

end A168470.P10187333136144561222

/-! ## A168470.P1846039994815879564

`A000607(sqrt(A001248(n+1)))-1`
-/

namespace A168470.P1846039994815879564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat - 1

end

end A168470.P1846039994815879564

/-! ## A168470.P7301685248290523025

`A000607(record[A006530(n+2)])-1`
-/

namespace A168470.P7301685248290523025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A168470.P7301685248290523025

/-! ## A168470.P13813200212428154445

`A000607(record[A008472(n+2)])-1`
-/

namespace A168470.P13813200212428154445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008472 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A168470.P13813200212428154445

/-! ## A168470.P3387591917694426278

`A000607(record[A020639(n+2)])-1`
-/

namespace A168470.P3387591917694426278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat - 1

end

end A168470.P3387591917694426278

/-! ## A168470.P96280454697119933

`A000607(A006093(n+1)+1)-1`
-/

namespace A168470.P96280454697119933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A006093 (n + 1) + 1).toNat - 1

end

end A168470.P96280454697119933

/-! ## A168470.P18444352282197399002

`A000607(A008864(n+1)-1)-1`
-/

namespace A168470.P18444352282197399002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A008864 (n + 1) - 1).toNat - 1

end

end A168470.P18444352282197399002

/-! ## A168470.P18365132629312364422

`A000607(A040976(n+1)+2)-1`
-/

namespace A168470.P18365132629312364422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A040976 (n + 1) + 2).toNat - 1

end

end A168470.P18365132629312364422

/-! ## A168470.P424016370427213173

`A000607(A052147(n+1)-2)-1`
-/

namespace A168470.P424016370427213173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A052147 (n + 1) - 2).toNat - 1

end

end A168470.P424016370427213173

/-! ## A168470.P9485617943299431910

`A000607(A100484(n+1)/2)-1`
-/

namespace A168470.P9485617943299431910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (SequenceMachineLib.roundAway ((A100484 (n + 1) : ℚ) / 2)).toNat - 1

end

end A168470.P9485617943299431910

/-! ## A168470.P11516413800044014271

`A000607(A014692(n+1)+n)-1`
-/

namespace A168470.P11516413800044014271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A014692 (n + 1) + (n : ℤ)).toNat - 1

end

end A168470.P11516413800044014271

/-! ## A168470.P2867689814693941383

`A000607(A007504(n+1)-A007504(n))-1`
-/

namespace A168470.P2867689814693941383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A007504 (n + 1) - A007504 n).toNat - 1

end

end A168470.P2867689814693941383

/-! ## A168470.P7074791742616730527

`A000607(A001748(n+1)-A100484(n+1))-1`
-/

namespace A168470.P7074791742616730527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (A001748 (n + 1) - A100484 (n + 1)).toNat - 1

end

end A168470.P7074791742616730527

/-! ## A168470.P9555395459911296506

`A000607(A030078(n+1)/A001248(n+1))-1`
-/

namespace A168470.P9555395459911296506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000607 (SequenceMachineLib.roundAway ((A030078 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ))).toNat - 1

end

end A168470.P9555395459911296506

/-! ## A168470.P5349574608302942901

`A106743(A000040(n+1))+A056768(n+1)`
-/

namespace A168470.P5349574608302942901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106743 (A000040 (n + 1)).toNat + A056768 (n + 1)

end

end A168470.P5349574608302942901

/-!
# A168471: a(n) = n^5*(n^9 + 1)/2.

The programs for A168471, the canonical program `A168471.P7596393113812289214` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168471 has offset 0).

The definition of A168471 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168471.P7596393113812289214

`n^5*(n^9+1)/2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168471

/-- `n^5*(n^9+1)/2` -/
def P7596393113812289214.Spec : Prop :=
  ∀ n, P7596393113812289214.a n = (A168471 n : ℚ)

end A168471

/-! ## A168471.P12939357249619860755

`lcm(A168118(n), A168351(n))`
-/

namespace A168471.P12939357249619860755
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168118 n) (A168351 n)

end

end A168471.P12939357249619860755

namespace A168471

/-- `lcm(A168118(n), A168351(n))` -/
def P12939357249619860755.Spec : Prop :=
  ∀ n, (P12939357249619860755.a n : ℤ) = A168471 n

end A168471

/-! ## A168471.P15742015829977744833

`lcm(A168153(n), A168371(n))`
-/

namespace A168471.P15742015829977744833
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A168153 n) (A168371 n)

end

end A168471.P15742015829977744833

namespace A168471

/-- `lcm(A168153(n), A168371(n))` -/
def P15742015829977744833.Spec : Prop :=
  ∀ n, (P15742015829977744833.a n : ℤ) = A168471 n

end A168471

/-! ## A168471.P5333267458721968057

`abs(A001489(n)*A168345(n))`
-/

namespace A168471.P5333267458721968057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001489 n * A168345 n|

end

end A168471.P5333267458721968057

namespace A168471

/-- `abs(A001489(n)*A168345(n))` -/
def P5333267458721968057.Spec : Prop :=
  ∀ n, P5333267458721968057.a n = A168471 n

end A168471

/-! ## A168471.P4634310567384353532

`abs(n*A001489(n)*A168190(n))`
-/

namespace A168471.P4634310567384353532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * (A001489 n * A168190 n)|

end

end A168471.P4634310567384353532

namespace A168471

/-- `abs(n*A001489(n)*A168190(n))` -/
def P4634310567384353532.Spec : Prop :=
  ∀ n, P4634310567384353532.a n = A168471 n

end A168471

/-! ## A168471.P15427995813713487744

`ceil(A170791(n)/A233583(n+1)²²)`
-/

namespace A168471.P15427995813713487744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A170791 n : ℚ) / ((A233583 (n + 1) ^ 2) ^ 2 : ℚ)⌉

end

end A168471.P15427995813713487744

namespace A168471

/-- `ceil(A170791(n)/A233583(n+1)²²)` -/
def P15427995813713487744.Spec : Prop :=
  ∀ n, P15427995813713487744.a n = A168471 n

end A168471

/-!
# A168472: Partial sums of products of two distinct primes (A006881).

The programs for A168472, the canonical program `A168472.P7588143364208973636` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168472 has offset 1).

The definition of A168472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168472.P2150330439900377025

`∑[A006881(n+1)]`
-/

namespace A168472.P2150330439900377025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P2150330439900377025

namespace A168472

/-- `∑[A006881(n+1)]` -/
def P2150330439900377025.Spec : Prop :=
  ∀ n, P2150330439900377025.a n = A168472 (n + 1)

end A168472

/-! ## A168472.P1284793460805753476

`∑[eq[4, A077462(n)]]`
-/

namespace A168472.P1284793460805753476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P1284793460805753476

namespace A168472

/-- `∑[eq[4, A077462(n)]]` -/
def P1284793460805753476.Spec : Prop :=
  ∀ n, (P1284793460805753476.a n : ℤ) = A168472 (n + 1)

end A168472

/-! ## A168472.P15527595392124862276

`∑[sqrt(A085986(n+1))]`
-/

namespace A168472.P15527595392124862276
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A085986 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P15527595392124862276

namespace A168472

/-- `∑[sqrt(A085986(n+1))]` -/
def P15527595392124862276.Spec : Prop :=
  ∀ n, P15527595392124862276.a n = (A168472 (n + 1) : ℝ)

end A168472

/-! ## A168472.P4762131363113235083

`∑[root(A162142(n+1), 3)]`
-/

namespace A168472.P4762131363113235083
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A162142 (n + 1) : ℝ) ^ (1 / (3 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P4762131363113235083

namespace A168472

/-- `∑[root(A162142(n+1), 3)]` -/
def P4762131363113235083.Spec : Prop :=
  ∀ n, P4762131363113235083.a n = (A168472 (n + 1) : ℝ)

end A168472

/-! ## A168472.P2544580197968712523

`∑[eq[1, A280710(n+1)]+1]`
-/

namespace A168472.P2544580197968712523
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280710 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P2544580197968712523

namespace A168472

/-- `∑[eq[1, A280710(n+1)]+1]` -/
def P2544580197968712523.Spec : Prop :=
  ∀ n, (P2544580197968712523.a n : ℤ) = A168472 (n + 1)

end A168472

/-! ## A168472.P8367771587911054061

`∑[eq[1, A281116(n+1)]+1]`
-/

namespace A168472.P8367771587911054061
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281116 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P8367771587911054061

namespace A168472

/-- `∑[eq[1, A281116(n+1)]+1]` -/
def P8367771587911054061.Spec : Prop :=
  ∀ n, (P8367771587911054061.a n : ℤ) = A168472 (n + 1)

end A168472

/-! ## A168472.P14461464185273990192

`∑[eq[2, A046645(n+1)]+1]`
-/

namespace A168472.P14461464185273990192
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046645 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P14461464185273990192

namespace A168472

/-- `∑[eq[2, A046645(n+1)]+1]` -/
def P14461464185273990192.Spec : Prop :=
  ∀ n, (P14461464185273990192.a n : ℤ) = A168472 (n + 1)

end A168472

/-! ## A168472.P791146785959505007

`∑[eq[2, A051709(n+1)]+1]`
-/

namespace A168472.P791146785959505007
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051709 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P791146785959505007

namespace A168472

/-- `∑[eq[2, A051709(n+1)]+1]` -/
def P791146785959505007.Spec : Prop :=
  ∀ n, (P791146785959505007.a n : ℤ) = A168472 (n + 1)

end A168472

/-! ## A168472.P15984023852185653051

`∑[A070647(n+1)*A096916(n+1)]`
-/

namespace A168472.P15984023852185653051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070647 (n + 1) * A096916 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P15984023852185653051

namespace A168472

/-- `∑[A070647(n+1)*A096916(n+1)]` -/
def P15984023852185653051.Spec : Prop :=
  ∀ n, P15984023852185653051.a n = A168472 (n + 1)

end A168472

/-! ## A168472.P7588143364208973636

`∑[A161918(n+2)]-2`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A168472

/-- `∑[A161918(n+2)]-2` -/
def P7588143364208973636.Spec : Prop :=
  ∀ n, P7588143364208973636.a n = A168472 (n + 1)

theorem P7588143364208973636.correct : P7588143364208973636.Spec := by
  intro n
  simp only [A168472, Nat.add_sub_cancel]

end A168472

/-! ## A168472.P6782673274047000841

`∑[eq[3, A074206(n)]]`
-/

namespace A168472.P6782673274047000841
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P6782673274047000841

namespace A168472

/-- `∑[eq[3, A074206(n)]]` -/
def P6782673274047000841.Spec : Prop :=
  ∀ n, (P6782673274047000841.a n : ℤ) = A168472 (n + 1)

end A168472

/-! ## A168472.P6712899034473574344

`∑[eq[2, A349620(n+1)]+1]`
-/

namespace A168472.P6712899034473574344
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349620 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P6712899034473574344

namespace A168472

/-- `∑[eq[2, A349620(n+1)]+1]` -/
def P6712899034473574344.Spec : Prop :=
  ∀ n, (P6712899034473574344.a n : ℤ) = A168472 (n + 1)

end A168472

/-! ## A168472.P2699346946974378872

`∑[A081761(a(n-1))]` with `a(0)=6`
-/

namespace A168472.P2699346946974378872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A081761 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P2699346946974378872

namespace A168472

/-- `∑[A081761(a(n-1))]` -/
def P2699346946974378872.Spec : Prop :=
  ∀ n, P2699346946974378872.a n = A168472 (n + 1)

end A168472

/-! ## A168472.P16802301521185970786

`∑[eq[2, ∑{e}[n, #²]]]`
-/

namespace A168472.P16802301521185970786
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f4 n), Nat.factorization (f4 n) p ^ 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P16802301521185970786

namespace A168472

/-- `∑[eq[2, ∑{e}[n, #²]]]` -/
def P16802301521185970786.Spec : Prop :=
  ∀ n, (P16802301521185970786.a n : ℤ) = A168472 (n + 1)

end A168472

/-! ## A168472.P5258951975569584085

`∑[eq[2, A066882(n)]]`
-/

namespace A168472.P5258951975569584085
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P5258951975569584085

namespace A168472

/-- `∑[eq[2, A066882(n)]]` -/
def P5258951975569584085.Spec : Prop :=
  ∀ n, (P5258951975569584085.a n : ℤ) = A168472 (n + 1)

end A168472

/-! ## A168472.P6891816725533950643

`∑[eq[3, A211110(n)]]`
-/

namespace A168472.P6891816725533950643
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P6891816725533950643

namespace A168472

/-- `∑[eq[3, A211110(n)]]` -/
def P6891816725533950643.Spec : Prop :=
  ∀ n, (P6891816725533950643.a n : ℤ) = A168472 (n + 1)

end A168472

/-! ## A168472.P4343268668855531832

`∑[eq[2, A008476(n+1)]+1]`
-/

namespace A168472.P4343268668855531832
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008476 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P4343268668855531832

namespace A168472

/-- `∑[eq[2, A008476(n+1)]+1]` -/
def P4343268668855531832.Spec : Prop :=
  ∀ n, (P4343268668855531832.a n : ℤ) = A168472 (n + 1)

end A168472

/-! ## A168472.P6316277611341474943

`∑[A000026(A161918(n+2))]`
-/

namespace A168472.P6316277611341474943
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000026 (A161918 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P6316277611341474943

namespace A168472

/-- `∑[A000026(A161918(n+2))]` -/
def P6316277611341474943.Spec : Prop :=
  ∀ n, P6316277611341474943.a n = A168472 (n + 1)

end A168472

/-! ## A168472.P7198965119856034937

`∑[A282141(a(n-1))]` with `a(0)=6`
-/

namespace A168472.P7198965119856034937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [6] fun n f1 =>
  A282141 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P7198965119856034937

namespace A168472

/-- `∑[A282141(a(n-1))]` -/
def P7198965119856034937.Spec : Prop :=
  ∀ n, P7198965119856034937.a n = A168472 (n + 1)

end A168472

/-! ## A168472.P17276988813580492010

`∑[eq[2, A286852(n)]]`
-/

namespace A168472.P17276988813580492010
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286852 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168472.P17276988813580492010

namespace A168472

/-- `∑[eq[2, A286852(n)]]` -/
def P17276988813580492010.Spec : Prop :=
  ∀ n, (P17276988813580492010.a n : ℤ) = A168472 (n + 1)

end A168472

/-!
# A168473: Primes in A168472.

The programs for A168473, there is no canonical definition to state claims against.
-/

/-! ## A168473.P18199149785249084310

`p?[A168472(n+1)]`
-/

namespace A168473.P18199149785249084310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168473.P18199149785249084310

/-! ## A168473.P11141989295257912299

`p?[∑[A006881(n+1)]]`
-/

namespace A168473.P11141989295257912299
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168473.P11141989295257912299

/-! ## A168473.P13728445164653855237

`p?[∑[eq[3, A074206(n)]]]`
-/

namespace A168473.P13728445164653855237
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A168473.P13728445164653855237

/-! ## A168473.P15049555744911840181

`p?[∑[eq[3, A211110(n)]]]`
-/

namespace A168473.P15049555744911840181
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A168473.P15049555744911840181

/-! ## A168473.P12697068266965821030

`p?[∑[eq[4, A077462(n)]]]`
-/

namespace A168473.P12697068266965821030
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A168473.P12697068266965821030

/-! ## A168473.P14630004173190157298

`p?[∑[A161918(n+2)]-2]`
-/

namespace A168473.P14630004173190157298
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168473.P14630004173190157298

/-! ## A168473.P2310121484738450796

`p?[record[A168472(A052938(n))]]`
-/

namespace A168473.P2310121484738450796
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168472 (A052938 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168473.P2310121484738450796

/-! ## A168473.P3585144690102442193

`p?[record[A168472(A246694(n))]]`
-/

namespace A168473.P3585144690102442193
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168472 (A246694 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168473.P3585144690102442193

/-! ## A168473.P5992761271062717335

`p?[record[A168472(A305298(n))]]`
-/

namespace A168473.P5992761271062717335
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168472 (A305298 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168473.P5992761271062717335

/-!
# A168474: Primes of the form: sum of two consecutive products of two distinct primes.

The programs for A168474, there is no canonical definition to state claims against.
-/

/-! ## A168474.P8252082278404643287

`p?[A161918(n+1)+A006881(n+1)]`
-/

namespace A168474.P8252082278404643287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1) + A006881 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168474.P8252082278404643287

/-! ## A168474.P5483655574204011883

`p?[A006881(n+1)+A006881(n+2)]`
-/

namespace A168474.P5483655574204011883
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) + A006881 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168474.P5483655574204011883

/-! ## A168474.P5060569297779615736

`p?[A161918(n+1)+A161918(n+2)]`
-/

namespace A168474.P5060569297779615736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1) + A161918 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168474.P5060569297779615736

/-! ## A168474.P8758994169071208669

`p?[A168472(n+3)-A168472(n+1)]`
-/

namespace A168474.P8758994169071208669
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168472 (n + 3) - A168472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168474.P8758994169071208669

/-! ## A168474.P971883362198675928

`record[A014963(A006881(n+3)+A006881(n+4))]`
-/

namespace A168474.P971883362198675928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (A006881 (n + 3) + A006881 (n + 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168474.P971883362198675928

/-!
# A168475: Primes of the form: sum of 3 consecutive products of two distinct primes.

The programs for A168475, the canonical program `A168475.P426283500225182061` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168475 has offset 1).

The definition of A168475 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 904 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168475.P426283500225182061

`p?[A168472(n+7)-A168472(n+4)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A168475

/-- `p?[A168472(n+7)-A168472(n+4)]` -/
def P426283500225182061.Spec : Prop :=
  ∀ n, P426283500225182061.a n = A168475 (n + 1)

theorem P426283500225182061.correct : P426283500225182061.Spec := by
  intro n
  simp only [A168475, Nat.add_sub_cancel]

end A168475

/-! ## A168475.P17823794627229119848

`p?[A168472(n+10)%A168472(n+7)]`
-/

namespace A168475.P17823794627229119848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A168472 (n + 10)) (A168472 (n + 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168475.P17823794627229119848

namespace A168475

/-- `p?[A168472(n+10)%A168472(n+7)]` -/
def P17823794627229119848.Spec : Prop :=
  ∀ n, P17823794627229119848.a n = A168475 (n + 1)

end A168475

/-! ## A168475.P9622692918940560809

`p?[A006881(n+1)+A006881(n+2)+A006881(n+3)]`
-/

namespace A168475.P9622692918940560809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) + (A006881 (n + 2) + A006881 (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A168475.P9622692918940560809

namespace A168475

/-- `p?[A006881(n+1)+A006881(n+2)+A006881(n+3)]` -/
def P9622692918940560809.Spec : Prop :=
  ∀ n, P9622692918940560809.a n = A168475 (n + 1)

end A168475

/-!
# A168476: Numbers that are the product of two distinct primes and they are partial sum of products of two distinct primes.

The programs for A168476, there is no canonical definition to state claims against.
-/

/-! ## A168476.P2822462339497977662

`filter[A168472(n+1), A280710(#)]`
-/

namespace A168476.P2822462339497977662
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A280710 (f1 j).toNat = 1) n)

end

end A168476.P2822462339497977662

/-! ## A168476.P11341120418393150489

`filter[A168472(n+1), A354927(#)]`
-/

namespace A168476.P11341120418393150489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168472 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A168476.P11341120418393150489

/-! ## A168476.P3337388814222349735

`∩[A006881(n+1), A168472(n+1)]`
-/

namespace A168476.P3337388814222349735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168476.P3337388814222349735

/-! ## A168476.P13626679270419233545

`∩[A007422(n+1), A168472(n+1)]`
-/

namespace A168476.P13626679270419233545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007422 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168476.P13626679270419233545

/-! ## A168476.P16971160887019112018

`∩[A030513(n+1), A168472(n+1)]`
-/

namespace A168476.P16971160887019112018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030513 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168472 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168476.P16971160887019112018

/-!
# A168477: Numbers that are the product of two distinct primes and they are sum of two consecutive products of two distinct primes.

The programs for A168477, there is no canonical definition to state claims against.
-/

/-! ## A168477.P14317011391831098243

`∩[A006881(n+1), A161918(n+1)+A006881(n+1)]`
-/

namespace A168477.P14317011391831098243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161918 (n + 1) + A006881 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168477.P14317011391831098243

/-! ## A168477.P13826597354612145851

`∩[A006881(n+1), A006881(n+1)+A006881(n+2)]`
-/

namespace A168477.P13826597354612145851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) + A006881 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168477.P13826597354612145851

/-! ## A168477.P4176450269546657322

`∩[A307507(n+1), A307507(n+1)+A307507(n+2)]`
-/

namespace A168477.P4176450269546657322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307507 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307507 (n + 1) + A307507 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168477.P4176450269546657322

/-! ## A168477.P14368965252490081977

`A092192(A216846(n+2)%A180630(2*n+3))`
-/

namespace A168477.P14368965252490081977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092192 (Int.tmod (A216846 (n + 2)) (A180630 (2 * n + 3))).toNat

end

end A168477.P14368965252490081977

/-! ## A168477.P8997826688790721074

`A092192(A216846(n+2)%A236355(n+1))`
-/

namespace A168477.P8997826688790721074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092192 (Int.tmod (A216846 (n + 2)) (A236355 (n + 1))).toNat

end

end A168477.P8997826688790721074

/-!
# A168478: G.f. satisfies: A(x/A(x)^3) = G(x) where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A168478, there is no canonical definition to state claims against.
-/

/-! ## A168478.P15160920197981408790

`A004525(A326000(n))`
-/

namespace A168478.P15160920197981408790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A326000 n).toNat

end

end A168478.P15160920197981408790

/-!
# A168479: G.f. satisfies: A(x/A(x)) = G(x)^3 where G(x) = 1 + x*G(x)^3 is the g.f. of A001764.

The programs for A168479, there is no canonical definition to state claims against.
-/

/-! ## A168479.P14734710293577146807

`A008611(A005594(3*n))+1`
-/

namespace A168479.P14734710293577146807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (A005594 (3 * n)).toNat + 1

end

end A168479.P14734710293577146807

/-!
# A168480: G.f.: Sum_{n>=0} 2^(n^2)*(1 + 2^n*x)^n*x^n.

The programs for A168480, there is no canonical definition to state claims against.
-/

/-! ## A168480.P8700731168690216331

`A342120(eq[A025581(n), A059268(n)])`
-/

namespace A168480.P8700731168690216331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059268 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342120 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A168480.P8700731168690216331

/-!
# A168483: Terms of A123239 which are primes in Z(sqrt(5)).

The programs for A168483, there is no canonical definition to state claims against.
-/

/-! ## A168483.P9277985744410806708

`∩[A003631(n+1), A123239(n+1)]`
-/

namespace A168483.P9277985744410806708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003631 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168483.P9277985744410806708

/-! ## A168483.P15601237415826387889

`∩[A023162(n+1), A123239(n+1)]`
-/

namespace A168483.P15601237415826387889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023162 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168483.P15601237415826387889

/-! ## A168483.P59284132214892103

`∩[A042993(n+1), A123239(n+1)]`
-/

namespace A168483.P59284132214892103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168483.P59284132214892103

/-! ## A168483.P5546119450427419880

`∩[A047221(n+1), A123239(n+1)]`
-/

namespace A168483.P5546119450427419880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047221 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168483.P5546119450427419880

/-! ## A168483.P16876145986355071656

`∩[A047222(n+1), A123239(n+1)]`
-/

namespace A168483.P16876145986355071656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047222 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123239 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168483.P16876145986355071656

/-!
# A168484: Numbers that are congruent to {2, 3, 5, 7} mod 11.

The programs for A168484, the canonical program `A168484.P13956028548312359268` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168484 has offset 1).

The definition of A168484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168484.P13956028548312359268

`a(n-1)+a(n-4)-a(n-5)` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7, a(4)=13`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168484

/-- `a(n-1)+a(n-4)-a(n-5)` -/
def P13956028548312359268.Spec : Prop :=
  ∀ n, P13956028548312359268.a n = A168484 (n + 1)

theorem P13956028548312359268.correct : P13956028548312359268.Spec := by
  intro n
  simp only [A168484, Nat.add_sub_cancel]

end A168484

/-! ## A168484.P5230611808104885614

`a(n-4)+11` with `a(0)=2, a(1)=3, a(2)=5, a(3)=7`
-/

namespace A168484.P5230611808104885614
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3, 5, 7] fun n a =>
  a (n - 4) + 11

end

end A168484.P5230611808104885614

namespace A168484

/-- `a(n-4)+11` -/
def P5230611808104885614.Spec : Prop :=
  ∀ n, (P5230611808104885614.a n : ℤ) = A168484 (n + 1)

end A168484

/-! ## A168484.P4222846858030761555

`∑[floor(a(n-4))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=6`

`floor` is left out, it is the identity on integers.
-/

namespace A168484.P4222846858030761555
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 6] fun n f1 =>
  f1 (n - 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168484.P4222846858030761555

namespace A168484

/-- `∑[floor(a(n-4))]` -/
def P4222846858030761555.Spec : Prop :=
  ∀ n, (P4222846858030761555.a n : ℤ) = A168484 (n + 1)

end A168484

/-! ## A168484.P14709079809674943245

`∑[gcd(6, a(n-4))]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=6`
-/

namespace A168484.P14709079809674943245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 6] fun n f1 =>
  Nat.gcd 6 (f1 (n - 4))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168484.P14709079809674943245

namespace A168484

/-- `∑[gcd(6, a(n-4))]` -/
def P14709079809674943245.Spec : Prop :=
  ∀ n, (P14709079809674943245.a n : ℤ) = A168484 (n + 1)

end A168484

/-! ## A168484.P16973820923891230739

`∑[a(n-4)%7]` with `a(0)=2, a(1)=1, a(2)=2, a(3)=2, a(4)=6`
-/

namespace A168484.P16973820923891230739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1, 2, 2, 6] fun n f1 =>
  f1 (n - 4) % 7

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168484.P16973820923891230739

namespace A168484

/-- `∑[a(n-4)%7]` -/
def P16973820923891230739.Spec : Prop :=
  ∀ n, (P16973820923891230739.a n : ℤ) = A168484 (n + 1)

end A168484

/-! ## A168484.P12117502407338391513

`∑[∑[ogf((x+2x^2+2x^3+6x^4)/(1+x+x^2+x^3))]]+2`
-/

namespace A168484.P12117502407338391513
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 2, 2, 6] [1, 1, 1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A168484.P12117502407338391513

namespace A168484

/-- `∑[∑[ogf((x+2x^2+2x^3+6x^4)/(1+x+x^2+x^3))]]+2` -/
def P12117502407338391513.Spec : Prop :=
  ∀ n, P12117502407338391513.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P13090450052842555770

`A260181(n+1)+floor(n/4)`
-/

namespace A168484.P13090450052842555770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260181 (n + 1) + ⌊(n : ℚ) / 4⌋

end

end A168484.P13090450052842555770

namespace A168484

/-- `A260181(n+1)+floor(n/4)` -/
def P13090450052842555770.Spec : Prop :=
  ∀ n, P13090450052842555770.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P9531853870595798511

`A047454(n+1)+A037915(n)`
-/

namespace A168484.P9531853870595798511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) + A037915 n

end

end A168484.P9531853870595798511

namespace A168484

/-- `A047454(n+1)+A037915(n)` -/
def P9531853870595798511.Spec : Prop :=
  ∀ n, P9531853870595798511.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P11764996705652474911

`A057353(n)+A047596(n+1)`
-/

namespace A168484.P11764996705652474911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057353 n + A047596 (n + 1)

end

end A168484.P11764996705652474911

namespace A168484

/-- `A057353(n)+A047596(n+1)` -/
def P11764996705652474911.Spec : Prop :=
  ∀ n, P11764996705652474911.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P16065378531153978513

`A122461(n)+A028835(n+1)`
-/

namespace A168484.P16065378531153978513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122461 n + A028835 (n + 1)

end

end A168484.P16065378531153978513

namespace A168484

/-- `A122461(n)+A028835(n+1)` -/
def P16065378531153978513.Spec : Prop :=
  ∀ n, P16065378531153978513.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P13915885027204888006

`A130766(n)+A047613(n+1)`
-/

namespace A168484.P13915885027204888006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130766 n + A047613 (n + 1)

end

end A168484.P13915885027204888006

namespace A168484

/-- `A130766(n)+A047613(n+1)` -/
def P13915885027204888006.Spec : Prop :=
  ∀ n, P13915885027204888006.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P15844968170364763729

`A187321(n)+A047417(n+1)`
-/

namespace A168484.P15844968170364763729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187321 n + A047417 (n + 1)

end

end A168484.P15844968170364763729

namespace A168484

/-- `A187321(n)+A047417(n+1)` -/
def P15844968170364763729.Spec : Prop :=
  ∀ n, P15844968170364763729.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P1942843116063017709

`A088225(n+1)-A158459(n)`
-/

namespace A168484.P1942843116063017709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088225 (n + 1) - A158459 n

end

end A168484.P1942843116063017709

namespace A168484

/-- `A088225(n+1)-A158459(n)` -/
def P1942843116063017709.Spec : Prop :=
  ∀ n, P1942843116063017709.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P9401625454366245680

`A166517(A004525(n))+2*n`
-/

namespace A168484.P9401625454366245680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 (A004525 n).toNat + (2 * n : ℤ)

end

end A168484.P9401625454366245680

namespace A168484

/-- `A166517(A004525(n))+2*n` -/
def P9401625454366245680.Spec : Prop :=
  ∀ n, P9401625454366245680.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P6090249528627586313

`A265430(n)+2*A130766(n)`
-/

namespace A168484.P6090249528627586313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A265430 n + 2 * A130766 n

end

end A168484.P6090249528627586313

namespace A168484

/-- `A265430(n)+2*A130766(n)` -/
def P6090249528627586313.Spec : Prop :=
  ∀ n, P6090249528627586313.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P980895621794747935

`A047454(n+1)+A057353(n)+1`
-/

namespace A168484.P980895621794747935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047454 (n + 1) + (A057353 n + 1)

end

end A168484.P980895621794747935

namespace A168484

/-- `A047454(n+1)+A057353(n)+1` -/
def P980895621794747935.Spec : Prop :=
  ∀ n, P980895621794747935.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P5515359480107824012

`A203016(n+1)-A047366(n+1)`
-/

namespace A168484.P5515359480107824012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A203016 (n + 1) - A047366 (n + 1)

end

end A168484.P5515359480107824012

namespace A168484

/-- `A203016(n+1)-A047366(n+1)` -/
def P5515359480107824012.Spec : Prop :=
  ∀ n, P5515359480107824012.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P212750346782232314

`A028835(n+1)+2*A002265(n)`
-/

namespace A168484.P212750346782232314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1) + 2 * A002265 n

end

end A168484.P212750346782232314

namespace A168484

/-- `A028835(n+1)+2*A002265(n)` -/
def P212750346782232314.Spec : Prop :=
  ∀ n, P212750346782232314.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P8956869295708687143

`A047596(n+1)+n-A110655(n)`
-/

namespace A168484.P8956869295708687143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047596 (n + 1) + ((n : ℤ) - A110655 n)

end

end A168484.P8956869295708687143

namespace A168484

/-- `A047596(n+1)+n-A110655(n)` -/
def P8956869295708687143.Spec : Prop :=
  ∀ n, P8956869295708687143.a n = A168484 (n + 1)

end A168484

/-! ## A168484.P2600948991685262641

`A028835(n+1)+2*A004526(A004526(n))`
-/

namespace A168484.P2600948991685262641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028835 (n + 1) + 2 * A004526 (A004526 n).toNat

end

end A168484.P2600948991685262641

namespace A168484

/-- `A028835(n+1)+2*A004526(A004526(n))` -/
def P2600948991685262641.Spec : Prop :=
  ∀ n, P2600948991685262641.a n = A168484 (n + 1)

end A168484

/-!
# A168485: A165342(3n)/3.

The programs for A168485, the canonical program `A168485.P6840008458640291762` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168485 has offset 0).

The definition of A168485 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A165342, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168485.P6840008458640291762

`A165342(3*n)/3`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A168485

/-- `A165342(3*n)/3` -/
def P6840008458640291762.Spec : Prop :=
  ∀ n, P6840008458640291762.a n = (A168485 n : ℚ)

end A168485

/-! ## A168485.P2967391596142649146

`A166720(n)/3`
-/

namespace A168485.P2967391596142649146
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A166720 n : ℚ) / 3

end

end A168485.P2967391596142649146

namespace A168485

/-- `A166720(n)/3` -/
def P2967391596142649146.Spec : Prop :=
  ∀ n, P2967391596142649146.a n = (A168485 n : ℚ)

end A168485

/-! ## A168485.P10816784955110812340

`gcd((lcm(4, n)/4)²+2*n*(n+2)/gcd(4, n)², 4*n)`
-/

namespace A168485.P10816784955110812340
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (((Nat.lcm 4 n : ℚ) / 4) ^ 2 + (2 * n : ℚ) * ((n + 2 : ℚ) / (Nat.gcd 4 n ^ 2 : ℚ)))) (4 * n : ℤ)

end

end A168485.P10816784955110812340

namespace A168485

/-- `gcd((lcm(4, n)/4)²+2*n*(n+2)/gcd(4, n)², 4*n)` -/
def P10816784955110812340.Spec : Prop :=
  ∀ n, (P10816784955110812340.a n : ℤ) = A168485 n

end A168485

/-! ## A168485.P9467402078341312758

`gcd(n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64, n²)`
-/

namespace A168485.P9467402078341312758
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway ((n : ℝ) * ((3 * n + 4 : ℝ) * ((37 - 27 * Real.cos (Real.pi * (n : ℝ)) - 6 * Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ))) / 64)))) (n ^ 2 : ℤ)

end

end A168485.P9467402078341312758

namespace A168485

/-- `gcd(n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64, n²)` -/
def P9467402078341312758.Spec : Prop :=
  ∀ n, (P9467402078341312758.a n : ℤ) = A168485 n

end A168485

/-! ## A168485.P3434042201299614634

`gcd(8*n, abs(n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64))`
-/

namespace A168485.P3434042201299614634
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (8 * n : ℤ) (SequenceMachineLib.roundAway |(n : ℝ) * ((3 * n + 4 : ℝ) * ((37 - 27 * Real.cos (Real.pi * (n : ℝ)) - 6 * Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ))) / 64))|)

end

end A168485.P3434042201299614634

namespace A168485

/-- `gcd(8*n, abs(n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64))` -/
def P3434042201299614634.Spec : Prop :=
  ∀ n, (P3434042201299614634.a n : ℤ) = A168485 n

end A168485

/-! ## A168485.P1079943818430968996

`gcd(-(n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64), n^5)`
-/

namespace A168485.P1079943818430968996
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (-((n : ℝ) * ((3 * n + 4 : ℝ) * ((37 - 27 * Real.cos (Real.pi * (n : ℝ)) - 6 * Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ))) / 64))))) (n ^ 5 : ℤ)

end

end A168485.P1079943818430968996

namespace A168485

/-- `gcd(-(n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64), n^5)` -/
def P1079943818430968996.Spec : Prop :=
  ∀ n, (P1079943818430968996.a n : ℤ) = A168485 n

end A168485

/-! ## A168485.P679102528007461924

`gcd(n^3, round(n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64))`
-/

namespace A168485.P679102528007461924
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 3 : ℤ) (SequenceMachineLib.roundAway ((n : ℝ) * ((3 * n + 4 : ℝ) * ((37 - 27 * Real.cos (Real.pi * (n : ℝ)) - 6 * Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ))) / 64))))

end

end A168485.P679102528007461924

namespace A168485

/-- `gcd(n^3, round(n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64))` -/
def P679102528007461924.Spec : Prop :=
  ∀ n, (P679102528007461924.a n : ℤ) = A168485 n

end A168485

/-! ## A168485.P3474369219148805754

`gcd(3*n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64, 32*n)`
-/

namespace A168485.P3474369219148805754
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.roundAway (3 * ((n : ℝ) * ((3 * n + 4 : ℝ) * ((37 - 27 * Real.cos (Real.pi * (n : ℝ)) - 6 * Real.cos (Real.pi * ((n : ℚ) / 2 : ℝ))) / 64))))) (32 * n : ℤ)

end

end A168485.P3474369219148805754

namespace A168485

/-- `gcd(3*n*(3*n+4)*(37-27*cos(π*n)-6*cos(π*n/2))/64, 32*n)` -/
def P3474369219148805754.Spec : Prop :=
  ∀ n, (P3474369219148805754.a n : ℤ) = A168485 n

end A168485

/-! ## A168485.P17464224950760313713

`gcd(n², A142883(n))`
-/

namespace A168485.P17464224950760313713
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n ^ 2 : ℤ) (A142883 n)

end

end A168485.P17464224950760313713

namespace A168485

/-- `gcd(n², A142883(n))` -/
def P17464224950760313713.Spec : Prop :=
  ∀ n, (P17464224950760313713.a n : ℤ) = A168485 n

end A168485

/-! ## A168485.P3810607798666445950

`gcd(4*n, A142590(n))`
-/

namespace A168485.P3810607798666445950
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 * n : ℤ) (A142590 n)

end

end A168485.P3810607798666445950

namespace A168485

/-- `gcd(4*n, A142590(n))` -/
def P3810607798666445950.Spec : Prop :=
  ∀ n, (P3810607798666445950.a n : ℤ) = A168485 n

end A168485

/-!
# A168486: Numbers that are congruent to {2, 5} mod 11.

The programs for A168486, the canonical program `A168486.P5513247955765082726` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168486 has offset 1).

The definition of A168486 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168486.P5513247955765082726

`11*n-a(n-1)-4` with `a(0)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168486

/-- `11*n-a(n-1)-4` -/
def P5513247955765082726.Spec : Prop :=
  ∀ n, P5513247955765082726.a n = A168486 (n + 1)

theorem P5513247955765082726.correct : P5513247955765082726.Spec := by
  intro n
  simp only [A168486, Nat.add_sub_cancel]

end A168486

/-! ## A168486.P8927668187967050715

`(22*(n+1)-5*(-1)^(n+1)-19)/4`
-/

namespace A168486.P8927668187967050715
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((22 * (n + 1) : ℤ) - 5 * (-1) ^ (n + 1) - 19 : ℚ) / 4

end

end A168486.P8927668187967050715

namespace A168486

/-- `(22*(n+1)-5*(-1)^(n+1)-19)/4` -/
def P8927668187967050715.Spec : Prop :=
  ∀ n, P8927668187967050715.a n = (A168486 (n + 1) : ℚ)

theorem P8927668187967050715.correct : P8927668187967050715.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A168486, Nat.add_sub_cancel, A168486.P8927668187967050715.a, A168486.P5513247955765082726.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A168486, Nat.add_sub_cancel, A168486.P8927668187967050715.a, A168486.P5513247955765082726.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A168486

/-! ## A168486.P12159220282729290307

`a(n-2)+11` with `a(0)=2, a(1)=5`
-/

namespace A168486.P12159220282729290307
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 5] fun n a =>
  a (n - 2) + 11

end

end A168486.P12159220282729290307

namespace A168486

/-- `a(n-2)+11` -/
def P12159220282729290307.Spec : Prop :=
  ∀ n, (P12159220282729290307.a n : ℤ) = A168486 (n + 1)

end A168486

/-! ## A168486.P2156987134292936381

`∑[11-a(n-1)]` with `a(0)=2, a(1)=3`
-/

namespace A168486.P2156987134292936381
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n f1 =>
  11 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168486.P2156987134292936381

namespace A168486

/-- `∑[11-a(n-1)]` -/
def P2156987134292936381.Spec : Prop :=
  ∀ n, P2156987134292936381.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P11649926373343971367

`∑[∑[ogf((2+3x+6x^2)/(1+x))]]`
-/

namespace A168486.P11649926373343971367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 6] [1, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168486.P11649926373343971367

namespace A168486

/-- `∑[∑[ogf((2+3x+6x^2)/(1+x))]]` -/
def P11649926373343971367.Spec : Prop :=
  ∀ n, P11649926373343971367.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P16778880704087371742

`ogf((2+3x+6x^2)/(1-x-x^2+x^3))`
-/

namespace A168486.P16778880704087371742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, 3, 6] [1, -1, -1, 1] n

end

end A168486.P16778880704087371742

namespace A168486

/-- `ogf((2+3x+6x^2)/(1-x-x^2+x^3))` -/
def P16778880704087371742.Spec : Prop :=
  ∀ n, P16778880704087371742.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P17019671273304582315

`5*n+∑[xor(2, -(n%2))]+n`
-/

namespace A168486.P17019671273304582315
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 (-((n % 2 : ℕ) : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (5 * n : ℤ) + (∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ))

end

end A168486.P17019671273304582315

namespace A168486

/-- `5*n+∑[xor(2, -(n%2))]+n` -/
def P17019671273304582315.Spec : Prop :=
  ∀ n, P17019671273304582315.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P5409251637577165870

`record[n-dr(2*n+1)²]+n+3`
-/

namespace A168486.P5409251637577165870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.digitalRoot (2 * n + 1 : ℤ) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n + 3 : ℤ)

end

end A168486.P5409251637577165870

namespace A168486

/-- `record[n-dr(2*n+1)²]+n+3` -/
def P5409251637577165870.Spec : Prop :=
  ∀ n, P5409251637577165870.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P2889821385500372816

`record[lcm(3, n+1)+2*n]-(2*n+1)`
-/

namespace A168486.P2889821385500372816
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 3 (n + 1) + 2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) - (2 * n + 1 : ℤ)

end

end A168486.P2889821385500372816

namespace A168486

/-- `record[lcm(3, n+1)+2*n]-(2*n+1)` -/
def P2889821385500372816.Spec : Prop :=
  ∀ n, P2889821385500372816.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P406460276627244394

`A281445(n+1)-2`
-/

namespace A168486.P406460276627244394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281445 (n + 1) - 2

end

end A168486.P406460276627244394

namespace A168486

/-- `A281445(n+1)-2` -/
def P406460276627244394.Spec : Prop :=
  ∀ n, P406460276627244394.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P3756012550709830697

`A166517(n)+4*n`
-/

namespace A168486.P3756012550709830697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166517 n + (4 * n : ℤ)

end

end A168486.P3756012550709830697

namespace A168486

/-- `A166517(n)+4*n` -/
def P3756012550709830697.Spec : Prop :=
  ∀ n, P3756012550709830697.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P2557193143056278791

`A084964(n)+5*n`
-/

namespace A168486.P2557193143056278791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084964 n + (5 * n : ℤ)

end

end A168486.P2557193143056278791

namespace A168486

/-- `A084964(n)+5*n` -/
def P2557193143056278791.Spec : Prop :=
  ∀ n, P2557193143056278791.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P341731936718761954

`∑[A040021(n)-2]-1`
-/

namespace A168486.P341731936718761954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040021 n - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A168486.P341731936718761954

namespace A168486

/-- `∑[A040021(n)-2]-1` -/
def P341731936718761954.Spec : Prop :=
  ∀ n, P341731936718761954.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P9175370864871551917

`∑[A010127(2*n)]-2`
-/

namespace A168486.P9175370864871551917
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010127 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A168486.P9175370864871551917

namespace A168486

/-- `∑[A010127(2*n)]-2` -/
def P9175370864871551917.Spec : Prop :=
  ∀ n, P9175370864871551917.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P13718131662650435482

`∑[A010706(a(n-1))]` with `a(0)=2`
-/

namespace A168486.P13718131662650435482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A010706 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168486.P13718131662650435482

namespace A168486

/-- `∑[A010706(a(n-1))]` -/
def P13718131662650435482.Spec : Prop :=
  ∀ n, P13718131662650435482.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P16366245497046991548

`∑[A015136(a(n-1))]` with `a(0)=2`
-/

namespace A168486.P16366245497046991548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A015136 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168486.P16366245497046991548

namespace A168486

/-- `∑[A015136(a(n-1))]` -/
def P16366245497046991548.Spec : Prop :=
  ∀ n, P16366245497046991548.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P13403909939954385151

`∑[A035292(a(n-1))]` with `a(0)=2`
-/

namespace A168486.P13403909939954385151
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A035292 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168486.P13403909939954385151

namespace A168486

/-- `∑[A035292(a(n-1))]` -/
def P13403909939954385151.Spec : Prop :=
  ∀ n, P13403909939954385151.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P16031901021194501584

`∑[A040915(a(n-1))]` with `a(0)=2`
-/

namespace A168486.P16031901021194501584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A040915 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168486.P16031901021194501584

namespace A168486

/-- `∑[A040915(a(n-1))]` -/
def P16031901021194501584.Spec : Prop :=
  ∀ n, P16031901021194501584.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P8018569509336417980

`∑[A151857(a(n-1))]` with `a(0)=2`
-/

namespace A168486.P8018569509336417980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A151857 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168486.P8018569509336417980

namespace A168486

/-- `∑[A151857(a(n-1))]` -/
def P8018569509336417980.Spec : Prop :=
  ∀ n, P8018569509336417980.a n = A168486 (n + 1)

end A168486

/-! ## A168486.P10060231363092436555

`∑[A194706(a(n-1))]` with `a(0)=2`
-/

namespace A168486.P10060231363092436555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A194706 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168486.P10060231363092436555

namespace A168486

/-- `∑[A194706(a(n-1))]` -/
def P10060231363092436555.Spec : Prop :=
  ∀ n, P10060231363092436555.a n = A168486 (n + 1)

end A168486

/-!
# A168487: Primes of the form 100n^3 + 27.

The programs for A168487, there is no canonical definition to state claims against.
-/

/-! ## A168487.P11361336588399019499

`p?[10*10*n^3+27]`
-/

namespace A168487.P11361336588399019499
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 * (10 * n ^ 3) + 27

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A168487.P11361336588399019499

/-!
# A168488: Hankel transform of Genocchi medians.

The programs for A168488, there is no canonical definition to state claims against.
-/

/-! ## A168488.P9886466370739881639

`∏[n!^4]`
-/

namespace A168488.P9886466370739881639
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n ^ 4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168488.P9886466370739881639

/-! ## A168488.P14734328611202194286

`∏[n!²²]`
-/

namespace A168488.P14734328611202194286
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n ^ 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168488.P14734328611202194286

/-! ## A168488.P9048168403109296987

`(4^∑[log2(n!)])²`
-/

namespace A168488.P9048168403109296987
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((4 : ℝ) ^ (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2

end

end A168488.P9048168403109296987

/-! ## A168488.P17361001414890810711

`exp(∑[log(n!)])^4`
-/

namespace A168488.P17361001414890810711
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log (Nat.factorial n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (∑ j ∈ Finset.range (n + 1), f1 j) ^ 4

end

end A168488.P17361001414890810711

/-! ## A168488.P9096685143066376866

`A055209(n)²`
-/

namespace A168488.P9096685143066376866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055209 n ^ 2

end

end A168488.P9096685143066376866

/-!
# A168489: Numbers that are congruent to {7,11} mod 12.

The programs for A168489, the canonical program `A168489.P2994560177447383898` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168489 has offset 1).

The definition of A168489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168489.P2994560177447383898

`6*(n+1)-(-1)^(n+1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168489

/-- `6*(n+1)-(-1)^(n+1)` -/
def P2994560177447383898.Spec : Prop :=
  ∀ n, P2994560177447383898.a n = A168489 (n + 1)

theorem P2994560177447383898.correct : P2994560177447383898.Spec := by
  intro n
  simp only [A168489, Nat.add_sub_cancel]

end A168489

/-! ## A168489.P12670092719801039795

`or(2, 6*n+5)`
-/

namespace A168489.P12670092719801039795
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 (6 * n + 5)

end

end A168489.P12670092719801039795

namespace A168489

/-- `or(2, 6*n+5)` -/
def P12670092719801039795.Spec : Prop :=
  ∀ n, (P12670092719801039795.a n : ℤ) = A168489 (n + 1)

end A168489

/-! ## A168489.P16468770944209158718

`xor(3, 4*comp[3*n])`
-/

namespace A168489.P16468770944209158718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 (4 * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A168489.P16468770944209158718

namespace A168489

/-- `xor(3, 4*comp[3*n])` -/
def P16468770944209158718.Spec : Prop :=
  ∀ n, (P16468770944209158718.a n : ℤ) = A168489 (n + 1)

end A168489

/-! ## A168489.P10432050939549382616

`record[or(3, 3*or(2, n))]`
-/

namespace A168489.P10432050939549382616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 3 (3 * Nat.lor 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168489.P10432050939549382616

namespace A168489

/-- `record[or(3, 3*or(2, n))]` -/
def P10432050939549382616.Spec : Prop :=
  ∀ n, (P10432050939549382616.a n : ℤ) = A168489 (n + 1)

end A168489

/-! ## A168489.P4527331213241850140

`∑[abs(a(n-2))]` with `a(0)=7, a(1)=4, a(2)=8`
-/

namespace A168489.P4527331213241850140
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 4, 8] fun n f1 =>
  f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168489.P4527331213241850140

namespace A168489

/-- `∑[abs(a(n-2))]` -/
def P4527331213241850140.Spec : Prop :=
  ∀ n, (P4527331213241850140.a n : ℤ) = A168489 (n + 1)

end A168489

/-! ## A168489.P4075237272775434962

`∑[12-a(n-1)]` with `a(0)=7, a(1)=4`
-/

namespace A168489.P4075237272775434962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 4] fun n f1 =>
  12 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168489.P4075237272775434962

namespace A168489

/-- `∑[12-a(n-1)]` -/
def P4075237272775434962.Spec : Prop :=
  ∀ n, P4075237272775434962.a n = A168489 (n + 1)

end A168489

/-! ## A168489.P16151840005110392846

`∑[ogf((7+4x+x^2)/(1-x^2))]`
-/

namespace A168489.P16151840005110392846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 4, 1] [1, 0, -1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168489.P16151840005110392846

namespace A168489

/-- `∑[ogf((7+4x+x^2)/(1-x^2))]` -/
def P16151840005110392846.Spec : Prop :=
  ∀ n, P16151840005110392846.a n = A168489 (n + 1)

end A168489

/-! ## A168489.P2808427465954428747

`ogf((7+4x+x^2)/(1-x-x^2+x^3))`
-/

namespace A168489.P2808427465954428747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [7, 4, 1] [1, -1, -1, 1] n

end

end A168489.P2808427465954428747

namespace A168489

/-- `ogf((7+4x+x^2)/(1-x-x^2+x^3))` -/
def P2808427465954428747.Spec : Prop :=
  ∀ n, P2808427465954428747.a n = A168489 (n + 1)

end A168489

/-! ## A168489.P754676011074759861

`record[lcm(3, 2-n)+n+1]`
-/

namespace A168489.P754676011074759861
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (2 - (n : ℤ)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168489.P754676011074759861

namespace A168489

/-- `record[lcm(3, 2-n)+n+1]` -/
def P754676011074759861.Spec : Prop :=
  ∀ n, (P754676011074759861.a n : ℤ) = A168489 (n + 1)

end A168489

/-! ## A168489.P278451690766755866

`∩[2*n+1, and(n+3, -3)+2*n+1]`
-/

namespace A168489.P278451690766755866
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 3 : ℤ) (-3) + (2 * n + 1 : ℤ)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168489.P278451690766755866

namespace A168489

/-- `∩[2*n+1, and(n+3, -3)+2*n+1]` -/
def P278451690766755866.Spec : Prop :=
  ∀ n, (P278451690766755866.a n : ℤ) = A168489 (n + 1)

end A168489

/-! ## A168489.P13623491253850591180

`A259750(n+1)/2`
-/

namespace A168489.P13623491253850591180
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A259750 (n + 1) : ℚ) / 2

end

end A168489.P13623491253850591180

namespace A168489

/-- `A259750(n+1)/2` -/
def P13623491253850591180.Spec : Prop :=
  ∀ n, P13623491253850591180.a n = (A168489 (n + 1) : ℚ)

end A168489

/-! ## A168489.P1502504209860964700

`∑[A029593(a(n-1))]` with `a(0)=7`
-/

namespace A168489.P1502504209860964700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A029593 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168489.P1502504209860964700

namespace A168489

/-- `∑[A029593(a(n-1))]` -/
def P1502504209860964700.Spec : Prop :=
  ∀ n, P1502504209860964700.a n = A168489 (n + 1)

end A168489

/-! ## A168489.P9058544591545440529

`∑[A033352(a(n-1))]` with `a(0)=7`
-/

namespace A168489.P9058544591545440529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A033352 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168489.P9058544591545440529

namespace A168489

/-- `∑[A033352(a(n-1))]` -/
def P9058544591545440529.Spec : Prop :=
  ∀ n, P9058544591545440529.a n = A168489 (n + 1)

end A168489

/-! ## A168489.P2593051247282850268

`∑[A033353(a(n-1))]` with `a(0)=7`
-/

namespace A168489.P2593051247282850268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A033353 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168489.P2593051247282850268

namespace A168489

/-- `∑[A033353(a(n-1))]` -/
def P2593051247282850268.Spec : Prop :=
  ∀ n, P2593051247282850268.a n = A168489 (n + 1)

end A168489

/-! ## A168489.P5409086450555156556

`∑[A033354(a(n-1))]` with `a(0)=7`
-/

namespace A168489.P5409086450555156556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A033354 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168489.P5409086450555156556

namespace A168489

/-- `∑[A033354(a(n-1))]` -/
def P5409086450555156556.Spec : Prop :=
  ∀ n, P5409086450555156556.a n = A168489 (n + 1)

end A168489

/-! ## A168489.P7820495074719000307

`∑[A053026(a(n-1))]` with `a(0)=7`
-/

namespace A168489.P7820495074719000307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7] fun n f1 =>
  A053026 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168489.P7820495074719000307

namespace A168489

/-- `∑[A053026(a(n-1))]` -/
def P7820495074719000307.Spec : Prop :=
  ∀ n, P7820495074719000307.a n = A168489 (n + 1)

end A168489

/-! ## A168489.P15049471063398214022

`∪[A017605(n), A017653(n)]`
-/

namespace A168489.P15049471063398214022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017605 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017653 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A168489.P15049471063398214022

namespace A168489

/-- `∪[A017605(n), A017653(n)]` -/
def P15049471063398214022.Spec : Prop :=
  ∀ n, (P15049471063398214022.a n : ℤ) = A168489 (n + 1)

end A168489

/-!
# A168490: Sequence with Hankel transform equal to 2^floor(n^2/2).

The programs for A168490, there is no canonical definition to state claims against.
-/

/-! ## A168490.P4202242366413348233

`A094053(A055938(n!))`
-/

namespace A168490.P4202242366413348233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094053 (A055938 (Nat.factorial n)).toNat

end

end A168490.P4202242366413348233

/-! ## A168490.P18011218169930445931

`A153142(A154441(n!))`
-/

namespace A168490.P18011218169930445931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153142 (A154441 (Nat.factorial n)).toNat

end

end A168490.P18011218169930445931

/-! ## A168490.P3647592177269609862

`A289437(A000079(n)+3*n!)`
-/

namespace A168490.P3647592177269609862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 (A000079 n + (3 * Nat.factorial n : ℤ)).toNat

end

end A168490.P3647592177269609862

/-!
# A168491: a(n) = (-1)^n*Catalan(n).

The programs for A168491, the canonical program `A168491.P1156082334228349470` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168491 has offset 0).

The definition of A168491 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168491.P1156082334228349470

`(-1)^n*A000108(n)`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A168491

/-- `(-1)^n*A000108(n)` -/
def P1156082334228349470.Spec : Prop :=
  ∀ n, P1156082334228349470.a n = A168491 n

theorem P1156082334228349470.correct : P1156082334228349470.Spec := by
  intro n
  simp only [A168491]

end A168491

/-! ## A168491.P9553734310677127788

`(-1)^n*C(2*n, n)/(n+1)`
-/

namespace A168491.P9553734310677127788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((-1) ^ n * (Nat.choose (2 * n) n : ℤ) : ℚ) / (n + 1 : ℚ)

end

end A168491.P9553734310677127788

namespace A168491

/-- `(-1)^n*C(2*n, n)/(n+1)` -/
def P9553734310677127788.Spec : Prop :=
  ∀ n, P9553734310677127788.a n = (A168491 n : ℚ)

end A168491

/-! ## A168491.P12715190421632987258

`(6/(n+1)-4)*a(n-1)` with `a(0)=1`
-/

namespace A168491.P12715190421632987258
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (6 / (n + 1 : ℚ) - 4) * a (n - 1)

end

end A168491.P12715190421632987258

namespace A168491

/-- `(6/(n+1)-4)*a(n-1)` -/
def P12715190421632987258.Spec : Prop :=
  ∀ n, P12715190421632987258.a n = (A168491 n : ℚ)

end A168491

/-! ## A168491.P6038768479265921000

`A090192(Δ[n²])`
-/

namespace A168491.P6038768479265921000
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090192 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A168491.P6038768479265921000

namespace A168491

/-- `A090192(Δ[n²])` -/
def P6038768479265921000.Spec : Prop :=
  ∀ n, P6038768479265921000.a n = A168491 n

end A168491

/-! ## A168491.P6344523984385363812

`A182492(4*n+3)`
-/

namespace A168491.P6344523984385363812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182492 (4 * n + 3)

end

end A168491.P6344523984385363812

namespace A168491

/-- `A182492(4*n+3)` -/
def P6344523984385363812.Spec : Prop :=
  ∀ n, P6344523984385363812.a n = A168491 n

end A168491

/-! ## A168491.P9272217893091379827

`-A105523(2*n+1)`
-/

namespace A168491.P9272217893091379827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A105523 (2 * n + 1)

end

end A168491.P9272217893091379827

namespace A168491

/-- `-A105523(2*n+1)` -/
def P9272217893091379827.Spec : Prop :=
  ∀ n, P9272217893091379827.a n = A168491 n

end A168491

/-! ## A168491.P9741705871829268690

`Δ[-A156906(2*n+1)]`
-/

namespace A168491.P9741705871829268690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A156906 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A168491.P9741705871829268690

namespace A168491

/-- `Δ[-A156906(2*n+1)]` -/
def P9741705871829268690.Spec : Prop :=
  ∀ n, P9741705871829268690.a n = A168491 n

end A168491

/-! ## A168491.P2266670390916668102

`A000108(n-char[1])/(-1)^n`
-/

namespace A168491.P2266670390916668102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (n - (if ∃ j, f1 j = n then 1 else 0)) : ℚ) / ((-1) ^ n : ℚ)

end

end A168491.P2266670390916668102

namespace A168491

/-- `A000108(n-char[1])/(-1)^n` -/
def P2266670390916668102.Spec : Prop :=
  ∀ n, P2266670390916668102.a n = (A168491 n : ℚ)

end A168491

/-! ## A168491.P15670068648787953491

`or(floor(acot(n)), A090192(2*n+1))`
-/

namespace A168491.P15670068648787953491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊SequenceMachineLib.acot (n : ℝ)⌋ (A090192 (2 * n + 1))

end

end A168491.P15670068648787953491

namespace A168491

/-- `or(floor(acot(n)), A090192(2*n+1))` -/
def P15670068648787953491.Spec : Prop :=
  ∀ n, P15670068648787953491.a n = A168491 n

end A168491

/-! ## A168491.P5909611617065809753

`A000108(n)*A033999(n)`
-/

namespace A168491.P5909611617065809753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A033999 n

end

end A168491.P5909611617065809753

namespace A168491

/-- `A000108(n)*A033999(n)` -/
def P5909611617065809753.Spec : Prop :=
  ∀ n, P5909611617065809753.a n = A168491 n

end A168491

/-! ## A168491.P8638358426947993421

`A002596(n+1)*A048896(n)`
-/

namespace A168491.P8638358426947993421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 (n + 1) * A048896 n

end

end A168491.P8638358426947993421

namespace A168491

/-- `A002596(n+1)*A048896(n)` -/
def P8638358426947993421.Spec : Prop :=
  ∀ n, P8638358426947993421.a n = A168491 n

end A168491

/-! ## A168491.P5953258251221670409

`A000108(n)*A165326(n+1)`
-/

namespace A168491.P5953258251221670409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A165326 (n + 1)

end

end A168491.P5953258251221670409

namespace A168491

/-- `A000108(n)*A165326(n+1)` -/
def P5953258251221670409.Spec : Prop :=
  ∀ n, P5953258251221670409.a n = A168491 n

end A168491

/-! ## A168491.P8104028877170383167

`A000108(n)*A056594(2*n)`
-/

namespace A168491.P8104028877170383167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A056594 (2 * n)

end

end A168491.P8104028877170383167

namespace A168491

/-- `A000108(n)*A056594(2*n)` -/
def P8104028877170383167.Spec : Prop :=
  ∀ n, P8104028877170383167.a n = A168491 n

end A168491

/-! ## A168491.P6067971624574029355

`A000108(n)*A057077(2*n)`
-/

namespace A168491.P6067971624574029355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A057077 (2 * n)

end

end A168491.P6067971624574029355

namespace A168491

/-- `A000108(n)*A057077(2*n)` -/
def P6067971624574029355.Spec : Prop :=
  ∀ n, P6067971624574029355.a n = A168491 n

end A168491

/-! ## A168491.P13481747772073529580

`A000108(n)*A087960(2*n)`
-/

namespace A168491.P13481747772073529580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A087960 (2 * n)

end

end A168491.P13481747772073529580

namespace A168491

/-- `A000108(n)*A087960(2*n)` -/
def P13481747772073529580.Spec : Prop :=
  ∀ n, P13481747772073529580.a n = A168491 n

end A168491

/-! ## A168491.P7800966930358904816

`A000108(n)*A158496(2*n)`
-/

namespace A168491.P7800966930358904816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A158496 (2 * n)

end

end A168491.P7800966930358904816

namespace A168491

/-- `A000108(n)*A158496(2*n)` -/
def P7800966930358904816.Spec : Prop :=
  ∀ n, P7800966930358904816.a n = A168491 n

end A168491

/-! ## A168491.P8862643255619865011

`A033999(n)*A208355(2*n)`
-/

namespace A168491.P8862643255619865011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A208355 (2 * n)

end

end A168491.P8862643255619865011

namespace A168491

/-- `A033999(n)*A208355(2*n)` -/
def P8862643255619865011.Spec : Prop :=
  ∀ n, P8862643255619865011.a n = A168491 n

end A168491

/-! ## A168491.P3944034936569023795

`A064310(n+1)+Δ[A064310(n)]`
-/

namespace A168491.P3944034936569023795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064310 (n + 1) + (f1 (n + 1) - f1 n)

end

end A168491.P3944034936569023795

namespace A168491

/-- `A064310(n+1)+Δ[A064310(n)]` -/
def P3944034936569023795.Spec : Prop :=
  ∀ n, P3944034936569023795.a n = A168491 n

end A168491

/-! ## A168491.P11346762819950365735

`A033999(n+1)*A115140(n+1)`
-/

namespace A168491.P11346762819950365735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (n + 1) * A115140 (n + 1)

end

end A168491.P11346762819950365735

namespace A168491

/-- `A033999(n+1)*A115140(n+1)` -/
def P11346762819950365735.Spec : Prop :=
  ∀ n, P11346762819950365735.a n = A168491 n

end A168491

/-! ## A168491.P17762337013813173437

`A000108(n)*A009531(2*n+1)`
-/

namespace A168491.P17762337013813173437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 n * A009531 (2 * n + 1)

end

end A168491.P17762337013813173437

namespace A168491

/-- `A000108(n)*A009531(2*n+1)` -/
def P17762337013813173437.Spec : Prop :=
  ∀ n, P17762337013813173437.a n = A168491 n

end A168491

/-!
# A168492: Sequence with Hankel transform equal to 3^floor(n^2/2).

The programs for A168492, there is no canonical definition to state claims against.
-/

/-! ## A168492.P8225243933363270659

`or(A008342(A001529(n)), A347897(n))`
-/

namespace A168492.P8225243933363270659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008342 (A001529 n).toNat) (A347897 n)

end

end A168492.P8225243933363270659

/-! ## A168492.P15296737043953392142

`A001055(∏[a(n-1)+4])` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A168492.P15296737043953392142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001055 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A168492.P15296737043953392142

/-!
# A168493: a(n) = 3^floor(n^2/2).

The programs for A168493, the canonical program `A168493.P16909772803698968531` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168493 has offset 0).

The definition of A168493 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168493.P16909772803698968531

`3^floor(n²/2)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168493

/-- `3^floor(n²/2)` -/
def P16909772803698968531.Spec : Prop :=
  ∀ n, P16909772803698968531.a n = (A168493 n : ℚ)

end A168493

/-! ## A168493.P17885210345320380545

`81*a(n-2)²/a(n-4)` with `a(0)=1, a(1)=1, a(2)=9, a(3)=81`
-/

namespace A168493.P17885210345320380545
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 9, 81] fun n a =>
  81 * a (n - 2) ^ 2 / a (n - 4)

end

end A168493.P17885210345320380545

namespace A168493

/-- `81*a(n-2)²/a(n-4)` -/
def P17885210345320380545.Spec : Prop :=
  ∀ n, P17885210345320380545.a n = (A168493 n : ℚ)

end A168493

/-! ## A168493.P16018573952096903897

`∏[3^and(62, n)]`
-/

namespace A168493.P16018573952096903897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ Nat.land 62 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168493.P16018573952096903897

namespace A168493

/-- `∏[3^and(62, n)]` -/
def P16018573952096903897.Spec : Prop :=
  ∀ n, (P16018573952096903897.a n : ℤ) = A168493 n

end A168493

/-! ## A168493.P14288860963751169100

`∏[3^(or(1, n)-1)]`
-/

namespace A168493.P14288860963751169100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((Nat.lor 1 n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168493.P14288860963751169100

namespace A168493

/-- `∏[3^(or(1, n)-1)]` -/
def P14288860963751169100.Spec : Prop :=
  ∀ n, P14288860963751169100.a n = (A168493 n : ℚ)

end A168493

/-! ## A168493.P14450840964003334200

`∏[3^or(1, n)/3]`
-/

namespace A168493.P14450840964003334200
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 ^ Nat.lor 1 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168493.P14450840964003334200

namespace A168493

/-- `∏[3^or(1, n)/3]` -/
def P14450840964003334200.Spec : Prop :=
  ∀ n, P14450840964003334200.a n = (A168493 n : ℚ)

end A168493

/-!
# A168494: Sequence with Hankel transform equal to 3^floor(n^2/3).

The programs for A168494, there is no canonical definition to state claims against.
-/

/-! ## A168494.P14144928273366700681

`A008621(A202814(n)-A263790(n))`
-/

namespace A168494.P14144928273366700681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A202814 n - A263790 n).toNat

end

end A168494.P14144928273366700681

/-! ## A168494.P7308834854653216677

`A110656(or(A020699(n), A053617(n)))`
-/

namespace A168494.P7308834854653216677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.lor (A020699 n) (A053617 n)).toNat

end

end A168494.P7308834854653216677

/-! ## A168494.P6856745829169138563

`A110656(or(A020699(n), A279568(n)))`
-/

namespace A168494.P6856745829169138563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (Int.lor (A020699 n) (A279568 n)).toNat

end

end A168494.P6856745829169138563

/-!
# A168495: a(n) = 3^floor(n^2/3).

The programs for A168495, the canonical program `A168495.P15465610623800476770` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168495 has offset 0).

The definition of A168495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A168495.P15465610623800476770

`3^floor(n²/3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A168495

/-- `3^floor(n²/3)` -/
def P15465610623800476770.Spec : Prop :=
  ∀ n, P15465610623800476770.a n = (A168495 n : ℚ)

end A168495

/-! ## A168495.P9990211605006260027

`9*a(n-1)*a(n-3)/a(n-4)` with `a(0)=1, a(1)=1, a(2)=3, a(3)=27`
-/

namespace A168495.P9990211605006260027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 3, 27] fun n a =>
  9 * a (n - 1) * a (n - 3) / a (n - 4)

end

end A168495.P9990211605006260027

namespace A168495

/-- `9*a(n-1)*a(n-3)/a(n-4)` -/
def P9990211605006260027.Spec : Prop :=
  ∀ n, P9990211605006260027.a n = (A168495 n : ℚ)

end A168495

/-! ## A168495.P8019738611096869100

`∏[∏[gcd(3, ∑[n])]/3]`
-/

namespace A168495.P8019738611096869100
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168495.P8019738611096869100

namespace A168495

/-- `∏[∏[gcd(3, ∑[n])]/3]` -/
def P8019738611096869100.Spec : Prop :=
  ∀ n, P8019738611096869100.a n = (A168495 n : ℚ)

end A168495

/-! ## A168495.P753529897197956679

`∏[9*a(n-3)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A168495.P753529897197956679
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  9 * f1 (n - 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A168495.P753529897197956679

namespace A168495

/-- `∏[9*a(n-3)]` -/
def P753529897197956679.Spec : Prop :=
  ∀ n, (P753529897197956679.a n : ℤ) = A168495 n

end A168495

/-! ## A168495.P16033836508644635973

`floor(3^∑[a(n-3)+2])` with `a(0)=0, a(1)=0, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A168495.P16033836508644635973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 0, 1] fun n f1 =>
  f1 (n - 3) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A168495.P16033836508644635973

namespace A168495

/-- `floor(3^∑[a(n-3)+2])` -/
def P16033836508644635973.Spec : Prop :=
  ∀ n, (P16033836508644635973.a n : ℤ) = A168495 n

end A168495

/-!
# A168496: The positions of non-single or nonisolated numbers in A001477.

The programs for A168496, the canonical program `A168496.P10279288104061310244` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168496 has offset 1).

The definition of A168496 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A167707, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A168496.P10279288104061310244

`1+A167707(n+1)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A168496

/-- `1+A167707(n+1)` -/
def P10279288104061310244.Spec : Prop :=
  ∀ n, P10279288104061310244.a n = A168496 (n + 1)

theorem P10279288104061310244.correct : P10279288104061310244.Spec := by
  intro n
  simp only [A168496, Nat.add_sub_cancel]

end A168496

/-! ## A168496.P15277263885759916265

`comp[A167706(n+1)]+1`
-/

namespace A168496.P15277263885759916265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A168496.P15277263885759916265

namespace A168496

/-- `comp[A167706(n+1)]+1` -/
def P15277263885759916265.Spec : Prop :=
  ∀ n, (P15277263885759916265.a n : ℤ) = A168496 (n + 1)

end A168496

/-! ## A168496.P11544321095070059243

`∑[A167911(floor(acot(n)+n))]`
-/

namespace A168496.P11544321095070059243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 ⌊SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌋.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168496.P11544321095070059243

namespace A168496

/-- `∑[A167911(floor(acot(n)+n))]` -/
def P11544321095070059243.Spec : Prop :=
  ∀ n, P11544321095070059243.a n = A168496 (n + 1)

end A168496

/-! ## A168496.P87360713536648094

`A167911(n)+a(n-1)` with `a(0)=1`
-/

namespace A168496.P87360713536648094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A167911 n + a (n - 1)

end

end A168496.P87360713536648094

namespace A168496

/-- `A167911(n)+a(n-1)` -/
def P87360713536648094.Spec : Prop :=
  ∀ n, P87360713536648094.a n = A168496 (n + 1)

end A168496

/-! ## A168496.P7970789139295386937

`comp[A167921(n+1)+1]+1`
-/

namespace A168496.P7970789139295386937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167921 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A168496.P7970789139295386937

namespace A168496

/-- `comp[A167921(n+1)+1]+1` -/
def P7970789139295386937.Spec : Prop :=
  ∀ n, (P7970789139295386937.a n : ℤ) = A168496 (n + 1)

end A168496

/-! ## A168496.P13554867210335678289

`-xor(-1, A167707(-xor(n, -1)))`
-/

namespace A168496.P13554867210335678289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor (-1) (A167707 (-Int.xor (n : ℤ) (-1)).toNat)

end

end A168496.P13554867210335678289

namespace A168496

/-- `-xor(-1, A167707(-xor(n, -1)))` -/
def P13554867210335678289.Spec : Prop :=
  ∀ n, P13554867210335678289.a n = A168496 (n + 1)

end A168496

/-! ## A168496.P907868501588254681

`∑[A167911(A028310(n))]`
-/

namespace A168496.P907868501588254681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168496.P907868501588254681

namespace A168496

/-- `∑[A167911(A028310(n))]` -/
def P907868501588254681.Spec : Prop :=
  ∀ n, P907868501588254681.a n = A168496 (n + 1)

end A168496

/-! ## A168496.P10814376455295451131

`∑[A167911(A137734(n²))]`
-/

namespace A168496.P10814376455295451131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (A137734 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168496.P10814376455295451131

namespace A168496

/-- `∑[A167911(A137734(n²))]` -/
def P10814376455295451131.Spec : Prop :=
  ∀ n, P10814376455295451131.a n = A168496 (n + 1)

end A168496

/-! ## A168496.P15595387579322700798

`∑[A167911(A137735(n²))]`
-/

namespace A168496.P15595387579322700798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (A137735 (n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168496.P15595387579322700798

namespace A168496

/-- `∑[A167911(A137735(n²))]` -/
def P15595387579322700798.Spec : Prop :=
  ∀ n, P15595387579322700798.a n = A168496 (n + 1)

end A168496

/-! ## A168496.P17253410247176297515

`∑[A167911(A134478(∑[n]))]`
-/

namespace A168496.P17253410247176297515
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167911 (A134478 (∑ j ∈ Finset.range (n + 1), f2 j)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A168496.P17253410247176297515

namespace A168496

/-- `∑[A167911(A134478(∑[n]))]` -/
def P17253410247176297515.Spec : Prop :=
  ∀ n, P17253410247176297515.a n = A168496 (n + 1)

end A168496

/-!
# A168497: The halfs of even single (or even isolated) numbers.

The programs for A168497, the canonical program `A168497.P17967638990688858063` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A168497 has offset 1).

The definition of A168497 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A168497.P688499099039383442

`A167777(n+1)/2`
-/

namespace A168497.P688499099039383442
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A167777 (n + 1) : ℚ) / 2

end

end A168497.P688499099039383442

namespace A168497

/-- `A167777(n+1)/2` -/
def P688499099039383442.Spec : Prop :=
  ∀ n, P688499099039383442.a n = (A168497 (n + 1) : ℚ)

end A168497

/-! ## A168497.P17967638990688858063

`floor(A067829(n+1)/2)`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A168497

/-- `floor(A067829(n+1)/2)` -/
def P17967638990688858063.Spec : Prop :=
  ∀ n, P17967638990688858063.a n = A168497 (n + 1)

theorem P17967638990688858063.correct : P17967638990688858063.Spec := by
  intro n
  simp only [A168497, Nat.add_sub_cancel]

end A168497

/-! ## A168497.P15238427695891772780

`ceil(A124588(n+1)/2)`
-/

namespace A168497.P15238427695891772780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A124588 (n + 1) : ℚ) / 2⌉

end

end A168497.P15238427695891772780

namespace A168497

/-- `ceil(A124588(n+1)/2)` -/
def P15238427695891772780.Spec : Prop :=
  ∀ n, P15238427695891772780.a n = A168497 (n + 1)

end A168497

/-! ## A168497.P12852865532051547795

`ceil(A181747(n+1)/2)`
-/

namespace A168497.P12852865532051547795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A181747 (n + 1) : ℚ) / 2⌉

end

end A168497.P12852865532051547795

namespace A168497

/-- `ceil(A181747(n+1)/2)` -/
def P12852865532051547795.Spec : Prop :=
  ∀ n, P12852865532051547795.a n = A168497 (n + 1)

end A168497

/-! ## A168497.P6953341132781696082

`A074953(n-1)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A168497.P6953341132781696082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A074953 (n - 1) - a (n - 1)

end

end A168497.P6953341132781696082

namespace A168497

/-- `A074953(n-1)-a(n-1)` -/
def P6953341132781696082.Spec : Prop :=
  ∀ n, P6953341132781696082.a n = A168497 (n + 1)

end A168497

/-! ## A168497.P15109631367976598556

`C(A014574(n), a(C(2, (n+1)²)))/2` with `a(0)=1`
-/

namespace A168497.P15109631367976598556
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (A014574 n).toNat (SequenceMachineLib.roundAway (a (Nat.choose 2 ((n + 1) ^ 2)))).toNat : ℚ) / 2

end

end A168497.P15109631367976598556

namespace A168497

/-- `C(A014574(n), a(C(2, (n+1)²)))/2` -/
def P15109631367976598556.Spec : Prop :=
  ∀ n, P15109631367976598556.a n = (A168497 (n + 1) : ℚ)

end A168497

/-! ## A168497.P7119773009754453175

`A040040(A028310(n))-A000007(n)`
-/

namespace A168497.P7119773009754453175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040040 (A028310 n).toNat - A000007 n

end

end A168497.P7119773009754453175

namespace A168497

/-- `A040040(A028310(n))-A000007(n)` -/
def P7119773009754453175.Spec : Prop :=
  ∀ n, P7119773009754453175.a n = A168497 (n + 1)

end A168497

/-! ## A168497.P14095408328700292250

`(A001097(A004280(n+1))-1)/2`
-/

namespace A168497.P14095408328700292250
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001097 (A004280 (n + 1)).toNat - 1 : ℚ) / 2

end

end A168497.P14095408328700292250

namespace A168497

/-- `(A001097(A004280(n+1))-1)/2` -/
def P14095408328700292250.Spec : Prop :=
  ∀ n, P14095408328700292250.a n = (A168497 (n + 1) : ℚ)

end A168497

/-! ## A168497.P7737853796399213174

`floor(A099609(2*(n+1))/2)`
-/

namespace A168497.P7737853796399213174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A099609 (2 * (n + 1)) : ℚ) / 2⌋

end

end A168497.P7737853796399213174

namespace A168497

/-- `floor(A099609(2*(n+1))/2)` -/
def P7737853796399213174.Spec : Prop :=
  ∀ n, P7737853796399213174.a n = A168497 (n + 1)

end A168497

/-! ## A168497.P1566133726650713774

`record[A049563(n+1)-1]`
-/

namespace A168497.P1566133726650713774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049563 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168497.P1566133726650713774

namespace A168497

/-- `record[A049563(n+1)-1]` -/
def P1566133726650713774.Spec : Prop :=
  ∀ n, P1566133726650713774.a n = A168497 (n + 1)

end A168497

/-! ## A168497.P11859860599249688476

`(p?[A157048(n+1)]-1)/2`
-/

namespace A168497.P11859860599249688476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157048 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1 : ℚ) / 2

end

end A168497.P11859860599249688476

namespace A168497

/-- `(p?[A157048(n+1)]-1)/2` -/
def P11859860599249688476.Spec : Prop :=
  ∀ n, P11859860599249688476.a n = (A168497 (n + 1) : ℚ)

end A168497

/-! ## A168497.P5664352641037506120

`∩[A028815(n), A162800(n)]/2`
-/

namespace A168497.P5664352641037506120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028815 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162800 n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A168497.P5664352641037506120

namespace A168497

/-- `∩[A028815(n), A162800(n)]/2` -/
def P5664352641037506120.Spec : Prop :=
  ∀ n, P5664352641037506120.a n = (A168497 (n + 1) : ℚ)

end A168497

/-! ## A168497.P11773661254587137030

`A028815(eq[2, A054541(n+1)])/2`
-/

namespace A168497.P11773661254587137030
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028815 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) : ℚ) / 2

end

end A168497.P11773661254587137030

namespace A168497

/-- `A028815(eq[2, A054541(n+1)])/2` -/
def P11773661254587137030.Spec : Prop :=
  ∀ n, P11773661254587137030.a n = (A168497 (n + 1) : ℚ)

end A168497

/-! ## A168497.P9489200453357073621

`∩[A102781(n+1)+1, A102781(n+1)]`
-/

namespace A168497.P9489200453357073621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102781 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168497.P9489200453357073621

namespace A168497

/-- `∩[A102781(n+1)+1, A102781(n+1)]` -/
def P9489200453357073621.Spec : Prop :=
  ∀ n, (P9489200453357073621.a n : ℤ) = A168497 (n + 1)

end A168497

/-! ## A168497.P10781153574612360909

`∩[A111333(n+1)-1, A111333(n+1)]`
-/

namespace A168497.P10781153574612360909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A168497.P10781153574612360909

namespace A168497

/-- `∩[A111333(n+1)-1, A111333(n+1)]` -/
def P10781153574612360909.Spec : Prop :=
  ∀ n, (P10781153574612360909.a n : ℤ) = A168497 (n + 1)

end A168497

/-! ## A168497.P13229980852508723962

`eq[1, A171487(n+1)]+1`
-/

namespace A168497.P13229980852508723962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171487 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A168497.P13229980852508723962

namespace A168497

/-- `eq[1, A171487(n+1)]+1` -/
def P13229980852508723962.Spec : Prop :=
  ∀ n, (P13229980852508723962.a n : ℤ) = A168497 (n + 1)

end A168497

/-! ## A168497.P11170669988883256944

`eq[2, A166597(2*n+1)]+1`
-/

namespace A168497.P11170669988883256944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166597 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A168497.P11170669988883256944

namespace A168497

/-- `eq[2, A166597(2*n+1)]+1` -/
def P11170669988883256944.Spec : Prop :=
  ∀ n, (P11170669988883256944.a n : ℤ) = A168497 (n + 1)

end A168497

/-! ## A168497.P4210295840805684341

`filter[A111333(n+1), A101264(#)]`
-/

namespace A168497.P4210295840805684341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111333 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101264 (f1 j).toNat = 1) n)

end

end A168497.P4210295840805684341

namespace A168497

/-- `filter[A111333(n+1), A101264(#)]` -/
def P4210295840805684341.Spec : Prop :=
  ∀ n, P4210295840805684341.a n = A168497 (n + 1)

end A168497

/-! ## A168497.P304935712873547277

`record[floor(A006530(A000040(n+1)+2)/2)]`
-/

namespace A168497.P304935712873547277
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006530 (A000040 (n + 1) + 2).toNat : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168497.P304935712873547277

namespace A168497

/-- `record[floor(A006530(A000040(n+1)+2)/2)]` -/
def P304935712873547277.Spec : Prop :=
  ∀ n, P304935712873547277.a n = A168497 (n + 1)

end A168497

/-! ## A168497.P5207238408133349815

`record[ceil(A006530(A000040(n+2)-2)/2)]`
-/

namespace A168497.P5207238408133349815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A006530 (A000040 (n + 2) - 2).toNat : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168497.P5207238408133349815

namespace A168497

/-- `record[ceil(A006530(A000040(n+2)-2)/2)]` -/
def P5207238408133349815.Spec : Prop :=
  ∀ n, P5207238408133349815.a n = A168497 (n + 1)

end A168497

/-!
# A168498: The positions of non-single or nonisolated numbers in A000010.

The programs for A168498, there is no canonical definition to state claims against.
-/

/-! ## A168498.P17258260096568011137

`lt[0, A292438(A000010(n+1))]+1`
-/

namespace A168498.P17258260096568011137
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292438 (A000010 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A168498.P17258260096568011137

/-! ## A168498.P14580762633207283930

`record[A000027(n+1)*A292438(A000010(n+1))]`
-/

namespace A168498.P14580762633207283930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A292438 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168498.P14580762633207283930

/-! ## A168498.P1216983272352154273

`record[(1-A001489(n))*A292438(A000010(n+1))]`
-/

namespace A168498.P1216983272352154273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A001489 n) * A292438 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168498.P1216983272352154273

/-! ## A168498.P2907275929184489707

`record[A023443(n+2)*A292438(A000010(n+1))]`
-/

namespace A168498.P2907275929184489707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (n + 2) * A292438 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168498.P2907275929184489707

/-! ## A168498.P14073668737082586821

`record[(2-A024000(n))*A292438(A000010(n+1))]`
-/

namespace A168498.P14073668737082586821
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A024000 n) * A292438 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168498.P14073668737082586821

/-! ## A168498.P8357913674089984694

`record[A008619(2*n)*A292438(A000010(n+1))]`
-/

namespace A168498.P8357913674089984694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (2 * n) * A292438 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168498.P8357913674089984694

/-! ## A168498.P9511965104107683850

`record[A008624(4*n)*A292438(A000010(n+1))]`
-/

namespace A168498.P9511965104107683850
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (4 * n) * A292438 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168498.P9511965104107683850

/-! ## A168498.P2976157202613459400

`record[(A005408(n)-n)*A292438(A000010(n+1))]`
-/

namespace A168498.P2976157202613459400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005408 n - (n : ℤ)) * A292438 (A000010 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A168498.P2976157202613459400

