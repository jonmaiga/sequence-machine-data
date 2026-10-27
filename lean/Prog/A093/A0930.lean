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
import Seq.B000.C024
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
import Seq.B011.C000
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
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A093000: Least k such that Sum_{r=n+1..k} r >= n!.

The programs for A093000, there is no canonical definition to state claims against.
-/

/-! ## A093000.P1900964850916935227

`round(sqrt(2*((n+1)!+2*n+1)))`
-/

namespace A093000.P1900964850916935227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * (Nat.factorial (n + 1) + (2 * n + 1)) : ℝ))

end

end A093000.P1900964850916935227

/-! ## A093000.P126070834307227921

`round(sqrt(2*(∏[n+1]+2*n+1)+1))`
-/

namespace A093000.P126070834307227921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((2 * (∏ j ∈ Finset.range (n + 1), f1 j + (2 * n + 1)) + 1 : ℕ) : ℝ))

end

end A093000.P126070834307227921

/-! ## A093000.P7313246693030474674

`A038567(A093371(n+2)+A058307(n))`
-/

namespace A093000.P7313246693030474674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038567 (A093371 (n + 2) + A058307 n).toNat

end

end A093000.P7313246693030474674

/-!
# A093001: Least k such that Sum_{r=n+1..k} r is greater than or equal to the sum of the first n positive integers (i.e., the n-th triangular number, A000217(n)). Or, least k such that (sum of first n positive integers) <= (sum of numbers from n+1 up to k).

The programs for A093001, there is no canonical definition to state claims against.
-/

/-! ## A093001.P1670040548003865459

`round(sqrt(∑[record[or(5, n)]]))`
-/

namespace A093001.P1670040548003865459
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 5 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A093001.P1670040548003865459

/-! ## A093001.P7370741955462933805

`round(2*sqrt(∑[n+1]))`
-/

namespace A093001.P7370741955462933805
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (2 * Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ))

end

end A093001.P7370741955462933805

/-! ## A093001.P13209219755179817865

`record[round(sqrt(2*(n-1)*(n-2)))]`
-/

namespace A093001.P13209219755179817865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (2 * ((n : ℤ) - 1) * ((n : ℤ) - 2) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093001.P13209219755179817865

/-! ## A093001.P16982864022671317623

`ceil(sqrt(2*(n²+ϕ*a(n-1))))` with `a(0)=2`
-/

namespace A093001.P16982864022671317623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈Real.sqrt (2 * ((n ^ 2 : ℝ) + Real.goldenRatio * (a (n - 1) : ℝ)))⌉

end

end A093001.P16982864022671317623

/-! ## A093001.P1617030984437979155

`floor(∑[acot((n²+1)²/2)+2]/sqrt(2))`
-/

namespace A093001.P1617030984437979155
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot (((n ^ 2 + 1) ^ 2 : ℚ) / 2 : ℝ) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(∑ j ∈ Finset.range (n + 1), f1 j) / Real.sqrt (2 : ℝ)⌋

end

end A093001.P1617030984437979155

/-! ## A093001.P4675566378447614471

`ceil((n/(5*a(n-1))+n+1)*sqrt(2))` with `a(0)=2`
-/

namespace A093001.P4675566378447614471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  ⌈((n : ℚ) / (5 * a (n - 1) : ℚ) + (n : ℚ) + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

end

end A093001.P4675566378447614471

/-! ## A093001.P11778880772828067880

`A248231(2*n+3)`
-/

namespace A093001.P11778880772828067880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248231 (2 * n + 3)

end

end A093001.P11778880772828067880

/-! ## A093001.P11449198965730703785

`A002024(∑[2*(n+1)])`
-/

namespace A093001.P11449198965730703785
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093001.P11449198965730703785

/-! ## A093001.P17198607068447723437

`A123578(∑[2*(n+1)])`
-/

namespace A093001.P17198607068447723437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A093001.P17198607068447723437

/-! ## A093001.P18054572043769367004

`A280471(3*(n+1))-n`
-/

namespace A093001.P18054572043769367004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280471 (3 * (n + 1)) - (n : ℤ)

end

end A093001.P18054572043769367004

/-!
# A093002: Product of factorials of next n numbers.

The programs for A093002, there is no canonical definition to state claims against.
-/

/-! ## A093002.P17911570933370349463

`∏[n!]*A079478(n)`
-/

namespace A093002.P17911570933370349463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A079478 n

end

end A093002.P17911570933370349463

/-! ## A093002.P2047422654386479963

`A000178(n)*A079478(n)`
-/

namespace A093002.P2047422654386479963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000178 n * A079478 n

end

end A093002.P2047422654386479963

/-! ## A093002.P10432527089300704247

`a(n-1)*2*n*(2*n-1)!²/n!` with `a(0)=1`
-/

namespace A093002.P10432527089300704247
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * 2 * (n : ℚ) * (Nat.factorial ((2 * n : ℤ) - 1).toNat ^ 2 : ℚ) / (Nat.factorial n : ℚ)

end

end A093002.P10432527089300704247

/-! ## A093002.P13179812040546632658

`A296591(n)/n!`
-/

namespace A093002.P13179812040546632658
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A296591 n : ℚ) / (Nat.factorial n : ℚ)

end

end A093002.P13179812040546632658

/-!
# A093003: Number of composite numbers among next n numbers.

The programs for A093003, there is no canonical definition to state claims against.
-/

/-! ## A093003.P9674434024261436082

`(n*A066888(n))%(n+1)`
-/

namespace A093003.P9674434024261436082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n : ℤ) * A066888 n) (n + 1 : ℤ)

end

end A093003.P9674434024261436082

/-! ## A093003.P5887598751439527935

`ceil(sqrt(∑[2*n]))-Δ[A111208(n)]`
-/

namespace A093003.P5887598751439527935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111208 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sqrt ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ)⌉ - (f2 (n + 1) - f2 n)

end

end A093003.P5887598751439527935

/-! ## A093003.P13012661737725568370

`n-A065382(abs(1-n)+1)+1`
-/

namespace A093003.P13012661737725568370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A065382 (|1 - (n : ℤ)| + 1).toNat + 1

end

end A093003.P13012661737725568370

/-! ## A093003.P8401245260160486759

`1-A066888(abs(1-n)+1)+n`
-/

namespace A093003.P8401245260160486759
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A066888 (|1 - (n : ℤ)| + 1).toNat + (n : ℤ)

end

end A093003.P8401245260160486759

/-! ## A093003.P16951626093405731493

`Δ[A022447(A179865(n+1))]`
-/

namespace A093003.P16951626093405731493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022447 (A179865 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093003.P16951626093405731493

/-! ## A093003.P6558788976689853292

`Δ[A062298(A107985(C(n, 2)))]`
-/

namespace A093003.P6558788976689853292
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062298 (A107985 (Nat.choose n 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093003.P6558788976689853292

/-! ## A093003.P11193774514293957703

`abs(A131738(n))-A066888(n)`
-/

namespace A093003.P11193774514293957703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A131738 n| - A066888 n

end

end A093003.P11193774514293957703

/-! ## A093003.P16288873839279258279

`A087156(n+1)-A066888(n)`
-/

namespace A093003.P16288873839279258279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087156 (n + 1) - A066888 n

end

end A093003.P16288873839279258279

/-!
# A093005: a(n) = n * ceiling(n/2).

The programs for A093005, the canonical program `A093005.P14098043965241628810` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093005 has offset 1).

The definition of A093005 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*ceil((n+1)/2)` (program `A093005.P14098043965241628810`, by `A093005.P14098043965241628810.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093005.P14098043965241628810

`(n+1)*ceil((n+1)/2)`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093005

/-- `(n+1)*ceil((n+1)/2)` -/
def P14098043965241628810.Spec : Prop :=
  ∀ n, P14098043965241628810.a n = A093005 (n + 1)

theorem P14098043965241628810.correct : P14098043965241628810.Spec := by
  intro n
  simp only [A093005, Nat.add_sub_cancel]

end A093005

/-! ## A093005.P10219686467961099573

`(n+1)*(n+1+(n+1)%2)/2`
-/

namespace A093005.P10219686467961099573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) * (n + 1 + (n + 1) % 2) : ℕ) : ℚ) / 2

end

end A093005.P10219686467961099573

namespace A093005

/-- `(n+1)*(n+1+(n+1)%2)/2` -/
def P10219686467961099573.Spec : Prop :=
  ∀ n, P10219686467961099573.a n = (A093005 (n + 1) : ℚ)

end A093005

/-! ## A093005.P10874767211624010910

`a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=6, a(3)=8, a(4)=15`
-/

namespace A093005.P10874767211624010910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 6, 8, 15] fun n a =>
  a (n - 1) + 2 * a (n - 2) - 2 * a (n - 3) - a (n - 4) + a (n - 5)

end

end A093005.P10874767211624010910

namespace A093005

/-- `a(n-1)+2*a(n-2)-2*a(n-3)-a(n-4)+a(n-5)` -/
def P10874767211624010910.Spec : Prop :=
  ∀ n, P10874767211624010910.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P8857343876166920026

`A183207(n+1)-A370980(n+1)+1`
-/

namespace A093005.P8857343876166920026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183207 (n + 1) - A370980 (n + 1) + 1

end

end A093005.P8857343876166920026

namespace A093005

/-- `A183207(n+1)-A370980(n+1)+1` -/
def P8857343876166920026.Spec : Prop :=
  ∀ n, P8857343876166920026.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P12276155203175366671

`∑[Δ[lcm(2, n)/2]+n]`
-/

namespace A093005.P12276155203175366671
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 2 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093005.P12276155203175366671

namespace A093005

/-- `∑[Δ[lcm(2, n)/2]+n]` -/
def P12276155203175366671.Spec : Prop :=
  ∀ n, P12276155203175366671.a n = (A093005 (n + 1) : ℚ)

end A093005

/-! ## A093005.P12309143861356251649

`∑[n]+gcd(n+1, ∑[n])`
-/

namespace A093005.P12309143861356251649
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Nat.gcd (n + 1) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A093005.P12309143861356251649

namespace A093005

/-- `∑[n]+gcd(n+1, ∑[n])` -/
def P12309143861356251649.Spec : Prop :=
  ∀ n, (P12309143861356251649.a n : ℤ) = A093005 (n + 1)

end A093005

/-! ## A093005.P11599837185312806517

`∑[n²%Δ[n²]]+1`
-/

namespace A093005.P11599837185312806517
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n ^ 2 : ℤ) ((f2 (n + 1) : ℤ) - (f2 n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A093005.P11599837185312806517

namespace A093005

/-- `∑[n²%Δ[n²]]+1` -/
def P11599837185312806517.Spec : Prop :=
  ∀ n, P11599837185312806517.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P3261853212469584920

`round((n+2)*or(1, n)/2)`
-/

namespace A093005.P3261853212469584920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℚ) * ((Nat.lor 1 n : ℚ) / 2))

end

end A093005.P3261853212469584920

namespace A093005

/-- `round((n+2)*or(1, n)/2)` -/
def P3261853212469584920.Spec : Prop :=
  ∀ n, P3261853212469584920.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P13832165295796275660

`∑[∑[xor(1, 2-a(n-1))]]` with `a(0)=1`
-/

namespace A093005.P13832165295796275660
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  Int.xor 1 (2 - f2 (n - 1))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093005.P13832165295796275660

namespace A093005

/-- `∑[∑[xor(1, 2-a(n-1))]]` -/
def P13832165295796275660.Spec : Prop :=
  ∀ n, P13832165295796275660.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P16333201877279031837

`(gcd(2, n)+n)*(n+1)/2`
-/

namespace A093005.P16333201877279031837
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((Nat.gcd 2 n + n) * (n + 1) : ℚ) / 2

end

end A093005.P16333201877279031837

namespace A093005

/-- `(gcd(2, n)+n)*(n+1)/2` -/
def P16333201877279031837.Spec : Prop :=
  ∀ n, P16333201877279031837.a n = (A093005 (n + 1) : ℚ)

end A093005

/-! ## A093005.P5913223945623422867

`-((n+1)*∑[n%2-1])`
-/

namespace A093005.P5913223945623422867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A093005.P5913223945623422867

namespace A093005

/-- `-((n+1)*∑[n%2-1])` -/
def P5913223945623422867.Spec : Prop :=
  ∀ n, P5913223945623422867.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P16105268398150846289

`-((n+1)*∑[and(1, n)-1])`
-/

namespace A093005.P16105268398150846289
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.land 1 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A093005.P16105268398150846289

namespace A093005

/-- `-((n+1)*∑[and(1, n)-1])` -/
def P16105268398150846289.Spec : Prop :=
  ∀ n, P16105268398150846289.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P5696687215636471464

`record[(n-1)*round((n-1)/2)]`
-/

namespace A093005.P5696687215636471464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * SequenceMachineLib.roundAway (((n : ℤ) - 1 : ℚ) / 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093005.P5696687215636471464

namespace A093005

/-- `record[(n-1)*round((n-1)/2)]` -/
def P5696687215636471464.Spec : Prop :=
  ∀ n, P5696687215636471464.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P11737701377781739026

`∑[n+1]-∑[n]%(n+1)`
-/

namespace A093005.P11737701377781739026
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (((∑ j ∈ Finset.range (n + 1), f2 j) % (n + 1) : ℕ) : ℤ)

end

end A093005.P11737701377781739026

namespace A093005

/-- `∑[n+1]-∑[n]%(n+1)` -/
def P11737701377781739026.Spec : Prop :=
  ∀ n, P11737701377781739026.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P14717800394546573604

`∑[∑[∑[ogf((1+x+2x^2)/(1+2x+x^2))]]]`
-/

namespace A093005.P14717800394546573604
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2] [1, 2, 1] n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093005.P14717800394546573604

namespace A093005

/-- `∑[∑[∑[ogf((1+x+2x^2)/(1+2x+x^2))]]]` -/
def P14717800394546573604.Spec : Prop :=
  ∀ n, P14717800394546573604.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P7894294988820440762

`(n+1)*and(n+2, -2)/2`
-/

namespace A093005.P7894294988820440762
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * Int.land (n + 2 : ℤ) (-2) : ℚ) / 2

end

end A093005.P7894294988820440762

namespace A093005

/-- `(n+1)*and(n+2, -2)/2` -/
def P7894294988820440762.Spec : Prop :=
  ∀ n, P7894294988820440762.a n = (A093005 (n + 1) : ℚ)

end A093005

/-! ## A093005.P10557325410741059334

`floor(∑[4-a(n-1)]²/8)` with `a(0)=3`
-/

namespace A093005.P10557325410741059334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [3] fun n f1 =>
  4 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 8⌋

end

end A093005.P10557325410741059334

namespace A093005

/-- `floor(∑[4-a(n-1)]²/8)` -/
def P10557325410741059334.Spec : Prop :=
  ∀ n, P10557325410741059334.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P12046323666100727826

`∑[n]+(n+1)/(and(1, n)+1)`
-/

namespace A093005.P12046323666100727826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) + (n + 1 : ℚ) / (Nat.land 1 n + 1 : ℚ)

end

end A093005.P12046323666100727826

namespace A093005

/-- `∑[n]+(n+1)/(and(1, n)+1)` -/
def P12046323666100727826.Spec : Prop :=
  ∀ n, P12046323666100727826.a n = (A093005 (n + 1) : ℚ)

end A093005

/-! ## A093005.P9874259957114769169

`-((n+1)*∑[-(n+1)%2])`
-/

namespace A093005.P9874259957114769169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (-(n + 1 : ℤ)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A093005.P9874259957114769169

namespace A093005

/-- `-((n+1)*∑[-(n+1)%2])` -/
def P9874259957114769169.Spec : Prop :=
  ∀ n, P9874259957114769169.a n = A093005 (n + 1)

end A093005

/-! ## A093005.P5348364514015842310

`round(round((n+1)/2)/acot(n+1))`
-/

namespace A093005.P5348364514015842310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((SequenceMachineLib.roundAway ((n + 1 : ℚ) / 2) : ℝ) / SequenceMachineLib.acot (n + 1 : ℝ))

end

end A093005.P5348364514015842310

namespace A093005

/-- `round(round((n+1)/2)/acot(n+1))` -/
def P5348364514015842310.Spec : Prop :=
  ∀ n, P5348364514015842310.a n = A093005 (n + 1)

end A093005

/-!
# A093006: Referring to the triangle in A093005, sequence contains the least term with maximal number of divisors.

The programs for A093006, there is no canonical definition to state claims against.
-/

/-! ## A093006.P16829749875557370457

`record[A009191(A310368(n))]`
-/

namespace A093006.P16829749875557370457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009191 (A310368 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093006.P16829749875557370457

/-! ## A093006.P11315520294963707914

`record[A318459(A315580(n))]`
-/

namespace A093006.P11315520294963707914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318459 (A315580 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093006.P11315520294963707914

/-! ## A093006.P10278638691043660324

`record[gcd(A103517(n), A325387(n+1))]`
-/

namespace A093006.P10278638691043660324
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A103517 n) (A325387 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093006.P10278638691043660324

/-! ## A093006.P14377168427831889397

`lt[A336898(n), A064353(A102363(n))]`
-/

namespace A093006.P14377168427831889397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336898 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064353 (A102363 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A093006.P14377168427831889397

/-! ## A093006.P6781989646790098817

`record[gcd(C(n+2, 2), A239614(n+1))]`
-/

namespace A093006.P6781989646790098817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.choose (n + 2) 2 : ℤ) (A239614 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093006.P6781989646790098817

/-!
# A093007: First nonprime number reached when iterating n under x->2*x+1.

The programs for A093007, there is no canonical definition to state claims against.
-/

/-! ## A093007.P8872454554104889042

`A093009(n+1)+n+1-A038699(n+2)`
-/

namespace A093007.P8872454554104889042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093009 (n + 1) + ((n + 1 : ℤ) - A038699 (n + 2))

end

end A093007.P8872454554104889042

/-! ## A093007.P2213549759879585425

`A191558(A093009(n+1))+A191558(n+1)`
-/

namespace A093007.P2213549759879585425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A093009 (n + 1)).toNat + A191558 (n + 1)

end

end A093007.P2213549759879585425

/-!
# A093008: Smallest number of 1's to append to the binary representation of n such that primes become nonprimes and nonprimes become primes.

The programs for A093008, there is no canonical definition to state claims against.
-/

/-! ## A093008.P8384414169181600823

`A063377(n+1)+A040081(n+2)`
-/

namespace A093008.P8384414169181600823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063377 (n + 1) + A040081 (n + 2)

end

end A093008.P8384414169181600823

/-! ## A093008.P14737563279347280278

`gcd(A040081(n+2), A339579(n+2))`
-/

namespace A093008.P14737563279347280278
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A040081 (n + 2)) (A339579 (n + 2))

end

end A093008.P14737563279347280278

/-! ## A093008.P15139436296744242161

`gcd(A010051(n+1)-A050412(n+1), A063377(n+1))`
-/

namespace A093008.P15139436296744242161
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010051 (n + 1) - A050412 (n + 1)) (A063377 (n + 1))

end

end A093008.P15139436296744242161

/-! ## A093008.P9324502002699900606

`A000120(A093009(n+1))-Δ[A000788(n)]`
-/

namespace A093008.P9324502002699900606
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A093009 (n + 1)).toNat - (f1 (n + 1) - f1 n)

end

end A093008.P9324502002699900606

/-! ## A093008.P2655760469381133956

`A000120(A093009(n+1))-A000120(n+1)`
-/

namespace A093008.P2655760469381133956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A093009 (n + 1)).toNat - A000120 (n + 1)

end

end A093008.P2655760469381133956

/-! ## A093008.P4734341669139473662

`A000523(A093009(n+1))-A000523(n+1)`
-/

namespace A093008.P4734341669139473662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A093009 (n + 1)).toNat - A000523 (n + 1)

end

end A093008.P4734341669139473662

/-! ## A093008.P11723510134916543266

`A029837(A093009(n+1))-A070939(n+1)`
-/

namespace A093008.P11723510134916543266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A093009 (n + 1)).toNat - A070939 (n + 1)

end

end A093008.P11723510134916543266

/-! ## A093008.P5487457221154026674

`A029837(A093009(n+1))-A029837(n+2)`
-/

namespace A093008.P5487457221154026674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (A093009 (n + 1)).toNat - A029837 (n + 2)

end

end A093008.P5487457221154026674

/-! ## A093008.P13828330179131651357

`A000120(A093009(n+1))-A000005(A048896(n))`
-/

namespace A093008.P13828330179131651357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A093009 (n + 1)).toNat - A000005 (A048896 n).toNat

end

end A093008.P13828330179131651357

/-!
# A093009: Smallest number m such that m is prime iff n is not prime and the binary representation of m equals n with appended trailing 1's, or 0 is no such m exists.

The programs for A093009, there is no canonical definition to state claims against.
-/

/-! ## A093009.P9279067045825491956

`A038699(n+2)+A093007(n+1)-(n+1)`
-/

namespace A093009.P9279067045825491956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038699 (n + 2) + (A093007 (n + 1) - (n + 1 : ℤ))

end

end A093009.P9279067045825491956

/-!
# A093010: Triangle, read by rows, such that the convolution of the n-th row with the natural numbers forms the n-th diagonal, for n>=0, where each row begins with 1.

The programs for A093010, there is no canonical definition to state claims against.
-/

/-! ## A093010.P2208094716032723770

`A020753(A109128(n)+A002262(n))`
-/

namespace A093010.P2208094716032723770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020753 (A109128 n + A002262 n).toNat

end

end A093010.P2208094716032723770

/-! ## A093010.P973574158328063683

`A125749(A143007(n))+A002262(n)`
-/

namespace A093010.P973574158328063683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125749 (A143007 n).toNat + A002262 n

end

end A093010.P973574158328063683

/-! ## A093010.P16070897309990310189

`A324662(A086645(n))+A002262(n)`
-/

namespace A093010.P16070897309990310189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324662 (A086645 n).toNat + A002262 n

end

end A093010.P16070897309990310189

/-! ## A093010.P11402032868163142864

`A183328(n+1)+A001222(A112360(n))`
-/

namespace A093010.P11402032868163142864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183328 (n + 1) + A001222 (A112360 n).toNat

end

end A093010.P11402032868163142864

/-! ## A093010.P4541991277952345913

`A169819(A110107(n))`
-/

namespace A093010.P4541991277952345913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169819 (A110107 n).toNat

end

end A093010.P4541991277952345913

/-!
# A093011: Primes of the form 10*R_k + 3, where R_k is the repunit (A002275) of length k.

The programs for A093011, there is no canonical definition to state claims against.
-/

/-! ## A093011.P16963919263037669785

`A098406(A097683(n+2))`
-/

namespace A093011.P16963919263037669785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 (A097683 (n + 2)).toNat

end

end A093011.P16963919263037669785

/-! ## A093011.P10105430400001996698

`A098406(A056654(n+1)+1)`
-/

namespace A093011.P10105430400001996698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098406 (A056654 (n + 1) + 1).toNat

end

end A093011.P10105430400001996698

/-! ## A093011.P6404846387200520158

`A002275(A056654(n+1)+1)+2`
-/

namespace A093011.P6404846387200520158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 (A056654 (n + 1) + 1).toNat + 2

end

end A093011.P6404846387200520158

/-! ## A093011.P12875752979686133488

`∩[A034050(n+1), A090146(n+1)]`
-/

namespace A093011.P12875752979686133488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034050 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093011.P12875752979686133488

/-!
# A093012: Numbers k such that prime(k) == 3 (mod 16).

The programs for A093012, the canonical program `A093012.P299501084987032336` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093012 has offset 1).

The definition of A093012 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093012.P299501084987032336

