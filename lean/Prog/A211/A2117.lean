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
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C009
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C002
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
# A211700: T(n,k)=Number of nonnegative integer arrays of length n+2k-2 with new values introduced in order 0 upwards and every value appearing only in runs of at least k.

The programs for A211700, there is no canonical definition to state claims against.
-/

/-! ## A211700.P2120417639845489206

`A099802(A129116(n+1))+A000007(A282575(n))`
-/

namespace A211700.P2120417639845489206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A129116 (n + 1)).toNat + A000007 (A282575 n).toNat

end

end A211700.P2120417639845489206

/-! ## A211700.P6893085623221111682

`A099802(A129116(n+1)%A129124(n+1))`
-/

namespace A211700.P6893085623221111682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (Int.tmod (A129116 (n + 1)) (A129124 (n + 1))).toNat

end

end A211700.P6893085623221111682

/-! ## A211700.P15386033874389296541

`A099802(A129116(n+1))%A291284(3*(n+1))`
-/

namespace A211700.P15386033874389296541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099802 (A129116 (n + 1)).toNat) (A291284 (3 * (n + 1)))

end

end A211700.P15386033874389296541

/-! ## A211700.P14885852527061521243

`A099802(A129116(n+1))%A006530(A000051(n))`
-/

namespace A211700.P14885852527061521243
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A099802 (A129116 (n + 1)).toNat) (A006530 (A000051 n).toNat)

end

end A211700.P14885852527061521243

/-! ## A211700.P2124237551859072479

`A099802(A129116(n+1))+A000007(A211695(n+1))`
-/

namespace A211700.P2124237551859072479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099802 (A129116 (n + 1)).toNat + A000007 (A211695 (n + 1)).toNat

end

end A211700.P2124237551859072479

/-!
# A211701: Rectangular array by antidiagonals, n >= 1, k >= 1: R(n,k) = n + [n/2] + ... + [n/k], where [ ]=floor.

The programs for A211701, the canonical program `A211701.P11792323660190046403` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211701 has offset 1).

The definition of A211701 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211701.P11792323660190046403

