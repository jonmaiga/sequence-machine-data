import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C003
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C015
import Seq.B000.C016
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
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C046
import Seq.B000.C048
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C014
import Seq.B002.C004
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C002
import Seq.B004.C000
import Seq.B004.C001
import Seq.B005.C001
import Seq.B006.C000
import Seq.B008.C000
import Seq.B009.C000
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
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import SequenceMachineLib.Triangle

/-!
# A183900: Number of nondecreasing arrangements of n+3 numbers in 0..5 with each number being the sum mod 6 of three others.

The programs for A183900, there is no canonical definition to state claims against.
-/

/-! ## A183900.P696880337899036907

`A183904(∑[n+5]+6)`
-/

namespace A183900.P696880337899036907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183900.P696880337899036907

/-!
# A183901: Number of nondecreasing arrangements of n+3 numbers in 0..6 with each number being the sum mod 7 of three others.

The programs for A183901, there is no canonical definition to state claims against.
-/

/-! ## A183901.P9759492020815589349

`A183904(∑[a(n-1)+1])` with `a(0)=16, a(1)=7`
-/

namespace A183901.P9759492020815589349
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183901.P9759492020815589349

/-!
# A183902: Number of nondecreasing arrangements of n+3 numbers in 0..7 with each number being the sum mod 8 of three others.

The programs for A183902, there is no canonical definition to state claims against.
-/

/-! ## A183902.P5061175866200704857

`A183904(eq[4, A219347(n)])`
-/

namespace A183902.P5061175866200704857
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183902.P5061175866200704857

/-!
# A183903: Number of nondecreasing arrangements of n+3 numbers in 0..8 with each number being the sum mod 9 of three others.

The programs for A183903, there is no canonical definition to state claims against.
-/

/-! ## A183903.P2323453462207105404

`A183904(eq[5, A219347(n)])`
-/

namespace A183903.P2323453462207105404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183904 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183903.P2323453462207105404

/-!
# A183905: Number of nondecreasing arrangements of n+2 numbers in 0..2 with each number being the sum mod 3 of two others.

The programs for A183905, the canonical program `A183905.P10358144785186039243` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183905 has offset 1).

The definition of A183905 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183905.P10358144785186039243

`abs(∑[4+n]-5)`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183905

/-- `abs(∑[4+n]-5)` -/
def P10358144785186039243.Spec : Prop :=
  ∀ n, P10358144785186039243.a n = A183905 (n + 1)

theorem P10358144785186039243.correct : P10358144785186039243.Spec := by
  intro n
  simp only [A183905, Nat.add_sub_cancel]

end A183905

/-! ## A183905.P14569107915756246967

`∑[2^ceil(atan(n))+n]`
-/

