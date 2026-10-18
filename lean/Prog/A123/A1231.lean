import SequenceMachineLib
import Mathlib.Tactic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
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
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
import Seq.B009.C000
import Seq.B009.C001
import Seq.B010.C000
import Seq.B011.C000
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
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A123100: Primes of the form (1+2n+3n^2+4n^3)/5.

The programs for A123100, there is no canonical definition to state claims against.
-/

/-! ## A123100.P5544804920283048767

`p?[∑[A177964(A212656(n))]]`
-/

namespace A123100.P5544804920283048767
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177964 (A212656 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A123100.P5544804920283048767

/-!
# A123102: a(0)=1, a(1)=0, a(2)=1, a(n) = a(n-1) + a(n-2) + 3*a(n-3).

The programs for A123102, the canonical program `A123102.P10067391671846944606` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123102 has offset 0).

The definition of A123102 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+3*a(n-3)` (program `A123102.P10067391671846944606`, by `A123102.P10067391671846944606.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123102.P10067391671846944606

`a(n-1)+a(n-2)+3*a(n-3)` with `a(0)=1, a(1)=0, a(2)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123102

/-- `a(n-1)+a(n-2)+3*a(n-3)` -/
def P10067391671846944606.Spec : Prop :=
  ∀ n, (P10067391671846944606.a n : ℤ) = A123102 n

theorem P10067391671846944606.correct : P10067391671846944606.Spec := by
  intro n
  simp only [A123102]

end A123102

/-! ## A123102.P1046221679970309463

`ogf((-1+x)/(-1+x+x^2+3x^3))`
-/

namespace A123102.P1046221679970309463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -1, -1, -3] n

end

end A123102.P1046221679970309463

namespace A123102

/-- `ogf((-1+x)/(-1+x+x^2+3x^3))` -/
def P1046221679970309463.Spec : Prop :=
  ∀ n, P1046221679970309463.a n = A123102 n

end A123102

/-! ## A123102.P13567861931446861579

`Δ[A103143(n+1)]`
-/

namespace A123102.P13567861931446861579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103143 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123102.P13567861931446861579

namespace A123102

/-- `Δ[A103143(n+1)]` -/
def P13567861931446861579.Spec : Prop :=
  ∀ n, P13567861931446861579.a n = A123102 n

end A123102

/-! ## A123102.P10640234265637318753

`A099213(n)-a(n-1)` with `a(0)=1`
-/

namespace A123102.P10640234265637318753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A099213 n - a (n - 1)

end

end A123102.P10640234265637318753

namespace A123102

/-- `A099213(n)-a(n-1)` -/
def P10640234265637318753.Spec : Prop :=
  ∀ n, P10640234265637318753.a n = A123102 n

end A123102

/-! ## A123102.P2661216168403732248

`A099213(n)-Δ[A103143(n)]`
-/

namespace A123102.P2661216168403732248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103143 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099213 n - (f1 (n + 1) - f1 n)

end

end A123102.P2661216168403732248

namespace A123102

/-- `A099213(n)-Δ[A103143(n)]` -/
def P2661216168403732248.Spec : Prop :=
  ∀ n, P2661216168403732248.a n = A123102 n

end A123102

/-! ## A123102.P16621148769645432067

`A103143(n+2)-A103143(n+1)`
-/

namespace A123102.P16621148769645432067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103143 (n + 2) - A103143 (n + 1)

end

end A123102.P16621148769645432067

namespace A123102

/-- `A103143(n+2)-A103143(n+1)` -/
def P16621148769645432067.Spec : Prop :=
  ∀ n, P16621148769645432067.a n = A123102 n

end A123102

/-! ## A123102.P13119100866668636092

`A099213(n+1)+A099213(n)-A247594(n)`
-/

namespace A123102.P13119100866668636092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099213 (n + 1) + (A099213 n - A247594 n)

end

end A123102.P13119100866668636092

namespace A123102

/-- `A099213(n+1)+A099213(n)-A247594(n)` -/
def P13119100866668636092.Spec : Prop :=
  ∀ n, P13119100866668636092.a n = A123102 n

end A123102

/-! ## A123102.P4878930538041850045

`A247594(n+1)-A099213(n+2)`
-/

namespace A123102.P4878930538041850045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247594 (n + 1) - A099213 (n + 2)

end

end A123102.P4878930538041850045

namespace A123102

/-- `A247594(n+1)-A099213(n+2)` -/
def P4878930538041850045.Spec : Prop :=
  ∀ n, P4878930538041850045.a n = A123102 n

end A123102

/-! ## A123102.P7038452775363050244

`Δ[Δ[A247594(n)]]-A247594(n)`
-/

namespace A123102.P7038452775363050244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247594 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A247594 n

end

end A123102.P7038452775363050244

namespace A123102

/-- `Δ[Δ[A247594(n)]]-A247594(n)` -/
def P7038452775363050244.Spec : Prop :=
  ∀ n, P7038452775363050244.a n = A123102 n

end A123102

/-!
# A123103: Numbers m such that the factorizations of m..m+6 have the same number of primes (including multiplicities).

The programs for A123103, there is no canonical definition to state claims against.
-/

/-! ## A123103.P8294772564701030902

`∩[A045942(n+1)-1, A045942(n+1)]`
-/

namespace A123103.P8294772564701030902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045942 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045942 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A123103.P8294772564701030902

/-! ## A123103.P3362842840779674424

`A045942(eq[1, A045942(n+2)-A045942(n+1)]+1)`
-/

namespace A123103.P3362842840779674424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045942 (n + 2) - A045942 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045942 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A123103.P3362842840779674424

/-!
# A123105: Number of benzenoids with 22 hexagons, C_(2h) symmetry and containing 2n carbon atoms.

The programs for A123105, there is no canonical definition to state claims against.
-/

/-! ## A123105.P4723067069534338711

`A328818(A218514(n))+A123287(n)`
-/

namespace A123105.P4723067069534338711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328818 (A218514 n).toNat + A123287 (n + 31)

end

end A123105.P4723067069534338711

/-!
# A123106: Number of benzenoids with 22 hexagons, C_(2v) symmetry and containing n carbon atoms.

The programs for A123106, there is no canonical definition to state claims against.
-/

/-! ## A123106.P7324857006638039908

`A123288(n)-A275672(A002663(n))`
-/

namespace A123106.P7324857006638039908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123288 (n + 62) - A275672 (A002663 n).toNat

end

end A123106.P7324857006638039908

/-!
# A123108: a(n) = a(n-1) + a(n-2) - a(n-3), for n > 3, with a(0)=1, a(1)=0, a(2)=1, a(3)=1.

The programs for A123108, the canonical program `A123108.P8709889862737691449` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123108 has offset 0).

The definition of A123108 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-2-a(n-3)` (program `A123108.P8709889862737691449`, by `A123108.P8709889862737691449.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123108.P8709889862737691449

`n-2-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123108

/-- `n-2-a(n-3)` -/
def P8709889862737691449.Spec : Prop :=
  ∀ n, P8709889862737691449.a n = A123108 n

theorem P8709889862737691449.correct : P8709889862737691449.Spec := by
  intro n
  simp only [A123108]

end A123108

/-! ## A123108.P3042185626810659180

`a(n-1)+a(n-2)-a(n-3)` with `a(0)=1, a(1)=0, a(2)=1, a(3)=1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123108.P3042185626810659180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 1, 1] fun n a =>
  a (n - 1) + a (n - 2) - a (n - 3)

end

end A123108.P3042185626810659180

namespace A123108

/-- `a(n-1)+a(n-2)-a(n-3)` -/
def P3042185626810659180.Spec : Prop :=
  ∀ n, P3042185626810659180.a n = A123108 n

end A123108

/-! ## A123108.P4021661730173933518

`ceil(abs((1-n)/2))`
-/

namespace A123108.P4021661730173933518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|(1 - (n : ℤ) : ℚ) / 2|⌉

end

end A123108.P4021661730173933518

namespace A123108

/-- `ceil(abs((1-n)/2))` -/
def P4021661730173933518.Spec : Prop :=
  ∀ n, P4021661730173933518.a n = A123108 n

end A123108

/-! ## A123108.P14935318665452993088

`abs(floor(cot(2/(n+1))))`
-/

namespace A123108.P14935318665452993088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌊Real.cot (2 / (n + 1 : ℚ) : ℝ)⌋|

end

end A123108.P14935318665452993088

namespace A123108

/-- `abs(floor(cot(2/(n+1))))` -/
def P14935318665452993088.Spec : Prop :=
  ∀ n, P14935318665452993088.a n = A123108 n

end A123108

/-! ## A123108.P5146619143013712073

`∑[log2(gcd(2, n))-char[1]]`
-/

namespace A123108.P5146619143013712073
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123108.P5146619143013712073

namespace A123108

/-- `∑[log2(gcd(2, n))-char[1]]` -/
def P5146619143013712073.Spec : Prop :=
  ∀ n, P5146619143013712073.a n = (A123108 n : ℝ)

end A123108

/-! ## A123108.P6366590061847878341

`∑[2-ceil(ratio[or(1, n)])]`
-/

namespace A123108.P6366590061847878341
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ⌈(f2 (n + 1) : ℚ) / (f2 n : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123108.P6366590061847878341

namespace A123108

/-- `∑[2-ceil(ratio[or(1, n)])]` -/
def P6366590061847878341.Spec : Prop :=
  ∀ n, P6366590061847878341.a n = A123108 n

end A123108

/-! ## A123108.P16339911827677908229

`∑[char[lcm(2, n)]-char[1]]`
-/

namespace A123108.P16339911827677908229
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - ((if ∃ j, f3 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123108.P16339911827677908229

namespace A123108

/-- `∑[char[lcm(2, n)]-char[1]]` -/
def P16339911827677908229.Spec : Prop :=
  ∀ n, P16339911827677908229.a n = A123108 n

end A123108

/-! ## A123108.P11162860435201264862

`∑[floor(acot((n-2)%2))]`
-/

namespace A123108.P11162860435201264862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot (Int.tmod ((n : ℤ) - 2) 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123108.P11162860435201264862

namespace A123108

/-- `∑[floor(acot((n-2)%2))]` -/
def P11162860435201264862.Spec : Prop :=
  ∀ n, P11162860435201264862.a n = A123108 n

end A123108

/-! ## A123108.P11219150607887847261

`floor(cot(sinh(2/(n+1))))`
-/

namespace A123108.P11219150607887847261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cot (Real.sinh (2 / (n + 1 : ℚ) : ℝ))⌋

end

end A123108.P11219150607887847261

namespace A123108

/-- `floor(cot(sinh(2/(n+1))))` -/
def P11219150607887847261.Spec : Prop :=
  ∀ n, P11219150607887847261.a n = A123108 n

end A123108

/-! ## A123108.P9613220450757293197

`floor((acot(n)²+n)/2)`
-/

namespace A123108.P9613220450757293197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(SequenceMachineLib.acot (n : ℝ) ^ 2 + (n : ℝ)) / 2⌋

end

end A123108.P9613220450757293197

namespace A123108

/-- `floor((acot(n)²+n)/2)` -/
def P9613220450757293197.Spec : Prop :=
  ∀ n, P9613220450757293197.a n = A123108 n

end A123108

/-! ## A123108.P461756388259263618

`floor(n/2)+floor(acot(n))`
-/

namespace A123108.P461756388259263618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) / 2⌋ + ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A123108.P461756388259263618

namespace A123108

/-- `floor(n/2)+floor(acot(n))` -/
def P461756388259263618.Spec : Prop :=
  ∀ n, P461756388259263618.a n = A123108 n

end A123108

/-! ## A123108.P13336675536778478816

`∑[ceil((atan(n)-2)^n)]`
-/

namespace A123108.P13336675536778478816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.arctan (n : ℝ) - 2) ^ n⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123108.P13336675536778478816

namespace A123108

/-- `∑[ceil((atan(n)-2)^n)]` -/
def P13336675536778478816.Spec : Prop :=
  ∀ n, P13336675536778478816.a n = A123108 n

end A123108

/-! ## A123108.P3478546279695441779

`∑[ceil(∏[-acot(n-1)])]`
-/

namespace A123108.P3478546279695441779
noncomputable section

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  -SequenceMachineLib.acot ((n : ℤ) - 1 : ℝ)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈∏ j ∈ Finset.range (n + 1), f2 j⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123108.P3478546279695441779

namespace A123108

/-- `∑[ceil(∏[-acot(n-1)])]` -/
def P3478546279695441779.Spec : Prop :=
  ∀ n, P3478546279695441779.a n = A123108 n

end A123108

/-! ## A123108.P6909398860946232970

`a(n-2)+1` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A123108.P6909398860946232970
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n a =>
  a (n - 2) + 1

end

end A123108.P6909398860946232970

namespace A123108

/-- `a(n-2)+1` -/
def P6909398860946232970.Spec : Prop :=
  ∀ n, (P6909398860946232970.a n : ℤ) = A123108 n

end A123108

/-! ## A123108.P10190513904631960674

`∑[(n+1)%2-char[1]]`
-/

namespace A123108.P10190513904631960674
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n + 1) % 2 : ℕ) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123108.P10190513904631960674

namespace A123108

/-- `∑[(n+1)%2-char[1]]` -/
def P10190513904631960674.Spec : Prop :=
  ∀ n, P10190513904631960674.a n = A123108 n

end A123108

/-! ## A123108.P13463748640623064937

`∑[and(1, n+1)-char[1]]`
-/

namespace A123108.P13463748640623064937
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) : ℤ) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123108.P13463748640623064937

namespace A123108

/-- `∑[and(1, n+1)-char[1]]` -/
def P13463748640623064937.Spec : Prop :=
  ∀ n, P13463748640623064937.a n = A123108 n

end A123108

/-! ## A123108.P7257013852282206654

`floor(or(1, ∑[n])/(n+1))`
-/

namespace A123108.P7257013852282206654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.lor 1 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / (n + 1 : ℚ)⌋

end

end A123108.P7257013852282206654

namespace A123108

/-- `floor(or(1, ∑[n])/(n+1))` -/
def P7257013852282206654.Spec : Prop :=
  ∀ n, P7257013852282206654.a n = A123108 n

end A123108

/-! ## A123108.P9306414244291809945

`floor(∑[xor(1, n)]/(n+1))`
-/

namespace A123108.P9306414244291809945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)⌋

end

end A123108.P9306414244291809945

namespace A123108

/-- `floor(∑[xor(1, n)]/(n+1))` -/
def P9306414244291809945.Spec : Prop :=
  ∀ n, P9306414244291809945.a n = A123108 n

end A123108

/-! ## A123108.P13714425657851680393

`n-a(n-1)-1` with `a(0)=1, a(1)=0`
-/

namespace A123108.P13714425657851680393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  (n : ℤ) - a (n - 1) - 1

end

end A123108.P13714425657851680393

namespace A123108

/-- `n-a(n-1)-1` -/
def P13714425657851680393.Spec : Prop :=
  ∀ n, P13714425657851680393.a n = A123108 n

end A123108

/-! ## A123108.P1572675569317658150

`round(gcd(1-n, n-1)/2)`
-/

namespace A123108.P1572675569317658150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Int.gcd (1 - (n : ℤ)) ((n : ℤ) - 1) : ℚ) / 2)

end

end A123108.P1572675569317658150

namespace A123108

/-- `round(gcd(1-n, n-1)/2)` -/
def P1572675569317658150.Spec : Prop :=
  ∀ n, P1572675569317658150.a n = A123108 n

end A123108

/-!
# A123109: a(0) = 1, a(1) = 3, a(n) = 3*a(n-1) + 3 for n > 1.

The programs for A123109, the canonical program `A123109.P10235107136971135650` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123109 has offset 0).

The definition of A123109 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3+3*a(n-1)` (program `A123109.P10235107136971135650`, by `A123109.P10235107136971135650.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123109.P10235107136971135650

`3+3*a(n-1)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123109

/-- `3+3*a(n-1)` -/
def P10235107136971135650.Spec : Prop :=
  ∀ n, (P10235107136971135650.a n : ℤ) = A123109 n

theorem P10235107136971135650.correct : P10235107136971135650.Spec := by
  intro n
  simp only [A123109]

end A123109

/-! ## A123109.P9747979840027900814

`3*a(n-1)+3` with `a(0)=1, a(1)=3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A123109.P9747979840027900814
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 * a (n - 1) + 3

end

end A123109.P9747979840027900814

namespace A123109

/-- `3*a(n-1)+3` -/
def P9747979840027900814.Spec : Prop :=
  ∀ n, (P9747979840027900814.a n : ℤ) = A123109 n

theorem P9747979840027900814.correct : P9747979840027900814.Spec := by
  intro n
  simp only [A123109, Nat.add_sub_cancel, A123109.P9747979840027900814.a, A123109.P10235107136971135650.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123109

/-! ## A123109.P336883058748545248

`∑[(3-char[1])^n]`
-/

namespace A123109.P336883058748545248
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123109.P336883058748545248

namespace A123109

/-- `∑[(3-char[1])^n]` -/
def P336883058748545248.Spec : Prop :=
  ∀ n, P336883058748545248.a n = A123109 n

end A123109

/-! ## A123109.P6602732467477611205

`ogf((1-x+3x^2)/(1-4x+3x^2))`
-/

namespace A123109.P6602732467477611205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, 3] [1, -4, 3] n

end

end A123109.P6602732467477611205

namespace A123109

/-- `ogf((1-x+3x^2)/(1-4x+3x^2))` -/
def P6602732467477611205.Spec : Prop :=
  ∀ n, P6602732467477611205.a n = A123109 n

end A123109

/-! ## A123109.P6860742767044363623

`∑[3^n]-ceil(abs(sin(n)))`
-/

namespace A123109.P6860742767044363623
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈|Real.sin (n : ℝ)|⌉

end

end A123109.P6860742767044363623

namespace A123109

/-- `∑[3^n]-ceil(abs(sin(n)))` -/
def P6860742767044363623.Spec : Prop :=
  ∀ n, P6860742767044363623.a n = A123109 n

end A123109

/-! ## A123109.P8747973357134147741

`∑[3^n]-ceil(sin(n)²)`
-/

namespace A123109.P8747973357134147741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌈Real.sin (n : ℝ) ^ 2⌉

end

end A123109.P8747973357134147741

namespace A123109

/-- `∑[3^n]-ceil(sin(n)²)` -/
def P8747973357134147741.Spec : Prop :=
  ∀ n, P8747973357134147741.a n = A123109 n

end A123109

/-! ## A123109.P1818448685811530826

`lcm(3, a(n-1)+1)` with `a(0)=1, a(1)=3`
-/

namespace A123109.P1818448685811530826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  Nat.lcm 3 (a (n - 1) + 1)

end

end A123109.P1818448685811530826

namespace A123109

/-- `lcm(3, a(n-1)+1)` -/
def P1818448685811530826.Spec : Prop :=
  ∀ n, (P1818448685811530826.a n : ℤ) = A123109 n

end A123109

/-! ## A123109.P10156269222625452487

`a(n-1)+3^n` with `a(0)=1, a(1)=3`
-/

namespace A123109.P10156269222625452487
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 3 ^ n

end

end A123109.P10156269222625452487

namespace A123109

/-- `a(n-1)+3^n` -/
def P10156269222625452487.Spec : Prop :=
  ∀ n, (P10156269222625452487.a n : ℤ) = A123109 n

end A123109

/-! ## A123109.P8249181745615280890

`∑[3^n]-floor(atan(n+1))`
-/

namespace A123109.P8249181745615280890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ⌊Real.arctan (n + 1 : ℝ)⌋

end

end A123109.P8249181745615280890

namespace A123109

/-- `∑[3^n]-floor(atan(n+1))` -/
def P8249181745615280890.Spec : Prop :=
  ∀ n, P8249181745615280890.a n = A123109 n

end A123109

/-! ## A123109.P9526150656373371952

`∑[3^n]-n²%(n+1)`
-/

namespace A123109.P9526150656373371952
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - ((n ^ 2 % (n + 1) : ℕ) : ℤ)

end

end A123109.P9526150656373371952

namespace A123109

/-- `∑[3^n]-n²%(n+1)` -/
def P9526150656373371952.Spec : Prop :=
  ∀ n, P9526150656373371952.a n = A123109 n

end A123109

/-! ## A123109.P9933369691213143463

`6-3*(1-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A123109.P9933369691213143463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  6 - 3 * (1 - a (n - 1))

end

end A123109.P9933369691213143463

namespace A123109

/-- `6-3*(1-a(n-1))` -/
def P9933369691213143463.Spec : Prop :=
  ∀ n, P9933369691213143463.a n = A123109 n

end A123109

/-! ## A123109.P6923465597260122757

`(a(n-1)+1)/(1-2/3)` with `a(0)=1, a(1)=3`
-/

namespace A123109.P6923465597260122757
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) + 1) / (1 - (2 : ℚ) / 3)

end

end A123109.P6923465597260122757

namespace A123109

/-- `(a(n-1)+1)/(1-2/3)` -/
def P6923465597260122757.Spec : Prop :=
  ∀ n, P6923465597260122757.a n = (A123109 n : ℚ)

end A123109

/-! ## A123109.P420979796608594297

`3-a(n-1)/(2/3-1)` with `a(0)=1, a(1)=3`
-/

namespace A123109.P420979796608594297
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  3 - a (n - 1) / ((2 : ℚ) / 3 - 1)

end

end A123109.P420979796608594297

namespace A123109

/-- `3-a(n-1)/(2/3-1)` -/
def P420979796608594297.Spec : Prop :=
  ∀ n, P420979796608594297.a n = (A123109 n : ℚ)

end A123109

/-! ## A123109.P17189706489695364436

`a(n-1)+3+a(n-1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A123109.P17189706489695364436
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 3] fun n a =>
  a (n - 1) + 3 + (a (n - 1) + a (n - 1))

end

end A123109.P17189706489695364436

namespace A123109

/-- `a(n-1)+3+a(n-1)+a(n-1)` -/
def P17189706489695364436.Spec : Prop :=
  ∀ n, (P17189706489695364436.a n : ℤ) = A123109 n

theorem P17189706489695364436.correct : P17189706489695364436.Spec := by
  intro n
  simp only [A123109, Nat.add_sub_cancel, A123109.P17189706489695364436.a, A123109.P10235107136971135650.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123109

/-! ## A123109.P7998024088170949750

`record[abs(1-A003462(n))]`
-/

namespace A123109.P7998024088170949750
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A003462 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123109.P7998024088170949750

namespace A123109

/-- `record[abs(1-A003462(n))]` -/
def P7998024088170949750.Spec : Prop :=
  ∀ n, P7998024088170949750.a n = A123109 n

end A123109

/-! ## A123109.P12677399409617965122

`record[Δ[A140313(n+2)]]`
-/

namespace A123109.P12677399409617965122
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140313 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123109.P12677399409617965122

namespace A123109

/-- `record[Δ[A140313(n+2)]]` -/
def P12677399409617965122.Spec : Prop :=
  ∀ n, P12677399409617965122.a n = A123109 n

end A123109

/-! ## A123109.P7745852131865417002

`record[A124302(n)-n]+n`
-/

namespace A123109.P7745852131865417002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124302 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A123109.P7745852131865417002

namespace A123109

/-- `record[A124302(n)-n]+n` -/
def P7745852131865417002.Spec : Prop :=
  ∀ n, P7745852131865417002.a n = A123109 n

end A123109

/-! ## A123109.P4857167787321824553

`A000244(n)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A123109.P4857167787321824553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A000244 n + a (n - 1)

end

end A123109.P4857167787321824553

namespace A123109

/-- `A000244(n)+a(n-1)` -/
def P4857167787321824553.Spec : Prop :=
  ∀ n, P4857167787321824553.a n = A123109 n

end A123109

/-! ## A123109.P15912664829303246033

`A027327(n)+a(n-2)` with `a(0)=1, a(1)=3, a(2)=12`
-/

namespace A123109.P15912664829303246033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 12] fun n a =>
  A027327 n + a (n - 2)

end

end A123109.P15912664829303246033

namespace A123109

/-- `A027327(n)+a(n-2)` -/
def P15912664829303246033.Spec : Prop :=
  ∀ n, P15912664829303246033.a n = A123109 n

end A123109

/-! ## A123109.P16999663284992314501

`A133494(n+1)+a(n-1)` with `a(0)=1, a(1)=3`
-/

namespace A123109.P16999663284992314501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  A133494 (n + 1) + a (n - 1)

end

end A123109.P16999663284992314501

namespace A123109

/-- `A133494(n+1)+a(n-1)` -/
def P16999663284992314501.Spec : Prop :=
  ∀ n, P16999663284992314501.a n = A123109 n

end A123109

/-!
# A123110: Triangle T(n,k), 0 <= k <= n, read by rows given by [0,1,0,0,0,0,0,0,0,0,...] DELTA [1,0,-1,1,0,0,0,0,0,0,...] where DELTA is the operator defined in A084938.

The programs for A123110, the canonical program `A123110.P9288717229510405343` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123110 has offset 0).

The definition of A123110 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123110.P9288717229510405343

`char[comp[∑[n+1]]]`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123110

/-- `char[comp[∑[n+1]]]` -/
def P9288717229510405343.Spec : Prop :=
  ∀ n, (P9288717229510405343.a n : ℤ) = A123110 n

theorem P9288717229510405343.correct : P9288717229510405343.Spec := by
  intro n
  simp only [A123110]

end A123110

/-! ## A123110.P12227538290031659290

`xor(1, char[∑[n+1]])`
-/

namespace A123110.P12227538290031659290
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0)

end

end A123110.P12227538290031659290

namespace A123110

/-- `xor(1, char[∑[n+1]])` -/
def P12227538290031659290.Spec : Prop :=
  ∀ n, (P12227538290031659290.a n : ℤ) = A123110 n

end A123110

/-! ## A123110.P3865221141534188830

`xor(1, char[∑[n]])^n`
-/

namespace A123110.P3865221141534188830
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 (if ∃ j, f1 j = n then 1 else 0) ^ n

end

end A123110.P3865221141534188830

namespace A123110

/-- `xor(1, char[∑[n]])^n` -/
def P3865221141534188830.Spec : Prop :=
  ∀ n, (P3865221141534188830.a n : ℤ) = A123110 n

end A123110

/-! ## A123110.P271644295839208752

`floor(cos(char[∑[n+1]]))`
-/

namespace A123110.P271644295839208752
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A123110.P271644295839208752

namespace A123110

/-- `floor(cos(char[∑[n+1]]))` -/
def P271644295839208752.Spec : Prop :=
  ∀ n, P271644295839208752.a n = A123110 n

end A123110

/-! ## A123110.P11059911164898964493

`floor(acos(char[∑[n+1]]))`
-/

namespace A123110.P11059911164898964493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A123110.P11059911164898964493

namespace A123110

/-- `floor(acos(char[∑[n+1]]))` -/
def P11059911164898964493.Spec : Prop :=
  ∀ n, P11059911164898964493.a n = A123110 n

end A123110

/-! ## A123110.P4651164350314443544

`floor(acot(char[∑[n+1]]))`
-/

namespace A123110.P4651164350314443544
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌋

end

end A123110.P4651164350314443544

namespace A123110

/-- `floor(acot(char[∑[n+1]]))` -/
def P4651164350314443544.Spec : Prop :=
  ∀ n, P4651164350314443544.a n = A123110 n

end A123110

/-! ## A123110.P14152148258419408351

`sin(acos(char[∑[n+1]]))`
-/

namespace A123110.P14152148258419408351
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sin (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A123110.P14152148258419408351

namespace A123110

/-- `sin(acos(char[∑[n+1]]))` -/
def P14152148258419408351.Spec : Prop :=
  ∀ n, P14152148258419408351.a n = (A123110 n : ℝ)

end A123110

/-! ## A123110.P3929717922790091244

`cos(asin(char[∑[n+1]]))`
-/

namespace A123110.P3929717922790091244
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cos (Real.arcsin ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))

end

end A123110.P3929717922790091244

namespace A123110

/-- `cos(asin(char[∑[n+1]]))` -/
def P3929717922790091244.Spec : Prop :=
  ∀ n, P3929717922790091244.a n = (A123110 n : ℝ)

end A123110

/-! ## A123110.P2028423752731712805

`ceil(acot(n)-char[∑[n]])`
-/

namespace A123110.P2028423752731712805
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot (n : ℝ) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)⌉

end

end A123110.P2028423752731712805

namespace A123110

/-- `ceil(acot(n)-char[∑[n]])` -/
def P2028423752731712805.Spec : Prop :=
  ∀ n, P2028423752731712805.a n = A123110 n

end A123110

/-! ## A123110.P5543642752008098739

`1-char[C(n+2, 2)]`
-/

namespace A123110.P5543642752008098739
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A123110.P5543642752008098739

namespace A123110

/-- `1-char[C(n+2, 2)]` -/
def P5543642752008098739.Spec : Prop :=
  ∀ n, P5543642752008098739.a n = A123110 n

end A123110

/-! ## A123110.P12174259063087951372

`(1-char[C(n, 2)])^n`
-/

namespace A123110.P12174259063087951372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ n

end

end A123110.P12174259063087951372

namespace A123110

/-- `(1-char[C(n, 2)])^n` -/
def P12174259063087951372.Spec : Prop :=
  ∀ n, P12174259063087951372.a n = A123110 n

end A123110

/-! ## A123110.P16017269757858291964

`dr(1-char[∑[n+1]])`
-/

namespace A123110.P16017269757858291964
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ))