`T(n-1,k-1)+floor((row(n)+1-col(n))/(col(n)+1))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A211701

/-- `T(n-1,k-1)+floor((row(n)+1-col(n))/(col(n)+1))` -/
def P11792323660190046403.Spec : Prop :=
  ∀ n, P11792323660190046403.a n = A211701 (n + 1)

theorem P11792323660190046403.correct : P11792323660190046403.Spec := by
  intro n
  simp only [A211701, Nat.add_sub_cancel]

end A211701

/-! ## A211701.P13278421896310689407

`A211782(n+1)+A122840(A058518(A008723(n)))`
-/

namespace A211701.P13278421896310689407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211782 (n + 1) + A122840 (A058518 (A008723 n).toNat).toNat

end

end A211701.P13278421896310689407

namespace A211701

/-- `A211782(n+1)+A122840(A058518(A008723(n)))` -/
def P13278421896310689407.Spec : Prop :=
  ∀ n, P13278421896310689407.a n = A211701 (n + 1)

end A211701

/-! ## A211701.P3800359530778363546

`A211782(n+1)+A025465(A059922(n))`
-/

namespace A211701.P3800359530778363546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211782 (n + 1) + A025465 (A059922 n).toNat

end

end A211701.P3800359530778363546

namespace A211701

/-- `A211782(n+1)+A025465(A059922(n))` -/
def P3800359530778363546.Spec : Prop :=
  ∀ n, P3800359530778363546.a n = A211701 (n + 1)

end A211701

/-! ## A211701.P9294709296078634700

`A211782(n+1)+A178798(A204621(n))`
-/

namespace A211701.P9294709296078634700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211782 (n + 1) + A178798 (A204621 n).toNat

end

end A211701.P9294709296078634700

namespace A211701

/-- `A211782(n+1)+A178798(A204621(n))` -/
def P9294709296078634700.Spec : Prop :=
  ∀ n, P9294709296078634700.a n = A211701 (n + 1)

end A211701

/-! ## A211701.P535786949606287140

`A211782(n+1)+A096159(A000203(2*n+1)+1)`
-/

namespace A211701.P535786949606287140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211782 (n + 1) + A096159 (A000203 (2 * n + 1) + 1).toNat

end

end A211701.P535786949606287140

namespace A211701

/-- `A211782(n+1)+A096159(A000203(2*n+1)+1)` -/
def P535786949606287140.Spec : Prop :=
  ∀ n, P535786949606287140.a n = A211701 (n + 1)

end A211701

/-!
# A211702: Rectangular array: R(n,k)=[n/F(1)]+[n/F(2)]+...+[n/F(k)], where [ ]=floor and F=A000045 (Fibonacci numbers), by antidiagonals.

The programs for A211702, there is no canonical definition to state claims against.
-/

/-! ## A211702.P6531330170580611856

`A138033(A321331(n))+A004736(n+1)`
-/

namespace A211702.P6531330170580611856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A321331 n).toNat + A004736 (n + 1)

end

end A211702.P6531330170580611856

/-! ## A211702.P1397894149873118643

`A025581(n)+A138033(A321331(n))+1`
-/

namespace A211702.P1397894149873118643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n + (A138033 (A321331 n).toNat + 1)

end

end A211702.P1397894149873118643

/-! ## A211702.P3065936216907170506

`A138033(A321331(n))+sqrt(A055461(n+1))`
-/

namespace A211702.P3065936216907170506
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A138033 (A321331 n).toNat : ℝ) + Real.sqrt (A055461 (n + 1) : ℝ)

end

end A211702.P3065936216907170506

/-! ## A211702.P13162757328753870368

`A138033(A321331(n))+A001511(A036561(n))`
-/

namespace A211702.P13162757328753870368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A321331 n).toNat + A001511 (A036561 n).toNat

end

end A211702.P13162757328753870368

/-! ## A211702.P17072061035950002445

`A138033(A321331(n))+A000005(A130321(n))`
-/

namespace A211702.P17072061035950002445
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138033 (A321331 n).toNat + A000005 (A130321 n).toNat

end

end A211702.P17072061035950002445

/-!
# A211703: a(n) = n + [n/2] + [n/3] + [n/4], where [] = floor.

The programs for A211703, the canonical program `A211703.P7919770344575316131` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211703 has offset 1).

The definition of A211703 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211703.P17519978135463957565

`ogf((1+3x+5x^2+7x^3+5x^4+4x^5)/(1-x^3-x^4+x^7))`
-/

namespace A211703.P17519978135463957565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 3, 5, 7, 5, 4] [1, 0, 0, -1, -1, 0, 0, 1] n

end

end A211703.P17519978135463957565

namespace A211703

/-- `ogf((1+3x+5x^2+7x^3+5x^4+4x^5)/(1-x^3-x^4+x^7))` -/
def P17519978135463957565.Spec : Prop :=
  ∀ n, P17519978135463957565.a n = A211703 (n + 1)

end A211703

/-! ## A211703.P7919770344575316131

`a(n-3)+a(n-4)-a(n-7)` with `a(0)=1, a(1)=3, a(2)=5, a(3)=8, a(4)=9, a(5)=12, a(6)=13`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A211703

/-- `a(n-3)+a(n-4)-a(n-7)` -/
def P7919770344575316131.Spec : Prop :=
  ∀ n, P7919770344575316131.a n = A211703 (n + 1)

theorem P7919770344575316131.correct : P7919770344575316131.Spec := by
  intro n
  simp only [A211703, Nat.add_sub_cancel]

end A211703

/-! ## A211703.P15791872494199248944

`∑[floor(log2(gcd(12, n+1)))+1]`
-/

namespace A211703.P15791872494199248944
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.log 2 (Nat.gcd 12 (n + 1)) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211703.P15791872494199248944

namespace A211703

/-- `∑[floor(log2(gcd(12, n+1)))+1]` -/
def P15791872494199248944.Spec : Prop :=
  ∀ n, (P15791872494199248944.a n : ℤ) = A211703 (n + 1)

end A211703

/-! ## A211703.P14753955935073551831

`∑[∑{d}[n+1, C(#%5, #)]]`
-/

namespace A211703.P14753955935073551831
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose (d % 5) d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211703.P14753955935073551831

namespace A211703

/-- `∑[∑{d}[n+1, C(#%5, #)]]` -/
def P14753955935073551831.Spec : Prop :=
  ∀ n, (P14753955935073551831.a n : ℤ) = A211703 (n + 1)

end A211703

/-! ## A211703.P9036692232828368285

`∑[∑{d}[n+1, round(sqrt(1/#))]]`
-/

namespace A211703.P9036692232828368285
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (Real.sqrt (1 / (d : ℚ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211703.P9036692232828368285

namespace A211703

/-- `∑[∑{d}[n+1, round(sqrt(1/#))]]` -/
def P9036692232828368285.Spec : Prop :=
  ∀ n, P9036692232828368285.a n = A211703 (n + 1)

end A211703

/-! ## A211703.P12800060180725341227

`n+1+floor((n+1)/2)+floor((n+1)/3)+floor((n+1)/4)`
-/

namespace A211703.P12800060180725341227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) + ⌊(n + 1 : ℚ) / 2⌋ + ⌊(n + 1 : ℚ) / 3⌋ + ⌊(n + 1 : ℚ) / 4⌋

end

end A211703.P12800060180725341227

namespace A211703

/-- `n+1+floor((n+1)/2)+floor((n+1)/3)+floor((n+1)/4)` -/
def P12800060180725341227.Spec : Prop :=
  ∀ n, P12800060180725341227.a n = A211703 (n + 1)

end A211703

/-! ## A211703.P10941881060681776176

`∑[A083040(n+1)]`
-/

namespace A211703.P10941881060681776176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211703.P10941881060681776176

namespace A211703

/-- `∑[A083040(n+1)]` -/
def P10941881060681776176.Spec : Prop :=
  ∀ n, P10941881060681776176.a n = A211703 (n + 1)

end A211703

/-! ## A211703.P5713145918399834717

`∑[Δ[A008647(n)]+2]`
-/

namespace A211703.P5713145918399834717
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008647 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211703.P5713145918399834717

namespace A211703

/-- `∑[Δ[A008647(n)]+2]` -/
def P5713145918399834717.Spec : Prop :=
  ∀ n, P5713145918399834717.a n = A211703 (n + 1)

end A211703

/-! ## A211703.P6122853436308211600

`Δ[Δ[A175870(n)]+n²]`
-/

namespace A211703.P6122853436308211600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175870 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + (n ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211703.P6122853436308211600

namespace A211703

/-- `Δ[Δ[A175870(n)]+n²]` -/
def P6122853436308211600.Spec : Prop :=
  ∀ n, P6122853436308211600.a n = A211703 (n + 1)

end A211703

/-!
# A211704: a(n) = n + [n/2] + [n/3] + [n/4] + [n/5], where []=floor.

The programs for A211704, the canonical program `A211704.P9922826517310091637` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211704 has offset 1).

The definition of A211704 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211704.P9922826517310091637

`n+1+floor((n+1)/2)+floor((n+1)/3)+floor((n+1)/4)+floor((n+1)/5)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A211704

/-- `n+1+floor((n+1)/2)+floor((n+1)/3)+floor((n+1)/4)+floor((n+1)/5)` -/
def P9922826517310091637.Spec : Prop :=
  ∀ n, P9922826517310091637.a n = A211704 (n + 1)

theorem P9922826517310091637.correct : P9922826517310091637.Spec := by
  intro n
  simp only [A211704, Nat.add_sub_cancel]

end A211704

/-! ## A211704.P15425498670866820918

`∑[∑{d}[n+1, C(#%6, #)]]`
-/

namespace A211704.P15425498670866820918
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.choose (d % 6) d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211704.P15425498670866820918

namespace A211704

/-- `∑[∑{d}[n+1, C(#%6, #)]]` -/
def P15425498670866820918.Spec : Prop :=
  ∀ n, (P15425498670866820918.a n : ℤ) = A211704 (n + 1)

end A211704

/-! ## A211704.P8107553106845828374

`∑[∑{d}[n+1, round(#^cos(2))]]`
-/

namespace A211704.P8107553106845828374
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway ((d : ℝ) ^ (Real.cos (2 : ℝ)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211704.P8107553106845828374

namespace A211704

/-- `∑[∑{d}[n+1, round(#^cos(2))]]` -/
def P8107553106845828374.Spec : Prop :=
  ∀ n, P8107553106845828374.a n = A211704 (n + 1)

end A211704

/-! ## A211704.P10611533044291325955

`∑[∑{d}[n+1, round(atan(3/#))]]`
-/

namespace A211704.P10611533044291325955
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (Real.arctan (3 / (d : ℚ) : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211704.P10611533044291325955

namespace A211704

/-- `∑[∑{d}[n+1, round(atan(3/#))]]` -/
def P10611533044291325955.Spec : Prop :=
  ∀ n, P10611533044291325955.a n = A211704 (n + 1)

end A211704

/-! ## A211704.P7433140366614675206

`∑[∑{d}[n+1, floor(atan(8/#))]]`
-/

namespace A211704.P7433140366614675206
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌊Real.arctan (8 / (d : ℚ) : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211704.P7433140366614675206

namespace A211704

/-- `∑[∑{d}[n+1, floor(atan(8/#))]]` -/
def P7433140366614675206.Spec : Prop :=
  ∀ n, P7433140366614675206.a n = A211704 (n + 1)

end A211704

/-! ## A211704.P5715982526324079445

`∑[∑{d}[n+1, round(acot(#/3))]]`
-/

namespace A211704.P5715982526324079445
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), SequenceMachineLib.roundAway (SequenceMachineLib.acot ((d : ℚ) / 3 : ℝ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211704.P5715982526324079445

namespace A211704

/-- `∑[∑{d}[n+1, round(acot(#/3))]]` -/
def P5715982526324079445.Spec : Prop :=
  ∀ n, P5715982526324079445.a n = A211704 (n + 1)

end A211704

/-! ## A211704.P9521683422524777284

`∑[Δ[A187325(n)]+1]`
-/

namespace A211704.P9521683422524777284
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187325 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211704.P9521683422524777284

namespace A211704

/-- `∑[Δ[A187325(n)]+1]` -/
def P9521683422524777284.Spec : Prop :=
  ∀ n, P9521683422524777284.a n = A211704 (n + 1)

end A211704

/-!
# A211706: Binary expansion of Sum_{n>=1} A006218(n)*2^(-n).

The programs for A211706, there is no canonical definition to state claims against.
-/

/-! ## A211706.P7287724368397997751

`A286749(A286736(n)-A286707(n+3))`
-/

namespace A211706.P7287724368397997751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286749 (A286736 n - A286707 (n + 3)).toNat

end

end A211706.P7287724368397997751

/-! ## A211706.P15082119998887872826

`A030302(or(A211836(n+1), A255057(n)))`
-/

namespace A211706.P15082119998887872826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030302 (Int.lor (A211836 (n + 1)) (A255057 n)).toNat

end

end A211706.P15082119998887872826

/-! ## A211706.P18072865211683556249

`A250299(12*A250277(n+1))`
-/

namespace A211706.P18072865211683556249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A250299 (12 * A250277 (n + 1)).toNat

end

end A211706.P18072865211683556249

/-! ## A211706.P7160815611851940586

`A272532(A333489(2*n+5)+A007306(n))`
-/

namespace A211706.P7160815611851940586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272532 (A333489 (2 * n + 5) + A007306 n).toNat

end

end A211706.P7160815611851940586

/-! ## A211706.P13246529132870853099

`A377868(A367612(n+4)+A160172(2*(n+1)))`
-/

namespace A211706.P13246529132870853099
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377868 (A367612 (n + 4) + A160172 (2 * (n + 1))).toNat

end

end A211706.P13246529132870853099

/-!
# A211707: Rectangular array: R(n,k)=n+[n/2+1/2]+...+[n/k+1/2], where [ ]=floor and k>=1, by antidiagonals.

The programs for A211707, there is no canonical definition to state claims against.
-/

/-! ## A211707.P6513911402870294001

`A069624(A235610(n+2))`
-/

namespace A211707.P6513911402870294001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069624 (A235610 (n + 2)).toNat

end

end A211707.P6513911402870294001

/-! ## A211707.P16446726699885394588

`A226029(ceil(sqrt(A225987(n+1))))`
-/

namespace A211707.P16446726699885394588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226029 ⌈Real.sqrt (A225987 (n + 1) : ℝ)⌉.toNat

end

end A211707.P16446726699885394588

/-! ## A211707.P15458936280778625509

`A000195(A264313(n+1)+A000934(n))`
-/

namespace A211707.P15458936280778625509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000195 (A264313 (n + 1) + A000934 n).toNat

end

end A211707.P15458936280778625509

/-! ## A211707.P15334018821539471997

`A110591(A260848(n+1))+A057427(n)`
-/

namespace A211707.P15334018821539471997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A260848 (n + 1)).toNat + A057427 n

end

end A211707.P15334018821539471997

/-! ## A211707.P13272486664264011090

`A110591(A260848(n+1))+char[A007318(n)]`
-/

namespace A211707.P13272486664264011090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (A260848 (n + 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A211707.P13272486664264011090

/-!
# A211708: Number of n X 3 nonnegative integer arrays with new values 0 upwards introduced in row major order and every value unique in its row and column.

The programs for A211708, there is no canonical definition to state claims against.
-/

/-! ## A211708.P3294707383337665012

`A211709(∑[n+2]+4)`
-/

namespace A211708.P3294707383337665012
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211709 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A211708.P3294707383337665012

/-! ## A211708.P4189216464764815336

`record[gcd(A211709(n+2), A261765(n))]`
-/

namespace A211708.P4189216464764815336
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A211709 (n + 2)) (A261765 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211708.P4189216464764815336

/-! ## A211708.P3749189032530190516

`lcm(n+1, A211709(A167614(n+1)))`
-/

namespace A211708.P3749189032530190516
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (A211709 (A167614 (n + 1)).toNat)

end

end A211708.P3749189032530190516

/-!
# A211709: T(n,k) = number of n X k nonnegative integer arrays with new values 0 upwards introduced in row major order and every value unique in its row and column.

The programs for A211709, there is no canonical definition to state claims against.
-/

/-! ## A211709.P15097902847450585446

`A324382(A142459(n+1)^A340812(n))`
-/

namespace A211709.P15097902847450585446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324382 (SequenceMachineLib.roundAway ((A142459 (n + 1) : ℚ) ^ (A340812 n : ℤ))).toNat

end

end A211709.P15097902847450585446

/-! ## A211709.P418397731874183588

`A018231(A008459(n))`
-/

namespace A211709.P418397731874183588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018231 (A008459 n).toNat

end

end A211709.P418397731874183588

/-! ## A211709.P4665245642348575330

`A018231(A124216(n))`
-/

namespace A211709.P4665245642348575330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018231 (A124216 n).toNat

end

end A211709.P4665245642348575330

/-! ## A211709.P15665004759736516488

`A118336(A045912(n))`
-/

namespace A211709.P15665004759736516488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118336 (A045912 n).toNat

end

end A211709.P15665004759736516488

/-! ## A211709.P10710765001961492132

`A018231(A157192(n))`
-/

namespace A211709.P10710765001961492132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018231 (A157192 n).toNat

end

end A211709.P10710765001961492132

/-!
# A211710: Number of (n+1) X (n+1) -11..11 symmetric matrices with every 2 X 2 subblock having sum zero and two distinct values.

The programs for A211710, the canonical program `A211710.P13955364698227816698` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211710 has offset 1).

The definition of A211710 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 473 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211710.P7901647080447651797

`ogf((34-22x-28x^2)/(1-2x+x^3))`
-/

namespace A211710.P7901647080447651797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [34, -22, -28] [1, -2, 0, 1] n

end

end A211710.P7901647080447651797

namespace A211710

/-- `ogf((34-22x-28x^2)/(1-2x+x^3))` -/
def P7901647080447651797.Spec : Prop :=
  ∀ n, P7901647080447651797.a n = A211710 (n + 1)

end A211710

/-! ## A211710.P13955364698227816698

`a(n-1)+a(n-2)-16` with `a(0)=34, a(1)=46`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A211710

/-- `a(n-1)+a(n-2)-16` -/
def P13955364698227816698.Spec : Prop :=
  ∀ n, P13955364698227816698.a n = A211710 (n + 1)

theorem P13955364698227816698.correct : P13955364698227816698.Spec := by
  intro n
  simp only [A211710, Nat.add_sub_cancel]

end A211710

/-! ## A211710.P11850891528840943925

`a(n-1)-(16-a(n-2))` with `a(0)=34, a(1)=46`
-/

namespace A211710.P11850891528840943925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [34, 46] fun n a =>
  a (n - 1) - (16 - a (n - 2))

end

end A211710.P11850891528840943925

namespace A211710

/-- `a(n-1)-(16-a(n-2))` -/
def P11850891528840943925.Spec : Prop :=
  ∀ n, P11850891528840943925.a n = A211710 (n + 1)

theorem P11850891528840943925.correct : P11850891528840943925.Spec := by
  intro n
  simp only [A211710, Nat.add_sub_cancel, A211710.P11850891528840943925.a, A211710.P13955364698227816698.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A211710

/-! ## A211710.P10158005793272497490

`A211813(n+1)+2`
-/

namespace A211710.P10158005793272497490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211813 (n + 1) + 2

end

end A211710.P10158005793272497490

namespace A211710

/-- `A211813(n+1)+2` -/
def P10158005793272497490.Spec : Prop :=
  ∀ n, P10158005793272497490.a n = A211710 (n + 1)

end A211710

/-! ## A211710.P1817351371134348734

`A211549(n+1)+3`
-/

namespace A211710.P1817351371134348734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211549 (n + 1) + 3

end

end A211710.P1817351371134348734

namespace A211710

/-- `A211549(n+1)+3` -/
def P1817351371134348734.Spec : Prop :=
  ∀ n, P1817351371134348734.a n = A211710 (n + 1)

end A211710

/-! ## A211710.P10085649726267112603

`6*A048584(n)+4`
-/

namespace A211710.P10085649726267112603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A048584 n + 4

end

end A211710.P10085649726267112603

namespace A211710

/-- `6*A048584(n)+4` -/
def P10085649726267112603.Spec : Prop :=
  ∀ n, P10085649726267112603.a n = A211710 (n + 1)

end A211710

/-! ## A211710.P7776126345578157670

`6*A020706(n)+10`
-/

namespace A211710.P7776126345578157670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  6 * A020706 n + 10

end

end A211710.P7776126345578157670

namespace A211710

/-- `6*A020706(n)+10` -/
def P7776126345578157670.Spec : Prop :=
  ∀ n, P7776126345578157670.a n = A211710 (n + 1)

end A211710

/-! ## A211710.P1753354854508232872

`3*A211322(n+1)+1`
-/

namespace A211710.P1753354854508232872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A211322 (n + 1) + 1

end

end A211710.P1753354854508232872

namespace A211710

/-- `3*A211322(n+1)+1` -/
def P1753354854508232872.Spec : Prop :=
  ∀ n, P1753354854508232872.a n = A211710 (n + 1)

end A211710

/-! ## A211710.P748223282570285855

`3*A211490(n+1)-5`
-/

namespace A211710.P748223282570285855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A211490 (n + 1) - 5

end

end A211710.P748223282570285855

namespace A211710

/-- `3*A211490(n+1)-5` -/
def P748223282570285855.Spec : Prop :=
  ∀ n, P748223282570285855.a n = A211710 (n + 1)

end A211710

/-! ## A211710.P10016841782285696607

`2*(3*(A020701(n)+2)+2)`
-/

namespace A211710.P10016841782285696607
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (3 * (A020701 n + 2) + 2)

end

end A211710.P10016841782285696607

namespace A211710

/-- `2*(3*(A020701(n)+2)+2)` -/
def P10016841782285696607.Spec : Prop :=
  ∀ n, P10016841782285696607.a n = A211710 (n + 1)

end A211710

/-! ## A211710.P15880061984263340122

`3*(2*A000045(n+4)+5)+1`
-/

namespace A211710.P15880061984263340122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * (2 * A000045 (n + 4) + 5) + 1

end

end A211710.P15880061984263340122

namespace A211710

/-- `3*(2*A000045(n+4)+5)+1` -/
def P15880061984263340122.Spec : Prop :=
  ∀ n, P15880061984263340122.a n = A211710 (n + 1)

end A211710

/-! ## A211710.P3436960734653678781

`A211490(n+1)+A211253(n+1)`
-/

namespace A211710.P3436960734653678781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211490 (n + 1) + A211253 (n + 1)

end

end A211710.P3436960734653678781

namespace A211710

/-- `A211490(n+1)+A211253(n+1)` -/
def P3436960734653678781.Spec : Prop :=
  ∀ n, P3436960734653678781.a n = A211710 (n + 1)

end A211710

/-! ## A211710.P15421180124804272330

`A211253(n+1)+A211322(n+1)+2`
-/

namespace A211710.P15421180124804272330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211253 (n + 1) + (A211322 (n + 1) + 2)

end

end A211710.P15421180124804272330

namespace A211710

/-- `A211253(n+1)+A211322(n+1)+2` -/
def P15421180124804272330.Spec : Prop :=
  ∀ n, P15421180124804272330.a n = A211710 (n + 1)

end A211710

/-!
# A211715: Number of (n+1) X (n+1) -11..11 symmetric matrices with every 2 X 2 subblock having sum zero and two or four distinct values.

The programs for A211715, the canonical program `A211715.P383817245176996411` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211715 has offset 1).

The definition of A211715 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 328 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211715.P383817245176996411

`24*2^n+10`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A211715

/-- `24*2^n+10` -/
def P383817245176996411.Spec : Prop :=
  ∀ n, (P383817245176996411.a n : ℤ) = A211715 (n + 1)

theorem P383817245176996411.correct : P383817245176996411.Spec := by
  intro n
  simp only [A211715, Nat.add_sub_cancel]

end A211715

/-! ## A211715.P1458306822253679931

`ogf((34-44x)/(1-3x+2x^2))`
-/

namespace A211715.P1458306822253679931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [34, -44] [1, -3, 2] n

end

end A211715.P1458306822253679931

namespace A211715

/-- `ogf((34-44x)/(1-3x+2x^2))` -/
def P1458306822253679931.Spec : Prop :=
  ∀ n, P1458306822253679931.a n = A211715 (n + 1)

end A211715

/-! ## A211715.P18111785446708598648

`2*(a(n-1)-5)` with `a(0)=34`
-/

namespace A211715.P18111785446708598648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [34] fun n a =>
  2 * (a (n - 1) - 5)

end

end A211715.P18111785446708598648

namespace A211715

/-- `2*(a(n-1)-5)` -/
def P18111785446708598648.Spec : Prop :=
  ∀ n, P18111785446708598648.a n = A211715 (n + 1)

theorem P18111785446708598648.correct : P18111785446708598648.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A211715, Nat.add_sub_cancel, A211715.P18111785446708598648.a, A211715.P383817245176996411.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A211715, Nat.add_sub_cancel, A211715.P18111785446708598648.a, A211715.P383817245176996411.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A211715

/-! ## A211715.P7967903010558488409

`lcm(2, 5-a(n-1))` with `a(0)=34`
-/

namespace A211715.P7967903010558488409
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [34] fun n a =>
  Int.lcm 2 (5 - (a (n - 1) : ℤ))

end

end A211715.P7967903010558488409

namespace A211715

/-- `lcm(2, 5-a(n-1))` -/
def P7967903010558488409.Spec : Prop :=
  ∀ n, (P7967903010558488409.a n : ℤ) = A211715 (n + 1)

end A211715

/-! ## A211715.P11686149424097049192

`A209725(2*(n+4))`
-/

namespace A211715.P11686149424097049192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A209725 (2 * (n + 4))

end

end A211715.P11686149424097049192

namespace A211715

/-- `A209725(2*(n+4))` -/
def P11686149424097049192.Spec : Prop :=
  ∀ n, P11686149424097049192.a n = A211715 (n + 1)

end A211715

/-! ## A211715.P11534302628239603161

`2*(A003461(n+3)+1)`
-/

namespace A211715.P11534302628239603161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A003461 (n + 3) + 1)

end

end A211715.P11534302628239603161

namespace A211715

/-- `2*(A003461(n+3)+1)` -/
def P11534302628239603161.Spec : Prop :=
  ∀ n, P11534302628239603161.a n = A211715 (n + 1)

end A211715

/-! ## A211715.P5869479339655091309

`2*(A146529(n+3)-1)`
-/

namespace A211715.P5869479339655091309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A146529 (n + 3) - 1)

end

end A211715.P5869479339655091309

namespace A211715

/-- `2*(A146529(n+3)-1)` -/
def P5869479339655091309.Spec : Prop :=
  ∀ n, P5869479339655091309.a n = A211715 (n + 1)

end A211715

/-! ## A211715.P6141036792417330533

`2*(A153973(n+3)-1)`
-/

namespace A211715.P6141036792417330533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A153973 (n + 3) - 1)

end

end A211715.P6141036792417330533

namespace A211715

/-- `2*(A153973(n+3)-1)` -/
def P6141036792417330533.Spec : Prop :=
  ∀ n, P6141036792417330533.a n = A211715 (n + 1)

end A211715

/-! ## A211715.P8569349248083304887

`2*(A081808(n+1)+5)`
-/

namespace A211715.P8569349248083304887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081808 (n + 1) + 5)

end

end A211715.P8569349248083304887

namespace A211715

/-- `2*(A081808(n+1)+5)` -/
def P8569349248083304887.Spec : Prop :=
  ∀ n, P8569349248083304887.a n = A211715 (n + 1)

theorem P8569349248083304887.correct : P8569349248083304887.Spec := by
  intro n
  simp only [A211715, Nat.add_sub_cancel, A211715.P8569349248083304887.a, A211715.P383817245176996411.a, A081808, A081808.P2560799609935196517.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211715

/-! ## A211715.P13882519285976574621

`2*(A168614(n+1)+A020714(n+1))`
-/

namespace A211715.P13882519285976574621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A168614 (n + 1) + A020714 (n + 1))

end

end A211715.P13882519285976574621

namespace A211715

/-- `2*(A168614(n+1)+A020714(n+1))` -/
def P13882519285976574621.Spec : Prop :=
  ∀ n, P13882519285976574621.a n = A211715 (n + 1)

theorem P13882519285976574621.correct : P13882519285976574621.Spec := by
  intro n
  simp only [A211715, Nat.add_sub_cancel, A211715.P13882519285976574621.a, A211715.P383817245176996411.a, A020714, A020714.P4672987561035728998.a, A168614, A168614.P8565637346810562881.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211715

/-! ## A211715.P1000549177100995243

`A305062(n+1)/8`
-/

namespace A211715.P1000549177100995243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305062 (n + 1) : ℚ) / 8

end

end A211715.P1000549177100995243

namespace A211715

/-- `A305062(n+1)/8` -/
def P1000549177100995243.Spec : Prop :=
  ∀ n, P1000549177100995243.a n = (A211715 (n + 1) : ℚ)

theorem P1000549177100995243.correct : P1000549177100995243.Spec := by
  intro n
  simp only [A211715, Nat.add_sub_cancel, A211715.P1000549177100995243.a, A211715.P383817245176996411.a, A305062, A305062.P6751208431558569708.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211715

/-! ## A211715.P11861763684748158484

`A304607(n+1)%A304605(n+1)`
-/

namespace A211715.P11861763684748158484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A304607 (n + 1)) (A304605 (n + 1))

end

end A211715.P11861763684748158484

namespace A211715

/-- `A304607(n+1)%A304605(n+1)` -/
def P11861763684748158484.Spec : Prop :=
  ∀ n, P11861763684748158484.a n = A211715 (n + 1)

end A211715

/-!
# A211719: Number of (n+1) X (n+1) -11..11 symmetric matrices with every 2 X 2 subblock having sum zero.

The programs for A211719, there is no canonical definition to state claims against.
-/

/-! ## A211719.P12610947211697659898

`A001021(n+2)+A001020(n+2)`
-/

namespace A211719.P12610947211697659898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001021 (n + 2) + A001020 (n + 2)

end

end A211719.P12610947211697659898

/-! ## A211719.P3032768922597932519

`A034524(n+2)+A024140(n+2)`
-/

namespace A211719.P3032768922597932519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034524 (n + 2) + A024140 (n + 2)

end

end A211719.P3032768922597932519

/-! ## A211719.P18265591141571023620

`Δ[A016125(n+1)+A016123(n+1)]`
-/

namespace A211719.P18265591141571023620
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016125 (n + 1) + A016123 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211719.P18265591141571023620

/-! ## A211719.P6047823905779644134

`Δ[Δ[A014882(n+1)+A014881(n+1)]]`
-/

namespace A211719.P6047823905779644134
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014882 (n + 1) + A014881 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A211719.P6047823905779644134

/-! ## A211719.P831703307166521120

`A210694(eq[10, A193592(n)])`
-/

namespace A211719.P831703307166521120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193592 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211719.P831703307166521120

/-! ## A211719.P14098996688951201898

`A210694(eq[10, A219347(n)])`
-/

namespace A211719.P14098996688951201898
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219347 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210694 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A211719.P14098996688951201898

/-!
# A211720: Number of -3..3 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having four distinct values for every i,j,k<=n.

The programs for A211720, there is no canonical definition to state claims against.
-/

/-! ## A211720.P681722559398716555

`A211721(n+1)-A081808(n+1)`
-/

namespace A211720.P681722559398716555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211721 (n + 1) - A081808 (n + 1)

end

end A211720.P681722559398716555

/-! ## A211720.P18200072944263489928

`A211721(n+1)-A007283(n+2)`
-/

namespace A211720.P18200072944263489928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211721 (n + 1) - A007283 (n + 2)

end

end A211720.P18200072944263489928

/-! ## A211720.P14750648460941870892

`A211721(n+1)-A091629(n+2)`
-/

namespace A211720.P14750648460941870892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211721 (n + 1) - A091629 (n + 2)

end

end A211720.P14750648460941870892

/-!
# A211721: Number of -3..3 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two or four distinct values for every i,j,k<=n.

The programs for A211721, there is no canonical definition to state claims against.
-/

/-! ## A211721.P16079718780023512792

`A211720(n+1)+A081808(n+1)`
-/

namespace A211721.P16079718780023512792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211720 (n + 1) + A081808 (n + 1)

end

end A211721.P16079718780023512792

/-! ## A211721.P3963130313698129136

`A211720(n+1)+A007283(n+2)`
-/

namespace A211721.P3963130313698129136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211720 (n + 1) + A007283 (n + 2)

end

end A211721.P3963130313698129136

/-! ## A211721.P12260804108499325127

`A211720(n+1)+A091629(n+2)`
-/

namespace A211721.P12260804108499325127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211720 (n + 1) + A091629 (n + 2)

end

end A211721.P12260804108499325127

/-!
# A211740: Number of -3..3 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having two, three, four, six or seven distinct values for every i,j,k<=n.

The programs for A211740, there is no canonical definition to state claims against.
-/

/-! ## A211740.P1336367890365428187

`A028310(A211741(n+1)-A174791(n))`
-/

namespace A211740.P1336367890365428187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A211741 (n + 1) - A174791 n).toNat

end

end A211740.P1336367890365428187

/-!
# A211741: Number of -3..3 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having one, two, three, four, six or seven distinct values for every i,j,k<=n.

The programs for A211741, there is no canonical definition to state claims against.
-/

/-! ## A211741.P13211494868715192941

`A028310(A211740(n+1)+A174791(n))`
-/

namespace A211741.P13211494868715192941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A211740 (n + 1) + A174791 n).toNat

end

end A211741.P13211494868715192941

/-!
# A211761: Number of -3..3 arrays x(i) of n+1 elements i=1..n+1 with set{t,u,v in 0,1}((x[i+t]+x[j+u]+x[k+v])*(-1)^(t+u+v)) having one, two, three, four, six, seven or eight distinct values for every i,j,k<=n.

The programs for A211761, there is no canonical definition to state claims against.
-/

/-! ## A211761.P10112690746308476106

`A211760(n+1)+A114172(A081696(n))`
-/

namespace A211761.P10112690746308476106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211760 (n + 1) + A114172 (A081696 n).toNat

end

end A211761.P10112690746308476106

/-!
# A211767: Lesser of twin primes p, p+2 with unique values of sigma(p) and sigma(p+2); sigma(n) = A000203(n) = sum of divisors of n.

The programs for A211767, there is no canonical definition to state claims against.
-/

/-! ## A211767.P16099834837608652311

`A211769(n+1)-2`
-/

namespace A211767.P16099834837608652311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211769 (n + 1) - 2

end

end A211767.P16099834837608652311

/-! ## A211767.P4272445934358758695

`A211678(A004277(n))`
-/

namespace A211767.P4272445934358758695
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (A004277 n).toNat

end

end A211767.P4272445934358758695

/-! ## A211767.P8937931801653449067

`A211678(A004275(n+1))`
-/

namespace A211767.P8937931801653449067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (A004275 (n + 1)).toNat

end

end A211767.P8937931801653449067

/-! ## A211767.P4681488670289217024

`A211678(A004280(n+2)-1)`
-/

namespace A211767.P4681488670289217024
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (A004280 (n + 2) - 1).toNat

end

end A211767.P4681488670289217024

/-! ## A211767.P6311804714280975940

`∩[A001359(n+1), A211678(n+1)]`
-/

namespace A211767.P6311804714280975940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P6311804714280975940

/-! ## A211767.P7088351507708203770

`∩[A211678(n+1), A378983(n+1)]`
-/

namespace A211767.P7088351507708203770
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P7088351507708203770

/-! ## A211767.P1430301742260362491

`∩[A124588(n+1), A211678(n+1)]`
-/

namespace A211767.P1430301742260362491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P1430301742260362491

/-! ## A211767.P16652237937164535558

`∩[A181747(n+1), A211678(n+1)]`
-/

namespace A211767.P16652237937164535558
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P16652237937164535558

/-! ## A211767.P100186847746781476

`∩[A006512(n+1)-2, A211678(n+1)]`
-/

namespace A211767.P100186847746781476
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1) - 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P100186847746781476

/-! ## A211767.P5223809270419807730

`∩[A054799(n+1), A211678(n+1)]`
-/

namespace A211767.P5223809270419807730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P5223809270419807730

/-! ## A211767.P17618578254228815630

`∩[A063700(n+1), A211678(n+1)]`
-/

namespace A211767.P17618578254228815630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P17618578254228815630

/-! ## A211767.P2085466436319537810

`∩[A211678(n+1), A267945(n+1)-2]`
-/

namespace A211767.P2085466436319537810
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267945 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P2085466436319537810

/-! ## A211767.P12980337694641630775

`∩[A211678(n+1), A280255(n+1)]`
-/

namespace A211767.P12980337694641630775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P12980337694641630775

/-! ## A211767.P16841115466725903807

`∩[A063693(n+1), A211678(n+1)]`
-/

namespace A211767.P16841115466725903807
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P16841115466725903807

/-! ## A211767.P11621862868324635598

`∩[A211678(n+1), A339692(n+1)-2]`
-/

namespace A211767.P11621862868324635598
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P11621862868324635598

/-! ## A211767.P13325837075685997074

`∩[A064077(n+1), A211678(n+1)]-2`
-/

namespace A211767.P13325837075685997074
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 2

end

end A211767.P13325837075685997074

/-! ## A211767.P13850391531529551563

`∩[A211678(n+1), A394509(n+1)]`
-/

namespace A211767.P13850391531529551563
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A394509 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P13850391531529551563

/-! ## A211767.P355049475257590003

`∩[A211678(n+1), A395788(n+1)]`
-/

namespace A211767.P355049475257590003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A395788 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P355049475257590003

/-! ## A211767.P13751342368218575338

`∩[A073534(n+1), A211678(n+1)]`
-/

namespace A211767.P13751342368218575338
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P13751342368218575338

/-! ## A211767.P4383048637292957067

`∩[A211678(n+1), A280590(n+1)]`
-/

namespace A211767.P4383048637292957067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211767.P4383048637292957067

/-!
# A211768: G.f. satisfies: A(x) = 1 + x*A(x/A(-x)).

The programs for A211768, there is no canonical definition to state claims against.
-/

/-! ## A211768.P7908546521269979340

`floor(A290386(3*n+5)/69)+1`
-/

namespace A211768.P7908546521269979340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A290386 (3 * n + 5) : ℚ) / 69⌋ + 1

end

end A211768.P7908546521269979340

/-! ## A211768.P2443357704824736215

`A347625(A190162(n))`
-/

namespace A211768.P2443357704824736215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (A190162 n).toNat

end

end A211768.P2443357704824736215

/-! ## A211768.P8240664061520539052

`A347625(A202844(n))`
-/

namespace A211768.P8240664061520539052
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (A202844 n).toNat

end

end A211768.P8240664061520539052

/-! ## A211768.P11953394202096560174

`A347625(A262735(n))`
-/

namespace A211768.P11953394202096560174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347625 (A262735 n).toNat

end

end A211768.P11953394202096560174

/-!
# A211769: Greater of twin primes p, p+2 with unique values of sigma(p) and sigma(p+2); sigma(n) = A000203(n) = sum of divisors of n.

The programs for A211769, there is no canonical definition to state claims against.
-/

/-! ## A211769.P2443726026795564273

`A211767(n+1)+2`
-/

namespace A211769.P2443726026795564273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211767 (n + 1) + 2

end

end A211769.P2443726026795564273

/-! ## A211769.P15509087749471758397

`A211678(A004277(n))+2`
-/

namespace A211769.P15509087749471758397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (A004277 n).toNat + 2

end

end A211769.P15509087749471758397

/-! ## A211769.P13680334414108139270

`A211678(A004275(n+1))+2`
-/

namespace A211769.P13680334414108139270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (A004275 (n + 1)).toNat + 2

end

end A211769.P13680334414108139270

/-! ## A211769.P12686209544147232951

`∩[A211678(n+1), A378983(n+1)]+2`
-/

namespace A211769.P12686209544147232951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A211769.P12686209544147232951

/-! ## A211769.P2828900021622025481

`A211678(A004277(n)+1)`
-/

namespace A211769.P2828900021622025481
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (A004277 n + 1).toNat

end

end A211769.P2828900021622025481

/-! ## A211769.P1123574659662130253

`A211678(A004280(n+2))`
-/

namespace A211769.P1123574659662130253
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (A004280 (n + 2)).toNat

end

end A211769.P1123574659662130253

/-! ## A211769.P15180336778534462312

`∩[A001359(n+1)+2, A211678(n+1)]`
-/

namespace A211769.P15180336778534462312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001359 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211769.P15180336778534462312

/-! ## A211769.P7971358845396698716

`∩[A006512(n+1), A211678(n+1)]`
-/

namespace A211769.P7971358845396698716
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211769.P7971358845396698716

/-! ## A211769.P1054872209235622832

`∩[A124588(n+1)+2, A211678(n+1)]`
-/

namespace A211769.P1054872209235622832
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124588 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211769.P1054872209235622832

/-! ## A211769.P11693168067836590485

`∩[A181747(n+1), A211678(n+1)]+2`
-/

namespace A211769.P11693168067836590485
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181747 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A211769.P11693168067836590485

/-! ## A211769.P7812240371363470243

`∩[A054799(n+1)+2, A211678(n+1)]`
-/

namespace A211769.P7812240371363470243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054799 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211769.P7812240371363470243

/-! ## A211769.P10176424711122290142

`∩[A063700(n+1)+2, A211678(n+1)]`
-/

namespace A211769.P10176424711122290142
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063700 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211769.P10176424711122290142

/-! ## A211769.P5555222845372316249

`∩[A211678(n+1), A267945(n+1)]`
-/

namespace A211769.P5555222845372316249
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267945 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211769.P5555222845372316249

/-! ## A211769.P13764755314682646086

`∩[A211678(n+1), A280255(n+1)+2]`
-/

namespace A211769.P13764755314682646086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280255 (n + 1) + 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211769.P13764755314682646086

/-! ## A211769.P4647451616857744321

`∩[A063693(n+1)+2, A211678(n+1)]`
-/

namespace A211769.P4647451616857744321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063693 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211769.P4647451616857744321

/-! ## A211769.P4900350927944624271

`∩[A211678(n+1), A339692(n+1)]`
-/

namespace A211769.P4900350927944624271
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A339692 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211769.P4900350927944624271

/-! ## A211769.P14056996808428417710

`∩[A064077(n+1), A211678(n+1)]`
-/

namespace A211769.P14056996808428417710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064077 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211769.P14056996808428417710

/-! ## A211769.P2658486509329652759

`∩[A073534(n+1), A211678(n+1)]+2`
-/

namespace A211769.P2658486509329652759
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073534 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A211769.P2658486509329652759

/-! ## A211769.P7399118873257113781

`∩[A211678(n+1), A280590(n+1)]+2`
-/

namespace A211769.P7399118873257113781
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280590 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n + 2

end

end A211769.P7399118873257113781

/-! ## A211769.P834050639810325564

`∩[A211678(n+1), A320391(n+1)]`
-/

namespace A211769.P834050639810325564
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211678 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320391 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211769.P834050639810325564

/-!
# A211771: Nonprime numbers with distinct digits in ascending order.

The programs for A211771, the canonical program `A211771.P2908802160452686432` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211771 has offset 1).

The definition of A211771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 300 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211771.P2908802160452686432

`filter[A009993(n+2), A005171(#)]`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A211771

/-- `filter[A009993(n+2), A005171(#)]` -/
def P2908802160452686432.Spec : Prop :=
  ∀ n, P2908802160452686432.a n = A211771 (n + 1)

theorem P2908802160452686432.correct : P2908802160452686432.Spec := by
  intro n
  simp only [A211771, Nat.add_sub_cancel]

end A211771

/-! ## A211771.P9692413344443268300

`∩[A009993(n+1), A210441(n+1)]`
-/

namespace A211771.P9692413344443268300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211771.P9692413344443268300

namespace A211771

/-- `∩[A009993(n+1), A210441(n+1)]` -/
def P9692413344443268300.Spec : Prop :=
  ∀ n, (P9692413344443268300.a n : ℤ) = A211771 (n + 1)

end A211771

/-! ## A211771.P15345774574202711125

`∩[A009994(n+1), A210441(n+1)]`
-/

namespace A211771.P15345774574202711125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009994 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211771.P15345774574202711125

namespace A211771

/-- `∩[A009994(n+1), A210441(n+1)]` -/
def P15345774574202711125.Spec : Prop :=
  ∀ n, (P15345774574202711125.a n : ℤ) = A211771 (n + 1)

end A211771

/-! ## A211771.P5928654525188504250

`∩[A009993(n+1), A018252(n+1)]`
-/

namespace A211771.P5928654525188504250
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211771.P5928654525188504250

namespace A211771

/-- `∩[A009993(n+1), A018252(n+1)]` -/
def P5928654525188504250.Spec : Prop :=
  ∀ n, (P5928654525188504250.a n : ℤ) = A211771 (n + 1)

end A211771

/-! ## A211771.P16228608973873580904

`∩[A009993(n+1), A259315(n+1)]`
-/

namespace A211771.P16228608973873580904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211771.P16228608973873580904

namespace A211771

/-- `∩[A009993(n+1), A259315(n+1)]` -/
def P16228608973873580904.Spec : Prop :=
  ∀ n, (P16228608973873580904.a n : ℤ) = A211771 (n + 1)

end A211771

/-! ## A211771.P5759074536932847390

`∩[A179308(n+1), A259315(n+1)]`
-/

namespace A211771.P5759074536932847390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179308 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211771.P5759074536932847390

namespace A211771

/-- `∩[A179308(n+1), A259315(n+1)]` -/
def P5759074536932847390.Spec : Prop :=
  ∀ n, (P5759074536932847390.a n : ℤ) = A211771 (n + 1)

end A211771

/-! ## A211771.P9536365491751150682

`record[A191558(A180410(n+1))]`
-/

namespace A211771.P9536365491751150682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A180410 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211771.P9536365491751150682

namespace A211771

/-- `record[A191558(A180410(n+1))]` -/
def P9536365491751150682.Spec : Prop :=
  ∀ n, P9536365491751150682.a n = A211771 (n + 1)

end A211771

/-! ## A211771.P8397225143024802785

`record[A191558(A009993(n+2))]`
-/

namespace A211771.P8397225143024802785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A009993 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211771.P8397225143024802785

namespace A211771

/-- `record[A191558(A009993(n+2))]` -/
def P8397225143024802785.Spec : Prop :=
  ∀ n, P8397225143024802785.a n = A211771 (n + 1)

end A211771

/-! ## A211771.P12116344759906271892

`record[A288469(A180410(n+2))]`
-/

namespace A211771.P12116344759906271892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A180410 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211771.P12116344759906271892

namespace A211771

/-- `record[A288469(A180410(n+2))]` -/
def P12116344759906271892.Spec : Prop :=
  ∀ n, P12116344759906271892.a n = A211771 (n + 1)

end A211771

/-! ## A211771.P1280261025813334515

`record[gcd(A014683(n+1), A180410(n+1))]`
-/

namespace A211771.P1280261025813334515
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A014683 (n + 1)) (A180410 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211771.P1280261025813334515

namespace A211771

/-- `record[gcd(A014683(n+1), A180410(n+1))]` -/
def P1280261025813334515.Spec : Prop :=
  ∀ n, (P1280261025813334515.a n : ℤ) = A211771 (n + 1)

end A211771

/-! ## A211771.P10820501311504939827

`record[A288469(A009993(n+1)+A000007(n))]`
-/

namespace A211771.P10820501311504939827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A009993 (n + 1) + A000007 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211771.P10820501311504939827

namespace A211771

/-- `record[A288469(A009993(n+1)+A000007(n))]` -/
def P10820501311504939827.Spec : Prop :=
  ∀ n, P10820501311504939827.a n = A211771 (n + 1)

end A211771

/-! ## A211771.P4595095987254559817

`eq[A004185(A227362(n+1)), A191558(n+1)]+1`
-/

namespace A211771.P4595095987254559817
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004185 (A227362 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A211771.P4595095987254559817

namespace A211771

/-- `eq[A004185(A227362(n+1)), A191558(n+1)]+1` -/
def P4595095987254559817.Spec : Prop :=
  ∀ n, (P4595095987254559817.a n : ℤ) = A211771 (n + 1)

end A211771

/-!
# A211772: Nonprime numbers all of whose divisors are numbers whose decimal digits are in ascending order.

The programs for A211772, there is no canonical definition to state claims against.
-/

/-! ## A211772.P4776913078805629936

`∩[A190218(n+1), A211771(n+1)]`
-/

namespace A211772.P4776913078805629936
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211771 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211772.P4776913078805629936

/-! ## A211772.P2540257981092749657

`filter[A190218(n+1), A005171(#)]`
-/

namespace A211772.P2540257981092749657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A211772.P2540257981092749657

/-! ## A211772.P15083545801066443481

`∩[A190218(n+1), A210441(n+1)]`
-/

namespace A211772.P15083545801066443481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211772.P15083545801066443481

/-! ## A211772.P17702048452730703955

`∩[A018252(n+1), A190218(n+1)]`
-/

namespace A211772.P17702048452730703955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211772.P17702048452730703955

/-! ## A211772.P2535894159717877643

`∩[A141468(n+1), A190218(n+1)]`
-/

namespace A211772.P2535894159717877643
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211772.P2535894159717877643

/-! ## A211772.P5903918594153303256

`∩[A190218(n+1), A259315(n+1)]`
-/

namespace A211772.P5903918594153303256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190218 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211772.P5903918594153303256

/-! ## A211772.P16858078445627556035

`record[A191558(A190218(n+1))]`
-/

namespace A211772.P16858078445627556035
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191558 (A190218 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211772.P16858078445627556035

/-! ## A211772.P1591310229478376561

`record[A288469(A190218(n+2))]`
-/

namespace A211772.P1591310229478376561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288469 (A190218 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211772.P1591310229478376561

/-!
# A211773: Prime-generating polynomial: a(n) = 2*n^2 - 108*n + 1259.

The programs for A211773, the canonical program `A211773.P11947353139444891531` is in `Seq.B001.C009`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211773 has offset 0).

The definition of A211773 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211773.P11947353139444891531

`∑[A023479(n)+n]+A023478(n)²`

The canonical program, it is in `Seq.B001.C009`.
-/

namespace A211773

/-- `∑[A023479(n)+n]+A023478(n)²` -/
def P11947353139444891531.Spec : Prop :=
  ∀ n, P11947353139444891531.a n = A211773 n

theorem P11947353139444891531.correct : P11947353139444891531.Spec := by
  intro n
  simp only [A211773]

end A211773

/-! ## A211773.P2418270370369868671

`∑[n-A022993(n)]+A023478(n)²`
-/

namespace A211773.P2418270370369868671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A022993 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A023478 n ^ 2

end

end A211773.P2418270370369868671

namespace A211773

/-- `∑[n-A022993(n)]+A023478(n)²` -/
def P2418270370369868671.Spec : Prop :=
  ∀ n, P2418270370369868671.a n = A211773 n

theorem P2418270370369868671.correct : P2418270370369868671.Spec := by
  intro n
  simp only [A211773, Nat.add_sub_cancel, A211773.P2418270370369868671.f1, A211773.P2418270370369868671.a, A211773.P11947353139444891531.f1, A211773.P11947353139444891531.a, A022993, A022993.P158035326040483607.a, A023478, A023478.P13335276018786921324.a, A023479, A023479.P6128352249614289451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211773

/-! ## A211773.P15680224860153278480

`∑[A023480(n)+n+1]+A023478(n)²`
-/

namespace A211773.P15680224860153278480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023480 n + (n + 1 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A023478 n ^ 2

end

end A211773.P15680224860153278480

namespace A211773

/-- `∑[A023480(n)+n+1]+A023478(n)²` -/
def P15680224860153278480.Spec : Prop :=
  ∀ n, P15680224860153278480.a n = A211773 n

theorem P15680224860153278480.correct : P15680224860153278480.Spec := by
  intro n
  simp only [A211773, Nat.add_sub_cancel, A211773.P15680224860153278480.f1, A211773.P15680224860153278480.a, A211773.P11947353139444891531.f1, A211773.P11947353139444891531.a, A023478, A023478.P13335276018786921324.a, A023479, A023479.P6128352249614289451.a, A023480, A023480.P15874114386161469736.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211773

/-! ## A211773.P4074810085565060192

`∑[A023478(n)+A023443(n)]+A023478(n)²`
-/

namespace A211773.P4074810085565060192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 n + A023443 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A023478 n ^ 2

end

end A211773.P4074810085565060192

namespace A211773

/-- `∑[A023478(n)+A023443(n)]+A023478(n)²` -/
def P4074810085565060192.Spec : Prop :=
  ∀ n, P4074810085565060192.a n = A211773 n

theorem P4074810085565060192.correct : P4074810085565060192.Spec := by
  intro n
  simp only [A211773, Nat.add_sub_cancel, A211773.P4074810085565060192.f1, A211773.P4074810085565060192.a, A211773.P11947353139444891531.f1, A211773.P11947353139444891531.a, A023443, A023443.P2966051066474347068.a, A023478, A023478.P13335276018786921324.a, A023479, A023479.P6128352249614289451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211773

/-! ## A211773.P13316077097094648132

`A211775(n+26)`
-/

namespace A211773.P13316077097094648132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211775 (n + 26)

end

end A211773.P13316077097094648132

namespace A211773

/-- `A211775(n+26)` -/
def P13316077097094648132.Spec : Prop :=
  ∀ n, P13316077097094648132.a n = A211773 n

end A211773

/-! ## A211773.P13641543980786718088

`∑[A023479(2*n)]+A023478(n)²`
-/

namespace A211773.P13641543980786718088
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023479 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A023478 n ^ 2

end

end A211773.P13641543980786718088

namespace A211773

/-- `∑[A023479(2*n)]+A023478(n)²` -/
def P13641543980786718088.Spec : Prop :=
  ∀ n, P13641543980786718088.a n = A211773 n

theorem P13641543980786718088.correct : P13641543980786718088.Spec := by
  intro n
  simp only [A211773, Nat.add_sub_cancel, A211773.P13641543980786718088.f1, A211773.P13641543980786718088.a, A211773.P11947353139444891531.f1, A211773.P11947353139444891531.a, A023478, A023478.P13335276018786921324.a, A023479, A023479.P6128352249614289451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211773

/-! ## A211773.P13079431065470028919

`∑[A023479(2*n)]+A023479(n+1)²`
-/

namespace A211773.P13079431065470028919
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023479 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + A023479 (n + 1) ^ 2

end

end A211773.P13079431065470028919

namespace A211773

/-- `∑[A023479(2*n)]+A023479(n+1)²` -/
def P13079431065470028919.Spec : Prop :=
  ∀ n, P13079431065470028919.a n = A211773 n

theorem P13079431065470028919.correct : P13079431065470028919.Spec := by
  intro n
  simp only [A211773, Nat.add_sub_cancel, A211773.P13079431065470028919.f1, A211773.P13079431065470028919.a, A211773.P11947353139444891531.f1, A211773.P11947353139444891531.a, A023478, A023478.P13335276018786921324.a, A023479, A023479.P6128352249614289451.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211773

/-! ## A211773.P9463606779531863987

`A022993(n+1)²-∑[A022993(2*n)]`
-/

namespace A211773.P9463606779531863987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022993 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022993 (n + 1) ^ 2 - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211773.P9463606779531863987

namespace A211773

/-- `A022993(n+1)²-∑[A022993(2*n)]` -/
def P9463606779531863987.Spec : Prop :=
  ∀ n, P9463606779531863987.a n = A211773 n

end A211773

/-! ## A211773.P3142189621539481201

`A023478(2*n)*A023478(n+1)-(2*n+1)`
-/

namespace A211773.P3142189621539481201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023478 (2 * n) * A023478 (n + 1) - (2 * n + 1 : ℤ)

end

end A211773.P3142189621539481201

namespace A211773

/-- `A023478(2*n)*A023478(n+1)-(2*n+1)` -/
def P3142189621539481201.Spec : Prop :=
  ∀ n, P3142189621539481201.a n = A211773 n

end A211773

/-!
# A211774: Number of rooted 2-regular labeled graphs on n nodes.

The programs for A211774, there is no canonical definition to state claims against.
-/

/-! ## A211774.P1305046005231556716

`n*A001205(n)`
-/

namespace A211774.P1305046005231556716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A001205 n

end

end A211774.P1305046005231556716

/-! ## A211774.P13793448919840791691

`n*A144161(∑[n]+n)`
-/

namespace A211774.P13793448919840791691
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144161 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A211774.P13793448919840791691

/-! ## A211774.P15382775487627889359

`n*(A144161(A000096(n))+1)-n`
-/

namespace A211774.P15382775487627889359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A144161 (A000096 n).toNat + 1) - (n : ℤ)

end

end A211774.P15382775487627889359

/-! ## A211774.P16407023939802503694

`A144161(C(n+3, 2)-2)-A001205(n)`
-/

namespace A211774.P16407023939802503694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144161 (Nat.choose (n + 3) 2 - 2) - A001205 n

end

end A211774.P16407023939802503694

/-! ## A211774.P14511491379626114466

`n*A144161(A034856(n+1))/(n+1)`
-/

namespace A211774.P14511491379626114466
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) * ((A144161 (A034856 (n + 1)).toNat : ℚ) / (n + 1 : ℚ))

end

end A211774.P14511491379626114466

/-! ## A211774.P5268351155190495692

`A144161(A034856(n+1))-A001205(n)`
-/

namespace A211774.P5268351155190495692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144161 (A034856 (n + 1)).toNat - A001205 n

end

end A211774.P5268351155190495692

/-! ## A211774.P12987088445521751489

`n*gcd(A000038(n), A144161(A000096(n)))`
-/

namespace A211774.P12987088445521751489
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Int.gcd (A000038 n) (A144161 (A000096 n).toNat)

end

end A211774.P12987088445521751489

/-! ## A211774.P1402539166203200003

`n*or(A000007(n), A144161(A000096(n)))`
-/

namespace A211774.P1402539166203200003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.lor (A000007 n) (A144161 (A000096 n).toNat)

end

end A211774.P1402539166203200003

/-! ## A211774.P3134185770032833596

`n*A144163(∑[n]+n)`
-/

namespace A211774.P3134185770032833596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A144163 (∑ j ∈ Finset.range (n + 1), f1 j + n)

end

end A211774.P3134185770032833596

/-!
# A211776: a(n) = Product_{d | n} tau(d).

The programs for A211776, the canonical program `A211776.P3808314914225811013` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211776 has offset 1).

The definition of A211776 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A211776.P6075306666753705981

`∏{d}[n+1, A000005(#)]`
-/

namespace A211776.P6075306666753705981
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A000005 d

end

end A211776.P6075306666753705981

namespace A211776

/-- `∏{d}[n+1, A000005(#)]` -/
def P6075306666753705981.Spec : Prop :=
  ∀ n, P6075306666753705981.a n = A211776 (n + 1)

end A211776

/-! ## A211776.P3808314914225811013

`∏{d}[n+1, sqrt(A035116(#))]`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A211776

/-- `∏{d}[n+1, sqrt(A035116(#))]` -/
def P3808314914225811013.Spec : Prop :=
  ∀ n, P3808314914225811013.a n = (A211776 (n + 1) : ℝ)

end A211776

/-! ## A211776.P10789774179136815996

`∏{d}[n+1, A038040(#)/#]`
-/

namespace A211776.P10789774179136815996
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), (A038040 d : ℚ) / (d : ℚ)

end

end A211776.P10789774179136815996

namespace A211776

/-- `∏{d}[n+1, A038040(#)/#]` -/
def P10789774179136815996.Spec : Prop :=
  ∀ n, P10789774179136815996.a n = (A211776 (n + 1) : ℚ)

end A211776

/-! ## A211776.P2986350209555138982

`A306705(n+1)/A007955(n+1)`
-/

namespace A211776.P2986350209555138982
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A306705 (n + 1) : ℚ) / (A007955 (n + 1) : ℚ)

end

end A211776.P2986350209555138982

namespace A211776

/-- `A306705(n+1)/A007955(n+1)` -/
def P2986350209555138982.Spec : Prop :=
  ∀ n, P2986350209555138982.a n = (A211776 (n + 1) : ℚ)

end A211776

/-! ## A211776.P10547364810780008537

`A324987(n+1)/A206032(n+1)`
-/

namespace A211776.P10547364810780008537
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A324987 (n + 1) : ℚ) / (A206032 (n + 1) : ℚ)

end

end A211776.P10547364810780008537

namespace A211776

/-- `A324987(n+1)/A206032(n+1)` -/
def P10547364810780008537.Spec : Prop :=
  ∀ n, P10547364810780008537.a n = (A211776 (n + 1) : ℚ)

end A211776

/-! ## A211776.P11717477044553512334

`∏{d}[A003961(n+1), A001227(#)]`
-/

namespace A211776.P11717477044553512334
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003961 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n).natAbs, A001227 d

end

end A211776.P11717477044553512334

namespace A211776

/-- `∏{d}[A003961(n+1), A001227(#)]` -/
def P11717477044553512334.Spec : Prop :=
  ∀ n, P11717477044553512334.a n = A211776 (n + 1)

end A211776

/-! ## A211776.P11173618418604301018

`A307101(n+1)/A266265(n+1)`
-/

namespace A211776.P11173618418604301018
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A307101 (n + 1) : ℚ) / (A266265 (n + 1) : ℚ)

end

end A211776.P11173618418604301018

namespace A211776

/-- `A307101(n+1)/A266265(n+1)` -/
def P11173618418604301018.Spec : Prop :=
  ∀ n, P11173618418604301018.a n = (A211776 (n + 1) : ℚ)

end A211776

/-! ## A211776.P10458504607667270986

`A266265(n+1)/A323760(n+1)*A323761(n+1)`
-/

namespace A211776.P10458504607667270986
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) : ℚ) / (A323760 (n + 1) : ℚ) * (A323761 (n + 1) : ℚ)

end

end A211776.P10458504607667270986

namespace A211776

/-- `A266265(n+1)/A323760(n+1)*A323761(n+1)` -/
def P10458504607667270986.Spec : Prop :=
  ∀ n, P10458504607667270986.a n = (A211776 (n + 1) : ℚ)

end A211776

/-! ## A211776.P7797045808603143995

`A266265(n+1)*A306705(n+1)/A324981(n+1)`
-/

namespace A211776.P7797045808603143995
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A266265 (n + 1) * A306705 (n + 1) : ℚ) / (A324981 (n + 1) : ℚ)

end

end A211776.P7797045808603143995

namespace A211776

/-- `A266265(n+1)*A306705(n+1)/A324981(n+1)` -/
def P7797045808603143995.Spec : Prop :=
  ∀ n, P7797045808603143995.a n = (A211776 (n + 1) : ℚ)

end A211776

/-! ## A211776.P18249120096806348684

`∏{d}[n+1, A046951(#²)]`
-/

namespace A211776.P18249120096806348684
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A046951 (d ^ 2)

end

end A211776.P18249120096806348684

namespace A211776

/-- `∏{d}[n+1, A046951(#²)]` -/
def P18249120096806348684.Spec : Prop :=
  ∀ n, P18249120096806348684.a n = A211776 (n + 1)

end A211776

/-! ## A211776.P5103723149812301683

`∏{d}[n+1, A322483(#²)]`
-/

namespace A211776.P5103723149812301683
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A322483 (d ^ 2)

end

end A211776.P5103723149812301683

namespace A211776

/-- `∏{d}[n+1, A322483(#²)]` -/
def P5103723149812301683.Spec : Prop :=
  ∀ n, P5103723149812301683.a n = A211776 (n + 1)

end A211776

/-! ## A211776.P15531546414167890253

`∏{d}[n+1, A332712(#²)]`
-/

namespace A211776.P15531546414167890253
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f1 n), A332712 (d ^ 2)

end

end A211776.P15531546414167890253

namespace A211776

/-- `∏{d}[n+1, A332712(#²)]` -/
def P15531546414167890253.Spec : Prop :=
  ∀ n, P15531546414167890253.a n = A211776 (n + 1)

end A211776

/-!
# A211777: Numbers k such that Sum_{d_<k | k} phi(d_<k) / (d_<k) is an integer, where d_<k = divisors of k that are less than k, phi(x) = A000010(x).

The programs for A211777, there is no canonical definition to state claims against.
-/

/-! ## A211777.P11969740826757331831

`∪[A000040(n+1), A211778(n+1)]`
-/

namespace A211777.P11969740826757331831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211777.P11969740826757331831

/-! ## A211777.P17251656780318921229

`∪[A095320(n+1), A211778(n+1)]`
-/

namespace A211777.P17251656780318921229
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095320 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211778 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211777.P17251656780318921229

/-! ## A211777.P6437818973866803950

`∪[A211778(n+1), A216883(n+1)]`
-/

namespace A211777.P6437818973866803950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216883 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211777.P6437818973866803950

/-! ## A211777.P15215049717050259124

`∪[A211778(n+1), A216884(n+1)]`
-/

namespace A211777.P15215049717050259124
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216884 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211777.P15215049717050259124

/-! ## A211777.P16514201812408784468

`∪[A211778(n+1), A216885(n+1)]`
-/

namespace A211777.P16514201812408784468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216885 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211777.P16514201812408784468

/-! ## A211777.P174941669980618695

`∪[A211778(n+1), A216886(n+1)]`
-/

namespace A211777.P174941669980618695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216886 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211777.P174941669980618695

/-! ## A211777.P620580861463624209

`∪[A211778(n+1), A216887(n+1)]`
-/

namespace A211777.P620580861463624209
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216887 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211777.P620580861463624209

/-! ## A211777.P1878097912237331686

`∪[A211778(n+1), A238853(n+1)]`
-/

namespace A211777.P1878097912237331686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238853 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211777.P1878097912237331686

/-! ## A211777.P3527211424801340853

`∪[A211778(n+1), A385492(n+1)]`
-/

namespace A211777.P3527211424801340853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211778 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385492 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211777.P3527211424801340853

/-!
# A211778: Composite numbers n such that Sum_{d_<n | n} phi(d_<n) / (d_<n) is an integer, where d_<n = divisors of n that are less than n, phi(x) = A000010(x).

The programs for A211778, there is no canonical definition to state claims against.
-/

/-! ## A211778.P1612814290377606505

`filter[A211777(n+1), A005171(#)]`
-/

namespace A211778.P1612814290377606505
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A005171 (f1 j).toNat = 1) n)