`A000720(A091968(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093012

/-- `A000720(A091968(n+1))` -/
def P299501084987032336.Spec : Prop :=
  ∀ n, P299501084987032336.a n = A093012 (n + 1)

theorem P299501084987032336.correct : P299501084987032336.Spec := by
  intro n
  simp only [A093012, Nat.add_sub_cancel]

end A093012

/-! ## A093012.P6536017619311878100

`eq[3, A039714(n+1)]+1`
-/

namespace A093012.P6536017619311878100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039714 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093012.P6536017619311878100

namespace A093012

/-- `eq[3, A039714(n+1)]+1` -/
def P6536017619311878100.Spec : Prop :=
  ∀ n, (P6536017619311878100.a n : ℤ) = A093012 (n + 1)

end A093012

/-! ## A093012.P2264192461603308048

`eq[3, A000040(n+1)%16]+1`
-/

namespace A093012.P2264192461603308048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 16

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A093012.P2264192461603308048

namespace A093012

/-- `eq[3, A000040(n+1)%16]+1` -/
def P2264192461603308048.Spec : Prop :=
  ∀ n, (P2264192461603308048.a n : ℤ) = A093012 (n + 1)

end A093012

/-! ## A093012.P16321463521368976053

`eq[2, and(14, A000040(n+2))]+2`
-/

namespace A093012.P16321463521368976053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 14 (A000040 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A093012.P16321463521368976053

namespace A093012

/-- `eq[2, and(14, A000040(n+2))]+2` -/
def P16321463521368976053.Spec : Prop :=
  ∀ n, (P16321463521368976053.a n : ℤ) = A093012 (n + 1)

end A093012

/-! ## A093012.P12532403111071128284

`eq[2, and(15, A008578(n+1)+15)]`
-/

namespace A093012.P12532403111071128284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 15 (A008578 (n + 1) + 15)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093012.P12532403111071128284

namespace A093012

/-- `eq[2, and(15, A008578(n+1)+15)]` -/
def P12532403111071128284.Spec : Prop :=
  ∀ n, (P12532403111071128284.a n : ℤ) = A093012 (n + 1)

end A093012

/-! ## A093012.P6288660409485286558

`record[A055396(A017101(2*n))]`
-/

namespace A093012.P6288660409485286558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (A017101 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093012.P6288660409485286558

namespace A093012

/-- `record[A055396(A017101(2*n))]` -/
def P6288660409485286558.Spec : Prop :=
  ∀ n, P6288660409485286558.a n = A093012 (n + 1)

end A093012

/-! ## A093012.P17916171646830448552

`A056239(p?[A017101(2*n)])`
-/

namespace A093012.P17916171646830448552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017101 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A093012.P17916171646830448552

namespace A093012

/-- `A056239(p?[A017101(2*n)])` -/
def P17916171646830448552.Spec : Prop :=
  ∀ n, P17916171646830448552.a n = A093012 (n + 1)

end A093012

/-! ## A093012.P16565235809631782312

`A049084(p?[A119413(n+1)-1])`
-/

namespace A093012.P16565235809631782312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119413 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A093012.P16565235809631782312

namespace A093012

/-- `A049084(p?[A119413(n+1)-1])` -/
def P16565235809631782312.Spec : Prop :=
  ∀ n, P16565235809631782312.a n = A093012 (n + 1)

end A093012

/-! ## A093012.P8459511532308821086

`A049084(p?[A017113(2*n)-1])`
-/

namespace A093012.P8459511532308821086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017113 (2 * n) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049084 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A093012.P8459511532308821086

namespace A093012

/-- `A049084(p?[A017113(2*n)-1])` -/
def P8459511532308821086.Spec : Prop :=
  ∀ n, P8459511532308821086.a n = A093012 (n + 1)

end A093012

/-! ## A093012.P1356839149717224699

`record[A000720(A014963(16*n+3)+1)]`
-/

namespace A093012.P1356839149717224699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A014963 (16 * n + 3) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093012.P1356839149717224699

namespace A093012

/-- `record[A000720(A014963(16*n+3)+1)]` -/
def P1356839149717224699.Spec : Prop :=
  ∀ n, P1356839149717224699.a n = A093012 (n + 1)

end A093012

/-!
# A093013: Numbers n such that 10*n-3 and 10*n+3 are both primes.

The programs for A093013, the canonical program `A093013.P11698118702598108032` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093013 has offset 1).

The definition of A093013 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A091992, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A093013.P11698118702598108032

`A091992(n+1)/2`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A093013

/-- `A091992(n+1)/2` -/
def P11698118702598108032.Spec : Prop :=
  ∀ n, P11698118702598108032.a n = (A093013 (n + 1) : ℚ)

end A093013

/-! ## A093013.P4714243613998120937

`∩[A024914(n+1), A102338(n+1)]`
-/

namespace A093013.P4714243613998120937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093013.P4714243613998120937

namespace A093013

/-- `∩[A024914(n+1), A102338(n+1)]` -/
def P4714243613998120937.Spec : Prop :=
  ∀ n, (P4714243613998120937.a n : ℤ) = A093013 (n + 1)

end A093013

/-! ## A093013.P16391934954393963607

`∩[A102338(n+1), A102342(n+1)+1]`
-/

namespace A093013.P16391934954393963607
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102338 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102342 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093013.P16391934954393963607

namespace A093013

/-- `∩[A102338(n+1), A102342(n+1)+1]` -/
def P16391934954393963607.Spec : Prop :=
  ∀ n, (P16391934954393963607.a n : ℤ) = A093013 (n + 1)

end A093013

/-! ## A093013.P960053254588373631

`∩[A024913(n+1)-1, A024914(n+1)]`
-/

namespace A093013.P960053254588373631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024913 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024914 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093013.P960053254588373631

namespace A093013

/-- `∩[A024913(n+1)-1, A024914(n+1)]` -/
def P960053254588373631.Spec : Prop :=
  ∀ n, (P960053254588373631.a n : ℤ) = A093013 (n + 1)

end A093013

/-! ## A093013.P5884215184608754802

`∩[A024895(n+1), A087505(n+1)]/2`
-/

namespace A093013.P5884215184608754802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024895 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087505 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℚ) / 2

end

end A093013.P5884215184608754802

namespace A093013

/-- `∩[A024895(n+1), A087505(n+1)]/2` -/
def P5884215184608754802.Spec : Prop :=
  ∀ n, P5884215184608754802.a n = (A093013 (n + 1) : ℚ)

end A093013

/-! ## A093013.P6626483483704531722

`A302043(A091992(n+1)+2)-1`
-/

namespace A093013.P6626483483704531722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302043 (A091992 (n + 1) + 2).toNat - 1

end

end A093013.P6626483483704531722

namespace A093013

/-- `A302043(A091992(n+1)+2)-1` -/
def P6626483483704531722.Spec : Prop :=
  ∀ n, P6626483483704531722.a n = A093013 (n + 1)

end A093013

/-! ## A093013.P56685661059738649

`A117358(2*2*A091992(n+1))`
-/

namespace A093013.P56685661059738649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117358 (2 * (2 * A091992 (n + 1))).toNat

end

end A093013.P56685661059738649

namespace A093013

/-- `A117358(2*2*A091992(n+1))` -/
def P56685661059738649.Spec : Prop :=
  ∀ n, P56685661059738649.a n = A093013 (n + 1)

end A093013

/-! ## A093013.P1049568016424692774

`A001281(A091992(n+1))`
-/

namespace A093013.P1049568016424692774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A091992 (n + 1)).toNat

end

end A093013.P1049568016424692774

namespace A093013

/-- `A001281(A091992(n+1))` -/
def P1049568016424692774.Spec : Prop :=
  ∀ n, P1049568016424692774.a n = A093013 (n + 1)

end A093013

/-! ## A093013.P6042080338415271522

`A000463(A091992(n+1)-1)`
-/

namespace A093013.P6042080338415271522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000463 (A091992 (n + 1) - 1).toNat

end

end A093013.P6042080338415271522

namespace A093013

/-- `A000463(A091992(n+1)-1)` -/
def P6042080338415271522.Spec : Prop :=
  ∀ n, P6042080338415271522.a n = A093013 (n + 1)

end A093013

/-! ## A093013.P12169359812441492519

`A008619(A091992(n+1)-1)`
-/

namespace A093013.P12169359812441492519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A091992 (n + 1) - 1).toNat

end

end A093013.P12169359812441492519

namespace A093013

/-- `A008619(A091992(n+1)-1)` -/
def P12169359812441492519.Spec : Prop :=
  ∀ n, P12169359812441492519.a n = A093013 (n + 1)

end A093013

/-! ## A093013.P17447258050500184450

`A110654(A091992(n+1)-1)`
-/

namespace A093013.P17447258050500184450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A091992 (n + 1) - 1).toNat

end

end A093013.P17447258050500184450

namespace A093013

/-- `A110654(A091992(n+1)-1)` -/
def P17447258050500184450.Spec : Prop :=
  ∀ n, P17447258050500184450.a n = A093013 (n + 1)

end A093013

/-! ## A093013.P8317543696885774302

`A140472(A091992(n+1)-1)`
-/

namespace A093013.P8317543696885774302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140472 (A091992 (n + 1) - 1).toNat

end

end A093013.P8317543696885774302

namespace A093013

/-- `A140472(A091992(n+1)-1)` -/
def P8317543696885774302.Spec : Prop :=
  ∀ n, P8317543696885774302.a n = A093013 (n + 1)

end A093013

/-! ## A093013.P634967083010691246

`A032742(lcm(2, A091992(n+1)))`
-/

namespace A093013.P634967083010691246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032742 (Int.lcm 2 (A091992 (n + 1)))

end

end A093013.P634967083010691246

namespace A093013

/-- `A032742(lcm(2, A091992(n+1)))` -/
def P634967083010691246.Spec : Prop :=
  ∀ n, P634967083010691246.a n = A093013 (n + 1)

end A093013

/-!
# A093014: Numbers n such that 10n-3 and 10n+3 are consecutive primes.

The programs for A093014, there is no canonical definition to state claims against.
-/

/-! ## A093014.P16447761627832321740

`A232010(A231374(n+1)+A009196(n))`
-/

namespace A093014.P16447761627832321740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232010 (A231374 (n + 1) + A009196 n).toNat

end

end A093014.P16447761627832321740

/-!
# A093017: Luhn algorithm double-and-add sum of digits of n.

The programs for A093017, there is no canonical definition to state claims against.
-/

/-! ## A093017.P15366105730575624674

`∑{digits}[A249873(n), #]`
-/

namespace A093017.P15366105730575624674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249873 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A093017.P15366105730575624674

/-! ## A093017.P11758752009458428681

`A007953(A249873(n))`
-/

namespace A093017.P11758752009458428681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A249873 n).toNat

end

end A093017.P11758752009458428681

/-! ## A093017.P3978005949361088593

`A004092(5*A249873(n))`
-/

namespace A093017.P3978005949361088593
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004092 (5 * A249873 n).toNat

end

end A093017.P3978005949361088593

/-! ## A093017.P258786052301850768

`A062329(10*A249873(n))`
-/

namespace A093017.P258786052301850768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062329 (10 * A249873 n).toNat

end

end A093017.P258786052301850768

/-! ## A093017.P16759568736012887593

`∑{digits}[A081594(A051022(n)), #]`
-/

namespace A093017.P16759568736012887593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081594 (A051022 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A093017.P16759568736012887593

/-! ## A093017.P8745466894109593015

`A007953(2*n-n%10)%A233583(A017281(n))`
-/

namespace A093017.P8745466894109593015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007953 (2 * n - n % 10)) (A233583 (A017281 n).toNat)

end

end A093017.P8745466894109593015

/-! ## A093017.P3613390274858971159

`A007953(A330859(n))-1`
-/

namespace A093017.P3613390274858971159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A330859 (n + 100)).toNat - 1

end

end A093017.P3613390274858971159

/-!
# A093018: Natural numbers with appended Luhn mod 10 check digit.

The programs for A093018, there is no canonical definition to state claims against.
-/

/-! ## A093018.P734611429712610025

`A093019(n)+10*n`
-/

namespace A093018.P734611429712610025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n + (10 * n : ℤ)

end

end A093018.P734611429712610025

/-! ## A093018.P6636502617325550778

`A017401(n)+A093019(n)-(n+1)`
-/

namespace A093018.P6636502617325550778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017401 n + (A093019 n - (n + 1 : ℤ))

end

end A093018.P6636502617325550778

/-! ## A093018.P12324814831856305919

`comp[A249830(n+1)]`
-/

namespace A093018.P12324814831856305919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A093018.P12324814831856305919

/-! ## A093018.P3395154894057566073

`record[(A249830(n+1)+1)%A249830(n+2)]`
-/

namespace A093018.P3395154894057566073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A249830 (n + 1) + 1) (A249830 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093018.P3395154894057566073

/-! ## A093018.P317979917173952704

`lt[0, A249832(n)]`
-/

namespace A093018.P317979917173952704
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A093018.P317979917173952704

/-! ## A093018.P15550349073183300514

`eq[A005102(n), A249832(n)]`
-/

namespace A093018.P15550349073183300514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005102 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093018.P15550349073183300514

/-! ## A093018.P11203205665413605854

`eq[A249832(n), A329684(n)]`
-/

namespace A093018.P11203205665413605854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329684 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093018.P11203205665413605854

/-! ## A093018.P11284793225236926760

`eq[A249832(n), A373565(n)]`
-/

namespace A093018.P11284793225236926760
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A373565 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093018.P11284793225236926760

/-! ## A093018.P1645223756743288179

`eq[A045496(n+1), A249832(n)]`
-/

namespace A093018.P1645223756743288179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045496 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093018.P1645223756743288179

/-! ## A093018.P9200752645083171801

`eq[A045497(n+1), A249832(n)]`
-/

namespace A093018.P9200752645083171801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045497 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093018.P9200752645083171801

/-! ## A093018.P6974844121114986881

`eq[A059811(n+1), A249832(n)]`
-/

namespace A093018.P6974844121114986881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059811 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093018.P6974844121114986881

/-! ## A093018.P6735567250256039476

`eq[A078315(n+1), A249832(n)]`
-/

namespace A093018.P6735567250256039476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093018.P6735567250256039476

/-! ## A093018.P10044598545637121513

`eq[A121273(n+1), A249832(n)]`
-/

namespace A093018.P10044598545637121513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121273 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093018.P10044598545637121513

/-! ## A093018.P11651246219614875067

`eq[A249832(n), A283149(n+1)]`
-/

namespace A093018.P11651246219614875067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283149 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093018.P11651246219614875067

/-! ## A093018.P1827463422894449396

`record[A028242(n)*A249832(A028242(n))]`
-/

namespace A093018.P1827463422894449396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028242 n * A249832 (A028242 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093018.P1827463422894449396

/-! ## A093018.P13786180832711542619

`record[A055396(n+1)*A249832(A055396(n+1))]`
-/

namespace A093018.P13786180832711542619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055396 (n + 1) * A249832 (A055396 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093018.P13786180832711542619

/-! ## A093018.P16067946314853242815

`eq[2, A093019(A093029(n+1)-1)]`
-/

namespace A093018.P16067946314853242815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 (A093029 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093018.P16067946314853242815

/-!
# A093019: a(n) = A093018(n) mod 10.

The programs for A093019, there is no canonical definition to state claims against.
-/

/-! ## A093019.P15362120244650335089

`A093018(n)%10`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A093019.P15362120244650335089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093018 n) 10

end

end A093019.P15362120244650335089

/-! ## A093019.P17278053156434231180

`A010879(A010879(n)+A093018(n)-n)`
-/

namespace A093019.P17278053156434231180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A010879 n + (A093018 n - (n : ℤ))).toNat

end

end A093019.P17278053156434231180

/-! ## A093019.P471483114089050576

`A010879(A093018(n))`
-/

namespace A093019.P471483114089050576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A093018 n).toNat

end

end A093019.P471483114089050576

/-! ## A093019.P5689209227258417355

`A007953(A093018(n))-A007953(n)`
-/

namespace A093019.P5689209227258417355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A093018 n).toNat - A007953 n

end

end A093019.P5689209227258417355

/-!
# A093020: Indices of terms in A093019 with value 0.

The programs for A093020, there is no canonical definition to state claims against.
-/

/-! ## A093020.P3484702378287569994

`eq[0, A093019(n)]`
-/

namespace A093020.P3484702378287569994
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093020.P3484702378287569994

/-! ## A093020.P18398334246364588712

`eq[1, A017281(n)-A093018(n)]`
-/

namespace A093020.P18398334246364588712
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093020.P18398334246364588712

/-! ## A093020.P11955079039969190298

`record[n-A000040(n+1)*A093019(n)]`
-/

namespace A093020.P11955079039969190298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A000040 (n + 1) * A093019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093020.P11955079039969190298

/-! ## A093020.P1263337281146357889

`record[n-A093019(n)*A109373(n+1)]`
-/

namespace A093020.P1263337281146357889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A093019 n * A109373 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093020.P1263337281146357889

/-! ## A093020.P6539946768802879830

`record[n-A093019(n)*A145341(n+1)]`
-/

namespace A093020.P6539946768802879830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A093019 n * A145341 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093020.P6539946768802879830

/-! ## A093020.P16403150722683964741

`record[n-A093019(n)*A269671(n+1)]`
-/

namespace A093020.P16403150722683964741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A093019 n * A269671 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093020.P16403150722683964741

/-! ## A093020.P6697617146259135685

`eq[A014682(A093018(n))+1, A016861(n)]`
-/

namespace A093020.P6697617146259135685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A093018 n).toNat + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093020.P6697617146259135685

/-! ## A093020.P5045864117663784278

`eq[A008587(n), A093018(A026741(n))]/2`
-/

namespace A093020.P5045864117663784278
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 (A026741 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A093020.P5045864117663784278

/-! ## A093020.P14137434496010900964

`eq[1, A249832(10*n)]`
-/

namespace A093020.P14137434496010900964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (10 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093020.P14137434496010900964

/-! ## A093020.P12613263178213589826

`eq[1, A008960(A093018(n)+1)]`
-/

namespace A093020.P12613263178213589826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A093018 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093020.P12613263178213589826

/-! ## A093020.P17758096225121638473

`eq[1, A010879(A093018(n)+1)]`
-/

namespace A093020.P17758096225121638473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A093018 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093020.P17758096225121638473

/-! ## A093020.P2007421679092672333

`eq[A003132(n), A003132(A093018(n))]`
-/

namespace A093020.P2007421679092672333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093020.P2007421679092672333

/-! ## A093020.P11717010750287743482

`eq[A007953(n), A007953(A093018(n))]`
-/

namespace A093020.P11717010750287743482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093020.P11717010750287743482

/-! ## A093020.P4651099832849861503

`eq[A008587(n), A026741(A093018(n))]`
-/

namespace A093020.P4651099832849861503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093020.P4651099832849861503

/-!
# A093021: Indices of terms in A093019 with value 1.

The programs for A093021, there is no canonical definition to state claims against.
-/

/-! ## A093021.P4763032952985052034

`eq[1, A093019(n)]`
-/

namespace A093021.P4763032952985052034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093021.P4763032952985052034

/-! ## A093021.P6445979852211644586

`eq[1, A093018(n)/A017281(n)]`
-/

namespace A093021.P6445979852211644586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093018 n : ℚ) / (A017281 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A093021.P6445979852211644586

/-! ## A093021.P5181617138524736233

`eq[A014682(A093018(n)+1), A016861(n)]`
-/

namespace A093021.P5181617138524736233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A093018 n + 1).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093021.P5181617138524736233

/-! ## A093021.P719777149985377928

`eq[A016861(n), A093018(A014682(n))]/2`
-/

namespace A093021.P719777149985377928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 (A014682 n).toNat

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℚ) / 2

end

end A093021.P719777149985377928

/-! ## A093021.P10008921780623915548

`A230980(p?[A008578(n+1)*A093019(n)])`
-/

namespace A093021.P10008921780623915548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1) * A093019 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A093021.P10008921780623915548

/-! ## A093021.P9117650655962947831

`eq[1, A008960(A093018(n))]`
-/

namespace A093021.P9117650655962947831
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093021.P9117650655962947831

/-! ## A093021.P5156162344148622576

`eq[1, A249832(A017293(n)-1)]`
-/

namespace A093021.P5156162344148622576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017293 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093021.P5156162344148622576

/-! ## A093021.P8955297857164390059

`eq[1, A249832(A017305(n)-2)]`
-/

namespace A093021.P8955297857164390059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017305 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093021.P8955297857164390059

/-! ## A093021.P9280213053396128507

`eq[A003132(n)+1, A003132(A093018(n))]`
-/

namespace A093021.P9280213053396128507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093021.P9280213053396128507

/-! ## A093021.P17246056450666060256

`eq[A007953(n)+1, A007953(A093018(n))]`
-/

namespace A093021.P17246056450666060256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093021.P17246056450666060256

/-!
# A093022: Indices of terms in A093019 with value 2.

The programs for A093022, there is no canonical definition to state claims against.
-/

/-! ## A093022.P6016217260493861964

`eq[2, A093019(n)]`
-/

namespace A093022.P6016217260493861964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093022.P6016217260493861964

/-! ## A093022.P9766993776970728806

`eq[1, A093018(n)-A017281(n)]`
-/

namespace A093022.P9766993776970728806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - A017281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093022.P9766993776970728806

/-! ## A093022.P5035564223045968854

`eq[2, A093018(n)/A016861(n)]`
-/