end

end A123110.P16017269757858291964

namespace A123110

/-- `dr(1-char[∑[n+1]])` -/
def P16017269757858291964.Spec : Prop :=
  ∀ n, (P16017269757858291964.a n : ℤ) = A123110 n

end A123110

/-! ## A123110.P483683332003624493

`(1-char[∑[n]])^dr(n)`
-/

namespace A123110.P483683332003624493
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) ^ SequenceMachineLib.digitalRoot (n : ℤ)

end

end A123110.P483683332003624493

namespace A123110

/-- `(1-char[∑[n]])^dr(n)` -/
def P483683332003624493.Spec : Prop :=
  ∀ n, P483683332003624493.a n = A123110 n

end A123110

/-! ## A123110.P14605369935456256129

`(1-char[∑[n]])^atan(n)`
-/

namespace A123110.P14605369935456256129
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) : ℝ) ^ (Real.arctan (n : ℝ))

end

end A123110.P14605369935456256129

namespace A123110

/-- `(1-char[∑[n]])^atan(n)` -/
def P14605369935456256129.Spec : Prop :=
  ∀ n, P14605369935456256129.a n = (A123110 n : ℝ)

end A123110

/-! ## A123110.P6855784870235617449

`round(cos(char[∑[n+1]])²)`
-/

namespace A123110.P6855784870235617449
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ) ^ 2)

end

end A123110.P6855784870235617449

namespace A123110

/-- `round(cos(char[∑[n+1]])²)` -/
def P6855784870235617449.Spec : Prop :=
  ∀ n, P6855784870235617449.a n = A123110 n

end A123110

/-! ## A123110.P5981117960737551565

`round(sqrt(acos(char[∑[n+1]])))`
-/

namespace A123110.P5981117960737551565
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (Real.arccos ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A123110.P5981117960737551565

namespace A123110

/-- `round(sqrt(acos(char[∑[n+1]])))` -/
def P5981117960737551565.Spec : Prop :=
  ∀ n, P5981117960737551565.a n = A123110 n

end A123110

/-! ## A123110.P15308459144982219390

`ceil(log(acot(char[∑[n+1]])))`
-/

namespace A123110.P15308459144982219390
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.log (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A123110.P15308459144982219390

namespace A123110

/-- `ceil(log(acot(char[∑[n+1]])))` -/
def P15308459144982219390.Spec : Prop :=
  ∀ n, P15308459144982219390.a n = A123110 n

end A123110

/-! ## A123110.P16933757546528931608

`ceil(log2(acot(char[∑[n+1]])))`
-/

namespace A123110.P16933757546528931608
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ))⌉

end

end A123110.P16933757546528931608

namespace A123110

/-- `ceil(log2(acot(char[∑[n+1]])))` -/
def P16933757546528931608.Spec : Prop :=
  ∀ n, P16933757546528931608.a n = A123110 n

end A123110

/-! ## A123110.P1784931256243295060

`round(log2(acot(char[∑[n+1]])))`
-/

namespace A123110.P1784931256243295060
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (SequenceMachineLib.acot ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A123110.P1784931256243295060

namespace A123110

/-- `round(log2(acot(char[∑[n+1]])))` -/
def P1784931256243295060.Spec : Prop :=
  ∀ n, P1784931256243295060.a n = A123110 n

end A123110

/-! ## A123110.P9789122989161169478

`round(cos(tan(char[∑[n+1]])))`
-/

namespace A123110.P9789122989161169478
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (Real.tan ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℝ)))

end

end A123110.P9789122989161169478

namespace A123110

/-- `round(cos(tan(char[∑[n+1]])))` -/
def P9789122989161169478.Spec : Prop :=
  ∀ n, P9789122989161169478.a n = A123110 n

end A123110

/-!
# A123111: 1+n^2+n^3+n^5+n^7; 10101101 in base n.

The programs for A123111, the canonical program `A123111.P8021421823918929621` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123111 has offset 1).

The definition of A123111 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `1+(n+1)²+(n+1)^3+(n+1)^5+(n+1)^7` (program `A123111.P8021421823918929621`, by `A123111.P8021421823918929621.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123111.P8021421823918929621

`1+(n+1)²+(n+1)^3+(n+1)^5+(n+1)^7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123111

/-- `1+(n+1)²+(n+1)^3+(n+1)^5+(n+1)^7` -/
def P8021421823918929621.Spec : Prop :=
  ∀ n, (P8021421823918929621.a n : ℤ) = A123111 (n + 1)

theorem P8021421823918929621.correct : P8021421823918929621.Spec := by
  intro n
  simp only [A123111, Nat.add_sub_cancel]

end A123111

/-!
# A123114: a(n) = Sum_{r>0,s>0} binomial(r*s-1,n-1)/2^(r+s).

The programs for A123114, there is no canonical definition to state claims against.
-/

/-! ## A123114.P5523460069921073108

`4*A101370(n)-a(n-1)` with `a(0)=1`
-/

namespace A123114.P5523460069921073108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  4 * A101370 n - a (n - 1)

end

end A123114.P5523460069921073108

/-!
# A123115: Values of Y satisfying the equation (X-Y)^4 - 2*X*Y = 0 with integer X >= Y >= 0.

The programs for A123115, the canonical program `A123115.P16782163017273333645` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123115 has offset 0).

The definition of A123115 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123115.P16782163017273333645

`1/4*A000129(2*n)*(A002203(2*n)-2)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123115

/-- `1/4*A000129(2*n)*(A002203(2*n)-2)` -/
def P16782163017273333645.Spec : Prop :=
  ∀ n, P16782163017273333645.a n = (A123115 n : ℚ)

end A123115

/-! ## A123115.P4700214003786461104

`1/4*(A000129(4*n)-2*A000129(2*n))`
-/

namespace A123115.P4700214003786461104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 4 * (A000129 (4 * n) - 2 * A000129 (2 * n) : ℚ)

end

end A123115.P4700214003786461104

namespace A123115

/-- `1/4*(A000129(4*n)-2*A000129(2*n))` -/
def P4700214003786461104.Spec : Prop :=
  ∀ n, P4700214003786461104.a n = (A123115 n : ℚ)

end A123115

/-! ## A123115.P5907291648357288004

`A123056(n)-A001542(n)`
-/

namespace A123115.P5907291648357288004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123056 n - A001542 n

end

end A123115.P5907291648357288004

namespace A123115

/-- `A123056(n)-A001542(n)` -/
def P5907291648357288004.Spec : Prop :=
  ∀ n, P5907291648357288004.a n = A123115 n

end A123115

/-! ## A123115.P4061366884392305310

`A001108(n)*A001542(n)`
-/

namespace A123115.P4061366884392305310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n * A001542 n

end

end A123115.P4061366884392305310

namespace A123115

/-- `A001108(n)*A001542(n)` -/
def P4061366884392305310.Spec : Prop :=
  ∀ n, P4061366884392305310.a n = A123115 n

end A123115

/-! ## A123115.P10016255086386517571

`A001109(n)*A082639(n+1)`
-/

namespace A123115.P10016255086386517571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n * A082639 (n + 1)

end

end A123115.P10016255086386517571

namespace A123115

/-- `A001109(n)*A082639(n+1)` -/
def P10016255086386517571.Spec : Prop :=
  ∀ n, P10016255086386517571.a n = A123115 n

end A123115

/-! ## A123115.P18199394237694115521

`(A001541(n)-1)*A001109(n)`
-/

namespace A123115.P18199394237694115521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001541 n - 1) * A001109 n

end

end A123115.P18199394237694115521

namespace A123115

/-- `(A001541(n)-1)*A001109(n)` -/
def P18199394237694115521.Spec : Prop :=
  ∀ n, P18199394237694115521.a n = A123115 n

end A123115

/-! ## A123115.P7594613347541582662

`(A182189(n)-1)*A001108(n)`
-/

namespace A123115.P7594613347541582662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A182189 n - 1) * A001108 n

end

end A123115.P7594613347541582662

namespace A123115

/-- `(A182189(n)-1)*A001108(n)` -/
def P7594613347541582662.Spec : Prop :=
  ∀ n, P7594613347541582662.a n = A123115 n

end A123115

/-! ## A123115.P11300504828809665642

`A123056(n)-A000129(2*n)`
-/

namespace A123115.P11300504828809665642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123056 n - A000129 (2 * n)

end

end A123115.P11300504828809665642

namespace A123115

/-- `A123056(n)-A000129(2*n)` -/
def P11300504828809665642.Spec : Prop :=
  ∀ n, P11300504828809665642.a n = A123115 n

end A123115

/-! ## A123115.P9265775715640589965

`A000129(2*n)*A001108(n)`
-/

namespace A123115.P9265775715640589965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000129 (2 * n) * A001108 n

end

end A123115.P9265775715640589965

namespace A123115

/-- `A000129(2*n)*A001108(n)` -/
def P9265775715640589965.Spec : Prop :=
  ∀ n, P9265775715640589965.a n = A123115 n

end A123115

/-! ## A123115.P17621297412690286026

`2*A001108(n)*A001109(n)`
-/

namespace A123115.P17621297412690286026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001108 n * A001109 n)

end

end A123115.P17621297412690286026

namespace A123115

/-- `2*A001108(n)*A001109(n)` -/
def P17621297412690286026.Spec : Prop :=
  ∀ n, P17621297412690286026.a n = A123115 n

end A123115

/-!
# A123116: Values y of solutions (x, y) to the Diophantine equation (x-y)^4 - 8*x*y = 0 with x >= y.

The programs for A123116, the canonical program `A123116.P10623391634681793158` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123116 has offset 0).

The definition of A123116 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123116.P10623391634681793158

`2*A123115(n)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A123116

/-- `2*A123115(n)` -/
def P10623391634681793158.Spec : Prop :=
  ∀ n, P10623391634681793158.a n = A123116 n

theorem P10623391634681793158.correct : P10623391634681793158.Spec := by
  intro n
  simp only [A123116]

end A123116

/-! ## A123116.P7485213483517062542

`A123057(n)-2*A001542(n)`
-/

namespace A123116.P7485213483517062542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123057 n - 2 * A001542 n

end

end A123116.P7485213483517062542

namespace A123116

/-- `A123057(n)-2*A001542(n)` -/
def P7485213483517062542.Spec : Prop :=
  ∀ n, P7485213483517062542.a n = A123116 n

end A123116

/-! ## A123116.P16299769396928709638

`1/2*A000129(2*n)*(A002203(2*n)-2)`
-/

namespace A123116.P16299769396928709638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000129 (2 * n) : ℚ) * (A002203 (2 * n) - 2 : ℚ)

end

end A123116.P16299769396928709638

namespace A123116

/-- `1/2*A000129(2*n)*(A002203(2*n)-2)` -/
def P16299769396928709638.Spec : Prop :=
  ∀ n, P16299769396928709638.a n = (A123116 n : ℚ)

end A123116

/-! ## A123116.P13664565120702129427

`1/2*(A000129(4*n)-2*A000129(2*n))`
-/

namespace A123116.P13664565120702129427
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 : ℚ) / 2 * (A000129 (4 * n) - 2 * A000129 (2 * n) : ℚ)

end

end A123116.P13664565120702129427

namespace A123116

/-- `1/2*(A000129(4*n)-2*A000129(2*n))` -/
def P13664565120702129427.Spec : Prop :=
  ∀ n, P13664565120702129427.a n = (A123116 n : ℚ)

end A123116

/-! ## A123116.P16850516202036946660

`A113450(round(1/acot(n))+n)`
-/

namespace A123116.P16850516202036946660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113450 (SequenceMachineLib.roundAway (1 / SequenceMachineLib.acot (n : ℝ)) + (n : ℤ)).toNat

end

end A123116.P16850516202036946660

namespace A123116

/-- `A113450(round(1/acot(n))+n)` -/
def P16850516202036946660.Spec : Prop :=
  ∀ n, P16850516202036946660.a n = A123116 n

end A123116

/-! ## A123116.P4793743591091073264

`Δ[∑[A204512(2*n+1)]²]`
-/

namespace A123116.P4793743591091073264
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204512 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123116.P4793743591091073264

namespace A123116

/-- `Δ[∑[A204512(2*n+1)]²]` -/
def P4793743591091073264.Spec : Prop :=
  ∀ n, P4793743591091073264.a n = A123116 n

end A123116

/-! ## A123116.P5792039372513046736

`A113450(A004277(n))`
-/

namespace A123116.P5792039372513046736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113450 (A004277 n).toNat

end

end A123116.P5792039372513046736

namespace A123116

/-- `A113450(A004277(n))` -/
def P5792039372513046736.Spec : Prop :=
  ∀ n, P5792039372513046736.a n = A123116 n

end A123116

/-! ## A123116.P10558789824034331368

`A113450(A004273(n)+1)`
-/

namespace A123116.P10558789824034331368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113450 (A004273 n + 1).toNat

end

end A123116.P10558789824034331368

namespace A123116

/-- `A113450(A004273(n)+1)` -/
def P10558789824034331368.Spec : Prop :=
  ∀ n, P10558789824034331368.a n = A123116 n

end A123116

/-! ## A123116.P12823991289902134125

`A082405(n)-A001542(n)`
-/

namespace A123116.P12823991289902134125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082405 n - A001542 n

end

end A123116.P12823991289902134125

namespace A123116

/-- `A082405(n)-A001542(n)` -/
def P12823991289902134125.Spec : Prop :=
  ∀ n, P12823991289902134125.a n = A123116 n

end A123116

/-! ## A123116.P9452797341270775248

`A001108(n)*A005319(n)`
-/

namespace A123116.P9452797341270775248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001108 n * A005319 n

end

end A123116.P9452797341270775248

namespace A123116

/-- `A001108(n)*A005319(n)` -/
def P9452797341270775248.Spec : Prop :=
  ∀ n, P9452797341270775248.a n = A123116 n

end A123116

/-!
# A123117: A063865(4n-3).

The programs for A123117, there is no canonical definition to state claims against.
-/

/-! ## A123117.P13687492993394706871

`2*A104456(n+1)`
-/

namespace A123117.P13687492993394706871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104456 (n + 1)

end

end A123117.P13687492993394706871

/-! ## A123117.P14207824538313861769

`A025591(record[xor(3, n)])`
-/

namespace A123117.P14207824538313861769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A123117.P14207824538313861769

/-! ## A123117.P18338198058450032756

`A063867(record[xor(3, n)])`
-/

namespace A123117.P18338198058450032756
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063867 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A123117.P18338198058450032756

/-! ## A123117.P16759367249691928092

`A063865(4*n+3)`
-/

namespace A123117.P16759367249691928092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 (4 * n + 3)

end

end A123117.P16759367249691928092

/-! ## A123117.P10625444637799325798

`record[Δ[A063865(n+2)]]`
-/

namespace A123117.P10625444637799325798
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123117.P10625444637799325798

/-! ## A123117.P8025701021522896441

`2*A058377(4*n+3)`
-/

namespace A123117.P8025701021522896441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A058377 (4 * n + 3)

end

end A123117.P8025701021522896441

/-! ## A123117.P17545133925208338122

`A025591(3*(n+1)+n)`
-/

namespace A123117.P17545133925208338122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025591 (3 * (n + 1) + n)

end

end A123117.P17545133925208338122

/-! ## A123117.P12391565796173638445

`A063867(3*(n+1)+n)`
-/

namespace A123117.P12391565796173638445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063867 (3 * (n + 1) + n)

end

end A123117.P12391565796173638445

/-! ## A123117.P19930261735764666

`record[A063865(A165754(n))]`
-/

namespace A123117.P19930261735764666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063865 (A165754 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123117.P19930261735764666

/-!
# A123118: Partial products of A101695.

The programs for A123118, there is no canonical definition to state claims against.
-/

/-! ## A123118.P7283208152808869593

`∏[A005843(A078841(n))]`
-/

namespace A123118.P7283208152808869593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A078841 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123118.P7283208152808869593

/-! ## A123118.P1543453976670215316

`∏[A005843(A078840(2*n²))]`
-/

namespace A123118.P1543453976670215316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A078840 (2 * n ^ 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123118.P1543453976670215316

/-! ## A123118.P11917250256360314927

`∏[A004277(A101695(n+1)/2)]`
-/

namespace A123118.P11917250256360314927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (SequenceMachineLib.roundAway ((A101695 (n + 1) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123118.P11917250256360314927

/-! ## A123118.P13085342733247027032

`∏[A005843(A078840((n+1)²+n²)/2)]`
-/

namespace A123118.P13085342733247027032
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.roundAway ((A078840 ((n + 1) ^ 2 + n ^ 2) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123118.P13085342733247027032

/-! ## A123118.P7600292756688727740

`∏[A165712(2*a(n-1))]` with `a(0)=2`
-/

namespace A123118.P7600292756688727740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A165712 (2 * f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123118.P7600292756688727740

/-!
# A123119: Number of digits in sum of first n primes (A007504).

The programs for A123119, the canonical program `A123119.P18220163899370039324` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123119 has offset 1).

The definition of A123119 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007504, A055642, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123119.P18220163899370039324

`A055642(A007504(n+1))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A123119

/-- `A055642(A007504(n+1))` -/
def P18220163899370039324.Spec : Prop :=
  ∀ n, P18220163899370039324.a n = A123119 (n + 1)

theorem P18220163899370039324.correct : P18220163899370039324.Spec := by
  intro n
  simp only [A123119, Nat.add_sub_cancel]

end A123119

/-! ## A123119.P12217576409781743939

`A004218(A007504(n+1)+1)`
-/

namespace A123119.P12217576409781743939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A007504 (n + 1) + 1).toNat

end

end A123119.P12217576409781743939

namespace A123119

/-- `A004218(A007504(n+1)+1)` -/
def P12217576409781743939.Spec : Prop :=
  ∀ n, P12217576409781743939.a n = A123119 (n + 1)

end A123119

/-! ## A123119.P2182509095087224319

`∑{digits}[∑[A000040(n+1)], (#%2)!]`
-/

namespace A123119.P2182509095087224319
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Nat.factorial (x % 2)).sum

end

end A123119.P2182509095087224319

namespace A123119

/-- `∑{digits}[∑[A000040(n+1)], (#%2)!]` -/
def P2182509095087224319.Spec : Prop :=
  ∀ n, (P2182509095087224319.a n : ℤ) = A123119 (n + 1)

end A123119

/-! ## A123119.P12529154703545702486

`∑{digits}[∑[A000040(n+1)], A239700(#+1)]`
-/

namespace A123119.P12529154703545702486
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A239700 (x + 1)).sum

end

end A123119.P12529154703545702486

namespace A123119

/-- `∑{digits}[∑[A000040(n+1)], A239700(#+1)]` -/
def P12529154703545702486.Spec : Prop :=
  ∀ n, P12529154703545702486.a n = A123119 (n + 1)

end A123119

/-! ## A123119.P13893756586326292346

`∑{digits}[∑[A000040(n+1)], A262079(#+1)]`
-/

namespace A123119.P13893756586326292346
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A262079 (x + 1)).sum

end

end A123119.P13893756586326292346

namespace A123119

/-- `∑{digits}[∑[A000040(n+1)], A262079(#+1)]` -/
def P13893756586326292346.Spec : Prop :=
  ∀ n, P13893756586326292346.a n = A123119 (n + 1)

end A123119

/-! ## A123119.P17170683495138223198

`∑{digits}[∑[A040976(n+1)+3], A036370(#)]`
-/

namespace A123119.P17170683495138223198
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036370 x).sum

end

end A123119.P17170683495138223198

namespace A123119

/-- `∑{digits}[∑[A040976(n+1)+3], A036370(#)]` -/
def P17170683495138223198.Spec : Prop :=
  ∀ n, P17170683495138223198.a n = A123119 (n + 1)

end A123119

/-! ## A123119.P7869103589855021427

`∑{digits}[1-∑[A000040(n+1)+1], A036370(#)]`
-/

namespace A123119.P7869103589855021427
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036370 x).sum

end

end A123119.P7869103589855021427

namespace A123119

/-- `∑{digits}[1-∑[A000040(n+1)+1], A036370(#)]` -/
def P7869103589855021427.Spec : Prop :=
  ∀ n, P7869103589855021427.a n = A123119 (n + 1)

end A123119

/-! ## A123119.P4867086549129522747

`∑{digits}[2-∑[A006093(n+1)+2], A036370(#)]`
-/

namespace A123119.P4867086549129522747
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A036370 x).sum

end

end A123119.P4867086549129522747

namespace A123119

/-- `∑{digits}[2-∑[A006093(n+1)+2], A036370(#)]` -/
def P4867086549129522747.Spec : Prop :=
  ∀ n, P4867086549129522747.a n = A123119 (n + 1)

end A123119

/-! ## A123119.P15684912078631317240

`∑{digits}[∑[A000040(n+1)], A000265(#+1)%2]`
-/

namespace A123119.P15684912078631317240
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.tmod (A000265 (x + 1)) 2).sum

end

end A123119.P15684912078631317240

namespace A123119

/-- `∑{digits}[∑[A000040(n+1)], A000265(#+1)%2]` -/
def P15684912078631317240.Spec : Prop :=
  ∀ n, P15684912078631317240.a n = A123119 (n + 1)

end A123119

/-! ## A123119.P7961143197713552744

`∑{digits}[∑[A000040(n+1)], A033451(#+1)%5]`
-/

namespace A123119.P7961143197713552744
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => Int.tmod (A033451 (x + 1)) 5).sum

end

end A123119.P7961143197713552744

namespace A123119

/-- `∑{digits}[∑[A000040(n+1)], A033451(#+1)%5]` -/
def P7961143197713552744.Spec : Prop :=
  ∀ n, P7961143197713552744.a n = A123119 (n + 1)

end A123119

/-! ## A123119.P2761923461922959364

`A390765(∑[n+2])`
-/

namespace A123119.P2761923461922959364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390765 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123119.P2761923461922959364

namespace A123119

/-- `A390765(∑[n+2])` -/
def P2761923461922959364.Spec : Prop :=
  ∀ n, P2761923461922959364.a n = A123119 (n + 1)

end A123119

/-!
# A123121: Length of the n-th Zimin word (A082215(n)).

The programs for A123121, there is no canonical definition to state claims against.
-/

/-! ## A123121.P3072126845416332882

`∑[char[9]+2*a(n-1)]` with `a(0)=1`
-/

namespace A123121.P3072126845416332882
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + 2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123121.P3072126845416332882

/-! ## A123121.P9628269779372683989

`∑[or(2*a(n-1), char[9])]` with `a(0)=1`
-/

namespace A123121.P9628269779372683989
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.lor (2 * f1 (n - 1)) (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123121.P9628269779372683989

/-! ## A123121.P17059240311055052225

`∑[xor(2*a(n-1), char[9])]` with `a(0)=1`
-/

namespace A123121.P17059240311055052225
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  Nat.xor (2 * f1 (n - 1)) (if ∃ j, f2 j = n then 1 else 0)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123121.P17059240311055052225

/-! ## A123121.P14123477494004196796

`floor(sqrt(sqrt(n)+1)+2*a(n-1))` with `a(0)=1`
-/

namespace A123121.P14123477494004196796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊Real.sqrt (Real.sqrt (n : ℝ) + 1) + (2 * a (n - 1) : ℝ)⌋

end

end A123121.P14123477494004196796

/-! ## A123121.P5617236591381150509

`∑[char[9]+a(n-1)+a(n-1)]` with `a(0)=1`
-/

namespace A123121.P5617236591381150509
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  (if ∃ j, f2 j = n then 1 else 0) + (f1 (n - 1) + f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123121.P5617236591381150509

/-!
# A123122: Numbers of the form 5i + 7j for some nonnegative integers i and j.

The programs for A123122, there is no canonical definition to state claims against.
-/

/-! ## A123122.P8581475157186959543

`A162918(n+1)-12`
-/

namespace A123122.P8581475157186959543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162918 (n + 1) - 12

end

end A123122.P8581475157186959543

/-!
# A123123: Numbers m such that m mod k = 2 for only one integer k in 2..m.

The programs for A123123, the canonical program `A123123.P9221843181498262709` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123123 has offset 1).

The definition of A123123 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123123.P11819333498066731890

`A073582(n+1)/2+2`
-/

namespace A123123.P11819333498066731890
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A073582 (n + 1) : ℚ) / 2 + 2

end

end A123123.P11819333498066731890

namespace A123123

/-- `A073582(n+1)/2+2` -/
def P11819333498066731890.Spec : Prop :=
  ∀ n, P11819333498066731890.a n = (A123123 (n + 1) : ℚ)

end A123123

/-! ## A123123.P9221843181498262709

`A052147(n+1)+C(n, n²)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123123

/-- `A052147(n+1)+C(n, n²)` -/
def P9221843181498262709.Spec : Prop :=
  ∀ n, P9221843181498262709.a n = A123123 (n + 1)

theorem P9221843181498262709.correct : P9221843181498262709.Spec := by
  intro n
  simp only [A123123, Nat.add_sub_cancel]

end A123123

/-! ## A123123.P18295242877879248400

`xor(A000040(n+1)+2, C(3, n²))`
-/

namespace A123123.P18295242877879248400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000040 (n + 1) + 2) (Nat.choose 3 (n ^ 2) : ℤ)

end

end A123123.P18295242877879248400

namespace A123123

/-- `xor(A000040(n+1)+2, C(3, n²))` -/
def P18295242877879248400.Spec : Prop :=
  ∀ n, P18295242877879248400.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P444212308036986023

`A141044(n)+A008864(n+1)`
-/

namespace A123123.P444212308036986023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 n + A008864 (n + 1)

end

end A123123.P444212308036986023

namespace A123123

/-- `A141044(n)+A008864(n+1)` -/
def P444212308036986023.Spec : Prop :=
  ∀ n, P444212308036986023.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P2214198299297028038

`A373565(n)+A175216(n+1)`
-/

namespace A123123.P2214198299297028038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n + A175216 (n + 1)

end

end A123123.P2214198299297028038

namespace A123123

/-- `A373565(n)+A175216(n+1)` -/
def P2214198299297028038.Spec : Prop :=
  ∀ n, P2214198299297028038.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P14892509185580051104

`A113935(n+1)-A157928(n)`
-/

namespace A123123.P14892509185580051104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113935 (n + 1) - A157928 n

end

end A123123.P14892509185580051104

namespace A123123

/-- `A113935(n+1)-A157928(n)` -/
def P14892509185580051104.Spec : Prop :=
  ∀ n, P14892509185580051104.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P18229464464522005973

`xor(A052147(n+1), A169585(n))`
-/

namespace A123123.P18229464464522005973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A052147 (n + 1)) (A169585 n)

end

end A123123.P18229464464522005973

namespace A123123

/-- `xor(A052147(n+1), A169585(n))` -/
def P18229464464522005973.Spec : Prop :=
  ∀ n, P18229464464522005973.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P8467331101745225479

`A052147(n+1)+A019590(n+1)`
-/

namespace A123123.P8467331101745225479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + A019590 (n + 1)

end

end A123123.P8467331101745225479

namespace A123123

/-- `A052147(n+1)+A019590(n+1)` -/
def P8467331101745225479.Spec : Prop :=
  ∀ n, P8467331101745225479.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P15282547433712559518

`A000040(n+1)+A141044(n)+1`
-/

namespace A123123.P15282547433712559518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A141044 n + 1)

end

end A123123.P15282547433712559518

namespace A123123

/-- `A000040(n+1)+A141044(n)+1` -/
def P15282547433712559518.Spec : Prop :=
  ∀ n, P15282547433712559518.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P13696079246131543062

`A006093(n+1)+A141044(n)+2`
-/

namespace A123123.P13696079246131543062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + (A141044 n + 2)

end

end A123123.P13696079246131543062

namespace A123123

/-- `A006093(n+1)+A141044(n)+2` -/
def P13696079246131543062.Spec : Prop :=
  ∀ n, P13696079246131543062.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P10967604621327729189

`A166496(n+1)-A156037(n+1)`
-/

namespace A123123.P10967604621327729189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166496 (n + 1) - A156037 (n + 1)

end

end A123123.P10967604621327729189

namespace A123123

/-- `A166496(n+1)-A156037(n+1)` -/
def P10967604621327729189.Spec : Prop :=
  ∀ n, P10967604621327729189.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P9891409308315964751

`A052147(n+1)+A154955(n+1)²`
-/

namespace A123123.P9891409308315964751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) + A154955 (n + 1) ^ 2

end

end A123123.P9891409308315964751

namespace A123123

/-- `A052147(n+1)+A154955(n+1)²` -/
def P9891409308315964751.Spec : Prop :=
  ∀ n, P9891409308315964751.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P9090598210914044867

`A000040(n+1)+char[A167407(n)]+2`
-/

namespace A123123.P9090598210914044867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167407 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + 2 : ℕ) : ℤ)

end

end A123123.P9090598210914044867

namespace A123123

/-- `A000040(n+1)+char[A167407(n)]+2` -/
def P9090598210914044867.Spec : Prop :=
  ∀ n, P9090598210914044867.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P17657278240011480663

`A000040(n+1)+A019590(n+1)+2`
-/

namespace A123123.P17657278240011480663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A019590 (n + 1) + 2)

end

end A123123.P17657278240011480663

namespace A123123

/-- `A000040(n+1)+A019590(n+1)+2` -/
def P17657278240011480663.Spec : Prop :=
  ∀ n, P17657278240011480663.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P620418781292792184

`A000040(n+1)+A154955(n+1)²+2`
-/

namespace A123123.P620418781292792184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (A154955 (n + 1) ^ 2 + 2)

end

end A123123.P620418781292792184

namespace A123123

/-- `A000040(n+1)+A154955(n+1)²+2` -/
def P620418781292792184.Spec : Prop :=
  ∀ n, P620418781292792184.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P5972119255746013303

`A000040(n+1)+A000040(C(n, n²)+1)`
-/

namespace A123123.P5972119255746013303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + A000040 (Nat.choose n (n ^ 2) + 1)

end

end A123123.P5972119255746013303

namespace A123123

/-- `A000040(n+1)+A000040(C(n, n²)+1)` -/
def P5972119255746013303.Spec : Prop :=
  ∀ n, P5972119255746013303.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P5022421209209832258

`A000045(C(2, n+1))+A000040(n+1)+2`
-/

namespace A123123.P5022421209209832258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (Nat.choose 2 (n + 1)) + (A000040 (n + 1) + 2)

end

end A123123.P5022421209209832258

namespace A123123

/-- `A000045(C(2, n+1))+A000040(n+1)+2` -/
def P5022421209209832258.Spec : Prop :=
  ∀ n, P5022421209209832258.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P2020816512490913637

`A000040(n+1)+C(A001222(n+1), n)+2`
-/

namespace A123123.P2020816512490913637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (Nat.choose (A001222 (n + 1)).toNat n : ℤ) + 2

end

end A123123.P2020816512490913637

namespace A123123

/-- `A000040(n+1)+C(A001222(n+1), n)+2` -/
def P2020816512490913637.Spec : Prop :=
  ∀ n, P2020816512490913637.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P5880835695018782513

`A000040(n+1)+C(A000005(n+1), n+1)+2`
-/

namespace A123123.P5880835695018782513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) + (Nat.choose (A000005 (n + 1)).toNat (n + 1) : ℤ) + 2

end

end A123123.P5880835695018782513

namespace A123123

/-- `A000040(n+1)+C(A000005(n+1), n+1)+2` -/
def P5880835695018782513.Spec : Prop :=
  ∀ n, P5880835695018782513.a n = A123123 (n + 1)

end A123123

/-! ## A123123.P5623587414477852534

`A118136(A063905(n+1))+A000040(n+1)`
-/

namespace A123123.P5623587414477852534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118136 (A063905 (n + 1)).toNat + A000040 (n + 1)

end

end A123123.P5623587414477852534

namespace A123123

/-- `A118136(A063905(n+1))+A000040(n+1)` -/
def P5623587414477852534.Spec : Prop :=
  ∀ n, P5623587414477852534.a n = A123123 (n + 1)

end A123123

/-!
# A123125: Triangle of Eulerian numbers T(n,k), 0 <= k <= n, read by rows.

The programs for A123125, there is no canonical definition to state claims against.
-/

/-! ## A123125.P171880546803053530

`A173018(3-(4-n)%(n+1))`
-/

namespace A123125.P171880546803053530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (3 - Int.tmod (4 - (n : ℤ)) (n + 1 : ℤ)).toNat

end

end A123125.P171880546803053530

/-! ## A123125.P677801115137686830

`A008518(n-1)-a(n-1)` with `a(0)=1`
-/

namespace A123125.P677801115137686830
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008518 (n - 1) - a (n - 1)

end

end A123125.P677801115137686830

/-! ## A123125.P11125809688049912938

`A173018(abs(n+2-2*n)+1)`
-/

namespace A123125.P11125809688049912938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (|(n + 2 : ℤ) - (2 * n : ℤ)| + 1).toNat

end

end A123125.P11125809688049912938

/-! ## A123125.P14023072374837028590

`A173018(n+1)-Δ[A008518(n)]`
-/

namespace A123125.P14023072374837028590
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008518 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (n + 1) - (f1 (n + 1) - f1 n)

end

end A123125.P14023072374837028590

/-! ## A123125.P4716103803443590615

`A173018(A061579(n))+A000007(n+3)`
-/

namespace A123125.P4716103803443590615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173018 (A061579 n).toNat + A000007 (n + 3)

end

end A123125.P4716103803443590615

/-! ## A123125.P4019074907984980841

`A057427(n+4)*A173018(A061579(n))`
-/

namespace A123125.P4019074907984980841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 4) * A173018 (A061579 n).toNat

end

end A123125.P4019074907984980841

/-! ## A123125.P8300561318978448695

`A008518(n)-A173018(A038722(n+3))`
-/

namespace A123125.P8300561318978448695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008518 n - A173018 (A038722 (n + 3)).toNat

end

end A123125.P8300561318978448695

/-! ## A123125.P3547653503875368371

`A141660(n+1)/A059268(n)`
-/

namespace A123125.P3547653503875368371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141660 (n + 1) : ℚ) / (A059268 n : ℚ)

end

end A123125.P3547653503875368371

/-!
# A123128: Add n to the n-th difference between consecutive primes.

The programs for A123128, the canonical program `A123128.P14620295915267660605` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123128 has offset 1).

The definition of A123128 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123128.P14620295915267660605

`n+1+A001223(n+1)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A123128

/-- `n+1+A001223(n+1)` -/
def P14620295915267660605.Spec : Prop :=
  ∀ n, P14620295915267660605.a n = A123128 (n + 1)

theorem P14620295915267660605.correct : P14620295915267660605.Spec := by
  intro n
  simp only [A123128, Nat.add_sub_cancel]

end A123128

/-! ## A123128.P4020720399378473236

`A147966(n+1)+1`
-/

namespace A123128.P4020720399378473236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147966 (n + 1) + 1

end

end A123128.P4020720399378473236

namespace A123128

/-- `A147966(n+1)+1` -/
def P4020720399378473236.Spec : Prop :=
  ∀ n, P4020720399378473236.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P5321797860006007375

`A046933(n+1)+2+n`
-/

namespace A123128.P5321797860006007375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046933 (n + 1) + 2 + (n : ℤ)

end

end A123128.P5321797860006007375

namespace A123128

/-- `A046933(n+1)+2+n` -/
def P5321797860006007375.Spec : Prop :=
  ∀ n, P5321797860006007375.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P10367599882923151042

`sqrt(A076821(n+1))+n+1`
-/

namespace A123128.P10367599882923151042
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A076821 (n + 1) : ℝ) + (n + 1 : ℝ)