end

end A211778.P1612814290377606505

/-! ## A211778.P14150738146899174092

`filter[A211777(n+1), A066247(#)]`
-/

namespace A211778.P14150738146899174092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A066247 (f1 j).toNat = 1) n)

end

end A211778.P14150738146899174092

/-! ## A211778.P3132918043722668017

`filter[A211777(n+1), A087049(#)]`
-/

namespace A211778.P3132918043722668017
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A211778.P3132918043722668017

/-! ## A211778.P11034944219404931758

`filter[A211777(n+1), A107078(#)]`
-/

namespace A211778.P11034944219404931758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211777 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A107078 (f1 j).toNat = 1) n)

end

end A211778.P11034944219404931758

/-!
# A211779: a(n) = Sum_{d_<n | n} sigma(d_<n), where d_<n = divisors of n that are less than n, sigma(x) = A000203(x).

The programs for A211779, the canonical program `A211779.P11493622072280912374` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211779 has offset 1).

The definition of A211779 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211779.P18238821377284966624

`∑{d}[n+1, A001065(#)]`
-/

namespace A211779.P18238821377284966624
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A001065 d

end

end A211779.P18238821377284966624

namespace A211779

/-- `∑{d}[n+1, A001065(#)]` -/
def P18238821377284966624.Spec : Prop :=
  ∀ n, P18238821377284966624.a n = A211779 (n + 1)