namespace A183905.P14569107915756246967
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ) + (n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P14569107915756246967

namespace A183905

/-- `∑[2^ceil(atan(n))+n]` -/
def P14569107915756246967.Spec : Prop :=
  ∀ n, P14569107915756246967.a n = (A183905 (n + 1) : ℚ)

end A183905

/-! ## A183905.P17516175421775067088

`record[lcm(2, n)+1]+∑[n]`
-/

namespace A183905.P17516175421775067088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A183905.P17516175421775067088

namespace A183905

/-- `record[lcm(2, n)+1]+∑[n]` -/
def P17516175421775067088.Spec : Prop :=
  ∀ n, (P17516175421775067088.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P8098607910337773902

`record[a(n-1)+n]` with `a(0)=1, a(1)=-10`
-/

namespace A183905.P8098607910337773902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, -10] fun n f1 =>
  f1 (n - 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183905.P8098607910337773902

namespace A183905

/-- `record[a(n-1)+n]` -/
def P8098607910337773902.Spec : Prop :=
  ∀ n, P8098607910337773902.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P1022539382166091102

`∑[1+a(n-1)]` with `a(0)=1, a(1)=3, a(2)=6`
-/

namespace A183905.P1022539382166091102
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 3, 6] fun n f1 =>
  1 + f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P1022539382166091102

namespace A183905

/-- `∑[1+a(n-1)]` -/
def P1022539382166091102.Spec : Prop :=
  ∀ n, (P1022539382166091102.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P8345177878131768587

`4+a(n-1)+n` with `a(0)=1, a(1)=4`
-/

namespace A183905.P8345177878131768587
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  4 + a (n - 1) + n

end

end A183905.P8345177878131768587

namespace A183905

/-- `4+a(n-1)+n` -/
def P8345177878131768587.Spec : Prop :=
  ∀ n, (P8345177878131768587.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P3078602514597323504

`∑[ogf((1+x+x^2-2x^3)/(1-2x+x^2))]`
-/

namespace A183905.P3078602514597323504
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -2] [1, -2, 1] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P3078602514597323504

namespace A183905

/-- `∑[ogf((1+x+x^2-2x^3)/(1-2x+x^2))]` -/
def P3078602514597323504.Spec : Prop :=
  ∀ n, P3078602514597323504.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P2642998405545765324

`ogf((1+x+x^2-2x^3)/(1-3x+3x^2-x^3))`
-/

namespace A183905.P2642998405545765324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 1, -2] [1, -3, 3, -1] n

end

end A183905.P2642998405545765324

namespace A183905

/-- `ogf((1+x+x^2-2x^3)/(1-3x+3x^2-x^3))` -/
def P2642998405545765324.Spec : Prop :=
  ∀ n, P2642998405545765324.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P1203420323586614666

`∑[gcd(n+3, C(2, n²))]+n`
-/

namespace A183905.P1203420323586614666
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (n + 3) (Nat.choose 2 (n ^ 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + n

end

end A183905.P1203420323586614666

namespace A183905

/-- `∑[gcd(n+3, C(2, n²))]+n` -/
def P1203420323586614666.Spec : Prop :=
  ∀ n, (P1203420323586614666.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P2185631128998519189

`abs(4-C(n+3, 2))+2*n`
-/

namespace A183905.P2185631128998519189
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |4 - (Nat.choose (n + 3) 2 : ℤ)| + (2 * n : ℤ)

end

end A183905.P2185631128998519189

namespace A183905

/-- `abs(4-C(n+3, 2))+2*n` -/
def P2185631128998519189.Spec : Prop :=
  ∀ n, P2185631128998519189.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P16725865031668079120

`∑[2%(n+1)+n+2]-1`
-/

namespace A183905.P16725865031668079120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 % (n + 1) + (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1

end

end A183905.P16725865031668079120

namespace A183905

/-- `∑[2%(n+1)+n+2]-1` -/
def P16725865031668079120.Spec : Prop :=
  ∀ n, P16725865031668079120.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P2351760410256197434

`∑[a((n+1)%n)+1+n]` with `a(0)=1`
-/

namespace A183905.P2351760410256197434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  f1 ((n + 1) % n) + 1 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P2351760410256197434

namespace A183905

/-- `∑[a((n+1)%n)+1+n]` -/
def P2351760410256197434.Spec : Prop :=
  ∀ n, (P2351760410256197434.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P7576543822318919529

`5-floor(1-a(n-1)-n)` with `a(0)=1, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A183905.P7576543822318919529
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  5 - (1 - a (n - 1) - (n : ℤ))

end

end A183905.P7576543822318919529

namespace A183905

/-- `5-floor(1-a(n-1)-n)` -/
def P7576543822318919529.Spec : Prop :=
  ∀ n, P7576543822318919529.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P8947295456320370248

`∑[n+3-C(2, n²)]+n-1`
-/

namespace A183905.P8947295456320370248
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℤ) - (Nat.choose 2 (n ^ 2) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ((n : ℤ) - 1)

end

end A183905.P8947295456320370248

namespace A183905

/-- `∑[n+3-C(2, n²)]+n-1` -/
def P8947295456320370248.Spec : Prop :=
  ∀ n, P8947295456320370248.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P10899438710468767603

`n-1-∑[C(2, ∑[n])-(n+3)]`
-/

namespace A183905.P10899438710468767603
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (∑ j ∈ Finset.range (n + 1), f2 j) : ℤ) - (n + 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P10899438710468767603

namespace A183905

/-- `n-1-∑[C(2, ∑[n])-(n+3)]` -/
def P10899438710468767603.Spec : Prop :=
  ∀ n, P10899438710468767603.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P2032809990637058298

`2*n-(n-4-a(n-1))` with `a(0)=1, a(1)=4`
-/

namespace A183905.P2032809990637058298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 4] fun n a =>
  (2 * n : ℤ) - ((n : ℤ) - 4 - a (n - 1))

end

end A183905.P2032809990637058298

namespace A183905

/-- `2*n-(n-4-a(n-1))` -/
def P2032809990637058298.Spec : Prop :=
  ∀ n, P2032809990637058298.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P11576049080278114689

`C(n+3, 2)+abs(1-n)+n-3`
-/

namespace A183905.P11576049080278114689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 2 : ℤ) + (|1 - (n : ℤ)| + ((n : ℤ) - 3))

end

end A183905.P11576049080278114689

namespace A183905

/-- `C(n+3, 2)+abs(1-n)+n-3` -/
def P11576049080278114689.Spec : Prop :=
  ∀ n, P11576049080278114689.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P8248000904456495989

`∑[C(n+2, floor(2*n/(n+2)))]+2*n`
-/

namespace A183905.P8248000904456495989
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (n + 2) ⌊(2 * n : ℚ) / (n + 2 : ℚ)⌋.toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 * n

end

end A183905.P8248000904456495989

namespace A183905

/-- `∑[C(n+2, floor(2*n/(n+2)))]+2*n` -/
def P8248000904456495989.Spec : Prop :=
  ∀ n, (P8248000904456495989.a n : ℤ) = A183905 (n + 1)

end A183905

/-! ## A183905.P5651091331749432915

`∑[A151798(n)+n]`
-/

namespace A183905.P5651091331749432915
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151798 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P5651091331749432915

namespace A183905

/-- `∑[A151798(n)+n]` -/
def P5651091331749432915.Spec : Prop :=
  ∀ n, P5651091331749432915.a n = A183905 (n + 1)

end A183905

/-! ## A183905.P14308679408034437297

`∑[A107820(n+1)-2]`
-/

namespace A183905.P14308679408034437297
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107820 (n + 1) - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183905.P14308679408034437297

namespace A183905

/-- `∑[A107820(n+1)-2]` -/
def P14308679408034437297.Spec : Prop :=
  ∀ n, P14308679408034437297.a n = A183905 (n + 1)

end A183905

/-!
# A183906: Number of nondecreasing arrangements of n+2 numbers in 0..3 with each number being the sum mod 4 of two others.

The programs for A183906, the canonical program `A183906.P11099707079449525201` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183906 has offset 1).

The definition of A183906 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183906.P4890587605342115874

`ogf((2-3x+9x^2-8x^3-x^4+2x^5)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A183906.P4890587605342115874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -3, 9, -8, -1, 2] [1, -4, 6, -4, 1] n

end

end A183906.P4890587605342115874

namespace A183906

/-- `ogf((2-3x+9x^2-8x^3-x^4+2x^5)/(1-4x+6x^2-4x^3+x^4))` -/
def P4890587605342115874.Spec : Prop :=
  ∀ n, P4890587605342115874.a n = A183906 (n + 1)

end A183906

/-! ## A183906.P11099707079449525201

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=2, a(1)=5, a(2)=17, a(3)=38, a(4)=67, a(5)=105`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183906

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11099707079449525201.Spec : Prop :=
  ∀ n, P11099707079449525201.a n = A183906 (n + 1)

theorem P11099707079449525201.correct : P11099707079449525201.Spec := by
  intro n
  simp only [A183906, Nat.add_sub_cancel]

end A183906

/-! ## A183906.P3438606213605653389

`∑[∑[n+3]-A034387(C(2, n)+1)+n]+1`
-/

namespace A183906.P3438606213605653389
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - A034387 (Nat.choose 2 n + 1) + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A183906.P3438606213605653389

namespace A183906

/-- `∑[∑[n+3]-A034387(C(2, n)+1)+n]+1` -/
def P3438606213605653389.Spec : Prop :=
  ∀ n, P3438606213605653389.a n = A183906 (n + 1)

end A183906

/-! ## A183906.P17611460282100204996

`∑[A130773(A267873(n))+∑[n]]`
-/

namespace A183906.P17611460282100204996
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130773 (A267873 n).toNat + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183906.P17611460282100204996

namespace A183906

/-- `∑[A130773(A267873(n))+∑[n]]` -/
def P17611460282100204996.Spec : Prop :=
  ∀ n, P17611460282100204996.a n = A183906 (n + 1)

end A183906

/-! ## A183906.P8853920210908254575

`A004275(A267874(n))+∑[∑[n]+1]`
-/

namespace A183906.P8853920210908254575
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004275 (A267874 n).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A183906.P8853920210908254575

namespace A183906

/-- `A004275(A267874(n))+∑[∑[n]+1]` -/
def P8853920210908254575.Spec : Prop :=
  ∀ n, P8853920210908254575.a n = A183906 (n + 1)

end A183906

/-! ## A183906.P16695429029434306799

`A004273(A267874(n))+A003600(n)`
-/

namespace A183906.P16695429029434306799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (A267874 n).toNat + A003600 n

end

end A183906.P16695429029434306799

namespace A183906

/-- `A004273(A267874(n))+A003600(n)` -/
def P16695429029434306799.Spec : Prop :=
  ∀ n, P16695429029434306799.a n = A183906 (n + 1)

end A183906

/-! ## A183906.P9710338970074070828

`A004273(∑[A267873(n)])+A003600(n)`
-/

namespace A183906.P9710338970074070828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267873 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A003600 n

end

end A183906.P9710338970074070828

namespace A183906

/-- `A004273(∑[A267873(n)])+A003600(n)` -/
def P9710338970074070828.Spec : Prop :=
  ∀ n, P9710338970074070828.a n = A183906 (n + 1)

end A183906

/-!
# A183907: Number of nondecreasing arrangements of n+2 numbers in 0..4 with each number being the sum mod 5 of two others.

The programs for A183907, the canonical program `A183907.P14509073884946094943` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183907 has offset 1).

The definition of A183907 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183907.P12672435398720037291

`ogf((1-3x+20x^2-24x^3+3x^4+4x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))`
-/

namespace A183907.P12672435398720037291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -3, 20, -24, 3, 4] [1, -5, 10, -10, 5, -1] n

end

end A183907.P12672435398720037291

namespace A183907

/-- `ogf((1-3x+20x^2-24x^3+3x^4+4x^5)/(1-5x+10x^2-10x^3+5x^4-x^5))` -/
def P12672435398720037291.Spec : Prop :=
  ∀ n, P12672435398720037291.a n = A183907 (n + 1)

end A183907

/-! ## A183907.P14509073884946094943

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=2, a(2)=20, a(3)=66, a(4)=148, a(5)=275`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183907

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P14509073884946094943.Spec : Prop :=
  ∀ n, P14509073884946094943.a n = A183907 (n + 1)

theorem P14509073884946094943.correct : P14509073884946094943.Spec := by
  intro n
  simp only [A183907, Nat.add_sub_cancel]

end A183907

/-! ## A183907.P2795443664342574944

`A183912(∑[a(n-1)+1])` with `a(0)=7, a(1)=5`
-/

namespace A183907.P2795443664342574944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183907.P2795443664342574944

namespace A183907

/-- `A183912(∑[a(n-1)+1])` -/
def P2795443664342574944.Spec : Prop :=
  ∀ n, P2795443664342574944.a n = A183907 (n + 1)

end A183907

/-!
# A183908: Number of nondecreasing arrangements of n+2 numbers in 0..5 with each number being the sum mod 6 of two others.

The programs for A183908, the canonical program `A183908.P7152724084774641373` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183908 has offset 1).

The definition of A183908 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183908.P7152724084774641373

`ogf((2-4x+19x^2-18x^3-10x^4+11x^5+5x^6-4x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183908

/-- `ogf((2-4x+19x^2-18x^3-10x^4+11x^5+5x^6-4x^7)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P7152724084774641373.Spec : Prop :=
  ∀ n, P7152724084774641373.a n = A183908 (n + 1)

theorem P7152724084774641373.correct : P7152724084774641373.Spec := by
  intro n
  simp only [A183908, Nat.add_sub_cancel]

end A183908

/-! ## A183908.P14049948235504150928

`A183912(∑[a(n-1)+1])` with `a(0)=11, a(1)=6`
-/

namespace A183908.P14049948235504150928
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183908.P14049948235504150928

namespace A183908

/-- `A183912(∑[a(n-1)+1])` -/
def P14049948235504150928.Spec : Prop :=
  ∀ n, P14049948235504150928.a n = A183908 (n + 1)

end A183908

/-!
# A183909: Number of nondecreasing arrangements of n+2 numbers in 0..6 with each number being the sum mod 7 of two others.

The programs for A183909, the canonical program `A183909.P14108580815129469680` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183909 has offset 1).

The definition of A183909 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183909.P14108580815129469680

`ogf((1-6x+36x^2-32x^3-20x^4+3x^5+40x^6-16x^7-9x^8+4x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183909

/-- `ogf((1-6x+36x^2-32x^3-20x^4+3x^5+40x^6-16x^7-9x^8+4x^9)/(1-7x+21x^2-35x^3+35x^4-21x^5+7x^6-x^7))` -/
def P14108580815129469680.Spec : Prop :=
  ∀ n, P14108580815129469680.a n = A183909 (n + 1)

theorem P14108580815129469680.correct : P14108580815129469680.Spec := by
  intro n
  simp only [A183909, Nat.add_sub_cancel]

end A183909

/-! ## A183909.P1502960499318044936

`A183912(∑[a(n-1)+1])` with `a(0)=16, a(1)=7`
-/

namespace A183909.P1502960499318044936
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [16, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183909.P1502960499318044936

namespace A183909

/-- `A183912(∑[a(n-1)+1])` -/
def P1502960499318044936.Spec : Prop :=
  ∀ n, P1502960499318044936.a n = A183909 (n + 1)

end A183909

/-!
# A183910: Number of nondecreasing arrangements of n+2 numbers in 0..7 with each number being the sum mod 8 of two others.

The programs for A183910, there is no canonical definition to state claims against.
-/

/-! ## A183910.P11453067663376574421

`A183912(∑[a(n-1)+1])` with `a(0)=11, a(1)=19, a(2)=9`
-/

namespace A183910.P11453067663376574421
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [11, 19, 9] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183910.P11453067663376574421

/-!
# A183911: Number of nondecreasing arrangements of n+2 numbers in 0..8 with each number being the sum mod 9 of two others.

The programs for A183911, there is no canonical definition to state claims against.
-/

/-! ## A183911.P18085993290300401450

`A183912(∑[a(n-1)+1])` with `a(0)=2, a(1)=36, a(2)=10`
-/

namespace A183911.P18085993290300401450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 36, 10] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183912 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183911.P18085993290300401450

/-!
# A183913: Number of nondecreasing arrangements of n numbers in -5..5 with sum zero.

The programs for A183913, there is no canonical definition to state claims against.
-/

/-! ## A183913.P1267493858056092745

`A201503(A000217(n+9)+10)`
-/

namespace A183913.P1267493858056092745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 9) + 10).toNat

end

end A183913.P1267493858056092745

/-! ## A183913.P2234485945319038742

`A201503(A374011(n+1))`
-/

namespace A183913.P2234485945319038742
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A374011 (n + 1)).toNat

end

end A183913.P2234485945319038742

/-! ## A183913.P17735597829981346462

`A180980(A374011(n+1))`
-/

namespace A183913.P17735597829981346462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180980 (A374011 (n + 1)).toNat

end

end A183913.P17735597829981346462

/-!
# A183914: Number of nondecreasing arrangements of n numbers in -6..6 with sum zero.

The programs for A183914, there is no canonical definition to state claims against.
-/

/-! ## A183914.P14987832996400698701

`A201503(A000217(n+11)+12)`
-/

namespace A183914.P14987832996400698701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 11) + 12).toNat

end

end A183914.P14987832996400698701

/-!
# A183915: Number of nondecreasing arrangements of n numbers in -7..7 with sum zero.

The programs for A183915, there is no canonical definition to state claims against.
-/

/-! ## A183915.P14228496378195069842

`A201503(A000217(n+14)-n)`
-/

namespace A183915.P14228496378195069842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A000217 (n + 14) - (n : ℤ)).toNat

end

end A183915.P14228496378195069842

/-! ## A183915.P15567379662291941620

`A183917(A000124(n+7)-7)`
-/

namespace A183915.P15567379662291941620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A000124 (n + 7) - 7).toNat

end

end A183915.P15567379662291941620

/-!
# A183916: Number of nondecreasing arrangements of n numbers in -8..8 with sum zero.

The programs for A183916, there is no canonical definition to state claims against.
-/

/-! ## A183916.P10352022481739943871

`A201503(A056115(n+11))`
-/

namespace A183916.P10352022481739943871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A056115 (n + 11)).toNat

end

end A183916.P10352022481739943871

/-! ## A183916.P13496973183360950968

`A183917(A000096(n+7)-6)`
-/

namespace A183916.P13496973183360950968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183917 (A000096 (n + 7) - 6).toNat

end

end A183916.P13496973183360950968

/-!
# A183917: T(n,k) = number of nondecreasing arrangements of n numbers in -k..k with sum zero.

The programs for A183917, there is no canonical definition to state claims against.
-/

/-! ## A183917.P7878076712084511552

`A201503(A128116(n+1)+1+n)`
-/

namespace A183917.P7878076712084511552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201503 (A128116 (n + 1) + 1 + (n : ℤ)).toNat

end

end A183917.P7878076712084511552

/-! ## A183917.P9943485114110118638

`A180980(A128116(1+n)+1+n)`
-/

namespace A183917.P9943485114110118638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A180980 (A128116 (1 + n) + 1 + (n : ℤ)).toNat

end

end A183917.P9943485114110118638

/-! ## A183917.P11202544326109671783

`A260999(2*A274106(n+1))`
-/

namespace A183917.P11202544326109671783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260999 (2 * A274106 (n + 1)).toNat

end

end A183917.P11202544326109671783

/-! ## A183917.P9680934017824035227

`A181971(n)-A055641(A014780(2*(n+1)))`
-/

namespace A183917.P9680934017824035227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181971 n - A055641 (A014780 (2 * (n + 1))).toNat

end

end A183917.P9680934017824035227

/-! ## A183917.P1945182102222527420

`A347643(A060556(n))`
-/

namespace A183917.P1945182102222527420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347643 (A060556 n).toNat

end

end A183917.P1945182102222527420

/-!
# A183919: Characteristic sequence for sin(2*Pi/n) being rational.

The programs for A183919, the canonical program `A183919.P15499728653673254840` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183919 has offset 1).

The definition of A183919 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183919.P15499728653673254840

`char[C(3, T(n-2,k-1))]` with `a(0)=11`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183919

/-- `char[C(3, T(n-2,k-1))]` -/
def P15499728653673254840.Spec : Prop :=
  ∀ n, (P15499728653673254840.a n : ℤ) = A183919 (n + 1)

theorem P15499728653673254840.correct : P15499728653673254840.Spec := by
  intro n
  simp only [A183919, Nat.add_sub_cancel]

end A183919

/-!
# A183920: Number of nondecreasing arrangements of n numbers in -2..2 with sum zero and sum of squares not greater than n*6/3.

The programs for A183920, the canonical program `A183920.P9589663836147478205` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183920 has offset 1).

The definition of A183920 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183920.P6521614636254279356

`ogf((1+x+2x^2-x^5-x^6+2x^7+x^9-x^10)/(1-x-2x^3+x^4+x^5+x^6+x^7-2x^8-x^10+x^11))`
-/

namespace A183920.P6521614636254279356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 2, 0, 0, -1, -1, 2, 0, 1, -1] [1, -1, 0, -2, 1, 1, 1, 1, -2, 0, -1, 1] n

end

end A183920.P6521614636254279356

namespace A183920

/-- `ogf((1+x+2x^2-x^5-x^6+2x^7+x^9-x^10)/(1-x-2x^3+x^4+x^5+x^6+x^7-2x^8-x^10+x^11))` -/
def P6521614636254279356.Spec : Prop :=
  ∀ n, P6521614636254279356.a n = A183920 (n + 1)

end A183920

/-! ## A183920.P9589663836147478205

`A025767(n+1)+A307872(n+1)+A307872(n+2)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A183920

/-- `A025767(n+1)+A307872(n+1)+A307872(n+2)` -/
def P9589663836147478205.Spec : Prop :=
  ∀ n, P9589663836147478205.a n = A183920 (n + 1)

theorem P9589663836147478205.correct : P9589663836147478205.Spec := by
  intro n
  simp only [A183920, Nat.add_sub_cancel]

end A183920

/-! ## A183920.P5243642444124058214

`A183928(n+2)+A307872(n+2)-A307872(n+3)`
-/

namespace A183920.P5243642444124058214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183928 (n + 2) + (A307872 (n + 2) - A307872 (n + 3))

end

end A183920.P5243642444124058214

namespace A183920

/-- `A183928(n+2)+A307872(n+2)-A307872(n+3)` -/
def P5243642444124058214.Spec : Prop :=
  ∀ n, P5243642444124058214.a n = A183920 (n + 1)

end A183920

/-! ## A183920.P17394552187132578291

`A082146(Δ[n²])+A025767(n+1)`
-/

namespace A183920.P17394552187132578291
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082146 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A025767 (n + 1)

end

end A183920.P17394552187132578291

namespace A183920

/-- `A082146(Δ[n²])+A025767(n+1)` -/
def P17394552187132578291.Spec : Prop :=
  ∀ n, P17394552187132578291.a n = A183920 (n + 1)

end A183920

/-! ## A183920.P8178390622813521506

`A082146(2*n+1)+Δ[A008762(n)]`
-/

namespace A183920.P8178390622813521506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008762 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082146 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A183920.P8178390622813521506

namespace A183920

/-- `A082146(2*n+1)+Δ[A008762(n)]` -/
def P8178390622813521506.Spec : Prop :=
  ∀ n, P8178390622813521506.a n = A183920 (n + 1)

end A183920

/-!
# A183921: Number of nondecreasing arrangements of n numbers in -3..3 with sum zero and sum of squares not greater than n*12/3.

The programs for A183921, there is no canonical definition to state claims against.
-/

/-! ## A183921.P18163743375624871020

`A183927(∑[n+3]+1)`
-/

namespace A183921.P18163743375624871020
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183921.P18163743375624871020

/-! ## A183921.P5447005169465739250

`record[A183927(A347633(n+1))]`
-/

namespace A183921.P5447005169465739250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (A347633 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183921.P5447005169465739250

/-!
# A183922: Number of nondecreasing arrangements of n numbers in -4..4 with sum zero and sum of squares not greater than n*20/3.

The programs for A183922, there is no canonical definition to state claims against.
-/

/-! ## A183922.P13230440925256843685

`A183927(∑[n+4]+3)`
-/

namespace A183922.P13230440925256843685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A183922.P13230440925256843685

/-! ## A183922.P9704264349474775108

`A130676(A027181(n))`
-/

namespace A183922.P9704264349474775108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130676 (A027181 n).toNat

end

end A183922.P9704264349474775108

/-!
# A183923: Number of nondecreasing arrangements of n numbers in -5..5 with sum zero and sum of squares not greater than n*30/3.

The programs for A183923, there is no canonical definition to state claims against.
-/

/-! ## A183923.P3120786813522225907

`A183927(∑[n+5]+6)`
-/

namespace A183923.P3120786813522225907
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183923.P3120786813522225907

/-! ## A183923.P9173719264781131677

`A000041(3*n+1)-A029837(A000629(n))`
-/

namespace A183923.P9173719264781131677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n + 1) - A029837 (A000629 n).toNat

end

end A183923.P9173719264781131677

/-! ## A183923.P17512295623794227734

`A000041(3*n+1)-A056239(A174702(n+1))`
-/

namespace A183923.P17512295623794227734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (3 * n + 1) - A056239 (A174702 (n + 1)).toNat

end

end A183923.P17512295623794227734

/-!
# A183924: Number of nondecreasing arrangements of n numbers in -6..6 with sum zero and sum of squares not greater than n*42/3.

The programs for A183924, there is no canonical definition to state claims against.
-/

/-! ## A183924.P12326377547981053392

`A183927(∑[n+6]+10)`
-/

namespace A183924.P12326377547981053392
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (∑ j ∈ Finset.range (n + 1), f1 j + 10)

end

end A183924.P12326377547981053392

/-!
# A183925: Number of nondecreasing arrangements of n numbers in -7..7 with sum zero and sum of squares not greater than n*56/3.

The programs for A183925, there is no canonical definition to state claims against.
-/

/-! ## A183925.P13821993484197366128

`A183927(A055999(n+4))`
-/

namespace A183925.P13821993484197366128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (A055999 (n + 4)).toNat

end

end A183925.P13821993484197366128

/-!
# A183926: Number of nondecreasing arrangements of n numbers in -8..8 with sum zero and sum of squares not greater than n*72/3.

The programs for A183926, there is no canonical definition to state claims against.
-/

/-! ## A183926.P13033770447492347341

`A183927(eq[5, A219347(n)])`
-/

namespace A183926.P13033770447492347341
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183927 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183926.P13033770447492347341

/-!
# A183927: T(n,k)=Number of nondecreasing arrangements of n numbers in -k..k with sum zero and sum of squares not greater than n*k*(k+1)/3.

The programs for A183927, there is no canonical definition to state claims against.
-/

/-! ## A183927.P7309064564544803429

`A376181(A300003(n+1))`
-/

namespace A183927.P7309064564544803429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376181 (A300003 (n + 1)).toNat

end

end A183927.P7309064564544803429

/-! ## A183927.P9253126935524806209

`A269526(A071944(n)%A007508(n+4))`
-/

namespace A183927.P9253126935524806209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A269526 (Int.tmod (A071944 n) (A007508 (n + 4))).toNat

end

end A183927.P9253126935524806209

/-! ## A183927.P18080380969899691175

`A043556(A350259(n))`
-/

namespace A183927.P18080380969899691175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043556 (A350259 n).toNat

end

end A183927.P18080380969899691175

/-!
# A183928: Number of nondecreasing arrangements of n numbers in -2..2 with sum zero and sum of squares less than 2n.

The programs for A183928, the canonical program `A183928.P3163840417968673372` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183928 has offset 1).

The definition of A183928 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183928.P12183729618270695415

`ogf((1+x+x^3+x^5)/(1-x-2x^3+x^4+x^5+x^6+x^7-2x^8-x^10+x^11))`
-/

namespace A183928.P12183729618270695415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, 1, 0, 1] [1, -1, 0, -2, 1, 1, 1, 1, -2, 0, -1, 1] n

end

end A183928.P12183729618270695415

namespace A183928

/-- `ogf((1+x+x^3+x^5)/(1-x-2x^3+x^4+x^5+x^6+x^7-2x^8-x^10+x^11))` -/
def P12183729618270695415.Spec : Prop :=
  ∀ n, P12183729618270695415.a n = A183928 (n + 1)

end A183928

/-! ## A183928.P3163840417968673372

`A025767(n)+A144677(n)-A001399(n)`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A183928

/-- `A025767(n)+A144677(n)-A001399(n)` -/
def P3163840417968673372.Spec : Prop :=
  ∀ n, P3163840417968673372.a n = A183928 (n + 1)

theorem P3163840417968673372.correct : P3163840417968673372.Spec := by
  intro n
  simp only [A183928, Nat.add_sub_cancel]

end A183928

/-! ## A183928.P9852912222796157085

`A008765(n)+A028289(n)-A213042(n)`
-/

namespace A183928.P9852912222796157085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008765 n + (A028289 n - A213042 n)

end

end A183928.P9852912222796157085

namespace A183928

/-- `A008765(n)+A028289(n)-A213042(n)` -/
def P9852912222796157085.Spec : Prop :=
  ∀ n, P9852912222796157085.a n = A183928 (n + 1)

end A183928

/-! ## A183928.P3873968001721228305

`A029046(2*n+1)+∑[A307018(n)]`
-/

namespace A183928.P3873968001721228305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307018 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029046 (2 * n + 1) + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183928.P3873968001721228305

namespace A183928

/-- `A029046(2*n+1)+∑[A307018(n)]` -/
def P3873968001721228305.Spec : Prop :=
  ∀ n, P3873968001721228305.a n = A183928 (n + 1)

end A183928

/-! ## A183928.P2606887150750300663

`∑[A103221(A055998(n))]-A307872(n+1)`
-/

namespace A183928.P2606887150750300663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103221 (A055998 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A307872 (n + 1)

end

end A183928.P2606887150750300663

namespace A183928

/-- `∑[A103221(A055998(n))]-A307872(n+1)` -/
def P2606887150750300663.Spec : Prop :=
  ∀ n, P2606887150750300663.a n = A183928 (n + 1)

end A183928

/-!
# A183929: Number of nondecreasing arrangements of n numbers in -3..3 with sum zero and sum of squares less than n*12/3.

The programs for A183929, there is no canonical definition to state claims against.
-/

/-! ## A183929.P18169236905147265589

`A183935(∑[n+3]+1)`
-/

namespace A183929.P18169236905147265589
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183929.P18169236905147265589

/-! ## A183929.P543766053236994499

`record[A183935(A101881(n))]`
-/

namespace A183929.P543766053236994499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A101881 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183929.P543766053236994499

/-!
# A183930: Number of nondecreasing arrangements of n numbers in -4..4 with sum zero and sum of squares less than n*20/3.

The programs for A183930, there is no canonical definition to state claims against.
-/

/-! ## A183930.P3599865382744300

`A183935(∑[n+4]+3)`
-/

namespace A183930.P3599865382744300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A183930.P3599865382744300

/-!
# A183931: Number of nondecreasing arrangements of n numbers in -5..5 with sum zero and sum of squares less than n*30/3.

The programs for A183931, there is no canonical definition to state claims against.
-/

/-! ## A183931.P12132547984162403385

`A183935(∑[n+5]+6)`
-/

namespace A183931.P12132547984162403385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A183931.P12132547984162403385

/-! ## A183931.P5965996419029930487

`A143823(2*n)-A357634(A000085(n))`
-/

namespace A183931.P5965996419029930487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143823 (2 * n) - A357634 (A000085 n).toNat

end

end A183931.P5965996419029930487

/-!
# A183932: Number of nondecreasing arrangements of n numbers in -6..6 with sum zero and sum of squares less than n*42/3.

The programs for A183932, there is no canonical definition to state claims against.
-/

/-! ## A183932.P14780268280548651186

`A183935(A052905(n+3))`
-/

namespace A183932.P14780268280548651186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A052905 (n + 3)).toNat

end

end A183932.P14780268280548651186

/-!
# A183933: Number of nondecreasing arrangements of n numbers in -7..7 with sum zero and sum of squares less than n*56/3.

The programs for A183933, there is no canonical definition to state claims against.
-/

/-! ## A183933.P5112340387938559894

`A183935(A055999(n+4))`
-/

namespace A183933.P5112340387938559894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (A055999 (n + 4)).toNat

end

end A183933.P5112340387938559894

/-!
# A183934: Number of nondecreasing arrangements of n numbers in -8..8 with sum zero and sum of squares less than n*72/3.

The programs for A183934, there is no canonical definition to state claims against.
-/

/-! ## A183934.P2461381305746833323

`A183935(eq[5, A219347(n)])`
-/

namespace A183934.P2461381305746833323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183935 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183934.P2461381305746833323

/-!
# A183935: T(n,k)=Number of nondecreasing arrangements of n numbers in -k..k with sum zero and sum of squares less than n*k*(k+1)/3.

The programs for A183935, there is no canonical definition to state claims against.
-/

/-! ## A183935.P9915777734649218318

`A000196(A003004(A144401(n+1)²))`
-/

namespace A183935.P9915777734649218318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A003004 (A144401 (n + 1) ^ 2).toNat).toNat

end

end A183935.P9915777734649218318

/-! ## A183935.P1850311000747544591

`A112505(A193590(n))`
-/

namespace A183935.P1850311000747544591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112505 (A193590 n).toNat

end

end A183935.P1850311000747544591

/-! ## A183935.P17282785460320118721

`A110592(A063834(n)%A308704(n+1))`
-/

namespace A183935.P17282785460320118721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110592 (Int.tmod (A063834 n) (A308704 (n + 1))).toNat

end

end A183935.P17282785460320118721

/-!
# A183936: Number of strings of n numbers x(i) in -1..1 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183936, there is no canonical definition to state claims against.
-/

/-! ## A183936.P14352676904066458147

`A183944(∑[1+n])`
-/

namespace A183936.P14352676904066458147
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183936.P14352676904066458147

/-! ## A183936.P8001555485192024609

`A162229(A134195(n+1))`
-/

namespace A183936.P8001555485192024609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162229 (A134195 (n + 1)).toNat

end

end A183936.P8001555485192024609

/-!
# A183937: Number of strings of n numbers x(i) in -2..2 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183937, there is no canonical definition to state claims against.
-/

/-! ## A183937.P3607330719511658239

`A183944(∑[2+n])`
-/

namespace A183937.P3607330719511658239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183937.P3607330719511658239

/-!
# A183938: Number of strings of n numbers x(i) in -3..3 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183938, there is no canonical definition to state claims against.
-/

/-! ## A183938.P4272641898081249748

`A183944(∑[n+3]+1)`
-/

namespace A183938.P4272641898081249748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183938.P4272641898081249748

/-!
# A183939: Number of strings of n numbers x(i) in -4..4 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183939, there is no canonical definition to state claims against.
-/

/-! ## A183939.P8876047916565449596

`A183944(∑[n+4]+3)`
-/

namespace A183939.P8876047916565449596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A183939.P8876047916565449596

/-!
# A183940: Number of strings of n numbers x(i) in -5..5 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183940, there is no canonical definition to state claims against.
-/

/-! ## A183940.P13723616749310119823

`A183944(Δ[A264443(n)])`
-/

namespace A183940.P13723616749310119823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (f1 (n + 1) - f1 n).toNat

end

end A183940.P13723616749310119823

/-!
# A183941: Number of strings of n numbers x(i) in -6..6 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183941, there is no canonical definition to state claims against.
-/

/-! ## A183941.P15051529055865270383

`A183944(A052905(n+3))`
-/

namespace A183941.P15051529055865270383
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (A052905 (n + 3)).toNat

end

end A183941.P15051529055865270383

/-!
# A183942: Number of strings of n numbers x(i) in -7..7 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183942, there is no canonical definition to state claims against.
-/

/-! ## A183942.P8094040002425866386

`A183944(A055999(n+4))`
-/

namespace A183942.P8094040002425866386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (A055999 (n + 4)).toNat

end

end A183942.P8094040002425866386

/-!
# A183943: Number of strings of n numbers x(i) in -8..8 with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183943, there is no canonical definition to state claims against.
-/

/-! ## A183943.P16763006090254784212

`A183944(eq[5, A219347(n)])`
-/

namespace A183943.P16763006090254784212
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183944 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183943.P16763006090254784212

/-!
# A183944: T(n,k)=Number of strings of n numbers x(i) in -k..k with sums of x(i) and of x(i)*x(i+1) both zero.

The programs for A183944, there is no canonical definition to state claims against.
-/

/-! ## A183944.P11998361429409234748

`A031285(A283054(n))-A259344(n+1)`
-/

namespace A183944.P11998361429409234748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031285 (A283054 n).toNat - A259344 (n + 1)

end

end A183944.P11998361429409234748

/-! ## A183944.P17274601670495377999

`A306069(A258309(n))`
-/

namespace A183944.P17274601670495377999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306069 (A258309 n).toNat

end

end A183944.P17274601670495377999

/-! ## A183944.P15035010945845157319

`A338842(A144042(n+1))`
-/

namespace A183944.P15035010945845157319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338842 (A144042 (n + 1)).toNat

end

end A183944.P15035010945845157319

/-!
# A183945: Number of strings of numbers x(i=1..n) in 0..n with sum i^2*x(i) equal to n^3.

The programs for A183945, there is no canonical definition to state claims against.
-/

/-! ## A183945.P17023351922197186512

`A183953((n+1)²+n²)`
-/

namespace A183945.P17023351922197186512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 ((n + 1) ^ 2 + n ^ 2)

end

end A183945.P17023351922197186512

/-! ## A183945.P16671970001913169015

`A241827(A236773(n))`
-/

namespace A183945.P16671970001913169015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241827 (A236773 n).toNat

end

end A183945.P16671970001913169015

/-!
# A183946: Number of strings of numbers x(i=1..n) in 0..2 with sum i^2*x(i) equal to n^2*2.

The programs for A183946, there is no canonical definition to state claims against.
-/

/-! ## A183946.P10883715464319134996

`A183953(∑[n+2])`
-/

namespace A183946.P10883715464319134996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183946.P10883715464319134996

/-!
# A183947: Number of strings of numbers x(i=1..n) in 0..3 with sum i^2*x(i) equal to n^2*3.

The programs for A183947, there is no canonical definition to state claims against.
-/

/-! ## A183947.P8488139497996013880

`A183953(Δ[A008778(n)])`
-/

namespace A183947.P8488139497996013880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008778 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n).toNat

end

end A183947.P8488139497996013880

/-!
# A183948: Number of strings of numbers x(i=1..n) in 0..4 with sum i^2*x(i) equal to n^2*4.

The programs for A183948, there is no canonical definition to state claims against.
-/

/-! ## A183948.P14521175382443434230

`A183953(A027379(n+2))`
-/

namespace A183948.P14521175382443434230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A027379 (n + 2)).toNat

