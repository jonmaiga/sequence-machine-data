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
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C032
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
import Seq.B001.C009
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
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
import Seq.Opaque.C025

/-!
# A078700: Number of symmetric ways to lace a shoe that has n pairs of eyelets such that each eyelet has at least one direct connection to the opposite side.

The programs for A078700, the canonical program `A078700.P11616980465027108275` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078700 has offset 1).

The definition of A078700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078700.P11616980465027108275

`A000142(n)*A000045(n+2)`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A078700

/-- `A000142(n)*A000045(n+2)` -/
def P11616980465027108275.Spec : Prop :=
  ∀ n, P11616980465027108275.a n = A078700 (n + 1)

theorem P11616980465027108275.correct : P11616980465027108275.Spec := by
  intro n
  simp only [A078700, Nat.add_sub_cancel]

end A078700

/-! ## A078700.P18112315761303401257

`n!*Δ[round(ϕ*a(n-1))]` with `a(0)=2`
-/

namespace A078700.P18112315761303401257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  SequenceMachineLib.roundAway (Real.goldenRatio * (f1 (n - 1) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * (f1 (n + 1) - f1 n)

end

end A078700.P18112315761303401257

namespace A078700

/-- `n!*Δ[round(ϕ*a(n-1))]` -/
def P18112315761303401257.Spec : Prop :=
  ∀ n, P18112315761303401257.a n = A078700 (n + 1)

end A078700

/-! ## A078700.P11257690616853344599

`n*(a(n-1)+(n-1)*a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A078700.P11257690616853344599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * (a (n - 1) + ((n : ℤ) - 1) * a (n - 2))

end

end A078700.P11257690616853344599

namespace A078700

/-- `n*(a(n-1)+(n-1)*a(n-2))` -/
def P11257690616853344599.Spec : Prop :=
  ∀ n, P11257690616853344599.a n = A078700 (n + 1)

end A078700

/-! ## A078700.P4695197701921632769

`n*(a(n-1)-(a(n-2)-n*a(n-2)))` with `a(0)=1, a(1)=2`
-/

namespace A078700.P4695197701921632769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  (n : ℤ) * (a (n - 1) - (a (n - 2) - (n : ℤ) * a (n - 2)))

end

end A078700.P4695197701921632769

namespace A078700

/-- `n*(a(n-1)-(a(n-2)-n*a(n-2)))` -/
def P4695197701921632769.Spec : Prop :=
  ∀ n, P4695197701921632769.a n = A078700 (n + 1)

end A078700

/-! ## A078700.P12725993916365561978

`A322044(∑[n]+n)`
-/

namespace A078700.P12725993916365561978
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322044 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A078700.P12725993916365561978

namespace A078700

/-- `A322044(∑[n]+n)` -/
def P12725993916365561978.Spec : Prop :=
  ∀ n, P12725993916365561978.a n = A078700 (n + 1)

end A078700

/-! ## A078700.P13132778428370706894

`n!*record[Δ[A000045(n)]]`
-/

namespace A078700.P13132778428370706894
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078700.P13132778428370706894

namespace A078700

/-- `n!*record[Δ[A000045(n)]]` -/
def P13132778428370706894.Spec : Prop :=
  ∀ n, P13132778428370706894.a n = A078700 (n + 1)

end A078700

/-! ## A078700.P14576127468537639544

`n!*record[A000045(abs(1-n))]`
-/

namespace A078700.P14576127468537639544
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial n : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078700.P14576127468537639544

namespace A078700

/-- `n!*record[A000045(abs(1-n))]` -/
def P14576127468537639544.Spec : Prop :=
  ∀ n, P14576127468537639544.a n = A078700 (n + 1)

end A078700

/-! ## A078700.P6128249543198779556

`A005443(n)+A005442(n)`
-/

namespace A078700.P6128249543198779556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005443 n + A005442 n

end

end A078700.P6128249543198779556

namespace A078700

/-- `A005443(n)+A005442(n)` -/
def P6128249543198779556.Spec : Prop :=
  ∀ n, P6128249543198779556.a n = A078700 (n + 1)

end A078700

/-! ## A078700.P6334135233987530048

`A052554(n)+2*A005443(n)`
-/

namespace A078700.P6334135233987530048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052554 n + 2 * A005443 n

end

end A078700.P6334135233987530048

namespace A078700

/-- `A052554(n)+2*A005443(n)` -/
def P6334135233987530048.Spec : Prop :=
  ∀ n, P6334135233987530048.a n = A078700 (n + 1)

end A078700

/-!
# A078701: Least odd prime factor of n, or 1 if no such factor exists.

The programs for A078701, there is no canonical definition to state claims against.
-/

/-! ## A078701.P2891520925521847293

`A020639(A000265(n+1))`
-/

namespace A078701.P2891520925521847293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A000265 (n + 1)).toNat

end

end A078701.P2891520925521847293

/-! ## A078701.P8851902532480687927

`or(1, A078788(n+2))`
-/

namespace A078701.P8851902532480687927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A078788 (n + 2))

end

end A078701.P8851902532480687927

/-! ## A078701.P6505506099786112693

`A336650(∏{p}[n+1, #])`
-/

namespace A078701.P6505506099786112693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336650 (∏ p ∈ Nat.primeFactors (f1 n), p)

end

end A078701.P6505506099786112693

/-! ## A078701.P16940055589148901244

`(n+1)/A108738(n+1)`
-/

namespace A078701.P16940055589148901244
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A108738 (n + 1) : ℚ)

end

end A078701.P16940055589148901244

/-! ## A078701.P15728778749218292416

`A020639(∏{p}[2*(n+1), #]/2)`
-/

namespace A078701.P15728778749218292416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) / 2)).toNat

end

end A078701.P15728778749218292416

/-! ## A078701.P3155515761123874109

`A020639((n+1)/2^val(n+1, 2))`
-/

namespace A078701.P3155515761123874109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

end

end A078701.P3155515761123874109

/-! ## A078701.P17969741753874389907

`A020639((n+1)/(or(n, n+1)-n))`
-/

namespace A078701.P17969741753874389907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((Nat.lor n (n + 1) : ℤ) - (n : ℤ) : ℚ))).toNat

end

end A078701.P17969741753874389907

/-! ## A078701.P7300985065814899446

`A020639((n+1)/and(n+1, -(n+1)))`
-/

namespace A078701.P7300985065814899446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Int.land (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ))).toNat

end

end A078701.P7300985065814899446

/-! ## A078701.P3752038221046367898

`A020639((n+1)/(n+1-and(n, n+1)))`
-/

namespace A078701.P3752038221046367898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / ((n + 1 : ℤ) - (Nat.land n (n + 1) : ℤ) : ℚ))).toNat

end

end A078701.P3752038221046367898

/-! ## A078701.P6955445639409562784

`A020639(-(n+1)/or(n+1, -(n+1)))`
-/

namespace A078701.P6955445639409562784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (-((n + 1 : ℚ) / (Int.lor (n + 1 : ℤ) (-(n + 1 : ℤ)) : ℚ)))).toNat

end

end A078701.P6955445639409562784

/-! ## A078701.P1547968127758373527

`A090368(A003602(n+1))`
-/

namespace A078701.P1547968127758373527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A003602 (n + 1)).toNat

end

end A078701.P1547968127758373527

/-! ## A078701.P3306545415870307396

`A090368(A025480(n)+1)`
-/

namespace A078701.P3306545415870307396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090368 (A025480 n + 1).toNat

end

end A078701.P3306545415870307396

/-! ## A078701.P4556747481203681786

`A020639(A153733(n)+1)`
-/

namespace A078701.P4556747481203681786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A153733 n + 1).toNat

end

end A078701.P4556747481203681786

/-! ## A078701.P3056198813519988869

`A020639(A204455(n+1))`
-/

namespace A078701.P3056198813519988869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A204455 (n + 1)).toNat

end

end A078701.P3056198813519988869

/-! ## A078701.P8831096047299865182

`A006530(A336650(n+1))`
-/

namespace A078701.P8831096047299865182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A336650 (n + 1)).toNat

end

end A078701.P8831096047299865182

/-! ## A078701.P7023854011500178333

`A020639(2*A025480(n)+1)`
-/

namespace A078701.P7023854011500178333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (2 * A025480 n + 1).toNat

end

end A078701.P7023854011500178333

/-! ## A078701.P14688585724239047145

`A020639(A171435(2*(n+1)))`
-/

namespace A078701.P14688585724239047145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A171435 (2 * (n + 1))).toNat

end

end A078701.P14688585724239047145

/-!
# A078702: Number of ways to lace a shoe that has n pairs of eyelets such that each eyelet has at least one direct connection to the opposite side.

The programs for A078702, there is no canonical definition to state claims against.
-/

/-! ## A078702.P3959965818503768587

`(A078698(n+1)+A078700(n+1))/2`
-/

namespace A078702.P3959965818503768587
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078698 (n + 1) + A078700 (n + 1) : ℚ) / 2

end

end A078702.P3959965818503768587

/-! ## A078702.P5473049531104041425

`(A078698(n+1)+n!*A000045(n+2))/2`
-/

namespace A078702.P5473049531104041425
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078698 (n + 1) + (Nat.factorial n : ℤ) * A000045 (n + 2) : ℚ) / 2

end

end A078702.P5473049531104041425

/-! ## A078702.P8490059827026747677

`(A078698(n+1)+A005443(n)+A005442(n))/2`
-/

namespace A078702.P8490059827026747677
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A078698 (n + 1) + (A005443 n + A005442 n) : ℚ) / 2

end

end A078702.P8490059827026747677

/-!
# A078703: Number of ways of subtracting twice a triangular number from a perfect square to obtain the integer n.

The programs for A078703, the canonical program `A078703.P9265946345612000066` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078703 has offset 1).

The definition of A078703 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000005, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078703.P9265946345612000066

`A000005(A004767(n))/2`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078703

/-- `A000005(A004767(n))/2` -/
def P9265946345612000066.Spec : Prop :=
  ∀ n, P9265946345612000066.a n = (A078703 (n + 1) : ℚ)

end A078703

/-! ## A078703.P9937122232934901445

`A034178(4*(n+1)-1)`
-/

namespace A078703.P9937122232934901445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034178 (4 * (n + 1) - 1)

end

end A078703.P9937122232934901445

namespace A078703

/-- `A034178(4*(n+1)-1)` -/
def P9937122232934901445.Spec : Prop :=
  ∀ n, P9937122232934901445.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P18265499745754013789

`∏{e}[record[xor(3, n)], #+1]/2`
-/

namespace A078703.P18265499745754013789
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2

end

end A078703.P18265499745754013789

namespace A078703

/-- `∏{e}[record[xor(3, n)], #+1]/2` -/
def P18265499745754013789.Spec : Prop :=
  ∀ n, P18265499745754013789.a n = (A078703 (n + 1) : ℚ)

end A078703

/-! ## A078703.P15546589611260521648

`∏{e}[4*n+3, #+1]/2`
-/

namespace A078703.P15546589611260521648
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1) : ℕ) : ℚ) / 2

end

end A078703.P15546589611260521648

namespace A078703

/-- `∏{e}[4*n+3, #+1]/2` -/
def P15546589611260521648.Spec : Prop :=
  ∀ n, P15546589611260521648.a n = (A078703 (n + 1) : ℚ)

end A078703

/-! ## A078703.P11584423122810949997

`floor(∑{d}[3*n+abs(1-n)+4, #%2]/2)`
-/

namespace A078703.P11584423122810949997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 * n : ℤ) + (|1 - (n : ℤ)| + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n).natAbs, d % 2 : ℕ) : ℚ) / 2⌋

end

end A078703.P11584423122810949997

namespace A078703

/-- `floor(∑{d}[3*n+abs(1-n)+4, #%2]/2)` -/
def P11584423122810949997.Spec : Prop :=
  ∀ n, P11584423122810949997.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P2656310657965555617

`A333805(record[xor(3, n)])`
-/

namespace A078703.P2656310657965555617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A078703.P2656310657965555617

namespace A078703

/-- `A333805(record[xor(3, n)])` -/
def P2656310657965555617.Spec : Prop :=
  ∀ n, P2656310657965555617.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P337709798770375228

`A353376(record[xor(3, n)])`
-/

namespace A078703.P337709798770375228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A078703.P337709798770375228

namespace A078703

/-- `A353376(record[xor(3, n)])` -/
def P337709798770375228.Spec : Prop :=
  ∀ n, P337709798770375228.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P4874144323322045516

`A095808(n+1)+1`
-/

namespace A078703.P4874144323322045516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095808 (n + 1) + 1

end

end A078703.P4874144323322045516

namespace A078703

/-- `A095808(n+1)+1` -/
def P4874144323322045516.Spec : Prop :=
  ∀ n, P4874144323322045516.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P13557740583425250242

`A353376(4*n+3)`
-/

namespace A078703.P13557740583425250242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353376 (4 * n + 3)

end

end A078703.P13557740583425250242

namespace A078703

/-- `A353376(4*n+3)` -/
def P13557740583425250242.Spec : Prop :=
  ∀ n, P13557740583425250242.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P41246114057522665

`A000005(record[xor(3, n)])/2`
-/

namespace A078703.P41246114057522665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 3 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)) : ℚ) / 2

end

end A078703.P41246114057522665

namespace A078703

/-- `A000005(record[xor(3, n)])/2` -/
def P41246114057522665.Spec : Prop :=
  ∀ n, P41246114057522665.a n = (A078703 (n + 1) : ℚ)

end A078703

/-! ## A078703.P18280125998060549445

`A000005(4*n+3)/2`
-/

namespace A078703.P18280125998060549445
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000005 (4 * n + 3) : ℚ) / 2

end

end A078703.P18280125998060549445

namespace A078703

/-- `A000005(4*n+3)/2` -/
def P18280125998060549445.Spec : Prop :=
  ∀ n, P18280125998060549445.a n = (A078703 (n + 1) : ℚ)

end A078703

/-! ## A078703.P16018796856305419602

`A333805(3*(n+1)+n)`
-/

namespace A078703.P16018796856305419602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333805 (3 * (n + 1) + n)

end

end A078703.P16018796856305419602

namespace A078703

/-- `A333805(3*(n+1)+n)` -/
def P16018796856305419602.Spec : Prop :=
  ∀ n, P16018796856305419602.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P8816504934069445374

`A341594(3*(n+1)+n)`
-/

namespace A078703.P8816504934069445374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341594 (3 * (n + 1) + n)

end

end A078703.P8816504934069445374

namespace A078703

/-- `A341594(3*(n+1)+n)` -/
def P8816504934069445374.Spec : Prop :=
  ∀ n, P8816504934069445374.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P14088344359461953564

`floor(A000005(or(3, 4*n))/2)`
-/

namespace A078703.P14088344359461953564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (Nat.lor 3 (4 * n)) : ℚ) / 2⌋

end

end A078703.P14088344359461953564

namespace A078703

/-- `floor(A000005(or(3, 4*n))/2)` -/
def P14088344359461953564.Spec : Prop :=
  ∀ n, P14088344359461953564.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P14685764472919955751

`floor(A000005(xor(3, 4*n))/2)`
-/

namespace A078703.P14685764472919955751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000005 (Nat.xor 3 (4 * n)) : ℚ) / 2⌋

end

end A078703.P14685764472919955751

namespace A078703

/-- `floor(A000005(xor(3, 4*n))/2)` -/
def P14685764472919955751.Spec : Prop :=
  ∀ n, P14685764472919955751.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P1161581396285251702

`∑{d}[4*n+3, A001222(#)%2]`
-/

namespace A078703.P1161581396285251702
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), Int.tmod (A001222 d) 2

end

end A078703.P1161581396285251702

namespace A078703

/-- `∑{d}[4*n+3, A001222(#)%2]` -/
def P1161581396285251702.Spec : Prop :=
  ∀ n, P1161581396285251702.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P7686994439579543181

`A235800(A000005(4*n+3))`
-/

namespace A078703.P7686994439579543181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235800 (A000005 (4 * n + 3)).toNat

end

end A078703.P7686994439579543181

namespace A078703

/-- `A235800(A000005(4*n+3))` -/
def P7686994439579543181.Spec : Prop :=
  ∀ n, P7686994439579543181.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P18004112564450756083

`A001222(sqrt(2)^A000005(4*n+3))`
-/

namespace A078703.P18004112564450756083
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway (Real.sqrt (2 : ℝ) ^ (A000005 (4 * n + 3) : ℤ))).toNat

end

end A078703.P18004112564450756083

namespace A078703

/-- `A001222(sqrt(2)^A000005(4*n+3))` -/
def P18004112564450756083.Spec : Prop :=
  ∀ n, P18004112564450756083.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P6115371121480048

`A193773(Δ[n²])`
-/

namespace A078703.P6115371121480048
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193773 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078703.P6115371121480048

namespace A078703

/-- `A193773(Δ[n²])` -/
def P6115371121480048.Spec : Prop :=
  ∀ n, P6115371121480048.a n = A078703 (n + 1)

end A078703

/-! ## A078703.P9252854751371538656

`A359289(2*(n+1))`
-/

namespace A078703.P9252854751371538656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359289 (2 * (n + 1))

end

end A078703.P9252854751371538656

namespace A078703

/-- `A359289(2*(n+1))` -/
def P9252854751371538656.Spec : Prop :=
  ∀ n, P9252854751371538656.a n = A078703 (n + 1)

end A078703

/-!
# A078704: Integer part of the square root of phi(n).

The programs for A078704, the canonical program `A078704.P17725575729352616635` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078704 has offset 1).

The definition of A078704 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000010, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078704.P17725575729352616635

`A000196(A000010(n+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A078704

/-- `A000196(A000010(n+1))` -/
def P17725575729352616635.Spec : Prop :=
  ∀ n, P17725575729352616635.a n = A078704 (n + 1)

theorem P17725575729352616635.correct : P17725575729352616635.Spec := by
  intro n
  simp only [A078704, Nat.add_sub_cancel]

end A078704

/-! ## A078704.P14931302524485094322

`floor(sqrt((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))`
-/

namespace A078704.P14931302524485094322
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ) : ℝ)⌋

end

end A078704.P14931302524485094322

namespace A078704

/-- `floor(sqrt((n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]))` -/
def P14931302524485094322.Spec : Prop :=
  ∀ n, P14931302524485094322.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P5302734328177723589

`floor(sqrt(Δ[A002088(n)]))`
-/

namespace A078704.P5302734328177723589
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A078704.P5302734328177723589

namespace A078704

/-- `floor(sqrt(Δ[A002088(n)]))` -/
def P5302734328177723589.Spec : Prop :=
  ∀ n, P5302734328177723589.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P14626630155289634475

`floor(sqrt(Δ[A005728(n)]))`
-/

namespace A078704.P14626630155289634475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A078704.P14626630155289634475

namespace A078704

/-- `floor(sqrt(Δ[A005728(n)]))` -/
def P14626630155289634475.Spec : Prop :=
  ∀ n, P14626630155289634475.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P12745305316972933745

`floor(sqrt(A349137(Δ[n²])))`
-/

namespace A078704.P12745305316972933745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A349137 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A078704.P12745305316972933745

namespace A078704

/-- `floor(sqrt(A349137(Δ[n²])))` -/
def P12745305316972933745.Spec : Prop :=
  ∀ n, P12745305316972933745.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P367341127347943390

`floor(sqrt(sqrt(A127473(n+1))))`
-/

namespace A078704.P367341127347943390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A127473 (n + 1) : ℝ))⌋

end

end A078704.P367341127347943390

namespace A078704

/-- `floor(sqrt(sqrt(A127473(n+1))))` -/
def P367341127347943390.Spec : Prop :=
  ∀ n, P367341127347943390.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P1700218766923375072

`floor(sqrt(A109606(n+1)+1))`
-/

namespace A078704.P1700218766923375072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A109606 (n + 1) + 1)

end

end A078704.P1700218766923375072

namespace A078704

/-- `floor(sqrt(A109606(n+1)+1))` -/
def P1700218766923375072.Spec : Prop :=
  ∀ n, P1700218766923375072.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P15993360868319191298

`floor(sqrt(A039649(n+1)-1))`
-/

namespace A078704.P15993360868319191298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A039649 (n + 1) - 1)

end

end A078704.P15993360868319191298

namespace A078704

/-- `floor(sqrt(A039649(n+1)-1))` -/
def P15993360868319191298.Spec : Prop :=
  ∀ n, P15993360868319191298.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P10055207583816999547

`floor(sqrt(∑{d}[n+1, #*A008683((n+1)/#)]))`
-/

namespace A078704.P10055207583816999547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A008683 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat)

end

end A078704.P10055207583816999547

namespace A078704

/-- `floor(sqrt(∑{d}[n+1, #*A008683((n+1)/#)]))` -/
def P10055207583816999547.Spec : Prop :=
  ∀ n, P10055207583816999547.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P6837974759613263199

`A000196(Δ[A002088(n)])`
-/

namespace A078704.P6837974759613263199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (f1 (n + 1) - f1 n).toNat

end

end A078704.P6837974759613263199

namespace A078704

/-- `A000196(Δ[A002088(n)])` -/
def P6837974759613263199.Spec : Prop :=
  ∀ n, P6837974759613263199.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P1092616223850099077

`A000196(A109606(n+1)+1)`
-/

namespace A078704.P1092616223850099077
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A109606 (n + 1) + 1).toNat

end

end A078704.P1092616223850099077

namespace A078704

/-- `A000196(A109606(n+1)+1)` -/
def P1092616223850099077.Spec : Prop :=
  ∀ n, P1092616223850099077.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P2480568202728442646

`A000196(A039649(n+1)-1)`
-/

namespace A078704.P2480568202728442646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A039649 (n + 1) - 1).toNat

end

end A078704.P2480568202728442646

namespace A078704

/-- `A000196(A039649(n+1)-1)` -/
def P2480568202728442646.Spec : Prop :=
  ∀ n, P2480568202728442646.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P8944613507290168861

`A000196(n-A219428(n+1))`
-/

namespace A078704.P8944613507290168861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ((n : ℤ) - A219428 (n + 1)).toNat

end

end A078704.P8944613507290168861

namespace A078704

/-- `A000196(n-A219428(n+1))` -/
def P8944613507290168861.Spec : Prop :=
  ∀ n, P8944613507290168861.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P13949772410760641465

`A003059(A000010(n+1)+1)-1`
-/

namespace A078704.P13949772410760641465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A000010 (n + 1) + 1).toNat - 1

end

end A078704.P13949772410760641465

namespace A078704

/-- `A003059(A000010(n+1)+1)-1` -/
def P13949772410760641465.Spec : Prop :=
  ∀ n, P13949772410760641465.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P14331562693591557959

`A000196(1-A051953(n+1)+n)`
-/

namespace A078704.P14331562693591557959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (1 - A051953 (n + 1) + (n : ℤ)).toNat

end

end A078704.P14331562693591557959

namespace A078704

/-- `A000196(1-A051953(n+1)+n)` -/
def P14331562693591557959.Spec : Prop :=
  ∀ n, P14331562693591557959.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P6152467043764559191

`A000196(A002618(n+1)/(n+1))`
-/

namespace A078704.P6152467043764559191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A002618 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A078704.P6152467043764559191

namespace A078704

/-- `A000196(A002618(n+1)/(n+1))` -/
def P6152467043764559191.Spec : Prop :=
  ∀ n, P6152467043764559191.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P3175551440272962551

`A000196(A083239(n+1)+A083239(n))`
-/

namespace A078704.P3175551440272962551
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A083239 (n + 1) + A083239 n).toNat

end

end A078704.P3175551440272962551

namespace A078704

/-- `A000196(A083239(n+1)+A083239(n))` -/
def P3175551440272962551.Spec : Prop :=
  ∀ n, P3175551440272962551.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P1716776501036941608

`A000196(A002088(n+1)-A002088(n))`
-/

namespace A078704.P1716776501036941608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A002088 (n + 1) - A002088 n).toNat

end

end A078704.P1716776501036941608

namespace A078704

/-- `A000196(A002088(n+1)-A002088(n))` -/
def P1716776501036941608.Spec : Prop :=
  ∀ n, P1716776501036941608.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P16984119161136222463

`floor(sqrt(A384710(n+1)))`
-/

namespace A078704.P16984119161136222463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A384710 (n + 1))

end

end A078704.P16984119161136222463

namespace A078704

/-- `floor(sqrt(A384710(n+1)))` -/
def P16984119161136222463.Spec : Prop :=
  ∀ n, P16984119161136222463.a n = A078704 (n + 1)

end A078704

/-! ## A078704.P6677833816914264565

`A000196(A384710(n+1))`
-/

namespace A078704.P6677833816914264565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A384710 (n + 1)).toNat

end

end A078704.P6677833816914264565

namespace A078704

/-- `A000196(A384710(n+1))` -/
def P6677833816914264565.Spec : Prop :=
  ∀ n, P6677833816914264565.a n = A078704 (n + 1)

end A078704

/-!
# A078705: Integer part of the square root of sigma(n).

The programs for A078705, the canonical program `A078705.P17275305234142086416` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078705 has offset 1).

The definition of A078705 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078705.P17275305234142086416

`A000196(A000203(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A078705

/-- `A000196(A000203(n+1))` -/
def P17275305234142086416.Spec : Prop :=
  ∀ n, P17275305234142086416.a n = A078705 (n + 1)

theorem P17275305234142086416.correct : P17275305234142086416.Spec := by
  intro n
  simp only [A078705, Nat.add_sub_cancel]

end A078705

/-! ## A078705.P4413959840835412593

`floor(sqrt(∑{d}[n+1, #]))`
-/

namespace A078705.P4413959840835412593
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (∑ d ∈ Nat.divisors (f1 n), d)

end

end A078705.P4413959840835412593

namespace A078705

/-- `floor(sqrt(∑{d}[n+1, #]))` -/
def P4413959840835412593.Spec : Prop :=
  ∀ n, (P4413959840835412593.a n : ℤ) = A078705 (n + 1)

end A078705

/-! ## A078705.P96807354810521174

`floor(root(∑{d}[n+1, #], 2))`
-/

namespace A078705.P96807354810521174
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) ^ (1 / (2 : ℝ))⌋

end

end A078705.P96807354810521174

namespace A078705

/-- `floor(root(∑{d}[n+1, #], 2))` -/
def P96807354810521174.Spec : Prop :=
  ∀ n, P96807354810521174.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P2572926986667111528

`floor(∑{d}[n+1, #]^(1/2))`
-/

namespace A078705.P2572926986667111528
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℝ) ^ ((1 : ℚ) / 2 : ℝ)⌋

end

end A078705.P2572926986667111528

namespace A078705

/-- `floor(∑{d}[n+1, #]^(1/2))` -/
def P2572926986667111528.Spec : Prop :=
  ∀ n, P2572926986667111528.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P3800419097371231723

`sqrt(A065734(n+1))`
-/

namespace A078705.P3800419097371231723
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A065734 (n + 1) : ℝ)

end

end A078705.P3800419097371231723

namespace A078705

/-- `sqrt(A065734(n+1))` -/
def P3800419097371231723.Spec : Prop :=
  ∀ n, P3800419097371231723.a n = (A078705 (n + 1) : ℝ)

end A078705

/-! ## A078705.P5820713071963014334

`floor(sqrt(Δ[A160664(n)]))`
-/

namespace A078705.P5820713071963014334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (f1 (n + 1) - f1 n)

end

end A078705.P5820713071963014334

namespace A078705

/-- `floor(sqrt(Δ[A160664(n)]))` -/
def P5820713071963014334.Spec : Prop :=
  ∀ n, P5820713071963014334.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P10190318041728157883

`floor(sqrt(sqrt(A072861(n+1))))`
-/

namespace A078705.P10190318041728157883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A072861 (n + 1) : ℝ))⌋

end

end A078705.P10190318041728157883

namespace A078705

/-- `floor(sqrt(sqrt(A072861(n+1))))` -/
def P10190318041728157883.Spec : Prop :=
  ∀ n, P10190318041728157883.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P6980966995936816985

`floor(sqrt(sqrt(A258774(n+1))))`
-/

namespace A078705.P6980966995936816985
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A258774 (n + 1) : ℝ))⌋

end

end A078705.P6980966995936816985

namespace A078705

/-- `floor(sqrt(sqrt(A258774(n+1))))` -/
def P6980966995936816985.Spec : Prop :=
  ∀ n, P6980966995936816985.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P2926603853776563999

`floor(sqrt(sqrt(A258974(n+1))))`
-/

namespace A078705.P2926603853776563999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt (Real.sqrt (A258974 (n + 1) : ℝ))⌋

end

end A078705.P2926603853776563999

namespace A078705

/-- `floor(sqrt(sqrt(A258974(n+1))))` -/
def P2926603853776563999.Spec : Prop :=
  ∀ n, P2926603853776563999.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P9343224114396383231

`floor(sqrt(A245092(2*n+1)))`
-/

namespace A078705.P9343224114396383231
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A245092 (2 * n + 1))

end

end A078705.P9343224114396383231

namespace A078705

/-- `floor(sqrt(A245092(2*n+1)))` -/
def P9343224114396383231.Spec : Prop :=
  ∀ n, P9343224114396383231.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P18021482873818792144

`floor(sqrt(A155085(n+1)-(n+1)))`
-/

namespace A078705.P18021482873818792144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A155085 (n + 1) - (n + 1 : ℤ))

end

end A078705.P18021482873818792144

namespace A078705

/-- `floor(sqrt(A155085(n+1)-(n+1)))` -/
def P18021482873818792144.Spec : Prop :=
  ∀ n, P18021482873818792144.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P5773179389646641823

`floor(sqrt(A064987(n+1)/(n+1)))`
-/

namespace A078705.P5773179389646641823
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.sqrt ((A064987 (n + 1) : ℚ) / (n + 1 : ℚ) : ℝ)⌋

end

end A078705.P5773179389646641823

namespace A078705

/-- `floor(sqrt(A064987(n+1)/(n+1)))` -/
def P5773179389646641823.Spec : Prop :=
  ∀ n, P5773179389646641823.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P11549244992263509717

`floor(sqrt(A326065(2*(n+1))))`
-/

namespace A078705.P11549244992263509717
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A326065 (2 * (n + 1)))

end

end A078705.P11549244992263509717

namespace A078705

/-- `floor(sqrt(A326065(2*(n+1))))` -/
def P11549244992263509717.Spec : Prop :=
  ∀ n, P11549244992263509717.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P8115441775541183945

`floor(sqrt(A262610(2*n+1)))`
-/

namespace A078705.P8115441775541183945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A262610 (2 * n + 1))

end

end A078705.P8115441775541183945

namespace A078705

/-- `floor(sqrt(A262610(2*n+1)))` -/
def P8115441775541183945.Spec : Prop :=
  ∀ n, P8115441775541183945.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P15488778221627211103

`A000196(∑{d}[n+1, #])`
-/

namespace A078705.P15488778221627211103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (∑ d ∈ Nat.divisors (f1 n), d)

end

end A078705.P15488778221627211103

namespace A078705

/-- `A000196(∑{d}[n+1, #])` -/
def P15488778221627211103.Spec : Prop :=
  ∀ n, P15488778221627211103.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P4798971946688210408

`sqrt(A048760(∑{d}[n+1, #]))`
-/

namespace A078705.P4798971946688210408
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A048760 (∑ d ∈ Nat.divisors (f1 n), d) : ℝ)

end

end A078705.P4798971946688210408

namespace A078705

/-- `sqrt(A048760(∑{d}[n+1, #]))` -/
def P4798971946688210408.Spec : Prop :=
  ∀ n, P4798971946688210408.a n = (A078705 (n + 1) : ℝ)

end A078705

/-! ## A078705.P1599770869671263472

`A000196(A088580(n+1)-1)`
-/

namespace A078705.P1599770869671263472
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A088580 (n + 1) - 1).toNat

end

end A078705.P1599770869671263472

namespace A078705

/-- `A000196(A088580(n+1)-1)` -/
def P1599770869671263472.Spec : Prop :=
  ∀ n, P1599770869671263472.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P16473082022791061779

