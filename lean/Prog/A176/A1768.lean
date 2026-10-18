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
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C030
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
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
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
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
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
# A176800: a(n) = all values of A176797(m) in increasing order, where A176797(m) = antiharmonic means of divisors of antiharmonic numbers A020487.

The programs for A176800, there is no canonical definition to state claims against.
-/

/-! ## A176800.P9861848272983950577

`∑[and(A000203(n+1), A102185(3*n+4))]`
-/

namespace A176800.P9861848272983950577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000203 (n + 1)) (A102185 (3 * n + 4))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176800.P9861848272983950577

/-! ## A176800.P3531142515903317414

`A176797(record[A036475(n)])`
-/

namespace A176800.P3531142515903317414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036475 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176797 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176800.P3531142515903317414

/-! ## A176800.P10035973850638754430

`A176797(A033948(n+1)%A129286(3*n+4))`
-/

namespace A176800.P10035973850638754430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176797 (Int.tmod (A033948 (n + 1)) (A129286 (3 * n + 4))).toNat

end

end A176800.P10035973850638754430

/-!
# A176804: Lesser of twin primes p such that p = semiprime(k)/2 and p + 2 = semiprime(k+2)/2 for some integer k.

The programs for A176804, the canonical program `A176804.P475315484701146626` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176804 has offset 1).

The definition of A176804 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 177 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176804.P475315484701146626

`record[gcd(A001358(n+2), A176347(n+4))]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A176804

/-- `record[gcd(A001358(n+2), A176347(n+4))]` -/
def P475315484701146626.Spec : Prop :=
  ∀ n, (P475315484701146626.a n : ℤ) = A176804 (n + 1)

theorem P475315484701146626.correct : P475315484701146626.Spec := by
  intro n
  simp only [A176804, Nat.add_sub_cancel]

end A176804

/-! ## A176804.P14348155144305271687

`A164914(eq[A068318(n+1), A164914(n+2)])`
-/

namespace A176804.P14348155144305271687
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164914 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164914 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176804.P14348155144305271687

namespace A176804

/-- `A164914(eq[A068318(n+1), A164914(n+2)])` -/
def P14348155144305271687.Spec : Prop :=
  ∀ n, P14348155144305271687.a n = A176804 (n + 1)

end A176804

/-! ## A176804.P7743345911534946577

`A001359(lt[A025921(n), A191188(n+4)])`
-/

namespace A176804.P7743345911534946577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191188 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176804.P7743345911534946577

namespace A176804

/-- `A001359(lt[A025921(n), A191188(n+4)])` -/
def P7743345911534946577.Spec : Prop :=
  ∀ n, P7743345911534946577.a n = A176804 (n + 1)

end A176804

/-!
# A176805: a(n) = 3^n + 3*n + 1.

The programs for A176805, the canonical program `A176805.P17224655801162528754` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176805 has offset 0).

The definition of A176805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3^n+3*n+1` (program `A176805.P17224655801162528754`, by `A176805.P17224655801162528754.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176805.P17224655801162528754

`3^n+3*n+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176805

/-- `3^n+3*n+1` -/
def P17224655801162528754.Spec : Prop :=
  ∀ n, (P17224655801162528754.a n : ℤ) = A176805 n

theorem P17224655801162528754.correct : P17224655801162528754.Spec := by
  intro n
  simp only [A176805]

end A176805

/-! ## A176805.P12945835202486956212

`∑[∑[ogf((-2+3x+5x^2)/(-1+3x))]]`
-/

namespace A176805.P12945835202486956212
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -5] [1, -3] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176805.P12945835202486956212

namespace A176805

/-- `∑[∑[ogf((-2+3x+5x^2)/(-1+3x))]]` -/
def P12945835202486956212.Spec : Prop :=
  ∀ n, P12945835202486956212.a n = A176805 n

end A176805

/-! ## A176805.P16890414408837726156

`ogf((-2+3x+5x^2)/(-1+5x-7x^2+3x^3))`
-/

namespace A176805.P16890414408837726156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, -5] [1, -5, 7, -3] n

end

end A176805.P16890414408837726156

namespace A176805

/-- `ogf((-2+3x+5x^2)/(-1+5x-7x^2+3x^3))` -/
def P16890414408837726156.Spec : Prop :=
  ∀ n, P16890414408837726156.a n = A176805 n

end A176805

/-! ## A176805.P1536252126278697435

`∑[3*(a(n-1)-2)]` with `a(0)=2, a(1)=5`
-/

namespace A176805.P1536252126278697435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2, 5] fun n f1 =>
  3 * (f1 (n - 1) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176805.P1536252126278697435

namespace A176805

/-- `∑[3*(a(n-1)-2)]` -/
def P1536252126278697435.Spec : Prop :=
  ∀ n, P1536252126278697435.a n = A176805 n

end A176805

/-! ## A176805.P13077244237467776237

`∑[xor(1, A025192(n)+2)]`
-/

namespace A176805.P13077244237467776237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A025192 n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176805.P13077244237467776237

namespace A176805

/-- `∑[xor(1, A025192(n)+2)]` -/
def P13077244237467776237.Spec : Prop :=
  ∀ n, P13077244237467776237.a n = A176805 n

end A176805

/-! ## A176805.P3527239465192193110

`abs(A016789(n)+3^n-1)`
-/

namespace A176805.P3527239465192193110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A016789 n + ((3 ^ n : ℤ) - 1)|

end

end A176805.P3527239465192193110

namespace A176805

/-- `abs(A016789(n)+3^n-1)` -/
def P3527239465192193110.Spec : Prop :=
  ∀ n, P3527239465192193110.a n = A176805 n

end A176805

/-! ## A176805.P14969132193469664987

`lcm(A221905(n)+1, (-1)^n)`
-/

namespace A176805.P14969132193469664987
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A221905 n + 1) ((-1) ^ n)

end

end A176805.P14969132193469664987

namespace A176805

/-- `lcm(A221905(n)+1, (-1)^n)` -/
def P14969132193469664987.Spec : Prop :=
  ∀ n, (P14969132193469664987.a n : ℤ) = A176805 n

end A176805

/-! ## A176805.P3938938395694769572

`abs(A000244(n)+Δ[n²]+n)`
-/

namespace A176805.P3938938395694769572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n + ((f1 (n + 1) : ℤ) - (f1 n : ℤ) + (n : ℤ))|

end

end A176805.P3938938395694769572

namespace A176805

/-- `abs(A000244(n)+Δ[n²]+n)` -/
def P3938938395694769572.Spec : Prop :=
  ∀ n, P3938938395694769572.a n = A176805 n

end A176805

/-! ## A176805.P2521545532812737791

`Δ[A003462(n)+A000326(n)]`
-/

namespace A176805.P2521545532812737791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003462 n + A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176805.P2521545532812737791

namespace A176805

/-- `Δ[A003462(n)+A000326(n)]` -/
def P2521545532812737791.Spec : Prop :=
  ∀ n, P2521545532812737791.a n = A176805 n

end A176805

/-! ## A176805.P15680689763329035516

`Δ[A007051(n)+A000326(n)]`
-/

namespace A176805.P15680689763329035516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007051 n + A000326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176805.P15680689763329035516

namespace A176805

/-- `Δ[A007051(n)+A000326(n)]` -/
def P15680689763329035516.Spec : Prop :=
  ∀ n, P15680689763329035516.a n = A176805 n

end A176805

/-! ## A176805.P5310608655107186588

`abs(abs(A024023(n)+A016873(n)-n)-n)`
-/

namespace A176805.P5310608655107186588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(|A024023 n + A016873 n - (n : ℤ)| - (n : ℤ))|

end

end A176805.P5310608655107186588

namespace A176805

/-- `abs(abs(A024023(n)+A016873(n)-n)-n)` -/
def P5310608655107186588.Spec : Prop :=
  ∀ n, P5310608655107186588.a n = A176805 n

end A176805

/-! ## A176805.P12217202701901592657

`∑[A025192(n)+A014963(A048883(n))]`
-/

namespace A176805.P12217202701901592657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025192 n + A014963 (A048883 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176805.P12217202701901592657

namespace A176805

/-- `∑[A025192(n)+A014963(A048883(n))]` -/
def P12217202701901592657.Spec : Prop :=
  ∀ n, P12217202701901592657.a n = A176805 n

end A176805

/-! ## A176805.P6713032516737148726

`(A025192(n+1)+A016789(2*n))/2`
-/

namespace A176805.P6713032516737148726
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025192 (n + 1) + A016789 (2 * n) : ℚ) / 2

end

end A176805.P6713032516737148726

namespace A176805

/-- `(A025192(n+1)+A016789(2*n))/2` -/
def P6713032516737148726.Spec : Prop :=
  ∀ n, P6713032516737148726.a n = (A176805 n : ℚ)

end A176805

/-! ## A176805.P16046125150960237661

`Δ[(A000244(n)+A056105(n)+n)*1/2]`
-/

namespace A176805.P16046125150960237661
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000244 n + (A056105 n + (n : ℤ)) : ℚ) * ((1 : ℚ) / 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176805.P16046125150960237661

namespace A176805

/-- `Δ[(A000244(n)+A056105(n)+n)*1/2]` -/
def P16046125150960237661.Spec : Prop :=
  ∀ n, P16046125150960237661.a n = (A176805 n : ℚ)

end A176805

/-! ## A176805.P6324299637796971852

`floor(Δ[n²]+sqrt(A001019(n))+n)`
-/

namespace A176805.P6324299637796971852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((f1 (n + 1) : ℤ) - (f1 n : ℤ) : ℝ) + Real.sqrt (A001019 n : ℝ) + (n : ℝ)⌋

end

end A176805.P6324299637796971852

namespace A176805

/-- `floor(Δ[n²]+sqrt(A001019(n))+n)` -/
def P6324299637796971852.Spec : Prop :=
  ∀ n, P6324299637796971852.a n = A176805 n

end A176805

/-!
# A176806: Consider asymmetric 1-D random walk with set of possible jumps {-1,+1,+2}. Sequence gives number of paths of length n ending at origin.

The programs for A176806, there is no canonical definition to state claims against.
-/

/-! ## A176806.P4624789899097359051

`A038717(∑[3*n])`
-/

namespace A176806.P4624789899097359051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038717 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176806.P4624789899097359051

/-! ## A176806.P3170919731787053126

`A136548(n+1)*A147968(A005043(n))`
-/

namespace A176806.P3170919731787053126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (n + 1) * A147968 (A005043 n).toNat

end

end A176806.P3170919731787053126

/-! ## A176806.P4590617251296739320

`lcm(A169941(A211139(n+1)), A194979(n+1))`
-/

namespace A176806.P4590617251296739320
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A169941 (A211139 (n + 1)).toNat) (A194979 (n + 1))

end

end A176806.P4590617251296739320

/-!
# A176807: Lesser of twin primes p such that p = semiprime(k)/3 and p + 2 = semiprime(k+3)/3 for some integer k.

The programs for A176807, there is no canonical definition to state claims against.
-/

/-! ## A176807.P4500815495709520823

`record[A020639(xor(7, A325302(n+1)))]`
-/

namespace A176807.P4500815495709520823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (Int.xor 7 (A325302 (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176807.P4500815495709520823

/-!
# A176808: Triangle read by rows: T(n,m)=Floor[(n - 1)/m], 1<=m<=n.

The programs for A176808, there is no canonical definition to state claims against.
-/

/-! ## A176808.P120468472614596019

`floor(∑[char[∑[n+1]]]/(1-C(∑[char[∑[n]]], 2)+n))`
-/

namespace A176808.P120468472614596019
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ) : ℚ)⌋

end

end A176808.P120468472614596019

/-! ## A176808.P1856705091530904235

`ceil(∑[char[∑[n]]]/(1-C(∑[char[∑[n]]], 2)+n))-1`
-/

namespace A176808.P1856705091530904235
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (1 - (Nat.choose (∑ j ∈ Finset.range (n + 1), f4 j) 2 : ℤ) + (n : ℤ) : ℚ)⌉ - 1

end

end A176808.P1856705091530904235

/-! ## A176808.P12048361454599160463

`A120885(n+1)-1`
-/

namespace A176808.P12048361454599160463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120885 (n + 1) - 1

end

end A176808.P12048361454599160463

/-! ## A176808.P15416837318427058377

`floor(sqrt(A085383(n+1)-1))`
-/

namespace A176808.P15416837318427058377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A085383 (n + 1) - 1)

end

end A176808.P15416837318427058377

/-! ## A176808.P1710358450386326824

`floor(sqrt(A331145(n+1)-1))`
-/

namespace A176808.P1710358450386326824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A331145 (n + 1) - 1)

end

end A176808.P1710358450386326824

/-! ## A176808.P12116156578628312771

`floor(sqrt(A331149(n+1)-1))`
-/

namespace A176808.P12116156578628312771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A331149 (n + 1) - 1)

end

end A176808.P12116156578628312771

/-! ## A176808.P6649708402850082398

`floor(sqrt(A331151(n+1)-1))`
-/

namespace A176808.P6649708402850082398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A331151 (n + 1) - 1)

end

end A176808.P6649708402850082398

/-! ## A176808.P2800172375989391618

`A000401(A120885(n+1))`
-/

namespace A176808.P2800172375989391618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (A120885 (n + 1)).toNat

end

end A176808.P2800172375989391618

/-! ## A176808.P17682838894671450207

`A091453(A133280(n+1))`
-/

namespace A176808.P17682838894671450207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091453 (A133280 (n + 1)).toNat

end

end A176808.P17682838894671450207

/-! ## A176808.P14404894754704138728

`A259361(A085383(n+1))`
-/

namespace A176808.P14404894754704138728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259361 (A085383 (n + 1)).toNat

end

end A176808.P14404894754704138728

/-!
# A176809: Triangle read by rows: T(n,m) = 1 - (ceiling((n-1)/m) + ceiling((n-1)/(n-m+1))) + ceiling((n-1)/1) + ceiling((n-1)/(n-1+1)).

The programs for A176809, there is no canonical definition to state claims against.
-/

/-! ## A176809.P11087448059113400867

`A097944(A298328(n+1))`
-/

namespace A176809.P11087448059113400867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A298328 (n + 1)).toNat

end

end A176809.P11087448059113400867

/-! ## A176809.P3101378755987980329

`A097944(A299221(n+1))`
-/

namespace A176809.P3101378755987980329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A299221 (n + 1)).toNat

end

end A176809.P3101378755987980329

/-! ## A176809.P16578947147719768

`A097944(A300035(n+1))`
-/

namespace A176809.P16578947147719768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A300035 (n + 1)).toNat

end

end A176809.P16578947147719768

/-! ## A176809.P4421273442302799257

`A097944(A316376(n+1)+2)`
-/

namespace A176809.P4421273442302799257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A316376 (n + 1) + 2).toNat

end

end A176809.P4421273442302799257

/-! ## A176809.P17487643251081461231

`A097944(A317271(n+1)+2)`
-/

namespace A176809.P17487643251081461231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097944 (A317271 (n + 1) + 2).toNat

end

end A176809.P17487643251081461231

/-!
# A176810: Semiprimes of the form 2 * (greater of twin primes).

The programs for A176810, the canonical program `A176810.P15699924405240602414` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176810 has offset 1).

The definition of A176810 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A006512, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176810.P15699924405240602414

`2*A006512(n+1)`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A176810

/-- `2*A006512(n+1)` -/
def P15699924405240602414.Spec : Prop :=
  ∀ n, P15699924405240602414.a n = A176810 (n + 1)

theorem P15699924405240602414.correct : P15699924405240602414.Spec := by
  intro n
  simp only [A176810, Nat.add_sub_cancel]

end A176810

/-! ## A176810.P6236143726522880871

`A054735(n+1)+2`
-/

namespace A176810.P6236143726522880871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054735 (n + 1) + 2

end

end A176810.P6236143726522880871

namespace A176810

/-- `A054735(n+1)+2` -/
def P6236143726522880871.Spec : Prop :=
  ∀ n, P6236143726522880871.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P8104297413826115547

`A082496(n+1)+3`
-/

namespace A176810.P8104297413826115547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082496 (n + 1) + 3

end

end A176810.P8104297413826115547

namespace A176810

/-- `A082496(n+1)+3` -/
def P8104297413826115547.Spec : Prop :=
  ∀ n, P8104297413826115547.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P16084606350035133781

`A108605(n+1)+4`
-/

namespace A176810.P16084606350035133781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108605 (n + 1) + 4

end

end A176810.P16084606350035133781

namespace A176810

/-- `A108605(n+1)+4` -/
def P16084606350035133781.Spec : Prop :=
  ∀ n, P16084606350035133781.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P8068528728254443234

`2*sqrt(A108604(n+1))`
-/

namespace A176810.P8068528728254443234
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A108604 (n + 1) : ℝ)

end

end A176810.P8068528728254443234

namespace A176810

/-- `2*sqrt(A108604(n+1))` -/
def P8068528728254443234.Spec : Prop :=
  ∀ n, P8068528728254443234.a n = (A176810 (n + 1) : ℝ)

end A176810

/-! ## A176810.P14623486272885280011

`2*(A014574(n+1)+1)`
-/

namespace A176810.P14623486272885280011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A014574 (n + 1) + 1)

end

end A176810.P14623486272885280011

namespace A176810

/-- `2*(A014574(n+1)+1)` -/
def P14623486272885280011.Spec : Prop :=
  ∀ n, P14623486272885280011.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P13786612507458610712

`2*(A001359(n+1)+2)`
-/

namespace A176810.P13786612507458610712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A001359 (n + 1) + 2)

end

end A176810.P13786612507458610712

namespace A176810

/-- `2*(A001359(n+1)+2)` -/
def P13786612507458610712.Spec : Prop :=
  ∀ n, P13786612507458610712.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P14000279044103005575

`A111046(n+1)/2+2`
-/

namespace A176810.P14000279044103005575
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A111046 (n + 1) : ℚ) / 2 + 2

end

end A176810.P14000279044103005575

namespace A176810

/-- `A111046(n+1)/2+2` -/
def P14000279044103005575.Spec : Prop :=
  ∀ n, P14000279044103005575.a n = (A176810 (n + 1) : ℚ)

end A176810

/-! ## A176810.P1019737250114630539

`2*(A144834(n+1)+3)`
-/

namespace A176810.P1019737250114630539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A144834 (n + 1) + 3)

end

end A176810.P1019737250114630539

namespace A176810

/-- `2*(A144834(n+1)+3)` -/
def P1019737250114630539.Spec : Prop :=
  ∀ n, P1019737250114630539.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P496795586166219061

`4*A040040(n+1)+2`
-/

namespace A176810.P496795586166219061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A040040 (n + 1) + 2

end

end A176810.P496795586166219061

namespace A176810

/-- `4*A040040(n+1)+2` -/
def P496795586166219061.Spec : Prop :=
  ∀ n, P496795586166219061.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P8556296187676621881

`A172057(n+1)+A135284(n+1)`
-/

namespace A176810.P8556296187676621881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172057 (n + 1) + A135284 (n + 1)

end

end A176810.P8556296187676621881

namespace A176810

/-- `A172057(n+1)+A135284(n+1)` -/
def P8556296187676621881.Spec : Prop :=
  ∀ n, P8556296187676621881.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P8081049298848515654

`A108604(n+1)-A037074(n+1)`
-/

namespace A176810.P8081049298848515654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108604 (n + 1) - A037074 (n + 1)

end

end A176810.P8081049298848515654

namespace A176810

/-- `A108604(n+1)-A037074(n+1)` -/
def P8081049298848515654.Spec : Prop :=
  ∀ n, P8081049298848515654.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P15747200585860694051

`A362941(n+1)-A120875(n+1)`
-/

namespace A176810.P15747200585860694051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362941 (n + 1) - A120875 (n + 1)

end

end A176810.P15747200585860694051

namespace A176810

/-- `A362941(n+1)-A120875(n+1)` -/
def P15747200585860694051.Spec : Prop :=
  ∀ n, P15747200585860694051.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P16114941750825351986

`A071142(n+1)/A001359(n+1)`
-/

namespace A176810.P16114941750825351986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A071142 (n + 1) : ℚ) / (A001359 (n + 1) : ℚ)

end

end A176810.P16114941750825351986

namespace A176810

/-- `A071142(n+1)/A001359(n+1)` -/
def P16114941750825351986.Spec : Prop :=
  ∀ n, P16114941750825351986.a n = (A176810 (n + 1) : ℚ)

end A176810

/-! ## A176810.P10705115176914781975

`A126251(n+1)/A040040(n+1)`
-/

namespace A176810.P10705115176914781975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A126251 (n + 1) : ℚ) / (A040040 (n + 1) : ℚ)

end

end A176810.P10705115176914781975

namespace A176810

/-- `A126251(n+1)/A040040(n+1)` -/
def P10705115176914781975.Spec : Prop :=
  ∀ n, P10705115176914781975.a n = (A176810 (n + 1) : ℚ)

end A176810

/-! ## A176810.P16997581533152567850

`A126248(n+1)%A108604(n+1)`
-/

namespace A176810.P16997581533152567850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A126248 (n + 1)) (A108604 (n + 1))

end

end A176810.P16997581533152567850

namespace A176810

/-- `A126248(n+1)%A108604(n+1)` -/
def P16997581533152567850.Spec : Prop :=
  ∀ n, P16997581533152567850.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P11178738586095373898

`gcd(A071142(n+1), A126251(n+1))`
-/

namespace A176810.P11178738586095373898
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A071142 (n + 1)) (A126251 (n + 1))

end

end A176810.P11178738586095373898

namespace A176810

/-- `gcd(A071142(n+1), A126251(n+1))` -/
def P11178738586095373898.Spec : Prop :=
  ∀ n, (P11178738586095373898.a n : ℤ) = A176810 (n + 1)

end A176810

/-! ## A176810.P7152622154344941763

`A111046(n+1)-(A001359(n+1)+A001359(n+1))`
-/

namespace A176810.P7152622154344941763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111046 (n + 1) - (A001359 (n + 1) + A001359 (n + 1))

end

end A176810.P7152622154344941763

namespace A176810

/-- `A111046(n+1)-(A001359(n+1)+A001359(n+1))` -/
def P7152622154344941763.Spec : Prop :=
  ∀ n, P7152622154344941763.a n = A176810 (n + 1)

end A176810

/-! ## A176810.P13408146637817813315

`(A037074(n+1)+A037074(n+1))/A001359(n+1)`
-/

namespace A176810.P13408146637817813315
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A037074 (n + 1) + A037074 (n + 1) : ℚ) / (A001359 (n + 1) : ℚ)

end

end A176810.P13408146637817813315

namespace A176810

/-- `(A037074(n+1)+A037074(n+1))/A001359(n+1)` -/
def P13408146637817813315.Spec : Prop :=
  ∀ n, P13408146637817813315.a n = (A176810 (n + 1) : ℚ)

end A176810

/-! ## A176810.P7292694504508032483

`2*A067829(n+2)`
-/

namespace A176810.P7292694504508032483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A067829 (n + 2)

end

end A176810.P7292694504508032483

namespace A176810

/-- `2*A067829(n+2)` -/
def P7292694504508032483.Spec : Prop :=
  ∀ n, P7292694504508032483.a n = A176810 (n + 1)

end A176810

/-!
# A176811: Number of primes between 2*(lesser of n-th twin prime pair) and 2*(greater of n-th twin prime pair).

The programs for A176811, the canonical program `A176811.P7244811370246192382` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176811 has offset 1).

The definition of A176811 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 105 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176811.P8416361020940147411

`A102820(A029707(n+1))`
-/

namespace A176811.P8416361020940147411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (A029707 (n + 1)).toNat

end

end A176811.P8416361020940147411

namespace A176811

/-- `A102820(A029707(n+1))` -/
def P8416361020940147411.Spec : Prop :=
  ∀ n, P8416361020940147411.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P3163996051218435559

`A090406(A108605(n+1))`
-/

namespace A176811.P3163996051218435559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (A108605 (n + 1)).toNat

end

end A176811.P3163996051218435559

namespace A176811

/-- `A090406(A108605(n+1))` -/
def P3163996051218435559.Spec : Prop :=
  ∀ n, P3163996051218435559.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P4976549878457707653

`A168141(A054735(n+1))`
-/

namespace A176811.P4976549878457707653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (A054735 (n + 1)).toNat

end

end A176811.P4976549878457707653

namespace A176811

/-- `A168141(A054735(n+1))` -/
def P4976549878457707653.Spec : Prop :=
  ∀ n, P4976549878457707653.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P10142123370460067328

`A090406(A082496(n+1)-1)`
-/

namespace A176811.P10142123370460067328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (A082496 (n + 1) - 1).toNat

end

end A176811.P10142123370460067328

namespace A176811

/-- `A090406(A082496(n+1)-1)` -/
def P10142123370460067328.Spec : Prop :=
  ∀ n, P10142123370460067328.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P8994956684906081097

`A102820(A107770(n+1)-1)`
-/

namespace A176811.P8994956684906081097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (A107770 (n + 1) - 1).toNat

end

end A176811.P8994956684906081097

namespace A176811

/-- `A102820(A107770(n+1)-1)` -/
def P8994956684906081097.Spec : Prop :=
  ∀ n, P8994956684906081097.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P17151456333112725172

`A117499(A014574(n+1))-2`
-/

namespace A176811.P17151456333112725172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117499 (A014574 (n + 1)).toNat - 2

end

end A176811.P17151456333112725172

namespace A176811

/-- `A117499(A014574(n+1))-2` -/
def P17151456333112725172.Spec : Prop :=
  ∀ n, P17151456333112725172.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P7304830315158135981

`A090406(A054735(n+1)-2)`
-/

namespace A176811.P7304830315158135981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (A054735 (n + 1) - 2).toNat

end

end A176811.P7304830315158135981

namespace A176811

/-- `A090406(A054735(n+1)-2)` -/
def P7304830315158135981.Spec : Prop :=
  ∀ n, P7304830315158135981.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P3058393544823396330

`A090406(2*A001359(n+1))`
-/

namespace A176811.P3058393544823396330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (2 * A001359 (n + 1)).toNat

end

end A176811.P3058393544823396330

namespace A176811

/-- `A090406(2*A001359(n+1))` -/
def P3058393544823396330.Spec : Prop :=
  ∀ n, P3058393544823396330.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P360853342361196711

`A168141(2*A014574(n+1))`
-/

namespace A176811.P360853342361196711
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (2 * A014574 (n + 1)).toNat

end

end A176811.P360853342361196711

namespace A176811

/-- `A168141(2*A014574(n+1))` -/
def P360853342361196711.Spec : Prop :=
  ∀ n, P360853342361196711.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P17950157709825298073

`A168141(A111046(n+1)/2)`
-/

namespace A176811.P17950157709825298073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (SequenceMachineLib.roundAway ((A111046 (n + 1) : ℚ) / 2)).toNat

end

end A176811.P17950157709825298073

namespace A176811

/-- `A168141(A111046(n+1)/2)` -/
def P17950157709825298073.Spec : Prop :=
  ∀ n, P17950157709825298073.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P13088297469730199724

`A090406(lcm(2, A001359(n+1)))`
-/

namespace A176811.P13088297469730199724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (Int.lcm 2 (A001359 (n + 1)))

end

end A176811.P13088297469730199724

namespace A176811

/-- `A090406(lcm(2, A001359(n+1)))` -/
def P13088297469730199724.Spec : Prop :=
  ∀ n, P13088297469730199724.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P7244811370246192382

`A090406(2*p?[A040976(n+1)])`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176811

/-- `A090406(2*p?[A040976(n+1)])` -/
def P7244811370246192382.Spec : Prop :=
  ∀ n, P7244811370246192382.a n = A176811 (n + 1)

theorem P7244811370246192382.correct : P7244811370246192382.Spec := by
  intro n
  simp only [A176811, Nat.add_sub_cancel]

end A176811

/-! ## A176811.P6423846083004417042

`A117499(A001359(n+1)+1)-2`
-/

namespace A176811.P6423846083004417042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117499 (A001359 (n + 1) + 1).toNat - 2

end

end A176811.P6423846083004417042