end

end A123128.P10367599882923151042

namespace A123128

/-- `sqrt(A076821(n+1))+n+1` -/
def P10367599882923151042.Spec : Prop :=
  ∀ n, P10367599882923151042.a n = (A123128 (n + 1) : ℝ)

end A123128

/-! ## A123128.P673378239630240469

`a(n-1)+A036263(n)+1` with `a(0)=2`
-/

namespace A123128.P673378239630240469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (A036263 n + 1)

end

end A123128.P673378239630240469

namespace A123128

/-- `a(n-1)+A036263(n)+1` -/
def P673378239630240469.Spec : Prop :=
  ∀ n, P673378239630240469.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P16693652630149768593

`abs(Δ[A330547(n+1)])+1+n`
-/

namespace A123128.P16693652630149768593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330547 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n| + 1 + (n : ℤ)

end

end A123128.P16693652630149768593

namespace A123128

/-- `abs(Δ[A330547(n+1)])+1+n` -/
def P16693652630149768593.Spec : Prop :=
  ∀ n, P16693652630149768593.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P10714596137118490596

`Δ[A001748(n+1)/3]+1+n`
-/

namespace A123128.P10714596137118490596
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (n + 1) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1 + (n : ℚ)

end

end A123128.P10714596137118490596

namespace A123128

/-- `Δ[A001748(n+1)/3]+1+n` -/
def P10714596137118490596.Spec : Prop :=
  ∀ n, P10714596137118490596.a n = (A123128 (n + 1) : ℚ)

end A123128

/-! ## A123128.P6317692690079903278

`Δ[A001749(n+1)/4]+n+1`
-/

namespace A123128.P6317692690079903278
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (n + 1) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n + 1 : ℚ)

end

end A123128.P6317692690079903278

namespace A123128

/-- `Δ[A001749(n+1)/4]+n+1` -/
def P6317692690079903278.Spec : Prop :=
  ∀ n, P6317692690079903278.a n = (A123128 (n + 1) : ℚ)

end A123128

/-! ## A123128.P3375939864708773376

`A141042(n+1)/(n+1)+n+1`
-/

namespace A123128.P3375939864708773376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141042 (n + 1) : ℚ) / (n + 1 : ℚ) + (n + 1 : ℚ)

end

end A123128.P3375939864708773376

namespace A123128

/-- `A141042(n+1)/(n+1)+n+1` -/
def P3375939864708773376.Spec : Prop :=
  ∀ n, P3375939864708773376.a n = (A123128 (n + 1) : ℚ)

end A123128

/-! ## A123128.P15561026281903792212

`A020725(A001223(n+1))+n`
-/

namespace A123128.P15561026281903792212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A001223 (n + 1)).toNat + (n : ℤ)

end

end A123128.P15561026281903792212

namespace A123128

/-- `A020725(A001223(n+1))+n` -/
def P15561026281903792212.Spec : Prop :=
  ∀ n, P15561026281903792212.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P5649221451117954097

`A000720(A082910(n+1))+n+1`
-/

namespace A123128.P5649221451117954097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A082910 (n + 1)).toNat + (n + 1 : ℤ)

end

end A123128.P5649221451117954097

namespace A123128

/-- `A000720(A082910(n+1))+n+1` -/
def P5649221451117954097.Spec : Prop :=
  ∀ n, P5649221451117954097.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P17352213165556704287

`A161911(n+1)+A062249(n+1)`
-/

namespace A123128.P17352213165556704287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161911 (n + 1) + A062249 (n + 1)

end

end A123128.P17352213165556704287

namespace A123128

/-- `A161911(n+1)+A062249(n+1)` -/
def P17352213165556704287.Spec : Prop :=
  ∀ n, P17352213165556704287.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P8218699993266499627

`A147965(n+1)+A100803(n+1)`
-/

namespace A123128.P8218699993266499627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147965 (n + 1) + A100803 (n + 1)

end

end A123128.P8218699993266499627

namespace A123128

/-- `A147965(n+1)+A100803(n+1)` -/
def P8218699993266499627.Spec : Prop :=
  ∀ n, P8218699993266499627.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P17054451031796412185

`A014690(n+1)-A000040(n+1)`
-/

namespace A123128.P17054451031796412185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014690 (n + 1) - A000040 (n + 1)

end

end A123128.P17054451031796412185

namespace A123128

/-- `A014690(n+1)-A000040(n+1)` -/
def P17054451031796412185.Spec : Prop :=
  ∀ n, P17054451031796412185.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P17855842434595367878

`A014688(n+1)-A062234(n+1)`
-/

namespace A123128.P17855842434595367878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014688 (n + 1) - A062234 (n + 1)

end

end A123128.P17855842434595367878

namespace A123128

/-- `A014688(n+1)-A062234(n+1)` -/
def P17855842434595367878.Spec : Prop :=
  ∀ n, P17855842434595367878.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P2965416543696168521

`A065091(n+1)-A014689(n+1)`
-/

namespace A123128.P2965416543696168521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) - A014689 (n + 1)

end

end A123128.P2965416543696168521

namespace A123128

/-- `A065091(n+1)-A014689(n+1)` -/
def P2965416543696168521.Spec : Prop :=
  ∀ n, P2965416543696168521.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P12802130810119546087

`A065091(n+1)+1-A014692(n+1)`
-/

namespace A123128.P12802130810119546087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + (1 - A014692 (n + 1))

end

end A123128.P12802130810119546087

namespace A123128

/-- `A065091(n+1)+1-A014692(n+1)` -/
def P12802130810119546087.Spec : Prop :=
  ∀ n, P12802130810119546087.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P2825597666074505206

`A076368(n+2)+n`
-/

namespace A123128.P2825597666074505206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076368 (n + 2) + (n : ℤ)

end

end A123128.P2825597666074505206

namespace A123128

/-- `A076368(n+2)+n` -/
def P2825597666074505206.Spec : Prop :=
  ∀ n, P2825597666074505206.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P6238425136696832380

`A230846(n+2)+n`
-/

namespace A123128.P6238425136696832380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230846 (n + 2) + (n : ℤ)

end

end A123128.P6238425136696832380

namespace A123128

/-- `A230846(n+2)+n` -/
def P6238425136696832380.Spec : Prop :=
  ∀ n, P6238425136696832380.a n = A123128 (n + 1)

end A123128

/-! ## A123128.P4858250671754181452

`A230847(n+2)+n`
-/

namespace A123128.P4858250671754181452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230847 (n + 2) + (n : ℤ)

end

end A123128.P4858250671754181452

namespace A123128

/-- `A230847(n+2)+n` -/
def P4858250671754181452.Spec : Prop :=
  ∀ n, P4858250671754181452.a n = A123128 (n + 1)

end A123128

/-!
# A123129: a(n) = ( n + prime(n+1) - prime(n) )^(n-1).

The programs for A123129, the canonical program `A123129.P10467809543650190892` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123129 has offset 1).

The definition of A123129 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001223, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123129.P10467809543650190892

`(n+1+A001223(n+1))^n`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A123129

/-- `(n+1+A001223(n+1))^n` -/
def P10467809543650190892.Spec : Prop :=
  ∀ n, P10467809543650190892.a n = A123129 (n + 1)

theorem P10467809543650190892.correct : P10467809543650190892.Spec := by
  intro n
  simp only [A123129, Nat.add_sub_cancel]

end A123129

/-! ## A123129.P14288359015971386805

`A123128(n+1)^n`
-/

namespace A123129.P14288359015971386805
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123128 (n + 1) ^ n

end

end A123129.P14288359015971386805

namespace A123129

/-- `A123128(n+1)^n` -/
def P14288359015971386805.Spec : Prop :=
  ∀ n, P14288359015971386805.a n = A123129 (n + 1)

end A123129

/-! ## A123129.P1673480010083695945

`(A147966(n+1)+1)^n`
-/

namespace A123129.P1673480010083695945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A147966 (n + 1) + 1) ^ n

end

end A123129.P1673480010083695945

namespace A123129

/-- `(A147966(n+1)+1)^n` -/
def P1673480010083695945.Spec : Prop :=
  ∀ n, P1673480010083695945.a n = A123129 (n + 1)

end A123129

/-! ## A123129.P17482646375352080276

`(A076368(n+2)+n)^n`
-/

namespace A123129.P17482646375352080276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A076368 (n + 2) + (n : ℤ)) ^ n

end

end A123129.P17482646375352080276

namespace A123129

/-- `(A076368(n+2)+n)^n` -/
def P17482646375352080276.Spec : Prop :=
  ∀ n, P17482646375352080276.a n = A123129 (n + 1)

end A123129

/-! ## A123129.P6468165256157526033

`(A230846(n+2)+n)^n`
-/

namespace A123129.P6468165256157526033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230846 (n + 2) + (n : ℤ)) ^ n

end

end A123129.P6468165256157526033

namespace A123129

/-- `(A230846(n+2)+n)^n` -/
def P6468165256157526033.Spec : Prop :=
  ∀ n, P6468165256157526033.a n = A123129 (n + 1)

end A123129

/-! ## A123129.P11062136343833998294

`(A230847(n+2)+n)^n`
-/

namespace A123129.P11062136343833998294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A230847 (n + 2) + (n : ℤ)) ^ n

end

end A123129.P11062136343833998294

namespace A123129

/-- `(A230847(n+2)+n)^n` -/
def P11062136343833998294.Spec : Prop :=
  ∀ n, P11062136343833998294.a n = A123129 (n + 1)

end A123129

/-! ## A123129.P12092735892887245330

`(A075526(n+1)+n+1)^n`
-/

namespace A123129.P12092735892887245330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A075526 (n + 1) + (n + 1 : ℤ)) ^ n

end

end A123129.P12092735892887245330

namespace A123129

/-- `(A075526(n+1)+n+1)^n` -/
def P12092735892887245330.Spec : Prop :=
  ∀ n, P12092735892887245330.a n = A123129 (n + 1)

end A123129

/-! ## A123129.P4401053894640642712

`Δ[∑[n]+A000040(n+1)]^n`
-/

namespace A123129.P4401053894640642712
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) ^ n

end

end A123129.P4401053894640642712

namespace A123129

/-- `Δ[∑[n]+A000040(n+1)]^n` -/
def P4401053894640642712.Spec : Prop :=
  ∀ n, P4401053894640642712.a n = A123129 (n + 1)

end A123129

/-! ## A123129.P1727296427481339603

`(Δ[record[A006530(n+2)]]+n+1)^n`
-/

namespace A123129.P1727296427481339603
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + (n + 1 : ℤ)) ^ n

end

end A123129.P1727296427481339603

namespace A123129

/-- `(Δ[record[A006530(n+2)]]+n+1)^n` -/
def P1727296427481339603.Spec : Prop :=
  ∀ n, P1727296427481339603.a n = A123129 (n + 1)

end A123129

/-! ## A123129.P17007131104734374916

`(A000040(n+2)-A000040(n+1)+n+1)^n`
-/

namespace A123129.P17007131104734374916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 2) - A000040 (n + 1) + (n + 1 : ℤ)) ^ n

end

end A123129.P17007131104734374916

namespace A123129

/-- `(A000040(n+2)-A000040(n+1)+n+1)^n` -/
def P17007131104734374916.Spec : Prop :=
  ∀ n, P17007131104734374916.a n = A123129 (n + 1)

end A123129

/-!
# A123130: a(n) = 2^(n-1)*((2*n)!/n!) * Integral_{t=0..Pi/3} sin(t)^(2*n-1) dt.

The programs for A123130, there is no canonical definition to state claims against.
-/

/-! ## A123130.P869541321256094741

`A102556(n+1)/A106836(A251587(n))`
-/

namespace A123130.P869541321256094741
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102556 (n + 1) : ℚ) / (A106836 (A251587 n).toNat : ℚ)

end

end A123130.P869541321256094741

/-!
# A123131: Largest order of permutations of n elements with no fixed points.

The programs for A123131, there is no canonical definition to state claims against.
-/

/-! ## A123131.P13930356827722215121

`A340267(A242474(n+1)+1)`
-/

namespace A123131.P13930356827722215121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340267 (A242474 (n + 1) + 1).toNat

end

end A123131.P13930356827722215121

/-! ## A123131.P5786925442443990722

`A340267(A351374(n+1)+1)`
-/

namespace A123131.P5786925442443990722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340267 (A351374 (n + 1) + 1).toNat

end

end A123131.P5786925442443990722

/-! ## A123131.P11066226346907056901

`and(p?[A127581(n)], A340267(n+2))`
-/

namespace A123131.P11066226346907056901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127581 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) (A340267 (n + 2))

end

end A123131.P11066226346907056901

/-! ## A123131.P5732354045477266081

`A340267(n+2)%A000978(2*(n+2))`
-/

namespace A123131.P5732354045477266081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A340267 (n + 2)) (A000978 (2 * (n + 2)))

end

end A123131.P5732354045477266081

/-! ## A123131.P946364316950155984

`A340267(n+2)+A000007(A013915(n))`
-/

namespace A123131.P946364316950155984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340267 (n + 2) + A000007 (A013915 n).toNat

end

end A123131.P946364316950155984

/-!
# A123134: a(n) = prime(n)*(prime(n+1) + 1).

The programs for A123134, the canonical program `A123134.P8662972197791221738` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123134 has offset 1).

The definition of A123134 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, A008864, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123134.P17725266191647878704

`A286624(n+1)-1`
-/

namespace A123134.P17725266191647878704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1) - 1

end

end A123134.P17725266191647878704

namespace A123134

/-- `A286624(n+1)-1` -/
def P17725266191647878704.Spec : Prop :=
  ∀ n, P17725266191647878704.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P8662972197791221738

`A000040(n+1)*A008864(n+2)`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A123134

/-- `A000040(n+1)*A008864(n+2)` -/
def P8662972197791221738.Spec : Prop :=
  ∀ n, P8662972197791221738.a n = A123134 (n + 1)

theorem P8662972197791221738.correct : P8662972197791221738.Spec := by
  intro n
  simp only [A123134, Nat.add_sub_cancel]

end A123134

/-! ## A123134.P738177425017162207

`ceil((sqrt(A037167(n+1))+1)²)`
-/

namespace A123134.P738177425017162207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (A037167 (n + 1) : ℝ) + 1) ^ 2⌉

end

end A123134.P738177425017162207

namespace A123134

/-- `ceil((sqrt(A037167(n+1))+1)²)` -/
def P738177425017162207.Spec : Prop :=
  ∀ n, P738177425017162207.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P10950378395460034524

`A006094(n+1)+Δ[A007504(n)]`
-/

namespace A123134.P10950378395460034524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (f1 (n + 1) - f1 n)

end

end A123134.P10950378395460034524

namespace A123134

/-- `A006094(n+1)+Δ[A007504(n)]` -/
def P10950378395460034524.Spec : Prop :=
  ∀ n, P10950378395460034524.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P16204996022334248122

`A006094(n+1)+A000040(n+1)`
-/

namespace A123134.P16204996022334248122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + A000040 (n + 1)

end

end A123134.P16204996022334248122

namespace A123134

/-- `A006094(n+1)+A000040(n+1)` -/
def P16204996022334248122.Spec : Prop :=
  ∀ n, P16204996022334248122.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P7619550823628169064

`A037167(n+1)+A001043(n+1)`
-/

namespace A123134.P7619550823628169064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037167 (n + 1) + A001043 (n + 1)

end

end A123134.P7619550823628169064

namespace A123134

/-- `A037167(n+1)+A001043(n+1)` -/
def P7619550823628169064.Spec : Prop :=
  ∀ n, P7619550823628169064.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P17069431879278301617

`A100484(n+1)+A037166(n+1)`
-/

namespace A123134.P17069431879278301617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A037166 (n + 1)

end

end A123134.P17069431879278301617

namespace A123134

/-- `A100484(n+1)+A037166(n+1)` -/
def P17069431879278301617.Spec : Prop :=
  ∀ n, P17069431879278301617.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P2475829832450143933

`A123139(n+1)+A123135(n+1)`
-/

namespace A123134.P2475829832450143933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123139 (n + 1) + A123135 (n + 1)

end

end A123134.P2475829832450143933

namespace A123134

/-- `A123139(n+1)+A123135(n+1)` -/
def P2475829832450143933.Spec : Prop :=
  ∀ n, P2475829832450143933.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P17189097121873960606

`A291463(n+1)+A036690(n+1)`
-/

namespace A123134.P17189097121873960606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291463 (n + 1) + A036690 (n + 1)

end

end A123134.P17189097121873960606

namespace A123134

/-- `A291463(n+1)+A036690(n+1)` -/
def P17189097121873960606.Spec : Prop :=
  ∀ n, P17189097121873960606.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P10090994605344668908

`A069486(n+1)-A037166(n+1)`
-/

namespace A123134.P10090994605344668908
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069486 (n + 1) - A037166 (n + 1)

end

end A123134.P10090994605344668908

namespace A123134

/-- `A069486(n+1)-A037166(n+1)` -/
def P10090994605344668908.Spec : Prop :=
  ∀ n, P10090994605344668908.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P12722045292746284252

`A126199(n+1)-A065091(n+1)`
-/

namespace A123134.P12722045292746284252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126199 (n + 1) - A065091 (n + 1)

end

end A123134.P12722045292746284252

namespace A123134

/-- `A126199(n+1)-A065091(n+1)` -/
def P12722045292746284252.Spec : Prop :=
  ∀ n, P12722045292746284252.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P8457528460559694372

`A292926(n+1)-A031131(n+1)`
-/

namespace A123134.P8457528460559694372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292926 (n + 1) - A031131 (n + 1)

end

end A123134.P8457528460559694372

namespace A123134

/-- `A292926(n+1)-A031131(n+1)` -/
def P8457528460559694372.Spec : Prop :=
  ∀ n, P8457528460559694372.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P632792726278846574

`A006254(n+1)*A100484(n+1)`
-/

namespace A123134.P632792726278846574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006254 (n + 1) * A100484 (n + 1)

end

end A123134.P632792726278846574

namespace A123134

/-- `A006254(n+1)*A100484(n+1)` -/
def P632792726278846574.Spec : Prop :=
  ∀ n, P632792726278846574.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P12103833657576953765

`A000040(n+1)*A055670(n+2)`
-/

namespace A123134.P12103833657576953765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A055670 (n + 2)

end

end A123134.P12103833657576953765

namespace A123134

/-- `A000040(n+1)*A055670(n+2)` -/
def P12103833657576953765.Spec : Prop :=
  ∀ n, P12103833657576953765.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P12600450417276644428

`A006094(n+1)+sqrt(A001248(n+1))`
-/

namespace A123134.P12600450417276644428
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) : ℝ) + Real.sqrt (A001248 (n + 1) : ℝ)

end

end A123134.P12600450417276644428

namespace A123134

/-- `A006094(n+1)+sqrt(A001248(n+1))` -/
def P12600450417276644428.Spec : Prop :=
  ∀ n, P12600450417276644428.a n = (A123134 (n + 1) : ℝ)

end A123134

/-! ## A123134.P7057772579360715263

`A000040(n+1)+sqrt(A166329(n+1))`
-/

namespace A123134.P7057772579360715263
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℝ) + Real.sqrt (A166329 (n + 1) : ℝ)

end

end A123134.P7057772579360715263

namespace A123134

/-- `A000040(n+1)+sqrt(A166329(n+1))` -/
def P7057772579360715263.Spec : Prop :=
  ∀ n, P7057772579360715263.a n = (A123134 (n + 1) : ℝ)

end A123134

/-! ## A123134.P4826961139010743321

`A006094(n+1)+A072055(n+1)-A008864(n+1)`
-/

namespace A123134.P4826961139010743321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (A072055 (n + 1) - A008864 (n + 1))

end

end A123134.P4826961139010743321

namespace A123134

/-- `A006094(n+1)+A072055(n+1)-A008864(n+1)` -/
def P4826961139010743321.Spec : Prop :=
  ∀ n, P4826961139010743321.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P15120213951595100757

`A100484(n+1)+A005097(n+1)*A100484(n+1)`
-/

namespace A123134.P15120213951595100757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1) + A005097 (n + 1) * A100484 (n + 1)

end

end A123134.P15120213951595100757

namespace A123134

/-- `A100484(n+1)+A005097(n+1)*A100484(n+1)` -/
def P15120213951595100757.Spec : Prop :=
  ∀ n, P15120213951595100757.a n = A123134 (n + 1)

end A123134

/-! ## A123134.P160700184137635522

`A006094(n+1)+A030078(n+1)/A001248(n+1)`
-/

namespace A123134.P160700184137635522
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) : ℚ) + (A030078 (n + 1) : ℚ) / (A001248 (n + 1) : ℚ)

end

end A123134.P160700184137635522

namespace A123134

/-- `A006094(n+1)+A030078(n+1)/A001248(n+1)` -/
def P160700184137635522.Spec : Prop :=
  ∀ n, P160700184137635522.a n = (A123134 (n + 1) : ℚ)

end A123134

/-! ## A123134.P9612460151198064004

`A006094(n+1)+A006094(n+1)/A065091(n+1)`
-/

namespace A123134.P9612460151198064004
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006094 (n + 1) : ℚ) + (A006094 (n + 1) : ℚ) / (A065091 (n + 1) : ℚ)

end

end A123134.P9612460151198064004

namespace A123134

/-- `A006094(n+1)+A006094(n+1)/A065091(n+1)` -/
def P9612460151198064004.Spec : Prop :=
  ∀ n, P9612460151198064004.a n = (A123134 (n + 1) : ℚ)

end A123134

/-!
# A123135: a(n) = n^3 plus sum of digits of n^3.

The programs for A123135, the canonical program `A123135.P8286442411414064837` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123135 has offset 1).

The definition of A123135 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123135.P8286442411414064837

`A062028(A000578(n+1))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A123135

/-- `A062028(A000578(n+1))` -/
def P8286442411414064837.Spec : Prop :=
  ∀ n, P8286442411414064837.a n = A123135 (n + 1)

theorem P8286442411414064837.correct : P8286442411414064837.Spec := by
  intro n
  simp only [A123135, Nat.add_sub_cancel]

end A123135

/-! ## A123135.P16889161593346783192

`∑{digits}[(n+1)^3, #]+(n+1)^3`
-/

namespace A123135.P16889161593346783192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + (n + 1) ^ 3

end

end A123135.P16889161593346783192

namespace A123135

/-- `∑{digits}[(n+1)^3, #]+(n+1)^3` -/
def P16889161593346783192.Spec : Prop :=
  ∀ n, (P16889161593346783192.a n : ℤ) = A123135 (n + 1)

end A123135

/-! ## A123135.P9857053342134587896

`log(∏{digits}[(n+1)^3, exp(#)])+(n+1)^3`
-/

namespace A123135.P9857053342134587896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.log ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => Real.exp (x : ℝ)).prod + ((n + 1) ^ 3 : ℝ)

end

end A123135.P9857053342134587896

namespace A123135

/-- `log(∏{digits}[(n+1)^3, exp(#)])+(n+1)^3` -/
def P9857053342134587896.Spec : Prop :=
  ∀ n, P9857053342134587896.a n = (A123135 (n + 1) : ℝ)

end A123135

/-! ## A123135.P14753580551094792018

`log2(∏{digits}[(n+1)^3, 2^#])+(n+1)^3`
-/