`A000196(A245092(2*n+1))`
-/

namespace A078705.P16473082022791061779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A245092 (2 * n + 1)).toNat

end

end A078705.P16473082022791061779

namespace A078705

/-- `A000196(A245092(2*n+1))` -/
def P16473082022791061779.Spec : Prop :=
  ∀ n, P16473082022791061779.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P2129453778149712654

`A000196(A074400(n+1)/2)`
-/

namespace A078705.P2129453778149712654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (SequenceMachineLib.roundAway ((A074400 (n + 1) : ℚ) / 2)).toNat

end

end A078705.P2129453778149712654

namespace A078705

/-- `A000196(A074400(n+1)/2)` -/
def P2129453778149712654.Spec : Prop :=
  ∀ n, P2129453778149712654.a n = A078705 (n + 1)

end A078705

/-! ## A078705.P10064582695030242906

`A000196(A001065(n+1)+n+1)`
-/

namespace A078705.P10064582695030242906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 (A001065 (n + 1) + (n + 1 : ℤ)).toNat

end

end A078705.P10064582695030242906

namespace A078705

/-- `A000196(A001065(n+1)+n+1)` -/
def P10064582695030242906.Spec : Prop :=
  ∀ n, P10064582695030242906.a n = A078705 (n + 1)

end A078705

/-!
# A078706: a(n) = smallest integer >=a(n-1) such that sum of first n terms is prime.

The programs for A078706, there is no canonical definition to state claims against.
-/

/-! ## A078706.P371621371143413155

`Δ[A007918(2*a(n-1)-a(n-2))]` with `a(0)=0, a(1)=2`
-/

namespace A078706.P371621371143413155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0, 2] fun n f1 =>
  A007918 (2 * f1 (n - 1) - f1 (n - 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078706.P371621371143413155

/-!
# A078707: Number of vectors of length n that are symmetric about the middle, where each element is drawn from a set of n distinct elements.

The programs for A078707, the canonical program `A078707.P3183472175958927143` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078707 has offset 0).

The definition of A078707 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078707.P3183472175958927143

`n^ceil(n/2)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078707

/-- `n^ceil(n/2)` -/
def P3183472175958927143.Spec : Prop :=
  ∀ n, P3183472175958927143.a n = (A078707 n : ℚ)

end A078707

/-! ## A078707.P11685371535503446202

`ceil(n^∑[n%-2])`
-/

namespace A078707.P11685371535503446202
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n : ℤ) (-2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌉

end

end A078707.P11685371535503446202

namespace A078707

/-- `ceil(n^∑[n%-2])` -/
def P11685371535503446202.Spec : Prop :=
  ∀ n, P11685371535503446202.a n = A078707 n

end A078707

/-! ## A078707.P1746520361674757080

`floor(n^∑[2-gcd(2, n)])`
-/

namespace A078707.P1746520361674757080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (Nat.gcd 2 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A078707.P1746520361674757080

namespace A078707

/-- `floor(n^∑[2-gcd(2, n)])` -/
def P1746520361674757080.Spec : Prop :=
  ∀ n, P1746520361674757080.a n = A078707 n

end A078707

/-! ## A078707.P15476822334875554142

`floor(n^(∑[n]/or(1, n)))`
-/

namespace A078707.P15476822334875554142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) ^ (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / (Nat.lor 1 n : ℚ) : ℝ)⌋

end

end A078707.P15476822334875554142

namespace A078707

/-- `floor(n^(∑[n]/or(1, n)))` -/
def P15476822334875554142.Spec : Prop :=
  ∀ n, P15476822334875554142.a n = A078707 n

end A078707

/-! ## A078707.P1922498347239641942

`floor(n^round(n*tan(acot(2))))`
-/

namespace A078707.P1922498347239641942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (SequenceMachineLib.roundAway ((n : ℝ) * Real.tan (SequenceMachineLib.acot (2 : ℝ))) : ℤ)⌋

end

end A078707.P1922498347239641942

namespace A078707

/-- `floor(n^round(n*tan(acot(2))))` -/
def P1922498347239641942.Spec : Prop :=
  ∀ n, P1922498347239641942.a n = A078707 n

end A078707

/-! ## A078707.P6528416848398347520

`floor(n^floor(sin(1)+n/2))`
-/

namespace A078707.P6528416848398347520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (⌊Real.sin (1 : ℝ) + ((n : ℚ) / 2 : ℝ)⌋ : ℤ)⌋

end

end A078707.P6528416848398347520

namespace A078707

/-- `floor(n^floor(sin(1)+n/2))` -/
def P6528416848398347520.Spec : Prop :=
  ∀ n, P6528416848398347520.a n = A078707 n

end A078707

/-! ## A078707.P11611014811410826723

`round(n^round(cot(2/(n+1))))`
-/

namespace A078707.P11611014811410826723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ (SequenceMachineLib.roundAway (Real.cot (2 / (n + 1 : ℚ) : ℝ)) : ℤ))

end

end A078707.P11611014811410826723

namespace A078707

/-- `round(n^round(cot(2/(n+1))))` -/
def P11611014811410826723.Spec : Prop :=
  ∀ n, P11611014811410826723.a n = A078707 n

end A078707

/-! ## A078707.P2408184130913943167

`floor(n^∑[1-a(n-1)])` with `a(0)=0`
-/

namespace A078707.P2408184130913943167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌋

end

end A078707.P2408184130913943167

namespace A078707

/-- `floor(n^∑[1-a(n-1)])` -/
def P2408184130913943167.Spec : Prop :=
  ∀ n, P2408184130913943167.a n = A078707 n

end A078707

/-! ## A078707.P4418851278247429299

`ceil(n^∑[1-a(n-1)])` with `a(0)=0`
-/

namespace A078707.P4418851278247429299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ)⌉

end

end A078707.P4418851278247429299

namespace A078707

/-- `ceil(n^∑[1-a(n-1)])` -/
def P4418851278247429299.Spec : Prop :=
  ∀ n, P4418851278247429299.a n = A078707 n

end A078707

/-! ## A078707.P17672855329754729477

`round(n^∑[1-a(n-1)])` with `a(0)=0`
-/

namespace A078707.P17672855329754729477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  1 - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n : ℚ) ^ (∑ j ∈ Finset.range (n + 1), f1 j : ℤ))

end

end A078707.P17672855329754729477

namespace A078707

/-- `round(n^∑[1-a(n-1)])` -/
def P17672855329754729477.Spec : Prop :=
  ∀ n, P17672855329754729477.a n = A078707 n

end A078707

/-! ## A078707.P9352472342843678472

`n^floor(n/2)*n^and(1, n)`
-/

namespace A078707.P9352472342843678472
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) ^ (⌊(n : ℚ) / 2⌋ : ℤ) * (n ^ Nat.land 1 n : ℚ)

end

end A078707.P9352472342843678472

namespace A078707

/-- `n^floor(n/2)*n^and(1, n)` -/
def P9352472342843678472.Spec : Prop :=
  ∀ n, P9352472342843678472.a n = (A078707 n : ℚ)

end A078707

/-! ## A078707.P8321057587631438283

`(n^∑[1/2-a(n-1)])²` with `a(0)=0`
-/

namespace A078707.P8321057587631438283
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [0] fun n f1 =>
  (1 : ℚ) / 2 - f1 (n - 1)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n : ℝ) ^ ((∑ j ∈ Finset.range (n + 1), f1 j : ℚ) : ℝ)) ^ 2

end

end A078707.P8321057587631438283

namespace A078707

/-- `(n^∑[1/2-a(n-1)])²` -/
def P8321057587631438283.Spec : Prop :=
  ∀ n, P8321057587631438283.a n = (A078707 n : ℝ)

end A078707

/-! ## A078707.P11942385989425034887

`abs((-n)^A110654(n))`
-/

namespace A078707.P11942385989425034887
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(-(n : ℤ) : ℚ) ^ (A110654 n : ℤ)|

end

end A078707.P11942385989425034887

namespace A078707

/-- `abs((-n)^A110654(n))` -/
def P11942385989425034887.Spec : Prop :=
  ∀ n, P11942385989425034887.a n = (A078707 n : ℚ)

end A078707

/-! ## A078707.P16391635175642799512

`floor(n^Δ[A002620(n)])`
-/

namespace A078707.P16391635175642799512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002620 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)⌋

end

end A078707.P16391635175642799512

namespace A078707

/-- `floor(n^Δ[A002620(n)])` -/
def P16391635175642799512.Spec : Prop :=
  ∀ n, P16391635175642799512.a n = A078707 n

end A078707

/-! ## A078707.P3719864861094190182

`abs(A274922(n)^A065033(n))`
-/

namespace A078707.P3719864861094190182
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A274922 n : ℚ) ^ (A065033 n : ℤ)|

end

end A078707.P3719864861094190182

namespace A078707

/-- `abs(A274922(n)^A065033(n))` -/
def P3719864861094190182.Spec : Prop :=
  ∀ n, P3719864861094190182.a n = (A078707 n : ℚ)

end A078707

/-!
# A078708: Sum of divisors d of n such that n/d is not congruent to 0 mod 3.

The programs for A078708, the canonical program `A078708.P10580976102168084767` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078708 has offset 1).

The definition of A078708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078708.P1514979863504558195

`A326399(n+1)+A326400(n+1)`
-/

namespace A078708.P1514979863504558195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326399 (n + 1) + A326400 (n + 1)

end

end A078708.P1514979863504558195

namespace A078708

/-- `A326399(n+1)+A326400(n+1)` -/
def P1514979863504558195.Spec : Prop :=
  ∀ n, P1514979863504558195.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P10580976102168084767

`(A000203(3*(n+1))-A000203(n+1))/3`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A078708

/-- `(A000203(3*(n+1))-A000203(n+1))/3` -/
def P10580976102168084767.Spec : Prop :=
  ∀ n, P10580976102168084767.a n = (A078708 (n + 1) : ℚ)

end A078708

/-! ## A078708.P2046422541307744580

`∑{d}[n+1, #-A000292(#)%#]`
-/

namespace A078708.P2046422541307744580
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - Int.tmod (A000292 d) (d : ℤ))

end

end A078708.P2046422541307744580

namespace A078708

/-- `∑{d}[n+1, #-A000292(#)%#]` -/
def P2046422541307744580.Spec : Prop :=
  ∀ n, P2046422541307744580.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P10534987949397982368

`3^val(n+1, 3)*A000203((n+1)/3^val(n+1, 3))`
-/

namespace A078708.P10534987949397982368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℤ) * A000203 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ))).toNat

end

end A078708.P10534987949397982368

namespace A078708

/-- `3^val(n+1, 3)*A000203((n+1)/3^val(n+1, 3))` -/
def P10534987949397982368.Spec : Prop :=
  ∀ n, P10534987949397982368.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P3345334335602355011

`A038500(n+1)*A046913(n+1)`
-/

namespace A078708.P3345334335602355011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038500 (n + 1) * A046913 (n + 1)

end

end A078708.P3345334335602355011

namespace A078708

/-- `A038500(n+1)*A046913(n+1)` -/
def P3345334335602355011.Spec : Prop :=
  ∀ n, P3345334335602355011.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P5814396362938423862

`A038712(n+1)*A121443(n+1)`
-/

namespace A078708.P5814396362938423862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038712 (n + 1) * A121443 (n + 1)

end

end A078708.P5814396362938423862

namespace A078708

/-- `A038712(n+1)*A121443(n+1)` -/
def P5814396362938423862.Spec : Prop :=
  ∀ n, P5814396362938423862.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P9996863693371070433

`A064987(n+1)/A327625(n+1)`
-/

namespace A078708.P9996863693371070433
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A064987 (n + 1) : ℚ) / (A327625 (n + 1) : ℚ)

end

end A078708.P9996863693371070433

namespace A078708

/-- `A064987(n+1)/A327625(n+1)` -/
def P9996863693371070433.Spec : Prop :=
  ∀ n, P9996863693371070433.a n = (A078708 (n + 1) : ℚ)

end A078708

/-! ## A078708.P3161028594298069182

`A326401(n+1)+2*A326400(n+1)`
-/

namespace A078708.P3161028594298069182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326401 (n + 1) + 2 * A326400 (n + 1)

end

end A078708.P3161028594298069182

namespace A078708

/-- `A326401(n+1)+2*A326400(n+1)` -/
def P3161028594298069182.Spec : Prop :=
  ∀ n, P3161028594298069182.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P2376900193356208904

`2*A326399(n+1)-A326401(n+1)`
-/

namespace A078708.P2376900193356208904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A326399 (n + 1) - A326401 (n + 1)

end

end A078708.P2376900193356208904

namespace A078708

/-- `2*A326399(n+1)-A326401(n+1)` -/
def P2376900193356208904.Spec : Prop :=
  ∀ n, P2376900193356208904.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P8250537798832801548

`∑{d}[A038502(n+1), #*A038500(n+1)]`
-/

namespace A078708.P8250537798832801548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, (d : ℤ) * A038500 (n + 1)

end

end A078708.P8250537798832801548

namespace A078708

/-- `∑{d}[A038502(n+1), #*A038500(n+1)]` -/
def P8250537798832801548.Spec : Prop :=
  ∀ n, P8250537798832801548.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P2479063569044259515

`∑{d}[n+1, A000010(#)*A035191((n+1)/#)]`
-/

namespace A078708.P2479063569044259515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000010 d * A035191 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078708.P2479063569044259515

namespace A078708

/-- `∑{d}[n+1, A000010(#)*A035191((n+1)/#)]` -/
def P2479063569044259515.Spec : Prop :=
  ∀ n, P2479063569044259515.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P1060955065199229487

`∑{d}[n+1, A035218(#)*A062570((n+1)/#)]`
-/

namespace A078708.P1060955065199229487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035218 d * A062570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078708.P1060955065199229487

namespace A078708

/-- `∑{d}[n+1, A035218(#)*A062570((n+1)/#)]` -/
def P1060955065199229487.Spec : Prop :=
  ∀ n, P1060955065199229487.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P539376887467101372

`∑{d}[n+1, A038500(#)*A091684((n+1)/#)]`
-/

namespace A078708.P539376887467101372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038500 d * A091684 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078708.P539376887467101372

namespace A078708

/-- `∑{d}[n+1, A038500(#)*A091684((n+1)/#)]` -/
def P539376887467101372.Spec : Prop :=
  ∀ n, P539376887467101372.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P9449243674829962829

`∑{d}[n+1, A048298(#)*A121443((n+1)/#)]`
-/

namespace A078708.P9449243674829962829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048298 d * A121443 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078708.P9449243674829962829

namespace A078708

/-- `∑{d}[n+1, A048298(#)*A121443((n+1)/#)]` -/
def P9449243674829962829.Spec : Prop :=
  ∀ n, P9449243674829962829.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P17377262069844307340

`∑{d}[n+1, A001615(#)*A214295((n+1)/#)]`
-/

namespace A078708.P17377262069844307340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001615 d * A214295 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078708.P17377262069844307340

namespace A078708

/-- `∑{d}[n+1, A001615(#)*A214295((n+1)/#)]` -/
def P17377262069844307340.Spec : Prop :=
  ∀ n, P17377262069844307340.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P5165849777184552482

`∑{d}[n+1, A065332(#)*A279929((n+1)/#)]`
-/

namespace A078708.P5165849777184552482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065332 d * A279929 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078708.P5165849777184552482

namespace A078708

/-- `∑{d}[n+1, A065332(#)*A279929((n+1)/#)]` -/
def P5165849777184552482.Spec : Prop :=
  ∀ n, P5165849777184552482.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P1116543285566849303

`∑{d}[n+1, A001511(#)*A384042((n+1)/#)]`
-/

namespace A078708.P1116543285566849303
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001511 d * A384042 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078708.P1116543285566849303

namespace A078708

/-- `∑{d}[n+1, A001511(#)*A384042((n+1)/#)]` -/
def P1116543285566849303.Spec : Prop :=
  ∀ n, P1116543285566849303.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P10632866403414911063

`∑{d}[n+1, A159634(#)*A244611((n+1)/#)]`
-/

namespace A078708.P10632866403414911063
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A159634 d * A244611 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078708.P10632866403414911063

namespace A078708

/-- `∑{d}[n+1, A159634(#)*A244611((n+1)/#)]` -/
def P10632866403414911063.Spec : Prop :=
  ∀ n, P10632866403414911063.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P17565182587019225266

`∑{d}[n+1, A162728(#)*A256232((n+1)/#)]`
-/

namespace A078708.P17565182587019225266
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A162728 d * A256232 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078708.P17565182587019225266

namespace A078708

/-- `∑{d}[n+1, A162728(#)*A256232((n+1)/#)]` -/
def P17565182587019225266.Spec : Prop :=
  ∀ n, P17565182587019225266.a n = A078708 (n + 1)

end A078708

/-! ## A078708.P13092193879225463126

`∑{d}[n+1, A035172(#)*A395769((n+1)/#)]`
-/

namespace A078708.P13092193879225463126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035172 d * A395769 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078708.P13092193879225463126

namespace A078708

/-- `∑{d}[n+1, A035172(#)*A395769((n+1)/#)]` -/
def P13092193879225463126.Spec : Prop :=
  ∀ n, P13092193879225463126.a n = A078708 (n + 1)

end A078708

/-!
# A078709: a(n) = floor(n/d(n)), where d(n) is the number of divisors of n (A000005).

The programs for A078709, the canonical program `A078709.P1370786653832375145` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078709 has offset 1).

The definition of A078709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078709.P1370786653832375145

`floor((n+1)/∏{e}[n+1, #+1])`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078709

/-- `floor((n+1)/∏{e}[n+1, #+1])` -/
def P1370786653832375145.Spec : Prop :=
  ∀ n, P1370786653832375145.a n = A078709 (n + 1)

theorem P1370786653832375145.correct : P1370786653832375145.Spec := by
  intro n
  simp only [A078709, Nat.add_sub_cancel]

end A078709

/-! ## A078709.P11585954878163124906

`floor((n+1)/∑{d}[n+1, gcd(n, #)])`
-/

namespace A078709.P11585954878163124906
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d : ℕ) : ℚ)⌋

end

end A078709.P11585954878163124906

namespace A078709

/-- `floor((n+1)/∑{d}[n+1, gcd(n, #)])` -/
def P11585954878163124906.Spec : Prop :=
  ∀ n, P11585954878163124906.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P1570622299006663773

`floor((n+1)/Δ[A006218(n)])`
-/

namespace A078709.P1570622299006663773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A078709.P1570622299006663773

namespace A078709

/-- `floor((n+1)/Δ[A006218(n)])` -/
def P1570622299006663773.Spec : Prop :=
  ∀ n, P1570622299006663773.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P13212878399842430025

`floor((n+1)/Δ[A054519(n)])`
-/

namespace A078709.P13212878399842430025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054519 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (f1 (n + 1) - f1 n : ℚ)⌋

end

end A078709.P13212878399842430025

namespace A078709

/-- `floor((n+1)/Δ[A054519(n)])` -/
def P13212878399842430025.Spec : Prop :=
  ∀ n, P13212878399842430025.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P14899037957864783464

`floor((n+1)/A000005(n+1))`
-/

namespace A078709.P14899037957864783464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A000005 (n + 1) : ℚ)⌋

end

end A078709.P14899037957864783464

namespace A078709

/-- `floor((n+1)/A000005(n+1))` -/
def P14899037957864783464.Spec : Prop :=
  ∀ n, P14899037957864783464.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P10441189130035002190

`floor((n+1)²/A038040(n+1))`
-/

namespace A078709.P10441189130035002190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((n + 1) ^ 2 : ℚ) / (A038040 (n + 1) : ℚ)⌋

end

end A078709.P10441189130035002190

namespace A078709

/-- `floor((n+1)²/A038040(n+1))` -/
def P10441189130035002190.Spec : Prop :=
  ∀ n, P10441189130035002190.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P18075787870937481241

`floor((n+1)/A320111(2*(n+1)))`
-/

namespace A078709.P18075787870937481241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A320111 (2 * (n + 1)) : ℚ)⌋

end

end A078709.P18075787870937481241

namespace A078709

/-- `floor((n+1)/A320111(2*(n+1)))` -/
def P18075787870937481241.Spec : Prop :=
  ∀ n, P18075787870937481241.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P9262144447720019218

`floor((n+1)/∑{d}[n+1, ((A001221(#)+1)%2)!])`
-/

namespace A078709.P9262144447720019218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), Nat.factorial (Int.tmod (A001221 d + 1) 2).toNat : ℕ) : ℚ)⌋

end

end A078709.P9262144447720019218

namespace A078709

/-- `floor((n+1)/∑{d}[n+1, ((A001221(#)+1)%2)!])` -/
def P9262144447720019218.Spec : Prop :=
  ∀ n, P9262144447720019218.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P16342344170780719680

`A334762(n+1)-A368625(n+1)`
-/

namespace A078709.P16342344170780719680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334762 (n + 1) - A368625 (n + 1)

end

end A078709.P16342344170780719680

namespace A078709

/-- `A334762(n+1)-A368625(n+1)` -/
def P16342344170780719680.Spec : Prop :=
  ∀ n, P16342344170780719680.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P8408787213335696013

`floor(A038040(n+1)/A035116(n+1))`
-/

namespace A078709.P8408787213335696013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A038040 (n + 1) : ℚ) / (A035116 (n + 1) : ℚ)⌋

end

end A078709.P8408787213335696013

namespace A078709

/-- `floor(A038040(n+1)/A035116(n+1))` -/
def P8408787213335696013.Spec : Prop :=
  ∀ n, P8408787213335696013.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P5509425645526026755

`floor((n+1)/∑{d}[n+1, A057427(#)])`
-/

namespace A078709.P5509425645526026755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / ((∑ d ∈ Nat.divisors (f1 n), A057427 d : ℤ) : ℚ)⌋

end

end A078709.P5509425645526026755

namespace A078709

/-- `floor((n+1)/∑{d}[n+1, A057427(#)])` -/
def P5509425645526026755.Spec : Prop :=
  ∀ n, P5509425645526026755.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P18188622324171734562

`floor((n+1)/A183063(2*(n+1)))`
-/

namespace A078709.P18188622324171734562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A183063 (2 * (n + 1)) : ℚ)⌋

end

end A078709.P18188622324171734562

namespace A078709

/-- `floor((n+1)/A183063(2*(n+1)))` -/
def P18188622324171734562.Spec : Prop :=
  ∀ n, P18188622324171734562.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P8137642959918970392

`A161654(n+1)/A000005(n+1)`
-/

namespace A078709.P8137642959918970392
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A161654 (n + 1) : ℚ) / (A000005 (n + 1) : ℚ)

end

end A078709.P8137642959918970392

namespace A078709

/-- `A161654(n+1)/A000005(n+1)` -/
def P8137642959918970392.Spec : Prop :=
  ∀ n, P8137642959918970392.a n = (A078709 (n + 1) : ℚ)

end A078709

/-! ## A078709.P1659836783416931082

`floor((n+1)/A001222(A100587(n+1)+1))`
-/

namespace A078709.P1659836783416931082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A001222 (A100587 (n + 1) + 1).toNat : ℚ)⌋

end

end A078709.P1659836783416931082

namespace A078709

/-- `floor((n+1)/A001222(A100587(n+1)+1))` -/
def P1659836783416931082.Spec : Prop :=
  ∀ n, P1659836783416931082.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P4797527826395906814

`A010766(∑[n+1]-A049820(n+1))`
-/

namespace A078709.P4797527826395906814
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - A049820 (n + 1)).toNat

end

end A078709.P4797527826395906814

namespace A078709

/-- `A010766(∑[n+1]-A049820(n+1))` -/
def P4797527826395906814.Spec : Prop :=
  ∀ n, P4797527826395906814.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P6570991924963872395

`A010766(A000217(n)+A000005(n+1))`
-/

namespace A078709.P6570991924963872395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (A000217 n + A000005 (n + 1)).toNat

end

end A078709.P6570991924963872395

namespace A078709

/-- `A010766(A000217(n)+A000005(n+1))` -/
def P6570991924963872395.Spec : Prop :=
  ∀ n, P6570991924963872395.a n = A078709 (n + 1)

end A078709

/-! ## A078709.P8991216255289531221

`floor((n+1)/A238353(∑[n+1]))`
-/

namespace A078709.P8991216255289531221
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℚ) / (A238353 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ)⌋

end

end A078709.P8991216255289531221

namespace A078709

/-- `floor((n+1)/A238353(∑[n+1]))` -/
def P8991216255289531221.Spec : Prop :=
  ∀ n, P8991216255289531221.a n = A078709 (n + 1)

end A078709

/-!
# A078711: Sequence is S(infinity), where S(1)={1,2,3}, S(n+1)=S(n)S'(n) and S'(n) is obtained from S(n) by changing last term using the cyclic permutation 1->2->3->1.

The programs for A078711, the canonical program `A078711.P7982440714869731280` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078711 has offset 1).

The definition of A078711 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078711.P7982440714869731280

`val(∑[(n%3)!], 2)%3+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078711

/-- `val(∑[(n%3)!], 2)%3+1` -/
def P7982440714869731280.Spec : Prop :=
  ∀ n, (P7982440714869731280.a n : ℤ) = A078711 (n + 1)

theorem P7982440714869731280.correct : P7982440714869731280.Spec := by
  intro n
  simp only [A078711, Nat.add_sub_cancel]

end A078711

/-! ## A078711.P17493108051955842301

`val(comp[4*n+2]+1, 2)%3+1`
-/

namespace A078711.P17493108051955842301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 1) 2 % 3 + 1

end

end A078711.P17493108051955842301

namespace A078711

/-- `val(comp[4*n+2]+1, 2)%3+1` -/
def P17493108051955842301.Spec : Prop :=
  ∀ n, (P17493108051955842301.a n : ℤ) = A078711 (n + 1)

end A078711

/-! ## A078711.P5610569890459503078

`(val(n+1, 2)*C(n, 2)+n)%3+1`
-/

namespace A078711.P5610569890459503078
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 1) 2 * Nat.choose n 2 + n) % 3 + 1

end

end A078711.P5610569890459503078

namespace A078711

/-- `(val(n+1, 2)*C(n, 2)+n)%3+1` -/
def P5610569890459503078.Spec : Prop :=
  ∀ n, (P5610569890459503078.a n : ℤ) = A078711 (n + 1)

end A078711

/-! ## A078711.P12047134422640771000

`A078979(n+1)+1`
-/

namespace A078711.P12047134422640771000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078979 (n + 1) + 1

end

end A078711.P12047134422640771000

namespace A078711

/-- `A078979(n+1)+1` -/
def P12047134422640771000.Spec : Prop :=
  ∀ n, P12047134422640771000.a n = A078711 (n + 1)

end A078711

/-! ## A078711.P9520930923198542353

`A078734(∑[(n%3)!])`
-/

namespace A078711.P9520930923198542353
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078711.P9520930923198542353

namespace A078711

/-- `A078734(∑[(n%3)!])` -/
def P9520930923198542353.Spec : Prop :=
  ∀ n, P9520930923198542353.a n = A078711 (n + 1)

end A078711

/-! ## A078711.P11347209961998228078

`A078734(round(4*n/3)+1)`
-/

namespace A078711.P11347209961998228078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3)) + 1).toNat

end

end A078711.P11347209961998228078

namespace A078711

/-- `A078734(round(4*n/3)+1)` -/
def P11347209961998228078.Spec : Prop :=
  ∀ n, P11347209961998228078.a n = A078711 (n + 1)

end A078711

/-! ## A078711.P12731554708336446645

`A096271(round(4*n/3))+1`
-/

namespace A078711.P12731554708336446645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096271 (SequenceMachineLib.roundAway (4 * ((n : ℚ) / 3))).toNat + 1

end

end A078711.P12731554708336446645

namespace A078711

/-- `A096271(round(4*n/3))+1` -/
def P12731554708336446645.Spec : Prop :=
  ∀ n, P12731554708336446645.a n = A078711 (n + 1)

end A078711

/-! ## A078711.P2109147285949189025

`(A100833(n+1)-1)%3+1`
-/

namespace A078711.P2109147285949189025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A100833 (n + 1) - 1) 3 + 1

end

end A078711.P2109147285949189025

namespace A078711

/-- `(A100833(n+1)-1)%3+1` -/
def P2109147285949189025.Spec : Prop :=
  ∀ n, P2109147285949189025.a n = A078711 (n + 1)

end A078711

/-! ## A078711.P187961924881891490

`A017293(val(∑[gcd(3, n+1)+1], 2))%3+1`
-/

namespace A078711.P187961924881891490
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd 3 (n + 1) + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A017293 (SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f1 j) 2)) 3 + 1

end

end A078711.P187961924881891490

namespace A078711

/-- `A017293(val(∑[gcd(3, n+1)+1], 2))%3+1` -/
def P187961924881891490.Spec : Prop :=
  ∀ n, P187961924881891490.a n = A078711 (n + 1)

end A078711

/-! ## A078711.P2594690816844455895

`A078734(2*n+1)*A078734(A004773(n+1))`
-/

namespace A078711.P2594690816844455895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078734 (2 * n + 1) * A078734 (A004773 (n + 1)).toNat

end

end A078711.P2594690816844455895

namespace A078711

/-- `A078734(2*n+1)*A078734(A004773(n+1))` -/
def P2594690816844455895.Spec : Prop :=
  ∀ n, P2594690816844455895.a n = A078711 (n + 1)

end A078711

/-! ## A078711.P8128735792548502325

`A191255(A047464(n+2))`
-/

namespace A078711.P8128735792548502325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (A047464 (n + 2)).toNat

end

end A078711.P8128735792548502325

namespace A078711

/-- `A191255(A047464(n+2))` -/
def P8128735792548502325.Spec : Prop :=
  ∀ n, P8128735792548502325.a n = A078711 (n + 1)

end A078711

/-!
# A078712: Series expansion of (-3 - 2*x)/(1 + x - x^3) in powers of x.

The programs for A078712, the canonical program `A078712.P12805588641227863902` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078712 has offset 0).

The definition of A078712 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078712.P12805588641227863902

`a(n-3)-a(n-1)` with `a(0)=-3, a(1)=1, a(2)=-1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078712

/-- `a(n-3)-a(n-1)` -/
def P12805588641227863902.Spec : Prop :=
  ∀ n, P12805588641227863902.a n = A078712 n

theorem P12805588641227863902.correct : P12805588641227863902.Spec := by
  intro n
  simp only [A078712]

end A078712

/-! ## A078712.P15765242949356791424

`A001945(n)-A001608(n)`
-/

namespace A078712.P15765242949356791424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 n - A001608 n

end

end A078712.P15765242949356791424

namespace A078712

/-- `A001945(n)-A001608(n)` -/
def P15765242949356791424.Spec : Prop :=
  ∀ n, P15765242949356791424.a n = A078712 n

end A078712

/-! ## A078712.P12773394297645087056

`ogf((3+2x)/(-1-x+x^3))`
-/

namespace A078712.P12773394297645087056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [-3, -2] [1, 1, 0, -1] n

end

end A078712.P12773394297645087056

namespace A078712

/-- `ogf((3+2x)/(-1-x+x^3))` -/
def P12773394297645087056.Spec : Prop :=
  ∀ n, P12773394297645087056.a n = A078712 n

end A078712

/-! ## A078712.P16934316034116286724

`A104769(n+1)-2*A176971(n)`
-/

namespace A078712.P16934316034116286724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104769 (n + 1) - 2 * A176971 n

end

end A078712.P16934316034116286724

namespace A078712

/-- `A104769(n+1)-2*A176971(n)` -/
def P16934316034116286724.Spec : Prop :=
  ∀ n, P16934316034116286724.a n = A078712 n

end A078712

/-! ## A078712.P557362634383139118

`∑[2*A247917(n+1)]-A247917(n)`
-/

namespace A078712.P557362634383139118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A247917 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A247917 n

end

end A078712.P557362634383139118

namespace A078712

