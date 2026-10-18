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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
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
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024
import Seq.Opaque.C025

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A001700: a(n) = binomial(2*n+1, n+1): number of ways to put n+1 indistinguishable balls into n+1 distinguishable boxes = number of (n+1)-st degree monomials in n+1 variables = number of monotone maps from 1..n+1 to 1..n+1.

The programs for A001700, the canonical program `A001700.P3870841469958150543` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001700 has offset 0).

The definition of A001700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001700.P3870841469958150543

`(2*n+1)*A000108(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001700

/-- `(2*n+1)*A000108(n)` -/
def P3870841469958150543.Spec : Prop :=
  ∀ n, P3870841469958150543.a n = A001700 n

theorem P3870841469958150543.correct : P3870841469958150543.Spec := by
  intro n
  simp only [A001700]

end A001700

/-! ## A001700.P16805054575315634502

`A000984(n)+A001791(n)`
-/

namespace A001700.P16805054575315634502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000984 n + A001791 n

end

end A001700.P16805054575315634502

namespace A001700

/-- `A000984(n)+A001791(n)` -/
def P16805054575315634502.Spec : Prop :=
  ∀ n, P16805054575315634502.a n = A001700 n

end A001700

/-! ## A001700.P18006259438880808855

`2*A000984(n)-A000108(n)`
-/

namespace A001700.P18006259438880808855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000984 n - A000108 n

end

end A001700.P18006259438880808855

namespace A001700

/-- `2*A000984(n)-A000108(n)` -/
def P18006259438880808855.Spec : Prop :=
  ∀ n, P18006259438880808855.a n = A001700 n

end A001700

/-! ## A001700.P11096312442833925896

`2*(2*n+1)*a(n-1)/(n+1)` with `a(0)=1`
-/

namespace A001700.P11096312442833925896
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  2 * ((2 * n + 1 : ℚ) * a (n - 1)) / (n + 1 : ℚ)

end

end A001700.P11096312442833925896

namespace A001700

/-- `2*(2*n+1)*a(n-1)/(n+1)` -/
def P11096312442833925896.Spec : Prop :=
  ∀ n, P11096312442833925896.a n = (A001700 n : ℚ)

end A001700

/-! ## A001700.P17820889635515304336

`∏[4-2/(n+1)]/2`
-/

namespace A001700.P17820889635515304336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 - 2 / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) / 2

end

end A001700.P17820889635515304336

namespace A001700

/-- `∏[4-2/(n+1)]/2` -/
def P17820889635515304336.Spec : Prop :=
  ∀ n, P17820889635515304336.a n = (A001700 n : ℚ)

end A001700

/-! ## A001700.P9778631189568328770

`(4-n/∑[n])*a(n-1)` with `a(0)=1`
-/

namespace A001700.P9778631189568328770
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (4 - (n : ℚ) / ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)) * a (n - 1)

end

end A001700.P9778631189568328770

namespace A001700

/-- `(4-n/∑[n])*a(n-1)` -/
def P9778631189568328770.Spec : Prop :=
  ∀ n, P9778631189568328770.a n = (A001700 n : ℚ)

end A001700

/-! ## A001700.P1134253990430491237

`record[(4-4/n)*a(n-2)]` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A001700.P1134253990430491237
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  (4 - 4 / (n : ℚ)) * f1 (n - 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001700.P1134253990430491237

namespace A001700

/-- `record[(4-4/n)*a(n-2)]` -/
def P1134253990430491237.Spec : Prop :=
  ∀ n, P1134253990430491237.a n = (A001700 n : ℚ)

end A001700

/-! ## A001700.P463515633772000503

`floor((4-2/(n+1))*a(n-1))` with `a(0)=1`
-/

namespace A001700.P463515633772000503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(4 - 2 / (n + 1 : ℚ)) * (a (n - 1) : ℚ)⌋

end

end A001700.P463515633772000503

namespace A001700

/-- `floor((4-2/(n+1))*a(n-1))` -/
def P463515633772000503.Spec : Prop :=
  ∀ n, P463515633772000503.a n = A001700 n

end A001700

/-! ## A001700.P14337348508281063848

`(2-1/(n+1))*2*a(n-1)` with `a(0)=1`
-/

namespace A001700.P14337348508281063848
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 - 1 / (n + 1 : ℚ)) * (2 * a (n - 1))

end

end A001700.P14337348508281063848

namespace A001700

/-- `(2-1/(n+1))*2*a(n-1)` -/
def P14337348508281063848.Spec : Prop :=
  ∀ n, P14337348508281063848.a n = (A001700 n : ℚ)

end A001700

/-! ## A001700.P6254124437020580260

`Δ[A024718(n)]`
-/

namespace A001700.P6254124437020580260
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024718 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001700.P6254124437020580260

namespace A001700

/-- `Δ[A024718(n)]` -/
def P6254124437020580260.Spec : Prop :=
  ∀ n, P6254124437020580260.a n = A001700 n

end A001700

/-! ## A001700.P16370652195784819113

`record[A057977(n)]`
-/

namespace A001700.P16370652195784819113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001700.P16370652195784819113

namespace A001700

/-- `record[A057977(n)]` -/
def P16370652195784819113.Spec : Prop :=
  ∀ n, P16370652195784819113.a n = A001700 n

end A001700

/-! ## A001700.P10875775494724967758

`A010763(n)+1`
-/

namespace A001700.P10875775494724967758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010763 n + 1

end

end A001700.P10875775494724967758

namespace A001700

/-- `A010763(n)+1` -/
def P10875775494724967758.Spec : Prop :=
  ∀ n, P10875775494724967758.a n = A001700 n

end A001700

/-! ## A001700.P9615058654281857858

`A088218(n+1)`
-/

namespace A001700.P9615058654281857858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088218 (n + 1)

end

end A001700.P9615058654281857858

namespace A001700

/-- `A088218(n+1)` -/
def P9615058654281857858.Spec : Prop :=
  ∀ n, P9615058654281857858.a n = A001700 n

end A001700

/-! ## A001700.P16644008311273024790

`A128015(2*n)`
-/

namespace A001700.P16644008311273024790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128015 (2 * n)

end

end A001700.P16644008311273024790

namespace A001700

/-- `A128015(2*n)` -/
def P16644008311273024790.Spec : Prop :=
  ∀ n, P16644008311273024790.a n = A001700 n

end A001700

/-! ## A001700.P6649389914327857457

`A001405(Δ[n²])`
-/

namespace A001700.P6649389914327857457
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001700.P6649389914327857457

namespace A001700

/-- `A001405(Δ[n²])` -/
def P6649389914327857457.Spec : Prop :=
  ∀ n, P6649389914327857457.a n = A001700 n

end A001700

/-! ## A001700.P14413805664708322008

`A002661(Δ[n²])`
-/

namespace A001700.P14413805664708322008
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002661 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001700.P14413805664708322008

namespace A001700

/-- `A002661(Δ[n²])` -/
def P14413805664708322008.Spec : Prop :=
  ∀ n, P14413805664708322008.a n = A001700 n

end A001700

/-! ## A001700.P12697085297322962204

`A037952(Δ[n²])`
-/

namespace A001700.P12697085297322962204
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001700.P12697085297322962204

namespace A001700

/-- `A037952(Δ[n²])` -/
def P12697085297322962204.Spec : Prop :=
  ∀ n, P12697085297322962204.a n = A001700 n

end A001700

/-! ## A001700.P2098969564807590818

`A057977(Δ[n²])`
-/

namespace A001700.P2098969564807590818
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057977 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001700.P2098969564807590818

namespace A001700

/-- `A057977(Δ[n²])` -/
def P2098969564807590818.Spec : Prop :=
  ∀ n, P2098969564807590818.a n = A001700 n

end A001700

/-! ## A001700.P16522949471443816218

`A063549(Δ[n²])`
-/

namespace A001700.P16522949471443816218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063549 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001700.P16522949471443816218

namespace A001700

/-- `A063549(Δ[n²])` -/
def P16522949471443816218.Spec : Prop :=
  ∀ n, P16522949471443816218.a n = A001700 n

end A001700

/-! ## A001700.P14787938694797903070

`A138364(Δ[n²])`
-/

namespace A001700.P14787938694797903070
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138364 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001700.P14787938694797903070

namespace A001700

/-- `A138364(Δ[n²])` -/
def P14787938694797903070.Spec : Prop :=
  ∀ n, P14787938694797903070.a n = A001700 n

end A001700

/-!
# A001701: Generalized Stirling numbers, [n+2,n]_2.

The programs for A001701, the canonical program `A001701.P15703944577588657964` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001701 has offset 1).

The definition of A001701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001701.P15703944577588657964

`5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` with `a(0)=1, a(1)=6, a(2)=26, a(3)=71, a(4)=155, a(5)=295`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001701

/-- `5*a(n-1)-10*a(n-2)+10*a(n-3)-5*a(n-4)+a(n-5)` -/
def P15703944577588657964.Spec : Prop :=
  ∀ n, P15703944577588657964.a n = A001701 (n + 1)

theorem P15703944577588657964.correct : P15703944577588657964.Spec := by
  intro n
  simp only [A001701, Nat.add_sub_cancel]

end A001701

/-! ## A001701.P1575613258505156210

`A241765(n)+A179865(n+1)`
-/

namespace A001701.P1575613258505156210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241765 n + A179865 (n + 1)

end

end A001701.P1575613258505156210

namespace A001701

/-- `A241765(n)+A179865(n+1)` -/
def P1575613258505156210.Spec : Prop :=
  ∀ n, P1575613258505156210.a n = A001701 (n + 1)

end A001701

/-! ## A001701.P5579884929997193823

`A290312(n)-A087156(n+1)`
-/

namespace A001701.P5579884929997193823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290312 n - A087156 (n + 1)

end

end A001701.P5579884929997193823

namespace A001701

/-- `A290312(n)-A087156(n+1)` -/
def P5579884929997193823.Spec : Prop :=
  ∀ n, P5579884929997193823.a n = A001701 (n + 1)

end A001701

/-! ## A001701.P16566885619741488736

`A059302(n+3)+A000010(and(1, a(n-1))+1)` with `a(0)=1`
-/

namespace A001701.P16566885619741488736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059302 (n + 3) + A000010 (Int.land 1 (a (n - 1)) + 1).toNat

end

end A001701.P16566885619741488736

namespace A001701

/-- `A059302(n+3)+A000010(and(1, a(n-1))+1)` -/
def P16566885619741488736.Spec : Prop :=
  ∀ n, P16566885619741488736.a n = A001701 (n + 1)

end A001701

/-! ## A001701.P16181375855841088448

`A059302(n+3)+A008296(and(1, a(n-1))+1)` with `a(0)=1`
-/

namespace A001701.P16181375855841088448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059302 (n + 3) + A008296 (Int.land 1 (a (n - 1)) + 1).toNat

end

end A001701.P16181375855841088448

namespace A001701

/-- `A059302(n+3)+A008296(and(1, a(n-1))+1)` -/
def P16181375855841088448.Spec : Prop :=
  ∀ n, P16181375855841088448.a n = A001701 (n + 1)

end A001701

/-! ## A001701.P13527549021522256145

`A059302(n+3)+A039621(and(2, a(n-1))+1)` with `a(0)=1`
-/

namespace A001701.P13527549021522256145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A059302 (n + 3) + A039621 (Int.land 2 (a (n - 1)) + 1).toNat

end

end A001701.P13527549021522256145

namespace A001701

/-- `A059302(n+3)+A039621(and(2, a(n-1))+1)` -/
def P13527549021522256145.Spec : Prop :=
  ∀ n, P13527549021522256145.a n = A001701 (n + 1)

end A001701

/-! ## A001701.P2325508428900793129

`A185164(and(1, a(n-1))+2)+A059302(n+3)` with `a(0)=1`
-/

namespace A001701.P2325508428900793129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A185164 (Int.land 1 (a (n - 1)) + 2).toNat + A059302 (n + 3)

end

end A001701.P2325508428900793129

namespace A001701

/-- `A185164(and(1, a(n-1))+2)+A059302(n+3)` -/
def P2325508428900793129.Spec : Prop :=
  ∀ n, P2325508428900793129.a n = A001701 (n + 1)

end A001701

/-! ## A001701.P14971669231228741790

`record[∑[n*∑[n-1]]+1]`
-/

namespace A001701.P14971669231228741790
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (∑ j ∈ Finset.range (n + 1), f3 j)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001701.P14971669231228741790

namespace A001701

/-- `record[∑[n*∑[n-1]]+1]` -/
def P14971669231228741790.Spec : Prop :=
  ∀ n, P14971669231228741790.a n = A001701 (n + 1)

end A001701

/-! ## A001701.P6771918444252365012

`A110952(C(n+3, 2))`
-/

namespace A001701.P6771918444252365012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110952 (Nat.choose (n + 3) 2)

end

end A001701.P6771918444252365012

namespace A001701

/-- `A110952(C(n+3, 2))` -/
def P6771918444252365012.Spec : Prop :=
  ∀ n, P6771918444252365012.a n = A001701 (n + 1)

end A001701

/-! ## A001701.P12947441178531962210

`A110952(A253145(n+1))`
-/

namespace A001701.P12947441178531962210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110952 (A253145 (n + 1)).toNat

end

end A001701.P12947441178531962210

namespace A001701

/-- `A110952(A253145(n+1))` -/
def P12947441178531962210.Spec : Prop :=
  ∀ n, P12947441178531962210.a n = A001701 (n + 1)

end A001701

/-!
# A001702: Generalized Stirling numbers, [n+3,n]_2.

The programs for A001702, there is no canonical definition to state claims against.
-/

/-! ## A001702.P507887399898682151

`A145324(∑[n+2]+5)`
-/

namespace A001702.P507887399898682151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A001702.P507887399898682151

/-! ## A001702.P16267237517731163404

`A136124(∑[n+3]+1)`
-/

namespace A001702.P16267237517731163404
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001702.P16267237517731163404

/-! ## A001702.P10160738655234941292

`A057427(n+1)*A136124(A034856(n+2))`
-/

namespace A001702.P10160738655234941292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (n + 1) * A136124 (A034856 (n + 2)).toNat

end

end A001702.P10160738655234941292

/-! ## A001702.P9633373832912060926

`A136124(A034856(n+2))%A000399(n+4)`
-/

namespace A001702.P9633373832912060926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136124 (A034856 (n + 2)).toNat) (A000399 (n + 4))

end

end A001702.P9633373832912060926

/-! ## A001702.P9672795940191682414

`A007318(C(2, n))*A136124(A034856(n+2))`
-/

namespace A001702.P9672795940191682414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A136124 (A034856 (n + 2)).toNat

end

end A001702.P9672795940191682414

/-! ## A001702.P16315838111173489935

`A136124(A034856(n+2))/Δ[A001109(n)]%2`
-/

namespace A001702.P16315838111173489935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001109 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136124 (A034856 (n + 2)).toNat : ℚ) / (Int.tmod (f1 (n + 1) - f1 n) 2 : ℚ)

end

end A001702.P16315838111173489935

/-! ## A001702.P8738747467852419582

`A136124(A034856(n+2))+A008683(4*(n+1))`
-/

namespace A001702.P8738747467852419582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A034856 (n + 2)).toNat + A008683 (4 * (n + 1))

end

end A001702.P8738747467852419582

/-! ## A001702.P10282092268718706001

`A136124(A034856(n+2))+A009112(n+1)%2`
-/

namespace A001702.P10282092268718706001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A034856 (n + 2)).toNat + Int.tmod (A009112 (n + 1)) 2

end

end A001702.P10282092268718706001

/-! ## A001702.P342731618563443810

`A136124(A034856(n+2))/A000042(n+1)%2`
-/

namespace A001702.P342731618563443810
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A136124 (A034856 (n + 2)).toNat : ℚ) / (Int.tmod (A000042 (n + 1)) 2 : ℚ)

end

end A001702.P342731618563443810

/-! ## A001702.P230304779146122210

`A007318(A325166(n+1))*A136124(A034856(n+2))`
-/

namespace A001702.P230304779146122210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A325166 (n + 1)).toNat * A136124 (A034856 (n + 2)).toNat

end

end A001702.P230304779146122210

/-!
# A001703: Decimal concatenation of n, n+1, and n+2.

The programs for A001703, there is no canonical definition to state claims against.
-/

/-! ## A001703.P4251810076669303601

`3*A074991(n)`
-/

namespace A001703.P4251810076669303601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A074991 n

end

end A001703.P4251810076669303601

/-! ## A001703.P17553317983256705324

`A074991(n)/(A000010(n+5)%2+1/3)`
-/

namespace A001703.P17553317983256705324
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074991 n : ℚ) / ((Int.tmod (A000010 (n + 5)) 2 : ℚ) + (1 : ℚ) / 3)

end

end A001703.P17553317983256705324

/-! ## A001703.P16808163863879673993

`A000027(A074991(n)+A074991(n)+A074991(n))`
-/

namespace A001703.P16808163863879673993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A074991 n + (A074991 n + A074991 n)).toNat

end

end A001703.P16808163863879673993

/-! ## A001703.P14588612847122784164

`3/A074991(n)^A008683(A052087(n+1))`
-/

namespace A001703.P14588612847122784164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A074991 n : ℚ) ^ (A008683 (A052087 (n + 1)).toNat : ℤ)

end

end A001703.P14588612847122784164

/-! ## A001703.P2843865957101914183

`3/A074991(n)^A008683(A030458(n+1))`
-/

namespace A001703.P2843865957101914183
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  3 / (A074991 n : ℚ) ^ (A008683 (A030458 (n + 1)).toNat : ℤ)

end

end A001703.P2843865957101914183

/-!
# A001704: a(n) = n concatenated with n + 1.

The programs for A001704, the canonical program `A001704.P2802870690856380017` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001704 has offset 1).

The definition of A001704 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001704.P2802870690856380017

`A127421(n+2)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001704

/-- `A127421(n+2)` -/
def P2802870690856380017.Spec : Prop :=
  ∀ n, P2802870690856380017.a n = A001704 (n + 1)

theorem P2802870690856380017.correct : P2802870690856380017.Spec := by
  intro n
  simp only [A001704, Nat.add_sub_cancel]

end A001704

/-! ## A001704.P1656983442519080633

`A248378(2*n)`
-/

namespace A001704.P1656983442519080633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (2 * n)

end

end A001704.P1656983442519080633

namespace A001704

/-- `A248378(2*n)` -/
def P1656983442519080633.Spec : Prop :=
  ∀ n, P1656983442519080633.a n = A001704 (n + 1)

end A001704

/-! ## A001704.P1639199735863258389

`record[A248378(and(n, n-1))]`
-/

namespace A001704.P1639199735863258389
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (Int.land (n : ℤ) ((n : ℤ) - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001704.P1639199735863258389

namespace A001704

/-- `record[A248378(and(n, n-1))]` -/
def P1639199735863258389.Spec : Prop :=
  ∀ n, P1639199735863258389.a n = A001704 (n + 1)

end A001704

/-! ## A001704.P2105188053102720411

`record[A248378(n)/A033999(n)]`
-/

namespace A001704.P2105188053102720411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248378 n : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001704.P2105188053102720411

namespace A001704

/-- `record[A248378(n)/A033999(n)]` -/
def P2105188053102720411.Spec : Prop :=
  ∀ n, P2105188053102720411.a n = (A001704 (n + 1) : ℚ)

end A001704

/-! ## A001704.P14105587082908500352

`A248378(A005843(n))+A019590(n+4)`
-/

namespace A001704.P14105587082908500352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (A005843 n).toNat + A019590 (n + 4)

end

end A001704.P14105587082908500352

namespace A001704

/-- `A248378(A005843(n))+A019590(n+4)` -/
def P14105587082908500352.Spec : Prop :=
  ∀ n, P14105587082908500352.a n = A001704 (n + 1)

end A001704

/-! ## A001704.P7917472630702806634

`record[A248378(n)/A000034(n)]`
-/

namespace A001704.P7917472630702806634
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248378 n : ℚ) / (A000034 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001704.P7917472630702806634

namespace A001704

/-- `record[A248378(n)/A000034(n)]` -/
def P7917472630702806634.Spec : Prop :=
  ∀ n, P7917472630702806634.a n = (A001704 (n + 1) : ℚ)

end A001704

/-! ## A001704.P3556913387274217857

`record[A248378(n)/A001511(n+1)]`
-/

namespace A001704.P3556913387274217857
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248378 n : ℚ) / (A001511 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001704.P3556913387274217857

namespace A001704

/-- `record[A248378(n)/A001511(n+1)]` -/
def P3556913387274217857.Spec : Prop :=
  ∀ n, P3556913387274217857.a n = (A001704 (n + 1) : ℚ)

end A001704

/-! ## A001704.P12209489550914613598

`record[A248378(n)/A006519(n+1)]`
-/

namespace A001704.P12209489550914613598
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A248378 n : ℚ) / (A006519 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001704.P12209489550914613598

namespace A001704

/-- `record[A248378(n)/A006519(n+1)]` -/
def P12209489550914613598.Spec : Prop :=
  ∀ n, P12209489550914613598.a n = (A001704 (n + 1) : ℚ)

end A001704

/-! ## A001704.P7491066037417332783

`record[and(A248378(n), A280193(n+1))]`
-/

namespace A001704.P7491066037417332783
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A248378 n) (A280193 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001704.P7491066037417332783

namespace A001704

/-- `record[and(A248378(n), A280193(n+1))]` -/
def P7491066037417332783.Spec : Prop :=
  ∀ n, P7491066037417332783.a n = A001704 (n + 1)

end A001704

/-! ## A001704.P3051522418381504089

`A248378(n+n)+A089803(A056956(n+1))`
-/

namespace A001704.P3051522418381504089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (n + n) + A089803 (A056956 (n + 1)).toNat

end

end A001704.P3051522418381504089

namespace A001704

/-- `A248378(n+n)+A089803(A056956(n+1))` -/
def P3051522418381504089.Spec : Prop :=
  ∀ n, P3051522418381504089.a n = A001704 (n + 1)

end A001704

/-! ## A001704.P15968273710411335938

`A248378(n+n)+A010051((n+1)²)`
-/

namespace A001704.P15968273710411335938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A248378 (n + n) + A010051 ((n + 1) ^ 2)

end

end A001704.P15968273710411335938

namespace A001704

/-- `A248378(n+n)+A010051((n+1)²)` -/
def P15968273710411335938.Spec : Prop :=
  ∀ n, P15968273710411335938.a n = A001704 (n + 1)

end A001704

/-! ## A001704.P6682176529142345983

`A084855(∑[n+2])`
-/

namespace A001704.P6682176529142345983
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084855 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001704.P6682176529142345983

namespace A001704

/-- `A084855(∑[n+2])` -/
def P6682176529142345983.Spec : Prop :=
  ∀ n, P6682176529142345983.a n = A001704 (n + 1)

end A001704

/-!
# A001705: Generalized Stirling numbers, [n+2,3]_2: a(n) = n! * Sum_{k=0..n-1} (k+1)/(n-k).

The programs for A001705, the canonical program `A001705.P18066445035716269270` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001705 has offset 0).

The definition of A001705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001705.P18066445035716269270

`a(n-1)*(n+1)+n!` with `a(0)=0`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001705

/-- `a(n-1)*(n+1)+n!` -/
def P18066445035716269270.Spec : Prop :=
  ∀ n, (P18066445035716269270.a n : ℤ) = A001705 n

theorem P18066445035716269270.correct : P18066445035716269270.Spec := by
  intro n
  simp only [A001705]

end A001705

/-! ## A001705.P237402499546264431

`A000254(n+1)-A000142(n+1)`
-/

namespace A001705.P237402499546264431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000254 (n + 1) - A000142 (n + 1)

end

end A001705.P237402499546264431

namespace A001705

/-- `A000254(n+1)-A000142(n+1)` -/
def P237402499546264431.Spec : Prop :=
  ∀ n, P237402499546264431.a n = A001705 n

end A001705

/-! ## A001705.P7817156537698656670

`abs(A081047(n+1))`
-/

namespace A001705.P7817156537698656670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A081047 (n + 1)|

end

end A001705.P7817156537698656670

namespace A001705

/-- `abs(A081047(n+1))` -/
def P7817156537698656670.Spec : Prop :=
  ∀ n, P7817156537698656670.a n = A001705 n

end A001705

/-! ## A001705.P10888109475834671110

`Δ[-∑[A081047(n)]]`
-/

namespace A001705.P10888109475834671110
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081047 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001705.P10888109475834671110

namespace A001705

/-- `Δ[-∑[A081047(n)]]` -/
def P10888109475834671110.Spec : Prop :=
  ∀ n, P10888109475834671110.a n = A001705 n

end A001705

/-! ## A001705.P8342522090688132635

`A067176(∑[n+1]+1)`
-/

namespace A001705.P8342522090688132635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067176 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001705.P8342522090688132635

namespace A001705

/-- `A067176(∑[n+1]+1)` -/
def P8342522090688132635.Spec : Prop :=
  ∀ n, P8342522090688132635.a n = A001705 n

end A001705

/-! ## A001705.P1419362783227874215

`-A081047(C(n+1, n))`
-/

namespace A001705.P1419362783227874215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A081047 (Nat.choose (n + 1) n)

end

end A001705.P1419362783227874215

namespace A001705

/-- `-A081047(C(n+1, n))` -/
def P1419362783227874215.Spec : Prop :=
  ∀ n, P1419362783227874215.a n = A001705 n

end A001705

/-! ## A001705.P4243793210559403879

`A000254(n)+n*a(n-1)` with `a(0)=0`
-/

namespace A001705.P4243793210559403879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000254 n + (n : ℤ) * a (n - 1)

end

end A001705.P4243793210559403879

namespace A001705

/-- `A000254(n)+n*a(n-1)` -/
def P4243793210559403879.Spec : Prop :=
  ∀ n, P4243793210559403879.a n = A001705 n

end A001705

/-! ## A001705.P16732799719886028829

`abs(A081048(n))+n*a(n-1)` with `a(0)=0`
-/

namespace A001705.P16732799719886028829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  |A081048 n| + (n : ℤ) * a (n - 1)

end

end A001705.P16732799719886028829

namespace A001705

/-- `abs(A081048(n))+n*a(n-1)` -/
def P16732799719886028829.Spec : Prop :=
  ∀ n, P16732799719886028829.a n = A001705 n

end A001705

/-! ## A001705.P7488901454796120099

`A000142(n)+(n+1)*a(n-1)` with `a(0)=0`
-/

namespace A001705.P7488901454796120099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000142 n + (n + 1 : ℤ) * a (n - 1)

end

end A001705.P7488901454796120099

namespace A001705

/-- `A000142(n)+(n+1)*a(n-1)` -/
def P7488901454796120099.Spec : Prop :=
  ∀ n, P7488901454796120099.a n = A001705 n

end A001705

/-! ## A001705.P622845918956909898

`A006675(n)+A000254(n)`
-/

namespace A001705.P622845918956909898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006675 n + A000254 n

end

end A001705.P622845918956909898

namespace A001705

/-- `A006675(n)+A000254(n)` -/
def P622845918956909898.Spec : Prop :=
  ∀ n, P622845918956909898.a n = A001705 n

end A001705

/-!
# A001706: Generalized Stirling numbers, [n+4,4]_2.

The programs for A001706, there is no canonical definition to state claims against.
-/

/-! ## A001706.P4995161030392720379

`A376634(∑[n])`
-/

namespace A001706.P4995161030392720379
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376634 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001706.P4995161030392720379

/-! ## A001706.P15092972417522783601

`record[A376634(n)]`
-/

namespace A001706.P15092972417522783601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376634 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001706.P15092972417522783601

/-! ## A001706.P7248403561052355075

`A193446(n+2)/2`
-/

namespace A001706.P7248403561052355075
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A193446 (n + 2) : ℚ) / 2

end

end A001706.P7248403561052355075

/-! ## A001706.P10369181227228052894

`A145324(∑[n+3]+1)`
-/

namespace A001706.P10369181227228052894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001706.P10369181227228052894

/-! ## A001706.P12804865929168413562

`A136124(A167499(n+1)-1)`
-/

namespace A001706.P12804865929168413562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A167499 (n + 1) - 1).toNat

end

end A001706.P12804865929168413562

/-! ## A001706.P14223644932192144094

`A395640(A000217(n+2)+2)`
-/

namespace A001706.P14223644932192144094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395640 (A000217 (n + 2) + 2).toNat

end

end A001706.P14223644932192144094

/-! ## A001706.P11848545354125146988

`A136124(A167499(n)+1+n)`
-/

namespace A001706.P11848545354125146988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A167499 n + 1 + (n : ℤ)).toNat

end

end A001706.P11848545354125146988

/-! ## A001706.P4090178668703139718

`or(char[1], A145324(A034856(n+2)))`
-/

namespace A001706.P4090178668703139718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A145324 (A034856 (n + 2)).toNat)

end

end A001706.P4090178668703139718

/-! ## A001706.P8554700134204039577

`A000399(n+4)-A001705(n+2)`
-/

namespace A001706.P8554700134204039577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000399 (n + 4) - A001705 (n + 2)

end

end A001706.P8554700134204039577

/-! ## A001706.P6645185278217350551

`A007318(A000217(n))*A145324(A034856(n+2))`
-/

namespace A001706.P6645185278217350551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A000217 n).toNat * A145324 (A034856 (n + 2)).toNat

end

end A001706.P6645185278217350551

/-!
# A001707: Generalized Stirling numbers, [n+5,5]_2.

The programs for A001707, there is no canonical definition to state claims against.
-/

/-! ## A001707.P987717078140648604

`A145324(A027379(n+2))`
-/

namespace A001707.P987717078140648604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A027379 (n + 2)).toNat

end

end A001707.P987717078140648604

/-! ## A001707.P3619046711856604478

`A145324(A055998(n+2))`
-/

namespace A001707.P3619046711856604478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A055998 (n + 2)).toNat

end

end A001707.P3619046711856604478

/-! ## A001707.P13658334672734805780

`A136124(A167499(n+2))`
-/

namespace A001707.P13658334672734805780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A167499 (n + 2)).toNat

end

end A001707.P13658334672734805780

/-! ## A001707.P6146229066914254421

`A145324(A155212(n)+5)`
-/

namespace A001707.P6146229066914254421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A155212 n + 5).toNat

end

end A001707.P6146229066914254421

/-! ## A001707.P11763405257400532290

`A145324(A056000(n)+7)`
-/

namespace A001707.P11763405257400532290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A056000 n + 7).toNat

end

end A001707.P11763405257400532290

/-! ## A001707.P17757043578473091849

`A145324(A046691(n+2)+1)`
-/

namespace A001707.P17757043578473091849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A046691 (n + 2) + 1).toNat

end

end A001707.P17757043578473091849

/-! ## A001707.P15607360670793807668

`A145324(A052905(n+1)+2)`
-/

namespace A001707.P15607360670793807668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A052905 (n + 1) + 2).toNat

end

end A001707.P15607360670793807668

/-! ## A001707.P13777745131328705218

`A145324(A034856(n+3)-1)`
-/

namespace A001707.P13777745131328705218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A034856 (n + 3) - 1).toNat

end

end A001707.P13777745131328705218

/-! ## A001707.P10698115157040657307

`A145324(A000096(n+3)-2)`
-/

namespace A001707.P10698115157040657307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A000096 (n + 3) - 2).toNat

end

end A001707.P10698115157040657307

/-!
# A001708: Generalized Stirling numbers, [n+6,6]_2.

The programs for A001708, there is no canonical definition to state claims against.
-/

/-! ## A001708.P10371008576601881658

`A145324(∑[n+5]+6)`
-/

namespace A001708.P10371008576601881658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (∑ j ∈ Finset.range (n + 1), f1 j + 6)

end

end A001708.P10371008576601881658

/-! ## A001708.P13911763376335899670

`A136124(A056000(n)+16)`
-/

namespace A001708.P13911763376335899670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A056000 n + 16).toNat

end

end A001708.P13911763376335899670

/-! ## A001708.P5167317139510867114

`A136124(A167499(n+3)+1)`
-/

namespace A001708.P5167317139510867114
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A167499 (n + 3) + 1).toNat

end

end A001708.P5167317139510867114

/-! ## A001708.P16462412589808371914

`A136124(A000217(n+4)+6)`
-/

namespace A001708.P16462412589808371914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136124 (A000217 (n + 4) + 6).toNat

end

end A001708.P16462412589808371914

/-! ## A001708.P2468003658410022084

`A000482(n+6)-A001707(n+1)`
-/

namespace A001708.P2468003658410022084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000482 (n + 6) - A001707 (n + 1)

end

end A001708.P2468003658410022084

/-!
# A001709: Generalized Stirling numbers, [n+7,7]_2.

The programs for A001709, there is no canonical definition to state claims against.
-/

/-! ## A001709.P35829148929080483

`A145324(A052905(n+3))`
-/

namespace A001709.P35829148929080483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A052905 (n + 3)).toNat

end

end A001709.P35829148929080483

/-! ## A001709.P5125097095471428434

`A145324(eq[5, A193592(n)])`
-/

namespace A001709.P5125097095471428434
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001709.P5125097095471428434

/-! ## A001709.P11704480609861167933

`A145324(eq[8, A258709(n)])`
-/

namespace A001709.P11704480609861167933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001709.P11704480609861167933

/-! ## A001709.P12597711007629452647

`A145324(A134869(n+6)-6)`
-/

namespace A001709.P12597711007629452647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (A134869 (n + 6) - 6).toNat

end

end A001709.P12597711007629452647

/-! ## A001709.P17163315807619242541

`A145324(eq[8, A185782(n+1)])`
-/

namespace A001709.P17163315807619242541
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185782 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145324 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001709.P17163315807619242541

/-!
# A001710: Order of alternating group A_n, or number of even permutations of n letters.

The programs for A001710, the canonical program `A001710.P2200733452050152393` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001710 has offset 0).

The definition of A001710 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001710.P2200733452050152393

`n*a(n-1)` with `a(0)=1, a(1)=1, a(2)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001710

/-- `n*a(n-1)` -/
def P2200733452050152393.Spec : Prop :=
  ∀ n, (P2200733452050152393.a n : ℤ) = A001710 n

theorem P2200733452050152393.correct : P2200733452050152393.Spec := by
  intro n
  simp only [A001710]

end A001710

/-! ## A001710.P4404486013918788711

`∏[gcd(n, C(2, n))]`
-/

namespace A001710.P4404486013918788711
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001710.P4404486013918788711

namespace A001710

/-- `∏[gcd(n, C(2, n))]` -/
def P4404486013918788711.Spec : Prop :=
  ∀ n, (P4404486013918788711.a n : ℤ) = A001710 n

end A001710

/-! ## A001710.P5482264525583264914

`∏[n^(1-C(2, n))]`
-/

namespace A001710.P5482264525583264914
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (1 - (Nat.choose 2 n : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001710.P5482264525583264914

namespace A001710

/-- `∏[n^(1-C(2, n))]` -/
def P5482264525583264914.Spec : Prop :=
  ∀ n, P5482264525583264914.a n = (A001710 n : ℚ)

end A001710

/-! ## A001710.P6454331895000619853

`∏[C(n, n^C(2, n))]`
-/

namespace A001710.P6454331895000619853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (n ^ Nat.choose 2 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001710.P6454331895000619853

namespace A001710

/-- `∏[C(n, n^C(2, n))]` -/
def P6454331895000619853.Spec : Prop :=
  ∀ n, (P6454331895000619853.a n : ℤ) = A001710 n

end A001710

/-! ## A001710.P16620161798999851148

`∏[C(n, C(n, C(2, n)))]`
-/

namespace A001710.P16620161798999851148
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n (Nat.choose n (Nat.choose 2 n))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001710.P16620161798999851148

namespace A001710

/-- `∏[C(n, C(n, C(2, n)))]` -/
def P16620161798999851148.Spec : Prop :=
  ∀ n, (P16620161798999851148.a n : ℤ) = A001710 n

end A001710

/-! ## A001710.P14914290008597189428

`∏[n^ceil(tanh(n-2))]`
-/

namespace A001710.P14914290008597189428
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌈Real.tanh ((n : ℤ) - 2 : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001710.P14914290008597189428

namespace A001710

/-- `∏[n^ceil(tanh(n-2))]` -/
def P14914290008597189428.Spec : Prop :=
  ∀ n, P14914290008597189428.a n = (A001710 n : ℚ)

end A001710

/-! ## A001710.P1142376952476992548

`∏[n^round(n/(n+3))]`
-/

namespace A001710.P1142376952476992548
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℚ) / (n + 3 : ℚ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001710.P1142376952476992548

namespace A001710

/-- `∏[n^round(n/(n+3))]` -/
def P1142376952476992548.Spec : Prop :=
  ∀ n, P1142376952476992548.a n = (A001710 n : ℚ)

end A001710

/-! ## A001710.P2235222252209518167

`a(n-1)/n^(-1)` with `a(0)=1, a(1)=1, a(2)=1`
-/

namespace A001710.P2235222252209518167
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 1, 1] fun n a =>
  a (n - 1) / (n : ℚ) ^ (-1 : ℤ)

end

end A001710.P2235222252209518167

namespace A001710

/-- `a(n-1)/n^(-1)` -/
def P2235222252209518167.Spec : Prop :=
  ∀ n, P2235222252209518167.a n = (A001710 n : ℚ)

end A001710

/-! ## A001710.P5767794992792549237

`abs(A338817(∑[n]))`
-/

namespace A001710.P5767794992792549237
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A338817 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A001710.P5767794992792549237

namespace A001710

/-- `abs(A338817(∑[n]))` -/
def P5767794992792549237.Spec : Prop :=
  ∀ n, P5767794992792549237.a n = A001710 n

end A001710

/-! ## A001710.P7028407113490324467

`A144151(∑[n+2])`
-/

namespace A001710.P7028407113490324467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144151 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001710.P7028407113490324467

namespace A001710

/-- `A144151(∑[n+2])` -/
def P7028407113490324467.Spec : Prop :=
  ∀ n, P7028407113490324467.a n = A001710 n

end A001710

/-!
# A001711: Generalized Stirling numbers, [n+4,4]_3.

The programs for A001711, the canonical program `A001711.P5578871184558108926` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001711 has offset 0).

The definition of A001711 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001711.P5578871184558108926

`(n+2)!/2+(n+3)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001711

/-- `(n+2)!/2+(n+3)*a(n-1)` -/
def P5578871184558108926.Spec : Prop :=
  ∀ n, P5578871184558108926.a n = (A001711 n : ℚ)

end A001711

/-! ## A001711.P10592159592241959125

`A001705(n+2)-A182541(n+4)`
-/

namespace A001711.P10592159592241959125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001705 (n + 2) - A182541 (n + 4)

end

end A001711.P10592159592241959125

namespace A001711

/-- `A001705(n+2)-A182541(n+4)` -/
def P10592159592241959125.Spec : Prop :=
  ∀ n, P10592159592241959125.a n = A001711 n

end A001711

/-! ## A001711.P835774620192240685

`(A000254(n+3)-3*A001710(n+3))/2`
-/

namespace A001711.P835774620192240685
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000254 (n + 3) - 3 * A001710 (n + 3) : ℚ) / 2

end

end A001711.P835774620192240685

namespace A001711

/-- `(A000254(n+3)-3*A001710(n+3))/2` -/
def P835774620192240685.Spec : Prop :=
  ∀ n, P835774620192240685.a n = (A001711 n : ℚ)

end A001711

/-! ## A001711.P3417092447257746968

`((n+1)!*∑[n+1]+(n+2)!*∑[∑[1/(n+2)]])/2`
-/

namespace A001711.P3417092447257746968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (n + 2 : ℚ)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((Nat.factorial (n + 1) * (∑ j ∈ Finset.range (n + 1), f1 j) : ℕ) : ℚ) + (Nat.factorial (n + 2) : ℚ) * (∑ j ∈ Finset.range (n + 1), f2 j)) / 2

end

end A001711.P3417092447257746968

namespace A001711

/-- `((n+1)!*∑[n+1]+(n+2)!*∑[∑[1/(n+2)]])/2` -/
def P3417092447257746968.Spec : Prop :=
  ∀ n, P3417092447257746968.a n = (A001711 n : ℚ)

end A001711

/-! ## A001711.P5067063803851635032

`A122057(n+2)/2`
-/

namespace A001711.P5067063803851635032
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A122057 (n + 2) : ℚ) / 2

end

end A001711.P5067063803851635032

namespace A001711

/-- `A122057(n+2)/2` -/
def P5067063803851635032.Spec : Prop :=
  ∀ n, P5067063803851635032.a n = (A001711 n : ℚ)

end A001711

/-! ## A001711.P3135637257581689093

`A376582(∑[n+1]+1)`
-/

namespace A001711.P3135637257581689093
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376582 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001711.P3135637257581689093

namespace A001711

/-- `A376582(∑[n+1]+1)` -/
def P3135637257581689093.Spec : Prop :=
  ∀ n, P3135637257581689093.a n = A001711 n

end A001711

/-! ## A001711.P16512748607498670717

`A196845(∑[n+2]-1)`
-/

namespace A001711.P16512748607498670717
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (∑ j ∈ Finset.range (n + 1), f1 j - 1)

end

end A001711.P16512748607498670717

namespace A001711

/-- `A196845(∑[n+2]-1)` -/
def P16512748607498670717.Spec : Prop :=
  ∀ n, P16512748607498670717.a n = A001711 n

end A001711

/-! ## A001711.P1708335457357689532

`A143492(∑[n+1]+4)`
-/

namespace A001711.P1708335457357689532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A001711.P1708335457357689532

namespace A001711

/-- `A143492(∑[n+1]+4)` -/
def P1708335457357689532.Spec : Prop :=
  ∀ n, P1708335457357689532.a n = A001711 n

end A001711

/-! ## A001711.P6387398528409959680

`A180119(n)+(n+1)!+(n+3)*a(n-1)` with `a(0)=1`
-/

namespace A001711.P6387398528409959680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A180119 n + ((Nat.factorial (n + 1) : ℤ) + (n + 3 : ℤ) * a (n - 1))

end

end A001711.P6387398528409959680

namespace A001711

/-- `A180119(n)+(n+1)!+(n+3)*a(n-1)` -/
def P6387398528409959680.Spec : Prop :=
  ∀ n, P6387398528409959680.a n = A001711 n

end A001711

/-! ## A001711.P5481385230474249025

`(n+1)!+(n+3)*a(n-1)+A213168(n+2)+n` with `a(0)=1`
-/

namespace A001711.P5481385230474249025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.factorial (n + 1) : ℤ) + (n + 3 : ℤ) * a (n - 1) + (A213168 (n + 2) + (n : ℤ))

end

end A001711.P5481385230474249025

namespace A001711

/-- `(n+1)!+(n+3)*a(n-1)+A213168(n+2)+n` -/
def P5481385230474249025.Spec : Prop :=
  ∀ n, P5481385230474249025.a n = A001711 n

end A001711

/-!
# A001712: Generalized Stirling numbers, [n+5,5]_3.

The programs for A001712, the canonical program `A001712.P8035794898765851406` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001712 has offset 0).

The definition of A001712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001712.P8035794898765851406

`A001711(n)+(n+4)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001712

/-- `A001711(n)+(n+4)*a(n-1)` -/
def P8035794898765851406.Spec : Prop :=
  ∀ n, P8035794898765851406.a n = A001712 n

theorem P8035794898765851406.correct : P8035794898765851406.Spec := by
  intro n
  simp only [A001712]

end A001712

/-! ## A001712.P5415836933902996894

`A196845(∑[n+3])`
-/

namespace A001712.P5415836933902996894
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001712.P5415836933902996894

namespace A001712

/-- `A196845(∑[n+3])` -/
def P5415836933902996894.Spec : Prop :=
  ∀ n, P5415836933902996894.a n = A001712 n

end A001712

/-! ## A001712.P15054976606566017957

`A376634(∑[n+1]+1)`
-/

namespace A001712.P15054976606566017957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376634 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001712.P15054976606566017957

namespace A001712

/-- `A376634(∑[n+1]+1)` -/
def P15054976606566017957.Spec : Prop :=
  ∀ n, P15054976606566017957.a n = A001712 n

end A001712

/-! ## A001712.P15997437964083386933

`A143492(A167499(n+1))`
-/

namespace A001712.P15997437964083386933
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (A167499 (n + 1)).toNat

end

end A001712.P15997437964083386933

namespace A001712

/-- `A143492(A167499(n+1))` -/
def P15997437964083386933.Spec : Prop :=
  ∀ n, P15997437964083386933.a n = A001712 n

end A001712

/-! ## A001712.P5491085687382657037

`abs(A049458(A133263(n+2)))`
-/

namespace A001712.P5491085687382657037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049458 (A133263 (n + 2)).toNat|

end

end A001712.P5491085687382657037

namespace A001712

/-- `abs(A049458(A133263(n+2)))` -/
def P5491085687382657037.Spec : Prop :=
  ∀ n, P5491085687382657037.a n = A001712 n

end A001712

/-! ## A001712.P492339640606602545

`A143492(A166136(n+1)-1)`
-/

namespace A001712.P492339640606602545
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (A166136 (n + 1) - 1).toNat

end

end A001712.P492339640606602545

namespace A001712

/-- `A143492(A166136(n+1)-1)` -/
def P492339640606602545.Spec : Prop :=
  ∀ n, P492339640606602545.a n = A001712 n

end A001712

/-! ## A001712.P14820152141628805357

`A143492(A167614(n+1)+2)`
-/

namespace A001712.P14820152141628805357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (A167614 (n + 1) + 2).toNat

end

end A001712.P14820152141628805357

namespace A001712

/-- `A143492(A167614(n+1)+2)` -/
def P14820152141628805357.Spec : Prop :=
  ∀ n, P14820152141628805357.a n = A001712 n

end A001712

/-! ## A001712.P11847991320144104326

`record[gcd(A048994(n), A049458(n+2))]`
-/

namespace A001712.P11847991320144104326
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048994 n) (A049458 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001712.P11847991320144104326

namespace A001712

/-- `record[gcd(A048994(n), A049458(n+2))]` -/
def P11847991320144104326.Spec : Prop :=
  ∀ n, (P11847991320144104326.a n : ℤ) = A001712 n

end A001712

/-! ## A001712.P231871055375845624

`record[gcd(A049458(n+4), A084938(n+2))]`
-/

namespace A001712.P231871055375845624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049458 (n + 4)) (A084938 (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001712.P231871055375845624

namespace A001712

/-- `record[gcd(A049458(n+4), A084938(n+2))]` -/
def P231871055375845624.Spec : Prop :=
  ∀ n, (P231871055375845624.a n : ℤ) = A001712 n

end A001712

/-!
# A001713: Generalized Stirling numbers, [n+6,6]_3.

The programs for A001713, the canonical program `A001713.P2493112064695772112` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001713 has offset 0).

The definition of A001713 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001713.P2493112064695772112

`A001712(n)+(n+5)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001713

/-- `A001712(n)+(n+5)*a(n-1)` -/
def P2493112064695772112.Spec : Prop :=
  ∀ n, P2493112064695772112.a n = A001713 n

theorem P2493112064695772112.correct : P2493112064695772112.Spec := by
  intro n
  simp only [A001713]

end A001713

/-! ## A001713.P3251725447326812718

`A196845(∑[n+3]+n+3)`
-/

namespace A001713.P3251725447326812718
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A001713.P3251725447326812718

namespace A001713

/-- `A196845(∑[n+3]+n+3)` -/
def P3251725447326812718.Spec : Prop :=
  ∀ n, P3251725447326812718.a n = A001713 n

end A001713

/-! ## A001713.P2547739855167149972

`A143492(A166136(n+2))`
-/

namespace A001713.P2547739855167149972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (A166136 (n + 2)).toNat

end

end A001713.P2547739855167149972

namespace A001713

/-- `A143492(A166136(n+2))` -/
def P2547739855167149972.Spec : Prop :=
  ∀ n, P2547739855167149972.a n = A001713 n

end A001713

/-! ## A001713.P4351890422147661244

`A143492(A052905(n)+11)`
-/

namespace A001713.P4351890422147661244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (A052905 n + 11).toNat

end

end A001713.P4351890422147661244

namespace A001713

/-- `A143492(A052905(n)+11)` -/
def P4351890422147661244.Spec : Prop :=
  ∀ n, P4351890422147661244.a n = A001713 n

end A001713

/-! ## A001713.P658301976179682125

`A143492(A055999(n)+12)`
-/

namespace A001713.P658301976179682125
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (A055999 n + 12).toNat

end

end A001713.P658301976179682125

namespace A001713

/-- `A143492(A055999(n)+12)` -/
def P658301976179682125.Spec : Prop :=
  ∀ n, P658301976179682125.a n = A001713 n

end A001713

/-! ## A001713.P320139037064226893

`A143492(A000124(n+3)+5)`
-/

namespace A001713.P320139037064226893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (A000124 (n + 3) + 5).toNat

end

end A001713.P320139037064226893

namespace A001713

/-- `A143492(A000124(n+3)+5)` -/
def P320139037064226893.Spec : Prop :=
  ∀ n, P320139037064226893.a n = A001713 n

end A001713

/-!
# A001714: Generalized Stirling numbers, [n+7,7]_3.

The programs for A001714, the canonical program `A001714.P5361614214990878834` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001714 has offset 0).

The definition of A001714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001714.P5361614214990878834

`A001713(n)+(n+6)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001714

/-- `A001713(n)+(n+6)*a(n-1)` -/
def P5361614214990878834.Spec : Prop :=
  ∀ n, P5361614214990878834.a n = A001714 n

theorem P5361614214990878834.correct : P5361614214990878834.Spec := by
  intro n
  simp only [A001714]

end A001714

/-! ## A001714.P4022593363580140157

`A196845(A052905(n+2))`
-/

namespace A001714.P4022593363580140157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (A052905 (n + 2)).toNat

end

end A001714.P4022593363580140157

namespace A001714

/-- `A196845(A052905(n+2))` -/
def P4022593363580140157.Spec : Prop :=
  ∀ n, P4022593363580140157.a n = A001714 n

end A001714

/-! ## A001714.P15503990727070524547

`A143492(A155212(n)+15)`
-/

namespace A001714.P15503990727070524547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (A155212 n + 15).toNat

end

end A001714.P15503990727070524547

namespace A001714

/-- `A143492(A155212(n)+15)` -/
def P15503990727070524547.Spec : Prop :=
  ∀ n, P15503990727070524547.a n = A001714 n

end A001714

/-! ## A001714.P8365643473811346334

`A143492(A056000(n)+17)`
-/

namespace A001714.P8365643473811346334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (A056000 n + 17).toNat

end

end A001714.P8365643473811346334

namespace A001714

/-- `A143492(A056000(n)+17)` -/
def P8365643473811346334.Spec : Prop :=
  ∀ n, P8365643473811346334.a n = A001714 n

end A001714

/-! ## A001714.P5240508026700196083

`A196845(A055999(n+2)+1)`
-/

namespace A001714.P5240508026700196083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196845 (A055999 (n + 2) + 1).toNat

end

end A001714.P5240508026700196083

namespace A001714

/-- `A196845(A055999(n+2)+1)` -/
def P5240508026700196083.Spec : Prop :=
  ∀ n, P5240508026700196083.a n = A001714 n

end A001714

/-! ## A001714.P4219175087780568713

`A143492(A051936(n+4)+16)`
-/

namespace A001714.P4219175087780568713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (A051936 (n + 4) + 16).toNat

end

end A001714.P4219175087780568713

namespace A001714

/-- `A143492(A051936(n+4)+16)` -/
def P4219175087780568713.Spec : Prop :=
  ∀ n, P4219175087780568713.a n = A001714 n

end A001714

/-! ## A001714.P8016419094399869579

`A143492(A166136(n+4)-(n+4))`
-/

namespace A001714.P8016419094399869579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143492 (A166136 (n + 4) - (n + 4 : ℤ)).toNat

end

end A001714.P8016419094399869579

namespace A001714

/-- `A143492(A166136(n+4)-(n+4))` -/
def P8016419094399869579.Spec : Prop :=
  ∀ n, P8016419094399869579.a n = A001714 n

end A001714

/-!
# A001715: a(n) = n!/6.

The programs for A001715, the canonical program `A001715.P3403089565618059266` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001715 has offset 3).

The definition of A001715 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001715.P3403089565618059266

`(n+3)!/6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001715

/-- `(n+3)!/6` -/
def P3403089565618059266.Spec : Prop :=
  ∀ n, P3403089565618059266.a n = (A001715 (n + 3) : ℚ)

end A001715

/-! ## A001715.P3435962854115866059

`∏[n+3]/3`
-/

namespace A001715.P3435962854115866059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 3

end

end A001715.P3435962854115866059

namespace A001715

/-- `∏[n+3]/3` -/
def P3435962854115866059.Spec : Prop :=
  ∀ n, P3435962854115866059.a n = (A001715 (n + 3) : ℚ)

end A001715

/-! ## A001715.P16353935773255303295

`n!*C(n+3, 3)`
-/

namespace A001715.P16353935773255303295
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n + 3) 3

end

end A001715.P16353935773255303295

namespace A001715

/-- `n!*C(n+3, 3)` -/
def P16353935773255303295.Spec : Prop :=
  ∀ n, (P16353935773255303295.a n : ℤ) = A001715 (n + 3)

end A001715

/-! ## A001715.P11614107137678135587

`∏[(3^n)%6+n]`
-/

namespace A001715.P11614107137678135587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n % 6 + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001715.P11614107137678135587

namespace A001715

/-- `∏[(3^n)%6+n]` -/
def P11614107137678135587.Spec : Prop :=
  ∀ n, (P11614107137678135587.a n : ℤ) = A001715 (n + 3)

end A001715

/-! ## A001715.P15472668091929128901

`∏[n+3]*tan(acot(3))`
-/

namespace A001715.P15472668091929128901
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * Real.tan (SequenceMachineLib.acot (3 : ℝ))

end

end A001715.P15472668091929128901

namespace A001715

/-- `∏[n+3]*tan(acot(3))` -/
def P15472668091929128901.Spec : Prop :=
  ∀ n, P15472668091929128901.a n = (A001715 (n + 3) : ℝ)

end A001715

/-! ## A001715.P17278247193574705405

`∏[n+3]*cot(atan(3))`
-/

namespace A001715.P17278247193574705405
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℝ) * Real.cot (Real.arctan (3 : ℝ))

end

end A001715.P17278247193574705405

namespace A001715

/-- `∏[n+3]*cot(atan(3))` -/
def P17278247193574705405.Spec : Prop :=
  ∀ n, P17278247193574705405.a n = (A001715 (n + 3) : ℝ)

end A001715

/-! ## A001715.P14117320938767976338

`n!*∑[∑[n+1]]`
-/

namespace A001715.P14117320938767976338
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001715.P14117320938767976338

namespace A001715

/-- `n!*∑[∑[n+1]]` -/
def P14117320938767976338.Spec : Prop :=
  ∀ n, (P14117320938767976338.a n : ℤ) = A001715 (n + 3)

end A001715

/-! ## A001715.P2492817412022440569

`∏[(n+3)^ceil(tanh(n))]`
-/

namespace A001715.P2492817412022440569
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001715.P2492817412022440569

namespace A001715

/-- `∏[(n+3)^ceil(tanh(n))]` -/
def P2492817412022440569.Spec : Prop :=
  ∀ n, P2492817412022440569.a n = (A001715 (n + 3) : ℚ)

end A001715

/-! ## A001715.P6986312302959850151

`∏[(n+3)^round(tanh(n))]`
-/

namespace A001715.P6986312302959850151
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (SequenceMachineLib.roundAway (Real.tanh (n : ℝ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001715.P6986312302959850151

namespace A001715

/-- `∏[(n+3)^round(tanh(n))]` -/
def P6986312302959850151.Spec : Prop :=
  ∀ n, P6986312302959850151.a n = (A001715 (n + 3) : ℚ)

end A001715

/-! ## A001715.P17856661873810493625

`∏[gcd(n+3, floor(acot(n)))]`
-/

namespace A001715.P17856661873810493625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 3 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001715.P17856661873810493625

namespace A001715

/-- `∏[gcd(n+3, floor(acot(n)))]` -/
def P17856661873810493625.Spec : Prop :=
  ∀ n, (P17856661873810493625.a n : ℤ) = A001715 (n + 3)

end A001715

/-!
# A001716: Generalized Stirling numbers, [n+5,5]_4.

The programs for A001716, the canonical program `A001716.P14546927540106320094` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001716 has offset 0).

The definition of A001716 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001716.P14546927540106320094

`(n+3)!/6+(n+4)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001716

/-- `(n+3)!/6+(n+4)*a(n-1)` -/
def P14546927540106320094.Spec : Prop :=
  ∀ n, P14546927540106320094.a n = (A001716 n : ℚ)

end A001716

/-! ## A001716.P8231594298532440276

`(n+4)*a(n-1)+n!*∑[∑[n+1]]` with `a(0)=1`
-/

namespace A001716.P8231594298532440276
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 4) * a (n - 1) + Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001716.P8231594298532440276

namespace A001716

/-- `(n+4)*a(n-1)+n!*∑[∑[n+1]]` -/
def P8231594298532440276.Spec : Prop :=
  ∀ n, (P8231594298532440276.a n : ℤ) = A001716 n

end A001716

/-! ## A001716.P8247397835081262618

`∏[(n+3)^ceil(tanh(n))]+(n+4)*a(n-1)` with `a(0)=1`
-/

namespace A001716.P8247397835081262618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (⌈Real.tanh (n : ℝ)⌉ : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 4 : ℚ) * a (n - 1)

end

end A001716.P8247397835081262618

namespace A001716

/-- `∏[(n+3)^ceil(tanh(n))]+(n+4)*a(n-1)` -/
def P8247397835081262618.Spec : Prop :=
  ∀ n, P8247397835081262618.a n = (A001716 n : ℚ)

end A001716

/-! ## A001716.P408711514029479930

`∏[(n+3)^round(tanh(n))]+(n+4)*a(n-1)` with `a(0)=1`
-/

namespace A001716.P408711514029479930
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 3 : ℚ) ^ (SequenceMachineLib.roundAway (Real.tanh (n : ℝ)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∏ j ∈ Finset.range (n + 1), f1 j + (n + 4 : ℚ) * a (n - 1)

end

end A001716.P408711514029479930

namespace A001716

/-- `∏[(n+3)^round(tanh(n))]+(n+4)*a(n-1)` -/
def P408711514029479930.Spec : Prop :=
  ∀ n, P408711514029479930.a n = (A001716 n : ℚ)

end A001716

/-! ## A001716.P4734502864588801299

`A143493(∑[n+1]+5)`
-/

namespace A001716.P4734502864588801299
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A001716.P4734502864588801299

namespace A001716

/-- `A143493(∑[n+1]+5)` -/
def P4734502864588801299.Spec : Prop :=
  ∀ n, P4734502864588801299.a n = A001716 n

end A001716

/-! ## A001716.P5824703769663598103

`abs(A049459(A000124(n+1)))`
-/

namespace A001716.P5824703769663598103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049459 (A000124 (n + 1)).toNat|

end

end A001716.P5824703769663598103

namespace A001716

/-- `abs(A049459(A000124(n+1)))` -/
def P5824703769663598103.Spec : Prop :=
  ∀ n, P5824703769663598103.a n = A001716 n

end A001716

/-! ## A001716.P8469140578701310210

`abs(A049459(A000096(n)+2))`
-/

namespace A001716.P8469140578701310210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049459 (A000096 n + 2).toNat|

end

end A001716.P8469140578701310210

namespace A001716

/-- `abs(A049459(A000096(n)+2))` -/
def P8469140578701310210.Spec : Prop :=
  ∀ n, P8469140578701310210.a n = A001716 n

end A001716

/-! ## A001716.P14652676906617295041

`record[gcd(1-A002262(n), A049459(n))]`
-/

namespace A001716.P14652676906617295041
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (1 - A002262 n) (A049459 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001716.P14652676906617295041

namespace A001716

/-- `record[gcd(1-A002262(n), A049459(n))]` -/
def P14652676906617295041.Spec : Prop :=
  ∀ n, (P14652676906617295041.a n : ℤ) = A001716 n

end A001716

/-! ## A001716.P5404645262508227532

`record[gcd(A002262(n+2), A049459(n+3))]`
-/

namespace A001716.P5404645262508227532
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002262 (n + 2)) (A049459 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001716.P5404645262508227532

namespace A001716

/-- `record[gcd(A002262(n+2), A049459(n+3))]` -/
def P5404645262508227532.Spec : Prop :=
  ∀ n, (P5404645262508227532.a n : ℤ) = A001716 n

end A001716

/-! ## A001716.P17834303982079188111

`A376582(A134869(n+2)+1)`
-/

namespace A001716.P17834303982079188111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376582 (A134869 (n + 2) + 1).toNat

end

end A001716.P17834303982079188111

namespace A001716

/-- `A376582(A134869(n+2)+1)` -/
def P17834303982079188111.Spec : Prop :=
  ∀ n, P17834303982079188111.a n = A001716 n

end A001716

/-!
# A001717: Generalized Stirling numbers, [n+6,6]_4.

The programs for A001717, the canonical program `A001717.P2537083117907525314` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001717 has offset 0).

The definition of A001717 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001717.P2537083117907525314

`A001716(n)+(n+5)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001717

/-- `A001716(n)+(n+5)*a(n-1)` -/
def P2537083117907525314.Spec : Prop :=
  ∀ n, P2537083117907525314.a n = A001717 n

theorem P2537083117907525314.correct : P2537083117907525314.Spec := by
  intro n
  simp only [A001717]

end A001717

/-! ## A001717.P56322219411329208

`A143493(C(n+3, 2)+6)`
-/

namespace A001717.P56322219411329208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (Nat.choose (n + 3) 2 + 6)

end

end A001717.P56322219411329208

namespace A001717

/-- `A143493(C(n+3, 2)+6)` -/
def P56322219411329208.Spec : Prop :=
  ∀ n, P56322219411329208.a n = A001717 n

end A001717

/-! ## A001717.P11476947144533282514

`A143493(A166136(n+1))`
-/

namespace A001717.P11476947144533282514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A166136 (n + 1)).toNat

end

end A001717.P11476947144533282514

namespace A001717

/-- `A143493(A166136(n+1))` -/
def P11476947144533282514.Spec : Prop :=
  ∀ n, P11476947144533282514.a n = A001717 n

end A001717

/-! ## A001717.P2108258246832555987

`A143493(A055998(n)+9)`
-/

namespace A001717.P2108258246832555987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A055998 n + 9).toNat

end

end A001717.P2108258246832555987

namespace A001717

/-- `A143493(A055998(n)+9)` -/
def P2108258246832555987.Spec : Prop :=
  ∀ n, P2108258246832555987.a n = A001717 n

end A001717

/-! ## A001717.P13784369581601762139

`A143493(A046691(n)+10)`
-/

namespace A001717.P13784369581601762139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A046691 n + 10).toNat

end

end A001717.P13784369581601762139

namespace A001717

/-- `A143493(A046691(n)+10)` -/
def P13784369581601762139.Spec : Prop :=
  ∀ n, P13784369581601762139.a n = A001717 n

end A001717

/-! ## A001717.P15490469780164002934

`A143493(A167499(n+1)+1)`
-/

namespace A001717.P15490469780164002934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A167499 (n + 1) + 1).toNat

end

end A001717.P15490469780164002934

namespace A001717

/-- `A143493(A167499(n+1)+1)` -/
def P15490469780164002934.Spec : Prop :=
  ∀ n, P15490469780164002934.a n = A001717 n

end A001717

/-! ## A001717.P1065825871173855672

`A143493(A167614(n+1)+3)`
-/

namespace A001717.P1065825871173855672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A167614 (n + 1) + 3).toNat

end

end A001717.P1065825871173855672

namespace A001717

/-- `A143493(A167614(n+1)+3)` -/
def P1065825871173855672.Spec : Prop :=
  ∀ n, P1065825871173855672.a n = A001717 n

end A001717

/-! ## A001717.P115642586191248919

`A143493(A034856(n+1)+8)`
-/

namespace A001717.P115642586191248919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A034856 (n + 1) + 8).toNat

end

end A001717.P115642586191248919

namespace A001717

/-- `A143493(A034856(n+1)+8)` -/
def P115642586191248919.Spec : Prop :=
  ∀ n, P115642586191248919.a n = A001717 n

end A001717

/-! ## A001717.P1221923295714388256

`abs(A049459(A167614(n+1)-1))`
-/

namespace A001717.P1221923295714388256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049459 (A167614 (n + 1) - 1).toNat|

end

end A001717.P1221923295714388256

namespace A001717

/-- `abs(A049459(A167614(n+1)-1))` -/
def P1221923295714388256.Spec : Prop :=
  ∀ n, P1221923295714388256.a n = A001717 n

end A001717

/-! ## A001717.P2517363544374180061

`A376634(A167614(n+1)-1)`
-/

namespace A001717.P2517363544374180061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376634 (A167614 (n + 1) - 1).toNat

end

end A001717.P2517363544374180061

namespace A001717

/-- `A376634(A167614(n+1)-1)` -/
def P2517363544374180061.Spec : Prop :=
  ∀ n, P2517363544374180061.a n = A001717 n

end A001717

/-!
# A001718: Generalized Stirling numbers, [n+7,7]_4.

The programs for A001718, the canonical program `A001718.P453844881199876727` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001718 has offset 0).

The definition of A001718 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001718.P453844881199876727

`A001717(n)+(n+6)*a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001718

/-- `A001717(n)+(n+6)*a(n-1)` -/
def P453844881199876727.Spec : Prop :=
  ∀ n, P453844881199876727.a n = A001718 n

theorem P453844881199876727.correct : P453844881199876727.Spec := by
  intro n
  simp only [A001718]

end A001718

/-! ## A001718.P10438178947894787408

`A143493(A052905(n)+12)`
-/

namespace A001718.P10438178947894787408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A052905 n + 12).toNat

end

end A001718.P10438178947894787408

namespace A001718

/-- `A143493(A052905(n)+12)` -/
def P10438178947894787408.Spec : Prop :=
  ∀ n, P10438178947894787408.a n = A001718 n

end A001718

/-! ## A001718.P1765187199592613702

`A143493(A055999(n)+13)`
-/

namespace A001718.P1765187199592613702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A055999 n + 13).toNat

end

end A001718.P1765187199592613702

namespace A001718

/-- `A143493(A055999(n)+13)` -/
def P1765187199592613702.Spec : Prop :=
  ∀ n, P1765187199592613702.a n = A001718 n

end A001718

/-! ## A001718.P17583776619046362353

`abs(A049459(A167614(n+2)))`
-/

namespace A001718.P17583776619046362353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049459 (A167614 (n + 2)).toNat|

end

end A001718.P17583776619046362353

namespace A001718

/-- `abs(A049459(A167614(n+2)))` -/
def P17583776619046362353.Spec : Prop :=
  ∀ n, P17583776619046362353.a n = A001718 n

end A001718

/-! ## A001718.P18073681620584075172

`A143493(A166136(n+2)+1)`
-/

namespace A001718.P18073681620584075172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A166136 (n + 2) + 1).toNat

end

end A001718.P18073681620584075172

namespace A001718

/-- `A143493(A166136(n+2)+1)` -/
def P18073681620584075172.Spec : Prop :=
  ∀ n, P18073681620584075172.a n = A001718 n

end A001718

/-! ## A001718.P13088748069698105441

`A143493(A167614(n+2)+4)`
-/

namespace A001718.P13088748069698105441
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A167614 (n + 2) + 4).toNat

end

end A001718.P13088748069698105441

namespace A001718

/-- `A143493(A167614(n+2)+4)` -/
def P13088748069698105441.Spec : Prop :=
  ∀ n, P13088748069698105441.a n = A001718 n

end A001718

/-! ## A001718.P17480678201104313537

`A143493(A055998(n+1)+10)`
-/

namespace A001718.P17480678201104313537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A055998 (n + 1) + 10).toNat

end

end A001718.P17480678201104313537

namespace A001718

/-- `A143493(A055998(n+1)+10)` -/
def P17480678201104313537.Spec : Prop :=
  ∀ n, P17480678201104313537.a n = A001718 n

end A001718

/-!
# A001719: Generalized Stirling numbers, [n+8,8]_4.

The programs for A001719, there is no canonical definition to state claims against.
-/

/-! ## A001719.P5893459956805794859

`A143493(A155212(n)+16)`
-/

namespace A001719.P5893459956805794859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A155212 n + 16).toNat

end

end A001719.P5893459956805794859

/-! ## A001719.P16483203605943246468

`A143493(A167499(n+3)+3)`
-/

namespace A001719.P16483203605943246468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A167499 (n + 3) + 3).toNat

end

end A001719.P16483203605943246468

/-! ## A001719.P10215341828940024214

`A143493(A167614(n+3)+5)`
-/

namespace A001719.P10215341828940024214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A167614 (n + 3) + 5).toNat

end

end A001719.P10215341828940024214

/-! ## A001719.P8936295271602635609

`A143493(A052905(n+1)+13)`
-/

namespace A001719.P8936295271602635609
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A052905 (n + 1) + 13).toNat

end

end A001719.P8936295271602635609

/-! ## A001719.P14824588814099449678

`A143493(A000217(n+5)-A328399(2*n)+4)`
-/

namespace A001719.P14824588814099449678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143493 (A000217 (n + 5) - A328399 (2 * n) + 4).toNat

end

end A001719.P14824588814099449678

/-!
# A001720: a(n) = n!/24.

The programs for A001720, the canonical program `A001720.P88558306593264620` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001720 has offset 4).

The definition of A001720 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001720.P88558306593264620

`(n+4)!/24`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001720

/-- `(n+4)!/24` -/
def P88558306593264620.Spec : Prop :=
  ∀ n, P88558306593264620.a n = (A001720 (n + 4) : ℚ)

end A001720

/-! ## A001720.P487383738883128058

`∏[n+4]/4`
-/

namespace A001720.P487383738883128058
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4

end

end A001720.P487383738883128058

namespace A001720

/-- `∏[n+4]/4` -/
def P487383738883128058.Spec : Prop :=
  ∀ n, P487383738883128058.a n = (A001720 (n + 4) : ℚ)

end A001720

/-! ## A001720.P2670488561446596899

`n!*C(n+4, 4)`
-/

namespace A001720.P2670488561446596899
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n + 4) 4

end

end A001720.P2670488561446596899

namespace A001720

/-- `n!*C(n+4, 4)` -/
def P2670488561446596899.Spec : Prop :=
  ∀ n, (P2670488561446596899.a n : ℤ) = A001720 (n + 4)

end A001720

/-! ## A001720.P250815651630324257

`∏[gcd(12, 4^n)+n]`
-/

namespace A001720.P250815651630324257
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 12 (4 ^ n) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001720.P250815651630324257

namespace A001720

/-- `∏[gcd(12, 4^n)+n]` -/
def P250815651630324257.Spec : Prop :=
  ∀ n, (P250815651630324257.a n : ℤ) = A001720 (n + 4)

end A001720

/-! ## A001720.P4563509389980599535

`∏[dr(∑[3^n])+n]`
-/

namespace A001720.P4563509389980599535
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001720.P4563509389980599535

namespace A001720

/-- `∏[dr(∑[3^n])+n]` -/
def P4563509389980599535.Spec : Prop :=
  ∀ n, (P4563509389980599535.a n : ℤ) = A001720 (n + 4)

end A001720

/-! ## A001720.P12546498200908250396

`∏[gcd(n+4, floor(acot(n)))]`
-/

namespace A001720.P12546498200908250396
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 4 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001720.P12546498200908250396

namespace A001720

/-- `∏[gcd(n+4, floor(acot(n)))]` -/
def P12546498200908250396.Spec : Prop :=
  ∀ n, (P12546498200908250396.a n : ℤ) = A001720 (n + 4)

end A001720

/-! ## A001720.P14171512387788004470

`∏[a(n-1)+1]` with `a(0)=1, a(1)=5`
-/

namespace A001720.P14171512387788004470
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001720.P14171512387788004470

namespace A001720

/-- `∏[a(n-1)+1]` -/
def P14171512387788004470.Spec : Prop :=
  ∀ n, (P14171512387788004470.a n : ℤ) = A001720 (n + 4)

end A001720

/-! ## A001720.P16360257621387587699

`(n+4)*a(n-1)` with `a(0)=1`
-/

namespace A001720.P16360257621387587699
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (n + 4) * a (n - 1)

end

end A001720.P16360257621387587699

namespace A001720

/-- `(n+4)*a(n-1)` -/
def P16360257621387587699.Spec : Prop :=
  ∀ n, (P16360257621387587699.a n : ℤ) = A001720 (n + 4)

end A001720

/-! ## A001720.P7462277302070821900

`n!*∑[∑[∑[n+1]]]`
-/

namespace A001720.P7462277302070821900
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001720.P7462277302070821900

namespace A001720

/-- `n!*∑[∑[∑[n+1]]]` -/
def P7462277302070821900.Spec : Prop :=
  ∀ n, (P7462277302070821900.a n : ℤ) = A001720 (n + 4)

end A001720

/-! ## A001720.P16896626881653679667

`∏[3%(n+3)+n+1]`
-/

namespace A001720.P16896626881653679667
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 % (n + 3) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001720.P16896626881653679667

namespace A001720

/-- `∏[3%(n+3)+n+1]` -/
def P16896626881653679667.Spec : Prop :=
  ∀ n, (P16896626881653679667.a n : ℤ) = A001720 (n + 4)

end A001720

/-!
# A001721: Generalized Stirling numbers, [n+6,6]_5.

The programs for A001721, there is no canonical definition to state claims against.
-/

/-! ## A001721.P15162014699093569049

`∏[n+4]/4+(n+5)*a(n-1)` with `a(0)=1`
-/

namespace A001721.P15162014699093569049
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4 + (n + 5 : ℚ) * a (n - 1)

end

end A001721.P15162014699093569049

/-! ## A001721.P2464324001451308067

`abs(A049460(A000124(n+1)))`
-/

namespace A001721.P2464324001451308067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049460 (A000124 (n + 1)).toNat|

end

end A001721.P2464324001451308067

/-! ## A001721.P10194427994793441486

`record[gcd(A048994(n), A049460(n+1))]`
-/

namespace A001721.P10194427994793441486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A048994 n) (A049460 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001721.P10194427994793441486

/-! ## A001721.P6950715493535853284

`record[gcd(A049460(n+2), A067176(n))]`
-/

namespace A001721.P6950715493535853284
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049460 (n + 2)) (A067176 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001721.P6950715493535853284

/-! ## A001721.P6314896811556616523

`gcd(A229616(n)%2, A049460(A000124(n+1)))`
-/

namespace A001721.P6314896811556616523
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Int.tmod (A229616 n) 2) (A049460 (A000124 (n + 1)).toNat)

end

end A001721.P6314896811556616523

/-! ## A001721.P16861441727199579748

`A376582(A167614(n+2))`
-/

namespace A001721.P16861441727199579748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376582 (A167614 (n + 2)).toNat

end

end A001721.P16861441727199579748

/-!
# A001722: Generalized Stirling numbers, [n+7,7]_5.

The programs for A001722, there is no canonical definition to state claims against.
-/

/-! ## A001722.P6695504309666131119

`abs(A049460(A046691(n)+6))`
-/

namespace A001722.P6695504309666131119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049460 (A046691 n + 6).toNat|

end

end A001722.P6695504309666131119

/-! ## A001722.P1704242077592948005

`abs(A049460(A167614(n+1)-1))`
-/

namespace A001722.P1704242077592948005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049460 (A167614 (n + 1) - 1).toNat|

end

end A001722.P1704242077592948005

/-! ## A001722.P18117695401045542926

`A033999(n)*A049460(A046691(n)+6)`
-/

namespace A001722.P18117695401045542926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A049460 (A046691 n + 6).toNat

end

end A001722.P18117695401045542926

/-! ## A001722.P9051762973784878854

`lcm(A033999(n²), A049460(A046691(n)+6))`
-/

namespace A001722.P9051762973784878854
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 (n ^ 2)) (A049460 (A046691 n + 6).toNat)

end

end A001722.P9051762973784878854

/-! ## A001722.P17866736315578547664

`A033999(n)*A049460(A167614(n+1)-1)`
-/

namespace A001722.P17866736315578547664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A049460 (A167614 (n + 1) - 1).toNat

end

end A001722.P17866736315578547664

/-! ## A001722.P5425713256547497260

`A049460(A046691(n)+6)*A057077(2*n)`
-/

namespace A001722.P5425713256547497260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049460 (A046691 n + 6).toNat * A057077 (2 * n)

end

end A001722.P5425713256547497260

/-! ## A001722.P11165132230554133315

`lcm(A049460(A167614(n+1)-1), A219347(n))`
-/

namespace A001722.P11165132230554133315
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049460 (A167614 (n + 1) - 1).toNat) (A219347 n)

end

end A001722.P11165132230554133315

/-! ## A001722.P1863688698160856822

`A049460(A046691(n)+6)*A117569(2*n+1)`
-/

namespace A001722.P1863688698160856822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049460 (A046691 n + 6).toNat * A117569 (2 * n + 1)

end

end A001722.P1863688698160856822

/-! ## A001722.P6721304597907376363

`gcd(A008683(8*n+4), A049460(A046691(n)+6))`
-/

namespace A001722.P6721304597907376363
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008683 (8 * n + 4)) (A049460 (A046691 n + 6).toNat)

end

end A001722.P6721304597907376363

/-! ## A001722.P2741994378600585451

`A376634(A167614(n+2))`
-/

namespace A001722.P2741994378600585451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376634 (A167614 (n + 2)).toNat

end

end A001722.P2741994378600585451

/-!
# A001723: Generalized Stirling numbers, [n+8,8]_5.

The programs for A001723, there is no canonical definition to state claims against.
-/

/-! ## A001723.P11768345292950633668

`abs(A049460(A167614(n+2)))`
-/

namespace A001723.P11768345292950633668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A049460 (A167614 (n + 2)).toNat|

end

end A001723.P11768345292950633668

/-! ## A001723.P8235218474889297052

`A033999(n)*A049460(A167614(n+2))`
-/

namespace A001723.P8235218474889297052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n * A049460 (A167614 (n + 2)).toNat

end

end A001723.P8235218474889297052

/-! ## A001723.P3391235988941834272

`lcm(A049460(A167614(n+2)), A219347(n))`
-/

namespace A001723.P3391235988941834272
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A049460 (A167614 (n + 2)).toNat) (A219347 n)

end

end A001723.P3391235988941834272

/-! ## A001723.P18174195314862066816

`lcm(-A049460(A167614(n+2)), A001511(n+1))`
-/

namespace A001723.P18174195314862066816
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (-A049460 (A167614 (n + 2)).toNat) (A001511 (n + 1))

end

end A001723.P18174195314862066816

/-!
# A001724: Generalized Stirling numbers, [n+9,9]_5.

The programs for A001724, there is no canonical definition to state claims against.
-/

/-! ## A001724.P6482190437756789457

`A143493(A000217(n+5)-A328399(2*n)+4)+(n+4)*a(n-1)` with `a(0)=1`
-/

namespace A001724.P6482190437756789457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A143493 (A000217 (n + 5) - A328399 (2 * n) + 4).toNat + (n + 4 : ℤ) * a (n - 1)

end

end A001724.P6482190437756789457

/-!
# A001725: a(n) = n!/5!.

The programs for A001725, the canonical program `A001725.P7787208859188895106` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001725 has offset 5).

The definition of A001725 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001725.P7787208859188895106

`(n+5)!/120`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001725

/-- `(n+5)!/120` -/
def P7787208859188895106.Spec : Prop :=
  ∀ n, P7787208859188895106.a n = (A001725 (n + 5) : ℚ)

end A001725

/-! ## A001725.P12650103513022263112

`n!*C(n+5, 5)`
-/

namespace A001725.P12650103513022263112
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n + 5) 5

end

end A001725.P12650103513022263112

namespace A001725

/-- `n!*C(n+5, 5)` -/
def P12650103513022263112.Spec : Prop :=
  ∀ n, (P12650103513022263112.a n : ℤ) = A001725 (n + 5)

end A001725

/-! ## A001725.P6697424886348955436

`∏[gcd(n+5, floor(acot(n)))]`
-/

namespace A001725.P6697424886348955436
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 5 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001725.P6697424886348955436

namespace A001725

/-- `∏[gcd(n+5, floor(acot(n)))]` -/
def P6697424886348955436.Spec : Prop :=
  ∀ n, (P6697424886348955436.a n : ℤ) = A001725 (n + 5)

end A001725

/-! ## A001725.P16580948478755886480

`∏[a(n-1)+1]` with `a(0)=1, a(1)=6`
-/

namespace A001725.P16580948478755886480
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001725.P16580948478755886480

namespace A001725

/-- `∏[a(n-1)+1]` -/
def P16580948478755886480.Spec : Prop :=
  ∀ n, (P16580948478755886480.a n : ℤ) = A001725 (n + 5)

end A001725

/-! ## A001725.P3503665014541122456

`a(n-1)*(n+5)` with `a(0)=1`
-/

namespace A001725.P3503665014541122456
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (n + 5)

end

end A001725.P3503665014541122456

namespace A001725

/-- `a(n-1)*(n+5)` -/
def P3503665014541122456.Spec : Prop :=
  ∀ n, (P3503665014541122456.a n : ℤ) = A001725 (n + 5)

end A001725

/-! ## A001725.P12130617210881652703

`∏[n-or(-5, (n+3)!)]`
-/

namespace A001725.P12130617210881652703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - Int.lor (-5) (Nat.factorial (n + 3) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001725.P12130617210881652703

namespace A001725

/-- `∏[n-or(-5, (n+3)!)]` -/
def P12130617210881652703.Spec : Prop :=
  ∀ n, P12130617210881652703.a n = A001725 (n + 5)

end A001725

/-! ## A001725.P5318250041442912852

`n!*∑[∑[∑[∑[n+1]]]]`
-/

namespace A001725.P5318250041442912852
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001725.P5318250041442912852

namespace A001725

/-- `n!*∑[∑[∑[∑[n+1]]]]` -/
def P5318250041442912852.Spec : Prop :=
  ∀ n, (P5318250041442912852.a n : ℤ) = A001725 (n + 5)

end A001725

/-! ## A001725.P7402801869047752257

`∏[gcd(6, (n+2)!)+n-1]`
-/

namespace A001725.P7402801869047752257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.gcd 6 (Nat.factorial (n + 2)) : ℤ) + ((n : ℤ) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001725.P7402801869047752257

namespace A001725

/-- `∏[gcd(6, (n+2)!)+n-1]` -/
def P7402801869047752257.Spec : Prop :=
  ∀ n, P7402801869047752257.a n = A001725 (n + 5)

end A001725

/-! ## A001725.P3488575782005163781

`a(n-1)/(n+5)^(-1)` with `a(0)=1`
-/

namespace A001725.P3488575782005163781
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / (n + 5 : ℚ) ^ (-1 : ℤ)

end

end A001725.P3488575782005163781

namespace A001725

/-- `a(n-1)/(n+5)^(-1)` -/
def P3488575782005163781.Spec : Prop :=
  ∀ n, P3488575782005163781.a n = (A001725 (n + 5) : ℚ)

end A001725

/-! ## A001725.P10772200619229880401

`∏[2*2%(n+2)+n+1]`
-/

namespace A001725.P10772200619229880401
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (2 % (n + 2)) + (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001725.P10772200619229880401

namespace A001725

/-- `∏[2*2%(n+2)+n+1]` -/
def P10772200619229880401.Spec : Prop :=
  ∀ n, (P10772200619229880401.a n : ℤ) = A001725 (n + 5)

end A001725

/-!
# A001726: Weight distribution of [ 64,22,16 ] 2nd-order Reed-Muller code of length 64.

The programs for A001726, there is no canonical definition to state claims against.
-/

/-! ## A001726.P15937477320828521094

`A109487(2*n)`
-/

namespace A001726.P15937477320828521094
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109487 (2 * n)

end

end A001726.P15937477320828521094

/-! ## A001726.P16911400423782938

`A109487(A005843(n))+char[18]`
-/

namespace A001726.P16911400423782938
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  18

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109487 (A005843 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A001726.P16911400423782938

/-! ## A001726.P15575096892035984176

`A109487(A005843(n))/A007318(∑[n])`
-/

namespace A001726.P15575096892035984176
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109487 (A005843 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)

end

end A001726.P15575096892035984176

/-! ## A001726.P13272176740338881996

`A109487(A005843(n))%A115441(n+2)`
-/

namespace A001726.P13272176740338881996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A109487 (A005843 n).toNat) (A115441 (n + 2))

end

end A001726.P13272176740338881996

/-! ## A001726.P12501156578841750880

`A109487(A005843(n))^A007318(C(2, n))`
-/

namespace A001726.P12501156578841750880
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A109487 (A005843 n).toNat : ℚ) ^ (A007318 (Nat.choose 2 n) : ℤ)

end

end A001726.P12501156578841750880

/-!
# A001727: Weight distribution of [64,42,8] 3rd-order Reed-Muller code of length 64.

The programs for A001727, there is no canonical definition to state claims against.
-/

/-! ## A001727.P16554949076822008546

`A110757(A110796(n+1))*A110844(n)`
-/

namespace A001727.P16554949076822008546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110757 (A110796 (n + 1)).toNat * A110844 n

end

end A001727.P16554949076822008546

/-! ## A001727.P6073979604020298339

`A061142(A030975(n+1))*A110844(n)`
-/

namespace A001727.P6073979604020298339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061142 (A030975 (n + 1)).toNat * A110844 n

end

end A001727.P6073979604020298339

/-!
# A001728: Expansion of cos x / cos 4x.

The programs for A001728, there is no canonical definition to state claims against.
-/

/-! ## A001728.P6680861771923122573

`A000813(2*n)`
-/

namespace A001728.P6680861771923122573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000813 (2 * n)

end

end A001728.P6680861771923122573

/-! ## A001728.P16113036244187149323

`A225109(2*n)`
-/

namespace A001728.P16113036244187149323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225109 (2 * n)

end

end A001728.P16113036244187149323

/-! ## A001728.P16957942815812640622

`abs(A156205(2*n))`
-/

namespace A001728.P16957942815812640622
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A156205 (2 * n)|

end

end A001728.P16957942815812640622

/-! ## A001728.P13098673722663617663

`record[A000813(n)^((n+1)%2)]`
-/

namespace A001728.P13098673722663617663
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000813 n ^ ((n + 1) % 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001728.P13098673722663617663

/-! ## A001728.P4205479826575430117

`or(1, A000813(A005843(n)))`
-/

namespace A001728.P4205479826575430117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A000813 (A005843 n).toNat)

end

end A001728.P4205479826575430117

/-!
# A001729: List of numbers whose digits contain no loops (version 1).

The programs for A001729, the canonical program `A001729.P5595440240656319040` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001729 has offset 1).

The definition of A001729 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 6738 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001729.P5595440240656319040

`eq[n, n-A064532(n)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A001729

/-- `eq[n, n-A064532(n)]` -/
def P5595440240656319040.Spec : Prop :=
  ∀ n, (P5595440240656319040.a n : ℤ) = A001729 (n + 1)

theorem P5595440240656319040.correct : P5595440240656319040.Spec := by
  intro n
  simp only [A001729, Nat.add_sub_cancel]

end A001729

/-! ## A001729.P4574608410422174384

`eq[A064532(n), A185709(n+1)]`
-/

namespace A001729.P4574608410422174384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185709 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001729.P4574608410422174384

namespace A001729

/-- `eq[A064532(n), A185709(n+1)]` -/
def P4574608410422174384.Spec : Prop :=
  ∀ n, (P4574608410422174384.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P8280329310690848258

`lt[A064532(n), 1/A263025(n+1)]`
-/

namespace A001729.P8280329310690848258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A263025 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A001729.P8280329310690848258

namespace A001729

/-- `lt[A064532(n), 1/A263025(n+1)]` -/
def P8280329310690848258.Spec : Prop :=
  ∀ n, (P8280329310690848258.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P2194958004531740825

`lt[A022086(A064532(n)*A263025(n+1)), 1]`
-/

namespace A001729.P2194958004531740825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022086 (A064532 n * A263025 (n + 1)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001729.P2194958004531740825

namespace A001729

/-- `lt[A022086(A064532(n)*A263025(n+1)), 1]` -/
def P2194958004531740825.Spec : Prop :=
  ∀ n, (P2194958004531740825.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P4806363233116760493

`∩[A039117(n+1), A214677(n+1)]`
-/

namespace A001729.P4806363233116760493
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001729.P4806363233116760493

namespace A001729

/-- `∩[A039117(n+1), A214677(n+1)]` -/
def P4806363233116760493.Spec : Prop :=
  ∀ n, (P4806363233116760493.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P6978396526012492023

`∩[A039151(n+1), A214677(n+1)]`
-/

namespace A001729.P6978396526012492023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039151 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001729.P6978396526012492023

namespace A001729

/-- `∩[A039151(n+1), A214677(n+1)]` -/
def P6978396526012492023.Spec : Prop :=
  ∀ n, (P6978396526012492023.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P12266823321498061010

`∩[A039152(n+1), A214677(n+1)]`
-/

namespace A001729.P12266823321498061010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039152 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001729.P12266823321498061010

namespace A001729

/-- `∩[A039152(n+1), A214677(n+1)]` -/
def P12266823321498061010.Spec : Prop :=
  ∀ n, (P12266823321498061010.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P211515196106505061

`∩[A052414(n+1), A214677(n+1)]`
-/

namespace A001729.P211515196106505061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052414 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001729.P211515196106505061

namespace A001729

/-- `∩[A052414(n+1), A214677(n+1)]` -/
def P211515196106505061.Spec : Prop :=
  ∀ n, (P211515196106505061.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P6584469038358499258

`A222249(A057436(n+1))`
-/

namespace A001729.P6584469038358499258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222249 (A057436 (n + 1)).toNat

end

end A001729.P6584469038358499258

namespace A001729

/-- `A222249(A057436(n+1))` -/
def P6584469038358499258.Spec : Prop :=
  ∀ n, P6584469038358499258.a n = A001729 (n + 1)

end A001729

/-! ## A001729.P10541244825206721357

`lt[A064532(A222231(n)), 1]`
-/

namespace A001729.P10541244825206721357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A222231 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001729.P10541244825206721357

namespace A001729

/-- `lt[A064532(A222231(n)), 1]` -/
def P10541244825206721357.Spec : Prop :=
  ∀ n, (P10541244825206721357.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P2598238326380940598

`lt[A064532(A222242(n)), 1]`
-/

namespace A001729.P2598238326380940598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 (A222242 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001729.P2598238326380940598

namespace A001729

/-- `lt[A064532(A222242(n)), 1]` -/
def P2598238326380940598.Spec : Prop :=
  ∀ n, (P2598238326380940598.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P15844610608611638468

`lt[A086066(A222216(n)), 64]`
-/

namespace A001729.P15844610608611638468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086066 (A222216 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001729.P15844610608611638468

namespace A001729

/-- `lt[A086066(A222216(n)), 64]` -/
def P15844610608611638468.Spec : Prop :=
  ∀ n, (P15844610608611638468.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P16300730627978506413

`eq[n, A222254(A222215(n))]`
-/

namespace A001729.P16300730627978506413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222215 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001729.P16300730627978506413

namespace A001729

/-- `eq[n, A222254(A222215(n))]` -/
def P16300730627978506413.Spec : Prop :=
  ∀ n, (P16300730627978506413.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P17887036226431984033

`eq[n, A222251(A222217(n))]`
-/

namespace A001729.P17887036226431984033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222217 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001729.P17887036226431984033

namespace A001729

/-- `eq[n, A222251(A222217(n))]` -/
def P17887036226431984033.Spec : Prop :=
  ∀ n, (P17887036226431984033.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P7793206574303133468

`eq[n, A222250(A222218(n))]`
-/

namespace A001729.P7793206574303133468
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222218 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001729.P7793206574303133468

namespace A001729

/-- `eq[n, A222250(A222218(n))]` -/
def P7793206574303133468.Spec : Prop :=
  ∀ n, (P7793206574303133468.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P12677586714620760738

`lt[A064532(n), n/A000040(n+1)]`
-/

namespace A001729.P12677586714620760738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064532 n

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / (A000040 (n + 1) : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n

end

end A001729.P12677586714620760738

namespace A001729

/-- `lt[A064532(n), n/A000040(n+1)]` -/
def P12677586714620760738.Spec : Prop :=
  ∀ n, (P12677586714620760738.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P11290787284989893483

`eq[1, A004155(A004155(n)*A064532(n))]`
-/

namespace A001729.P11290787284989893483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A004155 n * A064532 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001729.P11290787284989893483

namespace A001729

/-- `eq[1, A004155(A004155(n)*A064532(n))]` -/
def P11290787284989893483.Spec : Prop :=
  ∀ n, (P11290787284989893483.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P15908167465147423079

`eq[A002148(n), A002148(A064532(n)+n)]`
-/

namespace A001729.P15908167465147423079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002148 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002148 (A064532 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001729.P15908167465147423079

namespace A001729

/-- `eq[A002148(n), A002148(A064532(n)+n)]` -/
def P15908167465147423079.Spec : Prop :=
  ∀ n, (P15908167465147423079.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P10097166824492859377

`eq[A004155(n), A004155(A064532(n)+n)]`
-/

namespace A001729.P10097166824492859377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004155 (A064532 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001729.P10097166824492859377

namespace A001729

/-- `eq[A004155(n), A004155(A064532(n)+n)]` -/
def P10097166824492859377.Spec : Prop :=
  ∀ n, (P10097166824492859377.a n : ℤ) = A001729 (n + 1)

end A001729

/-! ## A001729.P12288373416413787324

`eq[A007953(n), A007953(A064532(n)+n)]`
-/

namespace A001729.P12288373416413787324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A064532 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001729.P12288373416413787324

namespace A001729

/-- `eq[A007953(n), A007953(A064532(n)+n)]` -/
def P12288373416413787324.Spec : Prop :=
  ∀ n, (P12288373416413787324.a n : ℤ) = A001729 (n + 1)

end A001729

/-!
# A001730: a(n) = n!/6!.

The programs for A001730, the canonical program `A001730.P733782834956971630` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001730 has offset 6).

The definition of A001730 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001730.P733782834956971630

`(n+6)!/720`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001730

/-- `(n+6)!/720` -/
def P733782834956971630.Spec : Prop :=
  ∀ n, P733782834956971630.a n = (A001730 (n + 6) : ℚ)

end A001730

/-! ## A001730.P9378018060914439794

`∏[n+6]/6`
-/

namespace A001730.P9378018060914439794
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 6

end

end A001730.P9378018060914439794

namespace A001730

/-- `∏[n+6]/6` -/
def P9378018060914439794.Spec : Prop :=
  ∀ n, P9378018060914439794.a n = (A001730 (n + 6) : ℚ)

end A001730

/-! ## A001730.P18322420278793742515

`n!*C(n+6, 6)`
-/

namespace A001730.P18322420278793742515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial n * Nat.choose (n + 6) 6

end

end A001730.P18322420278793742515

namespace A001730

/-- `n!*C(n+6, 6)` -/
def P18322420278793742515.Spec : Prop :=
  ∀ n, (P18322420278793742515.a n : ℤ) = A001730 (n + 6)

end A001730

/-! ## A001730.P636472116817786685

`∏[gcd(n+6, floor(acot(n)))]`
-/

namespace A001730.P636472116817786685
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 6 : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001730.P636472116817786685

namespace A001730

/-- `∏[gcd(n+6, floor(acot(n)))]` -/
def P636472116817786685.Spec : Prop :=
  ∀ n, (P636472116817786685.a n : ℤ) = A001730 (n + 6)

end A001730

/-! ## A001730.P17675145046628516837

`∏[a(n-1)+1]` with `a(0)=1, a(1)=7`
-/

namespace A001730.P17675145046628516837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 7] fun n f1 =>
  f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001730.P17675145046628516837

namespace A001730

/-- `∏[a(n-1)+1]` -/
def P17675145046628516837.Spec : Prop :=
  ∀ n, (P17675145046628516837.a n : ℤ) = A001730 (n + 6)

end A001730

/-! ## A001730.P6984428715931491405

`a(n-1)*(n+6)` with `a(0)=1`
-/

namespace A001730.P6984428715931491405
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) * (n + 6)

end

end A001730.P6984428715931491405

namespace A001730

/-- `a(n-1)*(n+6)` -/
def P6984428715931491405.Spec : Prop :=
  ∀ n, (P6984428715931491405.a n : ℤ) = A001730 (n + 6)

end A001730

/-! ## A001730.P13668255644183378233

`∏[gcd(3, (n+2)!)!+n]`
-/

namespace A001730.P13668255644183378233
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (Nat.gcd 3 (Nat.factorial (n + 2))) + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001730.P13668255644183378233

namespace A001730

/-- `∏[gcd(3, (n+2)!)!+n]` -/
def P13668255644183378233.Spec : Prop :=
  ∀ n, (P13668255644183378233.a n : ℤ) = A001730 (n + 6)

end A001730

/-! ## A001730.P4148466344676767607

`∏[(n+2-abs(1-n))!+n]`
-/

namespace A001730.P4148466344676767607
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial ((n + 2 : ℤ) - |1 - (n : ℤ)|).toNat + n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001730.P4148466344676767607

namespace A001730

/-- `∏[(n+2-abs(1-n))!+n]` -/
def P4148466344676767607.Spec : Prop :=
  ∀ n, (P4148466344676767607.a n : ℤ) = A001730 (n + 6)

end A001730

/-! ## A001730.P2830520264536746412

`∏[(n+5)*(Δ[3^n]+1)%3+1]`
-/

namespace A001730.P2830520264536746412
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 ^ n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 5 : ℤ) * Int.tmod ((f2 (n + 1) : ℤ) - (f2 n : ℤ) + 1) 3 + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001730.P2830520264536746412

namespace A001730

/-- `∏[(n+5)*(Δ[3^n]+1)%3+1]` -/
def P2830520264536746412.Spec : Prop :=
  ∀ n, P2830520264536746412.a n = A001730 (n + 6)

end A001730

/-! ## A001730.P6501460768127751330

`abs(A051339(∑[n]))`
-/

namespace A001730.P6501460768127751330
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A051339 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A001730.P6501460768127751330

namespace A001730

/-- `abs(A051339(∑[n]))` -/
def P6501460768127751330.Spec : Prop :=
  ∀ n, P6501460768127751330.a n = A001730 (n + 6)

end A001730

/-!
# A001731: a(n) is 9 written in base 10-n.

The programs for A001731, there is no canonical definition to state claims against.
-/

/-! ## A001731.P8273564438367788057

`A094327(A143473(n))`
-/

namespace A001731.P8273564438367788057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (A143473 n).toNat

end

end A001731.P8273564438367788057

/-! ## A001731.P5745939071663460121

`A094327(A055121(n+1))`
-/

namespace A001731.P5745939071663460121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (A055121 (n + 1)).toNat

end

end A001731.P5745939071663460121

/-! ## A001731.P4464906753302975135

`A094327(A061601(n)+1)`
-/

namespace A001731.P4464906753302975135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (A061601 n + 1).toNat

end

end A001731.P4464906753302975135

/-! ## A001731.P16259880354605803461

`A094327(A304622(n+1))`
-/

namespace A001731.P16259880354605803461
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (A304622 (n + 1)).toNat

end

end A001731.P16259880354605803461

/-! ## A001731.P15866822595790436335

`A094327(10-(A182324(n)-n))`
-/

namespace A001731.P15866822595790436335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094327 (10 - (A182324 n - (n : ℤ))).toNat

end

end A001731.P15866822595790436335

/-!
# A001732: 8 in base 10-n.

The programs for A001732, there is no canonical definition to state claims against.
-/

/-! ## A001732.P6068780168171370363

`A094326(A143473(n))`
-/

namespace A001732.P6068780168171370363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094326 (A143473 n).toNat

end

end A001732.P6068780168171370363

/-! ## A001732.P2936384146069689752

`A094326(A055121(n+1))`
-/

namespace A001732.P2936384146069689752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094326 (A055121 (n + 1)).toNat

end

end A001732.P2936384146069689752

/-! ## A001732.P12593411965952481581

`A094326(A061601(n)+1)`
-/

namespace A001732.P12593411965952481581
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094326 (A061601 n + 1).toNat

end

end A001732.P12593411965952481581

/-! ## A001732.P7393803582482565739

`A094326(A304622(n+1))`
-/

namespace A001732.P7393803582482565739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094326 (A304622 (n + 1)).toNat

end

end A001732.P7393803582482565739

/-!
# A001733: 7 in base 10-n.

The programs for A001733, there is no canonical definition to state claims against.
-/

/-! ## A001733.P4574545931026440269

`A035613(A143473(n))`
-/

namespace A001733.P4574545931026440269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035613 (A143473 n).toNat

end

end A001733.P4574545931026440269

/-! ## A001733.P12096067071287051405

`A035613(A055121(n+1))`
-/

namespace A001733.P12096067071287051405
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035613 (A055121 (n + 1)).toNat

end

end A001733.P12096067071287051405

/-! ## A001733.P10447355099569937397

`A035613(A061601(n)+1)`
-/

namespace A001733.P10447355099569937397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035613 (A061601 n + 1).toNat

end

end A001733.P10447355099569937397

/-! ## A001733.P632686757747351687

`A035613(A304622(n+1))`
-/

namespace A001733.P632686757747351687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035613 (A304622 (n + 1)).toNat

end

end A001733.P632686757747351687

/-! ## A001733.P853178352950169516

`A112798(A363001(n+4))+A001734(n)`
-/

namespace A001733.P853178352950169516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112798 (A363001 (n + 4)).toNat + A001734 n

end

end A001733.P853178352950169516

/-!
# A001734: 6 in base 10-n.

The programs for A001734, there is no canonical definition to state claims against.
-/

/-! ## A001734.P6134856588537792270

`A094325(A143473(n))`
-/

namespace A001734.P6134856588537792270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094325 (A143473 n).toNat

end

end A001734.P6134856588537792270

/-! ## A001734.P4158110931552121172

`A094325(A055121(n+1))`
-/

namespace A001734.P4158110931552121172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094325 (A055121 (n + 1)).toNat

end

end A001734.P4158110931552121172

/-! ## A001734.P1579358830213431390

`A094325(A061601(n)+1)`
-/

namespace A001734.P1579358830213431390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094325 (A061601 n + 1).toNat

end

end A001734.P1579358830213431390

/-! ## A001734.P10491670950455444888

`A094325(A304622(n+1))`
-/

namespace A001734.P10491670950455444888
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094325 (A304622 (n + 1)).toNat

end

end A001734.P10491670950455444888

/-! ## A001734.P3922414013531780594

`A094325(A008716(n)-2*n)`
-/

namespace A001734.P3922414013531780594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094325 (A008716 n - (2 * n : ℤ)).toNat

end

end A001734.P3922414013531780594

/-!
# A001735: 5 in base 10-n.

The programs for A001735, there is no canonical definition to state claims against.
-/

/-! ## A001735.P8832805712825424863

`A094324(A143473(n))`
-/

namespace A001735.P8832805712825424863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094324 (A143473 n).toNat

end

end A001735.P8832805712825424863

/-! ## A001735.P9656685456814918298

`A094324(A055121(n+1))`
-/

namespace A001735.P9656685456814918298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094324 (A055121 (n + 1)).toNat

end

end A001735.P9656685456814918298

/-! ## A001735.P6214265625487478816

`A094324(A061601(n)+1)`
-/

namespace A001735.P6214265625487478816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094324 (A061601 n + 1).toNat

end

end A001735.P6214265625487478816

/-! ## A001735.P2247626464126457455

`A009194(A032555(n+1))+A001736(n)`
-/

namespace A001735.P2247626464126457455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009194 (A032555 (n + 1)).toNat + A001736 n

end

end A001735.P2247626464126457455

/-!
# A001736: 4 in base 10-n.

The programs for A001736, there is no canonical definition to state claims against.
-/

/-! ## A001736.P2930394746755957596

`A058084(A001735(n))-1`
-/

namespace A001736.P2930394746755957596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058084 (A001735 n).toNat - 1

end

end A001736.P2930394746755957596

/-! ## A001736.P4455503440739091752

`A095639(n+1)-A095631(n)`
-/

namespace A001736.P4455503440739091752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095639 (n + 1) - A095631 n

end

end A001736.P4455503440739091752

/-! ## A001736.P11111462205902188133

`A095639(n+1)+1-A095633(n+1)`
-/

namespace A001736.P11111462205902188133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095639 (n + 1) + (1 - A095633 (n + 1))

end

end A001736.P11111462205902188133

/-! ## A001736.P3873540751211889061

`A029940(A001735(n))%A001733(n)`
-/

namespace A001736.P3873540751211889061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A029940 (A001735 n).toNat) (A001733 n)

end

end A001736.P3873540751211889061

/-! ## A001736.P11514667148110396012

`A095639(A008816(n))%A095631(n)`
-/

namespace A001736.P11514667148110396012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A095639 (A008816 n).toNat) (A095631 n)

end

end A001736.P11514667148110396012

/-!
# A001737: Squares written in base 2.

The programs for A001737, the canonical program `A001737.P2090765106335531527` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001737 has offset 0).

The definition of A001737 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007088, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001737.P2090765106335531527

`A007088(A000290(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001737

/-- `A007088(A000290(n))` -/
def P2090765106335531527.Spec : Prop :=
  ∀ n, P2090765106335531527.a n = A001737 n

theorem P2090765106335531527.correct : P2090765106335531527.Spec := by
  intro n
  simp only [A001737]

end A001737

/-! ## A001737.P5954822284429824893

`A007088(n²)`
-/

namespace A001737.P5954822284429824893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (n ^ 2)

end

end A001737.P5954822284429824893

namespace A001737

/-- `A007088(n²)` -/
def P5954822284429824893.Spec : Prop :=
  ∀ n, P5954822284429824893.a n = A001737 n

end A001737

/-! ## A001737.P7577007661014449796

`or(char[9], A007088(n^2))`
-/

namespace A001737.P7577007661014449796
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007088 (n ^ 2))

end

end A001737.P7577007661014449796

namespace A001737

/-- `or(char[9], A007088(n^2))` -/
def P7577007661014449796.Spec : Prop :=
  ∀ n, P7577007661014449796.a n = A001737 n

end A001737

/-! ## A001737.P17536479831351428213

`and(-3, A007088(n*n))`
-/

namespace A001737.P17536479831351428213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A007088 (n * n))

end

end A001737.P17536479831351428213

namespace A001737

/-- `and(-3, A007088(n*n))` -/
def P17536479831351428213.Spec : Prop :=
  ∀ n, P17536479831351428213.a n = A001737 n

end A001737

/-! ## A001737.P8352374235734118643

`A007088(n^ceil(atan(n)))-floor(acot(n))`
-/

namespace A001737.P8352374235734118643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A001737.P8352374235734118643

namespace A001737

/-- `A007088(n^ceil(atan(n)))-floor(acot(n))` -/
def P8352374235734118643.Spec : Prop :=
  ∀ n, P8352374235734118643.a n = A001737 n

end A001737

/-! ## A001737.P14392059943914124253

`record[A007088(round(lcm(n+1, 1-n)/4))]`
-/

namespace A001737.P14392059943914124253
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001737.P14392059943914124253

namespace A001737

/-- `record[A007088(round(lcm(n+1, 1-n)/4))]` -/
def P14392059943914124253.Spec : Prop :=
  ∀ n, P14392059943914124253.a n = A001737 n

end A001737

/-! ## A001737.P14624842810885222082

`record[A007088(A123596(n))]`
-/

namespace A001737.P14624842810885222082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001737.P14624842810885222082

namespace A001737

/-- `record[A007088(A123596(n))]` -/
def P14624842810885222082.Spec : Prop :=
  ∀ n, P14624842810885222082.a n = A001737 n

end A001737

/-! ## A001737.P5824456036541511962

`A007088(A059100(n))-10`
-/

namespace A001737.P5824456036541511962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A059100 n).toNat - 10

end

end A001737.P5824456036541511962

namespace A001737

/-- `A007088(A059100(n))-10` -/
def P5824456036541511962.Spec : Prop :=
  ∀ n, P5824456036541511962.a n = A001737 n

end A001737

/-! ## A001737.P17681402401425557603

`record[A007088(abs(A131805(n)))]`
-/

namespace A001737.P17681402401425557603
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 |A131805 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001737.P17681402401425557603

namespace A001737

/-- `record[A007088(abs(A131805(n)))]` -/
def P17681402401425557603.Spec : Prop :=
  ∀ n, P17681402401425557603.a n = A001737 n

end A001737

/-! ## A001737.P8439274719934438480

`record[A007088(A022290(n)^2)]`
-/

namespace A001737.P8439274719934438480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A022290 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001737.P8439274719934438480

namespace A001737

/-- `record[A007088(A022290(n)^2)]` -/
def P8439274719934438480.Spec : Prop :=
  ∀ n, P8439274719934438480.a n = A001737 n

end A001737

/-! ## A001737.P10091088149270653489

`record[A007088(A025480(n)^2)]`
-/

namespace A001737.P10091088149270653489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A025480 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001737.P10091088149270653489

namespace A001737

/-- `record[A007088(A025480(n)^2)]` -/
def P10091088149270653489.Spec : Prop :=
  ∀ n, P10091088149270653489.a n = A001737 n

end A001737

/-! ## A001737.P7281942118324999863

`record[A007088(A081594(n)^2)]`
-/

namespace A001737.P7281942118324999863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A081594 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001737.P7281942118324999863

namespace A001737

/-- `record[A007088(A081594(n)^2)]` -/
def P7281942118324999863.Spec : Prop :=
  ∀ n, P7281942118324999863.a n = A001737 n

end A001737

/-! ## A001737.P12585075285366731790

`record[A007088(A081596(n)^2)]`
-/

namespace A001737.P12585075285366731790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A081596 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001737.P12585075285366731790

namespace A001737

/-- `record[A007088(A081596(n)^2)]` -/
def P12585075285366731790.Spec : Prop :=
  ∀ n, P12585075285366731790.a n = A001737 n

end A001737

/-! ## A001737.P12107501213021999942

`record[A007088(A087734(n)^2)]`
-/

namespace A001737.P12107501213021999942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A087734 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001737.P12107501213021999942

namespace A001737

/-- `record[A007088(A087734(n)^2)]` -/
def P12107501213021999942.Spec : Prop :=
  ∀ n, P12107501213021999942.a n = A001737 n

end A001737

/-! ## A001737.P9069811983425677894

`record[A007088(A092942(n)^2)]`
-/

namespace A001737.P9069811983425677894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A092942 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001737.P9069811983425677894

namespace A001737

/-- `record[A007088(A092942(n)^2)]` -/
def P9069811983425677894.Spec : Prop :=
  ∀ n, P9069811983425677894.a n = A001737 n

end A001737

/-! ## A001737.P7154893795253831351

`A007088(n^2)^A000041(C(2, n))`
-/

namespace A001737.P7154893795253831351
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007088 (n ^ 2) : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A001737.P7154893795253831351

namespace A001737

/-- `A007088(n^2)^A000041(C(2, n))` -/
def P7154893795253831351.Spec : Prop :=
  ∀ n, P7154893795253831351.a n = (A001737 n : ℚ)

end A001737

/-! ## A001737.P11786508643232004537

`A007318(C(2, n+2))*A007088(n^2)`
-/

namespace A001737.P11786508643232004537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 (n + 2)) * A007088 (n ^ 2)

end

end A001737.P11786508643232004537

namespace A001737

/-- `A007318(C(2, n+2))*A007088(n^2)` -/
def P11786508643232004537.Spec : Prop :=
  ∀ n, P11786508643232004537.a n = A001737 n

end A001737

/-! ## A001737.P17979778806368661876

`A007318(val(n+1, 5))*A007088(n^2)`
-/

namespace A001737.P17979778806368661876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (SequenceMachineLib.valuation (n + 1) 5) * A007088 (n ^ 2)

end

end A001737.P17979778806368661876

namespace A001737

/-- `A007318(val(n+1, 5))*A007088(n^2)` -/
def P17979778806368661876.Spec : Prop :=
  ∀ n, P17979778806368661876.a n = A001737 n

end A001737

/-! ## A001737.P9274632551312567629

`A007318(A020639(2*n+2))*A007088(n*n)`
-/

namespace A001737.P9274632551312567629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A020639 (2 * n + 2)).toNat * A007088 (n * n)

end

end A001737.P9274632551312567629

namespace A001737

/-- `A007318(A020639(2*n+2))*A007088(n*n)` -/
def P9274632551312567629.Spec : Prop :=
  ∀ n, P9274632551312567629.a n = A001737 n

end A001737

/-! ## A001737.P9087317888207740137

`A303596(A372060(n²))`
-/

namespace A001737.P9087317888207740137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A303596 (A372060 (n ^ 2)).toNat

end

end A001737.P9087317888207740137

namespace A001737

/-- `A303596(A372060(n²))` -/
def P9087317888207740137.Spec : Prop :=
  ∀ n, P9087317888207740137.a n = A001737 n

end A001737

/-!
# A001738: a(n) = n^2 written in base 3.

The programs for A001738, the canonical program `A001738.P9569707976772813256` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001738 has offset 0).

The definition of A001738 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007089, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001738.P9569707976772813256

`A007089(A000290(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001738

/-- `A007089(A000290(n))` -/
def P9569707976772813256.Spec : Prop :=
  ∀ n, P9569707976772813256.a n = A001738 n

theorem P9569707976772813256.correct : P9569707976772813256.Spec := by
  intro n
  simp only [A001738]

end A001738

/-! ## A001738.P15060406168567094410

`A007089(n²)`
-/

namespace A001738.P15060406168567094410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (n ^ 2)

end

end A001738.P15060406168567094410

namespace A001738

/-- `A007089(n²)` -/
def P15060406168567094410.Spec : Prop :=
  ∀ n, P15060406168567094410.a n = A001738 n

end A001738

/-! ## A001738.P318346066447378689

`record[A007089(round(lcm(n+1, 1-n)/4))]`
-/

namespace A001738.P318346066447378689
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (SequenceMachineLib.roundAway ((Int.lcm (n + 1 : ℤ) (1 - (n : ℤ)) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001738.P318346066447378689

namespace A001738

/-- `record[A007089(round(lcm(n+1, 1-n)/4))]` -/
def P318346066447378689.Spec : Prop :=
  ∀ n, P318346066447378689.a n = A001738 n

end A001738

/-! ## A001738.P7215812689463276340

`A007089(n^ceil(atan(n)))%((8*n+1)^4)`
-/

namespace A001738.P7215812689463276340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007089 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat) ((8 * n + 1) ^ 4 : ℤ)

end

end A001738.P7215812689463276340

namespace A001738

/-- `A007089(n^ceil(atan(n)))%((8*n+1)^4)` -/
def P7215812689463276340.Spec : Prop :=
  ∀ n, P7215812689463276340.a n = A001738 n

end A001738

/-! ## A001738.P17663583185345814983

`record[A007089(A123596(n))]`
-/

namespace A001738.P17663583185345814983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001738.P17663583185345814983

namespace A001738

/-- `record[A007089(A123596(n))]` -/
def P17663583185345814983.Spec : Prop :=
  ∀ n, P17663583185345814983.a n = A001738 n

end A001738

/-! ## A001738.P12518752620533597994

`record[A007089(A143844(n))]`
-/

namespace A001738.P12518752620533597994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A143844 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001738.P12518752620533597994

namespace A001738

/-- `record[A007089(A143844(n))]` -/
def P12518752620533597994.Spec : Prop :=
  ∀ n, P12518752620533597994.a n = A001738 n

end A001738

/-! ## A001738.P257895449710126013

`record[A007089(A165487(n))]`
-/

namespace A001738.P257895449710126013
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A165487 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001738.P257895449710126013

namespace A001738

/-- `record[A007089(A165487(n))]` -/
def P257895449710126013.Spec : Prop :=
  ∀ n, P257895449710126013.a n = A001738 n

end A001738

/-! ## A001738.P10630457644223398422

`record[A007089(A219031(n))]`
-/

namespace A001738.P10630457644223398422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A219031 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001738.P10630457644223398422

namespace A001738

/-- `record[A007089(A219031(n))]` -/
def P10630457644223398422.Spec : Prop :=
  ∀ n, P10630457644223398422.a n = A001738 n

end A001738

/-! ## A001738.P8659578969205877984

`record[A007089(abs(A131805(n)))]`
-/

namespace A001738.P8659578969205877984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 |A131805 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001738.P8659578969205877984

namespace A001738

/-- `record[A007089(abs(A131805(n)))]` -/
def P8659578969205877984.Spec : Prop :=
  ∀ n, P8659578969205877984.a n = A001738 n

end A001738

/-! ## A001738.P4512250317389924441

`record[A007089(A025480(n)^2)]`
-/

namespace A001738.P4512250317389924441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A025480 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001738.P4512250317389924441

namespace A001738

/-- `record[A007089(A025480(n)^2)]` -/
def P4512250317389924441.Spec : Prop :=
  ∀ n, P4512250317389924441.a n = A001738 n

end A001738

/-! ## A001738.P51204463654009444

`record[A007089(A078898(n)^2)]`
-/

namespace A001738.P51204463654009444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A078898 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001738.P51204463654009444

namespace A001738

/-- `record[A007089(A078898(n)^2)]` -/
def P51204463654009444.Spec : Prop :=
  ∀ n, P51204463654009444.a n = A001738 n

end A001738

/-! ## A001738.P2819721881730079678

`A007089(n^2)^A000041(C(2, n))`
-/

namespace A001738.P2819721881730079678
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007089 (n ^ 2) : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A001738.P2819721881730079678

namespace A001738

/-- `A007089(n^2)^A000041(C(2, n))` -/
def P2819721881730079678.Spec : Prop :=
  ∀ n, P2819721881730079678.a n = (A001738 n : ℚ)

end A001738

/-! ## A001738.P11742271131097399561

`record[A007089(A008794(A003815(n)))]`
-/

namespace A001738.P11742271131097399561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A008794 (A003815 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001738.P11742271131097399561

namespace A001738

/-- `record[A007089(A008794(A003815(n)))]` -/
def P11742271131097399561.Spec : Prop :=
  ∀ n, P11742271131097399561.a n = A001738 n

end A001738

/-! ## A001738.P13745979788449751445

`record[A007089(A008794(A006369(n)))]`
-/

namespace A001738.P13745979788449751445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A008794 (A006369 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001738.P13745979788449751445

namespace A001738

/-- `record[A007089(A008794(A006369(n)))]` -/
def P13745979788449751445.Spec : Prop :=
  ∀ n, P13745979788449751445.a n = A001738 n

end A001738

/-! ## A001738.P17322416713377093961

`record[A007089(A002620(A014681(n)))]`
-/

namespace A001738.P17322416713377093961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007089 (A002620 (A014681 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001738.P17322416713377093961

namespace A001738

/-- `record[A007089(A002620(A014681(n)))]` -/
def P17322416713377093961.Spec : Prop :=
  ∀ n, P17322416713377093961.a n = A001738 n

end A001738

/-! ## A001738.P18383302035159941413

`A343810(n²)/4`
-/

namespace A001738.P18383302035159941413
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A343810 (n ^ 2) : ℚ) / 4

end

end A001738.P18383302035159941413

namespace A001738

/-- `A343810(n²)/4` -/
def P18383302035159941413.Spec : Prop :=
  ∀ n, P18383302035159941413.a n = (A001738 n : ℚ)

end A001738

/-!
# A001739: Squares written in base 4.

The programs for A001739, the canonical program `A001739.P9226811658137719673` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001739 has offset 0).

The definition of A001739 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007090, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001739.P9226811658137719673

`A007090(A000290(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001739

/-- `A007090(A000290(n))` -/
def P9226811658137719673.Spec : Prop :=
  ∀ n, P9226811658137719673.a n = A001739 n

theorem P9226811658137719673.correct : P9226811658137719673.Spec := by
  intro n
  simp only [A001739]

end A001739

/-! ## A001739.P14178841826019590531

`A007090(n²)`
-/

namespace A001739.P14178841826019590531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (n ^ 2)

end

end A001739.P14178841826019590531

namespace A001739

/-- `A007090(n²)` -/
def P14178841826019590531.Spec : Prop :=
  ∀ n, P14178841826019590531.a n = A001739 n

end A001739

/-! ## A001739.P2672342891714902560

`record[A007090(round(lcm(n, 2-n)/4))]`
-/

namespace A001739.P2672342891714902560
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway ((Int.lcm (n : ℤ) (2 - (n : ℤ)) : ℚ) / 4)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001739.P2672342891714902560

namespace A001739

/-- `record[A007090(round(lcm(n, 2-n)/4))]` -/
def P2672342891714902560.Spec : Prop :=
  ∀ n, P2672342891714902560.a n = A001739 n

end A001739

/-! ## A001739.P11607410745385215911

`A007090(n^ceil(atan(n)))-floor(acot(n))`
-/

namespace A001739.P11607410745385215911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (SequenceMachineLib.roundAway ((n : ℚ) ^ (⌈Real.arctan (n : ℝ)⌉ : ℤ))).toNat - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A001739.P11607410745385215911

namespace A001739

/-- `A007090(n^ceil(atan(n)))-floor(acot(n))` -/
def P11607410745385215911.Spec : Prop :=
  ∀ n, P11607410745385215911.a n = A001739 n

end A001739

/-! ## A001739.P12078160020687825670

`A007090(n^(2/ϕ)^ϕ)%C(n+5, 5)`
-/

namespace A001739.P12078160020687825670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007090 (SequenceMachineLib.roundAway (((n : ℝ) ^ (2 / Real.goldenRatio)) ^ Real.goldenRatio)).toNat) (Nat.choose (n + 5) 5 : ℤ)

end

end A001739.P12078160020687825670

namespace A001739

/-- `A007090(n^(2/ϕ)^ϕ)%C(n+5, 5)` -/
def P12078160020687825670.Spec : Prop :=
  ∀ n, P12078160020687825670.a n = A001739 n

end A001739

/-! ## A001739.P242320615521320800

`record[A007090(floor(n/(xor(n, n+1)+1))^2)]`
-/

namespace A001739.P242320615521320800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋ ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001739.P242320615521320800

namespace A001739

/-- `record[A007090(floor(n/(xor(n, n+1)+1))^2)]` -/
def P242320615521320800.Spec : Prop :=
  ∀ n, P242320615521320800.a n = A001739 n

end A001739

/-! ## A001739.P1267492400617802318

`record[A007090(A123596(n))]`
-/

namespace A001739.P1267492400617802318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001739.P1267492400617802318

namespace A001739

/-- `record[A007090(A123596(n))]` -/
def P1267492400617802318.Spec : Prop :=
  ∀ n, P1267492400617802318.a n = A001739 n

end A001739

/-! ## A001739.P15756758773745868363

`record[A007090(A165487(n))]`
-/

namespace A001739.P15756758773745868363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A165487 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001739.P15756758773745868363

namespace A001739

/-- `record[A007090(A165487(n))]` -/
def P15756758773745868363.Spec : Prop :=
  ∀ n, P15756758773745868363.a n = A001739 n

end A001739

/-! ## A001739.P13144280544926728576

`record[A007090(A219031(n))]`
-/

namespace A001739.P13144280544926728576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A219031 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001739.P13144280544926728576

namespace A001739

/-- `record[A007090(A219031(n))]` -/
def P13144280544926728576.Spec : Prop :=
  ∀ n, P13144280544926728576.a n = A001739 n

end A001739

/-! ## A001739.P11055116230956147753

`record[A007090(abs(A131805(n)))]`
-/

namespace A001739.P11055116230956147753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 |A131805 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001739.P11055116230956147753

namespace A001739

/-- `record[A007090(abs(A131805(n)))]` -/
def P11055116230956147753.Spec : Prop :=
  ∀ n, P11055116230956147753.a n = A001739 n

end A001739

/-! ## A001739.P2906130976511145563

`record[A007090(A289506(n+1))]`
-/

namespace A001739.P2906130976511145563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A289506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001739.P2906130976511145563

namespace A001739

/-- `record[A007090(A289506(n+1))]` -/
def P2906130976511145563.Spec : Prop :=
  ∀ n, P2906130976511145563.a n = A001739 n

end A001739

/-! ## A001739.P7927168438853762774

`record[A007090(A025480(n)^2)]`
-/

namespace A001739.P7927168438853762774
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A025480 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001739.P7927168438853762774

namespace A001739

/-- `record[A007090(A025480(n)^2)]` -/
def P7927168438853762774.Spec : Prop :=
  ∀ n, P7927168438853762774.a n = A001739 n

end A001739

/-! ## A001739.P8034871239605060584

`record[A007090(A078898(n)^2)]`
-/

namespace A001739.P8034871239605060584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A078898 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001739.P8034871239605060584

namespace A001739

/-- `record[A007090(A078898(n)^2)]` -/
def P8034871239605060584.Spec : Prop :=
  ∀ n, P8034871239605060584.a n = A001739 n

end A001739

/-! ## A001739.P15810476291295159267

`record[A007090(A097141(n)^2)]`
-/

namespace A001739.P15810476291295159267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A097141 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001739.P15810476291295159267

namespace A001739

/-- `record[A007090(A097141(n)^2)]` -/
def P15810476291295159267.Spec : Prop :=
  ∀ n, P15810476291295159267.a n = A001739 n

end A001739

/-! ## A001739.P9264954525770812166

`record[A007090(A166514(n)^2)]`
-/

namespace A001739.P9264954525770812166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007090 (A166514 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001739.P9264954525770812166

namespace A001739

/-- `record[A007090(A166514(n)^2)]` -/
def P9264954525770812166.Spec : Prop :=
  ∀ n, P9264954525770812166.a n = A001739 n

end A001739

/-! ## A001739.P12086293785837479239

`A007090(n^2)^A000041(C(2, n))`
-/

namespace A001739.P12086293785837479239
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007090 (n ^ 2) : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A001739.P12086293785837479239

namespace A001739

/-- `A007090(n^2)^A000041(C(2, n))` -/
def P12086293785837479239.Spec : Prop :=
  ∀ n, P12086293785837479239.a n = (A001739 n : ℚ)

end A001739

/-! ## A001739.P3570583492295634652

`A007090(∑[A004273(n)])%((n+2)^4)`
-/

namespace A001739.P3570583492295634652
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A007090 (∑ j ∈ Finset.range (n + 1), f1 j).toNat) ((n + 2) ^ 4 : ℤ)

end

end A001739.P3570583492295634652

namespace A001739

/-- `A007090(∑[A004273(n)])%((n+2)^4)` -/
def P3570583492295634652.Spec : Prop :=
  ∀ n, P3570583492295634652.a n = A001739 n

end A001739

/-!
# A001740: Squares written in base 5.

The programs for A001740, the canonical program `A001740.P16160893690820092194` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001740 has offset 0).

The definition of A001740 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A007091, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001740.P16160893690820092194

`A007091(A000290(n))`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001740

/-- `A007091(A000290(n))` -/
def P16160893690820092194.Spec : Prop :=
  ∀ n, P16160893690820092194.a n = A001740 n

theorem P16160893690820092194.correct : P16160893690820092194.Spec := by
  intro n
  simp only [A001740]

end A001740

/-! ## A001740.P9200442292308602880

`A007091(n²)`
-/

namespace A001740.P9200442292308602880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (n ^ 2)

end

end A001740.P9200442292308602880

namespace A001740

/-- `A007091(n²)` -/
def P9200442292308602880.Spec : Prop :=
  ∀ n, P9200442292308602880.a n = A001740 n

end A001740

/-! ## A001740.P5495623238626085968

`or(char[1], A007091(n*n))`
-/

namespace A001740.P5495623238626085968
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ) (A007091 (n * n))

end

end A001740.P5495623238626085968

namespace A001740

/-- `or(char[1], A007091(n*n))` -/
def P5495623238626085968.Spec : Prop :=
  ∀ n, P5495623238626085968.a n = A001740 n

end A001740

/-! ## A001740.P7190752119484235737

`xor(1, xor(1, A007091(n^2)))`
-/

namespace A001740.P7190752119484235737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (Int.xor 1 (A007091 (n ^ 2)))

end

end A001740.P7190752119484235737

namespace A001740

/-- `xor(1, xor(1, A007091(n^2)))` -/
def P7190752119484235737.Spec : Prop :=
  ∀ n, P7190752119484235737.a n = A001740 n

end A001740

/-! ## A001740.P10622421281327429419

`record[A007091(A123596(n))]`
-/

namespace A001740.P10622421281327429419
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001740.P10622421281327429419

namespace A001740

/-- `record[A007091(A123596(n))]` -/
def P10622421281327429419.Spec : Prop :=
  ∀ n, P10622421281327429419.a n = A001740 n

end A001740

/-! ## A001740.P3422104809754373907

`record[A007091(A165487(n))]`
-/

namespace A001740.P3422104809754373907
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A165487 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001740.P3422104809754373907

namespace A001740

/-- `record[A007091(A165487(n))]` -/
def P3422104809754373907.Spec : Prop :=
  ∀ n, P3422104809754373907.a n = A001740 n

end A001740

/-! ## A001740.P10720419525371948156

`record[A007091(A219031(n))]`
-/

namespace A001740.P10720419525371948156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A219031 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001740.P10720419525371948156

namespace A001740

/-- `record[A007091(A219031(n))]` -/
def P10720419525371948156.Spec : Prop :=
  ∀ n, P10720419525371948156.a n = A001740 n

end A001740

/-! ## A001740.P10738555948022795487

`record[A007091(abs(A131805(n)))]`
-/

namespace A001740.P10738555948022795487
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 |A131805 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001740.P10738555948022795487

namespace A001740

/-- `record[A007091(abs(A131805(n)))]` -/
def P10738555948022795487.Spec : Prop :=
  ∀ n, P10738555948022795487.a n = A001740 n

end A001740

/-! ## A001740.P6862005369224576973

`record[A007091(A289506(n+1))]`
-/

namespace A001740.P6862005369224576973
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (A289506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001740.P6862005369224576973

namespace A001740

/-- `record[A007091(A289506(n+1))]` -/
def P6862005369224576973.Spec : Prop :=
  ∀ n, P6862005369224576973.a n = A001740 n

end A001740

/-! ## A001740.P13510896034675929204

`A007091(n*n)*A178334(n)`
-/

namespace A001740.P13510896034675929204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (n * n) * A178334 n

end

end A001740.P13510896034675929204

namespace A001740

/-- `A007091(n*n)*A178334(n)` -/
def P13510896034675929204.Spec : Prop :=
  ∀ n, P13510896034675929204.a n = A001740 n

end A001740

/-! ## A001740.P16983301467908737380

`A007318(C(2, n))*A007091(n^2)`
-/

namespace A001740.P16983301467908737380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007091 (n ^ 2)

end

end A001740.P16983301467908737380

namespace A001740

/-- `A007318(C(2, n))*A007091(n^2)` -/
def P16983301467908737380.Spec : Prop :=
  ∀ n, P16983301467908737380.a n = A001740 n

end A001740

/-! ## A001740.P14773961767955527892

`A007091(n^2)^A000041(C(2, n))`
-/

namespace A001740.P14773961767955527892
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007091 (n ^ 2) : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A001740.P14773961767955527892

namespace A001740

/-- `A007091(n^2)^A000041(C(2, n))` -/
def P14773961767955527892.Spec : Prop :=
  ∀ n, P14773961767955527892.a n = (A001740 n : ℚ)

end A001740

/-! ## A001740.P15565201750359415915

`A007091(n^2)+A008683(8*n+4)`
-/

namespace A001740.P15565201750359415915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (n ^ 2) + A008683 (8 * n + 4)

end

end A001740.P15565201750359415915

namespace A001740

/-- `A007091(n^2)+A008683(8*n+4)` -/
def P15565201750359415915.Spec : Prop :=
  ∀ n, P15565201750359415915.a n = A001740 n

end A001740

/-! ## A001740.P18039435470943064317

`A014963(8*n+4)*A007091(n^2)`
-/

namespace A001740.P18039435470943064317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (8 * n + 4) * A007091 (n ^ 2)

end

end A001740.P18039435470943064317

namespace A001740

/-- `A014963(8*n+4)*A007091(n^2)` -/
def P18039435470943064317.Spec : Prop :=
  ∀ n, P18039435470943064317.a n = A001740 n

end A001740

/-! ## A001740.P8898306148791853971

`A000108(C(2, n+2))*A007091(n^2)`
-/

namespace A001740.P8898306148791853971
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (Nat.choose 2 (n + 2)) * A007091 (n ^ 2)

end

end A001740.P8898306148791853971

namespace A001740

/-- `A000108(C(2, n+2))*A007091(n^2)` -/
def P8898306148791853971.Spec : Prop :=
  ∀ n, P8898306148791853971.a n = A001740 n

end A001740

/-! ## A001740.P10566185159255725576

`A000005(gcd(n, n+1))*A007091(n^2)`
-/

namespace A001740.P10566185159255725576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Nat.gcd n (n + 1)) * A007091 (n ^ 2)

end

end A001740.P10566185159255725576

namespace A001740

/-- `A000005(gcd(n, n+1))*A007091(n^2)` -/
def P10566185159255725576.Spec : Prop :=
  ∀ n, P10566185159255725576.a n = A001740 n

end A001740

/-! ## A001740.P5031962559410056286

`and(1, A000010(n+2))!*A007091(n*n)`
-/

namespace A001740.P5031962559410056286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (Int.land 1 (A000010 (n + 2))).toNat : ℤ) * A007091 (n * n)

end

end A001740.P5031962559410056286

namespace A001740

/-- `and(1, A000010(n+2))!*A007091(n*n)` -/
def P5031962559410056286.Spec : Prop :=
  ∀ n, P5031962559410056286.a n = A001740 n

end A001740

/-! ## A001740.P3395273938482631069

`A007318(A014963(∑[n+1]))*A007091(n*n)`
-/

namespace A001740.P3395273938482631069
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A014963 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat * A007091 (n * n)

end

end A001740.P3395273938482631069

namespace A001740

/-- `A007318(A014963(∑[n+1]))*A007091(n*n)` -/
def P3395273938482631069.Spec : Prop :=
  ∀ n, P3395273938482631069.a n = A001740 n

end A001740

/-! ## A001740.P17059441895473515050

`A007091(n^2)/A000045(A020639(2*(n+1)))`
-/

namespace A001740.P17059441895473515050
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007091 (n ^ 2) : ℚ) / (A000045 (A020639 (2 * (n + 1))).toNat : ℚ)

end

end A001740.P17059441895473515050

namespace A001740

/-- `A007091(n^2)/A000045(A020639(2*(n+1)))` -/
def P17059441895473515050.Spec : Prop :=
  ∀ n, P17059441895473515050.a n = (A001740 n : ℚ)

end A001740

/-! ## A001740.P671907017052665530

`A007091(n^2)^A001222(A000032(C(2, n+2)))!`
-/

namespace A001740.P671907017052665530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007091 (n ^ 2) ^ Nat.factorial (A001222 (A000032 (Nat.choose 2 (n + 2))).toNat).toNat

end

end A001740.P671907017052665530

namespace A001740

/-- `A007091(n^2)^A001222(A000032(C(2, n+2)))!` -/
def P671907017052665530.Spec : Prop :=
  ∀ n, P671907017052665530.a n = A001740 n

end A001740

/-!
# A001741: Squares written in base 6.

The programs for A001741, there is no canonical definition to state claims against.
-/

/-! ## A001741.P12201115018193710108

`A007092(A000290(n))`
-/

namespace A001741.P12201115018193710108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A000290 n).toNat

end

end A001741.P12201115018193710108

/-! ## A001741.P15318628546717400870

`A007092(n²)`
-/

namespace A001741.P15318628546717400870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (n ^ 2)

end

end A001741.P15318628546717400870

/-! ## A001741.P15551080365598300743

`and(-3, A007092(n^2))`
-/

namespace A001741.P15551080365598300743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-3) (A007092 (n ^ 2))

end

end A001741.P15551080365598300743

/-! ## A001741.P3743126358296975421

`record[A007092(A123596(n))]`
-/

namespace A001741.P3743126358296975421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A123596 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001741.P3743126358296975421

/-! ## A001741.P16790593577536387060

`record[A007092(A165487(n))]`
-/

namespace A001741.P16790593577536387060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A165487 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001741.P16790593577536387060

/-! ## A001741.P14396552022437565526

`record[A007092(A219031(n))]`
-/

namespace A001741.P14396552022437565526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A219031 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001741.P14396552022437565526

/-! ## A001741.P14265632103246619593

`record[A007092(abs(A131805(n)))]`
-/

namespace A001741.P14265632103246619593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 |A131805 n|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001741.P14265632103246619593

/-! ## A001741.P10372183600983704463

`record[A007092(A289506(n+1))]`
-/

namespace A001741.P10372183600983704463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A289506 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001741.P10372183600983704463

/-! ## A001741.P17859920822137938880

`record[A007092(A175126(n)^2)]`
-/

namespace A001741.P17859920822137938880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A175126 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001741.P17859920822137938880

/-! ## A001741.P8818557684391701128

`record[A007092(A343757(n)^2)]`
-/

namespace A001741.P8818557684391701128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (A343757 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001741.P8818557684391701128

/-! ## A001741.P16978453561084449782

`A007092(n^2)+A000007(n+1)`
-/

namespace A001741.P16978453561084449782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007092 (n ^ 2) + A000007 (n + 1)

end

end A001741.P16978453561084449782

/-! ## A001741.P12116398081091424731

`A007318(C(2, n))*A007092(n^2)`
-/

namespace A001741.P12116398081091424731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (Nat.choose 2 n) * A007092 (n ^ 2)

end

end A001741.P12116398081091424731

/-! ## A001741.P8779447207761691371

`A007092(n^2)^A000041(C(2, n))`
-/

namespace A001741.P8779447207761691371
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007092 (n ^ 2) : ℚ) ^ (A000041 (Nat.choose 2 n) : ℤ)

end

end A001741.P8779447207761691371

/-! ## A001741.P4136867619684234182

`A000010(C(2, n)!)*A007092(n^2)`
-/

namespace A001741.P4136867619684234182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A007092 (n ^ 2)

end

end A001741.P4136867619684234182

/-! ## A001741.P1531282923341216161

`A007092(n^2)^A014963(∑[n+1])`
-/

namespace A001741.P1531282923341216161
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007092 (n ^ 2) : ℚ) ^ (A014963 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A001741.P1531282923341216161

/-! ## A001741.P14838746267789883538

`A007318(floor(n/81))*A007092(n^2)`
-/

namespace A001741.P14838746267789883538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 ⌊(n : ℚ) / 81⌋.toNat * A007092 (n ^ 2)

end

end A001741.P14838746267789883538

/-! ## A001741.P8960216755522440537

`A000032(gcd(n, n+1))*A007092(n^2)`
-/

namespace A001741.P8960216755522440537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000032 (Nat.gcd n (n + 1)) * A007092 (n ^ 2)

end

end A001741.P8960216755522440537

/-! ## A001741.P4948978014006943357

`A001221(record[A014963(n+2)])*A007092(n^2)`
-/

namespace A001741.P4948978014006943357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001221 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A007092 (n ^ 2)

end

end A001741.P4948978014006943357

/-! ## A001741.P12890553659951476311

`A001222(record[A014963(n+2)])*A007092(n^2)`
-/

namespace A001741.P12890553659951476311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat * A007092 (n ^ 2)

end

end A001741.P12890553659951476311

/-!
# A001742: Numbers whose digits contain no loops (version 2).

The programs for A001742, the canonical program `A001742.P4076269078881375086` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001742 has offset 1).

The definition of A001742 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4298 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001742.P4076269078881375086

`A202267(A248910(n+1)+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001742

/-- `A202267(A248910(n+1)+1)` -/
def P4076269078881375086.Spec : Prop :=
  ∀ n, P4076269078881375086.a n = A001742 (n + 1)

theorem P4076269078881375086.correct : P4076269078881375086.Spec := by
  intro n
  simp only [A001742, Nat.add_sub_cancel]

end A001742

/-! ## A001742.P10364149383847390988

`∩[A001729(n+1), A202267(n+1)]`
-/

namespace A001742.P10364149383847390988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P10364149383847390988

namespace A001742

/-- `∩[A001729(n+1), A202267(n+1)]` -/
def P10364149383847390988.Spec : Prop :=
  ∀ n, (P10364149383847390988.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P4593250127582248909

`eq[0, A064692(n)]`
-/

namespace A001742.P4593250127582248909
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001742.P4593250127582248909

namespace A001742

/-- `eq[0, A064692(n)]` -/
def P4593250127582248909.Spec : Prop :=
  ∀ n, (P4593250127582248909.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P12580322724039034914

`∩[A202267(n+1), A214677(n+1)]`
-/

namespace A001742.P12580322724039034914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214677 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P12580322724039034914

namespace A001742

/-- `∩[A202267(n+1), A214677(n+1)]` -/
def P12580322724039034914.Spec : Prop :=
  ∀ n, (P12580322724039034914.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P3642705917777008396

`∩[A202267(n+1), A214678(n+1)]`
-/

namespace A001742.P3642705917777008396
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P3642705917777008396

namespace A001742

/-- `∩[A202267(n+1), A214678(n+1)]` -/
def P3642705917777008396.Spec : Prop :=
  ∀ n, (P3642705917777008396.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P573177576724775338

`∩[A001729(n+1), A039115(n+1)]`
-/

namespace A001742.P573177576724775338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039115 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P573177576724775338

namespace A001742

/-- `∩[A001729(n+1), A039115(n+1)]` -/
def P573177576724775338.Spec : Prop :=
  ∀ n, (P573177576724775338.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P15442819166356997655

`∩[A001729(n+1), A039142(n+1)]`
-/

namespace A001742.P15442819166356997655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039142 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P15442819166356997655

namespace A001742

/-- `∩[A001729(n+1), A039142(n+1)]` -/
def P15442819166356997655.Spec : Prop :=
  ∀ n, (P15442819166356997655.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P17198626165601195880

`∩[A001729(n+1), A039144(n+1)]`
-/

namespace A001742.P17198626165601195880
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039144 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P17198626165601195880

namespace A001742

/-- `∩[A001729(n+1), A039144(n+1)]` -/
def P17198626165601195880.Spec : Prop :=
  ∀ n, (P17198626165601195880.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P6588722895607394936

`∩[A001729(n+1), A039145(n+1)]`
-/

namespace A001742.P6588722895607394936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039145 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P6588722895607394936

namespace A001742

/-- `∩[A001729(n+1), A039145(n+1)]` -/
def P6588722895607394936.Spec : Prop :=
  ∀ n, (P6588722895607394936.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P12554189676534747981

`∩[A039115(n+1), A202267(n+1)]`
-/

namespace A001742.P12554189676534747981
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039115 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P12554189676534747981

namespace A001742

/-- `∩[A039115(n+1), A202267(n+1)]` -/
def P12554189676534747981.Spec : Prop :=
  ∀ n, (P12554189676534747981.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P4247181856031966721

`∩[A039117(n+1), A202267(n+1)]`
-/

namespace A001742.P4247181856031966721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P4247181856031966721

namespace A001742

/-- `∩[A039117(n+1), A202267(n+1)]` -/
def P4247181856031966721.Spec : Prop :=
  ∀ n, (P4247181856031966721.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P5026157460284345284

`∩[A039119(n+1), A202267(n+1)]`
-/

namespace A001742.P5026157460284345284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039119 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P5026157460284345284

namespace A001742

/-- `∩[A039119(n+1), A202267(n+1)]` -/
def P5026157460284345284.Spec : Prop :=
  ∀ n, (P5026157460284345284.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P12802797944235666735

`∩[A001729(n+1), A052406(n+1)]`
-/

namespace A001742.P12802797944235666735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052406 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P12802797944235666735

namespace A001742

/-- `∩[A001729(n+1), A052406(n+1)]` -/
def P12802797944235666735.Spec : Prop :=
  ∀ n, (P12802797944235666735.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P4716480900016100501

`∩[A052382(n+1), A202267(n+1)]`
-/

namespace A001742.P4716480900016100501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202267 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001742.P4716480900016100501

namespace A001742

/-- `∩[A052382(n+1), A202267(n+1)]` -/
def P4716480900016100501.Spec : Prop :=
  ∀ n, (P4716480900016100501.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P5871980563566972527

`lt[n*A064692(n), A215887(n)]`
-/

namespace A001742.P5871980563566972527
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A064692 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215887 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001742.P5871980563566972527

namespace A001742

/-- `lt[n*A064692(n), A215887(n)]` -/
def P5871980563566972527.Spec : Prop :=
  ∀ n, (P5871980563566972527.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P72448116534320742

`eq[0, char[A001745(n+1)]]`
-/

namespace A001742.P72448116534320742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001745 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001742.P72448116534320742

namespace A001742

/-- `eq[0, char[A001745(n+1)]]` -/
def P72448116534320742.Spec : Prop :=
  ∀ n, (P72448116534320742.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P4206595629463547795

`A106647(A082741(n+1))`
-/

namespace A001742.P4206595629463547795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106647 (A082741 (n + 1)).toNat

end

end A001742.P4206595629463547795

namespace A001742

/-- `A106647(A082741(n+1))` -/
def P4206595629463547795.Spec : Prop :=
  ∀ n, P4206595629463547795.a n = A001742 (n + 1)

end A001742

/-! ## A001742.P12177292770358579683

`lt[A064692(A222231(n)), 1]`
-/

namespace A001742.P12177292770358579683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064692 (A222231 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A001742.P12177292770358579683

namespace A001742

/-- `lt[A064692(A222231(n)), 1]` -/
def P12177292770358579683.Spec : Prop :=
  ∀ n, (P12177292770358579683.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P10949888143587505157

`eq[n, A106647(A004184(n))]`
-/

namespace A001742.P10949888143587505157
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106647 (A004184 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001742.P10949888143587505157

namespace A001742

/-- `eq[n, A106647(A004184(n))]` -/
def P10949888143587505157.Spec : Prop :=
  ∀ n, (P10949888143587505157.a n : ℤ) = A001742 (n + 1)

end A001742

/-! ## A001742.P7987639053827619817

`eq[n, A222218(A106647(n))]`
-/

namespace A001742.P7987639053827619817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222218 (A106647 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001742.P7987639053827619817

namespace A001742

/-- `eq[n, A222218(A106647(n))]` -/
def P7987639053827619817.Spec : Prop :=
  ∀ n, (P7987639053827619817.a n : ℤ) = A001742 (n + 1)

end A001742

/-!
# A001743: Numbers in which every digit contains at least one loop (version 1).

The programs for A001743, the canonical program `A001743.P11802867957663763901` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001743 has offset 1).

The definition of A001743 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 2304 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001743.P5088442437264815647

`A054047(A023725(n+1))`
-/

namespace A001743.P5088442437264815647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 (A023725 (n + 1)).toNat

end

end A001743.P5088442437264815647

namespace A001743

/-- `A054047(A023725(n+1))` -/
def P5088442437264815647.Spec : Prop :=
  ∀ n, P5088442437264815647.a n = A001743 (n + 1)

end A001743

/-! ## A001743.P1541027106223490471

`A001744(A023725(n+1)+1)`
-/

namespace A001743.P1541027106223490471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (A023725 (n + 1) + 1).toNat

end

end A001743.P1541027106223490471

namespace A001743

/-- `A001744(A023725(n+1)+1)` -/
def P1541027106223490471.Spec : Prop :=
  ∀ n, P1541027106223490471.a n = A001743 (n + 1)

end A001743

/-! ## A001743.P17827069268233995361

`A072960(A023725(n+1)+1)`
-/

namespace A001743.P17827069268233995361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (A023725 (n + 1) + 1).toNat

end

end A001743.P17827069268233995361

namespace A001743

/-- `A072960(A023725(n+1)+1)` -/
def P17827069268233995361.Spec : Prop :=
  ∀ n, P17827069268233995361.a n = A001743 (n + 1)

end A001743

/-! ## A001743.P12683918953223871282

`∩[A001744(n+1), A054047(n)]`
-/

namespace A001743.P12683918953223871282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001743.P12683918953223871282

namespace A001743

/-- `∩[A001744(n+1), A054047(n)]` -/
def P12683918953223871282.Spec : Prop :=
  ∀ n, (P12683918953223871282.a n : ℤ) = A001743 (n + 1)

end A001743

/-! ## A001743.P11802867957663763901

`∩[A072960(n+1), A054047(n)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A001743

/-- `∩[A072960(n+1), A054047(n)]` -/
def P11802867957663763901.Spec : Prop :=
  ∀ n, (P11802867957663763901.a n : ℤ) = A001743 (n + 1)

theorem P11802867957663763901.correct : P11802867957663763901.Spec := by
  intro n
  simp only [A001743, Nat.add_sub_cancel]

end A001743

/-! ## A001743.P9214286819606184657

`∩[A001744(n+1), A072960(n+1)]`
-/

namespace A001743.P9214286819606184657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001743.P9214286819606184657

namespace A001743

/-- `∩[A001744(n+1), A072960(n+1)]` -/
def P9214286819606184657.Spec : Prop :=
  ∀ n, (P9214286819606184657.a n : ℤ) = A001743 (n + 1)

end A001743

/-! ## A001743.P8466383548868197629

`A001744(A023729(2*(n+1))-A023733(n+1))`
-/

namespace A001743.P8466383548868197629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (A023729 (2 * (n + 1)) - A023733 (n + 1)).toNat

end

end A001743.P8466383548868197629

namespace A001743

/-- `A001744(A023729(2*(n+1))-A023733(n+1))` -/
def P8466383548868197629.Spec : Prop :=
  ∀ n, P8466383548868197629.a n = A001743 (n + 1)

end A001743

/-! ## A001743.P652231502661390626

`∩[A276138(n+1), A054047(n)]`
-/

namespace A001743.P652231502661390626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001743.P652231502661390626

namespace A001743

/-- `∩[A276138(n+1), A054047(n)]` -/
def P652231502661390626.Spec : Prop :=
  ∀ n, (P652231502661390626.a n : ℤ) = A001743 (n + 1)

end A001743

/-! ## A001743.P15429532317672853356

`∩[A072960(n+1), A084984(n+1)]`
-/

namespace A001743.P15429532317672853356
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001743.P15429532317672853356

namespace A001743

/-- `∩[A072960(n+1), A084984(n+1)]` -/
def P15429532317672853356.Spec : Prop :=
  ∀ n, (P15429532317672853356.a n : ℤ) = A001743 (n + 1)

end A001743

/-! ## A001743.P9365555661223974885

`∩[A072960(n+1), A276138(n+1)]`
-/

namespace A001743.P9365555661223974885
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072960 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001743.P9365555661223974885

namespace A001743

/-- `∩[A072960(n+1), A276138(n+1)]` -/
def P9365555661223974885.Spec : Prop :=
  ∀ n, (P9365555661223974885.a n : ℤ) = A001743 (n + 1)

end A001743

/-! ## A001743.P7902932578313534468

`∩[A028374(n+1), A054047(n)]`
-/

namespace A001743.P7902932578313534468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054047 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001743.P7902932578313534468

namespace A001743

/-- `∩[A028374(n+1), A054047(n)]` -/
def P7902932578313534468.Spec : Prop :=
  ∀ n, (P7902932578313534468.a n : ℤ) = A001743 (n + 1)

end A001743

/-! ## A001743.P1001169746328489599

`∩[A001744(n+1), A028374(n+1)]`
-/

namespace A001743.P1001169746328489599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001744 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001743.P1001169746328489599

namespace A001743

/-- `∩[A001744(n+1), A028374(n+1)]` -/
def P1001169746328489599.Spec : Prop :=
  ∀ n, (P1001169746328489599.a n : ℤ) = A001743 (n + 1)

end A001743

/-! ## A001743.P12562574529360321002

`∩[A028374(n+1), A084984(n+1)]`
-/

namespace A001743.P12562574529360321002
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028374 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001743.P12562574529360321002

namespace A001743

/-- `∩[A028374(n+1), A084984(n+1)]` -/
def P12562574529360321002.Spec : Prop :=
  ∀ n, (P12562574529360321002.a n : ℤ) = A001743 (n + 1)

end A001743

/-! ## A001743.P5321384705693141704

`record[A055120(A222221(n))]`
-/

namespace A001743.P5321384705693141704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055120 (A222221 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001743.P5321384705693141704

namespace A001743

/-- `record[A055120(A222221(n))]` -/
def P5321384705693141704.Spec : Prop :=
  ∀ n, P5321384705693141704.a n = A001743 (n + 1)

end A001743

/-! ## A001743.P13586183300147086113

`record[A222225(A222223(n))]`
-/

namespace A001743.P13586183300147086113
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222225 (A222223 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001743.P13586183300147086113

namespace A001743

/-- `record[A222225(A222223(n))]` -/
def P13586183300147086113.Spec : Prop :=
  ∀ n, P13586183300147086113.a n = A001743 (n + 1)

end A001743

/-! ## A001743.P10051121629136510825

`A222223(record[A222232(n)])`
-/

namespace A001743.P10051121629136510825
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222232 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001743.P10051121629136510825

namespace A001743

/-- `A222223(record[A222232(n)])` -/
def P10051121629136510825.Spec : Prop :=
  ∀ n, P10051121629136510825.a n = A001743 (n + 1)

end A001743

/-! ## A001743.P5730377191063148472

`record[A222223(A222238(n))]`
-/

namespace A001743.P5730377191063148472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222238 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001743.P5730377191063148472

namespace A001743

/-- `record[A222223(A222238(n))]` -/
def P5730377191063148472.Spec : Prop :=
  ∀ n, P5730377191063148472.a n = A001743 (n + 1)

end A001743

/-! ## A001743.P1529152572071254444

`record[A222223(A222247(n))]`
-/

namespace A001743.P1529152572071254444
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222247 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001743.P1529152572071254444

namespace A001743

/-- `record[A222223(A222247(n))]` -/
def P1529152572071254444.Spec : Prop :=
  ∀ n, P1529152572071254444.a n = A001743 (n + 1)

end A001743

/-! ## A001743.P8731278953890639839

`record[A222223(A222252(n))]`
-/

namespace A001743.P8731278953890639839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 (A222252 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001743.P8731278953890639839

namespace A001743

/-- `record[A222223(A222252(n))]` -/
def P8731278953890639839.Spec : Prop :=
  ∀ n, P8731278953890639839.a n = A001743 (n + 1)

end A001743

/-! ## A001743.P14449769130806597698

`record[A222231(record[A222223(n)])]`
-/

namespace A001743.P14449769130806597698
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222223 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001743.P14449769130806597698

namespace A001743

/-- `record[A222231(record[A222223(n)])]` -/
def P14449769130806597698.Spec : Prop :=
  ∀ n, P14449769130806597698.a n = A001743 (n + 1)

end A001743

/-!
# A001744: Numbers n such that every digit contains a loop (version 2).

The programs for A001744, there is no canonical definition to state claims against.
-/

/-! ## A001744.P10194574338263132575

`∩[A084984(n+1), A276138(n+1)]`
-/

namespace A001744.P10194574338263132575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001744.P10194574338263132575

/-! ## A001744.P1786444885097557723

`A222221(A054047(n))`
-/

namespace A001744.P1786444885097557723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222221 (A054047 n).toNat

end

end A001744.P1786444885097557723

/-! ## A001744.P1097166465306453919

`A222234(A072960(n+1))`
-/

namespace A001744.P1097166465306453919
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222234 (A072960 (n + 1)).toNat

end

end A001744.P1097166465306453919

/-! ## A001744.P5382581980011378235

`eq[0, A196564(A222233(n))]`
-/

namespace A001744.P5382581980011378235
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196564 (A222233 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001744.P5382581980011378235

/-! ## A001744.P4007126689106689944

`record[A004176(A084984(n+1))]`
-/

namespace A001744.P4007126689106689944
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004176 (A084984 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001744.P4007126689106689944

/-! ## A001744.P13682467646930699813

`eq[atan(A193238(n)), A268643(n)]`
-/

namespace A001744.P13682467646930699813
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A193238 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268643 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A001744.P13682467646930699813

/-! ## A001744.P17952828103028987295

`eq[n, A222222(A193238(n)+n)]`
-/

namespace A001744.P17952828103028987295
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222222 (A193238 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001744.P17952828103028987295

/-! ## A001744.P5672898844586759191

`∩[A039120(n+1), A084984(n+1)]`
-/

namespace A001744.P5672898844586759191
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001744.P5672898844586759191

/-! ## A001744.P13222832827721613897

`∩[A039121(n+1), A084984(n+1)]`
-/

namespace A001744.P13222832827721613897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001744.P13222832827721613897

/-! ## A001744.P15720998727170624984

`∩[A039123(n+1), A084984(n+1)]`
-/

namespace A001744.P15720998727170624984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039123 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001744.P15720998727170624984

/-! ## A001744.P7254161069358912109

`∩[A039125(n+1), A084984(n+1)]`
-/

namespace A001744.P7254161069358912109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039125 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001744.P7254161069358912109

/-! ## A001744.P343736571502628567

`∩[A052383(n+1), A084984(n+1)]`
-/

namespace A001744.P343736571502628567
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052383 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084984 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001744.P343736571502628567

/-! ## A001744.P125232319195864759

`∩[A039120(n+1), A276138(n+1)]`
-/

namespace A001744.P125232319195864759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039120 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001744.P125232319195864759

/-! ## A001744.P10673442403251668452

`∩[A039128(n+1), A276138(n+1)]`
-/

namespace A001744.P10673442403251668452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039128 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001744.P10673442403251668452

/-! ## A001744.P7014225706003539997

`∩[A039130(n+1), A276138(n+1)]`
-/

namespace A001744.P7014225706003539997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039130 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001744.P7014225706003539997

/-! ## A001744.P4991475033975933204

`∩[A039132(n+1), A276138(n+1)]`
-/

namespace A001744.P4991475033975933204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039132 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001744.P4991475033975933204

/-! ## A001744.P8259181435745400265

`∩[A052404(n+1), A276138(n+1)]`
-/

namespace A001744.P8259181435745400265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276138 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A001744.P8259181435745400265

/-! ## A001744.P501542405210913618

`eq[n, A222246(A035044(A035043(n)))]`
-/

namespace A001744.P501542405210913618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222246 (A035044 (A035043 n).toNat).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001744.P501542405210913618

/-! ## A001744.P6268163206176336564

`eq[A035043(n), A222237(A222229(n))]`
-/

namespace A001744.P6268163206176336564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222237 (A222229 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001744.P6268163206176336564

/-! ## A001744.P3098241161470586328

`eq[A035043(n), A222235(A222231(n))]`
-/

namespace A001744.P3098241161470586328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035043 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222235 (A222231 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001744.P3098241161470586328

/-!
# A001745: Numbers such that at least one digit contains a loop (version 2). Also called "holey" or "holy" numbers.

The programs for A001745, the canonical program `A001745.P975196731566456235` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001745 has offset 1).

The definition of A001745 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001745.P975196731566456235

`lt[0, A064692(n)]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001745

/-- `lt[0, A064692(n)]` -/
def P975196731566456235.Spec : Prop :=
  ∀ n, (P975196731566456235.a n : ℤ) = A001745 (n + 1)

theorem P975196731566456235.correct : P975196731566456235.Spec := by
  intro n
  simp only [A001745, Nat.add_sub_cancel]

end A001745

/-! ## A001745.P7371871181444936954

`comp[A001742(n+1)]`
-/

namespace A001745.P7371871181444936954
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001742 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001745.P7371871181444936954

namespace A001745

/-- `comp[A001742(n+1)]` -/
def P7371871181444936954.Spec : Prop :=
  ∀ n, (P7371871181444936954.a n : ℤ) = A001745 (n + 1)

end A001745

/-! ## A001745.P10785974367890455636

`∪[A001746(n+1), A011534(n+1)]`
-/

namespace A001745.P10785974367890455636
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011534 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001745.P10785974367890455636

namespace A001745

/-- `∪[A001746(n+1), A011534(n+1)]` -/
def P10785974367890455636.Spec : Prop :=
  ∀ n, (P10785974367890455636.a n : ℤ) = A001745 (n + 1)

end A001745

/-! ## A001745.P573353522915038397

`∪[A001746(n+1), A118951(n+1)]`
-/

namespace A001745.P573353522915038397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001746 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001745.P573353522915038397

namespace A001745

/-- `∪[A001746(n+1), A118951(n+1)]` -/
def P573353522915038397.Spec : Prop :=
  ∀ n, (P573353522915038397.a n : ℤ) = A001745 (n + 1)

end A001745

/-! ## A001745.P13348332984180386692

`∪[A011540(n+1), A118951(n+1)]`
-/

namespace A001745.P13348332984180386692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011540 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118951 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001745.P13348332984180386692

namespace A001745

/-- `∪[A011540(n+1), A118951(n+1)]` -/
def P13348332984180386692.Spec : Prop :=
  ∀ n, (P13348332984180386692.a n : ℤ) = A001745 (n + 1)

end A001745

/-! ## A001745.P10748151859255908869

`eq[A000038(n)^A064692(n), A000038(n)]`
-/

namespace A001745.P10748151859255908869
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000038 n : ℚ) ^ (A064692 n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A001745.P10748151859255908869

namespace A001745

/-- `eq[A000038(n)^A064692(n), A000038(n)]` -/
def P10748151859255908869.Spec : Prop :=
  ∀ n, (P10748151859255908869.a n : ℤ) = A001745 (n + 1)

end A001745

/-! ## A001745.P14601452126702924142

`record[A254667(n)%(A064692(n)+n)]`
-/

namespace A001745.P14601452126702924142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A254667 n) (A064692 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001745.P14601452126702924142

namespace A001745

/-- `record[A254667(n)%(A064692(n)+n)]` -/
def P14601452126702924142.Spec : Prop :=
  ∀ n, P14601452126702924142.a n = A001745 (n + 1)

end A001745

/-! ## A001745.P65005478895259761

`comp[eq[1, A064693(n)]]`
-/

namespace A001745.P65005478895259761
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064693 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001745.P65005478895259761

namespace A001745

/-- `comp[eq[1, A064693(n)]]` -/
def P65005478895259761.Spec : Prop :=
  ∀ n, (P65005478895259761.a n : ℤ) = A001745 (n + 1)

end A001745

/-! ## A001745.P18357223759595123681

`comp[lt[A064693(n), 2]]%A001729(n+2)²`
-/

namespace A001745.P18357223759595123681
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064693 n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) (A001729 (n + 2) ^ 2)

end

end A001745.P18357223759595123681

namespace A001745

/-- `comp[lt[A064693(n), 2]]%A001729(n+2)²` -/
def P18357223759595123681.Spec : Prop :=
  ∀ n, P18357223759595123681.a n = A001745 (n + 1)

end A001745

/-! ## A001745.P746055799218545114

`record[A065033(A005843(n))%(A064692(n)+n)]`
-/

namespace A001745.P746055799218545114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A065033 (A005843 n).toNat) (A064692 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001745.P746055799218545114

namespace A001745

/-- `record[A065033(A005843(n))%(A064692(n)+n)]` -/
def P746055799218545114.Spec : Prop :=
  ∀ n, P746055799218545114.a n = A001745 (n + 1)

end A001745

/-! ## A001745.P9971887593641064569

`record[A233583(n+1)%(A064692(n)+n)]`
-/

namespace A001745.P9971887593641064569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A233583 (n + 1)) (A064692 n + (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001745.P9971887593641064569

namespace A001745

/-- `record[A233583(n+1)%(A064692(n)+n)]` -/
def P9971887593641064569.Spec : Prop :=
  ∀ n, P9971887593641064569.a n = A001745 (n + 1)

end A001745

/-!
# A001746: At least one digit contains a loop (version 1).

The programs for A001746, the canonical program `A001746.P1259921048174230123` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001746 has offset 1).

The definition of A001746 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001746.P11095776233814988144

`comp[A001729(n+1)]`
-/

namespace A001746.P11095776233814988144
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001729 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A001746.P11095776233814988144

namespace A001746

/-- `comp[A001729(n+1)]` -/
def P11095776233814988144.Spec : Prop :=
  ∀ n, (P11095776233814988144.a n : ℤ) = A001746 (n + 1)

end A001746

/-! ## A001746.P1259921048174230123

`lt[n-A064532(n), n]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A001746

/-- `lt[n-A064532(n), n]` -/
def P1259921048174230123.Spec : Prop :=
  ∀ n, (P1259921048174230123.a n : ℤ) = A001746 (n + 1)

theorem P1259921048174230123.correct : P1259921048174230123.Spec := by
  intro n
  simp only [A001746, Nat.add_sub_cancel]

end A001746

/-! ## A001746.P8456759346711440550

`eq[1, gcd(A002148(n), A064532(n))]`
-/

namespace A001746.P8456759346711440550
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002148 n) (A064532 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001746.P8456759346711440550

namespace A001746

/-- `eq[1, gcd(A002148(n), A064532(n))]` -/
def P8456759346711440550.Spec : Prop :=
  ∀ n, (P8456759346711440550.a n : ℤ) = A001746 (n + 1)

end A001746

/-! ## A001746.P5579691601902477801

`lt[A195119(n), A195119(n)+A064532(n)]`
-/

namespace A001746.P5579691601902477801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195119 n + A064532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001746.P5579691601902477801

namespace A001746

/-- `lt[A195119(n), A195119(n)+A064532(n)]` -/
def P5579691601902477801.Spec : Prop :=
  ∀ n, (P5579691601902477801.a n : ℤ) = A001746 (n + 1)

theorem P5579691601902477801.correct : P5579691601902477801.Spec := by
  intro n
  simp only [A001746, Nat.add_sub_cancel, A001746.P5579691601902477801.f1, A001746.P5579691601902477801.f2, A001746.P5579691601902477801.a, A001746.P1259921048174230123.f1, A001746.P1259921048174230123.f2, A001746.P1259921048174230123.a, SequenceMachineLib.memo_apply]
  try simp

end A001746

/-! ## A001746.P9714075749406703142

`lt[5, A054055(A222216(n))]`
-/

namespace A001746.P9714075749406703142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (A222216 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001746.P9714075749406703142

namespace A001746

/-- `lt[5, A054055(A222216(n))]` -/
def P9714075749406703142.Spec : Prop :=
  ∀ n, (P9714075749406703142.a n : ℤ) = A001746 (n + 1)

end A001746

/-! ## A001746.P3547809607762699182

`lt[1, A000040(n+1)*A064532(n)]`
-/

namespace A001746.P3547809607762699182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) * A064532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A001746.P3547809607762699182

namespace A001746

/-- `lt[1, A000040(n+1)*A064532(n)]` -/
def P3547809607762699182.Spec : Prop :=
  ∀ n, (P3547809607762699182.a n : ℤ) = A001746 (n + 1)

end A001746

/-! ## A001746.P13558209840394703310

`lt[A222231(n), A222231(n)+A064532(n)]`
-/

namespace A001746.P13558209840394703310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222231 n + A064532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001746.P13558209840394703310

namespace A001746

/-- `lt[A222231(n), A222231(n)+A064532(n)]` -/
def P13558209840394703310.Spec : Prop :=
  ∀ n, (P13558209840394703310.a n : ℤ) = A001746 (n + 1)

theorem P13558209840394703310.correct : P13558209840394703310.Spec := by
  intro n
  simp only [A001746, Nat.add_sub_cancel, A001746.P13558209840394703310.f1, A001746.P13558209840394703310.f2, A001746.P13558209840394703310.a, A001746.P1259921048174230123.f1, A001746.P1259921048174230123.f2, A001746.P1259921048174230123.a, SequenceMachineLib.memo_apply]
  try simp

end A001746

/-! ## A001746.P14739689129117470455

`lt[A222242(n), A222242(n)+A064532(n)]`
-/

namespace A001746.P14739689129117470455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222242 n + A064532 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A001746.P14739689129117470455

namespace A001746

/-- `lt[A222242(n), A222242(n)+A064532(n)]` -/
def P14739689129117470455.Spec : Prop :=
  ∀ n, (P14739689129117470455.a n : ℤ) = A001746 (n + 1)

theorem P14739689129117470455.correct : P14739689129117470455.Spec := by
  intro n
  simp only [A001746, Nat.add_sub_cancel, A001746.P14739689129117470455.f1, A001746.P14739689129117470455.f2, A001746.P14739689129117470455.a, A001746.P1259921048174230123.f1, A001746.P1259921048174230123.f2, A001746.P1259921048174230123.a, SequenceMachineLib.memo_apply]
  try simp

end A001746

/-! ## A001746.P17453867826941113770

`comp[eq[n, A222254(A222215(n))]]`
-/

namespace A001746.P17453867826941113770
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222254 (A222215 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001746.P17453867826941113770

namespace A001746

/-- `comp[eq[n, A222254(A222215(n))]]` -/
def P17453867826941113770.Spec : Prop :=
  ∀ n, (P17453867826941113770.a n : ℤ) = A001746 (n + 1)

end A001746

/-! ## A001746.P17945092723397687083

`comp[eq[n, A222251(A222217(n))]]`
-/

namespace A001746.P17945092723397687083
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222251 (A222217 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001746.P17945092723397687083

namespace A001746

/-- `comp[eq[n, A222251(A222217(n))]]` -/
def P17945092723397687083.Spec : Prop :=
  ∀ n, (P17945092723397687083.a n : ℤ) = A001746 (n + 1)

end A001746

/-! ## A001746.P1630306244197510886

`comp[eq[n, A222250(A222218(n))]]`
-/

namespace A001746.P1630306244197510886
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222250 (A222218 n).toNat

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A001746.P1630306244197510886

namespace A001746

/-- `comp[eq[n, A222250(A222218(n))]]` -/
def P1630306244197510886.Spec : Prop :=
  ∀ n, (P1630306244197510886.a n : ℤ) = A001746 (n + 1)

end A001746

/-!
# A001747: 2 together with primes multiplied by 2.

The programs for A001747, the canonical program `A001747.P198467477273308856` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001747 has offset 1).

The definition of A001747 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A008578, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001747.P198467477273308856

`2*A008578(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001747

/-- `2*A008578(n+1)` -/
def P198467477273308856.Spec : Prop :=
  ∀ n, P198467477273308856.a n = A001747 (n + 1)

theorem P198467477273308856.correct : P198467477273308856.Spec := by
  intro n
  simp only [A001747, Nat.add_sub_cancel]

end A001747

/-! ## A001747.P11076141580944657104

`A076274(n+1)+1`
-/

namespace A001747.P11076141580944657104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076274 (n + 1) + 1

end

end A001747.P11076141580944657104

namespace A001747

/-- `A076274(n+1)+1` -/
def P11076141580944657104.Spec : Prop :=
  ∀ n, P11076141580944657104.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P17720764434651105011

`2*(A028815(n)-1)`
-/

namespace A001747.P17720764434651105011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A028815 n - 1)

end

end A001747.P17720764434651105011

namespace A001747

/-- `2*(A028815(n)-1)` -/
def P17720764434651105011.Spec : Prop :=
  ∀ n, P17720764434651105011.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P3338679958766439696

`2*sqrt(A280076(n+1))`
-/

namespace A001747.P3338679958766439696
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A280076 (n + 1) : ℝ)

end

end A001747.P3338679958766439696

namespace A001747

/-- `2*sqrt(A280076(n+1))` -/
def P3338679958766439696.Spec : Prop :=
  ∀ n, P3338679958766439696.a n = (A001747 (n + 1) : ℝ)

end A001747

/-! ## A001747.P10051624546322930463

`2*record[A259153(n+1)]`
-/

namespace A001747.P10051624546322930463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001747.P10051624546322930463

namespace A001747

/-- `2*record[A259153(n+1)]` -/
def P10051624546322930463.Spec : Prop :=
  ∀ n, P10051624546322930463.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P17809765557817333006

`2/3*A112773(n+1)`
-/

namespace A001747.P17809765557817333006
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) / 3 * (A112773 (n + 1) : ℚ)

end

end A001747.P17809765557817333006

namespace A001747

/-- `2/3*A112773(n+1)` -/
def P17809765557817333006.Spec : Prop :=
  ∀ n, P17809765557817333006.a n = (A001747 (n + 1) : ℚ)

end A001747

/-! ## A001747.P1356744627543512486

`2*(A167136(n+1)-n)`
-/

namespace A001747.P1356744627543512486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A167136 (n + 1) - (n : ℤ))

end

end A001747.P1356744627543512486

namespace A001747

/-- `2*(A167136(n+1)-n)` -/
def P1356744627543512486.Spec : Prop :=
  ∀ n, P1356744627543512486.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P14608016748507052321

`A100484(n%a(n-1))` with `a(0)=2`
-/

namespace A001747.P14608016748507052321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A100484 (Int.tmod (n : ℤ) (a (n - 1))).toNat

end

end A001747.P14608016748507052321

namespace A001747

/-- `A100484(n%a(n-1))` -/
def P14608016748507052321.Spec : Prop :=
  ∀ n, P14608016748507052321.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P5259426156148064306

`a(and(2, n²))*A000040(n)` with `a(0)=2`
-/

namespace A001747.P5259426156148064306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (Nat.land 2 (n ^ 2)) * A000040 n

end

end A001747.P5259426156148064306

namespace A001747

/-- `a(and(2, n²))*A000040(n)` -/
def P5259426156148064306.Spec : Prop :=
  ∀ n, P5259426156148064306.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P6864666433890464381

`2*(A162177(n+1)+n+1)`
-/

namespace A001747.P6864666433890464381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A162177 (n + 1) + (n + 1 : ℤ))

end

end A001747.P6864666433890464381

namespace A001747

/-- `2*(A162177(n+1)+n+1)` -/
def P6864666433890464381.Spec : Prop :=
  ∀ n, P6864666433890464381.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P17811219571959928060

`2*(A090178(n+1)-(n+1))`
-/

namespace A001747.P17811219571959928060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A090178 (n + 1) - (n + 1 : ℤ))

end

end A001747.P17811219571959928060

namespace A001747

/-- `2*(A090178(n+1)-(n+1))` -/
def P17811219571959928060.Spec : Prop :=
  ∀ n, P17811219571959928060.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P4206405734357261330

`2/(n+1)*A164931(n+1)`
-/

namespace A001747.P4206405734357261330
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 / (n + 1 : ℚ) * (A164931 (n + 1) : ℚ)

end

end A001747.P4206405734357261330

namespace A001747

/-- `2/(n+1)*A164931(n+1)` -/
def P4206405734357261330.Spec : Prop :=
  ∀ n, P4206405734357261330.a n = (A001747 (n + 1) : ℚ)

end A001747

/-! ## A001747.P4735469927361347669

`2*A000040(and(1, a(n-1))+n)` with `a(0)=2`
-/

namespace A001747.P4735469927361347669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A000040 (Int.land 1 (a (n - 1)) + (n : ℤ)).toNat

end

end A001747.P4735469927361347669

namespace A001747

/-- `2*A000040(and(1, a(n-1))+n)` -/
def P4735469927361347669.Spec : Prop :=
  ∀ n, P4735469927361347669.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P11593643373762454660

`2*A000040(n-and(1, a(n-1)))` with `a(0)=2`
-/

namespace A001747.P11593643373762454660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A000040 ((n : ℤ) - Int.land 1 (a (n - 1))).toNat

end

end A001747.P11593643373762454660

namespace A001747

/-- `2*A000040(n-and(1, a(n-1)))` -/
def P11593643373762454660.Spec : Prop :=
  ∀ n, P11593643373762454660.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P12408494804259599045

`2*A000040(gcd(n, n*a(n-1)))` with `a(0)=2`
-/

namespace A001747.P12408494804259599045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A000040 (Int.gcd (n : ℤ) ((n : ℤ) * a (n - 1)))

end

end A001747.P12408494804259599045

namespace A001747

/-- `2*A000040(gcd(n, n*a(n-1)))` -/
def P12408494804259599045.Spec : Prop :=
  ∀ n, P12408494804259599045.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P7357135919482372075

`2*A000040(C(n, a(n-1))+n)` with `a(0)=2`
-/

namespace A001747.P7357135919482372075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A000040 (Nat.choose n (a (n - 1)).toNat + n)

end

end A001747.P7357135919482372075

namespace A001747

/-- `2*A000040(C(n, a(n-1))+n)` -/
def P7357135919482372075.Spec : Prop :=
  ∀ n, P7357135919482372075.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P10352199347760126644

`2*A000040(n-C(n, a(n-1)))` with `a(0)=2`
-/

namespace A001747.P10352199347760126644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  2 * A000040 (n - Nat.choose n (a (n - 1)).toNat)

end

end A001747.P10352199347760126644

namespace A001747

/-- `2*A000040(n-C(n, a(n-1)))` -/
def P10352199347760126644.Spec : Prop :=
  ∀ n, P10352199347760126644.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P1507746889235738829

`2*Δ[A000040(n-1)+a(n-1)]` with `a(0)=0, a(1)=1`
-/

namespace A001747.P1507746889235738829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  A000040 (n - 1) + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (f1 (n + 1) - f1 n)

end

end A001747.P1507746889235738829

namespace A001747

/-- `2*Δ[A000040(n-1)+a(n-1)]` -/
def P1507746889235738829.Spec : Prop :=
  ∀ n, P1507746889235738829.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P12271861048534642886

`A077017(n+1)*A373565(n)`
-/

namespace A001747.P12271861048534642886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077017 (n + 1) * A373565 n

end

end A001747.P12271861048534642886

namespace A001747

/-- `A077017(n+1)*A373565(n)` -/
def P12271861048534642886.Spec : Prop :=
  ∀ n, P12271861048534642886.a n = A001747 (n + 1)

end A001747

/-! ## A001747.P16201853830420218640

`A022798(n+1)+A014238(n+1)`
-/

namespace A001747.P16201853830420218640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022798 (n + 1) + A014238 (n + 1)

end

end A001747.P16201853830420218640

namespace A001747

/-- `A022798(n+1)+A014238(n+1)` -/
def P16201853830420218640.Spec : Prop :=
  ∀ n, P16201853830420218640.a n = A001747 (n + 1)

end A001747

/-!
# A001748: a(n) = 3 * prime(n).

The programs for A001748, the canonical program `A001748.P16019639290970068825` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001748 has offset 1).

The definition of A001748 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A001748.P16019639290970068825

`3*A000040(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001748

/-- `3*A000040(n+1)` -/
def P16019639290970068825.Spec : Prop :=
  ∀ n, P16019639290970068825.a n = A001748 (n + 1)

theorem P16019639290970068825.correct : P16019639290970068825.Spec := by
  intro n
  simp only [A001748, Nat.add_sub_cancel]

end A001748

/-! ## A001748.P12048725978862407342

`3*p?[round(8*n/7)]`
-/

namespace A001748.P12048725978862407342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (8 * ((n : ℚ) / 7))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A001748.P12048725978862407342

namespace A001748

/-- `3*p?[round(8*n/7)]` -/
def P12048725978862407342.Spec : Prop :=
  ∀ n, P12048725978862407342.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P3823750833735563869

`Δ[3*A007504(n)]`
-/

namespace A001748.P3823750833735563869
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001748.P3823750833735563869

namespace A001748

/-- `Δ[3*A007504(n)]` -/
def P3823750833735563869.Spec : Prop :=
  ∀ n, P3823750833735563869.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P2264578300451567815

`A129075(n+1)-4`
-/

namespace A001748.P2264578300451567815
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129075 (n + 1) - 4

end

end A001748.P2264578300451567815

namespace A001748

/-- `A129075(n+1)-4` -/
def P2264578300451567815.Spec : Prop :=
  ∀ n, P2264578300451567815.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P269737274999444032

`A132227(n+1)+5`
-/

namespace A001748.P269737274999444032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132227 (n + 1) + 5

end

end A001748.P269737274999444032

namespace A001748

/-- `A132227(n+1)+5` -/
def P269737274999444032.Spec : Prop :=
  ∀ n, P269737274999444032.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P7899213696546799758

`A138636(n+1)/2`
-/

namespace A001748.P7899213696546799758
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A138636 (n + 1) : ℚ) / 2

end

end A001748.P7899213696546799758

namespace A001748

/-- `A138636(n+1)/2` -/
def P7899213696546799758.Spec : Prop :=
  ∀ n, P7899213696546799758.a n = (A001748 (n + 1) : ℚ)

end A001748

/-! ## A001748.P9392699811759469918

`3*sqrt(A001248(n+1))`
-/

namespace A001748.P9392699811759469918
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  3 * Real.sqrt (A001248 (n + 1) : ℝ)

end

end A001748.P9392699811759469918

namespace A001748

/-- `3*sqrt(A001248(n+1))` -/
def P9392699811759469918.Spec : Prop :=
  ∀ n, P9392699811759469918.a n = (A001748 (n + 1) : ℝ)

end A001748

/-! ## A001748.P6774426081190017341

`∑[3*A054541(n+1)]`
-/

namespace A001748.P6774426081190017341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001748.P6774426081190017341

namespace A001748

/-- `∑[3*A054541(n+1)]` -/
def P6774426081190017341.Spec : Prop :=
  ∀ n, P6774426081190017341.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P16095220777656422129

`3*(A006093(n+1)+1)`
-/

namespace A001748.P16095220777656422129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A006093 (n + 1) + 1)

end

end A001748.P16095220777656422129

namespace A001748

/-- `3*(A006093(n+1)+1)` -/
def P16095220777656422129.Spec : Prop :=
  ∀ n, P16095220777656422129.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P17762496681063110282

`(A330410(n+1)+1)/2`
-/

namespace A001748.P17762496681063110282
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A330410 (n + 1) + 1 : ℚ) / 2

end

end A001748.P17762496681063110282

namespace A001748

/-- `(A330410(n+1)+1)/2` -/
def P17762496681063110282.Spec : Prop :=
  ∀ n, P17762496681063110282.a n = (A001748 (n + 1) : ℚ)

end A001748

/-! ## A001748.P12213946689578906194

`3*(A008864(n+1)-1)`
-/

namespace A001748.P12213946689578906194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A008864 (n + 1) - 1)

end

end A001748.P12213946689578906194

namespace A001748

/-- `3*(A008864(n+1)-1)` -/
def P12213946689578906194.Spec : Prop :=
  ∀ n, P12213946689578906194.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P17971920047595029962

`3*(A040976(n+1)+2)`
-/

namespace A001748.P17971920047595029962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A040976 (n + 1) + 2)

end

end A001748.P17971920047595029962

namespace A001748

/-- `3*(A040976(n+1)+2)` -/
def P17971920047595029962.Spec : Prop :=
  ∀ n, P17971920047595029962.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P1374992893248394699

`3*(A052147(n+1)-2)`
-/

namespace A001748.P1374992893248394699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A052147 (n + 1) - 2)

end

end A001748.P1374992893248394699

namespace A001748

/-- `3*(A052147(n+1)-2)` -/
def P1374992893248394699.Spec : Prop :=
  ∀ n, P1374992893248394699.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P7791805553244445436

`3*(A113935(n+1)-3)`
-/

namespace A001748.P7791805553244445436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A113935 (n + 1) - 3)

end

end A001748.P7791805553244445436

namespace A001748

/-- `3*(A113935(n+1)-3)` -/
def P7791805553244445436.Spec : Prop :=
  ∀ n, P7791805553244445436.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P4242475634769161049

`3/4*A001749(n+1)`
-/

namespace A001748.P4242475634769161049
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 4 * (A001749 (n + 1) : ℚ)

end

end A001748.P4242475634769161049

namespace A001748

/-- `3/4*A001749(n+1)` -/
def P4242475634769161049.Spec : Prop :=
  ∀ n, P4242475634769161049.a n = (A001748 (n + 1) : ℚ)

end A001748

/-! ## A001748.P10410051590539654176

`3/5*A001750(n+1)`
-/

namespace A001748.P10410051590539654176
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (3 : ℚ) / 5 * (A001750 (n + 1) : ℚ)

end

end A001748.P10410051590539654176

namespace A001748

/-- `3/5*A001750(n+1)` -/
def P10410051590539654176.Spec : Prop :=
  ∀ n, P10410051590539654176.a n = (A001748 (n + 1) : ℚ)

end A001748

/-! ## A001748.P12716341441352766842

`3*(A014692(n+1)+n)`
-/

namespace A001748.P12716341441352766842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (A014692 (n + 1) + (n : ℤ))

end

end A001748.P12716341441352766842

namespace A001748

/-- `3*(A014692(n+1)+n)` -/
def P12716341441352766842.Spec : Prop :=
  ∀ n, P12716341441352766842.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P8159445484732428502

`lcm(3, 3*A000040(2*n-(n-1)))`
-/

namespace A001748.P8159445484732428502
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 3 (3 * A000040 ((2 * n : ℤ) - ((n : ℤ) - 1)).toNat)

end

end A001748.P8159445484732428502

namespace A001748

/-- `lcm(3, 3*A000040(2*n-(n-1)))` -/
def P8159445484732428502.Spec : Prop :=
  ∀ n, (P8159445484732428502.a n : ℤ) = A001748 (n + 1)

end A001748

/-! ## A001748.P18011472698205775179

`A063534(n+1)+A063524(n)`
-/

namespace A001748.P18011472698205775179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063534 (n + 1) + A063524 n

end

end A001748.P18011472698205775179

namespace A001748

/-- `A063534(n+1)+A063524(n)` -/
def P18011472698205775179.Spec : Prop :=
  ∀ n, P18011472698205775179.a n = A001748 (n + 1)

end A001748

/-! ## A001748.P14018976104186050133

`A063534(n+1)-A159075(n)`
-/

namespace A001748.P14018976104186050133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063534 (n + 1) - A159075 n

end

end A001748.P14018976104186050133

namespace A001748

/-- `A063534(n+1)-A159075(n)` -/
def P14018976104186050133.Spec : Prop :=
  ∀ n, P14018976104186050133.a n = A001748 (n + 1)

end A001748

/-!
# A001749: Primes multiplied by 4.

The programs for A001749, the canonical program `A001749.P15354732416011572427` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001749 has offset 1).

The definition of A001749 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001749.P15354732416011572427

`4*p?[round(8*n/7)]`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001749

/-- `4*p?[round(8*n/7)]` -/
def P15354732416011572427.Spec : Prop :=
  ∀ n, P15354732416011572427.a n = A001749 (n + 1)

theorem P15354732416011572427.correct : P15354732416011572427.Spec := by
  intro n
  simp only [A001749, Nat.add_sub_cancel]

end A001749

/-! ## A001749.P14141192316315698901

`Δ[4*A007504(n)]`
-/

namespace A001749.P14141192316315698901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001749.P14141192316315698901

namespace A001749

/-- `Δ[4*A007504(n)]` -/
def P14141192316315698901.Spec : Prop :=
  ∀ n, P14141192316315698901.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P7001343816580359158

`2*A100484(n+1)`
-/

namespace A001749.P7001343816580359158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A100484 (n + 1)

end

end A001749.P7001343816580359158

namespace A001749

/-- `2*A100484(n+1)` -/
def P7001343816580359158.Spec : Prop :=
  ∀ n, P7001343816580359158.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P16106244962881767471

`4*A000040(n+1)`
-/

namespace A001749.P16106244962881767471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A000040 (n + 1)

end

end A001749.P16106244962881767471

namespace A001749

/-- `4*A000040(n+1)` -/
def P16106244962881767471.Spec : Prop :=
  ∀ n, P16106244962881767471.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P16080634791895496435

`A129070(n+1)-5`
-/

namespace A001749.P16080634791895496435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129070 (n + 1) - 5

end

end A001749.P16080634791895496435

namespace A001749

/-- `A129070(n+1)-5` -/
def P16080634791895496435.Spec : Prop :=
  ∀ n, P16080634791895496435.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P17922668096321895378

`lcm(4, A072900(n+1))`
-/

namespace A001749.P17922668096321895378
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 4 (A072900 (n + 1))

end

end A001749.P17922668096321895378

namespace A001749

/-- `lcm(4, A072900(n+1))` -/
def P17922668096321895378.Spec : Prop :=
  ∀ n, (P17922668096321895378.a n : ℤ) = A001749 (n + 1)

end A001749

/-! ## A001749.P11047397764810209516

`abs(Δ[4*A008348(n)])`
-/

namespace A001749.P11047397764810209516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A008348 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001749.P11047397764810209516

namespace A001749

/-- `abs(Δ[4*A008348(n)])` -/
def P11047397764810209516.Spec : Prop :=
  ∀ n, P11047397764810209516.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P2193865165395341700

`abs(Δ[4*A022837(n)])`
-/

namespace A001749.P2193865165395341700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001749.P2193865165395341700

namespace A001749

/-- `abs(Δ[4*A022837(n)])` -/
def P2193865165395341700.Spec : Prop :=
  ∀ n, P2193865165395341700.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P18278461650988305807

`abs(Δ[4*A064365(n)])`
-/

namespace A001749.P18278461650988305807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A064365 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001749.P18278461650988305807

namespace A001749

/-- `abs(Δ[4*A064365(n)])` -/
def P18278461650988305807.Spec : Prop :=
  ∀ n, P18278461650988305807.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P11638898533190859178

`2*sqrt(A069262(n+1))`
-/

namespace A001749.P11638898533190859178
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  2 * Real.sqrt (A069262 (n + 1) : ℝ)

end

end A001749.P11638898533190859178

namespace A001749

/-- `2*sqrt(A069262(n+1))` -/
def P11638898533190859178.Spec : Prop :=
  ∀ n, P11638898533190859178.a n = (A001749 (n + 1) : ℝ)

end A001749

/-! ## A001749.P12779651132571494343

`4*sqrt(A001248(n+1))`
-/

namespace A001749.P12779651132571494343
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  4 * Real.sqrt (A001248 (n + 1) : ℝ)

end

end A001749.P12779651132571494343

namespace A001749

/-- `4*sqrt(A001248(n+1))` -/
def P12779651132571494343.Spec : Prop :=
  ∀ n, P12779651132571494343.a n = (A001749 (n + 1) : ℝ)

end A001749

/-! ## A001749.P8185792668139997266

`2*(A037168(n+1)+2)`
-/

namespace A001749.P8185792668139997266
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A037168 (n + 1) + 2)

end

end A001749.P8185792668139997266

namespace A001749

/-- `2*(A037168(n+1)+2)` -/
def P8185792668139997266.Spec : Prop :=
  ∀ n, P8185792668139997266.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P12661530938315562775

`2*(A072055(n+1)-1)`
-/

namespace A001749.P12661530938315562775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A072055 (n + 1) - 1)

end

end A001749.P12661530938315562775

namespace A001749

/-- `2*(A072055(n+1)-1)` -/
def P12661530938315562775.Spec : Prop :=
  ∀ n, P12661530938315562775.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P16415309696618678051

`4*(A006093(n+1)+1)`
-/

namespace A001749.P16415309696618678051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A006093 (n + 1) + 1)

end

end A001749.P16415309696618678051

namespace A001749

/-- `4*(A006093(n+1)+1)` -/
def P16415309696618678051.Spec : Prop :=
  ∀ n, P16415309696618678051.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P16147902233058066483

`2*(A089241(n+1)-2)`
-/

namespace A001749.P16147902233058066483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A089241 (n + 1) - 2)

end

end A001749.P16147902233058066483

namespace A001749

/-- `2*(A089241(n+1)-2)` -/
def P16147902233058066483.Spec : Prop :=
  ∀ n, P16147902233058066483.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P8543255718144351347

`4*(A008864(n+1)-1)`
-/

namespace A001749.P8543255718144351347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * (A008864 (n + 1) - 1)

end

end A001749.P8543255718144351347

namespace A001749

/-- `4*(A008864(n+1)-1)` -/
def P8543255718144351347.Spec : Prop :=
  ∀ n, P8543255718144351347.a n = A001749 (n + 1)

end A001749

/-! ## A001749.P3887278851943523751

`4/3*A001748(n+1)`
-/

namespace A001749.P3887278851943523751
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 3 * (A001748 (n + 1) : ℚ)

end

end A001749.P3887278851943523751

namespace A001749

/-- `4/3*A001748(n+1)` -/
def P3887278851943523751.Spec : Prop :=
  ∀ n, P3887278851943523751.a n = (A001749 (n + 1) : ℚ)

end A001749

/-! ## A001749.P2176171900956416376

`4/5*A001750(n+1)`
-/

namespace A001749.P2176171900956416376
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) / 5 * (A001750 (n + 1) : ℚ)

end

end A001749.P2176171900956416376

namespace A001749

/-- `4/5*A001750(n+1)` -/
def P2176171900956416376.Spec : Prop :=
  ∀ n, P2176171900956416376.a n = (A001749 (n + 1) : ℚ)

end A001749

/-! ## A001749.P10855383110049764246

`A000040(C(n+1, n))/(1/2)²`
-/

namespace A001749.P10855383110049764246
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (Nat.choose (n + 1) n) : ℚ) / ((1 : ℚ) / 2) ^ 2

end

end A001749.P10855383110049764246

namespace A001749

/-- `A000040(C(n+1, n))/(1/2)²` -/
def P10855383110049764246.Spec : Prop :=
  ∀ n, P10855383110049764246.a n = (A001749 (n + 1) : ℚ)

end A001749

/-!
# A001750: Primes multiplied by 5.

The programs for A001750, the canonical program `A001750.P4133817528224649628` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001750 has offset 1).

The definition of A001750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001750.P4133817528224649628

`5*p?[a(n-1)+2]` with `a(0)=2, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001750

/-- `5*p?[a(n-1)+2]` -/
def P4133817528224649628.Spec : Prop :=
  ∀ n, (P4133817528224649628.a n : ℤ) = A001750 (n + 1)

theorem P4133817528224649628.correct : P4133817528224649628.Spec := by
  intro n
  simp only [A001750, Nat.add_sub_cancel]

end A001750

/-! ## A001750.P345082173578919829

`Δ[5*A007504(n)]`
-/

namespace A001750.P345082173578919829
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001750.P345082173578919829

namespace A001750

/-- `Δ[5*A007504(n)]` -/
def P345082173578919829.Spec : Prop :=
  ∀ n, P345082173578919829.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P6295336715307455410

`A142342(n+1)/2`
-/

namespace A001750.P6295336715307455410
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A142342 (n + 1) : ℚ) / 2

end

end A001750.P6295336715307455410

namespace A001750

/-- `A142342(n+1)/2` -/
def P6295336715307455410.Spec : Prop :=
  ∀ n, P6295336715307455410.a n = (A001750 (n + 1) : ℚ)

end A001750

/-! ## A001750.P6982348002045000748

`5*A000040(n+1)`
-/

namespace A001750.P6982348002045000748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A000040 (n + 1)

end

end A001750.P6982348002045000748

namespace A001750

/-- `5*A000040(n+1)` -/
def P6982348002045000748.Spec : Prop :=
  ∀ n, P6982348002045000748.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P5345702199418435717

`abs(Δ[5*A022837(n)])`
-/

namespace A001750.P5345702199418435717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A022837 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A001750.P5345702199418435717

namespace A001750

/-- `abs(Δ[5*A022837(n)])` -/
def P5345702199418435717.Spec : Prop :=
  ∀ n, P5345702199418435717.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P9273019109539655542

`5*sqrt(A001248(n+1))`
-/

namespace A001750.P9273019109539655542
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  5 * Real.sqrt (A001248 (n + 1) : ℝ)

end

end A001750.P9273019109539655542

namespace A001750

/-- `5*sqrt(A001248(n+1))` -/
def P9273019109539655542.Spec : Prop :=
  ∀ n, P9273019109539655542.a n = (A001750 (n + 1) : ℝ)

end A001750

/-! ## A001750.P2411367981423409214

`∑[5*A054541(n+1)]`
-/

namespace A001750.P2411367981423409214
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001750.P2411367981423409214

namespace A001750

/-- `∑[5*A054541(n+1)]` -/
def P2411367981423409214.Spec : Prop :=
  ∀ n, P2411367981423409214.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P1593367593568911466

`5*(A006093(n+1)+1)`
-/

namespace A001750.P1593367593568911466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A006093 (n + 1) + 1)

end

end A001750.P1593367593568911466

namespace A001750

/-- `5*(A006093(n+1)+1)` -/
def P1593367593568911466.Spec : Prop :=
  ∀ n, P1593367593568911466.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P3941002341140519727

`5*(A008864(n+1)-1)`
-/

namespace A001750.P3941002341140519727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A008864 (n + 1) - 1)

end

end A001750.P3941002341140519727

namespace A001750

/-- `5*(A008864(n+1)-1)` -/
def P3941002341140519727.Spec : Prop :=
  ∀ n, P3941002341140519727.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P18122962166205029293

`5*(A040976(n+1)+2)`
-/

namespace A001750.P18122962166205029293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A040976 (n + 1) + 2)

end

end A001750.P18122962166205029293

namespace A001750

/-- `5*(A040976(n+1)+2)` -/
def P18122962166205029293.Spec : Prop :=
  ∀ n, P18122962166205029293.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P2246564460257334251

`5*(A052147(n+1)-2)`
-/

namespace A001750.P2246564460257334251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A052147 (n + 1) - 2)

end

end A001750.P2246564460257334251

namespace A001750

/-- `5*(A052147(n+1)-2)` -/
def P2246564460257334251.Spec : Prop :=
  ∀ n, P2246564460257334251.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P12683033943155049283

`5*(A086801(n+1)+3)`
-/

namespace A001750.P12683033943155049283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A086801 (n + 1) + 3)

end

end A001750.P12683033943155049283

namespace A001750

/-- `5*(A086801(n+1)+3)` -/
def P12683033943155049283.Spec : Prop :=
  ∀ n, P12683033943155049283.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P3426599149982808525

`5*(A113935(n+1)-3)`
-/

namespace A001750.P3426599149982808525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A113935 (n + 1) - 3)

end

end A001750.P3426599149982808525

namespace A001750

/-- `5*(A113935(n+1)-3)` -/
def P3426599149982808525.Spec : Prop :=
  ∀ n, P3426599149982808525.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P9601706896586751035

`5/3*A001748(n+1)`
-/

namespace A001750.P9601706896586751035
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 3 * (A001748 (n + 1) : ℚ)

end

end A001750.P9601706896586751035

namespace A001750

/-- `5/3*A001748(n+1)` -/
def P9601706896586751035.Spec : Prop :=
  ∀ n, P9601706896586751035.a n = (A001750 (n + 1) : ℚ)

end A001750

/-! ## A001750.P13905632379817912573

`5/4*A001749(n+1)`
-/

namespace A001750.P13905632379817912573
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 : ℚ) / 4 * (A001749 (n + 1) : ℚ)

end

end A001750.P13905632379817912573

namespace A001750

/-- `5/4*A001749(n+1)` -/
def P13905632379817912573.Spec : Prop :=
  ∀ n, P13905632379817912573.a n = (A001750 (n + 1) : ℚ)

end A001750

/-! ## A001750.P14867437968656019016

`5*(A014692(n+1)+n)`
-/

namespace A001750.P14867437968656019016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A014692 (n + 1) + (n : ℤ))

end

end A001750.P14867437968656019016

namespace A001750

/-- `5*(A014692(n+1)+n)` -/
def P14867437968656019016.Spec : Prop :=
  ∀ n, P14867437968656019016.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P3785305706381733951

`5*(A095116(n+1)-n)`
-/

namespace A001750.P3785305706381733951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A095116 (n + 1) - (n : ℤ))

end

end A001750.P3785305706381733951

namespace A001750

/-- `5*(A095116(n+1)-n)` -/
def P3785305706381733951.Spec : Prop :=
  ∀ n, P3785305706381733951.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P7395446054597718456

`5*(A014689(n+1)+n+1)`
-/

namespace A001750.P7395446054597718456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A014689 (n + 1) + (n + 1 : ℤ))

end

end A001750.P7395446054597718456

namespace A001750

/-- `5*(A014689(n+1)+n+1)` -/
def P7395446054597718456.Spec : Prop :=
  ∀ n, P7395446054597718456.a n = A001750 (n + 1)

end A001750

/-! ## A001750.P3624850780467991358

`5*(A014688(n+1)-(n+1))`
-/

namespace A001750.P3624850780467991358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * (A014688 (n + 1) - (n + 1 : ℤ))

end

end A001750.P3624850780467991358

namespace A001750

/-- `5*(A014688(n+1)-(n+1))` -/
def P3624850780467991358.Spec : Prop :=
  ∀ n, P3624850780467991358.a n = A001750 (n + 1)

end A001750

/-!
# A001751: Primes together with primes multiplied by 2.

The programs for A001751, the canonical program `A001751.P12650919447307229598` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001751 has offset 1).

The definition of A001751 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001751.P10048656556891330980

`A290496(n)+a(n-1)` with `a(0)=2`
-/

namespace A001751.P10048656556891330980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A290496 n + a (n - 1)

end

end A001751.P10048656556891330980

namespace A001751

/-- `A290496(n)+a(n-1)` -/
def P10048656556891330980.Spec : Prop :=
  ∀ n, P10048656556891330980.a n = A001751 (n + 1)

end A001751

/-! ## A001751.P13683030819631299317

`∪[A100484(n+1), Δ[A007504(n)]]`
-/

namespace A001751.P13683030819631299317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001751.P13683030819631299317

namespace A001751

/-- `∪[A100484(n+1), Δ[A007504(n)]]` -/
def P13683030819631299317.Spec : Prop :=
  ∀ n, (P13683030819631299317.a n : ℤ) = A001751 (n + 1)

end A001751

/-! ## A001751.P3541767536272209124

`∪[A000040(n+1), A001747(n+1)]`
-/

namespace A001751.P3541767536272209124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001751.P3541767536272209124

namespace A001751

/-- `∪[A000040(n+1), A001747(n+1)]` -/
def P3541767536272209124.Spec : Prop :=
  ∀ n, (P3541767536272209124.a n : ℤ) = A001751 (n + 1)

end A001751

/-! ## A001751.P4761335622057680602

`∪[A001747(n+1), A065091(n+1)]`
-/

namespace A001751.P4761335622057680602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001751.P4761335622057680602

namespace A001751

/-- `∪[A001747(n+1), A065091(n+1)]` -/
def P4761335622057680602.Spec : Prop :=
  ∀ n, (P4761335622057680602.a n : ℤ) = A001751 (n + 1)

end A001751

/-! ## A001751.P16334765845552669846

`∪[A000040(n+1), A100484(n+1)]`
-/

namespace A001751.P16334765845552669846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001751.P16334765845552669846

namespace A001751

/-- `∪[A000040(n+1), A100484(n+1)]` -/
def P16334765845552669846.Spec : Prop :=
  ∀ n, (P16334765845552669846.a n : ℤ) = A001751 (n + 1)

end A001751

/-! ## A001751.P3304677219547493241

`∪[A001747(n+2), A008578(n+2)]`
-/

namespace A001751.P3304677219547493241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001751.P3304677219547493241

namespace A001751

/-- `∪[A001747(n+2), A008578(n+2)]` -/
def P3304677219547493241.Spec : Prop :=
  ∀ n, (P3304677219547493241.a n : ℤ) = A001751 (n + 1)

end A001751

/-! ## A001751.P10170049238682921701

`∪[A001747(n+2), A182986(n+2)]`
-/

namespace A001751.P10170049238682921701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001747 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 2)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001751.P10170049238682921701

namespace A001751

/-- `∪[A001747(n+2), A182986(n+2)]` -/
def P10170049238682921701.Spec : Prop :=
  ∀ n, (P10170049238682921701.a n : ℤ) = A001751 (n + 1)

end A001751

/-! ## A001751.P11388897727257119464

`record[A001222(n+2)*A006530(n+2)]`
-/

namespace A001751.P11388897727257119464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 2) * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001751.P11388897727257119464

namespace A001751

/-- `record[A001222(n+2)*A006530(n+2)]` -/
def P11388897727257119464.Spec : Prop :=
  ∀ n, P11388897727257119464.a n = A001751 (n + 1)

end A001751

/-! ## A001751.P7076301571401645773

`∪[A006093(n+1)+1, A100484(n+1)]`
-/

namespace A001751.P7076301571401645773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (n + 1) + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001751.P7076301571401645773

namespace A001751

/-- `∪[A006093(n+1)+1, A100484(n+1)]` -/
def P7076301571401645773.Spec : Prop :=
  ∀ n, (P7076301571401645773.a n : ℤ) = A001751 (n + 1)

end A001751

/-! ## A001751.P5303330361430307421

`∪[A008864(n+1)-1, A100484(n+1)]`
-/

namespace A001751.P5303330361430307421
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008864 (n + 1) - 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001751.P5303330361430307421

namespace A001751

/-- `∪[A008864(n+1)-1, A100484(n+1)]` -/
def P5303330361430307421.Spec : Prop :=
  ∀ n, (P5303330361430307421.a n : ℤ) = A001751 (n + 1)

end A001751

/-! ## A001751.P6010108382413567731

`∪[A040976(n+1)+2, A100484(n+1)]`
-/

namespace A001751.P6010108382413567731
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040976 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001751.P6010108382413567731

namespace A001751

/-- `∪[A040976(n+1)+2, A100484(n+1)]` -/
def P6010108382413567731.Spec : Prop :=
  ∀ n, (P6010108382413567731.a n : ℤ) = A001751 (n + 1)

end A001751

/-! ## A001751.P11033601347199119394

`∪[A052147(n+1)-2, A100484(n+1)]`
-/

namespace A001751.P11033601347199119394
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052147 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100484 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001751.P11033601347199119394

namespace A001751

/-- `∪[A052147(n+1)-2, A100484(n+1)]` -/
def P11033601347199119394.Spec : Prop :=
  ∀ n, (P11033601347199119394.a n : ℤ) = A001751 (n + 1)

end A001751

/-! ## A001751.P8890328655145056545

`∪[2*A008578(n+1), A000040(n+1)]`
-/

namespace A001751.P8890328655145056545
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A001751.P8890328655145056545

namespace A001751

/-- `∪[2*A008578(n+1), A000040(n+1)]` -/
def P8890328655145056545.Spec : Prop :=
  ∀ n, (P8890328655145056545.a n : ℤ) = A001751 (n + 1)

end A001751

/-! ## A001751.P12650919447307229598

`record[(2-A010051(n+1))*A006530(n+1)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A001751

/-- `record[(2-A010051(n+1))*A006530(n+1)]` -/
def P12650919447307229598.Spec : Prop :=
  ∀ n, P12650919447307229598.a n = A001751 (n + 1)

theorem P12650919447307229598.correct : P12650919447307229598.Spec := by
  intro n
  simp only [A001751, Nat.add_sub_cancel]

end A001751

/-! ## A001751.P4384273755974343505

`record[A000010(A000005(n+2))*A006530(n+2)]`
-/

namespace A001751.P4384273755974343505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A000005 (n + 2)).toNat * A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001751.P4384273755974343505

namespace A001751

/-- `record[A000010(A000005(n+2))*A006530(n+2)]` -/
def P4384273755974343505.Spec : Prop :=
  ∀ n, P4384273755974343505.a n = A001751 (n + 1)

end A001751

/-! ## A001751.P16719321918924527875

`filter[A066522(n+1), A101040(#)]`
-/

namespace A001751.P16719321918924527875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066522 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A001751.P16719321918924527875

namespace A001751

/-- `filter[A066522(n+1), A101040(#)]` -/
def P16719321918924527875.Spec : Prop :=
  ∀ n, P16719321918924527875.a n = A001751 (n + 1)

end A001751

/-! ## A001751.P12228997492625815022

`filter[A058363(n+1), A101040(#)]`
-/

namespace A001751.P12228997492625815022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A001751.P12228997492625815022

namespace A001751

/-- `filter[A058363(n+1), A101040(#)]` -/
def P12228997492625815022.Spec : Prop :=
  ∀ n, P12228997492625815022.a n = A001751 (n + 1)

end A001751

/-! ## A001751.P18157404437123679387

`filter[A058363(n+1), A211487(#)]`
-/

namespace A001751.P18157404437123679387
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058363 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A211487 (f1 j).toNat = 1) n)

end

end A001751.P18157404437123679387

namespace A001751

/-- `filter[A058363(n+1), A211487(#)]` -/
def P18157404437123679387.Spec : Prop :=
  ∀ n, P18157404437123679387.a n = A001751 (n + 1)

end A001751

/-!
# A001752: Expansion of 1/((1+x)*(1-x)^5).

The programs for A001752, the canonical program `A001752.P12470666414723939498` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001752 has offset 0).

The definition of A001752 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-4x+5x^2-5x^4+4x^5-x^6))` (program `A001752.P12470666414723939498`, by `A001752.P12470666414723939498.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001752.P12470666414723939498

`ogf(1/(1-4x+5x^2-5x^4+4x^5-x^6))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001752

/-- `ogf(1/(1-4x+5x^2-5x^4+4x^5-x^6))` -/
def P12470666414723939498.Spec : Prop :=
  ∀ n, P12470666414723939498.a n = A001752 n

theorem P12470666414723939498.correct : P12470666414723939498.Spec := by
  intro n
  simp only [A001752]

end A001752

/-! ## A001752.P9915114517124902281

`∑[∑[∑[∑[log2(gcd(2, n))]]]]`
-/

namespace A001752.P9915114517124902281
noncomputable section

def f4 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001752.P9915114517124902281

namespace A001752

/-- `∑[∑[∑[∑[log2(gcd(2, n))]]]]` -/
def P9915114517124902281.Spec : Prop :=
  ∀ n, P9915114517124902281.a n = (A001752 n : ℝ)

end A001752

/-! ## A001752.P12458531295130963705

`∑[∑[∑[∑[char[2*n]]]]]`
-/

namespace A001752.P12458531295130963705
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f5 j = n then 1 else 0

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001752.P12458531295130963705

namespace A001752

/-- `∑[∑[∑[∑[char[2*n]]]]]` -/
def P12458531295130963705.Spec : Prop :=
  ∀ n, (P12458531295130963705.a n : ℤ) = A001752 n

end A001752

/-! ## A001752.P14176264410636129041

`C(n+4, 4)-a(n-1)` with `a(0)=1`
-/

namespace A001752.P14176264410636129041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (n + 4) 4 : ℤ) - a (n - 1)

end

end A001752.P14176264410636129041

namespace A001752

/-- `C(n+4, 4)-a(n-1)` -/
def P14176264410636129041.Spec : Prop :=
  ∀ n, P14176264410636129041.a n = A001752 n

end A001752

/-! ## A001752.P16457551651494550974

`∑[∑[n+1]]+a(n-2)` with `a(0)=1, a(1)=4`
-/

namespace A001752.P16457551651494550974
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 4] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A001752.P16457551651494550974

namespace A001752

/-- `∑[∑[n+1]]+a(n-2)` -/
def P16457551651494550974.Spec : Prop :=
  ∀ n, (P16457551651494550974.a n : ℤ) = A001752 n

end A001752

/-! ## A001752.P870976290411825982

`floor(∑[∑[∑[∑[1-a(n-1)]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001752.P870976290411825982
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f4 =>
  1 - f4 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001752.P870976290411825982

namespace A001752

/-- `floor(∑[∑[∑[∑[1-a(n-1)]]]])` -/
def P870976290411825982.Spec : Prop :=
  ∀ n, P870976290411825982.a n = A001752 n

end A001752

/-! ## A001752.P3947388439665147382

`∑[∑[∑[∑[2-a(n-1)]]]]/2` with `a(0)=2`
-/

namespace A001752.P3947388439665147382
noncomputable section

def f4 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f4 =>
  2 - f4 (n - 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 2

end

end A001752.P3947388439665147382

namespace A001752

/-- `∑[∑[∑[∑[2-a(n-1)]]]]/2` -/
def P3947388439665147382.Spec : Prop :=
  ∀ n, P3947388439665147382.a n = (A001752 n : ℚ)

end A001752

/-! ## A001752.P1156188984748472233

`a(n-2)+4*(a(n-1)+a(n-2))/n` with `a(0)=1, a(1)=4`
-/

namespace A001752.P1156188984748472233
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 4] fun n a =>
  a (n - 2) + 4 * ((a (n - 1) + a (n - 2)) / (n : ℚ))

end

end A001752.P1156188984748472233

namespace A001752

/-- `a(n-2)+4*(a(n-1)+a(n-2))/n` -/
def P1156188984748472233.Spec : Prop :=
  ∀ n, P1156188984748472233.a n = (A001752 n : ℚ)

end A001752

/-! ## A001752.P10498620601386055182

`A006918(n)+A005994(n)`
-/

namespace A001752.P10498620601386055182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006918 n + A005994 n

end

end A001752.P10498620601386055182

namespace A001752

/-- `A006918(n)+A005994(n)` -/
def P10498620601386055182.Spec : Prop :=
  ∀ n, P10498620601386055182.a n = A001752 n

end A001752

/-! ## A001752.P13687587761864363652

`A005701(n)-A344791(n+2)`
-/

namespace A001752.P13687587761864363652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n - A344791 (n + 2)

end

end A001752.P13687587761864363652

namespace A001752

/-- `A005701(n)-A344791(n+2)` -/
def P13687587761864363652.Spec : Prop :=
  ∀ n, P13687587761864363652.a n = A001752 n

end A001752

/-! ## A001752.P17928876031993251031

`A301740(n+5)-(A005994(n)+A002621(n))`
-/

namespace A001752.P17928876031993251031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301740 (n + 5) - (A005994 n + A002621 n)

end

end A001752.P17928876031993251031

namespace A001752

/-- `A301740(n+5)-(A005994(n)+A002621(n))` -/
def P17928876031993251031.Spec : Prop :=
  ∀ n, P17928876031993251031.a n = A001752 n

end A001752

/-! ## A001752.P3081635050932453085

`A216172(n+2)+A057524(n)`
-/

namespace A001752.P3081635050932453085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216172 (n + 2) + A057524 n

end

end A001752.P3081635050932453085

namespace A001752

/-- `A216172(n+2)+A057524(n)` -/
def P3081635050932453085.Spec : Prop :=
  ∀ n, P3081635050932453085.a n = A001752 n

end A001752

/-! ## A001752.P1788265309227816183

`Δ[A001753(n)]-A002623(n+1)`
-/

namespace A001752.P1788265309227816183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002623 (n + 1)

end

end A001752.P1788265309227816183

namespace A001752

/-- `Δ[A001753(n)]-A002623(n+1)` -/
def P1788265309227816183.Spec : Prop :=
  ∀ n, P1788265309227816183.a n = A001752 n

end A001752

/-! ## A001752.P15134005668903708574

`A005994(n+1)-Δ[A002624(n)]`
-/

namespace A001752.P15134005668903708574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005994 (n + 1) - (f1 (n + 1) - f1 n)

end

end A001752.P15134005668903708574

namespace A001752

/-- `A005994(n+1)-Δ[A002624(n)]` -/
def P15134005668903708574.Spec : Prop :=
  ∀ n, P15134005668903708574.a n = A001752 n

end A001752

/-! ## A001752.P2461621543533375870

`A007009(n+2)-A002624(n+1)`
-/

namespace A001752.P2461621543533375870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007009 (n + 2) - A002624 (n + 1)

end

end A001752.P2461621543533375870

namespace A001752

/-- `A007009(n+2)-A002624(n+1)` -/
def P2461621543533375870.Spec : Prop :=
  ∀ n, P2461621543533375870.a n = A001752 n

end A001752

/-! ## A001752.P14043961661148800878

`A216175(n+2)-A216173(n+2)`
-/

namespace A001752.P14043961661148800878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216175 (n + 2) - A216173 (n + 2)

end

end A001752.P14043961661148800878

namespace A001752

/-- `A216175(n+2)-A216173(n+2)` -/
def P14043961661148800878.Spec : Prop :=
  ∀ n, P14043961661148800878.a n = A001752 n

end A001752

/-! ## A001752.P8367281095418707907

`A032091(n+6)-A006918(n+1)`
-/

namespace A001752.P8367281095418707907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032091 (n + 6) - A006918 (n + 1)

end

end A001752.P8367281095418707907

namespace A001752

/-- `A032091(n+6)-A006918(n+1)` -/
def P8367281095418707907.Spec : Prop :=
  ∀ n, P8367281095418707907.a n = A001752 n

end A001752

/-! ## A001752.P7328306163070485833

`A002624(n)+A002624(n)-A006918(n+1)`
-/

namespace A001752.P7328306163070485833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 n + (A002624 n - A006918 (n + 1))

end

end A001752.P7328306163070485833

namespace A001752

/-- `A002624(n)+A002624(n)-A006918(n+1)` -/
def P7328306163070485833.Spec : Prop :=
  ∀ n, P7328306163070485833.a n = A001752 n

end A001752

/-! ## A001752.P17339151933071624124

`A001753(n+1)-(A002623(n+1)+A001753(n))`
-/

namespace A001752.P17339151933071624124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 (n + 1) - (A002623 (n + 1) + A001753 n)

end

end A001752.P17339151933071624124

namespace A001752

/-- `A001753(n+1)-(A002623(n+1)+A001753(n))` -/
def P17339151933071624124.Spec : Prop :=
  ∀ n, P17339151933071624124.a n = A001752 n

end A001752

/-! ## A001752.P134878106676968608

`A002624(n+1)+A002624(n)-A002623(n+1)`
-/

namespace A001752.P134878106676968608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002624 (n + 1) + (A002624 n - A002623 (n + 1))

end

end A001752.P134878106676968608

namespace A001752

/-- `A002624(n+1)+A002624(n)-A002623(n+1)` -/
def P134878106676968608.Spec : Prop :=
  ∀ n, P134878106676968608.a n = A001752 n

end A001752

/-!
# A001753: Expansion of 1/((1+x)*(1-x)^6).

The programs for A001753, the canonical program `A001753.P13219616173929067294` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001753 has offset 0).

The definition of A001753 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-5x+9x^2-5x^3-5x^4+9x^5-5x^6+x^7))` (program `A001753.P13219616173929067294`, by `A001753.P13219616173929067294.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001753.P13219616173929067294

`ogf(1/(1-5x+9x^2-5x^3-5x^4+9x^5-5x^6+x^7))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001753

/-- `ogf(1/(1-5x+9x^2-5x^3-5x^4+9x^5-5x^6+x^7))` -/
def P13219616173929067294.Spec : Prop :=
  ∀ n, P13219616173929067294.a n = A001753 n

theorem P13219616173929067294.correct : P13219616173929067294.Spec := by
  intro n
  simp only [A001753]

end A001753

/-! ## A001753.P11134082108427497459

`∑[∑[∑[∑[∑[log2(gcd(2, n))]]]]]`
-/

namespace A001753.P11134082108427497459
noncomputable section

def f5 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f4 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001753.P11134082108427497459

namespace A001753

/-- `∑[∑[∑[∑[∑[log2(gcd(2, n))]]]]]` -/
def P11134082108427497459.Spec : Prop :=
  ∀ n, P11134082108427497459.a n = (A001753 n : ℝ)

end A001753

/-! ## A001753.P6891719244013387083

`∑[∑[∑[∑[∑[char[2*n]]]]]]`
-/

namespace A001753.P6891719244013387083
noncomputable section

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f6 j = n then 1 else 0

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001753.P6891719244013387083

namespace A001753

/-- `∑[∑[∑[∑[∑[char[2*n]]]]]]` -/
def P6891719244013387083.Spec : Prop :=
  ∀ n, (P6891719244013387083.a n : ℤ) = A001753 n

end A001753

/-! ## A001753.P4863652508666286598

`C(n+5, 5)-a(n-1)` with `a(0)=1`
-/

namespace A001753.P4863652508666286598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (n + 5) 5 : ℤ) - a (n - 1)

end

end A001753.P4863652508666286598

namespace A001753

/-- `C(n+5, 5)-a(n-1)` -/
def P4863652508666286598.Spec : Prop :=
  ∀ n, P4863652508666286598.a n = A001753 n

end A001753

/-! ## A001753.P8257726179052483752

`∑[∑[∑[n+1]]]+a(n-2)` with `a(0)=1, a(1)=5`
-/

namespace A001753.P8257726179052483752
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 5] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j + a (n - 2)

end

end A001753.P8257726179052483752

namespace A001753

/-- `∑[∑[∑[n+1]]]+a(n-2)` -/
def P8257726179052483752.Spec : Prop :=
  ∀ n, (P8257726179052483752.a n : ℤ) = A001753 n

end A001753

/-! ## A001753.P9770007171378694054

`floor(∑[∑[∑[∑[∑[1-a(n-1)]]]]])` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001753.P9770007171378694054
noncomputable section

def f5 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f5 =>
  1 - f5 (n - 1)

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001753.P9770007171378694054

namespace A001753

/-- `floor(∑[∑[∑[∑[∑[1-a(n-1)]]]]])` -/
def P9770007171378694054.Spec : Prop :=
  ∀ n, P9770007171378694054.a n = A001753 n

end A001753

/-! ## A001753.P15736486404332805009

`∑[∑[5*A002623(n)]]/5`
-/

namespace A001753.P15736486404332805009
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  5 * A002623 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A001753.P15736486404332805009

namespace A001753

/-- `∑[∑[5*A002623(n)]]/5` -/
def P15736486404332805009.Spec : Prop :=
  ∀ n, P15736486404332805009.a n = (A001753 n : ℚ)

end A001753

/-! ## A001753.P6505669241807647569

`2*A028346(n)-A002624(n)`
-/

namespace A001753.P6505669241807647569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028346 n - A002624 n

end

end A001753.P6505669241807647569

namespace A001753

/-- `2*A028346(n)-A002624(n)` -/
def P6505669241807647569.Spec : Prop :=
  ∀ n, P6505669241807647569.a n = A001753 n

end A001753

/-! ## A001753.P10737824088311473092

`∑[A001752(n)]%A001769(n+1)`
-/

namespace A001753.P10737824088311473092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A001769 (n + 1))

end

end A001753.P10737824088311473092

namespace A001753

/-- `∑[A001752(n)]%A001769(n+1)` -/
def P10737824088311473092.Spec : Prop :=
  ∀ n, P10737824088311473092.a n = A001753 n

end A001753

/-! ## A001753.P5111859268507164581

`∑[A001752(n)]+val(A000002(n+1), 4)`
-/

namespace A001753.P5111859268507164581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001752 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (SequenceMachineLib.valuation (A000002 (n + 1)).toNat 4 : ℤ)

end

end A001753.P5111859268507164581

namespace A001753

/-- `∑[A001752(n)]+val(A000002(n+1), 4)` -/
def P5111859268507164581.Spec : Prop :=
  ∀ n, P5111859268507164581.a n = A001753 n

end A001753

/-! ## A001753.P6259615085965856090

`∑[A032091(n+6)]-A032091(n+6)/2`
-/

namespace A001753.P6259615085965856090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032091 (n + 6)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) - (A032091 (n + 6) : ℚ) / 2

end

end A001753.P6259615085965856090

namespace A001753

/-- `∑[A032091(n+6)]-A032091(n+6)/2` -/
def P6259615085965856090.Spec : Prop :=
  ∀ n, P6259615085965856090.a n = (A001753 n : ℚ)

end A001753

/-! ## A001753.P15715051722727635365

`A001769(n+1)-(A001769(n)+A001752(n+1))`
-/

namespace A001753.P15715051722727635365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 (n + 1) - (A001769 n + A001752 (n + 1))

end

end A001753.P15715051722727635365

namespace A001753

/-- `A001769(n+1)-(A001769(n)+A001752(n+1))` -/
def P15715051722727635365.Spec : Prop :=
  ∀ n, P15715051722727635365.a n = A001753 n

end A001753

/-! ## A001753.P9391918918466987668

`A028346(n+1)+A028346(n)-A001752(n+1)`
-/

namespace A001753.P9391918918466987668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028346 (n + 1) + (A028346 n - A001752 (n + 1))

end

end A001753.P9391918918466987668

namespace A001753

/-- `A028346(n+1)+A028346(n)-A001752(n+1)` -/
def P9391918918466987668.Spec : Prop :=
  ∀ n, P9391918918466987668.a n = A001753 n

end A001753

/-! ## A001753.P10305800437769098977

`A244869(n+2)-A061927(n+3)`
-/

namespace A001753.P10305800437769098977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244869 (n + 2) - A061927 (n + 3)

end

end A001753.P10305800437769098977

namespace A001753

/-- `A244869(n+2)-A061927(n+3)` -/
def P10305800437769098977.Spec : Prop :=
  ∀ n, P10305800437769098977.a n = A001753 n

end A001753

/-! ## A001753.P12593680882797444694

`A158909(∑[n+2]+3)`
-/

namespace A001753.P12593680882797444694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158909 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A001753.P12593680882797444694

namespace A001753

/-- `A158909(∑[n+2]+3)` -/
def P12593680882797444694.Spec : Prop :=
  ∀ n, P12593680882797444694.a n = A001753 n

end A001753

/-! ## A001753.P5158111038459103509

`A092879(∑[n+3])`
-/

namespace A001753.P5158111038459103509
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092879 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001753.P5158111038459103509

namespace A001753

/-- `A092879(∑[n+3])` -/
def P5158111038459103509.Spec : Prop :=
  ∀ n, P5158111038459103509.a n = A001753 n

end A001753

/-! ## A001753.P568271403136618519

`A035317(A000096(n+3)+n+1)`
-/

namespace A001753.P568271403136618519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035317 (A000096 (n + 3) + (n + 1 : ℤ)).toNat

end

end A001753.P568271403136618519

namespace A001753

/-- `A035317(A000096(n+3)+n+1)` -/
def P568271403136618519.Spec : Prop :=
  ∀ n, P568271403136618519.a n = A001753 n

end A001753

/-!
# A001754: Lah numbers: a(n) = n!*binomial(n-1,2)/6.

The programs for A001754, the canonical program `A001754.P13932366453656870782` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001754 has offset 1).

The definition of A001754 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001754.P13932366453656870782

`n!*C(n+1, 3)/2`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001754

/-- `n!*C(n+1, 3)/2` -/
def P13932366453656870782.Spec : Prop :=
  ∀ n, P13932366453656870782.a n = (A001754 (n + 1) : ℚ)

end A001754

/-! ## A001754.P17292995507918207432

`(n-1)*n*(n+1)!/12`
-/

namespace A001754.P17292995507918207432
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((n : ℤ) - 1) * (n * Nat.factorial (n + 1) : ℤ) : ℚ) / 12

end

end A001754.P17292995507918207432

namespace A001754

/-- `(n-1)*n*(n+1)!/12` -/
def P17292995507918207432.Spec : Prop :=
  ∀ n, P17292995507918207432.a n = (A001754 (n + 1) : ℚ)

end A001754

/-! ## A001754.P17633624435941962025

`∑[C(n, 2)]/2*n!`
-/

namespace A001754.P17633624435941962025
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 2 * (Nat.factorial n : ℚ)

end

end A001754.P17633624435941962025

namespace A001754

/-- `∑[C(n, 2)]/2*n!` -/
def P17633624435941962025.Spec : Prop :=
  ∀ n, P17633624435941962025.a n = (A001754 (n + 1) : ℚ)

end A001754

/-! ## A001754.P16952993843433320545

`n!/2*∑[∑[n]-n]`
-/

namespace A001754.P16952993843433320545
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) - (n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℚ) / 2 * ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ)

end

end A001754.P16952993843433320545

namespace A001754

/-- `n!/2*∑[∑[n]-n]` -/
def P16952993843433320545.Spec : Prop :=
  ∀ n, P16952993843433320545.a n = (A001754 (n + 1) : ℚ)

end A001754

/-! ## A001754.P16486853697317202345

`a(n-1)/(n-2)*∑[2*n]` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A001754.P16486853697317202345
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) / ((n : ℤ) - 2 : ℚ) * ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A001754.P16486853697317202345

namespace A001754

/-- `a(n-1)/(n-2)*∑[2*n]` -/
def P16486853697317202345.Spec : Prop :=
  ∀ n, P16486853697317202345.a n = (A001754 (n + 1) : ℚ)

end A001754

/-! ## A001754.P18076640366460070703

`(n+1)*A001809(n)/3`
-/

namespace A001754.P18076640366460070703
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℤ) * A001809 n : ℚ) / 3

end

end A001754.P18076640366460070703

namespace A001754

/-- `(n+1)*A001809(n)/3` -/
def P18076640366460070703.Spec : Prop :=
  ∀ n, P18076640366460070703.a n = (A001754 (n + 1) : ℚ)

end A001754

/-! ## A001754.P5250667092022238246

`A271703(A253145(n)+3)`
-/

namespace A001754.P5250667092022238246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A253145 n + 3).toNat

end

end A001754.P5250667092022238246

namespace A001754

/-- `A271703(A253145(n)+3)` -/
def P5250667092022238246.Spec : Prop :=
  ∀ n, P5250667092022238246.a n = A001754 (n + 1)

end A001754

/-! ## A001754.P4856884832242087578

`∑[A161680(n)]*A001710(n)`
-/

namespace A001754.P4856884832242087578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A001710 n

end

end A001754.P4856884832242087578

namespace A001754

/-- `∑[A161680(n)]*A001710(n)` -/
def P4856884832242087578.Spec : Prop :=
  ∀ n, P4856884832242087578.a n = A001754 (n + 1)

end A001754

/-! ## A001754.P17930398399558700968

`A001809(n)+3*A001810(n)`
-/

namespace A001754.P17930398399558700968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001809 n + 3 * A001810 n

end

end A001754.P17930398399558700968

namespace A001754

/-- `A001809(n)+3*A001810(n)` -/
def P17930398399558700968.Spec : Prop :=
  ∀ n, P17930398399558700968.a n = A001754 (n + 1)

end A001754

/-! ## A001754.P14538247073545602563

`A271703(A038722(A034856(n+1)))`
-/

namespace A001754.P14538247073545602563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (A038722 (A034856 (n + 1)).toNat).toNat

end

end A001754.P14538247073545602563

namespace A001754

/-- `A271703(A038722(A034856(n+1)))` -/
def P14538247073545602563.Spec : Prop :=
  ∀ n, P14538247073545602563.a n = A001754 (n + 1)

end A001754

/-!
# A001755: Lah numbers: a(n) = n! * binomial(n-1, 3)/4!.

The programs for A001755, the canonical program `A001755.P3433470889744630281` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001755 has offset 4).

The definition of A001755 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001755.P3433470889744630281

`(n+3)!*C(n+4, 4)/6`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001755

/-- `(n+3)!*C(n+4, 4)/6` -/
def P3433470889744630281.Spec : Prop :=
  ∀ n, P3433470889744630281.a n = (A001755 (n + 4) : ℚ)

end A001755

/-! ## A001755.P328312161094751726

`C(n+4, 4)/3*∏[n+3]`
-/

namespace A001755.P328312161094751726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 4) 4 : ℚ) / 3 * ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ)

end

end A001755.P328312161094751726

namespace A001755

/-- `C(n+4, 4)/3*∏[n+3]` -/
def P328312161094751726.Spec : Prop :=
  ∀ n, P328312161094751726.a n = (A001755 (n + 4) : ℚ)

end A001755

/-! ## A001755.P13938459422839182930

`∏[n+4]/4*∑[∑[n+1]]`
-/

namespace A001755.P13938459422839182930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4 * ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℚ)

end

end A001755.P13938459422839182930

namespace A001755

/-- `∏[n+4]/4*∑[∑[n+1]]` -/
def P13938459422839182930.Spec : Prop :=
  ∀ n, P13938459422839182930.a n = (A001755 (n + 4) : ℚ)

end A001755

/-! ## A001755.P12301578385852161467

`floor(∏[n+4]/4*A000292(n+1))`
-/

namespace A001755.P12301578385852161467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4 * (A000292 (n + 1) : ℚ)⌋

end

end A001755.P12301578385852161467

namespace A001755

/-- `floor(∏[n+4]/4*A000292(n+1))` -/
def P12301578385852161467.Spec : Prop :=
  ∀ n, P12301578385852161467.a n = A001755 (n + 4)

end A001755

/-! ## A001755.P5403298357135547360

`ceil(∏[n+4]/4*A058187(2*n))`
-/

namespace A001755.P5403298357135547360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 4 * (A058187 (2 * n) : ℚ)⌉

end

end A001755.P5403298357135547360

namespace A001755

/-- `ceil(∏[n+4]/4*A058187(2*n))` -/
def P5403298357135547360.Spec : Prop :=
  ∀ n, P5403298357135547360.a n = A001755 (n + 4)

end A001755

/-! ## A001755.P15846320061531940212

`A105278(A052905(n)+9)`
-/

namespace A001755.P15846320061531940212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A052905 n + 9).toNat

end

end A001755.P15846320061531940212

namespace A001755

/-- `A105278(A052905(n)+9)` -/
def P15846320061531940212.Spec : Prop :=
  ∀ n, P15846320061531940212.a n = A001755 (n + 4)

end A001755

/-! ## A001755.P16749965443158501191

`A105278(A055999(n)+10)`
-/

namespace A001755.P16749965443158501191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A055999 n + 10).toNat

end

end A001755.P16749965443158501191

namespace A001755

/-- `A105278(A055999(n)+10)` -/
def P16749965443158501191.Spec : Prop :=
  ∀ n, P16749965443158501191.a n = A001755 (n + 4)

end A001755

/-! ## A001755.P17603609431451793908

`A271703(eq[4, A002262(n)])`
-/

namespace A001755.P17603609431451793908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271703 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001755.P17603609431451793908

namespace A001755

/-- `A271703(eq[4, A002262(n)])` -/
def P17603609431451793908.Spec : Prop :=
  ∀ n, P17603609431451793908.a n = A001755 (n + 4)

end A001755

/-! ## A001755.P16207437640262310327

`A105278(A167614(n+2)+1)`
-/

namespace A001755.P16207437640262310327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A167614 (n + 2) + 1).toNat

end

end A001755.P16207437640262310327

namespace A001755

/-- `A105278(A167614(n+2)+1)` -/
def P16207437640262310327.Spec : Prop :=
  ∀ n, P16207437640262310327.a n = A001755 (n + 4)

end A001755

/-! ## A001755.P14173394046091400510

`A105278(A166136(n+2)-2)`
-/

namespace A001755.P14173394046091400510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A166136 (n + 2) - 2).toNat

end

end A001755.P14173394046091400510

namespace A001755

/-- `A105278(A166136(n+2)-2)` -/
def P14173394046091400510.Spec : Prop :=
  ∀ n, P14173394046091400510.a n = A001755 (n + 4)

end A001755

/-!
# A001756: a(n) = A059366(n,n-3) = A059366(n,3) for n >= 3, where the triangle A059366 arises from the expansion of a trigonometric integral.

The programs for A001756, the canonical program `A001756.P11547815077771863898` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001756 has offset 3).

The definition of A001756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001756.P11547815077771863898

`a(n-1)*(n+3)*(2*(n+3)-7)/n` with `a(0)=15`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001756

/-- `a(n-1)*(n+3)*(2*(n+3)-7)/n` -/
def P11547815077771863898.Spec : Prop :=
  ∀ n, P11547815077771863898.a n = (A001756 (n + 3) : ℚ)

end A001756

/-! ## A001756.P14395767222169203089

`5*A007531(n+3)*A001147(n+1)/(2*(2*(n+3)-5))`
-/

namespace A001756.P14395767222169203089
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (5 * A007531 (n + 3) * A001147 (n + 1) : ℚ) / (2 * ((2 * (n + 3) : ℤ) - 5) : ℚ)

end

end A001756.P14395767222169203089

namespace A001756

/-- `5*A007531(n+3)*A001147(n+1)/(2*(2*(n+3)-5))` -/
def P14395767222169203089.Spec : Prop :=
  ∀ n, P14395767222169203089.a n = (A001756 (n + 3) : ℚ)

end A001756

/-! ## A001756.P15562971603757040453

`A059366(∑[n+3]+n+3)`
-/

namespace A001756.P15562971603757040453
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (∑ j ∈ Finset.range (n + 1), f1 j + (n + 3))

end

end A001756.P15562971603757040453

namespace A001756

/-- `A059366(∑[n+3]+n+3)` -/
def P15562971603757040453.Spec : Prop :=
  ∀ n, P15562971603757040453.a n = A001756 (n + 3)

end A001756

/-! ## A001756.P4660337332536032717

`∑[∑[15*(n+1)]]*A001147(n)`
-/

namespace A001756.P4660337332536032717
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  15 * (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A001147 n

end

end A001756.P4660337332536032717

namespace A001756

/-- `∑[∑[15*(n+1)]]*A001147(n)` -/
def P4660337332536032717.Spec : Prop :=
  ∀ n, P4660337332536032717.a n = A001756 (n + 3)

end A001756

/-! ## A001756.P2159093006012485216

`A059366(A167614(n+2))+A000007(n+1)`
-/

namespace A001756.P2159093006012485216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (A167614 (n + 2)).toNat + A000007 (n + 1)

end

end A001756.P2159093006012485216

namespace A001756

/-- `A059366(A167614(n+2))+A000007(n+1)` -/
def P2159093006012485216.Spec : Prop :=
  ∀ n, P2159093006012485216.a n = A001756 (n + 3)

end A001756

/-! ## A001756.P1204131200232478235

`A059366(A052905(n)+8)+A000007(n+1)`
-/

namespace A001756.P1204131200232478235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (A052905 n + 8).toNat + A000007 (n + 1)

end

end A001756.P1204131200232478235

namespace A001756

/-- `A059366(A052905(n)+8)+A000007(n+1)` -/
def P1204131200232478235.Spec : Prop :=
  ∀ n, P1204131200232478235.a n = A001756 (n + 3)

end A001756

/-! ## A001756.P2566491856799810228

`A059366(A167614(n+2))+A008602(n)%2`
-/

namespace A001756.P2566491856799810228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (A167614 (n + 2)).toNat + Int.tmod (A008602 n) 2

end

end A001756.P2566491856799810228

namespace A001756

/-- `A059366(A167614(n+2))+A008602(n)%2` -/
def P2566491856799810228.Spec : Prop :=
  ∀ n, P2566491856799810228.a n = A001756 (n + 3)

end A001756

/-! ## A001756.P2031171013287971897

`A001222(A007918(n))*A059366(A167614(n+2))`
-/

namespace A001756.P2031171013287971897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007918 n).toNat * A059366 (A167614 (n + 2)).toNat

end

end A001756.P2031171013287971897

namespace A001756

/-- `A001222(A007918(n))*A059366(A167614(n+2))` -/
def P2031171013287971897.Spec : Prop :=
  ∀ n, P2031171013287971897.a n = A001756 (n + 3)

end A001756

/-! ## A001756.P11212697896008887163

`A059366(A167614(n+2))+A035930(n)*A055641(n)`
-/

namespace A001756.P11212697896008887163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (A167614 (n + 2)).toNat + A035930 n * A055641 n

end

end A001756.P11212697896008887163

namespace A001756

/-- `A059366(A167614(n+2))+A035930(n)*A055641(n)` -/
def P11212697896008887163.Spec : Prop :=
  ∀ n, P11212697896008887163.a n = A001756 (n + 3)

end A001756

/-!
# A001757: Expansion of an integral: central elements of rows of triangle in A059366.

The programs for A001757, the canonical program `A001757.P7535876328931661964` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001757 has offset 0).

The definition of A001757 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001757.P7535876328931661964

`A000984(floor(n/2))*A000984(ceil(n/2))*A000142(n)/A000079(n)`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A001757

/-- `A000984(floor(n/2))*A000984(ceil(n/2))*A000142(n)/A000079(n)` -/
def P7535876328931661964.Spec : Prop :=
  ∀ n, P7535876328931661964.a n = (A001757 n : ℚ)

end A001757

/-! ## A001757.P9333107885516918683

`∏[abs(or(1, -n))]*A001405(n)`
-/

namespace A001757.P9333107885516918683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.lor 1 (-(n : ℤ))|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∏ j ∈ Finset.range (n + 1), f1 j) * A001405 n

end

end A001757.P9333107885516918683

namespace A001757

/-- `∏[abs(or(1, -n))]*A001405(n)` -/
def P9333107885516918683.Spec : Prop :=
  ∀ n, P9333107885516918683.a n = A001757 n

end A001757

/-! ## A001757.P6524835603358014843

`A059366(A194274(n))`
-/

namespace A001757.P6524835603358014843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (A194274 n).toNat

end

end A001757.P6524835603358014843

namespace A001757

/-- `A059366(A194274(n))` -/
def P6524835603358014843.Spec : Prop :=
  ∀ n, P6524835603358014843.a n = A001757 n

end A001757

/-! ## A001757.P1440868005289287873

`A059366(A007590(n+1))`
-/

namespace A001757.P1440868005289287873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (A007590 (n + 1)).toNat

end

end A001757.P1440868005289287873

namespace A001757

/-- `A059366(A007590(n+1))` -/
def P1440868005289287873.Spec : Prop :=
  ∀ n, P1440868005289287873.a n = A001757 n

end A001757

/-! ## A001757.P2310214398095609605

`A059366(A080476(n+1))`
-/

namespace A001757.P2310214398095609605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (A080476 (n + 1)).toNat

end

end A001757.P2310214398095609605

namespace A001757

/-- `A059366(A080476(n+1))` -/
def P2310214398095609605.Spec : Prop :=
  ∀ n, P2310214398095609605.a n = A001757 n

end A001757

/-! ## A001757.P1180549916672111877

`A000246(n)*A001405(n)`
-/

namespace A001757.P1180549916672111877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000246 n * A001405 n

end

end A001757.P1180549916672111877

namespace A001757

/-- `A000246(n)*A001405(n)` -/
def P1180549916672111877.Spec : Prop :=
  ∀ n, P1180549916672111877.a n = A001757 n

end A001757

/-! ## A001757.P14671992572741110293

`A059366(A245710((n+1)²))`
-/

namespace A001757.P14671992572741110293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (A245710 ((n + 1) ^ 2)).toNat

end

end A001757.P14671992572741110293

namespace A001757

/-- `A059366(A245710((n+1)²))` -/
def P14671992572741110293.Spec : Prop :=
  ∀ n, P14671992572741110293.a n = A001757 n

end A001757

/-! ## A001757.P16622546419782171090

`A059366(record[2*A079904(n)])`
-/

namespace A001757.P16622546419782171090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A079904 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001757.P16622546419782171090

namespace A001757

/-- `A059366(record[2*A079904(n)])` -/
def P16622546419782171090.Spec : Prop :=
  ∀ n, P16622546419782171090.a n = A001757 n

end A001757

/-! ## A001757.P10616846425690315431

`A059366(∑[A000035(n)+n])`
-/

namespace A001757.P10616846425690315431
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A001757.P10616846425690315431

namespace A001757

/-- `A059366(∑[A000035(n)+n])` -/
def P10616846425690315431.Spec : Prop :=
  ∀ n, P10616846425690315431.a n = A001757 n

end A001757

/-! ## A001757.P2461279398859621998

`A059366(2*A076921(n+1))`
-/

namespace A001757.P2461279398859621998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059366 (2 * A076921 (n + 1)).toNat

end

end A001757.P2461279398859621998

namespace A001757

/-- `A059366(2*A076921(n+1))` -/
def P2461279398859621998.Spec : Prop :=
  ∀ n, P2461279398859621998.a n = A001757 n

end A001757

/-!
# A001758: Number of quasi-alternating permutations of length n.

The programs for A001758, there is no canonical definition to state claims against.
-/

/-! ## A001758.P9807143152220045037

`A001250(n+3)-2*A001250(n+2)`
-/

namespace A001758.P9807143152220045037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (n + 3) - 2 * A001250 (n + 2)

end

end A001758.P9807143152220045037

/-! ## A001758.P4367623570176834109

`2*A000708(n+2)`
-/

namespace A001758.P4367623570176834109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A000708 (n + 2)

end

end A001758.P4367623570176834109

/-! ## A001758.P1187161501115814654

`record[A000708(n)*A130130(n)]`
-/

namespace A001758.P1187161501115814654
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000708 n * A130130 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001758.P1187161501115814654

/-! ## A001758.P3389970413667528152

`A226435(n+2)-A001250(n+2)`
-/

namespace A001758.P3389970413667528152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226435 (n + 2) - A001250 (n + 2)

end

end A001758.P3389970413667528152

/-! ## A001758.P16472290552609047196

`Δ[Δ[A001250(n+1)]]-A001250(n+1)`
-/

namespace A001758.P16472290552609047196
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001250 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A001250 (n + 1)

end

end A001758.P16472290552609047196

/-! ## A001758.P5886644137449862014

`A226441(A000096(n+2))-A001250(n+2)`
-/

namespace A001758.P5886644137449862014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226441 (A000096 (n + 2)).toNat - A001250 (n + 2)

end

end A001758.P5886644137449862014

/-!
# A001759: Number of permutations of [n] with n-3 sequences.

The programs for A001759, there is no canonical definition to state claims against.
-/

/-! ## A001759.P8769146842009094807

`A226436(n+4)-A226435(n+4)`
-/

namespace A001759.P8769146842009094807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226436 (n + 4) - A226435 (n + 4)

end

end A001759.P8769146842009094807

/-! ## A001759.P6904981651624533763

`A059427(∑[n+3]+2)`
-/

namespace A001759.P6904981651624533763
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059427 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A001759.P6904981651624533763

/-! ## A001759.P5168490871471707116

`record[2*A008970(A198455(n+1))]`
-/

namespace A001759.P5168490871471707116
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A008970 (A198455 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001759.P5168490871471707116

/-! ## A001759.P8854006760590960979

`2*A091303(n+1)`
-/

namespace A001759.P8854006760590960979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A091303 (n + 1)

end

end A001759.P8854006760590960979

/-! ## A001759.P8281169637649251696

`A091303(n+1)+A091303(A291769(n))`
-/

namespace A001759.P8281169637649251696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091303 (n + 1) + A091303 (A291769 n).toNat

end

end A001759.P8281169637649251696

/-!
# A001760: Number of permutations of [n] with n-4 sequences.

The programs for A001760, there is no canonical definition to state claims against.
-/

/-! ## A001760.P5437088746515026192

`A226437(n+5)-A226436(n+5)`
-/

namespace A001760.P5437088746515026192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226437 (n + 5) - A226436 (n + 5)

end

end A001760.P5437088746515026192

/-! ## A001760.P8254641461458084484

`A059427((n+3)²-∑[n+1])`
-/

namespace A001760.P8254641461458084484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059427 ((n + 3) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001760.P8254641461458084484

/-! ## A001760.P15578894559587723933

`lcm(2, A059427(A034856(n+3)))`
-/

namespace A001760.P15578894559587723933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A059427 (A034856 (n + 3)).toNat)

end

end A001760.P15578894559587723933

/-! ## A001760.P12028652587274752565

`or(A000038(n), A059427(A034856(n+3)))`
-/

namespace A001760.P12028652587274752565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000038 n) (A059427 (A034856 (n + 3)).toNat)

end

end A001760.P12028652587274752565

/-! ## A001760.P7126779405781821998

`record[A059427(A198464(n+2))]`
-/

namespace A001760.P7126779405781821998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059427 (A198464 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001760.P7126779405781821998

/-!
# A001761: a(n) = (2*n)!/(n+1)!.

The programs for A001761, the canonical program `A001761.P10294266062950325525` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001761 has offset 0).

The definition of A001761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001761.P10294266062950325525

`n!*A000108(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001761

/-- `n!*A000108(n)` -/
def P10294266062950325525.Spec : Prop :=
  ∀ n, P10294266062950325525.a n = A001761 n

theorem P10294266062950325525.correct : P10294266062950325525.Spec := by
  intro n
  simp only [A001761]

end A001761

/-! ## A001761.P6111851038271118161

`(2*n)!/(n+1)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001761.P6111851038271118161
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * n) : ℚ) / (Nat.factorial (n + 1) : ℚ)

end

end A001761.P6111851038271118161

namespace A001761

/-- `(2*n)!/(n+1)!` -/
def P6111851038271118161.Spec : Prop :=
  ∀ n, P6111851038271118161.a n = (A001761 n : ℚ)

end A001761

/-! ## A001761.P18319757441803985011

`n*(4-6/(n+1))*a(n-1)` with `a(0)=1`
-/

namespace A001761.P18319757441803985011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℚ) * ((4 - 6 / (n + 1 : ℚ)) * a (n - 1))

end

end A001761.P18319757441803985011

namespace A001761

/-- `n*(4-6/(n+1))*a(n-1)` -/
def P18319757441803985011.Spec : Prop :=
  ∀ n, P18319757441803985011.a n = (A001761 n : ℚ)

end A001761

/-! ## A001761.P9259622770644632601

`∏[abs(1-2*n)]/(n+1)*2^n`
-/

namespace A001761.P9259622770644632601
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (2 * n : ℤ)|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / (n + 1 : ℚ) * (2 ^ n : ℚ)

end

end A001761.P9259622770644632601

namespace A001761

/-- `∏[abs(1-2*n)]/(n+1)*2^n` -/
def P9259622770644632601.Spec : Prop :=
  ∀ n, P9259622770644632601.a n = (A001761 n : ℚ)

end A001761

/-! ## A001761.P13818542504266243310

`abs(A292220(n))`
-/

namespace A001761.P13818542504266243310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A292220 n|

end

end A001761.P13818542504266243310

namespace A001761

/-- `abs(A292220(n))` -/
def P13818542504266243310.Spec : Prop :=
  ∀ n, P13818542504266243310.a n = A001761 n

end A001761

/-! ## A001761.P13586621983193384611

`A048870(∑[n])`
-/

namespace A001761.P13586621983193384611
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048870 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001761.P13586621983193384611

namespace A001761

/-- `A048870(∑[n])` -/
def P13586621983193384611.Spec : Prop :=
  ∀ n, P13586621983193384611.a n = A001761 n

end A001761

/-! ## A001761.P4528121476897178415

`A262033(2*n)`
-/

namespace A001761.P4528121476897178415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262033 (2 * n)

end

end A001761.P4528121476897178415

namespace A001761

/-- `A262033(2*n)` -/
def P4528121476897178415.Spec : Prop :=
  ∀ n, P4528121476897178415.a n = A001761 n

end A001761

/-! ## A001761.P4265297180741603673

`A262034(2*n)`
-/

namespace A001761.P4265297180741603673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262034 (2 * n)

end

end A001761.P4265297180741603673

namespace A001761

/-- `A262034(2*n)` -/
def P4265297180741603673.Spec : Prop :=
  ∀ n, P4265297180741603673.a n = A001761 n

end A001761

/-! ## A001761.P16793426779341041618

`∏[A118239(n+1)/(n+1)]`
-/

namespace A001761.P16793426779341041618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A118239 (n + 1) : ℚ) / (n + 1 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001761.P16793426779341041618

namespace A001761

/-- `∏[A118239(n+1)/(n+1)]` -/
def P16793426779341041618.Spec : Prop :=
  ∀ n, P16793426779341041618.a n = (A001761 n : ℚ)

end A001761

/-! ## A001761.P8463414185533397033

`∏[a(n-1)+4]/(n+1)` with `a(0)=1, a(1)=2`
-/

namespace A001761.P8463414185533397033
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f1 =>
  f1 (n - 1) + 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (n + 1 : ℚ)

end

end A001761.P8463414185533397033

namespace A001761

/-- `∏[a(n-1)+4]/(n+1)` -/
def P8463414185533397033.Spec : Prop :=
  ∀ n, P8463414185533397033.a n = (A001761 n : ℚ)

end A001761

/-!
# A001762: Number of labeled n-vertex dissections of a ball.

The programs for A001762, there is no canonical definition to state claims against.
-/

/-! ## A001762.P15469474952428629398

`A006093(A006395(2*n))`
-/

namespace A001762.P15469474952428629398
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (A006395 (2 * n)).toNat

end

end A001762.P15469474952428629398

/-!
# A001763: a(n) = (3n+3)!/(2n+3)!.

The programs for A001763, there is no canonical definition to state claims against.
-/

/-! ## A001763.P5721347364139945984

`(3*(n-1)+3)!/(2*(n-1)+3)!`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001763.P5721347364139945984
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (3 * ((n : ℤ) - 1) + 3).toNat : ℚ) / (Nat.factorial (2 * ((n : ℤ) - 1) + 3).toNat : ℚ)

end

end A001763.P5721347364139945984

/-! ## A001763.P1271529824328435584

`C(3*n, n)/comp[2*n]*n!`
-/

namespace A001763.P1271529824328435584
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (3 * n) n : ℚ) / (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℚ) * (Nat.factorial n : ℚ)

end

end A001763.P1271529824328435584

/-! ## A001763.P7722019112467461490

`n!*A001764(n)`
-/

namespace A001763.P7722019112467461490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A001764 n

end

end A001763.P7722019112467461490

/-! ## A001763.P929589853299114787

`n!*A110616(∑[n])`
-/

namespace A001763.P929589853299114787
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A110616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001763.P929589853299114787

/-! ## A001763.P16152757548037130465

`n!*A047749(2*n)`
-/

namespace A001763.P16152757548037130465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A047749 (2 * n)

end

end A001763.P16152757548037130465

/-!
# A001764: a(n) = binomial(3*n,n)/(2*n+1) (enumerates ternary trees and also noncrossing trees).

The programs for A001764, the canonical program `A001764.P3774870437871613604` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001764 has offset 0).

The definition of A001764 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001764.P3774870437871613604

`(3*n)!/(n!*(2*n+1)!)`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001764

/-- `(3*n)!/(n!*(2*n+1)!)` -/
def P3774870437871613604.Spec : Prop :=
  ∀ n, P3774870437871613604.a n = (A001764 n : ℚ)

end A001764

/-! ## A001764.P13102861979908864925

`A073147(∑[n])`
-/

namespace A001764.P13102861979908864925
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073147 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001764.P13102861979908864925

namespace A001764

/-- `A073147(∑[n])` -/
def P13102861979908864925.Spec : Prop :=
  ∀ n, P13102861979908864925.a n = A001764 n

end A001764

/-! ## A001764.P2201892472289109072

`A110616(∑[n])`
-/

namespace A001764.P2201892472289109072
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110616 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001764.P2201892472289109072

namespace A001764

/-- `A110616(∑[n])` -/
def P2201892472289109072.Spec : Prop :=
  ∀ n, P2201892472289109072.a n = A001764 n

end A001764

/-! ## A001764.P4534047241071179661

`A047749(2*n)`
-/

namespace A001764.P4534047241071179661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047749 (2 * n)

end

end A001764.P4534047241071179661

namespace A001764

/-- `A047749(2*n)` -/
def P4534047241071179661.Spec : Prop :=
  ∀ n, P4534047241071179661.a n = A001764 n

end A001764

/-! ## A001764.P407214604676401785

`A127898(C(n, 2))`
-/

namespace A001764.P407214604676401785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (Nat.choose n 2)

end

end A001764.P407214604676401785

namespace A001764

/-- `A127898(C(n, 2))` -/
def P407214604676401785.Spec : Prop :=
  ∀ n, P407214604676401785.a n = A001764 n

end A001764

/-! ## A001764.P18386686277192807128

`A143603(∑[n]+1)`
-/

namespace A001764.P18386686277192807128
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143603 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A001764.P18386686277192807128

namespace A001764

/-- `A143603(∑[n]+1)` -/
def P18386686277192807128.Spec : Prop :=
  ∀ n, P18386686277192807128.a n = A001764 n

end A001764

/-! ## A001764.P3448943105513860486

`A069269(∑[n]+n)`
-/

namespace A001764.P3448943105513860486
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069269 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001764.P3448943105513860486

namespace A001764

/-- `A069269(∑[n]+n)` -/
def P3448943105513860486.Spec : Prop :=
  ∀ n, P3448943105513860486.a n = A001764 n

end A001764

/-! ## A001764.P9191442851318100881

`A355172(∑[n]+n)`
-/

namespace A001764.P9191442851318100881
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355172 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A001764.P9191442851318100881

namespace A001764

/-- `A355172(∑[n]+n)` -/
def P9191442851318100881.Spec : Prop :=
  ∀ n, P9191442851318100881.a n = A001764 n

end A001764

/-! ## A001764.P18288370967379190437

`A127898(∑[n]-n)`
-/

namespace A001764.P18288370967379190437
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127898 (∑ j ∈ Finset.range (n + 1), f1 j - n)

end

end A001764.P18288370967379190437

namespace A001764

/-- `A127898(∑[n]-n)` -/
def P18288370967379190437.Spec : Prop :=
  ∀ n, P18288370967379190437.a n = A001764 n

end A001764

/-! ## A001764.P1958155367349967498

`∑{d}[n+1, A251662(#)]`
-/

namespace A001764.P1958155367349967498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A251662 d

end

end A001764.P1958155367349967498

namespace A001764

/-- `∑{d}[n+1, A251662(#)]` -/
def P1958155367349967498.Spec : Prop :=
  ∀ n, P1958155367349967498.a n = A001764 n

end A001764

/-! ## A001764.P10282832050662622602

`A047761(abs(1-2*n))`
-/

namespace A001764.P10282832050662622602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047761 |1 - (2 * n : ℤ)|.toNat

end

end A001764.P10282832050662622602

namespace A001764

/-- `A047761(abs(1-2*n))` -/
def P10282832050662622602.Spec : Prop :=
  ∀ n, P10282832050662622602.a n = A001764 n

end A001764

/-! ## A001764.P14687254893502943885

`(n+1)/2*A000139(n)`
-/

namespace A001764.P14687254893502943885
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 2 * (A000139 n : ℚ)

end

end A001764.P14687254893502943885

namespace A001764

/-- `(n+1)/2*A000139(n)` -/
def P14687254893502943885.Spec : Prop :=
  ∀ n, P14687254893502943885.a n = (A001764 n : ℚ)

end A001764

/-! ## A001764.P689515203512662607

`a(n-1)+A336945(n)+a(n-1)` with `a(0)=1`
-/

namespace A001764.P689515203512662607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A336945 n + a (n - 1))

end

end A001764.P689515203512662607

namespace A001764

/-- `a(n-1)+A336945(n)+a(n-1)` -/
def P689515203512662607.Spec : Prop :=
  ∀ n, P689515203512662607.a n = A001764 n

end A001764

/-! ## A001764.P14494353763705759986

`A047764(A017545(n))`
-/

namespace A001764.P14494353763705759986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (A017545 n).toNat

end

end A001764.P14494353763705759986

namespace A001764

/-- `A047764(A017545(n))` -/
def P14494353763705759986.Spec : Prop :=
  ∀ n, P14494353763705759986.a n = A001764 n

end A001764

/-! ## A001764.P7068893553022217879

`A064282(A212342(n))`
-/

namespace A001764.P7068893553022217879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064282 (A212342 n).toNat

end

end A001764.P7068893553022217879

namespace A001764

/-- `A064282(A212342(n))` -/
def P7068893553022217879.Spec : Prop :=
  ∀ n, P7068893553022217879.a n = A001764 n

end A001764

/-! ## A001764.P7864774810666093274

`A047764(A016933(2*n))`
-/

namespace A001764.P7864774810666093274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047764 (A016933 (2 * n)).toNat

end

end A001764.P7864774810666093274

namespace A001764

/-- `A047764(A016933(2*n))` -/
def P7864774810666093274.Spec : Prop :=
  ∀ n, P7864774810666093274.a n = A001764 n

end A001764

/-! ## A001764.P3200778728516251584

`A047751(A017581(2*n))`
-/

namespace A001764.P3200778728516251584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047751 (A017581 (2 * n)).toNat

end

end A001764.P3200778728516251584

namespace A001764

/-- `A047751(A017581(2*n))` -/
def P3200778728516251584.Spec : Prop :=
  ∀ n, P3200778728516251584.a n = A001764 n

end A001764

/-! ## A001764.P12115732196067119447

`abs(A179848(A000007(n)+n))`
-/

namespace A001764.P12115732196067119447
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A179848 (A000007 n + (n : ℤ)).toNat|

end

end A001764.P12115732196067119447

namespace A001764

/-- `abs(A179848(A000007(n)+n))` -/
def P12115732196067119447.Spec : Prop :=
  ∀ n, P12115732196067119447.a n = A001764 n

end A001764

/-! ## A001764.P16977616230118793403

`A103938(n+1)-A000139(n)`
-/

namespace A001764.P16977616230118793403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103938 (n + 1) - A000139 n

end

end A001764.P16977616230118793403

namespace A001764

/-- `A103938(n+1)-A000139(n)` -/
def P16977616230118793403.Spec : Prop :=
  ∀ n, P16977616230118793403.a n = A001764 n

end A001764

/-! ## A001764.P15785948188801986293

`gcd(A036044(A003817(n)), A179848(n))`
-/

namespace A001764.P15785948188801986293
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A036044 (A003817 n).toNat) (A179848 n)

end

end A001764.P15785948188801986293

namespace A001764

/-- `gcd(A036044(A003817(n)), A179848(n))` -/
def P15785948188801986293.Spec : Prop :=
  ∀ n, (P15785948188801986293.a n : ℤ) = A001764 n

end A001764

/-!
# A001765: Coefficients of iterated exponentials.

The programs for A001765, there is no canonical definition to state claims against.
-/

/-! ## A001765.P7224750819909503961

`A111933(A055999(n+4))`
-/

namespace A001765.P7224750819909503961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (A055999 (n + 4)).toNat

end

end A001765.P7224750819909503961

/-! ## A001765.P13196011638133826769

`A111933(eq[4, A219347(n)])`
-/

namespace A001765.P13196011638133826769
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001765.P13196011638133826769

/-! ## A001765.P5773489153485960642

`A111933(eq[6, A193592(n)])`
-/

namespace A001765.P5773489153485960642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001765.P5773489153485960642

/-! ## A001765.P17627034350090006008

`A111933(A167614(n+4)+A005843(n+2))`
-/

namespace A001765.P17627034350090006008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (A167614 (n + 4) + A005843 (n + 2)).toNat

end

end A001765.P17627034350090006008

/-! ## A001765.P16482773358402271531

`A111933(eq[7, A200370(n+1)])`
-/

namespace A001765.P16482773358402271531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A200370 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111933 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001765.P16482773358402271531

/-!
# A001766: Index of (the image of) the modular group Gamma(n) in PSL_2(Z).

The programs for A001766, the canonical program `A001766.P5829202588675829785` is in `Seq.B013.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001766 has offset 1).

The definition of A001766 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001766.P1563542316850292948

`(n+1)*lcm(2, A007434(n+1))/2`
-/

namespace A001766.P1563542316850292948
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((Int.lcm 2 (A007434 (n + 1)) : ℚ) / 2)

end

end A001766.P1563542316850292948

namespace A001766

/-- `(n+1)*lcm(2, A007434(n+1))/2` -/
def P1563542316850292948.Spec : Prop :=
  ∀ n, P1563542316850292948.a n = (A001766 (n + 1) : ℚ)

end A001766

/-! ## A001766.P8375779464016392445

`A000010(A060594(n+1))*A300915(n+1)`
-/

namespace A001766.P8375779464016392445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A060594 (n + 1)).toNat * A300915 (n + 1)

end

end A001766.P8375779464016392445

namespace A001766

/-- `A000010(A060594(n+1))*A300915(n+1)` -/
def P8375779464016392445.Spec : Prop :=
  ∀ n, P8375779464016392445.a n = A001766 (n + 1)

end A001766

/-! ## A001766.P9303795954434673270

`A000056(n+1)/A020639(A000010(n+1))`
-/

namespace A001766.P9303795954434673270
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A020639 (A000010 (n + 1)).toNat : ℚ)

end

end A001766.P9303795954434673270

namespace A001766

/-- `A000056(n+1)/A020639(A000010(n+1))` -/
def P9303795954434673270.Spec : Prop :=
  ∀ n, P9303795954434673270.a n = (A001766 (n + 1) : ℚ)

end A001766

/-! ## A001766.P5829202588675829785

`A000056(n+1)/A014963(A060594(n+1))`

The canonical program, it is in `Seq.B013.C000`.
-/

namespace A001766

/-- `A000056(n+1)/A014963(A060594(n+1))` -/
def P5829202588675829785.Spec : Prop :=
  ∀ n, P5829202588675829785.a n = (A001766 (n + 1) : ℚ)

end A001766

/-! ## A001766.P13072589836503373586

`A000056(n+1)/A020639(A322321(n+1))`
-/

namespace A001766.P13072589836503373586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A020639 (A322321 (n + 1)).toNat : ℚ)

end

end A001766.P13072589836503373586

namespace A001766

/-- `A000056(n+1)/A020639(A322321(n+1))` -/
def P13072589836503373586.Spec : Prop :=
  ∀ n, P13072589836503373586.a n = (A001766 (n + 1) : ℚ)

end A001766

/-! ## A001766.P13568335396579763577

`A000056(n+1)/A020639(A353643(n+1))`
-/

namespace A001766.P13568335396579763577
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A020639 (A353643 (n + 1)).toNat : ℚ)

end

end A001766.P13568335396579763577

namespace A001766

/-- `A000056(n+1)/A020639(A353643(n+1))` -/
def P13568335396579763577.Spec : Prop :=
  ∀ n, P13568335396579763577.a n = (A001766 (n + 1) : ℚ)

end A001766

/-! ## A001766.P725964331865469599

`A000056(n+1)/A020639(Δ[A100449(n)/4])`
-/

namespace A001766.P725964331865469599
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100449 n : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A020639 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat : ℚ)

end

end A001766.P725964331865469599

namespace A001766

/-- `A000056(n+1)/A020639(Δ[A100449(n)/4])` -/
def P725964331865469599.Spec : Prop :=
  ∀ n, P725964331865469599.a n = (A001766 (n + 1) : ℚ)

end A001766

/-! ## A001766.P2065508477266684729

`A000082(n+1)*A004526(A000010(n+1)+1)`
-/

namespace A001766.P2065508477266684729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000082 (n + 1) * A004526 (A000010 (n + 1) + 1).toNat

end

end A001766.P2065508477266684729

namespace A001766

/-- `A000082(n+1)*A004526(A000010(n+1)+1)` -/
def P2065508477266684729.Spec : Prop :=
  ∀ n, P2065508477266684729.a n = A001766 (n + 1)

end A001766

/-! ## A001766.P2160888429777732070

`A000056(n+1)/A020639(A109606(n+1)+1)`
-/

namespace A001766.P2160888429777732070
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A020639 (A109606 (n + 1) + 1).toNat : ℚ)

end

end A001766.P2160888429777732070

namespace A001766

/-- `A000056(n+1)/A020639(A109606(n+1)+1)` -/
def P2160888429777732070.Spec : Prop :=
  ∀ n, P2160888429777732070.a n = (A001766 (n + 1) : ℚ)

end A001766

/-! ## A001766.P4646902034548558997

`A000056(n+1)/A020639(A039649(n+1)-1)`
-/

namespace A001766.P4646902034548558997
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A020639 (A039649 (n + 1) - 1).toNat : ℚ)

end

end A001766.P4646902034548558997

namespace A001766

/-- `A000056(n+1)/A020639(A039649(n+1)-1)` -/
def P4646902034548558997.Spec : Prop :=
  ∀ n, P4646902034548558997.a n = (A001766 (n + 1) : ℚ)

end A001766

/-! ## A001766.P18319753100959830426

`(n+1)*A007434(n+1)/A007947(A060594(n+1))`
-/

namespace A001766.P18319753100959830426
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A007434 (n + 1) : ℚ) / (A007947 (A060594 (n + 1)).toNat : ℚ))

end

end A001766.P18319753100959830426

namespace A001766

/-- `(n+1)*A007434(n+1)/A007947(A060594(n+1))` -/
def P18319753100959830426.Spec : Prop :=
  ∀ n, P18319753100959830426.a n = (A001766 (n + 1) : ℚ)

end A001766

/-! ## A001766.P11937005562471568579

`A000252(n+1)/(A000010(n+1)*A020639(A000010(n+1)))`
-/

namespace A001766.P11937005562471568579
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000252 (n + 1) : ℚ) / (A000010 (n + 1) * A020639 (A000010 (n + 1)).toNat : ℚ)

end

end A001766.P11937005562471568579

namespace A001766

/-- `A000252(n+1)/(A000010(n+1)*A020639(A000010(n+1)))` -/
def P11937005562471568579.Spec : Prop :=
  ∀ n, P11937005562471568579.a n = (A001766 (n + 1) : ℚ)

end A001766

/-! ## A001766.P16997801413739927397

`A000010(A000056(n+1)/A300915(n+1))*A300915(n+1)`
-/

namespace A001766.P16997801413739927397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (SequenceMachineLib.roundAway ((A000056 (n + 1) : ℚ) / (A300915 (n + 1) : ℚ))).toNat * A300915 (n + 1)

end

end A001766.P16997801413739927397

namespace A001766

/-- `A000010(A000056(n+1)/A300915(n+1))*A300915(n+1)` -/
def P16997801413739927397.Spec : Prop :=
  ∀ n, P16997801413739927397.a n = A001766 (n + 1)

end A001766

/-! ## A001766.P11283350873042765631

`A000056(n+1)/A020639(Δ[A206297(n+1)/2])`
-/

namespace A001766.P11283350873042765631
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000056 (n + 1) : ℚ) / (A020639 (SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)).toNat : ℚ)

end

end A001766.P11283350873042765631

namespace A001766

/-- `A000056(n+1)/A020639(Δ[A206297(n+1)/2])` -/
def P11283350873042765631.Spec : Prop :=
  ∀ n, P11283350873042765631.a n = (A001766 (n + 1) : ℚ)

end A001766

/-! ## A001766.P12573796093186399510

`(n+1)*A026741(A007434(n+1))`
-/

namespace A001766.P12573796093186399510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A026741 (A007434 (n + 1)).toNat

end

end A001766.P12573796093186399510

namespace A001766

/-- `(n+1)*A026741(A007434(n+1))` -/
def P12573796093186399510.Spec : Prop :=
  ∀ n, P12573796093186399510.a n = A001766 (n + 1)

end A001766

/-!
# A001768: Sorting numbers: number of comparisons for merge insertion sort of n elements.

The programs for A001768, the canonical program `A001768.P14525527090377641846` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001768 has offset 1).

The definition of A001768 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001768.P17665876425791179562

`∑[floor(log2(comp[3*n]))]`
-/

namespace A001768.P17665876425791179562
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3 * n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001768.P17665876425791179562

namespace A001768

/-- `∑[floor(log2(comp[3*n]))]` -/
def P17665876425791179562.Spec : Prop :=
  ∀ n, (P17665876425791179562.a n : ℤ) = A001768 (n + 1)

end A001768

/-! ## A001768.P14525527090377641846

`∑[A085423(n+1)]-(n+1)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001768

/-- `∑[A085423(n+1)]-(n+1)` -/
def P14525527090377641846.Spec : Prop :=
  ∀ n, P14525527090377641846.a n = A001768 (n + 1)

theorem P14525527090377641846.correct : P14525527090377641846.Spec := by
  intro n
  simp only [A001768, Nat.add_sub_cancel]

end A001768

/-! ## A001768.P12795339681972809709

`∑[∑[char[A000975(n)]]]-(n+1)`
-/

namespace A001768.P12795339681972809709
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000975 n

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f3 j = (n : ℤ) then 1 else 0

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n + 1 : ℤ)

end

end A001768.P12795339681972809709

namespace A001768

/-- `∑[∑[char[A000975(n)]]]-(n+1)` -/
def P12795339681972809709.Spec : Prop :=
  ∀ n, P12795339681972809709.a n = A001768 (n + 1)

end A001768

/-! ## A001768.P11873225743312833039

`∑[∑[A147612(2*n+1)]]-(n+1)`
-/

namespace A001768.P11873225743312833039
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A147612 (2 * n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A001768.P11873225743312833039

namespace A001768

/-- `∑[∑[A147612(2*n+1)]]-(n+1)` -/
def P11873225743312833039.Spec : Prop :=
  ∀ n, P11873225743312833039.a n = A001768 (n + 1)

end A001768

/-! ## A001768.P10927178910389987210

`∑[A057526(n+1)]+∑[A280737(n+1)]`
-/

namespace A001768.P10927178910389987210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057526 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280737 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ∑ j ∈ Finset.range (n + 1), f2 j

end

end A001768.P10927178910389987210

namespace A001768

/-- `∑[A057526(n+1)]+∑[A280737(n+1)]` -/
def P10927178910389987210.Spec : Prop :=
  ∀ n, P10927178910389987210.a n = A001768 (n + 1)

end A001768

/-! ## A001768.P7973216602388512227

`∑[A029837(∑[(n+1)%4]+1)]-(n+1)`
-/

namespace A001768.P7973216602388512227
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) % 4

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (∑ j ∈ Finset.range (n + 1), f2 j + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A001768.P7973216602388512227

namespace A001768

/-- `∑[A029837(∑[(n+1)%4]+1)]-(n+1)` -/
def P7973216602388512227.Spec : Prop :=
  ∀ n, P7973216602388512227.a n = A001768 (n + 1)

end A001768

/-! ## A001768.P14080464810421304617

`∑[floor(log2(A114119(2*n)))]-n`
-/

namespace A001768.P14080464810421304617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (A114119 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - (n : ℤ)

end

end A001768.P14080464810421304617

namespace A001768

/-- `∑[floor(log2(A114119(2*n)))]-n` -/
def P14080464810421304617.Spec : Prop :=
  ∀ n, P14080464810421304617.a n = A001768 (n + 1)

end A001768

/-! ## A001768.P13795701823303341411

`floor(∑[log2(A072376(3*(n+1)))])`
-/

namespace A001768.P13795701823303341411
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A072376 (3 * (n + 1)) : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋

end

end A001768.P13795701823303341411

namespace A001768

/-- `floor(∑[log2(A072376(3*(n+1)))])` -/
def P13795701823303341411.Spec : Prop :=
  ∀ n, P13795701823303341411.a n = A001768 (n + 1)

end A001768

/-! ## A001768.P14125108956431204207

`∑[A000523(3*(n+1))]-(n+1)`
-/

namespace A001768.P14125108956431204207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000523 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (n + 1 : ℤ)

end

end A001768.P14125108956431204207

namespace A001768

/-- `∑[A000523(3*(n+1))]-(n+1)` -/
def P14125108956431204207.Spec : Prop :=
  ∀ n, P14125108956431204207.a n = A001768 (n + 1)

end A001768

/-! ## A001768.P3572638815713740817

`∑[A029837(3*(n+1))]-2*(n+1)`
-/

namespace A001768.P3572638815713740817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029837 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - (2 * (n + 1) : ℤ)

end

end A001768.P3572638815713740817

namespace A001768

/-- `∑[A029837(3*(n+1))]-2*(n+1)` -/
def P3572638815713740817.Spec : Prop :=
  ∀ n, P3572638815713740817.a n = A001768 (n + 1)

end A001768

/-!
# A001769: Expansion of 1/((1+x)*(1-x)^7).

The programs for A001769, the canonical program `A001769.P7503499494957103820` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001769 has offset 0).

The definition of A001769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-6x+14x^2-14x^3+14x^5-14x^6+6x^7-x^8))` (program `A001769.P7503499494957103820`, by `A001769.P7503499494957103820.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001769.P7503499494957103820

`ogf(1/(1-6x+14x^2-14x^3+14x^5-14x^6+6x^7-x^8))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001769

/-- `ogf(1/(1-6x+14x^2-14x^3+14x^5-14x^6+6x^7-x^8))` -/
def P7503499494957103820.Spec : Prop :=
  ∀ n, P7503499494957103820.a n = A001769 n

theorem P7503499494957103820.correct : P7503499494957103820.Spec := by
  intro n
  simp only [A001769]

end A001769

/-! ## A001769.P6723653181647686442

`∑[∑[∑[∑[∑[∑[log2(gcd(2, n))]]]]]]`
-/

namespace A001769.P6723653181647686442
noncomputable section

def f6 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (Nat.gcd 2 n : ℝ)

def f5 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001769.P6723653181647686442

namespace A001769

/-- `∑[∑[∑[∑[∑[∑[log2(gcd(2, n))]]]]]]` -/
def P6723653181647686442.Spec : Prop :=
  ∀ n, P6723653181647686442.a n = (A001769 n : ℝ)

end A001769

/-! ## A001769.P15504479574830919753

`∑[∑[∑[∑[∑[∑[char[2*n]]]]]]]`
-/

namespace A001769.P15504479574830919753
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f7 j = n then 1 else 0

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001769.P15504479574830919753

namespace A001769

/-- `∑[∑[∑[∑[∑[∑[char[2*n]]]]]]]` -/
def P15504479574830919753.Spec : Prop :=
  ∀ n, (P15504479574830919753.a n : ℤ) = A001769 n

end A001769

/-! ## A001769.P6627677111037578362

`a(n-2)+C(n+5, 5)` with `a(0)=1, a(1)=6`
-/

namespace A001769.P6627677111037578362
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + Nat.choose (n + 5) 5

end

end A001769.P6627677111037578362

namespace A001769

/-- `a(n-2)+C(n+5, 5)` -/
def P6627677111037578362.Spec : Prop :=
  ∀ n, (P6627677111037578362.a n : ℤ) = A001769 n

end A001769

/-! ## A001769.P1950334632261416247

`A001753(n)+a(n-1)` with `a(0)=1`
-/

namespace A001769.P1950334632261416247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A001753 n + a (n - 1)

end

end A001769.P1950334632261416247

namespace A001769

/-- `A001753(n)+a(n-1)` -/
def P1950334632261416247.Spec : Prop :=
  ∀ n, P1950334632261416247.a n = A001769 n

end A001769

/-! ## A001769.P1921661450622184473

`2-(a(n-1)-A166810(n))` with `a(0)=1`
-/

namespace A001769.P1921661450622184473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 - (a (n - 1) - A166810 n)

end

end A001769.P1921661450622184473

namespace A001769

/-- `2-(a(n-1)-A166810(n))` -/
def P1921661450622184473.Spec : Prop :=
  ∀ n, P1921661450622184473.a n = A001769 n

end A001769

/-! ## A001769.P3473355237672589370

`or(∑[A001753(n)], A000007(n))`
-/

namespace A001769.P3473355237672589370
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (∑ j ∈ Finset.range (n + 1), f1 j) (A000007 n)

end

end A001769.P3473355237672589370

namespace A001769

/-- `or(∑[A001753(n)], A000007(n))` -/
def P3473355237672589370.Spec : Prop :=
  ∀ n, P3473355237672589370.a n = A001769 n

end A001769

/-! ## A001769.P17287378990091103118

`∑[2*A028346(n)]-A028346(n)`
-/

namespace A001769.P17287378990091103118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A028346 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A028346 n

end

end A001769.P17287378990091103118

namespace A001769

/-- `∑[2*A028346(n)]-A028346(n)` -/
def P17287378990091103118.Spec : Prop :=
  ∀ n, P17287378990091103118.a n = A001769 n

end A001769

/-! ## A001769.P7921122867014665746

`∑[A001753(n)]%A024448(n+1)`
-/

namespace A001769.P7921122867014665746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A024448 (n + 1))

end

end A001769.P7921122867014665746

namespace A001769

/-- `∑[A001753(n)]%A024448(n+1)` -/
def P7921122867014665746.Spec : Prop :=
  ∀ n, P7921122867014665746.a n = A001769 n

end A001769

/-! ## A001769.P13073512918021021618

`2*A001779(n)-A000580(n+7)`
-/

namespace A001769.P13073512918021021618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001779 n - A000580 (n + 7)

end

end A001769.P13073512918021021618

namespace A001769

/-- `2*A001779(n)-A000580(n+7)` -/
def P13073512918021021618.Spec : Prop :=
  ∀ n, P13073512918021021618.a n = A001769 n

end A001769

/-! ## A001769.P4175650605667569988

`A001779(n+1)-(A001779(n)+A001753(n+1))`
-/

namespace A001769.P4175650605667569988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 (n + 1) - (A001779 n + A001753 (n + 1))

end

end A001769.P4175650605667569988

namespace A001769

/-- `A001779(n+1)-(A001779(n)+A001753(n+1))` -/
def P4175650605667569988.Spec : Prop :=
  ∀ n, P4175650605667569988.a n = A001769 n

end A001769

/-! ## A001769.P10271654890440267223

`A018210(n)+A028346(n)-A096338(n+1)`
-/

namespace A001769.P10271654890440267223
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018210 n + (A028346 n - A096338 (n + 1))

end

end A001769.P10271654890440267223

namespace A001769

/-- `A018210(n)+A028346(n)-A096338(n+1)` -/
def P10271654890440267223.Spec : Prop :=
  ∀ n, P10271654890440267223.a n = A001769 n

end A001769

/-! ## A001769.P1563768959096793737

`abs(a(n-1)-A000579(n+6))` with `a(0)=1`
-/

namespace A001769.P1563768959096793737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  |a (n - 1) - A000579 (n + 6)|

end

end A001769.P1563768959096793737

namespace A001769

/-- `abs(a(n-1)-A000579(n+6))` -/
def P1563768959096793737.Spec : Prop :=
  ∀ n, P1563768959096793737.a n = A001769 n

end A001769

/-! ## A001769.P12469331577011310683

`A299338(2*n)-a(n-1)` with `a(0)=1`
-/

namespace A001769.P12469331577011310683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A299338 (2 * n) - a (n - 1)

end

end A001769.P12469331577011310683

namespace A001769

/-- `A299338(2*n)-a(n-1)` -/
def P12469331577011310683.Spec : Prop :=
  ∀ n, P12469331577011310683.a n = A001769 n

end A001769

/-! ## A001769.P15098350104415579882

`A112465(A052905(n+4)+12)`
-/

namespace A001769.P15098350104415579882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112465 (A052905 (n + 4) + 12).toNat

end

end A001769.P15098350104415579882

namespace A001769

/-- `A112465(A052905(n+4)+12)` -/
def P15098350104415579882.Spec : Prop :=
  ∀ n, P15098350104415579882.a n = A001769 n

end A001769

/-!
# A001770: Numbers k such that 5*2^k - 1 is prime.

The programs for A001770, there is no canonical definition to state claims against.
-/

/-! ## A001770.P13027934500859320535

`val(A050522(n+1)+1, 2)`
-/

namespace A001770.P13027934500859320535
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A050522 (n + 1) + 1).toNat 2

end

end A001770.P13027934500859320535

/-! ## A001770.P2204757952349968821

`A289207(floor(log2(A050522(n+1))))`
-/

namespace A001770.P2204757952349968821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (Nat.log 2 (A050522 (n + 1)).toNat)

end

end A001770.P2204757952349968821

/-! ## A001770.P16160851548516591035

`A289207(round(log2(A050522(n+1))))`
-/

namespace A001770.P16160851548516591035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289207 (SequenceMachineLib.roundAway (Real.logb 2 (A050522 (n + 1) : ℝ))).toNat

end

end A001770.P16160851548516591035

/-! ## A001770.P2202474398701510449

`A028310(floor(log2(A050522(n+1)))-2)`
-/

namespace A001770.P2202474398701510449
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Nat.log 2 (A050522 (n + 1)).toNat - 2)

end

end A001770.P2202474398701510449

/-! ## A001770.P10278049107422606822

`floor(log2(A050522(n+1)))-A001222(5-(-1)^n)`
-/

namespace A001770.P10278049107422606822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.log 2 (A050522 (n + 1)).toNat : ℤ) - A001222 (5 - (-1) ^ n).toNat

end

end A001770.P10278049107422606822

/-!
# A001771: Numbers k such that 7*2^k - 1 is prime.

The programs for A001771, there is no canonical definition to state claims against.
-/

/-! ## A001771.P13495519788290367086

`eq[and(3, n), A139337(A126715(n))]`
-/

namespace A001771.P13495519788290367086
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 3 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139337 (A126715 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A001771.P13495519788290367086

/-! ## A001771.P14483923424070577910

`record[A160250(n+1)%A160159(n+1)]`
-/

namespace A001771.P14483923424070577910
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A160250 (n + 1)) (A160159 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001771.P14483923424070577910

/-! ## A001771.P9232248399357844169

`eq[A029361(A126715(n)), A060576(n)]`
-/

namespace A001771.P9232248399357844169
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029361 (A126715 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060576 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001771.P9232248399357844169

/-! ## A001771.P5572422486659462047

`eq[A008624(A126715(n)), A130130(n)]`
-/

namespace A001771.P5572422486659462047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008624 (A126715 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130130 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A001771.P5572422486659462047

/-!
# A001773: Numbers k such that 13*2^k - 1 is prime.

The programs for A001773, there is no canonical definition to state claims against.
-/

/-! ## A001773.P2318447436759221517

`or(2, A350328(A248854(n+1)))`
-/

namespace A001773.P2318447436759221517
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A350328 (A248854 (n + 1)).toNat)

end

end A001773.P2318447436759221517

/-!
# A001774: Numbers k such that 17*2^k - 1 is prime.

The programs for A001774, there is no canonical definition to state claims against.
-/

/-! ## A001774.P15334760818892434787

`val(A330413(n+1), 2)`
-/

namespace A001774.P15334760818892434787
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A330413 (n + 1)).toNat 2

end

end A001774.P15334760818892434787

/-!
# A001776: Dimensions of the Jordan operad.

The programs for A001776, there is no canonical definition to state claims against.
-/

/-! ## A001776.P16639434257348453031

`11*A285785(a(n-2))` with `a(0)=1, a(1)=1, a(2)=3`
-/

namespace A001776.P16639434257348453031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 3] fun n a =>
  11 * A285785 (a (n - 2)).toNat

end

end A001776.P16639434257348453031

/-! ## A001776.P16586430638219116764

`A162371((n+1)*a(n-1))` with `a(0)=1, a(1)=1`
-/

namespace A001776.P16586430638219116764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 1] fun n a =>
  A162371 ((n + 1 : ℤ) * a (n - 1)).toNat

end

end A001776.P16586430638219116764

/-!
# A001777: Lah numbers: a(n) = n! * binomial(n-1, 4)/5!.

The programs for A001777, there is no canonical definition to state claims against.
-/

/-! ## A001777.P12909454215318431288

`∑[∑[∑[n+1]]]*∑[∑[∑[∑[n+1]]]]*n!`
-/

namespace A001777.P12909454215318431288
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * (∑ j ∈ Finset.range (n + 1), f4 j) * Nat.factorial n

end

end A001777.P12909454215318431288

/-! ## A001777.P3485149956828446232

`n!*A134287(n)`
-/

namespace A001777.P3485149956828446232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * A134287 n

end

end A001777.P3485149956828446232

/-! ## A001777.P12963462012434693237

`(n+1)!*A006857(n)`
-/

namespace A001777.P12963462012434693237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A006857 n

end

end A001777.P12963462012434693237

/-! ## A001777.P17020608036298044252

`A105278(A167499(n+3))`
-/

namespace A001777.P17020608036298044252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A167499 (n + 3)).toNat

end

end A001777.P17020608036298044252

/-! ## A001777.P17086239684945844263

`A105278(A155212(n)+13)`
-/

namespace A001777.P17086239684945844263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A155212 n + 13).toNat

end

end A001777.P17086239684945844263

/-! ## A001777.P11723717134825378995

`A066667(eq[4, A002262(n)])`
-/

namespace A001777.P11723717134825378995
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066667 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A001777.P11723717134825378995

/-! ## A001777.P6250573854959467397

`A000142(n)*A134287(n)`
-/

namespace A001777.P6250573854959467397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 n * A134287 n

end

end A001777.P6250573854959467397

/-! ## A001777.P1153094228845236192

`A061206(n+1)/A001563(n+1)*A062199(n)`
-/

namespace A001777.P1153094228845236192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061206 (n + 1) : ℚ) / (A001563 (n + 1) : ℚ) * (A062199 n : ℚ)

end

end A001777.P1153094228845236192

/-! ## A001777.P9661528133963239683

`A001720(n+4)/A000142(n)*A001725(n+5)`
-/

namespace A001777.P9661528133963239683
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001720 (n + 4) : ℚ) / (A000142 n : ℚ) * (A001725 (n + 5) : ℚ)

end

end A001777.P9661528133963239683

/-!
# A001778: Lah numbers: a(n) = n!*binomial(n-1,5)/6!.

The programs for A001778, there is no canonical definition to state claims against.
-/

/-! ## A001778.P15370368165709964472

`(n+1)!*A108679(n)`
-/

namespace A001778.P15370368165709964472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A108679 n

end

end A001778.P15370368165709964472

/-! ## A001778.P7320852662049002435

`∑[∑[A107891(n)]]*∏[n+1]`
-/

namespace A001778.P7320852662049002435
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107891 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * ((∏ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ)

end

end A001778.P7320852662049002435

/-! ## A001778.P6482456382856005914

`A105278(A166136(n+4))`
-/

namespace A001778.P6482456382856005914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105278 (A166136 (n + 4)).toNat

end

end A001778.P6482456382856005914

/-! ## A001778.P14280215649447359161

`abs(A066667(A167499(n+4)))`
-/

namespace A001778.P14280215649447359161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A066667 (A167499 (n + 4)).toNat|

end

end A001778.P14280215649447359161

/-! ## A001778.P7678977157628626016

`A000142(n+1)*A108679(n)`
-/

namespace A001778.P7678977157628626016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A108679 n

end

end A001778.P7678977157628626016

/-! ## A001778.P13847744430817132070

`abs(A008297(A167499(n+4)+1))`
-/

namespace A001778.P13847744430817132070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A008297 (A167499 (n + 4) + 1).toNat|

end

end A001778.P13847744430817132070

/-! ## A001778.P11589023166232650725

`∑[A047819(n)]*A000142(n+1)`
-/

namespace A001778.P11589023166232650725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047819 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) * A000142 (n + 1)

end

end A001778.P11589023166232650725

/-! ## A001778.P6785773649940748521

`A253945(n+4)/6*A001730(n+6)`
-/

namespace A001778.P6785773649940748521
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A253945 (n + 4) : ℚ) / 6 * (A001730 (n + 6) : ℚ)

end

end A001778.P6785773649940748521

/-! ## A001778.P16348604177282930952

`lcm(A033999(n), A066667(A167499(n+4)))`
-/

namespace A001778.P16348604177282930952
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A066667 (A167499 (n + 4)).toNat)

end

end A001778.P16348604177282930952

/-! ## A001778.P2005581339095166933

`lcm(A007318(n), A008297(A167499(n+4)+1))`
-/

namespace A001778.P2005581339095166933
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A007318 n) (A008297 (A167499 (n + 4) + 1).toNat)

end

end A001778.P2005581339095166933

/-!
# A001779: Expansion of 1/((1+x)(1-x)^8).

The programs for A001779, the canonical program `A001779.P16275681342005059718` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001779 has offset 0).

The definition of A001779 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-7x+20x^2-28x^3+14x^4+14x^5-28x^6+20x^7-7x^8+x^9))` (program `A001779.P16275681342005059718`, by `A001779.P16275681342005059718.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001779.P16275681342005059718

`ogf(1/(1-7x+20x^2-28x^3+14x^4+14x^5-28x^6+20x^7-7x^8+x^9))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001779

/-- `ogf(1/(1-7x+20x^2-28x^3+14x^4+14x^5-28x^6+20x^7-7x^8+x^9))` -/
def P16275681342005059718.Spec : Prop :=
  ∀ n, P16275681342005059718.a n = A001779 n

theorem P16275681342005059718.correct : P16275681342005059718.Spec := by
  intro n
  simp only [A001779]

end A001779

/-! ## A001779.P5612666870518593352

`C(n+7, 7)-a(n-1)` with `a(0)=1`
-/

namespace A001779.P5612666870518593352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (n + 7) 7 : ℤ) - a (n - 1)

end

end A001779.P5612666870518593352

namespace A001779

/-- `C(n+7, 7)-a(n-1)` -/
def P5612666870518593352.Spec : Prop :=
  ∀ n, P5612666870518593352.a n = A001779 n

end A001779

/-! ## A001779.P11870110512156389252

`∑[∑[∑[∑[∑[∑[∑[char[2*n]]]]]]]]`
-/

namespace A001779.P11870110512156389252
noncomputable section

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f8 j = n then 1 else 0

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001779.P11870110512156389252

namespace A001779

/-- `∑[∑[∑[∑[∑[∑[∑[char[2*n]]]]]]]]` -/
def P11870110512156389252.Spec : Prop :=
  ∀ n, (P11870110512156389252.a n : ℤ) = A001779 n

end A001779

/-! ## A001779.P11014691247987947006

`abs(∑[∑[∑[∑[∑[a(n-2)+n+1]]]]])` with `a(0)=1, a(1)=2`
-/

namespace A001779.P11014691247987947006
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f5 =>
  f5 (n - 2) + (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001779.P11014691247987947006

namespace A001779

/-- `abs(∑[∑[∑[∑[∑[a(n-2)+n+1]]]]])` -/
def P11014691247987947006.Spec : Prop :=
  ∀ n, (P11014691247987947006.a n : ℤ) = A001779 n

end A001779

/-! ## A001779.P8195743439128261886

`floor(∑[∑[∑[∑[∑[a(n-2)+n+1]]]]])` with `a(0)=1, a(1)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A001779.P8195743439128261886
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f5 =>
  f5 (n - 2) + (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001779.P8195743439128261886

namespace A001779

/-- `floor(∑[∑[∑[∑[∑[a(n-2)+n+1]]]]])` -/
def P8195743439128261886.Spec : Prop :=
  ∀ n, (P8195743439128261886.a n : ℤ) = A001779 n

end A001779

/-! ## A001779.P13348818563277537228

`ceil(∑[∑[∑[∑[∑[a(n-2)+n+1]]]]])` with `a(0)=1, a(1)=2`

`ceil` is left out, it is the identity on integers.
-/

namespace A001779.P13348818563277537228
noncomputable section

def f5 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f5 =>
  f5 (n - 2) + (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001779.P13348818563277537228

namespace A001779

/-- `ceil(∑[∑[∑[∑[∑[a(n-2)+n+1]]]]])` -/
def P13348818563277537228.Spec : Prop :=
  ∀ n, (P13348818563277537228.a n : ℤ) = A001779 n

end A001779

/-! ## A001779.P18157316861489197152

`2*∑[A001769(n)/2]`
-/

namespace A001779.P18157316861489197152
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001769 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001779.P18157316861489197152

namespace A001779

/-- `2*∑[A001769(n)/2]` -/
def P18157316861489197152.Spec : Prop :=
  ∀ n, P18157316861489197152.a n = (A001779 n : ℚ)

end A001779

/-! ## A001779.P15015990468388676678

`A166189(n)+a(n-3)` with `a(0)=1, a(1)=7, a(2)=29`
-/

namespace A001779.P15015990468388676678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 7, 29] fun n a =>
  A166189 n + a (n - 3)

end

end A001779.P15015990468388676678

namespace A001779

/-- `A166189(n)+a(n-3)` -/
def P15015990468388676678.Spec : Prop :=
  ∀ n, P15015990468388676678.a n = A001779 n

end A001779

/-! ## A001779.P16748204253858137832

`A000580(n+7)-a(n-1)` with `a(0)=1`
-/

namespace A001779.P16748204253858137832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000580 (n + 7) - a (n - 1)

end

end A001779.P16748204253858137832

namespace A001779

/-- `A000580(n+7)-a(n-1)` -/
def P16748204253858137832.Spec : Prop :=
  ∀ n, P16748204253858137832.a n = A001779 n

end A001779

/-! ## A001779.P11141076273250321034

`∑[2*A299335(n)]-A299335(n)`
-/

namespace A001779.P11141076273250321034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A299335 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A299335 n

end

end A001779.P11141076273250321034

namespace A001779

/-- `∑[2*A299335(n)]-A299335(n)` -/
def P11141076273250321034.Spec : Prop :=
  ∀ n, P11141076273250321034.a n = A001779 n

end A001779

/-! ## A001779.P7133196967391890311

`2*A001780(n)-A000581(n+8)`
-/

namespace A001779.P7133196967391890311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001780 n - A000581 (n + 8)

end

end A001779.P7133196967391890311

namespace A001779

/-- `2*A001780(n)-A000581(n+8)` -/
def P7133196967391890311.Spec : Prop :=
  ∀ n, P7133196967391890311.a n = A001779 n

end A001779

/-! ## A001779.P6416897699675157860

`A001780(n+1)-(A001780(n)+A001769(n+1))`
-/

namespace A001779.P6416897699675157860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001780 (n + 1) - (A001780 n + A001769 (n + 1))

end

end A001779.P6416897699675157860

namespace A001779

/-- `A001780(n+1)-(A001780(n)+A001769(n+1))` -/
def P6416897699675157860.Spec : Prop :=
  ∀ n, P6416897699675157860.a n = A001779 n

end A001779

/-! ## A001779.P10489604772157217950

`A000580(n+8)+A001780(n)-A001780(n+1)`
-/

namespace A001779.P10489604772157217950
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000580 (n + 8) + (A001780 n - A001780 (n + 1))

end

end A001779.P10489604772157217950

namespace A001779

/-- `A000580(n+8)+A001780(n)-A001780(n+1)` -/
def P10489604772157217950.Spec : Prop :=
  ∀ n, P10489604772157217950.a n = A001779 n

end A001779

/-! ## A001779.P11966142893226547491

`A158909(A167614(n+2))`
-/

namespace A001779.P11966142893226547491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158909 (A167614 (n + 2)).toNat

end

end A001779.P11966142893226547491

namespace A001779

/-- `A158909(A167614(n+2))` -/
def P11966142893226547491.Spec : Prop :=
  ∀ n, P11966142893226547491.a n = A001779 n

end A001779

/-!
# A001780: Expansion of 1/((1+x)*(1-x)^9).

The programs for A001780, the canonical program `A001780.P13721495357938318892` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001780 has offset 0).

The definition of A001780 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-8x+27x^2-48x^3+42x^4-42x^6+48x^7-27x^8+8x^9-x^10))` (program `A001780.P13721495357938318892`, by `A001780.P13721495357938318892.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001780.P13721495357938318892

`ogf(1/(1-8x+27x^2-48x^3+42x^4-42x^6+48x^7-27x^8+8x^9-x^10))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001780

/-- `ogf(1/(1-8x+27x^2-48x^3+42x^4-42x^6+48x^7-27x^8+8x^9-x^10))` -/
def P13721495357938318892.Spec : Prop :=
  ∀ n, P13721495357938318892.a n = A001780 n

theorem P13721495357938318892.correct : P13721495357938318892.Spec := by
  intro n
  simp only [A001780]

end A001780

/-! ## A001780.P16950027984805561081

`C(n+8, 8)-a(n-1)` with `a(0)=1`
-/

namespace A001780.P16950027984805561081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (n + 8) 8 : ℤ) - a (n - 1)

end

end A001780.P16950027984805561081

namespace A001780

/-- `C(n+8, 8)-a(n-1)` -/
def P16950027984805561081.Spec : Prop :=
  ∀ n, P16950027984805561081.a n = A001780 n

end A001780

/-! ## A001780.P7600772504906852762

`∑[∑[∑[∑[∑[∑[∑[∑[char[2*n]]]]]]]]]`
-/

namespace A001780.P7600772504906852762
noncomputable section

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f9 j = n then 1 else 0

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001780.P7600772504906852762

namespace A001780

/-- `∑[∑[∑[∑[∑[∑[∑[∑[char[2*n]]]]]]]]]` -/
def P7600772504906852762.Spec : Prop :=
  ∀ n, (P7600772504906852762.a n : ℤ) = A001780 n

end A001780

/-! ## A001780.P11710539603903062615

`∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]-a(n-1)` with `a(0)=1`
-/

namespace A001780.P11710539603903062615
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A001780.P11710539603903062615

namespace A001780

/-- `∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]-a(n-1)` -/
def P11710539603903062615.Spec : Prop :=
  ∀ n, P11710539603903062615.a n = A001780 n

end A001780

/-! ## A001780.P9223168839671594411

`2*∑[A001779(n)/2]`
-/

namespace A001780.P9223168839671594411
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001779 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001780.P9223168839671594411

namespace A001780

/-- `2*∑[A001779(n)/2]` -/
def P9223168839671594411.Spec : Prop :=
  ∀ n, P9223168839671594411.a n = (A001780 n : ℚ)

end A001780

/-! ## A001780.P5666807704869539120

`2*A001781(n)-A000582(n+9)`
-/

namespace A001780.P5666807704869539120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001781 n - A000582 (n + 9)

end

end A001780.P5666807704869539120

namespace A001780

/-- `2*A001781(n)-A000582(n+9)` -/
def P5666807704869539120.Spec : Prop :=
  ∀ n, P5666807704869539120.a n = A001780 n

end A001780

/-! ## A001780.P4945349175369988638

`A001781(n+1)-(A001781(n)+A001779(n+1))`
-/

namespace A001780.P4945349175369988638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001781 (n + 1) - (A001781 n + A001779 (n + 1))

end

end A001780.P4945349175369988638

namespace A001780

/-- `A001781(n+1)-(A001781(n)+A001779(n+1))` -/
def P4945349175369988638.Spec : Prop :=
  ∀ n, P4945349175369988638.a n = A001780 n

end A001780

/-! ## A001780.P4369314101022817052

`A000581(n+9)+A001781(n)-A001781(n+1)`
-/

namespace A001780.P4369314101022817052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000581 (n + 9) + (A001781 n - A001781 (n + 1))

end

end A001780.P4369314101022817052

namespace A001780

/-- `A000581(n+9)+A001781(n)-A001781(n+1)` -/
def P4369314101022817052.Spec : Prop :=
  ∀ n, P4369314101022817052.a n = A001780 n

end A001780

/-!
# A001781: Expansion of 1/((1+x)*(1-x)^10).

The programs for A001781, the canonical program `A001781.P13734944431288317138` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001781 has offset 0).

The definition of A001781 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf(1/(1-9x+35x^2-75x^3+90x^4-42x^5-42x^6+90x^7-75x^8+35x^9-9x^10+x^11))` (program `A001781.P13734944431288317138`, by `A001781.P13734944431288317138.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001781.P13734944431288317138

`ogf(1/(1-9x+35x^2-75x^3+90x^4-42x^5-42x^6+90x^7-75x^8+35x^9-9x^10+x^11))`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001781

/-- `ogf(1/(1-9x+35x^2-75x^3+90x^4-42x^5-42x^6+90x^7-75x^8+35x^9-9x^10+x^11))` -/
def P13734944431288317138.Spec : Prop :=
  ∀ n, P13734944431288317138.a n = A001781 n

theorem P13734944431288317138.correct : P13734944431288317138.Spec := by
  intro n
  simp only [A001781]

end A001781

/-! ## A001781.P5583525703796913134

`C(n+9, 9)-a(n-1)` with `a(0)=1`
-/

namespace A001781.P5583525703796913134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Nat.choose (n + 9) 9 : ℤ) - a (n - 1)

end

end A001781.P5583525703796913134

namespace A001781

/-- `C(n+9, 9)-a(n-1)` -/
def P5583525703796913134.Spec : Prop :=
  ∀ n, P5583525703796913134.a n = A001781 n

end A001781

/-! ## A001781.P3936237721217444774

`∑[(8/n+1)*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A001781.P3936237721217444774
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (8 / (n : ℚ) + 1) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A001781.P3936237721217444774

namespace A001781

/-- `∑[(8/n+1)*a(n-1)]-a(n-1)` -/
def P3936237721217444774.Spec : Prop :=
  ∀ n, P3936237721217444774.a n = (A001781 n : ℚ)

end A001781

/-! ## A001781.P3885480533072246531

`∑[∑[∑[∑[∑[∑[∑[a(n-2)+n+1]]]]]]]` with `a(0)=1, a(1)=2`
-/

namespace A001781.P3885480533072246531
noncomputable section

def f7 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f7 =>
  f7 (n - 2) + (n + 1)

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001781.P3885480533072246531

namespace A001781

/-- `∑[∑[∑[∑[∑[∑[∑[a(n-2)+n+1]]]]]]]` -/
def P3885480533072246531.Spec : Prop :=
  ∀ n, (P3885480533072246531.a n : ℤ) = A001781 n

end A001781

/-! ## A001781.P14991376863061067684

`∑[A001780(n)]`
-/

namespace A001781.P14991376863061067684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001780 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001781.P14991376863061067684

namespace A001781

/-- `∑[A001780(n)]` -/
def P14991376863061067684.Spec : Prop :=
  ∀ n, P14991376863061067684.a n = A001781 n

end A001781

/-! ## A001781.P17025442023780553784

`∑[∑[A001779(n)]]`
-/

namespace A001781.P17025442023780553784
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001781.P17025442023780553784

namespace A001781

/-- `∑[∑[A001779(n)]]` -/
def P17025442023780553784.Spec : Prop :=
  ∀ n, P17025442023780553784.a n = A001781 n

end A001781

/-! ## A001781.P2349524361033236394

`∑[∑[∑[A001769(n)]]]`
-/

namespace A001781.P2349524361033236394
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001769 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001781.P2349524361033236394

namespace A001781

/-- `∑[∑[∑[A001769(n)]]]` -/
def P2349524361033236394.Spec : Prop :=
  ∀ n, P2349524361033236394.a n = A001781 n

end A001781

/-! ## A001781.P1028087339565298877

`A000582(n+9)-a(n-1)` with `a(0)=1`
-/

namespace A001781.P1028087339565298877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000582 (n + 9) - a (n - 1)

end

end A001781.P1028087339565298877

namespace A001781

/-- `A000582(n+9)-a(n-1)` -/
def P1028087339565298877.Spec : Prop :=
  ∀ n, P1028087339565298877.a n = A001781 n

end A001781

/-! ## A001781.P493335730849718706

`A001786(n+1)-(A001786(n)+A001780(n+1))`
-/

namespace A001781.P493335730849718706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001786 (n + 1) - (A001786 n + A001780 (n + 1))

end

end A001781.P493335730849718706

namespace A001781

/-- `A001786(n+1)-(A001786(n)+A001780(n+1))` -/
def P493335730849718706.Spec : Prop :=
  ∀ n, P493335730849718706.a n = A001781 n

end A001781

/-!
# A001783: n-phi-torial, or phi-torial of n: Product k, 1 <= k <= n, k relatively prime to n.

The programs for A001783, there is no canonical definition to state claims against.
-/

/-! ## A001783.P12573367570726461280

`A124441(n+1)*A124442(n+1)`
-/

namespace A001783.P12573367570726461280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124441 (n + 1) * A124442 (n + 1)

end

end A001783.P12573367570726461280

/-! ## A001783.P368980996922541975

`A250269(n+1)/A193679(n+1)`
-/

namespace A001783.P368980996922541975
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A250269 (n + 1) : ℚ) / (A193679 (n + 1) : ℚ)

end

end A001783.P368980996922541975

/-! ## A001783.P12284060745813692842

`(n+1)!/A066570(n+1)`
-/

namespace A001783.P12284060745813692842
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) / (A066570 (n + 1) : ℚ)

end

end A001783.P12284060745813692842

/-! ## A001783.P9133514296310863129

`A038610(n+1)*A128247(n+1)`
-/

namespace A001783.P9133514296310863129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038610 (n + 1) * A128247 (n + 1)

end

end A001783.P9133514296310863129

/-! ## A001783.P5607437649389211682

`A083267(n+1)/A007955(n+1)`
-/

namespace A001783.P5607437649389211682
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A083267 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A001783.P5607437649389211682

/-! ## A001783.P6868023656466170339

`A055067(n+1)/A070251(n+1)`
-/

namespace A001783.P6868023656466170339
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055067 (n + 1) : ℚ) / (A070251 (n + 1) : ℚ)

end

end A001783.P6868023656466170339

/-! ## A001783.P9269928684236882391

`A051696(n+1)/A066570(n+1)*A095996(n+1)`
-/

namespace A001783.P9269928684236882391
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A051696 (n + 1) : ℚ) / (A066570 (n + 1) : ℚ) * (A095996 (n + 1) : ℚ)

end

end A001783.P9269928684236882391

/-! ## A001783.P6857791455513079957

`A056855(n+1)/A093600(n+1)*A069220(n+1)`
-/

namespace A001783.P6857791455513079957
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056855 (n + 1) : ℚ) / (A093600 (n + 1) : ℚ) * (A069220 (n + 1) : ℚ)

end

end A001783.P6857791455513079957

/-! ## A001783.P14508798523274711775

`A055067(n+1)/gcd(A055067(n+1), A066570(n+1))`
-/

namespace A001783.P14508798523274711775
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055067 (n + 1) : ℚ) / (Int.gcd (A055067 (n + 1)) (A066570 (n + 1)) : ℚ)

end

end A001783.P14508798523274711775

/-! ## A001783.P253493768184440467

`A000142(n+1)/A066570(n+1)`
-/

namespace A001783.P253493768184440467
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000142 (n + 1) : ℚ) / (A066570 (n + 1) : ℚ)

end

end A001783.P253493768184440467

/-!
# A001784: Second-order reciprocal Stirling number (Fekete) a(n) = [[2n+3, n]]. The number of n-orbit permutations of a (2n+3)-set with at least 2 elements in each orbit. Also known as associated Stirling numbers of the first kind (e.g., Comtet).

The programs for A001784, there is no canonical definition to state claims against.
-/

/-! ## A001784.P15882458638853102318

`record[A079510(A005893(n))]`
-/

namespace A001784.P15882458638853102318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079510 (A005893 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001784.P15882458638853102318

/-! ## A001784.P15367714067701872601

`A008306(∑[2*(n+1)])`
-/

namespace A001784.P15367714067701872601
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008306 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001784.P15367714067701872601

/-! ## A001784.P3054292964827538619

`record[A106828(n*(n+3))]`
-/

namespace A001784.P3054292964827538619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106828 (n * (n + 3))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001784.P3054292964827538619

/-! ## A001784.P8910772752790958023

`record[gcd(A008306(2*(n+1)), A025581(n))]`
-/

namespace A001784.P8910772752790958023
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008306 (2 * (n + 1))) (A025581 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001784.P8910772752790958023

/-! ## A001784.P12333565608665583071

`A079510(A005893(n+1)%A112000(n))`
-/

namespace A001784.P12333565608665583071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079510 (Int.tmod (A005893 (n + 1)) (A112000 n)).toNat

end

end A001784.P12333565608665583071

/-!
# A001785: Second-order reciprocal Stirling number (Fekete) a(n) = [[2n+4, n]]. The number of n-orbit permutations of a (2n+4)-set with at least 2 elements in each orbit. Also known as associated Stirling numbers of the first kind (e.g., Comtet).

The programs for A001785, there is no canonical definition to state claims against.
-/

/-! ## A001785.P2175278823108371088

`A008306(∑[char[1]+1+n]+∑[n+2]-1)`
-/

namespace A001785.P2175278823108371088
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (if ∃ j, f2 j = n then 1 else 0) + 1 + n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008306 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + (((∑ j ∈ Finset.range (n + 1), f3 j : ℕ) : ℤ) - 1)).toNat

end

end A001785.P2175278823108371088

/-! ## A001785.P12761136676416650466

`A259456(A052905(n+1)*A057427(n))`
-/

namespace A001785.P12761136676416650466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259456 (A052905 (n + 1) * A057427 n).toNat

end

end A001785.P12761136676416650466

/-!
# A001786: Expansion of 1/((1+x)*(1-x)^11).

The programs for A001786, the canonical program `A001786.P7983546785029241842` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001786 has offset 0).

The definition of A001786 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A001786.P7983546785029241842

`C(n+10, 10)-a(n-1)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001786

/-- `C(n+10, 10)-a(n-1)` -/
def P7983546785029241842.Spec : Prop :=
  ∀ n, P7983546785029241842.a n = A001786 n

theorem P7983546785029241842.correct : P7983546785029241842.Spec := by
  intro n
  simp only [A001786]

end A001786

/-! ## A001786.P14236523689878676100

`∑[(9/n+1)*a(n-1)]-a(n-1)` with `a(0)=1`
-/

namespace A001786.P14236523689878676100
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1] fun n f1 =>
  (9 / (n : ℚ) + 1) * f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ∑ j ∈ Finset.range (n + 1), f1 j - a (n - 1)

end

end A001786.P14236523689878676100

namespace A001786

/-- `∑[(9/n+1)*a(n-1)]-a(n-1)` -/
def P14236523689878676100.Spec : Prop :=
  ∀ n, P14236523689878676100.a n = (A001786 n : ℚ)

end A001786

/-! ## A001786.P4967381796743169538

`∑[∑[∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]]-a(n-1)` with `a(0)=1`
-/

namespace A001786.P4967381796743169538
noncomputable section

def f9 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f8 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f9 j

def f7 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f8 j

def f6 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f7 j

def f5 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f6 j

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f5 j

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - a (n - 1)

end

end A001786.P4967381796743169538

namespace A001786

/-- `∑[∑[∑[∑[∑[∑[∑[∑[∑[n+1]]]]]]]]]-a(n-1)` -/
def P4967381796743169538.Spec : Prop :=
  ∀ n, P4967381796743169538.a n = A001786 n

end A001786

/-! ## A001786.P4820826520111355622

`∑[A001781(n)]`
-/

namespace A001786.P4820826520111355622
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001781 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001786.P4820826520111355622

namespace A001786

/-- `∑[A001781(n)]` -/
def P4820826520111355622.Spec : Prop :=
  ∀ n, P4820826520111355622.a n = A001786 n

end A001786

/-! ## A001786.P11819377292964475260

`∑[∑[A001780(n)]]`
-/

namespace A001786.P11819377292964475260
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001780 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001786.P11819377292964475260

namespace A001786

/-- `∑[∑[A001780(n)]]` -/
def P11819377292964475260.Spec : Prop :=
  ∀ n, P11819377292964475260.a n = A001786 n

end A001786

/-! ## A001786.P3263939925516024413

`∑[∑[∑[A001779(n)]]]`
-/

namespace A001786.P3263939925516024413
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001779 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001786.P3263939925516024413

namespace A001786

/-- `∑[∑[∑[A001779(n)]]]` -/
def P3263939925516024413.Spec : Prop :=
  ∀ n, P3263939925516024413.a n = A001786 n

end A001786

/-! ## A001786.P12647584878336685296

`A001808(n+1)-(A001808(n)+A001781(n+1))`
-/

namespace A001786.P12647584878336685296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001808 (n + 1) - (A001808 n + A001781 (n + 1))

end

end A001786.P12647584878336685296

namespace A001786

/-- `A001808(n+1)-(A001808(n)+A001781(n+1))` -/
def P12647584878336685296.Spec : Prop :=
  ∀ n, P12647584878336685296.a n = A001786 n

end A001786

/-!
# A001787: a(n) = n*2^(n-1).

The programs for A001787, the canonical program `A001787.P18099519164826187117` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001787 has offset 0).

The definition of A001787 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001787.P15038746391147746720

`n*2^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001787.P15038746391147746720
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A001787.P15038746391147746720

namespace A001787

/-- `n*2^(n-1)` -/
def P15038746391147746720.Spec : Prop :=
  ∀ n, P15038746391147746720.a n = (A001787 n : ℚ)

end A001787

/-! ## A001787.P18099519164826187117

`4*a(n-1)-4*a(n-2)` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001787

/-- `4*a(n-1)-4*a(n-2)` -/
def P18099519164826187117.Spec : Prop :=
  ∀ n, P18099519164826187117.a n = A001787 n

theorem P18099519164826187117.correct : P18099519164826187117.Spec := by
  intro n
  simp only [A001787]

end A001787

/-! ## A001787.P14471631026589809826

`(A000225(n)+A000337(n))/2`
-/

namespace A001787.P14471631026589809826
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 n + A000337 n : ℚ) / 2

end

end A001787.P14471631026589809826

namespace A001787

/-- `(A000225(n)+A000337(n))/2` -/
def P14471631026589809826.Spec : Prop :=
  ∀ n, P14471631026589809826.a n = (A001787 n : ℚ)

end A001787

/-! ## A001787.P12382023848454382528

`A000788(A000225(n))`
-/

namespace A001787.P12382023848454382528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000788 (A000225 n).toNat

end

end A001787.P12382023848454382528

namespace A001787

/-- `A000788(A000225(n))` -/
def P12382023848454382528.Spec : Prop :=
  ∀ n, P12382023848454382528.a n = A001787 n

end A001787

/-! ## A001787.P15852228597604309560

`ogf(x/(1-4x+4x^2))`
-/

namespace A001787.P15852228597604309560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -4, 4] n

end

end A001787.P15852228597604309560

namespace A001787

/-- `ogf(x/(1-4x+4x^2))` -/
def P15852228597604309560.Spec : Prop :=
  ∀ n, P15852228597604309560.a n = A001787 n

end A001787

/-! ## A001787.P7606088379101454490

`lcm(n, n/2*(-2)^n)`
-/

namespace A001787.P7606088379101454490
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (SequenceMachineLib.roundAway ((n : ℚ) / 2 * ((-2) ^ n : ℚ)))

end

end A001787.P7606088379101454490

namespace A001787

/-- `lcm(n, n/2*(-2)^n)` -/
def P7606088379101454490.Spec : Prop :=
  ∀ n, (P7606088379101454490.a n : ℤ) = A001787 n

end A001787

/-! ## A001787.P6997028461134856759

`floor(n*Δ[2*a(n-1)])` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001787.P6997028461134856759
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))

end

end A001787.P6997028461134856759

namespace A001787

/-- `floor(n*Δ[2*a(n-1)])` -/
def P6997028461134856759.Spec : Prop :=
  ∀ n, P6997028461134856759.a n = A001787 n

end A001787

/-! ## A001787.P13546293954078582009

`floor(n*∑[2*a(n-1)])` with `a(0)=0, a(1)=1, a(2)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001787.P13546293954078582009
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0, 1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001787.P13546293954078582009

namespace A001787

/-- `floor(n*∑[2*a(n-1)])` -/
def P13546293954078582009.Spec : Prop :=
  ∀ n, (P13546293954078582009.a n : ℤ) = A001787 n

end A001787

/-! ## A001787.P12641506518512517634

`2*a(n-1)/(1-1/n)` with `a(0)=0, a(1)=1`
-/

namespace A001787.P12641506518512517634
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  2 * a (n - 1) / (1 - 1 / (n : ℚ))

end

end A001787.P12641506518512517634

namespace A001787

/-- `2*a(n-1)/(1-1/n)` -/
def P12641506518512517634.Spec : Prop :=
  ∀ n, P12641506518512517634.a n = (A001787 n : ℚ)

end A001787

/-! ## A001787.P952955389028662393

`abs(4*(a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`
-/

namespace A001787.P952955389028662393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  |4 * (a (n - 1) - a (n - 2))|

end

end A001787.P952955389028662393

namespace A001787

/-- `abs(4*(a(n-1)-a(n-2)))` -/
def P952955389028662393.Spec : Prop :=
  ∀ n, P952955389028662393.a n = A001787 n

end A001787

/-! ## A001787.P11804172069719879060

`-4*(a(n-2)-a(n-1))` with `a(0)=0, a(1)=1`
-/

namespace A001787.P11804172069719879060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  -(4 * (a (n - 2) - a (n - 1)))

end

end A001787.P11804172069719879060

namespace A001787

/-- `-4*(a(n-2)-a(n-1))` -/
def P11804172069719879060.Spec : Prop :=
  ∀ n, P11804172069719879060.a n = A001787 n

end A001787

/-! ## A001787.P4851167504988138923

`floor(4*(a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A001787.P4851167504988138923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A001787.P4851167504988138923

namespace A001787

/-- `floor(4*(a(n-1)-a(n-2)))` -/
def P4851167504988138923.Spec : Prop :=
  ∀ n, P4851167504988138923.a n = A001787 n

theorem P4851167504988138923.correct : P4851167504988138923.Spec := by
  intro n
  simp only [A001787, Nat.add_sub_cancel, A001787.P4851167504988138923.a, A001787.P18099519164826187117.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001787

/-! ## A001787.P11677838388253513725

`ceil(4*(a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`

`ceil` is left out, it is the identity on integers.
-/

namespace A001787.P11677838388253513725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A001787.P11677838388253513725

namespace A001787

/-- `ceil(4*(a(n-1)-a(n-2)))` -/
def P11677838388253513725.Spec : Prop :=
  ∀ n, P11677838388253513725.a n = A001787 n

theorem P11677838388253513725.correct : P11677838388253513725.Spec := by
  intro n
  simp only [A001787, Nat.add_sub_cancel, A001787.P11677838388253513725.a, A001787.P18099519164826187117.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001787

/-! ## A001787.P1094868709194204111

`round(4*(a(n-1)-a(n-2)))` with `a(0)=0, a(1)=1`

`round` is left out, it is the identity on integers.
-/

namespace A001787.P1094868709194204111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A001787.P1094868709194204111

namespace A001787

/-- `round(4*(a(n-1)-a(n-2)))` -/
def P1094868709194204111.Spec : Prop :=
  ∀ n, P1094868709194204111.a n = A001787 n

theorem P1094868709194204111.correct : P1094868709194204111.Spec := by
  intro n
  simp only [A001787, Nat.add_sub_cancel, A001787.P1094868709194204111.a, A001787.P18099519164826187117.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001787

/-! ## A001787.P4421939380153237788

`a(n-1)+(n+1)/2^(2-n)` with `a(0)=0`
-/

namespace A001787.P4421939380153237788
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (n + 1 : ℚ) / (2 : ℚ) ^ (2 - (n : ℤ) : ℤ)

end

end A001787.P4421939380153237788

namespace A001787

/-- `a(n-1)+(n+1)/2^(2-n)` -/
def P4421939380153237788.Spec : Prop :=
  ∀ n, P4421939380153237788.a n = (A001787 n : ℚ)

end A001787

/-! ## A001787.P98507323172418980

`(a(n-1)-a(n-2))/(1/2)²` with `a(0)=0, a(1)=1`
-/

namespace A001787.P98507323172418980
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A001787.P98507323172418980

namespace A001787

/-- `(a(n-1)-a(n-2))/(1/2)²` -/
def P98507323172418980.Spec : Prop :=
  ∀ n, P98507323172418980.a n = (A001787 n : ℚ)

end A001787

/-!
# A001788: a(n) = n*(n+1)*2^(n-2).

The programs for A001788, the canonical program `A001788.P5561357173935824427` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001788 has offset 0).

The definition of A001788 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001788.P2028410668538665798

`n*(n+1)*2^(n-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001788.P2028410668538665798
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A001788.P2028410668538665798

namespace A001788

/-- `n*(n+1)*2^(n-2)` -/
def P2028410668538665798.Spec : Prop :=
  ∀ n, P2028410668538665798.a n = (A001788 n : ℚ)

end A001788

/-! ## A001788.P5561357173935824427

`2*a(n-1)+A001787(n)` with `a(0)=0`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001788

/-- `2*a(n-1)+A001787(n)` -/
def P5561357173935824427.Spec : Prop :=
  ∀ n, P5561357173935824427.a n = A001788 n

theorem P5561357173935824427.correct : P5561357173935824427.Spec := by
  intro n
  simp only [A001788]

end A001788

/-! ## A001788.P1655115547632314785

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A001788.P1655115547632314785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  6 * a (n - 1) - 12 * a (n - 2) + 8 * a (n - 3)

end

end A001788.P1655115547632314785

namespace A001788

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P1655115547632314785.Spec : Prop :=
  ∀ n, P1655115547632314785.a n = A001788 n

end A001788

/-! ## A001788.P6688414268212063812

`a(n-1)+(n+3)/(n-1)*a(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A001788.P6688414268212063812
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + (n + 3 : ℚ) / ((n : ℤ) - 1 : ℚ) * a (n - 1)

end

end A001788.P6688414268212063812

namespace A001788

/-- `a(n-1)+(n+3)/(n-1)*a(n-1)` -/
def P6688414268212063812.Spec : Prop :=
  ∀ n, P6688414268212063812.a n = (A001788 n : ℚ)

end A001788

/-! ## A001788.P4253279686812724533

`A048506(n)-1`
-/

namespace A001788.P4253279686812724533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048506 n - 1

end

end A001788.P4253279686812724533

namespace A001788

/-- `A048506(n)-1` -/
def P4253279686812724533.Spec : Prop :=
  ∀ n, P4253279686812724533.a n = A001788 n

end A001788

/-! ## A001788.P15466048192513691943

`∑[∑[A049611(n)]]`
-/

namespace A001788.P15466048192513691943
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001788.P15466048192513691943

namespace A001788

/-- `∑[∑[A049611(n)]]` -/
def P15466048192513691943.Spec : Prop :=
  ∀ n, P15466048192513691943.a n = A001788 n

end A001788

/-! ## A001788.P1825050007942274949

`2^n-A127276(n)`
-/

namespace A001788.P1825050007942274949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A127276 n

end

end A001788.P1825050007942274949

namespace A001788

/-- `2^n-A127276(n)` -/
def P1825050007942274949.Spec : Prop :=
  ∀ n, P1825050007942274949.a n = A001788 n

end A001788

/-! ## A001788.P15514107137269147586

`abs(∑[n]*A123344(n))`
-/

namespace A001788.P15514107137269147586
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A123344 n|

end

end A001788.P15514107137269147586

namespace A001788

/-- `abs(∑[n]*A123344(n))` -/
def P15514107137269147586.Spec : Prop :=
  ∀ n, P15514107137269147586.a n = A001788 n

end A001788

/-! ## A001788.P15672194471735471664

`abs(∑[n]*A154589(n))`
-/

namespace A001788.P15672194471735471664
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A154589 n|

end

end A001788.P15672194471735471664

namespace A001788

/-- `abs(∑[n]*A154589(n))` -/
def P15672194471735471664.Spec : Prop :=
  ∀ n, P15672194471735471664.a n = A001788 n

end A001788

/-! ## A001788.P17216413881003315414

`abs(∑[n]*A157823(n))`
-/

namespace A001788.P17216413881003315414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) * A157823 n|

end

end A001788.P17216413881003315414

namespace A001788

/-- `abs(∑[n]*A157823(n))` -/
def P17216413881003315414.Spec : Prop :=
  ∀ n, P17216413881003315414.a n = A001788 n

end A001788

/-! ## A001788.P18417220724515469089

`abs(n*A168150(n+1))`
-/

namespace A001788.P18417220724515469089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A168150 (n + 1)|

end

end A001788.P18417220724515469089

namespace A001788

/-- `abs(n*A168150(n+1))` -/
def P18417220724515469089.Spec : Prop :=
  ∀ n, P18417220724515469089.a n = A001788 n

end A001788

/-! ## A001788.P1738130906304370126

`∑[n/2*A045623(n)]`
-/

namespace A001788.P1738130906304370126
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A045623 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001788.P1738130906304370126

namespace A001788

/-- `∑[n/2*A045623(n)]` -/
def P1738130906304370126.Spec : Prop :=
  ∀ n, P1738130906304370126.a n = (A001788 n : ℚ)

end A001788

/-! ## A001788.P6019092687637902547

`A104270(n+1)-2^n`
-/

namespace A001788.P6019092687637902547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104270 (n + 1) - (2 ^ n : ℤ)

end

end A001788.P6019092687637902547

namespace A001788

/-- `A104270(n+1)-2^n` -/
def P6019092687637902547.Spec : Prop :=
  ∀ n, P6019092687637902547.a n = A001788 n

end A001788

/-! ## A001788.P13948752202951928349

`A081908(n+1)-2^(n+1)`
-/

namespace A001788.P13948752202951928349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081908 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A001788.P13948752202951928349

namespace A001788

/-- `A081908(n+1)-2^(n+1)` -/
def P13948752202951928349.Spec : Prop :=
  ∀ n, P13948752202951928349.a n = A001788 n

end A001788

/-! ## A001788.P9047050679254494152

`A001815(n)+A001787(n)`
-/

namespace A001788.P9047050679254494152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001815 n + A001787 n

end

end A001788.P9047050679254494152

namespace A001788

/-- `A001815(n)+A001787(n)` -/
def P9047050679254494152.Spec : Prop :=
  ∀ n, P9047050679254494152.a n = A001788 n

end A001788

/-! ## A001788.P9321521864936655079

`A178987(n)+A036289(n)`
-/

namespace A001788.P9321521864936655079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A036289 n

end

end A001788.P9321521864936655079

namespace A001788

/-- `A178987(n)+A036289(n)` -/
def P9321521864936655079.Spec : Prop :=
  ∀ n, P9321521864936655079.a n = A001788 n

end A001788

/-! ## A001788.P8471191880461875292

`A087431(n)-A011782(n)`
-/

namespace A001788.P8471191880461875292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087431 n - A011782 n

end

end A001788.P8471191880461875292

namespace A001788

/-- `A087431(n)-A011782(n)` -/
def P8471191880461875292.Spec : Prop :=
  ∀ n, P8471191880461875292.a n = A001788 n

end A001788

/-! ## A001788.P9211253366093959894

`A176027(n)-A036289(n)`
-/

namespace A001788.P9211253366093959894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n - A036289 n

end

end A001788.P9211253366093959894

namespace A001788

/-- `A176027(n)-A036289(n)` -/
def P9211253366093959894.Spec : Prop :=
  ∀ n, P9211253366093959894.a n = A001788 n

end A001788

/-! ## A001788.P1778236087934293256

`A139756(n+1)+A001815(n)`
-/

namespace A001788.P1778236087934293256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139756 (n + 1) + A001815 n

end

end A001788.P1778236087934293256

namespace A001788

/-- `A139756(n+1)+A001815(n)` -/
def P1778236087934293256.Spec : Prop :=
  ∀ n, P1778236087934293256.a n = A001788 n

end A001788

/-! ## A001788.P16257649638868686081

`A007466(n+1)-A001792(n)`
-/

namespace A001788.P16257649638868686081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (n + 1) - A001792 n

end

end A001788.P16257649638868686081

namespace A001788

/-- `A007466(n+1)-A001792(n)` -/
def P16257649638868686081.Spec : Prop :=
  ∀ n, P16257649638868686081.a n = A001788 n

end A001788

/-!
# A001789: a(n) = binomial(n,3)*2^(n-3).

The programs for A001789, the canonical program `A001789.P13247548514107046821` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001789 has offset 3).

The definition of A001789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `C(n+3, 3)*2^n` (program `A001789.P13247548514107046821`, by `A001789.P13247548514107046821.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A001789.P13247548514107046821

`C(n+3, 3)*2^n`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001789

/-- `C(n+3, 3)*2^n` -/
def P13247548514107046821.Spec : Prop :=
  ∀ n, (P13247548514107046821.a n : ℤ) = A001789 (n + 3)

theorem P13247548514107046821.correct : P13247548514107046821.Spec := by
  intro n
  simp only [A001789, Nat.add_sub_cancel]

end A001789

/-! ## A001789.P16383581372503933411

`2*a(n-1)+A001788(n+1)` with `a(0)=1`
-/

namespace A001789.P16383581372503933411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  2 * a (n - 1) + A001788 (n + 1)

end

end A001789.P16383581372503933411

namespace A001789

/-- `2*a(n-1)+A001788(n+1)` -/
def P16383581372503933411.Spec : Prop :=
  ∀ n, P16383581372503933411.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P5131303180733845960

`8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` with `a(0)=1, a(1)=8, a(2)=40, a(3)=160`
-/

namespace A001789.P5131303180733845960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 8, 40, 160] fun n a =>
  8 * a (n - 1) - 24 * a (n - 2) + 32 * a (n - 3) - 16 * a (n - 4)

end

end A001789.P5131303180733845960

namespace A001789

/-- `8*a(n-1)-24*a(n-2)+32*a(n-3)-16*a(n-4)` -/
def P5131303180733845960.Spec : Prop :=
  ∀ n, P5131303180733845960.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P2542223691445842108

`2^n*∑[∑[n+1]]`
-/

namespace A001789.P2542223691445842108
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n * (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001789.P2542223691445842108

namespace A001789

/-- `2^n*∑[∑[n+1]]` -/
def P2542223691445842108.Spec : Prop :=
  ∀ n, (P2542223691445842108.a n : ℤ) = A001789 (n + 3)

end A001789

/-! ## A001789.P16879646533052806626

`C(n+3, 3)/2^-n`
-/

namespace A001789.P16879646533052806626
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 3) 3 : ℚ) / (2 : ℚ) ^ (-(n : ℤ) : ℤ)

end

end A001789.P16879646533052806626

namespace A001789

/-- `C(n+3, 3)/2^-n` -/
def P16879646533052806626.Spec : Prop :=
  ∀ n, P16879646533052806626.a n = (A001789 (n + 3) : ℚ)

theorem P16879646533052806626.correct : P16879646533052806626.Spec := by
  intro n
  simp only [A001789, Nat.add_sub_cancel, A001789.P16879646533052806626.a, A001789.P13247548514107046821.a, SequenceMachineLib.memo_apply]
  try simp

end A001789

/-! ## A001789.P14925620236151092425

`lcm(4, (6/n+2)*a(n-1))` with `a(0)=1`
-/

namespace A001789.P14925620236151092425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  Int.lcm 4 (SequenceMachineLib.roundAway ((6 / (n : ℚ) + 2) * (a (n - 1) : ℚ)))

end

end A001789.P14925620236151092425

namespace A001789

/-- `lcm(4, (6/n+2)*a(n-1))` -/
def P14925620236151092425.Spec : Prop :=
  ∀ n, (P14925620236151092425.a n : ℤ) = A001789 (n + 3)

end A001789

/-! ## A001789.P16275283615822296920

`or(4, 2*(a(n-1)+3*a(n-1)/n))-4` with `a(0)=1`
-/

namespace A001789.P16275283615822296920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 4 (SequenceMachineLib.roundAway (2 * ((a (n - 1) : ℚ) + 3 * ((a (n - 1) : ℚ) / (n : ℚ))))) - 4

end

end A001789.P16275283615822296920

namespace A001789

/-- `or(4, 2*(a(n-1)+3*a(n-1)/n))-4` -/
def P16275283615822296920.Spec : Prop :=
  ∀ n, P16275283615822296920.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P15603901016484843856

`xor(4, 2*(a(n-1)+3*a(n-1)/n))-4` with `a(0)=1`
-/

namespace A001789.P15603901016484843856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.xor 4 (SequenceMachineLib.roundAway (2 * ((a (n - 1) : ℚ) + 3 * ((a (n - 1) : ℚ) / (n : ℚ))))) - 4

end

end A001789.P15603901016484843856

namespace A001789

/-- `xor(4, 2*(a(n-1)+3*a(n-1)/n))-4` -/
def P15603901016484843856.Spec : Prop :=
  ∀ n, P15603901016484843856.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P7722509026499117841

`∑[A001794(n)]`
-/

namespace A001789.P7722509026499117841
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001794 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001789.P7722509026499117841

namespace A001789

/-- `∑[A001794(n)]` -/
def P7722509026499117841.Spec : Prop :=
  ∀ n, P7722509026499117841.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P3390464791084297479

`∑[∑[A055585(n)]]`
-/

namespace A001789.P3390464791084297479
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055585 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001789.P3390464791084297479

namespace A001789

/-- `∑[∑[A055585(n)]]` -/
def P3390464791084297479.Spec : Prop :=
  ∀ n, P3390464791084297479.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P3364998610101862434

`∑[∑[∑[A049612(n+1)]]]`
-/

namespace A001789.P3364998610101862434
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001789.P3364998610101862434

namespace A001789

/-- `∑[∑[∑[A049612(n+1)]]]` -/
def P3364998610101862434.Spec : Prop :=
  ∀ n, P3364998610101862434.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P2549404018576366905

`A081913(n+3)-2^(n+3)`
-/

namespace A001789.P2549404018576366905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081913 (n + 3) - (2 ^ (n + 3) : ℤ)

end

end A001789.P2549404018576366905

namespace A001789

/-- `A081913(n+3)-2^(n+3)` -/
def P2549404018576366905.Spec : Prop :=
  ∀ n, P2549404018576366905.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P10895218147858967467

`∑[∑[(n+1)/3*A058396(n+1)]]`
-/

namespace A001789.P10895218147858967467
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A058396 (n + 1) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001789.P10895218147858967467

namespace A001789

/-- `∑[∑[(n+1)/3*A058396(n+1)]]` -/
def P10895218147858967467.Spec : Prop :=
  ∀ n, P10895218147858967467.a n = (A001789 (n + 3) : ℚ)

end A001789

/-! ## A001789.P4583771621165733612

`abs(C(n+3, 3)*A000079(n)-1)+1`
-/

namespace A001789.P4583771621165733612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(Nat.choose (n + 3) 3 : ℤ) * A000079 n - 1| + 1

end

end A001789.P4583771621165733612

namespace A001789

/-- `abs(C(n+3, 3)*A000079(n)-1)+1` -/
def P4583771621165733612.Spec : Prop :=
  ∀ n, P4583771621165733612.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P8088531658765873714

`∑[∑[∑[n+2]]*A011782(n)-1]+n`
-/

namespace A001789.P8088531658765873714
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A011782 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A001789.P8088531658765873714

namespace A001789

/-- `∑[∑[∑[n+2]]*A011782(n)-1]+n` -/
def P8088531658765873714.Spec : Prop :=
  ∀ n, P8088531658765873714.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P7468364842457716052

`A290026(n+1)+A014477(n)`
-/

namespace A001789.P7468364842457716052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290026 (n + 1) + A014477 n

end

end A001789.P7468364842457716052

namespace A001789

/-- `A290026(n+1)+A014477(n)` -/
def P7468364842457716052.Spec : Prop :=
  ∀ n, P7468364842457716052.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P8240365093034960105

`A085385(n+1)-A001788(n)`
-/

namespace A001789.P8240365093034960105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085385 (n + 1) - A001788 n

end

end A001789.P8240365093034960105

namespace A001789

/-- `A085385(n+1)-A001788(n)` -/
def P8240365093034960105.Spec : Prop :=
  ∀ n, P8240365093034960105.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P14820637811160957510

`A082138(n+1)-A080929(n+1)`
-/

namespace A001789.P14820637811160957510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082138 (n + 1) - A080929 (n + 1)

end

end A001789.P14820637811160957510

namespace A001789

/-- `A082138(n+1)-A080929(n+1)` -/
def P14820637811160957510.Spec : Prop :=
  ∀ n, P14820637811160957510.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P4771634169921371068

`A082138(n+1)-A052482(n+2)`
-/

namespace A001789.P4771634169921371068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082138 (n + 1) - A052482 (n + 2)

end

end A001789.P4771634169921371068

namespace A001789

/-- `A082138(n+1)-A052482(n+2)` -/
def P4771634169921371068.Spec : Prop :=
  ∀ n, P4771634169921371068.a n = A001789 (n + 3)

end A001789

/-! ## A001789.P9491674831032257374

`A001788(n+1)+A087076(n)+A001788(n)`
-/

namespace A001789.P9491674831032257374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) + (A087076 n + A001788 n)

end

end A001789.P9491674831032257374

namespace A001789

/-- `A001788(n+1)+A087076(n)+A001788(n)` -/
def P9491674831032257374.Spec : Prop :=
  ∀ n, P9491674831032257374.a n = A001789 (n + 3)

end A001789

/-!
# A001790: Numerators in expansion of 1/sqrt(1-x).

The programs for A001790, the canonical program `A001790.P1262090449372590155` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001790 has offset 0).

The definition of A001790 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001790.P1262090449372590155

`A000984(n)/A001316(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A001790

/-- `A000984(n)/A001316(n)` -/
def P1262090449372590155.Spec : Prop :=
  ∀ n, P1262090449372590155.a n = (A001790 n : ℚ)

end A001790

/-! ## A001790.P17615982934426610111

`2^A007814(n)*(2*n-1)*a(n-1)/n` with `a(0)=1`
-/

namespace A001790.P17615982934426610111
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (2 : ℚ) ^ (A007814 n : ℤ) * (((2 * n : ℤ) - 1 : ℚ) * a (n - 1)) / (n : ℚ)

end

end A001790.P17615982934426610111

namespace A001790

/-- `2^A007814(n)*(2*n-1)*a(n-1)/n` -/
def P17615982934426610111.Spec : Prop :=
  ∀ n, P17615982934426610111.a n = (A001790 n : ℚ)

end A001790

/-! ## A001790.P724730907570395535

`A001803(n)/(2*n+1)`
-/

namespace A001790.P724730907570395535
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001803 n : ℚ) / (2 * n + 1 : ℚ)

end

end A001790.P724730907570395535

namespace A001790

/-- `A001803(n)/(2*n+1)` -/
def P724730907570395535.Spec : Prop :=
  ∀ n, P724730907570395535.a n = (A001790 n : ℚ)

end A001790

/-! ## A001790.P4096313122541447488

`(2*n-1)*a(n-1)/gcd(n, a(n-1))` with `a(0)=1`
-/

namespace A001790.P4096313122541447488
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1 : ℚ) * (a (n - 1) / (Int.gcd (n : ℤ) (SequenceMachineLib.roundAway (a (n - 1))) : ℚ))

end

end A001790.P4096313122541447488

namespace A001790

/-- `(2*n-1)*a(n-1)/gcd(n, a(n-1))` -/
def P4096313122541447488.Spec : Prop :=
  ∀ n, P4096313122541447488.a n = (A001790 n : ℚ)

end A001790

/-! ## A001790.P16508549124067788524

`(2*n-1)*a(n-1)/A000265(n)` with `a(0)=1`
-/

namespace A001790.P16508549124067788524
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  ((2 * n : ℤ) - 1 : ℚ) * (a (n - 1) / (A000265 n : ℚ))

end

end A001790.P16508549124067788524

namespace A001790

/-- `(2*n-1)*a(n-1)/A000265(n)` -/
def P16508549124067788524.Spec : Prop :=
  ∀ n, P16508549124067788524.a n = (A001790 n : ℚ)

end A001790

/-! ## A001790.P16533514488654959299

`A068111(n)*A356637(n)`
-/

namespace A001790.P16533514488654959299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068111 n * A356637 n

end

end A001790.P16533514488654959299

namespace A001790

/-- `A068111(n)*A356637(n)` -/
def P16533514488654959299.Spec : Prop :=
  ∀ n, P16533514488654959299.a n = A001790 n

end A001790

/-! ## A001790.P7427014027590095955

`lcm(A002596(n), A055786(n))`
-/

namespace A001790.P7427014027590095955
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A002596 n) (A055786 n)

end

end A001790.P7427014027590095955

namespace A001790

/-- `lcm(A002596(n), A055786(n))` -/
def P7427014027590095955.Spec : Prop :=
  ∀ n, (P7427014027590095955.a n : ℤ) = A001790 n

end A001790

/-! ## A001790.P2714480107101072421

`A000265(n+1)*A098597(n)`
-/

namespace A001790.P2714480107101072421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1) * A098597 n

end

end A001790.P2714480107101072421

namespace A001790

/-- `A000265(n+1)*A098597(n)` -/
def P2714480107101072421.Spec : Prop :=
  ∀ n, P2714480107101072421.a n = A001790 n

end A001790

/-! ## A001790.P4305012540587328386

`A098597(n)*A161151(2*n+1)`
-/

namespace A001790.P4305012540587328386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098597 n * A161151 (2 * n + 1)

end

end A001790.P4305012540587328386

namespace A001790

/-- `A098597(n)*A161151(2*n+1)` -/
def P4305012540587328386.Spec : Prop :=
  ∀ n, P4305012540587328386.a n = A001790 n

end A001790

/-! ## A001790.P12196476224581296614

`(n+1)/A048896(2*n)*A126120(2*n)`
-/

namespace A001790.P12196476224581296614
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A048896 (2 * n) : ℚ) * (A126120 (2 * n) : ℚ)

end

end A001790.P12196476224581296614

namespace A001790

/-- `(n+1)/A048896(2*n)*A126120(2*n)` -/
def P12196476224581296614.Spec : Prop :=
  ∀ n, P12196476224581296614.a n = (A001790 n : ℚ)

end A001790

/-! ## A001790.P10455637162577636047

`(n+1)*A000108(n)/A000079(A000120(n))`
-/

namespace A001790.P10455637162577636047
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((A000108 n : ℚ) / (A000079 (A000120 n).toNat : ℚ))

end

end A001790.P10455637162577636047

namespace A001790

/-- `(n+1)*A000108(n)/A000079(A000120(n))` -/
def P10455637162577636047.Spec : Prop :=
  ∀ n, P10455637162577636047.a n = (A001790 n : ℚ)

end A001790

/-! ## A001790.P17365625083009334943

`A036069(2*n)`
-/

namespace A001790.P17365625083009334943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036069 (2 * n)

end

end A001790.P17365625083009334943

namespace A001790

/-- `A036069(2*n)` -/
def P17365625083009334943.Spec : Prop :=
  ∀ n, P17365625083009334943.a n = A001790 n

end A001790

/-! ## A001790.P18403101620674308776

`A380910(2*n)`
-/

namespace A001790.P18403101620674308776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380910 (2 * n)

end

end A001790.P18403101620674308776

namespace A001790

/-- `A380910(2*n)` -/
def P18403101620674308776.Spec : Prop :=
  ∀ n, P18403101620674308776.a n = A001790 n

end A001790

/-! ## A001790.P17468025388641852033

`A004730(A004273(n))`
-/

namespace A001790.P17468025388641852033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (A004273 n).toNat

end

end A001790.P17468025388641852033

namespace A001790

/-- `A004730(A004273(n))` -/
def P17468025388641852033.Spec : Prop :=
  ∀ n, P17468025388641852033.a n = A001790 n

end A001790

/-! ## A001790.P8343911002359570186

`A004730(record[A026741(n)])`
-/

namespace A001790.P8343911002359570186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A001790.P8343911002359570186

namespace A001790

/-- `A004730(record[A026741(n)])` -/
def P8343911002359570186.Spec : Prop :=
  ∀ n, P8343911002359570186.a n = A001790 n

end A001790

/-! ## A001790.P4243268833737635056

`A004730(A014681(2*n))`
-/

namespace A001790.P4243268833737635056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 (A014681 (2 * n)).toNat

end

end A001790.P4243268833737635056

namespace A001790

/-- `A004730(A014681(2*n))` -/
def P4243268833737635056.Spec : Prop :=
  ∀ n, P4243268833737635056.a n = A001790 n

end A001790

/-! ## A001790.P8454014811062051498

`A004730(abs(A023443(2*n)))`
-/

namespace A001790.P8454014811062051498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 |A023443 (2 * n)|.toNat

end

end A001790.P8454014811062051498

namespace A001790

/-- `A004730(abs(A023443(2*n)))` -/
def P8454014811062051498.Spec : Prop :=
  ∀ n, P8454014811062051498.a n = A001790 n

end A001790

/-! ## A001790.P11839496924044712364

`A004730(abs(A024000(2*n)))`
-/

namespace A001790.P11839496924044712364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 |A024000 (2 * n)|.toNat

end

end A001790.P11839496924044712364

namespace A001790

/-- `A004730(abs(A024000(2*n)))` -/
def P11839496924044712364.Spec : Prop :=
  ∀ n, P11839496924044712364.a n = A001790 n

end A001790

/-! ## A001790.P12799978903687764575

`A004730(abs(A023443(n)+n))`
-/

namespace A001790.P12799978903687764575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004730 |A023443 n + (n : ℤ)|.toNat

end

end A001790.P12799978903687764575

namespace A001790

/-- `A004730(abs(A023443(n)+n))` -/
def P12799978903687764575.Spec : Prop :=
  ∀ n, P12799978903687764575.a n = A001790 n

end A001790

/-!
# A001791: a(n) = binomial coefficient C(2n, n-1).

The programs for A001791, the canonical program `A001791.P9713013280951293137` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001791 has offset 0).

The definition of A001791 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001791.P9713013280951293137

`n*A000108(n)`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A001791

/-- `n*A000108(n)` -/
def P9713013280951293137.Spec : Prop :=
  ∀ n, P9713013280951293137.a n = A001791 n

theorem P9713013280951293137.correct : P9713013280951293137.Spec := by
  intro n
  simp only [A001791]

end A001791

/-! ## A001791.P11365425145863065790

`Δ[A279561(n)]`
-/

namespace A001791.P11365425145863065790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279561 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001791.P11365425145863065790

namespace A001791

/-- `Δ[A279561(n)]` -/
def P11365425145863065790.Spec : Prop :=
  ∀ n, P11365425145863065790.a n = A001791 n

end A001791

/-! ## A001791.P3103106562064060536

`A323229(n)-1`
-/

namespace A001791.P3103106562064060536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323229 n - 1

end

end A001791.P3103106562064060536

namespace A001791

/-- `A323229(n)-1` -/
def P3103106562064060536.Spec : Prop :=
  ∀ n, P3103106562064060536.a n = A001791 n

end A001791

/-! ## A001791.P13687542002085517596

`A037952(2*n)`
-/

namespace A001791.P13687542002085517596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037952 (2 * n)

end

end A001791.P13687542002085517596

namespace A001791

/-- `A037952(2*n)` -/
def P13687542002085517596.Spec : Prop :=
  ∀ n, P13687542002085517596.a n = A001791 n

end A001791

/-! ## A001791.P7972999865341992613

`A037955(2*n)`
-/

namespace A001791.P7972999865341992613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037955 (2 * n)

end

end A001791.P7972999865341992613

namespace A001791

/-- `A037955(2*n)` -/
def P7972999865341992613.Spec : Prop :=
  ∀ n, P7972999865341992613.a n = A001791 n

end A001791

/-! ## A001791.P17801987472248883675

`abs(n*A168491(n))`
-/

namespace A001791.P17801987472248883675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n : ℤ) * A168491 n|

end

end A001791.P17801987472248883675

namespace A001791

/-- `abs(n*A168491(n))` -/
def P17801987472248883675.Spec : Prop :=
  ∀ n, P17801987472248883675.a n = A001791 n

end A001791

/-! ## A001791.P1017094283952567675

`n*Δ[A155587(n)]`
-/

namespace A001791.P1017094283952567675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155587 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (f1 (n + 1) - f1 n)

end

end A001791.P1017094283952567675

namespace A001791

/-- `n*Δ[A155587(n)]` -/
def P1017094283952567675.Spec : Prop :=
  ∀ n, P1017094283952567675.a n = A001791 n

end A001791

/-! ## A001791.P16567550628483493045

`n*A120588(n+1)`
-/

namespace A001791.P16567550628483493045
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A120588 (n + 1)

end

end A001791.P16567550628483493045

namespace A001791

/-- `n*A120588(n+1)` -/
def P16567550628483493045.Spec : Prop :=
  ∀ n, P16567550628483493045.a n = A001791 n

end A001791

/-! ## A001791.P2117476878022997412

`n*(A141364(n)+1)`
-/

namespace A001791.P2117476878022997412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A141364 n + 1)

end

end A001791.P2117476878022997412

namespace A001791

/-- `n*(A141364(n)+1)` -/
def P2117476878022997412.Spec : Prop :=
  ∀ n, P2117476878022997412.a n = A001791 n

end A001791

/-! ## A001791.P15392203008764723559

`n*(A120304(n)+2)`
-/

namespace A001791.P15392203008764723559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A120304 n + 2)

end

end A001791.P15392203008764723559

namespace A001791

/-- `n*(A120304(n)+2)` -/
def P15392203008764723559.Spec : Prop :=
  ∀ n, P15392203008764723559.a n = A001791 n

end A001791

/-! ## A001791.P18150484046132081364

`n*(A141351(n)-1)`
-/

namespace A001791.P18150484046132081364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A141351 n - 1)

end

end A001791.P18150484046132081364

namespace A001791

/-- `n*(A141351(n)-1)` -/
def P18150484046132081364.Spec : Prop :=
  ∀ n, P18150484046132081364.a n = A001791 n

end A001791

/-! ## A001791.P5588443720838325898

`n*A028303(2*n)`
-/

namespace A001791.P5588443720838325898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028303 (2 * n)

end

end A001791.P5588443720838325898

namespace A001791

/-- `n*A028303(2*n)` -/
def P5588443720838325898.Spec : Prop :=
  ∀ n, P5588443720838325898.a n = A001791 n

end A001791

/-! ## A001791.P1044954028482253551

`n*A028304(2*n)`
-/

namespace A001791.P1044954028482253551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A028304 (2 * n)

end

end A001791.P1044954028482253551

namespace A001791

/-- `n*A028304(2*n)` -/
def P1044954028482253551.Spec : Prop :=
  ∀ n, P1044954028482253551.a n = A001791 n

end A001791

/-! ## A001791.P60330209388009234

`n*A057977(2*n)`
-/

namespace A001791.P60330209388009234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A057977 (2 * n)

end

end A001791.P60330209388009234

namespace A001791

/-- `n*A057977(2*n)` -/
def P60330209388009234.Spec : Prop :=
  ∀ n, P60330209388009234.a n = A001791 n

end A001791

/-! ## A001791.P6744478359122768850

`n*A099363(2*n)`
-/

namespace A001791.P6744478359122768850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A099363 (2 * n)

end

end A001791.P6744478359122768850

namespace A001791

/-- `n*A099363(2*n)` -/
def P6744478359122768850.Spec : Prop :=
  ∀ n, P6744478359122768850.a n = A001791 n

end A001791

/-! ## A001791.P3978023591238770336

`n*A126120(2*n)`
-/

namespace A001791.P3978023591238770336
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126120 (2 * n)

end

end A001791.P3978023591238770336

namespace A001791

/-- `n*A126120(2*n)` -/
def P3978023591238770336.Spec : Prop :=
  ∀ n, P3978023591238770336.a n = A001791 n

end A001791

/-! ## A001791.P9001625132593606414

`n*A126324(2*n)`
-/

namespace A001791.P9001625132593606414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A126324 (2 * n)

end

end A001791.P9001625132593606414

namespace A001791

/-- `n*A126324(2*n)` -/
def P9001625132593606414.Spec : Prop :=
  ∀ n, P9001625132593606414.a n = A001791 n

end A001791

/-! ## A001791.P14554995909016382626

`n*A208355(2*n)`
-/

namespace A001791.P14554995909016382626
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A208355 (2 * n)

end

end A001791.P14554995909016382626

namespace A001791

/-- `n*A208355(2*n)` -/
def P14554995909016382626.Spec : Prop :=
  ∀ n, P14554995909016382626.a n = A001791 n

end A001791

/-! ## A001791.P10352186569802794343

`n/2*A068875(n)`
-/

namespace A001791.P10352186569802794343
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A068875 n : ℚ)

end

end A001791.P10352186569802794343

namespace A001791

/-- `n/2*A068875(n)` -/
def P10352186569802794343.Spec : Prop :=
  ∀ n, P10352186569802794343.a n = (A001791 n : ℚ)

end A001791

/-!
# A001792: a(n) = (n+2)*2^(n-1).

The programs for A001792, the canonical program `A001792.P8277491211121309808` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001792 has offset 0).

The definition of A001792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001792.P5228612791564636020

`(n+2)*2^(n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001792.P5228612791564636020
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A001792.P5228612791564636020

namespace A001792

/-- `(n+2)*2^(n-1)` -/
def P5228612791564636020.Spec : Prop :=
  ∀ n, P5228612791564636020.a n = (A001792 n : ℚ)

end A001792

/-! ## A001792.P8277491211121309808

`4*a(n-1)-4*a(n-2)` with `a(0)=1, a(1)=3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001792

/-- `4*a(n-1)-4*a(n-2)` -/
def P8277491211121309808.Spec : Prop :=
  ∀ n, P8277491211121309808.a n = A001792 n

theorem P8277491211121309808.correct : P8277491211121309808.Spec := by
  intro n
  simp only [A001792]

end A001792

/-! ## A001792.P13393261426926950530

`A000244(n)-A066810(n)`
-/

namespace A001792.P13393261426926950530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000244 n - A066810 n

end

end A001792.P13393261426926950530

namespace A001792

/-- `A000244(n)-A066810(n)` -/
def P13393261426926950530.Spec : Prop :=
  ∀ n, P13393261426926950530.a n = A001792 n

end A001792

/-! ## A001792.P7656625516562038553

`A018804(2^n)`
-/

namespace A001792.P7656625516562038553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018804 (2 ^ n)

end

end A001792.P7656625516562038553

namespace A001792

/-- `A018804(2^n)` -/
def P7656625516562038553.Spec : Prop :=
  ∀ n, P7656625516562038553.a n = A001792 n

end A001792

/-! ## A001792.P12014522766750613927

`A164910(2^n)`
-/

namespace A001792.P12014522766750613927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164910 (2 ^ n)

end

end A001792.P12014522766750613927

namespace A001792

/-- `A164910(2^n)` -/
def P12014522766750613927.Spec : Prop :=
  ∀ n, P12014522766750613927.a n = A001792 n

end A001792

/-! ## A001792.P12787396860363114390

`ogf((1-x)/(1-4x+4x^2))`
-/

namespace A001792.P12787396860363114390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1] [1, -4, 4] n

end

end A001792.P12787396860363114390

namespace A001792

/-- `ogf((1-x)/(1-4x+4x^2))` -/
def P12787396860363114390.Spec : Prop :=
  ∀ n, P12787396860363114390.a n = A001792 n

end A001792

/-! ## A001792.P2701971861196662275

`∏[4-4/a(n-1)]` with `a(0)=1, a(1)=3`
-/

namespace A001792.P2701971861196662275
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n f1 =>
  4 - 4 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A001792.P2701971861196662275

namespace A001792

/-- `∏[4-4/a(n-1)]` -/
def P2701971861196662275.Spec : Prop :=
  ∀ n, P2701971861196662275.a n = (A001792 n : ℚ)

end A001792

/-! ## A001792.P315163024947645547

`2^(n-1)/tan(acot(n+2))`
-/

namespace A001792.P315163024947645547
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) / Real.tan (SequenceMachineLib.acot (n + 2 : ℝ))

end

end A001792.P315163024947645547

namespace A001792

/-- `2^(n-1)/tan(acot(n+2))` -/
def P315163024947645547.Spec : Prop :=
  ∀ n, P315163024947645547.a n = (A001792 n : ℝ)

end A001792

/-! ## A001792.P1806035099009837410

`abs(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=3`
-/

namespace A001792.P1806035099009837410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  |4 * (a (n - 1) - a (n - 2))|

end

end A001792.P1806035099009837410

namespace A001792

/-- `abs(4*(a(n-1)-a(n-2)))` -/
def P1806035099009837410.Spec : Prop :=
  ∀ n, P1806035099009837410.a n = A001792 n

end A001792

/-! ## A001792.P9485667921060077671

`-4*(a(n-2)-a(n-1))` with `a(0)=1, a(1)=3`
-/

namespace A001792.P9485667921060077671
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  -(4 * (a (n - 2) - a (n - 1)))

end

end A001792.P9485667921060077671

namespace A001792

/-- `-4*(a(n-2)-a(n-1))` -/
def P9485667921060077671.Spec : Prop :=
  ∀ n, P9485667921060077671.a n = A001792 n

end A001792

/-! ## A001792.P4442234805616454870

`floor(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=3`

`floor` is left out, it is the identity on integers.
-/

namespace A001792.P4442234805616454870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A001792.P4442234805616454870

namespace A001792

/-- `floor(4*(a(n-1)-a(n-2)))` -/
def P4442234805616454870.Spec : Prop :=
  ∀ n, P4442234805616454870.a n = A001792 n

theorem P4442234805616454870.correct : P4442234805616454870.Spec := by
  intro n
  simp only [A001792, Nat.add_sub_cancel, A001792.P4442234805616454870.a, A001792.P8277491211121309808.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001792

/-! ## A001792.P15956294461544912092

`ceil(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=3`

`ceil` is left out, it is the identity on integers.
-/

namespace A001792.P15956294461544912092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A001792.P15956294461544912092

namespace A001792

/-- `ceil(4*(a(n-1)-a(n-2)))` -/
def P15956294461544912092.Spec : Prop :=
  ∀ n, P15956294461544912092.a n = A001792 n

theorem P15956294461544912092.correct : P15956294461544912092.Spec := by
  intro n
  simp only [A001792, Nat.add_sub_cancel, A001792.P15956294461544912092.a, A001792.P8277491211121309808.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001792

/-! ## A001792.P7741617999696077288

`round(4*(a(n-1)-a(n-2)))` with `a(0)=1, a(1)=3`

`round` is left out, it is the identity on integers.
-/

namespace A001792.P7741617999696077288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A001792.P7741617999696077288

namespace A001792

/-- `round(4*(a(n-1)-a(n-2)))` -/
def P7741617999696077288.Spec : Prop :=
  ∀ n, P7741617999696077288.a n = A001792 n

theorem P7741617999696077288.correct : P7741617999696077288.Spec := by
  intro n
  simp only [A001792, Nat.add_sub_cancel, A001792.P7741617999696077288.a, A001792.P8277491211121309808.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A001792

/-! ## A001792.P7671671219847648186

`(a(n-1)-a(n-2))/(1/2)²` with `a(0)=1, a(1)=3`
-/

namespace A001792.P7671671219847648186
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 3] fun n a =>
  (a (n - 1) - a (n - 2)) / ((1 : ℚ) / 2) ^ 2

end

end A001792.P7671671219847648186

namespace A001792

/-- `(a(n-1)-a(n-2))/(1/2)²` -/
def P7671671219847648186.Spec : Prop :=
  ∀ n, P7671671219847648186.a n = (A001792 n : ℚ)

end A001792

/-! ## A001792.P13266259190578251702

`a(n-1)+a(n-1)+2^(n-1)` with `a(0)=1`
-/

namespace A001792.P13266259190578251702
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ))

end

end A001792.P13266259190578251702

namespace A001792

/-- `a(n-1)+a(n-1)+2^(n-1)` -/
def P13266259190578251702.Spec : Prop :=
  ∀ n, P13266259190578251702.a n = (A001792 n : ℚ)

end A001792

/-! ## A001792.P12765956296958413596

`∑[A045623(n)]`
-/

namespace A001792.P12765956296958413596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001792.P12765956296958413596

namespace A001792

/-- `∑[A045623(n)]` -/
def P12765956296958413596.Spec : Prop :=
  ∀ n, P12765956296958413596.a n = A001792 n

end A001792

/-! ## A001792.P16148601310047513723

`record[A211164(n)]`
-/

namespace A001792.P16148601310047513723
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211164 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001792.P16148601310047513723

namespace A001792

/-- `record[A211164(n)]` -/
def P16148601310047513723.Spec : Prop :=
  ∀ n, P16148601310047513723.a n = A001792 n

end A001792

/-! ## A001792.P13315026016454410945

`A049610(n+2)`
-/

namespace A001792.P13315026016454410945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049610 (n + 2)

end

end A001792.P13315026016454410945

namespace A001792

/-- `A049610(n+2)` -/
def P13315026016454410945.Spec : Prop :=
  ∀ n, P13315026016454410945.a n = A001792 n

end A001792

/-! ## A001792.P551477336209813147

`2^n+A001787(n)`
-/

namespace A001792.P551477336209813147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) + A001787 n

end

end A001792.P551477336209813147

namespace A001792

/-- `2^n+A001787(n)` -/
def P551477336209813147.Spec : Prop :=
  ∀ n, P551477336209813147.a n = A001792 n

end A001792

/-! ## A001792.P8512427269034625404

`A001787(n+2)/4`
-/

namespace A001792.P8512427269034625404
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001787 (n + 2) : ℚ) / 4

end

end A001792.P8512427269034625404

namespace A001792

/-- `A001787(n+2)/4` -/
def P8512427269034625404.Spec : Prop :=
  ∀ n, P8512427269034625404.a n = (A001792 n : ℚ)

end A001792

/-!
# A001793: a(n) = n*(n+3)*2^(n-3).

The programs for A001793, the canonical program `A001793.P3369788768665076817` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001793 has offset 1).

The definition of A001793 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001793.P18149044845634895192

`2^(n-2)*(n+1)*(n+4)`
-/

namespace A001793.P18149044845634895192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * ((n + 1) * (n + 4) : ℚ)

end

end A001793.P18149044845634895192

namespace A001793

/-- `2^(n-2)*(n+1)*(n+4)` -/
def P18149044845634895192.Spec : Prop :=
  ∀ n, P18149044845634895192.a n = (A001793 (n + 1) : ℚ)

end A001793

/-! ## A001793.P17158023688645251511

`(n+1)*(n+4)*2^(n-2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A001793.P17158023688645251511
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * ((n + 4 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ))

end

end A001793.P17158023688645251511

namespace A001793

/-- `(n+1)*(n+4)*2^(n-2)` -/
def P17158023688645251511.Spec : Prop :=
  ∀ n, P17158023688645251511.a n = (A001793 (n + 1) : ℚ)

end A001793

/-! ## A001793.P3369788768665076817

`6*a(n-1)-12*a(n-2)+8*a(n-3)` with `a(0)=1, a(1)=5, a(2)=18`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001793

/-- `6*a(n-1)-12*a(n-2)+8*a(n-3)` -/
def P3369788768665076817.Spec : Prop :=
  ∀ n, P3369788768665076817.a n = A001793 (n + 1)

theorem P3369788768665076817.correct : P3369788768665076817.Spec := by
  intro n
  simp only [A001793, Nat.add_sub_cancel]

end A001793

/-! ## A001793.P17723142152568934393

`∑[A084851(n)]`
-/

namespace A001793.P17723142152568934393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084851 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001793.P17723142152568934393

namespace A001793

/-- `∑[A084851(n)]` -/
def P17723142152568934393.Spec : Prop :=
  ∀ n, P17723142152568934393.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P10389428786187613000

`∑[∑[A058396(n)]]`
-/

namespace A001793.P10389428786187613000
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058396 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001793.P10389428786187613000

namespace A001793

/-- `∑[∑[A058396(n)]]` -/
def P10389428786187613000.Spec : Prop :=
  ∀ n, P10389428786187613000.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P16972383926175130735

`∑[A049611(n+1)]`
-/

namespace A001793.P16972383926175130735
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049611 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001793.P16972383926175130735

namespace A001793

/-- `∑[A049611(n+1)]` -/
def P16972383926175130735.Spec : Prop :=
  ∀ n, P16972383926175130735.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P8694862317527121584

`A176027(n)+2^n`
-/

namespace A001793.P8694862317527121584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176027 n + (2 ^ n : ℤ)

end

end A001793.P8694862317527121584

namespace A001793

/-- `A176027(n)+2^n` -/
def P8694862317527121584.Spec : Prop :=
  ∀ n, P8694862317527121584.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P8441792559578132933

`∑[∑[∑[A158920(n+1)]]]`
-/

namespace A001793.P8441792559578132933
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158920 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001793.P8441792559578132933

namespace A001793

/-- `∑[∑[∑[A158920(n+1)]]]` -/
def P8441792559578132933.Spec : Prop :=
  ∀ n, P8441792559578132933.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P6912361801675664123

`A084264(n+1)-2^n`
-/

namespace A001793.P6912361801675664123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084264 (n + 1) - (2 ^ n : ℤ)

end

end A001793.P6912361801675664123

namespace A001793

/-- `A084264(n+1)-2^n` -/
def P6912361801675664123.Spec : Prop :=
  ∀ n, P6912361801675664123.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P7696301707707011398

`∑[A268586(n+2)+2^n]`
-/

namespace A001793.P7696301707707011398
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268586 (n + 2) + (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001793.P7696301707707011398

namespace A001793

/-- `∑[A268586(n+2)+2^n]` -/
def P7696301707707011398.Spec : Prop :=
  ∀ n, P7696301707707011398.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P11675236329045835662

`∑[∑[2*Δ[A049611(n)/2]]]`
-/

namespace A001793.P11675236329045835662
noncomputable section

def f3 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049611 n : ℚ) / 2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  2 * (f3 (n + 1) - f3 n)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001793.P11675236329045835662

namespace A001793

/-- `∑[∑[2*Δ[A049611(n)/2]]]` -/
def P11675236329045835662.Spec : Prop :=
  ∀ n, P11675236329045835662.a n = (A001793 (n + 1) : ℚ)

end A001793

/-! ## A001793.P5993872632748729664

`A072863(n+1)-2^(n+1)`
-/

namespace A001793.P5993872632748729664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072863 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A001793.P5993872632748729664

namespace A001793

/-- `A072863(n+1)-2^(n+1)` -/
def P5993872632748729664.Spec : Prop :=
  ∀ n, P5993872632748729664.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P15755876559629744247

`a(n-1)+A001792(n)+a(n-1)` with `a(0)=1`
-/

namespace A001793.P15755876559629744247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A001792 n + a (n - 1))

end

end A001793.P15755876559629744247

namespace A001793

/-- `a(n-1)+A001792(n)+a(n-1)` -/
def P15755876559629744247.Spec : Prop :=
  ∀ n, P15755876559629744247.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P16393279718896293206

`A053545(n)+A048474(n)`
-/

namespace A001793.P16393279718896293206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053545 n + A048474 n

end

end A001793.P16393279718896293206

namespace A001793

/-- `A053545(n)+A048474(n)` -/
def P16393279718896293206.Spec : Prop :=
  ∀ n, P16393279718896293206.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P10003368021204429883

`A087323(n)+A048506(n)`
-/

namespace A001793.P10003368021204429883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087323 n + A048506 n

end

end A001793.P10003368021204429883

namespace A001793

/-- `A087323(n)+A048506(n)` -/
def P10003368021204429883.Spec : Prop :=
  ∀ n, P10003368021204429883.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P15474334254452095904

`A178987(n)+A014480(n)`
-/

namespace A001793.P15474334254452095904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178987 n + A014480 n

end

end A001793.P15474334254452095904

namespace A001793

/-- `A178987(n)+A014480(n)` -/
def P15474334254452095904.Spec : Prop :=
  ∀ n, P15474334254452095904.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P2569982720015486503

`A001788(n)+∑[A001792(n)]`
-/

namespace A001793.P2569982720015486503
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001793.P2569982720015486503

namespace A001793

/-- `A001788(n)+∑[A001792(n)]` -/
def P2569982720015486503.Spec : Prop :=
  ∀ n, P2569982720015486503.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P4159737182009893672

`A001787(n+1)+A001788(n)`
-/

namespace A001793.P4159737182009893672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (n + 1) + A001788 n

end

end A001793.P4159737182009893672

namespace A001793

/-- `A001787(n+1)+A001788(n)` -/
def P4159737182009893672.Spec : Prop :=
  ∀ n, P4159737182009893672.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P5762521695962285366

`A007466(n+1)+A001787(n)`
-/

namespace A001793.P5762521695962285366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007466 (n + 1) + A001787 n

end

end A001793.P5762521695962285366

namespace A001793

/-- `A007466(n+1)+A001787(n)` -/
def P5762521695962285366.Spec : Prop :=
  ∀ n, P5762521695962285366.a n = A001793 (n + 1)

end A001793

/-! ## A001793.P12429780348782844584

`A053220(n+1)+A001815(n)`
-/

namespace A001793.P12429780348782844584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053220 (n + 1) + A001815 n

end

end A001793.P12429780348782844584

namespace A001793

/-- `A053220(n+1)+A001815(n)` -/
def P12429780348782844584.Spec : Prop :=
  ∀ n, P12429780348782844584.a n = A001793 (n + 1)

end A001793

/-!
# A001794: Negated coefficients of Chebyshev T polynomials: [x^n](-T(n+6, x)), n >= 0.

The programs for A001794, the canonical program `A001794.P16084532482965562392` is in `Seq.B000.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A001794 has offset 0).

The definition of A001794 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A001794.P16084532482965562392

`2^(n-2)*(n+1)*(n+2)*(n+6)/3`

The canonical program, it is in `Seq.B000.C000`.
-/

namespace A001794

/-- `2^(n-2)*(n+1)*(n+2)*(n+6)/3` -/
def P16084532482965562392.Spec : Prop :=
  ∀ n, P16084532482965562392.a n = (A001794 n : ℚ)

end A001794

/-! ## A001794.P14982637254538065072

`∑[A055585(n)]`
-/

namespace A001794.P14982637254538065072
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055585 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001794.P14982637254538065072

namespace A001794

/-- `∑[A055585(n)]` -/
def P14982637254538065072.Spec : Prop :=
  ∀ n, P14982637254538065072.a n = A001794 n

end A001794

/-! ## A001794.P9549344004135492815

`∑[∑[∑[A062109(n)]]]`
-/

namespace A001794.P9549344004135492815
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062109 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001794.P9549344004135492815

namespace A001794

/-- `∑[∑[∑[A062109(n)]]]` -/
def P9549344004135492815.Spec : Prop :=
  ∀ n, P9549344004135492815.a n = A001794 n

end A001794

/-! ## A001794.P8894243057549874396

`∑[∑[A049612(n+1)]]`
-/

namespace A001794.P8894243057549874396
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001794.P8894243057549874396

namespace A001794

/-- `∑[∑[A049612(n+1)]]` -/
def P8894243057549874396.Spec : Prop :=
  ∀ n, P8894243057549874396.a n = A001794 n

end A001794

/-! ## A001794.P15250720490624063781

`∑[(n+1)/3*A058396(n+1)]`
-/

namespace A001794.P15250720490624063781
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / 3 * (A058396 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001794.P15250720490624063781

namespace A001794

/-- `∑[(n+1)/3*A058396(n+1)]` -/
def P15250720490624063781.Spec : Prop :=
  ∀ n, P15250720490624063781.a n = (A001794 n : ℚ)

end A001794

/-! ## A001794.P8691287177837339412

`A136530(n)+A085385(n)`
-/

namespace A001794.P8691287177837339412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136530 n + A085385 n

end

end A001794.P8691287177837339412

namespace A001794

/-- `A136530(n)+A085385(n)` -/
def P8691287177837339412.Spec : Prop :=
  ∀ n, P8691287177837339412.a n = A001794 n

end A001794

/-! ## A001794.P1234044845971329043

`2*A080930(n)-A001792(n)`
-/

namespace A001794.P1234044845971329043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A080930 n - A001792 n

end

end A001794.P1234044845971329043

namespace A001794

/-- `2*A080930(n)-A001792(n)` -/
def P1234044845971329043.Spec : Prop :=
  ∀ n, P1234044845971329043.a n = A001794 n

end A001794

/-! ## A001794.P5933686811370009347

`A055585(n+1)-A001793(n+2)`
-/

namespace A001794.P5933686811370009347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055585 (n + 1) - A001793 (n + 2)

end

end A001794.P5933686811370009347

namespace A001794

/-- `A055585(n+1)-A001793(n+2)` -/
def P5933686811370009347.Spec : Prop :=
  ∀ n, P5933686811370009347.a n = A001794 n

end A001794

/-! ## A001794.P2395407312280885302

`A049612(n+3)-A001793(n+3)`
-/

namespace A001794.P2395407312280885302
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049612 (n + 3) - A001793 (n + 3)

end

end A001794.P2395407312280885302

namespace A001794

/-- `A049612(n+3)-A001793(n+3)` -/
def P2395407312280885302.Spec : Prop :=
  ∀ n, P2395407312280885302.a n = A001794 n

end A001794

/-! ## A001794.P13342051699677047364

`Δ[2^(n-1)*C(n+2, 3)]`
-/

namespace A001794.P13342051699677047364
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.choose (n + 2) 3 : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001794.P13342051699677047364

namespace A001794

/-- `Δ[2^(n-1)*C(n+2, 3)]` -/
def P13342051699677047364.Spec : Prop :=
  ∀ n, P13342051699677047364.a n = (A001794 n : ℚ)

end A001794

/-! ## A001794.P13403044467084056686

`Δ[∑[∑[n]]*A011782(n)]`
-/

namespace A001794.P13403044467084056686
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ) * A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001794.P13403044467084056686

namespace A001794

/-- `Δ[∑[∑[n]]*A011782(n)]` -/
def P13403044467084056686.Spec : Prop :=
  ∀ n, P13403044467084056686.a n = A001794 n

end A001794

/-! ## A001794.P5613075020748194206

`Δ[A000292(n)*A131577(n)]`
-/

namespace A001794.P5613075020748194206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000292 n * A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001794.P5613075020748194206

namespace A001794

/-- `Δ[A000292(n)*A131577(n)]` -/
def P5613075020748194206.Spec : Prop :=
  ∀ n, P5613075020748194206.a n = A001794 n

end A001794

/-! ## A001794.P3773208636509206396

`Δ[A000079(n)/2*A000292(n)]`
-/

namespace A001794.P3773208636509206396
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000079 n : ℚ) / 2 * (A000292 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001794.P3773208636509206396

namespace A001794

/-- `Δ[A000079(n)/2*A000292(n)]` -/
def P3773208636509206396.Spec : Prop :=
  ∀ n, P3773208636509206396.a n = (A001794 n : ℚ)

end A001794

/-! ## A001794.P1768818125624960511

`A001788(n+1)+A058645(n+1)-A085385(n+1)`
-/

namespace A001794.P1768818125624960511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001788 (n + 1) + (A058645 (n + 1) - A085385 (n + 1))

end

end A001794.P1768818125624960511

namespace A001794

/-- `A001788(n+1)+A058645(n+1)-A085385(n+1)` -/
def P1768818125624960511.Spec : Prop :=
  ∀ n, P1768818125624960511.a n = A001794 n

end A001794

/-! ## A001794.P4266411296352726269

`A240434(n+1)/4`
-/

namespace A001794.P4266411296352726269
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A240434 (n + 1) : ℚ) / 4

end

end A001794.P4266411296352726269

namespace A001794

/-- `A240434(n+1)/4` -/
def P4266411296352726269.Spec : Prop :=
  ∀ n, P4266411296352726269.a n = (A001794 n : ℚ)

end A001794

/-! ## A001794.P10224680262609089692

`A001789(n+4)-(A055585(n+1)+A001789(n+3))`
-/

namespace A001794.P10224680262609089692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001789 (n + 4) - (A055585 (n + 1) + A001789 (n + 3))

end

end A001794.P10224680262609089692

namespace A001794

/-- `A001789(n+4)-(A055585(n+1)+A001789(n+3))` -/
def P10224680262609089692.Spec : Prop :=
  ∀ n, P10224680262609089692.a n = A001794 n

end A001794

/-! ## A001794.P1195700352471328659

`Δ[A290026(n+2)/4]`
-/

namespace A001794.P1195700352471328659
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A290026 (n + 2) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A001794.P1195700352471328659

namespace A001794

/-- `Δ[A290026(n+2)/4]` -/
def P1195700352471328659.Spec : Prop :=
  ∀ n, P1195700352471328659.a n = (A001794 n : ℚ)

end A001794

/-! ## A001794.P17900365036533125887

`A002409(n)*A080929(n)/A082139(n)`
-/

namespace A001794.P17900365036533125887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002409 n * A080929 n : ℚ) / (A082139 n : ℚ)

end

end A001794.P17900365036533125887

namespace A001794

/-- `A002409(n)*A080929(n)/A082139(n)` -/
def P17900365036533125887.Spec : Prop :=
  ∀ n, P17900365036533125887.a n = (A001794 n : ℚ)

end A001794

/-! ## A001794.P2915540281786334106

`A001788(n+1)*A002409(n)/A054849(n+5)`
-/

namespace A001794.P2915540281786334106
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001788 (n + 1) * A002409 n : ℚ) / (A054849 (n + 5) : ℚ)

end

end A001794.P2915540281786334106

namespace A001794

/-- `A001788(n+1)*A002409(n)/A054849(n+5)` -/
def P2915540281786334106.Spec : Prop :=
  ∀ n, P2915540281786334106.a n = (A001794 n : ℚ)

end A001794

/-! ## A001794.P4512240042162325548

`∑[A375550(∑[n])]`
-/

namespace A001794.P4512240042162325548
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A375550 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A001794.P4512240042162325548

namespace A001794

/-- `∑[A375550(∑[n])]` -/
def P4512240042162325548.Spec : Prop :=
  ∀ n, P4512240042162325548.a n = A001794 n

end A001794

/-!
# A001795: Coefficients of Legendre polynomials.

The programs for A001795, there is no canonical definition to state claims against.
-/

/-! ## A001795.P16494654415622188335

`A098597(2*n)`
-/

namespace A001795.P16494654415622188335
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098597 (2 * n)

end

end A001795.P16494654415622188335

/-! ## A001795.P2782227176662964459

`A002596(Δ[n²])`
-/

namespace A001795.P2782227176662964459
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A001795.P2782227176662964459

/-! ## A001795.P9129347522200767721

`abs(record[A002596(n+2)])`
-/

namespace A001795.P9129347522200767721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002596 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)|

end

end A001795.P9129347522200767721

/-! ## A001795.P14605298779389001555

`abs(A002596(2*n+1))`
-/

namespace A001795.P14605298779389001555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002596 (2 * n + 1)|

end

end A001795.P14605298779389001555

/-! ## A001795.P4653967650233102576

`or(1, A098597(A005843(n)))`
-/

namespace A001795.P4653967650233102576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A098597 (A005843 n).toNat)

end

end A001795.P4653967650233102576

/-! ## A001795.P13581844522975792172

`A008317(∑[2*n])`
-/

namespace A001795.P13581844522975792172
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A001795.P13581844522975792172

/-! ## A001795.P4246815389803978302

`record[A168491(n)]/A001316(n)`
-/

namespace A001795.P4246815389803978302
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / (A001316 n : ℚ)

end

end A001795.P4246815389803978302

/-! ## A001795.P15136451130725004805

`A000108(2*n)/A001316(n)`
-/

namespace A001795.P15136451130725004805
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (2 * n) : ℚ) / (A001316 n : ℚ)

end

end A001795.P15136451130725004805

/-! ## A001795.P31005999394005832

`A168491(2*n)/A001316(n)`
-/

namespace A001795.P31005999394005832
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A168491 (2 * n) : ℚ) / (A001316 n : ℚ)

end

end A001795.P31005999394005832

/-! ## A001795.P6514698162386152947

`A000108(2*n)/A048896(2*n)`
-/

namespace A001795.P6514698162386152947
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000108 (2 * n) : ℚ) / (A048896 (2 * n) : ℚ)

end

end A001795.P6514698162386152947

/-!
# A001796: Coefficients of Legendre polynomials.

The programs for A001796, there is no canonical definition to state claims against.
-/

/-! ## A001796.P15014748824355283752

`A008317((n+1)²)`
-/

namespace A001796.P15014748824355283752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 ((n + 1) ^ 2)

end

end A001796.P15014748824355283752

/-! ## A001796.P12153812206172899484

`record[A008317(A008611(n)²)]`
-/

namespace A001796.P12153812206172899484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 (A008611 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001796.P12153812206172899484

/-! ## A001796.P12073029415188408585

`record[A008317(A025581(n)²)]`
-/

namespace A001796.P12073029415188408585
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 (A025581 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001796.P12073029415188408585

/-! ## A001796.P3074418411650044681

`record[A008317(A051162(n)²)]`
-/

namespace A001796.P3074418411650044681
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 (A051162 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001796.P3074418411650044681

/-! ## A001796.P9829534972778166916

`record[A008317(A154958(n)²)]`
-/

namespace A001796.P9829534972778166916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 (A154958 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001796.P9829534972778166916

/-! ## A001796.P6387983157262438224

`record[A008317(A193739(n)²)]`
-/

namespace A001796.P6387983157262438224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 (A193739 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001796.P6387983157262438224

/-! ## A001796.P8824981631092224385

`record[A008317(A276010(n)²)]`
-/

namespace A001796.P8824981631092224385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 (A276010 n ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001796.P8824981631092224385

/-! ## A001796.P7483301624188487121

`record[A008317(A008833(n+1))]`
-/

namespace A001796.P7483301624188487121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 (A008833 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001796.P7483301624188487121

/-!
# A001797: Coefficients of Legendre polynomials.

The programs for A001797, there is no canonical definition to state claims against.
-/

/-! ## A001797.P474316911872043827

`A008317(n*(n+3)+3)`
-/

namespace A001797.P474316911872043827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 (n * (n + 3) + 3)

end

end A001797.P474316911872043827

/-! ## A001797.P1779095801520130196

`A001796(n+1)-A001795(n+1)`
-/

namespace A001797.P1779095801520130196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001796 (n + 1) - A001795 (n + 1)

end

end A001797.P1779095801520130196

/-!
# A001798: Coefficients of Legendre polynomials.

The programs for A001798, there is no canonical definition to state claims against.
-/

/-! ## A001798.P10032628131855298826

`A008317((n+2)²+1)`
-/

namespace A001798.P10032628131855298826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 ((n + 2) ^ 2 + 1)

end

end A001798.P10032628131855298826

/-! ## A001798.P1828118869388593071

`record[A008317(A163254(n+2))]`
-/

namespace A001798.P1828118869388593071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 (A163254 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A001798.P1828118869388593071

/-!
# A001799: Coefficients of Legendre polynomials.

The programs for A001799, there is no canonical definition to state claims against.
-/

/-! ## A001799.P10601202599507006746

`A008317((n+3)²-(n+1))`
-/

namespace A001799.P10601202599507006746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008317 ((n + 3) ^ 2 - (n + 1))

end

end A001799.P10601202599507006746

/-! ## A001799.P12443879561740842638

`A001798(n+2)-A001797(n+2)`
-/

namespace A001799.P12443879561740842638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001798 (n + 2) - A001797 (n + 2)

end

end A001799.P12443879561740842638

