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
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C020
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C046
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C010
import Seq.B001.C012
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B008.C000
import Seq.B009.C000
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
import SequenceMachineLib.Triangle

/-!
# A023104: (2^n)-th digit of infinite string 12345678910111213141516...

The programs for A023104, there is no canonical definition to state claims against.
-/

/-! ## A023104.P7541779659423973150

`A007376(2^n)`
-/

namespace A023104.P7541779659423973150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007376 (2 ^ n)

end

end A023104.P7541779659423973150

/-! ## A023104.P9422240483180691154

`dr(A007376(record[T(n-1,k-1)+T(n-1,k-1)]))` with `a(0)=1`
-/

namespace A023104.P9422240483180691154
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  SequenceMachineLib.triUpLeft f1 n + SequenceMachineLib.triUpLeft f1 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A023104.P9422240483180691154

/-! ## A023104.P16346433304041646306

`dr(A007376(∑[2*a(n-1)]))` with `a(0)=1, a(1)=1`
-/

namespace A023104.P16346433304041646306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (∑ j ∈ Finset.range (n + 1), f1 j))

end

end A023104.P16346433304041646306

/-! ## A023104.P1869048617086032224

`dr(A007376(record[2*a(n-1)]))` with `a(0)=1, a(1)=0, a(2)=1`
-/

namespace A023104.P1869048617086032224
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 0, 1] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)))

end

end A023104.P1869048617086032224

/-! ## A023104.P14168180507308563088

`dr(A007376(Δ[2*a(n-1)+1]))` with `a(0)=0`
-/

namespace A023104.P14168180507308563088
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [0] fun n f1 =>
  2 * f1 (n - 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat)

end

end A023104.P14168180507308563088

/-!
# A023105: Number of distinct quadratic residues mod 2^n.

The programs for A023105, the canonical program `A023105.P12963983014904113391` is in `Seq.B000.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023105 has offset 0).

The definition of A023105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A023105.P3028516713204455096

`ogf((1-3x^2-x^3)/(1-2x-x^2+2x^3))`
-/

namespace A023105.P3028516713204455096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, -1] [1, -2, -1, 2] n

end

end A023105.P3028516713204455096

namespace A023105

/-- `ogf((1-3x^2-x^3)/(1-2x-x^2+2x^3))` -/
def P3028516713204455096.Spec : Prop :=
  ∀ n, P3028516713204455096.a n = A023105 n

end A023105

/-! ## A023105.P12963983014904113391

`2*a(n-1)+a(n-2)-2*a(n-3)` with `a(0)=1, a(1)=2, a(2)=2, a(3)=3`

The canonical program, it is in `Seq.B000.C005`.
-/

namespace A023105

/-- `2*a(n-1)+a(n-2)-2*a(n-3)` -/
def P12963983014904113391.Spec : Prop :=
  ∀ n, P12963983014904113391.a n = A023105 n

theorem P12963983014904113391.correct : P12963983014904113391.Spec := by
  intro n
  simp only [A023105]

end A023105

/-! ## A023105.P18141117112084522641

`floor((2^n+10)/6)`
-/

namespace A023105.P18141117112084522641
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 ^ n + 10 : ℚ) / 6⌋

end

end A023105.P18141117112084522641

namespace A023105

/-- `floor((2^n+10)/6)` -/
def P18141117112084522641.Spec : Prop :=
  ∀ n, P18141117112084522641.a n = A023105 n

end A023105

/-! ## A023105.P4902319083152464021

`A000224(2^n)`
-/

namespace A023105.P4902319083152464021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000224 (2 ^ n)

end

end A023105.P4902319083152464021

namespace A023105

/-- `A000224(2^n)` -/
def P4902319083152464021.Spec : Prop :=
  ∀ n, P4902319083152464021.a n = A023105 n

end A023105

/-! ## A023105.P713969339073055826

`∑[ogf((-1+3x^2+x^3)/(-1+x+2x^2))]`
-/

namespace A023105.P713969339073055826
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 0, -3, -1] [1, -1, -2] n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023105.P713969339073055826

namespace A023105

/-- `∑[ogf((-1+3x^2+x^3)/(-1+x+2x^2))]` -/
def P713969339073055826.Spec : Prop :=
  ∀ n, P713969339073055826.a n = A023105 n

end A023105

/-! ## A023105.P3271800874539489566

`2*a(n-1)-gcd(2, n)` with `a(0)=1, a(1)=2`
-/

namespace A023105.P3271800874539489566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - (Nat.gcd 2 n : ℤ)

end

end A023105.P3271800874539489566

namespace A023105

/-- `2*a(n-1)-gcd(2, n)` -/
def P3271800874539489566.Spec : Prop :=
  ∀ n, P3271800874539489566.a n = A023105 n

end A023105

/-! ## A023105.P14592998151964202360

`a(n-2)+2^(n-3)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A023105.P14592998151964202360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 2) + (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)

end

end A023105.P14592998151964202360

namespace A023105

/-- `a(n-2)+2^(n-3)` -/
def P14592998151964202360.Spec : Prop :=
  ∀ n, P14592998151964202360.a n = (A023105 n : ℚ)

end A023105

/-! ## A023105.P10117705045456692682

`n%2+2*(a(n-1)-1)` with `a(0)=1, a(1)=2`
-/

namespace A023105.P10117705045456692682
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  ((n % 2 : ℕ) : ℤ) + 2 * (a (n - 1) - 1)

end

end A023105.P10117705045456692682

namespace A023105

/-- `n%2+2*(a(n-1)-1)` -/
def P10117705045456692682.Spec : Prop :=
  ∀ n, P10117705045456692682.a n = A023105 n

end A023105

/-! ## A023105.P9363432391489209026

`2*a(n-1)-a((n-1)%2)` with `a(0)=1, a(1)=2`
-/

namespace A023105.P9363432391489209026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  2 * a (n - 1) - a (Int.tmod ((n : ℤ) - 1) 2).toNat

end

end A023105.P9363432391489209026

namespace A023105

/-- `2*a(n-1)-a((n-1)%2)` -/
def P9363432391489209026.Spec : Prop :=
  ∀ n, P9363432391489209026.a n = A023105 n

end A023105

/-! ## A023105.P12320181367395295979

`2*a(n-2)+a(n-1)-3` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A023105.P12320181367395295979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * a (n - 2) + (a (n - 1) - 3)

end

end A023105.P12320181367395295979

namespace A023105

/-- `2*a(n-2)+a(n-1)-3` -/
def P12320181367395295979.Spec : Prop :=
  ∀ n, P12320181367395295979.a n = A023105 n

end A023105

/-! ## A023105.P5976338886603442968

`2*a(n-2)-(3-a(n-1))` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A023105.P5976338886603442968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  2 * a (n - 2) - (3 - a (n - 1))

end

end A023105.P5976338886603442968

namespace A023105

/-- `2*a(n-2)-(3-a(n-1))` -/
def P5976338886603442968.Spec : Prop :=
  ∀ n, P5976338886603442968.a n = A023105 n

end A023105

/-! ## A023105.P13194170345323670027

`a(n-2)-3+a(n-1)+a(n-2)` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A023105.P13194170345323670027
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 2) - 3 + (a (n - 1) + a (n - 2))

end

end A023105.P13194170345323670027

namespace A023105

/-- `a(n-2)-3+a(n-1)+a(n-2)` -/
def P13194170345323670027.Spec : Prop :=
  ∀ n, P13194170345323670027.a n = A023105 n

end A023105

/-! ## A023105.P15944306773899191131

`floor(a(n-1))-(3-a(n-2)-a(n-2))` with `a(0)=1, a(1)=2, a(2)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A023105.P15944306773899191131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) - (3 - a (n - 2) - a (n - 2))

end

end A023105.P15944306773899191131

namespace A023105

/-- `floor(a(n-1))-(3-a(n-2)-a(n-2))` -/
def P15944306773899191131.Spec : Prop :=
  ∀ n, P15944306773899191131.a n = A023105 n

end A023105

/-! ## A023105.P10415702991954238440

`a(n-1)-(1-a(n-1))-a(n-1)%2` with `a(0)=1, a(1)=2, a(2)=2`
-/

namespace A023105.P10415702991954238440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 2] fun n a =>
  a (n - 1) - (1 - a (n - 1)) - Int.tmod (a (n - 1)) 2

end

end A023105.P10415702991954238440

namespace A023105

/-- `a(n-1)-(1-a(n-1))-a(n-1)%2` -/
def P10415702991954238440.Spec : Prop :=
  ∀ n, P10415702991954238440.a n = A023105 n

end A023105

/-! ## A023105.P7997826456077952273

`∑[A001045(abs(2-n))]`
-/

namespace A023105.P7997826456077952273
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 |2 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023105.P7997826456077952273

namespace A023105

/-- `∑[A001045(abs(2-n))]` -/
def P7997826456077952273.Spec : Prop :=
  ∀ n, P7997826456077952273.a n = A023105 n

end A023105

/-! ## A023105.P8821370221127324003

`∑[A328284(n+1)]+1`
-/

namespace A023105.P8821370221127324003
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328284 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A023105.P8821370221127324003

namespace A023105

/-- `∑[A328284(n+1)]+1` -/
def P8821370221127324003.Spec : Prop :=
  ∀ n, P8821370221127324003.a n = A023105 n

end A023105

/-! ## A023105.P1232615034911922328

`A001045(n-2)+a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A023105.P1232615034911922328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A001045 (n - 2) + a (n - 1)

end

end A023105.P1232615034911922328

namespace A023105

/-- `A001045(n-2)+a(n-1)` -/
def P1232615034911922328.Spec : Prop :=
  ∀ n, P1232615034911922328.a n = A023105 n

end A023105

/-! ## A023105.P3643301370827640753

`A062709(n-2)-a(n-1)` with `a(0)=1, a(1)=2`
-/

namespace A023105.P3643301370827640753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A062709 (n - 2) - a (n - 1)

end

end A023105.P3643301370827640753

namespace A023105

/-- `A062709(n-2)-a(n-1)` -/
def P3643301370827640753.Spec : Prop :=
  ∀ n, P3643301370827640753.a n = A023105 n

end A023105

/-! ## A023105.P7362591707044876519

`A056469(n-1)-a(n-1)+1` with `a(0)=1`
-/

namespace A023105.P7362591707044876519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A056469 (n - 1) - a (n - 1) + 1

end

end A023105.P7362591707044876519

namespace A023105

/-- `A056469(n-1)-a(n-1)+1` -/
def P7362591707044876519.Spec : Prop :=
  ∀ n, P7362591707044876519.a n = A023105 n

end A023105

/-! ## A023105.P12967882763256424560

`A040001(2*n)+A000975(A289207(n))`
-/

namespace A023105.P12967882763256424560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (2 * n) + A000975 (A289207 n).toNat

end

end A023105.P12967882763256424560

namespace A023105

/-- `A040001(2*n)+A000975(A289207(n))` -/
def P12967882763256424560.Spec : Prop :=
  ∀ n, P12967882763256424560.a n = A023105 n

end A023105

/-!
# A023106: a(n) is a power of the sum of its digits.

The programs for A023106, there is no canonical definition to state claims against.
-/

/-! ## A023106.P17338784440463688693

`A038178(n+1)`
-/

namespace A023106.P17338784440463688693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038178 (n + 1)

end

end A023106.P17338784440463688693

/-! ## A023106.P12708196125599373934

`A246605(A049872(n))`
-/

namespace A023106.P12708196125599373934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A049872 n).toNat

end

end A023106.P12708196125599373934

/-! ## A023106.P3209675863998429164

`∩[A032516(n), A381487(n+1)]`
-/

namespace A023106.P3209675863998429164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032516 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023106.P3209675863998429164

/-! ## A023106.P9410993069497441441

`∩[A032521(n), A381487(n+1)]`
-/

namespace A023106.P9410993069497441441
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032521 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381487 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023106.P9410993069497441441

/-!
# A023108: Positive integers which apparently never result in a palindrome under repeated applications of the function A056964(x) = x + (x with digits reversed).

The programs for A023108, there is no canonical definition to state claims against.
-/

/-! ## A023108.P10139125531193321702

`A323796(n+2)-A037911(A074706(n))`
-/

namespace A023108.P10139125531193321702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323796 (n + 2) - A037911 (A074706 n).toNat

end

end A023108.P10139125531193321702

/-!
# A023109: a(0) = 0. For n > 0, smallest non-palindromic number k such that the smallest palindrome in the Reverse and Add! trajectory of k is reached after exactly n iterations.

The programs for A023109, there is no canonical definition to state claims against.
-/

/-! ## A023109.P3229646706446089368

`A033866(n)-floor(acot(n))`
-/

namespace A023109.P3229646706446089368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033866 n - ⌊SequenceMachineLib.acot (n : ℝ)⌋

end

end A023109.P3229646706446089368

/-! ## A023109.P3254148873453764683

`A033866(n)-A000007(n)`
-/

namespace A023109.P3254148873453764683
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033866 n - A000007 n

end

end A023109.P3254148873453764683

/-! ## A023109.P12937135672224708137

`A033866(n)-A088157(n)`
-/

namespace A023109.P12937135672224708137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033866 n - A088157 n

end

end A023109.P12937135672224708137

/-! ## A023109.P6359199372074247229

`A033866(n)-A112316(n)`
-/

namespace A023109.P6359199372074247229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033866 n - A112316 n

end

end A023109.P6359199372074247229

/-! ## A023109.P1511192492976974878

`A033866(n)-A151622(n)`
-/

namespace A023109.P1511192492976974878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033866 n - A151622 n

end

end A023109.P1511192492976974878

/-!
# A023110: Squares which remain squares when the last digit is removed.

The programs for A023110, the canonical program `A023110.P12853904010065431541` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023110 has offset 1).

The definition of A023110 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031149, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A023110.P12853904010065431541

`A031149(n+1)²`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023110

/-- `A031149(n+1)²` -/
def P12853904010065431541.Spec : Prop :=
  ∀ n, P12853904010065431541.a n = A023110 (n + 1)

theorem P12853904010065431541.correct : P12853904010065431541.Spec := by
  intro n
  simp only [A023110, Nat.add_sub_cancel]

end A023110

/-! ## A023110.P7121462229803733331

`record[A031149(A286543(n))²]`
-/

namespace A023110.P7121462229803733331
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A286543 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023110.P7121462229803733331

namespace A023110

/-- `record[A031149(A286543(n))²]` -/
def P7121462229803733331.Spec : Prop :=
  ∀ n, P7121462229803733331.a n = A023110 (n + 1)