end

end A183948.P14521175382443434230

/-!
# A183949: Number of strings of numbers x(i=1..n) in 0..5 with sum i^2*x(i) equal to n^2*5.

The programs for A183949, there is no canonical definition to state claims against.
-/

/-! ## A183949.P5121913624019582665

`A183953(Δ[A264443(n)])`
-/

namespace A183949.P5121913624019582665
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (f1 (n + 1) - f1 n).toNat

end

end A183949.P5121913624019582665

/-! ## A183949.P9899911180066442401

`A185150(A126568(n+1))`
-/

namespace A183949.P9899911180066442401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185150 (A126568 (n + 1)).toNat

end

end A183949.P9899911180066442401

/-!
# A183950: Number of strings of numbers x(i=1..n) in 0..6 with sum i^2*x(i) equal to n^2*6.

The programs for A183950, there is no canonical definition to state claims against.
-/

/-! ## A183950.P13941391400841602690

`A183953(A052905(n+3))`
-/

namespace A183950.P13941391400841602690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A052905 (n + 3)).toNat

end

end A183950.P13941391400841602690

/-!
# A183951: Number of strings of numbers x(i=1..n) in 0..7 with sum i^2*x(i) equal to n^2*7.

The programs for A183951, there is no canonical definition to state claims against.
-/