namespace A093022.P5035564223045968854
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093018 n : ℚ) / (A016861 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A093022.P5035564223045968854

/-! ## A093022.P8859773592421816970

`eq[A014682(A093018(n)), A016861(n)]`
-/

namespace A093022.P8859773592421816970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A093018 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093022.P8859773592421816970

/-! ## A093022.P2691181635935439929

`eq[1, A249832(A017293(n))]`
-/

namespace A093022.P2691181635935439929
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017293 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093022.P2691181635935439929

/-! ## A093022.P5494935993020629041

`eq[2, A010879(A093018(n))]`
-/

namespace A093022.P5494935993020629041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093022.P5494935993020629041

/-! ## A093022.P18114122134133346993

`eq[1, A249832(A017305(n)-1)]`
-/

namespace A093022.P18114122134133346993
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017305 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093022.P18114122134133346993

/-! ## A093022.P16064580724307588647

`eq[1, A249832(A017317(n)-2)]`
-/

namespace A093022.P16064580724307588647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017317 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093022.P16064580724307588647

/-! ## A093022.P7447591266689528785

`eq[A008587(n)+1, A026741(A093018(n))]`
-/

namespace A093022.P7447591266689528785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093022.P7447591266689528785

/-! ## A093022.P9592441636941553521

`eq[A007953(n)+2, A007953(A093018(n))]`
-/

namespace A093022.P9592441636941553521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093022.P9592441636941553521

/-!
# A093023: Indices of terms in A093019 with value 3.

The programs for A093023, there is no canonical definition to state claims against.
-/

/-! ## A093023.P18060226529785652413

`eq[3, A093019(n)]`
-/

namespace A093023.P18060226529785652413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093023.P18060226529785652413

/-! ## A093023.P14361867367926144186

`eq[2, A093018(n)-A017281(n)]`
-/

namespace A093023.P14361867367926144186
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - A017281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093023.P14361867367926144186

/-! ## A093023.P38762249364202717

`eq[2, A017329(n)-A093018(n)]`
-/

namespace A093023.P38762249364202717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093023.P38762249364202717

/-! ## A093023.P15473507489984340522

`eq[1, A249832(A017305(n))]`
-/

namespace A093023.P15473507489984340522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017305 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093023.P15473507489984340522

/-! ## A093023.P17878440524238442480

`eq[3, A010879(A093018(n))]`
-/

namespace A093023.P17878440524238442480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093023.P17878440524238442480

/-! ## A093023.P12964275877204466647

`eq[1, A249832(A017293(n)+1)]`
-/

namespace A093023.P12964275877204466647
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017293 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093023.P12964275877204466647

/-! ## A093023.P16209093045224588440

`eq[1, A249832(A017317(n)-1)]`
-/

namespace A093023.P16209093045224588440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017317 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093023.P16209093045224588440

/-! ## A093023.P7143296513235475033

`eq[A017329(n), A026741(A093018(n)+2)]`
-/

namespace A093023.P7143296513235475033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A093018 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093023.P7143296513235475033

/-! ## A093023.P12107182723196514714

`eq[A007953(n)+3, A007953(A093018(n))]`
-/

namespace A093023.P12107182723196514714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093023.P12107182723196514714

/-! ## A093023.P9506598453805793492

`eq[A003132(n)+9, A003132(A093018(n))]`
-/

namespace A093023.P9506598453805793492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003132 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093023.P9506598453805793492

/-!
# A093024: Indices of terms in A093019 with value 4.

The programs for A093024, there is no canonical definition to state claims against.
-/

/-! ## A093024.P5396840146429565802

`eq[4, A093019(n)]`
-/

namespace A093024.P5396840146429565802
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093024.P5396840146429565802

/-! ## A093024.P12297834453459793546

`eq[1, A017329(n)-A093018(n)]`
-/

namespace A093024.P12297834453459793546
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093024.P12297834453459793546

/-! ## A093024.P9936043218808392398

`eq[2, A017341(n)-A093018(n)]`
-/

namespace A093024.P9936043218808392398
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093024.P9936043218808392398

/-! ## A093024.P5360014560970570635

`eq[3, A093018(n)-A017281(n)]`
-/

namespace A093024.P5360014560970570635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - A017281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093024.P5360014560970570635

/-! ## A093024.P16279515806322767513

`eq[A016861(n)+1, A014682(A093018(n))]`
-/

namespace A093024.P16279515806322767513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093024.P16279515806322767513

/-! ## A093024.P11783740173272728586

`eq[1, A249832(A017317(n))]`
-/

namespace A093024.P11783740173272728586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017317 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093024.P11783740173272728586

/-! ## A093024.P10927558962027869865

`eq[4, A008960(A093018(n))]`
-/

namespace A093024.P10927558962027869865
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093024.P10927558962027869865

/-! ## A093024.P15232953336874579225

`eq[1, A249832(A017305(n)+1)]`
-/

namespace A093024.P15232953336874579225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017305 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093024.P15232953336874579225

/-! ## A093024.P9860078515013801597

`eq[1, A249832(A017293(n)+2)]`
-/

namespace A093024.P9860078515013801597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017293 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093024.P9860078515013801597

/-! ## A093024.P4086906738639250577

`eq[1, A249832(A017341(n)-2)]`
-/

namespace A093024.P4086906738639250577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017341 n - 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093024.P4086906738639250577

/-! ## A093024.P8571373904026943360

`eq[A017329(n), A026741(A093018(n)+1)]`
-/

namespace A093024.P8571373904026943360
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A093018 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093024.P8571373904026943360

/-! ## A093024.P9570578468294153359

`eq[A008587(n)+2, A026741(A093018(n))]`
-/

namespace A093024.P9570578468294153359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093024.P9570578468294153359

/-!
# A093025: Indices of terms in A093019 with value 5.

The programs for A093025, there is no canonical definition to state claims against.
-/

/-! ## A093025.P12076683681096920907

`eq[5, A093019(n)]`
-/

namespace A093025.P12076683681096920907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093025.P12076683681096920907

/-! ## A093025.P7634233184010360224

`eq[1, A017341(n)-A093018(n)]`
-/

namespace A093025.P7634233184010360224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093025.P7634233184010360224

/-! ## A093025.P14774839922955638741

`eq[2, A017353(n)-A093018(n)]`
-/

namespace A093025.P14774839922955638741
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093025.P14774839922955638741

/-! ## A093025.P10661564353299784232

`eq[1, A093018(n)/A017329(n)]`
-/

namespace A093025.P10661564353299784232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093018 n : ℚ) / (A017329 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A093025.P10661564353299784232

/-! ## A093025.P7021099452684669180

`eq[2, A026741(A017377(n)-A093018(n))]`
-/

namespace A093025.P7021099452684669180
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A017377 n - A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093025.P7021099452684669180

/-! ## A093025.P14606279966992348016

`eq[1, A249832(10*n+5)]`
-/

namespace A093025.P14606279966992348016
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (10 * n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093025.P14606279966992348016

/-! ## A093025.P17496885028596665886

`eq[5, A008960(A093018(n))]`
-/

namespace A093025.P17496885028596665886
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093025.P17496885028596665886

/-! ## A093025.P3530876864055412464

`eq[A017329(n), A026741(A093018(n))]`
-/

namespace A093025.P3530876864055412464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017329 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093025.P3530876864055412464

/-! ## A093025.P3336351750190468717

`eq[A008587(2*n+1), A026741(A093018(n))]`
-/

namespace A093025.P3336351750190468717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008587 (2 * n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093025.P3336351750190468717

/-!
# A093026: Indices of terms in A093019 with value 6.

The programs for A093026, there is no canonical definition to state claims against.
-/

/-! ## A093026.P1751738668363962834

`eq[6, A093019(n)]`
-/

namespace A093026.P1751738668363962834
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093026.P1751738668363962834

/-! ## A093026.P2626769686332697353

`eq[0, A017341(n)-A093018(n)]`
-/

namespace A093026.P2626769686332697353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017341 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093026.P2626769686332697353

/-! ## A093026.P9933287158125887532

`eq[1, A093018(n)-A017329(n)]`
-/

namespace A093026.P9933287158125887532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - A017329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093026.P9933287158125887532

/-! ## A093026.P2637019330438023289

`eq[1, A017353(n)-A093018(n)]`
-/

namespace A093026.P2637019330438023289
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093026.P2637019330438023289

/-! ## A093026.P16378488297668942197

`eq[2, A017365(n)-A093018(n)]`
-/

namespace A093026.P16378488297668942197
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093026.P16378488297668942197

/-! ## A093026.P13483517991820630703

`eq[5, A093018(n)-A017281(n)]`
-/

namespace A093026.P13483517991820630703
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - A017281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093026.P13483517991820630703

/-! ## A093026.P10459857104759560192

`eq[1, A093018(n)%A005408(n)]`
-/

namespace A093026.P10459857104759560192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093018 n) (A005408 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093026.P10459857104759560192

/-! ## A093026.P14433189877559369834

`eq[A016861(n)+2, A014682(A093018(n))]`
-/

namespace A093026.P14433189877559369834
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 n + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093026.P14433189877559369834

/-! ## A093026.P2535253241515236500

`eq[1, A249832(A017341(n))]`
-/

namespace A093026.P2535253241515236500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017341 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093026.P2535253241515236500

/-! ## A093026.P18074176139476551345

`eq[6, A008960(A093018(n))]`
-/

namespace A093026.P18074176139476551345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093026.P18074176139476551345

/-! ## A093026.P3572700762966059436

`eq[1, A249832(A017317(n)+2)]`
-/

namespace A093026.P3572700762966059436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017317 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093026.P3572700762966059436

/-! ## A093026.P8611965161889256721

`eq[1, A249832(A017353(n)-1)]`
-/

namespace A093026.P8611965161889256721
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017353 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093026.P8611965161889256721

/-! ## A093026.P6864985757494196683

`eq[A007953(n+1), A007953(A093018(n)+4)]`
-/

namespace A093026.P6864985757494196683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A093018 n + 4).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093026.P6864985757494196683

/-!
# A093027: Indices of terms in A093019 with value 7.

The programs for A093027, there is no canonical definition to state claims against.
-/

/-! ## A093027.P3357389365520295383

`eq[7, A093019(n)]`
-/

namespace A093027.P3357389365520295383
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093027.P3357389365520295383

/-! ## A093027.P4579307471981001774

`eq[2, A093018(n)%(2*n+1)]`
-/

namespace A093027.P4579307471981001774
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093018 n) (2 * n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093027.P4579307471981001774

/-! ## A093027.P10113759564877882237

`eq[1, A093018(n)-A017341(n)]`
-/

namespace A093027.P10113759564877882237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - A017341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093027.P10113759564877882237

/-! ## A093027.P12574458497461215959

`eq[1, A017365(n)-A093018(n)]`
-/

namespace A093027.P12574458497461215959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017365 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093027.P12574458497461215959

/-! ## A093027.P3105266730760636577

`eq[2, A093018(n)-A017329(n)]`
-/

namespace A093027.P3105266730760636577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - A017329 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093027.P3105266730760636577

/-! ## A093027.P12437655806583880018

`eq[2, A017377(n)-A093018(n)]`
-/

namespace A093027.P12437655806583880018
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093027.P12437655806583880018

/-! ## A093027.P11367574813612355358

`eq[1, A093018(n)/A017353(n)]`
-/

namespace A093027.P11367574813612355358
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093018 n : ℚ) / (A017353 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A093027.P11367574813612355358

/-! ## A093027.P1770083693921355743

`eq[1, A249832(A017353(n))]`
-/

namespace A093027.P1770083693921355743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017353 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093027.P1770083693921355743

/-! ## A093027.P10386597062849689312

`eq[3, A008960(A093018(n))]`
-/

namespace A093027.P10386597062849689312
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093027.P10386597062849689312

/-! ## A093027.P6762096670342581586

`eq[1, A249832(A017341(n)+1)]`
-/

namespace A093027.P6762096670342581586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017341 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093027.P6762096670342581586

/-! ## A093027.P3855323436350525033

`eq[A017377(n), A026741(A093018(n)+2)]`
-/

namespace A093027.P3855323436350525033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A093018 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093027.P3855323436350525033

/-! ## A093027.P10300573549466424

`eq[A007953(n+1), A007953(A093018(n)+3)]`
-/

namespace A093027.P10300573549466424
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A093018 n + 3).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093027.P10300573549466424

/-!
# A093028: Indices of terms in A093019 with value 8.

The programs for A093028, there is no canonical definition to state claims against.
-/

/-! ## A093028.P4763350399183048690

`eq[8, A093019(n)]`
-/

namespace A093028.P4763350399183048690
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093028.P4763350399183048690

/-! ## A093028.P13176141814784997328

`eq[8, A093018(n)-10*n]`
-/

namespace A093028.P13176141814784997328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - (10 * n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093028.P13176141814784997328

/-! ## A093028.P13614455119381314047

`eq[1, A017377(n)-A093018(n)]`
-/

namespace A093028.P13614455119381314047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n - A093018 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093028.P13614455119381314047

/-! ## A093028.P6245433189054716453

`eq[1, A093018(n)/A017365(n)]`
-/

namespace A093028.P6245433189054716453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093018 n : ℚ) / (A017365 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A093028.P6245433189054716453

/-! ## A093028.P1906258627855514028

`eq[2, A008960(A093018(n))]`
-/

namespace A093028.P1906258627855514028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093028.P1906258627855514028

/-! ## A093028.P4919797868728945431

`eq[1, A249832(A017353(n)+1)]`
-/

namespace A093028.P4919797868728945431
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017353 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093028.P4919797868728945431

/-! ## A093028.P12545383809249129888

`eq[1, A249832(A017341(n)+2)]`
-/

namespace A093028.P12545383809249129888
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249832 (A017341 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093028.P12545383809249129888

/-! ## A093028.P4245606080619280620

`eq[A017377(n), A026741(A093018(n)+1)]`
-/

namespace A093028.P4245606080619280620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A093018 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093028.P4245606080619280620

/-! ## A093028.P12085725722762206058

`eq[8, A007953(A093018(n))-A007953(n)]`
-/

namespace A093028.P12085725722762206058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A093018 n).toNat - A007953 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093028.P12085725722762206058

/-! ## A093028.P13404443795943267923

`eq[A007953(n+1), A007953(A093018(n)+2)]`
-/

namespace A093028.P13404443795943267923
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A093018 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093028.P13404443795943267923

/-!
# A093029: Indices of terms in A093019 with value 9.

The programs for A093029, there is no canonical definition to state claims against.
-/

/-! ## A093029.P8530592717439419612

`lt[8, A093019(n)]`
-/

namespace A093029.P8530592717439419612
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A093029.P8530592717439419612

/-! ## A093029.P15554533206770249019

`eq[9, A093018(n)%10]`
-/

namespace A093029.P15554533206770249019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A093018 n) 10

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093029.P15554533206770249019

/-! ## A093029.P17844180570226376353

`eq[A093019(n), A100401(n)]`
-/

namespace A093029.P17844180570226376353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100401 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093029.P17844180570226376353

/-! ## A093029.P17660118580116379654

`eq[A093019(n), A100403(n)]`
-/

namespace A093029.P17660118580116379654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100403 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093029.P17660118580116379654

/-! ## A093029.P14439954633460929067

`eq[A066586(n+1), A093019(n)]`
-/

namespace A093029.P14439954633460929067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066586 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093029.P14439954633460929067

/-! ## A093029.P6280776606570453989

`eq[A093019(n), A291092(n+1)]`
-/

namespace A093029.P6280776606570453989
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093019 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291092 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093029.P6280776606570453989

/-! ## A093029.P7827160993826079011

`eq[1, A093018(n)-A017365(n)]`
-/

namespace A093029.P7827160993826079011
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - A017365 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093029.P7827160993826079011

/-! ## A093029.P6812352406073430711

`eq[2, A093018(n)-A017353(n)]`
-/

namespace A093029.P6812352406073430711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - A017353 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093029.P6812352406073430711

/-! ## A093029.P11397313228836159615

`eq[3, A093018(n)-A017341(n)]`
-/

namespace A093029.P11397313228836159615
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - A017341 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093029.P11397313228836159615

/-! ## A093029.P6365343344538465376

`eq[1, A093018(n)/A017377(n)]`
-/

namespace A093029.P6365343344538465376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093018 n : ℚ) / (A017377 n : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A093029.P6365343344538465376

/-! ## A093029.P1892726382666917503

`eq[8, A093018(n)-A017281(n)]`
-/

namespace A093029.P1892726382666917503
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093018 n - A017281 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093029.P1892726382666917503

/-! ## A093029.P5184163434302761544

`eq[9, A008960(A093018(n))]`
-/

namespace A093029.P5184163434302761544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008960 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093029.P5184163434302761544

/-! ## A093029.P11036103970438034099

`eq[1, A010879(A093018(n)+2)]`
-/

namespace A093029.P11036103970438034099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010879 (A093018 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A093029.P11036103970438034099

/-! ## A093029.P16625224830152143980

`eq[A017377(n), A026741(A093018(n))]`
-/

namespace A093029.P16625224830152143980
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017377 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093029.P16625224830152143980

/-! ## A093029.P11049745940633274656

`eq[A007953(n)+9, A007953(A093018(n))]`
-/

namespace A093029.P11049745940633274656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n + 9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A093018 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093029.P11049745940633274656

/-!
# A093030: Largest palindromic divisor of n.

The programs for A093030, there is no canonical definition to state claims against.
-/

/-! ## A093030.P3794026108882602508

`A122425(A087999(n+1)^A092984(2*(n+2)))`
-/

namespace A093030.P3794026108882602508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122425 (SequenceMachineLib.roundAway ((A087999 (n + 1) : ℚ) ^ (A092984 (2 * (n + 2)) : ℤ))).toNat

end

end A093030.P3794026108882602508

/-! ## A093030.P737775742201995695

`A392843(A184392(n+1))`
-/

namespace A093030.P737775742201995695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392843 (A184392 (n + 1)).toNat

end

end A093030.P737775742201995695

/-! ## A093030.P17029665751345977961

`A122425(n+1)%A005843(A184392(n+1))`
-/

namespace A093030.P17029665751345977961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A122425 (n + 1)) (A005843 (A184392 (n + 1)).toNat)

end

end A093030.P17029665751345977961

/-!
# A093031: Create a histogram of the digits used so far in the sequence. Add to the last element of the sequence the least used digit on the histogram. If two or more digits have the same score in the histogram, add the smallest. 0 is to be interpreted as 10 and so comes after 9. So if 0 is the digit to add, add 10 instead. Start the sequence with 0.

The programs for A093031, there is no canonical definition to state claims against.
-/

/-! ## A093031.P4847644091053565031

`∑[∑[A083339(A344297(3*n+2))]]`
-/

namespace A093031.P4847644091053565031
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083339 (A344297 (3 * n + 2)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093031.P4847644091053565031

/-! ## A093031.P11754556642588426039

`∑[A341584(A341584(A004186(n)))]`
-/

namespace A093031.P11754556642588426039
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341584 (A341584 (A004186 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093031.P11754556642588426039

/-! ## A093031.P11845335359712797401

`∑[A341584(A341584(A333659(n)))]`
-/

namespace A093031.P11845335359712797401
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341584 (A341584 (A333659 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093031.P11845335359712797401

/-! ## A093031.P10818897778255600805

`∑[A086520(A086520(A209722(n+1)))]`
-/

namespace A093031.P10818897778255600805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086520 (A086520 (A209722 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093031.P10818897778255600805

/-! ## A093031.P13537205975942418121

`eq[A027656(n), A111332(n)]`
-/

namespace A093031.P13537205975942418121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027656 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111332 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A093031.P13537205975942418121

/-!
# A093032: Smallest k>0 such that at least two primes exist that are not less than n-k and not greater than n+k.

The programs for A093032, there is no canonical definition to state claims against.
-/

/-! ## A093032.P16588043142328545242

`gcd(A048272(A320884(n+1)), A291363(n+1))`
-/

namespace A093032.P16588043142328545242
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048272 (A320884 (n + 1)).toNat) (A291363 (n + 1))

end

end A093032.P16588043142328545242

/-! ## A093032.P5798260545704296911

`gcd(a(n%2), A321291(A184676(n+1)))` with `a(0)=3, a(1)=2`
-/

namespace A093032.P5798260545704296911
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 2] fun n a =>
  Int.gcd (a (n % 2) : ℤ) (A321291 (A184676 (n + 1)).toNat)

end

end A093032.P5798260545704296911

/-! ## A093032.P524438747255378012

`gcd(4-A000034(n), A028374(A320968(n)))`
-/

namespace A093032.P524438747255378012
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (4 - A000034 n) (A028374 (A320968 n).toNat)

end

end A093032.P524438747255378012

/-!
# A093033: Number of interior balls in a truncated octahedral arrangement.

The programs for A093033, the canonical program `A093033.P14950655495627761375` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093033 has offset 1).

The definition of A093033 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093033.P14950655495627761375

`16*(n+1)^3-15*(n+1)²+6*(n+1)-1`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093033

/-- `16*(n+1)^3-15*(n+1)²+6*(n+1)-1` -/
def P14950655495627761375.Spec : Prop :=
  ∀ n, P14950655495627761375.a n = A093033 (n + 1)

theorem P14950655495627761375.correct : P14950655495627761375.Spec := by
  intro n
  simp only [A093033, Nat.add_sub_cancel]

end A093033

/-! ## A093033.P5350293687038549735

`Δ[n*A004767(n)*n²-A000217(n)]`
-/

namespace A093033.P5350293687038549735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A004767 n * (n ^ 2 : ℤ) - A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093033.P5350293687038549735

namespace A093033

/-- `Δ[n*A004767(n)*n²-A000217(n)]` -/
def P5350293687038549735.Spec : Prop :=
  ∀ n, P5350293687038549735.a n = A093033 (n + 1)

theorem P5350293687038549735.correct : P5350293687038549735.Spec := by
  intro n
  simp only [A093033, Nat.add_sub_cancel, A093033.P5350293687038549735.f1, A093033.P5350293687038549735.a, A093033.P14950655495627761375.a, A000217, A000217.P10269402890581615239.a, A004767, A004767.P13352534504447192883.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A093033

/-!
# A093034: Primes of the form 1 + multiple perfect number.

The programs for A093034, there is no canonical definition to state claims against.
-/

/-! ## A093034.P16650848736656421993

`p?[A007691(n+1)+1]`
-/

namespace A093034.P16650848736656421993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007691 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093034.P16650848736656421993

/-! ## A093034.P12630259425824161425

`p?[A015814(n+1)+1]`
-/

namespace A093034.P12630259425824161425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015814 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A093034.P12630259425824161425

/-!
# A093036: Number of palindromic divisors of a(n) sets a new record.

The programs for A093036, there is no canonical definition to state claims against.
-/

/-! ## A093036.P4061032134352869146

`A087997(A182764(n+1)^A343639(n))`
-/

namespace A093036.P4061032134352869146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087997 (SequenceMachineLib.roundAway ((A182764 (n + 1) : ℚ) ^ (A343639 n : ℤ))).toNat

end

end A093036.P4061032134352869146

/-! ## A093036.P6401727299323097866

`A087997(A182764(n+1)%A182756(n+1))`
-/

namespace A093036.P6401727299323097866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087997 (Int.tmod (A182764 (n + 1)) (A182756 (n + 1))).toNat

end

end A093036.P6401727299323097866

/-! ## A093036.P13055333482632450199

`A340548(∑[(1-(∑{digits}[n, #]-n))²])`
-/

namespace A093036.P13055333482632450199
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - (((((SequenceMachineLib.digits10 (f2 n)).map fun (x : ℕ) => x).sum : ℕ) : ℤ) - (n : ℤ))) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340548 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A093036.P13055333482632450199

/-! ## A093036.P9396162233578802072

`gcd(∏{e}[4^n, #!], A340548(n+1))`
-/

namespace A093036.P9396162233578802072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℤ) (A340548 (n + 1))

end

end A093036.P9396162233578802072

/-! ## A093036.P5050729876255337665

`A340548(A043315(n+1))`
-/

namespace A093036.P5050729876255337665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340548 (A043315 (n + 1)).toNat

end

end A093036.P5050729876255337665

/-!
# A093037: Number of non-palindromic divisors of n sets a new record.

The programs for A093037, there is no canonical definition to state claims against.
-/

/-! ## A093037.P12179124460950435576

`A355695(record[A087991(n+1)])`
-/

namespace A093037.P12179124460950435576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355695 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A093037.P12179124460950435576

/-! ## A093037.P4663131999024540333

`A355695(record[A000005(n+1)-A087990(n+1)])`
-/

namespace A093037.P4663131999024540333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - A087990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355695 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A093037.P4663131999024540333

/-! ## A093037.P14481421835386613709

`A355695(lt[A355695(n), A003627(2*n+1)])`
-/

namespace A093037.P14481421835386613709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355695 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003627 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355695 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A093037.P14481421835386613709

/-!
# A093038: Numbers k such that sum of 5th powers of divisors of k is divisible by the square of Euler-phi of k.

The programs for A093038, there is no canonical definition to state claims against.
-/

/-! ## A093038.P16125397448586905195

`A018748(A025773(n)*A357490(n+1))`
-/

namespace A093038.P16125397448586905195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018748 (A025773 n * A357490 (n + 1)).toNat

end

end A093038.P16125397448586905195

/-! ## A093038.P1246522482026814396

`A018748(eq[A085392(n+1), A327189(n)])`
-/

namespace A093038.P1246522482026814396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085392 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327189 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018748 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A093038.P1246522482026814396

/-!
# A093039: Sequence resulting from a sum of three repeated binomial(n+3,4) sequences.

The programs for A093039, the canonical program `A093039.P11914555654143575818` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093039 has offset 1).

The definition of A093039 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093039.P9335376198812539331

`∑[A055522(n+3)/6]`
-/

namespace A093039.P9335376198812539331
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055522 (n + 3) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093039.P9335376198812539331

namespace A093039

/-- `∑[A055522(n+3)/6]` -/
def P9335376198812539331.Spec : Prop :=
  ∀ n, P9335376198812539331.a n = (A093039 (n + 1) : ℚ)

end A093039

/-! ## A093039.P3901275955651560197

`∑[∑[A008805(n)]/(and(1, n)+1)]`
-/

namespace A093039.P3901275955651560197
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (Nat.land 1 n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093039.P3901275955651560197

namespace A093039

/-- `∑[∑[A008805(n)]/(and(1, n)+1)]` -/
def P3901275955651560197.Spec : Prop :=
  ∀ n, P3901275955651560197.a n = (A093039 (n + 1) : ℚ)

end A093039

/-! ## A093039.P11914555654143575818

`A096338(n)+C(floor(n/2)+4, 4)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093039

/-- `A096338(n)+C(floor(n/2)+4, 4)` -/
def P11914555654143575818.Spec : Prop :=
  ∀ n, P11914555654143575818.a n = A093039 (n + 1)

theorem P11914555654143575818.correct : P11914555654143575818.Spec := by
  intro n
  simp only [A093039, Nat.add_sub_cancel]

end A093039

/-! ## A093039.P3549014923263666821

`∑[(n+3)/2*A055523(n+3)]/6`
-/

namespace A093039.P3549014923263666821
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) / 2 * (A055523 (n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) / 6

end

end A093039.P3549014923263666821

namespace A093039

/-- `∑[(n+3)/2*A055523(n+3)]/6` -/
def P3549014923263666821.Spec : Prop :=
  ∀ n, P3549014923263666821.a n = (A093039 (n + 1) : ℚ)

end A093039

/-! ## A093039.P11322215453761185279

`A189976(n+8)+A096338(n)`
-/

namespace A093039.P11322215453761185279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189976 (n + 8) + A096338 n

end

end A093039.P11322215453761185279

namespace A093039

/-- `A189976(n+8)+A096338(n)` -/
def P11322215453761185279.Spec : Prop :=
  ∀ n, P11322215453761185279.a n = A093039 (n + 1)

end A093039

/-! ## A093039.P9548760553519166617

`∑[∑[A008805(n)]/A000034(n)]`
-/

namespace A093039.P9548760553519166617
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008805 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093039.P9548760553519166617

namespace A093039

/-- `∑[∑[A008805(n)]/A000034(n)]` -/
def P9548760553519166617.Spec : Prop :=
  ∀ n, P9548760553519166617.a n = (A093039 (n + 1) : ℚ)

end A093039

/-! ## A093039.P9568136280847547923

`∑[A006918(n+1)/(n%2+1)]`
-/

namespace A093039.P9568136280847547923
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006918 (n + 1) : ℚ) / ((n % 2 + 1 : ℕ) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093039.P9568136280847547923

namespace A093039

/-- `∑[A006918(n+1)/(n%2+1)]` -/
def P9568136280847547923.Spec : Prop :=
  ∀ n, P9568136280847547923.a n = (A093039 (n + 1) : ℚ)

end A093039

/-! ## A093039.P3285342277257326761

`∑[A006918(n+1)/A000034(n)]`
-/

namespace A093039.P3285342277257326761
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006918 (n + 1) : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093039.P3285342277257326761

namespace A093039

/-- `∑[A006918(n+1)/A000034(n)]` -/
def P3285342277257326761.Spec : Prop :=
  ∀ n, P3285342277257326761.a n = (A093039 (n + 1) : ℚ)

end A093039

/-! ## A093039.P10254165336981105668

`∑[A006918(n+1)/A040001(n+1)]`
-/

namespace A093039.P10254165336981105668
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006918 (n + 1) : ℚ) / (A040001 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093039.P10254165336981105668

namespace A093039

/-- `∑[A006918(n+1)/A040001(n+1)]` -/
def P10254165336981105668.Spec : Prop :=
  ∀ n, P10254165336981105668.a n = (A093039 (n + 1) : ℚ)

end A093039

/-! ## A093039.P12654940973536824303

`∑[A006918(n+1)/A134451(n+1)]`
-/

namespace A093039.P12654940973536824303
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006918 (n + 1) : ℚ) / (A134451 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093039.P12654940973536824303

namespace A093039

/-- `∑[A006918(n+1)/A134451(n+1)]` -/
def P12654940973536824303.Spec : Prop :=
  ∀ n, P12654940973536824303.a n = (A093039 (n + 1) : ℚ)

end A093039

/-! ## A093039.P3084274369536798483

`∑[A006918(n+1)/Δ[A007494(n+1)]]`
-/

namespace A093039.P3084274369536798483
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007494 (n + 1)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A006918 (n + 1) : ℚ) / (f2 (n + 1) - f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093039.P3084274369536798483

namespace A093039

/-- `∑[A006918(n+1)/Δ[A007494(n+1)]]` -/
def P3084274369536798483.Spec : Prop :=
  ∀ n, P3084274369536798483.a n = (A093039 (n + 1) : ℚ)

end A093039

/-! ## A093039.P17423684894189855832

`A002624(n)+A002624(n)-A287143(n+1)`
-/

namespace A093039.P17423684894189855832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 n + (A002624 n - A287143 (n + 1))

end

end A093039.P17423684894189855832

namespace A093039

/-- `A002624(n)+A002624(n)-A287143(n+1)` -/
def P17423684894189855832.Spec : Prop :=
  ∀ n, P17423684894189855832.a n = A093039 (n + 1)

end A093039

/-! ## A093039.P15520574111924391183

`∑[A006918(n+1)-A000292(A142150(n+1))]`
-/

namespace A093039.P15520574111924391183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 (n + 1) - A000292 (A142150 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093039.P15520574111924391183

namespace A093039

/-- `∑[A006918(n+1)-A000292(A142150(n+1))]` -/
def P15520574111924391183.Spec : Prop :=
  ∀ n, P15520574111924391183.a n = A093039 (n + 1)

end A093039

/-! ## A093039.P13206652732833709258

`A189374(floor(3*n/2))`
-/

namespace A093039.P13206652732833709258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189374 ⌊3 * ((n : ℚ) / 2)⌋.toNat

end

end A093039.P13206652732833709258

namespace A093039

/-- `A189374(floor(3*n/2))` -/
def P13206652732833709258.Spec : Prop :=
  ∀ n, P13206652732833709258.a n = A093039 (n + 1)

end A093039

/-!
# A093040: Expansion of (1+x)/((1+x+x^2)(1-x-x^2)).

The programs for A093040, the canonical program `A093040.P12314796627639220076` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093040 has offset 0).

The definition of A093040 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1+x)/(1-x^2-2x^3-x^4))` (program `A093040.P12314796627639220076`, by `A093040.P12314796627639220076.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093040.P12314796627639220076

`ogf((1+x)/(1-x^2-2x^3-x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093040

/-- `ogf((1+x)/(1-x^2-2x^3-x^4))` -/
def P12314796627639220076.Spec : Prop :=
  ∀ n, P12314796627639220076.a n = A093040 n

theorem P12314796627639220076.correct : P12314796627639220076.Spec := by
  intro n
  simp only [A093040]

end A093040

/-! ## A093040.P13874470719062600148

`a(n-2)+2*a(n-3)+a(n-4)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=3`
-/

namespace A093040.P13874470719062600148
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 1, 1, 3] fun n a =>
  a (n - 2) + 2 * a (n - 3) + a (n - 4)

end

end A093040.P13874470719062600148

namespace A093040

/-- `a(n-2)+2*a(n-3)+a(n-4)` -/
def P13874470719062600148.Spec : Prop :=
  ∀ n, (P13874470719062600148.a n : ℤ) = A093040 n

end A093040

/-! ## A093040.P12527602475197859309

`A000045(n+2)/2+sqrt(3)*sin(2*π*n/3+π/3)/3`
-/

namespace A093040.P12527602475197859309
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A000045 (n + 2) : ℚ) / 2 : ℝ) + Real.sqrt (3 : ℝ) * Real.sin (2 * Real.pi * (n : ℝ) / 3 + Real.pi / 3) / 3

end

end A093040.P12527602475197859309

namespace A093040

/-- `A000045(n+2)/2+sqrt(3)*sin(2*π*n/3+π/3)/3` -/
def P12527602475197859309.Spec : Prop :=
  ∀ n, P12527602475197859309.a n = (A093040 n : ℝ)

end A093040

/-! ## A093040.P9631443826347728951

`A000045(n+2)/2+A057078(n)/2`
-/

namespace A093040.P9631443826347728951
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 2) : ℚ) / 2 + (A057078 n : ℚ) / 2

end

end A093040.P9631443826347728951

namespace A093040

/-- `A000045(n+2)/2+A057078(n)/2` -/
def P9631443826347728951.Spec : Prop :=
  ∀ n, P9631443826347728951.a n = (A093040 n : ℚ)

end A093040

/-! ## A093040.P11087566044742897967

`floor(A000045(n+3)/2)-floor(A000045(n+1)/2)`
-/

namespace A093040.P11087566044742897967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000045 (n + 3) : ℚ) / 2⌋ - ⌊(A000045 (n + 1) : ℚ) / 2⌋

end

end A093040.P11087566044742897967

namespace A093040

/-- `floor(A000045(n+3)/2)-floor(A000045(n+1)/2)` -/
def P11087566044742897967.Spec : Prop :=
  ∀ n, P11087566044742897967.a n = A093040 n

end A093040

/-! ## A093040.P11755577588869548360

`1-n%3+a(n-1)+a(n-2)` with `a(0)=1, a(1)=1`
-/

namespace A093040.P11755577588869548360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  1 - ((n % 3 : ℕ) : ℤ) + (a (n - 1) + a (n - 2))

end

end A093040.P11755577588869548360

namespace A093040

/-- `1-n%3+a(n-1)+a(n-2)` -/
def P11755577588869548360.Spec : Prop :=
  ∀ n, P11755577588869548360.a n = A093040 n

end A093040

/-! ## A093040.P15225017518886051596

`A000045(n)+a(n-3)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A093040.P15225017518886051596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  A000045 n + a (n - 3)

end

end A093040.P15225017518886051596

namespace A093040

/-- `A000045(n)+a(n-3)` -/
def P15225017518886051596.Spec : Prop :=
  ∀ n, P15225017518886051596.a n = A093040 n

end A093040

/-! ## A093040.P1969693925938974737

`A174618(∑[3/a(n-1)]+1)` with `a(0)=3`
-/

namespace A093040.P1969693925938974737
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [3] fun n f1 =>
  3 / f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A093040.P1969693925938974737

namespace A093040

/-- `A174618(∑[3/a(n-1)]+1)` -/
def P1969693925938974737.Spec : Prop :=
  ∀ n, P1969693925938974737.a n = A093040 n

end A093040

/-! ## A093040.P82911210389739028

`A174618(A338062(n+2))`
-/

namespace A093040.P82911210389739028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A338062 (n + 2)).toNat

end

end A093040.P82911210389739028

namespace A093040

/-- `A174618(A338062(n+2))` -/
def P82911210389739028.Spec : Prop :=
  ∀ n, P82911210389739028.a n = A093040 n

end A093040

/-! ## A093040.P10600263342739773640

`A178982(n)+A008620(n)`
-/

namespace A093040.P10600263342739773640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178982 n + A008620 n

end

end A093040.P10600263342739773640

namespace A093040

/-- `A178982(n)+A008620(n)` -/
def P10600263342739773640.Spec : Prop :=
  ∀ n, P10600263342739773640.a n = A093040 n

end A093040

/-! ## A093040.P5776464149983395451

`A106511(n)+A094966(n)`
-/

namespace A093040.P5776464149983395451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106511 n + A094966 n

end

end A093040.P5776464149983395451

namespace A093040

/-- `A106511(n)+A094966(n)` -/
def P5776464149983395451.Spec : Prop :=
  ∀ n, P5776464149983395451.a n = A093040 n

end A093040

/-! ## A093040.P17264424573749989260

`A174618(A014601(n+1)+1)`
-/

namespace A093040.P17264424573749989260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A014601 (n + 1) + 1).toNat

end

end A093040.P17264424573749989260

namespace A093040

/-- `A174618(A014601(n+1)+1)` -/
def P17264424573749989260.Spec : Prop :=
  ∀ n, P17264424573749989260.a n = A093040 n

end A093040

/-! ## A093040.P1735364996530223348

`A174618(A042964(n+1)+2)`
-/

namespace A093040.P1735364996530223348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A042964 (n + 1) + 2).toNat

end

end A093040.P1735364996530223348

namespace A093040

/-- `A174618(A042964(n+1)+2)` -/
def P1735364996530223348.Spec : Prop :=
  ∀ n, P1735364996530223348.a n = A093040 n

end A093040

/-! ## A093040.P13727936894833207343

`A174618(A053438(n+1)+2)`
-/

namespace A093040.P13727936894833207343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174618 (A053438 (n + 1) + 2).toNat

end

end A093040.P13727936894833207343

namespace A093040

/-- `A174618(A053438(n+1)+2)` -/
def P13727936894833207343.Spec : Prop :=
  ∀ n, P13727936894833207343.a n = A093040 n

end A093040

/-! ## A093040.P4618999129608636550

`A173673(A047231(n+2)+2)`
-/

namespace A093040.P4618999129608636550
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A047231 (n + 2) + 2).toNat

end

end A093040.P4618999129608636550

namespace A093040

/-- `A173673(A047231(n+2)+2)` -/
def P4618999129608636550.Spec : Prop :=
  ∀ n, P4618999129608636550.a n = A093040 n

end A093040

/-! ## A093040.P8859263252910650962

`A173673(A047271(n+2)+2)`
-/

namespace A093040.P8859263252910650962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173673 (A047271 (n + 2) + 2).toNat

end

end A093040.P8859263252910650962

namespace A093040

/-- `A173673(A047271(n+2)+2)` -/
def P8859263252910650962.Spec : Prop :=
  ∀ n, P8859263252910650962.a n = A093040 n

end A093040

/-! ## A093040.P1062833552992071465

`A094686(n+1)+A057078(n)`
-/

namespace A093040.P1062833552992071465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094686 (n + 1) + A057078 n

end

end A093040.P1062833552992071465

namespace A093040

/-- `A094686(n+1)+A057078(n)` -/
def P1062833552992071465.Spec : Prop :=
  ∀ n, P1062833552992071465.a n = A093040 n

end A093040

/-! ## A093040.P13467437719191710346

`A173173(n+1)+A004695(n)`
-/

namespace A093040.P13467437719191710346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173173 (n + 1) + A004695 n

end

end A093040.P13467437719191710346

namespace A093040

/-- `A173173(n+1)+A004695(n)` -/
def P13467437719191710346.Spec : Prop :=
  ∀ n, P13467437719191710346.a n = A093040 n

end A093040

/-! ## A093040.P4626369504440011387

`A201864(n+1)+A147997(n)`
-/

namespace A093040.P4626369504440011387
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201864 (n + 1) + A147997 n

end

end A093040.P4626369504440011387

namespace A093040

/-- `A201864(n+1)+A147997(n)` -/
def P4626369504440011387.Spec : Prop :=
  ∀ n, P4626369504440011387.a n = A093040 n

end A093040

/-!
# A093041: Expansion of (1-4x+6x^2-3x^3)/(1-5x+9x^2-8x^3+4x^4).

The programs for A093041, the canonical program `A093041.P11035215994302007908` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093041 has offset 0).

The definition of A093041 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+6x^2-3x^3)/(1-5x+9x^2-8x^3+4x^4))` (program `A093041.P11035215994302007908`, by `A093041.P11035215994302007908.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093041.P11035215994302007908

`ogf((1-4x+6x^2-3x^3)/(1-5x+9x^2-8x^3+4x^4))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093041

/-- `ogf((1-4x+6x^2-3x^3)/(1-5x+9x^2-8x^3+4x^4))` -/
def P11035215994302007908.Spec : Prop :=
  ∀ n, P11035215994302007908.a n = A093041 n

theorem P11035215994302007908.correct : P11035215994302007908.Spec := by
  intro n
  simp only [A093041]

end A093041

/-! ## A093041.P11981627363614205384

`2*A010892(n+1)/3+A000079(n)/3+A001787(n)/3`
-/

namespace A093041.P11981627363614205384
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 * A010892 (n + 1) : ℚ) / 3 + (A000079 n : ℚ) / 3 + (A001787 n : ℚ) / 3

end

end A093041.P11981627363614205384

namespace A093041

/-- `2*A010892(n+1)/3+A000079(n)/3+A001787(n)/3` -/
def P11981627363614205384.Spec : Prop :=
  ∀ n, P11981627363614205384.a n = (A093041 n : ℚ)

end A093041

/-! ## A093041.P14055015513550372121

`A137221(n)+A130781(n)`
-/

namespace A093041.P14055015513550372121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137221 n + A130781 n

end

end A093041.P14055015513550372121

namespace A093041

/-- `A137221(n)+A130781(n)` -/
def P14055015513550372121.Spec : Prop :=
  ∀ n, P14055015513550372121.a n = A093041 n

end A093041

/-! ## A093041.P12705662813457165430

`A137221(n)+A024493(n+1)`
-/

namespace A093041.P12705662813457165430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137221 n + A024493 (n + 1)

end

end A093041.P12705662813457165430

namespace A093041

/-- `A137221(n)+A024493(n+1)` -/
def P12705662813457165430.Spec : Prop :=
  ∀ n, P12705662813457165430.a n = A093041 n

end A093041

/-! ## A093041.P13017634349868326628

`A010892(n+1)+A137221(n)+A024495(n+1)`
-/

namespace A093041.P13017634349868326628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + (A137221 n + A024495 (n + 1))

end

end A093041.P13017634349868326628

namespace A093041

/-- `A010892(n+1)+A137221(n)+A024495(n+1)` -/
def P13017634349868326628.Spec : Prop :=
  ∀ n, P13017634349868326628.a n = A093041 n

end A093041

/-! ## A093041.P11524787149852354622

`A024494(n+2)+A137221(n)-A024494(n+1)`
-/

namespace A093041.P11524787149852354622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024494 (n + 2) + (A137221 n - A024494 (n + 1))

end

end A093041.P11524787149852354622

namespace A093041

/-- `A024494(n+2)+A137221(n)-A024494(n+1)` -/
def P11524787149852354622.Spec : Prop :=
  ∀ n, P11524787149852354622.a n = A093041 n

end A093041

/-! ## A093041.P9185120875821774503

`A024493(n)+Δ[A137221(n)]`
-/

namespace A093041.P9185120875821774503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137221 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024493 n + (f1 (n + 1) - f1 n)

end

end A093041.P9185120875821774503

namespace A093041

/-- `A024493(n)+Δ[A137221(n)]` -/
def P9185120875821774503.Spec : Prop :=
  ∀ n, P9185120875821774503.a n = A093041 n

end A093041

/-! ## A093041.P13357032612664893100

`A010892(n+1)+A001787(n)-A137221(n+1)`
-/

namespace A093041.P13357032612664893100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (n + 1) + (A001787 n - A137221 (n + 1))

end

end A093041.P13357032612664893100

namespace A093041

/-- `A010892(n+1)+A001787(n)-A137221(n+1)` -/
def P13357032612664893100.Spec : Prop :=
  ∀ n, P13357032612664893100.a n = A093041 n

end A093041

/-!
# A093042: a(n) = Jacobsthal(n) * Fibonacci(n).

The programs for A093042, the canonical program `A093042.P826109446157459072` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093042 has offset 0).