end A023110

/-! ## A023110.P10946463468233196736

`A031149(A389483(n+1))^2`
-/

namespace A023110.P10946463468233196736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A389483 (n + 1)).toNat ^ 2

end

end A023110.P10946463468233196736

namespace A023110

/-- `A031149(A389483(n+1))^2` -/
def P10946463468233196736.Spec : Prop :=
  ∀ n, P10946463468233196736.a n = A023110 (n + 1)

end A023110

/-! ## A023110.P7951090733137878540

`A031149(n+1)^(A054977(n)+1)`
-/

namespace A023110.P7951090733137878540
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031149 (n + 1) : ℚ) ^ (A054977 n + 1 : ℤ)

end

end A023110.P7951090733137878540

namespace A023110

/-- `A031149(n+1)^(A054977(n)+1)` -/
def P7951090733137878540.Spec : Prop :=
  ∀ n, P7951090733137878540.a n = (A023110 (n + 1) : ℚ)

end A023110

/-! ## A023110.P10238589740489994334

`A031149(n+1)^(A057427(n)+1)`
-/

namespace A023110.P10238589740489994334
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031149 (n + 1) : ℚ) ^ (A057427 n + 1 : ℤ)

end

end A023110.P10238589740489994334

namespace A023110

/-- `A031149(n+1)^(A057427(n)+1)` -/
def P10238589740489994334.Spec : Prop :=
  ∀ n, P10238589740489994334.a n = (A023110 (n + 1) : ℚ)

end A023110

/-! ## A023110.P14369641249962843208

`A031149(n+1)^(A000007(n)+2)`
-/

namespace A023110.P14369641249962843208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031149 (n + 1) : ℚ) ^ (A000007 n + 2 : ℤ)

end

end A023110.P14369641249962843208

namespace A023110

/-- `A031149(n+1)^(A000007(n)+2)` -/
def P14369641249962843208.Spec : Prop :=
  ∀ n, P14369641249962843208.a n = (A023110 (n + 1) : ℚ)

end A023110

/-! ## A023110.P13848241472489133477

`A031149(n+1)^A020639(A000123(n))`
-/

namespace A023110.P13848241472489133477
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031149 (n + 1) : ℚ) ^ (A020639 (A000123 n).toNat : ℤ)

end

end A023110.P13848241472489133477

namespace A023110

/-- `A031149(n+1)^A020639(A000123(n))` -/
def P13848241472489133477.Spec : Prop :=
  ∀ n, P13848241472489133477.a n = (A023110 (n + 1) : ℚ)

end A023110

/-! ## A023110.P1247709847855732816

`record[A031149(A286543(n))]*A031149(n+1)`
-/

namespace A023110.P1247709847855732816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031149 (A286543 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) * A031149 (n + 1)

end

end A023110.P1247709847855732816

namespace A023110

/-- `record[A031149(A286543(n))]*A031149(n+1)` -/
def P1247709847855732816.Spec : Prop :=
  ∀ n, P1247709847855732816.a n = A023110 (n + 1)

end A023110

/-!
# A023111: Squares that remain square when the digit 1 is appended.

The programs for A023111, there is no canonical definition to state claims against.
-/

/-! ## A023111.P14717089495910239819

`A084070(n)²`
-/

namespace A023111.P14717089495910239819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084070 n ^ 2

end

end A023111.P14717089495910239819

/-! ## A023111.P8989412467694565138

`A099366(2*n)`
-/

namespace A023111.P8989412467694565138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099366 (2 * n)

end

end A023111.P8989412467694565138

/-! ## A023111.P6210101370765420482

`A005668(2*n)²`
-/

namespace A023111.P6210101370765420482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005668 (2 * n) ^ 2

end

end A023111.P6210101370765420482

/-! ## A023111.P15137355374884320363

`record[A099366(A014681(n))]`
-/

namespace A023111.P15137355374884320363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099366 (A014681 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023111.P15137355374884320363

/-!
# A023112: Squares that remain square when the digit 4 is appended.

The programs for A023112, there is no canonical definition to state claims against.
-/

/-! ## A023112.P14859578967604926732

`4*A023111(n+1)`
-/

namespace A023112.P14859578967604926732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A023111 (n + 1)

end

end A023112.P14859578967604926732

/-! ## A023112.P10272259541403766909

`(2*A084070(n))²`
-/

namespace A023112.P10272259541403766909
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A084070 n) ^ 2

end

end A023112.P10272259541403766909

/-! ## A023112.P14354521867538073745

`4*A099366(2*n)`
-/

namespace A023112.P14354521867538073745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A099366 (2 * n)

end

end A023112.P14354521867538073745

/-! ## A023112.P17098432370737667654

`(2*A005668(2*n))²`
-/

namespace A023112.P17098432370737667654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A005668 (2 * n)) ^ 2

end

end A023112.P17098432370737667654

/-!
# A023113: Squares that remain square when the digit 6 is appended.

The programs for A023113, there is no canonical definition to state claims against.
-/

/-! ## A023113.P12509078459189650821

`A221874(1+n)²`
-/

namespace A023113.P12509078459189650821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221874 (1 + n) ^ 2

end

end A023113.P12509078459189650821

/-! ## A023113.P14668052281445646002

`A221874(n+1)^2`
-/

namespace A023113.P14668052281445646002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221874 (n + 1) ^ 2

end

end A023113.P14668052281445646002

/-! ## A023113.P884166277139197531

`2*A274544(n+1)-1`
-/

namespace A023113.P884166277139197531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274544 (n + 1) - 1

end

end A023113.P884166277139197531

/-! ## A023113.P7522812786186254119

`(1+2*A129556(n+1))²`
-/

namespace A023113.P7522812786186254119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 + 2 * A129556 (n + 1)) ^ 2

end

end A023113.P7522812786186254119

/-! ## A023113.P18404697092954953280

`(1-2*A254332(n+1))²`
-/

namespace A023113.P18404697092954953280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A254332 (n + 1)) ^ 2

end

end A023113.P18404697092954953280

/-!
# A023114: Squares that remain square when the digit 9 is appended.

The programs for A023114, there is no canonical definition to state claims against.
-/

/-! ## A023114.P8188430215096332525

`A075836(1+n)²`
-/

namespace A023114.P8188430215096332525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075836 (1 + n) ^ 2

end

end A023114.P8188430215096332525

/-! ## A023114.P7171934444361326944

`A075836(n+1)^2`
-/

namespace A023114.P7171934444361326944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075836 (n + 1) ^ 2

end

end A023114.P7171934444361326944

/-! ## A023114.P16597243793882274549

`(2*A075873(n+1))²`
-/

namespace A023114.P16597243793882274549
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A075873 (n + 1)) ^ 2

end

end A023114.P16597243793882274549

/-! ## A023114.P2050742504783552125

`record[A075836(A075825(n))²]`
-/

namespace A023114.P2050742504783552125
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075836 (A075825 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023114.P2050742504783552125

/-! ## A023114.P9327401373533649418

`record[A075836(A193592(n))²]`
-/

namespace A023114.P9327401373533649418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075836 (A193592 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023114.P9327401373533649418

/-!
# A023115: Signature sequence of 1/sqrt(2) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023115, there is no canonical definition to state claims against.
-/

/-! ## A023115.P6009037012316619922

`A000720(p?[A129131(A007336(n+1))])`
-/

namespace A023115.P6009037012316619922
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (A007336 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A023115.P6009037012316619922

/-! ## A023115.P9229260390929944553

`A000005(2^A025666(1+n))`
-/

namespace A023115.P9229260390929944553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025666 (1 + n) : ℤ))).toNat

end

end A023115.P9229260390929944553

/-! ## A023115.P6716304706906625899

`A135523(2^A025666(1+n))`
-/

namespace A023115.P6716304706906625899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025666 (1 + n) : ℤ))).toNat

end

end A023115.P6716304706906625899

/-! ## A023115.P6159478753955768515

`A268672(2^A025666(n+1))`
-/

namespace A023115.P6159478753955768515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268672 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025666 (n + 1) : ℤ))).toNat

end

end A023115.P6159478753955768515

/-! ## A023115.P1289387578189937429

`A286552(2^A025666(n+1))`
-/

namespace A023115.P1289387578189937429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025666 (n + 1) : ℤ))).toNat

end

end A023115.P1289387578189937429

/-! ## A023115.P48277614064798283

`A326196(2^A025666(n+1))`
-/

namespace A023115.P48277614064798283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326196 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025666 (n + 1) : ℤ))).toNat

end

end A023115.P48277614064798283

/-! ## A023115.P13356081025175792875

`A331179(2^A025666(n+1))`
-/

namespace A023115.P13356081025175792875
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331179 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025666 (n + 1) : ℤ))).toNat

end

end A023115.P13356081025175792875

/-!
# A023116: Signature sequence of 1/sqrt(3) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023116, there is no canonical definition to state claims against.
-/

/-! ## A023116.P16298997717899391592

`A084822(1+n)`
-/

namespace A023116.P16298997717899391592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084822 (1 + n)

end

end A023116.P16298997717899391592

/-! ## A023116.P10420347682364491260

`A035218(A107988(n+1))`
-/

namespace A023116.P10420347682364491260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A107988 (n + 1)).toNat

end

end A023116.P10420347682364491260

/-! ## A023116.P12865864268687526619

`(A249947(n+1)+1)/2`
-/

namespace A023116.P12865864268687526619
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A249947 (n + 1) + 1 : ℚ) / 2

end

end A023116.P12865864268687526619

/-! ## A023116.P13608163613757109023

`A110955(A263132(n+1))`
-/

namespace A023116.P13608163613757109023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110955 (A263132 (n + 1)).toNat

end

end A023116.P13608163613757109023

/-!
# A023117: Signature sequence of sqrt(5) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023117, there is no canonical definition to state claims against.
-/

/-! ## A023117.P11279946088345712378

`A345199(A034544(n+1))+A082375(n)`
-/

namespace A023117.P11279946088345712378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345199 (A034544 (n + 1)).toNat + A082375 n

end

end A023117.P11279946088345712378

/-! ## A023117.P17187548958262452621

`A122196(n+1)*A345199(A034544(n+1))`
-/

namespace A023117.P17187548958262452621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122196 (n + 1) * A345199 (A034544 (n + 1)).toNat

end

end A023117.P17187548958262452621

/-! ## A023117.P13573850409884933728

`A122196(A044922(n+1)%A337488(n+1))`
-/

namespace A023117.P13573850409884933728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122196 (Int.tmod (A044922 (n + 1)) (A337488 (n + 1))).toNat

end

end A023117.P13573850409884933728

/-!
# A023118: Signature sequence of 1/sqrt(5) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023118, there is no canonical definition to state claims against.
-/

/-! ## A023118.P15487742282154525559

`A167969(A061887(1+n))`
-/

namespace A023118.P15487742282154525559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (A061887 (1 + n)).toNat

end

end A023118.P15487742282154525559

/-! ## A023118.P1937109177621501757

`A167969(A007606(n+1))`
-/

namespace A023118.P1937109177621501757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (A007606 (n + 1)).toNat

end

end A023118.P1937109177621501757

/-!
# A023120: Signature sequence of 1/sqrt(7) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023120, there is no canonical definition to state claims against.
-/

/-! ## A023120.P68776762828166800

`A099812(A124510(n+2))`
-/

namespace A023120.P68776762828166800
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099812 (A124510 (n + 2)).toNat

end

end A023120.P68776762828166800

/-! ## A023120.P10986273514846568498

`A122841(A008588(A214681(A025610(n+1))))`
-/

namespace A023120.P10986273514846568498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122841 (A008588 (A214681 (A025610 (n + 1)).toNat).toNat).toNat

end

end A023120.P10986273514846568498

/-! ## A023120.P9780499152388748530

`A120250(A025610(n+1))`
-/

namespace A023120.P9780499152388748530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120250 (A025610 (n + 1)).toNat

end

end A023120.P9780499152388748530

/-! ## A023120.P1708517320787029328

`A257992(A124509(n+2))`
-/

namespace A023120.P1708517320787029328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257992 (A124509 (n + 2)).toNat

end

end A023120.P1708517320787029328

/-!
# A023121: Signature sequence of sqrt(2/3) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023121, there is no canonical definition to state claims against.
-/

/-! ## A023121.P3019085706081503267

`A167969(A292564(n+1))`
-/

namespace A023121.P3019085706081503267
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (A292564 (n + 1)).toNat

end

end A023121.P3019085706081503267

/-! ## A023121.P9493413183468492913

`A125923(A135794(n+1))`
-/

namespace A023121.P9493413183468492913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A125923 (A135794 (n + 1)).toNat

end

end A023121.P9493413183468492913

/-! ## A023121.P6012321619960413256

`A193042(A193042(A194100(A194101(A194100(n+1)))))`
-/

namespace A023121.P6012321619960413256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193042 (A193042 (A194100 (A194101 (A194100 (n + 1)).toNat).toNat).toNat).toNat

end

end A023121.P6012321619960413256

/-!
# A023122: Signature sequence of sqrt(3/2) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023122, there is no canonical definition to state claims against.
-/

/-! ## A023122.P3732248574230342240

`A000005(gcd(A000079(n), A025628(n+1)))`
-/

namespace A023122.P3732248574230342240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000079 n) (A025628 (n + 1)))

end

end A023122.P3732248574230342240

/-! ## A023122.P5449088600578194978

`A084532(A183987(n+1))`
-/

namespace A023122.P5449088600578194978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084532 (A183987 (n + 1)).toNat

end

end A023122.P5449088600578194978

/-! ## A023122.P6936296313875927167

`A330751(A025628(n+1))`
-/

namespace A023122.P6936296313875927167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330751 (A025628 (n + 1)).toNat

end

end A023122.P6936296313875927167

/-! ## A023122.P10343045587939492921

`A167288(A375759(n+1))`
-/

namespace A023122.P10343045587939492921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167288 (A375759 (n + 1)).toNat

end

end A023122.P10343045587939492921

/-!
# A023123: Signature sequence of e (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023123, there is no canonical definition to state claims against.
-/

/-! ## A023123.P2135445935309878108

`A023131(n+1)^A210709(A210709(n))`
-/

namespace A023123.P2135445935309878108
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023131 (n + 1) : ℚ) ^ (A210709 (A210709 n).toNat : ℤ)

end

end A023123.P2135445935309878108

/-! ## A023123.P11692560944987938943

`A023131(n+1)%A088215(A092056(n))`
-/

namespace A023123.P11692560944987938943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023131 (n + 1)) (A088215 (A092056 n).toNat)