/-! ## A183951.P1512114858185595421

`record[A183953(∑[n+4])]`
-/

namespace A183951.P1512114858185595421
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183951.P1512114858185595421

/-! ## A183951.P15892489325564921185

`A183953(A055999(n+4))`
-/

namespace A183951.P15892489325564921185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055999 (n + 4)).toNat

end

end A183951.P15892489325564921185

/-!
# A183952: Number of strings of numbers x(i=1..n) in 0..8 with sum i^2*x(i) equal to n^2*8.

The programs for A183952, there is no canonical definition to state claims against.
-/

/-! ## A183952.P11288915163951135540

`A183953(A155212(n+4)+1)`
-/

namespace A183952.P11288915163951135540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A155212 (n + 4) + 1).toNat

end

end A183952.P11288915163951135540

/-!
# A183953: T(n,k) is the number of strings of numbers x(i=1..n) in 0..k with sum i^2*x(i) equal to k*n^2.

The programs for A183953, there is no canonical definition to state claims against.
-/

/-! ## A183953.P10597223573594263752

`A182597(A144287(n+1)+2)`
-/

namespace A183953.P10597223573594263752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182597 (A144287 (n + 1) + 2).toNat

end

end A183953.P10597223573594263752

/-! ## A183953.P12971236343923656357

`A212632(A202252(n+1)+A091225(n))`
-/

namespace A183953.P12971236343923656357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212632 (A202252 (n + 1) + A091225 n).toNat

end

end A183953.P12971236343923656357

/-! ## A183953.P12297065976066363402

`A117546(A030308(n+4)+A001631(n))`
-/

namespace A183953.P12297065976066363402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117546 (A030308 (n + 4) + A001631 n).toNat

end

end A183953.P12297065976066363402

/-! ## A183953.P1572920804606391229

`A163994(A089177(3*n)*A287214(n))`
-/

namespace A183953.P1572920804606391229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163994 (A089177 (3 * n) * A287214 n).toNat

end

end A183953.P1572920804606391229

/-! ## A183953.P566194344108853383

`gcd(A212632(A202252(n+1)), A264443(n))`
-/

namespace A183953.P566194344108853383
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A212632 (A202252 (n + 1)).toNat) (A264443 n)

end

end A183953.P566194344108853383

/-!
# A183954: Number of strings of numbers x(i=1..3) in 0..n with sum i^2*x(i) equal to n*9.

The programs for A183954, the canonical program `A183954.P12203830716976065382` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183954 has offset 1).

The definition of A183954 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 867 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183954.P13390413056340145295

`ogf((1-x^2+x^3+x^5-x^6+x^7+x^8-2x^9+x^10)/(1-2x+x^2-x^9+2x^10-x^11))`
-/

namespace A183954.P13390413056340145295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -1, 1, 0, 1, -1, 1, 1, -2, 1] [1, -2, 1, 0, 0, 0, 0, 0, 0, -1, 2, -1] n

end

end A183954.P13390413056340145295

namespace A183954

/-- `ogf((1-x^2+x^3+x^5-x^6+x^7+x^8-2x^9+x^10)/(1-2x+x^2-x^9+2x^10-x^11))` -/
def P13390413056340145295.Spec : Prop :=
  ∀ n, P13390413056340145295.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P12203830716976065382

`A011862(n)+A008618(10*(n+1))`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A183954

/-- `A011862(n)+A008618(10*(n+1))` -/
def P12203830716976065382.Spec : Prop :=
  ∀ n, P12203830716976065382.a n = A183954 (n + 1)

theorem P12203830716976065382.correct : P12203830716976065382.Spec := by
  intro n
  simp only [A183954, Nat.add_sub_cancel]

end A183954

/-! ## A183954.P3886278305274304566

`∑[A289133(n+4)]-A289133(2*n)`
-/

namespace A183954.P3886278305274304566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289133 (n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A289133 (2 * n)

end

end A183954.P3886278305274304566

namespace A183954

/-- `∑[A289133(n+4)]-A289133(2*n)` -/
def P3886278305274304566.Spec : Prop :=
  ∀ n, P3886278305274304566.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P17531433685526640993

`A036407(n)+A004396(A004396(n+1))`
-/

namespace A183954.P17531433685526640993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036407 n + A004396 (A004396 (n + 1)).toNat

end

end A183954.P17531433685526640993

namespace A183954

/-- `A036407(n)+A004396(A004396(n+1))` -/
def P17531433685526640993.Spec : Prop :=
  ∀ n, P17531433685526640993.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P16622756152140818226

`A008618(2*(n+1))+A004396(A001840(n))`
-/

namespace A183954.P16622756152140818226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (2 * (n + 1)) + A004396 (A001840 n).toNat

end

end A183954.P16622756152140818226

namespace A183954

/-- `A008618(2*(n+1))+A004396(A001840(n))` -/
def P16622756152140818226.Spec : Prop :=
  ∀ n, P16622756152140818226.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P2548243104981535184

`A002264(A002264(n+10))+A004396(A001840(n))`
-/

namespace A183954.P2548243104981535184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A002264 (n + 10)).toNat + A004396 (A001840 n).toNat

end

end A183954.P2548243104981535184

namespace A183954

/-- `A002264(A002264(n+10))+A004396(A001840(n))` -/
def P2548243104981535184.Spec : Prop :=
  ∀ n, P2548243104981535184.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P3887521278185880231

`A008618(A055999(2*n))+A008618(n+1)`
-/

namespace A183954.P3887521278185880231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A055999 (2 * n)).toNat + A008618 (n + 1)

end

end A183954.P3887521278185880231

namespace A183954

/-- `A008618(A055999(2*n))+A008618(n+1)` -/
def P3887521278185880231.Spec : Prop :=
  ∀ n, P3887521278185880231.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P3150315504507047196

`A008618(A034856(2*(n+1)))+A008618(n+1)`
-/

namespace A183954.P3150315504507047196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008618 (A034856 (2 * (n + 1))).toNat + A008618 (n + 1)

end

end A183954.P3150315504507047196

namespace A183954

/-- `A008618(A034856(2*(n+1)))+A008618(n+1)` -/
def P3150315504507047196.Spec : Prop :=
  ∀ n, P3150315504507047196.a n = A183954 (n + 1)

end A183954

/-! ## A183954.P14078897490186530039

`A183953(A167614(n+1))`
-/

namespace A183954.P14078897490186530039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A167614 (n + 1)).toNat

end

end A183954.P14078897490186530039

namespace A183954

/-- `A183953(A167614(n+1))` -/
def P14078897490186530039.Spec : Prop :=
  ∀ n, P14078897490186530039.a n = A183954 (n + 1)

end A183954

/-!
# A183955: Number of strings of numbers x(i=1..4) in 0..n with sum i^2*x(i) equal to n*16.

The programs for A183955, there is no canonical definition to state claims against.
-/

/-! ## A183955.P11660223258814885954

`A183953(A055999(n)+10)`
-/

namespace A183955.P11660223258814885954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055999 n + 10).toNat

end

end A183955.P11660223258814885954

/-!
# A183956: Number of strings of numbers x(i=1..5) in 0..n with sum i^2*x(i) equal to n*25.

The programs for A183956, there is no canonical definition to state claims against.
-/

/-! ## A183956.P4966314716836332717

`A183953(A167499(n+3))`
-/

namespace A183956.P4966314716836332717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A167499 (n + 3)).toNat

end

end A183956.P4966314716836332717

/-! ## A183956.P13613108596630756542

`record[A183953(A014132(A167499(n)))]`
-/

namespace A183956.P13613108596630756542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A014132 (A167499 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183956.P13613108596630756542

/-!
# A183957: Number of strings of numbers x(i=1..6) in 0..n with sum i^2*x(i) equal to n*36.

The programs for A183957, there is no canonical definition to state claims against.
-/

/-! ## A183957.P8376665010630757278

`A183953(A166136(n+4))`
-/

namespace A183957.P8376665010630757278
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A166136 (n + 4)).toNat

end

end A183957.P8376665010630757278

/-!
# A183958: Number of strings of numbers x(i=1..7) in 0..n with sum i^2*x(i) equal to n*49.

The programs for A183958, there is no canonical definition to state claims against.
-/

/-! ## A183958.P17049373740570179226

`record[A183953(A055999(n)+13)]`
-/

namespace A183958.P17049373740570179226
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A055999 n + 13).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183958.P17049373740570179226

/-! ## A183958.P15704704775403763261

`A183953(A000217(n+6)+7)`
-/

namespace A183958.P15704704775403763261
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000217 (n + 6) + 7).toNat

end

end A183958.P15704704775403763261

/-!
# A183959: Number of strings of numbers x(i=1..8) in 0..n with sum i^2*x(i) equal to n*64.

The programs for A183959, there is no canonical definition to state claims against.
-/

/-! ## A183959.P14533185967973902835

`A183953(A000217(n+7)+8)`
-/

namespace A183959.P14533185967973902835
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000217 (n + 7) + 8).toNat

end

end A183959.P14533185967973902835

/-!
# A183960: Number of strings of numbers x(i=1..9) in 0..n with sum i^2*x(i) equal to n*81.

The programs for A183960, there is no canonical definition to state claims against.
-/

/-! ## A183960.P16132818321106522665

`A183953(A000217(n+8)+9)`
-/

namespace A183960.P16132818321106522665
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A000217 (n + 8) + 9).toNat

end

end A183960.P16132818321106522665

/-!
# A183961: Number of strings of numbers x(i=1..10) in 0..n with sum i^2*x(i) equal to n*100.

The programs for A183961, there is no canonical definition to state claims against.
-/

/-! ## A183961.P8094962687484006968

`A183953(A167614(n+8)+7)`
-/

namespace A183961.P8094962687484006968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183953 (A167614 (n + 8) + 7).toNat

end

end A183961.P8094962687484006968

/-!
# A183962: Number of (n+1)X(n+1) 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183962, there is no canonical definition to state claims against.
-/

/-! ## A183962.P10992949024934136682

`A183971(∑[4*n]+1)`
-/

namespace A183962.P10992949024934136682
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183962.P10992949024934136682

/-!
# A183963: Number of (n+1)X2 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183963, there is no canonical definition to state claims against.
-/

/-! ## A183963.P6303245209507396268

`A183971(∑[n]+1)`
-/

namespace A183963.P6303245209507396268
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183963.P6303245209507396268

/-! ## A183963.P14695673867294073184

`record[gcd(col(n), A183971(n+1))]`
-/

namespace A183963.P14695673867294073184
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (SequenceMachineLib.triCol n : ℤ) (A183971 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183963.P14695673867294073184

/-! ## A183963.P6017753872580153388

`record[A183971(A246276(n+1))]`
-/

namespace A183963.P6017753872580153388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183963.P6017753872580153388

/-! ## A183963.P5531588498788016616

`record[A183971(A249742(n+1))]`
-/

namespace A183963.P5531588498788016616
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A249742 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183963.P5531588498788016616

/-!
# A183964: Number of (n+1)X3 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183964, there is no canonical definition to state claims against.
-/

/-! ## A183964.P6962613132954865117

`A183971(∑[n+1]+2)`
-/

namespace A183964.P6962613132954865117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183964.P6962613132954865117

/-! ## A183964.P6487359726760403780

`record[A183971(n+2)/A062190(n)]`
-/

namespace A183964.P6487359726760403780
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183971 (n + 2) : ℚ) / (A062190 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183964.P6487359726760403780

/-! ## A183964.P12015228856455414522

`record[gcd(A002262(n), A183971(n+2))]`
-/

namespace A183964.P12015228856455414522
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 n) (A183971 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183964.P12015228856455414522

/-! ## A183964.P9052064136797630939

`record[A183971(abs(A201163(n)))]`
-/

namespace A183964.P9052064136797630939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 |A201163 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183964.P9052064136797630939

/-!
# A183965: Number of (n+1) X 4 0..2 arrays with no 2 X 2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183965, there is no canonical definition to state claims against.
-/

/-! ## A183965.P8290999592162382463

`A183971(∑[n+2]+4)`
-/

namespace A183965.P8290999592162382463
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183965.P8290999592162382463

/-! ## A183965.P4146360370239242212

`record[root(A183971(n+4), A038455(n+1))]`
-/

namespace A183965.P4146360370239242212
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183971 (n + 4) : ℝ) ^ (1 / (A038455 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183965.P4146360370239242212

/-!
# A183966: Number of (n+1)X5 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183966, there is no canonical definition to state claims against.
-/

/-! ## A183966.P2035757039406145022

`A183971(∑[n+3]+7)`
-/

namespace A183966.P2035757039406145022
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183966.P2035757039406145022

/-! ## A183966.P16660862690087153173

`record[A183971(A112873(n+1)+5)]`
-/

namespace A183966.P16660862690087153173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A112873 (n + 1) + 5).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183966.P16660862690087153173

/-!
# A183967: Number of (n+1)X6 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183967, there is no canonical definition to state claims against.
-/

/-! ## A183967.P7221219882330773307

`A183971(A374005(n+1))`
-/

namespace A183967.P7221219882330773307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A374005 (n + 1)).toNat

end

end A183967.P7221219882330773307

/-!
# A183968: Number of (n+1) X 7 0..2 arrays with no 2 X 2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183968, there is no canonical definition to state claims against.
-/

/-! ## A183968.P3433242863642022312

`A183971(A374007(n+1))`
-/

namespace A183968.P3433242863642022312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A374007 (n + 1)).toNat

end

end A183968.P3433242863642022312

/-!
# A183970: Number of (n+1)X8 0..2 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183970, there is no canonical definition to state claims against.
-/

/-! ## A183970.P17716995042078127201

`A183971(A055999(n+4))`
-/

namespace A183970.P17716995042078127201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183971 (A055999 (n + 4)).toNat

end

end A183970.P17716995042078127201

/-!
# A183972: Half the number of (n+1)X2 0..3 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183972, there is no canonical definition to state claims against.
-/