/-- `∑[2*A247917(n+1)]-A247917(n)` -/
def P557362634383139118.Spec : Prop :=
  ∀ n, P557362634383139118.a n = A078712 n

end A078712

/-! ## A078712.P15815419566400796566

`∑[A176971(n+1)+A176971(n+12)]`
-/

namespace A078712.P15815419566400796566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176971 (n + 1) + A176971 (n + 12)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078712.P15815419566400796566

namespace A078712

/-- `∑[A176971(n+1)+A176971(n+12)]` -/
def P15815419566400796566.Spec : Prop :=
  ∀ n, P15815419566400796566.a n = A078712 n

end A078712

/-! ## A078712.P310408407804742684

`∑[A247917(n+1)+A104771(n+1)]`
-/

namespace A078712.P310408407804742684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247917 (n + 1) + A104771 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078712.P310408407804742684

namespace A078712

/-- `∑[A247917(n+1)+A104771(n+1)]` -/
def P310408407804742684.Spec : Prop :=
  ∀ n, P310408407804742684.a n = A078712 n

end A078712

/-! ## A078712.P15265413471086722097

`A001945(n+1)+A001945(n+2)-A001945(n+4)`
-/

namespace A078712.P15265413471086722097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001945 (n + 1) + (A001945 (n + 2) - A001945 (n + 4))

end

end A078712.P15265413471086722097

namespace A078712

/-- `A001945(n+1)+A001945(n+2)-A001945(n+4)` -/
def P15265413471086722097.Spec : Prop :=
  ∀ n, P15265413471086722097.a n = A078712 n

end A078712

/-!
# A078713: Sum of squares of the distances between successive divisors of n.

The programs for A078713, there is no canonical definition to state claims against.
-/

/-! ## A078713.P5685654164258579547

`A289506(A328023(n+1))`
-/

namespace A078713.P5685654164258579547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289506 (A328023 (n + 1)).toNat

end

end A078713.P5685654164258579547

/-! ## A078713.P5763694898330171354

`A122777(A096852(3*n+2))+A029939(n+1)`
-/

namespace A078713.P5763694898330171354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122777 (A096852 (3 * n + 2)).toNat + A029939 (n + 1)

end

end A078713.P5763694898330171354

/-! ## A078713.P9301568976282814670

`∑{d}[A032559(n+1), A300721(#²)]`
-/

namespace A078713.P9301568976282814670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032559 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A300721 (d ^ 2)

end

end A078713.P9301568976282814670

/-! ## A078713.P14930325546814882075

`A033999(A317052(n))+A029939(n+1)`
-/

namespace A078713.P14930325546814882075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 (A317052 n).toNat + A029939 (n + 1)

end

end A078713.P14930325546814882075

/-! ## A078713.P7419573253231668311

`xor(A029939(n+1), A037227(A125670(n+5)))`
-/

namespace A078713.P7419573253231668311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A029939 (n + 1)) (A037227 (A125670 (n + 5)).toNat)

end

end A078713.P7419573253231668311

/-!
# A078714: a(n) = smallest number m which can be obtained in n ways by subtracting twice a triangular number from a perfect square.

The programs for A078714, there is no canonical definition to state claims against.
-/

/-! ## A078714.P15801066375969871439

`(A204086(n+1)+1)/4`
-/

namespace A078714.P15801066375969871439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A204086 (n + 1) + 1 : ℚ) / 4

end

end A078714.P15801066375969871439

/-! ## A078714.P10017173235255660063

`ceil(A204086(n+1)/4)`
-/

namespace A078714.P10017173235255660063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A204086 (n + 1) : ℚ) / 4⌉

end

end A078714.P10017173235255660063

/-! ## A078714.P2477108669066037680

`A008621(A204086(n+1))`
-/

namespace A078714.P2477108669066037680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A204086 (n + 1)).toNat

end

end A078714.P2477108669066037680

/-!
# A078715: Palindromic Roman numerals.

The programs for A078715, there is no canonical definition to state claims against.
-/

/-! ## A078715.P9572190439849296824

`A093703(A028841(n+1))`
-/

namespace A078715.P9572190439849296824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093703 (A028841 (n + 1)).toNat

end

end A078715.P9572190439849296824

/-! ## A078715.P1145912893149008234

`∪[A215121(n+1), A093785(n+3)]`
-/

namespace A078715.P1145912893149008234
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215121 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093785 (n + 3)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078715.P1145912893149008234

/-! ## A078715.P6195006560689585926

`∪[A093785(n+3), A215121(A199343(n))]`
-/

namespace A078715.P6195006560689585926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093785 (n + 3)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215121 (A199343 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078715.P6195006560689585926

/-! ## A078715.P9824977542158737233

`∪[A166874(n+1), A093785(A199343(n+3))]`
-/

namespace A078715.P9824977542158737233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166874 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093785 (A199343 (n + 3)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078715.P9824977542158737233

/-! ## A078715.P280669819129886566

`record[A166874(n+1)%A380821(n)]`
-/

namespace A078715.P280669819129886566
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A166874 (n + 1)) (A380821 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078715.P280669819129886566

/-!
# A078716: Sequence has period 9 and differences between successive terms are 4, -3, 4, -3, 4, -3, 4, -3, -4.

The programs for A078716, the canonical program `A078716.P6605423866706833571` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078716 has offset 1).

The definition of A078716 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078716.P6605423866706833571

`or(1, 5*n%9)%9`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078716

/-- `or(1, 5*n%9)%9` -/
def P6605423866706833571.Spec : Prop :=
  ∀ n, (P6605423866706833571.a n : ℤ) = A078716 (n + 1)

theorem P6605423866706833571.correct : P6605423866706833571.Spec := by
  intro n
  simp only [A078716, Nat.add_sub_cancel]

end A078716

/-!
# A078717: Number of n-step self-avoiding walks on cubic lattice with first step specified.

The programs for A078717, there is no canonical definition to state claims against.
-/

/-! ## A078717.P1194200541634617456

`A001412(n+1)/6`
-/

namespace A078717.P1194200541634617456
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001412 (n + 1) : ℚ) / 6

end

end A078717.P1194200541634617456

/-! ## A078717.P11594995037978509706

`Δ[∑[A001412(n)]/6]`
-/

namespace A078717.P11594995037978509706
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001412 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078717.P11594995037978509706

/-! ## A078717.P9873081128080066586

`record[A001412(A028242(n))/6]`
-/

namespace A078717.P9873081128080066586
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001412 (A028242 n).toNat : ℚ) / 6

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078717.P9873081128080066586

/-! ## A078717.P8095989577420912557

`record[A001412(A123108(n))/2]/3`
-/

namespace A078717.P8095989577420912557
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001412 (A123108 n).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) / 3

end

end A078717.P8095989577420912557

/-! ## A078717.P16684890525199177765

`A002902(n+1)/3`
-/

namespace A078717.P16684890525199177765
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002902 (n + 1) : ℚ) / 3

end

end A078717.P16684890525199177765

/-!
# A078718: a(n) = (-1)^n*(2*n - 1)*CatalanNumber(n - 2) for n >= 2, a(n) = n for n = 0, 1.

The programs for A078718, the canonical program `A078718.P4035967656700466532` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078718 has offset 0).

The definition of A078718 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 170 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078718.P4035967656700466532

`comp[2*(n+1)]*A168491(floor(n-atan(n)))`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078718

/-- `comp[2*(n+1)]*A168491(floor(n-atan(n)))` -/
def P4035967656700466532.Spec : Prop :=
  ∀ n, P4035967656700466532.a n = A078718 n

theorem P4035967656700466532.correct : P4035967656700466532.Spec := by
  intro n
  simp only [A078718]

end A078718

/-! ## A078718.P3645919461087702628

`A004273(n)*A168491(A289207(n))`
-/

namespace A078718.P3645919461087702628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004273 n * A168491 (A289207 n).toNat

end

end A078718.P3645919461087702628

namespace A078718

/-- `A004273(n)*A168491(A289207(n))` -/
def P3645919461087702628.Spec : Prop :=
  ∀ n, P3645919461087702628.a n = A078718 n

end A078718

/-! ## A078718.P12881241433830171218

`A168491(A289207(n))*A289207(2*n+1)`
-/

namespace A078718.P12881241433830171218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168491 (A289207 n).toNat * A289207 (2 * n + 1)

end

end A078718.P12881241433830171218

namespace A078718

/-- `A168491(A289207(n))*A289207(2*n+1)` -/
def P12881241433830171218.Spec : Prop :=
  ∀ n, P12881241433830171218.a n = A078718 n

end A078718

/-! ## A078718.P6413324493717823052

`(A005843(n)-A057427(n))*A168491(A289207(n))`
-/

namespace A078718.P6413324493717823052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A005843 n - A057427 n) * A168491 (A289207 n).toNat

end

end A078718.P6413324493717823052

namespace A078718

/-- `(A005843(n)-A057427(n))*A168491(A289207(n))` -/
def P6413324493717823052.Spec : Prop :=
  ∀ n, P6413324493717823052.a n = A078718 n

end A078718

/-!
# A078719: Number of odd terms among n, f(n), f(f(n)), ...., 1 for the Collatz function (that is, until reaching "1" for the first time), or -1 if 1 is never reached.

The programs for A078719, there is no canonical definition to state claims against.
-/

/-! ## A078719.P10538165477404164895

`A286380(n+1)+A000035(n+1)`
-/

namespace A078719.P10538165477404164895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) + A000035 (n + 1)

end

end A078719.P10538165477404164895

/-! ## A078719.P16671725917933779846

`A258145(A003602(n+1)-1)`
-/

namespace A078719.P16671725917933779846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258145 (A003602 (n + 1) - 1).toNat

end

end A078719.P16671725917933779846

/-! ## A078719.P15192385063512457836

`A006667(n+1)+1`
-/

namespace A078719.P15192385063512457836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006667 (n + 1) + 1

end

end A078719.P15192385063512457836

/-! ## A078719.P15383460825391649748

`floor(A220182(n+1)/2)+1`
-/

namespace A078719.P15383460825391649748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A220182 (n + 1) : ℚ) / 2⌋ + 1

end

end A078719.P15383460825391649748

/-! ## A078719.P6938192065857993594

`A008619(A220182(n+1))`
-/

namespace A078719.P6938192065857993594
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A220182 (n + 1)).toNat

end

end A078719.P6938192065857993594

/-! ## A078719.P4636109790233408968

`A075680(A025480(n)+1)+1`
-/

namespace A078719.P4636109790233408968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075680 (A025480 n + 1).toNat + 1

end

end A078719.P4636109790233408968

/-! ## A078719.P6691436238336202226

`A286380(A000265(n+1))+1`
-/

namespace A078719.P6691436238336202226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (A000265 (n + 1)).toNat + 1

end

end A078719.P6691436238336202226

/-! ## A078719.P13897305837826459463

`A110654(A220182(n+1)+1)`
-/

namespace A078719.P13897305837826459463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110654 (A220182 (n + 1) + 1).toNat

end

end A078719.P13897305837826459463

/-! ## A078719.P11280668579779476431

`A286380(n+1)+A059841(n)`
-/

namespace A078719.P11280668579779476431
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286380 (n + 1) + A059841 n

end

end A078719.P11280668579779476431

/-! ## A078719.P8721828150430921137

`A002265(2*A220182(n+1))+1`
-/

namespace A078719.P8721828150430921137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002265 (2 * A220182 (n + 1)).toNat + 1

end

end A078719.P8721828150430921137

/-! ## A078719.P2488245096338950148

`A008908(n+1)-A006666(n+1)`
-/

namespace A078719.P2488245096338950148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) - A006666 (n + 1)

end

end A078719.P2488245096338950148

/-! ## A078719.P14024113353932389249

`A064433(n+2)-A220071(n+1)`
-/

namespace A078719.P14024113353932389249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064433 (n + 2) - A220071 (n + 1)

end

end A078719.P14024113353932389249

/-! ## A078719.P12701137284951769932

`A006577(n+1)+1-A006666(n+1)`
-/

namespace A078719.P12701137284951769932
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 (n + 1) + (1 - A006666 (n + 1))

end

end A078719.P12701137284951769932

/-! ## A078719.P2169882539743910124

`A006666(n+1)+1-A220071(n+1)`
-/

namespace A078719.P2169882539743910124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006666 (n + 1) + (1 - A220071 (n + 1))

end

end A078719.P2169882539743910124

/-! ## A078719.P13992589968407737081

`A220182(n+1)+1-A286380(n+1)`
-/

namespace A078719.P13992589968407737081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220182 (n + 1) + (1 - A286380 (n + 1))

end

end A078719.P13992589968407737081

/-! ## A078719.P16866232301057633681

`A008908(n+1)+1-A064433(n+2)`
-/

namespace A078719.P16866232301057633681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008908 (n + 1) + 1 - A064433 (n + 2)

end

end A078719.P16866232301057633681

/-! ## A078719.P17364628019877416358

`A351850(n+1)+2-A285098(n+1)`
-/

namespace A078719.P17364628019877416358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351850 (n + 1) + (2 - A285098 (n + 1))

end

end A078719.P17364628019877416358

/-! ## A078719.P383236394370732718

`A006370(A006577(n+1)-A220071(n+1))+1`
-/

namespace A078719.P383236394370732718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006370 (A006577 (n + 1) - A220071 (n + 1)).toNat + 1

end

end A078719.P383236394370732718

/-! ## A078719.P1114654679391177002

`A014682(A006577(n+1)-A220071(n+1))+1`
-/

namespace A078719.P1114654679391177002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (A006577 (n + 1) - A220071 (n + 1)).toNat + 1

end

end A078719.P1114654679391177002

/-!
# A078720: Integer part of the ratio of even to odd terms among n, f(n), f(f(n)), ...., 1 for the Collatz function (that is, until reaching "1" for the first time), or -1 if 1 is never reached.

The programs for A078720, there is no canonical definition to state claims against.
-/

/-! ## A078720.P3750440960025574176

`floor(A006666(n+1)/A078719(n+1))`
-/

namespace A078720.P3750440960025574176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006666 (n + 1) : ℚ) / (A078719 (n + 1) : ℚ)⌋

end

end A078720.P3750440960025574176

/-! ## A078720.P10038356333349033349

`ceil(A220071(n+1)/A078719(n+1))`
-/

namespace A078720.P10038356333349033349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A220071 (n + 1) : ℚ) / (A078719 (n + 1) : ℚ)⌉

end

end A078720.P10038356333349033349

/-! ## A078720.P12550248598226601167

`floor(A006666(n+1)/(A006667(n+1)+1))`
-/

namespace A078720.P12550248598226601167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006666 (n + 1) : ℚ) / (A006667 (n + 1) + 1 : ℚ)⌋

end

end A078720.P12550248598226601167

/-! ## A078720.P8554508482801066350

`floor(A008908(n+1)/A078719(n+1))-1`
-/

namespace A078720.P8554508482801066350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A008908 (n + 1) : ℚ) / (A078719 (n + 1) : ℚ)⌋ - 1

end

end A078720.P8554508482801066350

/-! ## A078720.P6082502189881132929

`ceil(A220071(n+1)/(A006667(n+1)+1))`
-/

namespace A078720.P6082502189881132929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A220071 (n + 1) : ℚ) / (A006667 (n + 1) + 1 : ℚ)⌉

end

end A078720.P6082502189881132929

/-! ## A078720.P1654853165166723534

`floor((A064433(n+2)-1)/A078719(n+1))`
-/

namespace A078720.P1654853165166723534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A064433 (n + 2) - 1 : ℚ) / (A078719 (n + 1) : ℚ)⌋

end

end A078720.P1654853165166723534

/-! ## A078720.P4828905351227282136

`A023443(floor(A008908(n+1)/A078719(n+1)))`
-/

namespace A078720.P4828905351227282136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 ⌊(A008908 (n + 1) : ℚ) / (A078719 (n + 1) : ℚ)⌋.toNat

end

end A078720.P4828905351227282136

/-! ## A078720.P3658495950992094166

`floor(A006666(n+1)/A008619(A220182(n+1)))`
-/

namespace A078720.P3658495950992094166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006666 (n + 1) : ℚ) / (A008619 (A220182 (n + 1)).toNat : ℚ)⌋

end

end A078720.P3658495950992094166

/-! ## A078720.P3559753201576915915

`ceil(A220071(n+1)/A008619(A220182(n+1)))`
-/

namespace A078720.P3559753201576915915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A220071 (n + 1) : ℚ) / (A008619 (A220182 (n + 1)).toNat : ℚ)⌉

end

end A078720.P3559753201576915915

/-! ## A078720.P3191074134454336273

`floor(A006666(n+1)/(A008908(n+1)-A006666(n+1)))`
-/

namespace A078720.P3191074134454336273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006666 (n + 1) : ℚ) / (A008908 (n + 1) - A006666 (n + 1) : ℚ)⌋

end

end A078720.P3191074134454336273

/-! ## A078720.P5349878956175868235

`floor(A006666(n+1)/A286380(2*(n+1)))`
-/

namespace A078720.P5349878956175868235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A006666 (n + 1) : ℚ) / (A286380 (2 * (n + 1)) : ℚ)⌋

end

end A078720.P5349878956175868235

/-!
# A078721: a(n) = prime(n*(n+1)/2 + 1).

The programs for A078721, the canonical program `A078721.P3053392627358656708` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078721 has offset 0).

The definition of A078721 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078721.P3053392627358656708

`A000040(A000124(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A078721

/-- `A000040(A000124(n))` -/
def P3053392627358656708.Spec : Prop :=
  ∀ n, P3053392627358656708.a n = A078721 n

theorem P3053392627358656708.correct : P3053392627358656708.Spec := by
  intro n
  simp only [A078721]

end A078721

/-! ## A078721.P1260323927551154399

`A007504(A000124(n))-A007504(∑[n])`
-/

namespace A078721.P1260323927551154399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000124 n).toNat - A007504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078721.P1260323927551154399

namespace A078721

/-- `A007504(A000124(n))-A007504(∑[n])` -/
def P1260323927551154399.Spec : Prop :=
  ∀ n, P1260323927551154399.a n = A078721 n

end A078721

/-! ## A078721.P4116689791651323844

`A007504(A000217(n)+1)-A007504(∑[n])`
-/

namespace A078721.P4116689791651323844
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A000217 n + 1).toNat - A007504 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078721.P4116689791651323844

namespace A078721

/-- `A007504(A000217(n)+1)-A007504(∑[n])` -/
def P4116689791651323844.Spec : Prop :=
  ∀ n, P4116689791651323844.a n = A078721 n

end A078721

/-! ## A078721.P13179971896996519825

`A247665(A248387(∑[n]+1))`
-/

namespace A078721.P13179971896996519825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (A248387 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A078721.P13179971896996519825

namespace A078721

/-- `A247665(A248387(∑[n]+1))` -/
def P13179971896996519825.Spec : Prop :=
  ∀ n, P13179971896996519825.a n = A078721 n

end A078721

/-! ## A078721.P4778900021039628107

`A008347(A000124(n))+A008347(A000217(n))`
-/

namespace A078721.P4778900021039628107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008347 (A000124 n).toNat + A008347 (A000217 n).toNat

end

end A078721.P4778900021039628107

namespace A078721

/-- `A008347(A000124(n))+A008347(A000217(n))` -/
def P4778900021039628107.Spec : Prop :=
  ∀ n, P4778900021039628107.a n = A078721 n

end A078721

/-! ## A078721.P5434501702150652941

`A001748(∑[n]+1)/3`
-/

namespace A078721.P5434501702150652941
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3

end

end A078721.P5434501702150652941

namespace A078721

/-- `A001748(∑[n]+1)/3` -/
def P5434501702150652941.Spec : Prop :=
  ∀ n, P5434501702150652941.a n = (A078721 n : ℚ)

end A078721

/-! ## A078721.P11161060015878819671

`A001749(∑[n]+1)/4`
-/

namespace A078721.P11161060015878819671
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 4

end

end A078721.P11161060015878819671

namespace A078721

/-- `A001749(∑[n]+1)/4` -/
def P11161060015878819671.Spec : Prop :=
  ∀ n, P11161060015878819671.a n = (A078721 n : ℚ)

end A078721

/-! ## A078721.P2274478130256459701

`ceil(A001748(C(n, 2)+1+n)/3)`
-/

namespace A078721.P2274478130256459701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A001748 (Nat.choose n 2 + 1 + n) : ℚ) / 3⌉

end

end A078721.P2274478130256459701

namespace A078721

/-- `ceil(A001748(C(n, 2)+1+n)/3)` -/
def P2274478130256459701.Spec : Prop :=
  ∀ n, P2274478130256459701.a n = A078721 n

end A078721

/-! ## A078721.P11715887779980480829

`A000040(∑[n]+1)`
-/

namespace A078721.P11715887779980480829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078721.P11715887779980480829

namespace A078721

/-- `A000040(∑[n]+1)` -/
def P11715887779980480829.Spec : Prop :=
  ∀ n, P11715887779980480829.a n = A078721 n

end A078721

/-! ## A078721.P7484299666327674568

`A161847(∑[n]+1)`
-/

namespace A078721.P7484299666327674568
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078721.P7484299666327674568

namespace A078721

/-- `A161847(∑[n]+1)` -/
def P7484299666327674568.Spec : Prop :=
  ∀ n, P7484299666327674568.a n = A078721 n

end A078721

/-! ## A078721.P1004508584634500701

`A383578(∑[n]+1)`
-/

namespace A078721.P1004508584634500701
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078721.P1004508584634500701

namespace A078721

/-- `A383578(∑[n]+1)` -/
def P1004508584634500701.Spec : Prop :=
  ∀ n, P1004508584634500701.a n = A078721 n

end A078721

/-! ## A078721.P9086988753469355192

`A008578(∑[n]+2)`
-/

namespace A078721.P9086988753469355192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078721.P9086988753469355192

namespace A078721

/-- `A008578(∑[n]+2)` -/
def P9086988753469355192.Spec : Prop :=
  ∀ n, P9086988753469355192.a n = A078721 n

end A078721

/-! ## A078721.P14279891837499087171

`A182986(∑[n]+2)`
-/

namespace A078721.P14279891837499087171
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078721.P14279891837499087171

namespace A078721

/-- `A182986(∑[n]+2)` -/
def P14279891837499087171.Spec : Prop :=
  ∀ n, P14279891837499087171.a n = A078721 n

end A078721

/-! ## A078721.P2619432207827006328

`A158611(∑[n]+3)`
-/

namespace A078721.P2619432207827006328
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078721.P2619432207827006328

namespace A078721

/-- `A158611(∑[n]+3)` -/
def P2619432207827006328.Spec : Prop :=
  ∀ n, P2619432207827006328.a n = A078721 n

end A078721

/-! ## A078721.P13380551100559602429

`abs(A273960(∑[n]+1))`
-/

namespace A078721.P13380551100559602429
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (∑ j ∈ Finset.range (n + 1), f1 j + 1)|

end

end A078721.P13380551100559602429

namespace A078721

/-- `abs(A273960(∑[n]+1))` -/
def P13380551100559602429.Spec : Prop :=
  ∀ n, P13380551100559602429.a n = A078721 n

end A078721

/-! ## A078721.P14704235202571770624

`sqrt(A001248(∑[n]+1))`
-/

namespace A078721.P14704235202571770624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℝ)

end

end A078721.P14704235202571770624

namespace A078721

/-- `sqrt(A001248(∑[n]+1))` -/
def P14704235202571770624.Spec : Prop :=
  ∀ n, P14704235202571770624.a n = (A078721 n : ℝ)

end A078721

/-! ## A078721.P6051621545927306125

`A006093(∑[n]+1)+1`
-/

namespace A078721.P6051621545927306125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f1 j + 1) + 1

end

end A078721.P6051621545927306125

namespace A078721

/-- `A006093(∑[n]+1)+1` -/
def P6051621545927306125.Spec : Prop :=
  ∀ n, P6051621545927306125.a n = A078721 n

end A078721

/-! ## A078721.P10958856507451125936

`∏{d}[A000040(C(n+1, 2)+1), #]`
-/

namespace A078721.P10958856507451125936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (n + 1) 2 + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078721.P10958856507451125936

namespace A078721

/-- `∏{d}[A000040(C(n+1, 2)+1), #]` -/
def P10958856507451125936.Spec : Prop :=
  ∀ n, (P10958856507451125936.a n : ℤ) = A078721 n

end A078721

/-! ## A078721.P570087846390315650

`A100484(∑[A028310(n)])/2`
-/

namespace A078721.P570087846390315650
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100484 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A078721.P570087846390315650

namespace A078721

/-- `A100484(∑[A028310(n)])/2` -/
def P570087846390315650.Spec : Prop :=
  ∀ n, P570087846390315650.a n = (A078721 n : ℚ)

end A078721

/-!
# A078722: a(n) = prime(n*(n+1)/2+2).

The programs for A078722, the canonical program `A078722.P14824033831423424767` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078722 has offset 0).

The definition of A078722 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 447 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078722.P14824033831423424767

`A078721(n)+A001223(A000124(n))`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078722

/-- `A078721(n)+A001223(A000124(n))` -/
def P14824033831423424767.Spec : Prop :=
  ∀ n, P14824033831423424767.a n = A078722 n

theorem P14824033831423424767.correct : P14824033831423424767.Spec := by
  intro n
  simp only [A078722]

end A078722

/-! ## A078722.P5006927210555519502

`A247665(A248387(∑[n]+2))`
-/

namespace A078722.P5006927210555519502
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (A248387 (∑ j ∈ Finset.range (n + 1), f1 j + 2)).toNat

end

end A078722.P5006927210555519502

namespace A078722

/-- `A247665(A248387(∑[n]+2))` -/
def P5006927210555519502.Spec : Prop :=
  ∀ n, P5006927210555519502.a n = A078722 n

end A078722

/-! ## A078722.P13299689983477846870

`A055670(∑[n]+2)-1`
-/

namespace A078722.P13299689983477846870
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (∑ j ∈ Finset.range (n + 1), f1 j + 2) - 1

end

end A078722.P13299689983477846870

namespace A078722

/-- `A055670(∑[n]+2)-1` -/
def P13299689983477846870.Spec : Prop :=
  ∀ n, P13299689983477846870.a n = A078722 n

end A078722

/-! ## A078722.P9146866675138871034

`A001748(∑[n]+2)/3`
-/

namespace A078722.P9146866675138871034
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 3

end

end A078722.P9146866675138871034

namespace A078722

/-- `A001748(∑[n]+2)/3` -/
def P9146866675138871034.Spec : Prop :=
  ∀ n, P9146866675138871034.a n = (A078722 n : ℚ)

end A078722

/-! ## A078722.P13736597672735927219

`A001749(∑[n]+2)/4`
-/

namespace A078722.P13736597672735927219
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (∑ j ∈ Finset.range (n + 1), f1 j + 2) : ℚ) / 4

end

end A078722.P13736597672735927219

namespace A078722

/-- `A001749(∑[n]+2)/4` -/
def P13736597672735927219.Spec : Prop :=
  ∀ n, P13736597672735927219.a n = (A078722 n : ℚ)

end A078722

/-! ## A078722.P17352049727142691221

`Δ[A055670(C(n, 2)+2)]+a(n-1)` with `a(0)=3`
-/

namespace A078722.P17352049727142691221
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (Nat.choose n 2 + 2)

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  f1 (n + 1) - f1 n + a (n - 1)

end

end A078722.P17352049727142691221

namespace A078722

/-- `Δ[A055670(C(n, 2)+2)]+a(n-1)` -/
def P17352049727142691221.Spec : Prop :=
  ∀ n, P17352049727142691221.a n = A078722 n

end A078722

/-! ## A078722.P7806760867149754362

`floor(A001748(A000124(n)+1)/3)`
-/

namespace A078722.P7806760867149754362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001748 (A000124 n + 1).toNat : ℚ) / 3⌋

end

end A078722.P7806760867149754362

namespace A078722

/-- `floor(A001748(A000124(n)+1)/3)` -/
def P7806760867149754362.Spec : Prop :=
  ∀ n, P7806760867149754362.a n = A078722 n

end A078722

/-! ## A078722.P6108618103831481245

`A065091(∑[n]+1)`
-/

namespace A078722.P6108618103831481245
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078722.P6108618103831481245

namespace A078722

/-- `A065091(∑[n]+1)` -/
def P6108618103831481245.Spec : Prop :=
  ∀ n, P6108618103831481245.a n = A078722 n

end A078722

/-! ## A078722.P11171846846141717309

`A000040(∑[n]+2)`
-/

namespace A078722.P11171846846141717309
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078722.P11171846846141717309

namespace A078722

/-- `A000040(∑[n]+2)` -/
def P11171846846141717309.Spec : Prop :=
  ∀ n, P11171846846141717309.a n = A078722 n

end A078722

/-! ## A078722.P11896021575059004226

`A006005(∑[n]+2)`
-/

namespace A078722.P11896021575059004226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078722.P11896021575059004226

namespace A078722

/-- `A006005(∑[n]+2)` -/
def P11896021575059004226.Spec : Prop :=
  ∀ n, P11896021575059004226.a n = A078722 n

end A078722

/-! ## A078722.P18341793642087345558

`A008578(∑[n]+3)`
-/

namespace A078722.P18341793642087345558
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078722.P18341793642087345558

namespace A078722

/-- `A008578(∑[n]+3)` -/
def P18341793642087345558.Spec : Prop :=
  ∀ n, P18341793642087345558.a n = A078722 n

end A078722

/-! ## A078722.P16925437221455698576

`A182986(∑[n]+3)`
-/

namespace A078722.P16925437221455698576
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078722.P16925437221455698576

namespace A078722

/-- `A182986(∑[n]+3)` -/
def P16925437221455698576.Spec : Prop :=
  ∀ n, P16925437221455698576.a n = A078722 n

end A078722

/-! ## A078722.P1817043202355278177

`A158611(∑[n]+4)`
-/

namespace A078722.P1817043202355278177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A078722.P1817043202355278177

namespace A078722

/-- `A158611(∑[n]+4)` -/
def P1817043202355278177.Spec : Prop :=
  ∀ n, P1817043202355278177.a n = A078722 n

end A078722

/-! ## A078722.P8217522307262374764

`abs(A273960(∑[n]+2))`
-/

namespace A078722.P8217522307262374764
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (∑ j ∈ Finset.range (n + 1), f1 j + 2)|

end

end A078722.P8217522307262374764

namespace A078722

/-- `abs(A273960(∑[n]+2))` -/
def P8217522307262374764.Spec : Prop :=
  ∀ n, P8217522307262374764.a n = A078722 n

end A078722

/-! ## A078722.P9748051481299831079

`A006093(∑[n]+2)+1`
-/

namespace A078722.P9748051481299831079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f1 j + 2) + 1

end

end A078722.P9748051481299831079

namespace A078722

/-- `A006093(∑[n]+2)+1` -/
def P9748051481299831079.Spec : Prop :=
  ∀ n, P9748051481299831079.a n = A078722 n

end A078722

/-! ## A078722.P12311308119479175191

`A093515(n²+2+n)`
-/

namespace A078722.P12311308119479175191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n ^ 2 + 2 + n)

end

end A078722.P12311308119479175191

namespace A078722

/-- `A093515(n²+2+n)` -/
def P12311308119479175191.Spec : Prop :=
  ∀ n, P12311308119479175191.a n = A078722 n

end A078722

/-! ## A078722.P9127423708594827494

`∑{p}[A000040(C(n+1, 2)+2), #]`
-/