end

end A023123.P11692560944987938943

/-! ## A023123.P15371500734628385082

`gcd(A023131(n+1), A034557(A243903(n+1)))`
-/

namespace A023123.P15371500734628385082
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A023131 (n + 1)) (A034557 (A243903 (n + 1)).toNat)

end

end A023123.P15371500734628385082

/-! ## A023123.P15062742002676847259

`A001511(5*A003591(n+1))`
-/

namespace A023123.P15062742002676847259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (5 * A003591 (n + 1)).toNat

end

end A023123.P15062742002676847259

/-!
# A023124: Signature sequence of 1/e (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023124, there is no canonical definition to state claims against.
-/

/-! ## A023124.P1466206233584570320

`A050330(A384875(n+3))`
-/

namespace A023124.P1466206233584570320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050330 (A384875 (n + 3)).toNat

end

end A023124.P1466206233584570320

/-! ## A023124.P14255396715491769029

`A023142(5*A003591(n+1))`
-/

namespace A023124.P14255396715491769029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023142 (5 * A003591 (n + 1)).toNat

end

end A023124.P14255396715491769029

/-! ## A023124.P8720735919412827202

`A049115(5*A003591(n+1))`
-/

namespace A023124.P8720735919412827202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049115 (5 * A003591 (n + 1)).toNat

end

end A023124.P8720735919412827202

/-! ## A023124.P9276515114087123000

`A055509(5*A003591(n+1))`
-/

namespace A023124.P9276515114087123000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055509 (5 * A003591 (n + 1)).toNat

end

end A023124.P9276515114087123000

/-!
# A023125: Signature sequence of e^2 (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023125, there is no canonical definition to state claims against.
-/

/-! ## A023125.P5277607175557879040

`A001511(∪[A000079(n), A117302(n+1)])`
-/

namespace A023125.P5277607175557879040
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117302 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A023125.P5277607175557879040

/-! ## A023125.P11920476017073860484

`A023134(A087539(3*(n+1))%A177194(2*n+5))`
-/

namespace A023125.P11920476017073860484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023134 (Int.tmod (A087539 (3 * (n + 1))) (A177194 (2 * n + 5))).toNat

end

end A023125.P11920476017073860484

/-!
# A023126: Signature sequence of 1/e^2 (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023126, there is no canonical definition to state claims against.
-/

/-! ## A023126.P16054561108487970776

`A167965(A047468(n+1))`
-/

namespace A023126.P16054561108487970776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A047468 (n + 1)).toNat

end

end A023126.P16054561108487970776

/-! ## A023126.P7144633012767313917

`A259656(A273736(n+1))`
-/

namespace A023126.P7144633012767313917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259656 (A273736 (n + 1)).toNat

end

end A023126.P7144633012767313917

/-! ## A023126.P1437210407201883961

`A095827(A095116(n+1))`
-/

namespace A023126.P1437210407201883961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095827 (A095116 (n + 1)).toNat

end

end A023126.P1437210407201883961

/-! ## A023126.P14193454002788076564

`A167965(A024645(n+1))`
-/

namespace A023126.P14193454002788076564
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A024645 (n + 1)).toNat

end

end A023126.P14193454002788076564

/-! ## A023126.P10088677354146526543

`A227945(A017912(n+1))`
-/

namespace A023126.P10088677354146526543
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227945 (A017912 (n + 1)).toNat

end

end A023126.P10088677354146526543

/-!
# A023127: Signature sequence of sqrt(6) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023127, there is no canonical definition to state claims against.
-/

/-! ## A023127.P13084727694771315037

`A072078(A107364(n+1))`
-/

namespace A023127.P13084727694771315037
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072078 (A107364 (n + 1)).toNat

end

end A023127.P13084727694771315037

/-! ## A023127.P18435567903480676777

`A035164(A107364(n+1))`
-/

namespace A023127.P18435567903480676777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035164 (A107364 (n + 1)).toNat

end

end A023127.P18435567903480676777

/-!
# A023128: Signature sequence of 1/sqrt(6) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023128, there is no canonical definition to state claims against.
-/

/-! ## A023128.P12862990904245289846

`A000720(p?[A073846(A023121(n+1))])`
-/

namespace A023128.P12862990904245289846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A023121 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A023128.P12862990904245289846

/-! ## A023128.P7854662470234791754

`A108346(2^A215590(1+n))`
-/

namespace A023128.P7854662470234791754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108346 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A215590 (1 + n) : ℤ))).toNat

end

end A023128.P7854662470234791754

/-! ## A023128.P212335761990374126

`A327536(2^A215590(n+1))`
-/

namespace A023128.P212335761990374126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327536 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A215590 (n + 1) : ℤ))).toNat

end

end A023128.P212335761990374126

/-! ## A023128.P5508641388232375786

`A333768(2^A215590(n+1))`
-/

namespace A023128.P5508641388232375786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333768 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A215590 (n + 1) : ℤ))).toNat

end

end A023128.P5508641388232375786

/-! ## A023128.P6778487089243888360

`A046951(4^A215590(n+1))`
-/

namespace A023128.P6778487089243888360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046951 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A215590 (n + 1) : ℤ))).toNat

end

end A023128.P6778487089243888360

/-! ## A023128.P9413479659865049349

`A110591(4^A215590(n+1))`
-/

namespace A023128.P9413479659865049349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110591 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A215590 (n + 1) : ℤ))).toNat

end

end A023128.P9413479659865049349

/-! ## A023128.P11762134359976090998

`A322483(4^A215590(n+1))`
-/

namespace A023128.P11762134359976090998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322483 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (A215590 (n + 1) : ℤ))).toNat

end

end A023128.P11762134359976090998

/-! ## A023128.P11346081259333705690

`A000005(7^A215590(n+1))`
-/

namespace A023128.P11346081259333705690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A215590 (n + 1) : ℤ))).toNat

end

end A023128.P11346081259333705690

/-! ## A023128.P5867412033704899132

`A001222(7^A215590(n+1))+1`
-/

namespace A023128.P5867412033704899132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((7 : ℚ) ^ (A215590 (n + 1) : ℤ))).toNat + 1

end

end A023128.P5867412033704899132

/-!
# A023131: Signature sequence of sqrt(8) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023131, there is no canonical definition to state claims against.
-/

/-! ## A023131.P1866122163797930194

`A007336(eq[1, A023115(n+1)%2]+1)`
-/

namespace A023131.P1866122163797930194
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023115 (n + 1)) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A023131.P1866122163797930194

/-! ## A023131.P6886064875464802690

`A007336(A184410(n+1))`
-/

namespace A023131.P6886064875464802690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (A184410 (n + 1)).toNat

end

end A023131.P6886064875464802690

/-! ## A023131.P2971454401871937902

`A090996(A192120(n+2))`
-/

namespace A023131.P2971454401871937902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090996 (A192120 (n + 2)).toNat

end

end A023131.P2971454401871937902

/-!
# A023132: Signature sequence of 1/sqrt(8) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023132, there is no canonical definition to state claims against.
-/

/-! ## A023132.P2823951114221889471

`A023115(eq[0, A023115(n+2)%2]+2)/2`
-/

namespace A023132.P2823951114221889471
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023115 (n + 2)) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A023115 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2) : ℚ) / 2

end

end A023132.P2823951114221889471

/-! ## A023132.P16692326761039883180

`A000720(p?[A073846(A023115(n+1))])`
-/

namespace A023132.P16692326761039883180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073846 (A023115 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A023132.P16692326761039883180

/-! ## A023132.P15893003047074065415

`A035218(A003591(n+1))`
-/

namespace A023132.P15893003047074065415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035218 (A003591 (n + 1)).toNat

end

end A023132.P15893003047074065415

/-! ## A023132.P15743160957567958012

`A244413(A025611(n+1))+1`
-/

namespace A023132.P15743160957567958012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244413 (A025611 (n + 1)).toNat + 1

end

end A023132.P15743160957567958012

/-! ## A023132.P18311006167343122673

`A005361(A384875(n+3))`
-/

namespace A023132.P18311006167343122673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005361 (A384875 (n + 3)).toNat

end

end A023132.P18311006167343122673

/-!
# A023133: Signature sequence of Pi (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023133, there is no canonical definition to state claims against.
-/

/-! ## A023133.P16804467004508359693

`A359586(A025611(n+1))`
-/

namespace A023133.P16804467004508359693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359586 (A025611 (n + 1)).toNat

end

end A023133.P16804467004508359693

/-! ## A023133.P11315906640173293306

`A001511(A025611(n+1))`
-/

namespace A023133.P11315906640173293306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001511 (A025611 (n + 1)).toNat

end

end A023133.P11315906640173293306

/-! ## A023133.P8974715332532076840

`A007814(2*A025611(n+1))`
-/

namespace A023133.P8974715332532076840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007814 (2 * A025611 (n + 1)).toNat

end

end A023133.P8974715332532076840

/-! ## A023133.P6842291248593500448

`A244417(A033848(n+1))`
-/

namespace A023133.P6842291248593500448
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A244417 (A033848 (n + 1)).toNat

end

end A023133.P6842291248593500448

/-!
# A023134: Signature sequence of 1/Pi (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023134, the canonical program `A023134.P11930322177379065047` is in `Seq.B005.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023134 has offset 1).

The definition of A023134 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 116 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023134.P3855586367307170713

`A000005(5^A073189(n))`
-/

namespace A023134.P3855586367307170713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A073189 n : ℤ))).toNat

end

end A023134.P3855586367307170713

namespace A023134

/-- `A000005(5^A073189(n))` -/
def P3855586367307170713.Spec : Prop :=
  ∀ n, P3855586367307170713.a n = A023134 (n + 1)

end A023134

/-! ## A023134.P1370298848522318795

`A001227(2*3^A073189(n))`
-/

namespace A023134.P1370298848522318795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001227 (SequenceMachineLib.roundAway (2 * (3 : ℚ) ^ (A073189 n : ℤ))).toNat

end

end A023134.P1370298848522318795

namespace A023134

/-- `A001227(2*3^A073189(n))` -/
def P1370298848522318795.Spec : Prop :=
  ∀ n, P1370298848522318795.a n = A023134 (n + 1)

end A023134

/-! ## A023134.P15712402689410902995

`A008480(2*3^A073189(n))`
-/

namespace A023134.P15712402689410902995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008480 (SequenceMachineLib.roundAway (2 * (3 : ℚ) ^ (A073189 n : ℤ))).toNat

end

end A023134.P15712402689410902995

namespace A023134

/-- `A008480(2*3^A073189(n))` -/
def P15712402689410902995.Spec : Prop :=
  ∀ n, P15712402689410902995.a n = A023134 (n + 1)

end A023134

/-! ## A023134.P11930322177379065047

`∑{d}[3^A073189(n), A007814(2*#)]`

The canonical program, it is in `Seq.B005.C000`.
-/

namespace A023134

/-- `∑{d}[3^A073189(n), A007814(2*#)]` -/
def P11930322177379065047.Spec : Prop :=
  ∀ n, P11930322177379065047.a n = A023134 (n + 1)

theorem P11930322177379065047.correct : P11930322177379065047.Spec := by
  intro n
  simp only [A023134, Nat.add_sub_cancel]

end A023134

/-! ## A023134.P18232136170549242248

`A097283(A004277(A073189(n)²))`
-/

namespace A023134.P18232136170549242248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097283 (A004277 (A073189 n ^ 2).toNat).toNat

end

end A023134.P18232136170549242248

namespace A023134

/-- `A097283(A004277(A073189(n)²))` -/
def P18232136170549242248.Spec : Prop :=
  ∀ n, P18232136170549242248.a n = A023134 (n + 1)

end A023134

/-! ## A023134.P3348912662690334043

`A182880(n)/A114711(n+1)`
-/

namespace A023134.P3348912662690334043
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A182880 n : ℚ) / (A114711 (n + 1) : ℚ)

end

end A023134.P3348912662690334043

namespace A023134

/-- `A182880(n)/A114711(n+1)` -/
def P3348912662690334043.Spec : Prop :=
  ∀ n, P3348912662690334043.a n = (A023134 (n + 1) : ℚ)

end A023134

/-! ## A023134.P16282801529543314843

`A216282(A025611(n+1))`
-/

namespace A023134.P16282801529543314843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A216282 (A025611 (n + 1)).toNat

end

end A023134.P16282801529543314843

namespace A023134

/-- `A216282(A025611(n+1))` -/
def P16282801529543314843.Spec : Prop :=
  ∀ n, P16282801529543314843.a n = A023134 (n + 1)

end A023134

/-!
# A023135: Number of cycles of function f(x) = 3x mod n.

The programs for A023135, there is no canonical definition to state claims against.
-/

/-! ## A023135.P15158193764277597491

`∑{d}[(n+1)/3^val(n+1, 3), A327812(#)]`
-/