namespace A123135.P14753580551094792018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) + ((n + 1) ^ 3 : ℝ)

end

end A123135.P14753580551094792018

namespace A123135

/-- `log2(∏{digits}[(n+1)^3, 2^#])+(n+1)^3` -/
def P14753580551094792018.Spec : Prop :=
  ∀ n, P14753580551094792018.a n = (A123135 (n + 1) : ℝ)

end A123135

/-! ## A123135.P6089658369168169037

`A004164(n+1)+(n+1)^3`
-/

namespace A123135.P6089658369168169037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004164 (n + 1) + ((n + 1) ^ 3 : ℤ)

end

end A123135.P6089658369168169037

namespace A123135

/-- `A004164(n+1)+(n+1)^3` -/
def P6089658369168169037.Spec : Prop :=
  ∀ n, P6089658369168169037.a n = A123135 (n + 1)

end A123135

/-! ## A123135.P13079931623098153886

`A123134(n+1)-A123139(n+1)`
-/

namespace A123135.P13079931623098153886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123134 (n + 1) - A123139 (n + 1)

end

end A123135.P13079931623098153886

namespace A123135

/-- `A123134(n+1)-A123139(n+1)` -/
def P13079931623098153886.Spec : Prop :=
  ∀ n, P13079931623098153886.a n = A123135 (n + 1)

end A123135

/-! ## A123135.P14204055977255635853

`A000040(n+1)*A008864(n+2)-A123139(n+1)`
-/

namespace A123135.P14204055977255635853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008864 (n + 2) - A123139 (n + 1)

end

end A123135.P14204055977255635853

namespace A123135

/-- `A000040(n+1)*A008864(n+2)-A123139(n+1)` -/
def P14204055977255635853.Spec : Prop :=
  ∀ n, P14204055977255635853.a n = A123135 (n + 1)

end A123135

/-!
# A123137: a(n) = a(n-1)^2 + Sum of the digits of a(n-1), with a(1)=1.

The programs for A123137, there is no canonical definition to state claims against.
-/

/-! ## A123137.P11718395655082821003

`A007953(a(n-1))+a(n-1)²` with `a(0)=1`
-/

namespace A123137.P11718395655082821003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A007953 (a (n - 1)).toNat + a (n - 1) ^ 2

end

end A123137.P11718395655082821003

/-! ## A123137.P9757924960458586563

`sqrt(A118881(a(n-1)))+a(n-1)²` with `a(0)=1`
-/

namespace A123137.P9757924960458586563
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  Real.sqrt (A118881 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ) + a (n - 1) ^ 2

end

end A123137.P9757924960458586563

/-!
# A123139: a(n) = prime(n)*(prime(n + 1) + 1) - (n^3 + sum of digits of n^3).

The programs for A123139, the canonical program `A123139.P8555552717810402474` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123139 has offset 1).

The definition of A123139 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A123134, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A123139.P8555552717810402474

`A123134(n+1)-A123135(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A123139

/-- `A123134(n+1)-A123135(n+1)` -/
def P8555552717810402474.Spec : Prop :=
  ∀ n, P8555552717810402474.a n = A123139 (n + 1)

theorem P8555552717810402474.correct : P8555552717810402474.Spec := by
  intro n
  simp only [A123139, Nat.add_sub_cancel]

end A123139

/-! ## A123139.P8337246913759760847

`A286624(n+1)-(∑{digits}[(n+1)^3, #]+(n+1)^3+1)`
-/

namespace A123139.P8337246913759760847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286624 (n + 1) - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + (n + 1) ^ 3 + 1 : ℕ) : ℤ)

end

end A123139.P8337246913759760847

namespace A123139

/-- `A286624(n+1)-(∑{digits}[(n+1)^3, #]+(n+1)^3+1)` -/
def P8337246913759760847.Spec : Prop :=
  ∀ n, P8337246913759760847.a n = A123139 (n + 1)

end A123139

/-! ## A123139.P999787542847449516

`ceil((sqrt(A037167(n+1))+1)²)-(∑{digits}[(n+1)^3, #]+(n+1)^3)`
-/

namespace A123139.P999787542847449516
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Real.sqrt (A037167 (n + 1) : ℝ) + 1) ^ 2⌉ - ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum + (n + 1) ^ 3 : ℕ) : ℤ)

end

end A123139.P999787542847449516

namespace A123139

/-- `ceil((sqrt(A037167(n+1))+1)²)-(∑{digits}[(n+1)^3, #]+(n+1)^3)` -/
def P999787542847449516.Spec : Prop :=
  ∀ n, P999787542847449516.a n = A123139 (n + 1)

end A123139

/-! ## A123139.P18388725632740149758

`A123134(A000027(n+1))-(log2(∏{digits}[(n+1)^3, 2^#])+(n+1)^3)`
-/

namespace A123139.P18388725632740149758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A123134 (A000027 (n + 1)).toNat : ℝ) - (Real.logb 2 ((((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => 2 ^ x).prod : ℕ) : ℝ) + ((n + 1) ^ 3 : ℝ))

end

end A123139.P18388725632740149758

namespace A123139

/-- `A123134(A000027(n+1))-(log2(∏{digits}[(n+1)^3, 2^#])+(n+1)^3)` -/
def P18388725632740149758.Spec : Prop :=
  ∀ n, P18388725632740149758.a n = (A123139 (n + 1) : ℝ)

end A123139

/-! ## A123139.P16797924307362431162

`A006094(n+1)+Δ[A007504(n)]-(∑{digits}[(n+1)^3, #]+(n+1)^3)`
-/

namespace A123139.P16797924307362431162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006094 (n + 1) + (f1 (n + 1) - f1 n) - ((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum + (n + 1) ^ 3 : ℕ) : ℤ)

end

end A123139.P16797924307362431162

namespace A123139

/-- `A006094(n+1)+Δ[A007504(n)]-(∑{digits}[(n+1)^3, #]+(n+1)^3)` -/
def P16797924307362431162.Spec : Prop :=
  ∀ n, P16797924307362431162.a n = A123139 (n + 1)

end A123139

/-! ## A123139.P8770146713290639267

`A000040(n+1)*A008864(n+2)-A123135(n+1)`
-/

namespace A123139.P8770146713290639267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A008864 (n + 2) - A123135 (n + 1)

end

end A123139.P8770146713290639267

namespace A123139

/-- `A000040(n+1)*A008864(n+2)-A123135(n+1)` -/
def P8770146713290639267.Spec : Prop :=
  ∀ n, P8770146713290639267.a n = A123139 (n + 1)

end A123139

/-!
# A123140: Number of benzenoids with 23 hexagons, D_(2h) symmetry and containing 2n carbon atoms.

The programs for A123140, there is no canonical definition to state claims against.
-/

/-! ## A123140.P11834490375164444056

`∑[A035513(n+1)%A085266(n+1)]`
-/

namespace A123140.P11834490375164444056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035513 (n + 1)) (A085266 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123140.P11834490375164444056

/-! ## A123140.P3669608403884363492

`∑[and(A035513(n+1), A203966(n+1))]`
-/

namespace A123140.P3669608403884363492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A035513 (n + 1)) (A203966 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123140.P3669608403884363492

/-! ## A123140.P6558835395511389518

`∑[A035513(n+1)%A008440(A088994(n))]`
-/

namespace A123140.P6558835395511389518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A035513 (n + 1)) (A008440 (A088994 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123140.P6558835395511389518

/-!
# A123142: Number of benzenoids with 23 hexagons, C_(2v) symmetry and containing n carbon atoms.

The programs for A123142, there is no canonical definition to state claims against.
-/

/-! ## A123142.P2205576832046581716

`A122097(n)-A037800(A073701(n))`
-/

namespace A123142.P2205576832046581716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122097 (n + 64) - A037800 (A073701 n).toNat

end

end A123142.P2205576832046581716

/-!
# A123143: a(0)=0, a(1)=1, a(2)=2; a(3n) = a(n), a(3n+1) = a(n) + a(n+1), a(3n+2) = a(n+1) + a(n+2).

The programs for A123143, there is no canonical definition to state claims against.
-/

/-! ## A123143.P14124694195471053311

`A008611(n+4)-A053692(A002863(n+1))`
-/

namespace A123143.P14124694195471053311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008611 (n + 4) - A053692 (A002863 (n + 1)).toNat

end

end A123143.P14124694195471053311

/-! ## A123143.P169652689919864997

`A001222(A000071(n+3)+A097331(n)*A131577(n))`
-/

namespace A123143.P169652689919864997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000071 (n + 3) + A097331 n * A131577 n).toNat

end

end A123143.P169652689919864997

/-! ## A123143.P8779876551081433672

`A001222(A226538(2*n)+A097331(n)*A131577(n))`
-/

namespace A123143.P8779876551081433672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A226538 (2 * n) + A097331 n * A131577 n).toNat

end

end A123143.P8779876551081433672

/-!
# A123144: a(1) = 1, a(n) = a(n-1) if n = 1 (mod 3), otherwise n*a(n-1).

The programs for A123144, there is no canonical definition to state claims against.
-/

/-! ## A123144.P16748747001254046356

`∏[n*n²%3+1]`
-/

namespace A123144.P16748747001254046356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (n ^ 2 % 3) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123144.P16748747001254046356

/-! ## A123144.P1106303870161192760

`∏[(lcm(3, n)-(n-2))/2]`
-/

namespace A123144.P1106303870161192760
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.lcm 3 n : ℤ) - ((n : ℤ) - 2) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123144.P1106303870161192760

/-! ## A123144.P2863734034022344082

`∏[(n+1)^floor(sqrt(n%3))]`
-/

namespace A123144.P2863734034022344082
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ Nat.sqrt (n % 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123144.P2863734034022344082

/-! ## A123144.P5357365557091356652

`∏[gcd(n+1, val(∏{p}[n, #], 3))]`
-/

namespace A123144.P5357365557091356652
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) (SequenceMachineLib.valuation (∏ p ∈ Nat.primeFactors (f2 n), p) 3)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123144.P5357365557091356652

/-! ## A123144.P5298462275975812646

`∏[n*char[comp[3*n]]+1]`
-/

namespace A123144.P5298462275975812646
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ x) n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (if ∃ j, f2 j = n then 1 else 0) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123144.P5298462275975812646

/-! ## A123144.P3605982598245441722

`((n+1)^3)%(3*n)*a(n-1)` with `a(0)=1`
-/

namespace A123144.P3605982598245441722
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 1) ^ 3 % (3 * n) * a (n - 1)

end

end A123144.P3605982598245441722

/-! ## A123144.P73635007855065587

`(A091684(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A123144.P73635007855065587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (A091684 n + 1) * a (n - 1)

end

end A123144.P73635007855065587

/-! ## A123144.P8087551577126949983

`(n*A267208(n)+1)*a(n-1)` with `a(0)=1`
-/

namespace A123144.P8087551577126949983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) * A267208 n + 1) * a (n - 1)

end

end A123144.P8087551577126949983

/-! ## A123144.P14564602524371955024

`(n*and(1, A037639(n+1))+1)*a(n-1)` with `a(0)=1`
-/

namespace A123144.P14564602524371955024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((n : ℤ) * Int.land 1 (A037639 (n + 1)) + 1) * a (n - 1)

end

end A123144.P14564602524371955024

/-!
# A123145: a(1) = 1, a(n) = a(n-1) if n == 1 (mod 4), otherwise a(n) = n * a(n-1) for n >= 2.

The programs for A123145, there is no canonical definition to state claims against.
-/

/-! ## A123145.P15444119581493884195

`∏[lcm(n, gcd(4, n)%4)+1]`
-/

namespace A123145.P15444119581493884195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (Nat.gcd 4 n % 4) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123145.P15444119581493884195

/-! ## A123145.P13910533690680620128

`∏[(n+1)^ceil(and(3, n)/3)]`
-/

namespace A123145.P13910533690680620128
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (⌈(Nat.land 3 n : ℚ) / 3⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123145.P13910533690680620128

/-! ## A123145.P96253770073176964

`∏[C(n+1, ceil(and(3, n)/3))]`
-/

namespace A123145.P96253770073176964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 1) ⌈(Nat.land 3 n : ℚ) / 3⌉.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123145.P96253770073176964

/-! ## A123145.P4273517587079672692

`∏[gcd(n+1, ∑[∑[n+1]]%2)]`
-/

namespace A123145.P4273517587079672692
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 1) ((∑ j ∈ Finset.range (n + 1), f2 j) % 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123145.P4273517587079672692

/-! ## A123145.P10820528093251565927

`∏[abs(n*char[4*n]-n)+1]`
-/

namespace A123145.P10820528093251565927
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((n * (if ∃ j, f2 j = n then 1 else 0) : ℕ) : ℤ) - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A123145.P10820528093251565927

/-!
# A123146: Triangle T(n, k) = (binomial(n,2))! / (k! * abs(k+1 - binomial(n,2))!), read by rows.

The programs for A123146, there is no canonical definition to state claims against.
-/

/-! ## A123146.P17928585520220050116

`A162246(or(8, A283834(n)))`
-/

namespace A123146.P17928585520220050116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162246 (Int.lor 8 (A283834 n)).toNat

end

end A123146.P17928585520220050116

/-! ## A123146.P3562629936753416963

`∏{e}[A277876(n+2), A277880(#)]`
-/

namespace A123146.P3562629936753416963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277876 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A277880 (Nat.factorization (f1 n).natAbs p)

end

end A123146.P3562629936753416963

/-! ## A123146.P347482869644308651

`A194961(A269379(n+1)+A193111(n))`
-/

namespace A123146.P347482869644308651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194961 (A269379 (n + 1) + A193111 n).toNat

end

end A123146.P347482869644308651

/-! ## A123146.P12859366729826728298

`A342202(n+1)+A232270(A164863(n))`
-/

namespace A123146.P12859366729826728298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342202 (n + 1) + A232270 (A164863 n).toNat

end

end A123146.P12859366729826728298

/-! ## A123146.P15592698271607781540

`A257695(A189394(n+1)-A324058(n))`
-/

namespace A123146.P15592698271607781540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257695 (A189394 (n + 1) - A324058 n).toNat

end

end A123146.P15592698271607781540

/-!
# A123147: Triangle T(n, k) = (n+2)!*(n*(n+1)*(2*n+1)/6)!/( (k^2)! * abs(2 + 2*k^2 - (n*(n + 1)*(2*n+1)/6))! ), read by rows.

The programs for A123147, there is no canonical definition to state claims against.
-/

/-! ## A123147.P2290245673351714546

`A137785(A192648(n+1))`
-/

namespace A123147.P2290245673351714546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137785 (A192648 (n + 1)).toNat

end

end A123147.P2290245673351714546

/-!
# A123149: Triangle T(n,k), 0<=k<=n, read by rows given by [1, 0, -1, 0, 0, 0, 0, 0, ...] DELTA [0, 1, 0, -1, 0, 0, 0, 0, ...] where DELTA is the operator defined in A084938.

The programs for A123149, there is no canonical definition to state claims against.
-/

/-! ## A123149.P15782565040482192681

`A169623(A083920(n))-char[∑[n+2]]`
-/

namespace A123149.P15782565040482192681
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169623 (A083920 n).toNat - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A123149.P15782565040482192681

/-! ## A123149.P13130317360863363420

`A169623(A083920(n))%(A171307(n+1)+1)`
-/

namespace A123149.P13130317360863363420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169623 (A083920 n).toNat) (A171307 (n + 1) + 1)

end

end A123149.P13130317360863363420

/-! ## A123149.P12673678674509967802

`A169623(A083920(n))%A066003(A171307(n+1))`
-/

namespace A123149.P12673678674509967802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169623 (A083920 n).toNat) (A066003 (A171307 (n + 1)).toNat)

end

end A123149.P12673678674509967802

/-! ## A123149.P16387146581698720104

`A169623(A083920(n))%A008486(A287698(n))`
-/

namespace A123149.P16387146581698720104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169623 (A083920 n).toNat) (A008486 (A287698 n).toNat)

end

end A123149.P16387146581698720104

/-! ## A123149.P4084214355255043821

`A225541(A005893(A185700(n+1)²))`
-/

namespace A123149.P4084214355255043821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225541 (A005893 (A185700 (n + 1) ^ 2).toNat).toNat

end

end A123149.P4084214355255043821

/-!
# A123150: a(n) = (n^5 - n^4 - n^3 + n^2 - 1)*a(n-5) for n > 4, otherwise n!.

The programs for A123150, the canonical program `A123150.P6190787364319059893` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123150 has offset 0).

The definition of A123150 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n^5-n^4-n^3+n²-1)*a(n-5)` (program `A123150.P6190787364319059893`, by `A123150.P6190787364319059893.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123150.P7804288479521633096

`(n²*(n-1)*(n²-1)-1)*a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=24`
-/

namespace A123150.P7804288479521633096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2, 6, 24] fun n a =>
  ((n ^ 2 : ℤ) * (((n : ℤ) - 1) * ((n ^ 2 : ℤ) - 1)) - 1) * a (n - 5)

end

end A123150.P7804288479521633096

namespace A123150

/-- `(n²*(n-1)*(n²-1)-1)*a(n-5)` -/
def P7804288479521633096.Spec : Prop :=
  ∀ n, P7804288479521633096.a n = A123150 n

theorem P7804288479521633096.correct : P7804288479521633096.Spec := by
  intro n
  simp only [A123150, Nat.add_sub_cancel, A123150.P7804288479521633096.a, A123150.P6190787364319059893.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A123150

/-! ## A123150.P6190787364319059893

`(n^5-n^4-n^3+n²-1)*a(n-5)` with `a(0)=1, a(1)=1, a(2)=2, a(3)=6, a(4)=24`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123150

/-- `(n^5-n^4-n^3+n²-1)*a(n-5)` -/
def P6190787364319059893.Spec : Prop :=
  ∀ n, P6190787364319059893.a n = A123150 n

theorem P6190787364319059893.correct : P6190787364319059893.Spec := by
  intro n
  simp only [A123150]

end A123150

/-!
# A123151: a(n) = A000124(n)*a(n-3) for n > 2, otherwise n!.

The programs for A123151, the canonical program `A123151.P5166714984886003685` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123151 has offset 0).

The definition of A123151 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000124(n)*a(n-3)` (program `A123151.P5166714984886003685`, by `A123151.P5166714984886003685.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123151.P5166714984886003685

`A000124(n)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A123151

/-- `A000124(n)*a(n-3)` -/
def P5166714984886003685.Spec : Prop :=
  ∀ n, P5166714984886003685.a n = A123151 n

theorem P5166714984886003685.correct : P5166714984886003685.Spec := by
  intro n
  simp only [A123151]

end A123151

/-! ## A123151.P14706689856874790111

`(n²+n+2)*a(n-3)/2` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A123151.P14706689856874790111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (n ^ 2 + (n + 2) : ℚ) * a (n - 3) / 2

end

end A123151.P14706689856874790111

namespace A123151

/-- `(n²+n+2)*a(n-3)/2` -/
def P14706689856874790111.Spec : Prop :=
  ∀ n, P14706689856874790111.a n = (A123151 n : ℚ)

end A123151

/-! ## A123151.P17900246805807083769

`a(n-3)*(∑[n]+1)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A123151.P17900246805807083769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  a (n - 3) * (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A123151.P17900246805807083769

namespace A123151

/-- `a(n-3)*(∑[n]+1)` -/
def P17900246805807083769.Spec : Prop :=
  ∀ n, (P17900246805807083769.a n : ℤ) = A123151 n

end A123151

/-! ## A123151.P10977886352775324378

`ceil(1/acot(∑[n]))*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A123151.P10977886352775324378
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  ⌈1 / SequenceMachineLib.acot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ * a (n - 3)

end

end A123151.P10977886352775324378

namespace A123151

/-- `ceil(1/acot(∑[n]))*a(n-3)` -/
def P10977886352775324378.Spec : Prop :=
  ∀ n, P10977886352775324378.a n = A123151 n

end A123151

/-! ## A123151.P9351805347496770708

`(C(n+1, 2)+1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A123151.P9351805347496770708
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (Nat.choose (n + 1) 2 + 1) * a (n - 3)

end

end A123151.P9351805347496770708

namespace A123151

/-- `(C(n+1, 2)+1)*a(n-3)` -/
def P9351805347496770708.Spec : Prop :=
  ∀ n, (P9351805347496770708.a n : ℤ) = A123151 n

end A123151

/-! ## A123151.P8385335848140264238

`(A000217(n)+1)*a(n-3)` with `a(0)=1, a(1)=1, a(2)=2`
-/

namespace A123151.P8385335848140264238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 2] fun n a =>
  (A000217 n + 1) * a (n - 3)

end

end A123151.P8385335848140264238

namespace A123151

/-- `(A000217(n)+1)*a(n-3)` -/
def P8385335848140264238.Spec : Prop :=
  ∀ n, P8385335848140264238.a n = A123151 n

end A123151

/-!
# A123152: a(n) = (n-th decimal digit of Pi) + 1.

The programs for A123152, there is no canonical definition to state claims against.
-/

/-! ## A123152.P4601496773389800811

`1+A000796(n)`
-/

namespace A123152.P4601496773389800811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A000796 (n + 1)

end

end A123152.P4601496773389800811

/-! ## A123152.P3420673378936485663

`10-A030644(n)`
-/

namespace A123152.P3420673378936485663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - A030644 (n + 1)

end

end A123152.P3420673378936485663

/-! ## A123152.P16873834075323697980

`sqrt(A072448(n+1))+1`
-/

namespace A123152.P16873834075323697980
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A072448 (n + 1) : ℝ) + 1

end

end A123152.P16873834075323697980

/-! ## A123152.P2877239757422035477

`A065253(n+1)%10+1`
-/

namespace A123152.P2877239757422035477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065253 (n + 1)) 10 + 1

end

end A123152.P2877239757422035477

/-! ## A123152.P11179055903688897953

`A095916(n)+a(n-1)` with `a(0)=4`
-/

namespace A123152.P11179055903688897953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A095916 n + a (n - 1)

end

end A123152.P11179055903688897953

/-! ## A123152.P8680895056109843987

`A110883(n)-a(n-1)+2` with `a(0)=4`
-/

namespace A123152.P8680895056109843987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [4] fun n a =>
  A110883 n - a (n - 1) + 2

end

end A123152.P8680895056109843987

/-! ## A123152.P15330678664562892281

`A097747(A072448(n+1))`
-/

namespace A123152.P15330678664562892281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097747 (A072448 (n + 1)).toNat

end

end A123152.P15330678664562892281

/-! ## A123152.P9058726580907287154

`A048766(A261197(n+1))+1`
-/

namespace A123152.P9058726580907287154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048766 (A261197 (n + 1)).toNat + 1

end

end A123152.P9058726580907287154

/-! ## A123152.P14838523717841159287

`A001113(n)+A187747(n)+1`
-/

namespace A123152.P14838523717841159287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001113 (n + 1) + (A187747 n + 1)

end

end A123152.P14838523717841159287

/-! ## A123152.P235594717583778533

`A073212(n)+1-A001113(n)`
-/

namespace A123152.P235594717583778533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073212 n + (1 - A001113 (n + 1))

end

end A123152.P235594717583778533

/-! ## A123152.P10563876356005814013

`A054249(n+1)+A033999(n)+1`
-/

namespace A123152.P10563876356005814013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + A033999 n + 1

end

end A123152.P10563876356005814013

/-! ## A123152.P10379737537981647336

`A000040((-1)^(2*n))-(1-A000796(n))`
-/

namespace A123152.P10379737537981647336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((-1) ^ (2 * n)).toNat - (1 - A000796 (n + 1))

end

end A123152.P10379737537981647336

/-! ## A123152.P15527350591861734834

`Δ[Δ[A227844(n+1)]]+1`
-/

namespace A123152.P15527350591861734834
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227844 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A123152.P15527350591861734834

/-! ## A123152.P818021818357312515

`A054249(n+1)+A010673(n+1)`
-/

namespace A123152.P818021818357312515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054249 (n + 1) + A010673 (n + 1)

end

end A123152.P818021818357312515

/-! ## A123152.P3485830599108656989

`A010889(A065253(n+1))`
-/

namespace A123152.P3485830599108656989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010889 (A065253 (n + 1)).toNat

end

end A123152.P3485830599108656989

/-! ## A123152.P10634403851120458554

`A001355(Δ[n²])+1`
-/

namespace A123152.P10634403851120458554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001355 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A123152.P10634403851120458554

/-! ## A123152.P8192646189465451405

`A076790(Δ[n²])+1`
-/

namespace A123152.P8192646189465451405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076790 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A123152.P8192646189465451405

/-! ## A123152.P13896767298556395549

`A110766(Δ[n²])+1`
-/

namespace A123152.P13896767298556395549
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + 1

end

end A123152.P13896767298556395549

/-! ## A123152.P14953802567193560201

`A046974(n)-A059582(n)+2`
-/

namespace A123152.P14953802567193560201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046974 n - A059582 n + 2

end

end A123152.P14953802567193560201

/-! ## A123152.P10640922246196937638

`Δ[A059582(n)]+1`
-/

namespace A123152.P10640922246196937638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 1

end

end A123152.P10640922246196937638

/-!
# A123153: a(n) = (n-th digit of Pi) times (the n-th prime number).

The programs for A123153, there is no canonical definition to state claims against.
-/

/-! ## A123153.P8474402038438869049

`Δ[A007504(n)]*A000796(n)`
-/

namespace A123153.P8474402038438869049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000796 (n + 1)

end

end A123153.P8474402038438869049

/-! ## A123153.P15445691058349204548

`A000040(n+1)*A000796(n)`
-/

namespace A123153.P15445691058349204548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A000796 (n + 1)

end

end A123153.P15445691058349204548

/-! ## A123153.P763044240345755725

`(A006093(n+1)+1)*A000796(n)`
-/

namespace A123153.P763044240345755725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A000796 (n + 1)

end

end A123153.P763044240345755725

/-! ## A123153.P16833988389603160014

`(A040976(n+1)+2)*A000796(n)`
-/

namespace A123153.P16833988389603160014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A040976 (n + 1) + 2) * A000796 (n + 1)

end

end A123153.P16833988389603160014

/-! ## A123153.P465128283948669818

`A000796(n)*A008578(n+2)`
-/

namespace A123153.P465128283948669818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A008578 (n + 2)

end

end A123153.P465128283948669818

/-! ## A123153.P7433550692341201688

`record[A006530(n+2)]*A000796(n)`
-/

namespace A123153.P7433550692341201688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000796 (n + 1)

end

end A123153.P7433550692341201688

/-! ## A123153.P2328733806349309652

`record[A020639(n+2)]*A000796(n)`
-/

namespace A123153.P2328733806349309652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000796 (n + 1)

end

end A123153.P2328733806349309652

/-! ## A123153.P3313712391874183669

`eq[1, A302055(n)]*A000796(n)`
-/

namespace A123153.P3313712391874183669
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302055 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A000796 (n + 1)

end

end A123153.P3313712391874183669

/-! ## A123153.P11871946221921778809

`A000796(n)*A067747(2*n+1)`
-/

namespace A123153.P11871946221921778809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A067747 (2 * n + 1)

end

end A123153.P11871946221921778809

/-! ## A123153.P1843782549000148597

`A000796(n)*A382129(2*n+1)`
-/

namespace A123153.P1843782549000148597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1) * A382129 (2 * n + 1)

end

end A123153.P1843782549000148597

/-! ## A123153.P8523890539608705232

`A000040(n+1)*A110766(2*n+1)`
-/

namespace A123153.P8523890539608705232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A110766 (2 * n + 1)

end

end A123153.P8523890539608705232

/-! ## A123153.P17308278578004092609

`A110766(2*n+1)*A382129(2*n+1)`
-/

namespace A123153.P17308278578004092609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110766 (2 * n + 1) * A382129 (2 * n + 1)

end

end A123153.P17308278578004092609

/-! ## A123153.P13533101762920997888

`A000040(n+1)*Δ[A059582(n)]`
-/

namespace A123153.P13533101762920997888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059582 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * (f1 (n + 1) - f1 n)

end

end A123153.P13533101762920997888

/-! ## A123153.P11995320052487968164

`p?[A007989(n)]*A000796(n)`
-/

namespace A123153.P11995320052487968164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007989 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000796 (n + 1)

end

end A123153.P11995320052487968164

/-! ## A123153.P1229050250167260129

`record[A051698(n)]*A000796(n)`
-/

namespace A123153.P1229050250167260129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051698 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A000796 (n + 1)

end

end A123153.P1229050250167260129

/-! ## A123153.P7276343331999679524

`p?[A014681(n)]*A000796(n)`
-/

namespace A123153.P7276343331999679524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000796 (n + 1)

end

end A123153.P7276343331999679524

/-! ## A123153.P7366645602076279602

`p?[A064429(n)]*A000796(n)`
-/

namespace A123153.P7366645602076279602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064429 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000796 (n + 1)

end

end A123153.P7366645602076279602

/-! ## A123153.P16706643630517110087

`p?[A080412(n)]*A000796(n)`
-/

namespace A123153.P16706643630517110087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080412 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) * A000796 (n + 1)

end

end A123153.P16706643630517110087

/-! ## A123153.P16246698961394899125

`eq[1, A003415(n)]*A000796(n)`
-/

namespace A123153.P16246698961394899125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) * A000796 (n + 1)

end

end A123153.P16246698961394899125

/-!
# A123157: Sum of digits of the squares of prime numbers.