end A211779

/-! ## A211779.P11493622072280912374

`A007429(n+1)-A000203(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A211779

/-- `A007429(n+1)-A000203(n+1)` -/
def P11493622072280912374.Spec : Prop :=
  ∀ n, P11493622072280912374.a n = A211779 (n + 1)

theorem P11493622072280912374.correct : P11493622072280912374.Spec := by
  intro n
  simp only [A211779, Nat.add_sub_cancel]

end A211779

/-! ## A211779.P11323472125861104018

`A211780(n+1)-A000203(n+1)+n+1`
-/

namespace A211779.P11323472125861104018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211780 (n + 1) - A000203 (n + 1) + (n + 1 : ℤ)

end

end A211779.P11323472125861104018

namespace A211779

/-- `A211780(n+1)-A000203(n+1)+n+1` -/
def P11323472125861104018.Spec : Prop :=
  ∀ n, P11323472125861104018.a n = A211779 (n + 1)

theorem P11323472125861104018.correct : P11323472125861104018.Spec := by
  intro n
  simp only [A211779, Nat.add_sub_cancel, A211779.P11323472125861104018.a, A211779.P11493622072280912374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A211780, A211780.P8877674507974761173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211779

/-! ## A211779.P8650283415833086922

`∑{d}[n+1, A000203(#)-#]`
-/

namespace A211779.P8650283415833086922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000203 d - (d : ℤ))

end

end A211779.P8650283415833086922

namespace A211779

/-- `∑{d}[n+1, A000203(#)-#]` -/
def P8650283415833086922.Spec : Prop :=
  ∀ n, P8650283415833086922.a n = A211779 (n + 1)

end A211779

/-! ## A211779.P2827628169386530290

`A007429(n+1)-∑{d}[n+1, #]`
-/

namespace A211779.P2827628169386530290
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - ((∑ d ∈ Nat.divisors (f1 n), d : ℕ) : ℤ)

end

end A211779.P2827628169386530290

namespace A211779

/-- `A007429(n+1)-∑{d}[n+1, #]` -/
def P2827628169386530290.Spec : Prop :=
  ∀ n, P2827628169386530290.a n = A211779 (n + 1)

end A211779

/-! ## A211779.P6094035304515747424

`∑{d}[n+1, #*A032741((n+1)/#)]`
-/

namespace A211779.P6094035304515747424
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (d : ℤ) * A032741 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A211779.P6094035304515747424

namespace A211779

/-- `∑{d}[n+1, #*A032741((n+1)/#)]` -/
def P6094035304515747424.Spec : Prop :=
  ∀ n, P6094035304515747424.a n = A211779 (n + 1)

end A211779

/-! ## A211779.P8097959663075403269

`A007429(n+1)-Δ[A160664(n)]`
-/

namespace A211779.P8097959663075403269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160664 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007429 (n + 1) - (f1 (n + 1) - f1 n)

end

end A211779.P8097959663075403269

namespace A211779

/-- `A007429(n+1)-Δ[A160664(n)]` -/
def P8097959663075403269.Spec : Prop :=
  ∀ n, P8097959663075403269.a n = A211779 (n + 1)

end A211779

/-! ## A211779.P6858788621998082418

`A211780(n+1)-A001065(n+1)`
-/

namespace A211779.P6858788621998082418
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211780 (n + 1) - A001065 (n + 1)

end

end A211779.P6858788621998082418

namespace A211779

/-- `A211780(n+1)-A001065(n+1)` -/
def P6858788621998082418.Spec : Prop :=
  ∀ n, P6858788621998082418.a n = A211779 (n + 1)

theorem P6858788621998082418.correct : P6858788621998082418.Spec := by
  intro n
  simp only [A211779, Nat.add_sub_cancel, A211779.P6858788621998082418.a, A211779.P11493622072280912374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A211780, A211780.P8877674507974761173.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211779

/-! ## A211779.P18434196589122719214

`A000203(n+1)-A296075(n+1)`
-/

namespace A211779.P18434196589122719214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 1) - A296075 (n + 1)

end

end A211779.P18434196589122719214

namespace A211779

/-- `A000203(n+1)-A296075(n+1)` -/
def P18434196589122719214.Spec : Prop :=
  ∀ n, P18434196589122719214.a n = A211779 (n + 1)

theorem P18434196589122719214.correct : P18434196589122719214.Spec := by
  intro n
  simp only [A211779, Nat.add_sub_cancel, A211779.P18434196589122719214.a, A211779.P11493622072280912374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A296075, A296075.P11175105171194449082.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211779

/-! ## A211779.P2718762663593251983

`A091818(n+1)-A296074(n+1)`
-/

namespace A211779.P2718762663593251983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091818 (n + 1) - A296074 (n + 1)

end

end A211779.P2718762663593251983

namespace A211779

/-- `A091818(n+1)-A296074(n+1)` -/
def P2718762663593251983.Spec : Prop :=
  ∀ n, P2718762663593251983.a n = A211779 (n + 1)

theorem P2718762663593251983.correct : P2718762663593251983.Spec := by
  intro n
  simp only [A211779, Nat.add_sub_cancel, A211779.P2718762663593251983.a, A211779.P11493622072280912374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A091818, A091818.P1536144604709334989.a, A296074, A296074.P13795180973919370839.a, A001065, A001065.P4097147489331274860.a, A033879, A033879.P5965131822542929609.a, A296075, A296075.P11175105171194449082.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211779

/-! ## A211779.P12621241132932906511

`A069913(n+1)-A369337(n+1)`
-/

namespace A211779.P12621241132932906511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069913 (n + 1) - A369337 (n + 1)

end

end A211779.P12621241132932906511

namespace A211779

/-- `A069913(n+1)-A369337(n+1)` -/
def P12621241132932906511.Spec : Prop :=
  ∀ n, P12621241132932906511.a n = A211779 (n + 1)

end A211779

/-! ## A211779.P6026268507181115899

`A318445(n+1)-A318447(n+1)`
-/

namespace A211779.P6026268507181115899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318445 (n + 1) - A318447 (n + 1)

end

end A211779.P6026268507181115899

namespace A211779

/-- `A318445(n+1)-A318447(n+1)` -/
def P6026268507181115899.Spec : Prop :=
  ∀ n, P6026268507181115899.a n = A211779 (n + 1)

theorem P6026268507181115899.correct : P6026268507181115899.Spec := by
  intro n
  simp only [A211779, Nat.add_sub_cancel, A211779.P6026268507181115899.a, A211779.P11493622072280912374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A318445, A318445.P14423617105751206309.a, A318447, A318447.P10080329051014422547.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211779

/-! ## A211779.P4145488197867200888

`A007429(n+1)-A074400(n+1)/2`
-/

namespace A211779.P4145488197867200888
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) : ℚ) - (A074400 (n + 1) : ℚ) / 2

end

end A211779.P4145488197867200888

namespace A211779

/-- `A007429(n+1)-A074400(n+1)/2` -/
def P4145488197867200888.Spec : Prop :=
  ∀ n, P4145488197867200888.a n = (A211779 (n + 1) : ℚ)

theorem P4145488197867200888.correct : P4145488197867200888.Spec := by
  intro n
  simp only [A211779, Nat.add_sub_cancel, A211779.P4145488197867200888.a, A211779.P11493622072280912374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211779

/-! ## A211779.P6503398405676686038

`(A007429(n+1)-A296075(n+1))/2`
-/

namespace A211779.P6503398405676686038
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) - A296075 (n + 1) : ℚ) / 2

end

end A211779.P6503398405676686038

namespace A211779

/-- `(A007429(n+1)-A296075(n+1))/2` -/
def P6503398405676686038.Spec : Prop :=
  ∀ n, P6503398405676686038.a n = (A211779 (n + 1) : ℚ)

theorem P6503398405676686038.correct : P6503398405676686038.Spec := by
  intro n
  simp only [A211779, Nat.add_sub_cancel, A211779.P6503398405676686038.a, A211779.P11493622072280912374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A296075, A296075.P11175105171194449082.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211779

/-! ## A211779.P5663610383480691302

`A074400(n+1)/2-A296075(n+1)`
-/

namespace A211779.P5663610383480691302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A074400 (n + 1) : ℚ) / 2 - (A296075 (n + 1) : ℚ)

end

end A211779.P5663610383480691302

namespace A211779

/-- `A074400(n+1)/2-A296075(n+1)` -/
def P5663610383480691302.Spec : Prop :=
  ∀ n, P5663610383480691302.a n = (A211779 (n + 1) : ℚ)

theorem P5663610383480691302.correct : P5663610383480691302.Spec := by
  intro n
  simp only [A211779, Nat.add_sub_cancel, A211779.P5663610383480691302.a, A211779.P11493622072280912374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A074400, A074400.P16312391460013478761.a, A296075, A296075.P11175105171194449082.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211779

/-! ## A211779.P11408541586732345868

`∑{d}[n+1, A000005(#)*A051953((n+1)/#)]`
-/

namespace A211779.P11408541586732345868
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000005 d * A051953 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A211779.P11408541586732345868

namespace A211779

/-- `∑{d}[n+1, A000005(#)*A051953((n+1)/#)]` -/
def P11408541586732345868.Spec : Prop :=
  ∀ n, P11408541586732345868.a n = A211779 (n + 1)

end A211779

/-! ## A211779.P4637043363597994028

`∑{d}[n+1, A007425(#)*A062790((n+1)/#)]`
-/

namespace A211779.P4637043363597994028
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A062790 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A211779.P4637043363597994028

namespace A211779

/-- `∑{d}[n+1, A007425(#)*A062790((n+1)/#)]` -/
def P4637043363597994028.Spec : Prop :=
  ∀ n, P4637043363597994028.a n = A211779 (n + 1)

end A211779

/-! ## A211779.P6888954529687195122

`∑{d}[n+1, A038712(#)*A091570((n+1)/#)]`
-/

namespace A211779.P6888954529687195122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A038712 d * A091570 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A211779.P6888954529687195122

namespace A211779

/-- `∑{d}[n+1, A038712(#)*A091570((n+1)/#)]` -/
def P6888954529687195122.Spec : Prop :=
  ∀ n, P6888954529687195122.a n = A211779 (n + 1)

end A211779

/-! ## A211779.P12941742829342168304

`∑{d}[n+1, A065814(#)*A074722((n+1)/#)]`
-/

namespace A211779.P12941742829342168304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A065814 d * A074722 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A211779.P12941742829342168304

namespace A211779

/-- `∑{d}[n+1, A065814(#)*A074722((n+1)/#)]` -/
def P12941742829342168304.Spec : Prop :=
  ∀ n, P12941742829342168304.a n = A211779 (n + 1)

end A211779

/-! ## A211779.P4337858657642148862

`∑{d}[n+1, A007429(#)*A157658((n+1)/#)]`
-/

namespace A211779.P4337858657642148862
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007429 d * A157658 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A211779.P4337858657642148862

namespace A211779

/-- `∑{d}[n+1, A007429(#)*A157658((n+1)/#)]` -/
def P4337858657642148862.Spec : Prop :=
  ∀ n, P4337858657642148862.a n = A211779 (n + 1)

end A211779

/-!
# A211780: a(n) = Sum_{d|n, d<n} d * tau(n / d), where tau = A000005 is the number of divisors.

The programs for A211780, the canonical program `A211780.P8877674507974761173` is in `Seq.B002.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211780 has offset 1).

The definition of A211780 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A211780.P8877674507974761173

`A007429(n+1)-(n+1)`

The canonical program, it is in `Seq.B002.C005`.
-/

namespace A211780

/-- `A007429(n+1)-(n+1)` -/
def P8877674507974761173.Spec : Prop :=
  ∀ n, P8877674507974761173.a n = A211780 (n + 1)

theorem P8877674507974761173.correct : P8877674507974761173.Spec := by
  intro n
  simp only [A211780, Nat.add_sub_cancel]

end A211780

/-! ## A211780.P14034894553324174921

`∑{d}[n+1, A000203(#)]-(n+1)`
-/

namespace A211780.P14034894553324174921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A000203 d - (n + 1 : ℤ)

end

end A211780.P14034894553324174921

namespace A211780

/-- `∑{d}[n+1, A000203(#)]-(n+1)` -/
def P14034894553324174921.Spec : Prop :=
  ∀ n, P14034894553324174921.a n = A211780 (n + 1)

end A211780

/-! ## A211780.P13266491863437532235

`A211779(n+1)+A000203(n+1)-(n+1)`
-/

namespace A211780.P13266491863437532235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + A000203 (n + 1) - (n + 1 : ℤ)

end

end A211780.P13266491863437532235

namespace A211780

/-- `A211779(n+1)+A000203(n+1)-(n+1)` -/
def P13266491863437532235.Spec : Prop :=
  ∀ n, P13266491863437532235.a n = A211780 (n + 1)

theorem P13266491863437532235.correct : P13266491863437532235.Spec := by
  intro n
  simp only [A211780, Nat.add_sub_cancel, A211780.P13266491863437532235.a, A211780.P8877674507974761173.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A211779, A211779.P11493622072280912374.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211780

/-! ## A211780.P11820974746319706447

`∑{d}[n+1, A051612(#)]`
-/

namespace A211780.P11820974746319706447
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051612 d

end

end A211780.P11820974746319706447

namespace A211780

/-- `∑{d}[n+1, A051612(#)]` -/
def P11820974746319706447.Spec : Prop :=
  ∀ n, P11820974746319706447.a n = A211780 (n + 1)

end A211780

/-! ## A211780.P3664229296179682159

`A211779(n+1)+A001065(n+1)`
-/

namespace A211780.P3664229296179682159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211779 (n + 1) + A001065 (n + 1)

end

end A211780.P3664229296179682159

namespace A211780

/-- `A211779(n+1)+A001065(n+1)` -/
def P3664229296179682159.Spec : Prop :=
  ∀ n, P3664229296179682159.a n = A211780 (n + 1)

theorem P3664229296179682159.correct : P3664229296179682159.Spec := by
  intro n
  simp only [A211780, Nat.add_sub_cancel, A211780.P3664229296179682159.a, A211780.P8877674507974761173.a, A001065, A001065.P4097147489331274860.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A211779, A211779.P11493622072280912374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211780

/-! ## A211780.P9351996208752388892

`∑{d}[n+1, A000203(#)-A000010(#)]`
-/

namespace A211780.P9351996208752388892
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), (A000203 d - A000010 d)

end

end A211780.P9351996208752388892

namespace A211780

/-- `∑{d}[n+1, A000203(#)-A000010(#)]` -/
def P9351996208752388892.Spec : Prop :=
  ∀ n, P9351996208752388892.a n = A211780 (n + 1)

end A211780

/-! ## A211780.P3784555321540466563

`A211779(n+1)+A091818(n+1)/2`
-/

namespace A211780.P3784555321540466563
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A211779 (n + 1) : ℚ) + (A091818 (n + 1) : ℚ) / 2

end

end A211780.P3784555321540466563

namespace A211780

/-- `A211779(n+1)+A091818(n+1)/2` -/
def P3784555321540466563.Spec : Prop :=
  ∀ n, P3784555321540466563.a n = (A211780 (n + 1) : ℚ)

theorem P3784555321540466563.correct : P3784555321540466563.Spec := by
  intro n
  simp only [A211780, Nat.add_sub_cancel, A211780.P3784555321540466563.a, A211780.P8877674507974761173.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A091818, A091818.P1536144604709334989.a, A211779, A211779.P11493622072280912374.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A001065, A001065.P4097147489331274860.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211780

/-! ## A211780.P16757542923533355656

`A001065(n+1)+∑{d}[n+1, A001065(#)]`
-/

namespace A211780.P16757542923533355656
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + ∑ d ∈ Nat.divisors (f1 n), A001065 d

end

end A211780.P16757542923533355656

namespace A211780

/-- `A001065(n+1)+∑{d}[n+1, A001065(#)]` -/
def P16757542923533355656.Spec : Prop :=
  ∀ n, P16757542923533355656.a n = A211780 (n + 1)

end A211780

/-! ## A211780.P7239692250764724311

`∑{d}[n+1, A032741(#)*A121048((n+1)/#)]`
-/

namespace A211780.P7239692250764724311
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A032741 d * A121048 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A211780.P7239692250764724311

namespace A211780

/-- `∑{d}[n+1, A032741(#)*A121048((n+1)/#)]` -/
def P7239692250764724311.Spec : Prop :=
  ∀ n, P7239692250764724311.a n = A211780 (n + 1)

end A211780

/-! ## A211780.P11230183482691706603

`∑{d}[n+1, A051953(#)*A334954((n+1)/#)]`
-/

namespace A211780.P11230183482691706603
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A051953 d * A334954 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A211780.P11230183482691706603

namespace A211780

/-- `∑{d}[n+1, A051953(#)*A334954((n+1)/#)]` -/
def P11230183482691706603.Spec : Prop :=
  ∀ n, P11230183482691706603.a n = A211780 (n + 1)

end A211780

/-! ## A211780.P6901063559995747375

`A001065(n+1)+A318445(n+1)-A318447(n+1)`
-/

namespace A211780.P6901063559995747375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001065 (n + 1) + (A318445 (n + 1) - A318447 (n + 1))

end

end A211780.P6901063559995747375

namespace A211780

/-- `A001065(n+1)+A318445(n+1)-A318447(n+1)` -/
def P6901063559995747375.Spec : Prop :=
  ∀ n, P6901063559995747375.a n = A211780 (n + 1)

theorem P6901063559995747375.correct : P6901063559995747375.Spec := by
  intro n
  simp only [A211780, Nat.add_sub_cancel, A211780.P6901063559995747375.a, A211780.P8877674507974761173.a, A001065, A001065.P4097147489331274860.a, A007429, A007429.P9220875293128592919.f1, A007429.P9220875293128592919.a, A318445, A318445.P14423617105751206309.a, A318447, A318447.P10080329051014422547.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A211779, A211779.P11493622072280912374.a, A292257, A292257.P4438175682071365739.a, A296074, A296074.P13795180973919370839.a, A000120, A000120.P2816527436160941581.a, A033879, A033879.P5965131822542929609.a, A192895, A192895.P9345364931797933177.f1, A192895.P9345364931797933177.a, A296075, A296075.P11175105171194449082.a, A005187, A005187.P3874015513960485494.a, A005843, A005843.P3167286115683555970.a, A074400, A074400.P16312391460013478761.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A211780

/-! ## A211780.P12845704246648449413

`A023443(A007429(n+1)-n)`
-/

namespace A211780.P12845704246648449413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A007429 (n + 1) - (n : ℤ)).toNat

end

end A211780.P12845704246648449413

namespace A211780

/-- `A023443(A007429(n+1)-n)` -/
def P12845704246648449413.Spec : Prop :=
  ∀ n, P12845704246648449413.a n = A211780 (n + 1)

end A211780

/-!
# A211781: Numbers n such that Sum_(d_<n | n) tau(d_<n) / (d_<n) is an integer, where d_<n = divisors of n that are less than n, tau(x) = A000005(x).

The programs for A211781, there is no canonical definition to state claims against.
-/

/-! ## A211781.P14116111319592020414

`or(A000035(A135121(3*n+1)), A348283(n+2))`
-/

namespace A211781.P14116111319592020414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A135121 (3 * n + 1)).toNat) (A348283 (n + 2))

end

end A211781.P14116111319592020414

/-! ## A211781.P12614249550470464324

`∪[A000040(n+1), A338913(A048398(3*n+1))]`
-/

namespace A211781.P12614249550470464324
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A338913 (A048398 (3 * n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A211781.P12614249550470464324

/-! ## A211781.P6956713309428559898

`∩[A348283(n+1), A382351(n+1)]`
-/

namespace A211781.P6956713309428559898
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348283 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382351 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A211781.P6956713309428559898

/-! ## A211781.P5871781358891595181

`A061340(A348283(n+2))`
-/

namespace A211781.P5871781358891595181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061340 (A348283 (n + 2)).toNat

end

end A211781.P5871781358891595181

/-! ## A211781.P15582148242463905638

`filter[A363727(n+1), A358672(#)]`
-/

namespace A211781.P15582148242463905638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363727 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A358672 (f1 j).toNat = 1) n)

end

end A211781.P15582148242463905638

/-!
# A211782: Rectangular array: R(n,k)=[n/F(2)]+[n/F(3)]+...+[n/F(k+1)], where [ ]=floor and F=A000045 (Fibonacci numbers), by antidiagonals.

The programs for A211782, there is no canonical definition to state claims against.
-/

/-! ## A211782.P10154473981026449899

`A211701(n+1)-A025465(A059922(n))`
-/

namespace A211782.P10154473981026449899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211701 (n + 1) - A025465 (A059922 n).toNat

end

end A211782.P10154473981026449899

/-! ## A211782.P17521444855887150824

`A211701(n+1)-A178798(A204621(n))`
-/

namespace A211782.P17521444855887150824
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211701 (n + 1) - A178798 (A204621 n).toNat

end

end A211782.P17521444855887150824

/-! ## A211782.P4120461460431092993

`A211701(n+1)+A178798(A204621(n)+2)`
-/

namespace A211782.P4120461460431092993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211701 (n + 1) + A178798 (A204621 n + 2).toNat

end

end A211782.P4120461460431092993

/-! ## A211782.P12599478245577291249

`A211701(n+1)-A122840(A084376(n))`
-/

namespace A211782.P12599478245577291249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211701 (n + 1) - A122840 (A084376 n).toNat

end

end A211782.P12599478245577291249

/-! ## A211782.P9423869775036976809

`A211701(n+1)-A046779(A198329(3*n+5))`
-/

namespace A211782.P9423869775036976809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211701 (n + 1) - A046779 (A198329 (3 * n + 5)).toNat

end

end A211782.P9423869775036976809

/-!
# A211784: a(n) = n^2 + floor(n^2/2) + floor(n^2/3).

The programs for A211784, the canonical program `A211784.P15813778452032964033` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211784 has offset 1).

The definition of A211784 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)²+floor((n+1)²/2)+floor((n+1)²/3)` (program `A211784.P15813778452032964033`, by `A211784.P15813778452032964033.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A211784.P9521853697054316359

`ogf((1+6x+8x^2+6x^3+x^4)/(1-x-x^2+x^4+x^5-x^6))`
-/

namespace A211784.P9521853697054316359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6, 8, 6, 1] [1, -1, -1, 0, 1, 1, -1] n