namespace A023135.P15158193764277597491
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (3 ^ SequenceMachineLib.valuation (n + 1) 3 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A327812 d

end

end A023135.P15158193764277597491

/-! ## A023135.P17298642002703627333

`∑{d}[A038502(n+1), A327812(#)]`
-/

namespace A023135.P17298642002703627333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327812 d

end

end A023135.P17298642002703627333

/-! ## A023135.P11062328172150660020

`A348888(A000124(3*n+2)+3)`
-/

namespace A023135.P11062328172150660020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348888 (A000124 (3 * n + 2) + 3).toNat

end

end A023135.P11062328172150660020

/-! ## A023135.P15194499070373028856

`A276430(n)+A007814((n+1)*Δ[n^3])`
-/

namespace A023135.P15194499070373028856
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276430 n + A007814 ((n + 1 : ℤ) * ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A023135.P15194499070373028856

/-! ## A023135.P14661825766955725743

`A370820(A137855(3*n+5))+A333381(n)`
-/

namespace A023135.P14661825766955725743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A370820 (A137855 (3 * n + 5)).toNat + A333381 n

end

end A023135.P14661825766955725743

/-!
# A023136: Number of cycles of function f(x) = 4x mod n.

The programs for A023136, there is no canonical definition to state claims against.
-/

/-! ## A023136.P12498295228718706335

`∑{d}[(n+1)*2^-val(n+1, 2), A327813(#)]`
-/

namespace A023136.P12498295228718706335
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) * (2 : ℚ) ^ (-(SequenceMachineLib.valuation (n + 1) 2 : ℤ) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A327813 d

end

end A023136.P12498295228718706335

/-! ## A023136.P762565464255921618

`A000265(∑{d}[n+1, A327813(#)])`
-/

namespace A023136.P762565464255921618
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (∑ d ∈ Nat.divisors (f1 n), A327813 d).toNat

end

end A023136.P762565464255921618

/-! ## A023136.P3460422760610504316

`∑{d}[A153733(n)+1, A327813(#)]`
-/

namespace A023136.P3460422760610504316
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153733 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327813 d

end

end A023136.P3460422760610504316

/-! ## A023136.P8659215699843832572

`∑{d}[2*A025480(n)+1, A327813(#)]`
-/

namespace A023136.P8659215699843832572
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A025480 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327813 d

end

end A023136.P8659215699843832572

/-! ## A023136.P13076432113216845318

`∑{d}[n+1, A008683(#)*A133702((n+1)/#)]`
-/

namespace A023136.P13076432113216845318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A008683 d * A133702 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A023136.P13076432113216845318

/-! ## A023136.P15036170753759882727

`∑{d}[A005408(A025480(n)), A327813(#)]`
-/

namespace A023136.P15036170753759882727
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005408 (A025480 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327813 d

end

end A023136.P15036170753759882727

/-! ## A023136.P12675323194499214802

`∑{d}[A004442(A153733(n)), A327813(#)]`
-/

namespace A023136.P12675323194499214802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A153733 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327813 d

end

end A023136.P12675323194499214802

/-! ## A023136.P336920255914991301

`∑{d}[A163575(2*(n+1)), A327813(#)]`
-/

namespace A023136.P336920255914991301
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327813 d

end

end A023136.P336920255914991301

/-!
# A023137: Number of cycles of function f(x) = 5x mod n.

The programs for A023137, there is no canonical definition to state claims against.
-/

/-! ## A023137.P11507328630127815200

`∑{d}[A132739(1+n), A327814(#)]`
-/

namespace A023137.P11507328630127815200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327814 d

end

end A023137.P11507328630127815200

/-! ## A023137.P8847131566201538525

`(A235302(n+1)-A142423(n+1))%(n+1)+1`
-/

namespace A023137.P8847131566201538525
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A235302 (n + 1) - A142423 (n + 1)) (n + 1 : ℤ) + 1

end

end A023137.P8847131566201538525

/-! ## A023137.P5605919114317391700

`A000120(A060724(n+1)^A034851(n))`
-/

namespace A023137.P5605919114317391700
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (SequenceMachineLib.roundAway ((A060724 (n + 1) : ℚ) ^ (A034851 n : ℤ))).toNat

end

end A023137.P5605919114317391700

/-!
# A023138: Number of cycles of function f(x) = 6x mod n.

The programs for A023138, there is no canonical definition to state claims against.
-/

/-! ## A023138.P16046221465313590598

`A077480(A334202(n+1)^A334202(n+1))`
-/

namespace A023138.P16046221465313590598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077480 (SequenceMachineLib.roundAway ((A334202 (n + 1) : ℚ) ^ (A334202 (n + 1) : ℤ))).toNat

end

end A023138.P16046221465313590598

/-! ## A023138.P12004160572490727287

`A119994(A175289(n+1))`
-/

namespace A023138.P12004160572490727287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119994 (A175289 (n + 1)).toNat

end

end A023138.P12004160572490727287

/-! ## A023138.P9529711260396076156

`A147367(A327667(n))%6`
-/

namespace A023138.P9529711260396076156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A147367 (A327667 n).toNat) 6

end

end A023138.P9529711260396076156

/-! ## A023138.P5946184975504796894

`A112379(7*A006530(n+1))`
-/

namespace A023138.P5946184975504796894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112379 (7 * A006530 (n + 1)).toNat

end

end A023138.P5946184975504796894

/-! ## A023138.P16624999986603417899

`A279209(A000338(3*n+5)+A000043(n+1))`
-/

namespace A023138.P16624999986603417899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279209 (A000338 (3 * n + 5) + A000043 (n + 1)).toNat

end

end A023138.P16624999986603417899

/-!
# A023139: Number of cycles of function f(x) = 7x mod n.

The programs for A023139, there is no canonical definition to state claims against.
-/

/-! ## A023139.P6619051507772820217

`∑{d}[A242603(1+n), A327815(#)]`
-/

namespace A023139.P6619051507772820217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327815 d

end

end A023139.P6619051507772820217

/-!
# A023140: Number of cycles of function f(x) = 8x mod n.

The programs for A023140, there is no canonical definition to state claims against.
-/

/-! ## A023140.P16671725006094729709

`∑{d}[(n+1)/2^val(n+1, 2), A327816(#)]`
-/

namespace A023140.P16671725006094729709
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (SequenceMachineLib.roundAway (f1 n)).natAbs, A327816 d

end

end A023140.P16671725006094729709

/-! ## A023140.P4098944412128125773

`∑{d}[A000265(n+1), A327816(#)]`
-/

namespace A023140.P4098944412128125773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327816 d

end

end A023140.P4098944412128125773

/-! ## A023140.P5068343899926593366

`∑{d}[A163575(2*(1+n)), A327816(#)]`
-/

namespace A023140.P5068343899926593366
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (2 * (1 + n))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327816 d

end

end A023140.P5068343899926593366

/-! ## A023140.P5994486076492470792

`A023159(A034694(n+1))-A056926(A034386(n+1))`
-/

namespace A023140.P5994486076492470792
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023159 (A034694 (n + 1)).toNat - A056926 (A034386 (n + 1)).toNat

end

end A023140.P5994486076492470792

/-! ## A023140.P11804932621739267807

`A286357(A000593(A001158(A000593(n+1))))`
-/

namespace A023140.P11804932621739267807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286357 (A000593 (A001158 (A000593 (n + 1)).toNat).toNat).toNat

end

end A023140.P11804932621739267807

/-!
# A023141: Number of cycles of function f(x) = 9x mod n.

The programs for A023141, there is no canonical definition to state claims against.
-/

/-! ## A023141.P15383619238728624959

`∑{d}[A038502(1+n), A327817(#)]`
-/

namespace A023141.P15383619238728624959
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327817 d

end

end A023141.P15383619238728624959

/-! ## A023141.P8900816830883958049

`A283324(n)-A068385(A239553(n))`
-/

namespace A023141.P8900816830883958049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283324 n - A068385 (A239553 n).toNat

end

end A023141.P8900816830883958049

/-! ## A023141.P3010266496792479598

`A283324(n)/A059895(A000079(n))`
-/

namespace A023141.P3010266496792479598
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A283324 n : ℚ) / (A059895 (A000079 n).toNat : ℚ)

end

end A023141.P3010266496792479598

/-! ## A023141.P11487296213363034672

`gcd(A121373(A286325(n+1)), A283324(n))`
-/

namespace A023141.P11487296213363034672
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A121373 (A286325 (n + 1)).toNat) (A283324 n)

end

end A023141.P11487296213363034672

/-! ## A023141.P12021706872173496131

`∑[A141852(∑[A062343(n+4)])]%(n+2)`
-/

namespace A023141.P12021706872173496131
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062343 (n + 4)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141852 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 2 : ℤ)

end

end A023141.P12021706872173496131

/-!
# A023142: Number of cycles of function f(x) = 10x mod n.

The programs for A023142, there is no canonical definition to state claims against.
-/

/-! ## A023142.P8801922994625157220

`A023161(A078683(n+1))-1`
-/

namespace A023142.P8801922994625157220
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023161 (A078683 (n + 1)).toNat - 1

end

end A023142.P8801922994625157220

/-! ## A023142.P13987568555371650477

`A023161(A034694(n+1))-A057427(A093670(n+1))`
-/

namespace A023142.P13987568555371650477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023161 (A034694 (n + 1)).toNat - A057427 (A093670 (n + 1)).toNat

end

end A023142.P13987568555371650477

/-! ## A023142.P1465249316064021931

`A023161(A034694(n+1))-A057427(A034694(n+1)²)`
-/

namespace A023142.P1465249316064021931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023161 (A034694 (n + 1)).toNat - A057427 (A034694 (n + 1) ^ 2).toNat

end

end A023142.P1465249316064021931

/-! ## A023142.P17274621524422866194

`A077196(A161951(n+1)*A185317(n))`
-/

namespace A023142.P17274621524422866194
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A161951 (n + 1) * A185317 n).toNat

end

end A023142.P17274621524422866194

/-!
# A023143: Numbers k such that prime(k) == 1 (mod k).

The programs for A023143, there is no canonical definition to state claims against.
-/

/-! ## A023143.P311096772386722548

`(A048891(n+1)-1)/A255254(n+1)`
-/

namespace A023143.P311096772386722548
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048891 (n + 1) - 1 : ℚ) / (A255254 (n + 1) : ℚ)

end

end A023143.P311096772386722548

/-! ## A023143.P4105852445964336608

`(∩[A073465(n+1), A162567(n+1)]-1)/A255254(n+1)`
-/

namespace A023143.P4105852445964336608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073465 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162567 (n + 1)

open Classical in
def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n : ℤ) - 1 : ℚ) / (A255254 (n + 1) : ℚ)

end

end A023143.P4105852445964336608

/-! ## A023143.P16882976444695614899

`lt[A004648(n+1), 2]+1`
-/

namespace A023143.P16882976444695614899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004648 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A023143.P16882976444695614899

/-! ## A023143.P5593274174587292432

`lt[A107898(n+1), 4]+1`
-/

namespace A023143.P5593274174587292432
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107898 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A023143.P5593274174587292432

/-! ## A023143.P13847224259486793261

`eq[n, A068901(n+1)]+1`
-/

namespace A023143.P13847224259486793261
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068901 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023143.P13847224259486793261

/-!
# A023145: Numbers k such that prime(k) == 3 (mod k).

The programs for A023145, there is no canonical definition to state claims against.
-/

/-! ## A023145.P10815748178992286938

`lt[(A040976(n+1)-1)%(n+1), 1]+1`
-/

namespace A023145.P10815748178992286938
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A040976 (n + 1) - 1) (n + 1 : ℤ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A023145.P10815748178992286938

/-! ## A023145.P14281276645514881996

`A000720(A171430(n+1))`
-/

namespace A023145.P14281276645514881996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A171430 (n + 1)).toNat

end

end A023145.P14281276645514881996

/-! ## A023145.P14106700662665343362

`A061395(or(A125117(n), A171430(n+1)))`
-/

namespace A023145.P14106700662665343362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (Int.lor (A125117 n) (A171430 (n + 1))).toNat

end

end A023145.P14106700662665343362

/-! ## A023145.P813531596975010145

`A061395(2*A171430(n+1))`
-/

namespace A023145.P813531596975010145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (2 * A171430 (n + 1)).toNat

end

end A023145.P813531596975010145

/-! ## A023145.P9928871622745902329

`∑{d}[A171430(n+1), A286469(#)]`
-/

namespace A023145.P9928871622745902329
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171430 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A286469 d

end

end A023145.P9928871622745902329

/-!
# A023149: Numbers k such that prime(k) == 7 (mod k).

The programs for A023149, there is no canonical definition to state claims against.
-/

/-! ## A023149.P541243505989490841

`A000720(A171434(n+1))`
-/

namespace A023149.P541243505989490841
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A171434 (n + 1)).toNat

end

end A023149.P541243505989490841

/-! ## A023149.P3368857600609593170

`A316524(4*A171434(n+1))`
-/

namespace A023149.P3368857600609593170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316524 (4 * A171434 (n + 1)).toNat

end

end A023149.P3368857600609593170

/-! ## A023149.P10095035847023436934

`A065770(A171434(n+1)*A256094(n))`
-/

namespace A023149.P10095035847023436934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065770 (A171434 (n + 1) * A256094 n).toNat

end

end A023149.P10095035847023436934

/-!
# A023150: Numbers k such that prime(k) == 8 (mod k).

The programs for A023150, there is no canonical definition to state claims against.
-/

/-! ## A023150.P3942578086055847927

`record[A038606(n+1)%A047497(A058720(2*(n+1))+1)]`
-/

namespace A023150.P3942578086055847927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038606 (n + 1)) (A047497 (A058720 (2 * (n + 1)) + 1).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023150.P3942578086055847927

/-!
# A023153: Number of cycles of function f(x) = x^2 mod n.

The programs for A023153, there is no canonical definition to state claims against.
-/

/-! ## A023153.P3138672189942759495

`A023159(n+1)-A025437(A155517(n+1))`
-/

namespace A023153.P3138672189942759495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023159 (n + 1) - A025437 (A155517 (n + 1)).toNat

end

end A023153.P3138672189942759495

/-! ## A023153.P7085319752201420580

`and(A023159(n+1), A321804(A007694(n+1)))`
-/

namespace A023153.P7085319752201420580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023159 (n + 1)) (A321804 (A007694 (n + 1)).toNat)

end

end A023153.P7085319752201420580

/-! ## A023153.P588322194985701307

`and(A023159(n+1), A321804(A025487(n+1)))`
-/

namespace A023153.P588322194985701307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023159 (n + 1)) (A321804 (A025487 (n + 1)).toNat)

end

end A023153.P588322194985701307

/-! ## A023153.P1056134089947786748

`A000120(A324398(n+5)+A164661(3*(n+1)))`
-/

namespace A023153.P1056134089947786748
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 (A324398 (n + 5) + A164661 (3 * (n + 1))).toNat

end

end A023153.P1056134089947786748

/-!
# A023154: Number of cycles of function f(x) = x^3 mod n.

The programs for A023154, there is no canonical definition to state claims against.
-/

/-! ## A023154.P13867969958417999456

`and(A023158(n+1), A044514(A023145(n+1)))`
-/

namespace A023154.P13867969958417999456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A023158 (n + 1)) (A044514 (A023145 (n + 1)).toNat)

end

end A023154.P13867969958417999456

/-!
# A023155: Number of cycles of function f(x) = x^4 mod n.

The programs for A023155, there is no canonical definition to state claims against.
-/

/-! ## A023155.P1787674977029007506

`A034444(A061537(n+1))*A193169(n+1)`
-/

namespace A023155.P1787674977029007506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A061537 (n + 1)).toNat * A193169 (n + 1)

end

end A023155.P1787674977029007506

/-! ## A023155.P13757468044335758952

`A034444(A061537(n+1))*A193453(n+1)`
-/

namespace A023155.P13757468044335758952
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A061537 (n + 1)).toNat * A193453 (n + 1)

end

end A023155.P13757468044335758952

/-! ## A023155.P15225198877032114066

`A034444(A062509(n+1))*A193169(n+1)`
-/

namespace A023155.P15225198877032114066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A062509 (n + 1)).toNat * A193169 (n + 1)

end