namespace A078722.P9127423708594827494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (Nat.choose (n + 1) 2 + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078722.P9127423708594827494

namespace A078722

/-- `∑{p}[A000040(C(n+1, 2)+2), #]` -/
def P9127423708594827494.Spec : Prop :=
  ∀ n, (P9127423708594827494.a n : ℤ) = A078722 n

end A078722

/-! ## A078722.P15039677514210431635

`∏{p}[A000040(C(n+2, 2)-n+1), #]`
-/

namespace A078722.P15039677514210431635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 ((Nat.choose (n + 2) 2 : ℤ) - (n : ℤ) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078722.P15039677514210431635

namespace A078722

/-- `∏{p}[A000040(C(n+2, 2)-n+1), #]` -/
def P15039677514210431635.Spec : Prop :=
  ∀ n, (P15039677514210431635.a n : ℤ) = A078722 n

end A078722

/-! ## A078722.P13594934646827207170

`∑{p}[A000040(A000124(n)+1), #]`
-/

namespace A078722.P13594934646827207170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000124 n + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078722.P13594934646827207170

namespace A078722

/-- `∑{p}[A000040(A000124(n)+1), #]` -/
def P13594934646827207170.Spec : Prop :=
  ∀ n, (P13594934646827207170.a n : ℤ) = A078722 n

end A078722

/-! ## A078722.P17830122287128589163

`∑{p}[A000040(A000217(n)+2), #]`
-/

namespace A078722.P17830122287128589163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A000217 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078722.P17830122287128589163

namespace A078722

/-- `∑{p}[A000040(A000217(n)+2), #]` -/
def P17830122287128589163.Spec : Prop :=
  ∀ n, (P17830122287128589163.a n : ℤ) = A078722 n

end A078722

/-!
# A078723: a(n) = prime(n*(n+1)/2 + n).

The programs for A078723, the canonical program `A078723.P8853180363963204527` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078723 has offset 1).

The definition of A078723 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078723.P8853180363963204527

`A000040(A000096(n+1))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A078723

/-- `A000040(A000096(n+1))` -/
def P8853180363963204527.Spec : Prop :=
  ∀ n, P8853180363963204527.a n = A078723 (n + 1)

theorem P8853180363963204527.correct : P8853180363963204527.Spec := by
  intro n
  simp only [A078723, Nat.add_sub_cancel]

end A078723

/-! ## A078723.P16920017015359992631

`A247665(A248387(∑[n+2]))`
-/

namespace A078723.P16920017015359992631
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (A248387 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A078723.P16920017015359992631

namespace A078723

/-- `A247665(A248387(∑[n+2]))` -/
def P16920017015359992631.Spec : Prop :=
  ∀ n, P16920017015359992631.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P7207632023365085618

`A055670(∑[n+2])-1`
-/

namespace A078723.P7207632023365085618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (∑ j ∈ Finset.range (n + 1), f1 j) - 1

end

end A078723.P7207632023365085618

namespace A078723

/-- `A055670(∑[n+2])-1` -/
def P7207632023365085618.Spec : Prop :=
  ∀ n, P7207632023365085618.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P9292486051311796722

`A001748(∑[n+2])/3`
-/

namespace A078723.P9292486051311796722
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 3

end

end A078723.P9292486051311796722

namespace A078723

/-- `A001748(∑[n+2])/3` -/
def P9292486051311796722.Spec : Prop :=
  ∀ n, P9292486051311796722.a n = (A078723 (n + 1) : ℚ)

end A078723

/-! ## A078723.P7700371754525997945

`A001749(∑[n+2])/4`
-/

namespace A078723.P7700371754525997945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (∑ j ∈ Finset.range (n + 1), f1 j) : ℚ) / 4

end

end A078723.P7700371754525997945

namespace A078723

/-- `A001749(∑[n+2])/4` -/
def P7700371754525997945.Spec : Prop :=
  ∀ n, P7700371754525997945.a n = (A078723 (n + 1) : ℚ)

end A078723

/-! ## A078723.P1871462672192651800

`A091265(∑[n+1]+2)`
-/

namespace A078723.P1871462672192651800
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091265 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078723.P1871462672192651800

namespace A078723

/-- `A091265(∑[n+1]+2)` -/
def P1871462672192651800.Spec : Prop :=
  ∀ n, P1871462672192651800.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P3730853687873986229

`A000040(∑[n+2])`
-/

namespace A078723.P3730853687873986229
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078723.P3730853687873986229

namespace A078723

/-- `A000040(∑[n+2])` -/
def P3730853687873986229.Spec : Prop :=
  ∀ n, P3730853687873986229.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P7540531859145174483

`A006005(∑[n+2])`
-/

namespace A078723.P7540531859145174483
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078723.P7540531859145174483

namespace A078723

/-- `A006005(∑[n+2])` -/
def P7540531859145174483.Spec : Prop :=
  ∀ n, P7540531859145174483.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P2966353096029356646

`A161847(∑[n+2])`
-/

namespace A078723.P2966353096029356646
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078723.P2966353096029356646

namespace A078723

/-- `A161847(∑[n+2])` -/
def P2966353096029356646.Spec : Prop :=
  ∀ n, P2966353096029356646.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P8293919795855249706

`A318871(∑[n+2])`
-/

namespace A078723.P8293919795855249706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078723.P8293919795855249706

namespace A078723

/-- `A318871(∑[n+2])` -/
def P8293919795855249706.Spec : Prop :=
  ∀ n, P8293919795855249706.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P17337129099988067467

`A383578(∑[n+2])`
-/

namespace A078723.P17337129099988067467
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078723.P17337129099988067467

namespace A078723

/-- `A383578(∑[n+2])` -/
def P17337129099988067467.Spec : Prop :=
  ∀ n, P17337129099988067467.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P5591446415280476436

`A008578(C(n+3, 2))`
-/

namespace A078723.P5591446415280476436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (Nat.choose (n + 3) 2)

end

end A078723.P5591446415280476436

namespace A078723

/-- `A008578(C(n+3, 2))` -/
def P5591446415280476436.Spec : Prop :=
  ∀ n, P5591446415280476436.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P5349665243859437044

`A182986(C(n+3, 2))`
-/

namespace A078723.P5349665243859437044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (Nat.choose (n + 3) 2)

end

end A078723.P5349665243859437044

namespace A078723

/-- `A182986(C(n+3, 2))` -/
def P5349665243859437044.Spec : Prop :=
  ∀ n, P5349665243859437044.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P17176773237135707776

`abs(A073579(∑[n+2]))`
-/

namespace A078723.P17176773237135707776
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A073579 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A078723.P17176773237135707776

namespace A078723

/-- `abs(A073579(∑[n+2]))` -/
def P17176773237135707776.Spec : Prop :=
  ∀ n, P17176773237135707776.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P16038040668060193663

`abs(A273960(∑[n+2]))`
-/

namespace A078723.P16038040668060193663
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A273960 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A078723.P16038040668060193663

namespace A078723

/-- `abs(A273960(∑[n+2]))` -/
def P16038040668060193663.Spec : Prop :=
  ∀ n, P16038040668060193663.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P12975399329547597577

`sqrt(A001248(∑[n+2]))`
-/

namespace A078723.P12975399329547597577
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A001248 (∑ j ∈ Finset.range (n + 1), f1 j) : ℝ)

end

end A078723.P12975399329547597577

namespace A078723

/-- `sqrt(A001248(∑[n+2]))` -/
def P12975399329547597577.Spec : Prop :=
  ∀ n, P12975399329547597577.a n = (A078723 (n + 1) : ℝ)

end A078723

/-! ## A078723.P9363209509531556388

`p?[A008578(∑[n+1])]`
-/

namespace A078723.P9363209509531556388
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078723.P9363209509531556388

namespace A078723

/-- `p?[A008578(∑[n+1])]` -/
def P9363209509531556388.Spec : Prop :=
  ∀ n, P9363209509531556388.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P13441553285870525025

`p?[A182986(∑[n+1])]`
-/

namespace A078723.P13441553285870525025
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (∑ j ∈ Finset.range (n + 1), f2 j)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078723.P13441553285870525025

namespace A078723

/-- `p?[A182986(∑[n+1])]` -/
def P13441553285870525025.Spec : Prop :=
  ∀ n, P13441553285870525025.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P16406199379202575414

`A006093(∑[n+2])+1`
-/

namespace A078723.P16406199379202575414
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006093 (∑ j ∈ Finset.range (n + 1), f1 j) + 1

end

end A078723.P16406199379202575414

namespace A078723

/-- `A006093(∑[n+2])+1` -/
def P16406199379202575414.Spec : Prop :=
  ∀ n, P16406199379202575414.a n = A078723 (n + 1)

end A078723

/-! ## A078723.P8153965078292841142

`A008578(∑[n+2]+1)`
-/

namespace A078723.P8153965078292841142
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078723.P8153965078292841142

namespace A078723

/-- `A008578(∑[n+2]+1)` -/
def P8153965078292841142.Spec : Prop :=
  ∀ n, P8153965078292841142.a n = A078723 (n + 1)

end A078723

/-!
# A078724: a(n) = prime(n*(n+1)/2+3).

The programs for A078724, there is no canonical definition to state claims against.
-/

/-! ## A078724.P12964012503204712745

`A247665(A248387(∑[abs(1-n)+1]+1))`
-/

namespace A078724.P12964012503204712745
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (n : ℤ)| + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (A248387 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat).toNat

end

end A078724.P12964012503204712745

/-! ## A078724.P7532870678713318819

`A055670(∑[n]+3)-1`
-/

namespace A078724.P7532870678713318819
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (∑ j ∈ Finset.range (n + 1), f1 j + 3) - 1

end

end A078724.P7532870678713318819

/-! ## A078724.P18031960880709502439

`A001748(∑[n]+3)/3`
-/

namespace A078724.P18031960880709502439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℚ) / 3

end

end A078724.P18031960880709502439

/-! ## A078724.P14614687394264798211

`A001749(∑[n]+3)/4`
-/

namespace A078724.P14614687394264798211
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (∑ j ∈ Finset.range (n + 1), f1 j + 3) : ℚ) / 4

end

end A078724.P14614687394264798211

/-! ## A078724.P8046472536578649663

`floor(A001748(A000124(n)+2)/3)`
-/

namespace A078724.P8046472536578649663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001748 (A000124 n + 2).toNat : ℚ) / 3⌋

end

end A078724.P8046472536578649663

/-! ## A078724.P146083310880796212

`floor(A001748(A000217(n)+3)/3)`
-/

namespace A078724.P146083310880796212
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A001748 (A000217 n + 3).toNat : ℚ) / 3⌋

end

end A078724.P146083310880796212

/-! ## A078724.P11759670989548950511

`A156037(∑[n]+3)+1`
-/

namespace A078724.P11759670989548950511
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (∑ j ∈ Finset.range (n + 1), f1 j + 3) + 1

end

end A078724.P11759670989548950511

/-! ## A078724.P15890800828345832372

`A215848(∑[n]+1)`
-/

namespace A078724.P15890800828345832372
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078724.P15890800828345832372

/-! ## A078724.P2680541560667661446

`A045344(∑[n]+2)`
-/

namespace A078724.P2680541560667661446
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078724.P2680541560667661446

/-! ## A078724.P1707765424638846252

`A065091(∑[n]+2)`
-/

namespace A078724.P1707765424638846252
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078724.P1707765424638846252

/-! ## A078724.P636069001522523045

`A140475(∑[n]+2)`
-/

namespace A078724.P636069001522523045
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078724.P636069001522523045

/-! ## A078724.P1123001589047076979

`A000040(∑[n]+3)`
-/

namespace A078724.P1123001589047076979
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078724.P1123001589047076979

/-! ## A078724.P10306722958126256954

`A006005(∑[n]+3)`
-/

namespace A078724.P10306722958126256954
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078724.P10306722958126256954

/-! ## A078724.P15710291445838562852

`A171577(∑[n]+3)`
-/

namespace A078724.P15710291445838562852
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078724.P15710291445838562852

/-! ## A078724.P18253231596700432192

`A318871(∑[n]+3)`
-/

namespace A078724.P18253231596700432192
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078724.P18253231596700432192

/-! ## A078724.P11476637513829000594

`A008578(∑[n]+4)`
-/

namespace A078724.P11476637513829000594
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A078724.P11476637513829000594

/-! ## A078724.P599546623552081876

`A171525(∑[n]+4)`
-/

namespace A078724.P599546623552081876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171525 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A078724.P599546623552081876

/-! ## A078724.P11429415908272339458

`A175787(∑[n]+4)`
-/

namespace A078724.P11429415908272339458
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A078724.P11429415908272339458

/-! ## A078724.P8696230982515555958

`A182986(∑[n]+4)`
-/

namespace A078724.P8696230982515555958
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A078724.P8696230982515555958

/-! ## A078724.P9373213177226830913

`A046022(∑[n]+5)`
-/

namespace A078724.P9373213177226830913
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (∑ j ∈ Finset.range (n + 1), f1 j + 5)

end

end A078724.P9373213177226830913

/-!
# A078725: a(n) = prime(n*(n+1)/2+4).

The programs for A078725, the canonical program `A078725.P18057076827891889400` is in `Seq.B002.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078725 has offset 0).

The definition of A078725 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 200 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078725.P14331616880161751057

`A055670(∑[n]+4)-1`
-/

namespace A078725.P14331616880161751057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055670 (∑ j ∈ Finset.range (n + 1), f1 j + 4) - 1

end

end A078725.P14331616880161751057

namespace A078725

/-- `A055670(∑[n]+4)-1` -/
def P14331616880161751057.Spec : Prop :=
  ∀ n, P14331616880161751057.a n = A078725 n

end A078725

/-! ## A078725.P17837029296066576644

`A001748(∑[n]+4)/3`
-/

namespace A078725.P17837029296066576644
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j + 4) : ℚ) / 3

end

end A078725.P17837029296066576644

namespace A078725

/-- `A001748(∑[n]+4)/3` -/
def P17837029296066576644.Spec : Prop :=
  ∀ n, P17837029296066576644.a n = (A078725 n : ℚ)

end A078725

/-! ## A078725.P7379066763327271096

`A001749(A145018(n+1))/4`
-/

namespace A078725.P7379066763327271096
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A145018 (n + 1)).toNat : ℚ) / 4

end

end A078725.P7379066763327271096

namespace A078725

/-- `A001749(A145018(n+1))/4` -/
def P7379066763327271096.Spec : Prop :=
  ∀ n, P7379066763327271096.a n = (A078725 n : ℚ)

end A078725

/-! ## A078725.P1938015372749996816

`A001749(A000217(n)+4)/4`
-/

namespace A078725.P1938015372749996816
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001749 (A000217 n + 4).toNat : ℚ) / 4

end

end A078725.P1938015372749996816

namespace A078725

/-- `A001749(A000217(n)+4)/4` -/
def P1938015372749996816.Spec : Prop :=
  ∀ n, P1938015372749996816.a n = (A078725 n : ℚ)

end A078725

/-! ## A078725.P18057076827891889400

`floor(A001748(A000217(n)+4)/3)`

The canonical program, it is in `Seq.B002.C001`.
-/

namespace A078725

/-- `floor(A001748(A000217(n)+4)/3)` -/
def P18057076827891889400.Spec : Prop :=
  ∀ n, P18057076827891889400.a n = A078725 n

theorem P18057076827891889400.correct : P18057076827891889400.Spec := by
  intro n
  simp only [A078725]

end A078725

/-! ## A078725.P16363878094081422591

`A062157(A318668(n+1)+1)+A055670(A000217(n)+4)`
-/

namespace A078725.P16363878094081422591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A318668 (n + 1) + 1).toNat + A055670 (A000217 n + 4).toNat

end

end A078725.P16363878094081422591

namespace A078725

/-- `A062157(A318668(n+1)+1)+A055670(A000217(n)+4)` -/
def P16363878094081422591.Spec : Prop :=
  ∀ n, P16363878094081422591.a n = A078725 n

end A078725

/-! ## A078725.P11746033048377073087

`A062157(A000040(3*n+2)+1)+A055670(A000217(n)+4)`
-/

namespace A078725.P11746033048377073087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (A000040 (3 * n + 2) + 1).toNat + A055670 (A000217 n + 4).toNat

end

end A078725.P11746033048377073087

namespace A078725

/-- `A062157(A000040(3*n+2)+1)+A055670(A000217(n)+4)` -/
def P11746033048377073087.Spec : Prop :=
  ∀ n, P11746033048377073087.a n = A078725 n

end A078725

/-! ## A078725.P18349954308069661364

`A156037(∑[n]+4)+1`
-/

namespace A078725.P18349954308069661364
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156037 (∑ j ∈ Finset.range (n + 1), f1 j + 4) + 1

end

end A078725.P18349954308069661364

namespace A078725

/-- `A156037(∑[n]+4)+1` -/
def P18349954308069661364.Spec : Prop :=
  ∀ n, P18349954308069661364.a n = A078725 n

end A078725

/-! ## A078725.P12456599639796278355

`A004139(∑[n]+2)`
-/

namespace A078725.P12456599639796278355
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078725.P12456599639796278355

namespace A078725

/-- `A004139(∑[n]+2)` -/
def P12456599639796278355.Spec : Prop :=
  ∀ n, P12456599639796278355.a n = A078725 n

end A078725

/-! ## A078725.P14857895247319304592

`A215848(∑[n]+2)`
-/

namespace A078725.P14857895247319304592
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078725.P14857895247319304592

namespace A078725

/-- `A215848(∑[n]+2)` -/
def P14857895247319304592.Spec : Prop :=
  ∀ n, P14857895247319304592.a n = A078725 n

end A078725

/-! ## A078725.P363496139563828602

`A045319(∑[n]+3)`
-/

namespace A078725.P363496139563828602
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078725.P363496139563828602

namespace A078725

/-- `A045319(∑[n]+3)` -/
def P363496139563828602.Spec : Prop :=
  ∀ n, P363496139563828602.a n = A078725 n

end A078725

/-! ## A078725.P13793338997502611232

`A045344(∑[n]+3)`
-/

namespace A078725.P13793338997502611232
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078725.P13793338997502611232

namespace A078725

/-- `A045344(∑[n]+3)` -/
def P13793338997502611232.Spec : Prop :=
  ∀ n, P13793338997502611232.a n = A078725 n

end A078725

/-! ## A078725.P8604322314761416903

`A065091(∑[n]+3)`
-/

namespace A078725.P8604322314761416903
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078725.P8604322314761416903

namespace A078725

/-- `A065091(∑[n]+3)` -/
def P8604322314761416903.Spec : Prop :=
  ∀ n, P8604322314761416903.a n = A078725 n

end A078725

/-! ## A078725.P8774284902860568693

`A140475(∑[n]+3)`
-/

namespace A078725.P8774284902860568693
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A078725.P8774284902860568693

namespace A078725

/-- `A140475(∑[n]+3)` -/
def P8774284902860568693.Spec : Prop :=
  ∀ n, P8774284902860568693.a n = A078725 n

end A078725

/-! ## A078725.P2680266917898115259

`A000040(∑[n]+4)`
-/

namespace A078725.P2680266917898115259
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A078725.P2680266917898115259

namespace A078725

/-- `A000040(∑[n]+4)` -/
def P2680266917898115259.Spec : Prop :=
  ∀ n, P2680266917898115259.a n = A078725 n

end A078725

/-! ## A078725.P8921182930092936828

`A006005(∑[n]+4)`
-/

namespace A078725.P8921182930092936828
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A078725.P8921182930092936828

namespace A078725

/-- `A006005(∑[n]+4)` -/
def P8921182930092936828.Spec : Prop :=
  ∀ n, P8921182930092936828.a n = A078725 n

end A078725

/-! ## A078725.P8759438463378924225

`A161847(∑[n]+4)`
-/

namespace A078725.P8759438463378924225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161847 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A078725.P8759438463378924225

namespace A078725

/-- `A161847(∑[n]+4)` -/
def P8759438463378924225.Spec : Prop :=
  ∀ n, P8759438463378924225.a n = A078725 n

end A078725

/-! ## A078725.P686551365742814976

`A171577(∑[n]+4)`
-/

namespace A078725.P686551365742814976
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171577 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A078725.P686551365742814976

namespace A078725

/-- `A171577(∑[n]+4)` -/
def P686551365742814976.Spec : Prop :=
  ∀ n, P686551365742814976.a n = A078725 n

end A078725

/-! ## A078725.P12710047255562396409

`A318871(∑[n]+4)`
-/

namespace A078725.P12710047255562396409
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318871 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A078725.P12710047255562396409

namespace A078725

/-- `A318871(∑[n]+4)` -/
def P12710047255562396409.Spec : Prop :=
  ∀ n, P12710047255562396409.a n = A078725 n

end A078725

/-! ## A078725.P17396053927980708911

`A383578(∑[n]+4)`
-/

namespace A078725.P17396053927980708911
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383578 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A078725.P17396053927980708911

namespace A078725

/-- `A383578(∑[n]+4)` -/
def P17396053927980708911.Spec : Prop :=
  ∀ n, P17396053927980708911.a n = A078725 n

end A078725

/-!
# A078726: Fermat numbers 2^(2^n) + 1 with digits sorted in increasing order and zeros suppressed.

The programs for A078726, there is no canonical definition to state claims against.
-/

/-! ## A078726.P18034251193738287723

`A028909(A084402(n+1)^n)+1`
-/

namespace A078726.P18034251193738287723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028909 (A084402 (n + 1) ^ n).toNat + 1

end

end A078726.P18034251193738287723

/-!
# A078727: Smallest prime a(n) > a(n-1) such that a(1) + ... + a(n) is a Fibonacci number.

The programs for A078727, there is no canonical definition to state claims against.
-/

/-! ## A078727.P13356135564432460025

`Δ[A000045(A078735(n))]`
-/

namespace A078727.P13356135564432460025
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A078735 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078727.P13356135564432460025

/-!
# A078731: Sum of primes between successive pairs of twin primes.

The programs for A078731, there is no canonical definition to state claims against.
-/

/-! ## A078731.P10475332033872467864

`A048614(n+1)+2*A168433(n+1)`
-/

namespace A078731.P10475332033872467864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1) + 2 * A168433 (n + 1)

end

end A078731.P10475332033872467864

/-! ## A078731.P8895511165394488738

`Δ[A153478(A162309(n+1))]`
-/

namespace A078731.P8895511165394488738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153478 (A162309 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078731.P8895511165394488738

/-! ## A078731.P12740349410140125795

`Δ[A162309(n+1)]+2*A168433(n+1)`
-/

namespace A078731.P12740349410140125795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2 * A168433 (n + 1)

end

end A078731.P12740349410140125795

/-! ## A078731.P16900899868386802709

`A048614(n+1)+A005843(A168433(n+1))`
-/

namespace A078731.P16900899868386802709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048614 (n + 1) + A005843 (A168433 (n + 1)).toNat

end

end A078731.P16900899868386802709

/-! ## A078731.P7412573679672481734

`A005843(A168433(n+1))+Δ[A162309(n+1)]`
-/

namespace A078731.P7412573679672481734
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162309 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (A168433 (n + 1)).toNat + (f1 (n + 1) - f1 n)

end

end A078731.P7412573679672481734

/-!
# A078733: Numbers k such that the b0(k)^2=b1(k) where b1(k) denotes the number of 1's in binary expansion of k, b0(k) the number of 0's.

The programs for A078733, the canonical program `A078733.P15106340013089562125` is in `Seq.B003.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078733 has offset 1).

The definition of A078733 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 176 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078733.P13647845699032845445

`eq[A023416(n), A099245(n)]`
-/

namespace A078733.P13647845699032845445
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099245 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P13647845699032845445

namespace A078733

/-- `eq[A023416(n), A099245(n)]` -/
def P13647845699032845445.Spec : Prop :=
  ∀ n, (P13647845699032845445.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P15106340013089562125

`eq[A023416(n)², A000120(n)]`

The canonical program, it is in `Seq.B003.C001`.
-/

namespace A078733

/-- `eq[A023416(n)², A000120(n)]` -/
def P15106340013089562125.Spec : Prop :=
  ∀ n, (P15106340013089562125.a n : ℤ) = A078733 (n + 1)

theorem P15106340013089562125.correct : P15106340013089562125.Spec := by
  intro n
  simp only [A078733, Nat.add_sub_cancel]

end A078733

/-! ## A078733.P10102683531338871285

`eq[A023416(n)², log2(A001316(n))]`
-/

namespace A078733.P10102683531338871285
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n ^ 2

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001316 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A078733.P10102683531338871285

namespace A078733

/-- `eq[A023416(n)², log2(A001316(n))]` -/
def P10102683531338871285.Spec : Prop :=
  ∀ n, (P10102683531338871285.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P16100350997012456405

`eq[A324467(n)/3, A023416(n)²]`
-/

namespace A078733.P16100350997012456405
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324467 n : ℚ) / 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A078733.P16100350997012456405

namespace A078733

/-- `eq[A324467(n)/3, A023416(n)²]` -/
def P16100350997012456405.Spec : Prop :=
  ∀ n, (P16100350997012456405.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P8249677332408452099

`eq[n, A011371(n)+A023416(n)²]`
-/

namespace A078733.P8249677332408452099
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011371 n + A023416 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078733.P8249677332408452099

namespace A078733

/-- `eq[n, A011371(n)+A023416(n)²]` -/
def P8249677332408452099.Spec : Prop :=
  ∀ n, (P8249677332408452099.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P7007994762217107862

`eq[A023416(n)²+n, A092391(n)]`
-/

namespace A078733.P7007994762217107862
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n ^ 2 + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092391 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P7007994762217107862

namespace A078733

/-- `eq[A023416(n)²+n, A092391(n)]` -/
def P7007994762217107862.Spec : Prop :=
  ∀ n, (P7007994762217107862.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P13393271029285723769

`eq[A023416(n)², A274009(2*n+1)]`
-/

namespace A078733.P13393271029285723769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274009 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P13393271029285723769

namespace A078733

/-- `eq[A023416(n)², A274009(2*n+1)]` -/
def P13393271029285723769.Spec : Prop :=
  ∀ n, (P13393271029285723769.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P17636349941182014405

`eq[A002378(A023416(n)), A070939(n)]`
-/

namespace A078733.P17636349941182014405
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A023416 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P17636349941182014405

namespace A078733

/-- `eq[A002378(A023416(n)), A070939(n)]` -/
def P17636349941182014405.Spec : Prop :=
  ∀ n, (P17636349941182014405.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P15186117413362930805

`eq[A023416(n)², A005811(A006068(n))]`
-/

namespace A078733.P15186117413362930805
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A006068 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P15186117413362930805

namespace A078733

/-- `eq[A023416(n)², A005811(A006068(n))]` -/
def P15186117413362930805.Spec : Prop :=
  ∀ n, (P15186117413362930805.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P2868937454694304122

`eq[A000120(A035327(n))², A000120(n)]`
-/

namespace A078733.P2868937454694304122
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A035327 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P2868937454694304122

namespace A078733

/-- `eq[A000120(A035327(n))², A000120(n)]` -/
def P2868937454694304122.Spec : Prop :=
  ∀ n, (P2868937454694304122.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P7792174275995879993

`eq[A000120(A036044(n))², A000120(n)]`
-/

namespace A078733.P7792174275995879993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A036044 n).toNat ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P7792174275995879993

namespace A078733

/-- `eq[A000120(A036044(n))², A000120(n)]` -/
def P7792174275995879993.Spec : Prop :=
  ∀ n, (P7792174275995879993.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P7593473654601723076

`eq[A023416(n)², A001222(A278222(n))]`
-/

namespace A078733.P7593473654601723076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A278222 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P7593473654601723076

namespace A078733

/-- `eq[A023416(n)², A001222(A278222(n))]` -/
def P7593473654601723076.Spec : Prop :=
  ∀ n, (P7593473654601723076.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P1549381401595772516

`eq[A023416(n)², A005811(A341916(n))]`
-/

namespace A078733.P1549381401595772516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005811 (A341916 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P1549381401595772516

namespace A078733

/-- `eq[A023416(n)², A005811(A341916(n))]` -/
def P1549381401595772516.Spec : Prop :=
  ∀ n, (P1549381401595772516.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P13569930698055324133

`eq[A023416(n)², A002487(A001316(n)-1)]`
-/

namespace A078733.P13569930698055324133
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A001316 n - 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P13569930698055324133

namespace A078733

/-- `eq[A023416(n)², A002487(A001316(n)-1)]` -/
def P13569930698055324133.Spec : Prop :=
  ∀ n, (P13569930698055324133.a n : ℤ) = A078733 (n + 1)

end A078733

/-! ## A078733.P12706580230216721868

`eq[A160385(n)+A160383(n), A023416(n)²]`
-/

namespace A078733.P12706580230216721868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160385 n + A160383 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023416 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078733.P12706580230216721868

namespace A078733

/-- `eq[A160385(n)+A160383(n), A023416(n)²]` -/
def P12706580230216721868.Spec : Prop :=
  ∀ n, (P12706580230216721868.a n : ℤ) = A078733 (n + 1)

end A078733

/-!
# A078734: Start with 1,2, concatenate 2^k previous terms and change last term as follows: 1->2, 2->3, 3->1.

The programs for A078734, the canonical program `A078734.P4094134609094270230` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078734 has offset 1).

The definition of A078734 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078734.P6919175865787520668

`val(n+1, 2)%3+1`
-/

namespace A078734.P6919175865787520668
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2 % 3 + 1

end

end A078734.P6919175865787520668

namespace A078734

/-- `val(n+1, 2)%3+1` -/
def P6919175865787520668.Spec : Prop :=
  ∀ n, (P6919175865787520668.a n : ℤ) = A078734 (n + 1)

end A078734

/-! ## A078734.P7214714798548892879

`1+A096271(n)`
-/

namespace A078734.P7214714798548892879
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + A096271 n

end

end A078734.P7214714798548892879

namespace A078734

/-- `1+A096271(n)` -/
def P7214714798548892879.Spec : Prop :=
  ∀ n, P7214714798548892879.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P7528776290256980903

`A001511(A050985(n+1))`
-/

namespace A078734.P7528776290256980903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A050985 (n + 1)).toNat

end

end A078734.P7528776290256980903

namespace A078734

/-- `A001511(A050985(n+1))` -/
def P7528776290256980903.Spec : Prop :=
  ∀ n, P7528776290256980903.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P4094134609094270230

`1+A010872(A007814(n+1))`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A078734

/-- `1+A010872(A007814(n+1))` -/
def P4094134609094270230.Spec : Prop :=
  ∀ n, P4094134609094270230.a n = A078734 (n + 1)

theorem P4094134609094270230.correct : P4094134609094270230.Spec := by
  intro n
  simp only [A078734, Nat.add_sub_cancel]

end A078734

/-! ## A078734.P5143901695049749346

`log2(1-and(n, n+1)+n)%3+1`
-/

namespace A078734.P5143901695049749346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.roundAway (Real.logb 2 (1 - (Nat.land n (n + 1) : ℤ) + (n : ℤ) : ℝ))) 3 + 1

end

end A078734.P5143901695049749346

namespace A078734

/-- `log2(1-and(n, n+1)+n)%3+1` -/
def P5143901695049749346.Spec : Prop :=
  ∀ n, P5143901695049749346.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P6021809748615586248

`A191255(2*(n+1))`
-/

namespace A078734.P6021809748615586248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191255 (2 * (n + 1))

end

end A078734.P6021809748615586248

namespace A078734

/-- `A191255(2*(n+1))` -/
def P6021809748615586248.Spec : Prop :=
  ∀ n, P6021809748615586248.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P3819430261012070495

`A010882(val(n+1, 2))`
-/

namespace A078734.P3819430261012070495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (SequenceMachineLib.valuation (n + 1) 2)

end

end A078734.P3819430261012070495

namespace A078734

/-- `A010882(val(n+1, 2))` -/
def P3819430261012070495.Spec : Prop :=
  ∀ n, P3819430261012070495.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P10891707811192214084

`A010872(val(n+1, 2))+1`
-/

namespace A078734.P10891707811192214084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (SequenceMachineLib.valuation (n + 1) 2) + 1

end

end A078734.P10891707811192214084

namespace A078734

/-- `A010872(val(n+1, 2))+1` -/
def P10891707811192214084.Spec : Prop :=
  ∀ n, P10891707811192214084.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P12939633932456833013

`val(A277546(n+1), 2)+1`
-/

namespace A078734.P12939633932456833013
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A277546 (n + 1)).toNat 2 + 1

end

end A078734.P12939633932456833013

namespace A078734

/-- `val(A277546(n+1), 2)+1` -/
def P12939633932456833013.Spec : Prop :=
  ∀ n, (P12939633932456833013.a n : ℤ) = A078734 (n + 1)

end A078734

/-! ## A078734.P14126288292721983917

`A010172(A059139(n))`
-/

namespace A078734.P14126288292721983917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010172 (A059139 n).toNat

end

end A078734.P14126288292721983917

namespace A078734

/-- `A010172(A059139(n))` -/
def P14126288292721983917.Spec : Prop :=
  ∀ n, P14126288292721983917.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P3554997519917815585

`A040248(A059134(n))`
-/

namespace A078734.P3554997519917815585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040248 (A059134 n).toNat

end

end A078734.P3554997519917815585

namespace A078734

/-- `A040248(A059134(n))` -/
def P3554997519917815585.Spec : Prop :=
  ∀ n, P3554997519917815585.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P13839091790927695251

`A028293(A135481(n))`
-/

namespace A078734.P13839091790927695251
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028293 (A135481 n).toNat

end

end A078734.P13839091790927695251

namespace A078734

/-- `A028293(A135481(n))` -/
def P13839091790927695251.Spec : Prop :=
  ∀ n, P13839091790927695251.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P14984329811339180737

`A010882(A007814(n+1))`
-/

namespace A078734.P14984329811339180737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A007814 (n + 1)).toNat

end

end A078734.P14984329811339180737

namespace A078734

/-- `A010882(A007814(n+1))` -/
def P14984329811339180737.Spec : Prop :=
  ∀ n, P14984329811339180737.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P6930153988641153228

`A010882(A090739(n+1))`
-/

namespace A078734.P6930153988641153228
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A090739 (n + 1)).toNat

end

end A078734.P6930153988641153228

namespace A078734

/-- `A010882(A090739(n+1))` -/
def P6930153988641153228.Spec : Prop :=
  ∀ n, P6930153988641153228.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P16092654279587381850

`A076840(A037227(n+1))`
-/

namespace A078734.P16092654279587381850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076840 (A037227 (n + 1)).toNat

end

end A078734.P16092654279587381850

namespace A078734

/-- `A076840(A037227(n+1))` -/
def P16092654279587381850.Spec : Prop :=
  ∀ n, P16092654279587381850.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P13980730826407108170

`A143667(A059141(n))+1`
-/

namespace A078734.P13980730826407108170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143667 (A059141 n).toNat + 1

end

end A078734.P13980730826407108170

namespace A078734

/-- `A143667(A059141(n))+1` -/
def P13980730826407108170.Spec : Prop :=
  ∀ n, P13980730826407108170.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P9021879052964305203

`A270740(A059132(n))+1`
-/

namespace A078734.P9021879052964305203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270740 (A059132 n).toNat + 1

end

end A078734.P9021879052964305203

namespace A078734

/-- `A270740(A059132(n))+1` -/
def P9021879052964305203.Spec : Prop :=
  ∀ n, P9021879052964305203.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P17600543257130861543

`A010882(A001511(n+1)-1)`
-/

namespace A078734.P17600543257130861543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010882 (A001511 (n + 1) - 1).toNat

end

end A078734.P17600543257130861543

namespace A078734

/-- `A010882(A001511(n+1)-1)` -/
def P17600543257130861543.Spec : Prop :=
  ∀ n, P17600543257130861543.a n = A078734 (n + 1)

end A078734

/-! ## A078734.P973138443851454953

`A010872(A001511(n+1)-1)+1`
-/

namespace A078734.P973138443851454953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010872 (A001511 (n + 1) - 1).toNat + 1

end

end A078734.P973138443851454953

namespace A078734

/-- `A010872(A001511(n+1)-1)+1` -/
def P973138443851454953.Spec : Prop :=
  ∀ n, P973138443851454953.a n = A078734 (n + 1)

end A078734

/-!
# A078736: Numerators of convergents to sqrt(e).

The programs for A078736, the canonical program `A078736.P8131664630174291717` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078736 has offset 1).

The definition of A078736 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078736.P8131664630174291717

`∏[A058281(n)+1/a(n-1)]` with `a(0)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A078736

/-- `∏[A058281(n)+1/a(n-1)]` -/
def P8131664630174291717.Spec : Prop :=
  ∀ n, P8131664630174291717.a n = (A078736 (n + 1) : ℚ)

end A078736

/-!
# A078737: Denominators of convergents to sqrt(e).

The programs for A078737, the canonical program `A078737.P6563934209160110452` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078737 has offset 1).