namespace A176811

/-- `A117499(A001359(n+1)+1)-2` -/
def P6423846083004417042.Spec : Prop :=
  ∀ n, P6423846083004417042.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P2395459777774949603

`A117499(A006512(n+1)-1)-2`
-/

namespace A176811.P2395459777774949603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117499 (A006512 (n + 1) - 1).toNat - 2

end

end A176811.P2395459777774949603

namespace A176811

/-- `A117499(A006512(n+1)-1)-2` -/
def P2395459777774949603.Spec : Prop :=
  ∀ n, P2395459777774949603.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P13502989236256762865

`A090406(2*p?[A000040(n+1)-2])`
-/

namespace A176811.P13502989236256762865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (2 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A176811.P13502989236256762865

namespace A176811

/-- `A090406(2*p?[A000040(n+1)-2])` -/
def P13502989236256762865.Spec : Prop :=
  ∀ n, P13502989236256762865.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P6445117947020618779

`A090406(A005843(A001359(n+1)))`
-/

namespace A176811.P6445117947020618779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (A005843 (A001359 (n + 1)).toNat).toNat

end

end A176811.P6445117947020618779

namespace A176811

/-- `A090406(A005843(A001359(n+1)))` -/
def P6445117947020618779.Spec : Prop :=
  ∀ n, P6445117947020618779.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P7544627994862701700

`A102820(A000720(A014574(n+1)))`
-/

namespace A176811.P7544627994862701700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102820 (A000720 (A014574 (n + 1)).toNat).toNat

end

end A176811.P7544627994862701700

namespace A176811

/-- `A102820(A000720(A014574(n+1)))` -/
def P7544627994862701700.Spec : Prop :=
  ∀ n, P7544627994862701700.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P1161832113290628796

`A090406(A001359(n+1)+A001359(n+1))`
-/

namespace A176811.P1161832113290628796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (A001359 (n + 1) + A001359 (n + 1)).toNat

end

end A176811.P1161832113290628796

namespace A176811

/-- `A090406(A001359(n+1)+A001359(n+1))` -/
def P1161832113290628796.Spec : Prop :=
  ∀ n, P1161832113290628796.a n = A176811 (n + 1)

end A176811

/-! ## A176811.P6830933565907454819

`A168141(A014574(n+1)+A014574(n+1))`
-/

namespace A176811.P6830933565907454819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168141 (A014574 (n + 1) + A014574 (n + 1)).toNat

end

end A176811.P6830933565907454819

namespace A176811

/-- `A168141(A014574(n+1)+A014574(n+1))` -/
def P6830933565907454819.Spec : Prop :=
  ∀ n, P6830933565907454819.a n = A176811 (n + 1)

end A176811

/-!
# A176812: Expansion of 3*(1+x)/(1-2*x-5*x^2).

The programs for A176812, the canonical program `A176812.P11627980013813427711` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176812 has offset 0).

The definition of A176812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((3+3x)/(1-2x-5x^2))` (program `A176812.P11627980013813427711`, by `A176812.P11627980013813427711.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176812.P11627980013813427711

`ogf((3+3x)/(1-2x-5x^2))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176812

/-- `ogf((3+3x)/(1-2x-5x^2))` -/
def P11627980013813427711.Spec : Prop :=
  ∀ n, P11627980013813427711.a n = A176812 n

theorem P11627980013813427711.correct : P11627980013813427711.Spec := by
  intro n
  simp only [A176812]

end A176812

/-! ## A176812.P7017134756432333821

`3*A180168(n)`
-/

namespace A176812.P7017134756432333821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A180168 n

end

end A176812.P7017134756432333821

namespace A176812

/-- `3*A180168(n)` -/
def P7017134756432333821.Spec : Prop :=
  ∀ n, P7017134756432333821.a n = A176812 n

end A176812

/-! ## A176812.P8774926557668452272

`2*a(n-1)+5*a(n-2)` with `a(0)=3, a(1)=9`
-/

namespace A176812.P8774926557668452272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n a =>
  2 * a (n - 1) + 5 * a (n - 2)

end

end A176812.P8774926557668452272

namespace A176812

/-- `2*a(n-1)+5*a(n-2)` -/
def P8774926557668452272.Spec : Prop :=
  ∀ n, (P8774926557668452272.a n : ℤ) = A176812 n

end A176812

/-! ## A176812.P18057621277412809081

`lcm(2, a(n-1))+lcm(5, a(n-2))` with `a(0)=3, a(1)=9`
-/

namespace A176812.P18057621277412809081
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 9] fun n a =>
  Nat.lcm 2 (a (n - 1)) + Nat.lcm 5 (a (n - 2))

end

end A176812.P18057621277412809081

namespace A176812

/-- `lcm(2, a(n-1))+lcm(5, a(n-2))` -/
def P18057621277412809081.Spec : Prop :=
  ∀ n, (P18057621277412809081.a n : ℤ) = A176812 n

end A176812

/-! ## A176812.P13459336733868801688

`3*a(n-1)-(a(n-1)-5*a(n-2))` with `a(0)=3, a(1)=9`
-/

namespace A176812.P13459336733868801688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3, 9] fun n a =>
  3 * a (n - 1) - (a (n - 1) - 5 * a (n - 2))

end

end A176812.P13459336733868801688

namespace A176812

/-- `3*a(n-1)-(a(n-1)-5*a(n-2))` -/
def P13459336733868801688.Spec : Prop :=
  ∀ n, P13459336733868801688.a n = A176812 n

end A176812

/-! ## A176812.P423693974921236235

`A002533(n)+Δ[A180168(n)]`
-/

namespace A176812.P423693974921236235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 n + (f1 (n + 1) - f1 n)

end

end A176812.P423693974921236235

namespace A176812

/-- `A002533(n)+Δ[A180168(n)]` -/
def P423693974921236235.Spec : Prop :=
  ∀ n, P423693974921236235.a n = A176812 n

end A176812

/-! ## A176812.P13857492502526975156

`A083695(n+1)+A083695(n)`
-/

namespace A176812.P13857492502526975156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 (n + 1) + A083695 n

end

end A176812.P13857492502526975156

namespace A176812

/-- `A083695(n+1)+A083695(n)` -/
def P13857492502526975156.Spec : Prop :=
  ∀ n, P13857492502526975156.a n = A176812 n

end A176812

/-! ## A176812.P17299245571752608793

`A123011(n)+A083694(n+1)`
-/

namespace A176812.P17299245571752608793
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123011 n + A083694 (n + 1)

end

end A176812.P17299245571752608793

namespace A176812

/-- `A123011(n)+A083694(n+1)` -/
def P17299245571752608793.Spec : Prop :=
  ∀ n, P17299245571752608793.a n = A176812 n

end A176812

/-! ## A176812.P3787305769412498327

`A180168(n+1)-A083694(n)`
-/

namespace A176812.P3787305769412498327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 (n + 1) - A083694 n

end

end A176812.P3787305769412498327

namespace A176812

/-- `A180168(n+1)-A083694(n)` -/
def P3787305769412498327.Spec : Prop :=
  ∀ n, P3787305769412498327.a n = A176812 n

end A176812

/-! ## A176812.P13184709621082966487

`A002533(n+1)+2*A002533(n)`
-/

namespace A176812.P13184709621082966487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002533 (n + 1) + 2 * A002533 n

end

end A176812.P13184709621082966487

namespace A176812

/-- `A002533(n+1)+2*A002533(n)` -/
def P13184709621082966487.Spec : Prop :=
  ∀ n, P13184709621082966487.a n = A176812 n

end A176812

/-! ## A176812.P12889217503147138476

`A180168(n+1)-(A002532(n)+A002532(n))`
-/

namespace A176812.P12889217503147138476
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180168 (n + 1) - (A002532 n + A002532 n)

end

end A176812.P12889217503147138476

namespace A176812

/-- `A180168(n+1)-(A002532(n)+A002532(n))` -/
def P12889217503147138476.Spec : Prop :=
  ∀ n, P12889217503147138476.a n = A176812 n

end A176812

/-! ## A176812.P9962746357122960111

`A002532(n+1)+A123011(n)+A002532(n+1)`
-/

namespace A176812.P9962746357122960111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002532 (n + 1) + (A123011 n + A002532 (n + 1))

end

end A176812.P9962746357122960111

namespace A176812

/-- `A002532(n+1)+A123011(n)+A002532(n+1)` -/
def P9962746357122960111.Spec : Prop :=
  ∀ n, P9962746357122960111.a n = A176812 n

end A176812

/-! ## A176812.P16297027467587676643

`Δ[A083695(n)+A002533(n)]`
-/

namespace A176812.P16297027467587676643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083695 n + A002533 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176812.P16297027467587676643

namespace A176812

/-- `Δ[A083695(n)+A002533(n)]` -/
def P16297027467587676643.Spec : Prop :=
  ∀ n, P16297027467587676643.a n = A176812 n

end A176812

/-! ## A176812.P2174816648305276118

`Δ[A123011(n)-A002532(n)]`
-/

namespace A176812.P2174816648305276118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123011 n - A002532 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176812.P2174816648305276118

namespace A176812

/-- `Δ[A123011(n)-A002532(n)]` -/
def P2174816648305276118.Spec : Prop :=
  ∀ n, P2174816648305276118.a n = A176812 n

end A176812

/-! ## A176812.P14909791957081551110

`Δ[A123011(n)]-A002533(n)`
-/

namespace A176812.P14909791957081551110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123011 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002533 n

end

end A176812.P14909791957081551110

namespace A176812

/-- `Δ[A123011(n)]-A002533(n)` -/
def P14909791957081551110.Spec : Prop :=
  ∀ n, P14909791957081551110.a n = A176812 n

end A176812

/-! ## A176812.P17995995914963858446

`Δ[A083694(n)+A002532(n+1)]`
-/

namespace A176812.P17995995914963858446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083694 n + A002532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176812.P17995995914963858446

namespace A176812

/-- `Δ[A083694(n)+A002532(n+1)]` -/
def P17995995914963858446.Spec : Prop :=
  ∀ n, P17995995914963858446.a n = A176812 n

end A176812

/-! ## A176812.P12357678035120864598

`A290999(n)+Δ[A290999(n)/2]`
-/

namespace A176812.P12357678035120864598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290999 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290999 n : ℚ) + (f1 (n + 1) - f1 n)

end

end A176812.P12357678035120864598

namespace A176812

/-- `A290999(n)+Δ[A290999(n)/2]` -/
def P12357678035120864598.Spec : Prop :=
  ∀ n, P12357678035120864598.a n = (A176812 n : ℚ)

end A176812

/-! ## A176812.P11305286385760342508

`Δ[A189734(n+2)/5]`
-/

namespace A176812.P11305286385760342508
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A189734 (n + 2) : ℚ) / 5

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176812.P11305286385760342508

namespace A176812

/-- `Δ[A189734(n+2)/5]` -/
def P11305286385760342508.Spec : Prop :=
  ∀ n, P11305286385760342508.a n = (A176812 n : ℚ)

end A176812

/-!
# A176813: Numbers n such that 3*A077800(2n-1)

The programs for A176813, there is no canonical definition to state claims against.
-/

/-! ## A176813.P11272663331404978469

`A071538(A132929(n+1))`
-/

namespace A176813.P11272663331404978469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A132929 (n + 1)).toNat

end

end A176813.P11272663331404978469

/-! ## A176813.P16319246978535224517

`A071538(A174920(n+1))`
-/

namespace A176813.P16319246978535224517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071538 (A174920 (n + 1)).toNat

end

end A176813.P16319246978535224517

/-! ## A176813.P11338872296498646904

`eq[A054977(n), A100923(A168497(n+1))]`
-/

namespace A176813.P11338872296498646904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100923 (A168497 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176813.P11338872296498646904

/-! ## A176813.P14336495836689812984

`eq[A057427(n), A100923(A168497(n+1))]`
-/

namespace A176813.P14336495836689812984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100923 (A168497 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176813.P14336495836689812984

/-!
# A176814: The number of iterations needed to reach 1 under the map n-> n-bigomega(n).

The programs for A176814, the canonical program `A176814.P1939322231796935976` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176814 has offset 1).

The definition of A176814 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176814.P1939322231796935976

`a(n-∑{e}[n+1, #])+1` with `a(0)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176814

/-- `a(n-∑{e}[n+1, #])+1` -/
def P1939322231796935976.Spec : Prop :=
  ∀ n, (P1939322231796935976.a n : ℤ) = A176814 (n + 1)

theorem P1939322231796935976.correct : P1939322231796935976.Spec := by
  intro n
  simp only [A176814, Nat.add_sub_cancel]

end A176814

/-! ## A176814.P1118902524151413934

`a(A075795(n+1))+1` with `a(0)=0`
-/

namespace A176814.P1118902524151413934
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A075795 (n + 1)).toNat + 1

end

end A176814.P1118902524151413934

namespace A176814

/-- `a(A075795(n+1))+1` -/
def P1118902524151413934.Spec : Prop :=
  ∀ n, (P1118902524151413934.a n : ℤ) = A176814 (n + 1)

end A176814

/-! ## A176814.P12444671523314053062

`a(n-Δ[A022559(n)])+1` with `a(0)=0`
-/

namespace A176814.P12444671523314053062
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - (f1 (n + 1) - f1 n)).toNat + 1

end

end A176814.P12444671523314053062

namespace A176814

/-- `a(n-Δ[A022559(n)])+1` -/
def P12444671523314053062.Spec : Prop :=
  ∀ n, (P12444671523314053062.a n : ℤ) = A176814 (n + 1)

end A176814

/-! ## A176814.P4354127863482195329

`a(A069345(n+1)-1)+1` with `a(0)=0`
-/

namespace A176814.P4354127863482195329
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (A069345 (n + 1) - 1).toNat + 1

end

end A176814.P4354127863482195329

namespace A176814

/-- `a(A069345(n+1)-1)+1` -/
def P4354127863482195329.Spec : Prop :=
  ∀ n, (P4354127863482195329.a n : ℤ) = A176814 (n + 1)

end A176814

/-! ## A176814.P10783730914207806180

`a(n-A001222(n+1))+1` with `a(0)=0`
-/

namespace A176814.P10783730914207806180
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A001222 (n + 1)).toNat + 1

end

end A176814.P10783730914207806180

namespace A176814

/-- `a(n-A001222(n+1))+1` -/
def P10783730914207806180.Spec : Prop :=
  ∀ n, (P10783730914207806180.a n : ℤ) = A176814 (n + 1)

end A176814

/-! ## A176814.P6098558425039780043

`a(n-A086436(n+1))+1` with `a(0)=0`
-/

namespace A176814.P6098558425039780043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A086436 (n + 1)).toNat + 1

end

end A176814.P6098558425039780043

namespace A176814

/-- `a(n-A086436(n+1))+1` -/
def P6098558425039780043.Spec : Prop :=
  ∀ n, (P6098558425039780043.a n : ℤ) = A176814 (n + 1)

end A176814

/-! ## A176814.P14570627939850211669

`a(n-log2(A061142(n+1)))+1` with `a(0)=0`
-/

namespace A176814.P14570627939850211669
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 (A061142 (n + 1) : ℝ))).toNat + 1

end

end A176814.P14570627939850211669

namespace A176814

/-- `a(n-log2(A061142(n+1)))+1` -/
def P14570627939850211669.Spec : Prop :=
  ∀ n, (P14570627939850211669.a n : ℤ) = A176814 (n + 1)

end A176814

/-! ## A176814.P11150059412978087930

`a(n-val(A165825(n+1), 4))+1` with `a(0)=0`
-/

namespace A176814.P11150059412978087930
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - SequenceMachineLib.valuation (A165825 (n + 1)).toNat 4) + 1

end

end A176814.P11150059412978087930

namespace A176814

/-- `a(n-val(A165825(n+1), 4))+1` -/
def P11150059412978087930.Spec : Prop :=
  ∀ n, (P11150059412978087930.a n : ℤ) = A176814 (n + 1)

end A176814

/-!
# A176816: The number of steps to reach 0 under the map x -> x-tau(sigma(x)), starting at n.

The programs for A176816, there is no canonical definition to state claims against.
-/

/-! ## A176816.P12355470031481666040

`A103921(abs(A238616(3*n+2)-9))`
-/

namespace A176816.P12355470031481666040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103921 |A238616 (3 * n + 2) - 9|.toNat

end

end A176816.P12355470031481666040

/-! ## A176816.P3016891274043154108

`A298952(n)+A001221(A123024(n))`
-/

namespace A176816.P3016891274043154108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298952 n + A001221 (A123024 n).toNat

end

end A176816.P3016891274043154108

/-! ## A176816.P12715163326328582620

`A001221(A349566(n+1)+A289079(n+1))`
-/

namespace A176816.P12715163326328582620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (A349566 (n + 1) + A289079 (n + 1)).toNat

end

end A176816.P12715163326328582620

/-! ## A176816.P8752417428012834121

`A001221(xor(A162174(n+1), A329160(n+1)))`
-/

namespace A176816.P8752417428012834121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.xor (A162174 (n + 1)) (A329160 (n + 1))).toNat

end

end A176816.P8752417428012834121

/-!
# A176817: Nonprimes k such that 2^(k-1) == 4^(k-1) (mod k).

The programs for A176817, there is no canonical definition to state claims against.
-/

/-! ## A176817.P16948381717193142625

`filter[A176176(n+1), A005171(#)]`
-/

namespace A176817.P16948381717193142625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A176817.P16948381717193142625

/-! ## A176817.P11220723043925353565

`∩[A018252(n+1), A176176(n+1)]`
-/

namespace A176817.P11220723043925353565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176817.P11220723043925353565

/-! ## A176817.P12066375940506135254

`∩[A141468(n+1), A176176(n+1)]`
-/

namespace A176817.P12066375940506135254
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176817.P12066375940506135254

/-! ## A176817.P7772121503561933409

`∩[A176176(n+1), A257586(n+1)]`
-/

namespace A176817.P7772121503561933409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176176 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257586 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176817.P7772121503561933409

/-! ## A176817.P11404804589574566690

`filter[A327478(2*n+1), A326956(#)]`
-/

namespace A176817.P11404804589574566690
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327478 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A326956 (f1 j).toNat = 1) n)

end

end A176817.P11404804589574566690

/-!
# A176818: a(n) = (3^(2*n+1) + 2^(n+2))/7.

The programs for A176818, the canonical program `A176818.P13236942943764050554` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176818 has offset 0).

The definition of A176818 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176818.P13236942943764050554

`(3^(2*n+1)+2^(n+2))/7`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176818

/-- `(3^(2*n+1)+2^(n+2))/7` -/
def P13236942943764050554.Spec : Prop :=
  ∀ n, P13236942943764050554.a n = (A176818 n : ℚ)

end A176818

/-! ## A176818.P3116548240249536651

`ogf((1-6x)/(1-11x+18x^2))`
-/

namespace A176818.P3116548240249536651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -11, 18] n

end

end A176818.P3116548240249536651

namespace A176818

/-- `ogf((1-6x)/(1-11x+18x^2))` -/
def P3116548240249536651.Spec : Prop :=
  ∀ n, P3116548240249536651.a n = A176818 n

end A176818

/-! ## A176818.P9069783478918034536

`9*a(n-1)-2^(n+1)` with `a(0)=1`
-/

namespace A176818.P9069783478918034536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  9 * a (n - 1) - (2 ^ (n + 1) : ℤ)

end

end A176818.P9069783478918034536

namespace A176818

/-- `9*a(n-1)-2^(n+1)` -/
def P9069783478918034536.Spec : Prop :=
  ∀ n, P9069783478918034536.a n = A176818 n

end A176818

/-! ## A176818.P5877663459155218941

`lcm(9, a(n-1))-2^(n+1)` with `a(0)=1`
-/

namespace A176818.P5877663459155218941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 9 (a (n - 1)) : ℤ) - (2 ^ (n + 1) : ℤ)

end

end A176818.P5877663459155218941

namespace A176818

/-- `lcm(9, a(n-1))-2^(n+1)` -/
def P5877663459155218941.Spec : Prop :=
  ∀ n, P5877663459155218941.a n = A176818 n

end A176818

/-! ## A176818.P12378538726014984678

`A138017(Δ[n²])`
-/

namespace A176818.P12378538726014984678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138017 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A176818.P12378538726014984678

namespace A176818

/-- `A138017(Δ[n²])` -/
def P12378538726014984678.Spec : Prop :=
  ∀ n, P12378538726014984678.a n = A176818 n

end A176818

/-! ## A176818.P13747544323572034929

`a(n-1)+A102518(n)+a(n-1)` with `a(0)=1`
-/

namespace A176818.P13747544323572034929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A102518 n + a (n - 1))

end

end A176818.P13747544323572034929

namespace A176818

/-- `a(n-1)+A102518(n)+a(n-1)` -/
def P13747544323572034929.Spec : Prop :=
  ∀ n, P13747544323572034929.a n = A176818 n

end A176818

/-! ## A176818.P2963086732549472240

`A099215(2*n)+A078010(n+1)`
-/

namespace A176818.P2963086732549472240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099215 (2 * n) + A078010 (n + 1)

end

end A176818.P2963086732549472240

namespace A176818

/-- `A099215(2*n)+A078010(n+1)` -/
def P2963086732549472240.Spec : Prop :=
  ∀ n, P2963086732549472240.a n = A176818 n

end A176818

/-! ## A176818.P1077584041284696994

`A000079(n)+9*a(n-1)-A007283(n)` with `a(0)=1`
-/

namespace A176818.P1077584041284696994
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000079 n + (9 * a (n - 1) - A007283 n)

end

end A176818.P1077584041284696994

namespace A176818

/-- `A000079(n)+9*a(n-1)-A007283(n)` -/
def P1077584041284696994.Spec : Prop :=
  ∀ n, P1077584041284696994.a n = A176818 n

end A176818

/-! ## A176818.P6945007289093202563

`A171559(n)+9*a(n-1)-A007283(n)` with `a(0)=1`
-/

namespace A176818.P6945007289093202563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A171559 n + (9 * a (n - 1) - A007283 n)

end

end A176818.P6945007289093202563

namespace A176818

/-- `A171559(n)+9*a(n-1)-A007283(n)` -/
def P6945007289093202563.Spec : Prop :=
  ∀ n, P6945007289093202563.a n = A176818 n

end A176818

/-! ## A176818.P16154347889508754224

`Δ[∑[A109498(n)]/3]`
-/

namespace A176818.P16154347889508754224
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109498 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176818.P16154347889508754224

namespace A176818

/-- `Δ[∑[A109498(n)]/3]` -/
def P16154347889508754224.Spec : Prop :=
  ∀ n, P16154347889508754224.a n = (A176818 n : ℚ)

end A176818

/-! ## A176818.P9780036880836093318

`gcd(A138017(2*n+1), A138017(2*(n+1)))`
-/

namespace A176818.P9780036880836093318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A138017 (2 * n + 1)) (A138017 (2 * (n + 1)))

end

end A176818.P9780036880836093318

namespace A176818

/-- `gcd(A138017(2*n+1), A138017(2*(n+1)))` -/
def P9780036880836093318.Spec : Prop :=
  ∀ n, (P9780036880836093318.a n : ℤ) = A176818 n

end A176818

/-!
# A176819: Distances between terms in A085986.

The programs for A176819, the canonical program `A176819.P9087001782378007283` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176819 has offset 1).

The definition of A176819 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176819.P9087001782378007283

`Δ[A085986(n+1)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A176819

/-- `Δ[A085986(n+1)]` -/
def P9087001782378007283.Spec : Prop :=
  ∀ n, P9087001782378007283.a n = A176819 (n + 1)

theorem P9087001782378007283.correct : P9087001782378007283.Spec := by
  intro n
  simp only [A176819, Nat.add_sub_cancel]

end A176819

/-! ## A176819.P15926387313896913466

`Δ[A006881(n+1)²]`
-/

namespace A176819.P15926387313896913466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006881 (n + 1) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176819.P15926387313896913466

namespace A176819

/-- `Δ[A006881(n+1)²]` -/
def P15926387313896913466.Spec : Prop :=
  ∀ n, P15926387313896913466.a n = A176819 (n + 1)

end A176819

/-! ## A176819.P2023885802895551963

`Δ[sqrt(A189991(n+1))]`
-/

namespace A176819.P2023885802895551963
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A189991 (n + 1) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176819.P2023885802895551963

namespace A176819

/-- `Δ[sqrt(A189991(n+1))]` -/
def P2023885802895551963.Spec : Prop :=
  ∀ n, P2023885802895551963.a n = (A176819 (n + 1) : ℝ)

end A176819

/-! ## A176819.P18124185185906615106

`A085986(n+2)-A085986(n+1)`
-/

namespace A176819.P18124185185906615106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 2) - A085986 (n + 1)

end

end A176819.P18124185185906615106

namespace A176819

/-- `A085986(n+2)-A085986(n+1)` -/
def P18124185185906615106.Spec : Prop :=
  ∀ n, P18124185185906615106.a n = A176819 (n + 1)

theorem P18124185185906615106.correct : P18124185185906615106.Spec := by
  intro n
  simp only [A176819, Nat.add_sub_cancel, A176819.P18124185185906615106.a, A176819.P9087001782378007283.f1, A176819.P9087001782378007283.a, SequenceMachineLib.memo_apply]

end A176819

/-! ## A176819.P9185943363608440097

`(A006881(n+1)+A006881(n+2))*A166237(n+1)`
-/

namespace A176819.P9185943363608440097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006881 (n + 1) + A006881 (n + 2)) * A166237 (n + 1)

end

end A176819.P9185943363608440097

namespace A176819

/-- `(A006881(n+1)+A006881(n+2))*A166237(n+1)` -/
def P9185943363608440097.Spec : Prop :=
  ∀ n, P9185943363608440097.a n = A176819 (n + 1)

end A176819

/-! ## A176819.P18348577824162139740

`Δ[eq[2, A066882(n)]²]`
-/

namespace A176819.P18348577824162139740
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066882 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ)

end

end A176819.P18348577824162139740

namespace A176819

/-- `Δ[eq[2, A066882(n)]²]` -/
def P18348577824162139740.Spec : Prop :=
  ∀ n, P18348577824162139740.a n = A176819 (n + 1)

end A176819

/-!
# A176820: Number of primes between 3*A171821(2n-1) and 3*A171821(2n).

The programs for A176820, there is no canonical definition to state claims against.
-/

/-! ## A176820.P15575031850911707481

`A090406(A111166(n+1)+A082496(n+1))`
-/

namespace A176820.P15575031850911707481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090406 (A111166 (n + 1) + A082496 (n + 1)).toNat

end

end A176820.P15575031850911707481

/-!
# A176822: Primes p with at least one decimal digit 2 that remain prime after removing all 2's.

The programs for A176822, there is no canonical definition to state claims against.
-/

/-! ## A176822.P12079771060349133012

`A180517(eq[n, A222211(A055647(n))])`
-/

namespace A176822.P12079771060349133012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222211 (A055647 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180517 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176822.P12079771060349133012

/-! ## A176822.P988319684482612817

`A180517(record[A106486(3*n+2)])`
-/

namespace A176822.P988319684482612817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106486 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180517 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176822.P988319684482612817

/-! ## A176822.P6053685783545928715

`∩[A136260(n+1), A180517(n+1)]`
-/

namespace A176822.P6053685783545928715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136260 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180517 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176822.P6053685783545928715

/-! ## A176822.P18350872432323541686

`A180517(lt[A341483(n+7), 3*(n/2)²])`
-/

namespace A176822.P18350872432323541686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341483 (n + 7)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 * ((n : ℚ) / 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180517 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A176822.P18350872432323541686

/-! ## A176822.P2765871757991829098

`A180517(lt[A326527(n), A277486(2*n+3)])`
-/

namespace A176822.P2765871757991829098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326527 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277486 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180517 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A176822.P2765871757991829098

/-!
# A176823: a(n) = n^(n+1) mod (n+1)^n.

The programs for A176823, the canonical program `A176823.P9819773270205244896` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176823 has offset 0).

The definition of A176823 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176823.P9819773270205244896

`(n^(n+1))%((n+1)^n)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176823