end

end A211784.P9521853697054316359

namespace A211784

/-- `ogf((1+6x+8x^2+6x^3+x^4)/(1-x-x^2+x^4+x^5-x^6))` -/
def P9521853697054316359.Spec : Prop :=
  ∀ n, P9521853697054316359.a n = A211784 (n + 1)

end A211784

/-! ## A211784.P15813778452032964033

`(n+1)²+floor((n+1)²/2)+floor((n+1)²/3)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A211784

/-- `(n+1)²+floor((n+1)²/2)+floor((n+1)²/3)` -/
def P15813778452032964033.Spec : Prop :=
  ∀ n, P15813778452032964033.a n = A211784 (n + 1)

theorem P15813778452032964033.correct : P15813778452032964033.Spec := by
  intro n
  simp only [A211784, Nat.add_sub_cancel]

end A211784

/-! ## A211784.P16683012468719647811

`(66*(n+1)²+9*(-1)^(n+1)-17-4*A061347(n+1))/36`
-/

namespace A211784.P16683012468719647811
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((66 * (n + 1) ^ 2 : ℤ) + 9 * (-1) ^ (n + 1) - 17 - 4 * A061347 (n + 1) : ℚ) / 36

end

end A211784.P16683012468719647811

namespace A211784

/-- `(66*(n+1)²+9*(-1)^(n+1)-17-4*A061347(n+1))/36` -/
def P16683012468719647811.Spec : Prop :=
  ∀ n, P16683012468719647811.a n = (A211784 (n + 1) : ℚ)

end A211784

/-! ## A211784.P11162269275044374063

`∑[ceil(2*n/3)+or(1, 3*n+1)]`
-/

namespace A211784.P11162269275044374063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 * ((n : ℚ) / 3)⌉ + (Nat.lor 1 (3 * n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211784.P11162269275044374063

namespace A211784

/-- `∑[ceil(2*n/3)+or(1, 3*n+1)]` -/
def P11162269275044374063.Spec : Prop :=
  ∀ n, P11162269275044374063.a n = A211784 (n + 1)

end A211784

/-! ## A211784.P1291873412709961524

`(∑[A063229(n+1)]-1)/2`
-/

namespace A211784.P1291873412709961524
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063229 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j - 1 : ℤ) : ℚ) / 2

end

end A211784.P1291873412709961524

namespace A211784

/-- `(∑[A063229(n+1)]-1)/2` -/
def P1291873412709961524.Spec : Prop :=
  ∀ n, P1291873412709961524.a n = (A211784 (n + 1) : ℚ)

end A211784

/-! ## A211784.P11509425719709766052

`∑[A007310(n+1)+∑[n²%3]]`
-/

namespace A211784.P11509425719709766052
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211784.P11509425719709766052

namespace A211784

/-- `∑[A007310(n+1)+∑[n²%3]]` -/
def P11509425719709766052.Spec : Prop :=
  ∀ n, P11509425719709766052.a n = A211784 (n + 1)

end A211784

/-! ## A211784.P4143732314286967688

`∑[A322042(n+1)+A007310(n+1)]`
-/

namespace A211784.P4143732314286967688
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322042 (n + 1) + A007310 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211784.P4143732314286967688

namespace A211784

/-- `∑[A322042(n+1)+A007310(n+1)]` -/
def P4143732314286967688.Spec : Prop :=
  ∀ n, P4143732314286967688.a n = A211784 (n + 1)

end A211784

/-! ## A211784.P261832268150168753

`∑[A047524(n+1)-(A002264(n)+1)]`
-/

namespace A211784.P261832268150168753
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047524 (n + 1) - (A002264 n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211784.P261832268150168753

namespace A211784

/-- `∑[A047524(n+1)-(A002264(n)+1)]` -/
def P261832268150168753.Spec : Prop :=
  ∀ n, P261832268150168753.a n = A211784 (n + 1)

end A211784

/-! ## A211784.P13982914571005600618

`A106252((n+1)²)`
-/

namespace A211784.P13982914571005600618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106252 ((n + 1) ^ 2)

end

end A211784.P13982914571005600618

namespace A211784

/-- `A106252((n+1)²)` -/
def P13982914571005600618.Spec : Prop :=
  ∀ n, P13982914571005600618.a n = A211784 (n + 1)

end A211784

/-! ## A211784.P15145686523821603337

`A272915((n+1)²)`
-/

namespace A211784.P15145686523821603337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272915 ((n + 1) ^ 2)

end

end A211784.P15145686523821603337

namespace A211784

/-- `A272915((n+1)²)` -/
def P15145686523821603337.Spec : Prop :=
  ∀ n, P15145686523821603337.a n = A211784 (n + 1)

end A211784

/-!
# A211786: n^3 + floor(n^3/2).

The programs for A211786, the canonical program `A211786.P12068772525302123851` is in `Seq.B000.C033`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A211786 has offset 1).

The definition of A211786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)^3+floor((n+1)^3/2)` (program `A211786.P12068772525302123851`, by `A211786.P12068772525302123851.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A211786.P2602547051554845379

`floor(3*(n+1)^3/2)`
-/

namespace A211786.P2602547051554845379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(3 * (n + 1) ^ 3 : ℚ) / 2⌋

end

end A211786.P2602547051554845379

namespace A211786

/-- `floor(3*(n+1)^3/2)` -/
def P2602547051554845379.Spec : Prop :=
  ∀ n, P2602547051554845379.a n = A211786 (n + 1)

end A211786

/-! ## A211786.P14830753323844701271

`ogf((1+9x+6x^2+2x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))`
-/

namespace A211786.P14830753323844701271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 9, 6, 2] [1, -3, 2, 2, -3, 1] n

end

end A211786.P14830753323844701271

namespace A211786

/-- `ogf((1+9x+6x^2+2x^3)/(1-3x+2x^2+2x^3-3x^4+x^5))` -/
def P14830753323844701271.Spec : Prop :=
  ∀ n, P14830753323844701271.a n = A211786 (n + 1)

end A211786

/-! ## A211786.P12068772525302123851

`(n+1)^3+floor((n+1)^3/2)`

The canonical program, it is in `Seq.B000.C033`.
-/

namespace A211786

/-- `(n+1)^3+floor((n+1)^3/2)` -/
def P12068772525302123851.Spec : Prop :=
  ∀ n, P12068772525302123851.a n = A211786 (n + 1)

theorem P12068772525302123851.correct : P12068772525302123851.Spec := by
  intro n
  simp only [A211786, Nat.add_sub_cancel]

end A211786

/-! ## A211786.P15503603170628302529

`∑[filter[C(n, 2), #%3]+n%2]`
-/

namespace A211786.P15503603170628302529
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose n 2

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => f2 j % 3 = 1) n) + n % 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211786.P15503603170628302529

namespace A211786

/-- `∑[filter[C(n, 2), #%3]+n%2]` -/
def P15503603170628302529.Spec : Prop :=
  ∀ n, (P15503603170628302529.a n : ℤ) = A211786 (n + 1)

end A211786

/-! ## A211786.P15607950699899089999

`∑[(3*n)²+3-a(n-1)]` with `a(0)=1`
-/

namespace A211786.P15607950699899089999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  ((3 * n) ^ 2 : ℤ) + (3 - f1 (n - 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211786.P15607950699899089999

namespace A211786

/-- `∑[(3*n)²+3-a(n-1)]` -/
def P15607950699899089999.Spec : Prop :=
  ∀ n, P15607950699899089999.a n = A211786 (n + 1)

end A211786

/-! ## A211786.P7141087779148419541

`∑[3-(a(n-1)-(3*n)²)]` with `a(0)=1`
-/

namespace A211786.P7141087779148419541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  3 - (f1 (n - 1) - ((3 * n) ^ 2 : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211786.P7141087779148419541

namespace A211786

/-- `∑[3-(a(n-1)-(3*n)²)]` -/
def P7141087779148419541.Spec : Prop :=
  ∀ n, P7141087779148419541.a n = A211786 (n + 1)

end A211786

/-! ## A211786.P18387652572830551383

`∑[A236453(n)+∑[8*n]]`
-/

namespace A211786.P18387652572830551383
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8 * n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n + ((∑ j ∈ Finset.range (n + 1), f2 j : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211786.P18387652572830551383

namespace A211786

/-- `∑[A236453(n)+∑[8*n]]` -/
def P18387652572830551383.Spec : Prop :=
  ∀ n, P18387652572830551383.a n = A211786 (n + 1)

end A211786

/-! ## A211786.P10059476880367356282

`∑[A060544(n+1)+and(1, n)]`
-/

namespace A211786.P10059476880367356282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060544 (n + 1) + (Nat.land 1 n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211786.P10059476880367356282

namespace A211786

/-- `∑[A060544(n+1)+and(1, n)]` -/
def P10059476880367356282.Spec : Prop :=
  ∀ n, P10059476880367356282.a n = A211786 (n + 1)

end A211786

/-! ## A211786.P16130549358768060311

`∑[n%2+9*A000217(n)+1]`
-/

namespace A211786.P16130549358768060311
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n % 2 : ℕ) : ℤ) + 9 * A000217 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211786.P16130549358768060311

namespace A211786

/-- `∑[n%2+9*A000217(n)+1]` -/
def P16130549358768060311.Spec : Prop :=
  ∀ n, P16130549358768060311.a n = A211786 (n + 1)

end A211786

/-! ## A211786.P7378378485698534420

`∑[A000217(3*n+1)+char[Δ[n²]]]`
-/

namespace A211786.P7378378485698534420
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f3 (n + 1) : ℤ) - (f3 n : ℤ)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000217 (3 * n + 1) + ((if ∃ j, f2 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211786.P7378378485698534420

namespace A211786

/-- `∑[A000217(3*n+1)+char[Δ[n²]]]` -/
def P7378378485698534420.Spec : Prop :=
  ∀ n, P7378378485698534420.a n = A211786 (n + 1)

end A211786

/-! ## A211786.P7678592679888988374

`∑[A007310(n+1)+A000217(3*n)]`
-/

namespace A211786.P7678592679888988374
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007310 (n + 1) + A000217 (3 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211786.P7678592679888988374

namespace A211786

/-- `∑[A007310(n+1)+A000217(3*n)]` -/
def P7678592679888988374.Spec : Prop :=
  ∀ n, P7678592679888988374.a n = A211786 (n + 1)

end A211786

/-! ## A211786.P388130486574109940

`∑[1-(char[2*n]-A000217(A016777(n)))]`
-/

namespace A211786.P388130486574109940
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((if ∃ j, f2 j = n then 1 else 0 : ℕ) : ℤ) - A000217 (A016777 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A211786.P388130486574109940

namespace A211786

/-- `∑[1-(char[2*n]-A000217(A016777(n)))]` -/
def P388130486574109940.Spec : Prop :=
  ∀ n, P388130486574109940.a n = A211786 (n + 1)

end A211786

/-! ## A211786.P16487408812314238226

`A211785(∑[n+1]+2)`
-/

namespace A211786.P16487408812314238226
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211785 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A211786.P16487408812314238226

namespace A211786

/-- `A211785(∑[n+1]+2)` -/
def P16487408812314238226.Spec : Prop :=
  ∀ n, P16487408812314238226.a n = A211786 (n + 1)

end A211786

/-!
# A211787: Number of (w,x,y,z) with all terms in {1,...,n} and w*x<=2*y*z.

The programs for A211787, there is no canonical definition to state claims against.
-/

/-! ## A211787.P6194787654179608011

`n^4-A211797(n)`
-/

namespace A211787.P6194787654179608011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211797 n

end

end A211787.P6194787654179608011

/-! ## A211787.P11156496241251102554

`A212019(n)+A211795(n)`
-/

namespace A211787.P11156496241251102554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212019 n + A211795 n

end

end A211787.P11156496241251102554

/-! ## A211787.P14989681986743738454

`abs(A000583(n)-A211797(n))`
-/

namespace A211787.P14989681986743738454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211797 n|

end

end A211787.P14989681986743738454

/-! ## A211787.P3717431908725906353

`A002523(n)-(A211797(n)+1)`
-/

namespace A211787.P3717431908725906353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A211797 n + 1)

end

end A211787.P3717431908725906353

/-! ## A211787.P14542335705410550507

`1-(A211797(n)+A024002(n))`
-/

namespace A211787.P14542335705410550507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A211797 n + A024002 n)

end

end A211787.P14542335705410550507

/-! ## A211787.P16206096259599852133

`abs(A000290(n)²-A211797(n))`
-/

namespace A211787.P16206096259599852133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n ^ 2 - A211797 n|

end

end A211787.P16206096259599852133

/-! ## A211787.P9215674820794815287

`A212092(n)+A212095(n)-A211797(n)`
-/

namespace A211787.P9215674820794815287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + (A212095 n - A211797 n)

end

end A211787.P9215674820794815287

/-! ## A211787.P6233045311373974455

`A000583(n)-A057427(n)*A211797(n)`
-/

namespace A211787.P6233045311373974455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - A057427 n * A211797 n

end

end A211787.P6233045311373974455

/-! ## A211787.P5049678227063257887

`A000583(n)-A211797(n)%A212741(n)`
-/

namespace A211787.P5049678227063257887
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n - Int.tmod (A211797 n) (A212741 n)

end

end A211787.P5049678227063257887

/-! ## A211787.P14405899838470238998

`A000007(n+1)+A000583(n)-A211797(n)`
-/

namespace A211787.P14405899838470238998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000583 n - A211797 n)

end

end A211787.P14405899838470238998

/-! ## A211787.P63580799828526208

`A000038(n+1)+A000583(n)-A211797(n)`
-/

namespace A211787.P63580799828526208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) + (A000583 n - A211797 n)

end

end A211787.P63580799828526208

/-! ## A211787.P780524984217386372

`(A000583(n)-A211797(n))*A000034(2*n)`
-/

namespace A211787.P780524984217386372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211797 n) * A000034 (2 * n)

end

end A211787.P780524984217386372

/-! ## A211787.P1262894410129046013

`(A000583(n)-A211797(n))%A000580(n+7)`
-/

namespace A211787.P1262894410129046013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A211797 n) (A000580 (n + 7))

end

end A211787.P1262894410129046013

/-! ## A211787.P894732671714619159

`A008683(4*(n+1))+A000583(n)-A211797(n)`
-/

namespace A211787.P894732671714619159
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (A000583 n - A211797 n)

end

end A211787.P894732671714619159

/-! ## A211787.P11118807700981962992

`(A000583(n)-A211797(n))/gcd(2, A000040(n+1))`
-/

namespace A211787.P11118807700981962992
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211797 n : ℚ) / (Int.gcd 2 (A000040 (n + 1)) : ℚ)

end

end A211787.P11118807700981962992

/-! ## A211787.P8482106616462286754

`(A000583(n)-A211797(n))*A000005(gcd(n, n+1))`
-/

namespace A211787.P8482106616462286754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211797 n) * A000005 (Nat.gcd n (n + 1))

end

end A211787.P8482106616462286754

/-! ## A211787.P6843804099871727876

`(A000583(n)-A211797(n))*log2(A020639(2*(n+2)))`
-/

namespace A211787.P6843804099871727876
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211797 n : ℝ) * Real.logb 2 (A020639 (2 * (n + 2)) : ℝ)