The definition of A078737 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 139 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078737.P6563934209160110452

`∏[A058281(n)+1/a(n-1)]` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A078737

/-- `∏[A058281(n)+1/a(n-1)]` -/
def P6563934209160110452.Spec : Prop :=
  ∀ n, P6563934209160110452.a n = (A078737 (n + 1) : ℚ)

end A078737

/-!
# A078738: Generalized Bell numbers B_{3,2}(n).

The programs for A078738, there is no canonical definition to state claims against.
-/

/-! ## A078738.P16214330002296164725

`A347204(10*A023001(n))`
-/

namespace A078738.P16214330002296164725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347204 (10 * A023001 n).toNat

end

end A078738.P16214330002296164725

/-!
# A078740: Triangle of generalized Stirling numbers S_{3,2}(n,k) read by rows (n>=1, 2<=k<=2n).

The programs for A078740, there is no canonical definition to state claims against.
-/

/-! ## A078740.P10261989681302550294

`A205848(A220169(n+2))`
-/

namespace A078740.P10261989681302550294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205848 (A220169 (n + 2)).toNat

end

end A078740.P10261989681302550294

/-! ## A078740.P6724947551115036159

`∑{d}[A213658(A146345(n+1)), #]`
-/

namespace A078740.P6724947551115036159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213658 (A146345 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078740.P6724947551115036159

/-!
# A078742: a(n) = smallest Fibonacci number > a(n-1) such that a(1) + ... + a(n) is prime.

The programs for A078742, there is no canonical definition to state claims against.
-/

/-! ## A078742.P18328751717820921738

`A000045(A078743(n+1))`
-/

namespace A078742.P18328751717820921738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A078743 (n + 1)).toNat

end

end A078742.P18328751717820921738

/-! ## A078742.P178920515810347672

`A212804(A078743(n+1)+1)`
-/

namespace A078742.P178920515810347672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A078743 (n + 1) + 1).toNat

end

end A078742.P178920515810347672

/-! ## A078742.P5848402831823157953

`A053602(2*A078743(n+1))`
-/

namespace A078742.P5848402831823157953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053602 (2 * A078743 (n + 1)).toNat

end

end A078742.P5848402831823157953

/-! ## A078742.P14159598841775751692

`A103609(2*A078743(n+1))`
-/

namespace A078742.P14159598841775751692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (2 * A078743 (n + 1)).toNat

end

end A078742.P14159598841775751692

/-! ## A078742.P13039560892351883598

`A108362(xor(1, A078743(n+1)))`
-/

namespace A078742.P13039560892351883598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108362 (Int.xor 1 (A078743 (n + 1))).toNat

end

end A078742.P13039560892351883598

/-!
# A078743: a(n) is the Fibonacci index of b(n) in the sequence b(1), b(2), ... where b(n) is the smallest Fibonacci number > b(n-1) such that b(1) + ... + b(n) is prime.

The programs for A078743, there is no canonical definition to state claims against.
-/

/-! ## A078743.P16901464559023091531

`A174247(n)+A085058(A323631(n))`
-/

namespace A078743.P16901464559023091531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174247 n + A085058 (A323631 n).toNat

end

end A078743.P16901464559023091531

/-!
# A078746: a(n) = prime(2*n*(n+1)+1).

The programs for A078746, the canonical program `A078746.P2444291317857137827` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078746 has offset 0).

The definition of A078746 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000040, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078746.P2444291317857137827

`A000040(A001844(n))`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A078746

/-- `A000040(A001844(n))` -/
def P2444291317857137827.Spec : Prop :=
  ∀ n, P2444291317857137827.a n = A078746 n

theorem P2444291317857137827.correct : P2444291317857137827.Spec := by
  intro n
  simp only [A078746]

end A078746

/-! ## A078746.P11821991822114146714

`A247665(A248387(∑[4*n]+1))`
-/

namespace A078746.P11821991822114146714
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247665 (A248387 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A078746.P11821991822114146714

namespace A078746

/-- `A247665(A248387(∑[4*n]+1))` -/
def P11821991822114146714.Spec : Prop :=
  ∀ n, P11821991822114146714.a n = A078746 n

end A078746

/-! ## A078746.P13950655371374264869

`A031385(∑[n]+1)`
-/

namespace A078746.P13950655371374264869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031385 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078746.P13950655371374264869

namespace A078746

/-- `A031385(∑[n]+1)` -/
def P13950655371374264869.Spec : Prop :=
  ∀ n, P13950655371374264869.a n = A078746 n

end A078746

/-! ## A078746.P14838749148315953678

`A031385(A000217(n)+1)%A323343(n+1)`
-/

namespace A078746.P14838749148315953678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A031385 (A000217 n + 1).toNat) (A323343 (n + 1))

end

end A078746.P14838749148315953678

namespace A078746

/-- `A031385(A000217(n)+1)%A323343(n+1)` -/
def P14838749148315953678.Spec : Prop :=
  ∀ n, P14838749148315953678.a n = A078746 n

end A078746

/-! ## A078746.P8402581258786811655

`A060191(∑[2*n])`
-/

namespace A078746.P8402581258786811655
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060191 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078746.P8402581258786811655

namespace A078746

/-- `A060191(∑[2*n])` -/
def P8402581258786811655.Spec : Prop :=
  ∀ n, P8402581258786811655.a n = A078746 n

end A078746

/-! ## A078746.P15075042611220050825

`A031368(∑[2*n]+1)`
-/

namespace A078746.P15075042611220050825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031368 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078746.P15075042611220050825

namespace A078746

/-- `A031368(∑[2*n]+1)` -/
def P15075042611220050825.Spec : Prop :=
  ∀ n, P15075042611220050825.a n = A078746 n

end A078746

/-! ## A078746.P1326166407099917301

`A001748(∑[4*n]+1)/3`
-/

namespace A078746.P1326166407099917301
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A001748 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / 3

end

end A078746.P1326166407099917301

namespace A078746

/-- `A001748(∑[4*n]+1)/3` -/
def P1326166407099917301.Spec : Prop :=
  ∀ n, P1326166407099917301.a n = (A078746 n : ℚ)

end A078746

/-! ## A078746.P8493040067801375035

`A000027(A060191(n²+n))`
-/

namespace A078746.P8493040067801375035
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A060191 (n ^ 2 + n)).toNat

end

end A078746.P8493040067801375035

namespace A078746

/-- `A000027(A060191(n²+n))` -/
def P8493040067801375035.Spec : Prop :=
  ∀ n, P8493040067801375035.a n = A078746 n

end A078746

/-! ## A078746.P12110178619056011908

`A000040(∑[4*n]+1)`
-/

namespace A078746.P12110178619056011908
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A078746.P12110178619056011908

namespace A078746

/-- `A000040(∑[4*n]+1)` -/
def P12110178619056011908.Spec : Prop :=
  ∀ n, P12110178619056011908.a n = A078746 n

end A078746

/-! ## A078746.P16350757082440550473

`A008578(∑[4*n]+2)`
-/

namespace A078746.P16350757082440550473
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A078746.P16350757082440550473

namespace A078746

/-- `A008578(∑[4*n]+2)` -/
def P16350757082440550473.Spec : Prop :=
  ∀ n, P16350757082440550473.a n = A078746 n

end A078746

/-!
# A078747: Expansion of Sum_{k>0} k*phi(k)*x^k/(1+x^k).

The programs for A078747, the canonical program `A078747.P15397912367434804972` is in `Seq.B012.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078747 has offset 1).

The definition of A078747 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078747.P177549847501541498

`∑{d}[n+1, #*A326305(#)]`
-/

namespace A078747.P177549847501541498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A326305 d

end

end A078747.P177549847501541498

namespace A078747

/-- `∑{d}[n+1, #*A326305(#)]` -/
def P177549847501541498.Spec : Prop :=
  ∀ n, P177549847501541498.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P3205866283192264513

`∑{d}[n+1, A048272(#)*A063445((n+1)/#)]`
-/

namespace A078747.P3205866283192264513
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A048272 d * A063445 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078747.P3205866283192264513

namespace A078747

/-- `∑{d}[n+1, A048272(#)*A063445((n+1)/#)]` -/
def P3205866283192264513.Spec : Prop :=
  ∀ n, P3205866283192264513.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P15397912367434804972

`∑{d}[n+1, A055615(#)*A078306((n+1)/#)]`

The canonical program, it is in `Seq.B012.C000`.
-/

namespace A078747

/-- `∑{d}[n+1, A055615(#)*A078306((n+1)/#)]` -/
def P15397912367434804972.Spec : Prop :=
  ∀ n, P15397912367434804972.a n = A078747 (n + 1)

theorem P15397912367434804972.correct : P15397912367434804972.Spec := by
  intro n
  simp only [A078747, Nat.add_sub_cancel]

end A078747

/-! ## A078747.P12177042181135086243

`∑{d}[n+1, A101035(#)*A228274((n+1)/#)]`
-/

namespace A078747.P12177042181135086243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A101035 d * A228274 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078747.P12177042181135086243

namespace A078747

/-- `∑{d}[n+1, A101035(#)*A228274((n+1)/#)]` -/
def P12177042181135086243.Spec : Prop :=
  ∀ n, P12177042181135086243.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P10823391068695324294

`∑{d}[n+1, A118209(#)*A254520((n+1)/#)]`
-/

namespace A078747.P10823391068695324294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A118209 d * A254520 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078747.P10823391068695324294

namespace A078747

/-- `∑{d}[n+1, A118209(#)*A254520((n+1)/#)]` -/
def P10823391068695324294.Spec : Prop :=
  ∀ n, P10823391068695324294.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P9825661627954896616

`∑{d}[n+1, A193356(#)*A340850((n+1)/#)]`
-/

namespace A078747.P9825661627954896616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A193356 d * A340850 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078747.P9825661627954896616

namespace A078747

/-- `∑{d}[n+1, A193356(#)*A340850((n+1)/#)]` -/
def P9825661627954896616.Spec : Prop :=
  ∀ n, P9825661627954896616.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P9284812224617469642

`∑{d}[n+1, A288418(#)*A328722((n+1)/#)]`
-/

namespace A078747.P9284812224617469642
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A288418 d * A328722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A078747.P9284812224617469642

namespace A078747

/-- `∑{d}[n+1, A288418(#)*A328722((n+1)/#)]` -/
def P9284812224617469642.Spec : Prop :=
  ∀ n, P9284812224617469642.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P1031639771675772896

`∑{d}[n+1, A002618(#)*A033999((n+1)/#-1)]`
-/

namespace A078747.P1031639771675772896
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A002618 d * A033999 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ) - 1)).toNat

end

end A078747.P1031639771675772896

namespace A078747

/-- `∑{d}[n+1, A002618(#)*A033999((n+1)/#-1)]` -/
def P1031639771675772896.Spec : Prop :=
  ∀ n, P1031639771675772896.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P14242560508119842687

`A206369((n+1)²/gcd(2, n+1))`
-/

namespace A078747.P14242560508119842687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat

end

end A078747.P14242560508119842687

namespace A078747

/-- `A206369((n+1)²/gcd(2, n+1))` -/
def P14242560508119842687.Spec : Prop :=
  ∀ n, P14242560508119842687.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P676705172586254118

`A118209(A168077(n+1))`
-/

namespace A078747.P676705172586254118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118209 (A168077 (n + 1)).toNat

end

end A078747.P676705172586254118

namespace A078747

/-- `A118209(A168077(n+1))` -/
def P676705172586254118.Spec : Prop :=
  ∀ n, P676705172586254118.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P15921654702751040644

`A206369(A129194(n+1))`
-/

namespace A078747.P15921654702751040644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (A129194 (n + 1)).toNat

end

end A078747.P15921654702751040644

namespace A078747

/-- `A206369(A129194(n+1))` -/
def P15921654702751040644.Spec : Prop :=
  ∀ n, P15921654702751040644.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P16789494648529573853

`A206369(A251091(n+1))`
-/

namespace A078747.P16789494648529573853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (A251091 (n + 1)).toNat

end

end A078747.P16789494648529573853

namespace A078747

/-- `A206369(A251091(n+1))` -/
def P16789494648529573853.Spec : Prop :=
  ∀ n, P16789494648529573853.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P17555472258147967230

`A206369(A026741((n+1)²))`
-/

namespace A078747.P17555472258147967230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (A026741 ((n + 1) ^ 2)).toNat

end

end A078747.P17555472258147967230

namespace A078747

/-- `A206369(A026741((n+1)²))` -/
def P17555472258147967230.Spec : Prop :=
  ∀ n, P17555472258147967230.a n = A078747 (n + 1)

end A078747

/-! ## A078747.P13448178716904090764

`A206369((n+1)²/A000034(n))`
-/

namespace A078747.P13448178716904090764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206369 (SequenceMachineLib.roundAway (((n + 1) ^ 2 : ℚ) / (A000034 n : ℚ))).toNat

end

end A078747.P13448178716904090764

namespace A078747

/-- `A206369((n+1)²/A000034(n))` -/
def P13448178716904090764.Spec : Prop :=
  ∀ n, P13448178716904090764.a n = A078747 (n + 1)

end A078747

/-!
# A078750: Least m not less than 2*n such that m + n = m OR n (logical 'or', bitwise).

The programs for A078750, the canonical program `A078750.P14596410711989328405` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078750 has offset 1).

The definition of A078750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078750.P17728413723424354420

`A022340(∑[A085357(n)])`
-/

namespace A078750.P17728413723424354420
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085357 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078750.P17728413723424354420

namespace A078750

/-- `A022340(∑[A085357(n)])` -/
def P17728413723424354420.Spec : Prop :=
  ∀ n, P17728413723424354420.a n = A078750 (n + 1)

end A078750

/-! ## A078750.P14596410711989328405

`A022340(∑[char[A003714(n)]])`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A078750

/-- `A022340(∑[char[A003714(n)]])` -/
def P14596410711989328405.Spec : Prop :=
  ∀ n, P14596410711989328405.a n = A078750 (n + 1)

theorem P14596410711989328405.correct : P14596410711989328405.Spec := by
  intro n
  simp only [A078750, Nat.add_sub_cancel]

end A078750

/-! ## A078750.P10241292798030236422

`A022340(∑[char[A090077(n)]])`
-/

namespace A078750.P10241292798030236422
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090077 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078750.P10241292798030236422

namespace A078750

/-- `A022340(∑[char[A090077(n)]])` -/
def P10241292798030236422.Spec : Prop :=
  ∀ n, P10241292798030236422.a n = A078750 (n + 1)

end A078750

/-! ## A078750.P16851863762856922871

`A022340(∑[A085405(2*n)])`
-/

namespace A078750.P16851863762856922871
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085405 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078750.P16851863762856922871

namespace A078750

/-- `A022340(∑[A085405(2*n)])` -/
def P16851863762856922871.Spec : Prop :=
  ∀ n, P16851863762856922871.a n = A078750 (n + 1)

end A078750

/-! ## A078750.P9099772068417994615

`2*A003714(∑[char[A003714(n)]])`
-/

namespace A078750.P9099772068417994615
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A003714 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078750.P9099772068417994615

namespace A078750

/-- `2*A003714(∑[char[A003714(n)]])` -/
def P9099772068417994615.Spec : Prop :=
  ∀ n, P9099772068417994615.a n = A078750 (n + 1)

end A078750

/-! ## A078750.P7690003974954996214

`A022340(A324965(2*n+1)+A324965(n))`
-/

namespace A078750.P7690003974954996214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (A324965 (2 * n + 1) + A324965 n).toNat

end

end A078750.P7690003974954996214

namespace A078750

/-- `A022340(A324965(2*n+1)+A324965(n))` -/
def P7690003974954996214.Spec : Prop :=
  ∀ n, P7690003974954996214.a n = A078750 (n + 1)

end A078750

/-! ## A078750.P10193925346621752208

`A022340(A324965(2*(2*n+1)))`
-/

namespace A078750.P10193925346621752208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (A324965 (2 * (2 * n + 1))).toNat

end

end A078750.P10193925346621752208

namespace A078750

/-- `A022340(A324965(2*(2*n+1)))` -/
def P10193925346621752208.Spec : Prop :=
  ∀ n, P10193925346621752208.a n = A078750 (n + 1)

end A078750

/-! ## A078750.P4675196375068962810

`A022340(∑[A323239(A253565(2*n))])`
-/

namespace A078750.P4675196375068962810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A253565 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078750.P4675196375068962810

namespace A078750

/-- `A022340(∑[A323239(A253565(2*n))])` -/
def P4675196375068962810.Spec : Prop :=
  ∀ n, P4675196375068962810.a n = A078750 (n + 1)

end A078750

/-! ## A078750.P8308316417137435576

`A022340(∑[A323239(A005940(2*n+1))])`
-/