/-- `(n^(n+1))%((n+1)^n)` -/
def P9819773270205244896.Spec : Prop :=
  ∀ n, (P9819773270205244896.a n : ℤ) = A176823 n

theorem P9819773270205244896.correct : P9819773270205244896.Spec := by
  intro n
  simp only [A176823]

end A176823

/-! ## A176823.P9733984160916400598

`abs(A007778(n)%A213236(n+1))`
-/

namespace A176823.P9733984160916400598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A007778 n) (A213236 (n + 1))|

end

end A176823.P9733984160916400598

namespace A176823

/-- `abs(A007778(n)%A213236(n+1))` -/
def P9733984160916400598.Spec : Prop :=
  ∀ n, P9733984160916400598.a n = A176823 n

end A176823

/-! ## A176823.P17832512074259865945

`abs(A051442(n)%A213236(n+1))`
-/

namespace A176823.P17832512074259865945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (A051442 n) (A213236 (n + 1))|

end

end A176823.P17832512074259865945

namespace A176823

/-- `abs(A051442(n)%A213236(n+1))` -/
def P17832512074259865945.Spec : Prop :=
  ∀ n, P17832512074259865945.a n = A176823 n

end A176823

/-! ## A176823.P11181038224761935919

`--A007778(n)%A000169(n+1)`
-/

namespace A176823.P11181038224761935919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -Int.tmod (-A007778 n) (A000169 (n + 1))

end

end A176823.P11181038224761935919

namespace A176823

/-- `--A007778(n)%A000169(n+1)` -/
def P11181038224761935919.Spec : Prop :=
  ∀ n, P11181038224761935919.a n = A176823 n

end A176823

/-! ## A176823.P13356022160005743920

`A007778(n)-A000169(n+1)*A062276(n)`
-/

namespace A176823.P13356022160005743920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007778 n - A000169 (n + 1) * A062276 n

end

end A176823.P13356022160005743920

namespace A176823

/-- `A007778(n)-A000169(n+1)*A062276(n)` -/
def P13356022160005743920.Spec : Prop :=
  ∀ n, P13356022160005743920.a n = A176823 n

end A176823

/-!
# A176824: a(n) = (n+1)^n mod n^n.

The programs for A176824, the canonical program `A176824.P12324809106882358643` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176824 has offset 1).

The definition of A176824 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176824.P12324809106882358643

`((n+2)^(n+1))%((n+1)^(n+1))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176824

/-- `((n+2)^(n+1))%((n+1)^(n+1))` -/
def P12324809106882358643.Spec : Prop :=
  ∀ n, (P12324809106882358643.a n : ℤ) = A176824 (n + 1)

theorem P12324809106882358643.correct : P12324809106882358643.Spec := by
  intro n
  simp only [A176824, Nat.add_sub_cancel]

end A176824

/-! ## A176824.P716431141570208978

`(n+2)^(n+1)-2*(n+1)^(n+1)`
-/

namespace A176824.P716431141570208978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 2) ^ (n + 1) : ℤ) - (2 * (n + 1) ^ (n + 1) : ℤ)

end

end A176824.P716431141570208978

namespace A176824

/-- `(n+2)^(n+1)-2*(n+1)^(n+1)` -/
def P716431141570208978.Spec : Prop :=
  ∀ n, P716431141570208978.a n = A176824 (n + 1)

end A176824

/-! ## A176824.P7406520849032081156

`record[A110138(n)%A110139(n)]`
-/

namespace A176824.P7406520849032081156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110138 n) (A110139 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176824.P7406520849032081156

namespace A176824

/-- `record[A110138(n)%A110139(n)]` -/
def P7406520849032081156.Spec : Prop :=
  ∀ n, P7406520849032081156.a n = A176824 (n + 1)

end A176824

/-! ## A176824.P11387175701395791182

`Δ[A060946(n+1)-2*A001923(n)]`
-/

namespace A176824.P11387175701395791182
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060946 (n + 1) - 2 * A001923 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176824.P11387175701395791182

namespace A176824

/-- `Δ[A060946(n+1)-2*A001923(n)]` -/
def P11387175701395791182.Spec : Prop :=
  ∀ n, P11387175701395791182.a n = A176824 (n + 1)

end A176824

/-! ## A176824.P18187178188176614772

`record[A095896(n+1)%A095891(n+1)]`
-/

namespace A176824.P18187178188176614772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095896 (n + 1)) (A095891 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176824.P18187178188176614772

namespace A176824

/-- `record[A095896(n+1)%A095891(n+1)]` -/
def P18187178188176614772.Spec : Prop :=
  ∀ n, P18187178188176614772.a n = A176824 (n + 1)

end A176824

/-!
# A176826: a(n+1) = Sum_{p=0..n} (a(p)*a(n-p)+k)+l for n>=1, where a(0)=1, a(1)=1, k=1 and l=-1.

The programs for A176826, there is no canonical definition to state claims against.
-/

/-! ## A176826.P17098766564675760344

`A351903(A123020(n))`
-/

namespace A176826.P17098766564675760344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351903 (A123020 n).toNat

end

end A176826.P17098766564675760344

/-! ## A176826.P15857019474462111605

`A060747(A123020(n)^floor(n^(1/3))!)`
-/

namespace A176826.P15857019474462111605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 (A123020 n ^ Nat.factorial ⌊(n : ℝ) ^ ((1 : ℚ) / 3 : ℝ)⌋.toNat).toNat

end

end A176826.P15857019474462111605

/-! ## A176826.P2872368345029540730

`A004273(A087944(n))-A052530(n)`
-/

namespace A176826.P2872368345029540730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A087944 n).toNat - A052530 n

end

end A176826.P2872368345029540730

/-! ## A176826.P9225486254141330883

`A004273(A087946(n))-A231896(n)`
-/

namespace A176826.P9225486254141330883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A087946 n).toNat - A231896 n

end

end A176826.P9225486254141330883

/-!
# A176827: G.f.: Sum_{n>=0} a(n)*x^n/3^(n(n-1)/2) = exp( Sum_{n>=1} A(x/3^n)^n*x^n/n ).

The programs for A176827, there is no canonical definition to state claims against.
-/

/-! ## A176827.P2749387117331248459

`A123108(A332407(n+5)+2)`
-/

namespace A176827.P2749387117331248459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A332407 (n + 5) + 2).toNat

end

end A176827.P2749387117331248459

/-!
# A176828: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=2, k=1 and l=-1.

The programs for A176828, there is no canonical definition to state claims against.
-/

/-! ## A176828.P3506725306483496362

`A261231(∑[A002310(n)])`
-/

namespace A176828.P3506725306483496362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002310 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A261231 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176828.P3506725306483496362

/-! ## A176828.P2720036654309475

`A149585(n)+A059841(A017961(n))`
-/

namespace A176828.P2720036654309475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149585 n + A059841 (A017961 n).toNat

end

end A176828.P2720036654309475

/-! ## A176828.P14092750733495127478

`A149585(n)+A103589(A000079(n))`
-/

namespace A176828.P14092750733495127478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A149585 n + A103589 (A000079 n).toNat

end

end A176828.P14092750733495127478

/-!
# A176829: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=3, k=1 and l=-1.

The programs for A176829, there is no canonical definition to state claims against.
-/

/-! ## A176829.P15596255038499196416

`A282167(A148081(n+1))`
-/

namespace A176829.P15596255038499196416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282167 (A148081 (n + 1)).toNat

end

end A176829.P15596255038499196416

/-! ## A176829.P115474828876632114

`A108954(∏[p?[A051160(n)]])`
-/

namespace A176829.P115474828876632114
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051160 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108954 (∏ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176829.P115474828876632114

/-!
# A176830: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=4, k=1 and l=-1.

The programs for A176830, there is no canonical definition to state claims against.
-/

/-! ## A176830.P2203552641706030576

`floor(A018618(2*(n+2))/5)`
-/

namespace A176830.P2203552641706030576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A018618 (2 * (n + 2)) : ℚ) / 5⌋

end

end A176830.P2203552641706030576

/-!
# A176831: List of all primes p such that 2*A099609(2n-1)

The programs for A176831, the canonical program `A176831.P10048569203297585884` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176831 has offset 1).

The definition of A176831 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 155 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176831.P10048569203297585884

`p?[A147846(n+3)-A147846(n+1)]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176831

/-- `p?[A147846(n+3)-A147846(n+1)]` -/
def P10048569203297585884.Spec : Prop :=
  ∀ n, P10048569203297585884.a n = A176831 (n + 1)

theorem P10048569203297585884.correct : P10048569203297585884.Spec := by
  intro n
  simp only [A176831, Nat.add_sub_cancel]

end A176831

/-! ## A176831.P17212092969846318592

`p?[A004273(n)*A175078(A007918(n))]`
-/

namespace A176831.P17212092969846318592
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n * A175078 (A007918 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176831.P17212092969846318592

namespace A176831

/-- `p?[A004273(n)*A175078(A007918(n))]` -/
def P17212092969846318592.Spec : Prop :=
  ∀ n, P17212092969846318592.a n = A176831 (n + 1)

end A176831

/-! ## A176831.P17984319244260662533

`p?[A005408(n)*A175078(A151800(n))]`
-/

namespace A176831.P17984319244260662533
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n * A175078 (A151800 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176831.P17984319244260662533

namespace A176831

/-- `p?[A005408(n)*A175078(A151800(n))]` -/
def P17984319244260662533.Spec : Prop :=
  ∀ n, P17984319244260662533.a n = A176831 (n + 1)

end A176831

/-! ## A176831.P1095959828437705334

`record[A076605(2*A099609(n+1))]`
-/

namespace A176831.P1095959828437705334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (2 * A099609 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176831.P1095959828437705334

namespace A176831

/-- `record[A076605(2*A099609(n+1))]` -/
def P1095959828437705334.Spec : Prop :=
  ∀ n, P1095959828437705334.a n = A176831 (n + 1)

end A176831

/-! ## A176831.P8202081614679099520

`record[A110560(A047271(A171821(n+1)))]`
-/

namespace A176831.P8202081614679099520
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 (A047271 (A171821 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176831.P8202081614679099520

namespace A176831

/-- `record[A110560(A047271(A171821(n+1)))]` -/
def P8202081614679099520.Spec : Prop :=
  ∀ n, P8202081614679099520.a n = A176831 (n + 1)

end A176831

/-! ## A176831.P1998264660981959122

`record[A076605(A254732(A099609(n+1)))]`
-/

namespace A176831.P1998264660981959122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076605 (A254732 (A099609 (n + 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176831.P1998264660981959122

namespace A176831

/-- `record[A076605(A254732(A099609(n+1)))]` -/
def P1998264660981959122.Spec : Prop :=
  ∀ n, P1998264660981959122.a n = A176831 (n + 1)

end A176831

/-! ## A176831.P4976452826084729677

`p?[A110560(n)*A164292(A008619(n))]`
-/

namespace A176831.P4976452826084729677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110560 n * A164292 (A008619 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176831.P4976452826084729677

namespace A176831

/-- `p?[A110560(n)*A164292(A008619(n))]` -/
def P4976452826084729677.Spec : Prop :=
  ∀ n, P4976452826084729677.a n = A176831 (n + 1)

end A176831

/-!
# A176832: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=5, k=1 and l=-1.

The programs for A176832, there is no canonical definition to state claims against.
-/

/-! ## A176832.P11335205121741357219

`A093893(a(n-1)+5)` with `a(0)=1, a(1)=5, a(2)=11`
-/

namespace A176832.P11335205121741357219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 5, 11] fun n a =>
  A093893 (a (n - 1) + 5).toNat

end

end A176832.P11335205121741357219

/-!
# A176833: Smallest prime p = prime(i) such that concatenation q(i) = 13//0_(k)//prime(i) (k = 0, 1, 2, ...) is prime.

The programs for A176833, there is no canonical definition to state claims against.
-/

/-! ## A176833.P806170916300938981

`p?[A143159((2*n+1)²)]`
-/

namespace A176833.P806170916300938981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143159 ((2 * n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176833.P806170916300938981

/-!
# A176835: Number of positive integers k for which k^2 - n*k is a square.

The programs for A176835, the canonical program `A176835.P11267763139736940378` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176835 has offset 1).

The definition of A176835 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176835.P12042431133280423801

`A176836(n+1)-A176837(n+1)`
-/

namespace A176835.P12042431133280423801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176836 (n + 1) - A176837 (n + 1)

end

end A176835.P12042431133280423801

namespace A176835

/-- `A176836(n+1)-A176837(n+1)` -/
def P12042431133280423801.Spec : Prop :=
  ∀ n, P12042431133280423801.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P11267763139736940378

`A115878(n+1)+1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A176835

/-- `A115878(n+1)+1` -/
def P11267763139736940378.Spec : Prop :=
  ∀ n, P11267763139736940378.a n = A176835 (n + 1)

theorem P11267763139736940378.correct : P11267763139736940378.Spec := by
  intro n
  simp only [A176835, Nat.add_sub_cancel]

end A176835

/-! ## A176835.P12549240658908462638

`A046079(gcd(n+1, lcm(2, ∑[n])))+1`
-/

namespace A176835.P12549240658908462638
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (Nat.gcd (n + 1) (Nat.lcm 2 (∑ j ∈ Finset.range (n + 1), f1 j))) + 1

end

end A176835.P12549240658908462638

namespace A176835

/-- `A046079(gcd(n+1, lcm(2, ∑[n])))+1` -/
def P12549240658908462638.Spec : Prop :=
  ∀ n, P12549240658908462638.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P6522258679673877877

`A018892(A060819(n+1))`
-/

namespace A176835.P6522258679673877877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018892 (A060819 (n + 1)).toNat

end

end A176835.P6522258679673877877

namespace A176835

/-- `A018892(A060819(n+1))` -/
def P6522258679673877877.Spec : Prop :=
  ∀ n, P6522258679673877877.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P3826317553622129517

`A046079(A026741(n+1))+1`
-/

namespace A176835.P3826317553622129517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A026741 (n + 1)).toNat + 1

end

end A176835.P3826317553622129517

namespace A176835

/-- `A046079(A026741(n+1))+1` -/
def P3826317553622129517.Spec : Prop :=
  ∀ n, P3826317553622129517.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P6499114865093189129

`A046079(A062828(n+1))+1`
-/

namespace A176835.P6499114865093189129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A062828 (n + 1)).toNat + 1

end

end A176835.P6499114865093189129

namespace A176835

/-- `A046079(A062828(n+1))+1` -/
def P6499114865093189129.Spec : Prop :=
  ∀ n, P6499114865093189129.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P16122553969554378183

`A046079(A186646(n+1))+1`
-/

namespace A176835.P16122553969554378183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A186646 (n + 1)).toNat + 1

end

end A176835.P16122553969554378183

namespace A176835

/-- `A046079(A186646(n+1))+1` -/
def P16122553969554378183.Spec : Prop :=
  ∀ n, P16122553969554378183.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P16417641975452306525

`A046079(2*A060819(n+1))+1`
-/

namespace A176835.P16417641975452306525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (2 * A060819 (n + 1)).toNat + 1

end

end A176835.P16417641975452306525

namespace A176835

/-- `A046079(2*A060819(n+1))+1` -/
def P16417641975452306525.Spec : Prop :=
  ∀ n, P16417641975452306525.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P6689288247068881897

`∑{d}[n+1, A008966(#)*A034178((n+1)/#)]`
-/

namespace A176835.P6689288247068881897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008966 d * A034178 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A176835.P6689288247068881897

namespace A176835

/-- `∑{d}[n+1, A008966(#)*A034178((n+1)/#)]` -/
def P6689288247068881897.Spec : Prop :=
  ∀ n, P6689288247068881897.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P4034792199494401968

`A046079(A064680(n+1))+1`
-/

namespace A176835.P4034792199494401968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A064680 (n + 1)).toNat + 1

end

end A176835.P4034792199494401968

namespace A176835

/-- `A046079(A064680(n+1))+1` -/
def P4034792199494401968.Spec : Prop :=
  ∀ n, P4034792199494401968.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P10889181668003424933

`A046079(A225975(n+1))+1`
-/

namespace A176835.P10889181668003424933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046079 (A225975 (n + 1)).toNat + 1

end

end A176835.P10889181668003424933

namespace A176835

/-- `A046079(A225975(n+1))+1` -/
def P10889181668003424933.Spec : Prop :=
  ∀ n, P10889181668003424933.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P10088781350071066603

`A230263((n+1)²)`
-/

namespace A176835.P10088781350071066603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230263 ((n + 1) ^ 2)

end

end A176835.P10088781350071066603

namespace A176835

/-- `A230263((n+1)²)` -/
def P10088781350071066603.Spec : Prop :=
  ∀ n, P10088781350071066603.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P15486747093692855633

`A034178(A168077(n+1))`
-/

namespace A176835.P15486747093692855633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (A168077 (n + 1)).toNat

end

end A176835.P15486747093692855633

namespace A176835

/-- `A034178(A168077(n+1))` -/
def P15486747093692855633.Spec : Prop :=
  ∀ n, P15486747093692855633.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P14551910950951563471

`A038548(A181318(n+1))`
-/

namespace A176835.P14551910950951563471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038548 (A181318 (n + 1)).toNat

end

end A176835.P14551910950951563471

namespace A176835

/-- `A038548(A181318(n+1))` -/
def P14551910950951563471.Spec : Prop :=
  ∀ n, P14551910950951563471.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P2073597203478371527

`A033831(A060819(n+1)²)+1`
-/

namespace A176835.P2073597203478371527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033831 (A060819 (n + 1) ^ 2).toNat + 1

end

end A176835.P2073597203478371527

namespace A176835

/-- `A033831(A060819(n+1)²)+1` -/
def P2073597203478371527.Spec : Prop :=
  ∀ n, P2073597203478371527.a n = A176835 (n + 1)

end A176835

/-! ## A176835.P4068742972358832146

`A100073(A026741(n+1)²)+1`
-/

namespace A176835.P4068742972358832146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100073 (A026741 (n + 1) ^ 2).toNat + 1

end

end A176835.P4068742972358832146

namespace A176835

/-- `A100073(A026741(n+1)²)+1` -/
def P4068742972358832146.Spec : Prop :=
  ∀ n, P4068742972358832146.a n = A176835 (n + 1)

end A176835

/-!
# A176836: Number of pairs (a, b) of positive integers with a <= b such that both a^2 - nb and b^2 - na are squares.

The programs for A176836, there is no canonical definition to state claims against.
-/

/-! ## A176836.P4614240595171006657

`A176837(n+1)+A176835(n+1)`
-/

namespace A176836.P4614240595171006657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176837 (n + 1) + A176835 (n + 1)

end

end A176836.P4614240595171006657

/-! ## A176836.P13390264691813187806

`A115878(n+1)+A176837(n+1)+1`
-/

namespace A176836.P13390264691813187806
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115878 (n + 1) + (A176837 (n + 1) + 1)

end

end A176836.P13390264691813187806

/-! ## A176836.P2409270659582127461

`A176837(n+1)+A173636(n+1)+1`
-/

namespace A176836.P2409270659582127461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176837 (n + 1) + (A173636 (n + 1) + 1)

end

end A176836.P2409270659582127461

/-! ## A176836.P10136163331303725095

`A176837(n+1)+A018892(lcm(4, n+1)/4)`
-/

namespace A176836.P10136163331303725095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176837 (n + 1) + A018892 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

end

end A176836.P10136163331303725095

/-! ## A176836.P12727818743044719345

`A176837(n+1)+A046079((∑[n]-1)%(n+1)+1)+1`
-/

namespace A176836.P12727818743044719345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176837 (n + 1) + (A046079 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat + 1)

end

end A176836.P12727818743044719345

/-!
# A176837: Number of pairs (a, b) of positive integers with a < b such that both a^2 - nb and b^2 - na are squares.

The programs for A176837, there is no canonical definition to state claims against.
-/

/-! ## A176837.P15448867199600412259

`A176836(n+1)-A176835(n+1)`
-/

namespace A176837.P15448867199600412259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176836 (n + 1) - A176835 (n + 1)

end

end A176837.P15448867199600412259

/-! ## A176837.P10695328777375030944

`A176836(n+1)-(A115878(n+1)+1)`
-/

namespace A176837.P10695328777375030944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176836 (n + 1) - (A115878 (n + 1) + 1)

end

end A176837.P10695328777375030944

/-! ## A176837.P13907116173490061005

`A176836(n+1)-(A173636(n+1)+1)`
-/

namespace A176837.P13907116173490061005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176836 (n + 1) - (A173636 (n + 1) + 1)

end

end A176837.P13907116173490061005

/-! ## A176837.P2475126861013667506

`A176836(n+1)-A018892(lcm(4, n+1)/4)`
-/

namespace A176837.P2475126861013667506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176836 (n + 1) - A018892 (SequenceMachineLib.roundAway ((Nat.lcm 4 (n + 1) : ℚ) / 4)).toNat

end

end A176837.P2475126861013667506

/-! ## A176837.P2211535875247580327

`A176836(n+1)-(A046079((∑[n]-1)%(n+1)+1)+1)`
-/

namespace A176837.P2211535875247580327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176836 (n + 1) - (A046079 (Int.tmod (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1) (n + 1 : ℤ) + 1).toNat + 1)

end

end A176837.P2211535875247580327

/-!
# A176838: Primes p such that p^3 = q//3 for a prime q, where "//" denotes concatenation.

The programs for A176838, there is no canonical definition to state claims against.
-/

/-! ## A176838.P16259871108658578945

`∩[A141886(n+1), A258032(n+1)]`
-/

namespace A176838.P16259871108658578945
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141886 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P16259871108658578945

/-! ## A176838.P9150434332200542697

`∩[A030432(n+1), A258032(n+1)]`
-/

namespace A176838.P9150434332200542697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030432 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P9150434332200542697

/-! ## A176838.P13091782541108282314

`∩[A045357(n+1), A258032(n+1)]`
-/

namespace A176838.P13091782541108282314
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045357 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P13091782541108282314

/-! ## A176838.P6297722451899080734

`∩[A045380(n+1), A258032(n+1)]`
-/

namespace A176838.P6297722451899080734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045380 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P6297722451899080734

/-! ## A176838.P2927752528782677497

`∩[A090652(n+1), A258032(n+1)]`
-/

namespace A176838.P2927752528782677497
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090652 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P2927752528782677497

/-! ## A176838.P11690952217264423926

`∩[A045349(n+1), A258032(n+1)]`
-/

namespace A176838.P11690952217264423926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045349 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P11690952217264423926

/-! ## A176838.P10255699665919392046

`∩[A045372(n+1), A258032(n+1)]`
-/

namespace A176838.P10255699665919392046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045372 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P10255699665919392046

/-! ## A176838.P4368294328339887913

`∩[A004616(n+1), A258032(n+1)]`
-/

namespace A176838.P4368294328339887913
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004616 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P4368294328339887913

/-! ## A176838.P15080889009645648218

`∩[A258032(n+1), A017353(n)]`
-/

namespace A176838.P15080889009645648218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017353 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P15080889009645648218

/-! ## A176838.P16137907987046315189

`∩[A160912(n+1), A258032(n+1)]`
-/

namespace A176838.P16137907987046315189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160912 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P16137907987046315189

/-! ## A176838.P3316030884449061864

`∩[A258032(n+1), A277594(n+1)]`
-/

namespace A176838.P3316030884449061864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277594 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P3316030884449061864

/-! ## A176838.P17555513973674375524

`∩[A072709(n+1), A258032(n+1)]`
-/

namespace A176838.P17555513973674375524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072709 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P17555513973674375524

/-! ## A176838.P6258470315940649907

`filter[A258032(n+1), A185708(#)]`
-/

namespace A176838.P6258470315940649907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A185708 (f1 j).toNat = 1) n)

end

end A176838.P6258470315940649907

/-! ## A176838.P12724771273713055257

`∩[A258032(n+1), A016873(n)]`
-/

namespace A176838.P12724771273713055257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016873 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P12724771273713055257

/-! ## A176838.P6394811359381051288

`∩[A258032(n+1), A297469(n)]`
-/

namespace A176838.P6394811359381051288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297469 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P6394811359381051288

/-! ## A176838.P1339782837157407461

`∩[A063097(n+1), A258032(n+1)]`
-/

namespace A176838.P1339782837157407461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063097 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P1339782837157407461

/-! ## A176838.P11297582827698508174

`∩[A131229(n+1), A258032(n+1)]`
-/

namespace A176838.P11297582827698508174
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131229 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P11297582827698508174

/-! ## A176838.P18255849974593608901

`∩[A258032(n+1), A385869(n+7)]`
-/

namespace A176838.P18255849974593608901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258032 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385869 (n + 7)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176838.P18255849974593608901

/-!
# A176839: The number of iterations to reach 1 under the map x -> x-tau(phi(x)), starting at n.

The programs for A176839, there is no canonical definition to state claims against.
-/

/-! ## A176839.P5083345946395825015

`a(n-A062821(n+1))+1` with `a(0)=0`
-/

namespace A176839.P5083345946395825015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A062821 (n + 1)).toNat + 1

end

end A176839.P5083345946395825015

/-! ## A176839.P4865763574940349941

`a(n-A000005(Δ[A002088(n)]))+1` with `a(0)=0`
-/

namespace A176839.P4865763574940349941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000005 (f1 (n + 1) - f1 n).toNat).toNat + 1

end

end A176839.P4865763574940349941

/-! ## A176839.P127216483960881210

`a(n-A000005(A000010(n+1)))+1` with `a(0)=0`
-/

namespace A176839.P127216483960881210
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000005 (A000010 (n + 1)).toNat).toNat + 1

end

end A176839.P127216483960881210

/-! ## A176839.P2702872951645676640

`A106348(∑[A292085(n+1)]*∏{e}[n+1, #+1])`
-/

namespace A176839.P2702872951645676640
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292085 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106348 ((∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1) : ℕ) : ℤ)).toNat

end

end A176839.P2702872951645676640

/-! ## A176839.P12319049283563088392

`A001221(lcm(A089408(n), A312422(n)))`
-/

namespace A176839.P12319049283563088392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (Int.lcm (A089408 n) (A312422 n))

end

end A176839.P12319049283563088392

/-!
# A176840: Variant of A176546 with the sign of the second term switched.

The programs for A176840, there is no canonical definition to state claims against.
-/

/-! ## A176840.P5922892718866489169

`A000367(abs(2-n)+1)`
-/

namespace A176840.P5922892718866489169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000367 (|2 - (n : ℤ)| + 1).toNat

end

end A176840.P5922892718866489169

/-! ## A176840.P4134369046446616847

`A027641(comp[2*n+3])`
-/

namespace A176840.P4134369046446616847
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A176840.P4134369046446616847

/-! ## A176840.P2478572101718629162

`A176327(comp[2*n+3])-char[1]`
-/

namespace A176840.P2478572101718629162
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176327 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n) - ((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ)

end

end A176840.P2478572101718629162

/-! ## A176840.P2115677081251690299

`A176184(A019442(n+1))`
-/

namespace A176840.P2115677081251690299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176184 (A019442 (n + 1)).toNat

end

end A176840.P2115677081251690299

/-! ## A176840.P12368396972708334211

`or(1, A027641(A004275(n)))`
-/

namespace A176840.P12368396972708334211
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A027641 (A004275 n).toNat)

end

end A176840.P12368396972708334211

/-! ## A176840.P5389934148774276177

`A027641(A004275(n))+A000007(2*(n+2))`
-/

namespace A176840.P5389934148774276177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A004275 n).toNat + A000007 (2 * (n + 2))

end

end A176840.P5389934148774276177

/-! ## A176840.P18268435852261121464

`A063524(3*(n+1))+A027641(A004275(n))`
-/

namespace A176840.P18268435852261121464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (3 * (n + 1)) + A027641 (A004275 n).toNat

end

end A176840.P18268435852261121464

/-! ## A176840.P8202548000759753034

`A027641(A004275(n))*A033999(2*(n+1))`
-/

namespace A176840.P8202548000759753034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027641 (A004275 n).toNat * A033999 (2 * (n + 1))

end

end A176840.P8202548000759753034

/-! ## A176840.P11296647989467661958

`A176144(A019442(n+1)+1)`
-/

namespace A176840.P11296647989467661958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176144 (A019442 (n + 1) + 1).toNat

end

end A176840.P11296647989467661958

/-!
# A176841: a(n) is the number of iterations of f(n) = n-phi(tau(n)) needed to reach 1.

The programs for A176841, the canonical program `A176841.P12208208766662245832` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176841 has offset 1).