The definition of A093042 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093042.P826109446157459072

`A001045(n)*A000045(n)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093042

/-- `A001045(n)*A000045(n)` -/
def P826109446157459072.Spec : Prop :=
  ∀ n, P826109446157459072.a n = A093042 n

theorem P826109446157459072.correct : P826109446157459072.Spec := by
  intro n
  simp only [A093042]

end A093042

/-! ## A093042.P3801371934222549805

`A093044(n+1)/2`
-/

namespace A093042.P3801371934222549805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A093044 (n + 1) : ℚ) / 2

end

end A093042.P3801371934222549805

namespace A093042

/-- `A093044(n+1)/2` -/
def P3801371934222549805.Spec : Prop :=
  ∀ n, P3801371934222549805.a n = (A093042 n : ℚ)

end A093042

/-! ## A093042.P6059744052329063386

`round(2^n/3)*Δ[A000071(n+1)]`
-/

namespace A093042.P6059744052329063386
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * (f1 (n + 1) - f1 n)

end

end A093042.P6059744052329063386

namespace A093042

/-- `round(2^n/3)*Δ[A000071(n+1)]` -/
def P6059744052329063386.Spec : Prop :=
  ∀ n, P6059744052329063386.a n = A093042 n

end A093042

/-! ## A093042.P4048859222957040361

`Δ[floor(2^n/3)]*Δ[A000045(n+1)]`
-/

namespace A093042.P4048859222957040361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n : ℚ) / 3⌋

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093042.P4048859222957040361

namespace A093042

/-- `Δ[floor(2^n/3)]*Δ[A000045(n+1)]` -/
def P4048859222957040361.Spec : Prop :=
  ∀ n, P4048859222957040361.a n = A093042 n

end A093042

/-! ## A093042.P932142714914081659

`A093122(n)-A093043(n)`
-/

namespace A093042.P932142714914081659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093122 n - A093043 n

end

end A093042.P932142714914081659

namespace A093042

/-- `A093122(n)-A093043(n)` -/
def P932142714914081659.Spec : Prop :=
  ∀ n, P932142714914081659.a n = A093042 n

end A093042

/-! ## A093042.P8300095480736826183

`A000045(n)*A152046(n)`
-/

namespace A093042.P8300095480736826183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A152046 n

end

end A093042.P8300095480736826183

namespace A093042

/-- `A000045(n)*A152046(n)` -/
def P8300095480736826183.Spec : Prop :=
  ∀ n, P8300095480736826183.a n = A093042 n

end A093042

/-! ## A093042.P11645395233942864210

`A000045(n)*A167167(n)`
-/

namespace A093042.P11645395233942864210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A167167 n

end

end A093042.P11645395233942864210

namespace A093042

/-- `A000045(n)*A167167(n)` -/
def P11645395233942864210.Spec : Prop :=
  ∀ n, P11645395233942864210.a n = A093042 n

end A093042

/-! ## A093042.P15113653650428182640

`A000045(n)*Δ[A005578(n)]`
-/

namespace A093042.P15113653650428182640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * (f1 (n + 1) - f1 n)

end

end A093042.P15113653650428182640

namespace A093042

/-- `A000045(n)*Δ[A005578(n)]` -/
def P15113653650428182640.Spec : Prop :=
  ∀ n, P15113653650428182640.a n = A093042 n

end A093042

/-! ## A093042.P9341112208733376338

`A212804(n+1)*A001045(n)`
-/

namespace A093042.P9341112208733376338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (n + 1) * A001045 n

end

end A093042.P9341112208733376338

namespace A093042

/-- `A212804(n+1)*A001045(n)` -/
def P9341112208733376338.Spec : Prop :=
  ∀ n, P9341112208733376338.a n = A093042 n

end A093042

/-! ## A093042.P3251248672251652927

`A001045(n)*A324969(n+1)`
-/

namespace A093042.P3251248672251652927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A324969 (n + 1)

end

end A093042.P3251248672251652927

namespace A093042

/-- `A001045(n)*A324969(n+1)` -/
def P3251248672251652927.Spec : Prop :=
  ∀ n, P3251248672251652927.a n = A093042 n

end A093042

/-! ## A093042.P1680372967556642363

`(A001611(n)-1)*A001045(n)`
-/

namespace A093042.P1680372967556642363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * A001045 n

end

end A093042.P1680372967556642363

namespace A093042

/-- `(A001611(n)-1)*A001045(n)` -/
def P1680372967556642363.Spec : Prop :=
  ∀ n, P1680372967556642363.a n = A093042 n

theorem P1680372967556642363.correct : P1680372967556642363.Spec := by
  intro n
  simp only [A093042, Nat.add_sub_cancel, A093042.P1680372967556642363.a, A093042.P826109446157459072.a, A000045, A000045.P11838749114346432762.a, A001045, A001045.P7867134490160464591.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093042

/-! ## A093042.P16133592597476647957

`A001045(n)*A053602(2*n)`
-/

namespace A093042.P16133592597476647957
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A053602 (2 * n)

end

end A093042.P16133592597476647957

namespace A093042

/-- `A001045(n)*A053602(2*n)` -/
def P16133592597476647957.Spec : Prop :=
  ∀ n, P16133592597476647957.a n = A093042 n

end A093042

/-! ## A093042.P3506183215841057606

`A001045(n)*A103609(2*n)`
-/

namespace A093042.P3506183215841057606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n * A103609 (2 * n)

end

end A093042.P3506183215841057606

namespace A093042

/-- `A001045(n)*A103609(2*n)` -/
def P3506183215841057606.Spec : Prop :=
  ∀ n, P3506183215841057606.a n = A093042 n

end A093042

/-! ## A093042.P3357497040507239400

`A000045(n)*A133684(2*n)`
-/

namespace A093042.P3357497040507239400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n * A133684 (2 * n)

end

end A093042.P3357497040507239400

namespace A093042

/-- `A000045(n)*A133684(2*n)` -/
def P3357497040507239400.Spec : Prop :=
  ∀ n, P3357497040507239400.a n = A093042 n

end A093042

/-! ## A093042.P16204942471285927747

`A103609(2*n)*A152046(n)`
-/

namespace A093042.P16204942471285927747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) * A152046 n

end

end A093042.P16204942471285927747

namespace A093042

/-- `A103609(2*n)*A152046(n)` -/
def P16204942471285927747.Spec : Prop :=
  ∀ n, P16204942471285927747.a n = A093042 n

end A093042

/-! ## A093042.P5317028124182028025

`A103609(2*n)*A167167(n)`
-/

namespace A093042.P5317028124182028025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * n) * A167167 n

end

end A093042.P5317028124182028025

namespace A093042

/-- `A103609(2*n)*A167167(n)` -/
def P5317028124182028025.Spec : Prop :=
  ∀ n, P5317028124182028025.a n = A093042 n

end A093042

/-! ## A093042.P16335605878627881335

`A000045(n)/2*A014113(n)`
-/

namespace A093042.P16335605878627881335
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000045 n : ℚ) / 2 * (A014113 n : ℚ)

end

end A093042.P16335605878627881335

namespace A093042

/-- `A000045(n)/2*A014113(n)` -/
def P16335605878627881335.Spec : Prop :=
  ∀ n, P16335605878627881335.a n = (A093042 n : ℚ)

end A093042

/-!
# A093043: a(n) = Jacobsthal(n)*Fibonacci(n-1).

The programs for A093043, the canonical program `A093043.P16195009962351085280` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093043 has offset 0).

The definition of A093043 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093043.P16195009962351085280

`a(n-1)+7*a(n-2)+2*a(n-3)-4*a(n-4)` with `a(0)=0, a(1)=0, a(2)=1, a(3)=3`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093043

/-- `a(n-1)+7*a(n-2)+2*a(n-3)-4*a(n-4)` -/
def P16195009962351085280.Spec : Prop :=
  ∀ n, P16195009962351085280.a n = A093043 n

theorem P16195009962351085280.correct : P16195009962351085280.Spec := by
  intro n
  simp only [A093043]

end A093043

/-! ## A093043.P8081198121212563523

`round(2^n/3)*A212804(n)`
-/

namespace A093043.P8081198121212563523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * A212804 n

end

end A093043.P8081198121212563523

namespace A093043

/-- `round(2^n/3)*A212804(n)` -/
def P8081198121212563523.Spec : Prop :=
  ∀ n, P8081198121212563523.a n = A093043 n

end A093043

/-! ## A093043.P683665608198288114

`round(2^n/3)*Δ[A000045(n)]`
-/

namespace A093043.P683665608198288114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * (f1 (n + 1) - f1 n)

end

end A093043.P683665608198288114

namespace A093043

/-- `round(2^n/3)*Δ[A000045(n)]` -/
def P683665608198288114.Spec : Prop :=
  ∀ n, P683665608198288114.a n = A093043 n

end A093043

/-! ## A093043.P7741514125185267804

`round(2^n/3)*Δ[A001611(n)]`
-/

namespace A093043.P7741514125185267804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * (f1 (n + 1) - f1 n)

end

end A093043.P7741514125185267804

namespace A093043

/-- `round(2^n/3)*Δ[A001611(n)]` -/
def P7741514125185267804.Spec : Prop :=
  ∀ n, P7741514125185267804.a n = A093043 n

end A093043

/-! ## A093043.P11817966283336391238

`round(2^n/3)*A000045(abs(1-n))`
-/

namespace A093043.P11817966283336391238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * A000045 |1 - (n : ℤ)|.toNat

end

end A093043.P11817966283336391238

namespace A093043

/-- `round(2^n/3)*A000045(abs(1-n))` -/
def P11817966283336391238.Spec : Prop :=
  ∀ n, P11817966283336391238.a n = A093043 n

end A093043

/-! ## A093043.P1124100663833998470

`round(2^n/3)*Δ[sqrt(A245306(n)-1)]`
-/

namespace A093043.P1124100663833998470
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A245306 n - 1 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) : ℝ) * (f1 (n + 1) - f1 n)

end

end A093043.P1124100663833998470

namespace A093043

/-- `round(2^n/3)*Δ[sqrt(A245306(n)-1)]` -/
def P1124100663833998470.Spec : Prop :=
  ∀ n, P1124100663833998470.a n = (A093043 n : ℝ)

end A093043

/-! ## A093043.P11644555085262494560

`round(2^n/3)*Δ[Δ[A000071(n+1)]]`
-/

namespace A093043.P11644555085262494560
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * (f1 (n + 1) - f1 n)

end

end A093043.P11644555085262494560

namespace A093043

/-- `round(2^n/3)*Δ[Δ[A000071(n+1)]]` -/
def P11644555085262494560.Spec : Prop :=
  ∀ n, P11644555085262494560.a n = A093043 n

end A093043

/-! ## A093043.P781387343308861565

`Δ[A000045(n)]*A001045(n)`
-/

namespace A093043.P781387343308861565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 n

end

end A093043.P781387343308861565

namespace A093043

/-- `Δ[A000045(n)]*A001045(n)` -/
def P781387343308861565.Spec : Prop :=
  ∀ n, P781387343308861565.a n = A093043 n

end A093043

/-! ## A093043.P13807562272530114756

`Δ[A001611(n)]*A001045(n)`
-/

namespace A093043.P13807562272530114756
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 n

end

end A093043.P13807562272530114756

namespace A093043

/-- `Δ[A001611(n)]*A001045(n)` -/
def P13807562272530114756.Spec : Prop :=
  ∀ n, P13807562272530114756.a n = A093043 n

end A093043

/-! ## A093043.P17789368424942436528

`Δ[A000045(n)]*Δ[A005578(n)]`
-/

namespace A093043.P17789368424942436528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093043.P17789368424942436528

namespace A093043

/-- `Δ[A000045(n)]*Δ[A005578(n)]` -/
def P17789368424942436528.Spec : Prop :=
  ∀ n, P17789368424942436528.a n = A093043 n

end A093043

/-! ## A093043.P2504161078007484001

`Δ[Δ[A081659(n)]]*A001045(n)`
-/

namespace A093043.P2504161078007484001
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081659 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 n

end

end A093043.P2504161078007484001

namespace A093043

/-- `Δ[Δ[A081659(n)]]*A001045(n)` -/
def P2504161078007484001.Spec : Prop :=
  ∀ n, P2504161078007484001.a n = A093043 n

end A093043

/-! ## A093043.P3365742220941133861

`A000045(abs(1-n))*A001045(n)`
-/

namespace A093043.P3365742220941133861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat * A001045 n

end

end A093043.P3365742220941133861

namespace A093043

/-- `A000045(abs(1-n))*A001045(n)` -/
def P3365742220941133861.Spec : Prop :=
  ∀ n, P3365742220941133861.a n = A093043 n

end A093043

/-! ## A093043.P6062481530111017325

`Δ[A053602(2*n)]*A001045(n)`
-/

namespace A093043.P6062481530111017325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 n

end

end A093043.P6062481530111017325

namespace A093043

/-- `Δ[A053602(2*n)]*A001045(n)` -/
def P6062481530111017325.Spec : Prop :=
  ∀ n, P6062481530111017325.a n = A093043 n

end A093043

/-! ## A093043.P636063612869685548

`Δ[A000045(n)]*A092808(xor(1, n))`
-/

namespace A093043.P636063612869685548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A092808 (Nat.xor 1 n)

end

end A093043.P636063612869685548

namespace A093043

/-- `Δ[A000045(n)]*A092808(xor(1, n))` -/
def P636063612869685548.Spec : Prop :=
  ∀ n, P636063612869685548.a n = A093043 n

end A093043

/-! ## A093043.P14587587813725917076

`Δ[Δ[A000071(n+1)]]*A001045(n)`
-/

namespace A093043.P14587587813725917076
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A001045 n

end

end A093043.P14587587813725917076

namespace A093043

/-- `Δ[Δ[A000071(n+1)]]*A001045(n)` -/
def P14587587813725917076.Spec : Prop :=
  ∀ n, P14587587813725917076.a n = A093043 n

end A093043

/-! ## A093043.P892279158393080085

`Δ[A000045(n)]*Δ[A141023(n)/3]`
-/

namespace A093043.P892279158393080085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A141023 n : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n : ℚ) * (f2 (n + 1) - f2 n)

end

end A093043.P892279158393080085

namespace A093043

/-- `Δ[A000045(n)]*Δ[A141023(n)/3]` -/
def P892279158393080085.Spec : Prop :=
  ∀ n, P892279158393080085.a n = (A093043 n : ℚ)

end A093043

/-! ## A093043.P8935600927879224804

`round(2^n/3)*Δ[A103609(A004277(n))]`
-/

namespace A093043.P8935600927879224804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * (f1 (n + 1) - f1 n)

end

end A093043.P8935600927879224804

namespace A093043

/-- `round(2^n/3)*Δ[A103609(A004277(n))]` -/
def P8935600927879224804.Spec : Prop :=
  ∀ n, P8935600927879224804.a n = A093043 n

end A093043

/-! ## A093043.P9265715489200255458

`round(2^n/3)*Δ[A293545(n)+A293543(n)]`
-/

namespace A093043.P9265715489200255458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293545 n + A293543 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * (f1 (n + 1) - f1 n)

end

end A093043.P9265715489200255458

namespace A093043

/-- `round(2^n/3)*Δ[A293545(n)+A293543(n)]` -/
def P9265715489200255458.Spec : Prop :=
  ∀ n, P9265715489200255458.a n = A093043 n

end A093043

/-! ## A093043.P5280478201566101988

`round(2^n/3)*Δ[A192956(n)-A192958(n)]`
-/

namespace A093043.P5280478201566101988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192956 n - A192958 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) * (f1 (n + 1) - f1 n)

end

end A093043.P5280478201566101988

namespace A093043

/-- `round(2^n/3)*Δ[A192956(n)-A192958(n)]` -/
def P5280478201566101988.Spec : Prop :=
  ∀ n, P5280478201566101988.a n = A093043 n

end A093043

/-!
# A093044: A Jacobsthal Fibonacci product: a(n) = (2^n + 2*(-1)^n)*Fibonacci(n-1)/3.

The programs for A093044, the canonical program `A093044.P8184675162386132713` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093044 has offset 0).

The definition of A093044 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093044.P8184675162386132713

`a(n-1)+7*a(n-2)+2*a(n-3)-4*a(n-4)` with `a(0)=1, a(1)=0, a(2)=2, a(3)=2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093044

/-- `a(n-1)+7*a(n-2)+2*a(n-3)-4*a(n-4)` -/
def P8184675162386132713.Spec : Prop :=
  ∀ n, P8184675162386132713.a n = A093044 n

theorem P8184675162386132713.correct : P8184675162386132713.Spec := by
  intro n
  simp only [A093044]

end A093044

/-! ## A093044.P12696581736926196143

`Δ[round(2^n/3)]*A212804(n)`
-/

namespace A093044.P12696581736926196143
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 n

end

end A093044.P12696581736926196143

namespace A093044

/-- `Δ[round(2^n/3)]*A212804(n)` -/
def P12696581736926196143.Spec : Prop :=
  ∀ n, P12696581736926196143.a n = A093044 n

end A093044

/-! ## A093044.P5773786734761813507

`Δ[round(2^n/3)]*Δ[A000045(n)]`
-/

namespace A093044.P5773786734761813507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093044.P5773786734761813507

namespace A093044

/-- `Δ[round(2^n/3)]*Δ[A000045(n)]` -/
def P5773786734761813507.Spec : Prop :=
  ∀ n, P5773786734761813507.a n = A093044 n

end A093044

/-! ## A093044.P15334834726011686077

`Δ[A000045(n)]*Δ[A001045(n)]`
-/

namespace A093044.P15334834726011686077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093044.P15334834726011686077

namespace A093044

/-- `Δ[A000045(n)]*Δ[A001045(n)]` -/
def P15334834726011686077.Spec : Prop :=
  ∀ n, P15334834726011686077.a n = A093044 n

end A093044

/-! ## A093044.P14192773332802431531

`Δ[A001045(n)]*Δ[A001611(n)]`
-/

namespace A093044.P14192773332802431531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093044.P14192773332802431531

namespace A093044

/-- `Δ[A001045(n)]*Δ[A001611(n)]` -/
def P14192773332802431531.Spec : Prop :=
  ∀ n, P14192773332802431531.a n = A093044 n

end A093044

/-! ## A093044.P1546666555961323331

`Δ[A000045(n)]*Δ[A128209(n)]`
-/

namespace A093044.P1546666555961323331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093044.P1546666555961323331

namespace A093044

/-- `Δ[A000045(n)]*Δ[A128209(n)]` -/
def P1546666555961323331.Spec : Prop :=
  ∀ n, P1546666555961323331.a n = A093044 n

end A093044

/-! ## A093044.P8388429213445321167

`A000045(abs(1-n))*A078008(n)`
-/

namespace A093044.P8388429213445321167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat * A078008 n

end

end A093044.P8388429213445321167

namespace A093044

/-- `A000045(abs(1-n))*A078008(n)` -/
def P8388429213445321167.Spec : Prop :=
  ∀ n, P8388429213445321167.a n = A093044 n

end A093044

/-! ## A093044.P5332126261195447595

`Δ[Δ[A000071(n+1)]]*A078008(n)`
-/

namespace A093044.P5332126261195447595
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A078008 n

end

end A093044.P5332126261195447595

namespace A093044

/-- `Δ[Δ[A000071(n+1)]]*A078008(n)` -/
def P5332126261195447595.Spec : Prop :=
  ∀ n, P5332126261195447595.a n = A093044 n

end A093044

/-! ## A093044.P8426130913455719232

`(A000045(n+1)-A000045(n))*A078008(n)`
-/

namespace A093044.P8426130913455719232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000045 (n + 1) - A000045 n) * A078008 n

end

end A093044.P8426130913455719232

namespace A093044

/-- `(A000045(n+1)-A000045(n))*A078008(n)` -/
def P8426130913455719232.Spec : Prop :=
  ∀ n, P8426130913455719232.a n = A093044 n

end A093044

/-! ## A093044.P9334881578319840749

`A093121(n)-A093045(n)`
-/

namespace A093044.P9334881578319840749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093121 n - A093045 n

end

end A093044.P9334881578319840749

namespace A093044

/-- `A093121(n)-A093045(n)` -/
def P9334881578319840749.Spec : Prop :=
  ∀ n, P9334881578319840749.a n = A093044 n

end A093044

/-! ## A093044.P8060075182391538525

`A093121(n)-A000045(n)*A078008(n)`
-/

namespace A093044.P8060075182391538525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093121 n - A000045 n * A078008 n

end

end A093044.P8060075182391538525

namespace A093044

/-- `A093121(n)-A000045(n)*A078008(n)` -/
def P8060075182391538525.Spec : Prop :=
  ∀ n, P8060075182391538525.a n = A093044 n

end A093044

/-! ## A093044.P3695541407644364700

`A136531(A000217(n))*A151575(n)`
-/