end A023155.P15225198877032114066

/-! ## A023155.P16872038591691742510

`A034444(A062509(n+1))*A193453(n+1)`
-/

namespace A023155.P16872038591691742510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A062509 (n + 1)).toNat * A193453 (n + 1)

end

end A023155.P16872038591691742510

/-! ## A023155.P7561564358137360389

`A034444(A064446(n+1))*A193169(n+1)`
-/

namespace A023155.P7561564358137360389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (A064446 (n + 1)).toNat * A193169 (n + 1)

end

end A023155.P7561564358137360389

/-!
# A023157: Number of cycles of function f(x) = x^6 mod n.

The programs for A023157, there is no canonical definition to state claims against.
-/

/-! ## A023157.P14190379773205953206

`∏{p}[n+1, A018365(A252503(#))]`
-/

namespace A023157.P14190379773205953206
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A018365 (A252503 p).toNat

end

end A023157.P14190379773205953206

/-! ## A023157.P18307521894909821078

`∏{p}[n+1, A335474(A020678(#))]`
-/

namespace A023157.P18307521894909821078
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n), A335474 (A020678 p).toNat

end

end A023157.P18307521894909821078

/-! ## A023157.P4950664671126642360

`A034444(n+1)*A301333(A113766(n+1))`
-/

namespace A023157.P4950664671126642360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A301333 (A113766 (n + 1)).toNat

end

end A023157.P4950664671126642360

/-! ## A023157.P5382079628375522832

`A034444(n+1)*A301333(A200905(n+1))`
-/

namespace A023157.P5382079628375522832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034444 (n + 1) * A301333 (A200905 (n + 1)).toNat

end

end A023157.P5382079628375522832

/-! ## A023157.P16642790284483195225

`A236175(A179664(n+1))^∑{p}[n+1, gcd(n, #)]`
-/

namespace A023157.P16642790284483195225
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236175 (A179664 (n + 1)).toNat ^ (∑ p ∈ Nat.primeFactors (f1 n), Nat.gcd n p)

end

end A023157.P16642790284483195225

/-!
# A023158: Number of cycles of function f(x) = x^7 mod n.

The programs for A023158, there is no canonical definition to state claims against.
-/

/-! ## A023158.P11106998896954366032

`A277314(A281540(2*n+1)+A001844(n))`
-/

namespace A023158.P11106998896954366032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277314 (A281540 (2 * n + 1) + A001844 n).toNat

end

end A023158.P11106998896954366032

/-!
# A023159: Number of cycles of function f(x) = x^8 mod n.

The programs for A023159, there is no canonical definition to state claims against.
-/

/-! ## A023159.P17320326759962906311

`A025437(A155517(n+1))+A023153(n+1)`
-/

namespace A023159.P17320326759962906311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025437 (A155517 (n + 1)).toNat + A023153 (n + 1)

end

end A023159.P17320326759962906311

/-! ## A023159.P14745458313583797956

`or(A023153(n+1), A280737(A301784(n+1)))`
-/

namespace A023159.P14745458313583797956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A023153 (n + 1)) (A280737 (A301784 (n + 1)).toNat)

end

end A023159.P14745458313583797956

/-! ## A023159.P18118970841634692488

`A023153(lt[A195850(n), A023888(n+1)])`
-/

namespace A023159.P18118970841634692488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195850 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023888 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023153 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A023159.P18118970841634692488

/-!
# A023160: Number of cycles of function f(x) = x^9 mod n.

The programs for A023160, there is no canonical definition to state claims against.
-/

/-! ## A023160.P16405224495652140386

`A072621(A046530(n+1))-A025469(A185755(n+1))`
-/

namespace A023160.P16405224495652140386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072621 (A046530 (n + 1)).toNat - A025469 (A185755 (n + 1)).toNat

end

end A023160.P16405224495652140386

/-! ## A023160.P17673584761973546380

`A046530(n+1)-A368844(A231049(n+2))`
-/

namespace A023160.P17673584761973546380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1) - A368844 (A231049 (n + 2)).toNat

end

end A023160.P17673584761973546380

/-! ## A023160.P5653462349155247306

`A046530(n+1)-A000086(A276920(n+3))`
-/

namespace A023160.P5653462349155247306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1) - A000086 (A276920 (n + 3)).toNat

end

end A023160.P5653462349155247306

/-! ## A023160.P17193091087049170242

`xor(A004016(A000041(2*(n+2))), A085312(n+1))`
-/

namespace A023160.P17193091087049170242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004016 (A000041 (2 * (n + 2))).toNat) (A085312 (n + 1))

end

end A023160.P17193091087049170242

/-!
# A023161: Number of cycles of function f(x) = x^10 mod n.

The programs for A023161, there is no canonical definition to state claims against.
-/

/-! ## A023161.P2831537219861095346

`gcd(A277847(n+1), A292834(A008438(n)))`
-/

namespace A023161.P2831537219861095346
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A277847 (n + 1)) (A292834 (A008438 n).toNat)

end

end A023161.P2831537219861095346

/-! ## A023161.P7375426015284726774

`A277847(n+1)/A301333(A113766(n+1))`
-/

namespace A023161.P7375426015284726774
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277847 (n + 1) : ℚ) / (A301333 (A113766 (n + 1)).toNat : ℚ)

end

end A023161.P7375426015284726774

/-! ## A023161.P12948763790293138231

`A277847(n+1)/A301333(A200905(n+1))`
-/

namespace A023161.P12948763790293138231
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A277847 (n + 1) : ℚ) / (A301333 (A200905 (n + 1)).toNat : ℚ)

end

end A023161.P12948763790293138231

/-! ## A023161.P12081693986289826539

`A335852(A216850(n+1))`
-/

namespace A023161.P12081693986289826539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335852 (A216850 (n + 1)).toNat

end

end A023161.P12081693986289826539

/-!
# A023162: Numbers k such that F(k) == -1 (mod k), where F(n) = A000045(n) is the n-th Fibonacci number.

The programs for A023162, the canonical program `A023162.P291127662282880267` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023162 has offset 1).

The definition of A023162 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1767 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023162.P291127662282880267

`eq[n, A132634(n+1)%(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023162

/-- `eq[n, A132634(n+1)%(n+1)]+1` -/
def P291127662282880267.Spec : Prop :=
  ∀ n, (P291127662282880267.a n : ℤ) = A023162 (n + 1)

theorem P291127662282880267.correct : P291127662282880267.Spec := by
  intro n
  simp only [A023162, Nat.add_sub_cancel]

end A023162

/-! ## A023162.P2450289465168328564

`eq[n, A002708(n+1)]+1`
-/

namespace A023162.P2450289465168328564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023162.P2450289465168328564

namespace A023162

/-- `eq[n, A002708(n+1)]+1` -/
def P2450289465168328564.Spec : Prop :=
  ∀ n, (P2450289465168328564.a n : ℤ) = A023162 (n + 1)

end A023162

/-! ## A023162.P439475676609457775

`record[gcd(n+1, A110654(n-A002708(n+1)))]`
-/

namespace A023162.P439475676609457775
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A110654 ((n : ℤ) - A002708 (n + 1)).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023162.P439475676609457775

namespace A023162

/-- `record[gcd(n+1, A110654(n-A002708(n+1)))]` -/
def P439475676609457775.Spec : Prop :=
  ∀ n, (P439475676609457775.a n : ℤ) = A023162 (n + 1)

end A023162

/-! ## A023162.P6489833655453587372

`record[(n+1)/A003586(n-A002708(n+1)+1)]`
-/

namespace A023162.P6489833655453587372
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A003586 ((n : ℤ) - A002708 (n + 1) + 1).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023162.P6489833655453587372

namespace A023162

/-- `record[(n+1)/A003586(n-A002708(n+1)+1)]` -/
def P6489833655453587372.Spec : Prop :=
  ∀ n, P6489833655453587372.a n = (A023162 (n + 1) : ℚ)

end A023162

/-! ## A023162.P6830209579880541747

`record[A052905(A002708(n+1))-A055998(n)]`
-/

namespace A023162.P6830209579880541747
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052905 (A002708 (n + 1)).toNat - A055998 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023162.P6830209579880541747

namespace A023162

/-- `record[A052905(A002708(n+1))-A055998(n)]` -/
def P6830209579880541747.Spec : Prop :=
  ∀ n, P6830209579880541747.a n = A023162 (n + 1)

end A023162

/-! ## A023162.P10156456609269449833

`record[A000124(A002708(n+1))-A161680(n)]`
-/

namespace A023162.P10156456609269449833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 (A002708 (n + 1)).toNat - A161680 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023162.P10156456609269449833

namespace A023162

/-- `record[A000124(A002708(n+1))-A161680(n)]` -/
def P10156456609269449833.Spec : Prop :=
  ∀ n, P10156456609269449833.a n = A023162 (n + 1)

end A023162

/-! ## A023162.P2923060145046430943

`record[A270313(n+1)/(A270313(n+1)-A002708(n+1))]`
-/

namespace A023162.P2923060145046430943
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270313 (n + 1) : ℚ) / (A270313 (n + 1) - A002708 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023162.P2923060145046430943

namespace A023162

/-- `record[A270313(n+1)/(A270313(n+1)-A002708(n+1))]` -/
def P2923060145046430943.Spec : Prop :=
  ∀ n, P2923060145046430943.a n = (A023162 (n + 1) : ℚ)

end A023162

/-! ## A023162.P4302871297301699578

`record[gcd(n, A001611(n))]`
-/

namespace A023162.P4302871297301699578
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A001611 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023162.P4302871297301699578

namespace A023162

/-- `record[gcd(n, A001611(n))]` -/
def P4302871297301699578.Spec : Prop :=
  ∀ n, (P4302871297301699578.a n : ℤ) = A023162 (n + 1)

end A023162

/-! ## A023162.P16354980306269409083

`eq[n, A000045(n+1)%(n+1)]+1`
-/

namespace A023162.P16354980306269409083
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000045 (n + 1)) (n + 1 : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023162.P16354980306269409083

namespace A023162

/-- `eq[n, A000045(n+1)%(n+1)]+1` -/
def P16354980306269409083.Spec : Prop :=
  ∀ n, (P16354980306269409083.a n : ℤ) = A023162 (n + 1)

end A023162

/-!
# A023163: Numbers k such that Fibonacci(k) == -2 (mod k).

The programs for A023163, the canonical program `A023163.P11434462362626889777` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023163 has offset 1).

The definition of A023163 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 118 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023163.P11434462362626889777

`eq[A002708(n+1), A014681(n)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023163

/-- `eq[A002708(n+1), A014681(n)]+1` -/
def P11434462362626889777.Spec : Prop :=
  ∀ n, (P11434462362626889777.a n : ℤ) = A023163 (n + 1)

theorem P11434462362626889777.correct : P11434462362626889777.Spec := by
  intro n
  simp only [A023163, Nat.add_sub_cancel]

end A023163

/-! ## A023163.P1243845601924614451

`A004442(eq[A002708(n+1), A014681(n)])`
-/

namespace A023163.P1243845601924614451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A023163.P1243845601924614451

namespace A023163

/-- `A004442(eq[A002708(n+1), A014681(n)])` -/
def P1243845601924614451.Spec : Prop :=
  ∀ n, P1243845601924614451.a n = A023163 (n + 1)

end A023163

/-! ## A023163.P5843661158312620006

`A109613(eq[A002708(n+1), A014681(n)])`
-/

namespace A023163.P5843661158312620006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A023163.P5843661158312620006

namespace A023163

/-- `A109613(eq[A002708(n+1), A014681(n)])` -/
def P5843661158312620006.Spec : Prop :=
  ∀ n, P5843661158312620006.a n = A023163 (n + 1)

end A023163

/-! ## A023163.P12706260813356703984

`eq[n, gcd(n, A000045(n)+2)]`
-/

namespace A023163.P12706260813356703984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A000045 n + 2)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023163.P12706260813356703984

namespace A023163

/-- `eq[n, gcd(n, A000045(n)+2)]` -/
def P12706260813356703984.Spec : Prop :=
  ∀ n, (P12706260813356703984.a n : ℤ) = A023163 (n + 1)

end A023163

/-! ## A023163.P616988101959320876

`record[gcd(A089061(n), A109613(n))]`
-/