The definition of A176841 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176841.P12208208766662245832

`a(n-A163109(n+1))+1` with `a(0)=0`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A176841

/-- `a(n-A163109(n+1))+1` -/
def P12208208766662245832.Spec : Prop :=
  ∀ n, (P12208208766662245832.a n : ℤ) = A176841 (n + 1)

theorem P12208208766662245832.correct : P12208208766662245832.Spec := by
  intro n
  simp only [A176841, Nat.add_sub_cancel]

end A176841

/-! ## A176841.P6185436640571367376

`a(n-A000010(∑{d}[n+1, gcd(n, #)]))+1` with `a(0)=0`
-/

namespace A176841.P6185436640571367376
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000010 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)).toNat + 1

end

end A176841.P6185436640571367376

namespace A176841

/-- `a(n-A000010(∑{d}[n+1, gcd(n, #)]))+1` -/
def P6185436640571367376.Spec : Prop :=
  ∀ n, (P6185436640571367376.a n : ℤ) = A176841 (n + 1)

end A176841

/-! ## A176841.P15205423765604467842

`a(n-A000010(2^∑{e}[n+1, log2(#+1)]))+1` with `a(0)=0`
-/

namespace A176841.P15205423765604467842
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000010 (SequenceMachineLib.roundAway ((2 : ℝ) ^ (∑ p ∈ Nat.primeFactors (f1 n), Real.logb 2 (Nat.factorization (f1 n) p + 1 : ℝ)))).toNat).toNat + 1

end

end A176841.P15205423765604467842

namespace A176841

/-- `a(n-A000010(2^∑{e}[n+1, log2(#+1)]))+1` -/
def P15205423765604467842.Spec : Prop :=
  ∀ n, (P15205423765604467842.a n : ℤ) = A176841 (n + 1)

end A176841

/-! ## A176841.P12634573794784854264

`a(n-A000010(∑{d}[n+1, lcm(#, n+1)]/(n+1)))+1` with `a(0)=0`
-/

namespace A176841.P12634573794784854264
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000010 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ))).toNat).toNat + 1

end

end A176841.P12634573794784854264

namespace A176841

/-- `a(n-A000010(∑{d}[n+1, lcm(#, n+1)]/(n+1)))+1` -/
def P12634573794784854264.Spec : Prop :=
  ∀ n, (P12634573794784854264.a n : ℤ) = A176841 (n + 1)

end A176841

/-! ## A176841.P16721784464608371047

`a(n-A000010(A000005(n+1)))+1` with `a(0)=0`
-/

namespace A176841.P16721784464608371047
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000010 (A000005 (n + 1)).toNat).toNat + 1

end

end A176841.P16721784464608371047

namespace A176841

/-- `a(n-A000010(A000005(n+1)))+1` -/
def P16721784464608371047.Spec : Prop :=
  ∀ n, (P16721784464608371047.a n : ℤ) = A176841 (n + 1)

end A176841

/-! ## A176841.P16715065074110911964

`a(n-A000010(∑{d}[n+1, A020639(2*#)]/2))+1` with `a(0)=0`
-/

namespace A176841.P16715065074110911964
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000010 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), A020639 (2 * d) : ℤ) : ℚ) / 2)).toNat).toNat + 1

end

end A176841.P16715065074110911964

namespace A176841

/-- `a(n-A000010(∑{d}[n+1, A020639(2*#)]/2))+1` -/
def P16715065074110911964.Spec : Prop :=
  ∀ n, (P16715065074110911964.a n : ℤ) = A176841 (n + 1)

end A176841

/-!
# A176842: The number of iterations of the map x -> x - phi(bigomega(x)) needed to reach 1 starting at x=n.

The programs for A176842, the canonical program `A176842.P18407075080678213704` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176842 has offset 1).

The definition of A176842 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176842.P18407075080678213704

`a(n-A000010(∑{e}[n+1, #]))+1` with `a(0)=0`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A176842

/-- `a(n-A000010(∑{e}[n+1, #]))+1` -/
def P18407075080678213704.Spec : Prop :=
  ∀ n, (P18407075080678213704.a n : ℤ) = A176842 (n + 1)

theorem P18407075080678213704.correct : P18407075080678213704.Spec := by
  intro n
  simp only [A176842, Nat.add_sub_cancel]

end A176842

/-! ## A176842.P4743045109549958826

`a(n-A000010(A001222(n+1)))+1` with `a(0)=0`
-/

namespace A176842.P4743045109549958826
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000010 (A001222 (n + 1)).toNat).toNat + 1

end

end A176842.P4743045109549958826

namespace A176842

/-- `a(n-A000010(A001222(n+1)))+1` -/
def P4743045109549958826.Spec : Prop :=
  ∀ n, (P4743045109549958826.a n : ℤ) = A176842 (n + 1)

end A176842

/-! ## A176842.P14031522519596918705

`∑[and(A101040(n+1), A213125(n+1))]`
-/

namespace A176842.P14031522519596918705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A101040 (n + 1)) (A213125 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176842.P14031522519596918705

namespace A176842

/-- `∑[and(A101040(n+1), A213125(n+1))]` -/
def P14031522519596918705.Spec : Prop :=
  ∀ n, P14031522519596918705.a n = A176842 (n + 1)

end A176842

/-! ## A176842.P14238214606520799624

`∑[A101040(n+1)+A084746(2*n+5)%2]`
-/

namespace A176842.P14238214606520799624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101040 (n + 1) + Int.tmod (A084746 (2 * n + 5)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176842.P14238214606520799624

namespace A176842

/-- `∑[A101040(n+1)+A084746(2*n+5)%2]` -/
def P14238214606520799624.Spec : Prop :=
  ∀ n, P14238214606520799624.a n = A176842 (n + 1)

end A176842

/-! ## A176842.P13737686078076333067

`∑[A299203(n+1)^A204238(n+1)]`
-/

namespace A176842.P13737686078076333067
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299203 (n + 1) : ℚ) ^ (A204238 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176842.P13737686078076333067

namespace A176842

/-- `∑[A299203(n+1)^A204238(n+1)]` -/
def P13737686078076333067.Spec : Prop :=
  ∀ n, P13737686078076333067.a n = (A176842 (n + 1) : ℚ)

end A176842

/-!
# A176843: The number of iterations of the map n -> n - bigomega(phi(n)) until reaching 2.

The programs for A176843, there is no canonical definition to state claims against.
-/

/-! ## A176843.P12182663483716427784

`a(n-A001222(A000010(n+2)))+1` with `a(0)=0`
-/

namespace A176843.P12182663483716427784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A001222 (A000010 (n + 2)).toNat).toNat + 1

end

end A176843.P12182663483716427784

/-! ## A176843.P4734211617550113223

`floor(log(n*A268448(n+1)+1))`
-/

namespace A176843.P4734211617550113223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.log ((n : ℤ) * A268448 (n + 1) + 1 : ℝ)⌋

end

end A176843.P4734211617550113223

/-! ## A176843.P2843615567398558625

`A034463(A002024(∑[A057661(n+1)]))`
-/

namespace A176843.P2843615567398558625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057661 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034463 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A176843.P2843615567398558625

/-! ## A176843.P4455269719666935781

`A000523(∪[A005934(n+1), A284546(n)])`
-/

namespace A176843.P4455269719666935781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284546 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A176843.P4455269719666935781

/-! ## A176843.P16243547421222972211

`∑[A136567(A107852(n+1))]`
-/

namespace A176843.P16243547421222972211
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136567 (A107852 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176843.P16243547421222972211

/-!
# A176844: The number of iterations of the map n -> n - bigomega(sigma(n)) until reaching 1.

The programs for A176844, there is no canonical definition to state claims against.
-/

/-! ## A176844.P920070743162203635

`a(n-A058063(n+1))+1` with `a(0)=0`
-/

namespace A176844.P920070743162203635
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A058063 (n + 1)).toNat + 1

end

end A176844.P920070743162203635

/-! ## A176844.P15942588221879206505

`a(n-A001222(∑{d}[n+1, #]))+1` with `a(0)=0`
-/

namespace A176844.P15942588221879206505
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A001222 (∑ d ∈ Nat.divisors (f1 n), d)).toNat + 1

end

end A176844.P15942588221879206505

/-! ## A176844.P8562468218442524550

`a(n-A001222(Δ[A160664(n)]))+1` with `a(0)=0`
-/

namespace A176844.P8562468218442524550
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A001222 (f1 (n + 1) - f1 n).toNat).toNat + 1

end

end A176844.P8562468218442524550

/-! ## A176844.P15269416153802748108

`a(n-A001222(A000203(n+1)))+1` with `a(0)=0`
-/

namespace A176844.P15269416153802748108
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A001222 (A000203 (n + 1)).toNat).toNat + 1

end

end A176844.P15269416153802748108

/-! ## A176844.P4972483114041314465

`A100196(A325389(n+1)+A305052(2*n+5))`
-/

namespace A176844.P4972483114041314465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100196 (A325389 (n + 1) + A305052 (2 * n + 5)).toNat

end

end A176844.P4972483114041314465

/-!
# A176845: Numbers k such that A147846(k) + A147846(k+1) is a square.

The programs for A176845, there is no canonical definition to state claims against.
-/

/-! ## A176845.P8419040785617057203

`lt[A211005(n+1), 3]+1`
-/

namespace A176845.P8419040785617057203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211005 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A176845.P8419040785617057203

/-! ## A176845.P10673616244458666263

`comp[A160522(n+1)+1]+1`
-/

namespace A176845.P10673616244458666263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160522 (n + 1) + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176845.P10673616244458666263

/-! ## A176845.P13853732963197242407

`comp[2*A008508(n+1)]+1`
-/

namespace A176845.P13853732963197242407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008508 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A176845.P13853732963197242407

/-! ## A176845.P725016899081932945

`comp[Δ[n²]*A106002(n+1)]`
-/

namespace A176845.P725016899081932945
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f2 (n + 1) : ℤ) - (f2 n : ℤ)) * A106002 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A176845.P725016899081932945

/-!
# A176846: Number of iterations of the map n-> n - sigma(bigomega(n)) needed to reach 1.

The programs for A176846, the canonical program `A176846.P9074982901365840745` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176846 has offset 1).

The definition of A176846 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176846.P4151122302132558733

`a(n-A290080(n+1))+1` with `a(0)=0`
-/

namespace A176846.P4151122302132558733
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A290080 (n + 1)).toNat + 1

end

end A176846.P4151122302132558733

namespace A176846

/-- `a(n-A290080(n+1))+1` -/
def P4151122302132558733.Spec : Prop :=
  ∀ n, (P4151122302132558733.a n : ℤ) = A176846 (n + 1)

end A176846

/-! ## A176846.P9074982901365840745

`a(n-A000203(∑{e}[n+1, #]))+1` with `a(0)=0`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A176846

/-- `a(n-A000203(∑{e}[n+1, #]))+1` -/
def P9074982901365840745.Spec : Prop :=
  ∀ n, (P9074982901365840745.a n : ℤ) = A176846 (n + 1)

theorem P9074982901365840745.correct : P9074982901365840745.Spec := by
  intro n
  simp only [A176846, Nat.add_sub_cancel]

end A176846

/-! ## A176846.P15763600873902821831

`a(n-A000203(Δ[A022559(n)]))+1` with `a(0)=0`
-/

namespace A176846.P15763600873902821831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022559 n

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000203 (f1 (n + 1) - f1 n).toNat).toNat + 1

end

end A176846.P15763600873902821831

namespace A176846

/-- `a(n-A000203(Δ[A022559(n)]))+1` -/
def P15763600873902821831.Spec : Prop :=
  ∀ n, (P15763600873902821831.a n : ℤ) = A176846 (n + 1)

end A176846

/-! ## A176846.P9527241216678879449

`a(n-A000203(A001222(n+1)))+1` with `a(0)=0`
-/

namespace A176846.P9527241216678879449
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a ((n : ℤ) - A000203 (A001222 (n + 1)).toNat).toNat + 1

end

end A176846.P9527241216678879449

namespace A176846

/-- `a(n-A000203(A001222(n+1)))+1` -/
def P9527241216678879449.Spec : Prop :=
  ∀ n, (P9527241216678879449.a n : ℤ) = A176846 (n + 1)

end A176846

/-!
# A176847: The odd non-semiprime numbers.

The programs for A176847, the canonical program `A176847.P6816976883813622465` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176847 has offset 1).

The definition of A176847 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176847.P6816976883813622465