namespace A093044.P3695541407644364700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136531 (A000217 n).toNat * A151575 n

end

end A093044.P3695541407644364700

namespace A093044

/-- `A136531(A000217(n))*A151575(n)` -/
def P3695541407644364700.Spec : Prop :=
  ∀ n, P3695541407644364700.a n = A093044 n

end A093044

/-!
# A093045: 2*Jacobsthal(n-1)*Fibonacci(n).

The programs for A093045, the canonical program `A093045.P7082578674066939625` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093045 has offset 0).

The definition of A093045 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 198 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093045.P7082578674066939625

`A000045(n)*Δ[round(2^n/3)]`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093045

/-- `A000045(n)*Δ[round(2^n/3)]` -/
def P7082578674066939625.Spec : Prop :=
  ∀ n, P7082578674066939625.a n = A093045 n

theorem P7082578674066939625.correct : P7082578674066939625.Spec := by
  intro n
  simp only [A093045]

end A093045

/-! ## A093045.P9645488787535635260

`Δ[round(2^n/3)]*A212804(n+1)`
-/

namespace A093045.P9645488787535635260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A212804 (n + 1)

end

end A093045.P9645488787535635260

namespace A093045

/-- `Δ[round(2^n/3)]*A212804(n+1)` -/
def P9645488787535635260.Spec : Prop :=
  ∀ n, P9645488787535635260.a n = A093045 n

end A093045

/-! ## A093045.P10266480192185535708

`(A001611(n)-1)*Δ[round(2^n/3)]`
-/

namespace A093045.P10266480192185535708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001611 n - 1) * (f1 (n + 1) - f1 n)

end

end A093045.P10266480192185535708

namespace A093045

/-- `(A001611(n)-1)*Δ[round(2^n/3)]` -/
def P10266480192185535708.Spec : Prop :=
  ∀ n, P10266480192185535708.a n = A093045 n

theorem P10266480192185535708.correct : P10266480192185535708.Spec := by
  intro n
  simp only [A093045, Nat.add_sub_cancel, A093045.P10266480192185535708.f1, A093045.P10266480192185535708.a, A093045.P7082578674066939625.f1, A093045.P7082578674066939625.a, A000045, A000045.P11838749114346432762.a, A001611, A001611.P16593652898942925329.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093045

/-! ## A093045.P2187425647805407709

`sqrt(A245306(n)-1)*Δ[round(2^n/3)]`
-/

namespace A093045.P2187425647805407709
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A245306 n - 1 : ℝ) * (f1 (n + 1) - f1 n : ℝ)

end

end A093045.P2187425647805407709

namespace A093045

/-- `sqrt(A245306(n)-1)*Δ[round(2^n/3)]` -/
def P2187425647805407709.Spec : Prop :=
  ∀ n, P2187425647805407709.a n = (A093045 n : ℝ)

end A093045

/-! ## A093045.P7500893102601238795

`Δ[round(2^n/3)]*Δ[A000071(n+1)]`
-/

namespace A093045.P7500893102601238795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093045.P7500893102601238795

namespace A093045

/-- `Δ[round(2^n/3)]*Δ[A000071(n+1)]` -/
def P7500893102601238795.Spec : Prop :=
  ∀ n, P7500893102601238795.a n = A093045 n

end A093045

/-! ## A093045.P8793963396817783029

`A093121(n)-A093044(n)`
-/

namespace A093045.P8793963396817783029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093121 n - A093044 n

end

end A093045.P8793963396817783029

namespace A093045

/-- `A093121(n)-A093044(n)` -/
def P8793963396817783029.Spec : Prop :=
  ∀ n, P8793963396817783029.a n = A093045 n

end A093045

/-! ## A093045.P10607110606445420112

`A078008(n)*A000045(n)`
-/

namespace A093045.P10607110606445420112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078008 n * A000045 n

end

end A093045.P10607110606445420112

namespace A093045

/-- `A078008(n)*A000045(n)` -/
def P10607110606445420112.Spec : Prop :=
  ∀ n, P10607110606445420112.a n = A093045 n

end A093045

/-! ## A093045.P4146107575909612113

`Δ[A001045(n)]*A000045(n)`
-/

namespace A093045.P4146107575909612113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000045 n

end

end A093045.P4146107575909612113

namespace A093045

/-- `Δ[A001045(n)]*A000045(n)` -/
def P4146107575909612113.Spec : Prop :=
  ∀ n, P4146107575909612113.a n = A093045 n

end A093045

/-! ## A093045.P2647938200384943814

`Δ[A128209(n)]*A000045(n)`
-/

namespace A093045.P2647938200384943814
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128209 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000045 n

end

end A093045.P2647938200384943814

namespace A093045

/-- `Δ[A128209(n)]*A000045(n)` -/
def P2647938200384943814.Spec : Prop :=
  ∀ n, P2647938200384943814.a n = A093045 n

end A093045

/-! ## A093045.P15617381531504641464

`A093043(n+1)-A093042(n)`
-/

namespace A093045.P15617381531504641464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093043 (n + 1) - A093042 n

end

end A093045.P15617381531504641464

namespace A093045

/-- `A093043(n+1)-A093042(n)` -/
def P15617381531504641464.Spec : Prop :=
  ∀ n, P15617381531504641464.a n = A093045 n

end A093045

/-! ## A093045.P7435201902343489860

`(A153772(n)+2)*A000045(n)`
-/

namespace A093045.P7435201902343489860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A153772 n + 2) * A000045 n

end

end A093045.P7435201902343489860

namespace A093045

/-- `(A153772(n)+2)*A000045(n)` -/
def P7435201902343489860.Spec : Prop :=
  ∀ n, P7435201902343489860.a n = A093045 n

end A093045

/-! ## A093045.P12915571306676887597

`Δ[Δ[A005578(n)]]*A000045(n)`
-/

namespace A093045.P12915571306676887597
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005578 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A000045 n

end

end A093045.P12915571306676887597

namespace A093045

/-- `Δ[Δ[A005578(n)]]*A000045(n)` -/
def P12915571306676887597.Spec : Prop :=
  ∀ n, P12915571306676887597.a n = A093045 n

end A093045

/-! ## A093045.P11756685448865382480

`abs((1-A140966(n))*A000045(n))`
-/

namespace A093045.P11756685448865382480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(1 - A140966 n) * A000045 n|

end

end A093045.P11756685448865382480

namespace A093045

/-- `abs((1-A140966(n))*A000045(n))` -/
def P11756685448865382480.Spec : Prop :=
  ∀ n, P11756685448865382480.a n = A093045 n

end A093045

/-! ## A093045.P5296594278368870059

`Δ[A000071(n+1)]*A078008(n)`
-/

namespace A093045.P5296594278368870059
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A078008 n

end

end A093045.P5296594278368870059

namespace A093045

/-- `Δ[A000071(n+1)]*A078008(n)` -/
def P5296594278368870059.Spec : Prop :=
  ∀ n, P5296594278368870059.a n = A093045 n

end A093045

/-! ## A093045.P11051931010164350149

`Δ[A001045(n)]*A053602(2*n)`
-/

namespace A093045.P11051931010164350149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A053602 (2 * n)

end

end A093045.P11051931010164350149

namespace A093045

/-- `Δ[A001045(n)]*A053602(2*n)` -/
def P11051931010164350149.Spec : Prop :=
  ∀ n, P11051931010164350149.a n = A093045 n

end A093045

/-! ## A093045.P13588977376035549178

`A118658(n+1)*A328284(n+2)`
-/

namespace A093045.P13588977376035549178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118658 (n + 1) * A328284 (n + 2)

end

end A093045.P13588977376035549178

namespace A093045

/-- `A118658(n+1)*A328284(n+2)` -/
def P13588977376035549178.Spec : Prop :=
  ∀ n, P13588977376035549178.a n = A093045 n

end A093045

/-! ## A093045.P11214179001987749900

`Δ[A000071(n+1)]*Δ[A001045(n)]`
-/

namespace A093045.P11214179001987749900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093045.P11214179001987749900

namespace A093045

/-- `Δ[A000071(n+1)]*Δ[A001045(n)]` -/
def P11214179001987749900.Spec : Prop :=
  ∀ n, P11214179001987749900.a n = A093045 n

end A093045

/-! ## A093045.P15364410743437804332

`Δ[A001611(n+1)]*Δ[A001045(n)]`
-/

namespace A093045.P15364410743437804332
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093045.P15364410743437804332

namespace A093045

/-- `Δ[A001611(n+1)]*Δ[A001045(n)]` -/
def P15364410743437804332.Spec : Prop :=
  ∀ n, P15364410743437804332.a n = A093045 n

end A093045

/-! ## A093045.P8173185411691552090

`Δ[A000071(n+1)]*Δ[A153643(n)]`
-/

namespace A093045.P8173185411691552090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * (f2 (n + 1) - f2 n)

end

end A093045.P8173185411691552090

namespace A093045

/-- `Δ[A000071(n+1)]*Δ[A153643(n)]` -/
def P8173185411691552090.Spec : Prop :=
  ∀ n, P8173185411691552090.a n = A093045 n

end A093045

/-!
# A093046: Primes for which A049076(p) = 13.

The programs for A093046, there is no canonical definition to state claims against.
-/

/-! ## A093046.P18353879482395143494

`A057847(A049078(n+1))`
-/

namespace A093046.P18353879482395143494
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (A049078 (n + 1)).toNat

end

end A093046.P18353879482395143494

/-! ## A093046.P16458850507899477040

`A057851(A049079(n+1))`
-/

namespace A093046.P16458850507899477040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (A049079 (n + 1)).toNat

end

end A093046.P16458850507899477040

/-! ## A093046.P13023524569759217655

`A057847(A000040(A007821(n+1)))`
-/

namespace A093046.P13023524569759217655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057847 (A000040 (A007821 (n + 1)).toNat).toNat

end

end A093046.P13023524569759217655

/-! ## A093046.P10264450188732198571

`∑{p}[A006450(A018252(n+1)), A057847(#)]`
-/

namespace A093046.P10264450188732198571
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006450 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A057847 p

end

end A093046.P10264450188732198571

/-! ## A093046.P3495235488697447134

`A057851(∑{p}[A049078(n+1), A000040(#)])`
-/

namespace A093046.P3495235488697447134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049078 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057851 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, A000040 p).toNat

end

end A093046.P3495235488697447134

/-!
# A093047: Primes p whose order of primeness A078442(p) is at least 12.

The programs for A093047, there is no canonical definition to state claims against.
-/

/-! ## A093047.P8989776847810363990

`A058332(A000040(n+1))`
-/

namespace A093047.P8989776847810363990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058332 (A000040 (n + 1)).toNat

end

end A093047.P8989776847810363990

/-! ## A093047.P4802613287048448886

`A058332(p?[comp[n²]])`
-/

namespace A093047.P4802613287048448886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058332 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n))

end

end A093047.P4802613287048448886

/-! ## A093047.P15827292362623220445

`A058332(eq[1, ∑{e}[n, #]])`
-/

namespace A093047.P15827292362623220445
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), Nat.factorization (f3 n) p

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058332 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A093047.P15827292362623220445

/-! ## A093047.P10117476730983576272

`A058332(comp[n^C(2, ∑{e}[n, #])!])`
-/

namespace A093047.P10117476730983576272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ Nat.factorial (Nat.choose 2 (∑ p ∈ Nat.primeFactors (f2 n), Nat.factorization (f2 n) p))

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058332 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A093047.P10117476730983576272

/-! ## A093047.P6040587134896498395

`A058332(∑{p}[p?[round(8*n/7)]², #])`
-/

namespace A093047.P6040587134896498395
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058332 (∑ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A093047.P6040587134896498395

/-!
# A093048: a(n) = n minus exponent of 2 in n, with a(0) = 0.

The programs for A093048, the canonical program `A093048.P10837286212524787865` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093048 has offset 0).

The definition of A093048 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093048.P10837286212524787865

`n-∑{e}[and(n, -n), #]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093048

/-- `n-∑{e}[and(n, -n), #]` -/
def P10837286212524787865.Spec : Prop :=
  ∀ n, P10837286212524787865.a n = A093048 n

theorem P10837286212524787865.correct : P10837286212524787865.Spec := by
  intro n
  simp only [A093048]

end A093048

/-! ## A093048.P6643046129108023951

`n-∑{e}[or(n, -n), #]`
-/

namespace A093048.P6643046129108023951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A093048.P6643046129108023951

namespace A093048

/-- `n-∑{e}[or(n, -n), #]` -/
def P6643046129108023951.Spec : Prop :=
  ∀ n, P6643046129108023951.a n = A093048 n

end A093048

/-! ## A093048.P554192292641441767

`n-val(round(sqrt(n²+1)), 2)`
-/

namespace A093048.P554192292641441767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat 2 : ℤ)

end

end A093048.P554192292641441767

namespace A093048

/-- `n-val(round(sqrt(n²+1)), 2)` -/
def P554192292641441767.Spec : Prop :=
  ∀ n, P554192292641441767.a n = A093048 n

end A093048

/-! ## A093048.P13990480815326760838

`∑{e}[xor(n, -n), n+1-#]`
-/

namespace A093048.P13990480815326760838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((n + 1 : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A093048.P13990480815326760838

namespace A093048

/-- `∑{e}[xor(n, -n), n+1-#]` -/
def P13990480815326760838.Spec : Prop :=
  ∀ n, P13990480815326760838.a n = A093048 n

end A093048

/-! ## A093048.P14064918782115428132

`n+1-∏{e}[xor(n, -n), #]`
-/

namespace A093048.P14064918782115428132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A093048.P14064918782115428132

namespace A093048

/-- `n+1-∏{e}[xor(n, -n), #]` -/
def P14064918782115428132.Spec : Prop :=
  ∀ n, P14064918782115428132.a n = A093048 n

end A093048

/-! ## A093048.P9076853284076295606

`n-and(val(n, 2), a(n-1))` with `a(0)=0`
-/

namespace A093048.P9076853284076295606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - Int.land (SequenceMachineLib.valuation n 2 : ℤ) (a (n - 1))

end

end A093048.P9076853284076295606

namespace A093048

/-- `n-and(val(n, 2), a(n-1))` -/
def P9076853284076295606.Spec : Prop :=
  ∀ n, P9076853284076295606.a n = A093048 n

end A093048

/-! ## A093048.P12139648381757703140

`n+1-∏{e}[and(2*n, -(2*n)), #]`
-/

namespace A093048.P12139648381757703140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A093048.P12139648381757703140

namespace A093048

/-- `n+1-∏{e}[and(2*n, -(2*n)), #]` -/
def P12139648381757703140.Spec : Prop :=
  ∀ n, P12139648381757703140.a n = A093048 n

end A093048

/-! ## A093048.P18139509860391854501

`n+1-∏{e}[or(2*n, -(2*n)), #]`
-/

namespace A093048.P18139509860391854501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A093048.P18139509860391854501

namespace A093048

/-- `n+1-∏{e}[or(2*n, -(2*n)), #]` -/
def P18139509860391854501.Spec : Prop :=
  ∀ n, P18139509860391854501.a n = A093048 n

end A093048

/-! ## A093048.P16483530954327645698

`1-sqrt(A123726(n))+n`
-/

namespace A093048.P16483530954327645698
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  1 - Real.sqrt (A123726 n : ℝ) + (n : ℝ)

end

end A093048.P16483530954327645698

namespace A093048

/-- `1-sqrt(A123726(n))+n` -/
def P16483530954327645698.Spec : Prop :=
  ∀ n, P16483530954327645698.a n = (A093048 n : ℝ)

end A093048

/-! ## A093048.P6971563680702692522

`Δ[A000120(abs(1-n))]+abs(1-n)`
-/

namespace A093048.P6971563680702692522
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + |1 - (n : ℤ)|

end

end A093048.P6971563680702692522

namespace A093048

/-- `Δ[A000120(abs(1-n))]+abs(1-n)` -/
def P6971563680702692522.Spec : Prop :=
  ∀ n, P6971563680702692522.a n = A093048 n

end A093048

/-! ## A093048.P15840065042608034329

`A093049(n)+A057427(n)`
-/

namespace A093048.P15840065042608034329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093049 n + A057427 n

end

end A093048.P15840065042608034329

namespace A093048

/-- `A093049(n)+A057427(n)` -/
def P15840065042608034329.Spec : Prop :=
  ∀ n, P15840065042608034329.a n = A093048 n

end A093048

/-! ## A093048.P11820636591530624045

`n-A007814(A028310(n))`
-/

namespace A093048.P11820636591530624045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007814 (A028310 n).toNat

end

end A093048.P11820636591530624045

namespace A093048

/-- `n-A007814(A028310(n))` -/
def P11820636591530624045.Spec : Prop :=
  ∀ n, P11820636591530624045.a n = A093048 n

end A093048

/-! ## A093048.P9171036628542526573

`n-A089263(A008458(n))`
-/

namespace A093048.P9171036628542526573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A089263 (A008458 n).toNat

end

end A093048.P9171036628542526573

namespace A093048

/-- `n-A089263(A008458(n))` -/
def P9171036628542526573.Spec : Prop :=
  ∀ n, P9171036628542526573.a n = A093048 n

end A093048

/-! ## A093048.P6313650531723442809

`A042948(n)-A093050(n)`
-/

namespace A093048.P6313650531723442809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n - A093050 n

end

end A093048.P6313650531723442809

namespace A093048

/-- `A042948(n)-A093050(n)` -/
def P6313650531723442809.Spec : Prop :=
  ∀ n, P6313650531723442809.a n = A093048 n

end A093048

/-! ## A093048.P15139350110982029213

`A093049(n)-A057428(n)`
-/

namespace A093048.P15139350110982029213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093049 n - A057428 n

end

end A093048.P15139350110982029213

namespace A093048

/-- `A093049(n)-A057428(n)` -/
def P15139350110982029213.Spec : Prop :=
  ∀ n, P15139350110982029213.a n = A093048 n

end A093048

/-! ## A093048.P3236543489415642273

`n-A007814(A302436(n))`
-/

namespace A093048.P3236543489415642273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007814 (A302436 n).toNat

end

end A093048.P3236543489415642273

namespace A093048

/-- `n-A007814(A302436(n))` -/
def P3236543489415642273.Spec : Prop :=
  ∀ n, P3236543489415642273.a n = A093048 n

end A093048

/-! ## A093048.P6992030500465456066

`n-A007814(A364255(n))`
-/

namespace A093048.P6992030500465456066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007814 (A364255 n).toNat

end

end A093048.P6992030500465456066

namespace A093048

/-- `n-A007814(A364255(n))` -/
def P6992030500465456066.Spec : Prop :=
  ∀ n, P6992030500465456066.a n = A093048 n

end A093048

/-! ## A093048.P5328090385660520106

`n+1-A002487(A233775(n))`
-/

namespace A093048.P5328090385660520106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A002487 (A233775 n).toNat

end

end A093048.P5328090385660520106

namespace A093048

/-- `n+1-A002487(A233775(n))` -/
def P5328090385660520106.Spec : Prop :=
  ∀ n, P5328090385660520106.a n = A093048 n

end A093048

/-! ## A093048.P14691513172776562875

`n-A007814(A000007(n)+n)`
-/

namespace A093048.P14691513172776562875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007814 (A000007 n + (n : ℤ)).toNat

end

end A093048.P14691513172776562875

namespace A093048

/-- `n-A007814(A000007(n)+n)` -/
def P14691513172776562875.Spec : Prop :=
  ∀ n, P14691513172776562875.a n = A093048 n

end A093048

/-! ## A093048.P11598493609061947509

`n-A007814(A004277(n)-n)`
-/

namespace A093048.P11598493609061947509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A007814 (A004277 n - (n : ℤ)).toNat

end

end A093048.P11598493609061947509

namespace A093048

/-- `n-A007814(A004277(n)-n)` -/
def P11598493609061947509.Spec : Prop :=
  ∀ n, P11598493609061947509.a n = A093048 n

end A093048

/-!
# A093049: n-1 minus exponent of 2 in n, a(0) = 0.

The programs for A093049, the canonical program `A093049.P290101172290153267` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093049 has offset 0).

The definition of A093049 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093049.P290101172290153267

`n-∑{e}[xor(n, -n), #]`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093049

/-- `n-∑{e}[xor(n, -n), #]` -/
def P290101172290153267.Spec : Prop :=
  ∀ n, P290101172290153267.a n = A093049 n

theorem P290101172290153267.correct : P290101172290153267.Spec := by
  intro n
  simp only [A093049]

end A093049

/-! ## A093049.P8900885874124427890

`n-val(floor(2/acot(n)), 2)`
-/

namespace A093049.P8900885874124427890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋.toNat 2 : ℤ)

end

end A093049.P8900885874124427890

namespace A093049

/-- `n-val(floor(2/acot(n)), 2)` -/
def P8900885874124427890.Spec : Prop :=
  ∀ n, P8900885874124427890.a n = A093049 n

end A093049

/-! ## A093049.P6385763329225659894

`∑{e}[xor(n, n-2*n), n-#]`
-/

namespace A093049.P6385763329225659894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) ((n : ℤ) - (2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A093049.P6385763329225659894

namespace A093049

/-- `∑{e}[xor(n, n-2*n), n-#]` -/
def P6385763329225659894.Spec : Prop :=
  ∀ n, P6385763329225659894.a n = A093049 n

end A093049

/-! ## A093049.P7941419181353749880

`n-val(comp[2*(n+1)]+1, 2)`
-/

namespace A093049.P7941419181353749880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - (SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) 2 : ℤ)

end

end A093049.P7941419181353749880

namespace A093049

/-- `n-val(comp[2*(n+1)]+1, 2)` -/
def P7941419181353749880.Spec : Prop :=
  ∀ n, P7941419181353749880.a n = A093049 n

end A093049

/-! ## A093049.P13072390885983274306

`∑{e}[and(2*n, -(2*n)), n-#]`
-/

namespace A093049.P13072390885983274306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A093049.P13072390885983274306

namespace A093049

/-- `∑{e}[and(2*n, -(2*n)), n-#]` -/
def P13072390885983274306.Spec : Prop :=
  ∀ n, P13072390885983274306.a n = A093049 n

end A093049

/-! ## A093049.P7298731787183104458

`∑{e}[or(2*n, -(2*n)), n-#]`
-/

namespace A093049.P7298731787183104458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) - (Nat.factorization (f1 n).natAbs p : ℤ))

end

end A093049.P7298731787183104458

namespace A093049

/-- `∑{e}[or(2*n, -(2*n)), n-#]` -/
def P7298731787183104458.Spec : Prop :=
  ∀ n, P7298731787183104458.a n = A093049 n

end A093049

/-! ## A093049.P11290200324011669629

`n+1-∏{e}[xor(2*n, -(2*n)), #]`
-/

namespace A093049.P11290200324011669629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (2 * n : ℤ) (-(2 * n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A093049.P11290200324011669629

namespace A093049

/-- `n+1-∏{e}[xor(2*n, -(2*n)), #]` -/
def P11290200324011669629.Spec : Prop :=
  ∀ n, P11290200324011669629.a n = A093049 n

end A093049

/-! ## A093049.P3572292634819464455

`Δ[A127944(abs(1-n))]`
-/

namespace A093049.P3572292634819464455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127944 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A093049.P3572292634819464455

namespace A093049

/-- `Δ[A127944(abs(1-n))]` -/
def P3572292634819464455.Spec : Prop :=
  ∀ n, P3572292634819464455.a n = A093049 n

end A093049

/-! ## A093049.P10865614834613203303

`n-∑{d}[n, A209229(#)]`
-/

namespace A093049.P10865614834613203303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), A209229 d

end

end A093049.P10865614834613203303

namespace A093049

/-- `n-∑{d}[n, A209229(#)]` -/
def P10865614834613203303.Spec : Prop :=
  ∀ n, P10865614834613203303.a n = A093049 n

end A093049

/-! ## A093049.P3948106956084341947

`1-abs(A123725(n))+n`
-/

namespace A093049.P3948106956084341947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - |A123725 n| + (n : ℤ)

end

end A093049.P3948106956084341947

namespace A093049

/-- `1-abs(A123725(n))+n` -/
def P3948106956084341947.Spec : Prop :=
  ∀ n, P3948106956084341947.a n = A093049 n

end A093049

/-! ## A093049.P8069855432290691540

`1-A089080(n+1)+n`
-/

namespace A093049.P8069855432290691540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A089080 (n + 1) + (n : ℤ)

end

end A093049.P8069855432290691540

namespace A093049

/-- `1-A089080(n+1)+n` -/
def P8069855432290691540.Spec : Prop :=
  ∀ n, P8069855432290691540.a n = A093049 n

end A093049

/-! ## A093049.P13807832850490367021

`n-∑{d}[n, round(1/A006530(#))]`
-/

namespace A093049.P13807832850490367021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (1 / (A006530 d : ℚ))

end

end A093049.P13807832850490367021

namespace A093049

/-- `n-∑{d}[n, round(1/A006530(#))]` -/
def P13807832850490367021.Spec : Prop :=
  ∀ n, P13807832850490367021.a n = A093049 n

end A093049

/-! ## A093049.P11195670841049413600

`∑{e}[A020639(n+1), n-(val(n, 2)+#)]`
-/

namespace A093049.P11195670841049413600
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, ((n : ℤ) - (SequenceMachineLib.valuation n 2 + Nat.factorization (f1 n).natAbs p : ℤ))

end

end A093049.P11195670841049413600

namespace A093049

/-- `∑{e}[A020639(n+1), n-(val(n, 2)+#)]` -/
def P11195670841049413600.Spec : Prop :=
  ∀ n, P11195670841049413600.a n = A093049 n

end A093049

/-! ## A093049.P15692375277525757722

`A093048(A028310(n))-1`
-/

namespace A093049.P15692375277525757722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 (A028310 n).toNat - 1

end

end A093049.P15692375277525757722

namespace A093049

/-- `A093048(A028310(n))-1` -/
def P15692375277525757722.Spec : Prop :=
  ∀ n, P15692375277525757722.a n = A093049 n

end A093049

/-! ## A093049.P1557525019375671635

`A093048(n)+A057428(n)`
-/

namespace A093049.P1557525019375671635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 n + A057428 n

end

end A093049.P1557525019375671635

namespace A093049

/-- `A093048(n)+A057428(n)` -/
def P1557525019375671635.Spec : Prop :=
  ∀ n, P1557525019375671635.a n = A093049 n

end A093049

/-! ## A093049.P6518308834119758380

`A042948(n)-A093051(n)`
-/

namespace A093049.P6518308834119758380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n - A093051 n

end

end A093049.P6518308834119758380

namespace A093049

/-- `A042948(n)-A093051(n)` -/
def P6518308834119758380.Spec : Prop :=
  ∀ n, P6518308834119758380.a n = A093049 n

end A093049

/-! ## A093049.P17917375316619628876

`A093048(n)-A057427(n)`
-/

namespace A093049.P17917375316619628876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 n - A057427 n

end

end A093049.P17917375316619628876

namespace A093049

/-- `A093048(n)-A057427(n)` -/
def P17917375316619628876.Spec : Prop :=
  ∀ n, P17917375316619628876.a n = A093049 n

end A093049

/-! ## A093049.P7386842115463004476

`n-A277822(A003188(n))`
-/

namespace A093049.P7386842115463004476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A277822 (A003188 n).toNat

end

end A093049.P7386842115463004476

namespace A093049

/-- `n-A277822(A003188(n))` -/
def P7386842115463004476.Spec : Prop :=
  ∀ n, P7386842115463004476.a n = A093049 n

end A093049

/-! ## A093049.P2082323636492242080

`A014681(n)-A327491(n)`
-/

namespace A093049.P2082323636492242080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n - A327491 n

end

end A093049.P2082323636492242080

namespace A093049

/-- `A014681(n)-A327491(n)` -/
def P2082323636492242080.Spec : Prop :=
  ∀ n, P2082323636492242080.a n = A093049 n

end A093049

/-! ## A093049.P5221647977891827588

`A093048(n)-A060576(n+1)`
-/

namespace A093049.P5221647977891827588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093048 n - A060576 (n + 1)

end

end A093049.P5221647977891827588

namespace A093049

/-- `A093048(n)-A060576(n+1)` -/
def P5221647977891827588.Spec : Prop :=
  ∀ n, P5221647977891827588.a n = A093049 n

end A093049

/-!
# A093050: Exponent of 2 in (3^n-3)*2^(n-1).

The programs for A093050, the canonical program `A093050.P1618376711221386940` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093050 has offset 0).