The programs for A123157, the canonical program `A123157.P3168733411666123651` is in `Seq.B002.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123157 has offset 1).

The definition of A123157 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123157.P3168733411666123651

`∑{digits}[A001248(n+1), #]`

The canonical program, it is in `Seq.B002.C002`.
-/

namespace A123157

/-- `∑{digits}[A001248(n+1), #]` -/
def P3168733411666123651.Spec : Prop :=
  ∀ n, (P3168733411666123651.a n : ℤ) = A123157 (n + 1)

theorem P3168733411666123651.correct : P3168733411666123651.Spec := by
  intro n
  simp only [A123157, Nat.add_sub_cancel]

end A123157

/-! ## A123157.P8153343725491500985

`∑{digits}[Δ[A007504(n)]², #]`
-/

namespace A123157.P8153343725491500985
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P8153343725491500985

namespace A123157

/-- `∑{digits}[Δ[A007504(n)]², #]` -/
def P8153343725491500985.Spec : Prop :=
  ∀ n, (P8153343725491500985.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P8451506928412244615

`∑{digits}[Δ[A008348(n)]², #]`
-/

namespace A123157.P8451506928412244615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008348 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P8451506928412244615

namespace A123157

/-- `∑{digits}[Δ[A008348(n)]², #]` -/
def P8451506928412244615.Spec : Prop :=
  ∀ n, (P8451506928412244615.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P12278178779425234891

`∑{digits}[p?[A259153(n)]², #]`
-/

namespace A123157.P12278178779425234891
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P12278178779425234891

namespace A123157

/-- `∑{digits}[p?[A259153(n)]², #]` -/
def P12278178779425234891.Spec : Prop :=
  ∀ n, (P12278178779425234891.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P3966641487126274572

`∑{digits}[A000040(n+1)², #]`
-/

namespace A123157.P3966641487126274572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P3966641487126274572

namespace A123157

/-- `∑{digits}[A000040(n+1)², #]` -/
def P3966641487126274572.Spec : Prop :=
  ∀ n, (P3966641487126274572.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P12948958919800607349

`∑{digits}[A142342(n+1)², #]`
-/

namespace A123157.P12948958919800607349
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142342 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P12948958919800607349

namespace A123157

/-- `∑{digits}[A142342(n+1)², #]` -/
def P12948958919800607349.Spec : Prop :=
  ∀ n, (P12948958919800607349.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P10096862126939814192

`∑{digits}[A273960(n+1)², #]`
-/

namespace A123157.P10096862126939814192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273960 (n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P10096862126939814192

namespace A123157

/-- `∑{digits}[A273960(n+1)², #]` -/
def P10096862126939814192.Spec : Prop :=
  ∀ n, (P10096862126939814192.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P3707345219258764866

`∑{digits}[∑[A054541(n+1)]², #]`
-/

namespace A123157.P3707345219258764866
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P3707345219258764866

namespace A123157

/-- `∑{digits}[∑[A054541(n+1)]², #]` -/
def P3707345219258764866.Spec : Prop :=
  ∀ n, (P3707345219258764866.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P7011438943615869104

`∑{digits}[A060998(n+2), #]`
-/

namespace A123157.P7011438943615869104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060998 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P7011438943615869104

namespace A123157

/-- `∑{digits}[A060998(n+2), #]` -/
def P7011438943615869104.Spec : Prop :=
  ∀ n, (P7011438943615869104.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P2404886078195740672

`∑{digits}[A280076(n+2), #]`
-/

namespace A123157.P2404886078195740672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280076 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P2404886078195740672

namespace A123157

/-- `∑{digits}[A280076(n+2), #]` -/
def P2404886078195740672.Spec : Prop :=
  ∀ n, (P2404886078195740672.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P13684562752328871290

`∑{digits}[A008578(n+2)², #]`
-/

namespace A123157.P13684562752328871290
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P13684562752328871290

namespace A123157

/-- `∑{digits}[A008578(n+2)², #]` -/
def P13684562752328871290.Spec : Prop :=
  ∀ n, (P13684562752328871290.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P6426940537692704804

`∑{digits}[A182986(n+2)², #]`
-/

namespace A123157.P6426940537692704804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P6426940537692704804

namespace A123157

/-- `∑{digits}[A182986(n+2)², #]` -/
def P6426940537692704804.Spec : Prop :=
  ∀ n, (P6426940537692704804.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P12409182470198414428

`∑{digits}[p?[round(sqrt(n)+n)]², #]`
-/

namespace A123157.P12409182470198414428
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (n : ℝ) + (n : ℝ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P12409182470198414428

namespace A123157

/-- `∑{digits}[p?[round(sqrt(n)+n)]², #]` -/
def P12409182470198414428.Spec : Prop :=
  ∀ n, (P12409182470198414428.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P32067844119923494

`∑{digits}[p?[xor(1, n)+1]^2, #]`
-/

namespace A123157.P32067844119923494
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).Prime) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n)).map fun (x : ℕ) => x).sum

end

end A123157.P32067844119923494

namespace A123157

/-- `∑{digits}[p?[xor(1, n)+1]^2, #]` -/
def P32067844119923494.Spec : Prop :=
  ∀ n, (P32067844119923494.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P2511811715272194869

`∑{digits}[p?[-xor(1, -n)]^2, #]`
-/

namespace A123157.P2511811715272194869
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.xor 1 (-(n : ℤ))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P2511811715272194869

namespace A123157

/-- `∑{digits}[p?[-xor(1, -n)]^2, #]` -/
def P2511811715272194869.Spec : Prop :=
  ∀ n, (P2511811715272194869.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P14533281637947806166

`∑{digits}[A033476(2*n), #]`
-/

namespace A123157.P14533281637947806166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033476 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P14533281637947806166

namespace A123157

/-- `∑{digits}[A033476(2*n), #]` -/
def P14533281637947806166.Spec : Prop :=
  ∀ n, (P14533281637947806166.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P7205532903206354623

`∑{digits}[A067747(2*n+1)², #]`
-/

namespace A123157.P7205532903206354623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067747 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P7205532903206354623

namespace A123157

/-- `∑{digits}[A067747(2*n+1)², #]` -/
def P7205532903206354623.Spec : Prop :=
  ∀ n, (P7205532903206354623.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P1866615541352651114

`∑{digits}[A129767(2*n+1)², #]`
-/

namespace A123157.P1866615541352651114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129767 (2 * n + 1) ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P1866615541352651114

namespace A123157

/-- `∑{digits}[A129767(2*n+1)², #]` -/
def P1866615541352651114.Spec : Prop :=
  ∀ n, (P1866615541352651114.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P16736307717277451677

`∑{digits}[record[A075643(n+1)²], #]`
-/

namespace A123157.P16736307717277451677
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075643 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P16736307717277451677

namespace A123157

/-- `∑{digits}[record[A075643(n+1)²], #]` -/
def P16736307717277451677.Spec : Prop :=
  ∀ n, (P16736307717277451677.a n : ℤ) = A123157 (n + 1)

end A123157

/-! ## A123157.P9931723784943023666

`∑{digits}[record[A093074(n+1)²], #]`
-/

namespace A123157.P9931723784943023666
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093074 (n + 1) ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A123157.P9931723784943023666

namespace A123157

/-- `∑{digits}[record[A093074(n+1)²], #]` -/
def P9931723784943023666.Spec : Prop :=
  ∀ n, (P9931723784943023666.a n : ℤ) = A123157 (n + 1)

end A123157

/-!
# A123158: Square array related to Bell numbers read by antidiagonals.

The programs for A123158, there is no canonical definition to state claims against.
-/

/-! ## A123158.P466656010445710875

`A108087(n)+A082503(A143632(n))`
-/

namespace A123158.P466656010445710875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n + A082503 (A143632 n).toNat

end

end A123158.P466656010445710875

/-! ## A123158.P15264072653732700365

`A108087(n)+A077392(A265312(n))`
-/

namespace A123158.P15264072653732700365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n + A077392 (A265312 n).toNat

end

end A123158.P15264072653732700365

/-! ## A123158.P5420461602886849621

`A108087(n)+A025465(A007053(n))`
-/

namespace A123158.P5420461602886849621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n + A025465 (A007053 n).toNat

end

end A123158.P5420461602886849621

/-! ## A123158.P2251164935631446583

`A108087(n)+A080225(A014739(n))`
-/

namespace A123158.P2251164935631446583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n + A080225 (A014739 n).toNat

end

end A123158.P2251164935631446583

/-! ## A123158.P306390054012423847

`A108087(n)+A102683(A026691(n))`
-/

namespace A123158.P306390054012423847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108087 n + A102683 (A026691 n).toNat

end

end A123158.P306390054012423847

/-!
# A123160: Triangle read by rows: T(n,k) = n!*(n+k-1)!/((n-k)!*(n-1)!*(k!)^2) for 0 <= k <= n, with T(0,0) = 1.

The programs for A123160, the canonical program `A123160.P8140901609317347605` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123160 has offset 0).

The definition of A123160 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1326 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123160.P8140901609317347605

`A007318(n)*A059481(n)`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A123160

/-- `A007318(n)*A059481(n)` -/
def P8140901609317347605.Spec : Prop :=
  ∀ n, P8140901609317347605.a n = A123160 n

theorem P8140901609317347605.correct : P8140901609317347605.Spec := by
  intro n
  simp only [A123160]

end A123160

/-! ## A123160.P7487376216094337085

`A370706(n)/A233543(n)`
-/

namespace A123160.P7487376216094337085
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370706 n : ℚ) / (A233543 n : ℚ)

end

end A123160.P7487376216094337085

namespace A123160

/-- `A370706(n)/A233543(n)` -/
def P7487376216094337085.Spec : Prop :=
  ∀ n, P7487376216094337085.a n = (A123160 n : ℚ)

end A123160

/-! ## A123160.P2179757000018029986

`abs(A007318(n)*A027555(n))`
-/

namespace A123160.P2179757000018029986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A007318 n * A027555 n|

end

end A123160.P2179757000018029986

namespace A123160

/-- `abs(A007318(n)*A027555(n))` -/
def P2179757000018029986.Spec : Prop :=
  ∀ n, P2179757000018029986.a n = A123160 n

end A123160

/-! ## A123160.P11359818926098976052

`abs(A027555(n)*A108086(n))`
-/

namespace A123160.P11359818926098976052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027555 n * A108086 n|

end

end A123160.P11359818926098976052

namespace A123160

/-- `abs(A027555(n)*A108086(n))` -/
def P11359818926098976052.Spec : Prop :=
  ∀ n, P11359818926098976052.a n = A123160 n

end A123160

/-! ## A123160.P12117976933967581031

`abs(A027555(n)*A117440(n))`
-/

namespace A123160.P12117976933967581031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027555 n * A117440 n|

end

end A123160.P12117976933967581031

namespace A123160

/-- `abs(A027555(n)*A117440(n))` -/
def P12117976933967581031.Spec : Prop :=
  ∀ n, P12117976933967581031.a n = A123160 n

end A123160

/-! ## A123160.P680049217973253467

`abs(A027555(n)*A130595(n))`
-/

namespace A123160.P680049217973253467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A027555 n * A130595 n|

end

end A123160.P680049217973253467

namespace A123160

/-- `abs(A027555(n)*A130595(n))` -/
def P680049217973253467.Spec : Prop :=
  ∀ n, P680049217973253467.a n = A123160 n

end A123160

/-! ## A123160.P702123265236524494

`sqrt(A008459(n))*A059481(n)`
-/

namespace A123160.P702123265236524494
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A059481 n : ℝ)

end

end A123160.P702123265236524494

namespace A123160

/-- `sqrt(A008459(n))*A059481(n)` -/
def P702123265236524494.Spec : Prop :=
  ∀ n, P702123265236524494.a n = (A123160 n : ℝ)

end A123160

/-! ## A123160.P3036436913639125246

`(A014473(n)+1)*A059481(n)`
-/

namespace A123160.P3036436913639125246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A014473 n + 1) * A059481 n

end

end A123160.P3036436913639125246

namespace A123160

/-- `(A014473(n)+1)*A059481(n)` -/
def P3036436913639125246.Spec : Prop :=
  ∀ n, P3036436913639125246.a n = A123160 n

end A123160

/-! ## A123160.P6245882026768595548

`A028326(n)/2*A059481(n)`
-/

namespace A123160.P6245882026768595548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2 * (A059481 n : ℚ)

end

end A123160.P6245882026768595548

namespace A123160

/-- `A028326(n)/2*A059481(n)` -/
def P6245882026768595548.Spec : Prop :=
  ∀ n, P6245882026768595548.a n = (A123160 n : ℚ)

end A123160

/-! ## A123160.P3393190501731349871

`A007318(n)*A100100(A061579(n))`
-/

namespace A123160.P3393190501731349871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A100100 (A061579 n).toNat

end

end A123160.P3393190501731349871

namespace A123160

/-- `A007318(n)*A100100(A061579(n))` -/
def P3393190501731349871.Spec : Prop :=
  ∀ n, P3393190501731349871.a n = A123160 n

end A123160

/-! ## A123160.P14560156669144705070

`A059481(n)*A097805(A014132(n+1))`
-/

namespace A123160.P14560156669144705070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059481 n * A097805 (A014132 (n + 1)).toNat

end

end A123160.P14560156669144705070

namespace A123160

/-- `A059481(n)*A097805(A014132(n+1))` -/
def P14560156669144705070.Spec : Prop :=
  ∀ n, P14560156669144705070.a n = A123160 n

end A123160

/-! ## A123160.P10933643646293073165

`A370707(n)/A233543(n)²`
-/

namespace A123160.P10933643646293073165
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370707 n : ℚ) / (A233543 n ^ 2 : ℚ)

end

end A123160.P10933643646293073165

namespace A123160

/-- `A370707(n)/A233543(n)²` -/
def P10933643646293073165.Spec : Prop :=
  ∀ n, P10933643646293073165.a n = (A123160 n : ℚ)

end A123160

/-! ## A123160.P616642349351814961

`A370706(n)/A370707(n)*A370706(n)`
-/

namespace A123160.P616642349351814961
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370706 n : ℚ) / (A370707 n : ℚ) * (A370706 n : ℚ)

end

end A123160.P616642349351814961

namespace A123160

/-- `A370706(n)/A370707(n)*A370706(n)` -/
def P616642349351814961.Spec : Prop :=
  ∀ n, P616642349351814961.a n = (A123160 n : ℚ)

end A123160

/-! ## A123160.P18167829747596760587

`A370706(n)²/A370707(n)`
-/

namespace A123160.P18167829747596760587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A370706 n ^ 2 : ℚ) / (A370707 n : ℚ)

end

end A123160.P18167829747596760587

namespace A123160

/-- `A370706(n)²/A370707(n)` -/
def P18167829747596760587.Spec : Prop :=
  ∀ n, P18167829747596760587.a n = (A123160 n : ℚ)

end A123160

/-!
# A123162: Triangle read by rows: T(n,k) = binomial(2*n - 1, 2*k - 1) for 0 < k <= n and T(n,0) = 1.

The programs for A123162, the canonical program `A123162.P13305634525387480966` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123162 has offset 0).

The definition of A123162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123162.P13305634525387480966

`A091042(A056943(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A123162

/-- `A091042(A056943(n))` -/
def P13305634525387480966.Spec : Prop :=
  ∀ n, P13305634525387480966.a n = A123162 n

theorem P13305634525387480966.correct : P13305634525387480966.Spec := by
  intro n
  simp only [A123162]

end A123162

/-! ## A123162.P11789371823308581950

`A091042(n-A056944(n))`
-/

namespace A123162.P11789371823308581950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 ((n : ℤ) - A056944 n).toNat

end

end A123162.P11789371823308581950

namespace A123162

/-- `A091042(n-A056944(n))` -/
def P11789371823308581950.Spec : Prop :=
  ∀ n, P11789371823308581950.a n = A123162 n

end A123162

/-! ## A123162.P16865779886230028659

`A091042(n-2*A002262(n))`
-/

namespace A123162.P16865779886230028659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 ((n : ℤ) - 2 * A002262 n).toNat

end

end A123162.P16865779886230028659

namespace A123162

/-- `A091042(n-2*A002262(n))` -/
def P16865779886230028659.Spec : Prop :=
  ∀ n, P16865779886230028659.a n = A123162 n

end A123162

/-! ## A123162.P307304955589658591

`A091042(n²%A007401(n+1))`
-/

namespace A123162.P307304955589658591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (Int.tmod (n ^ 2 : ℤ) (A007401 (n + 1))).toNat

end

end A123162.P307304955589658591

namespace A123162

/-- `A091042(n²%A007401(n+1))` -/
def P307304955589658591.Spec : Prop :=
  ∀ n, P307304955589658591.a n = A123162 n

end A123162

/-! ## A123162.P17681942666859395075

`A091042(A061579(n)-A003056(n))`
-/

namespace A123162.P17681942666859395075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (A061579 n - A003056 n).toNat

end

end A123162.P17681942666859395075

namespace A123162

/-- `A091042(A061579(n)-A003056(n))` -/
def P17681942666859395075.Spec : Prop :=
  ∀ n, P17681942666859395075.a n = A123162 n

end A123162

/-! ## A123162.P4071037864452822450

`A091042(n-A002262(n)-A002262(n))`
-/

namespace A123162.P4071037864452822450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 ((n : ℤ) - A002262 n - A002262 n).toNat

end

end A123162.P4071037864452822450

namespace A123162

/-- `A091042(n-A002262(n)-A002262(n))` -/
def P4071037864452822450.Spec : Prop :=
  ∀ n, P4071037864452822450.a n = A123162 n

end A123162

/-! ## A123162.P13985895433121403405

`A091042(A038722(n+1)-A002024(n+1))`
-/

namespace A123162.P13985895433121403405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (A038722 (n + 1) - A002024 (n + 1)).toNat

end

end A123162.P13985895433121403405

namespace A123162

/-- `A091042(A038722(n+1)-A002024(n+1))` -/
def P13985895433121403405.Spec : Prop :=
  ∀ n, P13985895433121403405.a n = A123162 n

end A123162

/-! ## A123162.P3781936023899275642

`A091042(A061579(n)+n+1-A007401(n+1))`
-/

namespace A123162.P3781936023899275642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091042 (A061579 n + ((n + 1 : ℤ) - A007401 (n + 1))).toNat

end

end A123162.P3781936023899275642

namespace A123162

/-- `A091042(A061579(n)+n+1-A007401(n+1))` -/
def P3781936023899275642.Spec : Prop :=
  ∀ n, P3781936023899275642.a n = A123162 n

end A123162

/-! ## A123162.P8790896273362369114

`A054142(A245300(n)-A123578(n))`
-/

namespace A123162.P8790896273362369114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054142 (A245300 n - A123578 n).toNat

end

end A123162.P8790896273362369114

namespace A123162

/-- `A054142(A245300(n)-A123578(n))` -/
def P8790896273362369114.Spec : Prop :=
  ∀ n, P8790896273362369114.a n = A123162 n

end A123162

/-! ## A123162.P13102113170481121887

`A007318(lt[n*A271592(n+2), 2])`
-/

namespace A123162.P13102113170481121887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A271592 (n + 2)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A123162.P13102113170481121887

namespace A123162

/-- `A007318(lt[n*A271592(n+2), 2])` -/
def P13102113170481121887.Spec : Prop :=
  ∀ n, P13102113170481121887.a n = A123162 n

end A123162

/-!
# A123163: Triangle T(n, k) = binomial((n-k)^2, k^2) read by rows.

The programs for A123163, the canonical program `A123163.P13801651006854553114` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123163 has offset 0).

The definition of A123163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 446 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123163.P3468961759394808066

`C((n+1-C(comp[∑[n]]-n, 2))², (n-C(∑[char[∑[n]]], 2))²)`
-/

namespace A123163.P3468961759394808066
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

open Classical in
def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f4 j = n then 1 else 0

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2).toNat (((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f3 j) 2 : ℤ)) ^ 2).toNat

end

end A123163.P3468961759394808066

namespace A123163

/-- `C((n+1-C(comp[∑[n]]-n, 2))², (n-C(∑[char[∑[n]]], 2))²)` -/
def P3468961759394808066.Spec : Prop :=
  ∀ n, (P3468961759394808066.a n : ℤ) = A123163 n

end A123163

/-! ## A123163.P9423200720552924923

`C(A025581(n)², (n-C(∑[char[∑[n]]], 2))²)`
-/

namespace A123163.P9423200720552924923
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n ^ 2).toNat (((n : ℤ) - (Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) 2 : ℤ)) ^ 2).toNat

end

end A123163.P9423200720552924923

namespace A123163

/-- `C(A025581(n)², (n-C(∑[char[∑[n]]], 2))²)` -/
def P9423200720552924923.Spec : Prop :=
  ∀ n, (P9423200720552924923.a n : ℤ) = A123163 n

end A123163

/-! ## A123163.P2605389552711186024

`C((n+1-C(comp[∑[n]]-n, 2))², A143844(n))`
-/

namespace A123163.P2605389552711186024
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2).toNat (A143844 n).toNat

end

end A123163.P2605389552711186024

namespace A123163

/-- `C((n+1-C(comp[∑[n]]-n, 2))², A143844(n))` -/
def P2605389552711186024.Spec : Prop :=
  ∀ n, (P2605389552711186024.a n : ℤ) = A123163 n

end A123163

/-! ## A123163.P13555945347540322684

`C((n+1-C(comp[∑[n]]-n, 2))², A002262(n)²)`
-/

namespace A123163.P13555945347540322684
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (((n + 1 : ℤ) - (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 : ℤ)) ^ 2).toNat (A002262 n ^ 2).toNat

end

end A123163.P13555945347540322684

namespace A123163

/-- `C((n+1-C(comp[∑[n]]-n, 2))², A002262(n)²)` -/
def P13555945347540322684.Spec : Prop :=
  ∀ n, (P13555945347540322684.a n : ℤ) = A123163 n

end A123163

/-! ## A123163.P10643693897775343047

`C(A025581(n)², A143844(n))`
-/

namespace A123163.P10643693897775343047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A025581 n ^ 2).toNat (A143844 n).toNat

end

end A123163.P10643693897775343047

namespace A123163

/-- `C(A025581(n)², A143844(n))` -/
def P10643693897775343047.Spec : Prop :=
  ∀ n, (P10643693897775343047.a n : ℤ) = A123163 n

end A123163

/-! ## A123163.P6589766609019947111

`C(A095831(n+1), A143844(n))`
-/

namespace A123163.P6589766609019947111
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095831 (n + 1)).toNat (A143844 n).toNat

end

end A123163.P6589766609019947111

namespace A123163

/-- `C(A095831(n+1), A143844(n))` -/
def P6589766609019947111.Spec : Prop :=
  ∀ n, (P6589766609019947111.a n : ℤ) = A123163 n

end A123163

/-! ## A123163.P13801651006854553114

`C(A025581(n)², A002262(n)²)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A123163

/-- `C(A025581(n)², A002262(n)²)` -/
def P13801651006854553114.Spec : Prop :=
  ∀ n, (P13801651006854553114.a n : ℤ) = A123163 n

theorem P13801651006854553114.correct : P13801651006854553114.Spec := by
  intro n
  simp only [A123163]

end A123163

/-! ## A123163.P1448479051338871291

`C(log2(A130321(n))², A143844(n))`
-/

namespace A123163.P1448479051338871291
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ) ^ 2)).toNat (A143844 n).toNat

end

end A123163.P1448479051338871291

namespace A123163

/-- `C(log2(A130321(n))², A143844(n))` -/
def P1448479051338871291.Spec : Prop :=
  ∀ n, (P1448479051338871291.a n : ℤ) = A123163 n

end A123163

/-! ## A123163.P5435979903559187622

`C(A095831(n+1), A002262(n)²)`
-/

namespace A123163.P5435979903559187622
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095831 (n + 1)).toNat (A002262 n ^ 2).toNat

end

end A123163.P5435979903559187622

namespace A123163

/-- `C(A095831(n+1), A002262(n)²)` -/
def P5435979903559187622.Spec : Prop :=
  ∀ n, (P5435979903559187622.a n : ℤ) = A123163 n

end A123163

/-! ## A123163.P18081798091427338594

`C(A095831(n+1), A053616(n)²)`
-/

namespace A123163.P18081798091427338594
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095831 (n + 1)).toNat (A053616 n ^ 2).toNat

end

end A123163.P18081798091427338594

namespace A123163

/-- `C(A095831(n+1), A053616(n)²)` -/
def P18081798091427338594.Spec : Prop :=
  ∀ n, (P18081798091427338594.a n : ℤ) = A123163 n

end A123163

/-! ## A123163.P3461140741527420993

`C(A144257(n+1)², A002262(n)²)`
-/

namespace A123163.P3461140741527420993
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A144257 (n + 1) ^ 2).toNat (A002262 n ^ 2).toNat

end

end A123163.P3461140741527420993

namespace A123163

/-- `C(A144257(n+1)², A002262(n)²)` -/
def P3461140741527420993.Spec : Prop :=
  ∀ n, (P3461140741527420993.a n : ℤ) = A123163 n

end A123163

/-! ## A123163.P10541210954589474459

`C(A048147(n)-A143844(n), A143844(n))`
-/

namespace A123163.P10541210954589474459
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A048147 n - A143844 n).toNat (A143844 n).toNat

end

end A123163.P10541210954589474459

namespace A123163

/-- `C(A048147(n)-A143844(n), A143844(n))` -/
def P10541210954589474459.Spec : Prop :=
  ∀ n, (P10541210954589474459.a n : ℤ) = A123163 n

end A123163

/-! ## A123163.P13305124241068700032

`C(A095831(n+1), A095831(A038722(n+1)))`
-/

namespace A123163.P13305124241068700032
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A095831 (n + 1)).toNat (A095831 (A038722 (n + 1)).toNat).toNat

end

end A123163.P13305124241068700032

namespace A123163

/-- `C(A095831(n+1), A095831(A038722(n+1)))` -/
def P13305124241068700032.Spec : Prop :=
  ∀ n, (P13305124241068700032.a n : ℤ) = A123163 n

end A123163

/-!
# A123164: Row sums of A123160.

The programs for A123164, the canonical program `A123164.P13278900734001591324` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123164 has offset 0).

The definition of A123164 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 133 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123164.P2244656607610330463

`A110171(∑[n])`
-/

namespace A123164.P2244656607610330463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110171 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123164.P2244656607610330463

namespace A123164

/-- `A110171(∑[n])` -/
def P2244656607610330463.Spec : Prop :=
  ∀ n, P2244656607610330463.a n = A123164 n

end A123164

/-! ## A123164.P10320712975426530183

`record[A110171(n)]`
-/

namespace A123164.P10320712975426530183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110171 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123164.P10320712975426530183

namespace A123164

/-- `record[A110171(n)]` -/
def P10320712975426530183.Spec : Prop :=
  ∀ n, P10320712975426530183.a n = A123164 n

end A123164

/-! ## A123164.P8524800988678782389

`ceil(A241023(n)/2)`
-/

namespace A123164.P8524800988678782389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A241023 n : ℚ) / 2⌉

end

end A123164.P8524800988678782389

namespace A123164

/-- `ceil(A241023(n)/2)` -/
def P8524800988678782389.Spec : Prop :=
  ∀ n, P8524800988678782389.a n = A123164 n

end A123164

/-! ## A123164.P10614275064824156920

`A110110(comp[2*(n+1)])`
-/

namespace A123164.P10614275064824156920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110110 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A123164.P10614275064824156920

namespace A123164

/-- `A110110(comp[2*(n+1)])` -/
def P10614275064824156920.Spec : Prop :=
  ∀ n, P10614275064824156920.a n = A123164 n

end A123164

/-! ## A123164.P8980330585087035996

`A002003(n)^ceil(abs(sin(n)))`
-/

namespace A123164.P8980330585087035996
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002003 n : ℚ) ^ (⌈|Real.sin (n : ℝ)|⌉ : ℤ)

end

end A123164.P8980330585087035996

namespace A123164

/-- `A002003(n)^ceil(abs(sin(n)))` -/
def P8980330585087035996.Spec : Prop :=
  ∀ n, P8980330585087035996.a n = (A123164 n : ℚ)

end A123164

/-! ## A123164.P4145032685108375672

`A002003(n)+A000007(n)`
-/

namespace A123164.P4145032685108375672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 n + A000007 n

end

end A123164.P4145032685108375672

namespace A123164

/-- `A002003(n)+A000007(n)` -/
def P4145032685108375672.Spec : Prop :=
  ∀ n, P4145032685108375672.a n = A123164 n

end A123164

/-! ## A123164.P13278900734001591324

`A001850(n)-A002002(n)`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A123164

/-- `A001850(n)-A002002(n)` -/
def P13278900734001591324.Spec : Prop :=
  ∀ n, P13278900734001591324.a n = A123164 n

theorem P13278900734001591324.correct : P13278900734001591324.Spec := by
  intro n
  simp only [A123164]

end A123164

/-! ## A123164.P11886865313588934748

`∑[A110170(n)]-A002002(n)`
-/

namespace A123164.P11886865313588934748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110170 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A002002 n

end

end A123164.P11886865313588934748

namespace A123164

/-- `∑[A110170(n)]-A002002(n)` -/
def P11886865313588934748.Spec : Prop :=
  ∀ n, P11886865313588934748.a n = A123164 n

end A123164

/-! ## A123164.P6597262447936176295

`A000007(n)+2*A047781(n)`
-/

namespace A123164.P6597262447936176295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + 2 * A047781 n

end