`comp[∪[2*n, A001358(n+1)]]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176847

/-- `comp[∪[2*n, A001358(n+1)]]` -/
def P6816976883813622465.Spec : Prop :=
  ∀ n, (P6816976883813622465.a n : ℤ) = A176847 (n + 1)

theorem P6816976883813622465.correct : P6816976883813622465.Spec := by
  intro n
  simp only [A176847, Nat.add_sub_cancel]

end A176847

/-! ## A176847.P9593179627232081785

`record[(1-A064911(n+1))*A000265(n+1)]`
-/

namespace A176847.P9593179627232081785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - A064911 (n + 1)) * A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176847.P9593179627232081785

namespace A176847

/-- `record[(1-A064911(n+1))*A000265(n+1)]` -/
def P9593179627232081785.Spec : Prop :=
  ∀ n, P9593179627232081785.a n = A176847 (n + 1)

end A176847

/-! ## A176847.P12339110469117827255

`record[A000265(A064911(n+1)+A000265(n+1))]`
-/

namespace A176847.P12339110469117827255
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A064911 (n + 1) + A000265 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176847.P12339110469117827255

namespace A176847

/-- `record[A000265(A064911(n+1)+A000265(n+1))]` -/
def P12339110469117827255.Spec : Prop :=
  ∀ n, P12339110469117827255.a n = A176847 (n + 1)

end A176847

/-! ## A176847.P6778425176535850513

`A000265(eq[n+1, A064911(n+1)+A000265(n+1)]+1)`
-/

namespace A176847.P6778425176535850513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (n + 1) + A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A176847.P6778425176535850513

namespace A176847

/-- `A000265(eq[n+1, A064911(n+1)+A000265(n+1)]+1)` -/
def P6778425176535850513.Spec : Prop :=
  ∀ n, P6778425176535850513.a n = A176847 (n + 1)

end A176847

/-! ## A176847.P10937541863191739757

`A005408(comp[eq[2, A001222(2*n+1)]])`
-/

namespace A176847.P10937541863191739757
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (2 * n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n)

end

end A176847.P10937541863191739757

namespace A176847

/-- `A005408(comp[eq[2, A001222(2*n+1)]])` -/
def P10937541863191739757.Spec : Prop :=
  ∀ n, P10937541863191739757.a n = A176847 (n + 1)

end A176847

/-! ## A176847.P16908007947139661444

`eq[A003966(n+1), A064911(A003966(n+1)+n)]`
-/

namespace A176847.P16908007947139661444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003966 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064911 (A003966 (n + 1) + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176847.P16908007947139661444

namespace A176847

/-- `eq[A003966(n+1), A064911(A003966(n+1)+n)]` -/
def P16908007947139661444.Spec : Prop :=
  ∀ n, (P16908007947139661444.a n : ℤ) = A176847 (n + 1)

end A176847

/-! ## A176847.P8517248859022079784

`∩[comp[2*n], A100959(n+1)]`
-/

namespace A176847.P8517248859022079784
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A176847.P8517248859022079784

namespace A176847

/-- `∩[comp[2*n], A100959(n+1)]` -/
def P8517248859022079784.Spec : Prop :=
  ∀ n, (P8517248859022079784.a n : ℤ) = A176847 (n + 1)

end A176847

/-! ## A176847.P1218068365109986457

`∩[A100959(n+1), A004273(n)]`
-/

namespace A176847.P1218068365109986457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176847.P1218068365109986457

namespace A176847

/-- `∩[A100959(n+1), A004273(n)]` -/
def P1218068365109986457.Spec : Prop :=
  ∀ n, (P1218068365109986457.a n : ℤ) = A176847 (n + 1)

end A176847

/-! ## A176847.P17285604797889713111

`∩[A100959(n+1), A060747(n)]`
-/

namespace A176847.P17285604797889713111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060747 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176847.P17285604797889713111

namespace A176847

/-- `∩[A100959(n+1), A060747(n)]` -/
def P17285604797889713111.Spec : Prop :=
  ∀ n, (P17285604797889713111.a n : ℤ) = A176847 (n + 1)

end A176847

/-! ## A176847.P1288572004183853893

`∩[A100959(n+1), A256421(n+1)]`
-/

namespace A176847.P1288572004183853893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A256421 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176847.P1288572004183853893

namespace A176847

/-- `∩[A100959(n+1), A256421(n+1)]` -/
def P1288572004183853893.Spec : Prop :=
  ∀ n, (P1288572004183853893.a n : ℤ) = A176847 (n + 1)

end A176847

/-! ## A176847.P8514758812687970003

`eq[and(1, n+1), and(2, A105700(n))]`
-/

namespace A176847.P8514758812687970003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (A105700 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176847.P8514758812687970003

namespace A176847

/-- `eq[and(1, n+1), and(2, A105700(n))]` -/
def P8514758812687970003.Spec : Prop :=
  ∀ n, (P8514758812687970003.a n : ℤ) = A176847 (n + 1)

end A176847

/-! ## A176847.P5178385353061863176

`record[2*n+1-A174956(2*n+1)]`
-/

namespace A176847.P5178385353061863176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) - A174956 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176847.P5178385353061863176

namespace A176847

/-- `record[2*n+1-A174956(2*n+1)]` -/
def P5178385353061863176.Spec : Prop :=
  ∀ n, P5178385353061863176.a n = A176847 (n + 1)

end A176847

/-! ## A176847.P15179866797348352509

`eq[A105700(n), A370482(n)]`
-/

namespace A176847.P15179866797348352509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370482 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176847.P15179866797348352509

namespace A176847

/-- `eq[A105700(n), A370482(n)]` -/
def P15179866797348352509.Spec : Prop :=
  ∀ n, (P15179866797348352509.a n : ℤ) = A176847 (n + 1)

end A176847

/-! ## A176847.P11719608972787844501

`filter[A100959(n+1), A000035(#)]`
-/

namespace A176847.P11719608972787844501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A176847.P11719608972787844501

namespace A176847

/-- `filter[A100959(n+1), A000035(#)]` -/
def P11719608972787844501.Spec : Prop :=
  ∀ n, P11719608972787844501.a n = A176847 (n + 1)

end A176847

/-! ## A176847.P11820099263764217487

`lt[A105700(n), 2*A000035(n)]`
-/

namespace A176847.P11820099263764217487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000035 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A176847.P11820099263764217487

namespace A176847

/-- `lt[A105700(n), 2*A000035(n)]` -/
def P11820099263764217487.Spec : Prop :=
  ∀ n, (P11820099263764217487.a n : ℤ) = A176847 (n + 1)

end A176847

/-! ## A176847.P2246291033069206551

`eq[A007814(n+1), A353480(n+1)]+1`
-/

namespace A176847.P2246291033069206551
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353480 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176847.P2246291033069206551

namespace A176847

/-- `eq[A007814(n+1), A353480(n+1)]+1` -/
def P2246291033069206551.Spec : Prop :=
  ∀ n, (P2246291033069206551.a n : ℤ) = A176847 (n + 1)

end A176847

/-! ## A176847.P1451815700872045375

`∩[2*n+1, A215261(2*n+1)]`
-/

namespace A176847.P1451815700872045375
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215261 (2 * n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176847.P1451815700872045375

namespace A176847

/-- `∩[2*n+1, A215261(2*n+1)]` -/
def P1451815700872045375.Spec : Prop :=
  ∀ n, (P1451815700872045375.a n : ℤ) = A176847 (n + 1)

end A176847

/-!
# A176848: Number of compositions of n into floor(j/3) kinds of j's for all j>=1.

The programs for A176848, the canonical program `A176848.P9777343039372423874` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176848 has offset 0).

The definition of A176848 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 521 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176848.P9777343039372423874

`Δ[2*a(n-3)-(a(n-4)-a(n-1))]` with `a(0)=0, a(1)=1, a(2)=1, a(3)=1, a(4)=2`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176848

/-- `Δ[2*a(n-3)-(a(n-4)-a(n-1))]` -/
def P9777343039372423874.Spec : Prop :=
  ∀ n, P9777343039372423874.a n = A176848 n

theorem P9777343039372423874.correct : P9777343039372423874.Spec := by
  intro n
  simp only [A176848]

end A176848

/-!
# A176849: Triangle read by rows which contains the (6n)-th row of the Pascal triangle in row n.

The programs for A176849, there is no canonical definition to state claims against.
-/

/-! ## A176849.P13063727034419300748

`A007318(eq[1, dr(A137688(n))])`
-/

namespace A176849.P13063727034419300748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A137688 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176849.P13063727034419300748

/-! ## A176849.P17725523825058313634

`A007318(eq[2, dr(A140513(n))])`
-/

namespace A176849.P17725523825058313634
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A140513 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176849.P17725523825058313634

/-! ## A176849.P4401225848995777537

`A007318(eq[1, A101676(A003056(n))])`
-/

namespace A176849.P4401225848995777537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101676 (A003056 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176849.P4401225848995777537

/-! ## A176849.P10685341474212120231

`A007318(eq[1, A134667(A002024(n+1))])`
-/

namespace A176849.P10685341474212120231
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134667 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176849.P10685341474212120231

/-! ## A176849.P949258899584306068

`A007318(eq[2, A059126(A002024(n+1))])`
-/

namespace A176849.P949258899584306068
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059126 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176849.P949258899584306068

/-! ## A176849.P1270015586538397423

`A007318(eq[3, A007945(A002024(n+1))])`
-/

namespace A176849.P1270015586538397423
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007945 (A002024 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176849.P1270015586538397423

/-! ## A176849.P5187316421003916644

`A007318(eq[3, A020639(A003056(n)+3)])`
-/

namespace A176849.P5187316421003916644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A003056 n + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A176849.P5187316421003916644

/-!
# A176852: Complement to A176845.

The programs for A176852, there is no canonical definition to state claims against.
-/

/-! ## A176852.P5564656558767758981

`lt[2, A230849(n+2)]`
-/

namespace A176852.P5564656558767758981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230849 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176852.P5564656558767758981

/-! ## A176852.P11783510395994465003

`lt[2, A230850(n+2)]`
-/

namespace A176852.P11783510395994465003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230850 (n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A176852.P11783510395994465003

/-! ## A176852.P18219849284472931988

`2*A049579(n+1)-1`
-/

namespace A176852.P18219849284472931988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049579 (n + 1) - 1

end

end A176852.P18219849284472931988

/-! ## A176852.P3273423635187773267

`2*A336410(n+1)+5`
-/

namespace A176852.P3273423635187773267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A336410 (n + 1) + 5

end

end A176852.P3273423635187773267

/-! ## A176852.P10251584287829054129

`lt[2, A211005(n+1)]+1`
-/

namespace A176852.P10251584287829054129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A176852.P10251584287829054129

/-!
# A176855: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=1, k=-1 and l=0.

The programs for A176855, there is no canonical definition to state claims against.
-/

/-! ## A176855.P951379933095783656

`1-A055679(A083587(n))+n`
-/

namespace A176855.P951379933095783656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A055679 (A083587 n).toNat + (n : ℤ)

end

end A176855.P951379933095783656

/-! ## A176855.P13086648175988869639

`A110656(A047849(n))-A143954(n)`
-/

namespace A176855.P13086648175988869639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110656 (A047849 n).toNat - A143954 n

end

end A176855.P13086648175988869639

/-! ## A176855.P6808454532630777087

`A369605(A000332(n))-A234270(n)`
-/

namespace A176855.P6808454532630777087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369605 (A000332 n).toNat - A234270 n

end

end A176855.P6808454532630777087

/-! ## A176855.P10951311928761979493

`A063065(A000097(n))-A121190(n+1)`
-/

namespace A176855.P10951311928761979493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063065 (A000097 n).toNat - A121190 (n + 1)

end

end A176855.P10951311928761979493

/-!
# A176856: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=2, k=-1 and l=0.

The programs for A176856, there is no canonical definition to state claims against.
-/

/-! ## A176856.P8358893336206388437

`A241086(or(∑[record[∑{p}[n, #]]]+3, floor(n/∏{p}[n+1, #])))`
-/

namespace A176856.P8358893336206388437
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f3 n), p

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (Int.lor ((∑ j ∈ Finset.range (n + 1), f1 j + 3 : ℕ) : ℤ) ⌊(n : ℚ) / ((∏ p ∈ Nat.primeFactors (f4 n), p : ℕ) : ℚ)⌋).toNat

end

end A176856.P8358893336206388437

/-! ## A176856.P7107027521817913730

`A241086(∑[p?[A034886(n)]])`
-/

namespace A176856.P7107027521817913730
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034886 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176856.P7107027521817913730

/-! ## A176856.P734246060655592835

`A241086(∑[p?[A277504(n)]])`
-/

namespace A176856.P734246060655592835
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277504 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A176856.P734246060655592835

/-!
# A176857: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=3, k=-1 and l=0.

The programs for A176857, there is no canonical definition to state claims against.
-/

/-! ## A176857.P7940937931228358189

`A166289(n)+A008612(A061396(n+2))`
-/

namespace A176857.P7940937931228358189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166289 n + A008612 (A061396 (n + 2)).toNat

end

end A176857.P7940937931228358189

/-! ## A176857.P7536460820200604117

`xor((2^n+1)*(2^n+2)/6, ∑{e}[A016248(n), #])`
-/

namespace A176857.P7536460820200604117
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016248 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (SequenceMachineLib.roundAway ((2 ^ n + 1 : ℚ) * ((2 ^ n + 2 : ℚ) / 6))) ((∑ p ∈ Nat.primeFactors (f1 n).natAbs, Nat.factorization (f1 n).natAbs p : ℕ) : ℤ)

end

end A176857.P7536460820200604117

/-!
# A176859: Sequence defined by the recurrence formula a(n+1)=sum(a(p)*a(n-p)+k,p=0..n)+l for n>=1, with here a(0)=1, a(1)=5, k=-1 and l=0.

The programs for A176859, there is no canonical definition to state claims against.
-/

/-! ## A176859.P4634571164078706458

`A316774(∑[10^n])-n`
-/

namespace A176859.P4634571164078706458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316774 (∑ j ∈ Finset.range (n + 1), f1 j) - (n : ℤ)

end

end A176859.P4634571164078706458

/-!
# A176864: Numbers k such that A053186(k) is prime.

The programs for A176864, the canonical program `A176864.P6691509707204081848` is in `Seq.B001.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176864 has offset 1).

The definition of A176864 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176864.P9636630254549638192

`eq[1, A003415(n-floor(sqrt(n))²)]`
-/

namespace A176864.P9636630254549638192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 (n - Nat.sqrt n ^ 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176864.P9636630254549638192

namespace A176864

/-- `eq[1, A003415(n-floor(sqrt(n))²)]` -/
def P9636630254549638192.Spec : Prop :=
  ∀ n, (P9636630254549638192.a n : ℤ) = A176864 (n + 1)

end A176864

/-! ## A176864.P6691509707204081848

`eq[1, A032741(n-floor(sqrt(n))²)]`

The canonical program, it is in `Seq.B001.C005`.
-/

namespace A176864

/-- `eq[1, A032741(n-floor(sqrt(n))²)]` -/
def P6691509707204081848.Spec : Prop :=
  ∀ n, (P6691509707204081848.a n : ℤ) = A176864 (n + 1)

theorem P6691509707204081848.correct : P6691509707204081848.Spec := by
  intro n
  simp only [A176864, Nat.add_sub_cancel]

end A176864

/-! ## A176864.P994692636189756443

`eq[1, A115120(n-A000196(n)²)]`
-/

namespace A176864.P994692636189756443
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115120 ((n : ℤ) - A000196 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176864.P994692636189756443

namespace A176864

/-- `eq[1, A115120(n-A000196(n)²)]` -/
def P994692636189756443.Spec : Prop :=
  ∀ n, (P994692636189756443.a n : ℤ) = A176864 (n + 1)

end A176864

/-! ## A176864.P11301518741476458135

`eq[1, A105700(A071797(n+1)-1)]`
-/

namespace A176864.P11301518741476458135
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A071797 (n + 1) - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176864.P11301518741476458135

namespace A176864

/-- `eq[1, A105700(A071797(n+1)-1)]` -/
def P11301518741476458135.Spec : Prop :=
  ∀ n, (P11301518741476458135.a n : ℤ) = A176864 (n + 1)

end A176864

/-! ## A176864.P4304237571231178829

`eq[2, A000005(A053186(n)+A010052(n))]`
-/

namespace A176864.P4304237571231178829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A053186 n + A010052 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176864.P4304237571231178829

namespace A176864

/-- `eq[2, A000005(A053186(n)+A010052(n))]` -/
def P4304237571231178829.Spec : Prop :=
  ∀ n, (P4304237571231178829.a n : ℤ) = A176864 (n + 1)

end A176864

/-! ## A176864.P2082303701881879593

`eq[A053186(n+1), A056896(A053186(n)+1)]+1`
-/

namespace A176864.P2082303701881879593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053186 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056896 (A053186 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A176864.P2082303701881879593

namespace A176864

/-- `eq[A053186(n+1), A056896(A053186(n)+1)]+1` -/
def P2082303701881879593.Spec : Prop :=
  ∀ n, (P2082303701881879593.a n : ℤ) = A176864 (n + 1)

end A176864

/-! ## A176864.P10653092493965613522

`eq[2, A074206(A053186(n)²)]`
-/

namespace A176864.P10653092493965613522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A053186 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176864.P10653092493965613522

namespace A176864

/-- `eq[2, A074206(A053186(n)²)]` -/
def P10653092493965613522.Spec : Prop :=
  ∀ n, (P10653092493965613522.a n : ℤ) = A176864 (n + 1)

end A176864

/-! ## A176864.P14746577611852266207

`eq[A007920(A053186(n)), A055671(2*n)]`
-/

namespace A176864.P14746577611852266207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A053186 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055671 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176864.P14746577611852266207

namespace A176864

/-- `eq[A007920(A053186(n)), A055671(2*n)]` -/
def P14746577611852266207.Spec : Prop :=
  ∀ n, (P14746577611852266207.a n : ℤ) = A176864 (n + 1)

end A176864

/-! ## A176864.P13076767092590207537

`eq[2, A211110(A053186(n)²)]`
-/

namespace A176864.P13076767092590207537
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211110 (A053186 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176864.P13076767092590207537

namespace A176864

/-- `eq[2, A211110(A053186(n)²)]` -/
def P13076767092590207537.Spec : Prop :=
  ∀ n, (P13076767092590207537.a n : ℤ) = A176864 (n + 1)

end A176864

/-! ## A176864.P13153888026293333596

`eq[2, A284345(A053186(n)²)]`
-/

namespace A176864.P13153888026293333596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A284345 (A053186 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176864.P13153888026293333596

namespace A176864

/-- `eq[2, A284345(A053186(n)²)]` -/
def P13153888026293333596.Spec : Prop :=
  ∀ n, (P13153888026293333596.a n : ℤ) = A176864 (n + 1)

end A176864

/-!
# A176865: Numbers n such that n-LargestCube is prime, (LargestCube <= n).

The programs for A176865, the canonical program `A176865.P3555741230070737167` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176865 has offset 1).

The definition of A176865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176865.P3555741230070737167

`eq[0, A007920(A055400(n))]`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176865

/-- `eq[0, A007920(A055400(n))]` -/
def P3555741230070737167.Spec : Prop :=
  ∀ n, (P3555741230070737167.a n : ℤ) = A176865 (n + 1)

theorem P3555741230070737167.correct : P3555741230070737167.Spec := by
  intro n
  simp only [A176865, Nat.add_sub_cancel]

end A176865

/-! ## A176865.P10483731692296305938

`eq[A000038(n), A325142(A055400(n))]`
-/

namespace A176865.P10483731692296305938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325142 (A055400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176865.P10483731692296305938

namespace A176865

/-- `eq[A000038(n), A325142(A055400(n))]` -/
def P10483731692296305938.Spec : Prop :=
  ∀ n, (P10483731692296305938.a n : ℤ) = A176865 (n + 1)

end A176865

/-! ## A176865.P5383789609755284759

`eq[2, A077462(A055400(n))%A061925(n)]`
-/

namespace A176865.P5383789609755284759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A077462 (A055400 n).toNat) (A061925 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176865.P5383789609755284759

namespace A176865

/-- `eq[2, A077462(A055400(n))%A061925(n)]` -/
def P5383789609755284759.Spec : Prop :=
  ∀ n, (P5383789609755284759.a n : ℤ) = A176865 (n + 1)

end A176865

/-! ## A176865.P468785455897322060

`eq[2, A077462(A055400(n))]%(2*A112777(n+1))`
-/

namespace A176865.P468785455897322060
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077462 (A055400 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℤ) (2 * A112777 (n + 1))

end

end A176865.P468785455897322060

namespace A176865

/-- `eq[2, A077462(A055400(n))]%(2*A112777(n+1))` -/
def P468785455897322060.Spec : Prop :=
  ∀ n, P468785455897322060.a n = A176865 (n + 1)

end A176865

/-! ## A176865.P2505893346222169055

`eq[2, A074206(A055400(n)²)]`
-/

namespace A176865.P2505893346222169055
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074206 (A055400 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176865.P2505893346222169055

namespace A176865

/-- `eq[2, A074206(A055400(n)²)]` -/
def P2505893346222169055.Spec : Prop :=
  ∀ n, (P2505893346222169055.a n : ℤ) = A176865 (n + 1)

end A176865

/-! ## A176865.P2527686587051756969

`eq[2, A032741(A055400(n)²)]`
-/

namespace A176865.P2527686587051756969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A055400 n ^ 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176865.P2527686587051756969

namespace A176865

/-- `eq[2, A032741(A055400(n)²)]` -/
def P2527686587051756969.Spec : Prop :=
  ∀ n, (P2527686587051756969.a n : ℤ) = A176865 (n + 1)

end A176865

/-!
# A176866: The number of odd numbers that require n Collatz (3x+1) iterations to reach 1.

The programs for A176866, there is no canonical definition to state claims against.
-/

/-! ## A176866.P10870165317183159733

`A221474(lt[A221474(ceil(n/2)), 2])`
-/

namespace A176866.P10870165317183159733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221474 ⌈(n : ℚ) / 2⌉.toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221474 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A176866.P10870165317183159733

/-! ## A176866.P13959152131532891677

`A004275(A221474(A055645(n)))`
-/

namespace A176866.P13959152131532891677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A221474 (A055645 n).toNat).toNat

end

end A176866.P13959152131532891677

/-! ## A176866.P12929337695380180276

`A004275(A221474(n))%p?[A007318(n)]`
-/

namespace A176866.P12929337695380180276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004275 (A221474 n).toNat) (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A176866.P12929337695380180276

/-! ## A176866.P4964075430469667603

`A004275(A221474(n)%A055161(n+2))`
-/

namespace A176866.P4964075430469667603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (Int.tmod (A221474 n) (A055161 (n + 2))).toNat

end

end A176866.P4964075430469667603

/-! ## A176866.P11728559765380111558

`A321936(A336838(n+1))+A221474(n)`
-/

namespace A176866.P11728559765380111558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321936 (A336838 (n + 1)).toNat + A221474 n

end

end A176866.P11728559765380111558

/-!
# A176867: Least odd number that requires n Collatz (3x+1) iterations to reach 1, or zero if there is no such number.

The programs for A176867, there is no canonical definition to state claims against.
-/

/-! ## A176867.P4002505123716984421

`A176868(A004907(n+1))%A050076(n+2)`
-/

namespace A176867.P4002505123716984421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A176868 (A004907 (n + 1)).toNat) (A050076 (n + 2))

end

end A176867.P4002505123716984421

/-!
# A176868: Greatest odd number that requires n Collatz (3x+1) iterations to reach 1, or zero if there is no such number.

The programs for A176868, there is no canonical definition to state claims against.
-/

/-! ## A176868.P6357745453275209330

`A092808(n)*A354354(A000667(n))`
-/

namespace A176868.P6357745453275209330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 n * A354354 (A000667 n).toNat

end

end A176868.P6357745453275209330

/-! ## A176868.P9311523951328452887

`A092808(n)*A354354(A002212(n))`
-/

namespace A176868.P9311523951328452887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092808 n * A354354 (A002212 n).toNat

end

end A176868.P9311523951328452887

/-! ## A176868.P3666327164131935193

`A092808(n)%A282738(A130583(n))`
-/

namespace A176868.P3666327164131935193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092808 n) (A282738 (A130583 n).toNat)

end

end A176868.P3666327164131935193

/-! ## A176868.P12712419204244451079

`A145800(A255138(n))%A255138(n)`
-/

namespace A176868.P12712419204244451079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A145800 (A255138 n).toNat) (A255138 n)

end

end A176868.P12712419204244451079

/-!
# A176869: Numbers that are the maximum value attained by the Collatz (3x+1) iteration of some odd number.

The programs for A176869, there is no canonical definition to state claims against.
-/

/-! ## A176869.P17470668678931001253

`record[gcd(12*n+4, A025586(4*n+1))]`
-/

namespace A176869.P17470668678931001253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (12 * n + 4 : ℤ) (A025586 (4 * n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176869.P17470668678931001253

/-! ## A176869.P3628704068280103223

`A025586(A375937(n+1))`
-/

namespace A176869.P3628704068280103223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (A375937 (n + 1)).toNat

end

end A176869.P3628704068280103223

/-! ## A176869.P2347085818856380554

`A025586(record[gcd(n+1, A087232(n+1))])`
-/

namespace A176869.P2347085818856380554
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A087232 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A176869.P2347085818856380554

/-! ## A176869.P1148598874325495705

`A025586(eq[n+1, A087232(n+1)]+1)`
-/

namespace A176869.P1148598874325495705
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087232 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A176869.P1148598874325495705

/-! ## A176869.P11647821154839606747

`record[A087258(A166304(n+1))]`
-/

namespace A176869.P11647821154839606747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (A166304 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176869.P11647821154839606747

/-! ## A176869.P16738911220758492768

`record[A087258(3*n+4)]%A008810(4*n+3)`
-/

namespace A176869.P16738911220758492768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (3 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) (A008810 (4 * n + 3))

end

end A176869.P16738911220758492768

/-! ## A176869.P3091113125973406192

`record[A087258(A008574(2*n)+A008574(n+1))]`
-/

namespace A176869.P3091113125973406192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087258 (A008574 (2 * n) + A008574 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176869.P3091113125973406192

/-! ## A176869.P1984342308454395457

`A025586(eq[A006370(n), A025586(3*n+1)])`
-/

namespace A176869.P1984342308454395457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025586 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A176869.P1984342308454395457

/-!
# A176870: Prime numbers p such that p-LargestCube is prime, (LargestCube <= p).

The programs for A176870, the canonical program `A176870.P13145073850188262678` is in `Seq.B011.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176870 has offset 1).

The definition of A176870 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176870.P13145073850188262678

`p?[A000040(n+1)*A001222(A104492(n+1))]`

The canonical program, it is in `Seq.B011.C000`.
-/

namespace A176870

/-- `p?[A000040(n+1)*A001222(A104492(n+1))]` -/
def P13145073850188262678.Spec : Prop :=
  ∀ n, P13145073850188262678.a n = A176870 (n + 1)

theorem P13145073850188262678.correct : P13145073850188262678.Spec := by
  intro n
  simp only [A176870, Nat.add_sub_cancel]

end A176870

/-! ## A176870.P9044260093491359922

`p?[A001222(A104492(n+1))*A008578(n+2)]`
-/

namespace A176870.P9044260093491359922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A104492 (n + 1)).toNat * A008578 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176870.P9044260093491359922

namespace A176870

/-- `p?[A001222(A104492(n+1))*A008578(n+2)]` -/
def P9044260093491359922.Spec : Prop :=
  ∀ n, P9044260093491359922.a n = A176870 (n + 1)

end A176870

/-! ## A176870.P16041979509641509134

`p?[(A006093(n+1)+1)*A001222(A104492(n+1))]`
-/

namespace A176870.P16041979509641509134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006093 (n + 1) + 1) * A001222 (A104492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176870.P16041979509641509134

namespace A176870

/-- `p?[(A006093(n+1)+1)*A001222(A104492(n+1))]` -/
def P16041979509641509134.Spec : Prop :=
  ∀ n, P16041979509641509134.a n = A176870 (n + 1)

end A176870

/-! ## A176870.P13651599688731678012

`p?[(A008864(n+1)-1)*A001222(A104492(n+1))]`
-/

namespace A176870.P13651599688731678012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008864 (n + 1) - 1) * A001222 (A104492 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176870.P13651599688731678012

namespace A176870

/-- `p?[(A008864(n+1)-1)*A001222(A104492(n+1))]` -/
def P13651599688731678012.Spec : Prop :=
  ∀ n, P13651599688731678012.a n = A176870 (n + 1)

end A176870

/-! ## A176870.P13604357559516847269

`eq[2, A003415(n)+A003415(A055400(n))]`
-/

namespace A176870.P13604357559516847269
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n + A003415 (A055400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176870.P13604357559516847269

namespace A176870

/-- `eq[2, A003415(n)+A003415(A055400(n))]` -/
def P13604357559516847269.Spec : Prop :=
  ∀ n, (P13604357559516847269.a n : ℤ) = A176870 (n + 1)

end A176870

/-! ## A176870.P2695302947955592185

`eq[1, A032741(n)*A032741(A055400(n))]`
-/

namespace A176870.P2695302947955592185
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 n * A032741 (A055400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176870.P2695302947955592185

namespace A176870

/-- `eq[1, A032741(n)*A032741(A055400(n))]` -/
def P2695302947955592185.Spec : Prop :=
  ∀ n, (P2695302947955592185.a n : ℤ) = A176870 (n + 1)

end A176870

/-! ## A176870.P7611252684224332002

`eq[n*A007920(n), A007920(A055400(n))]`
-/

namespace A176870.P7611252684224332002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A007920 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007920 (A055400 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A176870.P7611252684224332002

namespace A176870

/-- `eq[n*A007920(n), A007920(A055400(n))]` -/
def P7611252684224332002.Spec : Prop :=
  ∀ n, (P7611252684224332002.a n : ℤ) = A176870 (n + 1)

end A176870

/-! ## A176870.P17465228890754094919

`p?[A176865(n+1)]`
-/

namespace A176870.P17465228890754094919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176870.P17465228890754094919

namespace A176870

/-- `p?[A176865(n+1)]` -/
def P17465228890754094919.Spec : Prop :=
  ∀ n, P17465228890754094919.a n = A176870 (n + 1)

end A176870

/-! ## A176870.P4205287726099297635

`filter[A176865(n+1), A010051(#)]`
-/

namespace A176870.P4205287726099297635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A176870.P4205287726099297635

namespace A176870

/-- `filter[A176865(n+1), A010051(#)]` -/
def P4205287726099297635.Spec : Prop :=
  ∀ n, P4205287726099297635.a n = A176870 (n + 1)

end A176870

/-! ## A176870.P1917559153917112331

`filter[A176865(n+1), A080339(#)]`
-/

namespace A176870.P1917559153917112331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A176870.P1917559153917112331

namespace A176870

/-- `filter[A176865(n+1), A080339(#)]` -/
def P1917559153917112331.Spec : Prop :=
  ∀ n, P1917559153917112331.a n = A176870 (n + 1)

end A176870

/-! ## A176870.P17289110547860311694

`filter[A176865(n+1), A080545(#)]`
-/

namespace A176870.P17289110547860311694
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A176870.P17289110547860311694

namespace A176870

/-- `filter[A176865(n+1), A080545(#)]` -/
def P17289110547860311694.Spec : Prop :=
  ∀ n, P17289110547860311694.a n = A176870 (n + 1)

end A176870

/-! ## A176870.P11392804447004071779

`filter[A176865(n+1), A257531(#)]`
-/

namespace A176870.P11392804447004071779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257531 (f1 j).toNat = 1) n)

end

end A176870.P11392804447004071779

namespace A176870

/-- `filter[A176865(n+1), A257531(#)]` -/
def P11392804447004071779.Spec : Prop :=
  ∀ n, P11392804447004071779.a n = A176870 (n + 1)

end A176870

/-! ## A176870.P12122180901351722936

`record[A020639(A176865(root(n+1, 2)²))]`
-/

namespace A176870.P12122180901351722936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A176865 (SequenceMachineLib.roundAway (((n + 1 : ℝ) ^ (1 / (2 : ℝ))) ^ 2)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176870.P12122180901351722936

namespace A176870

/-- `record[A020639(A176865(root(n+1, 2)²))]` -/
def P12122180901351722936.Spec : Prop :=
  ∀ n, P12122180901351722936.a n = A176870 (n + 1)

end A176870

/-! ## A176870.P6799411299930902624

`∩[A000040(n+1), A176865(n+1)]`
-/

namespace A176870.P6799411299930902624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176870.P6799411299930902624

namespace A176870

/-- `∩[A000040(n+1), A176865(n+1)]` -/
def P6799411299930902624.Spec : Prop :=
  ∀ n, (P6799411299930902624.a n : ℤ) = A176870 (n + 1)

end A176870

/-! ## A176870.P11393677457213225604

`∩[A004139(n+1), A176865(n+1)]`
-/

namespace A176870.P11393677457213225604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176870.P11393677457213225604

namespace A176870

/-- `∩[A004139(n+1), A176865(n+1)]` -/
def P11393677457213225604.Spec : Prop :=
  ∀ n, (P11393677457213225604.a n : ℤ) = A176870 (n + 1)

end A176870

/-! ## A176870.P14907910782670567034

`∩[A006005(n+1), A176865(n+1)]`
-/

namespace A176870.P14907910782670567034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176870.P14907910782670567034

namespace A176870

/-- `∩[A006005(n+1), A176865(n+1)]` -/
def P14907910782670567034.Spec : Prop :=
  ∀ n, (P14907910782670567034.a n : ℤ) = A176870 (n + 1)

end A176870

/-! ## A176870.P5784305347083082140

`∩[A008578(n+1), A176865(n+1)]`
-/

namespace A176870.P5784305347083082140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176870.P5784305347083082140

namespace A176870

/-- `∩[A008578(n+1), A176865(n+1)]` -/
def P5784305347083082140.Spec : Prop :=
  ∀ n, (P5784305347083082140.a n : ℤ) = A176870 (n + 1)

end A176870

/-! ## A176870.P9357273492143036881

`∩[A015919(n+1), A176865(n+1)]`
-/

namespace A176870.P9357273492143036881
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176870.P9357273492143036881

namespace A176870

/-- `∩[A015919(n+1), A176865(n+1)]` -/
def P9357273492143036881.Spec : Prop :=
  ∀ n, (P9357273492143036881.a n : ℤ) = A176870 (n + 1)

end A176870

/-! ## A176870.P2508509628000706177

`∩[A033946(n+1), A176865(n+1)]`
-/

namespace A176870.P2508509628000706177
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176870.P2508509628000706177

namespace A176870

/-- `∩[A033946(n+1), A176865(n+1)]` -/
def P2508509628000706177.Spec : Prop :=
  ∀ n, (P2508509628000706177.a n : ℤ) = A176870 (n + 1)

end A176870

/-!
# A176871: Prime numbers p such that p-q^3 is a prime number, (q is a prime number, q^3=LargestCube, LargestCube <= p).

The programs for A176871, there is no canonical definition to state claims against.
-/

/-! ## A176871.P7361847785119333466

`∪[A321891(n+1), p?[A048636(n+2)]]`
-/

namespace A176871.P7361847785119333466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321891 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048636 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (SequenceMachineLib.nth (fun j => (f3 j).toNat.Prime) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176871.P7361847785119333466

/-! ## A176871.P428421151363199801

`∪[A048636(n+1), A097358(A084592(n+1))]`
-/

namespace A176871.P428421151363199801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097358 (A084592 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176871.P428421151363199801

/-! ## A176871.P4308450043499082148

`∪[A048636(n+1), A306926(A088218(n)+n²)]`
-/

namespace A176871.P4308450043499082148
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048636 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306926 (A088218 n + (n ^ 2 : ℤ)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176871.P4308450043499082148

/-!
# A176872: Prime numbers p such that p-LargestSquare is prime and p-LargestCube is also prime, (LargestSquare <= p, LargestCube <= p).

The programs for A176872, the canonical program `A176872.P1535203004164108294` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176872 has offset 1).

The definition of A176872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 160 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176872.P1535203004164108294

`∩[A135932(n+1), A176870(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A176872

/-- `∩[A135932(n+1), A176870(n+1)]` -/
def P1535203004164108294.Spec : Prop :=
  ∀ n, (P1535203004164108294.a n : ℤ) = A176872 (n + 1)

theorem P1535203004164108294.correct : P1535203004164108294.Spec := by
  intro n
  simp only [A176872, Nat.add_sub_cancel]

end A176872

/-! ## A176872.P11148110219466691807

`∩[A135932(n+1), A176865(n+1)]`
-/

namespace A176872.P11148110219466691807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176872.P11148110219466691807

namespace A176872

/-- `∩[A135932(n+1), A176865(n+1)]` -/
def P11148110219466691807.Spec : Prop :=
  ∀ n, (P11148110219466691807.a n : ℤ) = A176872 (n + 1)

end A176872

/-! ## A176872.P1482325984026328731

`∩[A176864(n+1), A176870(n+1)]`
-/

namespace A176872.P1482325984026328731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176870 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176872.P1482325984026328731

namespace A176872

/-- `∩[A176864(n+1), A176870(n+1)]` -/
def P1482325984026328731.Spec : Prop :=
  ∀ n, (P1482325984026328731.a n : ℤ) = A176872 (n + 1)

end A176872

/-! ## A176872.P2142890085693552794

`p?[∩[A176864(n+1), A176865(n+1)]]`
-/

namespace A176872.P2142890085693552794
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176865 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176872.P2142890085693552794

namespace A176872

/-- `p?[∩[A176864(n+1), A176865(n+1)]]` -/
def P2142890085693552794.Spec : Prop :=
  ∀ n, (P2142890085693552794.a n : ℤ) = A176872 (n + 1)

end A176872

/-! ## A176872.P13745722014735950495

`∩[A176870(n+1), A006005(A102821(n))]`
-/

namespace A176872.P13745722014735950495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176870 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A102821 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176872.P13745722014735950495

namespace A176872

/-- `∩[A176870(n+1), A006005(A102821(n))]` -/
def P13745722014735950495.Spec : Prop :=
  ∀ n, (P13745722014735950495.a n : ℤ) = A176872 (n + 1)

end A176872

/-!
# A176873: Smallest possible integer m>=3 such that n is the sum of an m-gonal number and a k-gonal number for some k<=m.

The programs for A176873, there is no canonical definition to state claims against.
-/

/-! ## A176873.P769904951727069148

`A061704(A280908(n))+2`
-/

namespace A176873.P769904951727069148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061704 (A280908 n).toNat + 2

end

end A176873.P769904951727069148

/-! ## A176873.P3571379708123422532

`A136109(A343863(n))+2`
-/

namespace A176873.P3571379708123422532
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136109 (A343863 n).toNat + 2

end

end A176873.P3571379708123422532

/-! ## A176873.P12531492536630968139

`A293959(A215204(n))+3`
-/

namespace A176873.P12531492536630968139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293959 (A215204 n).toNat + 3

end

end A176873.P12531492536630968139

/-! ## A176873.P12137473172356022475

`dr(A206818(A097567(n)!))`
-/

namespace A176873.P12137473172356022475
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A206818 (Nat.factorial (A097567 n).toNat))

end

end A176873.P12137473172356022475

/-! ## A176873.P9763999516660717098

`A049076(A097567(n)!)+2`
-/

namespace A176873.P9763999516660717098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049076 (Nat.factorial (A097567 n).toNat) + 2

end

end A176873.P9763999516660717098

/-!
# A176875: Numbers that are the product of two distinct primes a and b, such that a+b are averages of twin prime pairs.

The programs for A176875, the canonical program `A176875.P2347196242703337271` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176875 has offset 1).

The definition of A176875 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1987 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176875.P15181718192693274988

`∩[A053343(n+1), A292005(n+1)]`
-/

namespace A176875.P15181718192693274988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P15181718192693274988

namespace A176875

/-- `∩[A053343(n+1), A292005(n+1)]` -/
def P15181718192693274988.Spec : Prop :=
  ∀ n, (P15181718192693274988.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P1351299733733488916

`∩[A053343(n+1), A292208(n+1)]`
-/

namespace A176875.P1351299733733488916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P1351299733733488916

namespace A176875

/-- `∩[A053343(n+1), A292208(n+1)]` -/
def P1351299733733488916.Spec : Prop :=
  ∀ n, (P1351299733733488916.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P2347196242703337271

`∩[A053343(n+1), A360758(n+1)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A176875

/-- `∩[A053343(n+1), A360758(n+1)]` -/
def P2347196242703337271.Spec : Prop :=
  ∀ n, (P2347196242703337271.a n : ℤ) = A176875 (n + 1)

theorem P2347196242703337271.correct : P2347196242703337271.Spec := by
  intro n
  simp only [A176875, Nat.add_sub_cancel]

end A176875

/-! ## A176875.P8819203758620851374

`∩[A291318(n+1), A292005(n+1)]`
-/

namespace A176875.P8819203758620851374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291318 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P8819203758620851374

namespace A176875

/-- `∩[A291318(n+1), A292005(n+1)]` -/
def P8819203758620851374.Spec : Prop :=
  ∀ n, (P8819203758620851374.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P8922716663353003237

`∩[A053343(n+1), A290435(n+1)]`
-/

namespace A176875.P8922716663353003237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P8922716663353003237

namespace A176875

/-- `∩[A053343(n+1), A290435(n+1)]` -/
def P8922716663353003237.Spec : Prop :=
  ∀ n, (P8922716663353003237.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P13462005366730019103

`∩[A290435(n+1), A291318(n+1)]`
-/

namespace A176875.P13462005366730019103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291318 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P13462005366730019103

namespace A176875

/-- `∩[A290435(n+1), A291318(n+1)]` -/
def P13462005366730019103.Spec : Prop :=
  ∀ n, (P13462005366730019103.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P17872477320598389825

`∩[A290435(n+1), A292005(n+1)]`
-/

namespace A176875.P17872477320598389825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P17872477320598389825

namespace A176875

/-- `∩[A290435(n+1), A292005(n+1)]` -/
def P17872477320598389825.Spec : Prop :=
  ∀ n, (P17872477320598389825.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P12314055191106268246

`∩[A290435(n+1), A292208(n+1)]`
-/

namespace A176875.P12314055191106268246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292208 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P12314055191106268246

namespace A176875

/-- `∩[A290435(n+1), A292208(n+1)]` -/
def P12314055191106268246.Spec : Prop :=
  ∀ n, (P12314055191106268246.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P334068469674578340

`∩[A290435(n+1), A360758(n+1)]`
-/

namespace A176875.P334068469674578340
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290435 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P334068469674578340

namespace A176875

/-- `∩[A290435(n+1), A360758(n+1)]` -/
def P334068469674578340.Spec : Prop :=
  ∀ n, (P334068469674578340.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P4542875734838888398

`∩[A053343(n+1), A290434(n+1)]`
-/

namespace A176875.P4542875734838888398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P4542875734838888398

namespace A176875

/-- `∩[A053343(n+1), A290434(n+1)]` -/
def P4542875734838888398.Spec : Prop :=
  ∀ n, (P4542875734838888398.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P2425265395619328866

`∩[A290434(n+1), A292005(n+1)]`
-/

namespace A176875.P2425265395619328866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290434 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P2425265395619328866

namespace A176875

/-- `∩[A290434(n+1), A292005(n+1)]` -/
def P2425265395619328866.Spec : Prop :=
  ∀ n, (P2425265395619328866.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P12255866307827566470

`∩[A050530(n+1), A290435(n+1)]`
-/

namespace A176875.P12255866307827566470
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050530 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290435 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P12255866307827566470

namespace A176875

/-- `∩[A050530(n+1), A290435(n+1)]` -/
def P12255866307827566470.Spec : Prop :=
  ∀ n, (P12255866307827566470.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P7625267534846957965

`∩[A108172(n+1), A292005(n+1)]`
-/

namespace A176875.P7625267534846957965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292005 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P7625267534846957965

namespace A176875

/-- `∩[A108172(n+1), A292005(n+1)]` -/
def P7625267534846957965.Spec : Prop :=
  ∀ n, (P7625267534846957965.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P5720867805390131560

`∩[A108172(n+1), A360758(n+1)]`
-/

namespace A176875.P5720867805390131560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108172 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P5720867805390131560

namespace A176875

/-- `∩[A108172(n+1), A360758(n+1)]` -/
def P5720867805390131560.Spec : Prop :=
  ∀ n, (P5720867805390131560.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P11033338102507846911

`∩[A037020(n+1), A053343(n+1)]`
-/

namespace A176875.P11033338102507846911
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037020 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053343 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P11033338102507846911

namespace A176875

/-- `∩[A037020(n+1), A053343(n+1)]` -/
def P11033338102507846911.Spec : Prop :=
  ∀ n, (P11033338102507846911.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P9691880631687435879

`∩[A053343(n+1), A308150(n+1)]`
-/

namespace A176875.P9691880631687435879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053343 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308150 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P9691880631687435879

namespace A176875

/-- `∩[A053343(n+1), A308150(n+1)]` -/
def P9691880631687435879.Spec : Prop :=
  ∀ n, (P9691880631687435879.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P11029853707761882954

`∩[A292005(n+1), A344872(n+1)]`
-/

namespace A176875.P11029853707761882954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344872 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P11029853707761882954

namespace A176875

/-- `∩[A292005(n+1), A344872(n+1)]` -/
def P11029853707761882954.Spec : Prop :=
  ∀ n, (P11029853707761882954.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P8560351970169136232

`∩[A344872(n+1), A360758(n+1)]`
-/

namespace A176875.P8560351970169136232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344872 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360758 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176875.P8560351970169136232

namespace A176875

/-- `∩[A344872(n+1), A360758(n+1)]` -/
def P8560351970169136232.Spec : Prop :=
  ∀ n, (P8560351970169136232.a n : ℤ) = A176875 (n + 1)

end A176875

/-! ## A176875.P16539373653384707337

`filter[A360758(n+3), A354927(#)]`
-/

namespace A176875.P16539373653384707337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360758 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354927 (f1 j).toNat = 1) n)

end

end A176875.P16539373653384707337

namespace A176875

/-- `filter[A360758(n+3), A354927(#)]` -/
def P16539373653384707337.Spec : Prop :=
  ∀ n, P16539373653384707337.a n = A176875 (n + 1)

end A176875

/-!
# A176877: Numbers that are the product of 3 distinct primes a,b and c, such that a+b+c are prime numbers.

The programs for A176877, the canonical program `A176877.P4134747779512177499` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176877 has offset 1).

The definition of A176877 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176877.P17467076659855244118

`filter[A046364(n), A354926(#)]`
-/

namespace A176877.P17467076659855244118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046364 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A176877.P17467076659855244118

namespace A176877

/-- `filter[A046364(n), A354926(#)]` -/
def P17467076659855244118.Spec : Prop :=
  ∀ n, P17467076659855244118.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P12645917125695911703

`filter[A107707(n+1), A008966(#)]`
-/

namespace A176877.P12645917125695911703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A176877.P12645917125695911703

namespace A176877

/-- `filter[A107707(n+1), A008966(#)]` -/
def P12645917125695911703.Spec : Prop :=
  ∀ n, P12645917125695911703.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P4134747779512177499

`filter[A107707(n+1), A181183(#)]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A176877

/-- `filter[A107707(n+1), A181183(#)]` -/
def P4134747779512177499.Spec : Prop :=
  ∀ n, P4134747779512177499.a n = A176877 (n + 1)

theorem P4134747779512177499.correct : P4134747779512177499.Spec := by
  intro n
  simp only [A176877, Nat.add_sub_cancel]

end A176877

/-! ## A176877.P17595793603991522671

`filter[A107707(n+1), A252233(#)]`
-/

namespace A176877.P17595793603991522671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A176877.P17595793603991522671

namespace A176877

/-- `filter[A107707(n+1), A252233(#)]` -/
def P17595793603991522671.Spec : Prop :=
  ∀ n, P17595793603991522671.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P3413596997609951095

`filter[A107707(n+1), A295316(#)]`
-/

namespace A176877.P3413596997609951095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A295316 (f1 j).toNat = 1) n)

end

end A176877.P3413596997609951095

namespace A176877

/-- `filter[A107707(n+1), A295316(#)]` -/
def P3413596997609951095.Spec : Prop :=
  ∀ n, P3413596997609951095.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P120024454048379173

`filter[A107707(n+1), A323154(#)]`
-/

namespace A176877.P120024454048379173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323154 (f1 j).toNat = 1) n)

end

end A176877.P120024454048379173

namespace A176877

/-- `filter[A107707(n+1), A323154(#)]` -/
def P120024454048379173.Spec : Prop :=
  ∀ n, P120024454048379173.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P3061865465507711341

`filter[A107707(n+1), A323239(#)]`
-/

namespace A176877.P3061865465507711341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323239 (f1 j).toNat = 1) n)

end

end A176877.P3061865465507711341

namespace A176877

/-- `filter[A107707(n+1), A323239(#)]` -/
def P3061865465507711341.Spec : Prop :=
  ∀ n, P3061865465507711341.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P6947025128180048698

`filter[A107707(n+1), A353519(#)]`
-/

namespace A176877.P6947025128180048698
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353519 (f1 j).toNat = 1) n)

end

end A176877.P6947025128180048698

namespace A176877

/-- `filter[A107707(n+1), A353519(#)]` -/
def P6947025128180048698.Spec : Prop :=
  ∀ n, P6947025128180048698.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P12200434086477990250

`filter[A107707(n+1), A353559(#)]`
-/

namespace A176877.P12200434086477990250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353559 (f1 j).toNat = 1) n)

end

end A176877.P12200434086477990250

namespace A176877

/-- `filter[A107707(n+1), A353559(#)]` -/
def P12200434086477990250.Spec : Prop :=
  ∀ n, P12200434086477990250.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P12522688279484558755

`filter[A107707(n+1), A353673(#)]`
-/

namespace A176877.P12522688279484558755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353673 (f1 j).toNat = 1) n)

end

end A176877.P12522688279484558755

namespace A176877

/-- `filter[A107707(n+1), A353673(#)]` -/
def P12522688279484558755.Spec : Prop :=
  ∀ n, P12522688279484558755.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P7291315175962331788

`filter[A107707(n+1), A354353(#)]`
-/

namespace A176877.P7291315175962331788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354353 (f1 j).toNat = 1) n)

end

end A176877.P7291315175962331788

namespace A176877

/-- `filter[A107707(n+1), A354353(#)]` -/
def P7291315175962331788.Spec : Prop :=
  ∀ n, P7291315175962331788.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P9477333839588628841

`filter[A107707(n+1), A354819(#)]`
-/

namespace A176877.P9477333839588628841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A176877.P9477333839588628841

namespace A176877

/-- `filter[A107707(n+1), A354819(#)]` -/
def P9477333839588628841.Spec : Prop :=
  ∀ n, P9477333839588628841.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P13028601369468944685

`filter[A107707(n+1), A354926(#)]`
-/

namespace A176877.P13028601369468944685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354926 (f1 j).toNat = 1) n)

end

end A176877.P13028601369468944685

namespace A176877

/-- `filter[A107707(n+1), A354926(#)]` -/
def P13028601369468944685.Spec : Prop :=
  ∀ n, P13028601369468944685.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P819023745012222641

`filter[A107707(n+1), A359473(#)]`
-/

namespace A176877.P819023745012222641
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359473 (f1 j).toNat = 1) n)

end

end A176877.P819023745012222641

namespace A176877

/-- `filter[A107707(n+1), A359473(#)]` -/
def P819023745012222641.Spec : Prop :=
  ∀ n, P819023745012222641.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P6779837929033051975

`filter[A107707(n+1), A359606(#)]`
-/

namespace A176877.P6779837929033051975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359606 (f1 j).toNat = 1) n)