end

end A211787.P6843804099871727876

/-! ## A211787.P6680031516142865397

`A212136(n)+A212150(n)-A211797(n)`
-/

namespace A211787.P6680031516142865397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212136 n + (A212150 n - A211797 n)

end

end A211787.P6680031516142865397

/-! ## A211787.P4228091830880976563

`A212019(n)+n^4-A211809(n)`
-/

namespace A211787.P4228091830880976563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212019 n + ((n ^ 4 : ℤ) - A211809 n)

end

end A211787.P4228091830880976563

/-!
# A211789: Row sums of A211788.

The programs for A211789, there is no canonical definition to state claims against.
-/

/-! ## A211789.P52316221850470056

`∑{#}[n, A211788(C(n+1, 2)+#+1)]`
-/

namespace A211789.P52316221850470056
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A211788 (Nat.choose (n + 1) 2 + (k + 1))

end

end A211789.P52316221850470056

/-! ## A211789.P9478668229101932053

`∑{#}[n, A003168(#)*A003168(n-#)]`
-/

namespace A211789.P9478668229101932053
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), A003168 k * A003168 (n - k)

end

end A211789.P9478668229101932053

/-! ## A211789.P5112895037500811517

`(A003169(n+1)+A003168(n))/2`
-/

namespace A211789.P5112895037500811517
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003169 (n + 1) + A003168 n : ℚ) / 2