namespace A078750.P8308316417137435576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323239 (A005940 (2 * n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022340 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078750.P8308316417137435576

namespace A078750

/-- `A022340(∑[A323239(A005940(2*n+1))])` -/
def P8308316417137435576.Spec : Prop :=
  ∀ n, P8308316417137435576.a n = A078750 (n + 1)

end A078750

/-!
# A078751: Triangle read by rows: T(m,k) = normalized partial derivative of (t,z) -> exp(t*g(z)) at (0,0), where 2*g(z) = 1 + exp(-2*z*g(z)).

The programs for A078751, there is no canonical definition to state claims against.
-/

/-! ## A078751.P16912479785887910303

`A000121(n)*A000121(A221988(n))`
-/

namespace A078751.P16912479785887910303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000121 n * A000121 (A221988 n).toNat

end

end A078751.P16912479785887910303

/-! ## A078751.P13271560392922623522

`A246631(xor(A199696(n), A211480(n)))`
-/

namespace A078751.P13271560392922623522
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246631 (Int.xor (A199696 n) (A211480 n)).toNat

end

end A078751.P13271560392922623522

/-! ## A078751.P2820219940606259578

`A262956(A124562(n))*A283691(n+1)`
-/

namespace A078751.P2820219940606259578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262956 (A124562 n).toNat * A283691 (n + 1)

end

end A078751.P2820219940606259578

/-!
# A078753: Number of steps to factor 2n+1 using Fermat's factorization method.

The programs for A078753, there is no canonical definition to state claims against.
-/

/-! ## A078753.P5364208886931365208

`A065033(A063655(2*n+3))-A000196(2*(n+1))`
-/

namespace A078753.P5364208886931365208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065033 (A063655 (2 * n + 3)).toNat - A000196 (2 * (n + 1))

end

end A078753.P5364208886931365208

/-! ## A078753.P12448907269041896676

`A107324(2*n+3)-A000196(2*(n+1))`
-/

namespace A078753.P12448907269041896676
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107324 (2 * n + 3) - A000196 (2 * (n + 1))

end

end A078753.P12448907269041896676

/-! ## A078753.P8388565329661476095

`ceil(A300516(2*n+3)/A277624(n+1))`
-/

namespace A078753.P8388565329661476095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A300516 (2 * n + 3) : ℚ) / (A277624 (n + 1) : ℚ)⌉

end

end A078753.P8388565329661476095

/-! ## A078753.P16721856356409689392

`A057979(lt[A014574(3*n+2), A128368(2*n+5)])`
-/

namespace A078753.P16721856356409689392
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014574 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128368 (2 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057979 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A078753.P16721856356409689392

/-! ## A078753.P12014300600014178414

`A000009(A049084(2*n+3)%A002319(n+1))`
-/

namespace A078753.P12014300600014178414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000009 (Int.tmod (A049084 (2 * n + 3)) (A002319 (n + 1))).toNat

end

end A078753.P12014300600014178414

/-!
# A078757: Values of A028470(n)/A000045(n+1).

The programs for A078757, there is no canonical definition to state claims against.
-/

/-! ## A078757.P13841068770125907895

`A028470(n+1)/A000045(n+2)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A078757.P13841068770125907895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028470 (n + 1) : ℚ) / (A000045 (n + 2) : ℚ)

end

end A078757.P13841068770125907895

/-! ## A078757.P4674333282985689927

`A028470(n+1)/Δ[A001911(n)]`
-/

namespace A078757.P4674333282985689927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028470 (n + 1) : ℚ) / (f1 (n + 1) - f1 n : ℚ)

end

end A078757.P4674333282985689927

/-!
# A078759: Height of n-th term in A064389 (variation (4) of Recamán's sequence).

The programs for A078759, there is no canonical definition to state claims against.
-/

/-! ## A078759.P9458973761777858753

`A064289(∑[A003557(A022166(n))])`
-/

namespace A078759.P9458973761777858753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003557 (A022166 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078759.P9458973761777858753

/-! ## A078759.P12355894170218398376

`∑[Δ[A064289(n)]^A258932(n+1)]`
-/

namespace A078759.P12355894170218398376
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) - f2 n : ℚ) ^ (A258932 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078759.P12355894170218398376

/-! ## A078759.P8015176559541614404

`A064289(∑[A119788(A025487(n+1))])`
-/

namespace A078759.P8015176559541614404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119788 (A025487 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078759.P8015176559541614404

/-! ## A078759.P13927460617393980197

`A064289(lt[A201836(3*n+5), A165004(3*n+1)])`
-/

namespace A078759.P13927460617393980197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201836 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165004 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064289 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A078759.P13927460617393980197

/-! ## A078759.P14744277161737215277

`A126712(A064387(n+1))+1`
-/

namespace A078759.P14744277161737215277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126712 (A064387 (n + 1)).toNat + 1

end

end A078759.P14744277161737215277

/-!
# A078760: Combinations of a partition: number of ways to label a partition (of size n) with numbers 1 to n.

The programs for A078760, there is no canonical definition to state claims against.
-/

/-! ## A078760.P12399411552566409565

`A008480(A063008(n))`
-/

namespace A078760.P12399411552566409565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (A063008 n).toNat

end

end A078760.P12399411552566409565

/-! ## A078760.P14470772992070780672

`A318762(A129129(n))`
-/

namespace A078760.P14470772992070780672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318762 (A129129 n).toNat

end

end A078760.P14470772992070780672

/-! ## A078760.P13595884716658893641

`A124774(A114994(n))`
-/

namespace A078760.P13595884716658893641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (A114994 n).toNat

end

end A078760.P13595884716658893641

/-! ## A078760.P13279556574862635051

`A124774(eq[0, A124760(n)])`
-/

namespace A078760.P13279556574862635051
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124760 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124774 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078760.P13279556574862635051

/-! ## A078760.P14283115421731034839

`abs(A133314(n)/A072811(n))`
-/

namespace A078760.P14283115421731034839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A133314 n : ℚ) / (A072811 n : ℚ)|

end

end A078760.P14283115421731034839

/-! ## A078760.P8805519578586333203

`abs(A133314(n)/A008480(A129129(n)))`
-/

namespace A078760.P8805519578586333203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |(A133314 n : ℚ) / (A008480 (A129129 n).toNat : ℚ)|

end

end A078760.P8805519578586333203

/-! ## A078760.P4430674466010135637

`A318808(2*A129129(n))`
-/

namespace A078760.P4430674466010135637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318808 (2 * A129129 n).toNat

end

end A078760.P4430674466010135637

/-! ## A078760.P4845029746954254503

`A318810(2*A129129(n))`
-/

namespace A078760.P4845029746954254503
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318810 (2 * A129129 n).toNat

end

end A078760.P4845029746954254503

/-! ## A078760.P3381011136325718721

`A178801(n)/A069123(n)`
-/

namespace A078760.P3381011136325718721
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A178801 n : ℚ) / (A069123 n : ℚ)

end

end A078760.P3381011136325718721

/-!
# A078761: Sum of the digits of all n-digit numbers.

The programs for A078761, the canonical program `A078761.P11490699347720603446` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078761 has offset 1).

The definition of A078761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A078761.P11490699347720603446

`45*(9*(n+1)+1)*10^(n-1)`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078761

/-- `45*(9*(n+1)+1)*10^(n-1)` -/
def P11490699347720603446.Spec : Prop :=
  ∀ n, P11490699347720603446.a n = (A078761 (n + 1) : ℚ)

end A078761

/-! ## A078761.P2516550858520885010

`abs(Δ[A034967(n)])`
-/

namespace A078761.P2516550858520885010
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A078761.P2516550858520885010

namespace A078761

/-- `abs(Δ[A034967(n)])` -/
def P2516550858520885010.Spec : Prop :=
  ∀ n, P2516550858520885010.a n = A078761 (n + 1)

end A078761

/-! ## A078761.P17631957883818530075

`A034967(n+1)-A034967(n)`
-/

namespace A078761.P17631957883818530075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034967 (n + 1) - A034967 n

end

end A078761.P17631957883818530075

namespace A078761

/-- `A034967(n+1)-A034967(n)` -/
def P17631957883818530075.Spec : Prop :=
  ∀ n, P17631957883818530075.a n = A078761 (n + 1)

end A078761

/-! ## A078761.P10827837181113330935

`record[A034967(A057979(n))]-A034967(n)`
-/

namespace A078761.P10827837181113330935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034967 (A057979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A034967 n

end

end A078761.P10827837181113330935

namespace A078761

/-- `record[A034967(A057979(n))]-A034967(n)` -/
def P10827837181113330935.Spec : Prop :=
  ∀ n, P10827837181113330935.a n = A078761 (n + 1)

end A078761

/-! ## A078761.P15375977228845929506

`Δ[A034967(n)]%A087330(n+2)`
-/

namespace A078761.P15375977228845929506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034967 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (n + 1) - f1 n) (A087330 (n + 2))

end

end A078761.P15375977228845929506

namespace A078761

/-- `Δ[A034967(n)]%A087330(n+2)` -/
def P15375977228845929506.Spec : Prop :=
  ∀ n, P15375977228845929506.a n = A078761 (n + 1)

end A078761

/-!
# A078762: Numbers n such that n + sigma(n) is prime.

The programs for A078762, there is no canonical definition to state claims against.
-/

/-! ## A078762.P7734676753702873306

`∪[A005384(n+1), A249486(n+1)]`
-/

namespace A078762.P7734676753702873306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005384 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249486 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078762.P7734676753702873306

/-! ## A078762.P12217907734433630656

`eq[1, A001222(A000203(n+1)+n+1)]+1`
-/

namespace A078762.P12217907734433630656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078762.P12217907734433630656

/-! ## A078762.P18197542366986027743

`eq[2, A000005(A000203(n+1)+n+1)]+1`
-/

namespace A078762.P18197542366986027743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (A000203 (n + 1) + (n + 1 : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078762.P18197542366986027743

/-! ## A078762.P12661888262563508997

`lt[A001222(A000203(n+1)+1+n), 2]+1`
-/

namespace A078762.P12661888262563508997
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000203 (n + 1) + 1 + (n : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A078762.P12661888262563508997

/-! ## A078762.P5806923474920859427

`record[(n+1)/A001222(A000203(n+1)+n+1)]`
-/

namespace A078762.P5806923474920859427
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A001222 (A000203 (n + 1) + (n : ℤ) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078762.P5806923474920859427

/-! ## A078762.P6507051019866911275

`eq[1, A001222(A155085(n+1))]+1`
-/

namespace A078762.P6507051019866911275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A155085 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078762.P6507051019866911275

/-! ## A078762.P9913760082291451518

`lt[A001222(∑{d}[n+1, #]+n+1), 2]+1`
-/

namespace A078762.P9913760082291451518
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (∑ d ∈ Nat.divisors (f2 n), d + n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f3 j : ℤ)) n + 1

end

end A078762.P9913760082291451518

/-! ## A078762.P13712143691852835047

`lt[A001222(A245092(2*n+1)+n+1), 2]+1`
-/

namespace A078762.P13712143691852835047
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A245092 (2 * n + 1) + (n + 1 : ℤ)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A078762.P13712143691852835047

/-! ## A078762.P15336521938903096920

`eq[2, A318885(∑{d}[n+1, #]+n+1)]+1`
-/

namespace A078762.P15336521938903096920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318885 (∑ d ∈ Nat.divisors (f3 n), d + (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078762.P15336521938903096920

/-! ## A078762.P3759136908078126798

`record[(n+1)%A014963(A000203(n+1)+n+1)]`
-/

namespace A078762.P3759136908078126798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (n + 1 : ℤ) (A014963 (A000203 (n + 1) + (n + 1 : ℤ)).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078762.P3759136908078126798

/-!
# A078763: List primes between (2n-1)^2 and (2n)^2.

The programs for A078763, the canonical program `A078763.P9836869021178763523` is in `Seq.B001.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078763 has offset 1).

The definition of A078763 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078763.P12072816279254715822

`p?[A140238(n+1)]`
-/

namespace A078763.P12072816279254715822
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078763.P12072816279254715822

namespace A078763

/-- `p?[A140238(n+1)]` -/
def P12072816279254715822.Spec : Prop :=
  ∀ n, P12072816279254715822.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P16556031713771158192

`filter[A140238(n+1), A010051(#)]`
-/

namespace A078763.P16556031713771158192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A078763.P16556031713771158192

namespace A078763

/-- `filter[A140238(n+1), A010051(#)]` -/
def P16556031713771158192.Spec : Prop :=
  ∀ n, P16556031713771158192.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P3327372059038174264

`∩[A000040(n+1), A140238(n+1)]`
-/

namespace A078763.P3327372059038174264
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078763.P3327372059038174264

namespace A078763

/-- `∩[A000040(n+1), A140238(n+1)]` -/
def P3327372059038174264.Spec : Prop :=
  ∀ n, (P3327372059038174264.a n : ℤ) = A078763 (n + 1)

end A078763

/-! ## A078763.P14323947938975952573

`∩[A045319(n+1), A140238(n+1)]`
-/

namespace A078763.P14323947938975952573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078763.P14323947938975952573

namespace A078763

/-- `∩[A045319(n+1), A140238(n+1)]` -/
def P14323947938975952573.Spec : Prop :=
  ∀ n, (P14323947938975952573.a n : ℤ) = A078763 (n + 1)

end A078763

/-! ## A078763.P18047196080987160733

`∩[A116974(n+1), A140238(n+1)]`
-/

namespace A078763.P18047196080987160733
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140238 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078763.P18047196080987160733

namespace A078763

/-- `∩[A116974(n+1), A140238(n+1)]` -/
def P18047196080987160733.Spec : Prop :=
  ∀ n, (P18047196080987160733.a n : ℤ) = A078763 (n + 1)

end A078763

/-! ## A078763.P1060748184922098415

`∩[A140238(n+1), A182986(n+1)]`
-/

namespace A078763.P1060748184922098415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140238 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078763.P1060748184922098415

namespace A078763

/-- `∩[A140238(n+1), A182986(n+1)]` -/
def P1060748184922098415.Spec : Prop :=
  ∀ n, (P1060748184922098415.a n : ℤ) = A078763 (n + 1)

end A078763

/-! ## A078763.P9836869021178763523

`p?[A002024(abs(1-n)+1)+2*n]`

The canonical program, it is in `Seq.B001.C002`.
-/

namespace A078763

/-- `p?[A002024(abs(1-n)+1)+2*n]` -/
def P9836869021178763523.Spec : Prop :=
  ∀ n, P9836869021178763523.a n = A078763 (n + 1)

theorem P9836869021178763523.correct : P9836869021178763523.Spec := by
  intro n
  simp only [A078763, Nat.add_sub_cancel]

end A078763

/-! ## A078763.P14454604068280674284

`record[A006530(A003056(n+1)+3+n+n)]`
-/

namespace A078763.P14454604068280674284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A003056 (n + 1) + 3 + (n : ℤ) + (n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078763.P14454604068280674284

namespace A078763

/-- `record[A006530(A003056(n+1)+3+n+n)]` -/
def P14454604068280674284.Spec : Prop :=
  ∀ n, P14454604068280674284.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P8318358704538886337

`p?[A093907(A103128(n+1))+n]`
-/

namespace A078763.P8318358704538886337
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093907 (A103128 (n + 1)).toNat + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078763.P8318358704538886337

namespace A078763

/-- `p?[A093907(A103128(n+1))+n]` -/
def P8318358704538886337.Spec : Prop :=
  ∀ n, P8318358704538886337.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P4253276492869025457

`record[A006530(A133280(n+3))]`
-/

namespace A078763.P4253276492869025457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A133280 (n + 3)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078763.P4253276492869025457

namespace A078763

/-- `record[A006530(A133280(n+3))]` -/
def P4253276492869025457.Spec : Prop :=
  ∀ n, P4253276492869025457.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P17995882028857200432

`record[A006530(lt[1, A210870(n+1)]+n)]`
-/

namespace A078763.P17995882028857200432
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210870 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078763.P17995882028857200432

namespace A078763

/-- `record[A006530(lt[1, A210870(n+1)]+n)]` -/
def P17995882028857200432.Spec : Prop :=
  ∀ n, P17995882028857200432.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P9988970587894744310

`p?[abs(A002024(A028310(n))-(n-1)-n)]`
-/

namespace A078763.P9988970587894744310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A002024 (A028310 n).toNat - ((n : ℤ) - 1) - (n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078763.P9988970587894744310

namespace A078763

/-- `p?[abs(A002024(A028310(n))-(n-1)-n)]` -/
def P9988970587894744310.Spec : Prop :=
  ∀ n, P9988970587894744310.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P16146931898807510912

`p?[n*A267034(n)]`
-/

namespace A078763.P16146931898807510912
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A267034 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078763.P16146931898807510912

namespace A078763

/-- `p?[n*A267034(n)]` -/
def P16146931898807510912.Spec : Prop :=
  ∀ n, P16146931898807510912.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P7832067543902635742

`p?[and(n, A339265(n))]`
-/

namespace A078763.P7832067543902635742
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n : ℤ) (A339265 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078763.P7832067543902635742

namespace A078763

/-- `p?[and(n, A339265(n))]` -/
def P7832067543902635742.Spec : Prop :=
  ∀ n, P7832067543902635742.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P5769664036387778132

`p?[A055087(n)+2+n]`
-/

namespace A078763.P5769664036387778132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055087 n + 2 + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078763.P5769664036387778132

namespace A078763

/-- `p?[A055087(n)+2+n]` -/
def P5769664036387778132.Spec : Prop :=
  ∀ n, P5769664036387778132.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P7736610693677969286

`p?[(n+1)*A266216(n)]`
-/

namespace A078763.P7736610693677969286
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A266216 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078763.P7736610693677969286

namespace A078763

/-- `p?[(n+1)*A266216(n)]` -/
def P7736610693677969286.Spec : Prop :=
  ∀ n, P7736610693677969286.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P4464428837583271741

`filter[A130008(n), A266377(#)]`
-/

namespace A078763.P4464428837583271741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266377 (f1 j).toNat = 1) n)

end

end A078763.P4464428837583271741

namespace A078763

/-- `filter[A130008(n), A266377(#)]` -/
def P4464428837583271741.Spec : Prop :=
  ∀ n, P4464428837583271741.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P13104094944244289594

`filter[A130008(n), A267034(#)]`
-/

namespace A078763.P13104094944244289594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130008 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267034 (f1 j).toNat = 1) n)

end

end A078763.P13104094944244289594

namespace A078763

/-- `filter[A130008(n), A267034(#)]` -/
def P13104094944244289594.Spec : Prop :=
  ∀ n, P13104094944244289594.a n = A078763 (n + 1)

end A078763

/-! ## A078763.P18351122807565161614

`eq[A003415(n), A071030(n)]`
-/

namespace A078763.P18351122807565161614
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078763.P18351122807565161614

namespace A078763

/-- `eq[A003415(n), A071030(n)]` -/
def P18351122807565161614.Spec : Prop :=
  ∀ n, (P18351122807565161614.a n : ℤ) = A078763 (n + 1)

end A078763

/-! ## A078763.P11149350903608518

`eq[A018783(n), A071030(n)]`
-/

namespace A078763.P11149350903608518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018783 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071030 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A078763.P11149350903608518

namespace A078763

/-- `eq[A018783(n), A071030(n)]` -/
def P11149350903608518.Spec : Prop :=
  ∀ n, (P11149350903608518.a n : ℤ) = A078763 (n + 1)

end A078763

/-!
# A078764: List primes between (2n)^2 and (2n+1)^2.

The programs for A078764, the canonical program `A078764.P8977416735714257820` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078764 has offset 1).

The definition of A078764 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9041 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078764.P8977416735714257820

`p?[2*(n+3)-round(sqrt(2*(n+3)))]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078764

/-- `p?[2*(n+3)-round(sqrt(2*(n+3)))]` -/
def P8977416735714257820.Spec : Prop :=
  ∀ n, P8977416735714257820.a n = A078764 (n + 1)

theorem P8977416735714257820.correct : P8977416735714257820.Spec := by
  intro n
  simp only [A078764, Nat.add_sub_cancel]

end A078764

/-! ## A078764.P1787865921575051192

`filter[A140237(n+1), A010051(#)]`
-/

namespace A078764.P1787865921575051192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A078764.P1787865921575051192

namespace A078764

/-- `filter[A140237(n+1), A010051(#)]` -/
def P1787865921575051192.Spec : Prop :=
  ∀ n, P1787865921575051192.a n = A078764 (n + 1)

end A078764

/-! ## A078764.P8722382516281912804

`filter[A140237(n+1), A323153(#)]`
-/

namespace A078764.P8722382516281912804
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140237 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323153 (f1 j).toNat = 1) n)

end

end A078764.P8722382516281912804

namespace A078764

/-- `filter[A140237(n+1), A323153(#)]` -/
def P8722382516281912804.Spec : Prop :=
  ∀ n, P8722382516281912804.a n = A078764 (n + 1)

end A078764

/-! ## A078764.P15615688746266647565

`filter[A140237(n+2), A323152(#)]`
-/

namespace A078764.P15615688746266647565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140237 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A078764.P15615688746266647565

namespace A078764

/-- `filter[A140237(n+2), A323152(#)]` -/
def P15615688746266647565.Spec : Prop :=
  ∀ n, P15615688746266647565.a n = A078764 (n + 1)

end A078764

/-! ## A078764.P15675890818788052422

`∩[A053813(n+1), A140237(n+1)]`
-/

namespace A078764.P15675890818788052422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053813 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140237 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P15675890818788052422

namespace A078764

/-- `∩[A053813(n+1), A140237(n+1)]` -/
def P15675890818788052422.Spec : Prop :=
  ∀ n, (P15675890818788052422.a n : ℤ) = A078764 (n + 1)

end A078764

/-! ## A078764.P8753410250441277233

`filter[A001614(n+3), A010051(#)]`
-/

namespace A078764.P8753410250441277233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A078764.P8753410250441277233

namespace A078764

/-- `filter[A001614(n+3), A010051(#)]` -/
def P8753410250441277233.Spec : Prop :=
  ∀ n, P8753410250441277233.a n = A078764 (n + 1)

end A078764

/-! ## A078764.P17393230678364200339

`∩[A001614(n+1), A065091(n+1)]`
-/

namespace A078764.P17393230678364200339
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P17393230678364200339

namespace A078764

/-- `∩[A001614(n+1), A065091(n+1)]` -/
def P17393230678364200339.Spec : Prop :=
  ∀ n, (P17393230678364200339.a n : ℤ) = A078764 (n + 1)

end A078764

/-! ## A078764.P4096771572560443128

`∩[A001614(n+1), A108719(n+1)]`
-/

namespace A078764.P4096771572560443128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P4096771572560443128

namespace A078764

/-- `∩[A001614(n+1), A108719(n+1)]` -/
def P4096771572560443128.Spec : Prop :=
  ∀ n, (P4096771572560443128.a n : ℤ) = A078764 (n + 1)

end A078764

/-! ## A078764.P15014098571515324766

`∩[A001614(n+1), A215848(n+1)]`
-/

namespace A078764.P15014098571515324766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P15014098571515324766

namespace A078764

/-- `∩[A001614(n+1), A215848(n+1)]` -/
def P15014098571515324766.Spec : Prop :=
  ∀ n, (P15014098571515324766.a n : ℤ) = A078764 (n + 1)

end A078764

/-! ## A078764.P6978715655873840714

`∩[A001614(n+1), A351398(n+1)]`
-/

namespace A078764.P6978715655873840714
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001614 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351398 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P6978715655873840714

namespace A078764

/-- `∩[A001614(n+1), A351398(n+1)]` -/
def P6978715655873840714.Spec : Prop :=
  ∀ n, (P6978715655873840714.a n : ℤ) = A078764 (n + 1)

end A078764

/-! ## A078764.P16254298424502112414

`filter[A195437(n+1), A010051(#)]`
-/

namespace A078764.P16254298424502112414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A078764.P16254298424502112414

namespace A078764

/-- `filter[A195437(n+1), A010051(#)]` -/
def P16254298424502112414.Spec : Prop :=
  ∀ n, P16254298424502112414.a n = A078764 (n + 1)

end A078764

/-! ## A078764.P13707423186063848081

`filter[A195437(n+1), A302777(#)]`
-/

namespace A078764.P13707423186063848081
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A302777 (f1 j).toNat = 1) n)

end

end A078764.P13707423186063848081

namespace A078764

/-- `filter[A195437(n+1), A302777(#)]` -/
def P13707423186063848081.Spec : Prop :=
  ∀ n, P13707423186063848081.a n = A078764 (n + 1)

end A078764

/-! ## A078764.P8415950303409916772

`filter[A195437(n+1), A355937(#)]`
-/

namespace A078764.P8415950303409916772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355937 (f1 j).toNat = 1) n)

end

end A078764.P8415950303409916772

namespace A078764

/-- `filter[A195437(n+1), A355937(#)]` -/
def P8415950303409916772.Spec : Prop :=
  ∀ n, P8415950303409916772.a n = A078764 (n + 1)

end A078764

/-! ## A078764.P727806072550193376

`∩[A006005(n+1), A195437(n)]`
-/

namespace A078764.P727806072550193376
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P727806072550193376

namespace A078764

/-- `∩[A006005(n+1), A195437(n)]` -/
def P727806072550193376.Spec : Prop :=
  ∀ n, (P727806072550193376.a n : ℤ) = A078764 (n + 1)

end A078764

/-! ## A078764.P2557985593954221353

`∩[A050150(n+1), A195437(n)]`
-/

namespace A078764.P2557985593954221353
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050150 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P2557985593954221353

namespace A078764

/-- `∩[A050150(n+1), A195437(n)]` -/
def P2557985593954221353.Spec : Prop :=
  ∀ n, (P2557985593954221353.a n : ℤ) = A078764 (n + 1)

end A078764

/-! ## A078764.P11350638667735626708

`∩[A062090(n+1), A195437(n)]`
-/

namespace A078764.P11350638667735626708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062090 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P11350638667735626708

namespace A078764

/-- `∩[A062090(n+1), A195437(n)]` -/
def P11350638667735626708.Spec : Prop :=
  ∀ n, (P11350638667735626708.a n : ℤ) = A078764 (n + 1)

end A078764

/-! ## A078764.P7018793864681177183

`∩[A065091(n+1), A195437(n)]`
-/

namespace A078764.P7018793864681177183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P7018793864681177183

namespace A078764

/-- `∩[A065091(n+1), A195437(n)]` -/
def P7018793864681177183.Spec : Prop :=
  ∀ n, (P7018793864681177183.a n : ℤ) = A078764 (n + 1)

end A078764

/-! ## A078764.P12310440076664607018

`∩[A083249(n+1), A195437(n)]`
-/

namespace A078764.P12310440076664607018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083249 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P12310440076664607018

namespace A078764

/-- `∩[A083249(n+1), A195437(n)]` -/
def P12310440076664607018.Spec : Prop :=
  ∀ n, (P12310440076664607018.a n : ℤ) = A078764 (n + 1)

end A078764

/-! ## A078764.P4848890822570244613

`∩[A108719(n+1), A195437(n)]`
-/

namespace A078764.P4848890822570244613
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108719 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P4848890822570244613

namespace A078764

/-- `∩[A108719(n+1), A195437(n)]` -/
def P4848890822570244613.Spec : Prop :=
  ∀ n, (P4848890822570244613.a n : ℤ) = A078764 (n + 1)

end A078764

/-! ## A078764.P17037274824022133084

`∩[A140475(n+1), A195437(n)]`
-/

namespace A078764.P17037274824022133084
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140475 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195437 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078764.P17037274824022133084

namespace A078764

/-- `∩[A140475(n+1), A195437(n)]` -/
def P17037274824022133084.Spec : Prop :=
  ∀ n, (P17037274824022133084.a n : ℤ) = A078764 (n + 1)

end A078764

/-!
# A078766: Number of primes less than n*phi(n).

The programs for A078766, the canonical program `A078766.P6802936406956990662` is in `Seq.B009.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078766 has offset 1).

The definition of A078766 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000720, A002618, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078766.P6802936406956990662

`A000720(A002618(n+1))`

The canonical program, it is in `Seq.B009.C000`.
-/

namespace A078766

/-- `A000720(A002618(n+1))` -/
def P6802936406956990662.Spec : Prop :=
  ∀ n, P6802936406956990662.a n = A078766 (n + 1)

theorem P6802936406956990662.correct : P6802936406956990662.Spec := by
  intro n
  simp only [A078766, Nat.add_sub_cancel]

end A078766

/-! ## A078766.P5456847427135486972

`A000720((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])`
-/

namespace A078766.P5456847427135486972
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((n + 1 : ℚ) * ((n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f1 n), p : ℕ) : ℚ) * ((∏ p ∈ Nat.primeFactors (f2 n), ((p : ℤ) - 1) : ℤ) : ℚ)))).toNat

end

end A078766.P5456847427135486972

namespace A078766

/-- `A000720((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1])` -/
def P5456847427135486972.Spec : Prop :=
  ∀ n, P5456847427135486972.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P2627961341107263543

`A000720(A000010((n+1)²))`
-/

namespace A078766.P2627961341107263543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A000010 ((n + 1) ^ 2)).toNat

end

end A078766.P2627961341107263543

namespace A078766

/-- `A000720(A000010((n+1)²))` -/
def P2627961341107263543.Spec : Prop :=
  ∀ n, P2627961341107263543.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P6550932585744458625

`A000720(A046151(n+1)+1)`
-/

namespace A078766.P6550932585744458625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046151 (n + 1) + 1).toNat

end

end A078766.P6550932585744458625

namespace A078766

/-- `A000720(A046151(n+1)+1)` -/
def P6550932585744458625.Spec : Prop :=
  ∀ n, P6550932585744458625.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P14827018182201231703

`A000720(A046152(n+1)-1)`
-/

namespace A078766.P14827018182201231703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046152 (n + 1) - 1).toNat

end

end A078766.P14827018182201231703

namespace A078766

/-- `A000720(A046152(n+1)-1)` -/
def P14827018182201231703.Spec : Prop :=
  ∀ n, P14827018182201231703.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P3093723107299833363

`A000720((n+1)*Δ[A002088(n)])`
-/

namespace A078766.P3093723107299833363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A078766.P3093723107299833363

namespace A078766

/-- `A000720((n+1)*Δ[A002088(n)])` -/
def P3093723107299833363.Spec : Prop :=
  ∀ n, P3093723107299833363.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P903966291495371435

`A000720((n+1)*Δ[A005728(n)])`
-/

namespace A078766.P903966291495371435
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005728 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A078766.P903966291495371435

namespace A078766

/-- `A000720((n+1)*Δ[A005728(n)])` -/
def P903966291495371435.Spec : Prop :=
  ∀ n, P903966291495371435.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P17628107766950206562

`A000720((n+1)*A000010(n+1))`
-/

namespace A078766.P17628107766950206562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * A000010 (n + 1)).toNat

end

end A078766.P17628107766950206562

namespace A078766

/-- `A000720((n+1)*A000010(n+1))` -/
def P17628107766950206562.Spec : Prop :=
  ∀ n, P17628107766950206562.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P112190843851671590

`A000720(A053191(n+1)/(n+1))`
-/

namespace A078766.P112190843851671590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((A053191 (n + 1) : ℚ) / (n + 1 : ℚ))).toNat

end

end A078766.P112190843851671590

namespace A078766

/-- `A000720(A053191(n+1)/(n+1))` -/
def P112190843851671590.Spec : Prop :=
  ∀ n, P112190843851671590.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P978286157728841607

`A000720((n+1)*sqrt(A127473(n+1)))`
-/

namespace A078766.P978286157728841607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((n + 1 : ℝ) * Real.sqrt (A127473 (n + 1) : ℝ))).toNat

end

end A078766.P978286157728841607

namespace A078766

/-- `A000720((n+1)*sqrt(A127473(n+1)))` -/
def P978286157728841607.Spec : Prop :=
  ∀ n, P978286157728841607.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P17889070978381738207

`A000720((A109606(n+1)+1)*(n+1))`
-/

namespace A078766.P17889070978381738207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((A109606 (n + 1) + 1) * (n + 1 : ℤ)).toNat

end

end A078766.P17889070978381738207

namespace A078766

/-- `A000720((A109606(n+1)+1)*(n+1))` -/
def P17889070978381738207.Spec : Prop :=
  ∀ n, P17889070978381738207.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P8957201719864361075

`A000720((n+1)*(A039649(n+1)-1))`
-/

namespace A078766.P8957201719864361075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * (A039649 (n + 1) - 1)).toNat

end

end A078766.P8957201719864361075

namespace A078766

/-- `A000720((n+1)*(A039649(n+1)-1))` -/
def P8957201719864361075.Spec : Prop :=
  ∀ n, P8957201719864361075.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P12599524588950218234

`A000720(Δ[A206297(n+1)/2]*(n+1))`
-/

namespace A078766.P12599524588950218234
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A206297 (n + 1) : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (SequenceMachineLib.roundAway ((f1 (n + 1) - f1 n) * (n + 1 : ℚ))).toNat

end

end A078766.P12599524588950218234

namespace A078766

/-- `A000720(Δ[A206297(n+1)/2]*(n+1))` -/
def P12599524588950218234.Spec : Prop :=
  ∀ n, P12599524588950218234.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P11856172097701379880

`A000720(lcm(n+1, A000010(∑[n+1+n])))`
-/

namespace A078766.P11856172097701379880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (Int.lcm (n + 1 : ℤ) (A000010 (∑ j ∈ Finset.range (n + 1), f1 j)))

end

end A078766.P11856172097701379880

namespace A078766

/-- `A000720(lcm(n+1, A000010(∑[n+1+n])))` -/
def P11856172097701379880.Spec : Prop :=
  ∀ n, P11856172097701379880.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P5320303340576193506

`A000720((n+1)*A354102(A267099(n+1)))`
-/

namespace A078766.P5320303340576193506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 ((n + 1 : ℤ) * A354102 (A267099 (n + 1)).toNat).toNat

end

end A078766.P5320303340576193506

namespace A078766

/-- `A000720((n+1)*A354102(A267099(n+1)))` -/
def P5320303340576193506.Spec : Prop :=
  ∀ n, P5320303340576193506.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P16871276178830793934

`A000720(A046073(n+1)*A060594(n+1)*(n+1))`
-/

namespace A078766.P16871276178830793934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A046073 (n + 1) * A060594 (n + 1) * (n + 1 : ℤ)).toNat

end

end A078766.P16871276178830793934

namespace A078766

/-- `A000720(A046073(n+1)*A060594(n+1)*(n+1))` -/
def P16871276178830793934.Spec : Prop :=
  ∀ n, P16871276178830793934.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P13678471486170403269

`A070804((n+1)²)`
-/

namespace A078766.P13678471486170403269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070804 ((n + 1) ^ 2)

end

end A078766.P13678471486170403269

namespace A078766

/-- `A070804((n+1)²)` -/
def P13678471486170403269.Spec : Prop :=
  ∀ n, P13678471486170403269.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P7185957610184825397

`A000720(A127705((n+1)²))`
-/

namespace A078766.P7185957610184825397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A127705 ((n + 1) ^ 2)).toNat

end

end A078766.P7185957610184825397

namespace A078766

/-- `A000720(A127705((n+1)²))` -/
def P7185957610184825397.Spec : Prop :=
  ∀ n, P7185957610184825397.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P2760363324545558817

`A230980(A078773((n+1)²))`
-/

namespace A078766.P2760363324545558817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A078773 ((n + 1) ^ 2)).toNat

end

end A078766.P2760363324545558817

namespace A078766

/-- `A230980(A078773((n+1)²))` -/
def P2760363324545558817.Spec : Prop :=
  ∀ n, P2760363324545558817.a n = A078766 (n + 1)

end A078766

/-! ## A078766.P3743537189595367616

`A230980(A000010(∑[2*n+1]))`
-/

namespace A078766.P3743537189595367616
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230980 (A000010 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A078766.P3743537189595367616

namespace A078766

/-- `A230980(A000010(∑[2*n+1]))` -/
def P3743537189595367616.Spec : Prop :=
  ∀ n, P3743537189595367616.a n = A078766 (n + 1)

end A078766

/-!
# A078767: Let f(n) = A003434(n) be the number of iterations of phi needed to reach 1. Then a(n) = max(f(1), f(2), ..., f(n)).

The programs for A078767, there is no canonical definition to state claims against.
-/

/-! ## A078767.P11735163683563073068

`∑[char[A007755(n+2)-1]]`
-/

namespace A078767.P11735163683563073068
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007755 (n + 2) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078767.P11735163683563073068

/-! ## A078767.P13122408062313125846

`A099311(A130865(n+2))`
-/

namespace A078767.P13122408062313125846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099311 (A130865 (n + 2)).toNat

end

end A078767.P13122408062313125846

/-! ## A078767.P13220966231946671683

`A141198(A048656(n+1))`
-/

namespace A078767.P13220966231946671683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141198 (A048656 (n + 1)).toNat

end

end A078767.P13220966231946671683

/-! ## A078767.P9016708001545948455

`∑[A101637(A001107(3*(n+1)))]`
-/

namespace A078767.P9016708001545948455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101637 (A001107 (3 * (n + 1))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A078767.P9016708001545948455

/-! ## A078767.P13622912368203314921

`A002375(A092749(n))`
-/

namespace A078767.P13622912368203314921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A092749 n).toNat

end

end A078767.P13622912368203314921

/-!
# A078768: a(n) is the number of iterations of k -> sigma(k) + 1 needed to reach a prime, or 0 if no prime is reached.

The programs for A078768, there is no canonical definition to state claims against.
-/

/-! ## A078768.P9012851351933633381

`A096636(n)%A124734(A280604(3*(n+1)))`
-/

namespace A078768.P9012851351933633381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A096636 n) (A124734 (A280604 (3 * (n + 1))).toNat)

end

end A078768.P9012851351933633381

/-! ## A078768.P16692480955576551496

`A063641(2*(n+1))%A124734(A280604(3*(n+1)))`
-/

namespace A078768.P16692480955576551496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063641 (2 * (n + 1))) (A124734 (A280604 (3 * (n + 1))).toNat)

end

end A078768.P16692480955576551496

/-!
# A078769: Numbers k such that k * phi(k)^2 < sigma(k)^2.

The programs for A078769, there is no canonical definition to state claims against.
-/

/-! ## A078769.P15405770313859295994

`lt[A048840(n), A048785(n)²]`
-/

namespace A078769.P15405770313859295994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048840 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078769.P15405770313859295994

/-! ## A078769.P10573717977920954969

`lt[A000401(n+1), A048785(n)]`
-/

namespace A078769.P10573717977920954969
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000401 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078769.P10573717977920954969

/-! ## A078769.P6351756848664992455

`lt[A016382(n)+n, A048785(n)]`
-/

namespace A078769.P6351756848664992455
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016382 n + (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A078769.P6351756848664992455

/-! ## A078769.P9045286663551119725

`lt[comp[A048755(n+1)], A048785(n)]`
-/

namespace A078769.P9045286663551119725
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048755 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A078769.P9045286663551119725

/-! ## A078769.P11073606098380823999

`lt[comp[A090995(n+1)], A048785(n)]`
-/

namespace A078769.P11073606098380823999
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090995 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048785 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f3 j) n

end

end A078769.P11073606098380823999

/-!
# A078770: a(n) = the least positive integer k such that k^2 + k + 2*n - 1 is prime.

The programs for A078770, there is no canonical definition to state claims against.
-/

/-! ## A078770.P3867330778757086392

`A175667(A005384(5*n+3))%A000041(A001227(2*n+3))`
-/

namespace A078770.P3867330778757086392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A175667 (A005384 (5 * n + 3)).toNat) (A000041 (A001227 (2 * n + 3)).toNat)

end

end A078770.P3867330778757086392

/-! ## A078770.P14058555465090085588

`A066776(A066805(2*(n+1)))`
-/

namespace A078770.P14058555465090085588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066776 (A066805 (2 * (n + 1))).toNat

end

end A078770.P14058555465090085588

/-! ## A078770.P10890983430769530939

`A066835(A066805(2*(n+1))²)`
-/

namespace A078770.P10890983430769530939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066835 (A066805 (2 * (n + 1)) ^ 2).toNat

end

end A078770.P10890983430769530939

/-! ## A078770.P5183493283949757474

`A001222(5^A066805(2*(n+1)))`
-/

namespace A078770.P5183493283949757474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A066805 (2 * (n + 1)) : ℤ))).toNat

end

end A078770.P5183493283949757474

/-! ## A078770.P9157489759908570236

`A355748(xor(2, A349141(2*n+3)))`
-/

namespace A078770.P9157489759908570236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355748 (Int.xor 2 (A349141 (2 * n + 3))).toNat

end

end A078770.P9157489759908570236

/-!
# A078771: a(n) = A008475(n) - A001414(n).

The programs for A078771, the canonical program `A078771.P8502218742761172896` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078771 has offset 1).

The definition of A078771 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A001414, A008475, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A078771.P8502218742761172896

`A008475(n+1)-A001414(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A078771

/-- `A008475(n+1)-A001414(n+1)` -/
def P8502218742761172896.Spec : Prop :=
  ∀ n, P8502218742761172896.a n = A078771 (n + 1)

theorem P8502218742761172896.correct : P8502218742761172896.Spec := by
  intro n
  simp only [A078771, Nat.add_sub_cancel]

end A078771

/-! ## A078771.P7469704674788400935

`A008475(n+1)-Δ[A025281(n)]`
-/

namespace A078771.P7469704674788400935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - (f1 (n + 1) - f1 n)

end

end A078771.P7469704674788400935

namespace A078771

/-- `A008475(n+1)-Δ[A025281(n)]` -/
def P7469704674788400935.Spec : Prop :=
  ∀ n, P7469704674788400935.a n = A078771 (n + 1)

end A078771

/-! ## A078771.P16217352109938929949

`A075255(n+1)-A086664(n+1)`
-/

namespace A078771.P16217352109938929949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075255 (n + 1) - A086664 (n + 1)

end

end A078771.P16217352109938929949

namespace A078771

/-- `A075255(n+1)-A086664(n+1)` -/
def P16217352109938929949.Spec : Prop :=
  ∀ n, P16217352109938929949.a n = A078771 (n + 1)

end A078771

/-! ## A078771.P12351795341847213699

`A159077(n+1)-A036288(n+1)`
-/

namespace A078771.P12351795341847213699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - A036288 (n + 1)

end

end A078771.P12351795341847213699

namespace A078771

/-- `A159077(n+1)-A036288(n+1)` -/
def P12351795341847213699.Spec : Prop :=
  ∀ n, P12351795341847213699.a n = A078771 (n + 1)

end A078771

/-! ## A078771.P5617825104303771033

`A086665(n+1)-A167515(n+1)`
-/

namespace A078771.P5617825104303771033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086665 (n + 1) - A167515 (n + 1)

end

end A078771.P5617825104303771033

namespace A078771

/-- `A086665(n+1)-A167515(n+1)` -/
def P5617825104303771033.Spec : Prop :=
  ∀ n, P5617825104303771033.a n = A078771 (n + 1)

end A078771

/-! ## A078771.P7711308931828260179

`A159077(n+1)-(Δ[A025281(n)]+1)`
-/

namespace A078771.P7711308931828260179
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025281 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - (f1 (n + 1) - f1 n + 1)

end

end A078771.P7711308931828260179

namespace A078771

/-- `A159077(n+1)-(Δ[A025281(n)]+1)` -/
def P7711308931828260179.Spec : Prop :=
  ∀ n, P7711308931828260179.a n = A078771 (n + 1)

end A078771

/-! ## A078771.P16163643878034702410

`A008475(n+1)+1-A036288(n+1)`
-/

namespace A078771.P16163643878034702410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + (1 - A036288 (n + 1))

end

end A078771.P16163643878034702410

namespace A078771

/-- `A008475(n+1)+1-A036288(n+1)` -/
def P16163643878034702410.Spec : Prop :=
  ∀ n, P16163643878034702410.a n = A078771 (n + 1)

end A078771

/-! ## A078771.P9725677669868420079

`A159077(n+1)-(A001414(n+1)+1)`
-/

namespace A078771.P9725677669868420079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - (A001414 (n + 1) + 1)

end

end A078771.P9725677669868420079

namespace A078771

/-- `A159077(n+1)-(A001414(n+1)+1)` -/
def P9725677669868420079.Spec : Prop :=
  ∀ n, P9725677669868420079.a n = A078771 (n + 1)

end A078771

/-! ## A078771.P16649664496506001060

`A159077(n+1)-(sqrt(A074373(n+1))+1)`
-/

namespace A078771.P16649664496506001060
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A159077 (n + 1) : ℝ) - (Real.sqrt (A074373 (n + 1) : ℝ) + 1)

end

end A078771.P16649664496506001060

namespace A078771

/-- `A159077(n+1)-(sqrt(A074373(n+1))+1)` -/
def P16649664496506001060.Spec : Prop :=
  ∀ n, P16649664496506001060.a n = (A078771 (n + 1) : ℝ)

end A078771

/-! ## A078771.P9174914437496251092

`A008475(n+1)+A075255(n+1)-(n+1)`
-/

namespace A078771.P9174914437496251092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + (A075255 (n + 1) - (n + 1 : ℤ))

end

end A078771.P9174914437496251092

namespace A078771

/-- `A008475(n+1)+A075255(n+1)-(n+1)` -/
def P9174914437496251092.Spec : Prop :=
  ∀ n, P9174914437496251092.a n = A078771 (n + 1)

end A078771

/-! ## A078771.P1815335325518064178

`A008475(n+1)+A025281(n)-A025281(n+1)`
-/

namespace A078771.P1815335325518064178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) + (A025281 n - A025281 (n + 1))

end

end A078771.P1815335325518064178

namespace A078771

/-- `A008475(n+1)+A025281(n)-A025281(n+1)` -/
def P1815335325518064178.Spec : Prop :=
  ∀ n, P1815335325518064178.a n = A078771 (n + 1)

end A078771

/-! ## A078771.P8329230295369866374

`A067240(n+1)+A171453(n+1)-A001414(n+1)`
-/

namespace A078771.P8329230295369866374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067240 (n + 1) + (A171453 (n + 1) - A001414 (n + 1))

end

end A078771.P8329230295369866374

namespace A078771

/-- `A067240(n+1)+A171453(n+1)-A001414(n+1)` -/
def P8329230295369866374.Spec : Prop :=
  ∀ n, P8329230295369866374.a n = A078771 (n + 1)

end A078771

/-! ## A078771.P10142596907162537285

`A159077(n+1)-1-(A025281(n+1)-A025281(n))`
-/

namespace A078771.P10142596907162537285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159077 (n + 1) - 1 - (A025281 (n + 1) - A025281 n)

end

end A078771.P10142596907162537285

namespace A078771

/-- `A159077(n+1)-1-(A025281(n+1)-A025281(n))` -/
def P10142596907162537285.Spec : Prop :=
  ∀ n, P10142596907162537285.a n = A078771 (n + 1)

end A078771

/-! ## A078771.P3041088676142595982

`A008475(n+1)-(A280292(n+1)+A008475(A007947(n+1)))`
-/

namespace A078771.P3041088676142595982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008475 (n + 1) - (A280292 (n + 1) + A008475 (A007947 (n + 1)).toNat)

end

end A078771.P3041088676142595982

namespace A078771

/-- `A008475(n+1)-(A280292(n+1)+A008475(A007947(n+1)))` -/
def P3041088676142595982.Spec : Prop :=
  ∀ n, P3041088676142595982.a n = A078771 (n + 1)

end A078771

/-!
# A078772: a(n) = phi(n-p) where p is largest prime < n, a(1) = a(2) = 1 by convention.

The programs for A078772, the canonical program `A078772.P10417017956842784990` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078772 has offset 1).