/-! ## A183972.P2435960865490216117

`A183976(∑[n]+1)`
-/

namespace A183972.P2435960865490216117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183972.P2435960865490216117

/-! ## A183972.P8148893836365917014

`record[A183976(A246276(n+1))]`
-/

namespace A183972.P8148893836365917014
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (A246276 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183972.P8148893836365917014

/-! ## A183972.P7103689303764225103

`record[A010054(n)*A183976(n+1)]`
-/

namespace A183972.P7103689303764225103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183972.P7103689303764225103

/-! ## A183972.P9509241080843668869

`record[A103451(n)*A183976(n+1)]`
-/

namespace A183972.P9509241080843668869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103451 n * A183976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183972.P9509241080843668869

/-!
# A183973: Half the number of (n+1)X3 0..3 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183973, there is no canonical definition to state claims against.
-/

/-! ## A183973.P14792152022267797640

`A183976(∑[1+n]+2)`
-/

namespace A183973.P14792152022267797640
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183973.P14792152022267797640

/-! ## A183973.P7599002596598350992

`record[A010054(n)*A183976(n+2)]`
-/

namespace A183973.P7599002596598350992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010054 n * A183976 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183973.P7599002596598350992

/-! ## A183973.P7664689396036996769

`record[gcd(A053616(n), A183976(n+2))]`
-/

namespace A183973.P7664689396036996769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A053616 n) (A183976 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183973.P7664689396036996769

/-! ## A183973.P492414928221986070

`record[root(A183976(n+2), A029637(n+1))]`
-/

namespace A183973.P492414928221986070
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A183976 (n + 2) : ℝ) ^ (1 / (A029637 (n + 1) : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183973.P492414928221986070

/-!
# A183974: Half the number of (n+1)X4 0..3 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183974, there is no canonical definition to state claims against.
-/

/-! ## A183974.P13905305539802316336

`A183976(∑[n+2]+4)`
-/

namespace A183974.P13905305539802316336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183974.P13905305539802316336

/-!
# A183975: Half the number of (n+1)X5 0..3 arrays with no 2X2 subblock sum differing from a horizontal or vertical neighbor subblock sum by more than one.

The programs for A183975, there is no canonical definition to state claims against.
-/

/-! ## A183975.P6702246642436974440

`A183976(∑[n+3]+7)`
-/

namespace A183975.P6702246642436974440
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183975.P6702246642436974440

/-! ## A183975.P2901287328983583127

`record[A183976(A184102(2*(n+1)))]`
-/

namespace A183975.P2901287328983583127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183976 (A184102 (2 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183975.P2901287328983583127

/-!
# A183977: 1/4 the number of (n+1) X (n+1) binary arrays with all 2 X 2 subblock sums the same.

The programs for A183977, the canonical program `A183977.P8491069499870203952` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183977 has offset 1).

The definition of A183977 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183977.P13911845504917446978

`ogf((4-4x-10x^2+8x^3)/(1-3x+6x^3-4x^4))`
-/

namespace A183977.P13911845504917446978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -4, -10, 8] [1, -3, 0, 6, -4] n

end

end A183977.P13911845504917446978

namespace A183977

/-- `ogf((4-4x-10x^2+8x^3)/(1-3x+6x^3-4x^4))` -/
def P13911845504917446978.Spec : Prop :=
  ∀ n, P13911845504917446978.a n = A183977 (n + 1)

end A183977

/-! ## A183977.P8491069499870203952

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=4, a(1)=8, a(2)=14, a(3)=26`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183977

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P8491069499870203952.Spec : Prop :=
  ∀ n, P8491069499870203952.a n = A183977 (n + 1)

theorem P8491069499870203952.correct : P8491069499870203952.Spec := by
  intro n
  simp only [A183977, Nat.add_sub_cancel]

end A183977

/-! ## A183977.P6639073376260410381

`∑[2^ceil(n/2)+2^n]+2`
-/

namespace A183977.P6639073376260410381
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ) + (2 ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2

end

end A183977.P6639073376260410381

namespace A183977

/-- `∑[2^ceil(n/2)+2^n]+2` -/
def P6639073376260410381.Spec : Prop :=
  ∀ n, P6639073376260410381.a n = (A183977 (n + 1) : ℚ)

end A183977

/-! ## A183977.P5656603352553828339

`2*(2^n-∑[2*a(n-2)])` with `a(0)=-1, a(1)=-1, a(2)=-1`
-/

namespace A183977.P5656603352553828339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [-1, -1, -1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * ((2 ^ n : ℤ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A183977.P5656603352553828339

namespace A183977

/-- `2*(2^n-∑[2*a(n-2)])` -/
def P5656603352553828339.Spec : Prop :=
  ∀ n, P5656603352553828339.a n = A183977 (n + 1)

end A183977

/-! ## A183977.P18321455905770046983

`2*(A183978(n+1)-2)`
-/

namespace A183977.P18321455905770046983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A183978 (n + 1) - 2)

end

end A183977.P18321455905770046983

namespace A183977

/-- `2*(A183978(n+1)-2)` -/
def P18321455905770046983.Spec : Prop :=
  ∀ n, P18321455905770046983.a n = A183977 (n + 1)

end A183977

/-! ## A183977.P6965188109161378572

`2*(A183979(n+1)-4)`
-/

namespace A183977.P6965188109161378572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A183979 (n + 1) - 4)

end

end A183977.P6965188109161378572

namespace A183977

/-- `2*(A183979(n+1)-4)` -/
def P6965188109161378572.Spec : Prop :=
  ∀ n, P6965188109161378572.a n = A183977 (n + 1)

end A183977

/-! ## A183977.P4694624639807614853

`2*(A052955(n)+A000079(n))`
-/

namespace A183977.P4694624639807614853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052955 n + A000079 n)

end

end A183977.P4694624639807614853

namespace A183977

/-- `2*(A052955(n)+A000079(n))` -/
def P4694624639807614853.Spec : Prop :=
  ∀ n, P4694624639807614853.a n = A183977 (n + 1)

end A183977

/-! ## A183977.P14245470123320339203

`2*(A052551(n)+A051437(n))`
-/

namespace A183977.P14245470123320339203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A052551 n + A051437 n)

end

end A183977.P14245470123320339203

namespace A183977

/-- `2*(A052551(n)+A051437(n))` -/
def P14245470123320339203.Spec : Prop :=
  ∀ n, P14245470123320339203.a n = A183977 (n + 1)

end A183977

/-!
# A183978: 1/4 the number of (n+1) X 2 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183978, the canonical program `A183978.P7408826475777091792` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183978 has offset 1).

The definition of A183978 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A183978.P7408826475777091792

`(1+2^floor(n/2))*(1+2^ceil(n/2))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183978

/-- `(1+2^floor(n/2))*(1+2^ceil(n/2))` -/
def P7408826475777091792.Spec : Prop :=
  ∀ n, P7408826475777091792.a n = (A183978 (n + 1) : ℚ)

end A183978

/-! ## A183978.P1014502941550528967

`ogf((4-6x-9x^2+12x^3)/(1-3x+6x^3-4x^4))`
-/

namespace A183978.P1014502941550528967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -6, -9, 12] [1, -3, 0, 6, -4] n

end

end A183978.P1014502941550528967

namespace A183978

/-- `ogf((4-6x-9x^2+12x^3)/(1-3x+6x^3-4x^4))` -/
def P1014502941550528967.Spec : Prop :=
  ∀ n, P1014502941550528967.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P5759299683952997587

`∑[2*a(n-2)]+2^n` with `a(0)=3, a(1)=1, a(2)=1`
-/

namespace A183978.P5759299683952997587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [3, 1, 1] fun n f1 =>
  2 * f1 (n - 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 2 ^ n

end

end A183978.P5759299683952997587

namespace A183978

/-- `∑[2*a(n-2)]+2^n` -/
def P5759299683952997587.Spec : Prop :=
  ∀ n, (P5759299683952997587.a n : ℤ) = A183978 (n + 1)

end A183978

/-! ## A183978.P10149198239603460155

`2*(a(n-2)+2^(n-2))-1` with `a(0)=4, a(1)=6`
-/

namespace A183978.P10149198239603460155
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4, 6] fun n a =>
  2 * (a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)) - 1

end

end A183978.P10149198239603460155

namespace A183978

/-- `2*(a(n-2)+2^(n-2))-1` -/
def P10149198239603460155.Spec : Prop :=
  ∀ n, P10149198239603460155.a n = (A183978 (n + 1) : ℚ)

end A183978

/-! ## A183978.P18430186574189189611

`2*a(n-1)-1-2^floor(n/2)` with `a(0)=4`
-/

namespace A183978.P18430186574189189611
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  2 * a (n - 1) - 1 - (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)

end

end A183978.P18430186574189189611

namespace A183978

/-- `2*a(n-1)-1-2^floor(n/2)` -/
def P18430186574189189611.Spec : Prop :=
  ∀ n, P18430186574189189611.a n = (A183978 (n + 1) : ℚ)

end A183978

/-! ## A183978.P3889783646405915918

`A183979(n+1)-2`
-/

namespace A183978.P3889783646405915918
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) - 2

end

end A183978.P3889783646405915918

namespace A183978

/-- `A183979(n+1)-2` -/
def P3889783646405915918.Spec : Prop :=
  ∀ n, P3889783646405915918.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P17178903316920550273

`A183980(n+1)-5`
-/

namespace A183978.P17178903316920550273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 1) - 5

end

end A183978.P17178903316920550273

namespace A183978

/-- `A183980(n+1)-5` -/
def P17178903316920550273.Spec : Prop :=
  ∀ n, P17178903316920550273.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P4322657397679267453

`∑[A005418(n+1)]+3`
-/

namespace A183978.P4322657397679267453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 3

end

end A183978.P4322657397679267453

namespace A183978

/-- `∑[A005418(n+1)]+3` -/
def P4322657397679267453.Spec : Prop :=
  ∀ n, P4322657397679267453.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P10013762720899294924

`A209721(n+1)+2^n`
-/

namespace A183978.P10013762720899294924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209721 (n + 1) + (2 ^ n : ℤ)

end

end A183978.P10013762720899294924

namespace A183978

/-- `A209721(n+1)+2^n` -/
def P10013762720899294924.Spec : Prop :=
  ∀ n, P10013762720899294924.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P15139515393340966336

`∑[A056326(n+1)]+2-log2(1/4)+n`
-/

namespace A183978.P15139515393340966336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056326 (n + 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 2 : ℤ) : ℝ) - Real.logb 2 ((1 : ℚ) / 4 : ℝ) + (n : ℝ)

end

end A183978.P15139515393340966336

namespace A183978

/-- `∑[A056326(n+1)]+2-log2(1/4)+n` -/
def P15139515393340966336.Spec : Prop :=
  ∀ n, P15139515393340966336.a n = (A183978 (n + 1) : ℝ)

end A183978

/-! ## A183978.P16032885698809783245

`A027556(n)+A010737(n)`
-/

namespace A183978.P16032885698809783245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027556 n + A010737 n

end

end A183978.P16032885698809783245

namespace A183978

/-- `A027556(n)+A010737(n)` -/
def P16032885698809783245.Spec : Prop :=
  ∀ n, P16032885698809783245.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P13483037552155315280

`A052955(n)+A052548(n)`
-/

namespace A183978.P13483037552155315280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + A052548 n

end

end A183978.P13483037552155315280

namespace A183978

/-- `A052955(n)+A052548(n)` -/
def P13483037552155315280.Spec : Prop :=
  ∀ n, P13483037552155315280.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P5359332693901525738

`A000051(n)+A052955(n)+1`
-/

namespace A183978.P5359332693901525738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n + (A052955 n + 1)

end

end A183978.P5359332693901525738

namespace A183978

/-- `A000051(n)+A052955(n)+1` -/
def P5359332693901525738.Spec : Prop :=
  ∀ n, P5359332693901525738.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P8377712282100867863

`A164090(n+1)+A000051(n)`
-/

namespace A183978.P8377712282100867863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164090 (n + 1) + A000051 n

end

end A183978.P8377712282100867863

namespace A183978

/-- `A164090(n+1)+A000051(n)` -/
def P8377712282100867863.Spec : Prop :=
  ∀ n, P8377712282100867863.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P9500391953115937235

`A209722(n+1)+A000225(n)`
-/

namespace A183978.P9500391953115937235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209722 (n + 1) + A000225 n

end

end A183978.P9500391953115937235

namespace A183978

/-- `A209722(n+1)+A000225(n)` -/
def P9500391953115937235.Spec : Prop :=
  ∀ n, P9500391953115937235.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P16073589403698608941

`A209723(n+1)+A036563(n)`
-/

namespace A183978.P16073589403698608941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209723 (n + 1) + A036563 n

end

end A183978.P16073589403698608941

namespace A183978

/-- `A209723(n+1)+A036563(n)` -/
def P16073589403698608941.Spec : Prop :=
  ∀ n, P16073589403698608941.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P16253791383930390032

`A274230(n)+A090989(n+1)`
-/

namespace A183978.P16253791383930390032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274230 n + A090989 (n + 1)

end

end A183978.P16253791383930390032

namespace A183978

/-- `A274230(n)+A090989(n+1)` -/
def P16253791383930390032.Spec : Prop :=
  ∀ n, P16253791383930390032.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P772386167529050651

`A209724(n+1)+A168616(n)`
-/

namespace A183978.P772386167529050651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + A168616 n

end

end A183978.P772386167529050651

namespace A183978

/-- `A209724(n+1)+A168616(n)` -/
def P772386167529050651.Spec : Prop :=
  ∀ n, P772386167529050651.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P6068482387682939497

`A209725(n+1)+A185346(n)`
-/

namespace A183978.P6068482387682939497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (n + 1) + A185346 n

end

end A183978.P6068482387682939497

namespace A183978

/-- `A209725(n+1)+A185346(n)` -/
def P6068482387682939497.Spec : Prop :=
  ∀ n, P6068482387682939497.a n = A183978 (n + 1)

end A183978

/-! ## A183978.P12293459870796700740

`A029744(n+2)+A000051(n)`
-/

namespace A183978.P12293459870796700740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (n + 2) + A000051 n

end

end A183978.P12293459870796700740

namespace A183978