The definition of A093050 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093050.P1618376711221386940

`xor(n, floor(log2(and(n, -n)+1)))`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093050

/-- `xor(n, floor(log2(and(n, -n)+1)))` -/
def P1618376711221386940.Spec : Prop :=
  ∀ n, (P1618376711221386940.a n : ℤ) = A093050 n

theorem P1618376711221386940.correct : P1618376711221386940.Spec := by
  intro n
  simp only [A093050]

end A093050

/-! ## A093050.P13143526588695473458

`xor(n, val(floor(5/acot(n)^3), 2))`
-/

namespace A093050.P13143526588695473458
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (SequenceMachineLib.valuation ⌊5 / SequenceMachineLib.acot (n : ℝ) ^ 3⌋.toNat 2)

end

end A093050.P13143526588695473458

namespace A093050

/-- `xor(n, val(floor(5/acot(n)^3), 2))` -/
def P13143526588695473458.Spec : Prop :=
  ∀ n, (P13143526588695473458.a n : ℤ) = A093050 n

end A093050

/-! ## A093050.P5968635153316448752

`∑{e}[and(n, -n), #]+and(n, -2)`
-/

namespace A093050.P5968635153316448752
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + Int.land (n : ℤ) (-2)

end

end A093050.P5968635153316448752

namespace A093050

/-- `∑{e}[and(n, -n), #]+and(n, -2)` -/
def P5968635153316448752.Spec : Prop :=
  ∀ n, P5968635153316448752.a n = A093050 n

end A093050

/-! ## A093050.P11317319396764872558

`or(and(n, -2), ∑{e}[and(n, -n), #])`
-/

namespace A093050.P11317319396764872558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Int.land (n : ℤ) (-2)) ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A093050.P11317319396764872558

namespace A093050

/-- `or(and(n, -2), ∑{e}[and(n, -n), #])` -/
def P11317319396764872558.Spec : Prop :=
  ∀ n, P11317319396764872558.a n = A093050 n

end A093050

/-! ## A093050.P11104224589272792082

`xor(and(n, -2), ∑{e}[and(n, -n), #])`
-/

namespace A093050.P11104224589272792082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.land (n : ℤ) (-2)) ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A093050.P11104224589272792082

namespace A093050

/-- `xor(and(n, -2), ∑{e}[and(n, -n), #])` -/
def P11104224589272792082.Spec : Prop :=
  ∀ n, P11104224589272792082.a n = A093050 n

end A093050

/-! ## A093050.P14676040978378207979

`or(1, n)+∑{e}[or(n, -n), #]-1`
-/

namespace A093050.P14676040978378207979
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) + (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1)

end

end A093050.P14676040978378207979

namespace A093050

/-- `or(1, n)+∑{e}[or(n, -n), #]-1` -/
def P14676040978378207979.Spec : Prop :=
  ∀ n, P14676040978378207979.a n = A093050 n

end A093050

/-! ## A093050.P12925492241514494545

`or(1, n)-(1-∑{e}[or(n, -n), #])`
-/

namespace A093050.P12925492241514494545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (1 - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ))

end

end A093050.P12925492241514494545

namespace A093050

/-- `or(1, n)-(1-∑{e}[or(n, -n), #])` -/
def P12925492241514494545.Spec : Prop :=
  ∀ n, P12925492241514494545.a n = A093050 n

end A093050

/-! ## A093050.P16644524537880762177

`or(1, n)+∏{e}[xor(n, -n), #]-2`
-/

namespace A093050.P16644524537880762177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) + (((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 2)

end

end A093050.P16644524537880762177

namespace A093050

/-- `or(1, n)+∏{e}[xor(n, -n), #]-2` -/
def P16644524537880762177.Spec : Prop :=
  ∀ n, P16644524537880762177.a n = A093050 n

end A093050

/-! ## A093050.P7151510520775706677

`or(1, n)-(2-∏{e}[xor(n, -n), #])`
-/

namespace A093050.P7151510520775706677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (2 - ((∏ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ))

end

end A093050.P7151510520775706677

namespace A093050

/-- `or(1, n)-(2-∏{e}[xor(n, -n), #])` -/
def P7151510520775706677.Spec : Prop :=
  ∀ n, P7151510520775706677.a n = A093050 n

end A093050

/-! ## A093050.P11027164773339834918

`n-(and(1, n)-∑{e}[and(n, -n), #])`
-/

namespace A093050.P11027164773339834918
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.land 1 n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ))

end

end A093050.P11027164773339834918

namespace A093050

/-- `n-(and(1, n)-∑{e}[and(n, -n), #])` -/
def P11027164773339834918.Spec : Prop :=
  ∀ n, P11027164773339834918.a n = A093050 n

end A093050

/-! ## A093050.P9718691326430362750

`A093051(n)+A057428(n)`
-/

namespace A093050.P9718691326430362750
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093051 n + A057428 n

end

end A093050.P9718691326430362750

namespace A093050

/-- `A093051(n)+A057428(n)` -/
def P9718691326430362750.Spec : Prop :=
  ∀ n, P9718691326430362750.a n = A093050 n

end A093050

/-! ## A093050.P13759977516321162843

`A042948(n)-A093048(n)`
-/

namespace A093050.P13759977516321162843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n - A093048 n

end

end A093050.P13759977516321162843

namespace A093050

/-- `A042948(n)-A093048(n)` -/
def P13759977516321162843.Spec : Prop :=
  ∀ n, P13759977516321162843.a n = A093050 n

end A093050

/-! ## A093050.P6249194278483328089

`A093051(n)-A057427(n)`
-/

namespace A093050.P6249194278483328089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093051 n - A057427 n

end

end A093050.P6249194278483328089

namespace A093050

/-- `A093051(n)-A057427(n)` -/
def P6249194278483328089.Spec : Prop :=
  ∀ n, P6249194278483328089.a n = A093050 n

end A093050

/-! ## A093050.P15502827870398628239

`A063196(n+1)-A088705(n)`
-/

namespace A093050.P15502827870398628239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063196 (n + 1) - A088705 n

end

end A093050.P15502827870398628239

namespace A093050

/-- `A063196(n+1)-A088705(n)` -/
def P15502827870398628239.Spec : Prop :=
  ∀ n, P15502827870398628239.a n = A093050 n

end A093050

/-! ## A093050.P15641354404259758820

`A093052(n)+2*A057428(n)`
-/

namespace A093050.P15641354404259758820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093052 n + 2 * A057428 n

end

end A093050.P15641354404259758820

namespace A093050

/-- `A093052(n)+2*A057428(n)` -/
def P15641354404259758820.Spec : Prop :=
  ∀ n, P15641354404259758820.a n = A093050 n

end A093050

/-! ## A093050.P3481649996597616697

`A093052(n)-2*A057427(n)`
-/

namespace A093050.P3481649996597616697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093052 n - 2 * A057427 n

end

end A093050.P3481649996597616697

namespace A093050

/-- `A093052(n)-2*A057427(n)` -/
def P3481649996597616697.Spec : Prop :=
  ∀ n, P3481649996597616697.a n = A093050 n

end A093050

/-! ## A093050.P8173887497993795606

`2*A093051(n)-A093052(n)`
-/

namespace A093050.P8173887497993795606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093051 n - A093052 n

end

end A093050.P8173887497993795606

namespace A093050

/-- `2*A093051(n)-A093052(n)` -/
def P8173887497993795606.Spec : Prop :=
  ∀ n, P8173887497993795606.a n = A093050 n

end A093050

/-! ## A093050.P6230193603999056974

`A289207(A093052(n))`
-/

namespace A093050.P6230193603999056974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A093052 n).toNat

end

end A093050.P6230193603999056974

namespace A093050

/-- `A289207(A093052(n))` -/
def P6230193603999056974.Spec : Prop :=
  ∀ n, P6230193603999056974.a n = A093050 n

end A093050

/-!
# A093051: Exponent of 2 in (3^n-3)*2^n.

The programs for A093051, the canonical program `A093051.P8275292785779359449` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093051 has offset 0).

The definition of A093051 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093051.P14158406738624517806

`ceil(log2(xor(n, abs(1-n))))+n`
-/

namespace A093051.P14158406738624517806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.logb 2 (Int.xor (n : ℤ) |1 - (n : ℤ)| : ℝ)⌉ + (n : ℤ)

end

end A093051.P14158406738624517806

namespace A093051

/-- `ceil(log2(xor(n, abs(1-n))))+n` -/
def P14158406738624517806.Spec : Prop :=
  ∀ n, P14158406738624517806.a n = A093051 n

end A093051

/-! ## A093051.P8275292785779359449

`∑{e}[and(n, -n), #+1]+n`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093051

/-- `∑{e}[and(n, -n), #+1]+n` -/
def P8275292785779359449.Spec : Prop :=
  ∀ n, (P8275292785779359449.a n : ℤ) = A093051 n

theorem P8275292785779359449.correct : P8275292785779359449.Spec := by
  intro n
  simp only [A093051]

end A093051

/-! ## A093051.P16909008600027745029

`val(floor(gcd(2, n)/acot(n)), 2)+n`
-/

namespace A093051.P16909008600027745029
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation ⌊(Nat.gcd 2 n : ℝ) / SequenceMachineLib.acot (n : ℝ)⌋.toNat 2 + n

end

end A093051.P16909008600027745029

namespace A093051

/-- `val(floor(gcd(2, n)/acot(n)), 2)+n` -/
def P16909008600027745029.Spec : Prop :=
  ∀ n, (P16909008600027745029.a n : ℤ) = A093051 n

end A093051

/-! ## A093051.P6544927855797282169

`1-∏{e}[and(n, -n), -#]+n`
-/

namespace A093051.P6544927855797282169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p : ℤ)) + (n : ℤ)

end

end A093051.P6544927855797282169

namespace A093051

/-- `1-∏{e}[and(n, -n), -#]+n` -/
def P6544927855797282169.Spec : Prop :=
  ∀ n, P6544927855797282169.a n = A093051 n

end A093051

/-! ## A093051.P5688009834129215268

`1-(∏{e}[and(n, -n), -#]-n)`
-/

namespace A093051.P5688009834129215268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p : ℤ)) - (n : ℤ))

end

end A093051.P5688009834129215268

namespace A093051

/-- `1-(∏{e}[and(n, -n), -#]-n)` -/
def P5688009834129215268.Spec : Prop :=
  ∀ n, P5688009834129215268.a n = A093051 n

end A093051

/-! ## A093051.P5650184831273312149

`or(1, n)+∑{e}[xor(n, -n), #]-1`
-/

namespace A093051.P5650184831273312149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) + (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) - 1)

end

end A093051.P5650184831273312149

namespace A093051

/-- `or(1, n)+∑{e}[xor(n, -n), #]-1` -/
def P5650184831273312149.Spec : Prop :=
  ∀ n, P5650184831273312149.a n = A093051 n

end A093051

/-! ## A093051.P7882788038005601532

`or(1, n)-(1-∑{e}[xor(n, -n), #])`
-/

namespace A093051.P7882788038005601532
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.lor 1 n : ℤ) - (1 - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ))

end

end A093051.P7882788038005601532

namespace A093051

/-- `or(1, n)-(1-∑{e}[xor(n, -n), #])` -/
def P7882788038005601532.Spec : Prop :=
  ∀ n, P7882788038005601532.a n = A093051 n

end A093051

/-! ## A093051.P3287992944419275298

`∑{e}[xor(n, -n), #]+n-n%2`
-/

namespace A093051.P3287992944419275298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + ((n : ℤ) - ((n % 2 : ℕ) : ℤ))

end

end A093051.P3287992944419275298

namespace A093051

/-- `∑{e}[xor(n, -n), #]+n-n%2` -/
def P3287992944419275298.Spec : Prop :=
  ∀ n, P3287992944419275298.a n = A093051 n

end A093051

/-! ## A093051.P11653253243021525863

`n-(and(1, n)-∑{e}[xor(n, -n), #])`
-/

namespace A093051.P11653253243021525863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - ((Nat.land 1 n : ℤ) - ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ))

end

end A093051.P11653253243021525863

namespace A093051

/-- `n-(and(1, n)-∑{e}[xor(n, -n), #])` -/
def P11653253243021525863.Spec : Prop :=
  ∀ n, P11653253243021525863.a n = A093051 n

end A093051

/-! ## A093051.P16155321297160766745

`val(floor(2/acot(n)), 2)-and(1, n)+n`
-/

namespace A093051.P16155321297160766745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation ⌊2 / SequenceMachineLib.acot (n : ℝ)⌋.toNat 2 : ℤ) - (Nat.land 1 n : ℤ) + (n : ℤ)

end

end A093051.P16155321297160766745

namespace A093051

/-- `val(floor(2/acot(n)), 2)-and(1, n)+n` -/
def P16155321297160766745.Spec : Prop :=
  ∀ n, P16155321297160766745.a n = A093051 n

end A093051

/-! ## A093051.P5483973921224980589

`A093050(n)+A057427(n)`
-/

namespace A093051.P5483973921224980589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093050 n + A057427 n

end

end A093051.P5483973921224980589

namespace A093051

/-- `A093050(n)+A057427(n)` -/
def P5483973921224980589.Spec : Prop :=
  ∀ n, P5483973921224980589.a n = A093051 n

end A093051

/-! ## A093051.P14678331590592126953

`A093052(n)+A057428(n)`
-/

namespace A093051.P14678331590592126953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093052 n + A057428 n

end

end A093051.P14678331590592126953

namespace A093051

/-- `A093052(n)+A057428(n)` -/
def P14678331590592126953.Spec : Prop :=
  ∀ n, P14678331590592126953.a n = A093051 n

end A093051

/-! ## A093051.P5569868734906363242

`A042948(n)-A093049(n)`
-/

namespace A093051.P5569868734906363242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042948 n - A093049 n

end

end A093051.P5569868734906363242

namespace A093051

/-- `A042948(n)-A093049(n)` -/
def P5569868734906363242.Spec : Prop :=
  ∀ n, P5569868734906363242.a n = A093051 n

end A093051

/-! ## A093051.P14810730273623719384

`A093050(n)-A057428(n)`
-/

namespace A093051.P14810730273623719384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093050 n - A057428 n

end

end A093051.P14810730273623719384

namespace A093051

/-- `A093050(n)-A057428(n)` -/
def P14810730273623719384.Spec : Prop :=
  ∀ n, P14810730273623719384.a n = A093051 n

end A093051

/-! ## A093051.P1407240348051647959

`A093052(n)-A057427(n)`
-/

namespace A093051.P1407240348051647959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093052 n - A057427 n

end

end A093051.P1407240348051647959

namespace A093051

/-- `A093052(n)-A057427(n)` -/
def P1407240348051647959.Spec : Prop :=
  ∀ n, P1407240348051647959.a n = A093051 n

end A093051

/-! ## A093051.P751285982055561547

`A289207(A093052(n)+1)`
-/

namespace A093051.P751285982055561547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (A093052 n + 1).toNat

end

end A093051.P751285982055561547

namespace A093051

/-- `A289207(A093052(n)+1)` -/
def P751285982055561547.Spec : Prop :=
  ∀ n, P751285982055561547.a n = A093051 n

end A093051

/-! ## A093051.P9181979271314797002

`A007814(A257088(n))+n`
-/

namespace A093051.P9181979271314797002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (A257088 n).toNat + (n : ℤ)

end

end A093051.P9181979271314797002

namespace A093051

/-- `A007814(A257088(n))+n` -/
def P9181979271314797002.Spec : Prop :=
  ∀ n, P9181979271314797002.a n = A093051 n

end A093051

/-! ## A093051.P15732294119045222595

`A093050(A014601(n))-n`
-/

namespace A093051.P15732294119045222595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093050 (A014601 n).toNat - (n : ℤ)

end

end A093051.P15732294119045222595

namespace A093051

/-- `A093050(A014601(n))-n` -/
def P15732294119045222595.Spec : Prop :=
  ∀ n, P15732294119045222595.a n = A093051 n

end A093051

/-!
# A093052: Exponent of 2 in 6^n - 2^n.

The programs for A093052, the canonical program `A093052.P13146352992464079214` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093052 has offset 0).

The definition of A093052 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093052.P4388682900868158929

`∑{e}[xor(n, -n), #]+or(n, floor(atan(n)))`
-/

namespace A093052.P4388682900868158929
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + Int.lor (n : ℤ) ⌊Real.arctan (n : ℝ)⌋

end

end A093052.P4388682900868158929

namespace A093052

/-- `∑{e}[xor(n, -n), #]+or(n, floor(atan(n)))` -/
def P4388682900868158929.Spec : Prop :=
  ∀ n, P4388682900868158929.a n = A093052 n

end A093052

/-! ## A093052.P13146352992464079214

`val(∑[8-a(n-1)], 2)+n` with `a(0)=1, a(1)=1, a(2)=6`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093052

/-- `val(∑[8-a(n-1)], 2)+n` -/
def P13146352992464079214.Spec : Prop :=
  ∀ n, (P13146352992464079214.a n : ℤ) = A093052 n

theorem P13146352992464079214.correct : P13146352992464079214.Spec := by
  intro n
  simp only [A093052]

end A093052

/-! ## A093052.P10130950291517352159

`∑{e}[xor(n, -n), #]+char[2*(n+1)]+n`
-/

namespace A093052.P10130950291517352159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p + ((if ∃ j, f2 j = n then 1 else 0) + n)

end

end A093052.P10130950291517352159

namespace A093052

/-- `∑{e}[xor(n, -n), #]+char[2*(n+1)]+n` -/
def P10130950291517352159.Spec : Prop :=
  ∀ n, (P10130950291517352159.a n : ℤ) = A093052 n

end A093052

/-! ## A093052.P12549726186963319215

`∑{e}[and(n, -n), #+1]+n+1-floor(acot(n))`
-/

namespace A093052.P12549726186963319215
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) + n + 1 : ℕ) : ℤ) - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A093052.P12549726186963319215

namespace A093052

/-- `∑{e}[and(n, -n), #+1]+n+1-floor(acot(n))` -/
def P12549726186963319215.Spec : Prop :=
  ∀ n, P12549726186963319215.a n = A093052 n

end A093052

/-! ## A093052.P6854529152423318405

`ceil(sin(n)²)+1-∏{e}[and(n, -n), -#]+n`
-/

namespace A093052.P6854529152423318405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ + (1 - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p : ℤ)) + (n : ℤ))

end

end A093052.P6854529152423318405

namespace A093052

/-- `ceil(sin(n)²)+1-∏{e}[and(n, -n), -#]+n` -/
def P6854529152423318405.Spec : Prop :=
  ∀ n, P6854529152423318405.a n = A093052 n

end A093052

/-! ## A093052.P4514234000814406313

`(∑{e}[and(n, -n), #+1]+n+1)%∑[n+1]`
-/

namespace A093052.P4514234000814406313
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ p ∈ Nat.primeFactors (f1 n).natAbs, (Nat.factorization (f1 n).natAbs p + 1) + n + 1) % (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A093052.P4514234000814406313

namespace A093052

/-- `(∑{e}[and(n, -n), #+1]+n+1)%∑[n+1]` -/
def P4514234000814406313.Spec : Prop :=
  ∀ n, (P4514234000814406313.a n : ℤ) = A093052 n

end A093052

/-! ## A093052.P2071537764270142843

`floor(atan(n+1))+1-∏{e}[and(n, -n), -#]+n`
-/

namespace A093052.P2071537764270142843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n + 1 : ℝ)⌋ + (1 - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p : ℤ)) + (n : ℤ))

end

end A093052.P2071537764270142843

namespace A093052

/-- `floor(atan(n+1))+1-∏{e}[and(n, -n), -#]+n` -/
def P2071537764270142843.Spec : Prop :=
  ∀ n, P2071537764270142843.a n = A093052 n

end A093052

/-! ## A093052.P10875426801282537407

`ceil(sin(n)²)+∑{e}[xor(n, -n), #]+n-n%2`
-/

namespace A093052.P10875426801282537407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.sin (n : ℝ) ^ 2⌉ + (((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ) + ((n : ℤ) - ((n % 2 : ℕ) : ℤ)))

end

end A093052.P10875426801282537407

namespace A093052

/-- `ceil(sin(n)²)+∑{e}[xor(n, -n), #]+n-n%2` -/
def P10875426801282537407.Spec : Prop :=
  ∀ n, P10875426801282537407.a n = A093052 n

end A093052

/-! ## A093052.P6404246387241523448

`(n+2-∏{e}[and(n, -n), -#])%(2*n+1)²`
-/

namespace A093052.P6404246387241523448
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (-(n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n + 2 : ℤ) - ∏ p ∈ Nat.primeFactors (f1 n).natAbs, (-(Nat.factorization (f1 n).natAbs p : ℤ))) ((2 * n + 1) ^ 2 : ℤ)

end

end A093052.P6404246387241523448

namespace A093052

/-- `(n+2-∏{e}[and(n, -n), -#])%(2*n+1)²` -/
def P6404246387241523448.Spec : Prop :=
  ∀ n, P6404246387241523448.a n = A093052 n

end A093052

/-! ## A093052.P5328824984678955688

`A093051(n)+A057427(n)`
-/

namespace A093052.P5328824984678955688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093051 n + A057427 n

end

end A093052.P5328824984678955688

namespace A093052

/-- `A093051(n)+A057427(n)` -/
def P5328824984678955688.Spec : Prop :=
  ∀ n, P5328824984678955688.a n = A093052 n

end A093052

/-! ## A093052.P13266591275005991035

`A093051(n)-A057428(n)`
-/

namespace A093052.P13266591275005991035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093051 n - A057428 n

end

end A093052.P13266591275005991035

namespace A093052

/-- `A093051(n)-A057428(n)` -/
def P13266591275005991035.Spec : Prop :=
  ∀ n, P13266591275005991035.a n = A093052 n

end A093052

/-! ## A093052.P1038766853865401152

`A093050(n)+2*A057427(n)`
-/

namespace A093052.P1038766853865401152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093050 n + 2 * A057427 n

end

end A093052.P1038766853865401152

namespace A093052

/-- `A093050(n)+2*A057427(n)` -/
def P1038766853865401152.Spec : Prop :=
  ∀ n, P1038766853865401152.a n = A093052 n

end A093052

/-! ## A093052.P8296781718054030909

`A093050(n)-2*A057428(n)`
-/

namespace A093052.P8296781718054030909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093050 n - 2 * A057428 n

end

end A093052.P8296781718054030909

namespace A093052

/-- `A093050(n)-2*A057428(n)` -/
def P8296781718054030909.Spec : Prop :=
  ∀ n, P8296781718054030909.a n = A093052 n

end A093052

/-! ## A093052.P16264560447647142526

`2*A093051(n)-A093050(n)`
-/

namespace A093052.P16264560447647142526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A093051 n - A093050 n

end

end A093052.P16264560447647142526

namespace A093052

/-- `2*A093051(n)-A093050(n)` -/
def P16264560447647142526.Spec : Prop :=
  ∀ n, P16264560447647142526.a n = A093052 n

end A093052

/-! ## A093052.P8879796027787462100

`val(A152035(2*n), 2)`
-/

namespace A093052.P8879796027787462100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A152035 (2 * n)).toNat 2

end

end A093052.P8879796027787462100

namespace A093052

/-- `val(A152035(2*n), 2)` -/
def P8879796027787462100.Spec : Prop :=
  ∀ n, (P8879796027787462100.a n : ℤ) = A093052 n

end A093052

/-!
# A093053: Continued fraction expansion of a constant x such that the n-th partial quotient equals a(n) = floor(2^n*x), with a(0)=1.

The programs for A093053, there is no canonical definition to state claims against.
-/

/-! ## A093053.P6094716517107264998

`A371959(A044432(n))`
-/

namespace A093053.P6094716517107264998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371959 (A044432 n).toNat

end

end A093053.P6094716517107264998

/-! ## A093053.P10914035994602437425

`A028310(floor(sqrt(A037716(n+1))))`
-/

namespace A093053.P10914035994602437425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.sqrt (A037716 (n + 1))).toNat

end

end A093053.P10914035994602437425

/-! ## A093053.P4141023572578067347

`A053165(floor(sqrt(A037716(n+1))))`
-/

namespace A093053.P4141023572578067347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053165 (Int.sqrt (A037716 (n + 1))).toNat

end

end A093053.P4141023572578067347

/-! ## A093053.P4683238776529613778

`A106618(floor(sqrt(A037716(n+1))))`
-/

namespace A093053.P4683238776529613778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106618 (Int.sqrt (A037716 (n + 1))).toNat

end

end A093053.P4683238776529613778

/-!
# A093057: Triangle T(j,k) read by rows, where T(j,k) = number of matrix elements remaining at fixed position in the in-situ transposition of a rectangular j X k matrix (singleton cycles).

The programs for A093057, the canonical program `A093057.P490745029092693046` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093057 has offset 1).

The definition of A093057 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 104 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093057.P8177364862534978762

`gcd(row(n)+1, col(n)+1)-1`
-/

namespace A093057.P8177364862534978762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd (SequenceMachineLib.triRow n + 1) (SequenceMachineLib.triCol n + 1) : ℤ) - 1

end

end A093057.P8177364862534978762

namespace A093057

/-- `gcd(row(n)+1, col(n)+1)-1` -/
def P8177364862534978762.Spec : Prop :=
  ∀ n, P8177364862534978762.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P333109437206836753

`A050873(n+1)-1`
-/

namespace A093057.P333109437206836753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050873 (n + 1) - 1

end

end A093057.P333109437206836753

namespace A093057

/-- `A050873(n+1)-1` -/
def P333109437206836753.Spec : Prop :=
  ∀ n, P333109437206836753.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P490745029092693046