namespace A023163.P616988101959320876
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A089061 n) (A109613 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023163.P616988101959320876

namespace A023163

/-- `record[gcd(A089061(n), A109613(n))]` -/
def P616988101959320876.Spec : Prop :=
  ∀ n, (P616988101959320876.a n : ℤ) = A023163 (n + 1)

end A023163

/-!
# A023164: Numbers k such that Fibonacci(k) == -3 (mod k).

The programs for A023164, there is no canonical definition to state claims against.
-/

/-! ## A023164.P10726067381547415710

`∩[A049093(n+1), A111058(n+1)]`
-/

namespace A023164.P10726067381547415710
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049093 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111058 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023164.P10726067381547415710

/-!
# A023165: Numbers k such that Fibonacci(k) == -5 (mod k).

The programs for A023165, there is no canonical definition to state claims against.
-/

/-! ## A023165.P1344787609008749179

`eq[1, 1-∑[a(n-1)+a(n-2)]%(n+1)]+1` with `a(0)=6, a(1)=0, a(2)=1`
-/

namespace A023165.P1344787609008749179
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℕ := SequenceMachineLib.rec [6, 0, 1] fun n f3 =>
  f3 (n - 1) + f3 (n - 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (((∑ j ∈ Finset.range (n + 1), f3 j) % (n + 1) : ℕ) : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023165.P1344787609008749179

/-! ## A023165.P964224253505965777

`eq[n, gcd(n, A157729(n))]`
-/

namespace A023165.P964224253505965777
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (A157729 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023165.P964224253505965777

/-! ## A023165.P18387171937394301397

`record[gcd(n+1, A157729(n+1))]`
-/

namespace A023165.P18387171937394301397
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A157729 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023165.P18387171937394301397

/-! ## A023165.P7491887382660613617

`eq[0, A157729(n)%A233583(n+1)]`
-/

namespace A023165.P7491887382660613617
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A157729 n) (A233583 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023165.P7491887382660613617

/-! ## A023165.P15550824075369018407

`∑[A004736(A003504(n)+A001060(n))]`
-/

namespace A023165.P15550824075369018407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A003504 n + A001060 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023165.P15550824075369018407

/-!
# A023166: Numbers k such that Fibonacci(k) == -8 (mod k).

The programs for A023166, there is no canonical definition to state claims against.
-/

/-! ## A023166.P16430162795028886617

`eq[A323367(n+1), A342416(A248378(n+4)+1)]`
-/

namespace A023166.P16430162795028886617
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323367 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342416 (A248378 (n + 4) + 1).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023166.P16430162795028886617

/-!
# A023167: Numbers k such that Fib(k) == -13 (mod k).

The programs for A023167, there is no canonical definition to state claims against.
-/

/-! ## A023167.P11212302720774791021

`A023706(4^(a(n-2)-1)+1)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`
-/

namespace A023167.P11212302720774791021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2, 3, 4] fun n a =>
  A023706 (SequenceMachineLib.roundAway ((4 : ℚ) ^ (a (n - 2) - 1 : ℤ) + 1)).toNat

end

end A023167.P11212302720774791021

/-! ## A023167.P8879956058110739913

`A072039(A148921(n+1))`
-/

namespace A023167.P8879956058110739913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072039 (A148921 (n + 1)).toNat

end

end A023167.P8879956058110739913

/-!
# A023168: Numbers k such that Fib(k) == -21 (mod k).

The programs for A023168, there is no canonical definition to state claims against.
-/

/-! ## A023168.P12512912371799607075

`record[gcd(A000124(n), A219773(n+1))]`
-/

namespace A023168.P12512912371799607075
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000124 n) (A219773 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023168.P12512912371799607075

/-! ## A023168.P10146303213326121962

`record[gcd(A058825(n+1), A277725(n+1))]`
-/

namespace A023168.P10146303213326121962
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A058825 (n + 1)) (A277725 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023168.P10146303213326121962

/-!
# A023169: Numbers k such that Fib(k) == -34 (mod k).

The programs for A023169, there is no canonical definition to state claims against.
-/

/-! ## A023169.P7686672038373861887

`A018599(∑[A193954(n)])`
-/

namespace A023169.P7686672038373861887
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193954 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018599 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023169.P7686672038373861887

/-!
# A023170: Numbers k such that Fibonacci(k) == -55 (mod k).

The programs for A023170, there is no canonical definition to state claims against.
-/

/-! ## A023170.P18358814458819338746

`A293322(n)+A147096(A060818(n))`
-/

namespace A023170.P18358814458819338746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293322 n + A147096 (A060818 n).toNat

end

end A023170.P18358814458819338746

/-!
# A023171: Numbers k such that Fib(k) == -89 (mod k).

The programs for A023171, there is no canonical definition to state claims against.
-/

/-! ## A023171.P13358394499579203858

`Δ[A192140(A017995(n))]`
-/

namespace A023171.P13358394499579203858
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192140 (A017995 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023171.P13358394499579203858

/-!
# A023172: Self-Fibonacci numbers: numbers k that divide Fibonacci(k).

The programs for A023172, there is no canonical definition to state claims against.
-/

/-! ## A023172.P1860227197048154385

`∩[A140971(n+1), A231959(n+1)]`
-/

namespace A023172.P1860227197048154385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140971 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A231959 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023172.P1860227197048154385

/-! ## A023172.P14784357879580697258

`record[A104714(n+1)]`
-/

namespace A023172.P14784357879580697258
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023172.P14784357879580697258

/-! ## A023172.P4263810503980893150

`lt[n, 2*A104714(n)]`
-/

namespace A023172.P4263810503980893150
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A104714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023172.P4263810503980893150

/-! ## A023172.P12115769854826163205

`record[gcd(n+1, A132634(n+1))]`
-/

namespace A023172.P12115769854826163205
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n + 1 : ℤ) (A132634 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023172.P12115769854826163205

/-! ## A023172.P11990912961235598336

`A104714(lt[n/2, A104714(n)])`
-/

namespace A023172.P11990912961235598336
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A023172.P11990912961235598336

/-! ## A023172.P11591127998790372784

`record[2-(A040000(n)-A104714(n))]`
-/

namespace A023172.P11591127998790372784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A040000 n - A104714 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023172.P11591127998790372784

/-! ## A023172.P12550245319087028531

`eq[1, A270313(n+1)]+1`
-/

namespace A023172.P12550245319087028531
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270313 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023172.P12550245319087028531

/-! ## A023172.P5159751355463987552

`lt[A002708(n+1), 1]+1`
-/

namespace A023172.P5159751355463987552
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A023172.P5159751355463987552

/-! ## A023172.P4811550526813174016

`record[A028310(A104714(n))]`
-/

namespace A023172.P4811550526813174016
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (A104714 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023172.P4811550526813174016

/-! ## A023172.P15982779877415525530

`eq[n, A104714(A028310(n))]`
-/

namespace A023172.P15982779877415525530
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (A028310 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A023172.P15982779877415525530

/-! ## A023172.P2923802301662421109

`record[gcd(A008486(n), A104714(n))]`
-/

namespace A023172.P2923802301662421109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A008486 n) (A104714 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023172.P2923802301662421109

/-! ## A023172.P16684812896040996501

`record[or(A000007(n), A104714(n))]`
-/

namespace A023172.P16684812896040996501
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A104714 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023172.P16684812896040996501

/-! ## A023172.P14473066905259927455

`lt[n, A158388(n)+A104714(n)]`
-/

namespace A023172.P14473066905259927455
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n + A104714 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A023172.P14473066905259927455

/-! ## A023172.P3672058990584656241

`lt[A008594(n-A104714(n)), n]`
-/

namespace A023172.P3672058990584656241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008594 ((n : ℤ) - A104714 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A023172.P3672058990584656241

/-! ## A023172.P5822277195024775701

`eq[atan(A182167(n+1)), A182167(n+1)]+1`
-/

namespace A023172.P5822277195024775701
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.arctan (A182167 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182167 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n + 1

end

end A023172.P5822277195024775701

/-! ## A023172.P12259363485504697815

`eq[2, A008594(n)/A008458(A104714(n))]`
-/

namespace A023172.P12259363485504697815
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008594 n : ℚ) / (A008458 (A104714 n).toNat : ℚ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℚ) = f2 j) n

end

end A023172.P12259363485504697815

/-! ## A023172.P7058951287487288404

`eq[A000038(n), A002708(A000038(n)+n)]`
-/

namespace A023172.P7058951287487288404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (A000038 n + (n : ℤ)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023172.P7058951287487288404

/-! ## A023172.P5544813262494041203

`lt[A004277(n)-n, A004277(A104714(n))]`
-/

namespace A023172.P5544813262494041203
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 n - (n : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (A104714 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A023172.P5544813262494041203

/-! ## A023172.P13194260750819017425

`A065475(eq[2, A043529(n)+A002708(n+1)])`
-/

namespace A023172.P13194260750819017425
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n + A002708 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A023172.P13194260750819017425

/-!
# A023173: Numbers k such that Fibonacci(k) == 1 (mod k).

The programs for A023173, the canonical program `A023173.P5299766691977123693` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023173 has offset 1).

The definition of A023173 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 947 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023173.P5299766691977123693

`eq[n, n*A002708(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023173

/-- `eq[n, n*A002708(n+1)]+1` -/
def P5299766691977123693.Spec : Prop :=
  ∀ n, (P5299766691977123693.a n : ℤ) = A023173 (n + 1)

theorem P5299766691977123693.correct : P5299766691977123693.Spec := by
  intro n
  simp only [A023173, Nat.add_sub_cancel]

end A023173

/-! ## A023173.P8175034480822279886

`eq[A002708(n+1), A057427(n)]+1`
-/

namespace A023173.P8175034480822279886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A023173.P8175034480822279886

namespace A023173

/-- `eq[A002708(n+1), A057427(n)]+1` -/
def P8175034480822279886.Spec : Prop :=
  ∀ n, (P8175034480822279886.a n : ℤ) = A023173 (n + 1)

end A023173

/-! ## A023173.P11328559219250542992

`eq[A057428(n)², A002708(n+1)]+1`
-/

namespace A023173.P11328559219250542992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 n ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A023173.P11328559219250542992

namespace A023173

/-- `eq[A057428(n)², A002708(n+1)]+1` -/
def P11328559219250542992.Spec : Prop :=
  ∀ n, (P11328559219250542992.a n : ℤ) = A023173 (n + 1)

end A023173

/-! ## A023173.P59048667360997905

`record[A270313(n+1)/A109613(A002708(n+1))]`
-/

namespace A023173.P59048667360997905
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A270313 (n + 1) : ℚ) / (A109613 (A002708 (n + 1)).toNat : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023173.P59048667360997905

namespace A023173

/-- `record[A270313(n+1)/A109613(A002708(n+1))]` -/
def P59048667360997905.Spec : Prop :=
  ∀ n, P59048667360997905.a n = (A023173 (n + 1) : ℚ)

end A023173

/-! ## A023173.P12533069973949060346

`eq[A002708(A233583(n+1)), A056926(n)]`
-/

namespace A023173.P12533069973949060346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023173.P12533069973949060346

namespace A023173

/-- `eq[A002708(A233583(n+1)), A056926(n)]` -/
def P12533069973949060346.Spec : Prop :=
  ∀ n, (P12533069973949060346.a n : ℤ) = A023173 (n + 1)

end A023173

/-! ## A023173.P17733312871584921090

`eq[A002708(A233583(n+1)), A057427(n)]`
-/

namespace A023173.P17733312871584921090
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (A233583 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023173.P17733312871584921090

namespace A023173

/-- `eq[A002708(A233583(n+1)), A057427(n)]` -/
def P17733312871584921090.Spec : Prop :=
  ∀ n, (P17733312871584921090.a n : ℤ) = A023173 (n + 1)

end A023173

/-! ## A023173.P16870303027234650521

`eq[n, gcd(n, 1-A000045(n))]`
-/

namespace A023173.P16870303027234650521
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (n : ℤ) (1 - A000045 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023173.P16870303027234650521

namespace A023173

/-- `eq[n, gcd(n, 1-A000045(n))]` -/
def P16870303027234650521.Spec : Prop :=
  ∀ n, (P16870303027234650521.a n : ℤ) = A023173 (n + 1)

end A023173

/-! ## A023173.P8700555475271106369

`record[gcd(A007913(n+1), A081659(n))]`
-/

namespace A023173.P8700555475271106369
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A007913 (n + 1)) (A081659 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023173.P8700555475271106369

namespace A023173

/-- `record[gcd(A007913(n+1), A081659(n))]` -/
def P8700555475271106369.Spec : Prop :=
  ∀ n, (P8700555475271106369.a n : ℤ) = A023173 (n + 1)

end A023173

/-! ## A023173.P16373906565900167189

`record[gcd(A000071(n+1), A055231(n+1))]`
-/

namespace A023173.P16373906565900167189
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000071 (n + 1)) (A055231 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023173.P16373906565900167189

namespace A023173

/-- `record[gcd(A000071(n+1), A055231(n+1))]` -/
def P16373906565900167189.Spec : Prop :=
  ∀ n, (P16373906565900167189.a n : ℤ) = A023173 (n + 1)

end A023173

/-!
# A023174: Numbers k such that Fibonacci(k) == 2 (mod k).

The programs for A023174, the canonical program `A023174.P10020655540075246063` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023174 has offset 1).

The definition of A023174 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 130 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023174.P10020655540075246063

`eq[2-A000038(n), A002708(n+1)]+1`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023174

/-- `eq[2-A000038(n), A002708(n+1)]+1` -/
def P10020655540075246063.Spec : Prop :=
  ∀ n, (P10020655540075246063.a n : ℤ) = A023174 (n + 1)

theorem P10020655540075246063.correct : P10020655540075246063.Spec := by
  intro n
  simp only [A023174, Nat.add_sub_cancel]

end A023174

/-! ## A023174.P7218489774329492237

`A065475(eq[A002708(n+1), A043529(n)])`
-/

namespace A023174.P7218489774329492237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A023174.P7218489774329492237

namespace A023174

/-- `A065475(eq[A002708(n+1), A043529(n)])` -/
def P7218489774329492237.Spec : Prop :=
  ∀ n, P7218489774329492237.a n = A023174 (n + 1)

end A023174

/-! ## A023174.P9169201835752382975

`eq[A002708(n+1), A043529(n)]-A057428(n)`
-/

namespace A023174.P9169201835752382975
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ) - A057428 n

end

end A023174.P9169201835752382975

namespace A023174

/-- `eq[A002708(n+1), A043529(n)]-A057428(n)` -/
def P9169201835752382975.Spec : Prop :=
  ∀ n, P9169201835752382975.a n = A023174 (n + 1)

end A023174

/-! ## A023174.P630713050050933382

`A043529(2*n)+eq[A002708(n+2), A043529(n+1)]`
-/

namespace A023174.P630713050050933382
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002708 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 (2 * n) + (SequenceMachineLib.nth (fun j => f1 j = f2 j) n : ℤ)

end

end A023174.P630713050050933382

namespace A023174

/-- `A043529(2*n)+eq[A002708(n+2), A043529(n+1)]` -/
def P630713050050933382.Spec : Prop :=
  ∀ n, P630713050050933382.a n = A023174 (n + 1)

end A023174

/-!
# A023175: Numbers k such that Fibonacci(k) == 3 (mod k).

The programs for A023175, there is no canonical definition to state claims against.
-/

/-! ## A023175.P1573258268502639228

`eq[n, gcd(3-A000045(n), n)]`
-/

namespace A023175.P1573258268502639228
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (3 - A000045 n) (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A023175.P1573258268502639228

/-! ## A023175.P9606273661476353018

`∑[A278236(A218652(n+1))/2]`
-/

namespace A023175.P9606273661476353018
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A278236 (A218652 (n + 1)).toNat : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023175.P9606273661476353018

/-!
# A023176: Numbers k such that Fibonacci(k) == 5 (mod k).

The programs for A023176, the canonical program `A023176.P13506540630945294316` is in `Seq.B002.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023176 has offset 1).

The definition of A023176 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 179 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023176.P13506540630945294316

`record[gcd(n+1, 5-A002708(n+1))]`

The canonical program, it is in `Seq.B002.C000`.
-/

namespace A023176

/-- `record[gcd(n+1, 5-A002708(n+1))]` -/
def P13506540630945294316.Spec : Prop :=
  ∀ n, (P13506540630945294316.a n : ℤ) = A023176 (n + 1)

theorem P13506540630945294316.correct : P13506540630945294316.Spec := by
  intro n
  simp only [A023176, Nat.add_sub_cancel]

end A023176

/-! ## A023176.P7059881276650721071

`record[A381658(A034851(n))]`
-/

namespace A023176.P7059881276650721071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381658 (A034851 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023176.P7059881276650721071

namespace A023176

/-- `record[A381658(A034851(n))]` -/
def P7059881276650721071.Spec : Prop :=
  ∀ n, P7059881276650721071.a n = A023176 (n + 1)

end A023176

/-! ## A023176.P17463781640246954222

`∑[A374434(record[A001678(n)])]`
-/

namespace A023176.P17463781640246954222
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001678 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374434 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023176.P17463781640246954222

namespace A023176

/-- `∑[A374434(record[A001678(n)])]` -/
def P17463781640246954222.Spec : Prop :=
  ∀ n, P17463781640246954222.a n = A023176 (n + 1)

end A023176

/-! ## A023176.P14190909456774247823

`A350088(record[A350477(n+1)])`
-/

namespace A023176.P14190909456774247823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350477 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350088 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023176.P14190909456774247823

namespace A023176

/-- `A350088(record[A350477(n+1)])` -/
def P14190909456774247823.Spec : Prop :=
  ∀ n, P14190909456774247823.a n = A023176 (n + 1)

end A023176

/-! ## A023176.P902214946995898788

`record[A270928(∑[A072861(n+1)])]`
-/

namespace A023176.P902214946995898788
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072861 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270928 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023176.P902214946995898788

namespace A023176

/-- `record[A270928(∑[A072861(n+1)])]` -/
def P902214946995898788.Spec : Prop :=
  ∀ n, P902214946995898788.a n = A023176 (n + 1)

end A023176

/-!
# A023177: Numbers k such that Fibonacci(k) == 8 (mod k).

The programs for A023177, there is no canonical definition to state claims against.
-/

/-! ## A023177.P5689459081480402367

`∑[(n+1)*A122197(∑[A006857(n)]+1)]`
-/

namespace A023177.P5689459081480402367
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006857 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A122197 (∑ j ∈ Finset.range (n + 1), f2 j + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023177.P5689459081480402367

/-! ## A023177.P7745537168053270425

`A008486(eq[A315281(n), A315303(n)])`
-/

namespace A023177.P7745537168053270425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315281 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315303 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A023177.P7745537168053270425

/-!
# A023179: Numbers k such that Fib(k) == 21 (mod k).

The programs for A023179, there is no canonical definition to state claims against.
-/

/-! ## A023179.P6149694726948585176

`∑[∏[A213204(A099716(n))]]`
-/

namespace A023179.P6149694726948585176
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213204 (A099716 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023179.P6149694726948585176

/-!
# A023180: Numbers k such that Fibonacci(k) == 34 (mod k).

The programs for A023180, there is no canonical definition to state claims against.
-/

/-! ## A023180.P512210432781507348

`A006577(1+n+A000073(3*n))+A127775(n+1)`
-/

namespace A023180.P512210432781507348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006577 ((1 + n : ℤ) + A000073 (3 * n)).toNat + A127775 (n + 1)

end

end A023180.P512210432781507348

/-!
# A023181: Numbers k such that Fibonacci(k) == 55 (mod k).

The programs for A023181, there is no canonical definition to state claims against.
-/

/-! ## A023181.P7201169185826046042

`∑[gcd(A017413(n), A213918(n+1))]`
-/

namespace A023181.P7201169185826046042
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A017413 n) (A213918 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023181.P7201169185826046042

/-! ## A023181.P7130851052904790670

`∩[A005100(n+1), A018676(A060831(n+1))]`
-/

namespace A023181.P7130851052904790670
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005100 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018676 (A060831 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023181.P7130851052904790670

/-!
# A023184: Least Fibonacci number ending with n.

The programs for A023184, there is no canonical definition to state claims against.
-/

/-! ## A023184.P9269015828156716054

`A000045(abs(A023183(n)))`
-/

namespace A023184.P9269015828156716054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 |A023183 n|.toNat

end

end A023184.P9269015828156716054

/-! ## A023184.P7103098353552150236

`A212804(A023183(n)+1)`
-/

namespace A023184.P7103098353552150236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212804 (A023183 n + 1).toNat

end

end A023184.P7103098353552150236

/-! ## A023184.P17217869042693034575

`abs(A236191(abs(A023183(n))))`
-/

namespace A023184.P17217869042693034575
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(A236191 |A023183 n|.toNat)|

end

end A023184.P17217869042693034575

/-! ## A023184.P5358019779516950785

`A103609(abs(2*A023183(n)))`
-/

namespace A023184.P5358019779516950785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 |2 * A023183 n|.toNat

end

end A023184.P5358019779516950785

/-!
# A023186: Lonely (or isolated) primes: increasing distance to nearest prime.

The programs for A023186, there is no canonical definition to state claims against.
-/

/-! ## A023186.P9893973419172277446

`record[A102723(ceil(n/a(n-1)))]` with `a(0)=2`
-/

namespace A023186.P9893973419172277446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  A102723 ⌈(n : ℚ) / (f1 (n - 1) : ℚ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023186.P9893973419172277446

/-! ## A023186.P3483860811545886452

`A023188(floor(A023187(n+1)/2)+1)`
-/

namespace A023186.P3483860811545886452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023188 (⌊(A023187 (n + 1) : ℚ) / 2⌋ + 1).toNat

end

end A023186.P3483860811545886452

/-! ## A023186.P11761045463242194069

`record[A120937(n)-A010893(n)]`
-/

namespace A023186.P11761045463242194069
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120937 n - A010893 (n + 13)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023186.P11761045463242194069

/-! ## A023186.P16191066980589614499

`record[A120937(n)-A010894(n)]`
-/

namespace A023186.P16191066980589614499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120937 n - A010894 (n + 21)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023186.P16191066980589614499

/-! ## A023186.P9373765980006123475

`record[A120937(n)-A023931(n)]`
-/

namespace A023186.P9373765980006123475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A120937 n - A023931 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023186.P9373765980006123475

/-!
# A023187: Distances of increasingly lonely primes to nearest prime.

The programs for A023187, there is no canonical definition to state claims against.
-/

/-! ## A023187.P15699759653320074057

`record[gcd(A172309(n), A340947(n))]`
-/

namespace A023187.P15699759653320074057
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A172309 n) (A340947 (n + 10))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023187.P15699759653320074057

/-!
# A023188: Lonely (or isolated) primes: least prime of distance n from nearest prime (n = 1 or even).

The programs for A023188, there is no canonical definition to state claims against.
-/

/-! ## A023188.P15139246024000462132

`A051728(n)-A147843(A127998(n+1))`
-/

namespace A023188.P15139246024000462132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051728 n - A147843 (A127998 (n + 1)).toNat

end

end A023188.P15139246024000462132

/-! ## A023188.P8795829813587683148

`or(A051728(n), A299761(A225987(n+1)))`
-/

namespace A023188.P8795829813587683148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A051728 n) (A299761 (A225987 (n + 1)).toNat)

end

end A023188.P8795829813587683148

/-! ## A023188.P4709321590797699577

`A078473(A139800(2*(n+2)))+A051728(n)`
-/

namespace A023188.P4709321590797699577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A078473 (A139800 (2 * (n + 2))).toNat + A051728 n

end

end A023188.P4709321590797699577

/-!
# A023189: Conjecturally, number of infinitely recurring prime patterns of width 2n-1.

The programs for A023189, there is no canonical definition to state claims against.
-/

/-! ## A023189.P9755852364348917205

`Δ[A292225(A004277(n))%(2^n)]`
-/

namespace A023189.P9755852364348917205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292225 (A004277 n).toNat) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023189.P9755852364348917205

/-! ## A023189.P3520272104794062836

`Δ[A292225(A053438(n))%(2^n)]`
-/

namespace A023189.P3520272104794062836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A292225 (A053438 n).toNat) (2 ^ n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A023189.P3520272104794062836

/-! ## A023189.P512526923323213719

`A000007(n)+Δ[A292225(A004277(n))]`
-/

namespace A023189.P512526923323213719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292225 (A004277 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A023189.P512526923323213719

/-! ## A023189.P654664798214516222

`A000007(n)+Δ[A292225(A053438(n))]`
-/

namespace A023189.P654664798214516222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292225 (A053438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A023189.P654664798214516222

/-! ## A023189.P5549777519711449737

`A000007(n)+Δ[A292225(A028310(2*n))]`
-/

namespace A023189.P5549777519711449737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292225 (A028310 (2 * n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 n + (f1 (n + 1) - f1 n)

end

end A023189.P5549777519711449737

/-!
# A023190: Conjecturally, maximum number of primes in an infinitely-recurring prime pattern of width 2*n-1.

The programs for A023190, there is no canonical definition to state claims against.
-/

/-! ## A023190.P242592660152852159

`A168046(A095067(n+1))+∑[and(1, n+1)]`
-/

namespace A023190.P242592660152852159
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.land 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A095067 (n + 1)).toNat + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A023190.P242592660152852159

/-! ## A023190.P16360089070635292334

`A168046(A095067(n+1))+A123108(n+2)`
-/

namespace A023190.P16360089070635292334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A095067 (n + 1)).toNat + A123108 (n + 2)

end

end A023190.P16360089070635292334

/-! ## A023190.P6003287699107066507

`A137397(A273016(n+1))-4`
-/

namespace A023190.P6003287699107066507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137397 (A273016 (n + 1)).toNat - 4

end

end A023190.P6003287699107066507

/-! ## A023190.P1860959914807604012

`∑{e}[A004647(n+1), A029931(#)]`
-/

namespace A023190.P1860959914807604012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004647 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n).natAbs, A029931 (Nat.factorization (f1 n).natAbs p)

end

end A023190.P1860959914807604012

/-! ## A023190.P3676003679174365901

`A109497(2*n)-A082784(A080546(n))`
-/

namespace A023190.P3676003679174365901
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109497 (2 * n) - A082784 (A080546 n).toNat

end

end A023190.P3676003679174365901

/-!
# A023192: Conjecturally, number of infinitely-recurring prime patterns on n consecutive integers.

The programs for A023192, there is no canonical definition to state claims against.
-/

/-! ## A023192.P5458938815793446962

`1+∑{#}[floor((n+2)/2)-1, (n+1-2*(#+1)+2)*A023189(#+1)]`
-/

namespace A023192.P5458938815793446962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 2 : ℚ) / 2⌋ - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 + ∑ k ∈ Finset.range (f1 n + 1).toNat, ((n + 1 : ℤ) - (2 * (k + 1) : ℤ) + 2) * A023189 (k + 1)

end

end A023192.P5458938815793446962

/-! ## A023192.P913696459485059272

`∑[A292225(1+n)]+1`
-/

namespace A023192.P913696459485059272
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292225 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A023192.P913696459485059272

/-! ## A023192.P2714525537103649601

`A292225(n+1)+a(n-1)` with `a(0)=2`
-/

namespace A023192.P2714525537103649601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A292225 (n + 1) + a (n - 1)

end

end A023192.P2714525537103649601

/-! ## A023192.P6326202079044325540

`floor(A292225(n+1)+a(A023443(n)))` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A023192.P6326202079044325540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A292225 (n + 1) + a (A023443 n).toNat

end

end A023192.P6326202079044325540

/-! ## A023192.P5542536649853012257

`∑[A292225(A005408(A123108(n)))]`
-/

namespace A023192.P5542536649853012257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292225 (A005408 (A123108 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023192.P5542536649853012257

/-!
# A023193: a(n) gives the largest number k for which there is at least one admissible k-tuple taken from [0, 1, ..., n-1] if the tuple starts with 0. Admissibility is defined in a comment.

The programs for A023193, there is no canonical definition to state claims against.
-/

/-! ## A023193.P15885683010930442280

`fp[A020497(n+1)-1]`
-/

namespace A023193.P15885683010930442280
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A023193.P15885683010930442280

/-! ## A023193.P37186365828835244

`∑[char[A020497(1+n)-1]]`
-/

namespace A023193.P37186365828835244
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (1 + n) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023193.P37186365828835244

/-! ## A023193.P3636979039819803934

`char[A020497(2+n)-1]+a(n-1)` with `a(0)=1`
-/

namespace A023193.P3636979039819803934
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (2 + n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.rec [1] fun n a =>
  (if ∃ j, f1 j = (n : ℤ) then 1 else 0) + a (n - 1)

end

end A023193.P3636979039819803934

/-! ## A023193.P13184766807255138670

`∑[char[A004442(A020497(1+n))]]`
-/

namespace A023193.P13184766807255138670
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A020497 (1 + n)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023193.P13184766807255138670

/-! ## A023193.P17050851078232868341

`∑[char[A046666(A020497(n+1)+1)]]`
-/

namespace A023193.P17050851078232868341
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046666 (A020497 (n + 1) + 1).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023193.P17050851078232868341

/-! ## A023193.P15544225179055208889

`∑[char[A023445(A020497(n+1)+2)]]`
-/

namespace A023193.P15544225179055208889
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023445 (A020497 (n + 1) + 2).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023193.P15544225179055208889

/-! ## A023193.P930164168161851735

`∑[char[A008407(1+n)]]`
-/

namespace A023193.P930164168161851735
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008407 (1 + n)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023193.P930164168161851735

/-! ## A023193.P4526520922774527233

`fp[A008407(n+1)]`
-/

namespace A023193.P4526520922774527233
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008407 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℤ) < f1 j) 0

end

end A023193.P4526520922774527233

/-! ## A023193.P10807896865043291249

`∑[char[∑[A047947(n+1)]]]+1`
-/

namespace A023193.P10807896865043291249
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A023193.P10807896865043291249

/-!
# A023194: Numbers whose sum of divisors is prime.

The programs for A023194, there is no canonical definition to state claims against.
-/

/-! ## A023194.P3962772901975953642

`A270413(1+n)-1`
-/

namespace A023194.P3962772901975953642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270413 (1 + n) - 1

end

end A023194.P3962772901975953642

/-! ## A023194.P5217375797031002248

`ceil(A292446(1+n)/2)`
-/

namespace A023194.P5217375797031002248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A292446 (1 + n) : ℚ) / 2⌉

end

end A023194.P5217375797031002248

/-! ## A023194.P10001216298657830569

`round(A292446(n+1)/2)`
-/

namespace A023194.P10001216298657830569
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A292446 (n + 1) : ℚ) / 2)

end

end A023194.P10001216298657830569

/-! ## A023194.P16524368193307352348

`A071167(n+1)+A062700(n+1)`
-/

namespace A023194.P16524368193307352348
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071167 (n + 1) + A062700 (n + 1)

end

end A023194.P16524368193307352348

/-! ## A023194.P7348956793662665878

`∪[A249902(n+1), A278911(n+1)]`
-/

namespace A023194.P7348956793662665878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249902 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278911 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023194.P7348956793662665878

/-! ## A023194.P14229377750417857863

`record[A055638(A065033(n))^A000034(n)]`
-/

namespace A023194.P14229377750417857863
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A055638 (A065033 n).toNat : ℚ) ^ (A000034 n : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023194.P14229377750417857863

/-! ## A023194.P13691001186654922926

`∩[A071114(n+1), A379112(n+1)]`
-/

namespace A023194.P13691001186654922926
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071114 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379112 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023194.P13691001186654922926

/-! ## A023194.P1939303025250495680

`∩[A015730(n+1), A070763(n+1)]`
-/

namespace A023194.P1939303025250495680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070763 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023194.P1939303025250495680

/-! ## A023194.P4120244438840419244

`∩[A015730(n+1), A071114(n+1)]`
-/

namespace A023194.P4120244438840419244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023194.P4120244438840419244

/-! ## A023194.P1501891768606965764

`∩[A015730(n+1), A281882(n+1)]`
-/

namespace A023194.P1501891768606965764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015730 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281882 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023194.P1501891768606965764

/-!
# A023195: Prime numbers that are the sum of the divisors of some n.

The programs for A023195, there is no canonical definition to state claims against.
-/

/-! ## A023195.P14785594746455015140

`∪[A100382(1+n), A247837(n+1)]`
-/

namespace A023195.P14785594746455015140
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100382 (1 + n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023195.P14785594746455015140

/-! ## A023195.P12936740874025151450

`∩[A003424(n+1), A243765(n+1)]`
-/

namespace A023195.P12936740874025151450
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023195.P12936740874025151450

/-! ## A023195.P12659821194328756604

`∩[A206864(n+1), A243765(n+1)]`
-/

namespace A023195.P12659821194328756604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023195.P12659821194328756604

/-! ## A023195.P14730057907698661328

`∩[A206946(n+1), A243765(n+1)]`
-/

namespace A023195.P14730057907698661328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A243765 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023195.P14730057907698661328

/-! ## A023195.P519598114725959197

`∩[A003424(n+1), A379655(n+1)]`
-/

namespace A023195.P519598114725959197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023195.P519598114725959197

/-! ## A023195.P9486425330085320107

`∩[A206864(n+1), A379655(n+1)]`
-/

namespace A023195.P9486425330085320107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023195.P9486425330085320107

/-! ## A023195.P9140909155857757541

`∩[A206946(n+1), A379655(n+1)]`
-/

namespace A023195.P9140909155857757541
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379655 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023195.P9140909155857757541

/-! ## A023195.P15904443528822184736

`∩[A003424(n+1), A060657(n+1)]`
-/

namespace A023195.P15904443528822184736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003424 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023195.P15904443528822184736

/-! ## A023195.P1525544944558770160

`∩[A060657(n+1), A206864(n+1)]`
-/

namespace A023195.P1525544944558770160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023195.P1525544944558770160

/-! ## A023195.P14369150345484053190

`∩[A060657(n+1), A206946(n+1)]`
-/

namespace A023195.P14369150345484053190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A206946 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A023195.P14369150345484053190

/-!
# A023196: Nondeficient numbers: numbers k such that sigma(k) >= 2k; union of A000396 and A005101.

The programs for A023196, the canonical program `A023196.P11305018750547605188` is in `Seq.B001.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A023196 has offset 1).

The definition of A023196 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A023196.P12997646700064706084

`eq[0, A294934(n+1)]+1`
-/

namespace A023196.P12997646700064706084
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023196.P12997646700064706084

namespace A023196

/-- `eq[0, A294934(n+1)]+1` -/
def P12997646700064706084.Spec : Prop :=
  ∀ n, (P12997646700064706084.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P17949967497166147256

`lt[0, A060862(n+1)]+1`
-/

namespace A023196.P17949967497166147256
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060862 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A023196.P17949967497166147256

namespace A023196

/-- `lt[0, A060862(n+1)]+1` -/
def P17949967497166147256.Spec : Prop :=
  ∀ n, (P17949967497166147256.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P658713471005240304

`lt[0, A294936(1+n)]+1`
-/

namespace A023196.P658713471005240304
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A023196.P658713471005240304

namespace A023196

/-- `lt[0, A294936(1+n)]+1` -/
def P658713471005240304.Spec : Prop :=
  ∀ n, (P658713471005240304.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P6836415818241089444

`eq[1, A294936(n+1)]+1`
-/

namespace A023196.P6836415818241089444
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294936 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023196.P6836415818241089444

namespace A023196

/-- `eq[1, A294936(n+1)]+1` -/
def P6836415818241089444.Spec : Prop :=
  ∀ n, (P6836415818241089444.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P829217291754438388

`lt[0, A302110(n+1)]+1`
-/

namespace A023196.P829217291754438388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302110 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A023196.P829217291754438388

namespace A023196

/-- `lt[0, A302110(n+1)]+1` -/
def P829217291754438388.Spec : Prop :=
  ∀ n, (P829217291754438388.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P12409633299668936933

`lt[0, A336835(n+1)]+1`
-/

namespace A023196.P12409633299668936933
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A023196.P12409633299668936933

namespace A023196

/-- `lt[0, A336835(n+1)]+1` -/
def P12409633299668936933.Spec : Prop :=
  ∀ n, (P12409633299668936933.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P12595223360395042317

`eq[1, A336916(n+1)]+1`
-/

namespace A023196.P12595223360395042317
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336916 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A023196.P12595223360395042317

namespace A023196

/-- `eq[1, A336916(n+1)]+1` -/
def P12595223360395042317.Spec : Prop :=
  ∀ n, (P12595223360395042317.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P17034297116181801439

`lt[0, A341620(n+1)]+1`
-/

namespace A023196.P17034297116181801439
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A341620 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A023196.P17034297116181801439

namespace A023196

/-- `lt[0, A341620(n+1)]+1` -/
def P17034297116181801439.Spec : Prop :=
  ∀ n, (P17034297116181801439.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P11305018750547605188

`lt[2*n+1, A000203(n+1)]+1`

The canonical program, it is in `Seq.B001.C000`.
-/

namespace A023196

/-- `lt[2*n+1, A000203(n+1)]+1` -/
def P11305018750547605188.Spec : Prop :=
  ∀ n, (P11305018750547605188.a n : ℤ) = A023196 (n + 1)

theorem P11305018750547605188.correct : P11305018750547605188.Spec := by
  intro n
  simp only [A023196, Nat.add_sub_cancel]

end A023196

/-! ## A023196.P16201895198227058465

`lt[n+3, A000203(n+2)-n]+2`
-/

namespace A023196.P16201895198227058465
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (n + 2) - (n : ℤ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 2

end

end A023196.P16201895198227058465

namespace A023196

/-- `lt[n+3, A000203(n+2)-n]+2` -/
def P16201895198227058465.Spec : Prop :=
  ∀ n, (P16201895198227058465.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P7536660352401178769

`∪[A005101(n+1), A171496(n)]`
-/

namespace A023196.P7536660352401178769
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171496 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P7536660352401178769

namespace A023196

/-- `∪[A005101(n+1), A171496(n)]` -/
def P7536660352401178769.Spec : Prop :=
  ∀ n, (P7536660352401178769.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P13024907536651961406

`∪[A005101(n+1), A005835(n+1)]`
-/

namespace A023196.P13024907536651961406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P13024907536651961406

namespace A023196

/-- `∪[A005101(n+1), A005835(n+1)]` -/
def P13024907536651961406.Spec : Prop :=
  ∀ n, (P13024907536651961406.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P10639493415131968675

`∪[A005101(n+1), A006036(n+1)]`
-/

namespace A023196.P10639493415131968675
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P10639493415131968675

namespace A023196

/-- `∪[A005101(n+1), A006036(n+1)]` -/
def P10639493415131968675.Spec : Prop :=
  ∀ n, (P10639493415131968675.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P15683959788429131706

`∪[A005101(n+1), A006039(n+1)]`
-/

namespace A023196.P15683959788429131706
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006039 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P15683959788429131706

namespace A023196

/-- `∪[A005101(n+1), A006039(n+1)]` -/
def P15683959788429131706.Spec : Prop :=
  ∀ n, (P15683959788429131706.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P1548217382088052462

`∪[A005835(n+1), A006037(n+1)]`
-/

namespace A023196.P1548217382088052462
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P1548217382088052462

namespace A023196

/-- `∪[A005835(n+1), A006037(n+1)]` -/
def P1548217382088052462.Spec : Prop :=
  ∀ n, (P1548217382088052462.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P4635990793351215519

`∪[A064771(n+1), A005101(n+1)]`
-/

namespace A023196.P4635990793351215519
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064771 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005101 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P4635990793351215519

namespace A023196

/-- `∪[A064771(n+1), A005101(n+1)]` -/
def P4635990793351215519.Spec : Prop :=
  ∀ n, (P4635990793351215519.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P11847867938076463949

`∪[A087245(n+1), A083207(n+1)]`
-/

namespace A023196.P11847867938076463949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087245 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083207 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P11847867938076463949

namespace A023196

/-- `∪[A087245(n+1), A083207(n+1)]` -/
def P11847867938076463949.Spec : Prop :=
  ∀ n, (P11847867938076463949.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P15118701005162890738

`∪[A173490(n+1), A005835(n+1)]`
-/

namespace A023196.P15118701005162890738
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173490 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P15118701005162890738

namespace A023196

/-- `∪[A173490(n+1), A005835(n+1)]` -/
def P15118701005162890738.Spec : Prop :=
  ∀ n, (P15118701005162890738.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P15228230707698969098

`∪[A181487(n+1), A005835(n+1)]`
-/

namespace A023196.P15228230707698969098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181487 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P15228230707698969098

namespace A023196

/-- `∪[A181487(n+1), A005835(n+1)]` -/
def P15228230707698969098.Spec : Prop :=
  ∀ n, (P15228230707698969098.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P12503824708038021163

`∪[A192819(n+1), A005835(n+1)]`
-/

namespace A023196.P12503824708038021163
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A192819 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P12503824708038021163

namespace A023196

/-- `∪[A192819(n+1), A005835(n+1)]` -/
def P12503824708038021163.Spec : Prop :=
  ∀ n, (P12503824708038021163.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P8892961423725504579

`lt[2*n+1, ∑{d}[n+1, #]]+1`
-/

namespace A023196.P8892961423725504579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 1

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f3 n), d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A023196.P8892961423725504579

namespace A023196

/-- `lt[2*n+1, ∑{d}[n+1, #]]+1` -/
def P8892961423725504579.Spec : Prop :=
  ∀ n, (P8892961423725504579.a n : ℤ) = A023196 (n + 1)

end A023196

/-!
# A023197: Numbers k such that sigma(k) >= 3*k.

The programs for A023197, there is no canonical definition to state claims against.
-/

/-! ## A023197.P17783705610358527379

`∪[A005820(n+1), A068403(n+1)]`
-/

namespace A023197.P17783705610358527379
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005820 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023197.P17783705610358527379

/-! ## A023197.P5723763921521116305

`∪[A068403(n+1), A166069(n+1)]`
-/

namespace A023197.P5723763921521116305
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166069 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023197.P5723763921521116305

/-! ## A023197.P5502854313912673464

`∪[A068403(n+1), A204830(n+1)]`
-/

namespace A023197.P5502854313912673464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204830 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023197.P5502854313912673464

/-! ## A023197.P6607784039355997785

`∪[A068403(n+1), A388019(n+1)]`
-/

namespace A023197.P6607784039355997785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388019 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023197.P6607784039355997785

/-! ## A023197.P16648906757092594336

`∪[A068403(n+1), A388022(n+1)]`
-/

namespace A023197.P16648906757092594336
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388022 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023197.P16648906757092594336

/-! ## A023197.P4987437760113453473

`∪[A068403(n+1), A388024(n+1)]`
-/

namespace A023197.P4987437760113453473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388024 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023197.P4987437760113453473

/-! ## A023197.P14182857524462308824

`∪[A068403(n+1), A388025(n+1)]`
-/

namespace A023197.P14182857524462308824
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388025 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023197.P14182857524462308824

/-! ## A023197.P9599262586376280468

`∪[A068403(n+1), A388026(n+1)]`
-/

namespace A023197.P9599262586376280468
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388026 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023197.P9599262586376280468

/-! ## A023197.P13846313286432195167

`∪[A068403(n+1), A388036(n+1)]`
-/

namespace A023197.P13846313286432195167
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388036 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023197.P13846313286432195167

/-! ## A023197.P9998727971174102019

`∪[A068403(n+1), A388037(n+1)]`
-/

namespace A023197.P9998727971174102019
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A388037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023197.P9998727971174102019

/-! ## A023197.P16726819440364142318

`∪[A068403(n+1), A322377(n+1)]`
-/

namespace A023197.P16726819440364142318
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068403 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322377 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023197.P16726819440364142318

/-!
# A023198: Numbers k such that sigma(k) >= 4*k.

The programs for A023198, there is no canonical definition to state claims against.
-/

/-! ## A023198.P2912082579114111085

`∪[A027687(n+1), A068404(n+1)]`
-/

namespace A023198.P2912082579114111085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027687 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068404 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023198.P2912082579114111085

/-! ## A023198.P10724962165916860298

`∪[A068404(n+1), A392936(n+1)]`
-/

namespace A023198.P10724962165916860298
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023198.P10724962165916860298

/-! ## A023198.P11778284642484171948

`∪[A068404(n+1), A204831(n+1)]`
-/

namespace A023198.P11778284642484171948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A068404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204831 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023198.P11778284642484171948

/-! ## A023198.P1973553414407943569

`∪[A204831(n+1), A307114(n+1)]`
-/

namespace A023198.P1973553414407943569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307114 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023198.P1973553414407943569

/-! ## A023198.P9970451104260939219

`∪[A204831(n+1), A392936(n+1)]`
-/

namespace A023198.P9970451104260939219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204831 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A392936 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023198.P9970451104260939219

/-!
# A023199: a(n) is the least k with sigma(k) >= n*k.

The programs for A023199, there is no canonical definition to state claims against.
-/

/-! ## A023199.P9951994377236787583

`A383920(2*(1+n))`
-/

namespace A023199.P9951994377236787583
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383920 (2 * (1 + n))

end

end A023199.P9951994377236787583

/-! ## A023199.P10219653410085699619

`A004394(A240074(n+1)-char[2])`
-/

namespace A023199.P10219653410085699619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004394 (A240074 (n + 1) - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)).toNat

end

end A023199.P10219653410085699619