end

end A211789.P5112895037500811517

/-! ## A211789.P12561730946694465726

`(A100326(∑[n+1])+A003168(n))/2`
-/

namespace A211789.P12561730946694465726
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A100326 (∑ j ∈ Finset.range (n + 1), f1 j) + A003168 n : ℚ) / 2

end

end A211789.P12561730946694465726

/-! ## A211789.P2770170187950653621

`(A007165(2*(n+1))+A003168(n))/2`
-/

namespace A211789.P2770170187950653621
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007165 (2 * (n + 1)) + A003168 n : ℚ) / 2

end

end A211789.P2770170187950653621

/-! ## A211789.P4896530226069747163

`ceil((A007165(2*(n+1))+ceil(A100327(n)/2))/2)`
-/

namespace A211789.P4896530226069747163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A007165 (2 * (n + 1)) + ⌈(A100327 n : ℚ) / 2⌉ : ℚ) / 2⌉

end

end A211789.P4896530226069747163

/-! ## A211789.P9172133715006263439

`(A003168(n)+A003168(n+1)-A294728(2*n+3))/2`
-/

namespace A211789.P9172133715006263439
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003168 n + (A003168 (n + 1) - A294728 (2 * n + 3)) : ℚ) / 2

end

end A211789.P9172133715006263439

/-! ## A211789.P12995543467796958482

`(A336573(∑[n+3])+A003169(n+1))/2`
-/

namespace A211789.P12995543467796958482
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A336573 (∑ j ∈ Finset.range (n + 1), f1 j) + A003169 (n + 1) : ℚ) / 2

end

end A211789.P12995543467796958482

/-!
# A211790: Rectangular array: R(k,n) = number of ordered triples (w,x,y) with all terms in {1,...,n} and w^k<x^k+y^k.

The programs for A211790, there is no canonical definition to state claims against.
-/

/-! ## A211790.P371322594219456018

`A004736(n+1)^3-A211793(n+1)`
-/

namespace A211790.P371322594219456018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 3 - A211793 (n + 1)

end

end A211790.P371322594219456018

/-! ## A211790.P928948007215105165

`A000578(A004736(n+1))-A211793(n+1)`
-/

namespace A211790.P928948007215105165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004736 (n + 1)).toNat - A211793 (n + 1)

end

end A211790.P928948007215105165

/-! ## A211790.P15291834276861501648

`A048763(A211796(n+1))-A211793(n+1)`
-/

namespace A211790.P15291834276861501648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211796 (n + 1)).toNat - A211793 (n + 1)

end

end A211790.P15291834276861501648

/-! ## A211790.P5766551032099341195

`A182259(n+1)+A211808(n+1)-A211793(n+1)`
-/

namespace A211790.P5766551032099341195
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182259 (n + 1) + (A211808 (n + 1) - A211793 (n + 1))

end

end A211790.P5766551032099341195

/-! ## A211790.P18102542768610487424

`A211796(n+1)+A211799(n+1)-A211793(n+1)`
-/

namespace A211790.P18102542768610487424
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211796 (n + 1) + (A211799 (n + 1) - A211793 (n + 1))

end

end A211790.P18102542768610487424

/-! ## A211790.P7370449077335926970

`A211802(n+1)+A211805(n+1)-A211793(n+1)`
-/

namespace A211790.P7370449077335926970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211802 (n + 1) + (A211805 (n + 1) - A211793 (n + 1))

end

end A211790.P7370449077335926970

/-!
# A211791: a(n) = Sum_{y=1..n} Sum_{x=1..n} floor((x^k + y^k)^(1/k)) with k = 2.

The programs for A211791, there is no canonical definition to state claims against.
-/

/-! ## A211791.P6697598766154156117

`A211798(∑[n+1]+2)`
-/

namespace A211791.P6697598766154156117
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211798 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A211791.P6697598766154156117

/-! ## A211791.P17543142009993554825

`A211798(A133263(n+1))+char[14]`
-/

namespace A211791.P17543142009993554825
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  14

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211798 (A133263 (n + 1)).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A211791.P17543142009993554825

/-! ## A211791.P1496851726973852305

`record[gcd(A098825(n), A211798(n+1))]`
-/

namespace A211791.P1496851726973852305
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A098825 n) (A211798 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211791.P1496851726973852305

/-! ## A211791.P3998197425987263553

`record[gcd(A049780(n), A211798(n+3))]`
-/

namespace A211791.P3998197425987263553
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A049780 n) (A211798 (n + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211791.P3998197425987263553

/-! ## A211791.P6812493787756971691

`record[A211798(n+3)%A211790(n+2)]`
-/

namespace A211791.P6812493787756971691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A211798 (n + 3)) (A211790 (n + 2))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A211791.P6812493787756971691

/-!
# A211792: a(n) = Sum_{y=1..n} Sum_{x=1..n} floor((x^k + y^k)^(1/k)) with k = 3.

The programs for A211792, there is no canonical definition to state claims against.
-/

/-! ## A211792.P4636111927536209869

`A211798(∑[n+2]+4)`
-/

namespace A211792.P4636111927536209869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211798 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A211792.P4636111927536209869

/-! ## A211792.P1165773252865452559

`A008676(∑[∑[A003368(n+1)]])`
-/

namespace A211792.P1165773252865452559
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003368 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A211792.P1165773252865452559

/-! ## A211792.P3190071125168068782

`A008676(∑[∑[A003366(n+1)+2]]+5)`
-/

namespace A211792.P3190071125168068782
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003366 (n + 1) + 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008676 (∑ j ∈ Finset.range (n + 1), f1 j + 5).toNat

end

end A211792.P3190071125168068782

/-! ## A211792.P13253760871675536112

`A211798(A167614(n+1))+A011743(n)`
-/

namespace A211792.P13253760871675536112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211798 (A167614 (n + 1)).toNat + A011743 n

end

end A211792.P13253760871675536112

/-! ## A211792.P11638614827140539696

`A211798(A167614(n+1))+A185274(n)`
-/

namespace A211792.P11638614827140539696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211798 (A167614 (n + 1)).toNat + A185274 n

end

end A211792.P11638614827140539696

/-!
# A211793: Rectangular array: R(k,n) = number of ordered triples (w,x,y) with all terms in {1,...,n} and w^k >= x^k + y^k.

The programs for A211793, there is no canonical definition to state claims against.
-/

/-! ## A211793.P2664821889090418995

`A004736(n+1)^3-A211790(n+1)`
-/

namespace A211793.P2664821889090418995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 3 - A211790 (n + 1)

end

end A211793.P2664821889090418995

/-! ## A211793.P11857090389971791300

`A000578(A004736(n+1))-A211790(n+1)`
-/

namespace A211793.P11857090389971791300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004736 (n + 1)).toNat - A211790 (n + 1)

end

end A211793.P11857090389971791300

/-! ## A211793.P7525373160786107312

`A048763(A211796(n+1))-A211790(n+1)`
-/

namespace A211793.P7525373160786107312
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211796 (n + 1)).toNat - A211790 (n + 1)

end

end A211793.P7525373160786107312

/-! ## A211793.P4059407034807524123

`A048763(A211796(char[1]+1+n))%A211790(n+1)`
-/