`floor(log2(A046143(n+1)))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093057

/-- `floor(log2(A046143(n+1)))` -/
def P490745029092693046.Spec : Prop :=
  ∀ n, (P490745029092693046.a n : ℤ) = A093057 (n + 1)

theorem P490745029092693046.correct : P490745029092693046.Spec := by
  intro n
  simp only [A093057, Nat.add_sub_cancel]

end A093057

/-! ## A093057.P4651208256246771442

`A109004(comp[∑[n]])-1`
-/

namespace A093057.P4651208256246771442
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - 1

end

end A093057.P4651208256246771442

namespace A093057

/-- `A109004(comp[∑[n]])-1` -/
def P4651208256246771442.Spec : Prop :=
  ∀ n, P4651208256246771442.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P15844095147623912515

`abs(1-A050873(Δ[n²]-n))`
-/

namespace A093057.P15844095147623912515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A050873 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat|

end

end A093057.P15844095147623912515

namespace A093057

/-- `abs(1-A050873(Δ[n²]-n))` -/
def P15844095147623912515.Spec : Prop :=
  ∀ n, P15844095147623912515.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P204980082830055519

`∑[char[∑[n]]]/A054531(n+1)-1`
-/

namespace A093057.P204980082830055519
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (A054531 (n + 1) : ℚ) - 1

end

end A093057.P204980082830055519

namespace A093057

/-- `∑[char[∑[n]]]/A054531(n+1)-1` -/
def P204980082830055519.Spec : Prop :=
  ∀ n, P204980082830055519.a n = (A093057 (n + 1) : ℚ)

end A093057

/-! ## A093057.P16141671458437228058

`gcd(round(sqrt(2*n)), A002260(n+1))-1`
-/

namespace A093057.P16141671458437228058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (SequenceMachineLib.roundAway (Real.sqrt (2 * n : ℝ))) (A002260 (n + 1)) : ℤ) - 1

end

end A093057.P16141671458437228058

namespace A093057

/-- `gcd(round(sqrt(2*n)), A002260(n+1))-1` -/
def P16141671458437228058.Spec : Prop :=
  ∀ n, P16141671458437228058.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P3502159291343984450

`(2*n+1)%A050873((n+2+n)/2)`
-/

namespace A093057.P3502159291343984450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (2 * n + 1 : ℤ) (A050873 (SequenceMachineLib.roundAway ((n + 2 + n : ℚ) / 2)).toNat)

end

end A093057.P3502159291343984450

namespace A093057

/-- `(2*n+1)%A050873((n+2+n)/2)` -/
def P3502159291343984450.Spec : Prop :=
  ∀ n, P3502159291343984450.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P1115800983542707367

`A000523(A046143(n+1))`
-/

namespace A093057.P1115800983542707367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A046143 (n + 1)).toNat

end

end A093057.P1115800983542707367

namespace A093057

/-- `A000523(A046143(n+1))` -/
def P1115800983542707367.Spec : Prop :=
  ∀ n, P1115800983542707367.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P14530659391358752462

`A000401(A050873(n+1))`
-/

namespace A093057.P14530659391358752462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A050873 (n + 1)).toNat

end

end A093057.P14530659391358752462

namespace A093057

/-- `A000401(A050873(n+1))` -/
def P14530659391358752462.Spec : Prop :=
  ∀ n, P14530659391358752462.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P4198825975536614726

`A000120(A046143(n+1)-1)`
-/

namespace A093057.P4198825975536614726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A046143 (n + 1) - 1).toNat

end

end A093057.P4198825975536614726

namespace A093057

/-- `A000120(A046143(n+1)-1)` -/
def P4198825975536614726.Spec : Prop :=
  ∀ n, P4198825975536614726.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P14177614687571330071

`A067815(A004202(n+1))-1`
-/

namespace A093057.P14177614687571330071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067815 (A004202 (n + 1)).toNat - 1

end

end A093057.P14177614687571330071

namespace A093057

/-- `A067815(A004202(n+1))-1` -/
def P14177614687571330071.Spec : Prop :=
  ∀ n, P14177614687571330071.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P12528267644893528609

`A067815(A063657(n+1))-1`
-/

namespace A093057.P12528267644893528609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067815 (A063657 (n + 1)).toNat - 1

end

end A093057.P12528267644893528609

namespace A093057

/-- `A067815(A063657(n+1))-1` -/
def P12528267644893528609.Spec : Prop :=
  ∀ n, P12528267644893528609.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P6603547616877546005

`A289508(A087112(n+1))-1`
-/

namespace A093057.P6603547616877546005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289508 (A087112 (n + 1)).toNat - 1

end

end A093057.P6603547616877546005

namespace A093057

/-- `A289508(A087112(n+1))-1` -/
def P6603547616877546005.Spec : Prop :=
  ∀ n, P6603547616877546005.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P18071787047707981184

`A109004(C(A050873(n+1), 2))`
-/

namespace A093057.P18071787047707981184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109004 (Nat.choose (A050873 (n + 1)).toNat 2)

end

end A093057.P18071787047707981184

namespace A093057

/-- `A109004(C(A050873(n+1), 2))` -/
def P18071787047707981184.Spec : Prop :=
  ∀ n, P18071787047707981184.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P11131733631128876354

`gcd(A004247(n), A128139(n))-1`
-/

namespace A093057.P11131733631128876354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (A004247 n) (A128139 n) : ℤ) - 1

end

end A093057.P11131733631128876354

namespace A093057

/-- `gcd(A004247(n), A128139(n))-1` -/
def P11131733631128876354.Spec : Prop :=
  ∀ n, P11131733631128876354.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P10756325478159023544

`A025581(2*A050873(n+1)²)`
-/

namespace A093057.P10756325478159023544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 (2 * A050873 (n + 1) ^ 2).toNat

end

end A093057.P10756325478159023544

namespace A093057

/-- `A025581(2*A050873(n+1)²)` -/
def P10756325478159023544.Spec : Prop :=
  ∀ n, P10756325478159023544.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P8889854032331091352

`gcd(∑[A010054(n)], A025581(n))-1`
-/

namespace A093057.P8889854032331091352
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (∑ j ∈ Finset.range (n + 1), f1 j) (A025581 n) : ℤ) - 1

end

end A093057.P8889854032331091352

namespace A093057

/-- `gcd(∑[A010054(n)], A025581(n))-1` -/
def P8889854032331091352.Spec : Prop :=
  ∀ n, P8889854032331091352.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P13643620706795749419

`A001222(A046143(n+1)+1)-1`
-/

namespace A093057.P13643620706795749419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046143 (n + 1) + 1).toNat - 1

end

end A093057.P13643620706795749419

namespace A093057

/-- `A001222(A046143(n+1)+1)-1` -/
def P13643620706795749419.Spec : Prop :=
  ∀ n, P13643620706795749419.a n = A093057 (n + 1)

end A093057

/-! ## A093057.P3898650630374868326

`A014701(A046143(n+1)+1)-1`
-/

namespace A093057.P3898650630374868326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014701 (A046143 (n + 1) + 1).toNat - 1

end

end A093057.P3898650630374868326

namespace A093057

/-- `A014701(A046143(n+1)+1)-1` -/
def P3898650630374868326.Spec : Prop :=
  ∀ n, P3898650630374868326.a n = A093057 (n + 1)

end A093057

/-!
# A093061: 6 * Sum_{d|n} (d mod 3).

The programs for A093061, the canonical program `A093061.P7921048065262857130` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093061 has offset 1).

The definition of A093061 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A093061.P7921048065262857130

`6*A082909(n+1)`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093061

/-- `6*A082909(n+1)` -/
def P7921048065262857130.Spec : Prop :=
  ∀ n, P7921048065262857130.a n = A093061 (n + 1)

theorem P7921048065262857130.correct : P7921048065262857130.Spec := by
  intro n
  simp only [A093061, Nat.add_sub_cancel]

end A093061

/-! ## A093061.P13052769131476674485

`6*∑{d}[n+1, #%3]`
-/

namespace A093061.P13052769131476674485
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6 * (∑ d ∈ Nat.divisors (f1 n), d % 3)

end

end A093061.P13052769131476674485

namespace A093061

/-- `6*∑{d}[n+1, #%3]` -/
def P13052769131476674485.Spec : Prop :=
  ∀ n, (P13052769131476674485.a n : ℤ) = A093061 (n + 1)

theorem P13052769131476674485.correct : P13052769131476674485.Spec := by
  intro n
  simp only [A093061, Nat.add_sub_cancel, A093061.P13052769131476674485.f1, A093061.P13052769131476674485.a, A093061.P7921048065262857130.a, A082909, A082909.P666252728659787957.f1, A082909.P666252728659787957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093061

/-! ## A093061.P11523451991064126886

`6*∑{d}[Δ[n²]-n, abs(-#%3)]`
-/

namespace A093061.P11523451991064126886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ d ∈ Nat.divisors (f1 n).natAbs, |Int.tmod (-(d : ℤ)) 3|)

end

end A093061.P11523451991064126886

namespace A093061

/-- `6*∑{d}[Δ[n²]-n, abs(-#%3)]` -/
def P11523451991064126886.Spec : Prop :=
  ∀ n, P11523451991064126886.a n = A093061 (n + 1)

end A093061

/-! ## A093061.P14203543532793885882

`A008458(∑{d}[n+1, #%3])`
-/

namespace A093061.P14203543532793885882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (∑ d ∈ Nat.divisors (f1 n), d % 3)

end

end A093061.P14203543532793885882

namespace A093061

/-- `A008458(∑{d}[n+1, #%3])` -/
def P14203543532793885882.Spec : Prop :=
  ∀ n, P14203543532793885882.a n = A093061 (n + 1)

end A093061

/-! ## A093061.P1420561662107005746

`A008458(A082909(n+1))`
-/

namespace A093061.P1420561662107005746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A082909 (n + 1)).toNat

end

end A093061.P1420561662107005746

namespace A093061

/-- `A008458(A082909(n+1))` -/
def P1420561662107005746.Spec : Prop :=
  ∀ n, P1420561662107005746.a n = A093061 (n + 1)

end A093061

/-! ## A093061.P14152480090489790491

`A008458(A035191(n+1)+A001822(n+1))`
-/

namespace A093061.P14152480090489790491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (A035191 (n + 1) + A001822 (n + 1)).toNat

end

end A093061.P14152480090489790491

namespace A093061

/-- `A008458(A035191(n+1)+A001822(n+1))` -/
def P14152480090489790491.Spec : Prop :=
  ∀ n, P14152480090489790491.a n = A093061 (n + 1)

end A093061

/-! ## A093061.P4234729418017257822

`6*∑{d}[n+1, A010872(#)]`
-/

namespace A093061.P4234729418017257822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ d ∈ Nat.divisors (f1 n), A010872 d)

end

end A093061.P4234729418017257822

namespace A093061

/-- `6*∑{d}[n+1, A010872(#)]` -/
def P4234729418017257822.Spec : Prop :=
  ∀ n, P4234729418017257822.a n = A093061 (n + 1)

theorem P4234729418017257822.correct : P4234729418017257822.Spec := by
  intro n
  simp only [A093061, Nat.add_sub_cancel, A093061.P4234729418017257822.f1, A093061.P4234729418017257822.a, A093061.P7921048065262857130.a, A010872, A010872.P9752549328412734763.a, A082909, A082909.P666252728659787957.f1, A082909.P666252728659787957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093061

/-! ## A093061.P7020104679416607081

`6*∑{d}[n+1, A010882(#)-1]`
-/

namespace A093061.P7020104679416607081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * (∑ d ∈ Nat.divisors (f1 n), (A010882 d - 1))

end

end A093061.P7020104679416607081

namespace A093061

/-- `6*∑{d}[n+1, A010882(#)-1]` -/
def P7020104679416607081.Spec : Prop :=
  ∀ n, P7020104679416607081.a n = A093061 (n + 1)

theorem P7020104679416607081.correct : P7020104679416607081.Spec := by
  intro n
  simp only [A093061, Nat.add_sub_cancel, A093061.P7020104679416607081.f1, A093061.P7020104679416607081.a, A093061.P7921048065262857130.a, A010882, A010882.P12866504876025852019.a, A082909, A082909.P666252728659787957.f1, A082909.P666252728659787957.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093061

/-! ## A093061.P10692697807279862628

`A008458(∑{d}[n+1, A010872(#)])`
-/

namespace A093061.P10692697807279862628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 (∑ d ∈ Nat.divisors (f1 n), A010872 d).toNat

end

end A093061.P10692697807279862628

namespace A093061

/-- `A008458(∑{d}[n+1, A010872(#)])` -/
def P10692697807279862628.Spec : Prop :=
  ∀ n, P10692697807279862628.a n = A093061 (n + 1)

end A093061

/-!
# A093062: a(n) = Fibonacci(prime(n)) - prime(Fibonacci(n)).

The programs for A093062, the canonical program `A093062.P14599977001561547652` is in `Seq.B001.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093062 has offset 1).

The definition of A093062 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A000045(A000040(n+1))-A000040(A000045(n+1))` (program `A093062.P14599977001561547652`, by `A093062.P14599977001561547652.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093062.P14599977001561547652

`A000045(A000040(n+1))-A000040(A000045(n+1))`

The canonical program, it is in `Seq.B001.C004`.
-/

namespace A093062

/-- `A000045(A000040(n+1))-A000040(A000045(n+1))` -/
def P14599977001561547652.Spec : Prop :=
  ∀ n, P14599977001561547652.a n = A093062 (n + 1)

theorem P14599977001561547652.correct : P14599977001561547652.Spec := by
  intro n
  simp only [A093062, Nat.add_sub_cancel]

end A093062

/-! ## A093062.P11913927340976526838

`A030426(n+1)-A030427(n+1)`
-/

namespace A093062.P11913927340976526838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030426 (n + 1) - A030427 (n + 1)

end

end A093062.P11913927340976526838

namespace A093062

/-- `A030426(n+1)-A030427(n+1)` -/
def P11913927340976526838.Spec : Prop :=
  ∀ n, P11913927340976526838.a n = A093062 (n + 1)

end A093062

/-! ## A093062.P18145113788890927315

`A000045(A000040(n+1))-A030427(n+1)`
-/

namespace A093062.P18145113788890927315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A000040 (n + 1)).toNat - A030427 (n + 1)

end

end A093062.P18145113788890927315

namespace A093062

/-- `A000045(A000040(n+1))-A030427(n+1)` -/
def P18145113788890927315.Spec : Prop :=
  ∀ n, P18145113788890927315.a n = A093062 (n + 1)

end A093062

/-! ## A093062.P17328181168034082044

`A212804(A008864(n+1))-A030427(n+1)`
-/

namespace A093062.P17328181168034082044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A008864 (n + 1)).toNat - A030427 (n + 1)

end

end A093062.P17328181168034082044

namespace A093062

/-- `A212804(A008864(n+1))-A030427(n+1)` -/
def P17328181168034082044.Spec : Prop :=
  ∀ n, P17328181168034082044.a n = A093062 (n + 1)

end A093062

/-! ## A093062.P3318471225090757365

`A000045(A008578(n+2))-A030427(n+1)`
-/

namespace A093062.P3318471225090757365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A008578 (n + 2)).toNat - A030427 (n + 1)

end

end A093062.P3318471225090757365

namespace A093062

/-- `A000045(A008578(n+2))-A030427(n+1)` -/
def P3318471225090757365.Spec : Prop :=
  ∀ n, P3318471225090757365.a n = A093062 (n + 1)

end A093062

/-! ## A093062.P3180686712672401771

`A000045(p?[A000961(n+1)])-A030427(n+1)`
-/

namespace A093062.P3180686712672401771
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A030427 (n + 1)

end

end A093062.P3180686712672401771

namespace A093062

/-- `A000045(p?[A000961(n+1)])-A030427(n+1)` -/
def P3180686712672401771.Spec : Prop :=
  ∀ n, P3180686712672401771.a n = A093062 (n + 1)

end A093062

/-! ## A093062.P15278253624636151276

`A000045(p?[A266645(n+1)])-A030427(n+1)`
-/

namespace A093062.P15278253624636151276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A266645 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat - A030427 (n + 1)

end

end A093062.P15278253624636151276

namespace A093062

/-- `A000045(p?[A266645(n+1)])-A030427(n+1)` -/
def P15278253624636151276.Spec : Prop :=
  ∀ n, P15278253624636151276.a n = A093062 (n + 1)

end A093062

/-! ## A093062.P445557464028862761

`A000045(A040976(n+1)+2)-A030427(n+1)`
-/

namespace A093062.P445557464028862761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A040976 (n + 1) + 2).toNat - A030427 (n + 1)

end

end A093062.P445557464028862761

namespace A093062

/-- `A000045(A040976(n+1)+2)-A030427(n+1)` -/
def P445557464028862761.Spec : Prop :=
  ∀ n, P445557464028862761.a n = A093062 (n + 1)

theorem P445557464028862761.correct : P445557464028862761.Spec := by
  intro n
  simp only [A093062, Nat.add_sub_cancel, A093062.P445557464028862761.a, A093062.P14599977001561547652.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A000045, A000045.P11838749114346432762.a, A030427, A030427.P14895017311041254849.a, A040976, A040976.P11599754272797435513.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A093062

/-!
# A093068: Expansion of (eta(q^3)^2 * eta(q^7) * eta(q^63)) / (eta(q) * eta(q^9) * eta(q^21)^2) in powers of q.

The programs for A093068, there is no canonical definition to state claims against.
-/

/-! ## A093068.P4929843694120119030

`A161358(A351976(2*(n+2))+A339662(n+1))`
-/

namespace A093068.P4929843694120119030
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161358 (A351976 (2 * (n + 2)) + A339662 (n + 1)).toNat

end

end A093068.P4929843694120119030

/-! ## A093068.P15724033900635743115

`A146290(A174057(n+1))`
-/

namespace A093068.P15724033900635743115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146290 (A174057 (n + 1)).toNat

end

end A093068.P15724033900635743115

/-! ## A093068.P15884494807338871666

`A000523(A233194(n+2))-∑{e}[n+1, #]`
-/

namespace A093068.P15884494807338871666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (A233194 (n + 2)).toNat - ((∑ p ∈ Nat.primeFactors (f1 n), Nat.factorization (f1 n) p : ℕ) : ℤ)

end

end A093068.P15884494807338871666

/-! ## A093068.P15492800412301080884

`A000120(A322528(n)+A055226(n))`
-/

namespace A093068.P15492800412301080884
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A322528 n + A055226 n).toNat

end

end A093068.P15492800412301080884

/-! ## A093068.P7564828649066974594

`A000174(or(A051724(n), A076868(n)))`
-/

namespace A093068.P7564828649066974594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000174 (Int.lor (A051724 n) (A076868 n)).toNat

end

end A093068.P7564828649066974594

/-!
# A093069: a(n) = (2^n + 1)^2 - 2.

The programs for A093069, the canonical program `A093069.P8433086382736987600` is in `Seq.B000.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093069 has offset 1).

The definition of A093069 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^(n+1)+1)²-2` (program `A093069.P8433086382736987600`, by `A093069.P8433086382736987600.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A093069.P8433086382736987600

`(2^(n+1)+1)²-2`

The canonical program, it is in `Seq.B000.C014`.
-/

namespace A093069

/-- `(2^(n+1)+1)²-2` -/
def P8433086382736987600.Spec : Prop :=
  ∀ n, P8433086382736987600.a n = A093069 (n + 1)

theorem P8433086382736987600.correct : P8433086382736987600.Spec := by
  intro n
  simp only [A093069, Nat.add_sub_cancel]

end A093069

/-! ## A093069.P2919277950212949535

`xor(∑[2^n]+2, ∑[2^n+3*4^n])`
-/

namespace A093069.P2919277950212949535
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n + 3 * 4 ^ n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor (∑ j ∈ Finset.range (n + 1), f1 j + 2) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A093069.P2919277950212949535

namespace A093069

/-- `xor(∑[2^n]+2, ∑[2^n+3*4^n])` -/
def P2919277950212949535.Spec : Prop :=
  ∀ n, (P2919277950212949535.a n : ℤ) = A093069 (n + 1)

end A093069

/-! ## A093069.P14468715087514996338

`or(∑[2^n]+2, ∑[4*a(n-1)-2^n])` with `a(0)=4`
-/

namespace A093069.P14468715087514996338
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f2 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f2 =>
  4 * f2 (n - 1) - (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℕ) : ℤ) (∑ j ∈ Finset.range (n + 1), f2 j)

end

end A093069.P14468715087514996338

namespace A093069

/-- `or(∑[2^n]+2, ∑[4*a(n-1)-2^n])` -/
def P14468715087514996338.Spec : Prop :=
  ∀ n, P14468715087514996338.a n = A093069 (n + 1)

end A093069

/-! ## A093069.P14161557069918968475

`A130567(n+2)`
-/

namespace A093069.P14161557069918968475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130567 (n + 2)

end

end A093069.P14161557069918968475

namespace A093069

/-- `A130567(n+2)` -/
def P14161557069918968475.Spec : Prop :=
  ∀ n, P14161557069918968475.a n = A093069 (n + 1)

end A093069

/-! ## A093069.P5197810002192725478

`A116362(2*n+3)`
-/

namespace A093069.P5197810002192725478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116362 (2 * n + 3)

end

end A093069.P5197810002192725478

namespace A093069

/-- `A116362(2*n+3)` -/
def P5197810002192725478.Spec : Prop :=
  ∀ n, P5197810002192725478.a n = A093069 (n + 1)

end A093069

/-! ## A093069.P14508260374862170127

`or(7, A270080(n+1))`
-/

namespace A093069.P14508260374862170127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 7 (A270080 (n + 1))

end

end A093069.P14508260374862170127

namespace A093069

/-- `or(7, A270080(n+1))` -/
def P14508260374862170127.Spec : Prop :=
  ∀ n, P14508260374862170127.a n = A093069 (n + 1)

end A093069

/-! ## A093069.P2835912963231792540

`abs(2-A028400(n+1))`
-/

namespace A093069.P2835912963231792540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A028400 (n + 1)|

end

end A093069.P2835912963231792540

namespace A093069

/-- `abs(2-A028400(n+1))` -/
def P2835912963231792540.Spec : Prop :=
  ∀ n, P2835912963231792540.a n = A093069 (n + 1)

end A093069

/-! ## A093069.P11323509975373551306

`abs(2-A000051(n+1)²)`
-/

namespace A093069.P11323509975373551306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A000051 (n + 1) ^ 2|

end

end A093069.P11323509975373551306

namespace A093069

/-- `abs(2-A000051(n+1)²)` -/
def P11323509975373551306.Spec : Prop :=
  ∀ n, P11323509975373551306.a n = A093069 (n + 1)

end A093069

/-! ## A093069.P9232776164227034914

`or(∑[2^(n+1)], A253208(n+1))`
-/

namespace A093069.P9232776164227034914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) (A253208 (n + 1))

end

end A093069.P9232776164227034914

namespace A093069

/-- `or(∑[2^(n+1)], A253208(n+1))` -/
def P9232776164227034914.Spec : Prop :=
  ∀ n, P9232776164227034914.a n = A093069 (n + 1)

end A093069

/-! ## A093069.P3502550984193790089

`A183977(2*n+3)/2`
-/

namespace A093069.P3502550984193790089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183977 (2 * n + 3) : ℚ) / 2

end

end A093069.P3502550984193790089

namespace A093069

/-- `A183977(2*n+3)/2` -/
def P3502550984193790089.Spec : Prop :=
  ∀ n, P3502550984193790089.a n = (A093069 (n + 1) : ℚ)

end A093069

/-! ## A093069.P13107193624324556988

`record[A135224(n+1)²-2]`
-/

namespace A093069.P13107193624324556988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135224 (n + 1) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093069.P13107193624324556988

namespace A093069

/-- `record[A135224(n+1)²-2]` -/
def P13107193624324556988.Spec : Prop :=
  ∀ n, P13107193624324556988.a n = A093069 (n + 1)

end A093069

/-! ## A093069.P8199773781614305282

`record[A271709(n+1)²-2]`
-/

namespace A093069.P8199773781614305282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 (n + 1) ^ 2 - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093069.P8199773781614305282

namespace A093069

/-- `record[A271709(n+1)²-2]` -/
def P8199773781614305282.Spec : Prop :=
  ∀ n, P8199773781614305282.a n = A093069 (n + 1)

end A093069

/-!
# A093071: Lesser of a pair of records in A066272.

The programs for A093071, there is no canonical definition to state claims against.
-/

/-! ## A093071.P16149189304535153693

`∩[A073638(n+1)-1, A073638(n+1)]`
-/

namespace A093071.P16149189304535153693
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073638 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073638 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093071.P16149189304535153693

/-!
# A093074: Greatest prime factor of n and its direct neighbors.

The programs for A093074, the canonical program `A093074.P9471661206475887899` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A093074 has offset 1).

The definition of A093074 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 316 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A093074.P9471661206475887899

`A006530((n+2)*A006530(A060798(n+1)))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A093074

/-- `A006530((n+2)*A006530(A060798(n+1)))` -/
def P9471661206475887899.Spec : Prop :=
  ∀ n, P9471661206475887899.a n = A093074 (n + 1)

theorem P9471661206475887899.correct : P9471661206475887899.Spec := by
  intro n
  simp only [A093074, Nat.add_sub_cancel]

end A093074

/-! ## A093074.P7575843400623776029

`A006530((n+2)*A006530(A179865(n+1)))`
-/

namespace A093074.P7575843400623776029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) * A006530 (A179865 (n + 1)).toNat).toNat

end

end A093074.P7575843400623776029

namespace A093074

/-- `A006530((n+2)*A006530(A179865(n+1)))` -/
def P7575843400623776029.Spec : Prop :=
  ∀ n, P7575843400623776029.a n = A093074 (n + 1)

end A093074

/-! ## A093074.P2490269519730934946

`A006530(lcm(n+2, A006530(A179865(n+1))))`
-/

namespace A093074.P2490269519730934946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (Int.lcm (n + 2 : ℤ) (A006530 (A179865 (n + 1)).toNat))

end

end A093074.P2490269519730934946

namespace A093074

/-- `A006530(lcm(n+2, A006530(A179865(n+1))))` -/
def P2490269519730934946.Spec : Prop :=
  ∀ n, P2490269519730934946.a n = A093074 (n + 1)

end A093074

/-! ## A093074.P16396416183842418075

`A006530(A006530((n+1)*(n+2))*A028310(n))`
-/

namespace A093074.P16396416183842418075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 ((n + 1) * (n + 2)) * A028310 n).toNat

end

end A093074.P16396416183842418075

namespace A093074

/-- `A006530(A006530((n+1)*(n+2))*A028310(n))` -/
def P16396416183842418075.Spec : Prop :=
  ∀ n, P16396416183842418075.a n = A093074 (n + 1)

end A093074

/-! ## A093074.P9275658278832332024

`A006530((n+2)*A006530(A134479(n)))`
-/

namespace A093074.P9275658278832332024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) * A006530 (A134479 n).toNat).toNat

end

end A093074.P9275658278832332024

namespace A093074

/-- `A006530((n+2)*A006530(A134479(n)))` -/
def P9275658278832332024.Spec : Prop :=
  ∀ n, P9275658278832332024.a n = A093074 (n + 1)

end A093074

/-! ## A093074.P3654481686861481576

`A006530(A006530((n+1)*(n+2))*A004277(n))`
-/

namespace A093074.P3654481686861481576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 ((n + 1) * (n + 2)) * A004277 n).toNat

end

end A093074.P3654481686861481576

namespace A093074

/-- `A006530(A006530((n+1)*(n+2))*A004277(n))` -/
def P3654481686861481576.Spec : Prop :=
  ∀ n, P3654481686861481576.a n = A093074 (n + 1)

end A093074

/-! ## A093074.P7361276099330391624

`A006530((n+2)*A006530(A106232(n+1)))`
-/

namespace A093074.P7361276099330391624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 ((n + 2 : ℤ) * A006530 (A106232 (n + 1)).toNat).toNat

end

end A093074.P7361276099330391624

namespace A093074

/-- `A006530((n+2)*A006530(A106232(n+1)))` -/
def P7361276099330391624.Spec : Prop :=
  ∀ n, P7361276099330391624.a n = A093074 (n + 1)

end A093074

/-! ## A093074.P5970815862441108541

`A006530(A006530(A046092(n+1))*A008574(n))`
-/

namespace A093074.P5970815862441108541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A046092 (n + 1)).toNat * A008574 n).toNat

end

end A093074.P5970815862441108541

namespace A093074

/-- `A006530(A006530(A046092(n+1))*A008574(n))` -/
def P5970815862441108541.Spec : Prop :=
  ∀ n, P5970815862441108541.a n = A093074 (n + 1)

end A093074

/-! ## A093074.P12778037934229622642

`A006530(A006530(A082562(2*n+1))*A006530(n+2))`
-/

namespace A093074.P12778037934229622642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A006530 (A082562 (2 * n + 1)).toNat * A006530 (n + 2)).toNat

end

end A093074.P12778037934229622642

namespace A093074

/-- `A006530(A006530(A082562(2*n+1))*A006530(n+2))` -/
def P12778037934229622642.Spec : Prop :=
  ∀ n, P12778037934229622642.a n = A093074 (n + 1)