end A123164.P6597262447936176295

namespace A123164

/-- `A000007(n)+2*A047781(n)` -/
def P6597262447936176295.Spec : Prop :=
  ∀ n, P6597262447936176295.a n = A123164 n

end A123164

/-! ## A123164.P4791252502416337132

`A026003(2*n)-A002002(n)`
-/

namespace A123164.P4791252502416337132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026003 (2 * n) - A002002 n

end

end A123164.P4791252502416337132

namespace A123164

/-- `A026003(2*n)-A002002(n)` -/
def P4791252502416337132.Spec : Prop :=
  ∀ n, P4791252502416337132.a n = A123164 n

end A123164

/-! ## A123164.P8685871788567935194

`A241023(n)-2*A047781(n)`
-/

namespace A123164.P8685871788567935194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241023 n - 2 * A047781 n

end

end A123164.P8685871788567935194

namespace A123164

/-- `A241023(n)-2*A047781(n)` -/
def P8685871788567935194.Spec : Prop :=
  ∀ n, P8685871788567935194.a n = A123164 n

end A123164

/-! ## A123164.P13339707176568846259

`A002003(n)+A006318(n)%2`
-/

namespace A123164.P13339707176568846259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002003 n + Int.tmod (A006318 n) 2

end

end A123164.P13339707176568846259

namespace A123164

/-- `A002003(n)+A006318(n)%2` -/
def P13339707176568846259.Spec : Prop :=
  ∀ n, P13339707176568846259.a n = A123164 n

end A123164

/-! ## A123164.P14812884387695836279

`A039974(2*n+1)+A002003(n)`
-/

namespace A123164.P14812884387695836279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039974 (2 * n + 1) + A002003 n

end

end A123164.P14812884387695836279

namespace A123164

/-- `A039974(2*n+1)+A002003(n)` -/
def P14812884387695836279.Spec : Prop :=
  ∀ n, P14812884387695836279.a n = A123164 n

end A123164

/-! ## A123164.P16954289466231141013

`A039975(2*n+1)+A002003(n)`
-/

namespace A123164.P16954289466231141013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039975 (2 * n + 1) + A002003 n

end

end A123164.P16954289466231141013

namespace A123164

/-- `A039975(2*n+1)+A002003(n)` -/
def P16954289466231141013.Spec : Prop :=
  ∀ n, P16954289466231141013.a n = A123164 n

end A123164

/-! ## A123164.P3100834508092951649

`2*A047665(n)+1-A002002(n)`
-/

namespace A123164.P3100834508092951649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A047665 n + 1 - A002002 n

end

end A123164.P3100834508092951649

namespace A123164

/-- `2*A047665(n)+1-A002002(n)` -/
def P3100834508092951649.Spec : Prop :=
  ∀ n, P3100834508092951649.a n = A123164 n

end A123164

/-! ## A123164.P4867671472878596991

`A050146(n+1)-2*A002002(n)`
-/

namespace A123164.P4867671472878596991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050146 (n + 1) - 2 * A002002 n

end

end A123164.P4867671472878596991

namespace A123164

/-- `A050146(n+1)-2*A002002(n)` -/
def P4867671472878596991.Spec : Prop :=
  ∀ n, P4867671472878596991.a n = A123164 n

end A123164

/-! ## A123164.P15697199978380872254

`2*A247623(2*n)-A247630(2*n)`
-/

namespace A123164.P15697199978380872254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247623 (2 * n) - A247630 (2 * n)

end

end A123164.P15697199978380872254

namespace A123164

/-- `2*A247623(2*n)-A247630(2*n)` -/
def P15697199978380872254.Spec : Prop :=
  ∀ n, P15697199978380872254.a n = A123164 n

end A123164

/-! ## A123164.P12998686910779172454

`A047781(A000007(n)+n)+A047781(n)`
-/

namespace A123164.P12998686910779172454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047781 (A000007 n + (n : ℤ)).toNat + A047781 n

end

end A123164.P12998686910779172454

namespace A123164

/-- `A047781(A000007(n)+n)+A047781(n)` -/
def P12998686910779172454.Spec : Prop :=
  ∀ n, P12998686910779172454.a n = A123164 n

end A123164

/-! ## A123164.P3724699081586042745

`A047665(n)+A226994(n)-A002002(n)`
-/

namespace A123164.P3724699081586042745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047665 n + (A226994 n - A002002 n)

end

end A123164.P3724699081586042745

namespace A123164

/-- `A047665(n)+A226994(n)-A002002(n)` -/
def P3724699081586042745.Spec : Prop :=
  ∀ n, P3724699081586042745.a n = A123164 n

end A123164

/-!
# A123165: Row sums of A123163.

The programs for A123165, there is no canonical definition to state claims against.
-/

/-! ## A123165.P1675147663521948474

`Δ[A306972(a(n-1))]` with `a(0)=1`
-/

namespace A123165.P1675147663521948474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A306972 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A123165.P1675147663521948474

/-! ## A123165.P1642354614476716224

`or(2-char[∑[n]], A322390(2^n))`
-/

namespace A123165.P1642354614476716224
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A322390 (2 ^ n))

end

end A123165.P1642354614476716224

/-!
# A123166: Row sums of A123162.

The programs for A123166, the canonical program `A123166.P12791581105704041367` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123166 has offset 0).

The definition of A123166 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 168 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123166.P12791581105704041367

`floor(4^(n-1))+1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123166

/-- `floor(4^(n-1))+1` -/
def P12791581105704041367.Spec : Prop :=
  ∀ n, P12791581105704041367.a n = A123166 n

theorem P12791581105704041367.correct : P12791581105704041367.Spec := by
  intro n
  simp only [A123166]

end A123166

/-! ## A123166.P5531209655061925962

`ogf((1-3x-x^2)/(1-5x+4x^2))`
-/

namespace A123166.P5531209655061925962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, -1] [1, -5, 4] n

end

end A123166.P5531209655061925962

namespace A123166

/-- `ogf((1-3x-x^2)/(1-5x+4x^2))` -/
def P5531209655061925962.Spec : Prop :=
  ∀ n, P5531209655061925962.a n = A123166 n

end A123166

/-! ## A123166.P9932559435700532107

`ceil(cos(1)+4^(n-1))`
-/

namespace A123166.P9932559435700532107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cos (1 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A123166.P9932559435700532107

namespace A123166

/-- `ceil(cos(1)+4^(n-1))` -/
def P9932559435700532107.Spec : Prop :=
  ∀ n, P9932559435700532107.a n = A123166 n

end A123166

/-! ## A123166.P5467764817673472906

`round(cos(1)+4^(n-1))`
-/

namespace A123166.P5467764817673472906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cos (1 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A123166.P5467764817673472906

namespace A123166

/-- `round(cos(1)+4^(n-1))` -/
def P5467764817673472906.Spec : Prop :=
  ∀ n, P5467764817673472906.a n = A123166 n

end A123166

/-! ## A123166.P5790113295032550531

`round(sin(1)+4^(n-1))`
-/

namespace A123166.P5790113295032550531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sin (1 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A123166.P5790113295032550531

namespace A123166

/-- `round(sin(1)+4^(n-1))` -/
def P5790113295032550531.Spec : Prop :=
  ∀ n, P5790113295032550531.a n = A123166 n

end A123166

/-! ## A123166.P7488103727778460141

`round(4^(n-1)-cos(3))`
-/

namespace A123166.P7488103727778460141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (3 : ℝ))

end

end A123166.P7488103727778460141

namespace A123166

/-- `round(4^(n-1)-cos(3))` -/
def P7488103727778460141.Spec : Prop :=
  ∀ n, P7488103727778460141.a n = A123166 n

end A123166

/-! ## A123166.P5923986818562469131

`ceil(4^(n-1)-cos(4))`
-/

namespace A123166.P5923986818562469131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.cos (4 : ℝ)⌉

end

end A123166.P5923986818562469131

namespace A123166

/-- `ceil(4^(n-1)-cos(4))` -/
def P5923986818562469131.Spec : Prop :=
  ∀ n, P5923986818562469131.a n = A123166 n

end A123166

/-! ## A123166.P6983152607605138323

`round(atan(1)+4^(n-1))`
-/

namespace A123166.P6983152607605138323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.arctan (1 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A123166.P6983152607605138323

namespace A123166

/-- `round(atan(1)+4^(n-1))` -/
def P6983152607605138323.Spec : Prop :=
  ∀ n, P6983152607605138323.a n = A123166 n

end A123166

/-! ## A123166.P5574387097865048210

`round(4^(n-1)-sin(4))`
-/

namespace A123166.P5574387097865048210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (4 : ℝ))

end

end A123166.P5574387097865048210

namespace A123166

/-- `round(4^(n-1)-sin(4))` -/
def P5574387097865048210.Spec : Prop :=
  ∀ n, P5574387097865048210.a n = A123166 n

end A123166

/-! ## A123166.P9975465518901948401

`round(tan(4)+4^(n-1))`
-/

namespace A123166.P9975465518901948401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tan (4 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A123166.P9975465518901948401

namespace A123166

/-- `round(tan(4)+4^(n-1))` -/
def P9975465518901948401.Spec : Prop :=
  ∀ n, P9975465518901948401.a n = A123166 n

end A123166

/-! ## A123166.P1590468473855789825

`ceil(sin(7)+4^(n-1))`
-/

namespace A123166.P1590468473855789825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (7 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A123166.P1590468473855789825

namespace A123166

/-- `ceil(sin(7)+4^(n-1))` -/
def P1590468473855789825.Spec : Prop :=
  ∀ n, P1590468473855789825.a n = A123166 n

end A123166

/-! ## A123166.P9643094233279777073

`round(sinh(1)+4^(n-1))`
-/

namespace A123166.P9643094233279777073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sinh (1 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A123166.P9643094233279777073

namespace A123166

/-- `round(sinh(1)+4^(n-1))` -/
def P9643094233279777073.Spec : Prop :=
  ∀ n, P9643094233279777073.a n = A123166 n

end A123166

/-! ## A123166.P4121481272753765206

`round(tanh(1)+4^(n-1))`
-/

namespace A123166.P4121481272753765206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.tanh (1 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A123166.P4121481272753765206

namespace A123166

/-- `round(tanh(1)+4^(n-1))` -/
def P4121481272753765206.Spec : Prop :=
  ∀ n, P4121481272753765206.a n = A123166 n

end A123166

/-! ## A123166.P15821067614349417383

`ceil(cot(1)+4^(n-1))`
-/

namespace A123166.P15821067614349417383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.cot (1 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A123166.P15821067614349417383

namespace A123166

/-- `ceil(cot(1)+4^(n-1))` -/
def P15821067614349417383.Spec : Prop :=
  ∀ n, P15821067614349417383.a n = A123166 n

end A123166

/-! ## A123166.P3848091095889124225

`round(cot(1)+4^(n-1))`
-/

namespace A123166.P3848091095889124225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cot (1 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A123166.P3848091095889124225

namespace A123166

/-- `round(cot(1)+4^(n-1))` -/
def P3848091095889124225.Spec : Prop :=
  ∀ n, P3848091095889124225.a n = A123166 n

end A123166

/-! ## A123166.P9123406539283250244

`round(acot(1)+4^(n-1))`
-/

namespace A123166.P9123406539283250244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (SequenceMachineLib.acot (1 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ))

end

end A123166.P9123406539283250244

namespace A123166

/-- `round(acot(1)+4^(n-1))` -/
def P9123406539283250244.Spec : Prop :=
  ∀ n, P9123406539283250244.a n = A123166 n

end A123166

/-! ## A123166.P7721376108373339786

`ceil(4^(n-1)-sin(10))`
-/

namespace A123166.P7721376108373339786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) - Real.sin (10 : ℝ)⌉

end

end A123166.P7721376108373339786

namespace A123166

/-- `ceil(4^(n-1)-sin(10))` -/
def P7721376108373339786.Spec : Prop :=
  ∀ n, P7721376108373339786.a n = A123166 n

end A123166

/-! ## A123166.P11801829518527370705

`ceil(tan(10)+4^(n-1))`
-/

namespace A123166.P11801829518527370705
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tan (10 : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A123166.P11801829518527370705

namespace A123166

/-- `ceil(tan(10)+4^(n-1))` -/
def P11801829518527370705.Spec : Prop :=
  ∀ n, P11801829518527370705.a n = A123166 n

end A123166

/-! ## A123166.P2725006375807169965

`ceil(acot(ϕ)+4^(n-1))`
-/

namespace A123166.P2725006375807169965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈SequenceMachineLib.acot Real.goldenRatio + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A123166.P2725006375807169965

namespace A123166

/-- `ceil(acot(ϕ)+4^(n-1))` -/
def P2725006375807169965.Spec : Prop :=
  ∀ n, P2725006375807169965.a n = A123166 n

end A123166

/-! ## A123166.P3892163645768717847

`∑[4*a(n-1)]` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A123166.P3892163645768717847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 3] fun n f1 =>
  4 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123166.P3892163645768717847

namespace A123166

/-- `∑[4*a(n-1)]` -/
def P3892163645768717847.Spec : Prop :=
  ∀ n, (P3892163645768717847.a n : ℤ) = A123166 n

end A123166

/-!
# A123167: Continued fraction for c=sqrt(2)*(exp(sqrt(2))+1)/(exp(sqrt(2))-1). a(2*n-1) = 8*n-6, a(2*n) = 4*n-1.

The programs for A123167, the canonical program `A123167.P5272996995479382944` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123167 has offset 1).

The definition of A123167 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123167.P5272996995479382944

`2*a(n-2)-a(n-4)` with `a(0)=2, a(1)=3, a(2)=10, a(3)=7`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123167

/-- `2*a(n-2)-a(n-4)` -/
def P5272996995479382944.Spec : Prop :=
  ∀ n, P5272996995479382944.a n = A123167 (n + 1)

theorem P5272996995479382944.correct : P5272996995479382944.Spec := by
  intro n
  simp only [A123167, Nat.add_sub_cancel]

end A123167

/-! ## A123167.P5327105438402855062

`(2*(n+1)-1)*2^((n+1)%2)`
-/

namespace A123167.P5327105438402855062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * (n + 1) : ℤ) - 1) * (2 ^ ((n + 1) % 2) : ℤ)

end

end A123167.P5327105438402855062

namespace A123167

/-- `(2*(n+1)-1)*2^((n+1)%2)` -/
def P5327105438402855062.Spec : Prop :=
  ∀ n, P5327105438402855062.a n = A123167 (n + 1)

end A123167

/-! ## A123167.P7297266366744662805

`gcd(2, n)*Δ[n²]`
-/

namespace A123167.P7297266366744662805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 2 n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A123167.P7297266366744662805

namespace A123167

/-- `gcd(2, n)*Δ[n²]` -/
def P7297266366744662805.Spec : Prop :=
  ∀ n, P7297266366744662805.a n = A123167 (n + 1)

end A123167

/-! ## A123167.P15923672108292289433

`Δ[lcm(2, n)]+3*n`
-/

namespace A123167.P15923672108292289433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (3 * n : ℤ)

end

end A123167.P15923672108292289433

namespace A123167

/-- `Δ[lcm(2, n)]+3*n` -/
def P15923672108292289433.Spec : Prop :=
  ∀ n, P15923672108292289433.a n = A123167 (n + 1)

end A123167

/-! ## A123167.P2429400755712825122

`(2-n%2)*Δ[n²]`
-/

namespace A123167.P2429400755712825122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - ((n % 2 : ℕ) : ℤ)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A123167.P2429400755712825122

namespace A123167

/-- `(2-n%2)*Δ[n²]` -/
def P2429400755712825122.Spec : Prop :=
  ∀ n, P2429400755712825122.a n = A123167 (n + 1)

end A123167

/-! ## A123167.P15420222512316867126

`(2-and(1, n))*Δ[n²]`
-/

namespace A123167.P15420222512316867126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - (Nat.land 1 n : ℤ)) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A123167.P15420222512316867126

namespace A123167

/-- `(2-and(1, n))*Δ[n²]` -/
def P15420222512316867126.Spec : Prop :=
  ∀ n, P15420222512316867126.a n = A123167 (n + 1)

end A123167

/-! ## A123167.P12905821366923469232

`lcm(and(1, n)-2, Δ[n²])`
-/

namespace A123167.P12905821366923469232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((Nat.land 1 n : ℤ) - 2) ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A123167.P12905821366923469232

namespace A123167

/-- `lcm(and(1, n)-2, Δ[n²])` -/
def P12905821366923469232.Spec : Prop :=
  ∀ n, (P12905821366923469232.a n : ℤ) = A123167 (n + 1)

end A123167

/-! ## A123167.P180281739673621596

`lcm(2*n+1, or(n, -2))`
-/

namespace A123167.P180281739673621596
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (2 * n + 1 : ℤ) (Int.lor (n : ℤ) (-2))

end

end A123167.P180281739673621596

namespace A123167

/-- `lcm(2*n+1, or(n, -2))` -/
def P180281739673621596.Spec : Prop :=
  ∀ n, (P180281739673621596.a n : ℤ) = A123167 (n + 1)

end A123167

/-! ## A123167.P5337758425364055413

`(2*n+1)*(2-and(1, n))`
-/

namespace A123167.P5337758425364055413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * (2 - (Nat.land 1 n : ℤ))

end

end A123167.P5337758425364055413

namespace A123167

/-- `(2*n+1)*(2-and(1, n))` -/
def P5337758425364055413.Spec : Prop :=
  ∀ n, P5337758425364055413.a n = A123167 (n + 1)

end A123167

/-! ## A123167.P17574720343512401444

`(4*n+2)/(and(1, n)+1)`
-/

namespace A123167.P17574720343512401444
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 * n + 2 : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A123167.P17574720343512401444

namespace A123167

/-- `(4*n+2)/(and(1, n)+1)` -/
def P17574720343512401444.Spec : Prop :=
  ∀ n, P17574720343512401444.a n = (A123167 (n + 1) : ℚ)

end A123167

/-! ## A123167.P8920304310842124772

`(2*n+1)*gcd(4, or(2, n))`
-/

namespace A123167.P8920304310842124772
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n + 1) * Nat.gcd 4 (Nat.lor 2 n)

end

end A123167.P8920304310842124772

namespace A123167

/-- `(2*n+1)*gcd(4, or(2, n))` -/
def P8920304310842124772.Spec : Prop :=
  ∀ n, (P8920304310842124772.a n : ℤ) = A123167 (n + 1)

end A123167

/-! ## A123167.P13924357997791643268

`6*n-xor(1, a(n-1))` with `a(0)=2`
-/

namespace A123167.P13924357997791643268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  (6 * n : ℤ) - Int.xor 1 (a (n - 1))

end

end A123167.P13924357997791643268

namespace A123167

/-- `6*n-xor(1, a(n-1))` -/
def P13924357997791643268.Spec : Prop :=
  ∀ n, P13924357997791643268.a n = A123167 (n + 1)

end A123167

/-! ## A123167.P6961089311687041246

`lcm(n+1+n, gcd(6, n+2))`
-/

namespace A123167.P6961089311687041246
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1 + n) (Nat.gcd 6 (n + 2))

end

end A123167.P6961089311687041246

namespace A123167

/-- `lcm(n+1+n, gcd(6, n+2))` -/
def P6961089311687041246.Spec : Prop :=
  ∀ n, (P6961089311687041246.a n : ℤ) = A123167 (n + 1)

end A123167

/-! ## A123167.P364967741873728398

`abs((2*n+1)*or(n, -2))`
-/

namespace A123167.P364967741873728398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(2 * n + 1 : ℤ) * Int.lor (n : ℤ) (-2)|

end

end A123167.P364967741873728398

namespace A123167

/-- `abs((2*n+1)*or(n, -2))` -/
def P364967741873728398.Spec : Prop :=
  ∀ n, P364967741873728398.a n = A123167 (n + 1)

end A123167

/-! ## A123167.P5990452210054021162

`-(2*n+1)*or(n, -2)`
-/

namespace A123167.P5990452210054021162
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((2 * n + 1 : ℤ) * Int.lor (n : ℤ) (-2))

end

end A123167.P5990452210054021162

namespace A123167

/-- `-(2*n+1)*or(n, -2)` -/
def P5990452210054021162.Spec : Prop :=
  ∀ n, P5990452210054021162.a n = A123167 (n + 1)

end A123167

/-! ## A123167.P3034216106357465219

`(and(1, n+1)+1)*Δ[n²]`
-/

namespace A123167.P3034216106357465219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A123167.P3034216106357465219

namespace A123167

/-- `(and(1, n+1)+1)*Δ[n²]` -/
def P3034216106357465219.Spec : Prop :=
  ∀ n, P3034216106357465219.a n = A123167 (n + 1)

end A123167

/-! ## A123167.P13695267363948198259

`(char[2*n]+1)*comp[2*n]`
-/

namespace A123167.P13695267363948198259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = n then 1 else 0) + 1) * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

end

end A123167.P13695267363948198259

namespace A123167

/-- `(char[2*n]+1)*comp[2*n]` -/
def P13695267363948198259.Spec : Prop :=
  ∀ n, (P13695267363948198259.a n : ℤ) = A123167 (n + 1)

end A123167

/-! ## A123167.P8110106781215928408

`(8*n²-2)/a(n-1)` with `a(0)=2`
-/

namespace A123167.P8110106781215928408
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  ((8 * n ^ 2 : ℤ) - 2 : ℚ) / a (n - 1)

end

end A123167.P8110106781215928408

namespace A123167

/-- `(8*n²-2)/a(n-1)` -/
def P8110106781215928408.Spec : Prop :=
  ∀ n, P8110106781215928408.a n = (A123167 (n + 1) : ℚ)

end A123167

/-! ## A123167.P18395573876187746264

`Δ[n*or(1, n+1)]+n-1`
-/

namespace A123167.P18395573876187746264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + ((n : ℤ) - 1)

end

end A123167.P18395573876187746264

namespace A123167

/-- `Δ[n*or(1, n+1)]+n-1` -/
def P18395573876187746264.Spec : Prop :=
  ∀ n, P18395573876187746264.a n = A123167 (n + 1)

end A123167

/-! ## A123167.P18256406902595078343

`gcd(2*(n+1), and(1, n))+2*n`
-/

namespace A123167.P18256406902595078343
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (2 * (n + 1)) (Nat.land 1 n) + 2 * n

end

end A123167.P18256406902595078343

namespace A123167

/-- `gcd(2*(n+1), and(1, n))+2*n` -/
def P18256406902595078343.Spec : Prop :=
  ∀ n, (P18256406902595078343.a n : ℤ) = A123167 (n + 1)

end A123167

/-!
# A123168: Continued fraction for sqrt(2)*(exp(sqrt(2))-1)/(exp(sqrt(2))+1).

The programs for A123168, the canonical program `A123168.P13864632802710169538` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123168 has offset 1).

The definition of A123168 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123168.P13864632802710169538

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=6, a(3)=5, a(4)=14`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123168

/-- `2*a(n-2)-a(n-4)` -/
def P13864632802710169538.Spec : Prop :=
  ∀ n, P13864632802710169538.a n = A123168 (n + 1)

theorem P13864632802710169538.correct : P13864632802710169538.Spec := by
  intro n
  simp only [A123168, Nat.add_sub_cancel]

end A123168

/-! ## A123168.P13382813538097096433

`gcd(2, n)*comp[2*(n+1)]`
-/

namespace A123168.P13382813538097096433
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 2 n * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A123168.P13382813538097096433

namespace A123168

/-- `gcd(2, n)*comp[2*(n+1)]` -/
def P13382813538097096433.Spec : Prop :=
  ∀ n, (P13382813538097096433.a n : ℤ) = A123168 (n + 1)

end A123168

/-! ## A123168.P16270563581594914926

`(4*n-2)/a(n-1)%4` with `a(0)=0, a(1)=1`
-/

namespace A123168.P16270563581594914926
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  ((4 * n : ℤ) - 2 : ℚ) / (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 4 : ℚ)

end

end A123168.P16270563581594914926

namespace A123168

/-- `(4*n-2)/a(n-1)%4` -/
def P16270563581594914926.Spec : Prop :=
  ∀ n, P16270563581594914926.a n = (A123168 (n + 1) : ℚ)

end A123168

/-! ## A123168.P4083504476757615775

`(and(1, n+1)+1)*comp[2*(n+1)]`
-/

namespace A123168.P4083504476757615775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 (n + 1) + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A123168.P4083504476757615775

namespace A123168

/-- `(and(1, n+1)+1)*comp[2*(n+1)]` -/
def P4083504476757615775.Spec : Prop :=
  ∀ n, (P4083504476757615775.a n : ℤ) = A123168 (n + 1)

end A123168

/-! ## A123168.P15692634720181220520

`Δ[ceil(3*n/2)]*comp[2*(n+1)]`
-/

namespace A123168.P15692634720181220520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈3 * ((n : ℚ) / 2)⌉

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n : ℤ)

end

end A123168.P15692634720181220520

namespace A123168

/-- `Δ[ceil(3*n/2)]*comp[2*(n+1)]` -/
def P15692634720181220520.Spec : Prop :=
  ∀ n, P15692634720181220520.a n = A123168 (n + 1)

end A123168

/-! ## A123168.P5573988150088676932

`floor((2*n+1)*gcd(2*n, n²)/(n+1))`
-/

namespace A123168.P5573988150088676932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) * ((Nat.gcd (2 * n) (n ^ 2) : ℚ) / (n + 1 : ℚ))⌋

end

end A123168.P5573988150088676932

namespace A123168

/-- `floor((2*n+1)*gcd(2*n, n²)/(n+1))` -/
def P5573988150088676932.Spec : Prop :=
  ∀ n, P5573988150088676932.a n = A123168 (n + 1)

end A123168

/-! ## A123168.P12649127274735642651

`floor((2*n+1)*lcm(n+1, 2*n)/(n+1)²)`
-/

namespace A123168.P12649127274735642651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * n + 1 : ℚ) * ((Nat.lcm (n + 1) (2 * n) : ℚ) / ((n + 1) ^ 2 : ℚ))⌋

end

end A123168.P12649127274735642651

namespace A123168

/-- `floor((2*n+1)*lcm(n+1, 2*n)/(n+1)²)` -/
def P12649127274735642651.Spec : Prop :=
  ∀ n, P12649127274735642651.a n = A123168 (n + 1)

end A123168

/-! ## A123168.P13938299709054836013

`lcm(2, A110185(n))/2`
-/

namespace A123168.P13938299709054836013
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A110185 n) : ℚ) / 2

end

end A123168.P13938299709054836013

namespace A123168

/-- `lcm(2, A110185(n))/2` -/
def P13938299709054836013.Spec : Prop :=
  ∀ n, P13938299709054836013.a n = (A123168 (n + 1) : ℚ)

end A123168

/-! ## A123168.P7559115685947067852

`abs(n-A084060(n))-1`
-/

namespace A123168.P7559115685947067852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) - A084060 n| - 1

end

end A123168.P7559115685947067852

namespace A123168

/-- `abs(n-A084060(n))-1` -/
def P7559115685947067852.Spec : Prop :=
  ∀ n, P7559115685947067852.a n = A123168 (n + 1)

end A123168

/-! ## A123168.P4954873396283208553

`ceil(abs(1-4*n)*Δ[A007494(n)]/2)-1`
-/

namespace A123168.P4954873396283208553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|1 - (4 * n : ℤ)| * (f1 (n + 1) - f1 n) : ℚ) / 2⌉ - 1

end

end A123168.P4954873396283208553

namespace A123168

/-- `ceil(abs(1-4*n)*Δ[A007494(n)]/2)-1` -/
def P4954873396283208553.Spec : Prop :=
  ∀ n, P4954873396283208553.a n = A123168 (n + 1)

end A123168

/-! ## A123168.P17705062854174533898

`A130824(n)/A000034(n)`
-/

namespace A123168.P17705062854174533898
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A130824 n : ℚ) / (A000034 n : ℚ)

end

end A123168.P17705062854174533898

namespace A123168

/-- `A130824(n)/A000034(n)` -/
def P17705062854174533898.Spec : Prop :=
  ∀ n, P17705062854174533898.a n = (A123168 (n + 1) : ℚ)

end A123168

/-! ## A123168.P16070674441381666634

`A110185(n)/A040001(n)`
-/

namespace A123168.P16070674441381666634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110185 n : ℚ) / (A040001 n : ℚ)

end

end A123168.P16070674441381666634

namespace A123168

/-- `A110185(n)/A040001(n)` -/
def P16070674441381666634.Spec : Prop :=
  ∀ n, P16070674441381666634.a n = (A123168 (n + 1) : ℚ)

end A123168

/-! ## A123168.P17585819118939524303

`A143698(n)/A298036(n)`
-/

namespace A123168.P17585819118939524303
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143698 n : ℚ) / (A298036 n : ℚ)

end

end A123168.P17585819118939524303

namespace A123168

/-- `A143698(n)/A298036(n)` -/
def P17585819118939524303.Spec : Prop :=
  ∀ n, P17585819118939524303.a n = (A123168 (n + 1) : ℚ)

end A123168

/-! ## A123168.P9091011279471085871

`A152746(n)/A298026(n)`
-/

namespace A123168.P9091011279471085871
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A152746 n : ℚ) / (A298026 n : ℚ)

end

end A123168.P9091011279471085871

namespace A123168

/-- `A152746(n)/A298026(n)` -/
def P9091011279471085871.Spec : Prop :=
  ∀ n, P9091011279471085871.a n = (A123168 (n + 1) : ℚ)