/-- `A029744(n+2)+A000051(n)` -/
def P12293459870796700740.Spec : Prop :=
  ∀ n, P12293459870796700740.a n = A183978 (n + 1)

end A183978

/-!
# A183979: 1/4 the number of (n+1) X 3 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183979, the canonical program `A183979.P17565347613664339405` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183979 has offset 1).

The definition of A183979 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183979.P17565347613664339405

`ogf((6-10x-13x^2+20x^3)/(1-3x+6x^3-4x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183979

/-- `ogf((6-10x-13x^2+20x^3)/(1-3x+6x^3-4x^4))` -/
def P17565347613664339405.Spec : Prop :=
  ∀ n, P17565347613664339405.a n = A183979 (n + 1)

theorem P17565347613664339405.correct : P17565347613664339405.Spec := by
  intro n
  simp only [A183979, Nat.add_sub_cancel]

end A183979

/-! ## A183979.P8384713661137699228

`(1+2^floor(n/2))*(1+2^ceil(n/2))+2`
-/

namespace A183979.P8384713661137699228
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) * (1 + (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)) + 2

end

end A183979.P8384713661137699228

namespace A183979

/-- `(1+2^floor(n/2))*(1+2^ceil(n/2))+2` -/
def P8384713661137699228.Spec : Prop :=
  ∀ n, P8384713661137699228.a n = (A183979 (n + 1) : ℚ)

end A183979

/-! ## A183979.P4434465303360632113

`abs(3-A183980(n+1))`
-/

namespace A183979.P4434465303360632113
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |3 - A183980 (n + 1)|

end

end A183979.P4434465303360632113

namespace A183979

/-- `abs(3-A183980(n+1))` -/
def P4434465303360632113.Spec : Prop :=
  ∀ n, P4434465303360632113.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P11234861350121240114

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=6, a(1)=8, a(2)=11, a(3)=17`
-/

namespace A183979.P11234861350121240114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [6, 8, 11, 17] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A183979.P11234861350121240114

namespace A183979

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P11234861350121240114.Spec : Prop :=
  ∀ n, P11234861350121240114.a n = A183979 (n + 1)

end A183979

/-! ## A183979.P11909620208688430604

`(A183977(n+1)+8)*1/2`
-/

namespace A183979.P11909620208688430604
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183977 (n + 1) + 8 : ℚ) * ((1 : ℚ) / 2)

end

end A183979.P11909620208688430604

namespace A183979

/-- `(A183977(n+1)+8)*1/2` -/
def P11909620208688430604.Spec : Prop :=
  ∀ n, P11909620208688430604.a n = (A183979 (n + 1) : ℚ)

end A183979

/-!
# A183980: 1/4 the number of (n+1) X 4 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183980, the canonical program `A183980.P14975836854263813635` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183980 has offset 1).

The definition of A183980 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183980.P14975836854263813635

`ogf((9-16x-19x^2+32x^3)/(1-3x+6x^3-4x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183980

/-- `ogf((9-16x-19x^2+32x^3)/(1-3x+6x^3-4x^4))` -/
def P14975836854263813635.Spec : Prop :=
  ∀ n, P14975836854263813635.a n = A183980 (n + 1)

theorem P14975836854263813635.correct : P14975836854263813635.Spec := by
  intro n
  simp only [A183980, Nat.add_sub_cancel]

end A183980

/-! ## A183980.P13719985800535427698

`(1+2^floor(n/2))*(1+2^ceil(n/2))+5`
-/

namespace A183980.P13719985800535427698
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + (2 : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ)) * (1 + (2 : ℚ) ^ (⌈(n : ℚ) / 2⌉ : ℤ)) + 5

end

end A183980.P13719985800535427698

namespace A183980

/-- `(1+2^floor(n/2))*(1+2^ceil(n/2))+5` -/
def P13719985800535427698.Spec : Prop :=
  ∀ n, P13719985800535427698.a n = (A183980 (n + 1) : ℚ)

end A183980

/-! ## A183980.P2639858795469390290

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=9, a(1)=11, a(2)=14, a(3)=20`
-/

namespace A183980.P2639858795469390290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [9, 11, 14, 20] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A183980.P2639858795469390290

namespace A183980

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P2639858795469390290.Spec : Prop :=
  ∀ n, P2639858795469390290.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P3692021233891281786

`record[A183986(n+1)+5]`
-/

namespace A183980.P3692021233891281786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183986 (n + 1) + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183980.P3692021233891281786

namespace A183980

/-- `record[A183986(n+1)+5]` -/
def P3692021233891281786.Spec : Prop :=
  ∀ n, P3692021233891281786.a n = A183980 (n + 1)

end A183980

/-! ## A183980.P13207168115244165239

`A183986(A167614(1+n))`
-/

namespace A183980.P13207168115244165239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183986 (A167614 (1 + n)).toNat

end

end A183980.P13207168115244165239

namespace A183980

/-- `A183986(A167614(1+n))` -/
def P13207168115244165239.Spec : Prop :=
  ∀ n, P13207168115244165239.a n = A183980 (n + 1)

end A183980

/-!
# A183981: 1/4 the number of (n+1) X 5 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183981, the canonical program `A183981.P7191257138972285613` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183981 has offset 1).

The definition of A183981 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183981.P7946146249613319895

`ogf((15-28x-31x^2+56x^3)/(1-3x+6x^3-4x^4))`
-/

namespace A183981.P7946146249613319895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [15, -28, -31, 56] [1, -3, 0, 6, -4] n

end

end A183981.P7946146249613319895

namespace A183981

/-- `ogf((15-28x-31x^2+56x^3)/(1-3x+6x^3-4x^4))` -/
def P7946146249613319895.Spec : Prop :=
  ∀ n, P7946146249613319895.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P7191257138972285613

`∑[2*a(n-2)]+2^n` with `a(0)=14, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183981

/-- `∑[2*a(n-2)]+2^n` -/
def P7191257138972285613.Spec : Prop :=
  ∀ n, (P7191257138972285613.a n : ℤ) = A183981 (n + 1)

theorem P7191257138972285613.correct : P7191257138972285613.Spec := by
  intro n
  simp only [A183981, Nat.add_sub_cancel]

end A183981

/-! ## A183981.P9120309282486680121

`A183980(1+n)+6`
-/

namespace A183981.P9120309282486680121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (1 + n) + 6

end

end A183981.P9120309282486680121

namespace A183981

/-- `A183980(1+n)+6` -/
def P9120309282486680121.Spec : Prop :=
  ∀ n, P9120309282486680121.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P17098877990727485473

`A183979(n+1)+9`
-/

namespace A183981.P17098877990727485473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183979 (n + 1) + 9

end

end A183981.P17098877990727485473

namespace A183981

/-- `A183979(n+1)+9` -/
def P17098877990727485473.Spec : Prop :=
  ∀ n, P17098877990727485473.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P6137898565077018677

`A183982(n+1)-10`
-/

namespace A183981.P6137898565077018677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 1) - 10

end

end A183981.P6137898565077018677

namespace A183981

/-- `A183982(n+1)-10` -/
def P6137898565077018677.Spec : Prop :=
  ∀ n, P6137898565077018677.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P5435014902227159938

`A183983(n+1)-30`
-/

namespace A183981.P5435014902227159938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183983 (n + 1) - 30

end

end A183981.P5435014902227159938

namespace A183981

/-- `A183983(n+1)-30` -/
def P5435014902227159938.Spec : Prop :=
  ∀ n, P5435014902227159938.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P12973783720053850793

`∑[A005418(n+1)]+14`
-/

namespace A183981.P12973783720053850793
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 14

end

end A183981.P12973783720053850793

namespace A183981

/-- `∑[A005418(n+1)]+14` -/
def P12973783720053850793.Spec : Prop :=
  ∀ n, P12973783720053850793.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P11963727490456787479

`A209726(n+1)+A000918(n)`
-/

namespace A183981.P11963727490456787479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209726 (n + 1) + A000918 n

end

end A183981.P11963727490456787479

namespace A183981

/-- `A209726(n+1)+A000918(n)` -/
def P11963727490456787479.Spec : Prop :=
  ∀ n, P11963727490456787479.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P11439427431259682888

`A209725(n+1)+A052548(n)`
-/

namespace A183981.P11439427431259682888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (n + 1) + A052548 n

end

end A183981.P11439427431259682888

namespace A183981

/-- `A209725(n+1)+A052548(n)` -/
def P11439427431259682888.Spec : Prop :=
  ∀ n, P11439427431259682888.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P13073428200643106635

`A209724(n+1)+A153972(n)`
-/

namespace A183981.P13073428200643106635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + A153972 n

end

end A183981.P13073428200643106635

namespace A183981

/-- `A209724(n+1)+A153972(n)` -/
def P13073428200643106635.Spec : Prop :=
  ∀ n, P13073428200643106635.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P6291255389538163779

`A242475(n)+A209723(n+1)`
-/

namespace A183981.P6291255389538163779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242475 n + A209723 (n + 1)

end

end A183981.P6291255389538163779

namespace A183981

/-- `A242475(n)+A209723(n+1)` -/
def P6291255389538163779.Spec : Prop :=
  ∀ n, P6291255389538163779.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P17624167855193809649

`A246139(n)+A209722(n+1)`
-/

namespace A183981.P17624167855193809649
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246139 n + A209722 (n + 1)

end

end A183981.P17624167855193809649

namespace A183981

/-- `A246139(n)+A209722(n+1)` -/
def P17624167855193809649.Spec : Prop :=
  ∀ n, P17624167855193809649.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P13946114445240596285

`A267615(n)+A209721(n+1)`
-/

namespace A183981.P13946114445240596285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267615 n + A209721 (n + 1)

end

end A183981.P13946114445240596285

namespace A183981

/-- `A267615(n)+A209721(n+1)` -/
def P13946114445240596285.Spec : Prop :=
  ∀ n, P13946114445240596285.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P1256631874058266371

`A052955(n)+A168415(n)+6`
-/

namespace A183981.P1256631874058266371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + (A168415 n + 6)

end

end A183981.P1256631874058266371

namespace A183981

/-- `A052955(n)+A168415(n)+6` -/
def P1256631874058266371.Spec : Prop :=
  ∀ n, P1256631874058266371.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P15167411504922187563

`A052955(n)+A140504(n)+9`
-/

namespace A183981.P15167411504922187563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052955 n + (A140504 n + 9)

end

end A183981.P15167411504922187563

namespace A183981

/-- `A052955(n)+A140504(n)+9` -/
def P15167411504922187563.Spec : Prop :=
  ∀ n, P15167411504922187563.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P16974073415697094461

`A036563(n)+A052955(n)+16`
-/

namespace A183981.P16974073415697094461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036563 n + (A052955 n + 16)

end

end A183981.P16974073415697094461

namespace A183981

/-- `A036563(n)+A052955(n)+16` -/
def P16974073415697094461.Spec : Prop :=
  ∀ n, P16974073415697094461.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P11297004308560556069

`A209724(n+1)+A168415(n)-1`
-/

namespace A183981.P11297004308560556069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + (A168415 n - 1)

end

end A183981.P11297004308560556069

namespace A183981

/-- `A209724(n+1)+A168415(n)-1` -/
def P11297004308560556069.Spec : Prop :=
  ∀ n, P11297004308560556069.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P10429140908194741222

`A209724(n+1)+A242475(n)-2`
-/

namespace A183981.P10429140908194741222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209724 (n + 1) + (A242475 n - 2)

end

end A183981.P10429140908194741222

namespace A183981

/-- `A209724(n+1)+A242475(n)-2` -/
def P10429140908194741222.Spec : Prop :=
  ∀ n, P10429140908194741222.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P5946891356177558222

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=15, a(1)=17, a(2)=20, a(3)=26`
-/

namespace A183981.P5946891356177558222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [15, 17, 20, 26] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A183981.P5946891356177558222

namespace A183981

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P5946891356177558222.Spec : Prop :=
  ∀ n, P5946891356177558222.a n = A183981 (n + 1)

end A183981

/-! ## A183981.P16151828889395750185

`A153973(n+1)+A209724(n+1)-A000079(n+1)`
-/

namespace A183981.P16151828889395750185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153973 (n + 1) + (A209724 (n + 1) - A000079 (n + 1))

end

end A183981.P16151828889395750185

namespace A183981

/-- `A153973(n+1)+A209724(n+1)-A000079(n+1)` -/
def P16151828889395750185.Spec : Prop :=
  ∀ n, P16151828889395750185.a n = A183981 (n + 1)

end A183981

/-!
# A183982: 1/4 the number of (n+1) X 6 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183982, the canonical program `A183982.P335565503906891144` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183982 has offset 1).

The definition of A183982 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183982.P335565503906891144

`ogf((25-48x-51x^2+96x^3)/(1-3x+6x^3-4x^4))`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183982

/-- `ogf((25-48x-51x^2+96x^3)/(1-3x+6x^3-4x^4))` -/
def P335565503906891144.Spec : Prop :=
  ∀ n, P335565503906891144.a n = A183982 (n + 1)

theorem P335565503906891144.correct : P335565503906891144.Spec := by
  intro n
  simp only [A183982, Nat.add_sub_cancel]

end A183982

/-! ## A183982.P17482539286490198312

`A183981(1+n)+10`
-/

namespace A183982.P17482539286490198312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (1 + n) + 10

end

end A183982.P17482539286490198312

namespace A183982

/-- `A183981(1+n)+10` -/
def P17482539286490198312.Spec : Prop :=
  ∀ n, P17482539286490198312.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P14526922338006926852

`A183980(n+1)+16`
-/

namespace A183982.P14526922338006926852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 1) + 16

end

end A183982.P14526922338006926852

namespace A183982

/-- `A183980(n+1)+16` -/
def P14526922338006926852.Spec : Prop :=
  ∀ n, P14526922338006926852.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P7927860763911088640

`A183978(n+1)+21`
-/

namespace A183982.P7927860763911088640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183978 (n + 1) + 21

end

end A183982.P7927860763911088640

namespace A183982

/-- `A183978(n+1)+21` -/
def P7927860763911088640.Spec : Prop :=
  ∀ n, P7927860763911088640.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P315298738232316964

`A183983(n+1)+(-20)`
-/

namespace A183982.P315298738232316964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183983 (n + 1) + (-20)

end

end A183982.P315298738232316964

namespace A183982