end A093074

/-! ## A093074.P5256290720925292903

`A074399(A132411(n+1))`
-/

namespace A093074.P5256290720925292903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A132411 (n + 1)).toNat

end

end A093074.P5256290720925292903

namespace A093074

/-- `A074399(A132411(n+1))` -/
def P5256290720925292903.Spec : Prop :=
  ∀ n, P5256290720925292903.a n = A093074 (n + 1)

end A093074

/-! ## A093074.P15922115035461707868

`A074399(A028310(2*n)+n²)`
-/

namespace A093074.P15922115035461707868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074399 (A028310 (2 * n) + (n ^ 2 : ℤ)).toNat

end

end A093074.P15922115035461707868

namespace A093074

/-- `A074399(A028310(2*n)+n²)` -/
def P15922115035461707868.Spec : Prop :=
  ∀ n, P15922115035461707868.a n = A093074 (n + 1)

end A093074

/-!
# A093075: Indicating the neighbor with a greater greatest prime factor.

The programs for A093075, there is no canonical definition to state claims against.
-/

/-! ## A093075.P6860168616189057771

`1-(n+2)%A093074(n+1)`
-/

namespace A093075.P6860168616189057771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - Int.tmod (n + 2 : ℤ) (A093074 (n + 1))

end

end A093075.P6860168616189057771

/-! ## A093075.P11542012188717478080

`A015157((n+2)%A093074(n+1))`
-/

namespace A093075.P11542012188717478080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015157 (Int.tmod (n + 2 : ℤ) (A093074 (n + 1))).toNat

end

end A093075.P11542012188717478080

/-! ## A093075.P17131611220505582572

`A011649((n+3)%A093074(n+1))`
-/

namespace A093075.P17131611220505582572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011649 (Int.tmod (n + 3 : ℤ) (A093074 (n + 1))).toNat

end

end A093075.P17131611220505582572

/-! ## A093075.P12022533443450458132

`A062157(A103517(n)%A093074(n+1))`
-/

namespace A093075.P12022533443450458132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (Int.tmod (A103517 n) (A093074 (n + 1))).toNat

end

end A093075.P12022533443450458132

/-! ## A093075.P10936613923798924942

`A056594(A020725(n+1)%A093074(n+1))`
-/

namespace A093075.P10936613923798924942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (Int.tmod (A020725 (n + 1)) (A093074 (n + 1))).toNat

end

end A093075.P10936613923798924942

/-!
# A093076: Number of steps to factor n!+1 using Fermat's factorization method.

The programs for A093076, there is no canonical definition to state claims against.
-/

/-! ## A093076.P13210836634769713804

`A048817(A351263(n+2))`
-/

namespace A093076.P13210836634769713804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048817 (A351263 (n + 2)).toNat

end

end A093076.P13210836634769713804

/-! ## A093076.P7892151618098896940

`A215699(A277504(3*n+4))+1`
-/

namespace A093076.P7892151618098896940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215699 (A277504 (3 * n + 4)).toNat + 1

end

end A093076.P7892151618098896940

/-! ## A093076.P2037849180870302024

`A215699(A343097(3*n+4))+1`
-/

namespace A093076.P2037849180870302024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215699 (A343097 (3 * n + 4)).toNat + 1

end

end A093076.P2037849180870302024

/-!
# A093077: Primes p = prime(i) such that p(i)# + p(i+1) is prime.

The programs for A093077, there is no canonical definition to state claims against.
-/

/-! ## A093077.P6260393904509627687

`A000040(A035346(n+1))`
-/

namespace A093077.P6260393904509627687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A035346 (n + 1)).toNat

end

end A093077.P6260393904509627687

/-! ## A093077.P16051568563334216843

`A008578(A035346(n+1)+1)`
-/

namespace A093077.P16051568563334216843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A035346 (n + 1) + 1).toNat

end

end A093077.P16051568563334216843

/-! ## A093077.P2711756006916996215

`A064555(A035346(n+1)+1)`
-/

namespace A093077.P2711756006916996215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064555 (A035346 (n + 1) + 1).toNat

end

end A093077.P2711756006916996215

/-! ## A093077.P14544966056425708474

`A182986(A035346(n+1)+1)`
-/

namespace A093077.P14544966056425708474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A035346 (n + 1) + 1).toNat

end

end A093077.P14544966056425708474

/-! ## A093077.P7532628970332340472

`A158611(A035346(n+1)+2)`
-/

namespace A093077.P7532628970332340472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (A035346 (n + 1) + 2).toNat

end

end A093077.P7532628970332340472

/-!
# A093078: Primes p = prime(i) such that p(i)# - p(i+1) is prime.

The programs for A093078, there is no canonical definition to state claims against.
-/

/-! ## A093078.P7149816032440122242

`A000040(A249798(n+1))`
-/

namespace A093078.P7149816032440122242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A249798 (n + 1)).toNat

end

end A093078.P7149816032440122242

/-! ## A093078.P13504275473237812641

`A006005(A249798(comp[31*n]))`
-/

namespace A093078.P13504275473237812641
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  31 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A249798 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)).toNat

end

end A093078.P13504275473237812641

/-! ## A093078.P11703066923165655847

`A008578(A249798(n+1)+1)`
-/

namespace A093078.P11703066923165655847
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A249798 (n + 1) + 1).toNat

end

end A093078.P11703066923165655847

/-! ## A093078.P15914050813460209058

`A182986(A249798(n+1)+1)`
-/

namespace A093078.P15914050813460209058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A249798 (n + 1) + 1).toNat

end

end A093078.P15914050813460209058

/-! ## A093078.P18412129464538038531

`A065091(A249798(n+1)-1)`
-/

namespace A093078.P18412129464538038531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (A249798 (n + 1) - 1).toNat

end

end A093078.P18412129464538038531

/-!
# A093081: Records in A091966.

The programs for A093081, there is no canonical definition to state claims against.
-/

/-! ## A093081.P3016172392617448080

`record[A091966(n+1)]`
-/

namespace A093081.P3016172392617448080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091966 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A093081.P3016172392617448080

/-! ## A093081.P348006530977616592

`A091966(A093080(n+1))`
-/

namespace A093081.P348006530977616592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091966 (A093080 (n + 1)).toNat

end

end A093081.P348006530977616592

/-!
# A093082: Number of steps to factor n!-1 using Fermat's factorization method.

The programs for A093082, there is no canonical definition to state claims against.
-/

/-! ## A093082.P7625951019986252445

`A104842(A331616(n))`
-/

namespace A093082.P7625951019986252445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104842 (A331616 n).toNat

end

end A093082.P7625951019986252445

/-!
# A093083: Partial sums of digits of decimal expansion of golden ratio phi.

The programs for A093083, there is no canonical definition to state claims against.
-/

/-! ## A093083.P9959103865847360257

`∑[A001622(n)]`
-/

namespace A093083.P9959103865847360257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001622 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093083.P9959103865847360257

/-! ## A093083.P1233486543092314523

`∑[A104457(n)]-1`
-/

namespace A093083.P1233486543092314523
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104457 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A093083.P1233486543092314523

/-! ## A093083.P14174632135268223832

`∑[A296184(n)]-2`
-/

namespace A093083.P14174632135268223832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296184 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A093083.P14174632135268223832

/-! ## A093083.P10822350788771282402

`∑[A094214(abs(1-n))]`
-/

namespace A093083.P10822350788771282402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093083.P10822350788771282402

/-! ## A093083.P6121392847964018405

`∑[9-A109866(n+1)]`
-/

namespace A093083.P6121392847964018405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A109866 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093083.P6121392847964018405

/-! ## A093083.P10958686411944557555

`∑[9-A094874(n)]-7`
-/

namespace A093083.P10958686411944557555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A094874 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 7

end

end A093083.P10958686411944557555

/-! ## A093083.P9312369992629678887

`A094214(n-1)+a(n-1)` with `a(0)=1`
-/

namespace A093083.P9312369992629678887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A094214 (n - 1) + a (n - 1)

end

end A093083.P9312369992629678887

/-! ## A093083.P17487653898891626022

`a(n-1)+9-A079585(n)` with `a(0)=1`
-/

namespace A093083.P17487653898891626022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (9 - A079585 (n + 1))

end

end A093083.P17487653898891626022

/-! ## A093083.P16469590192260418398

`∑[A104457(n)/A054977(n)]`
-/

namespace A093083.P16469590192260418398
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104457 (n + 1) : ℚ) / (A054977 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093083.P16469590192260418398

/-! ## A093083.P5408642948894961029

`∑[A094214(n)]+1-A094214(n)`
-/

namespace A093083.P5408642948894961029
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094214 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (1 - A094214 n)

end

end A093083.P5408642948894961029

/-! ## A093083.P15722127297797044064

`∑[A382130(2*n+1)]`
-/

namespace A093083.P15722127297797044064
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382130 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093083.P15722127297797044064

/-! ## A093083.P7457726375829497473

`∑[A078424(3*(n+1))]`
-/

namespace A093083.P7457726375829497473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078424 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093083.P7457726375829497473

/-! ## A093083.P9738534079373741907

`∑[A104457(n)/A165022(A035337(n))]`
-/

namespace A093083.P9738534079373741907
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A104457 (n + 1) : ℚ) / (A165022 (A035337 n).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093083.P9738534079373741907

/-! ## A093083.P15903523038247964300

`A197567(n)-A046974(n)`
-/

namespace A093083.P15903523038247964300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197567 n - A046974 n

end

end A093083.P15903523038247964300

/-! ## A093083.P3794585555685508375

`∑[A098369(∑[n])]`
-/

namespace A093083.P3794585555685508375
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098369 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093083.P3794585555685508375

/-! ## A093083.P3610077143304331476

`∑[A095713(∑[n]+1)]`
-/

namespace A093083.P3610077143304331476
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095713 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093083.P3610077143304331476

/-! ## A093083.P794884527931510702

`∑[A138116(∑[n+1])]`
-/

namespace A093083.P794884527931510702
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138116 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093083.P794884527931510702

/-! ## A093083.P10710149345412651479

`∑{digits}[floor(ϕ*10^n), #]`
-/

namespace A093083.P10710149345412651479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (10 ^ n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).sum

end

end A093083.P10710149345412651479

/-! ## A093083.P13885538008122667086

`∑[floor(ϕ*10^n)%10]`
-/

namespace A093083.P13885538008122667086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌊Real.goldenRatio * (10 ^ n : ℝ)⌋ 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093083.P13885538008122667086

/-!
# A093084: Partial sums of digits of decimal expansion of Euler's constant gamma.

The programs for A093084, there is no canonical definition to state claims against.
-/

/-! ## A093084.P9903020372398507230

`A001620(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A093084.P9903020372398507230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001620 (n - 1) + a (n - 1)

end

end A093084.P9903020372398507230

/-! ## A093084.P14380823198745007706

`∑[A001620(n)]-A001620(n)`
-/

namespace A093084.P14380823198745007706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A001620 n

end

end A093084.P14380823198745007706

/-! ## A093084.P599379798052336311

`∑[A000040(n+1)%2*A001620(abs(A024000(n)))]`
-/

namespace A093084.P599379798052336311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 * A001620 |A024000 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A093084.P599379798052336311

/-! ## A093084.P10220014697256169733

`∑[9-A153810(n)]-(9-A153810(n))`
-/

namespace A093084.P10220014697256169733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  9 - A153810 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (9 - A153810 n)

end

end A093084.P10220014697256169733

/-! ## A093084.P857233614968259597

`∑[A098368(∑[n])/5]-A098368(∑[n])/5`
-/

namespace A093084.P857233614968259597
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098368 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A098368 (∑ j ∈ Finset.range (n + 1), f3 j) : ℚ) / 5

end

end A093084.P857233614968259597

/-! ## A093084.P11948602390527160750

`∑[A098368(∑[n])/5]-A002266(A098368(∑[n]))`
-/

namespace A093084.P11948602390527160750
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A098368 (∑ j ∈ Finset.range (n + 1), f2 j) : ℚ) / 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (A002266 (A098368 (∑ j ∈ Finset.range (n + 1), f3 j)).toNat : ℚ)

end

end A093084.P11948602390527160750

/-! ## A093084.P11366499816370654016

`A002266(∑[A098368(∑[n])])-A002266(A098368(∑[n]))`
-/

namespace A093084.P11366499816370654016
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098368 (∑ j ∈ Finset.range (n + 1), f2 j)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (∑ j ∈ Finset.range (n + 1), f1 j).toNat - A002266 (A098368 (∑ j ∈ Finset.range (n + 1), f3 j)).toNat

end

end A093084.P11366499816370654016

/-! ## A093084.P5278207087170565253

`∑[A098368(A055999(n)+10)]-5`
-/

namespace A093084.P5278207087170565253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098368 (A055999 n + 10).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A093084.P5278207087170565253

/-! ## A093084.P12003918291363679463

`∑[A098368(A167614(n+2)+1)]-5`
-/

namespace A093084.P12003918291363679463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098368 (A167614 (n + 2) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 5

end

end A093084.P12003918291363679463

/-!
# A093085: Expansion of phi(-x) / psi(x^4) in powers of x where phi(), psi() are Ramanujan theta functions.

The programs for A093085, there is no canonical definition to state claims against.
-/

/-! ## A093085.P13462871180895466081

`A046980(n)*A112172(n)`
-/

namespace A093085.P13462871180895466081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 n * A112172 n

end

end A093085.P13462871180895466081

/-! ## A093085.P13461662392837644945

`A112171(n)*A128130(n)`
-/

namespace A093085.P13461662392837644945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n * A128130 n

end

end A093085.P13461662392837644945

/-! ## A093085.P8459627242880896632

`A033999(n)*A208589(n)`
-/

namespace A093085.P8459627242880896632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A208589 n

end

end A093085.P8459627242880896632

/-! ## A093085.P7637868728969491677

`A112171(n)*A143431(n)`
-/

namespace A093085.P7637868728969491677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n * A143431 n

end

end A093085.P7637868728969491677

/-! ## A093085.P18171838371661874989

`A112172(n)*A143621(n)`
-/

namespace A093085.P18171838371661874989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112172 n * A143621 n

end

end A093085.P18171838371661874989

/-! ## A093085.P5785453558234993629

`A112171(n)*A162285(n)`
-/

namespace A093085.P5785453558234993629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n * A162285 n

end

end A093085.P5785453558234993629

/-! ## A093085.P17268525987470624761

`A087960(n)*A208589(n)`
-/

namespace A093085.P17268525987470624761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087960 n * A208589 n

end

end A093085.P17268525987470624761

/-! ## A093085.P9531355976304556347

`A094267(n)*A208589(n)`
-/

namespace A093085.P9531355976304556347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094267 n * A208589 n

end

end A093085.P9531355976304556347

/-! ## A093085.P14714006195756791890

`A208589(n)*A219977(n)`
-/

namespace A093085.P14714006195756791890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208589 n * A219977 n

end

end A093085.P14714006195756791890

/-! ## A093085.P8685092594492446422

`A112171(n)*A118828(n+1)`
-/

namespace A093085.P8685092594492446422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112171 n * A118828 (n + 1)

end

end A093085.P8685092594492446422

/-! ## A093085.P9052659307890321878

`A071935(n+1)*A208589(n)`
-/

namespace A093085.P9052659307890321878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071935 (n + 1) * A208589 n

end

end A093085.P9052659307890321878

/-! ## A093085.P8558344599022963792

`A208589(n)*A309873(n+1)`
-/

namespace A093085.P8558344599022963792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A208589 n * A309873 (n + 1)

end

end A093085.P8558344599022963792

/-! ## A093085.P7894512023472702613

`A133872(n)*A134178(A133872(n)+n)`
-/

namespace A093085.P7894512023472702613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A134178 (A133872 n + (n : ℤ)).toNat

end

end A093085.P7894512023472702613

/-! ## A093085.P13495063003439801982

`A133872(n)*A134178(n+1)`
-/

namespace A093085.P13495063003439801982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133872 n * A134178 (n + 1)

end

end A093085.P13495063003439801982

/-! ## A093085.P16959336759961706964

`∑[A056594(n)]*A134178(n+1)`
-/

namespace A093085.P16959336759961706964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A134178 (n + 1)

end

end A093085.P16959336759961706964

/-! ## A093085.P10015488293606467977

`A000035(∑[A000035(n+1)])*A134178(n+1)`
-/

namespace A093085.P10015488293606467977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (∑ j ∈ Finset.range (n + 1), f1 j).toNat * A134178 (n + 1)

end

end A093085.P10015488293606467977

/-! ## A093085.P1624481508189763917

`A162285(2*n)*A208589(n)`
-/

namespace A093085.P1624481508189763917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162285 (2 * n) * A208589 n

end

end A093085.P1624481508189763917

/-! ## A093085.P15796887879909045272

`A034947(2*n+1)*A208589(n)`
-/

namespace A093085.P15796887879909045272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034947 (2 * n + 1) * A208589 n

end

end A093085.P15796887879909045272

/-! ## A093085.P569320890652963794

`A046980(2*n+1)*A208589(n)`
-/

namespace A093085.P569320890652963794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046980 (2 * n + 1) * A208589 n

end

end A093085.P569320890652963794

/-! ## A093085.P13398993292639557667

`A134178(and(2, n)+3*n)`
-/

namespace A093085.P13398993292639557667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134178 (Nat.land 2 n + 3 * n)

end

end A093085.P13398993292639557667

/-!
# A093086: "Fibonacci in digits": start with a(0)=0, a(1)=1; repeatedly adjoin the digits of the sum of the next two terms.

The programs for A093086, there is no canonical definition to state claims against.
-/

/-! ## A093086.P6337377743933335920

`A214365(n+1)-a(n-1)` with `a(0)=0`
-/

namespace A093086.P6337377743933335920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A214365 (n + 1) - a (n - 1)

end

end A093086.P6337377743933335920

/-! ## A093086.P2512412582407731853

`A214365(n)-(a(n-1)-Δ[A214365(n)])` with `a(0)=0`
-/

namespace A093086.P2512412582407731853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214365 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A214365 n - (a (n - 1) - (f1 (n + 1) - f1 n))

end

end A093086.P2512412582407731853

/-! ## A093086.P9846173257664541968

`A031324(eq[A029226(n), A029227(n)])`
-/

namespace A093086.P9846173257664541968
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029226 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031324 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A093086.P9846173257664541968

/-!
# A093089: "Fibonacci in pairs": start with a(1)=1, a(2)=1; repeatedly adjoin sum of previous two terms but chopped from the right into pairs of 2 digits.

The programs for A093089, there is no canonical definition to state claims against.
-/

/-! ## A093089.P5538208671216031796

`A138201(A025733(n))`
-/

namespace A093089.P5538208671216031796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138201 (A025733 n).toNat

end

end A093089.P5538208671216031796

/-! ## A093089.P8861229417041190970

`A177352(A033438(n+1))`
-/

namespace A093089.P8861229417041190970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177352 (A033438 (n + 1)).toNat

end

end A093089.P8861229417041190970

/-! ## A093089.P7696828020074457115

`A177352(A069533(n+1))`
-/

namespace A093089.P7696828020074457115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177352 (A069533 (n + 1)).toNat

end

end A093089.P7696828020074457115

/-! ## A093089.P515994575187819906

`A299500(A033443(n+1))`
-/

namespace A093089.P515994575187819906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299500 (A033443 (n + 1)).toNat

end

end A093089.P515994575187819906

/-! ## A093089.P7994587456374435054

`A351219(A166467(n+1))`
-/

namespace A093089.P7994587456374435054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351219 (A166467 (n + 1)).toNat

end

end A093089.P7994587456374435054

/-!
# A093091: "Fibonacci in pairs from left": start with a(1)=1, a(2)=1; repeatedly adjoin sum of previous two terms but chopped from the left into pairs of 2 digits.

The programs for A093091, there is no canonical definition to state claims against.
-/

/-! ## A093091.P15773050948918506773

`A000045(comp[12*n])%A323605(n)`
-/

namespace A093091.P15773050948918506773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12 * n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)) (A323605 n)

end

end A093091.P15773050948918506773

/-! ## A093091.P8544087003354710079

`A193921(A000124(n))%A017497(n)`
-/

namespace A093091.P8544087003354710079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A193921 (A000124 n).toNat) (A017497 n)

end

end A093091.P8544087003354710079

/-! ## A093091.P1014004409615590443

`A000045(n+1)%A173977(A000041(n))`
-/

namespace A093091.P1014004409615590443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) (A173977 (A000041 n).toNat)

end

end A093091.P1014004409615590443

/-! ## A093091.P3784659390169411057

`A193906(A000217(n)%A318849(n+5))`
-/

namespace A093091.P3784659390169411057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193906 (Int.tmod (A000217 n) (A318849 (n + 5))).toNat

end

end A093091.P3784659390169411057

/-! ## A093091.P14966555657925546219

`A324969(n+2)%A054905(A118846(n+1))`
-/

namespace A093091.P14966555657925546219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A324969 (n + 2)) (A054905 (A118846 (n + 1)).toNat)

end

end A093091.P14966555657925546219

/-!
# A093094: "Products into digits": start with a(1)=2, a(2)=2; adjoin digits of product of a(k) and a(k+1) for k from 1 to infinity.

The programs for A093094, there is no canonical definition to state claims against.
-/

/-! ## A093094.P1047099078016860356

`A045777(n+2)`
-/

namespace A093094.P1047099078016860356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045777 (n + 2)

end

end A093094.P1047099078016860356

/-! ## A093094.P18173240074861768115

`∑{e}[A020707(n), A045777(#)]`
-/

namespace A093094.P18173240074861768115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A045777 (Nat.factorization (f1 n).natAbs p)

end

end A093094.P18173240074861768115

/-!
# A093096: Start with a(1) = a(2) = 3; then apply the rule of A093094.

The programs for A093096, there is no canonical definition to state claims against.
-/

/-! ## A093096.P10902967676080909327

`A060310(n+2)`
-/

namespace A093096.P10902967676080909327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060310 (n + 2)

end

end A093096.P10902967676080909327

/-! ## A093096.P491646624208278072

`dr(A060310(2-(n-A005843(n))))`
-/

namespace A093096.P491646624208278072
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A060310 (2 - ((n : ℤ) - A005843 n)).toNat)

end

end A093096.P491646624208278072

/-! ## A093096.P2153941746186568638

`lcm(A020985(n), A060310(2-(n-A005843(n))))`
-/

namespace A093096.P2153941746186568638
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A060310 (2 - ((n : ℤ) - A005843 n)).toNat)

end

end A093096.P2153941746186568638

/-! ## A093096.P16908142910990413798

`or(A000007(n), A060310(2-(n-A005843(n))))`
-/

namespace A093096.P16908142910990413798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A060310 (2 - ((n : ℤ) - A005843 n)).toNat)

end

end A093096.P16908142910990413798

/-! ## A093096.P14263440493233539981

`or(A000038(n), A060310(2-(n-A005843(n))))`
-/

namespace A093096.P14263440493233539981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A060310 (2 - ((n : ℤ) - A005843 n)).toNat)

end

end A093096.P14263440493233539981

/-! ## A093096.P15309873378219190841

`abs(A057077(n)*A060310(2-(n-A005843(n))))`
-/

namespace A093096.P15309873378219190841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A057077 n * A060310 (2 - ((n : ℤ) - A005843 n)).toNat|

end

end A093096.P15309873378219190841

/-! ## A093096.P11934216196171696875

`A060310(2-(n-A005843(n)))^A033999(n)²`
-/

namespace A093096.P11934216196171696875
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060310 (2 - ((n : ℤ) - A005843 n)).toNat : ℚ) ^ (A033999 n ^ 2 : ℤ)

end

end A093096.P11934216196171696875

/-! ## A093096.P3264362294985446962

`A007318(C(2, n))*A060310(2-(n-A005843(n)))`
-/

namespace A093096.P3264362294985446962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A060310 (2 - ((n : ℤ) - A005843 n)).toNat

end

end A093096.P3264362294985446962

/-! ## A093096.P8991042066027832683

`gcd(7, A046691(n))*A060310(2-(n-A005843(n)))`
-/

namespace A093096.P8991042066027832683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 7 (A046691 n) : ℤ) * A060310 (2 - ((n : ℤ) - A005843 n)).toNat

end

end A093096.P8991042066027832683

/-! ## A093096.P4591587768069249976

`A000041(C(2, 2*n))*A060310(2-(n-A005843(n)))`
-/

namespace A093096.P4591587768069249976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (Nat.choose 2 (2 * n)) * A060310 (2 - ((n : ℤ) - A005843 n)).toNat

end

end A093096.P4591587768069249976

/-! ## A093096.P6906928263467956176

`A000005(gcd(n, n-1))*A060310(2-(n-A005843(n)))`
-/

namespace A093096.P6906928263467956176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (n : ℤ) ((n : ℤ) - 1)) * A060310 (2 - ((n : ℤ) - A005843 n)).toNat

end

end A093096.P6906928263467956176

/-! ## A093096.P13043758775103146815

`A007318(((-1)^n)²)*A060310(2-(n-A005843(n)))`
-/

namespace A093096.P13043758775103146815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (((-1) ^ n) ^ 2).toNat * A060310 (2 - ((n : ℤ) - A005843 n)).toNat

end

end A093096.P13043758775103146815

/-! ## A093096.P7904996595623648522

`A060310(2-(n-A005843(n)))^A033999(n)^A002620(n)`
-/

namespace A093096.P7904996595623648522
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A060310 (2 - ((n : ℤ) - A005843 n)).toNat : ℝ) ^ ((A033999 n : ℚ) ^ (A002620 n : ℤ) : ℝ)

end

end A093096.P7904996595623648522

/-! ## A093096.P17304439459584165802

`A060310(2-(n-A005843(n)))-A008683(12*or(1, n))`
-/

namespace A093096.P17304439459584165802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060310 (2 - ((n : ℤ) - A005843 n)).toNat - A008683 (12 * Nat.lor 1 n)

end

end A093096.P17304439459584165802

/-! ## A093096.P3673452327746504149

`A060310(2-(n-A005843(n)))-A000035(2*n)`
-/

namespace A093096.P3673452327746504149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060310 (2 - ((n : ℤ) - A005843 n)).toNat - A000035 (2 * n)

end

end A093096.P3673452327746504149

/-! ## A093096.P7083441431391561901

`A000034(2*n)*A060310(2-(n-A005843(n)))`
-/

namespace A093096.P7083441431391561901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (2 * n) * A060310 (2 - ((n : ℤ) - A005843 n)).toNat

end

end A093096.P7083441431391561901

/-! ## A093096.P9201488478732965902

`A060310(2-(n-A005843(n)))^A033999(A341019(2*n))`
-/

namespace A093096.P9201488478732965902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A060310 (2 - ((n : ℤ) - A005843 n)).toNat : ℚ) ^ (A033999 (A341019 (2 * n)).toNat : ℤ)

end

end A093096.P9201488478732965902

/-! ## A093096.P769183258959646939

`A060310(2-(n-A005843(n)))-A055672(A008586(n))`
-/

namespace A093096.P769183258959646939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060310 (2 - ((n : ℤ) - A005843 n)).toNat - A055672 (A008586 n).toNat

end

end A093096.P769183258959646939

/-!
# A093099: "Fibonacci-digits": start with "11", append sum of first 2 digits to the preceding number, drop first digit.

The programs for A093099, there is no canonical definition to state claims against.
-/

/-! ## A093099.P12819838264218260336

`filter[A092778(n), A316824(#)]`
-/

namespace A093099.P12819838264218260336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A316824 (f1 j).toNat = 1) n)

end

end A093099.P12819838264218260336

/-! ## A093099.P18278927428184483493

`∩[A092778(n), A124109(n+1)]`
-/

namespace A093099.P18278927428184483493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092778 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124109 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A093099.P18278927428184483493