end

end A176877.P6779837929033051975

namespace A176877

/-- `filter[A107707(n+1), A359606(#)]` -/
def P6779837929033051975.Spec : Prop :=
  ∀ n, P6779837929033051975.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P13424589179079484153

`filter[A107707(n+1), A374130(#)]`
-/

namespace A176877.P13424589179079484153
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374130 (f1 j).toNat = 1) n)

end

end A176877.P13424589179079484153

namespace A176877

/-- `filter[A107707(n+1), A374130(#)]` -/
def P13424589179079484153.Spec : Prop :=
  ∀ n, P13424589179079484153.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P14795211875174263528

`filter[A107707(n+1), A374466(#)]`
-/

namespace A176877.P14795211875174263528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107707 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374466 (f1 j).toNat = 1) n)

end

end A176877.P14795211875174263528

namespace A176877

/-- `filter[A107707(n+1), A374466(#)]` -/
def P14795211875174263528.Spec : Prop :=
  ∀ n, P14795211875174263528.a n = A176877 (n + 1)

end A176877

/-! ## A176877.P8806156152290648788

`∩[A007304(n+1), A046364(n)]`
-/

namespace A176877.P8806156152290648788
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046364 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176877.P8806156152290648788

namespace A176877

/-- `∩[A007304(n+1), A046364(n)]` -/
def P8806156152290648788.Spec : Prop :=
  ∀ n, (P8806156152290648788.a n : ℤ) = A176877 (n + 1)

end A176877

/-! ## A176877.P2532813994783349815

`∩[A030626(n+1), A046364(n)]`
-/

namespace A176877.P2532813994783349815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030626 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046364 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176877.P2532813994783349815

namespace A176877

/-- `∩[A030626(n+1), A046364(n)]` -/
def P2532813994783349815.Spec : Prop :=
  ∀ n, (P2532813994783349815.a n : ℤ) = A176877 (n + 1)

end A176877

/-! ## A176877.P10436284069760405496

`∩[A046389(n+1), A046364(n)]`
-/

namespace A176877.P10436284069760405496
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046389 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046364 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176877.P10436284069760405496

namespace A176877

/-- `∩[A046389(n+1), A046364(n)]` -/
def P10436284069760405496.Spec : Prop :=
  ∀ n, (P10436284069760405496.a n : ℤ) = A176877 (n + 1)

end A176877

/-!
# A176878: Numbers that are the product of 3 distinct primes a, b and c, such that a^2 + b^2 + c^2 is prime.

The programs for A176878, there is no canonical definition to state claims against.
-/

/-! ## A176878.P1964042618682166180

`filter[A134616(n+1), A252233(#)]`
-/

namespace A176878.P1964042618682166180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134616 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A252233 (f1 j).toNat = 1) n)

end

end A176878.P1964042618682166180

/-! ## A176878.P7067292712094902667

`∩[A007304(n+1), A114989(n+1)]`
-/

namespace A176878.P7067292712094902667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176878.P7067292712094902667

/-! ## A176878.P4686189252059331513

`∩[A024556(n+1), A114989(n+1)]`
-/

namespace A176878.P4686189252059331513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024556 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176878.P4686189252059331513

/-! ## A176878.P8984541998742782667

`∩[A007304(n+1), A134616(n+1)]`
-/

namespace A176878.P8984541998742782667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007304 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176878.P8984541998742782667

/-! ## A176878.P3020473603338945232

`∩[A030059(n+1), A114989(n+1)]`
-/

namespace A176878.P3020473603338945232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030059 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114989 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176878.P3020473603338945232

/-!
# A176880: Expansion of 1/(1 - 3*x + x^2 - 2*x^3 + 2*x^4).

The programs for A176880, the canonical program `A176880.P12832068732366686169` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176880 has offset 0).

The definition of A176880 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-3x+x^2-2x^3+2x^4))` (program `A176880.P12832068732366686169`, by `A176880.P12832068732366686169.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A176880.P12832068732366686169

`ogf(1/(1-3x+x^2-2x^3+2x^4))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176880

/-- `ogf(1/(1-3x+x^2-2x^3+2x^4))` -/
def P12832068732366686169.Spec : Prop :=
  ∀ n, P12832068732366686169.a n = A176880 n

theorem P12832068732366686169.correct : P12832068732366686169.Spec := by
  intro n
  simp only [A176880]

end A176880

/-! ## A176880.P17361755429235205470

`3*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` with `a(0)=1, a(1)=3, a(2)=8, a(3)=23`
-/

namespace A176880.P17361755429235205470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 8, 23] fun n a =>
  3 * a (n - 1) - a (n - 2) + 2 * a (n - 3) - 2 * a (n - 4)

end

end A176880.P17361755429235205470

namespace A176880

/-- `3*a(n-1)-a(n-2)+2*a(n-3)-2*a(n-4)` -/
def P17361755429235205470.Spec : Prop :=
  ∀ n, P17361755429235205470.a n = A176880 n

end A176880

/-! ## A176880.P4782866577521586938

`A027923(A077828(n))`
-/

namespace A176880.P4782866577521586938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027923 (A077828 n).toNat

end

end A176880.P4782866577521586938

namespace A176880

/-- `A027923(A077828(n))` -/
def P4782866577521586938.Spec : Prop :=
  ∀ n, P4782866577521586938.a n = A176880 n

end A176880

/-!
# A176881: a(n)=p-q for n-th product of 2 distinct primes p and q (q

The programs for A176881, the canonical program `A176881.P171793654492898583` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176881 has offset 1).

The definition of A176881 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 288 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176881.P14324449318385552177

`A046665(A006881(n+1)%A090781(3*(n+1)))`
-/

namespace A176881.P14324449318385552177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (Int.tmod (A006881 (n + 1)) (A090781 (3 * (n + 1)))).toNat

end

end A176881.P14324449318385552177

namespace A176881

/-- `A046665(A006881(n+1)%A090781(3*(n+1)))` -/
def P14324449318385552177.Spec : Prop :=
  ∀ n, P14324449318385552177.a n = A176881 (n + 1)

end A176881

/-! ## A176881.P13762915743746705011

`A046665(∏{p}[A085986(n+1), #])`
-/

namespace A176881.P13762915743746705011
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046665 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A176881.P13762915743746705011

namespace A176881

/-- `A046665(∏{p}[A085986(n+1), #])` -/
def P13762915743746705011.Spec : Prop :=
  ∀ n, P13762915743746705011.a n = A176881 (n + 1)

end A176881

/-! ## A176881.P12830195401413966063

`A049087(∏{p}[A085986(n+1), #])`
-/

namespace A176881.P12830195401413966063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A176881.P12830195401413966063

namespace A176881

/-- `A049087(∏{p}[A085986(n+1), #])` -/
def P12830195401413966063.Spec : Prop :=
  ∀ n, P12830195401413966063.a n = A176881 (n + 1)

end A176881

/-! ## A176881.P11966203844485194095

`A056737(∏{p}[A085986(n+1), #])`
-/

namespace A176881.P11966203844485194095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085986 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (∏ p ∈ Nat.primeFactors (f1 n).natAbs, p)

end

end A176881.P11966203844485194095

namespace A176881

/-- `A056737(∏{p}[A085986(n+1), #])` -/
def P11966203844485194095.Spec : Prop :=
  ∀ n, P11966203844485194095.a n = A176881 (n + 1)

end A176881

/-! ## A176881.P171793654492898583

`∑{p}[A085986(n+1), A070647(n+1)-#]`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A176881

/-- `∑{p}[A085986(n+1), A070647(n+1)-#]` -/
def P171793654492898583.Spec : Prop :=
  ∀ n, P171793654492898583.a n = A176881 (n + 1)

theorem P171793654492898583.correct : P171793654492898583.Spec := by
  intro n
  simp only [A176881, Nat.add_sub_cancel]

end A176881

/-! ## A176881.P11662300605808679002

`A070647(n+1)-A020639(A006881(n+1)*A070647(n+1))`
-/

namespace A176881.P11662300605808679002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070647 (n + 1) - A020639 (A006881 (n + 1) * A070647 (n + 1)).toNat

end

end A176881.P11662300605808679002

namespace A176881

/-- `A070647(n+1)-A020639(A006881(n+1)*A070647(n+1))` -/
def P11662300605808679002.Spec : Prop :=
  ∀ n, P11662300605808679002.a n = A176881 (n + 1)

end A176881

/-! ## A176881.P646718592460523139

`A070647(n+1)-A020639(A085986(n+1))`
-/

namespace A176881.P646718592460523139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070647 (n + 1) - A020639 (A085986 (n + 1)).toNat

end

end A176881.P646718592460523139

namespace A176881

/-- `A070647(n+1)-A020639(A085986(n+1))` -/
def P646718592460523139.Spec : Prop :=
  ∀ n, P646718592460523139.a n = A176881 (n + 1)

end A176881

/-! ## A176881.P14304742081183750845

`A006530(A085986(n+1))-A096916(n+1)`
-/

namespace A176881.P14304742081183750845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A085986 (n + 1)).toNat - A096916 (n + 1)

end

end A176881.P14304742081183750845

namespace A176881

/-- `A006530(A085986(n+1))-A096916(n+1)` -/
def P14304742081183750845.Spec : Prop :=
  ∀ n, P14304742081183750845.a n = A176881 (n + 1)

end A176881

/-! ## A176881.P18070935371190843788

`A049087(A085986(n+1))`
-/

namespace A176881.P18070935371190843788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049087 (A085986 (n + 1)).toNat

end

end A176881.P18070935371190843788

namespace A176881

/-- `A049087(A085986(n+1))` -/
def P18070935371190843788.Spec : Prop :=
  ∀ n, P18070935371190843788.a n = A176881 (n + 1)

end A176881

/-! ## A176881.P6149178757506595351

`A081060(A006881(n+1)²)`
-/

namespace A176881.P6149178757506595351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081060 (A006881 (n + 1) ^ 2).toNat

end

end A176881.P6149178757506595351

namespace A176881

/-- `A081060(A006881(n+1)²)` -/
def P6149178757506595351.Spec : Prop :=
  ∀ n, P6149178757506595351.a n = A176881 (n + 1)

end A176881

/-!
# A176882: Primes p with at least one decimal digit 1 that remain prime after omitting all 1's from p.

The programs for A176882, there is no canonical definition to state claims against.
-/

/-! ## A176882.P6539617666431156980

`A272403(A032555(n+1))`
-/

namespace A176882.P6539617666431156980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272403 (A032555 (n + 1)).toNat

end

end A176882.P6539617666431156980

/-! ## A176882.P2694990285893657076

`A272403(A032559(n+1))`
-/

namespace A176882.P2694990285893657076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272403 (A032559 (n + 1)).toNat

end

end A176882.P2694990285893657076

/-! ## A176882.P1062794091835722303

`A272403(A077739(n+1))`
-/

namespace A176882.P1062794091835722303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272403 (A077739 (n + 1)).toNat

end

end A176882.P1062794091835722303

/-! ## A176882.P7617009495314843362

`A272403(A078213(n+1))`
-/

namespace A176882.P7617009495314843362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272403 (A078213 (n + 1)).toNat

end

end A176882.P7617009495314843362

/-! ## A176882.P2200578737757554545

`A272403(A082217(n+1))`
-/

namespace A176882.P2200578737757554545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272403 (A082217 (n + 1)).toNat

end

end A176882.P2200578737757554545

/-!
# A176883: Sum of distances of numbers between successive powers of 2 (beginning with 2^1) to previous numbers with same number of prime factors, repetitions included. See example.

The programs for A176883, there is no canonical definition to state claims against.
-/

/-! ## A176883.P16384168259458304158

`A117967(A331157(n))+A023758(n+1)`
-/

namespace A176883.P16384168259458304158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117967 (A331157 n).toNat + A023758 (n + 1)

end

end A176883.P16384168259458304158

/-!
# A176886: Number of ways to place 6 nonattacking bishops on an n X n board.

The programs for A176886, there is no canonical definition to state claims against.
-/

/-! ## A176886.P13154321434681781462

`A296129(A076865(n+1))`
-/

namespace A176886.P13154321434681781462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A296129 (A076865 (n + 1)).toNat

end

end A176886.P13154321434681781462

/-!
# A176887: Let A001358(n) = prime(m)*prime(k). Then a(n) = abs(prime(m)*k - prime(k)*m).

The programs for A176887, there is no canonical definition to state claims against.
-/

/-! ## A176887.P15074547519373681368

`xor(A160976(n+1), A242451(A077168(n)))`
-/

namespace A176887.P15074547519373681368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A160976 (n + 1)) (A242451 (A077168 n).toNat)

end

end A176887.P15074547519373681368

/-! ## A176887.P18010216437608865654

`xor(A161030(n+1), A242451(A077168(n)))`
-/

namespace A176887.P18010216437608865654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A161030 (n + 1)) (A242451 (A077168 n).toNat)

end

end A176887.P18010216437608865654

/-! ## A176887.P17925658968522919665

`xor(A161081(n+1), A242451(A077168(n)))`
-/

namespace A176887.P17925658968522919665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A161081 (n + 1)) (A242451 (A077168 n).toNat)

end

end A176887.P17925658968522919665

/-! ## A176887.P7264105364335335860

`A113520(A317306(n+1))%A271518(3*n)`
-/

namespace A176887.P7264105364335335860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A113520 (A317306 (n + 1)).toNat) (A271518 (3 * n))

end

end A176887.P7264105364335335860

/-! ## A176887.P1177416269187513517

`A152607(A033638(n))%A271518(3*n)`
-/

namespace A176887.P1177416269187513517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A152607 (A033638 n).toNat) (A271518 (3 * n))

end

end A176887.P1177416269187513517

/-!
# A176888: Unsafe primes minus 1.

The programs for A176888, the canonical program `A176888.P9111566822716569314` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176888 has offset 1).

The definition of A176888 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A059456, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176888.P9111566822716569314

`A059456(n+1)-1`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A176888

/-- `A059456(n+1)-1` -/
def P9111566822716569314.Spec : Prop :=
  ∀ n, P9111566822716569314.a n = A176888 (n + 1)

theorem P9111566822716569314.correct : P9111566822716569314.Spec := by
  intro n
  simp only [A176888, Nat.add_sub_cancel]

end A176888

/-! ## A176888.P13776109120401137012

`∪[A059453(n+1), A059500(n+1)]-1`
-/

namespace A176888.P13776109120401137012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059453 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059500 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A176888.P13776109120401137012

namespace A176888

/-- `∪[A059453(n+1), A059500(n+1)]-1` -/
def P13776109120401137012.Spec : Prop :=
  ∀ n, P13776109120401137012.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P14810897309700733475

`∪[A060254(n+1), A274589(n+1)]-1`
-/

namespace A176888.P14810897309700733475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060254 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274589 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A176888.P14810897309700733475

namespace A176888

/-- `∪[A060254(n+1), A274589(n+1)]-1` -/
def P14810897309700733475.Spec : Prop :=
  ∀ n, P14810897309700733475.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P11204747505011895816

`∪[A176902(n+1), A274589(n+1)]-1`
-/

namespace A176888.P11204747505011895816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274589 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1

end

end A176888.P11204747505011895816

namespace A176888

/-- `∪[A176902(n+1), A274589(n+1)]-1` -/
def P11204747505011895816.Spec : Prop :=
  ∀ n, P11204747505011895816.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P16516635375456709792

`A321800(A137564(n))+A059456(n+1)`
-/

namespace A176888.P16516635375456709792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A137564 n).toNat + A059456 (n + 1)

end

end A176888.P16516635375456709792

namespace A176888

/-- `A321800(A137564(n))+A059456(n+1)` -/
def P16516635375456709792.Spec : Prop :=
  ∀ n, P16516635375456709792.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P16823992300507880445

`A321800(A227362(n))+A059456(n+1)`
-/

namespace A176888.P16823992300507880445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A227362 n).toNat + A059456 (n + 1)

end

end A176888.P16823992300507880445

namespace A176888

/-- `A321800(A227362(n))+A059456(n+1)` -/
def P16823992300507880445.Spec : Prop :=
  ∀ n, P16823992300507880445.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P11451842672876532142

`A321800(A332550(n))+A059456(n+1)`
-/

namespace A176888.P11451842672876532142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (A332550 n).toNat + A059456 (n + 1)

end

end A176888.P11451842672876532142

namespace A176888

/-- `A321800(A332550(n))+A059456(n+1)` -/
def P11451842672876532142.Spec : Prop :=
  ∀ n, P11451842672876532142.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P9363771671659631819

`A000010(A059456(n+1))`
-/

namespace A176888.P9363771671659631819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A059456 (n + 1)).toNat

end

end A176888.P9363771671659631819

namespace A176888

/-- `A000010(A059456(n+1))` -/
def P9363771671659631819.Spec : Prop :=
  ∀ n, P9363771671659631819.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P4972983923667192996

`A321800(eq[1, A321800(n)²])+A059456(n+1)`
-/

namespace A176888.P4972983923667192996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321800 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n) + A059456 (n + 1)

end

end A176888.P4972983923667192996

namespace A176888

/-- `A321800(eq[1, A321800(n)²])+A059456(n+1)` -/
def P4972983923667192996.Spec : Prop :=
  ∀ n, P4972983923667192996.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P8800725293567134200

`eq[1, A292936(n+1)]`
-/

namespace A176888.P8800725293567134200
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A176888.P8800725293567134200

namespace A176888

/-- `eq[1, A292936(n+1)]` -/
def P8800725293567134200.Spec : Prop :=
  ∀ n, (P8800725293567134200.a n : ℤ) = A176888 (n + 1)

end A176888

/-! ## A176888.P5070815943535543283

`record[A020639(A016726(n+2))-1]`
-/

namespace A176888.P5070815943535543283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A016726 (n + 2)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176888.P5070815943535543283

namespace A176888

/-- `record[A020639(A016726(n+2))-1]` -/
def P5070815943535543283.Spec : Prop :=
  ∀ n, P5070815943535543283.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P1879399634249899422

`∩[A006093(n+1), A173672(n+1)]`
-/

namespace A176888.P1879399634249899422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173672 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176888.P1879399634249899422

namespace A176888

/-- `∩[A006093(n+1), A173672(n+1)]` -/
def P1879399634249899422.Spec : Prop :=
  ∀ n, (P1879399634249899422.a n : ℤ) = A176888 (n + 1)

end A176888

/-! ## A176888.P1057996447583749521

`p?[comp[A088707(n+1)]]-1`
-/

namespace A176888.P1057996447583749521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A176888.P1057996447583749521

namespace A176888

/-- `p?[comp[A088707(n+1)]]-1` -/
def P1057996447583749521.Spec : Prop :=
  ∀ n, P1057996447583749521.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P6929568044237332577

`∩[A006093(n+1), A100959(n+1)]`
-/

namespace A176888.P6929568044237332577
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176888.P6929568044237332577

namespace A176888

/-- `∩[A006093(n+1), A100959(n+1)]` -/
def P6929568044237332577.Spec : Prop :=
  ∀ n, (P6929568044237332577.a n : ℤ) = A176888 (n + 1)

end A176888

/-! ## A176888.P8978193186089544610

`record[A006530(A350706(n+1))-1]`
-/

namespace A176888.P8978193186089544610
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A350706 (n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176888.P8978193186089544610

namespace A176888

/-- `record[A006530(A350706(n+1))-1]` -/
def P8978193186089544610.Spec : Prop :=
  ∀ n, P8978193186089544610.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P8361721765846861727

`p?[comp[A072055(n+1)]]-1`
-/

namespace A176888.P8361721765846861727
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n) : ℤ) - 1