/-- `A183983(n+1)+(-20)` -/
def P315298738232316964.Spec : Prop :=
  ∀ n, P315298738232316964.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P15264867805325828458

`∑[A005418(1+n)]+24`
-/

namespace A183982.P15264867805325828458
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 24

end

end A183982.P15264867805325828458

namespace A183982

/-- `∑[A005418(1+n)]+24` -/
def P15264867805325828458.Spec : Prop :=
  ∀ n, P15264867805325828458.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P13911226156074930922

`A242475(n)+A209726(n+1)`
-/

namespace A183982.P13911226156074930922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242475 n + A209726 (n + 1)

end

end A183982.P13911226156074930922

namespace A183982

/-- `A242475(n)+A209726(n+1)` -/
def P13911226156074930922.Spec : Prop :=
  ∀ n, P13911226156074930922.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P17115954924854830150

`A209725(n+1)+A267615(n)+1`
-/

namespace A183982.P17115954924854830150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (n + 1) + (A267615 n + 1)

end

end A183982.P17115954924854830150

namespace A183982

/-- `A209725(n+1)+A267615(n)+1` -/
def P17115954924854830150.Spec : Prop :=
  ∀ n, P17115954924854830150.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P17894713063930975696

`A153972(n)+A209724(n+1)+10`
-/

namespace A183982.P17894713063930975696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153972 n + (A209724 (n + 1) + 10)

end

end A183982.P17894713063930975696

namespace A183982

/-- `A153972(n)+A209724(n+1)+10` -/
def P17894713063930975696.Spec : Prop :=
  ∀ n, P17894713063930975696.a n = A183982 (n + 1)

end A183982

/-! ## A183982.P4227692107698705683

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=25, a(1)=27, a(2)=30, a(3)=36`
-/

namespace A183982.P4227692107698705683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [25, 27, 30, 36] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A183982.P4227692107698705683

namespace A183982

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P4227692107698705683.Spec : Prop :=
  ∀ n, P4227692107698705683.a n = A183982 (n + 1)

end A183982

/-!
# A183983: 1/4 the number of (n+1) X 7 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183983, the canonical program `A183983.P11542070752437603461` is in `Seq.B000.C030`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183983 has offset 1).

The definition of A183983 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 332 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183983.P8554422575163886076

`ogf((45-88x-91x^2+176x^3)/(1-3x+6x^3-4x^4))`
-/

namespace A183983.P8554422575163886076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [45, -88, -91, 176] [1, -3, 0, 6, -4] n

end

end A183983.P8554422575163886076

namespace A183983

/-- `ogf((45-88x-91x^2+176x^3)/(1-3x+6x^3-4x^4))` -/
def P8554422575163886076.Spec : Prop :=
  ∀ n, P8554422575163886076.a n = A183983 (n + 1)

end A183983

/-! ## A183983.P13359941760901242831

`∑[2^(n-2)+2*a(n-2)]` with `a(0)=45, a(1)=2, a(2)=3`
-/

namespace A183983.P13359941760901242831
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [45, 2, 3] fun n f1 =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) + 2 * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A183983.P13359941760901242831

namespace A183983

/-- `∑[2^(n-2)+2*a(n-2)]` -/
def P13359941760901242831.Spec : Prop :=
  ∀ n, P13359941760901242831.a n = (A183983 (n + 1) : ℚ)

end A183983

/-! ## A183983.P3707787853321237060

`A183982(1+n)+20`
-/

namespace A183983.P3707787853321237060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (1 + n) + 20

end

end A183983.P3707787853321237060

namespace A183983

/-- `A183982(1+n)+20` -/
def P3707787853321237060.Spec : Prop :=
  ∀ n, P3707787853321237060.a n = A183983 (n + 1)

end A183983

/-! ## A183983.P2224415493233980257

`A183981(1+n)+30`
-/

namespace A183983.P2224415493233980257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183981 (1 + n) + 30

end

end A183983.P2224415493233980257

namespace A183983

/-- `A183981(1+n)+30` -/
def P2224415493233980257.Spec : Prop :=
  ∀ n, P2224415493233980257.a n = A183983 (n + 1)

end A183983

/-! ## A183983.P7475681269663878827

`A183980(n+1)+36`
-/

namespace A183983.P7475681269663878827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (n + 1) + 36

end

end A183983.P7475681269663878827

namespace A183983

/-- `A183980(n+1)+36` -/
def P7475681269663878827.Spec : Prop :=
  ∀ n, P7475681269663878827.a n = A183983 (n + 1)

end A183983

/-! ## A183983.P8499362521948523223

`A183984(n+1)+(-36)`
-/

namespace A183983.P8499362521948523223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183984 (n + 1) + (-36)

end

end A183983.P8499362521948523223

namespace A183983

/-- `A183984(n+1)+(-36)` -/
def P8499362521948523223.Spec : Prop :=
  ∀ n, P8499362521948523223.a n = A183983 (n + 1)

end A183983

/-! ## A183983.P14346507430415437345

`∑[A005418(n+1)]+44`
-/

namespace A183983.P14346507430415437345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 44

end

end A183983.P14346507430415437345

namespace A183983

/-- `∑[A005418(n+1)]+44` -/
def P14346507430415437345.Spec : Prop :=
  ∀ n, P14346507430415437345.a n = A183983 (n + 1)

end A183983

/-! ## A183983.P11542070752437603461

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=45, a(1)=47, a(2)=50, a(3)=56`

The canonical program, it is in `Seq.B000.C030`.
-/

namespace A183983

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P11542070752437603461.Spec : Prop :=
  ∀ n, P11542070752437603461.a n = A183983 (n + 1)

theorem P11542070752437603461.correct : P11542070752437603461.Spec := by
  intro n
  simp only [A183983, Nat.add_sub_cancel]

end A183983

/-!
# A183984: 1/4 the number of (n+1) X 8 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183984, the canonical program `A183984.P10374323360019562295` is in `Seq.B001.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183984 has offset 1).

The definition of A183984 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183984.P10374323360019562295

`A183983(1+n)+36`

The canonical program, it is in `Seq.B001.C008`.
-/

namespace A183984

/-- `A183983(1+n)+36` -/
def P10374323360019562295.Spec : Prop :=
  ∀ n, P10374323360019562295.a n = A183984 (n + 1)

theorem P10374323360019562295.correct : P10374323360019562295.Spec := by
  intro n
  simp only [A183984, Nat.add_sub_cancel]

end A183984

/-! ## A183984.P15097735887303129151

`A183982(n+1)+56`
-/

namespace A183984.P15097735887303129151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 1) + 56

end

end A183984.P15097735887303129151

namespace A183984

/-- `A183982(n+1)+56` -/
def P15097735887303129151.Spec : Prop :=
  ∀ n, P15097735887303129151.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P5622033867683593106

`A183980(1+n)+72`
-/

namespace A183984.P5622033867683593106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183980 (1 + n) + 72

end

end A183984.P5622033867683593106

namespace A183984

/-- `A183980(1+n)+72` -/
def P5622033867683593106.Spec : Prop :=
  ∀ n, P5622033867683593106.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P841055239683807843

`∑[A005418(n+1)]+80`
-/

namespace A183984.P841055239683807843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 80

end

end A183984.P841055239683807843

namespace A183984

/-- `∑[A005418(n+1)]+80` -/
def P841055239683807843.Spec : Prop :=
  ∀ n, P841055239683807843.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P3453165050877954614

`A000079(n)+A052955(n)+79`
-/

namespace A183984.P3453165050877954614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n + (A052955 n + 79)

end

end A183984.P3453165050877954614

namespace A183984

/-- `A000079(n)+A052955(n)+79` -/
def P3453165050877954614.Spec : Prop :=
  ∀ n, P3453165050877954614.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P7574484711941207213

`A005418(n+2)+A016116(n+1)+78`
-/

namespace A183984.P7574484711941207213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) + (A016116 (n + 1) + 78)

end

end A183984.P7574484711941207213

namespace A183984

/-- `A005418(n+2)+A016116(n+1)+78` -/
def P7574484711941207213.Spec : Prop :=
  ∀ n, P7574484711941207213.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P730966458798788037

`A005418(n+2)+A011782(A008619(n+1))+78`
-/

namespace A183984.P730966458798788037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005418 (n + 2) + (A011782 (A008619 (n + 1)).toNat + 78)

end

end A183984.P730966458798788037

namespace A183984

/-- `A005418(n+2)+A011782(A008619(n+1))+78` -/
def P730966458798788037.Spec : Prop :=
  ∀ n, P730966458798788037.a n = A183984 (n + 1)

end A183984

/-! ## A183984.P15102832999482808967

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=81, a(1)=83, a(2)=86, a(3)=92`
-/

namespace A183984.P15102832999482808967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [81, 83, 86, 92] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A183984.P15102832999482808967

namespace A183984

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P15102832999482808967.Spec : Prop :=
  ∀ n, P15102832999482808967.a n = A183984 (n + 1)

end A183984

/-!
# A183985: 1/4 the number of (n+1) X 9 binary arrays with all 2 X 2 subblock sums the same.

The programs for A183985, the canonical program `A183985.P7540120820608740029` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183985 has offset 1).

The definition of A183985 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 333 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183985.P7540120820608740029

`A183984(1+n)+72`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A183985

/-- `A183984(1+n)+72` -/
def P7540120820608740029.Spec : Prop :=
  ∀ n, P7540120820608740029.a n = A183985 (n + 1)

theorem P7540120820608740029.correct : P7540120820608740029.Spec := by
  intro n
  simp only [A183985, Nat.add_sub_cancel]

end A183985

/-! ## A183985.P6473320219089531362

`A183982(n+1)+128`
-/

namespace A183985.P6473320219089531362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183982 (n + 1) + 128

end

end A183985.P6473320219089531362

namespace A183985

/-- `A183982(n+1)+128` -/
def P6473320219089531362.Spec : Prop :=
  ∀ n, P6473320219089531362.a n = A183985 (n + 1)

end A183985

/-! ## A183985.P11399542452758806936

`A183983(1+n)+6*36/2`
-/

namespace A183985.P11399542452758806936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A183983 (1 + n) : ℚ) + 6 * ((36 : ℚ) / 2)

end

end A183985.P11399542452758806936

namespace A183985

/-- `A183983(1+n)+6*36/2` -/
def P11399542452758806936.Spec : Prop :=
  ∀ n, P11399542452758806936.a n = (A183985 (n + 1) : ℚ)

end A183985

/-! ## A183985.P46710819788184123

`3*a(n-1)-6*a(n-3)+4*a(n-4)` with `a(0)=153, a(1)=155, a(2)=158, a(3)=164`
-/

namespace A183985.P46710819788184123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [153, 155, 158, 164] fun n a =>
  3 * a (n - 1) - 6 * a (n - 3) + 4 * a (n - 4)

end

end A183985.P46710819788184123

namespace A183985

/-- `3*a(n-1)-6*a(n-3)+4*a(n-4)` -/
def P46710819788184123.Spec : Prop :=
  ∀ n, P46710819788184123.a n = A183985 (n + 1)

end A183985

/-! ## A183985.P8143816023548633270

`138+A183981(n+1)`
-/

namespace A183985.P8143816023548633270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  138 + A183981 (n + 1)

end

end A183985.P8143816023548633270

namespace A183985

/-- `138+A183981(n+1)` -/
def P8143816023548633270.Spec : Prop :=
  ∀ n, P8143816023548633270.a n = A183985 (n + 1)

end A183985

/-!
# A183986: T(n,k) = 1/4 the number of (n+1) X (k+1) binary arrays with all 2 X 2 subblock sums the same.

The programs for A183986, the canonical program `A183986.P9474763813998468520` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A183986 has offset 1).

The definition of A183986 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 683 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A183986.P9474763813998468520

`A271709(n)+A209727(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A183986

/-- `A271709(n)+A209727(n+1)` -/
def P9474763813998468520.Spec : Prop :=
  ∀ n, P9474763813998468520.a n = A183986 (n + 1)

theorem P9474763813998468520.correct : P9474763813998468520.Spec := by
  intro n
  simp only [A183986, Nat.add_sub_cancel]

end A183986

/-! ## A183986.P1655318030221270650

`A209727(1+n)+A131816(n)+1`
-/

namespace A183986.P1655318030221270650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209727 (1 + n) + (A131816 n + 1)

end

end A183986.P1655318030221270650

namespace A183986

/-- `A209727(1+n)+A131816(n)+1` -/
def P1655318030221270650.Spec : Prop :=
  ∀ n, P1655318030221270650.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P4304767946800605413

`A271709(n)+floor(A209898(1+n)/4)`
-/

namespace A183986.P4304767946800605413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + ⌊(A209898 (1 + n) : ℚ) / 4⌋

end

end A183986.P4304767946800605413

namespace A183986

/-- `A271709(n)+floor(A209898(1+n)/4)` -/
def P4304767946800605413.Spec : Prop :=
  ∀ n, P4304767946800605413.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P5805151117890929883

`A209727(n+1)+A130321(n)+A059268(n)`
-/

namespace A183986.P5805151117890929883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209727 (n + 1) + (A130321 n + A059268 n)

end

end A183986.P5805151117890929883

namespace A183986

/-- `A209727(n+1)+A130321(n)+A059268(n)` -/
def P5805151117890929883.Spec : Prop :=
  ∀ n, P5805151117890929883.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P6816268241392188080

`A271709(n)+A103391(A209898(n+1)-8)`
-/

namespace A183986.P6816268241392188080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + A103391 (A209898 (n + 1) - 8).toNat

end

end A183986.P6816268241392188080

namespace A183986

/-- `A271709(n)+A103391(A209898(n+1)-8)` -/
def P6816268241392188080.Spec : Prop :=
  ∀ n, P6816268241392188080.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P4914383392947874313

`A131816(n)+A008621(A209898(n+1))`
-/

namespace A183986.P4914383392947874313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131816 n + A008621 (A209898 (n + 1)).toNat

end

end A183986.P4914383392947874313

namespace A183986

/-- `A131816(n)+A008621(A209898(n+1))` -/
def P4914383392947874313.Spec : Prop :=
  ∀ n, P4914383392947874313.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P8418484098721362018

`A271709(n)+A002265(A209898(n+1))`
-/

namespace A183986.P8418484098721362018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271709 n + A002265 (A209898 (n + 1)).toNat

end

end A183986.P8418484098721362018

namespace A183986

/-- `A271709(n)+A002265(A209898(n+1))` -/
def P8418484098721362018.Spec : Prop :=
  ∀ n, P8418484098721362018.a n = A183986 (n + 1)

end A183986

/-! ## A183986.P11273547900201572243

`A008619(A184048(n+1))-A131816(n)`
-/

namespace A183986.P11273547900201572243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A184048 (n + 1)).toNat - A131816 n