The definition of A078772 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078772.P10417017956842784990

`A000010(A175851(abs(1-n)+1))`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A078772

/-- `A000010(A175851(abs(1-n)+1))` -/
def P10417017956842784990.Spec : Prop :=
  ∀ n, P10417017956842784990.a n = A078772 (n + 1)

theorem P10417017956842784990.correct : P10417017956842784990.Spec := by
  intro n
  simp only [A078772, Nat.add_sub_cancel]

end A078772

/-! ## A078772.P461109005639825051

`A000010(A049711(round(acot(n)+n)+1))`
-/

namespace A078772.P461109005639825051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A049711 (SequenceMachineLib.roundAway (SequenceMachineLib.acot (n : ℝ) + (n : ℝ)) + 1).toNat).toNat

end

end A078772.P461109005639825051

namespace A078772

/-- `A000010(A049711(round(acot(n)+n)+1))` -/
def P461109005639825051.Spec : Prop :=
  ∀ n, P461109005639825051.a n = A078772 (n + 1)

end A078772

/-! ## A078772.P6693843782227395014

`A000010(n+1-A078773(A151800(n)))`
-/

namespace A078772.P6693843782227395014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 ((n + 1 : ℤ) - A078773 (A151800 n).toNat).toNat

end

end A078772.P6693843782227395014

namespace A078772

/-- `A000010(n+1-A078773(A151800(n)))` -/
def P6693843782227395014.Spec : Prop :=
  ∀ n, P6693843782227395014.a n = A078772 (n + 1)

end A078772

/-! ## A078772.P11280758595099359065

`A000010(n%A136548(n+1)+1)`
-/

namespace A078772.P11280758595099359065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Int.tmod (n : ℤ) (A136548 (n + 1)) + 1).toNat

end

end A078772.P11280758595099359065

namespace A078772

/-- `A000010(n%A136548(n+1)+1)` -/
def P11280758595099359065.Spec : Prop :=
  ∀ n, P11280758595099359065.a n = A078772 (n + 1)

end A078772

/-! ## A078772.P1825279888689940309

`A000010(A233583(n+2)-A136548(n+1))`
-/

namespace A078772.P1825279888689940309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A233583 (n + 2) - A136548 (n + 1)).toNat

end

end A078772.P1825279888689940309

namespace A078772

/-- `A000010(A233583(n+2)-A136548(n+1))` -/
def P1825279888689940309.Spec : Prop :=
  ∀ n, P1825279888689940309.a n = A078772 (n + 1)

end A078772

/-! ## A078772.P18406518363015303308

`A346018((A000124(n)-1)%A136548(n+1)+1)`
-/

namespace A078772.P18406518363015303308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A346018 (Int.tmod (A000124 n - 1) (A136548 (n + 1)) + 1).toNat

end

end A078772.P18406518363015303308

namespace A078772

/-- `A346018((A000124(n)-1)%A136548(n+1)+1)` -/
def P18406518363015303308.Spec : Prop :=
  ∀ n, P18406518363015303308.a n = A078772 (n + 1)

end A078772

/-!
# A078773: a(n) is the largest prime less than or equal to phi(n), a(1) = a(2) = 0.

The programs for A078773, the canonical program `A078773.P15975746237100641970` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078773 has offset 1).

The definition of A078773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078773.P15975746237100641970

`A182986(A070804(n+1)+1)`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A078773

/-- `A182986(A070804(n+1)+1)` -/
def P15975746237100641970.Spec : Prop :=
  ∀ n, P15975746237100641970.a n = A078773 (n + 1)

theorem P15975746237100641970.correct : P15975746237100641970.Spec := by
  intro n
  simp only [A078773, Nat.add_sub_cancel]

end A078773

/-! ## A078773.P10345747697695432757

`A000040(A033270(A000010(n+1))+1)%(n+1)`
-/

namespace A078773.P10345747697695432757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000040 (A033270 (A000010 (n + 1)).toNat + 1).toNat) (n + 1 : ℤ)

end

end A078773.P10345747697695432757

namespace A078773

/-- `A000040(A033270(A000010(n+1))+1)%(n+1)` -/
def P10345747697695432757.Spec : Prop :=
  ∀ n, P10345747697695432757.a n = A078773 (n + 1)

end A078773

/-! ## A078773.P17094502080868359065

`A136548(A000010(n+1)+1)-C(n, n²)`
-/

namespace A078773.P17094502080868359065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A000010 (n + 1) + 1).toNat - (Nat.choose n (n ^ 2) : ℤ)

end

end A078773.P17094502080868359065

namespace A078773

/-- `A136548(A000010(n+1)+1)-C(n, n²)` -/
def P17094502080868359065.Spec : Prop :=
  ∀ n, P17094502080868359065.a n = A078773 (n + 1)

end A078773

/-! ## A078773.P4382760487929281012

`A136548(A000010(n+1)+1)-A155118(C(2, n+1))`
-/

namespace A078773.P4382760487929281012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136548 (A000010 (n + 1) + 1).toNat - A155118 (Nat.choose 2 (n + 1))

end

end A078773.P4382760487929281012

namespace A078773

/-- `A136548(A000010(n+1)+1)-A155118(C(2, n+1))` -/
def P4382760487929281012.Spec : Prop :=
  ∀ n, P4382760487929281012.a n = A078773 (n + 1)

end A078773

/-! ## A078773.P11645917469045001840

`A136548(A000010(n+1)+1)%A136548(n+1)²`
-/

namespace A078773.P11645917469045001840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A136548 (A000010 (n + 1) + 1).toNat) (A136548 (n + 1) ^ 2)

end

end A078773.P11645917469045001840

namespace A078773

/-- `A136548(A000010(n+1)+1)%A136548(n+1)²` -/
def P11645917469045001840.Spec : Prop :=
  ∀ n, P11645917469045001840.a n = A078773 (n + 1)

end A078773

/-!
# A078774: a(n) = n*phi(n*phi(n)).

The programs for A078774, the canonical program `A078774.P17910062323275838010` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078774 has offset 1).

The definition of A078774 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 366 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078774.P17910062323275838010

`(n+1)*A062570(ceil((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/2))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A078774

/-- `(n+1)*A062570(ceil((n+1)*(n+1)/∏{p}[n+1, #]*∏{p}[n+1, #-1]/2))` -/
def P17910062323275838010.Spec : Prop :=
  ∀ n, P17910062323275838010.a n = A078774 (n + 1)

theorem P17910062323275838010.correct : P17910062323275838010.Spec := by
  intro n
  simp only [A078774, Nat.add_sub_cancel]

end A078774

/-! ## A078774.P5626522290553184281

`(n+1)*A000010(A002618(n+1))`
-/

namespace A078774.P5626522290553184281
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A002618 (n + 1)).toNat

end

end A078774.P5626522290553184281

namespace A078774

/-- `(n+1)*A000010(A002618(n+1))` -/
def P5626522290553184281.Spec : Prop :=
  ∀ n, P5626522290553184281.a n = A078774 (n + 1)

end A078774

/-! ## A078774.P5519974650797116443

`(n+1)*A000010(A000010((n+1)²))`
-/

namespace A078774.P5519974650797116443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A000010 ((n + 1) ^ 2)).toNat

end

end A078774.P5519974650797116443

namespace A078774

/-- `(n+1)*A000010(A000010((n+1)²))` -/
def P5519974650797116443.Spec : Prop :=
  ∀ n, P5519974650797116443.a n = A078774 (n + 1)

end A078774

/-! ## A078774.P16524896436975052684

`(n+1)*A000010(A082473(A327173(n+1)))`
-/

namespace A078774.P16524896436975052684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A082473 (A327173 (n + 1)).toNat).toNat

end

end A078774.P16524896436975052684

namespace A078774

/-- `(n+1)*A000010(A082473(A327173(n+1)))` -/
def P16524896436975052684.Spec : Prop :=
  ∀ n, P16524896436975052684.a n = A078774 (n + 1)

end A078774

/-! ## A078774.P3455956687110656535

`(n+1)*A000010(A327171(A102631(n+1)))`
-/

namespace A078774.P3455956687110656535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A327171 (A102631 (n + 1)).toNat).toNat

end

end A078774.P3455956687110656535

namespace A078774

/-- `(n+1)*A000010(A327171(A102631(n+1)))` -/
def P3455956687110656535.Spec : Prop :=
  ∀ n, P3455956687110656535.a n = A078774 (n + 1)

end A078774

/-! ## A078774.P3108811677149802523

`(n+1)*A000010(A143267(A000217(n+1)))`
-/

namespace A078774.P3108811677149802523
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000010 (A143267 (A000217 (n + 1)).toNat).toNat

end

end A078774.P3108811677149802523

namespace A078774

/-- `(n+1)*A000010(A143267(A000217(n+1)))` -/
def P3108811677149802523.Spec : Prop :=
  ∀ n, P3108811677149802523.a n = A078774 (n + 1)

end A078774

/-! ## A078774.P1562075164779004635

`(n+1)*A010554((n+1)²)`
-/

namespace A078774.P1562075164779004635
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A010554 ((n + 1) ^ 2)

end

end A078774.P1562075164779004635

namespace A078774

/-- `(n+1)*A010554((n+1)²)` -/
def P1562075164779004635.Spec : Prop :=
  ∀ n, P1562075164779004635.a n = A078774 (n + 1)

end A078774

/-! ## A078774.P12517540685110287990

`A002618(A002618(n+1))/A000010(n+1)`
-/

namespace A078774.P12517540685110287990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A002618 (A002618 (n + 1)).toNat : ℚ) / (A000010 (n + 1) : ℚ)

end

end A078774.P12517540685110287990

namespace A078774

/-- `A002618(A002618(n+1))/A000010(n+1)` -/
def P12517540685110287990.Spec : Prop :=
  ∀ n, P12517540685110287990.a n = (A078774 (n + 1) : ℚ)

end A078774

/-! ## A078774.P3346752303288714509

`(n+1)*A384710(A384710((n+1)²))`
-/

namespace A078774.P3346752303288714509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A384710 (A384710 ((n + 1) ^ 2)).toNat

end

end A078774.P3346752303288714509

namespace A078774

/-- `(n+1)*A384710(A384710((n+1)²))` -/
def P3346752303288714509.Spec : Prop :=
  ∀ n, P3346752303288714509.a n = A078774 (n + 1)

end A078774

/-! ## A078774.P9418839906676168735

`A062570((n+1)*A023896(n+1))`
-/

namespace A078774.P9418839906676168735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062570 ((n + 1 : ℤ) * A023896 (n + 1)).toNat

end

end A078774.P9418839906676168735

namespace A078774

/-- `A062570((n+1)*A023896(n+1))` -/
def P9418839906676168735.Spec : Prop :=
  ∀ n, P9418839906676168735.a n = A078774 (n + 1)

end A078774

/-!
# A078776: Numbers k such that phi(k-1) < phi(k) < phi(k+1), where phi is the Euler totient function (A000010).

The programs for A078776, there is no canonical definition to state claims against.
-/

/-! ## A078776.P7842928006813737334

`A161962(n+1)+A004016(A061140(n))`
-/

namespace A078776.P7842928006813737334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1) + A004016 (A061140 n).toNat

end

end A078776.P7842928006813737334

/-! ## A078776.P13162277519254846872

`A161996(A000112(n))+A161962(n+1)`
-/

namespace A078776.P13162277519254846872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161996 (A000112 n).toNat + A161962 (n + 1)

end

end A078776.P13162277519254846872

/-! ## A078776.P16367433137030212048

`A161962(n+1)+A047999(A215587(n))`
-/

namespace A078776.P16367433137030212048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161962 (n + 1) + A047999 (A215587 n).toNat

end

end A078776.P16367433137030212048

/-! ## A078776.P14373220381006494022

`A194333(A081250(n))+A161962(n+1)`
-/

namespace A078776.P14373220381006494022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194333 (A081250 n).toNat + A161962 (n + 1)

end

end A078776.P14373220381006494022

/-! ## A078776.P10273317810700591033

`A161996(A187245(n))+A161962(n+1)`
-/

namespace A078776.P10273317810700591033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161996 (A187245 n).toNat + A161962 (n + 1)

end

end A078776.P10273317810700591033

/-!
# A078778: Numbers n such that n!+1 is a semiprime.

The programs for A078778, there is no canonical definition to state claims against.
-/

/-! ## A078778.P16208965583750296950

`eq[2, A054990(n+1)]+1`
-/

namespace A078778.P16208965583750296950
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078778.P16208965583750296950

/-! ## A078778.P3646559794197067956

`eq[2, round(log2(A064144(n+1)))]+1`
-/

namespace A078778.P3646559794197067956
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.logb 2 (A064144 (n + 1) : ℝ))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078778.P3646559794197067956

/-! ## A078778.P3804120918102238578

`eq[2, A054990(A028310(n))]`
-/

namespace A078778.P3804120918102238578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078778.P3804120918102238578

/-! ## A078778.P2342960349959051089

`A020725(eq[2, A054990(n+1)])`
-/

namespace A078778.P2342960349959051089
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078778.P2342960349959051089

/-! ## A078778.P4522079929337459654

`A065475(eq[2, A054990(n+1)])`
-/

namespace A078778.P4522079929337459654
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054990 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078778.P4522079929337459654

/-!
# A078779: Union of S, 2S and 4S, where S = odd squarefree numbers (A056911).

The programs for A078779, the canonical program `A078779.P13855623010479763473` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078779 has offset 1).

The definition of A078779 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078779.P13855623010479763473

`lt[A078771(n+1), 1]+1`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A078779

/-- `lt[A078771(n+1), 1]+1` -/
def P13855623010479763473.Spec : Prop :=
  ∀ n, (P13855623010479763473.a n : ℤ) = A078779 (n + 1)

theorem P13855623010479763473.correct : P13855623010479763473.Spec := by
  intro n
  simp only [A078779, Nat.add_sub_cancel]

end A078779

/-! ## A078779.P6049835933665875581

`lt[A058190(n+1), 2]+1`
-/

namespace A078779.P6049835933665875581
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058190 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A078779.P6049835933665875581

namespace A078779

/-- `lt[A058190(n+1), 2]+1` -/
def P6049835933665875581.Spec : Prop :=
  ∀ n, (P6049835933665875581.a n : ℤ) = A078779 (n + 1)

end A078779

/-! ## A078779.P7772081241488606194

`lt[A292380(n+1), 2]+1`
-/

namespace A078779.P7772081241488606194
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292380 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A078779.P7772081241488606194

namespace A078779

/-- `lt[A292380(n+1), 2]+1` -/
def P7772081241488606194.Spec : Prop :=
  ∀ n, (P7772081241488606194.a n : ℤ) = A078779 (n + 1)

end A078779

/-! ## A078779.P10064027554379765817

`lt[A336551(n+1), 2]+1`
-/

namespace A078779.P10064027554379765817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336551 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A078779.P10064027554379765817

namespace A078779

/-- `lt[A336551(n+1), 2]+1` -/
def P10064027554379765817.Spec : Prop :=
  ∀ n, (P10064027554379765817.a n : ℤ) = A078779 (n + 1)

end A078779

/-! ## A078779.P15477008329259571729

`record[A005361(n+1)*A007947(n+1)]`
-/

namespace A078779.P15477008329259571729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (n + 1) * A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078779.P15477008329259571729

namespace A078779

/-- `record[A005361(n+1)*A007947(n+1)]` -/
def P15477008329259571729.Spec : Prop :=
  ∀ n, P15477008329259571729.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P9938503747763293442

`∪[2*A005117(n+1), A005117(n+1)]`
-/

namespace A078779.P9938503747763293442
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A005117 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005117 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A078779.P9938503747763293442

namespace A078779

/-- `∪[2*A005117(n+1), A005117(n+1)]` -/
def P9938503747763293442.Spec : Prop :=
  ∀ n, (P9938503747763293442.a n : ℤ) = A078779 (n + 1)

end A078779

/-! ## A078779.P10281251421784409236

`filter[A121684(n+1), A359834(#)]`
-/

namespace A078779.P10281251421784409236
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121684 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A078779.P10281251421784409236

namespace A078779

/-- `filter[A121684(n+1), A359834(#)]` -/
def P10281251421784409236.Spec : Prop :=
  ∀ n, P10281251421784409236.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P6648295168777488959

`filter[A121176(n+1), A359834(#)]`
-/

namespace A078779.P6648295168777488959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A078779.P6648295168777488959

namespace A078779

/-- `filter[A121176(n+1), A359834(#)]` -/
def P6648295168777488959.Spec : Prop :=
  ∀ n, P6648295168777488959.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P1860002302042821067

`filter[A048107(n+1), A353627(#)]`
-/

namespace A078779.P1860002302042821067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A078779.P1860002302042821067

namespace A078779

/-- `filter[A048107(n+1), A353627(#)]` -/
def P1860002302042821067.Spec : Prop :=
  ∀ n, P1860002302042821067.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P2401663103561111472

`filter[A048107(n+1), A353628(#)]`
-/

namespace A078779.P2401663103561111472
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A078779.P2401663103561111472

namespace A078779

/-- `filter[A048107(n+1), A353628(#)]` -/
def P2401663103561111472.Spec : Prop :=
  ∀ n, P2401663103561111472.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P11278439607545971959

`filter[A048107(n+1), A359834(#)]`
-/

namespace A078779.P11278439607545971959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048107 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A078779.P11278439607545971959

namespace A078779

/-- `filter[A048107(n+1), A359834(#)]` -/
def P11278439607545971959.Spec : Prop :=
  ∀ n, P11278439607545971959.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P2303308965984993076

`filter[A122132(n+1), A168181(#)]`
-/

namespace A078779.P2303308965984993076
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A168181 (f1 j).toNat = 1) n)

end

end A078779.P2303308965984993076

namespace A078779

/-- `filter[A122132(n+1), A168181(#)]` -/
def P2303308965984993076.Spec : Prop :=
  ∀ n, P2303308965984993076.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P6722491160758498361

`filter[A122132(n+1), A212793(#)]`
-/

namespace A078779.P6722491160758498361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A078779.P6722491160758498361

namespace A078779

/-- `filter[A122132(n+1), A212793(#)]` -/
def P6722491160758498361.Spec : Prop :=
  ∀ n, P6722491160758498361.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P5819581130118518688

`filter[A122132(n+1), A359471(#)]`
-/

namespace A078779.P5819581130118518688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122132 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A078779.P5819581130118518688

namespace A078779

/-- `filter[A122132(n+1), A359471(#)]` -/
def P5819581130118518688.Spec : Prop :=
  ∀ n, P5819581130118518688.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P1752602720839470469

`filter[A353511(n+1), A212793(#)]`
-/

namespace A078779.P1752602720839470469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A078779.P1752602720839470469

namespace A078779

/-- `filter[A353511(n+1), A212793(#)]` -/
def P1752602720839470469.Spec : Prop :=
  ∀ n, P1752602720839470469.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P1118450925138727200

`filter[A353511(n+1), A359471(#)]`
-/

namespace A078779.P1118450925138727200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A353511 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359471 (f1 j).toNat = 1) n)

end

end A078779.P1118450925138727200

namespace A078779

/-- `filter[A353511(n+1), A359471(#)]` -/
def P1118450925138727200.Spec : Prop :=
  ∀ n, P1118450925138727200.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P6516105016708947110

`filter[A004709(n+1), A353627(#)]`
-/

namespace A078779.P6516105016708947110
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353627 (f1 j).toNat = 1) n)

end

end A078779.P6516105016708947110

namespace A078779

/-- `filter[A004709(n+1), A353627(#)]` -/
def P6516105016708947110.Spec : Prop :=
  ∀ n, P6516105016708947110.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P8532681399541898909

`filter[A004709(n+1), A353628(#)]`
-/

namespace A078779.P8532681399541898909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353628 (f1 j).toNat = 1) n)

end

end A078779.P8532681399541898909

namespace A078779

/-- `filter[A004709(n+1), A353628(#)]` -/
def P8532681399541898909.Spec : Prop :=
  ∀ n, P8532681399541898909.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P14213923328710852295

`filter[A004709(n+1), A359834(#)]`
-/

namespace A078779.P14213923328710852295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A078779.P14213923328710852295

namespace A078779

/-- `filter[A004709(n+1), A359834(#)]` -/
def P14213923328710852295.Spec : Prop :=
  ∀ n, P14213923328710852295.a n = A078779 (n + 1)

end A078779

/-! ## A078779.P13864156435596121245

`filter[A253781(n+1), A359834(#)]`
-/

namespace A078779.P13864156435596121245
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A253781 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359834 (f1 j).toNat = 1) n)

end

end A078779.P13864156435596121245

namespace A078779

/-- `filter[A253781(n+1), A359834(#)]` -/
def P13864156435596121245.Spec : Prop :=
  ∀ n, P13864156435596121245.a n = A078779 (n + 1)

end A078779

/-!
# A078781: Numbers n such that n!-1 is a semiprime.

The programs for A078781, there is no canonical definition to state claims against.
-/

/-! ## A078781.P6982640552683581081

`eq[2, A054991(n+1)]+1`
-/

namespace A078781.P6982640552683581081
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A078781.P6982640552683581081

/-! ## A078781.P13875165339495782420

`eq[2, A054991(A028310(n))]`
-/

namespace A078781.P13875165339495782420
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A078781.P13875165339495782420

/-! ## A078781.P9987483413149760153

`A020725(eq[2, A054991(n+1)])`
-/

namespace A078781.P9987483413149760153
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078781.P9987483413149760153

/-! ## A078781.P13145097456951204360

`A065475(eq[2, A054991(n+1)])`
-/

namespace A078781.P13145097456951204360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078781.P13145097456951204360

/-! ## A078781.P958073401770304821

`A114637(eq[2, A054991(n+1)])`
-/

namespace A078781.P958073401770304821
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054991 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114637 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A078781.P958073401770304821

/-!
# A078782: Nonprimes (A018252) with prime (A000040) subscripts.

The programs for A078782, the canonical program `A078782.P12729689077806731544` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078782 has offset 1).

The definition of A078782 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5113 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078782.P12729689077806731544

`filter[A141437(n+2), A005171(#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A078782

/-- `filter[A141437(n+2), A005171(#)]` -/
def P12729689077806731544.Spec : Prop :=
  ∀ n, P12729689077806731544.a n = A078782 (n + 1)

theorem P12729689077806731544.correct : P12729689077806731544.Spec := by
  intro n
  simp only [A078782, Nat.add_sub_cancel]

end A078782

/-! ## A078782.P1350820560576292998

`filter[A141437(n+2), A066247(#)]`
-/

namespace A078782.P1350820560576292998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141437 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A078782.P1350820560576292998

namespace A078782

/-- `filter[A141437(n+2), A066247(#)]` -/
def P1350820560576292998.Spec : Prop :=
  ∀ n, P1350820560576292998.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P9101966408785699345

`A018252(Δ[A007504(n)])`
-/

namespace A078782.P9101966408785699345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (n + 1) - f1 n).toNat

end

end A078782.P9101966408785699345

namespace A078782

/-- `A018252(Δ[A007504(n)])` -/
def P9101966408785699345.Spec : Prop :=
  ∀ n, P9101966408785699345.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P17223793754775233450

`A002808(record[A037225(n)])`
-/

namespace A078782.P17223793754775233450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078782.P17223793754775233450

namespace A078782

/-- `A002808(record[A037225(n)])` -/
def P17223793754775233450.Spec : Prop :=
  ∀ n, P17223793754775233450.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P9332867260911745471

`A018252(record[A162753(n)])`
-/

namespace A078782.P9332867260911745471
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162753 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A078782.P9332867260911745471

namespace A078782

/-- `A018252(record[A162753(n)])` -/
def P9332867260911745471.Spec : Prop :=
  ∀ n, P9332867260911745471.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P5970423627018095643

`A018252(p?[A259153(n)])`
-/

namespace A078782.P5970423627018095643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259153 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A078782.P5970423627018095643

namespace A078782

/-- `A018252(p?[A259153(n)])` -/
def P5970423627018095643.Spec : Prop :=
  ∀ n, P5970423627018095643.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P10486708565688444046

`A002808(A006093(n+1))`
-/

namespace A078782.P10486708565688444046
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A006093 (n + 1)).toNat

end

end A078782.P10486708565688444046

namespace A078782

/-- `A002808(A006093(n+1))` -/
def P10486708565688444046.Spec : Prop :=
  ∀ n, P10486708565688444046.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P5032855414395064027

`A018252(A000040(n+1))`
-/

namespace A078782.P5032855414395064027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A000040 (n + 1)).toNat

end

end A078782.P5032855414395064027

namespace A078782

/-- `A018252(A000040(n+1))` -/
def P5032855414395064027.Spec : Prop :=
  ∀ n, P5032855414395064027.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P10969536269162462528

`A141468(A008864(n+1))`
-/

namespace A078782.P10969536269162462528
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A008864 (n + 1)).toNat

end

end A078782.P10969536269162462528

namespace A078782

/-- `A141468(A008864(n+1))` -/
def P10969536269162462528.Spec : Prop :=
  ∀ n, P10969536269162462528.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P1556915582486247129

`A141468(A028815(n+1))`
-/

namespace A078782.P1556915582486247129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A028815 (n + 1)).toNat

end

end A078782.P1556915582486247129

namespace A078782

/-- `A141468(A028815(n+1))` -/
def P1556915582486247129.Spec : Prop :=
  ∀ n, P1556915582486247129.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P7507786181137308775

`A018252(A008578(n+2))`
-/

namespace A078782.P7507786181137308775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A008578 (n + 2)).toNat

end

end A078782.P7507786181137308775

namespace A078782

/-- `A018252(A008578(n+2))` -/
def P7507786181137308775.Spec : Prop :=
  ∀ n, P7507786181137308775.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P8118638107120269206

`A018252(A182986(n+2))`
-/

namespace A078782.P8118638107120269206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A182986 (n + 2)).toNat

end

end A078782.P8118638107120269206

namespace A078782

/-- `A018252(A182986(n+2))` -/
def P8118638107120269206.Spec : Prop :=
  ∀ n, P8118638107120269206.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P3971172926426233896

`A141468(A299763(n+2))`
-/

namespace A078782.P3971172926426233896
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A299763 (n + 2)).toNat

end

end A078782.P3971172926426233896

namespace A078782

/-- `A141468(A299763(n+2))` -/
def P3971172926426233896.Spec : Prop :=
  ∀ n, P3971172926426233896.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P5265877166634390075

`A018252(A158611(n+3))`
-/

namespace A078782.P5265877166634390075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A158611 (n + 3)).toNat

end

end A078782.P5265877166634390075

namespace A078782

/-- `A018252(A158611(n+3))` -/
def P5265877166634390075.Spec : Prop :=
  ∀ n, P5265877166634390075.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P13766565445447378403

`A018252(sqrt(A001248(n+1)))`
-/

namespace A078782.P13766565445447378403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway (Real.sqrt (A001248 (n + 1) : ℝ))).toNat

end

end A078782.P13766565445447378403

namespace A078782