end

end A176888.P8361721765846861727

namespace A176888

/-- `p?[comp[A072055(n+1)]]-1` -/
def P8361721765846861727.Spec : Prop :=
  ∀ n, P8361721765846861727.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P18217685045157010035

`p?[A156657(n+1)]-1`
-/

namespace A176888.P18217685045157010035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A176888.P18217685045157010035

namespace A176888

/-- `p?[A156657(n+1)]-1` -/
def P18217685045157010035.Spec : Prop :=
  ∀ n, P18217685045157010035.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P9843436956434105602

`A000010(p?[A156657(n+1)])`
-/

namespace A176888.P9843436956434105602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A176888.P9843436956434105602

namespace A176888

/-- `A000010(p?[A156657(n+1)])` -/
def P9843436956434105602.Spec : Prop :=
  ∀ n, P9843436956434105602.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P3767997018771690426

`p?[A156659(n)+n]-1`
-/

namespace A176888.P3767997018771690426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156659 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) - 1

end

end A176888.P3767997018771690426

namespace A176888

/-- `p?[A156659(n)+n]-1` -/
def P3767997018771690426.Spec : Prop :=
  ∀ n, P3767997018771690426.a n = A176888 (n + 1)

end A176888

/-! ## A176888.P706867454948270135

`record[A020639(A179464(2*n+1))-1]`
-/

namespace A176888.P706867454948270135
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A179464 (2 * n + 1)).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176888.P706867454948270135

namespace A176888

/-- `record[A020639(A179464(2*n+1))-1]` -/
def P706867454948270135.Spec : Prop :=
  ∀ n, P706867454948270135.a n = A176888 (n + 1)

end A176888

/-!
# A176889: a(2*k-1)=1, a(2*k)=2*k^2 (definition by T. M. Apostol, see References).

The programs for A176889, the canonical program `A176889.P3165531849558876135` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176889 has offset 1).

The definition of A176889 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176889.P3165531849558876135

`1+((-1)^(n+1)+1)*((n+1)²-2)/4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176889

/-- `1+((-1)^(n+1)+1)*((n+1)²-2)/4` -/
def P3165531849558876135.Spec : Prop :=
  ∀ n, P3165531849558876135.a n = (A176889 (n + 1) : ℚ)

end A176889

/-! ## A176889.P15764216662202014343

`∑[or(1, n)]^(n%2)`
-/

namespace A176889.P15764216662202014343
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ (n % 2)

end

end A176889.P15764216662202014343

namespace A176889

/-- `∑[or(1, n)]^(n%2)` -/
def P15764216662202014343.Spec : Prop :=
  ∀ n, (P15764216662202014343.a n : ℤ) = A176889 (n + 1)

end A176889

/-! ## A176889.P13876726586218294664

`∑[or(1, n)]^and(1, n)`
-/

namespace A176889.P13876726586218294664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) ^ Nat.land 1 n

end

end A176889.P13876726586218294664

namespace A176889

/-- `∑[or(1, n)]^and(1, n)` -/
def P13876726586218294664.Spec : Prop :=
  ∀ n, (P13876726586218294664.a n : ℤ) = A176889 (n + 1)

end A176889

/-! ## A176889.P7242589094727778225

`gcd((n+1)², ∑[or(1, n)])`
-/

namespace A176889.P7242589094727778225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd ((n + 1) ^ 2) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176889.P7242589094727778225

namespace A176889

/-- `gcd((n+1)², ∑[or(1, n)])` -/
def P7242589094727778225.Spec : Prop :=
  ∀ n, (P7242589094727778225.a n : ℤ) = A176889 (n + 1)

end A176889

/-! ## A176889.P11768971826952652746

`((n+1)²/2)^and(1, n)`
-/

namespace A176889.P11768971826952652746
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℚ) / 2) ^ Nat.land 1 n

end

end A176889.P11768971826952652746

namespace A176889

/-- `((n+1)²/2)^and(1, n)` -/
def P11768971826952652746.Spec : Prop :=
  ∀ n, P11768971826952652746.a n = (A176889 (n + 1) : ℚ)

end A176889

/-! ## A176889.P17037930764369663170

`round((lcm(2, n)+1-n)²/2)`
-/

namespace A176889.P17037930764369663170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((Nat.lcm 2 n + 1 : ℤ) - (n : ℤ)) ^ 2 : ℚ) / 2)

end

end A176889.P17037930764369663170

namespace A176889

/-- `round((lcm(2, n)+1-n)²/2)` -/
def P17037930764369663170.Spec : Prop :=
  ∀ n, P17037930764369663170.a n = A176889 (n + 1)

end A176889

/-! ## A176889.P18116265492530918141

`C(floor((n+1)²/2), and(1, n))`
-/

namespace A176889.P18116265492530918141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose ⌊((n + 1) ^ 2 : ℚ) / 2⌋.toNat (Nat.land 1 n)

end

end A176889.P18116265492530918141

namespace A176889

/-- `C(floor((n+1)²/2), and(1, n))` -/
def P18116265492530918141.Spec : Prop :=
  ∀ n, (P18116265492530918141.a n : ℤ) = A176889 (n + 1)

end A176889

/-! ## A176889.P5429324007533451072

`((n+1)²/2)^((n+2)%2)`
-/

namespace A176889.P5429324007533451072
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n + 1) ^ 2 : ℚ) / 2) ^ ((n + 2) % 2)

end

end A176889.P5429324007533451072

namespace A176889

/-- `((n+1)²/2)^((n+2)%2)` -/
def P5429324007533451072.Spec : Prop :=
  ∀ n, P5429324007533451072.a n = (A176889 (n + 1) : ℚ)

end A176889

/-! ## A176889.P6989172963862820062

`ceil((n+1)^(2*and(1, n))/2)`
-/

namespace A176889.P6989172963862820062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((n + 1) ^ (2 * Nat.land 1 n) : ℚ) / 2⌉

end

end A176889.P6989172963862820062

namespace A176889

/-- `ceil((n+1)^(2*and(1, n))/2)` -/
def P6989172963862820062.Spec : Prop :=
  ∀ n, P6989172963862820062.a n = A176889 (n + 1)

end A176889

/-! ## A176889.P6468960663423033204

`round((n+1)^(2*and(1, n))/2)`
-/

namespace A176889.P6468960663423033204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ (2 * Nat.land 1 n) : ℚ) / 2)

end

end A176889.P6468960663423033204

namespace A176889

/-- `round((n+1)^(2*and(1, n))/2)` -/
def P6468960663423033204.Spec : Prop :=
  ∀ n, P6468960663423033204.a n = A176889 (n + 1)

end A176889

/-! ## A176889.P6838947289096718154

`∏{d}[and(2, -2*n), (n+1)/#]`
-/

namespace A176889.P6838947289096718154
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 2 (-(2 * n : ℤ))

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A176889.P6838947289096718154

namespace A176889

/-- `∏{d}[and(2, -2*n), (n+1)/#]` -/
def P6838947289096718154.Spec : Prop :=
  ∀ n, P6838947289096718154.a n = (A176889 (n + 1) : ℚ)

end A176889

/-! ## A176889.P14213989178576324439

`(a(n-2)^3)%(n²+1)` with `a(0)=1, a(1)=2`
-/

namespace A176889.P14213989178576324439
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n a =>
  a (n - 2) ^ 3 % (n ^ 2 + 1)

end

end A176889.P14213989178576324439

namespace A176889

/-- `(a(n-2)^3)%(n²+1)` -/
def P14213989178576324439.Spec : Prop :=
  ∀ n, (P14213989178576324439.a n : ℤ) = A176889 (n + 1)

end A176889

/-! ## A176889.P11637840558469545437

`gcd(and(1, n+1), floor((n+1)²/2))`
-/

namespace A176889.P11637840558469545437
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.land 1 (n + 1) : ℤ) ⌊((n + 1) ^ 2 : ℚ) / 2⌋

end

end A176889.P11637840558469545437

namespace A176889

/-- `gcd(and(1, n+1), floor((n+1)²/2))` -/
def P11637840558469545437.Spec : Prop :=
  ∀ n, (P11637840558469545437.a n : ℤ) = A176889 (n + 1)

end A176889

/-! ## A176889.P4116241902851368098

`∏{d}[2-a(n-1), (n+1)/#]` with `a(0)=0`
-/

namespace A176889.P4116241902851368098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  2 - f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, (n + 1 : ℚ) / (d : ℚ)

end

end A176889.P4116241902851368098

namespace A176889

/-- `∏{d}[2-a(n-1), (n+1)/#]` -/
def P4116241902851368098.Spec : Prop :=
  ∀ n, P4116241902851368098.a n = (A176889 (n + 1) : ℚ)

end A176889

/-! ## A176889.P6618838020995210442

`∑[2*n*and(1, n)-a(n-1)]` with `a(0)=1`
-/

namespace A176889.P6618838020995210442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  (2 * (n * Nat.land 1 n) : ℤ) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A176889.P6618838020995210442

namespace A176889

/-- `∑[2*n*and(1, n)-a(n-1)]` -/
def P6618838020995210442.Spec : Prop :=
  ∀ n, P6618838020995210442.a n = A176889 (n + 1)

end A176889

/-! ## A176889.P3999671680483076287

`∏{p}[gcd(n+1, n-1), (n+1)²/#]`
-/

namespace A176889.P3999671680483076287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) ((n : ℤ) - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), ((n + 1) ^ 2 : ℚ) / (p : ℚ)

end

end A176889.P3999671680483076287

namespace A176889

/-- `∏{p}[gcd(n+1, n-1), (n+1)²/#]` -/
def P3999671680483076287.Spec : Prop :=
  ∀ n, P3999671680483076287.a n = (A176889 (n + 1) : ℚ)

end A176889

/-! ## A176889.P813810946596301142

`floor((n+1)²/(2*a(n-1)))` with `a(0)=1, a(1)=2, a(2)=1`
-/

namespace A176889.P813810946596301142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 1] fun n a =>
  ⌊((n + 1) ^ 2 : ℚ) / (2 * a (n - 1) : ℚ)⌋

end

end A176889.P813810946596301142

namespace A176889

/-- `floor((n+1)²/(2*a(n-1)))` -/
def P813810946596301142.Spec : Prop :=
  ∀ n, P813810946596301142.a n = A176889 (n + 1)

end A176889

/-! ## A176889.P18294348308300413195

`gcd((n+1)^3, ∑[∑[2-a(n-1)]])` with `a(0)=0`
-/

namespace A176889.P18294348308300413195
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f2 =>
  2 - f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd ((n + 1) ^ 3 : ℤ) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A176889.P18294348308300413195

namespace A176889

/-- `gcd((n+1)^3, ∑[∑[2-a(n-1)]])` -/
def P18294348308300413195.Spec : Prop :=
  ∀ n, (P18294348308300413195.a n : ℤ) = A176889 (n + 1)

end A176889

/-! ## A176889.P15647970495152283450

`floor(∑[n]/(a(n-1)-1/(n+1)))` with `a(0)=1`
-/

namespace A176889.P15647970495152283450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / ((a (n - 1) : ℚ) - 1 / (n + 1 : ℚ))⌋

end

end A176889.P15647970495152283450

namespace A176889

/-- `floor(∑[n]/(a(n-1)-1/(n+1)))` -/
def P15647970495152283450.Spec : Prop :=
  ∀ n, P15647970495152283450.a n = A176889 (n + 1)

end A176889

/-!
# A176890: Triangle T(n,k) read by rows. Signed subsequence of A051731.

The programs for A176890, the canonical program `A176890.P508741093252212917` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176890 has offset 1).

The definition of A176890 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176890.P90530551927311481

`floor(A114002(n)!-acot(n))`
-/

namespace A176890.P90530551927311481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.factorial (A114002 n).toNat : ℝ) - SequenceMachineLib.acot (n : ℝ)⌋

end

end A176890.P90530551927311481

namespace A176890

/-- `floor(A114002(n)!-acot(n))` -/
def P90530551927311481.Spec : Prop :=
  ∀ n, P90530551927311481.a n = A176890 (n + 1)

end A176890

/-! ## A176890.P11041528410231888932

`ceil(abs(sin(n)))-A155031(n+1)²`
-/

namespace A176890.P11041528410231888932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ - A155031 (n + 1) ^ 2

end

end A176890.P11041528410231888932

namespace A176890

/-- `ceil(abs(sin(n)))-A155031(n+1)²` -/
def P11041528410231888932.Spec : Prop :=
  ∀ n, P11041528410231888932.a n = A176890 (n + 1)

end A176890

/-! ## A176890.P8624000866921558231

`ceil(A176891(n+1)/∑[4*n-1])`
-/

namespace A176890.P8624000866921558231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (4 * n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A176891 (n + 1) : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)⌉

end

end A176890.P8624000866921558231

namespace A176890

/-- `ceil(A176891(n+1)/∑[4*n-1])` -/
def P8624000866921558231.Spec : Prop :=
  ∀ n, P8624000866921558231.a n = A176890 (n + 1)

end A176890

/-! ## A176890.P4926599998484723186

`A051731(n+1)-(char[C(n, 2)-1]+C(2, n+2))`
-/

namespace A176890.P4926599998484723186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose n 2 : ℤ) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) - (((if ∃ j, f1 j = (n : ℤ) then 1 else 0) + Nat.choose 2 (n + 2) : ℕ) : ℤ)

end

end A176890.P4926599998484723186

namespace A176890

/-- `A051731(n+1)-(char[C(n, 2)-1]+C(2, n+2))` -/
def P4926599998484723186.Spec : Prop :=
  ∀ n, P4926599998484723186.a n = A176890 (n + 1)

end A176890

/-! ## A176890.P508741093252212917

`A057427(n)-abs(A155031(n+1))`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A176890

/-- `A057427(n)-abs(A155031(n+1))` -/
def P508741093252212917.Spec : Prop :=
  ∀ n, P508741093252212917.a n = A176890 (n + 1)

theorem P508741093252212917.correct : P508741093252212917.Spec := by
  intro n
  simp only [A176890, Nat.add_sub_cancel]

end A176890

/-! ## A176890.P18323224538476740764

`ceil(Δ[2/A127108(n)])`
-/

namespace A176890.P18323224538476740764
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (A127108 n : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A176890.P18323224538476740764

namespace A176890

/-- `ceil(Δ[2/A127108(n)])` -/
def P18323224538476740764.Spec : Prop :=
  ∀ n, P18323224538476740764.a n = A176890 (n + 1)

end A176890

/-! ## A176890.P3346039891744013053

`ceil(Δ[acot(n*A127057(n+1))])`
-/

namespace A176890.P3346039891744013053
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.acot ((n : ℤ) * A127057 (n + 1) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈f1 (n + 1) - f1 n⌉

end

end A176890.P3346039891744013053

namespace A176890

/-- `ceil(Δ[acot(n*A127057(n+1))])` -/
def P3346039891744013053.Spec : Prop :=
  ∀ n, P3346039891744013053.a n = A176890 (n + 1)

end A176890

/-! ## A176890.P1837886796724314271

`ceil(abs(sin(n)))-A155029(n+1)`
-/

namespace A176890.P1837886796724314271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈|Real.sin (n : ℝ)|⌉ - A155029 (n + 1)

end

end A176890.P1837886796724314271

namespace A176890

/-- `ceil(abs(sin(n)))-A155029(n+1)` -/
def P1837886796724314271.Spec : Prop :=
  ∀ n, P1837886796724314271.a n = A176890 (n + 1)

end A176890

/-! ## A176890.P8673805324887583252

`A057427(n)-A155029(n+1)`
-/

namespace A176890.P8673805324887583252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n - A155029 (n + 1)

end

end A176890.P8673805324887583252

namespace A176890

/-- `A057427(n)-A155029(n+1)` -/
def P8673805324887583252.Spec : Prop :=
  ∀ n, P8673805324887583252.a n = A176890 (n + 1)

end A176890

/-! ## A176890.P15024672485523983117

`1-(A155029(n+1)+A000007(n))`
-/

namespace A176890.P15024672485523983117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A155029 (n + 1) + A000007 n)

end

end A176890.P15024672485523983117

namespace A176890

/-- `1-(A155029(n+1)+A000007(n))` -/
def P15024672485523983117.Spec : Prop :=
  ∀ n, P15024672485523983117.a n = A176890 (n + 1)

end A176890

/-! ## A176890.P9850493771784098325

`1-A035214(n)*A155029(n+1)`
-/

namespace A176890.P9850493771784098325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A035214 n * A155029 (n + 1)

end

end A176890.P9850493771784098325

namespace A176890

/-- `1-A035214(n)*A155029(n+1)` -/
def P9850493771784098325.Spec : Prop :=
  ∀ n, P9850493771784098325.a n = A176890 (n + 1)

end A176890

/-! ## A176890.P3280279084794733748

`A000040(n+1)%2-A155029(n+1)`
-/

namespace A176890.P3280279084794733748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (n + 1)) 2 - A155029 (n + 1)

end

end A176890.P3280279084794733748

namespace A176890

/-- `A000040(n+1)%2-A155029(n+1)` -/
def P3280279084794733748.Spec : Prop :=
  ∀ n, P3280279084794733748.a n = A176890 (n + 1)

end A176890

/-! ## A176890.P9300245087733582173

`A175992(n+1)-A008683((n+1)²)`
-/

namespace A176890.P9300245087733582173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175992 (n + 1) - A008683 ((n + 1) ^ 2)

end

end A176890.P9300245087733582173

namespace A176890

/-- `A175992(n+1)-A008683((n+1)²)` -/
def P9300245087733582173.Spec : Prop :=
  ∀ n, P9300245087733582173.a n = A176890 (n + 1)

end A176890

/-!
# A176891: Triangle T(n,k) = k if k

The programs for A176891, the canonical program `A176891.P14783800229621870818` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176891 has offset 1).

The definition of A176891 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176891.P14783800229621870818

`floor(sqrt(8*n+1))%2*A127093(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A176891

/-- `floor(sqrt(8*n+1))%2*A127093(n+1)` -/
def P14783800229621870818.Spec : Prop :=
  ∀ n, P14783800229621870818.a n = A176891 (n + 1)

theorem P14783800229621870818.correct : P14783800229621870818.Spec := by
  intro n
  simp only [A176891, Nat.add_sub_cancel]

end A176891

/-! ## A176891.P15985514617487254230

`A127093(Δ[A061885(n)]+n)`
-/

namespace A176891.P15985514617487254230
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061885 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A176891.P15985514617487254230

namespace A176891

/-- `A127093(Δ[A061885(n)]+n)` -/
def P15985514617487254230.Spec : Prop :=
  ∀ n, P15985514617487254230.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P14080394092262735642

`A127093(A127648(n)+1+n)`
-/

namespace A176891.P14080394092262735642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A127648 n + 1 + (n : ℤ)).toNat

end

end A176891.P14080394092262735642

namespace A176891

/-- `A127093(A127648(n)+1+n)` -/
def P14080394092262735642.Spec : Prop :=
  ∀ n, P14080394092262735642.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P6764906033328968054

`A127093(n+1)%A123966(n)`
-/

namespace A176891.P6764906033328968054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A127093 (n + 1)) (A123966 n)

end

end A176891.P6764906033328968054

namespace A176891

/-- `A127093(n+1)%A123966(n)` -/
def P6764906033328968054.Spec : Prop :=
  ∀ n, P6764906033328968054.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P13259075079845699323

`lcm(A079409(n), A127093(n+1))`
-/

namespace A176891.P13259075079845699323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A079409 n) (A127093 (n + 1))

end

end A176891.P13259075079845699323

namespace A176891

/-- `lcm(A079409(n), A127093(n+1))` -/
def P13259075079845699323.Spec : Prop :=
  ∀ n, (P13259075079845699323.a n : ℤ) = A176891 (n + 1)

end A176891

/-! ## A176891.P4874719045076940599

`lcm(A128227(n), A176890(n+1))`
-/

namespace A176891.P4874719045076940599
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A128227 n) (A176890 (n + 1))

end

end A176891.P4874719045076940599

namespace A176891

/-- `lcm(A128227(n), A176890(n+1))` -/
def P4874719045076940599.Spec : Prop :=
  ∀ n, (P4874719045076940599.a n : ℤ) = A176891 (n + 1)

end A176891

/-! ## A176891.P3530712572238171835

`C(A127093(n+1), A051340(n)²)`
-/

namespace A176891.P3530712572238171835
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A127093 (n + 1)).toNat (A051340 n ^ 2).toNat

end

end A176891.P3530712572238171835

namespace A176891

/-- `C(A127093(n+1), A051340(n)²)` -/
def P3530712572238171835.Spec : Prop :=
  ∀ n, (P3530712572238171835.a n : ℤ) = A176891 (n + 1)

end A176891

/-! ## A176891.P10515146163760769665

`char[A245300(n)]*A127093(n+1)`
-/

namespace A176891.P10515146163760769665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245300 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A127093 (n + 1)

end

end A176891.P10515146163760769665

namespace A176891

/-- `char[A245300(n)]*A127093(n+1)` -/
def P10515146163760769665.Spec : Prop :=
  ∀ n, P10515146163760769665.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P4915808206252311477

`A077605(n+1)*A127093(n+1)`
-/

namespace A176891.P4915808206252311477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077605 (n + 1) * A127093 (n + 1)

end

end A176891.P4915808206252311477

namespace A176891

/-- `A077605(n+1)*A127093(n+1)` -/
def P4915808206252311477.Spec : Prop :=
  ∀ n, P4915808206252311477.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P12130195510200558732

`abs(A127093(n+1)*A176890(n+1))`
-/

namespace A176891.P12130195510200558732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A127093 (n + 1) * A176890 (n + 1)|

end

end A176891.P12130195510200558732

namespace A176891

/-- `abs(A127093(n+1)*A176890(n+1))` -/
def P12130195510200558732.Spec : Prop :=
  ∀ n, P12130195510200558732.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P15409036213749219624

`A057427(A010766(n+1)-A057427(n))*A127093(n+1)`
-/

namespace A176891.P15409036213749219624
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A010766 (n + 1) - A057427 n).toNat * A127093 (n + 1)

end

end A176891.P15409036213749219624

namespace A176891

/-- `A057427(A010766(n+1)-A057427(n))*A127093(n+1)` -/
def P15409036213749219624.Spec : Prop :=
  ∀ n, P15409036213749219624.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P12617532271816637967

`A127093(A130296(n+2)+n)`
-/

namespace A176891.P12617532271816637967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (A130296 (n + 2) + (n : ℤ)).toNat

end

end A176891.P12617532271816637967

namespace A176891

/-- `A127093(A130296(n+2)+n)` -/
def P12617532271816637967.Spec : Prop :=
  ∀ n, P12617532271816637967.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P5896663150881227560

`floor(A127093(n+1)^Δ[A002262(n)])`
-/

namespace A176891.P5896663150881227560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A127093 (n + 1) : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)⌋

end

end A176891.P5896663150881227560

namespace A176891

/-- `floor(A127093(n+1)^Δ[A002262(n)])` -/
def P5896663150881227560.Spec : Prop :=
  ∀ n, P5896663150881227560.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P18196476566791648242

`A127093(Δ[A057944(n)+A000124(n)])`
-/

namespace A176891.P18196476566791648242
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A000124 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (f1 (n + 1) - f1 n).toNat

end

end A176891.P18196476566791648242

namespace A176891

/-- `A127093(Δ[A057944(n)+A000124(n)])` -/
def P18196476566791648242.Spec : Prop :=
  ∀ n, P18196476566791648242.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P4346161073469431742

`A127093(Δ[A057944(n)+A000217(n)])`
-/

namespace A176891.P4346161073469431742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057944 n + A000217 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (f1 (n + 1) - f1 n).toNat

end

end A176891.P4346161073469431742

namespace A176891

/-- `A127093(Δ[A057944(n)+A000217(n)])` -/
def P4346161073469431742.Spec : Prop :=
  ∀ n, P4346161073469431742.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P8504198842879569014

`A127093(n+1)*A307039(n)`
-/

namespace A176891.P8504198842879569014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 (n + 1) * A307039 n

end

end A176891.P8504198842879569014

namespace A176891

/-- `A127093(n+1)*A307039(n)` -/
def P8504198842879569014.Spec : Prop :=
  ∀ n, P8504198842879569014.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P9637435942460987121

`A127094(A340507(n)+A278818(n))`
-/

namespace A176891.P9637435942460987121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127094 (A340507 n + A278818 n).toNat

end

end A176891.P9637435942460987121

namespace A176891

/-- `A127094(A340507(n)+A278818(n))` -/
def P9637435942460987121.Spec : Prop :=
  ∀ n, P9637435942460987121.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P2035337255608956715

`A127094(A278818(n))*A307039(n)`
-/

namespace A176891.P2035337255608956715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127094 (A278818 n).toNat * A307039 n

end

end A176891.P2035337255608956715

namespace A176891

/-- `A127094(A278818(n))*A307039(n)` -/
def P2035337255608956715.Spec : Prop :=
  ∀ n, P2035337255608956715.a n = A176891 (n + 1)

end A176891

/-! ## A176891.P10927538603087970923

`A127093(n+1+A127775(n+1)²)`
-/

namespace A176891.P10927538603087970923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127093 ((n + 1 : ℤ) + A127775 (n + 1) ^ 2).toNat

end

end A176891.P10927538603087970923

namespace A176891

/-- `A127093(n+1+A127775(n+1)²)` -/
def P10927538603087970923.Spec : Prop :=
  ∀ n, P10927538603087970923.a n = A176891 (n + 1)

end A176891

/-!
# A176892: Decimal representation of the reverted binary representation of n followed by digits substitution 0->2, 1->3.

The programs for A176892, the canonical program `A176892.P325327665077823368` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176892 has offset 0).

The definition of A176892 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176892.P325327665077823368

`A305989(n)+A002276(A070939(n))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A176892

/-- `A305989(n)+A002276(A070939(n))` -/
def P325327665077823368.Spec : Prop :=
  ∀ n, P325327665077823368.a n = A176892 n

theorem P325327665077823368.correct : P325327665077823368.Spec := by
  intro n
  simp only [A176892]

end A176892

/-! ## A176892.P3982682128204675326

`A032810(A185048(A145341(n+1)))`
-/

namespace A176892.P3982682128204675326
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (A185048 (A145341 (n + 1)).toNat).toNat

end

end A176892.P3982682128204675326

namespace A176892

/-- `A032810(A185048(A145341(n+1)))` -/
def P3982682128204675326.Spec : Prop :=
  ∀ n, P3982682128204675326.a n = A176892 n

end A176892

/-! ## A176892.P1224996250379670651

`A032810(A055944(n)+A035327(n))`
-/

namespace A176892.P1224996250379670651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (A055944 n + A035327 n).toNat

end

end A176892.P1224996250379670651

namespace A176892

/-- `A032810(A055944(n)+A035327(n))` -/
def P1224996250379670651.Spec : Prop :=
  ∀ n, P1224996250379670651.a n = A176892 n

end A176892

/-! ## A176892.P9125037183785925370

`A032810(A145341(n+1)-A057427(n))`
-/

namespace A176892.P9125037183785925370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (A145341 (n + 1) - A057427 n).toNat

end

end A176892.P9125037183785925370

namespace A176892

/-- `A032810(A145341(n+1)-A057427(n))` -/
def P9125037183785925370.Spec : Prop :=
  ∀ n, P9125037183785925370.a n = A176892 n

end A176892

/-! ## A176892.P9295090889568004969

`A032810(xor(A057427(n), A145341(n+1)))`
-/

namespace A176892.P9295090889568004969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (Int.xor (A057427 n) (A145341 (n + 1))).toNat

end

end A176892.P9295090889568004969

namespace A176892

/-- `A032810(xor(A057427(n), A145341(n+1)))` -/
def P9295090889568004969.Spec : Prop :=
  ∀ n, P9295090889568004969.a n = A176892 n

end A176892