end

end A183986.P11273547900201572243

namespace A183986

/-- `A008619(A184048(n+1))-A131816(n)` -/
def P11273547900201572243.Spec : Prop :=
  ∀ n, P11273547900201572243.a n = A183986 (n + 1)

end A183986

/-!
# A183987: Ranks of (odd i)+j*r, when all i+j*r are ranked; r=golden ratio (1+sqrt(5))/2, i>=0, j>=0. Complement of A183988.

The programs for A183987, there is no canonical definition to state claims against.
-/

/-! ## A183987.P2733167937557374877

`eq[0, A084531(1+n)%2]+1`
-/

namespace A183987.P2733167937557374877
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084531 (1 + n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183987.P2733167937557374877

/-! ## A183987.P8373727813089960301

`eq[1, A022328(1+n)%2]+1`
-/

namespace A183987.P8373727813089960301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022328 (1 + n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183987.P8373727813089960301

/-! ## A183987.P12541527748816841457

`lt[1, A107466(n+1)%3]+1`
-/

namespace A183987.P12541527748816841457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107466 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A183987.P12541527748816841457

/-! ## A183987.P3178145244869504028

`eq[1, and(1, A215344(n+1))]+1`
-/

namespace A183987.P3178145244869504028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A215344 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183987.P3178145244869504028

/-! ## A183987.P4995890714562118578

`eq[1, (-1)^A191475(n+1)]+1`
-/

namespace A183987.P4995890714562118578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (-1 : ℚ) ^ (A191475 (n + 1) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n + 1

end

end A183987.P4995890714562118578

/-! ## A183987.P8775543380348771049

`record[(n+2)*A022328(n+2)%2]`
-/

namespace A183987.P8775543380348771049
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.tmod (A022328 (n + 2)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183987.P8775543380348771049

/-! ## A183987.P7949018683607685337

`eq[2, A020639(A084531(n+1))]+1`
-/

namespace A183987.P7949018683607685337
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A084531 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183987.P7949018683607685337

/-! ## A183987.P9437862519967063054

`∪[A183989(n+1), A183990(n+1)]`
-/

namespace A183987.P9437862519967063054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183989 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183990 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A183987.P9437862519967063054

/-! ## A183987.P1206370891832453419

`eq[2, A020639(A022328(n+1)+1)]+1`
-/

namespace A183987.P1206370891832453419
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A022328 (n + 1) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183987.P1206370891832453419

/-!
# A183988: Ranks of (even i)+j*r, when all i+j*r are ranked, r=golden ratio, i>=0, j>=0.

The programs for A183988, there is no canonical definition to state claims against.
-/

/-! ## A183988.P16496119756176015676

`comp[A183987(n+1)-1]+1`
-/

namespace A183988.P16496119756176015676
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183987 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A183988.P16496119756176015676

/-! ## A183988.P4320627902874019536

`eq[0, A022328(n+1)%2]+1`
-/

namespace A183988.P4320627902874019536
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022328 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183988.P4320627902874019536

/-! ## A183988.P8692132273820591798

`eq[1, A084531(1+n)%2]+1`
-/

namespace A183988.P8692132273820591798
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084531 (1 + n)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183988.P8692132273820591798

/-! ## A183988.P2880489728821731714

`eq[1, A107466(n+1)%3]+1`
-/

namespace A183988.P2880489728821731714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A107466 (n + 1)) 3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183988.P2880489728821731714

/-! ## A183988.P1174566821675163699

`eq[1, and(1, A191475(n+1))]+1`
-/

namespace A183988.P1174566821675163699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A191475 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183988.P1174566821675163699

/-! ## A183988.P14954194734263025045

`lt[0, A084531(abs(1-n)+1)%2]`
-/

namespace A183988.P14954194734263025045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084531 (|1 - (n : ℤ)| + 1).toNat) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A183988.P14954194734263025045

/-! ## A183988.P14201832925834089755

`comp[(n+2)*A022328(n+2)%2]`
-/

namespace A183988.P14201832925834089755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℤ) * Int.tmod (A022328 (n + 2)) 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183988.P14201832925834089755

/-! ## A183988.P6032045668809313507

`record[(n+2)^(A084531(n+2)%2)]`
-/

namespace A183988.P6032045668809313507
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) ^ (Int.tmod (A084531 (n + 2)) 2 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183988.P6032045668809313507

/-! ## A183988.P10256964361765954189

`comp[A247714(n)-A059419(n+1)]`
-/

namespace A183988.P10256964361765954189
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247714 n - A059419 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A183988.P10256964361765954189

/-! ## A183988.P1416356359684211705

`record[(n+1)%A183534(A017341(n))]`
-/

namespace A183988.P1416356359684211705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A183534 (A017341 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183988.P1416356359684211705

/-!
# A183989: Ranks of (odd i)+(odd j)*r when all i+j*r are ranked, where r=golden ratio, i>=0, j>=0.

The programs for A183989, there is no canonical definition to state claims against.
-/

/-! ## A183989.P16557409017695698077

`∩[A183987(n+1), A184332(n+1)]`
-/

namespace A183989.P16557409017695698077
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183989.P16557409017695698077

/-! ## A183989.P515527446673758910

`∩[eq[1, A022328(n+1)%2]+1, A184332(n+1)]`
-/

namespace A183989.P515527446673758910
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A022328 (n + 1)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A183989.P515527446673758910

/-! ## A183989.P13909913350658530631

`∩[eq[1, A215345(n+1)%2]+1, A183987(n+1)]`
-/

namespace A183989.P13909913350658530631
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215345 (n + 1)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A183989.P13909913350658530631

/-! ## A183989.P15649532559998360074

`∩[eq[0, A084531(n+2)%2]+2, A184332(n+1)]`
-/

namespace A183989.P15649532559998360074
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A084531 (n + 2)) 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 2

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f4 j = (x : ℤ)) n

end

end A183989.P15649532559998360074

/-! ## A183989.P4778475656539443676

`∩[comp[A183988(n+1)], A184332(n+1)]`
-/

namespace A183989.P4778475656539443676
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183988 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A183989.P4778475656539443676

/-!
# A183990: Indices of pairs with (odd i, even j) in list of pairs (i,j) ordered by value of i+j*r, where r=(1+sqrt(5))/2, i>=0, j>=0.

The programs for A183990, there is no canonical definition to state claims against.
-/

/-! ## A183990.P13906275606521591047

`∩[A183987(n+1), A184333(n+1)]`
-/

namespace A183990.P13906275606521591047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183990.P13906275606521591047

/-! ## A183990.P10346839277282828092

`eq[3, A184338(n+1)]+1`
-/

namespace A183990.P10346839277282828092
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183990.P10346839277282828092

/-! ## A183990.P833750174437389059

`eq[3, A184338(A028310(n))]`
-/

namespace A183990.P833750174437389059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183990.P833750174437389059

/-! ## A183990.P3266931300243100668

`A020725(eq[3, A184338(n+1)])`
-/

namespace A183990.P3266931300243100668
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183990.P3266931300243100668

/-! ## A183990.P9859019955241241003

`eq[3, A184338(A065033(2*n))]`
-/

namespace A183990.P9859019955241241003
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (A065033 (2 * n)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183990.P9859019955241241003

/-!
# A183991: Ranks of (even i)+(odd j)*r when all i+j*r are ranked, r=golden ratio, i>=0, j>=0.

The programs for A183991, there is no canonical definition to state claims against.
-/

/-! ## A183991.P7893985745750644468

`A183989(n+1)+A183992(n+1)-(A183990(n+1)+1)`
-/

namespace A183991.P7893985745750644468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183989 (n + 1) + (A183992 (n + 1) - (A183990 (n + 1) + 1))

end

end A183991.P7893985745750644468

/-! ## A183991.P14270333635680379185

`∩[A183988(n+1), A184332(n+1)]`
-/

namespace A183991.P14270333635680379185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183991.P14270333635680379185

/-! ## A183991.P1481219985111137977

`eq[2, A184338(n+1)]+1`
-/

namespace A183991.P1481219985111137977
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A183991.P1481219985111137977

/-! ## A183991.P15704336564510826412

`eq[2, A184338(A028310(n))]`
-/

namespace A183991.P15704336564510826412
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A183991.P15704336564510826412

/-! ## A183991.P13303322318418796061

`A020725(eq[2, A184338(n+1)])`
-/

namespace A183991.P13303322318418796061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A183991.P13303322318418796061

/-!
# A183992: Ranks of (even i)+(even j)*r when all i+j*r are ranked, where r=golden ratio, i>=0, j>=0.

The programs for A183992, there is no canonical definition to state claims against.
-/

/-! ## A183992.P12866086643594185239

`∩[A183988(n+1), comp[A184332(n+1)]]`
-/

namespace A183992.P12866086643594185239
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183988 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184332 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A183992.P12866086643594185239

/-! ## A183992.P8054684072920324574

`∩[A183988(n+1), A184333(n+1)]`
-/

namespace A183992.P8054684072920324574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183988 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184333 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A183992.P8054684072920324574

/-! ## A183992.P15619629291338497767

`lt[3, A184338(n+1)]+1`
-/

namespace A183992.P15619629291338497767
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184338 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A183992.P15619629291338497767

/-!
# A183993: "Types" (parities of i and j) when all the numbers i+j*r are ranked, where r=golden ratio, i>=0, j>=0.

The programs for A183993, there is no canonical definition to state claims against.
-/

/-! ## A183993.P1919097514723713683

`(A184338(1+n)^3)%5`
-/

namespace A183993.P1919097514723713683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A184338 (1 + n) ^ 3) 5

end

end A183993.P1919097514723713683

/-! ## A183993.P9221381902441410966

`A129594(1*A184338(n+1))`
-/

namespace A183993.P9221381902441410966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129594 (1 * A184338 (n + 1)).toNat

end

end A183993.P9221381902441410966

/-! ## A183993.P7911255096482331925

`A082228(gcd(n, n+1)*A184338(n+1))`
-/

namespace A183993.P7911255096482331925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082228 ((Nat.gcd n (n + 1) : ℤ) * A184338 (n + 1)).toNat

end

end A183993.P7911255096482331925

/-! ## A183993.P18196422961637769046

`A279788(xor(A178334(n), A184338(n+1)))`
-/

namespace A183993.P18196422961637769046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279788 (Int.xor (A178334 n) (A184338 (n + 1))).toNat

end

end A183993.P18196422961637769046

/-! ## A183993.P12565619950203979801

`A137824(lcm(A094267(n²), A184338(n+1)))`
-/

namespace A183993.P12565619950203979801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137824 (Int.lcm (A094267 (n ^ 2)) (A184338 (n + 1)))

end

end A183993.P12565619950203979801

/-! ## A183993.P10271544654366942223

`A005206(xor(A178334(n), A184338(n+1)))+1`
-/

namespace A183993.P10271544654366942223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (Int.xor (A178334 n) (A184338 (n + 1))).toNat + 1

end

end A183993.P10271544654366942223

/-!
# A183994: Number of (n+1)X(n+1) 0..2 arrays with all 2X2 subblock sums the same.

The programs for A183994, there is no canonical definition to state claims against.
-/

/-! ## A183994.P13035894521075208841

`A184003(∑[4*n]+1)`
-/

namespace A183994.P13035894521075208841
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183994.P13035894521075208841

/-! ## A183994.P10854656313435006831

`record[A003982(n)*A184003(n+1)]`
-/

namespace A183994.P10854656313435006831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003982 n * A184003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183994.P10854656313435006831

/-! ## A183994.P2764531363435442064

`record[gcd(A003987(n), A184003(n+1))]`
-/

namespace A183994.P2764531363435442064
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003987 n) (A184003 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183994.P2764531363435442064

/-!
# A183995: Number of (n+1) X 2 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A183995, there is no canonical definition to state claims against.
-/

/-! ## A183995.P4638827821026595195

`A184003(∑[n]+1)`
-/

namespace A183995.P4638827821026595195
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A183995.P4638827821026595195

/-! ## A183995.P1337423050450168366

`record[A184003(1+n)]`
-/

namespace A183995.P1337423050450168366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183995.P1337423050450168366

/-!
# A183996: Number of (n+1) X 3 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A183996, there is no canonical definition to state claims against.
-/

/-! ## A183996.P8848855444144933790

`A184003(∑[n+1]+2)`
-/

namespace A183996.P8848855444144933790
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A183996.P8848855444144933790

/-! ## A183996.P17622318651812312809

`record[A184003(n+2)/A158405(n+1)]`
-/

namespace A183996.P17622318651812312809
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184003 (n + 2) : ℚ) / (A158405 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183996.P17622318651812312809

/-!
# A183997: Number of (n+1) X 4 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A183997, there is no canonical definition to state claims against.
-/

/-! ## A183997.P14071541661030706345

`A184003(∑[n+2]+4)`
-/

namespace A183997.P14071541661030706345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A183997.P14071541661030706345

/-! ## A183997.P17250527897858441364

`record[A184003(n+4)/A064297(n+2)]`
-/

namespace A183997.P17250527897858441364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A184003 (n + 4) : ℚ) / (A064297 (n + 2) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A183997.P17250527897858441364

/-!
# A183998: Number of (n+1) X 5 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A183998, there is no canonical definition to state claims against.
-/

/-! ## A183998.P17183341538499203050

`A184003(∑[n+3]+7)`
-/

namespace A183998.P17183341538499203050
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 7)

end

end A183998.P17183341538499203050

/-!
# A183999: Number of (n+1) X 6 0..2 arrays with all 2 X 2 subblock sums the same.

The programs for A183999, there is no canonical definition to state claims against.
-/

/-! ## A183999.P16619214753528111059

`A184003(∑[n+4]+11)`
-/

namespace A183999.P16619214753528111059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184003 (∑ j ∈ Finset.range (n + 1), f1 j + 11)

end

end A183999.P16619214753528111059