namespace A211793.P4059407034807524123
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A048763 (A211796 ((if ∃ j, f1 j = n then 1 else 0) + 1 + n)).toNat) (A211790 (n + 1))

end

end A211793.P4059407034807524123

/-! ## A211793.P13529299068341752218

`A182259(n+1)+A211808(n+1)-A211790(n+1)`
-/

namespace A211793.P13529299068341752218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182259 (n + 1) + (A211808 (n + 1) - A211790 (n + 1))

end

end A211793.P13529299068341752218

/-! ## A211793.P12220579432302959784

`A211796(n+1)+A211799(n+1)-A211790(n+1)`
-/

namespace A211793.P12220579432302959784
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211796 (n + 1) + (A211799 (n + 1) - A211790 (n + 1))

end

end A211793.P12220579432302959784

/-! ## A211793.P12889956028086276139

`A211802(n+1)+A211805(n+1)-A211790(n+1)`
-/

namespace A211793.P12889956028086276139
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211802 (n + 1) + (A211805 (n + 1) - A211790 (n + 1))

end

end A211793.P12889956028086276139

/-! ## A211793.P1361354902219207109

`A000578(A004736(n+1))%A211790(A000027(n+1))`
-/

namespace A211793.P1361354902219207109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A004736 (n + 1)).toNat) (A211790 (A000027 (n + 1)).toNat)

end

end A211793.P1361354902219207109

/-!
# A211794: G.f. satisfies: A(x) = x + A(A(x))^2 + A(A(x))^3.

The programs for A211794, there is no canonical definition to state claims against.
-/

/-! ## A211794.P8731151860124055645

`A020662(A059099(n)-n)`
-/

namespace A211794.P8731151860124055645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020662 (A059099 n - (n : ℤ)).toNat

end

end A211794.P8731151860124055645

/-! ## A211794.P16269503019416917004

`A321412(A005195(n))+A189488(n)`
-/

namespace A211794.P16269503019416917004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321412 (A005195 n).toNat + A189488 n

end

end A211794.P16269503019416917004

/-!
# A211795: Number of (w,x,y,z) with all terms in {1,...,n} and w*x < 2*y*z.

The programs for A211795, there is no canonical definition to state claims against.
-/

/-! ## A211795.P16760187388079959204

`n^4-A211809(n)`
-/

namespace A211795.P16760187388079959204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211809 n

end

end A211795.P16760187388079959204

/-! ## A211795.P12560340101488156197

`A211787(n)-A212019(n)`
-/

namespace A211795.P12560340101488156197
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211787 n - A212019 n

end

end A211795.P12560340101488156197

/-! ## A211795.P1924101973120560845

`abs(A000583(n)-A211809(n))`
-/

namespace A211795.P1924101973120560845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211809 n|

end

end A211795.P1924101973120560845

/-! ## A211795.P3661368048387410220

`A002523(n)-(A211809(n)+1)`
-/

namespace A211795.P3661368048387410220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A211809 n + 1)

end

end A211795.P3661368048387410220

/-! ## A211795.P10319308181296980694

`1-(A211809(n)+A024002(n))`
-/

namespace A211795.P10319308181296980694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A211809 n + A024002 n)

end

end A211795.P10319308181296980694

/-! ## A211795.P1144419232206912677

`abs(A000290(n)²-A211809(n))`
-/

namespace A211795.P1144419232206912677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n ^ 2 - A211809 n|

end

end A211795.P1144419232206912677

/-! ## A211795.P3364016109237787831

`n²²-A157928(n)*A211809(n)`
-/

namespace A211795.P3364016109237787831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n ^ 2) ^ 2 : ℤ) - A157928 n * A211809 n

end

end A211795.P3364016109237787831

/-! ## A211795.P13103637149566932439

`(A000583(n)-A211809(n))%∑[A008528(n)]`
-/

namespace A211795.P13103637149566932439
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008528 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A211809 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211795.P13103637149566932439

/-! ## A211795.P15696809704894695521

`A000583(n)-cos(A000007(n))*A211809(n)`
-/

namespace A211795.P15696809704894695521
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A000583 n : ℝ) - Real.cos (A000007 n : ℝ) * (A211809 n : ℝ)

end

end A211795.P15696809704894695521

/-! ## A211795.P16012989756735403900

`A000007(n+1)+A000583(n)-A211809(n)`
-/

namespace A211795.P16012989756735403900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (n + 1) + (A000583 n - A211809 n)

end

end A211795.P16012989756735403900

/-! ## A211795.P14945407911182834592

`A000038(n+1)-(A211809(n)-A000583(n))`
-/

namespace A211795.P14945407911182834592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 (n + 1) - (A211809 n - A000583 n)

end

end A211795.P14945407911182834592

/-! ## A211795.P3320024466781643342

`char[A000108(n+8)]-(A211809(n)-A000583(n))`
-/

namespace A211795.P3320024466781643342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (n + 8)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) - (A211809 n - A000583 n)

end

end A211795.P3320024466781643342

/-! ## A211795.P1737843719043781837

`A014669(2*n+1)+A000583(n)-A211809(n)`
-/

namespace A211795.P1737843719043781837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014669 (2 * n + 1) + (A000583 n - A211809 n)

end

end A211795.P1737843719043781837

/-! ## A211795.P16132382541804495310

`A036987(2*(n+1))-(A211809(n)-A000583(n))`
-/

namespace A211795.P16132382541804495310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036987 (2 * (n + 1)) - (A211809 n - A000583 n)

end

end A211795.P16132382541804495310

/-! ## A211795.P6131173137217228300

`A014017(2*n+5)-(A211809(n)-A000583(n))`
-/

namespace A211795.P6131173137217228300
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (2 * n + 5) - (A211809 n - A000583 n)

end

end A211795.P6131173137217228300

/-! ## A211795.P1373511740897866589

`(A000583(n)-A211809(n))*A014963(4*n+2)`
-/

namespace A211795.P1373511740897866589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211809 n) * A014963 (4 * n + 2)

end

end A211795.P1373511740897866589

/-! ## A211795.P4122454069795472537

`A032741(C(2, n+2))-(A211809(n)-A000583(n))`
-/

namespace A211795.P4122454069795472537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (Nat.choose 2 (n + 2)) - (A211809 n - A000583 n)

end

end A211795.P4122454069795472537

/-! ## A211795.P16513919335896857154

`(A000583(n)-A211809(n))*A008683(n+1)²!`
-/

namespace A211795.P16513919335896857154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211809 n) * (Nat.factorial (A008683 (n + 1) ^ 2).toNat : ℤ)

end

end A211795.P16513919335896857154

/-! ## A211795.P8302034447258465882

`(A000583(n)-A211809(n))*A000108(n²%(n+1))`
-/

namespace A211795.P8302034447258465882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211809 n) * A000108 (n ^ 2 % (n + 1))

end

end A211795.P8302034447258465882

/-! ## A211795.P870438552578542078

`A000583(n)+A008683(A139859(n+1))*A211809(n)`
-/

namespace A211795.P870438552578542078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000583 n + A008683 (A139859 (n + 1)).toNat * A211809 n

end

end A211795.P870438552578542078

/-!
# A211796: Rectangular array: R(k,n) = number of ordered triples (w,x,y) with all terms in {1,...,n} and w^k<=x^k+y^k.

The programs for A211796, there is no canonical definition to state claims against.
-/

/-! ## A211796.P11056973023855604025

`A004736(n+1)^3-A211799(n+1)`
-/

namespace A211796.P11056973023855604025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 3 - A211799 (n + 1)

end

end A211796.P11056973023855604025

/-! ## A211796.P16866875799860584596

`A000578(A004736(n+1))-A211799(n+1)`
-/

namespace A211796.P16866875799860584596
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004736 (n + 1)).toNat - A211799 (n + 1)

end

end A211796.P16866875799860584596

/-! ## A211796.P7414209214297701941

`A048763(A211790(n+1))-A211799(n+1)`
-/

namespace A211796.P7414209214297701941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211790 (n + 1)).toNat - A211799 (n + 1)

end

end A211796.P7414209214297701941

/-! ## A211796.P2455293981312598154

`A182259(n+1)+A211808(n+1)-A211799(n+1)`
-/

namespace A211796.P2455293981312598154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182259 (n + 1) + (A211808 (n + 1) - A211799 (n + 1))

end

end A211796.P2455293981312598154

/-! ## A211796.P8753151189321401003

`A211790(n+1)+A211793(n+1)-A211799(n+1)`
-/

namespace A211796.P8753151189321401003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211790 (n + 1) + (A211793 (n + 1) - A211799 (n + 1))

end

end A211796.P8753151189321401003

/-! ## A211796.P10318776994212002138

`A211802(n+1)+A211805(n+1)-A211799(n+1)`
-/

namespace A211796.P10318776994212002138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211802 (n + 1) + (A211805 (n + 1) - A211799 (n + 1))

end

end A211796.P10318776994212002138

/-!
# A211797: Number of 4-tuples (w,x,y,z) with all terms in {1,...,n} and w*x>2*y*z.

The programs for A211797, there is no canonical definition to state claims against.
-/

/-! ## A211797.P15769171337669418020

`n^4-A211787(n)`
-/

namespace A211797.P15769171337669418020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n ^ 4 : ℤ) - A211787 n

end

end A211797.P15769171337669418020

/-! ## A211797.P16699484362408340715

`abs(A000583(n)-A211787(n))`
-/

namespace A211797.P16699484362408340715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000583 n - A211787 n|

end

end A211797.P16699484362408340715

/-! ## A211797.P14777839358980533614

`A002523(n)-(A211787(n)+1)`
-/

namespace A211797.P14777839358980533614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002523 n - (A211787 n + 1)

end

end A211797.P14777839358980533614

/-! ## A211797.P16147900867929842501

`1-(A211787(n)+A024002(n))`
-/

namespace A211797.P16147900867929842501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A211787 n + A024002 n)

end

end A211797.P16147900867929842501

/-! ## A211797.P3785237699021722565

`abs(A000290(n)²-A211787(n))`
-/

namespace A211797.P3785237699021722565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000290 n ^ 2 - A211787 n|

end

end A211797.P3785237699021722565

/-! ## A211797.P13526441646288082315

`n²²%A211787(A028310(n))`
-/

namespace A211797.P13526441646288082315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ((n ^ 2) ^ 2 : ℤ) (A211787 (A028310 n).toNat)

end

end A211797.P13526441646288082315

/-! ## A211797.P2791591823001212825

`(n²²-A211787(n))*A007318(val(n+1, 5))`
-/

namespace A211797.P2791591823001212825
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((n ^ 2) ^ 2 : ℤ) - A211787 n) * A007318 (SequenceMachineLib.valuation (n + 1) 5)

end

end A211797.P2791591823001212825

/-! ## A211797.P1488858812148589070

`A212088(n)+A212089(n)-A211787(n)`
-/

namespace A211797.P1488858812148589070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212088 n + (A212089 n - A211787 n)

end

end A211797.P1488858812148589070

/-! ## A211797.P18158167150299097040

`A212092(n)+A212095(n)-A211787(n)`
-/

namespace A211797.P18158167150299097040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212092 n + (A212095 n - A211787 n)

end

end A211797.P18158167150299097040

/-! ## A211797.P4575941291863219160

`A212098(n)+A212099(n)-A211787(n)`
-/

namespace A211797.P4575941291863219160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212098 n + (A212099 n - A211787 n)

end

end A211797.P4575941291863219160

/-! ## A211797.P7383911922332608585

`A212134(n)+A212135(n)-A211787(n)`
-/

namespace A211797.P7383911922332608585
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212134 n + (A212135 n - A211787 n)

end

end A211797.P7383911922332608585

/-! ## A211797.P1590969529076193208

`A212249(n)+A212250(n)-A211787(n)`
-/

namespace A211797.P1590969529076193208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212249 n + (A212250 n - A211787 n)

end

end A211797.P1590969529076193208

/-! ## A211797.P14380031849514304644

`A000583(n)%A211787(A000007(n)+n)`
-/

namespace A211797.P14380031849514304644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n) (A211787 (A000007 n + (n : ℤ)).toNat)

end

end A211797.P14380031849514304644

/-! ## A211797.P878092741571101902

`A008683(8*n+4)+A000583(n)-A211787(n)`
-/

namespace A211797.P878092741571101902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (8 * n + 4) + (A000583 n - A211787 n)

end

end A211797.P878092741571101902

/-! ## A211797.P7025429260684948801

`(A000583(n)-A211787(n))%∑[A000447(2*n+1)]`
-/

namespace A211797.P7025429260684948801
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000447 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000583 n - A211787 n) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A211797.P7025429260684948801

/-! ## A211797.P13233651598856822791

`A212136(n)+A212150(n)-A211787(n)`
-/

namespace A211797.P13233651598856822791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212136 n + (A212150 n - A211787 n)

end

end A211797.P13233651598856822791

/-! ## A211797.P1771461068484149332

`A212063(n)+A212064(n)-A211787(n)`
-/

namespace A211797.P1771461068484149332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212063 n + (A212064 n - A211787 n)

end

end A211797.P1771461068484149332

/-! ## A211797.P15828671215506338001

`A212065(n)+A212066(n)-A211787(n)`
-/

namespace A211797.P15828671215506338001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212065 n + (A212066 n - A211787 n)

end

end A211797.P15828671215506338001

/-! ## A211797.P16588155004464474343

`A211809(n)-A212019(n)`
-/

namespace A211797.P16588155004464474343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211809 n - A212019 n

end

end A211797.P16588155004464474343

/-! ## A211797.P7160485239940714315

`(A000583(n)-A211787(n))*A014963(55*(n+1))`
-/

namespace A211797.P7160485239940714315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000583 n - A211787 n) * A014963 (55 * (n + 1))

end

end A211797.P7160485239940714315

/-!
# A211799: Rectangular array: R(k,n) = number of ordered triples (w,x,y) with all terms in {1,...,n} and w^k<=x^k+y<k.

The programs for A211799, there is no canonical definition to state claims against.
-/

/-! ## A211799.P8351481001370450107

`A004736(n+1)^3-A211796(n+1)`
-/

namespace A211799.P8351481001370450107
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (n + 1) ^ 3 - A211796 (n + 1)

end

end A211799.P8351481001370450107

/-! ## A211799.P5619245058302888924

`(A025581(n)+1)^3-A211796(n+1)`
-/

namespace A211799.P5619245058302888924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A025581 n + 1) ^ 3 - A211796 (n + 1)

end

end A211799.P5619245058302888924

/-! ## A211799.P3489232390708454774

`A000578(A004736(n+1))-A211796(n+1)`
-/

namespace A211799.P3489232390708454774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A004736 (n + 1)).toNat - A211796 (n + 1)

end

end A211799.P3489232390708454774

/-! ## A211799.P15921186371883669029

`A000578(A025581(n)+1)-A211796(n+1)`
-/

namespace A211799.P15921186371883669029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A025581 n + 1).toNat - A211796 (n + 1)

end

end A211799.P15921186371883669029

/-! ## A211799.P11427480376674743832

`A048763(A211790(n+1))-A211796(n+1)`
-/

namespace A211799.P11427480376674743832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048763 (A211790 (n + 1)).toNat - A211796 (n + 1)

end

end A211799.P11427480376674743832

/-! ## A211799.P1748067383399815818

`A000578(log2(A130321(n))+1)-A211796(n+1)`
-/

namespace A211799.P1748067383399815818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (SequenceMachineLib.roundAway (Real.logb 2 (A130321 n : ℝ) + 1)).toNat - A211796 (n + 1)

end

end A211799.P1748067383399815818

/-! ## A211799.P12879837700161024754

`A182259(n+1)+A211808(n+1)-A211796(n+1)`
-/

namespace A211799.P12879837700161024754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182259 (n + 1) + (A211808 (n + 1) - A211796 (n + 1))

end

end A211799.P12879837700161024754

/-! ## A211799.P6473139967749708996

`A211790(n+1)+A211793(n+1)-A211796(n+1)`
-/

namespace A211799.P6473139967749708996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211790 (n + 1) + (A211793 (n + 1) - A211796 (n + 1))

end

end A211799.P6473139967749708996

/-! ## A211799.P5364609562087052495

`A211802(n+1)+A211805(n+1)-A211796(n+1)`
-/

namespace A211799.P5364609562087052495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211802 (n + 1) + (A211805 (n + 1) - A211796 (n + 1))

end

end A211799.P5364609562087052495

/-! ## A211799.P16269569417438770011

`A000578(A004736(n+1))%A211796(A000027(n+1))`
-/

namespace A211799.P16269569417438770011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000578 (A004736 (n + 1)).toNat) (A211796 (A000027 (n + 1)).toNat)

end

end A211799.P16269569417438770011