end A123168

/-! ## A123168.P11539478572615263509

`A085250(n)/A382154(n)`
-/

namespace A123168.P11539478572615263509
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085250 n : ℚ) / (A382154 n : ℚ)

end

end A123168.P11539478572615263509

namespace A123168

/-- `A085250(n)/A382154(n)` -/
def P11539478572615263509.Spec : Prop :=
  ∀ n, P11539478572615263509.a n = (A123168 (n + 1) : ℚ)

end A123168

/-! ## A123168.P13763421553371547322

`A169642(n)%A130883(n)`
-/

namespace A123168.P13763421553371547322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A169642 n) (A130883 n)

end

end A123168.P13763421553371547322

namespace A123168

/-- `A169642(n)%A130883(n)` -/
def P13763421553371547322.Spec : Prop :=
  ∀ n, P13763421553371547322.a n = A123168 (n + 1)

end A123168

/-! ## A123168.P6037082560398130186

`A298038(n)%A016813(n)`
-/

namespace A123168.P6037082560398130186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A298038 n) (A016813 n)

end

end A123168.P6037082560398130186

namespace A123168

/-- `A298038(n)%A016813(n)` -/
def P6037082560398130186.Spec : Prop :=
  ∀ n, P6037082560398130186.a n = A123168 (n + 1)

end A123168

/-! ## A123168.P6422762795354501929

`gcd(A000384(n), A130824(n))`
-/

namespace A123168.P6422762795354501929
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000384 n) (A130824 n)

end

end A123168.P6422762795354501929

namespace A123168

/-- `gcd(A000384(n), A130824(n))` -/
def P6422762795354501929.Spec : Prop :=
  ∀ n, (P6422762795354501929.a n : ℤ) = A123168 (n + 1)

end A123168

/-! ## A123168.P5947847237916881019

`lcm(A004273(n), A040001(n))`
-/

namespace A123168.P5947847237916881019
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A004273 n) (A040001 n)

end

end A123168.P5947847237916881019

namespace A123168

/-- `lcm(A004273(n), A040001(n))` -/
def P5947847237916881019.Spec : Prop :=
  ∀ n, (P5947847237916881019.a n : ℤ) = A123168 (n + 1)

end A123168

/-! ## A123168.P8549666034870171946

`lcm(A060747(n), A134451(n))`
-/

namespace A123168.P8549666034870171946
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A060747 n) (A134451 n)

end

end A123168.P8549666034870171946

namespace A123168

/-- `lcm(A060747(n), A134451(n))` -/
def P8549666034870171946.Spec : Prop :=
  ∀ n, (P8549666034870171946.a n : ℤ) = A123168 (n + 1)

end A123168

/-!
# A123169: Continued fraction for sqrt(1/2)*(exp(sqrt(1/2))-1)/(exp(sqrt(1/2))+1).

The programs for A123169, the canonical program `A123169.P15423371991629806374` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123169 has offset 1).

The definition of A123169 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123169.P15423371991629806374

`2*a(n-2)-a(n-4)` with `a(0)=0, a(1)=4, a(2)=6, a(3)=20, a(4)=14`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123169

/-- `2*a(n-2)-a(n-4)` -/
def P15423371991629806374.Spec : Prop :=
  ∀ n, P15423371991629806374.a n = A123169 (n + 1)

theorem P15423371991629806374.correct : P15423371991629806374.Spec := by
  intro n
  simp only [A123169, Nat.add_sub_cancel]

end A123169

/-! ## A123169.P5490958087997850477

`record[lcm(4, n)]/gcd(2, n)`
-/

namespace A123169.P5490958087997850477
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A123169.P5490958087997850477

namespace A123169

/-- `record[lcm(4, n)]/gcd(2, n)` -/
def P5490958087997850477.Spec : Prop :=
  ∀ n, P5490958087997850477.a n = (A123169 (n + 1) : ℚ)

end A123169

/-! ## A123169.P7634182287347133997

`xor(4, a(n-2)+6)+6` with `a(0)=0, a(1)=4, a(2)=6`
-/

namespace A123169.P7634182287347133997
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 4, 6] fun n a =>
  Nat.xor 4 (a (n - 2) + 6) + 6

end

end A123169.P7634182287347133997

namespace A123169

/-- `xor(4, a(n-2)+6)+6` -/
def P7634182287347133997.Spec : Prop :=
  ∀ n, (P7634182287347133997.a n : ℤ) = A123169 (n + 1)

end A123169

/-! ## A123169.P14327181654189277384

`record[and(n, -and(4, n))]/(2-n%2)`
-/

namespace A123169.P14327181654189277384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(Nat.land 4 n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (2 - ((n % 2 : ℕ) : ℤ) : ℚ)

end

end A123169.P14327181654189277384

namespace A123169

/-- `record[and(n, -and(4, n))]/(2-n%2)` -/
def P14327181654189277384.Spec : Prop :=
  ∀ n, P14327181654189277384.a n = (A123169 (n + 1) : ℚ)

end A123169

/-! ## A123169.P12010350679536451803

`gcd(4, 2*(n+1))*comp[2*(n+1)]`
-/

namespace A123169.P12010350679536451803
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 4 (2 * (n + 1)) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A123169.P12010350679536451803

namespace A123169

/-- `gcd(4, 2*(n+1))*comp[2*(n+1)]` -/
def P12010350679536451803.Spec : Prop :=
  ∀ n, (P12010350679536451803.a n : ℤ) = A123169 (n + 1)

end A123169

/-! ## A123169.P5769659789128836848

`2*(and(1, n)+1)*comp[2*(n+1)]`
-/

namespace A123169.P5769659789128836848
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (Nat.land 1 n + 1) * SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A123169.P5769659789128836848

namespace A123169

/-- `2*(and(1, n)+1)*comp[2*(n+1)]` -/
def P5769659789128836848.Spec : Prop :=
  ∀ n, (P5769659789128836848.a n : ℤ) = A123169 (n + 1)

end A123169

/-! ## A123169.P16124896033525835541

`(n+3-xor(1, n))*comp[2*(n+1)]`
-/

namespace A123169.P16124896033525835541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3 : ℤ) - (Nat.xor 1 n : ℤ)) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ)

end

end A123169.P16124896033525835541

namespace A123169

/-- `(n+3-xor(1, n))*comp[2*(n+1)]` -/
def P16124896033525835541.Spec : Prop :=
  ∀ n, P16124896033525835541.a n = A123169 (n + 1)

end A123169

/-! ## A123169.P1447495531969454661

`record[lcm(2, n)]*A000034(n)`
-/

namespace A123169.P1447495531969454661
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℤ) * A000034 n

end

end A123169.P1447495531969454661

namespace A123169

/-- `record[lcm(2, n)]*A000034(n)` -/
def P1447495531969454661.Spec : Prop :=
  ∀ n, P1447495531969454661.a n = A123169 (n + 1)

end A123169

/-! ## A123169.P13625766037848985112

`(2*n-1)*and(6, A005901(n))`
-/

namespace A123169.P13625766037848985112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((2 * n : ℤ) - 1) * Int.land 6 (A005901 n)

end

end A123169.P13625766037848985112

namespace A123169

/-- `(2*n-1)*and(6, A005901(n))` -/
def P13625766037848985112.Spec : Prop :=
  ∀ n, P13625766037848985112.a n = A123169 (n + 1)

end A123169

/-! ## A123169.P10810694136247784847

`A004273(n)*A010694(n)`
-/

namespace A123169.P10810694136247784847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n * A010694 n

end

end A123169.P10810694136247784847

namespace A123169

/-- `A004273(n)*A010694(n)` -/
def P10810694136247784847.Spec : Prop :=
  ∀ n, P10810694136247784847.a n = A123169 (n + 1)

end A123169

/-! ## A123169.P10225337074448803803

`A000034(n)*A130824(n)`
-/

namespace A123169.P10225337074448803803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A130824 n

end

end A123169.P10225337074448803803

namespace A123169

/-- `A000034(n)*A130824(n)` -/
def P10225337074448803803.Spec : Prop :=
  ∀ n, P10225337074448803803.a n = A123169 (n + 1)

end A123169

/-! ## A123169.P7525256005025543564

`A004273(n)*A382713(n)`
-/

namespace A123169.P7525256005025543564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n * A382713 n

end

end A123169.P7525256005025543564

namespace A123169

/-- `A004273(n)*A382713(n)` -/
def P7525256005025543564.Spec : Prop :=
  ∀ n, P7525256005025543564.a n = A123169 (n + 1)

end A123169

/-! ## A123169.P10269431893384702391

`A085250(n)/A257088(n)`
-/

namespace A123169.P10269431893384702391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A085250 n : ℚ) / (A257088 n : ℚ)

end

end A123169.P10269431893384702391

namespace A123169

/-- `A085250(n)/A257088(n)` -/
def P10269431893384702391.Spec : Prop :=
  ∀ n, P10269431893384702391.a n = (A123169 (n + 1) : ℚ)

end A123169

/-! ## A123169.P7956579335120936729

`A143698(n)/A298028(n)`
-/

namespace A123169.P7956579335120936729
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A143698 n : ℚ) / (A298028 n : ℚ)

end

end A123169.P7956579335120936729

namespace A123169

/-- `A143698(n)/A298028(n)` -/
def P7956579335120936729.Spec : Prop :=
  ∀ n, P7956579335120936729.a n = (A123169 (n + 1) : ℚ)

end A123169

/-! ## A123169.P166183974636630306

`lcm(A010685(n), A130824(n))`
-/

namespace A123169.P166183974636630306
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010685 n) (A130824 n)

end

end A123169.P166183974636630306

namespace A123169

/-- `lcm(A010685(n), A130824(n))` -/
def P166183974636630306.Spec : Prop :=
  ∀ n, (P166183974636630306.a n : ℤ) = A123169 (n + 1)

end A123169

/-! ## A123169.P6038316512041875333

`(A010684(n)+1)*A004273(n)`
-/

namespace A123169.P6038316512041875333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A010684 n + 1) * A004273 n

end

end A123169.P6038316512041875333

namespace A123169

/-- `(A010684(n)+1)*A004273(n)` -/
def P6038316512041875333.Spec : Prop :=
  ∀ n, P6038316512041875333.a n = A123169 (n + 1)

end A123169

/-! ## A123169.P4793701490356786509

`(A000035(n)+1)*A130824(n)`
-/

namespace A123169.P4793701490356786509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A130824 n

end

end A123169.P4793701490356786509

namespace A123169

/-- `(A000035(n)+1)*A130824(n)` -/
def P4793701490356786509.Spec : Prop :=
  ∀ n, P4793701490356786509.a n = A123169 (n + 1)

end A123169

/-! ## A123169.P12890134254923986813

`A010685(n)*A123168(n+1)`
-/

namespace A123169.P12890134254923986813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010685 n * A123168 (n + 1)

end

end A123169.P12890134254923986813

namespace A123169

/-- `A010685(n)*A123168(n+1)` -/
def P12890134254923986813.Spec : Prop :=
  ∀ n, P12890134254923986813.a n = A123169 (n + 1)

end A123169

/-! ## A123169.P1832174978248208877

`A040001(n+1)*A130824(n)`
-/

namespace A123169.P1832174978248208877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (n + 1) * A130824 n

end

end A123169.P1832174978248208877

namespace A123169

/-- `A040001(n+1)*A130824(n)` -/
def P1832174978248208877.Spec : Prop :=
  ∀ n, P1832174978248208877.a n = A123169 (n + 1)

end A123169

/-! ## A123169.P17419460106770056275

`A130824(n)*A134451(n+1)`
-/

namespace A123169.P17419460106770056275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130824 n * A134451 (n + 1)

end

end A123169.P17419460106770056275

namespace A123169

/-- `A130824(n)*A134451(n+1)` -/
def P17419460106770056275.Spec : Prop :=
  ∀ n, P17419460106770056275.a n = A123169 (n + 1)

end A123169

/-!
# A123171: a(1) = 123, a(n) = sum of digits of all previous terms.

The programs for A123171, there is no canonical definition to state claims against.
-/

/-! ## A123171.P10331720312701592985

`A016052(n+1)+C(A225793(3*n+5), A006507(n+1))`
-/

namespace A123171.P10331720312701592985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016052 (n + 1) + (Nat.choose (A225793 (3 * n + 5)).toNat (A006507 (n + 1)).toNat : ℤ)

end

end A123171.P10331720312701592985

/-! ## A123171.P274346449165134341

`A016052(n+1)*A143010(A151878(n))`
-/

namespace A123171.P274346449165134341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016052 (n + 1) * A143010 (A151878 n).toNat

end

end A123171.P274346449165134341

/-! ## A123171.P11598927110112193084

`3*A230286(n+1)*A158602(A151878(n))`
-/

namespace A123171.P11598927110112193084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230286 (n + 1) * A158602 (A151878 n).toNat

end

end A123171.P11598927110112193084

/-! ## A123171.P1291341256515331703

`(∑[A084228(n+2)]+1)*A158602(A151878(n))`
-/

namespace A123171.P1291341256515331703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084228 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A158602 (A151878 n).toNat

end

end A123171.P1291341256515331703

/-! ## A123171.P11744971111190835901

`A008486(A230286(n+1))*A158602(A151878(n))`
-/

namespace A123171.P11744971111190835901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (A230286 (n + 1)).toNat * A158602 (A151878 n).toNat

end

end A123171.P11744971111190835901

/-! ## A123171.P2078589548965719787

`A016052(n+1)*A158602(A151934(n))`
-/

namespace A123171.P2078589548965719787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016052 (n + 1) * A158602 (A151934 n).toNat

end

end A123171.P2078589548965719787

/-! ## A123171.P649926036066485721

`3*A230286(n+1)*A158602(A151934(n))`
-/

namespace A123171.P649926036066485721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A230286 (n + 1) * A158602 (A151934 n).toNat

end

end A123171.P649926036066485721

/-! ## A123171.P4946614829043176047

`(∑[A084228(n+2)]+1)*A158602(A151934(n))`
-/

namespace A123171.P4946614829043176047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084228 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j + 1) * A158602 (A151934 n).toNat

end

end A123171.P4946614829043176047

/-!
# A123175: Table (read by antidiagonals) where t(0,0)=1, t(m,n) = number of terms above and to the left of t(m,n) (i.e., number of t(k,j)'s, where 0 <= k <= m, 0 <= j <= n, excluding the t(m,n) case itself) which are coprime to (m+n).

The programs for A123175, there is no canonical definition to state claims against.
-/

/-! ## A123175.P10266218771505579605

`A060502(A281955(n+1)²)`
-/

namespace A123175.P10266218771505579605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A281955 (n + 1) ^ 2).toNat

end

end A123175.P10266218771505579605

/-! ## A123175.P944076998153668672

`A060502(A316183(n+1)²)`
-/

namespace A123175.P944076998153668672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A316183 (n + 1) ^ 2).toNat

end

end A123175.P944076998153668672

/-! ## A123175.P14710590899799833324

`A167439(A223473(n+1)+1)`
-/

namespace A123175.P14710590899799833324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167439 (A223473 (n + 1) + 1).toNat

end

end A123175.P14710590899799833324

/-! ## A123175.P4594919733890025342

`A060502(A281955(n+1)^2)`
-/

namespace A123175.P4594919733890025342
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A281955 (n + 1) ^ 2).toNat

end

end A123175.P4594919733890025342

/-! ## A123175.P7830430161755192519

`A060502(A316183(n+1)^2)`
-/

namespace A123175.P7830430161755192519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060502 (A316183 (n + 1) ^ 2).toNat

end

end A123175.P7830430161755192519

/-!
# A123176: Numbers n such that (2^p + 1)/3 is prime, where p is the n-th prime.

The programs for A123176, there is no canonical definition to state claims against.
-/

/-! ## A123176.P10011114668786292865

`A000720(A000978(n+1))`
-/

namespace A123176.P10011114668786292865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000978 (n + 1)).toNat

end

end A123176.P10011114668786292865

/-! ## A123176.P16628025331427133858

`A099801(A127936(n+1))`
-/

namespace A123176.P16628025331427133858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099801 (A127936 (n + 1)).toNat

end

end A123176.P16628025331427133858

/-! ## A123176.P7362956801245983387

`A000720(A107036(n+2))`
-/

namespace A123176.P7362956801245983387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A107036 (n + 2)).toNat

end

end A123176.P7362956801245983387

/-! ## A123176.P2371356544304733699

`record[A061395(A092559(n+1))]`
-/

namespace A123176.P2371356544304733699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (A092559 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123176.P2371356544304733699

/-!
# A123180: 

The programs for A123180, there is no canonical definition to state claims against.
-/

/-! ## A123180.P7731243832611960069

`A000058(2*n)`
-/

namespace A123180.P7731243832611960069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000058 (2 * n)

end

end A123180.P7731243832611960069

/-!
# A123183: a(1)=-1; a(2)=-1; a(3)=-2; a(n) = 4*a(n-1) - 3*a(n-2) for n >= 4.

The programs for A123183, the canonical program `A123183.P8194852363197508480` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123183 has offset 1).

The definition of A123183 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `4*a(n-1)-3*a(n-2)` (program `A123183.P8194852363197508480`, by `A123183.P8194852363197508480.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123183.P8194852363197508480

`4*a(n-1)-3*a(n-2)` with `a(0)=-1, a(1)=-1, a(2)=-2`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123183

/-- `4*a(n-1)-3*a(n-2)` -/
def P8194852363197508480.Spec : Prop :=
  ∀ n, P8194852363197508480.a n = A123183 (n + 1)

theorem P8194852363197508480.correct : P8194852363197508480.Spec := by
  intro n
  simp only [A123183, Nat.add_sub_cancel]

end A123183

/-! ## A123183.P12626281884262060910

`-A124302(n)`
-/

namespace A123183.P12626281884262060910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A124302 n

end

end A123183.P12626281884262060910

namespace A123183

/-- `-A124302(n)` -/
def P12626281884262060910.Spec : Prop :=
  ∀ n, P12626281884262060910.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P11128778301722877544

`floor(∑[-3^(n-2)])`
-/

namespace A123183.P11128778301722877544
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  -((3 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A123183.P11128778301722877544

namespace A123183

/-- `floor(∑[-3^(n-2)])` -/
def P11128778301722877544.Spec : Prop :=
  ∀ n, P11128778301722877544.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P7513936716028449861

`ogf((-1+3x-x^2)/(1-4x+3x^2))`
-/

namespace A123183.P7513936716028449861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-1, 3, -1] [1, -4, 3] n

end

end A123183.P7513936716028449861

namespace A123183

/-- `ogf((-1+3x-x^2)/(1-4x+3x^2))` -/
def P7513936716028449861.Spec : Prop :=
  ∀ n, P7513936716028449861.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P9199369551736512450

`or(2, -ceil(∑[3^(n-2)]))`
-/

namespace A123183.P9199369551736512450
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (-⌈∑ j ∈ Finset.range (n + 1), f1 j⌉)

end

end A123183.P9199369551736512450

namespace A123183

/-- `or(2, -ceil(∑[3^(n-2)]))` -/
def P9199369551736512450.Spec : Prop :=
  ∀ n, P9199369551736512450.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P8264736208103235064

`and(-ceil(∑[3^(n-2)]), -1)`
-/

namespace A123183.P8264736208103235064
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-⌈∑ j ∈ Finset.range (n + 1), f1 j⌉) (-1)

end

end A123183.P8264736208103235064

namespace A123183

/-- `and(-ceil(∑[3^(n-2)]), -1)` -/
def P8264736208103235064.Spec : Prop :=
  ∀ n, P8264736208103235064.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P3075024813615604360

`3*a(n-1)+1` with `a(0)=-1, a(1)=-1`
-/

namespace A123183.P3075024813615604360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n a =>
  3 * a (n - 1) + 1

end

end A123183.P3075024813615604360

namespace A123183

/-- `3*a(n-1)+1` -/
def P3075024813615604360.Spec : Prop :=
  ∀ n, P3075024813615604360.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P10995397867990978597

`∑[3*a(n-1)]` with `a(0)=-1, a(1)=0, a(2)=-1`
-/

namespace A123183.P10995397867990978597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, 0, -1] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123183.P10995397867990978597

namespace A123183

/-- `∑[3*a(n-1)]` -/
def P10995397867990978597.Spec : Prop :=
  ∀ n, P10995397867990978597.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P2348602049222160876

`1-or(2, ∑[floor(3^(n-2))])`
-/

namespace A123183.P2348602049222160876
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.lor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123183.P2348602049222160876

namespace A123183

/-- `1-or(2, ∑[floor(3^(n-2))])` -/
def P2348602049222160876.Spec : Prop :=
  ∀ n, P2348602049222160876.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P2629966446610968050

`1-xor(2, ∑[floor(3^(n-2))])`
-/

namespace A123183.P2629966446610968050
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.xor 2 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123183.P2629966446610968050

namespace A123183

/-- `1-xor(2, ∑[floor(3^(n-2))])` -/
def P2629966446610968050.Spec : Prop :=
  ∀ n, P2629966446610968050.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P15629439203270419177

`a(n-1)-floor(3^(n-2))` with `a(0)=-1`
-/

namespace A123183.P15629439203270419177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1] fun n a =>
  a (n - 1) - ⌊(3 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋

end

end A123183.P15629439203270419177

namespace A123183

/-- `a(n-1)-floor(3^(n-2))` -/
def P15629439203270419177.Spec : Prop :=
  ∀ n, P15629439203270419177.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P1323555793901702015

`4-3*(1-a(n-1))` with `a(0)=-1, a(1)=-1`
-/

namespace A123183.P1323555793901702015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n a =>
  4 - 3 * (1 - a (n - 1))

end

end A123183.P1323555793901702015

namespace A123183

/-- `4-3*(1-a(n-1))` -/
def P1323555793901702015.Spec : Prop :=
  ∀ n, P1323555793901702015.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P8614363679048399487

`a(n-1)+1+a(n-1)+a(n-1)` with `a(0)=-1, a(1)=-1`
-/

namespace A123183.P8614363679048399487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [-1, -1] fun n a =>
  a (n - 1) + 1 + (a (n - 1) + a (n - 1))

end

end A123183.P8614363679048399487

namespace A123183

/-- `a(n-1)+1+a(n-1)+a(n-1)` -/
def P8614363679048399487.Spec : Prop :=
  ∀ n, P8614363679048399487.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P16827142354762666902

`floor(3^(n-1))-A007051(n)`
-/

namespace A123183.P16827142354762666902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A007051 n

end

end A123183.P16827142354762666902

namespace A123183

/-- `floor(3^(n-1))-A007051(n)` -/
def P16827142354762666902.Spec : Prop :=
  ∀ n, P16827142354762666902.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P7864966070421395822

`floor(3^(n-1))-A124302(n+1)`
-/

namespace A123183.P7864966070421395822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A124302 (n + 1)

end

end A123183.P7864966070421395822

namespace A123183

/-- `floor(3^(n-1))-A124302(n+1)` -/
def P7864966070421395822.Spec : Prop :=
  ∀ n, P7864966070421395822.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P2308954609347805092

`A085279(n)-A099754(n)`
-/

namespace A123183.P2308954609347805092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085279 n - A099754 n

end

end A123183.P2308954609347805092

namespace A123183

/-- `A085279(n)-A099754(n)` -/
def P2308954609347805092.Spec : Prop :=
  ∀ n, P2308954609347805092.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P3663394929189908014

`A094388(n)-A115098(n)`
-/

namespace A123183.P3663394929189908014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094388 n - A115098 n

end

end A123183.P3663394929189908014

namespace A123183

/-- `A094388(n)-A115098(n)` -/
def P3663394929189908014.Spec : Prop :=
  ∀ n, P3663394929189908014.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P14450074733732654044

`A097861(n)-A116410(n)`
-/

namespace A123183.P14450074733732654044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097861 n - A116410 n

end

end A123183.P14450074733732654044

namespace A123183

/-- `A097861(n)-A116410(n)` -/
def P14450074733732654044.Spec : Prop :=
  ∀ n, P14450074733732654044.a n = A123183 (n + 1)

end A123183

/-! ## A123183.P2544004904680531985

`A005578(n)-(A087432(n)+1)`
-/

namespace A123183.P2544004904680531985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n - (A087432 n + 1)

end

end A123183.P2544004904680531985

namespace A123183

/-- `A005578(n)-(A087432(n)+1)` -/
def P2544004904680531985.Spec : Prop :=
  ∀ n, P2544004904680531985.a n = A123183 (n + 1)

end A123183

/-!
# A123184: Expansion of -x*(3*x^4+9*x^3-29*x^2+12*x-1)/((x-1)*(x^4-3*x^3-27*x^2+12*x-1)).

The programs for A123184, the canonical program `A123184.P16358927422362208465` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123184 has offset 1).

The definition of A123184 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-12x+29x^2-9x^3-3x^4)/(1-13x+39x^2-24x^3-4x^4+x^5))` (program `A123184.P16358927422362208465`, by `A123184.P16358927422362208465.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123184.P16358927422362208465

`ogf((1-12x+29x^2-9x^3-3x^4)/(1-13x+39x^2-24x^3-4x^4+x^5))`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123184

/-- `ogf((1-12x+29x^2-9x^3-3x^4)/(1-13x+39x^2-24x^3-4x^4+x^5))` -/
def P16358927422362208465.Spec : Prop :=
  ∀ n, P16358927422362208465.a n = A123184 (n + 1)

theorem P16358927422362208465.correct : P16358927422362208465.Spec := by
  intro n
  simp only [A123184, Nat.add_sub_cancel]

end A123184

/-! ## A123184.P1437858426347873766

`or(A008676(A091713(n+1)), A091713(n+1))`
-/

namespace A123184.P1437858426347873766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A008676 (A091713 (n + 1)).toNat) (A091713 (n + 1))

end

end A123184.P1437858426347873766

namespace A123184

/-- `or(A008676(A091713(n+1)), A091713(n+1))` -/
def P1437858426347873766.Spec : Prop :=
  ∀ n, P1437858426347873766.a n = A123184 (n + 1)

end A123184

/-! ## A123184.P9875798609082138875

`or(A091713(n+1), A134810(A222372(n+1)))`
-/

namespace A123184.P9875798609082138875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A091713 (n + 1)) (A134810 (A222372 (n + 1)).toNat)

end

end A123184.P9875798609082138875

namespace A123184

/-- `or(A091713(n+1), A134810(A222372(n+1)))` -/
def P9875798609082138875.Spec : Prop :=
  ∀ n, P9875798609082138875.a n = A123184 (n + 1)

end A123184

/-!
# A123187: Triangle of coefficients in expansion of (1 + 13*x)^n.

The programs for A123187, the canonical program `A123187.P2951551471935451599` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123187 has offset 0).

The definition of A123187 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3997 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A123187.P6954242657923559116

`13^A002262(n)*A007318(n)`
-/

namespace A123187.P6954242657923559116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (13 : ℚ) ^ (A002262 n : ℤ) * (A007318 n : ℚ)

end

end A123187.P6954242657923559116

namespace A123187

/-- `13^A002262(n)*A007318(n)` -/
def P6954242657923559116.Spec : Prop :=
  ∀ n, P6954242657923559116.a n = (A123187 n : ℚ)

end A123187

/-! ## A123187.P6932248541293016443

`abs(A130595(n))*13^A002262(n)`
-/

namespace A123187.P6932248541293016443
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (|A130595 n| : ℚ) * (13 : ℚ) ^ (A002262 n : ℤ)

end

end A123187.P6932248541293016443

namespace A123187

/-- `abs(A130595(n))*13^A002262(n)` -/
def P6932248541293016443.Spec : Prop :=
  ∀ n, P6932248541293016443.a n = (A123187 n : ℚ)

end A123187

/-! ## A123187.P2951551471935451599

`A001022(A002262(n))*A007318(n)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A123187

/-- `A001022(A002262(n))*A007318(n)` -/
def P2951551471935451599.Spec : Prop :=
  ∀ n, P2951551471935451599.a n = A123187 n

theorem P2951551471935451599.correct : P2951551471935451599.Spec := by
  intro n
  simp only [A123187]

end A123187

/-! ## A123187.P4100730684059776279

`abs(A001022(A002262(n))*A108086(n))`
-/

namespace A123187.P4100730684059776279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001022 (A002262 n).toNat * A108086 n|

end

end A123187.P4100730684059776279

namespace A123187

/-- `abs(A001022(A002262(n))*A108086(n))` -/
def P4100730684059776279.Spec : Prop :=
  ∀ n, P4100730684059776279.a n = A123187 n

end A123187

/-! ## A123187.P7204250325820346986

`abs(A001022(A002262(n))*A130595(n))`
-/

namespace A123187.P7204250325820346986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001022 (A002262 n).toNat * A130595 n|

end

end A123187.P7204250325820346986

namespace A123187

/-- `abs(A001022(A002262(n))*A130595(n))` -/
def P7204250325820346986.Spec : Prop :=
  ∀ n, P7204250325820346986.a n = A123187 n

end A123187

/-! ## A123187.P11285490490990785183

`sqrt(A008459(n))*A001022(A002262(n))`
-/

namespace A123187.P11285490490990785183
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ) * (A001022 (A002262 n).toNat : ℝ)

end

end A123187.P11285490490990785183

namespace A123187

/-- `sqrt(A008459(n))*A001022(A002262(n))` -/
def P11285490490990785183.Spec : Prop :=
  ∀ n, P11285490490990785183.a n = (A123187 n : ℝ)

end A123187

/-! ## A123187.P15738802560533802989

`(A102363(n+1)-A102363(n))*13^A002262(n)`
-/

namespace A123187.P15738802560533802989
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A102363 (n + 1) - A102363 n : ℚ) * (13 : ℚ) ^ (A002262 n : ℤ)