/-!
# A176893: a(n) = 2^(number of zeros in binary expansion of n) * 3^(numbers of ones in binary expansion of n).

The programs for A176893, the canonical program `A176893.P2873570301173375857` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176893 has offset 0).

The definition of A176893 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176893.P2873570301173375857

`2^A023416(n)*3^A000120(n)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A176893

/-- `2^A023416(n)*3^A000120(n)` -/
def P2873570301173375857.Spec : Prop :=
  ∀ n, P2873570301173375857.a n = (A176893 n : ℚ)

end A176893

/-! ## A176893.P17143482872119944447

`a(floor(n/2))*a(n%2)` with `a(0)=2, a(1)=3`
-/

namespace A176893.P17143482872119944447
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * a (n % 2)

end

end A176893.P17143482872119944447

namespace A176893

/-- `a(floor(n/2))*a(n%2)` -/
def P17143482872119944447.Spec : Prop :=
  ∀ n, (P17143482872119944447.a n : ℤ) = A176893 n

end A176893

/-! ## A176893.P7296572793283602273

`∏{digits}[A176892(n), #]`
-/

namespace A176893.P7296572793283602273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176892 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A176893.P7296572793283602273

namespace A176893

/-- `∏{digits}[A176892(n), #]` -/
def P7296572793283602273.Spec : Prop :=
  ∀ n, (P7296572793283602273.a n : ℤ) = A176893 n

end A176893

/-! ## A176893.P3374400714491949616

`∏{digits}[A007088(n), #+2]`
-/

namespace A176893.P3374400714491949616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x + 2).prod

end

end A176893.P3374400714491949616

namespace A176893

/-- `∏{digits}[A007088(n), #+2]` -/
def P3374400714491949616.Spec : Prop :=
  ∀ n, (P3374400714491949616.a n : ℤ) = A176893 n

end A176893

/-! ## A176893.P7987121421546785584

`a(floor(n/2))*A020639(3*n)` with `a(0)=2, a(1)=3`
-/

namespace A176893.P7987121421546785584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a ⌊(n : ℚ) / 2⌋.toNat * A020639 (3 * n)

end

end A176893.P7987121421546785584

namespace A176893

/-- `a(floor(n/2))*A020639(3*n)` -/
def P7987121421546785584.Spec : Prop :=
  ∀ n, P7987121421546785584.a n = A176893 n

end A176893

/-! ## A176893.P15998527682732973502

`∏{digits}[A169965(n+1), A000032(#)]`
-/

namespace A176893.P15998527682732973502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A169965 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => A000032 x).prod

end

end A176893.P15998527682732973502

namespace A176893

/-- `∏{digits}[A169965(n+1), A000032(#)]` -/
def P15998527682732973502.Spec : Prop :=
  ∀ n, P15998527682732973502.a n = A176893 n

end A176893

/-! ## A176893.P9299413477445253250

`(A000225(A023416(n))+1)*A048883(n)`
-/

namespace A176893.P9299413477445253250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000225 (A023416 n).toNat + 1) * A048883 n

end

end A176893.P9299413477445253250

namespace A176893

/-- `(A000225(A023416(n))+1)*A048883(n)` -/
def P9299413477445253250.Spec : Prop :=
  ∀ n, P9299413477445253250.a n = A176893 n

end A176893

/-! ## A176893.P14703495872714093747

`A073061(record[or(2, n)])`
-/

namespace A176893.P14703495872714093747
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A176893.P14703495872714093747

namespace A176893

/-- `A073061(record[or(2, n)])` -/
def P14703495872714093747.Spec : Prop :=
  ∀ n, P14703495872714093747.a n = A176893 n

end A176893

/-! ## A176893.P262646375618404589

`A073061(record[xor(2, n)])`
-/

namespace A176893.P262646375618404589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A176893.P262646375618404589

namespace A176893

/-- `A073061(record[xor(2, n)])` -/
def P262646375618404589.Spec : Prop :=
  ∀ n, P262646375618404589.a n = A176893 n

end A176893

/-! ## A176893.P9244125913378625755

`A073061(2*n+1)+C(2, n+2)`
-/

namespace A176893.P9244125913378625755
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (2 * n + 1) + (Nat.choose 2 (n + 2) : ℤ)

end

end A176893.P9244125913378625755

namespace A176893

/-- `A073061(2*n+1)+C(2, n+2)` -/
def P9244125913378625755.Spec : Prop :=
  ∀ n, P9244125913378625755.a n = A176893 n

end A176893

/-! ## A176893.P13265184999670009570

`A073061(record[A004443(n)])`
-/

namespace A176893.P13265184999670009570
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A176893.P13265184999670009570

namespace A176893

/-- `A073061(record[A004443(n)])` -/
def P13265184999670009570.Spec : Prop :=
  ∀ n, P13265184999670009570.a n = A176893 n

end A176893

/-! ## A176893.P16509464001037917229

`A073061(A042964(n+1))`
-/

namespace A176893.P16509464001037917229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A042964 (n + 1)).toNat

end

end A176893.P16509464001037917229

namespace A176893

/-- `A073061(A042964(n+1))` -/
def P16509464001037917229.Spec : Prop :=
  ∀ n, P16509464001037917229.a n = A176893 n

end A176893

/-! ## A176893.P10032568777287954113

`A073061(A047487(n+1))`
-/

namespace A176893.P10032568777287954113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A047487 (n + 1)).toNat

end

end A176893.P10032568777287954113

namespace A176893

/-- `A073061(A047487(n+1))` -/
def P10032568777287954113.Spec : Prop :=
  ∀ n, P10032568777287954113.a n = A176893 n

end A176893

/-! ## A176893.P500882335641765607

`A073061(A053438(n+1))`
-/

namespace A176893.P500882335641765607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A053438 (n + 1)).toNat

end

end A176893.P500882335641765607

namespace A176893

/-- `A073061(A053438(n+1))` -/
def P500882335641765607.Spec : Prop :=
  ∀ n, P500882335641765607.a n = A176893 n

end A176893

/-! ## A176893.P8610776541645219111

`A073061(A004280(n+2))`
-/

namespace A176893.P8610776541645219111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A004280 (n + 2)).toNat

end

end A176893.P8610776541645219111

namespace A176893

/-- `A073061(A004280(n+2))` -/
def P8610776541645219111.Spec : Prop :=
  ∀ n, P8610776541645219111.a n = A176893 n

end A176893

/-! ## A176893.P15536646080137280425

`A073061(A004275(n+1)+1)`
-/

namespace A176893.P15536646080137280425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (A004275 (n + 1) + 1).toNat

end

end A176893.P15536646080137280425

namespace A176893

/-- `A073061(A004275(n+1)+1)` -/
def P15536646080137280425.Spec : Prop :=
  ∀ n, P15536646080137280425.a n = A176893 n

end A176893

/-! ## A176893.P18104246102674588641

`A073061(2*n+1)+A000007(n)`
-/

namespace A176893.P18104246102674588641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (2 * n + 1) + A000007 n

end

end A176893.P18104246102674588641

namespace A176893

/-- `A073061(2*n+1)+A000007(n)` -/
def P18104246102674588641.Spec : Prop :=
  ∀ n, P18104246102674588641.a n = A176893 n

end A176893

/-! ## A176893.P6191959924948146989

`A073061(2*n+1)+val(A073061(n+2), A073061(2*(n+1)))`
-/

namespace A176893.P6191959924948146989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073061 (2 * n + 1) + (SequenceMachineLib.valuation (A073061 (n + 2)).toNat (A073061 (2 * (n + 1))).toNat : ℤ)

end

end A176893.P6191959924948146989

namespace A176893

/-- `A073061(2*n+1)+val(A073061(n+2), A073061(2*(n+1)))` -/
def P6191959924948146989.Spec : Prop :=
  ∀ n, P6191959924948146989.a n = A176893 n

end A176893

/-! ## A176893.P16787179800147321022

`∏{digits}[A176894(n), #]`
-/

namespace A176893.P16787179800147321022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176894 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A176893.P16787179800147321022

namespace A176893

/-- `∏{digits}[A176894(n), #]` -/
def P16787179800147321022.Spec : Prop :=
  ∀ n, (P16787179800147321022.a n : ℤ) = A176893 n

end A176893

/-! ## A176893.P13032811145231034541

`A014682(A073061(2*n+2*n+1))`
-/

namespace A176893.P13032811145231034541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A073061 (2 * n + (2 * n + 1))).toNat

end

end A176893.P13032811145231034541

namespace A176893

/-- `A014682(A073061(2*n+2*n+1))` -/
def P13032811145231034541.Spec : Prop :=
  ∀ n, P13032811145231034541.a n = A176893 n

end A176893

/-!
# A176894: Increase each digit in the binary representation of n by 2.

The programs for A176894, the canonical program `A176894.P5448320031125589196` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176894 has offset 0).

The definition of A176894 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176894.P5448320031125589196

`A007088(n)+A002276(A070939(n))`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A176894

/-- `A007088(n)+A002276(A070939(n))` -/
def P5448320031125589196.Spec : Prop :=
  ∀ n, P5448320031125589196.a n = A176894 n

theorem P5448320031125589196.correct : P5448320031125589196.Spec := by
  intro n
  simp only [A176894]

end A176894

/-! ## A176894.P4208697453885071644

`a(n%2)+10*a(floor(n/2))` with `a(0)=2, a(1)=3`
-/

namespace A176894.P4208697453885071644
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n % 2) + 10 * a ⌊(n : ℚ) / 2⌋.toNat

end

end A176894.P4208697453885071644

namespace A176894

/-- `a(n%2)+10*a(floor(n/2))` -/
def P4208697453885071644.Spec : Prop :=
  ∀ n, (P4208697453885071644.a n : ℤ) = A176894 n

end A176894

/-! ## A176894.P6254244297522579696

`A032810(2*lt[2*n, xor(n, 2*n)]-1-n)`
-/

namespace A176894.P6254244297522579696
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor n (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 ((2 * SequenceMachineLib.nth (fun j => f1 j < f2 j) n : ℤ) - 1 - (n : ℤ)).toNat

end

end A176894.P6254244297522579696

namespace A176894

/-- `A032810(2*lt[2*n, xor(n, 2*n)]-1-n)` -/
def P6254244297522579696.Spec : Prop :=
  ∀ n, P6254244297522579696.a n = A176894 n

end A176894

/-! ## A176894.P9920908895440671523

`A280560(n)+5*(n-2*(floor(n/2)-a(floor(n/2))))` with `a(0)=2, a(1)=3`
-/

namespace A176894.P9920908895440671523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  A280560 n + 5 * ((n : ℤ) - 2 * (⌊(n : ℚ) / 2⌋ - a ⌊(n : ℚ) / 2⌋.toNat))

end

end A176894.P9920908895440671523

namespace A176894

/-- `A280560(n)+5*(n-2*(floor(n/2)-a(floor(n/2))))` -/
def P9920908895440671523.Spec : Prop :=
  ∀ n, P9920908895440671523.a n = A176894 n

end A176894

/-! ## A176894.P13245733705520061108

`A032810(A346303(n+1)-n)`
-/

namespace A176894.P13245733705520061108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032810 (A346303 (n + 1) - (n : ℤ)).toNat

end

end A176894.P13245733705520061108

namespace A176894

/-- `A032810(A346303(n+1)-n)` -/
def P13245733705520061108.Spec : Prop :=
  ∀ n, P13245733705520061108.a n = A176894 n

end A176894

/-! ## A176894.P6675218863725354810

`A007090(A383976(n))`
-/

namespace A176894.P6675218863725354810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A383976 n).toNat

end

end A176894.P6675218863725354810

namespace A176894

/-- `A007090(A383976(n))` -/
def P6675218863725354810.Spec : Prop :=
  ∀ n, P6675218863725354810.a n = A176894 n

end A176894

/-!
# A176895: Period 4: repeat [1, 4, 2, 4].

The programs for A176895, the canonical program `A176895.P17917773392003680816` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176895 has offset 0).

The definition of A176895 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A176895.P17917773392003680816

`4/gcd(n, 4)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A176895

/-- `4/gcd(n, 4)` -/
def P17917773392003680816.Spec : Prop :=
  ∀ n, P17917773392003680816.a n = (A176895 n : ℚ)

end A176895

/-!
# A176896: Semiprimes s such that (s-1)/2 is also semiprime.

The programs for A176896, the canonical program `A176896.P10796723686005354326` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176896 has offset 1).

The definition of A176896 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A111153, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A176896.P10796723686005354326

`2*A111153(n+1)+1`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A176896

/-- `2*A111153(n+1)+1` -/
def P10796723686005354326.Spec : Prop :=
  ∀ n, P10796723686005354326.a n = A176896 (n + 1)

theorem P10796723686005354326.correct : P10796723686005354326.Spec := by
  intro n
  simp only [A176896, Nat.add_sub_cancel]

end A176896

/-! ## A176896.P15107740474180060774

`∩[A001358(n+1), A088707(n+1)+A001358(n+1)]`
-/

namespace A176896.P15107740474180060774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) + A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176896.P15107740474180060774

namespace A176896

/-- `∩[A001358(n+1), A088707(n+1)+A001358(n+1)]` -/
def P15107740474180060774.Spec : Prop :=
  ∀ n, (P15107740474180060774.a n : ℤ) = A176896 (n + 1)

end A176896

/-! ## A176896.P4328864176812278819

`A111153(n+1)+A111153(n+1)+A001221(A000430(n+1))`
-/

namespace A176896.P4328864176812278819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1) + (A111153 (n + 1) + A001221 (A000430 (n + 1)).toNat)

end

end A176896.P4328864176812278819

namespace A176896

/-- `A111153(n+1)+A111153(n+1)+A001221(A000430(n+1))` -/
def P4328864176812278819.Spec : Prop :=
  ∀ n, P4328864176812278819.a n = A176896 (n + 1)

end A176896

/-! ## A176896.P801677978786731901

`A111153(n+1)+A111153(n+1)+A001221(A175256(n+1))`
-/

namespace A176896.P801677978786731901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1) + (A111153 (n + 1) + A001221 (A175256 (n + 1)).toNat)

end

end A176896.P801677978786731901

namespace A176896

/-- `A111153(n+1)+A111153(n+1)+A001221(A175256(n+1))` -/
def P801677978786731901.Spec : Prop :=
  ∀ n, P801677978786731901.a n = A176896 (n + 1)

end A176896

/-! ## A176896.P12600829952468046876

`A111153(n+1)+A111153(n+1)-A008683(A005384(n+1))`
-/

namespace A176896.P12600829952468046876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111153 (n + 1) + (A111153 (n + 1) - A008683 (A005384 (n + 1)).toNat)

end

end A176896.P12600829952468046876

namespace A176896

/-- `A111153(n+1)+A111153(n+1)-A008683(A005384(n+1))` -/
def P12600829952468046876.Spec : Prop :=
  ∀ n, P12600829952468046876.a n = A176896 (n + 1)

end A176896

/-! ## A176896.P7933729031315932974

`A130773(A111153(n+1))`
-/

namespace A176896.P7933729031315932974
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A111153 (n + 1)).toNat

end

end A176896.P7933729031315932974

namespace A176896

/-- `A130773(A111153(n+1))` -/
def P7933729031315932974.Spec : Prop :=
  ∀ n, P7933729031315932974.a n = A176896 (n + 1)

end A176896

/-! ## A176896.P3015383095628046051

`record[A179312(A075818(n+1)+1)]`
-/

namespace A176896.P3015383095628046051
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (A075818 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176896.P3015383095628046051

namespace A176896

/-- `record[A179312(A075818(n+1)+1)]` -/
def P3015383095628046051.Spec : Prop :=
  ∀ n, P3015383095628046051.a n = A176896 (n + 1)

end A176896

/-! ## A176896.P3525729838928369026

`record[A179312(2*A179312(n+4)+1)]`
-/

namespace A176896.P3525729838928369026
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179312 (2 * A179312 (n + 4) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176896.P3525729838928369026

namespace A176896

/-- `record[A179312(2*A179312(n+4)+1)]` -/
def P3525729838928369026.Spec : Prop :=
  ∀ n, P3525729838928369026.a n = A176896 (n + 1)

end A176896

/-! ## A176896.P6955360906705582776

`A023443(∩[2*A088707(n+1), A088707(n+1)])`
-/

namespace A176896.P6955360906705582776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A088707 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n)

end

end A176896.P6955360906705582776

namespace A176896

/-- `A023443(∩[2*A088707(n+1), A088707(n+1)])` -/
def P6955360906705582776.Spec : Prop :=
  ∀ n, P6955360906705582776.a n = A176896 (n + 1)

end A176896

/-! ## A176896.P17140896603604689300

`A008619(4*A111153(n+1))`
-/

namespace A176896.P17140896603604689300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (4 * A111153 (n + 1)).toNat

end

end A176896.P17140896603604689300

namespace A176896

/-- `A008619(4*A111153(n+1))` -/
def P17140896603604689300.Spec : Prop :=
  ∀ n, P17140896603604689300.a n = A176896 (n + 1)

end A176896

/-! ## A176896.P13947879449415258459

`A052938(4*A111153(n+1))`
-/

namespace A176896.P13947879449415258459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052938 (4 * A111153 (n + 1)).toNat

end

end A176896.P13947879449415258459

namespace A176896

/-- `A052938(4*A111153(n+1))` -/
def P13947879449415258459.Spec : Prop :=
  ∀ n, P13947879449415258459.a n = A176896 (n + 1)

end A176896

/-! ## A176896.P6908859281161295402

`∩[A065475(2*A001358(n+1)), A001358(n+1)]`
-/

namespace A176896.P6908859281161295402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (2 * A001358 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A176896.P6908859281161295402

namespace A176896

/-- `∩[A065475(2*A001358(n+1)), A001358(n+1)]` -/
def P6908859281161295402.Spec : Prop :=
  ∀ n, (P6908859281161295402.a n : ℤ) = A176896 (n + 1)

end A176896

/-! ## A176896.P12556763961080996966

`A008620(6*A111153(n+1))`
-/

namespace A176896.P12556763961080996966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008620 (6 * A111153 (n + 1)).toNat

end

end A176896.P12556763961080996966

namespace A176896

/-- `A008620(6*A111153(n+1))` -/
def P12556763961080996966.Spec : Prop :=
  ∀ n, P12556763961080996966.a n = A176896 (n + 1)

end A176896

/-!
# A176897: Primes p such that (p+1)/2 is not a prime.

The programs for A176897, the canonical program `A176897.P17558279640673057551` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A176897 has offset 1).

The definition of A176897 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6059 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A176897.P9009431705453918223

`∪[A006686(n+1), A034849(n+1)]`
-/

namespace A176897.P9009431705453918223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006686 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176897.P9009431705453918223

namespace A176897

/-- `∪[A006686(n+1), A034849(n+1)]` -/
def P9009431705453918223.Spec : Prop :=
  ∀ n, (P9009431705453918223.a n : ℤ) = A176897 (n + 1)

end A176897

/-! ## A176897.P13069533729668469322

`∪[A007352(n+1), A034849(n+1)]`
-/

namespace A176897.P13069533729668469322
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007352 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176897.P13069533729668469322

namespace A176897

/-- `∪[A007352(n+1), A034849(n+1)]` -/
def P13069533729668469322.Spec : Prop :=
  ∀ n, (P13069533729668469322.a n : ℤ) = A176897 (n + 1)

end A176897

/-! ## A176897.P6486196099537027799

`∪[A023291(n+1), A034849(n+1)]`
-/

namespace A176897.P6486196099537027799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023291 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176897.P6486196099537027799

namespace A176897

/-- `∪[A023291(n+1), A034849(n+1)]` -/
def P6486196099537027799.Spec : Prop :=
  ∀ n, (P6486196099537027799.a n : ℤ) = A176897 (n + 1)

end A176897

/-! ## A176897.P703157542966895427

`∪[A037896(n+1), A034849(n+1)]`
-/

namespace A176897.P703157542966895427
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037896 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176897.P703157542966895427

namespace A176897

/-- `∪[A037896(n+1), A034849(n+1)]` -/
def P703157542966895427.Spec : Prop :=
  ∀ n, (P703157542966895427.a n : ℤ) = A176897 (n + 1)

end A176897

/-! ## A176897.P936975681669922963

`∪[A078624(n+1), A034849(n+1)]`
-/

namespace A176897.P936975681669922963
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078624 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034849 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A176897.P936975681669922963

namespace A176897

/-- `∪[A078624(n+1), A034849(n+1)]` -/
def P936975681669922963.Spec : Prop :=
  ∀ n, (P936975681669922963.a n : ℤ) = A176897 (n + 1)

end A176897

/-! ## A176897.P17558279640673057551

`p?[A064911(n+1)+n]`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A176897

/-- `p?[A064911(n+1)+n]` -/
def P17558279640673057551.Spec : Prop :=
  ∀ n, P17558279640673057551.a n = A176897 (n + 1)

theorem P17558279640673057551.correct : P17558279640673057551.Spec := by
  intro n
  simp only [A176897, Nat.add_sub_cancel]

end A176897

/-! ## A176897.P10593055829743101877

`eq[1, A278500(n+1)]+2`
-/

namespace A176897.P10593055829743101877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278500 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A176897.P10593055829743101877

namespace A176897

/-- `eq[1, A278500(n+1)]+2` -/
def P10593055829743101877.Spec : Prop :=
  ∀ n, (P10593055829743101877.a n : ℤ) = A176897 (n + 1)

end A176897

/-! ## A176897.P17948182676032679152

`p?[Δ[A101203(n)]+n]`
-/

namespace A176897.P17948182676032679152
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101203 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176897.P17948182676032679152

namespace A176897

/-- `p?[Δ[A101203(n)]+n]` -/
def P17948182676032679152.Spec : Prop :=
  ∀ n, P17948182676032679152.a n = A176897 (n + 1)

end A176897

/-! ## A176897.P17833793279962603893

`p?[A014684(n+1)+n]`
-/

namespace A176897.P17833793279962603893
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014684 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176897.P17833793279962603893

namespace A176897

/-- `p?[A014684(n+1)+n]` -/
def P17833793279962603893.Spec : Prop :=
  ∀ n, P17833793279962603893.a n = A176897 (n + 1)

end A176897

/-! ## A176897.P11529478448676755159

`p?[A191558(n+1)+n]`
-/

namespace A176897.P11529478448676755159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176897.P11529478448676755159

namespace A176897

/-- `p?[A191558(n+1)+n]` -/
def P11529478448676755159.Spec : Prop :=
  ∀ n, P11529478448676755159.a n = A176897 (n + 1)

end A176897

/-! ## A176897.P17384131503581053024

`p?[A005843(n)+A005171(n+1)]`
-/

namespace A176897.P17384131503581053024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n + A005171 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176897.P17384131503581053024

namespace A176897

/-- `p?[A005843(n)+A005171(n+1)]` -/
def P17384131503581053024.Spec : Prop :=
  ∀ n, P17384131503581053024.a n = A176897 (n + 1)

end A176897

/-! ## A176897.P4568748088255487987

`p?[A005408(n)-A010051(n+1)]`
-/

namespace A176897.P4568748088255487987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 n - A010051 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176897.P4568748088255487987

namespace A176897

/-- `p?[A005408(n)-A010051(n+1)]` -/
def P4568748088255487987.Spec : Prop :=
  ∀ n, P4568748088255487987.a n = A176897 (n + 1)

end A176897

/-! ## A176897.P7493526011092178667

`p?[A005171(n+2)+A004277(n+1)]`
-/

namespace A176897.P7493526011092178667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005171 (n + 2) + A004277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176897.P7493526011092178667

namespace A176897

/-- `p?[A005171(n+2)+A004277(n+1)]` -/
def P7493526011092178667.Spec : Prop :=
  ∀ n, P7493526011092178667.a n = A176897 (n + 1)

end A176897

/-! ## A176897.P17302822963860870670

`p?[A173672(n+1)-1]`
-/

namespace A176897.P17302822963860870670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173672 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A176897.P17302822963860870670

namespace A176897

/-- `p?[A173672(n+1)-1]` -/
def P17302822963860870670.Spec : Prop :=
  ∀ n, P17302822963860870670.a n = A176897 (n + 1)

end A176897

/-! ## A176897.P11271255786881878649

`p?[comp[A089026(n+1)+n]]`
-/

namespace A176897.P11271255786881878649
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089026 (n + 1) + (n : ℤ)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176897.P11271255786881878649

namespace A176897

/-- `p?[comp[A089026(n+1)+n]]` -/
def P11271255786881878649.Spec : Prop :=
  ∀ n, (P11271255786881878649.a n : ℤ) = A176897 (n + 1)

end A176897

/-! ## A176897.P16625722453795194721

`p?[comp[A001358(n+1)-1]]`
-/

namespace A176897.P16625722453795194721
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176897.P16625722453795194721

namespace A176897

/-- `p?[comp[A001358(n+1)-1]]` -/
def P16625722453795194721.Spec : Prop :=
  ∀ n, (P16625722453795194721.a n : ℤ) = A176897 (n + 1)

end A176897

/-! ## A176897.P1618920416225521559

`p?[comp[A088707(n+1)-2]]`
-/

namespace A176897.P1618920416225521559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088707 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176897.P1618920416225521559

namespace A176897

/-- `p?[comp[A088707(n+1)-2]]` -/
def P1618920416225521559.Spec : Prop :=
  ∀ n, (P1618920416225521559.a n : ℤ) = A176897 (n + 1)

end A176897

/-! ## A176897.P11540315793057812418

`p?[lt[1, A064680(A001222(n+1))]]`
-/

namespace A176897.P11540315793057812418
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064680 (A001222 (n + 1)).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176897.P11540315793057812418

namespace A176897

/-- `p?[lt[1, A064680(A001222(n+1))]]` -/
def P11540315793057812418.Spec : Prop :=
  ∀ n, (P11540315793057812418.a n : ℤ) = A176897 (n + 1)

end A176897

/-! ## A176897.P15373022786730316433

`p?[comp[A253106(n+1)-1]]`
-/

namespace A176897.P15373022786730316433
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253106 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176897.P15373022786730316433

namespace A176897

/-- `p?[comp[A253106(n+1)-1]]` -/
def P15373022786730316433.Spec : Prop :=
  ∀ n, (P15373022786730316433.a n : ℤ) = A176897 (n + 1)

end A176897

/-! ## A176897.P5141874495005958451

`p?[comp[A072055(n+1)-2]]`
-/

namespace A176897.P5141874495005958451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072055 (n + 1) - 2

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A176897.P5141874495005958451

namespace A176897

/-- `p?[comp[A072055(n+1)-2]]` -/
def P5141874495005958451.Spec : Prop :=
  ∀ n, (P5141874495005958451.a n : ℤ) = A176897 (n + 1)

end A176897

/-!
# A176898: a(n) = binomial(6*n, 3*n)*binomial(3*n, n)/(2*(2*n+1)*binomial(2*n, n)).

The programs for A176898, there is no canonical definition to state claims against.
-/

/-! ## A176898.P3645919723886357767

`A078531(2*(n+1))/2`
-/

namespace A176898.P3645919723886357767
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078531 (2 * (n + 1)) : ℚ) / 2

end

end A176898.P3645919723886357767

/-! ## A176898.P17897311731443570157

`record[A299855(n+3)/12]`
-/

namespace A176898.P17897311731443570157
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299855 (n + 3) : ℚ) / 12

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A176898.P17897311731443570157

/-! ## A176898.P5810350731585258431

`A299855(2*n+3)/12`
-/

namespace A176898.P5810350731585258431
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A299855 (2 * n + 3) : ℚ) / 12

end

end A176898.P5810350731585258431

/-! ## A176898.P9199501630430815916

`Δ[∑[A078531(2*n)]/2]`
-/

namespace A176898.P9199501630430815916
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078531 (2 * n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A176898.P9199501630430815916

/-! ## A176898.P13934823166926310153

`2^A008683(A063535(n))*A078531(2*(n+1))`
-/

namespace A176898.P13934823166926310153
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A063535 n).toNat : ℤ) * (A078531 (2 * (n + 1)) : ℚ)

end

end A176898.P13934823166926310153