/-- `A018252(sqrt(A001248(n+1)))` -/
def P13766565445447378403.Spec : Prop :=
  ∀ n, P13766565445447378403.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P13596589908250468762

`A018252(sqrt(A280076(n+2)))`
-/

namespace A078782.P13596589908250468762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.roundAway (Real.sqrt (A280076 (n + 2) : ℝ))).toNat

end

end A078782.P13596589908250468762

namespace A078782

/-- `A018252(sqrt(A280076(n+2)))` -/
def P13596589908250468762.Spec : Prop :=
  ∀ n, P13596589908250468762.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P9300446168433011235

`A018252(∑[A054541(n+1)])`
-/

namespace A078782.P9300446168433011235
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A078782.P9300446168433011235

namespace A078782

/-- `A018252(∑[A054541(n+1)])` -/
def P9300446168433011235.Spec : Prop :=
  ∀ n, P9300446168433011235.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P9914164987516116738

`A018252(∑[A075526(n)]+1)`
-/

namespace A078782.P9914164987516116738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A078782.P9914164987516116738

namespace A078782

/-- `A018252(∑[A075526(n)]+1)` -/
def P9914164987516116738.Spec : Prop :=
  ∀ n, P9914164987516116738.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P5247398009967431815

`A141468(Δ[A007504(n)]+1)`
-/

namespace A078782.P5247398009967431815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (f1 (n + 1) - f1 n + 1).toNat

end

end A078782.P5247398009967431815

namespace A078782

/-- `A141468(Δ[A007504(n)]+1)` -/
def P5247398009967431815.Spec : Prop :=
  ∀ n, P5247398009967431815.a n = A078782 (n + 1)

end A078782

/-! ## A078782.P9468996989362722547

`A002808(Δ[A007504(n)]-1)`
-/

namespace A078782.P9468996989362722547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (f1 (n + 1) - f1 n - 1).toNat

end

end A078782.P9468996989362722547

namespace A078782

/-- `A002808(Δ[A007504(n)]-1)` -/
def P9468996989362722547.Spec : Prop :=
  ∀ n, P9468996989362722547.a n = A078782 (n + 1)

end A078782

/-!
# A078784: Primes on axis of Ulam square spiral (with rows ... / 7 8 9 / 6 1 2 / 5 4 3 / ... ) with origin at (1).

The programs for A078784, the canonical program `A078784.P6163387431420796965` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078784 has offset 1).

The definition of A078784 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 291 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A078784.P6163387431420796965

`p?[floor(∑[n/2])+1]`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078784

/-- `p?[floor(∑[n/2])+1]` -/
def P6163387431420796965.Spec : Prop :=
  ∀ n, P6163387431420796965.a n = A078784 (n + 1)

theorem P6163387431420796965.correct : P6163387431420796965.Spec := by
  intro n
  simp only [A078784, Nat.add_sub_cancel]

end A078784

/-! ## A078784.P16912559584826081201

`∑{p}[p?[round((∑[n]+1)/2)], #]`
-/

namespace A078784.P16912559584826081201
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((∑ j ∈ Finset.range (n + 1), f3 j + 1 : ℕ) : ℚ) / 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078784.P16912559584826081201

namespace A078784

/-- `∑{p}[p?[round((∑[n]+1)/2)], #]` -/
def P16912559584826081201.Spec : Prop :=
  ∀ n, (P16912559584826081201.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P3856422394141840673

`∏{d}[p?[ceil((C(n, 2)+1)/2)], #]`
-/

namespace A078784.P3856422394141840673
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(Nat.choose n 2 + 1 : ℚ) / 2⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078784.P3856422394141840673

namespace A078784

/-- `∏{d}[p?[ceil((C(n, 2)+1)/2)], #]` -/
def P3856422394141840673.Spec : Prop :=
  ∀ n, (P3856422394141840673.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P5812931698104296604

`∏{p}[p?[floor(C(n, 2)/2)+1], #]`
-/

namespace A078784.P5812931698104296604
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 : ℚ) / 2⌋ + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078784.P5812931698104296604

namespace A078784

/-- `∏{p}[p?[floor(C(n, 2)/2)+1], #]` -/
def P5812931698104296604.Spec : Prop :=
  ∀ n, (P5812931698104296604.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P12244536841351651881

`∏{p}[p?[1-ceil((n-n²)/4)], #]`
-/

namespace A078784.P12244536841351651881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - ⌈((n : ℤ) - (n ^ 2 : ℤ) : ℚ) / 4⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, p

end

end A078784.P12244536841351651881

namespace A078784

/-- `∏{p}[p?[1-ceil((n-n²)/4)], #]` -/
def P12244536841351651881.Spec : Prop :=
  ∀ n, (P12244536841351651881.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P7161166231390233069

`(n%2)!*p?[floor((C(n, 2)+2)/2)]`
-/

namespace A078784.P7161166231390233069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.choose n 2 + 2 : ℚ) / 2⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n % 2) : ℤ) * f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A078784.P7161166231390233069

namespace A078784

/-- `(n%2)!*p?[floor((C(n, 2)+2)/2)]` -/
def P7161166231390233069.Spec : Prop :=
  ∀ n, P7161166231390233069.a n = A078784 (n + 1)

end A078784

/-! ## A078784.P404192191715994850

`∏{d}[p?[A039823(n+1)], #]`
-/

namespace A078784.P404192191715994850
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078784.P404192191715994850

namespace A078784

/-- `∏{d}[p?[A039823(n+1)], #]` -/
def P404192191715994850.Spec : Prop :=
  ∀ n, (P404192191715994850.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P13614818930567369551

`∏{d}[p?[A011848(n+1)+1], #]`
-/

namespace A078784.P13614818930567369551
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011848 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, d

end

end A078784.P13614818930567369551

namespace A078784

/-- `∏{d}[p?[A011848(n+1)+1], #]` -/
def P13614818930567369551.Spec : Prop :=
  ∀ n, (P13614818930567369551.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P12889454758915458800

`∩[A039823(n+1), A045346(n+1)]`
-/

namespace A078784.P12889454758915458800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P12889454758915458800

namespace A078784

/-- `∩[A039823(n+1), A045346(n+1)]` -/
def P12889454758915458800.Spec : Prop :=
  ∀ n, (P12889454758915458800.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P17136507050277025853

`∩[A039823(n+1), A045360(n+1)]`
-/

namespace A078784.P17136507050277025853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045360 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P17136507050277025853

namespace A078784

/-- `∩[A039823(n+1), A045360(n+1)]` -/
def P17136507050277025853.Spec : Prop :=
  ∀ n, (P17136507050277025853.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P14256972058156693999

`∩[A000040(n+1), A039823(n+1)]`
-/

namespace A078784.P14256972058156693999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P14256972058156693999

namespace A078784

/-- `∩[A000040(n+1), A039823(n+1)]` -/
def P14256972058156693999.Spec : Prop :=
  ∀ n, (P14256972058156693999.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P2445283422890933851

`∩[A039823(n+1), A045319(n+1)]`
-/

namespace A078784.P2445283422890933851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P2445283422890933851

namespace A078784

/-- `∩[A039823(n+1), A045319(n+1)]` -/
def P2445283422890933851.Spec : Prop :=
  ∀ n, (P2445283422890933851.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P8989390269415637514

`∩[A039823(n+1), A045344(n+1)]`
-/

namespace A078784.P8989390269415637514
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045344 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P8989390269415637514

namespace A078784

/-- `∩[A039823(n+1), A045344(n+1)]` -/
def P8989390269415637514.Spec : Prop :=
  ∀ n, (P8989390269415637514.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P15260544113051621772

`∩[A039823(n+1), A132630(n+1)]`
-/

namespace A078784.P15260544113051621772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132630 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P15260544113051621772

namespace A078784

/-- `∩[A039823(n+1), A132630(n+1)]` -/
def P15260544113051621772.Spec : Prop :=
  ∀ n, (P15260544113051621772.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P13028228606510745779

`∩[A039823(n+1), A182986(n+1)]`
-/

namespace A078784.P13028228606510745779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P13028228606510745779

namespace A078784

/-- `∩[A039823(n+1), A182986(n+1)]` -/
def P13028228606510745779.Spec : Prop :=
  ∀ n, (P13028228606510745779.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P2711620830523333635

`∩[A039823(n+1), A189710(n+1)]`
-/

namespace A078784.P2711620830523333635
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A189710 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P2711620830523333635

namespace A078784

/-- `∩[A039823(n+1), A189710(n+1)]` -/
def P2711620830523333635.Spec : Prop :=
  ∀ n, (P2711620830523333635.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P16931220161084207677

`∩[A039823(n+1), A197636(n+1)]`
-/

namespace A078784.P16931220161084207677
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A197636 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P16931220161084207677

namespace A078784

/-- `∩[A039823(n+1), A197636(n+1)]` -/
def P16931220161084207677.Spec : Prop :=
  ∀ n, (P16931220161084207677.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P3971621078522526543

`∩[A039823(n+1), A301987(n+1)]`
-/

namespace A078784.P3971621078522526543
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P3971621078522526543

namespace A078784

/-- `∩[A039823(n+1), A301987(n+1)]` -/
def P3971621078522526543.Spec : Prop :=
  ∀ n, (P3971621078522526543.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P2977871389114742782

`∩[A039823(n+1), A070159(n+1)]`
-/

namespace A078784.P2977871389114742782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070159 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P2977871389114742782

namespace A078784

/-- `∩[A039823(n+1), A070159(n+1)]` -/
def P2977871389114742782.Spec : Prop :=
  ∀ n, (P2977871389114742782.a n : ℤ) = A078784 (n + 1)

end A078784

/-! ## A078784.P1703161379127425537

`∩[A039823(n+1), A079603(n+1)]`
-/

namespace A078784.P1703161379127425537
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039823 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079603 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A078784.P1703161379127425537

namespace A078784

/-- `∩[A039823(n+1), A079603(n+1)]` -/
def P1703161379127425537.Spec : Prop :=
  ∀ n, (P1703161379127425537.a n : ℤ) = A078784 (n + 1)

end A078784

/-!
# A078787: a(n) = 101*n + 1.

The programs for A078787, the canonical program `A078787.P12578493435956342852` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078787 has offset 0).

The definition of A078787 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `101*n+1` (program `A078787.P12578493435956342852`, by `A078787.P12578493435956342852.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078787.P12578493435956342852

`101*n+1`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078787

/-- `101*n+1` -/
def P12578493435956342852.Spec : Prop :=
  ∀ n, (P12578493435956342852.a n : ℤ) = A078787 n

theorem P12578493435956342852.correct : P12578493435956342852.Spec := by
  intro n
  simp only [A078787]

end A078787

/-!
# A078788: a(n) is the smallest m > 2 such that (1 - n) mod m = 0, or 0 if no such number exists.

The programs for A078788, there is no canonical definition to state claims against.
-/

/-! ## A078788.P13094337518817577440

`∑{d}[A078701(n+1), #]-1`
-/

namespace A078788.P13094337518817577440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A078788.P13094337518817577440

/-! ## A078788.P16205283047856049730

`xor(1, A057237((n+1)/2^val(n+1, 2)))`
-/

namespace A078788.P16205283047856049730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A057237 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat)

end

end A078788.P16205283047856049730

/-! ## A078788.P982053670078118272

`∑{d}[A020639(∏{p}[2*(n+1), #]/2), #]-1`
-/

namespace A078788.P982053670078118272
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway (((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ) / 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A078788.P982053670078118272

/-! ## A078788.P5679428413412974670

`∑{d}[A020639((n+1)/2^val(n+1, 2)), #]-1`
-/

namespace A078788.P5679428413412974670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A078788.P5679428413412974670

/-! ## A078788.P5683890880859004842

`A001414(A078701(n+1))`
-/

namespace A078788.P5683890880859004842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001414 (A078701 (n + 1)).toNat

end

end A078788.P5683890880859004842

/-! ## A078788.P5421043695250019080

`A090369(A000265(n+1))`
-/

namespace A078788.P5421043695250019080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090369 (A000265 (n + 1)).toNat

end

end A078788.P5421043695250019080

/-! ## A078788.P3753753210107163585

`A078701(n+1)-A036987(n)`
-/

namespace A078788.P3753753210107163585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1) - A036987 n

end

end A078788.P3753753210107163585

/-! ## A078788.P18003888835207023004

`A043545(n)*A078701(n+1)`
-/

namespace A078788.P18003888835207023004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043545 n * A078701 (n + 1)

end

end A078788.P18003888835207023004

/-! ## A078788.P4655043958936204344

`A078701(n+1)%A035109(n)`
-/

namespace A078788.P4655043958936204344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A078701 (n + 1)) (A035109 n)

end

end A078788.P4655043958936204344

/-! ## A078788.P2386190890913400885

`A078701(n+1)-A209229(n+1)`
-/

namespace A078788.P2386190890913400885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1) - A209229 (n + 1)

end

end A078788.P2386190890913400885

/-! ## A078788.P8488141513725821776

`A005069((n+1)/A028234(A000265(n+1)))`
-/

namespace A078788.P8488141513725821776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005069 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (A028234 (A000265 (n + 1)).toNat : ℚ))).toNat

end

end A078788.P8488141513725821776

/-! ## A078788.P9394087681195346313

`A078701(n+1)*A174869(A006530(n+1))`
-/

namespace A078788.P9394087681195346313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078701 (n + 1) * A174869 (A006530 (n + 1)).toNat

end

end A078788.P9394087681195346313

/-! ## A078788.P10215480433150216655

`and(A078701(n+1), A187767(n+1))`
-/

namespace A078788.P10215480433150216655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A078701 (n + 1)) (A187767 (n + 1))

end

end A078788.P10215480433150216655

/-! ## A078788.P14043195043822080412

`A104514(A097053(n+1))`
-/

namespace A078788.P14043195043822080412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104514 (A097053 (n + 1)).toNat

end

end A078788.P14043195043822080412

/-! ## A078788.P9731180565036244448

`A104514(A152691(n+1))`
-/

namespace A078788.P9731180565036244448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104514 (A152691 (n + 1)).toNat

end

end A078788.P9731180565036244448

/-! ## A078788.P15938591474129341232

`A227196(((n+1)/2^val(n+1, 2))²)`
-/

namespace A078788.P15938591474129341232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227196 (SequenceMachineLib.roundAway (((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)) ^ 2)).toNat

end

end A078788.P15938591474129341232

/-! ## A078788.P16185251421035811570

`A111787((n+1)²)`
-/

namespace A078788.P16185251421035811570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111787 ((n + 1) ^ 2)

end

end A078788.P16185251421035811570

/-!
# A078789: Expansion of (1-4*x+2*x^2)/(1-7*x+13*x^2-4*x^3).

The programs for A078789, the canonical program `A078789.P7251997359773278161` is in `Seq.B000.C011`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078789 has offset 0).

The definition of A078789 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-4x+2x^2)/(1-7x+13x^2-4x^3))` (program `A078789.P7251997359773278161`, by `A078789.P7251997359773278161.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078789.P7251997359773278161

`ogf((1-4x+2x^2)/(1-7x+13x^2-4x^3))`

The canonical program, it is in `Seq.B000.C011`.
-/

namespace A078789

/-- `ogf((1-4x+2x^2)/(1-7x+13x^2-4x^3))` -/
def P7251997359773278161.Spec : Prop :=
  ∀ n, P7251997359773278161.a n = A078789 n

theorem P7251997359773278161.correct : P7251997359773278161.Spec := by
  intro n
  simp only [A078789]

end A078789

/-! ## A078789.P7818446671495760384

`7*a(n-1)-13*a(n-2)+4*a(n-3)` with `a(0)=1, a(1)=3, a(2)=10`
-/

namespace A078789.P7818446671495760384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 3, 10] fun n a =>
  7 * a (n - 1) - 13 * a (n - 2) + 4 * a (n - 3)

end

end A078789.P7818446671495760384

namespace A078789

/-- `7*a(n-1)-13*a(n-2)+4*a(n-3)` -/
def P7818446671495760384.Spec : Prop :=
  ∀ n, P7818446671495760384.a n = A078789 n

end A078789

/-! ## A078789.P2612639228864193185

`A052964(2*n)`
-/

namespace A078789.P2612639228864193185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 (2 * n)

end

end A078789.P2612639228864193185

namespace A078789

/-- `A052964(2*n)` -/
def P2612639228864193185.Spec : Prop :=
  ∀ n, P2612639228864193185.a n = A078789 n

end A078789

/-! ## A078789.P2732363486937247357

`A173125(Δ[n²])`
-/

namespace A078789.P2732363486937247357
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173125 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A078789.P2732363486937247357

namespace A078789

/-- `A173125(Δ[n²])` -/
def P2732363486937247357.Spec : Prop :=
  ∀ n, P2732363486937247357.a n = A078789 n

end A078789

/-! ## A078789.P17175611225776169130

`Δ[record[∑[A084179(n)]]]`
-/

namespace A078789.P17175611225776169130
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078789.P17175611225776169130

namespace A078789

/-- `Δ[record[∑[A084179(n)]]]` -/
def P17175611225776169130.Spec : Prop :=
  ∀ n, P17175611225776169130.a n = A078789 n

end A078789

/-! ## A078789.P14127150976071490946

`A095929(n+1)/2`
-/

namespace A078789.P14127150976071490946
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A095929 (n + 1) : ℚ) / 2

end

end A078789.P14127150976071490946

namespace A078789

/-- `A095929(n+1)/2` -/
def P14127150976071490946.Spec : Prop :=
  ∀ n, P14127150976071490946.a n = (A078789 n : ℚ)

end A078789

/-! ## A078789.P12249690186807495222

`A054877(2*(n+1))/2`
-/

namespace A078789.P12249690186807495222
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A054877 (2 * (n + 1)) : ℚ) / 2

end

end A078789.P12249690186807495222

namespace A078789

/-- `A054877(2*(n+1))/2` -/
def P12249690186807495222.Spec : Prop :=
  ∀ n, P12249690186807495222.a n = (A078789 n : ℚ)

end A078789

/-! ## A078789.P4732881803566973881

`A173125(2*(n+1))/2`
-/

namespace A078789.P4732881803566973881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A173125 (2 * (n + 1)) : ℚ) / 2

end

end A078789.P4732881803566973881

namespace A078789

/-- `A173125(2*(n+1))/2` -/
def P4732881803566973881.Spec : Prop :=
  ∀ n, P4732881803566973881.a n = (A078789 n : ℚ)

end A078789

/-! ## A078789.P15108351153361877282

`record[A000045(n+2)-2*a(n-1)]` with `a(0)=1`
-/

namespace A078789.P15108351153361877282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A000045 (n + 2) - 2 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078789.P15108351153361877282

namespace A078789

/-- `record[A000045(n+2)-2*a(n-1)]` -/
def P15108351153361877282.Spec : Prop :=
  ∀ n, P15108351153361877282.a n = A078789 n

end A078789

/-! ## A078789.P11224703754664696614

`a(n-1)+A095930(n)+a(n-1)` with `a(0)=1`
-/

namespace A078789.P11224703754664696614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (A095930 n + a (n - 1))

end

end A078789.P11224703754664696614

namespace A078789

/-- `a(n-1)+A095930(n)+a(n-1)` -/
def P11224703754664696614.Spec : Prop :=
  ∀ n, P11224703754664696614.a n = A078789 n

end A078789

/-! ## A078789.P10039265765454349287

`record[A052964(A004275(n))]`
-/

namespace A078789.P10039265765454349287
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052964 (A004275 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078789.P10039265765454349287

namespace A078789

/-- `record[A052964(A004275(n))]` -/
def P10039265765454349287.Spec : Prop :=
  ∀ n, P10039265765454349287.a n = A078789 n

end A078789

/-! ## A078789.P8596021349831937518

`A102900(n)+A059929(n)`
-/

namespace A078789.P8596021349831937518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102900 n + A059929 n

end

end A078789.P8596021349831937518

namespace A078789

/-- `A102900(n)+A059929(n)` -/
def P8596021349831937518.Spec : Prop :=
  ∀ n, P8596021349831937518.a n = A078789 n

end A078789

/-! ## A078789.P11756448042046837541

`A363773(n)+A064831(n)`
-/

namespace A078789.P11756448042046837541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363773 n + A064831 n

end

end A078789.P11756448042046837541

namespace A078789

/-- `A363773(n)+A064831(n)` -/
def P11756448042046837541.Spec : Prop :=
  ∀ n, P11756448042046837541.a n = A078789 n

end A078789

/-! ## A078789.P4402870431254945126

`record[A084179(n+1)+A084179(n)]`
-/

namespace A078789.P4402870431254945126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084179 (n + 1) + A084179 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078789.P4402870431254945126

namespace A078789

/-- `record[A084179(n+1)+A084179(n)]` -/
def P4402870431254945126.Spec : Prop :=
  ∀ n, P4402870431254945126.a n = A078789 n

end A078789

/-! ## A078789.P13892171119285220680

`A095930(n+1)+A084179(2*n)`
-/

namespace A078789.P13892171119285220680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095930 (n + 1) + A084179 (2 * n)

end

end A078789.P13892171119285220680

namespace A078789

/-- `A095930(n+1)+A084179(2*n)` -/
def P13892171119285220680.Spec : Prop :=
  ∀ n, P13892171119285220680.a n = A078789 n

end A078789

/-! ## A078789.P686405057206996628

`A001519(n+1)-A084179(2*n)`
-/

namespace A078789.P686405057206996628
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001519 (n + 1) - A084179 (2 * n)

end

end A078789.P686405057206996628

namespace A078789

/-- `A001519(n+1)-A084179(2*n)` -/
def P686405057206996628.Spec : Prop :=
  ∀ n, P686405057206996628.a n = A078789 n

end A078789

/-! ## A078789.P6913126515650811977

`A099163(2*n)+A000045(2*n)`
-/

namespace A078789.P6913126515650811977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099163 (2 * n) + A000045 (2 * n)

end

end A078789.P6913126515650811977

namespace A078789

/-- `A099163(2*n)+A000045(2*n)` -/
def P6913126515650811977.Spec : Prop :=
  ∀ n, P6913126515650811977.a n = A078789 n

end A078789

/-! ## A078789.P14481492062572833143

`A000045(Δ[n²])-A084179(2*n)`
-/

namespace A078789.P14481492062572833143
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat - A084179 (2 * n)

end

end A078789.P14481492062572833143

namespace A078789

/-- `A000045(Δ[n²])-A084179(2*n)` -/
def P14481492062572833143.Spec : Prop :=
  ∀ n, P14481492062572833143.a n = A078789 n

end A078789

/-! ## A078789.P2528777016075099704

`Δ[A000045(2*n)]-A084179(2*n)`
-/

namespace A078789.P2528777016075099704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A084179 (2 * n)

end

end A078789.P2528777016075099704

namespace A078789

/-- `Δ[A000045(2*n)]-A084179(2*n)` -/
def P2528777016075099704.Spec : Prop :=
  ∀ n, P2528777016075099704.a n = A078789 n

end A078789

/-!
# A078790: Palindromic primes with successive increasing difference: a(k)-a(k-1) < a(k+1)- a(k).

The programs for A078790, there is no canonical definition to state claims against.
-/

/-! ## A078790.P17215115350030500979

`A327429(n+1)-A000122(A327437(n))`
-/

namespace A078790.P17215115350030500979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327429 (n + 1) - A000122 (A327437 n).toNat

end

end A078790.P17215115350030500979

/-! ## A078790.P4751626466861524121

`A327429(n+1)-A000122(A212027(n+1))`
-/

namespace A078790.P4751626466861524121
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327429 (n + 1) - A000122 (A212027 (n + 1)).toNat

end

end A078790.P4751626466861524121

/-!
# A078791: Expansion of Auxiliary function L(1-m) / 4 in powers of m / 16.

The programs for A078791, there is no canonical definition to state claims against.
-/

/-! ## A078791.P10805620975615846768

`A133181(A132831(n))*A274653(n)`
-/

namespace A078791.P10805620975615846768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133181 (A132831 n).toNat * A274653 n

end

end A078791.P10805620975615846768

/-!
# A078792: Number of unlabeled 3-trees on n vertices.

The programs for A078792, there is no canonical definition to state claims against.
-/

/-! ## A078792.P17700090471280870979

`A358010(A128035(n))`
-/

namespace A078792.P17700090471280870979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358010 (A128035 n).toNat

end

end A078792.P17700090471280870979

/-! ## A078792.P1529953208400747863

`A089868(A078793(n+2))`
-/

namespace A078792.P1529953208400747863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A089868 (A078793 (n + 2)).toNat

end

end A078792.P1529953208400747863

/-! ## A078792.P11394381532764070984

`A060426(A158510(n+1)+1)`
-/

namespace A078792.P11394381532764070984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060426 (A158510 (n + 1) + 1).toNat

end

end A078792.P11394381532764070984

/-! ## A078792.P17781760460400308959

`A185215(A268812(n+1)-2)`
-/

namespace A078792.P17781760460400308959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185215 (A268812 (n + 1) - 2).toNat

end

end A078792.P17781760460400308959

/-! ## A078792.P7434866449349045028

`A302494(A018252(a(n-1)))` with `a(0)=0, a(1)=0, a(2)=1, a(3)=1, a(4)=1, a(5)=2`
-/

namespace A078792.P7434866449349045028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1, 1, 1, 2] fun n a =>
  A302494 (A018252 (a (n - 1)).toNat).toNat

end

end A078792.P7434866449349045028

/-!
# A078793: Number of unlabeled 4-trees on n vertices.

The programs for A078793, there is no canonical definition to state claims against.
-/

/-! ## A078793.P12803340649886409014

`A201702(A024664(n)+2)`
-/

namespace A078793.P12803340649886409014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201702 (A024664 n + 2).toNat

end

end A078793.P12803340649886409014

/-! ## A078793.P10154257766791594663

`A201702(A043316(n+2))`
-/

namespace A078793.P10154257766791594663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201702 (A043316 (n + 2)).toNat

end

end A078793.P10154257766791594663

/-! ## A078793.P11983785736464222416

`A201702(A044913(n+2))`
-/

namespace A078793.P11983785736464222416
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201702 (A044913 (n + 2)).toNat

end

end A078793.P11983785736464222416

/-! ## A078793.P4106723763770127524

`A201702(A061147(n+2))`
-/

namespace A078793.P4106723763770127524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201702 (A061147 (n + 2)).toNat

end

end A078793.P4106723763770127524

/-! ## A078793.P12513883808921852448

`A201702(A061497(n+2))`
-/

namespace A078793.P12513883808921852448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201702 (A061497 (n + 2)).toNat

end

end A078793.P12513883808921852448

/-!
# A078794: a(n) = (-1)^(n+1) * Sum_{k=0..n} 16^k * B(2k) * C(2n+1,2k) where B(k) is the k-th Bernoulli number.

The programs for A078794, there is no canonical definition to state claims against.
-/

/-! ## A078794.P5575715848325981097

`(6*n+9)*A076552(n+1)`
-/

namespace A078794.P5575715848325981097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (6 * n + 9 : ℤ) * A076552 (n + 1)

end

end A078794.P5575715848325981097

/-! ## A078794.P14159040677030427583

`abs(A005843(2*n+3)-A119882(2*n+3))`
-/

namespace A078794.P14159040677030427583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005843 (2 * n + 3) - A119882 (2 * n + 3)|

end

end A078794.P14159040677030427583

/-!
# A078796: a(n) = 2*ceiling(n*phi) - ceiling(n*sqrt(5)) where phi=(1+sqrt(5))/2 is the Golden ratio.

The programs for A078796, the canonical program `A078796.P7191261178392529805` is in `Seq.B000.C012`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A078796 has offset 1).

The definition of A078796 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*ceil((n+1)*ϕ)-ceil((n+1)*sqrt(5))` (program `A078796.P7191261178392529805`, by `A078796.P7191261178392529805.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A078796.P7191261178392529805

`2*ceil((n+1)*ϕ)-ceil((n+1)*sqrt(5))`

The canonical program, it is in `Seq.B000.C012`.
-/

namespace A078796

/-- `2*ceil((n+1)*ϕ)-ceil((n+1)*sqrt(5))` -/
def P7191261178392529805.Spec : Prop :=
  ∀ n, P7191261178392529805.a n = A078796 (n + 1)

theorem P7191261178392529805.correct : P7191261178392529805.Spec := by
  intro n
  simp only [A078796, Nat.add_sub_cancel]

end A078796

/-! ## A078796.P2028495744810610921

`round(n+2-∑[ϕ-A001468(n)])`
-/

namespace A078796.P2028495744810610921
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.goldenRatio - (A001468 n : ℝ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 2 : ℝ) - ∑ j ∈ Finset.range (n + 1), f1 j)

end

end A078796.P2028495744810610921

namespace A078796

/-- `round(n+2-∑[ϕ-A001468(n)])` -/
def P2028495744810610921.Spec : Prop :=
  ∀ n, P2028495744810610921.a n = A078796 (n + 1)

end A078796

/-! ## A078796.P1411137065902633843

`A005206(A214990(n+1)+1)`
-/

namespace A078796.P1411137065902633843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A214990 (n + 1) + 1).toNat

end

end A078796.P1411137065902633843

namespace A078796

/-- `A005206(A214990(n+1)+1)` -/
def P1411137065902633843.Spec : Prop :=
  ∀ n, P1411137065902633843.a n = A078796 (n + 1)

end A078796

/-! ## A078796.P1417829729658675502

`A005206(A214991(n+1)-n)`
-/

namespace A078796.P1417829729658675502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 (A214991 (n + 1) - (n : ℤ)).toNat

end

end A078796.P1417829729658675502

namespace A078796

/-- `A005206(A214991(n+1)-n)` -/
def P1417829729658675502.Spec : Prop :=
  ∀ n, P1417829729658675502.a n = A078796 (n + 1)

end A078796

/-!
# A078797: Sum of square displacements over all self-avoiding n-step walks on a square lattice with the first step specified. Numerator of mean square displacement s(n)=a(n)/A046661(n).

The programs for A078797, there is no canonical definition to state claims against.
-/

/-! ## A078797.P12524570332816224972

`A336448(n+1)/4`
-/

namespace A078797.P12524570332816224972
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336448 (n + 1) : ℚ) / 4

end

end A078797.P12524570332816224972

/-! ## A078797.P3865818226188074629

`Δ[∑[A336448(n)]/4]`
-/

namespace A078797.P3865818226188074629
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336448 n

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f2 j : ℤ) : ℚ) / 4

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A078797.P3865818226188074629

/-! ## A078797.P18270979313664707778

`record[ratio[A336448(A051340(n))]]`
-/

namespace A078797.P18270979313664707778
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336448 (A051340 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078797.P18270979313664707778

/-! ## A078797.P3282838943515562266

`record[ratio[A336448(A152271(n))]]`
-/

namespace A078797.P3282838943515562266
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336448 (A152271 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078797.P3282838943515562266

/-! ## A078797.P847959093289610689

`record[ratio[A336448(A193592(n))]]`
-/

namespace A078797.P847959093289610689
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336448 (A193592 n).toNat

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℚ) / (f2 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A078797.P847959093289610689

/-!
# A078798: Sum of Manhattan distances over all self-avoiding n-step walks on square lattice. Numerator of mean Manhattan displacement s(n) = a(n)/A046661(n).

The programs for A078798, there is no canonical definition to state claims against.
-/

/-! ## A078798.P11979642598779788993

`A205727(A018918(n))`
-/

namespace A078798.P11979642598779788993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205727 (A018918 n).toNat

end

end A078798.P11979642598779788993

/-!
# A078799: Sum of square displacements over all self-avoiding walks on square lattice trapped after n steps.

The programs for A078799, there is no canonical definition to state claims against.
-/

/-! ## A078799.P5841495180740342683

`A130348(5^n)+floor(n-atan(n))`
-/

namespace A078799.P5841495180740342683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130348 (5 ^ n) + ⌊(n : ℝ) - Real.arctan (n : ℝ)⌋

end

end A078799.P5841495180740342683