end

end A123187.P15738802560533802989

namespace A123187

/-- `(A102363(n+1)-A102363(n))*13^A002262(n)` -/
def P15738802560533802989.Spec : Prop :=
  ∀ n, P15738802560533802989.a n = (A123187 n : ℚ)

end A123187

/-! ## A123187.P17566455183290736532

`A133371(A061579(n))`
-/

namespace A123187.P17566455183290736532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133371 (A061579 n).toNat

end

end A123187.P17566455183290736532

namespace A123187

/-- `A133371(A061579(n))` -/
def P17566455183290736532.Spec : Prop :=
  ∀ n, P17566455183290736532.a n = A123187 n

end A123187

/-! ## A123187.P8171176043860319899

`A007318(n)*A033049(A059268(n))`
-/

namespace A123187.P8171176043860319899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n * A033049 (A059268 n).toNat

end

end A123187.P8171176043860319899

namespace A123187

/-- `A007318(n)*A033049(A059268(n))` -/
def P8171176043860319899.Spec : Prop :=
  ∀ n, P8171176043860319899.a n = A123187 n

end A123187

/-! ## A123187.P13435393550715763613

`Δ[A102363(n)]*A033049(A059268(n))`
-/

namespace A123187.P13435393550715763613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A033049 (A059268 n).toNat

end

end A123187.P13435393550715763613

namespace A123187

/-- `Δ[A102363(n)]*A033049(A059268(n))` -/
def P13435393550715763613.Spec : Prop :=
  ∀ n, P13435393550715763613.a n = A123187 n

end A123187

/-!
# A123189: a(0) = 0, a(1) = 1, a(2)=1; a(n) = 3a(n-1) + 3a(n-2) - 4a(n-3) for n >= 3.

The programs for A123189, the canonical program `A123189.P5492471142296345347` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123189 has offset 0).

The definition of A123189 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*a(n-1)+3*a(n-2)-4*a(n-3)` (program `A123189.P5492471142296345347`, by `A123189.P5492471142296345347.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123189.P5492471142296345347

`3*a(n-1)+3*a(n-2)-4*a(n-3)` with `a(0)=0, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123189

/-- `3*a(n-1)+3*a(n-2)-4*a(n-3)` -/
def P5492471142296345347.Spec : Prop :=
  ∀ n, P5492471142296345347.a n = A123189 n

theorem P5492471142296345347.correct : P5492471142296345347.Spec := by
  intro n
  simp only [A123189]

end A123189

/-! ## A123189.P11537826604027648293

`ogf((x-2x^2)/(1-3x-3x^2+4x^3))`
-/

namespace A123189.P11537826604027648293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, -2] [1, -3, -3, 4] n

end

end A123189.P11537826604027648293

namespace A123189

/-- `ogf((x-2x^2)/(1-3x-3x^2+4x^3))` -/
def P11537826604027648293.Spec : Prop :=
  ∀ n, P11537826604027648293.a n = A123189 n

end A123189

/-! ## A123189.P16547530715972778252

`ceil(A010366(n+4)/3)-A172309(A301706(n+1))`
-/

namespace A123189.P16547530715972778252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A010366 (n + 4) : ℚ) / 3⌉ - A172309 (A301706 (n + 1)).toNat

end

end A123189.P16547530715972778252

namespace A123189

/-- `ceil(A010366(n+4)/3)-A172309(A301706(n+1))` -/
def P16547530715972778252.Spec : Prop :=
  ∀ n, P16547530715972778252.a n = A123189 n

end A123189

/-!
# A123190: Sum of the entries of the first row of the matrix M^n, where M is the 4 X 4 matrix [[ -1, 3, -3, 1 ], [ 3, -6, 3, 0 ], [ -3, 0, 3, 0 ], [ 1, 4, 1, 0 ]].

The programs for A123190, there is no canonical definition to state claims against.
-/

/-! ## A123190.P7305907049381235876

`A292977(A251689(n))`
-/

namespace A123190.P7305907049381235876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292977 (A251689 n).toNat

end

end A123190.P7305907049381235876

/-!
# A123191: Triangle read by rows: T(n,k) is the coefficient of x^k in the polynomial P[n] defined by P[0]=1, P[1]=x-1, P[n]=(1-x)P[n-1]+xP[n-2] for n>=2. Alternatively, P[n]=-1-(-x)^n-3*Sum((-x)^k,k=1..n-1).

The programs for A123191, there is no canonical definition to state claims against.
-/

/-! ## A123191.P15336318894750769158

`or(1, Δ[A040005(A002262(n))])`
-/

namespace A123191.P15336318894750769158
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040005 (A002262 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A123191.P15336318894750769158

/-! ## A123191.P12635998930705566654

`or(1, Δ[A059126(A059268(n))])`
-/

namespace A123191.P12635998930705566654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (n + 1) - f1 n)

end

end A123191.P12635998930705566654

/-! ## A123191.P4937262725174259850

`A122553(A014473(n))*A165326(A294317(n))`
-/

namespace A123191.P4937262725174259850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 (A014473 n).toNat * A165326 (A294317 n).toNat

end

end A123191.P4937262725174259850

/-! ## A123191.P12267511270865538819

`A122553(A132896(n))*A165326(A294317(n))`
-/

namespace A123191.P12267511270865538819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 (A132896 n).toNat * A165326 (A294317 n).toNat

end

end A123191.P12267511270865538819

/-! ## A123191.P8993410953426706112

`A122553(A007318(n)-1)*A165326(A294317(n))`
-/

namespace A123191.P8993410953426706112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 (A007318 n - 1).toNat * A165326 (A294317 n).toNat

end

end A123191.P8993410953426706112

/-!
# A123193: Natural numbers with number of divisors equal to a Fibonacci number.

The programs for A123193, there is no canonical definition to state claims against.
-/

/-! ## A123193.P3049694911002404944

`eq[1, A006839(A000005(n+1))]+1`
-/

namespace A123193.P3049694911002404944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006839 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123193.P3049694911002404944

/-! ## A123193.P14160236200826774584

`filter[n+1, A122895(#)]`
-/

namespace A123193.P14160236200826774584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A122895 (f1 j) = 1) n)

end

end A123193.P14160236200826774584

/-! ## A123193.P18343124072113231494

`eq[1, A122895(n+1)]+1`
-/

namespace A123193.P18343124072113231494
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122895 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A123193.P18343124072113231494

/-! ## A123193.P9711395190441037737

`record[A000027(n+1)*A122895(n+1)]`
-/

namespace A123193.P9711395190441037737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (n + 1) * A122895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123193.P9711395190441037737

/-! ## A123193.P14321262162166238672

`eq[A000119(A032741(n)), A057427(n)]`
-/

namespace A123193.P14321262162166238672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A032741 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123193.P14321262162166238672

/-! ## A123193.P8821035388369128765

`eq[A000007(n), A212278(A032741(n))]`
-/

namespace A123193.P8821035388369128765
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212278 (A032741 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A123193.P8821035388369128765

/-! ## A123193.P4108556224595962898

`eq[A032741(n+1), A219641(A000005(n+1))]+1`
-/

namespace A123193.P4108556224595962898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219641 (A000005 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A123193.P4108556224595962898

/-! ## A123193.P2206421785241761175

`record[A008619(n)*A122895(A008619(n))]`
-/

namespace A123193.P2206421785241761175
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n * A122895 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123193.P2206421785241761175

/-!
# A123194: a(n) = (n+1)*Fibonacci(n+2) + 3.

The programs for A123194, the canonical program `A123194.P1366649504435929379` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123194 has offset 0).

The definition of A123194 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A123194.P1366649504435929379

`3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` with `a(0)=4, a(1)=7, a(2)=12, a(3)=23, a(4)=43`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123194

/-- `3*a(n-1)-a(n-2)-3*a(n-3)+a(n-4)+a(n-5)` -/
def P1366649504435929379.Spec : Prop :=
  ∀ n, P1366649504435929379.a n = A123194 n

theorem P1366649504435929379.correct : P1366649504435929379.Spec := by
  intro n
  simp only [A123194]

end A123194

/-! ## A123194.P9646191289497946916

`A023607(n+1)+3`
-/

namespace A123194.P9646191289497946916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023607 (n + 1) + 3

end

end A123194.P9646191289497946916

namespace A123194

/-- `A023607(n+1)+3` -/
def P9646191289497946916.Spec : Prop :=
  ∀ n, P9646191289497946916.a n = A123194 n

end A123194

/-! ## A123194.P6111646052170856053

`∑[A094588(n+1)]+3`
-/

namespace A123194.P6111646052170856053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094588 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A123194.P6111646052170856053

namespace A123194

/-- `∑[A094588(n+1)]+3` -/
def P6111646052170856053.Spec : Prop :=
  ∀ n, P6111646052170856053.a n = A123194 n

end A123194

/-! ## A123194.P8262543714161196551

`(n+1)*A000045(n+2)+3`
-/

namespace A123194.P8262543714161196551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000045 (n + 2) + 3

end

end A123194.P8262543714161196551

namespace A123194

/-- `(n+1)*A000045(n+2)+3` -/
def P8262543714161196551.Spec : Prop :=
  ∀ n, P8262543714161196551.a n = A123194 n

end A123194

/-! ## A123194.P4124456371156013651

`(n+1)*A212804(n+3)+3`
-/

namespace A123194.P4124456371156013651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A212804 (n + 3) + 3

end

end A123194.P4124456371156013651

namespace A123194

/-- `(n+1)*A212804(n+3)+3` -/
def P4124456371156013651.Spec : Prop :=
  ∀ n, P4124456371156013651.a n = A123194 n

end A123194

/-! ## A123194.P9880181501552110501

`(n+1)*A324969(n+3)+3`
-/

namespace A123194.P9880181501552110501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A324969 (n + 3) + 3

end

end A123194.P9880181501552110501

namespace A123194

/-- `(n+1)*A324969(n+3)+3` -/
def P9880181501552110501.Spec : Prop :=
  ∀ n, P9880181501552110501.a n = A123194 n

end A123194

/-! ## A123194.P13396603924471192666

`(n+1)*A103609(2*(n+2))+3`
-/

namespace A123194.P13396603924471192666
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A103609 (2 * (n + 2)) + 3

end

end A123194.P13396603924471192666

namespace A123194

/-- `(n+1)*A103609(2*(n+2))+3` -/
def P13396603924471192666.Spec : Prop :=
  ∀ n, P13396603924471192666.a n = A123194 n

end A123194

/-! ## A123194.P17628453708364976708

`(n+1)*A001611(n+2)+2-n`
-/

namespace A123194.P17628453708364976708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A001611 (n + 2) + 2 - (n : ℤ)

end

end A123194.P17628453708364976708

namespace A123194

/-- `(n+1)*A001611(n+2)+2-n` -/
def P17628453708364976708.Spec : Prop :=
  ∀ n, P17628453708364976708.a n = A123194 n

end A123194

/-! ## A123194.P16115605061504038014

`A020706(n)+A014286(n)`
-/

namespace A123194.P16115605061504038014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020706 n + A014286 n

end

end A123194.P16115605061504038014

namespace A123194

/-- `A020706(n)+A014286(n)` -/
def P16115605061504038014.Spec : Prop :=
  ∀ n, P16115605061504038014.a n = A123194 n

end A123194

/-! ## A123194.P6161953039118954524

`A018910(n)+∑[A099920(n)]`
-/

namespace A123194.P6161953039118954524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099920 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018910 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123194.P6161953039118954524

namespace A123194

/-- `A018910(n)+∑[A099920(n)]` -/
def P6161953039118954524.Spec : Prop :=
  ∀ n, P6161953039118954524.a n = A123194 n

end A123194

/-! ## A123194.P12651379146451375245

`A157726(n)+A136376(n+1)`
-/

namespace A123194.P12651379146451375245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157726 n + A136376 (n + 1)

end

end A123194.P12651379146451375245

namespace A123194

/-- `A157726(n)+A136376(n+1)` -/
def P12651379146451375245.Spec : Prop :=
  ∀ n, P12651379146451375245.a n = A123194 n

end A123194

/-! ## A123194.P8587606293769809228

`A190062(n+1)+A136391(n+2)+2`
-/

namespace A123194.P8587606293769809228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190062 (n + 1) + (A136391 (n + 2) + 2)

end

end A123194.P8587606293769809228

namespace A123194

/-- `A190062(n+1)+A136391(n+2)+2` -/
def P8587606293769809228.Spec : Prop :=
  ∀ n, P8587606293769809228.a n = A123194 n

end A123194

/-! ## A123194.P7036553776200838334

`record[A104796(n+1)+3]`
-/

namespace A123194.P7036553776200838334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104796 (n + 1) + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123194.P7036553776200838334

namespace A123194

/-- `record[A104796(n+1)+3]` -/
def P7036553776200838334.Spec : Prop :=
  ∀ n, P7036553776200838334.a n = A123194 n

end A123194

/-! ## A123194.P5545706605992455314

`A318243(∑[n+1])+3`
-/

namespace A123194.P5545706605992455314
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318243 (∑ j ∈ Finset.range (n + 1), f1 j) + 3

end

end A123194.P5545706605992455314

namespace A123194

/-- `A318243(∑[n+1])+3` -/
def P5545706605992455314.Spec : Prop :=
  ∀ n, P5545706605992455314.a n = A123194 n

end A123194

/-! ## A123194.P9044826576051941040

`(n+1)*A208519(A000217(n+1))+3`
-/

namespace A123194.P9044826576051941040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A208519 (A000217 (n + 1)).toNat + 3

end

end A123194.P9044826576051941040

namespace A123194

/-- `(n+1)*A208519(A000217(n+1))+3` -/
def P9044826576051941040.Spec : Prop :=
  ∀ n, P9044826576051941040.a n = A123194 n

end A123194

/-!
# A123196: a(1) = 2; a(n+1) = a(n) + p, where p is the largest prime <= a(n).

The programs for A123196, there is no canonical definition to state claims against.
-/

/-! ## A123196.P5835684914806285664

`∑[A068524(n+1)]`
-/

namespace A123196.P5835684914806285664
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068524 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123196.P5835684914806285664

/-! ## A123196.P12582072379915354205

`∑[A075058(n)]+1`
-/

namespace A123196.P12582072379915354205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A123196.P12582072379915354205

/-! ## A123196.P4448320690192732268

`A285010(n+1)-1`
-/

namespace A123196.P4448320690192732268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285010 (n + 1) - 1

end

end A123196.P4448320690192732268

/-! ## A123196.P6416650720313712097

`∑[A075058(A028310(n))]`
-/

namespace A123196.P6416650720313712097
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075058 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123196.P6416650720313712097

/-! ## A123196.P16599362390690261858

`∑[A054977(n)*A075058(n)]`
-/

namespace A123196.P16599362390690261858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n * A075058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123196.P16599362390690261858

/-! ## A123196.P13125101347196004142

`A000124(n)-∑[n-A075058(n)]`
-/

namespace A123196.P13125101347196004142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A075058 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123196.P13125101347196004142

/-!
# A123197: a(n) = (2*n+1)*(n+1)*(2*n^2+3*n-1).

The programs for A123197, the canonical program `A123197.P8612777600521265851` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123197 has offset 0).

The definition of A123197 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2*n+1)*(n+1)*(2*n²+3*n-1)` (program `A123197.P8612777600521265851`, by `A123197.P8612777600521265851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123197.P9693683955396945680

`∑[(4*n+1)*(4*n²+2*n-1)]`
-/

namespace A123197.P9693683955396945680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n + 1 : ℤ) * ((4 * n ^ 2 + 2 * n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A123197.P9693683955396945680

namespace A123197

/-- `∑[(4*n+1)*(4*n²+2*n-1)]` -/
def P9693683955396945680.Spec : Prop :=
  ∀ n, P9693683955396945680.a n = A123197 n

end A123197

/-! ## A123197.P8612777600521265851

`(2*n+1)*(n+1)*(2*n²+3*n-1)`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123197

/-- `(2*n+1)*(n+1)*(2*n²+3*n-1)` -/
def P8612777600521265851.Spec : Prop :=
  ∀ n, P8612777600521265851.a n = A123197 n

theorem P8612777600521265851.correct : P8612777600521265851.Spec := by
  intro n
  simp only [A123197]

end A123197

/-! ## A123197.P1692637203401190267

`A014106(n)²-1`
-/

namespace A123197.P1692637203401190267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014106 n ^ 2 - 1

end

end A123197.P1692637203401190267

namespace A123197

/-- `A014106(n)²-1` -/
def P1692637203401190267.Spec : Prop :=
  ∀ n, P1692637203401190267.a n = A123197 n

end A123197

/-! ## A123197.P9608854407152356706

`A110325(n+1)²-1`
-/

namespace A123197.P9608854407152356706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110325 (n + 1) ^ 2 - 1

end

end A123197.P9608854407152356706

namespace A123197

/-- `A110325(n+1)²-1` -/
def P9608854407152356706.Spec : Prop :=
  ∀ n, P9608854407152356706.a n = A123197 n

end A123197

/-! ## A123197.P17096443686330268113

`n*A144129(n+1)-(n+1)`
-/

namespace A123197.P17096443686330268113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144129 (n + 1) - (n + 1 : ℤ)

end

end A123197.P17096443686330268113

namespace A123197

/-- `n*A144129(n+1)-(n+1)` -/
def P17096443686330268113.Spec : Prop :=
  ∀ n, P17096443686330268113.a n = A123197 n

end A123197

/-! ## A123197.P16640933960266233502

`A085740(2*n+1)-(2*n+1)`
-/

namespace A123197.P16640933960266233502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085740 (2 * n + 1) - (2 * n + 1 : ℤ)

end

end A123197.P16640933960266233502

namespace A123197

/-- `A085740(2*n+1)-(2*n+1)` -/
def P16640933960266233502.Spec : Prop :=
  ∀ n, P16640933960266233502.a n = A123197 n

end A123197

/-! ## A123197.P1286393373422507329

`A033487(2*n)-A000384(n+1)`
-/

namespace A123197.P1286393373422507329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 (2 * n) - A000384 (n + 1)

end

end A123197.P1286393373422507329

namespace A123197

/-- `A033487(2*n)-A000384(n+1)` -/
def P1286393373422507329.Spec : Prop :=
  ∀ n, P1286393373422507329.a n = A123197 n

end A123197

/-! ## A123197.P1697253776299331042

`A063249(n+1)-A001621(2*n+1)`
-/

namespace A123197.P1697253776299331042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063249 (n + 1) - A001621 (2 * n + 1)

end

end A123197.P1697253776299331042

namespace A123197

/-- `A063249(n+1)-A001621(2*n+1)` -/
def P1697253776299331042.Spec : Prop :=
  ∀ n, P1697253776299331042.a n = A123197 n

end A123197

/-! ## A123197.P13490181426850076441

`A033487(2*n)-A000217(2*n+1)`
-/

namespace A123197.P13490181426850076441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033487 (2 * n) - A000217 (2 * n + 1)

end

end A123197.P13490181426850076441

namespace A123197

/-- `A033487(2*n)-A000217(2*n+1)` -/
def P13490181426850076441.Spec : Prop :=
  ∀ n, P13490181426850076441.a n = A123197 n

end A123197

/-! ## A123197.P8234436025805873767

`A168566(2*n+1)-A028387(2*n)`
-/

namespace A123197.P8234436025805873767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168566 (2 * n + 1) - A028387 (2 * n)

end

end A123197.P8234436025805873767

namespace A123197

/-- `A168566(2*n+1)-A028387(2*n)` -/
def P8234436025805873767.Spec : Prop :=
  ∀ n, P8234436025805873767.a n = A123197 n

end A123197

/-! ## A123197.P12571287662593728292

`A000537(2*n+1)-A002378(2*n+1)`
-/

namespace A123197.P12571287662593728292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000537 (2 * n + 1) - A002378 (2 * n + 1)

end

end A123197.P12571287662593728292

namespace A123197

/-- `A000537(2*n+1)-A002378(2*n+1)` -/
def P12571287662593728292.Spec : Prop :=
  ∀ n, P12571287662593728292.a n = A123197 n

end A123197

/-! ## A123197.P14399494519100189635

`A141431(∑[n+1])²-1`
-/

namespace A123197.P14399494519100189635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141431 (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - 1

end

end A123197.P14399494519100189635

namespace A123197

/-- `A141431(∑[n+1])²-1` -/
def P14399494519100189635.Spec : Prop :=
  ∀ n, P14399494519100189635.a n = A123197 n

end A123197

/-!
# A123198: a(n) = ((n+1)*(2*n-1))^2.

The programs for A123198, the canonical program `A123198.P11688853995310839355` is in `Seq.B000.C017`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A123198 has offset 0).

The definition of A123198 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `((n+1)*(2*n-1))²` (program `A123198.P11688853995310839355`, by `A123198.P11688853995310839355.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A123198.P11688853995310839355

`((n+1)*(2*n-1))²`

The canonical program, it is in `Seq.B000.C017`.
-/

namespace A123198

/-- `((n+1)*(2*n-1))²` -/
def P11688853995310839355.Spec : Prop :=
  ∀ n, P11688853995310839355.a n = A123198 n

theorem P11688853995310839355.correct : P11688853995310839355.Spec := by
  intro n
  simp only [A123198]

end A123198

/-! ## A123198.P3526045989636937224

`∑[a(n-1)-4]^2` with `a(0)=1`
-/

namespace A123198.P3526045989636937224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A123198.P3526045989636937224

namespace A123198

/-- `∑[a(n-1)-4]^2` -/
def P3526045989636937224.Spec : Prop :=
  ∀ n, P3526045989636937224.a n = A123198 n

end A123198

/-! ## A123198.P11978176983864220895

`floor(∑[a(n-1)-4]²)` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A123198.P11978176983864220895
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 (n - 1) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ 2

end

end A123198.P11978176983864220895

namespace A123198

/-- `floor(∑[a(n-1)-4]²)` -/
def P11978176983864220895.Spec : Prop :=
  ∀ n, P11978176983864220895.a n = A123198 n

end A123198

/-! ## A123198.P13703496251719585584

`∑[a(n-1)-8]²/4` with `a(0)=2`
-/

namespace A123198.P13703496251719585584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - 8

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 4

end

end A123198.P13703496251719585584

namespace A123198

/-- `∑[a(n-1)-8]²/4` -/
def P13703496251719585584.Spec : Prop :=
  ∀ n, P13703496251719585584.a n = (A123198 n : ℚ)

end A123198

/-! ## A123198.P11709943646205262804

`or(1, -2*n)²*(n+1)²`
-/

namespace A123198.P11709943646205262804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (-(2 * n : ℤ)) ^ 2 * ((n + 1) ^ 2 : ℤ)

end

end A123198.P11709943646205262804

namespace A123198

/-- `or(1, -2*n)²*(n+1)²` -/
def P11709943646205262804.Spec : Prop :=
  ∀ n, P11709943646205262804.a n = A123198 n

end A123198

/-! ## A123198.P8482333935931841322

`xor(1, -2*n)²*(n+1)²`
-/

namespace A123198.P8482333935931841322
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (-(2 * n : ℤ)) ^ 2 * ((n + 1) ^ 2 : ℤ)

end

end A123198.P8482333935931841322

namespace A123198

/-- `xor(1, -2*n)²*(n+1)²` -/
def P8482333935931841322.Spec : Prop :=
  ∀ n, P8482333935931841322.a n = A123198 n

end A123198

/-! ## A123198.P9835372935416339557

`(1-2*n)²*record[(n-1)²]`
-/

namespace A123198.P9835372935416339557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (2 * n : ℤ)) ^ 2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A123198.P9835372935416339557

namespace A123198

/-- `(1-2*n)²*record[(n-1)²]` -/
def P9835372935416339557.Spec : Prop :=
  ∀ n, P9835372935416339557.a n = A123198 n

end A123198

/-! ## A123198.P3834903366448350774

`(n+1)*A280089(n)`
-/

namespace A123198.P3834903366448350774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A280089 n

end

end A123198.P3834903366448350774

namespace A123198

/-- `(n+1)*A280089(n)` -/
def P3834903366448350774.Spec : Prop :=
  ∀ n, P3834903366448350774.a n = A123198 n

end A123198

/-! ## A123198.P12410090865563811794

`(A000217(2*n)-1)^2`
-/

namespace A123198.P12410090865563811794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000217 (2 * n) - 1) ^ 2

end

end A123198.P12410090865563811794

namespace A123198

/-- `(A000217(2*n)-1)^2` -/
def P12410090865563811794.Spec : Prop :=
  ∀ n, P12410090865563811794.a n = A123198 n

end A123198

/-! ## A123198.P12337667419833240020

`(n+1)*(A144129(n)+1)`
-/

namespace A123198.P12337667419833240020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A144129 n + 1)

end

end A123198.P12337667419833240020

namespace A123198

/-- `(n+1)*(A144129(n)+1)` -/
def P12337667419833240020.Spec : Prop :=
  ∀ n, P12337667419833240020.a n = A123198 n

end A123198

/-! ## A123198.P11875969552684933365

`(n+1)*∑[A064200(n)+1]`
-/

namespace A123198.P11875969552684933365
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064200 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123198.P11875969552684933365

namespace A123198

/-- `(n+1)*∑[A064200(n)+1]` -/
def P11875969552684933365.Spec : Prop :=
  ∀ n, P11875969552684933365.a n = A123198 n

end A123198

/-! ## A123198.P12618199236031080215

`(n+1)*(A272871(n)+1+n)`
-/

namespace A123198.P12618199236031080215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * (A272871 n + 1 + (n : ℤ))

end

end A123198.P12618199236031080215

namespace A123198

/-- `(n+1)*(A272871(n)+1+n)` -/
def P12618199236031080215.Spec : Prop :=
  ∀ n, P12618199236031080215.a n = A123198 n

end A123198

/-! ## A123198.P7398639641885731832

`(n+1)²*∑[A181390(n+1)]`
-/

namespace A123198.P7398639641885731832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A123198.P7398639641885731832

namespace A123198

/-- `(n+1)²*∑[A181390(n+1)]` -/
def P7398639641885731832.Spec : Prop :=
  ∀ n, P7398639641885731832.a n = A123198 n

end A123198

/-! ## A123198.P14413023911209055776

`(A033430(n)-3*n+1)*(n+1)`
-/

namespace A123198.P14413023911209055776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033430 n - (3 * n : ℤ) + 1) * (n + 1 : ℤ)

end

end A123198.P14413023911209055776

namespace A123198

/-- `(A033430(n)-3*n+1)*(n+1)` -/
def P14413023911209055776.Spec : Prop :=
  ∀ n, P14413023911209055776.a n = A123198 n

end A123198

/-! ## A123198.P17351641757389407740

`n²+A056220(n)*A142463(n)`
-/

namespace A123198.P17351641757389407740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 2 : ℤ) + A056220 n * A142463 n

end

end A123198.P17351641757389407740

namespace A123198

/-- `n²+A056220(n)*A142463(n)` -/
def P17351641757389407740.Spec : Prop :=
  ∀ n, P17351641757389407740.a n = A123198 n

end A123198

/-! ## A123198.P3301736850721654028

`(n+1)²*A060747(n)*A060747(n)`
-/

namespace A123198.P3301736850721654028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A060747 n * A060747 n

end

end A123198.P3301736850721654028

namespace A123198

/-- `(n+1)²*A060747(n)*A060747(n)` -/
def P3301736850721654028.Spec : Prop :=
  ∀ n, P3301736850721654028.a n = A123198 n

end A123198

/-! ## A123198.P15407628869293189038

`A014107(n+1)*A014107(n+1)`
-/

namespace A123198.P15407628869293189038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014107 (n + 1) * A014107 (n + 1)

end

end A123198.P15407628869293189038

namespace A123198

/-- `A014107(n+1)*A014107(n+1)` -/
def P15407628869293189038.Spec : Prop :=
  ∀ n, P15407628869293189038.a n = A123198 n

end A123198

/-! ## A123198.P7062810090843387235

`A302650(2*n+1)-2*n`
-/

namespace A123198.P7062810090843387235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302650 (2 * n + 1) - (2 * n : ℤ)

end

end A123198.P7062810090843387235

namespace A123198

/-- `A302650(2*n+1)-2*n` -/
def P7062810090843387235.Spec : Prop :=
  ∀ n, P7062810090843387235.a n = A123198 n

end A123198

/-! ## A123198.P6459497777737890777

`(n+1)²*A174679(2*n+1)`
-/

namespace A123198.P6459497777737890777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 1) ^ 2 : ℤ) * A174679 (2 * n + 1)

end

end A123198.P6459497777737890777

namespace A123198

/-- `(n+1)²*A174679(2*n+1)` -/
def P6459497777737890777.Spec : Prop :=
  ∀ n, P6459497777737890777.a n = A123198 n

end A123198

/-! ## A123198.P12688556927544740353

`A212342(2*n)*A212342(2*n)`
-/

namespace A123198.P12688556927544740353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212342 (2 * n) * A212342 (2 * n)

end

end A123198.P12688556927544740353

namespace A123198

/-- `A212342(2*n)*A212342(2*n)` -/
def P12688556927544740353.Spec : Prop :=
  ∀ n, P12688556927544740353.a n = A123198 n

end A123198

