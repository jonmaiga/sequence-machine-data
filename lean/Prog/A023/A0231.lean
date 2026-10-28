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
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C033
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
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
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C004
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B006.C000
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

/-! ## A023104.P3327938528434195100

`dr(A007376(A000079(n)))`
-/

namespace A023104.P3327938528434195100
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A000079 n).toNat)

end

end A023104.P3327938528434195100

/-! ## A023104.P12366258518830539585

`dr(A007376(A011782(n+1)))`
-/

namespace A023104.P12366258518830539585
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A011782 (n + 1)).toNat)

end

end A023104.P12366258518830539585

/-! ## A023104.P16947821262860572342

`dr(A007376(A000051(n)-1))`
-/

namespace A023104.P16947821262860572342
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A000051 n - 1).toNat)

end

end A023104.P16947821262860572342

/-! ## A023104.P8362621837752408350

`dr(A007376(A016116(2*n)))`
-/

namespace A023104.P8362621837752408350
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A007376 (A016116 (2 * n)).toNat)

end

end A023104.P8362621837752408350

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

/-! ## A023106.P14882156249276014619

`A154125(A135480(n))`
-/

namespace A023106.P14882156249276014619
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154125 (A135480 n).toNat

end

end A023106.P14882156249276014619

/-! ## A023106.P12708196125599373934

`A246605(A049872(n))`
-/

namespace A023106.P12708196125599373934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A049872 n).toNat

end

end A023106.P12708196125599373934

/-! ## A023106.P626498872230084358

`A246605(A062003(n))`
-/

namespace A023106.P626498872230084358
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A062003 n).toNat

end

end A023106.P626498872230084358

/-! ## A023106.P12365889207186265775

`A246605(A062279(n))`
-/

namespace A023106.P12365889207186265775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A062279 n).toNat

end

end A023106.P12365889207186265775

/-! ## A023106.P18169029384225342104

`A246605(A004862(n+1))`
-/

namespace A023106.P18169029384225342104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246605 (A004862 (n + 1)).toNat

end

end A023106.P18169029384225342104

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

/-! ## A023110.P10355069751145321473

`A031149(n+1)^A000034(A001844(n))`
-/

namespace A023110.P10355069751145321473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031149 (n + 1) : ℚ) ^ (A000034 (A001844 n).toNat : ℤ)

end

end A023110.P10355069751145321473

namespace A023110

/-- `A031149(n+1)^A000034(A001844(n))` -/
def P10355069751145321473.Spec : Prop :=
  ∀ n, P10355069751145321473.a n = (A023110 (n + 1) : ℚ)

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

/-! ## A023110.P17748610852900232236

`A031149(n+1)^A000005(A002233(n+1))`
-/

namespace A023110.P17748610852900232236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031149 (n + 1) : ℚ) ^ (A000005 (A002233 (n + 1)).toNat : ℤ)

end

end A023110.P17748610852900232236

namespace A023110

/-- `A031149(n+1)^A000005(A002233(n+1))` -/
def P17748610852900232236.Spec : Prop :=
  ∀ n, P17748610852900232236.a n = (A023110 (n + 1) : ℚ)

end A023110

/-! ## A023110.P5789005962978257489

`A031149(n+1)^A000005(A008578(n+1))`
-/

namespace A023110.P5789005962978257489
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031149 (n + 1) : ℚ) ^ (A000005 (A008578 (n + 1)).toNat : ℤ)

end

end A023110.P5789005962978257489

namespace A023110

/-- `A031149(n+1)^A000005(A008578(n+1))` -/
def P5789005962978257489.Spec : Prop :=
  ∀ n, P5789005962978257489.a n = (A023110 (n + 1) : ℚ)

end A023110

/-! ## A023110.P2354393236698767818

`A031149(n+1)^A020639(A031131(n+1))`
-/

namespace A023110.P2354393236698767818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031149 (n + 1) : ℚ) ^ (A020639 (A031131 (n + 1)).toNat : ℤ)

end

end A023110.P2354393236698767818

namespace A023110

/-- `A031149(n+1)^A020639(A031131(n+1))` -/
def P2354393236698767818.Spec : Prop :=
  ∀ n, P2354393236698767818.a n = (A023110 (n + 1) : ℚ)

end A023110

/-! ## A023110.P2065194812823837824

`A031149(n+1)^A020639(A031132(n+1))`
-/

namespace A023110.P2065194812823837824
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A031149 (n + 1) : ℚ) ^ (A020639 (A031132 (n + 1)).toNat : ℤ)

end

end A023110.P2065194812823837824

namespace A023110

/-- `A031149(n+1)^A020639(A031132(n+1))` -/
def P2065194812823837824.Spec : Prop :=
  ∀ n, P2065194812823837824.a n = (A023110 (n + 1) : ℚ)

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

/-! ## A023113.P2538280673033934301

`A221874(n+1)²`
-/

namespace A023113.P2538280673033934301
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221874 (n + 1) ^ 2

end

end A023113.P2538280673033934301

/-! ## A023113.P884166277139197531

`2*A274544(n+1)-1`
-/

namespace A023113.P884166277139197531
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A274544 (n + 1) - 1

end

end A023113.P884166277139197531

/-! ## A023113.P8131276704247616725

`(2*A129556(n+1)+1)²`
-/

namespace A023113.P8131276704247616725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * A129556 (n + 1) + 1) ^ 2

end

end A023113.P8131276704247616725

/-! ## A023113.P18404697092954953280

`(1-2*A254332(n+1))²`
-/

namespace A023113.P18404697092954953280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (1 - 2 * A254332 (n + 1)) ^ 2

end

end A023113.P18404697092954953280

/-! ## A023113.P12388008861486841827

`record[A221874(A075825(n))²]`
-/

namespace A023113.P12388008861486841827
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A221874 (A075825 n).toNat ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023113.P12388008861486841827

/-!
# A023114: Squares that remain square when the digit 9 is appended.

The programs for A023114, there is no canonical definition to state claims against.
-/

/-! ## A023114.P4655028434039807199

`A075836(n+1)²`
-/

namespace A023114.P4655028434039807199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075836 (n + 1) ^ 2

end

end A023114.P4655028434039807199

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

/-! ## A023114.P17882990931454967889

`2*A075836(n+1)*A075873(n+1)`
-/

namespace A023114.P17882990931454967889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A075836 (n + 1) * A075873 (n + 1))

end

end A023114.P17882990931454967889

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

/-! ## A023115.P3410329679659195642

`A000005(2^A025666(n+1))`
-/

namespace A023115.P3410329679659195642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025666 (n + 1) : ℤ))).toNat

end

end A023115.P3410329679659195642

/-! ## A023115.P13651661578272254144

`A135523(2^A025666(n+1))`
-/

namespace A023115.P13651661578272254144
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135523 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025666 (n + 1) : ℤ))).toNat

end

end A023115.P13651661578272254144

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

/-! ## A023115.P16267919807424717580

`A126760(A152714(n))+A025666(n+1)`
-/

namespace A023115.P16267919807424717580
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126760 (A152714 n).toNat + A025666 (n + 1)

end

end A023115.P16267919807424717580

/-! ## A023115.P16307481693459162333

`A334019(A181938(n+1))+A025666(n+1)`
-/

namespace A023115.P16307481693459162333
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334019 (A181938 (n + 1)).toNat + A025666 (n + 1)

end

end A023115.P16307481693459162333

/-! ## A023115.P6654390206071925309

`A025666(n+1)-A085384(A153376(n+1))`
-/

namespace A023115.P6654390206071925309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025666 (n + 1) - A085384 (A153376 (n + 1)).toNat

end

end A023115.P6654390206071925309

/-! ## A023115.P16542188642905043165

`A025666(n+1)+A001222(A282177(n+1))`
-/

namespace A023115.P16542188642905043165
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025666 (n + 1) + A001222 (A282177 (n + 1)).toNat

end

end A023115.P16542188642905043165

/-! ## A023115.P280249814590200154

`A025666(n+1)+A001511(A006512(n+1))`
-/

namespace A023115.P280249814590200154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025666 (n + 1) + A001511 (A006512 (n + 1)).toNat

end

end A023115.P280249814590200154

/-! ## A023115.P8292795176889713999

`A245716(A014574(n+1))+A025666(n+1)`
-/

namespace A023115.P8292795176889713999
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245716 (A014574 (n + 1)).toNat + A025666 (n + 1)

end

end A023115.P8292795176889713999

/-! ## A023115.P4043914771738029851

`A001222(2^(A025666(n+1)+1))`
-/

namespace A023115.P4043914771738029851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025666 (n + 1) + 1 : ℤ))).toNat

end

end A023115.P4043914771738029851

/-! ## A023115.P9403282771604619976

`A001222(A007283(A025666(n+1)))`
-/

namespace A023115.P9403282771604619976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A007283 (A025666 (n + 1)).toNat).toNat

end

end A023115.P9403282771604619976

/-! ## A023115.P5366813515654451618

`A001222(A000079(A025666(n+1)+1))`
-/

namespace A023115.P5366813515654451618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000079 (A025666 (n + 1) + 1).toNat).toNat

end

end A023115.P5366813515654451618

/-! ## A023115.P12301119354440019444

`A001222(A011782(A025666(n+1)+2))`
-/

namespace A023115.P12301119354440019444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A011782 (A025666 (n + 1) + 2).toNat).toNat

end

end A023115.P12301119354440019444

/-! ## A023115.P10389396493308957795

`A001222(A034008(A025666(n+1)+3))`
-/

namespace A023115.P10389396493308957795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A034008 (A025666 (n + 1) + 3).toNat).toNat

end

end A023115.P10389396493308957795

/-! ## A023115.P2540245989127971732

`A025666(n+1)+and(1, A297621(n)²)`
-/

namespace A023115.P2540245989127971732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025666 (n + 1) + Int.land 1 (A297621 n ^ 2)

end

end A023115.P2540245989127971732

/-!
# A023117: Signature sequence of sqrt(5) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023117, there is no canonical definition to state claims against.
-/

/-! ## A023117.P15459843654095285281

`A114327(lt[A178780(n), A114327(n)])`
-/

namespace A023117.P15459843654095285281
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178780 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A023117.P15459843654095285281

/-! ## A023117.P5503548347768721842

`A114327(lt[A178798(n), A114327(n)])`
-/

namespace A023117.P5503548347768721842
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178798 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114327 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A023117.P5503548347768721842

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

/-! ## A023118.P14958942096227103304

`A167969(A061887(n+1))`
-/

namespace A023118.P14958942096227103304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (A061887 (n + 1)).toNat

end

end A023118.P14958942096227103304

/-! ## A023118.P4316558375253157160

`A167969(A274431(n+1))`
-/

namespace A023118.P4316558375253157160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (A274431 (n + 1)).toNat

end

end A023118.P4316558375253157160

/-! ## A023118.P24602882162758046

`A167969(record[A057028(n+1)])`
-/

namespace A023118.P24602882162758046
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057028 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A023118.P24602882162758046

/-! ## A023118.P11783220343891473131

`A167969(∑[A056926(4*n+1)])`
-/

namespace A023118.P11783220343891473131
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (4 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023118.P11783220343891473131

/-! ## A023118.P17698155594959779914

`A167969(eq[1, A010766(n+1)]+1)`
-/

namespace A023118.P17698155594959779914
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A023118.P17698155594959779914

/-! ## A023118.P2891819663668625996

`A167969(lt[A233583(n+1), A038722(n+1)])`
-/

namespace A023118.P2891819663668625996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A023118.P2891819663668625996

/-! ## A023118.P12232582828451906050

`A167969(A000196(n+1)*A000196(n)+n+1)`
-/

namespace A023118.P12232582828451906050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (A000196 (n + 1) * A000196 n + (n : ℤ) + 1).toNat

end

end A023118.P12232582828451906050

/-! ## A023118.P6503916600142080180

`A167969(eq[A010766(n+1), A157928(n)])`
-/

namespace A023118.P6503916600142080180
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A157928 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A023118.P6503916600142080180

/-! ## A023118.P17003567046364183305

`A167969(A174803(n)+1)`
-/

namespace A023118.P17003567046364183305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167969 (A174803 n + 1).toNat

end

end A023118.P17003567046364183305

/-!
# A023120: Signature sequence of 1/sqrt(7) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023120, there is no canonical definition to state claims against.
-/

/-! ## A023120.P9074236214609309288

`A167970(n+1)+A000007(A062847(n+3))`
-/

namespace A023120.P9074236214609309288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167970 (n + 1) + A000007 (A062847 (n + 3)).toNat

end

end A023120.P9074236214609309288

/-! ## A023120.P17842318941952430005

`A329747(A023301(n+1))+A167970(n+1)`
-/

namespace A023120.P17842318941952430005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329747 (A023301 (n + 1)).toNat + A167970 (n + 1)

end

end A023120.P17842318941952430005

/-! ## A023120.P1665572957572718534

`A167970(n+1)+A111859(A167287(n+1))`
-/

namespace A023120.P1665572957572718534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167970 (n + 1) + A111859 (A167287 (n + 1)).toNat

end

end A023120.P1665572957572718534

/-! ## A023120.P6657546826080429718

`A167970(n+1)+A111859(A167286(n+1))`
-/

namespace A023120.P6657546826080429718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167970 (n + 1) + A111859 (A167286 (n + 1)).toNat

end

end A023120.P6657546826080429718

/-! ## A023120.P7912107718017382053

`and(A058000(n+1), A167970(n+1))`
-/

namespace A023120.P7912107718017382053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A058000 (n + 1)) (A167970 (n + 1))

end

end A023120.P7912107718017382053

/-! ## A023120.P846683369218794541

`A376847(A005384(2*n+5))+A167970(n+1)`
-/

namespace A023120.P846683369218794541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A376847 (A005384 (2 * n + 5)).toNat + A167970 (n + 1)

end

end A023120.P846683369218794541

/-! ## A023120.P17786046443053015158

`A167970(A023119(A022781(n+1))+n)`
-/

namespace A023120.P17786046443053015158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167970 (A023119 (A022781 (n + 1)).toNat + (n : ℤ)).toNat

end

end A023120.P17786046443053015158

/-! ## A023120.P8018710628299126457

`A167970(n+1)+A111859(A167972(n+1))`
-/

namespace A023120.P8018710628299126457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167970 (n + 1) + A111859 (A167972 (n + 1)).toNat

end

end A023120.P8018710628299126457

/-!
# A023121: Signature sequence of sqrt(2/3) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023121, there is no canonical definition to state claims against.
-/

/-! ## A023121.P1648454790733548822

`A105700(p?[4*n+1])+A025680(n+1)`
-/

namespace A023121.P1648454790733548822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)) + A025680 (n + 1)

end

end A023121.P1648454790733548822

/-! ## A023121.P16973661035845047031

`A345063(A000040(3*n+1))+A025680(n+1)`
-/

namespace A023121.P16973661035845047031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345063 (A000040 (3 * n + 1)).toNat + A025680 (n + 1)

end

end A023121.P16973661035845047031

/-! ## A023121.P6405574554372138176

`A105700(A023201(n+1))+A025680(n+1)`
-/

namespace A023121.P6405574554372138176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A023201 (n + 1)).toNat + A025680 (n + 1)

end

end A023121.P6405574554372138176

/-! ## A023121.P5843649061333928061

`A025680(n+1)+A010123(A031339(n+1))`
-/

namespace A023121.P5843649061333928061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025680 (n + 1) + A010123 (A031339 (n + 1)).toNat

end

end A023121.P5843649061333928061

/-! ## A023121.P15984289894041075379

`A025680(n+1)+A019425(A014574(n+1))`
-/

namespace A023121.P15984289894041075379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025680 (n + 1) + A019425 (A014574 (n + 1)).toNat

end

end A023121.P15984289894041075379

/-! ## A023121.P1582416498031999329

`A345063(A033203(3*n+2))+A025680(n+1)`
-/

namespace A023121.P1582416498031999329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345063 (A033203 (3 * n + 2)).toNat + A025680 (n + 1)

end

end A023121.P1582416498031999329

/-! ## A023121.P1247972552313789972

`A141044(A115853(n+1))+A025680(n+1)`
-/

namespace A023121.P1247972552313789972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A115853 (n + 1)).toNat + A025680 (n + 1)

end

end A023121.P1247972552313789972

/-! ## A023121.P5794427573879015558

`A141044(A001222(2*(n²+9)))+A025680(n+1)`
-/

namespace A023121.P5794427573879015558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141044 (A001222 (2 * (n ^ 2 + 9))).toNat + A025680 (n + 1)

end

end A023121.P5794427573879015558

/-! ## A023121.P11337109327895752407

`A105700(A126148(n+1))+A025680(n+1)`
-/

namespace A023121.P11337109327895752407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105700 (A126148 (n + 1)).toNat + A025680 (n + 1)

end

end A023121.P11337109327895752407

/-! ## A023121.P2695192076366282421

`A000005(2^A025680(n+1))`
-/

namespace A023121.P2695192076366282421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025680 (n + 1) : ℤ))).toNat

end

end A023121.P2695192076366282421

/-! ## A023121.P9153965250565341617

`A263017(2^A025680(n+1))`
-/

namespace A023121.P9153965250565341617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025680 (n + 1) : ℤ))).toNat

end

end A023121.P9153965250565341617

/-! ## A023121.P15115445705520196484

`A292131(A161680(n))+A025680(n+1)`
-/

namespace A023121.P15115445705520196484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292131 (A161680 n).toNat + A025680 (n + 1)

end

end A023121.P15115445705520196484

/-! ## A023121.P1493117753601113069

`A316723(A000217(n)-n)+A025680(n+1)`
-/

namespace A023121.P1493117753601113069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000217 n - (n : ℤ)).toNat + A025680 (n + 1)

end

end A023121.P1493117753601113069

/-! ## A023121.P9318099481671881158

`A316723(A000217(n))+A025680(n+1)`
-/

namespace A023121.P9318099481671881158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316723 (A000217 n).toNat + A025680 (n + 1)

end

end A023121.P9318099481671881158

/-! ## A023121.P11489219820279774559

`A070939(2^A025680(n+1))`
-/

namespace A023121.P11489219820279774559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070939 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025680 (n + 1) : ℤ))).toNat

end

end A023121.P11489219820279774559

/-! ## A023121.P12889753082056546591

`A025680(n+1)+A062394(n)-A000400(n)`
-/

namespace A023121.P12889753082056546591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025680 (n + 1) + (A062394 n - A000400 n)

end

end A023121.P12889753082056546591

/-! ## A023121.P15799406310209362478

`A055076(A053143(n+1))+A025680(n+1)`
-/

namespace A023121.P15799406310209362478
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055076 (A053143 (n + 1)).toNat + A025680 (n + 1)

end

end A023121.P15799406310209362478

/-!
# A023122: Signature sequence of sqrt(3/2) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023122, there is no canonical definition to state claims against.
-/

/-! ## A023122.P13359204928631427344

`A135528(A007645(n+1)+1)+A025662(n+1)`
-/

namespace A023122.P13359204928631427344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A007645 (n + 1) + 1).toNat + A025662 (n + 1)

end

end A023122.P13359204928631427344

/-! ## A023122.P17689479900636131128

`A025662(A094473(2*n+5))+A025662(n+1)`
-/

namespace A023122.P17689479900636131128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025662 (A094473 (2 * n + 5)).toNat + A025662 (n + 1)

end

end A023122.P17689479900636131128

/-! ## A023122.P4231322303771259013

`A135528(A087678(n+1))+A025662(n+1)`
-/

namespace A023122.P4231322303771259013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135528 (A087678 (n + 1)).toNat + A025662 (n + 1)

end

end A023122.P4231322303771259013

/-! ## A023122.P230698260076193497

`A057427(A056177(n))+A025662(n+1)`
-/

namespace A023122.P230698260076193497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A056177 n).toNat + A025662 (n + 1)

end

end A023122.P230698260076193497

/-! ## A023122.P4846377842477849926

`A322869(A127355(n+1))+A025662(n+1)`
-/

namespace A023122.P4846377842477849926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322869 (A127355 (n + 1)).toNat + A025662 (n + 1)

end

end A023122.P4846377842477849926

/-! ## A023122.P16363315700234991453

`A057427(A204922(abs(1-n)+1))+A025662(n+1)`
-/

namespace A023122.P16363315700234991453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A204922 (|1 - (n : ℤ)| + 1).toNat).toNat + A025662 (n + 1)

end

end A023122.P16363315700234991453

/-! ## A023122.P5971474430267692535

`2-(A057427(A204922(n+3))-A025662(n+1))`
-/

namespace A023122.P5971474430267692535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 - (A057427 (A204922 (n + 3)).toNat - A025662 (n + 1))

end

end A023122.P5971474430267692535

/-! ## A023122.P8987405101726191651

`A000005(2^A025662(n+1))`
-/

namespace A023122.P8987405101726191651
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025662 (n + 1) : ℤ))).toNat

end

end A023122.P8987405101726191651

/-! ## A023122.P11606908083749319188

`A001222(2^A025662(n+1))+1`
-/

namespace A023122.P11606908083749319188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025662 (n + 1) : ℤ))).toNat + 1

end

end A023122.P11606908083749319188

/-! ## A023122.P3732248574230342240

`A000005(gcd(A000079(n), A025628(n+1)))`
-/

namespace A023122.P3732248574230342240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.gcd (A000079 n) (A025628 (n + 1)))

end

end A023122.P3732248574230342240

/-! ## A023122.P13973660903078068055

`A000005(and(-A025628(n+1), A025628(n+1)))`
-/

namespace A023122.P13973660903078068055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (Int.land (-A025628 (n + 1)) (A025628 (n + 1))).toNat

end

end A023122.P13973660903078068055

/-! ## A023122.P18050389341765708315

`A057427(root(A155930(n+1), 3))+A025662(n+1)`
-/

namespace A023122.P18050389341765708315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (SequenceMachineLib.roundAway ((A155930 (n + 1) : ℝ) ^ (1 / (3 : ℝ)))).toNat + A025662 (n + 1)

end

end A023122.P18050389341765708315

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

/-! ## A023123.P7334963626556519254

`A241235(5*A003591(n+1))`
-/

namespace A023123.P7334963626556519254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241235 (5 * A003591 (n + 1)).toNat

end

end A023123.P7334963626556519254

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

/-! ## A023124.P1860283830696135116

`A023132(n+1)%A002907(n)`
-/

namespace A023124.P1860283830696135116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023132 (n + 1)) (A002907 n)

end

end A023124.P1860283830696135116

/-!
# A023125: Signature sequence of e^2 (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023125, there is no canonical definition to state claims against.
-/

/-! ## A023125.P11920476017073860484

`A023134(A087539(3*(n+1))%A177194(2*n+5))`
-/

namespace A023125.P11920476017073860484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023134 (Int.tmod (A087539 (3 * (n + 1))) (A177194 (2 * n + 5))).toNat

end

end A023125.P11920476017073860484

/-! ## A023125.P16640268196217836647

`A023134(A087539(3*(n+1)))%A104694(3*n+2)`
-/

namespace A023125.P16640268196217836647
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023134 (A087539 (3 * (n + 1))).toNat) (A104694 (3 * n + 2))

end

end A023125.P16640268196217836647

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

/-! ## A023126.P12871699661689154049

`A167965(A241263(n+1))`
-/

namespace A023126.P12871699661689154049
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A241263 (n + 1)).toNat

end

end A023126.P12871699661689154049

/-! ## A023126.P4263160081365897454

`A167965(A047393(n+2))`
-/

namespace A023126.P4263160081365897454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A047393 (n + 2)).toNat

end

end A023126.P4263160081365897454

/-! ## A023126.P5339925251667559722

`A167965(A337110(n+1))`
-/

namespace A023126.P5339925251667559722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167965 (A337110 (n + 1)).toNat

end

end A023126.P5339925251667559722

/-! ## A023126.P7144633012767313917

`A259656(A273736(n+1))`
-/

namespace A023126.P7144633012767313917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259656 (A273736 (n + 1)).toNat

end

end A023126.P7144633012767313917

/-!
# A023127: Signature sequence of sqrt(6) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023127, there is no canonical definition to state claims against.
-/

/-! ## A023127.P6073859732072966219

`A215589(n+1)+A059841(2*n²)`
-/

namespace A023127.P6073859732072966219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215589 (n + 1) + A059841 (2 * n ^ 2)

end

end A023127.P6073859732072966219

/-! ## A023127.P26552650376421723

`A215589(n+1)%A196266(n+1)+1`
-/

namespace A023127.P26552650376421723
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215589 (n + 1)) (A196266 (n + 1)) + 1

end

end A023127.P26552650376421723

/-! ## A023127.P16181297623878429951

`(A215589(n+1)+1)%A256430(n+2)`
-/

namespace A023127.P16181297623878429951
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A215589 (n + 1) + 1) (A256430 (n + 2))

end

end A023127.P16181297623878429951

/-! ## A023127.P15573799747793968979

`A215589(n+1)+A057077(2*n²)²`
-/

namespace A023127.P15573799747793968979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215589 (n + 1) + A057077 (2 * n ^ 2) ^ 2

end

end A023127.P15573799747793968979

/-! ## A023127.P5863170242557159496

`A215589(n+1)+A000034(A001105(n))`
-/

namespace A023127.P5863170242557159496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215589 (n + 1) + A000034 (A001105 n).toNat

end

end A023127.P5863170242557159496

/-! ## A023127.P88818184540744576

`A215589(n+1)+A000035(A001844(n))`
-/

namespace A023127.P88818184540744576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215589 (n + 1) + A000035 (A001844 n).toNat

end

end A023127.P88818184540744576

/-! ## A023127.P3737709880368835443

`A215589(n+1)+A010054(A000384(n))`
-/

namespace A023127.P3737709880368835443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215589 (n + 1) + A010054 (A000384 n).toNat

end

end A023127.P3737709880368835443

/-! ## A023127.P13651906348481610895

`A215589(n+1)+A002828(A016754(n))`
-/

namespace A023127.P13651906348481610895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215589 (n + 1) + A002828 (A016754 n).toNat

end

end A023127.P13651906348481610895

/-! ## A023127.P17938968546931715993

`A215589(n+1)+A007318(A014105(n))`
-/

namespace A023127.P17938968546931715993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215589 (n + 1) + A007318 (A014105 n).toNat

end

end A023127.P17938968546931715993

/-! ## A023127.P2634935338171136148

`A215589(n+1)+A007318(A014494(n))`
-/

namespace A023127.P2634935338171136148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215589 (n + 1) + A007318 (A014494 n).toNat

end

end A023127.P2634935338171136148

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

/-! ## A023128.P14335022060203651354

`A000720(p?[A129131(A023121(n+1))])`
-/

namespace A023128.P14335022060203651354
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129131 (A023121 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A023128.P14335022060203651354

/-! ## A023128.P14957791324763939318

`A108346(2^A215590(n+1))`
-/

namespace A023128.P14957791324763939318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108346 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A215590 (n + 1) : ℤ))).toNat

end

end A023128.P14957791324763939318

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
# A023129: Signature sequence of sqrt(e).

The programs for A023129, there is no canonical definition to state claims against.
-/

/-! ## A023129.P16376300514717702488

`A335341(A089531(n+1))+A025649(n+1)`
-/

namespace A023129.P16376300514717702488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A089531 (n + 1)).toNat + A025649 (n + 1)

end

end A023129.P16376300514717702488

/-! ## A023129.P7686582637419269213

`A025649(n+1)+A165326(A317932(n+1))²`
-/

namespace A023129.P7686582637419269213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025649 (n + 1) + A165326 (A317932 (n + 1)).toNat ^ 2

end

end A023129.P7686582637419269213

/-! ## A023129.P10930047860712527023

`A185119(A092207(3*n+4))+A025649(n+1)`
-/

namespace A023129.P10930047860712527023
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185119 (A092207 (3 * n + 4)).toNat + A025649 (n + 1)

end

end A023129.P10930047860712527023

/-! ## A023129.P1144192418968753837

`A025649(n+1)+A165326(A104763(n+1))²`
-/

namespace A023129.P1144192418968753837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025649 (n + 1) + A165326 (A104763 (n + 1)).toNat ^ 2

end

end A023129.P1144192418968753837

/-! ## A023129.P3742230003551090316

`A025649(n+1)+A165326(A324871(n+1))²`
-/

namespace A023129.P3742230003551090316
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025649 (n + 1) + A165326 (A324871 (n + 1)).toNat ^ 2

end

end A023129.P3742230003551090316

/-! ## A023129.P2516613510835353271

`A025649(n+1)+A165326(A133776(n+1))²`
-/

namespace A023129.P2516613510835353271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025649 (n + 1) + A165326 (A133776 (n + 1)).toNat ^ 2

end

end A023129.P2516613510835353271

/-! ## A023129.P9290258320456611081

`A025649(n+1)+A165326(A048161(n+1))²`
-/

namespace A023129.P9290258320456611081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025649 (n + 1) + A165326 (A048161 (n + 1)).toNat ^ 2

end

end A023129.P9290258320456611081

/-! ## A023129.P6215100355480219079

`A335341(A089720(n+1))+A025649(n+1)`
-/

namespace A023129.P6215100355480219079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A089720 (n + 1)).toNat + A025649 (n + 1)

end

end A023129.P6215100355480219079

/-! ## A023129.P14354774496179738453

`A335341(A001126(n+1))+A025649(n+1)`
-/

namespace A023129.P14354774496179738453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335341 (A001126 (n + 1)).toNat + A025649 (n + 1)

end

end A023129.P14354774496179738453

/-! ## A023129.P812245346052669798

`A027935(A000217(n))+A025649(n+1)`
-/

namespace A023129.P812245346052669798
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027935 (A000217 n).toNat + A025649 (n + 1)

end

end A023129.P812245346052669798

/-! ## A023129.P16884709912681690085

`A057427(A008949(n))+A025641(n+1)`
-/

namespace A023129.P16884709912681690085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057427 (A008949 n).toNat + A025641 (n + 1)

end

end A023129.P16884709912681690085

/-! ## A023129.P12538659206830042154

`A040001(A273449(n))+A025641(n+1)`
-/

namespace A023129.P12538659206830042154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A273449 n).toNat + A025641 (n + 1)

end

end A023129.P12538659206830042154

/-! ## A023129.P13128655003896815028

`A025641(n+1)+A001222(A002385(n+1))`
-/

namespace A023129.P13128655003896815028
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025641 (n + 1) + A001222 (A002385 (n + 1)).toNat

end

end A023129.P13128655003896815028

/-! ## A023129.P15381547645184369640

`A056926(A125239(n+1))+A025641(n+1)`
-/

namespace A023129.P15381547645184369640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A125239 (n + 1)).toNat + A025641 (n + 1)

end

end A023129.P15381547645184369640

/-! ## A023129.P5668623403011646874

`A025641(n+1)+A008836(A193165(n+1))`
-/

namespace A023129.P5668623403011646874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025641 (n + 1) + A008836 (A193165 (n + 1)).toNat

end

end A023129.P5668623403011646874

/-! ## A023129.P5537075315286811552

`A056926(A261538(n+1))+A025641(n+1)`
-/

namespace A023129.P5537075315286811552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056926 (A261538 (n + 1)).toNat + A025641 (n + 1)

end

end A023129.P5537075315286811552

/-! ## A023129.P1777694067660751256

`A025641(n+1)+A007913(A089192(n+1)²)`
-/

namespace A023129.P1777694067660751256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025641 (n + 1) + A007913 (A089192 (n + 1) ^ 2).toNat

end

end A023129.P1777694067660751256

/-! ## A023129.P9241046616112763485

`A025641(n+1)+A000035(A138980(n))`
-/

namespace A023129.P9241046616112763485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025641 (n + 1) + A000035 (A138980 n).toNat

end

end A023129.P9241046616112763485

/-!
# A023130: Signature sequence of 1/sqrt(e) (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023130, there is no canonical definition to state claims against.
-/

/-! ## A023130.P17798551423079733493

`A025686(n+1)-A057428(A127887(2*n+5))`
-/

namespace A023130.P17798551423079733493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025686 (n + 1) - A057428 (A127887 (2 * n + 5)).toNat

end

end A023130.P17798551423079733493

/-! ## A023130.P5234760083927757730

`A040001(A001359(n+1))+A025686(n+1)`
-/

namespace A023130.P5234760083927757730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040001 (A001359 (n + 1)).toNat + A025686 (n + 1)

end

end A023130.P5234760083927757730

/-! ## A023130.P2297952362317598104

`(A025686(n+1)+1)%A000051(n)`
-/

namespace A023130.P2297952362317598104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A025686 (n + 1) + 1) (A000051 n)

end

end A023130.P2297952362317598104

/-! ## A023130.P56028881646358041

`A025686(n+1)+A001222(A173874(n+1))`
-/

namespace A023130.P56028881646358041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025686 (n + 1) + A001222 (A173874 (n + 1)).toNat

end

end A023130.P56028881646358041

/-! ## A023130.P14552271159078117880

`A000005(2^A025686(n+1))`
-/

namespace A023130.P14552271159078117880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025686 (n + 1) : ℤ))).toNat

end

end A023130.P14552271159078117880

/-! ## A023130.P1309579901249109536

`A286552(2^A025686(n+1))`
-/

namespace A023130.P1309579901249109536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286552 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025686 (n + 1) : ℤ))).toNat

end

end A023130.P1309579901249109536

/-! ## A023130.P134372338287647773

`A001222(2^A025686(n+1))+1`
-/

namespace A023130.P134372338287647773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025686 (n + 1) : ℤ))).toNat + 1

end

end A023130.P134372338287647773

/-! ## A023130.P1903295989351547496

`A025686(n+1)-A057428(A290102(n+1))`
-/

namespace A023130.P1903295989351547496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025686 (n + 1) - A057428 (A290102 (n + 1)).toNat

end

end A023130.P1903295989351547496

/-! ## A023130.P8534070914889269833

`A292257(2^A025686(n+1))+1`
-/

namespace A023130.P8534070914889269833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292257 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025686 (n + 1) : ℤ))).toNat + 1

end

end A023130.P8534070914889269833

/-! ## A023130.P13454668973676894289

`A032741(A045373(3*n+1))+A025686(n+1)`
-/

namespace A023130.P13454668973676894289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032741 (A045373 (3 * n + 1)).toNat + A025686 (n + 1)

end

end A023130.P13454668973676894289

/-! ## A023130.P7858182371209032777

`A025686(n+1)+A006519(A030096(n+1))`
-/

namespace A023130.P7858182371209032777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025686 (n + 1) + A006519 (A030096 (n + 1)).toNat

end

end A023130.P7858182371209032777

/-! ## A023130.P11169077829316899611

`A003558(2^A025686(n+1))`
-/

namespace A023130.P11169077829316899611
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003558 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025686 (n + 1) : ℤ))).toNat

end

end A023130.P11169077829316899611

/-! ## A023130.P10749013565876305677

`A161511(2^A025686(n+1))`
-/

namespace A023130.P10749013565876305677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161511 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025686 (n + 1) : ℤ))).toNat

end

end A023130.P10749013565876305677

/-! ## A023130.P13394228458799748804

`A181988(2^A025686(n+1))`
-/

namespace A023130.P13394228458799748804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181988 (SequenceMachineLib.roundAway ((2 : ℚ) ^ (A025686 (n + 1) : ℤ))).toNat

end

end A023130.P13394228458799748804

/-! ## A023130.P7481121976192056257

`A023120(A255527(n+2))*A196368(A152714(n))`
-/

namespace A023130.P7481121976192056257
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023120 (A255527 (n + 2)).toNat * A196368 (A152714 n).toNat

end

end A023130.P7481121976192056257

/-! ## A023130.P9760529547713693201

`A023120(A255527(n+2))*A178226(A028326(n))`
-/

namespace A023130.P9760529547713693201
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023120 (A255527 (n + 2)).toNat * A178226 (A028326 n).toNat

end

end A023130.P9760529547713693201

/-! ## A023130.P14326040471054609385

`A023120(A255527(n+2))*A098725(A109128(n))`
-/

namespace A023130.P14326040471054609385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023120 (A255527 (n + 2)).toNat * A098725 (A109128 n).toNat

end

end A023130.P14326040471054609385

/-! ## A023130.P977419082671809787

`A023120(A255527(n+2))+A000038(A056083(n+1))`
-/

namespace A023130.P977419082671809787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023120 (A255527 (n + 2)).toNat + A000038 (A056083 (n + 1)).toNat

end

end A023130.P977419082671809787

/-! ## A023130.P12867260645700676777

`A037213(A214723(n+1))+A023120(A255527(n+2))`
-/

namespace A023130.P12867260645700676777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037213 (A214723 (n + 1)).toNat + A023120 (A255527 (n + 2)).toNat

end

end A023130.P12867260645700676777

/-! ## A023130.P18243915409225457902

`A025657(n+1)+and(1, A086827(n+1))`
-/

namespace A023130.P18243915409225457902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025657 (n + 1) + Int.land 1 (A086827 (n + 1))

end

end A023130.P18243915409225457902

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

/-! ## A023131.P6499349456432379546

`A007336(lt[A023115(abs(1-n)+1)%2, 1])`
-/

namespace A023131.P6499349456432379546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023115 (|1 - (n : ℤ)| + 1).toNat) 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007336 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A023131.P6499349456432379546

/-! ## A023131.P18169240872788511154

`A054977(A072272(n))+A025637(n+1)`
-/

namespace A023131.P18169240872788511154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054977 (A072272 n).toNat + A025637 (n + 1)

end

end A023131.P18169240872788511154

/-! ## A023131.P13483831875027761979

`val(A033847(n+1), A000034(A072272(n)))`
-/

namespace A023131.P13483831875027761979
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A000034 (A072272 n).toNat).toNat

end

end A023131.P13483831875027761979

/-! ## A023131.P11035573045938267009

`val(A033847(n+1), A001222(A056809(2*n+3)))`
-/

namespace A023131.P11035573045938267009
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A001222 (A056809 (2 * n + 3)).toNat).toNat

end

end A023131.P11035573045938267009

/-! ## A023131.P5450692954220930980

`A276976(A005384(n+1))+A025637(n+1)`
-/

namespace A023131.P5450692954220930980
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276976 (A005384 (n + 1)).toNat + A025637 (n + 1)

end

end A023131.P5450692954220930980

/-! ## A023131.P14512767013155570697

`val(A000244(n)*A033847(n+1), 2)`
-/

namespace A023131.P14512767013155570697
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A000244 n * A033847 (n + 1)).toNat 2

end

end A023131.P14512767013155570697

/-! ## A023131.P13616614514647546158

`val(A033847(n+1), A000034(A062324(n+1)))`
-/

namespace A023131.P13616614514647546158
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A000034 (A062324 (n + 1)).toNat).toNat

end

end A023131.P13616614514647546158

/-! ## A023131.P3582079640544305199

`val(A033847(n+1), A000034(A084696(n+1)))`
-/

namespace A023131.P3582079640544305199
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A000034 (A084696 (n + 1)).toNat).toNat

end

end A023131.P3582079640544305199

/-! ## A023131.P3372018836651500563

`val(A033847(n+1), A000034(A106987(n+1)))`
-/

namespace A023131.P3372018836651500563
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A000034 (A106987 (n + 1)).toNat).toNat

end

end A023131.P3372018836651500563

/-! ## A023131.P15644813161165362712

`val(A033847(n+1), A141256(A051037(n+1)))`
-/

namespace A023131.P15644813161165362712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A141256 (A051037 (n + 1)).toNat).toNat

end

end A023131.P15644813161165362712

/-! ## A023131.P10208661681031056498

`val(A033847(n+1), A020639(A345530(n+1)))`
-/

namespace A023131.P10208661681031056498
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A020639 (A345530 (n + 1)).toNat).toNat

end

end A023131.P10208661681031056498

/-! ## A023131.P5222705045052571073

`val(A033847(n+1), A000034(A038847(n+1)))`
-/

namespace A023131.P5222705045052571073
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A000034 (A038847 (n + 1)).toNat).toNat

end

end A023131.P5222705045052571073

/-! ## A023131.P1885045770389876665

`val(A033847(n+1), A001222(A112393(n+1)))`
-/

namespace A023131.P1885045770389876665
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A001222 (A112393 (n + 1)).toNat).toNat

end

end A023131.P1885045770389876665

/-! ## A023131.P2532437633812368632

`val(A033847(n+1), A020639(A182238(n+1)))`
-/

namespace A023131.P2532437633812368632
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A020639 (A182238 (n + 1)).toNat).toNat

end

end A023131.P2532437633812368632

/-! ## A023131.P9786124801426439101

`val(A033847(n+1), A000005(A167766(n+1)))`
-/

namespace A023131.P9786124801426439101
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A000005 (A167766 (n + 1)).toNat).toNat

end

end A023131.P9786124801426439101

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

/-! ## A023132.P7245679624353250173

`A000720(p?[A207790(A023115(n+1))])`
-/

namespace A023132.P7245679624353250173
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A207790 (A023115 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A023132.P7245679624353250173

/-! ## A023132.P7133178859588026390

`A000005(3^A025664(n+1))`
-/

namespace A023132.P7133178859588026390
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A025664 (n + 1) : ℤ))).toNat

end

end A023132.P7133178859588026390

/-! ## A023132.P14165143062621397084

`A301957(3^A025664(n+1))`
-/

namespace A023132.P14165143062621397084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301957 (SequenceMachineLib.roundAway ((3 : ℚ) ^ (A025664 (n + 1) : ℤ))).toNat

end

end A023132.P14165143062621397084

/-! ## A023132.P14026772749667960578

`A025664(n+1)+A003415(A051634(3*n+2))`
-/

namespace A023132.P14026772749667960578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025664 (n + 1) + A003415 (A051634 (3 * n + 2)).toNat

end

end A023132.P14026772749667960578

/-! ## A023132.P2706365544115511653

`val(A033847(n+1), 7)%∏[A010702(n)]`
-/

namespace A023132.P2706365544115511653
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010702 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7 : ℤ) (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A023132.P2706365544115511653

/-! ## A023132.P12756651254318280376

`A001222(3^val(A033847(n+1), 7))`
-/

namespace A023132.P12756651254318280376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (3 ^ SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7)

end

end A023132.P12756651254318280376

/-! ## A023132.P5863955662109218184

`A001222(A000244(val(A033847(n+1), 7)))`
-/

namespace A023132.P5863955662109218184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A000244 (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7)).toNat

end

end A023132.P5863955662109218184

/-! ## A023132.P10150141728940411323

`val(A033847(n+1), A006530(A147571(n+1)/2))`
-/

namespace A023132.P10150141728940411323
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A006530 (SequenceMachineLib.roundAway ((A147571 (n + 1) : ℚ) / 2)).toNat).toNat

end

end A023132.P10150141728940411323

/-! ## A023132.P7253467942913629046

`gcd(val(A033847(n+1), 7), A039733(n+2)!)`
-/

namespace A023132.P7253467942913629046
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (SequenceMachineLib.valuation (A033847 (n + 1)).toNat 7) (Nat.factorial (A039733 (n + 2)).toNat)

end

end A023132.P7253467942913629046

/-! ## A023132.P5590533779593643141

`val(A033847(n+1), A006530(A147571(n+1)))`
-/

namespace A023132.P5590533779593643141
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A033847 (n + 1)).toNat (A006530 (A147571 (n + 1)).toNat).toNat

end

end A023132.P5590533779593643141

/-!
# A023133: Signature sequence of Pi (arrange the numbers i+j*x (i,j >= 1) in increasing order; the sequence of i's is the signature of x).

The programs for A023133, there is no canonical definition to state claims against.
-/

/-! ## A023133.P10058407466862703289

`A356624(n)+A151878(n)!`
-/

namespace A023133.P10058407466862703289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + (Nat.factorial (A151878 n).toNat : ℤ)

end

end A023133.P10058407466862703289

/-! ## A023133.P7389123509716824668

`A356624(n)+A000041(A151878(n)²)`
-/

namespace A023133.P7389123509716824668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + A000041 (A151878 n ^ 2).toNat

end

end A023133.P7389123509716824668

/-! ## A023133.P10044516139695187804

`A356624(n)+A000108(A151878(n)²)`
-/

namespace A023133.P10044516139695187804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + A000108 (A151878 n ^ 2).toNat

end

end A023133.P10044516139695187804

/-! ## A023133.P13142535593151847640

`A356624(n)+A000110(A151878(n)²)`
-/

namespace A023133.P13142535593151847640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + A000110 (A151878 n ^ 2).toNat

end

end A023133.P13142535593151847640

/-! ## A023133.P3303930529468209686

`A356624(n)+A000142(A151878(n)²)`
-/

namespace A023133.P3303930529468209686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + A000142 (A151878 n ^ 2).toNat

end

end A023133.P3303930529468209686

/-! ## A023133.P9530626930937296275

`A356624(n)+A002294(A151878(n)²)`
-/

namespace A023133.P9530626930937296275
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + A002294 (A151878 n ^ 2).toNat

end

end A023133.P9530626930937296275

/-! ## A023133.P10222010632990898382

`A356624(n)+A004148(A151878(n)²)`
-/

namespace A023133.P10222010632990898382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + A004148 (A151878 n ^ 2).toNat

end

end A023133.P10222010632990898382

/-! ## A023133.P3218461693092065842

`A356624(n)+A006495(A151878(n)²)`
-/

namespace A023133.P3218461693092065842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + A006495 (A151878 n ^ 2).toNat

end

end A023133.P3218461693092065842

/-! ## A023133.P11398902460251003100

`A356624(n)+A097331(A151878(n)²)`
-/

namespace A023133.P11398902460251003100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + A097331 (A151878 n ^ 2).toNat

end

end A023133.P11398902460251003100

/-! ## A023133.P15473669945993481802

`A356624(n)+A283908(A151878(n)²)`
-/

namespace A023133.P15473669945993481802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356624 n + A283908 (A151878 n ^ 2).toNat

end

end A023133.P15473669945993481802

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

/-! ## A023134.P10076119557637052944

`A293497((A073189(n)+1)²)`
-/

namespace A023134.P10076119557637052944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293497 ((A073189 n + 1) ^ 2).toNat

end

end A023134.P10076119557637052944

namespace A023134

/-- `A293497((A073189(n)+1)²)` -/
def P10076119557637052944.Spec : Prop :=
  ∀ n, P10076119557637052944.a n = A023134 (n + 1)

end A023134

/-! ## A023134.P14203051333936726975

`A001222(5^A073189(n))+1`
-/

namespace A023134.P14203051333936726975
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (A073189 n : ℤ))).toNat + 1

end

end A023134.P14203051333936726975

namespace A023134

/-- `A001222(5^A073189(n))+1` -/
def P14203051333936726975.Spec : Prop :=
  ∀ n, P14203051333936726975.a n = A023134 (n + 1)

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

/-! ## A023134.P3271574051794920747

`A000005(5^floor(A002260(2*(n+1)+n)/3))`
-/

namespace A023134.P3271574051794920747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(A002260 (2 * (n + 1) + n) : ℚ) / 3⌋ : ℤ))).toNat

end

end A023134.P3271574051794920747

namespace A023134

/-- `A000005(5^floor(A002260(2*(n+1)+n)/3))` -/
def P3271574051794920747.Spec : Prop :=
  ∀ n, P3271574051794920747.a n = A023134 (n + 1)

end A023134

/-! ## A023134.P10544811428166302359

`A000005(5^floor((A002262(4*n-(n-1))+1)/3))`
-/

namespace A023134.P10544811428166302359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (SequenceMachineLib.roundAway ((5 : ℚ) ^ (⌊(A002262 ((4 * n : ℤ) - ((n : ℤ) - 1)).toNat + 1 : ℚ) / 3⌋ : ℤ))).toNat

end

end A023134.P10544811428166302359

namespace A023134

/-- `A000005(5^floor((A002262(4*n-(n-1))+1)/3))` -/
def P10544811428166302359.Spec : Prop :=
  ∀ n, P10544811428166302359.a n = A023134 (n + 1)

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

/-! ## A023134.P41297229965073838

`A087088(∑[A008486(n)])+A073189(n)`
-/

namespace A023134.P41297229965073838
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008486 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087088 (∑ j ∈ Finset.range (n + 1), f1 j).toNat + A073189 n

end

end A023134.P41297229965073838

namespace A023134

/-- `A087088(∑[A008486(n)])+A073189(n)` -/
def P41297229965073838.Spec : Prop :=
  ∀ n, P41297229965073838.a n = A023134 (n + 1)

end A023134

/-! ## A023134.P3385786189475724273

`A073189(n)+A004737((12-n)²+1)`
-/

namespace A023134.P3385786189475724273
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + A004737 ((12 - (n : ℤ)) ^ 2 + 1).toNat

end

end A023134.P3385786189475724273

namespace A023134

/-- `A073189(n)+A004737((12-n)²+1)` -/
def P3385786189475724273.Spec : Prop :=
  ∀ n, P3385786189475724273.a n = A023134 (n + 1)

end A023134

/-! ## A023134.P16080571539653685662

`A073189(n)+A000035(A001650(A089120(n+1)))`
-/

namespace A023134.P16080571539653685662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + A000035 (A001650 (A089120 (n + 1)).toNat).toNat

end

end A023134.P16080571539653685662

namespace A023134

/-- `A073189(n)+A000035(A001650(A089120(n+1)))` -/
def P16080571539653685662.Spec : Prop :=
  ∀ n, P16080571539653685662.a n = A023134 (n + 1)

end A023134

/-! ## A023134.P4255564827116893422

`A073189(n)+A001222(A089120(A089120(n+1)+1))`
-/

namespace A023134.P4255564827116893422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + A001222 (A089120 (A089120 (n + 1) + 1).toNat).toNat

end

end A023134.P4255564827116893422

namespace A023134

/-- `A073189(n)+A001222(A089120(A089120(n+1)+1))` -/
def P4255564827116893422.Spec : Prop :=
  ∀ n, P4255564827116893422.a n = A023134 (n + 1)

end A023134

/-! ## A023134.P2223269747499872365

`A073189(n)+A071028((8-n)²)`
-/

namespace A023134.P2223269747499872365
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + A071028 ((8 - (n : ℤ)) ^ 2).toNat

end

end A023134.P2223269747499872365

namespace A023134

/-- `A073189(n)+A071028((8-n)²)` -/
def P2223269747499872365.Spec : Prop :=
  ∀ n, P2223269747499872365.a n = A023134 (n + 1)

end A023134

/-! ## A023134.P8164864385593848386

`A073189(n)+A010052(n²)`
-/

namespace A023134.P8164864385593848386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073189 n + A010052 (n ^ 2)

end

end A023134.P8164864385593848386

namespace A023134

/-- `A073189(n)+A010052(n²)` -/
def P8164864385593848386.Spec : Prop :=
  ∀ n, P8164864385593848386.a n = A023134 (n + 1)

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

/-! ## A023137.P15323166453482211021

`∑{d}[A132739(n+1), A327814(#)]`
-/

namespace A023137.P15323166453482211021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132739 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327814 d

end

end A023137.P15323166453482211021

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

/-! ## A023139.P14748002329336331185

`∑{d}[A242603(n+1), A327815(#)]`
-/

namespace A023139.P14748002329336331185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A242603 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327815 d

end

end A023139.P14748002329336331185

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

/-! ## A023140.P2703332933439259540

`∑{d}[A163575(2*(n+1)), A327816(#)]`
-/

namespace A023140.P2703332933439259540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163575 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327816 d

end

end A023140.P2703332933439259540

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

/-! ## A023141.P10223786731965678161

`∑{d}[A038502(n+1), A327817(#)]`
-/

namespace A023141.P10223786731965678161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038502 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A327817 d

end

end A023141.P10223786731965678161

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

/-! ## A023142.P15774450040265602842

`A077196(A161951(n+1)*A185318(n))`
-/

namespace A023142.P15774450040265602842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077196 (A161951 (n + 1) * A185318 n).toNat

end

end A023142.P15774450040265602842

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

/-! ## A023143.P3674734872868247826

`lt[n, A084309(n+1)]+1`
-/

namespace A023143.P3674734872868247826
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A084309 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1

end

end A023143.P3674734872868247826

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

/-! ## A023153.P12701197015330210982

`A023159(n+1)%A058326(n+1)`
-/

namespace A023153.P12701197015330210982
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A023159 (n + 1)) (A058326 (n + 1))

end

end A023153.P12701197015330210982

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

/-! ## A023159.P11419112120519677729

`or(A023153(n+1), A034444(n+1))%A119203(n+1)`
-/

namespace A023159.P11419112120519677729
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (Int.lor (A023153 (n + 1)) (A034444 (n + 1))) (A119203 (n + 1))

end

end A023159.P11419112120519677729

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

/-! ## A023159.P12621880070891851721

`C(A023153(n+1), A061704(A000032(n)))`
-/

namespace A023159.P12621880070891851721
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A023153 (n + 1)).toNat (A061704 (A000032 n).toNat).toNat

end

end A023159.P12621880070891851721

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

/-! ## A023160.P5653462349155247306

`A046530(n+1)-A000086(A276920(n+3))`
-/

namespace A023160.P5653462349155247306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046530 (n + 1) - A000086 (A276920 (n + 3)).toNat

end

end A023160.P5653462349155247306

/-! ## A023160.P1158706756806404819

`A072621(A046530(n+1))^A068385(n+1)!`
-/

namespace A023160.P1158706756806404819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072621 (A046530 (n + 1)).toNat ^ Nat.factorial (A068385 (n + 1)).toNat

end

end A023160.P1158706756806404819

/-! ## A023160.P17193091087049170242

`xor(A004016(A000041(2*(n+2))), A085312(n+1))`
-/

namespace A023160.P17193091087049170242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A004016 (A000041 (2 * (n + 2))).toNat) (A085312 (n + 1))

end

end A023160.P17193091087049170242

/-! ## A023160.P4691891681774004774

`A007318(A003871(n+1))*A072621(A046530(n+1))`
-/

namespace A023160.P4691891681774004774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A003871 (n + 1)).toNat * A072621 (A046530 (n + 1)).toNat

end

end A023160.P4691891681774004774

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

/-! ## A023161.P16919308127455103923

`A030102(A277847(n+1)%A174216(n+1))`
-/

namespace A023161.P16919308127455103923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030102 (Int.tmod (A277847 (n + 1)) (A174216 (n + 1))).toNat

end

end A023161.P16919308127455103923

/-! ## A023161.P1614807456757609813

`A030102(A277847(n+1))%A174217(n+1)`
-/

namespace A023161.P1614807456757609813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A030102 (A277847 (n + 1)).toNat) (A174217 (n + 1))

end

end A023161.P1614807456757609813

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

/-! ## A023169.P7834338707892836773

`A018599(∑[A283424(n)])`
-/

namespace A023169.P7834338707892836773
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283424 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018599 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A023169.P7834338707892836773

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

/-! ## A023172.P7296993162974528964

`A104714(lt[n-A104714(n), A158388(n)])`
-/

namespace A023172.P7296993162974528964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A104714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158388 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104714 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A023172.P7296993162974528964

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

/-! ## A023174.P16111225167733617847

`A065475(eq[A132636(n+1)%(n+1), A043529(n)])`
-/

namespace A023174.P16111225167733617847
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A132636 (n + 1)) (n + 1 : ℤ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A043529 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065475 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A023174.P16111225167733617847

namespace A023174

/-- `A065475(eq[A132636(n+1)%(n+1), A043529(n)])` -/
def P16111225167733617847.Spec : Prop :=
  ∀ n, P16111225167733617847.a n = A023174 (n + 1)

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

/-! ## A023175.P12694911194858767038

`record[gcd(A094388(n), A237785(n+1))]`
-/

namespace A023175.P12694911194858767038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A094388 n) (A237785 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A023175.P12694911194858767038

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

/-! ## A023179.P7728261741411086173

`∑[A000010(∏[A145515(8*n+14)])]`
-/

namespace A023179.P7728261741411086173
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145515 (8 * n + 14)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (∏ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023179.P7728261741411086173

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

/-! ## A023184.P14064362278980413421

`A103609(A023183(n)+abs(A023183(n)))`
-/

namespace A023184.P14064362278980413421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103609 (A023183 n + |A023183 n|).toNat

end

end A023184.P14064362278980413421

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

/-! ## A023189.P10346261222963817868

`Δ[A292225(A053438(n))]-A008683(2*(n+1)²)`
-/

namespace A023189.P10346261222963817868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292225 (A053438 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A008683 (2 * (n + 1) ^ 2)

end

end A023189.P10346261222963817868

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

/-! ## A023192.P7613182102982327036

`∑[A292225(n+1)]+1`
-/

namespace A023192.P7613182102982327036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A023192.P7613182102982327036

/-! ## A023192.P14493441711317838921

`A292225(n+1)+a(A023443(n))` with `a(0)=2`
-/

namespace A023192.P14493441711317838921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A292225 (n + 1) + a (A023443 n).toNat

end

end A023192.P14493441711317838921

/-! ## A023192.P13005240098611552313

`A292225(n+1)+a(A065033(2*n)-1)` with `a(0)=2`
-/

namespace A023192.P13005240098611552313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A292225 (n + 1) + a (A065033 (2 * n) - 1).toNat

end

end A023192.P13005240098611552313

/-! ## A023192.P6873639090493228098

`A292225(n+1)+A158388(n)²*a(n-1)` with `a(0)=2`
-/

namespace A023192.P6873639090493228098
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A292225 (n + 1) + A158388 n ^ 2 * a (n - 1)

end

end A023192.P6873639090493228098

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

/-! ## A023192.P3472241910818359362

`A292225(n+1)+a(n-A001222(A173230(n+1)))` with `a(0)=2`
-/

namespace A023192.P3472241910818359362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A292225 (n + 1) + a ((n : ℤ) - A001222 (A173230 (n + 1)).toNat).toNat

end

end A023192.P3472241910818359362

/-!
# A023193: a(n) gives the largest number k for which there is at least one admissible k-tuple taken from [0, 1, ..., n-1] if the tuple starts with 0. Admissibility is defined in a comment.

The programs for A023193, there is no canonical definition to state claims against.
-/

/-! ## A023193.P12969603965306177370

`∑[char[A020497(n+1)-1]]`
-/

namespace A023193.P12969603965306177370
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020497 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023193.P12969603965306177370

/-! ## A023193.P2424633666782208724

`∑[char[A004442(A020497(n+1))]]`
-/

namespace A023193.P2424633666782208724
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004442 (A020497 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023193.P2424633666782208724

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

/-! ## A023193.P2012566925408988146

`∑[char[A008407(n+1)]]`
-/

namespace A023193.P2012566925408988146
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008407 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A023193.P2012566925408988146

/-!
# A023194: Numbers whose sum of divisors is prime.

The programs for A023194, there is no canonical definition to state claims against.
-/

/-! ## A023194.P6680413280165254355

`A270413(n+1)-1`
-/

namespace A023194.P6680413280165254355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270413 (n + 1) - 1

end

end A023194.P6680413280165254355

/-! ## A023194.P14434964997000504846

`ceil(A292446(n+1)/2)`
-/

namespace A023194.P14434964997000504846
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A292446 (n + 1) : ℚ) / 2⌉

end

end A023194.P14434964997000504846

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

/-! ## A023194.P10185473542605219293

`round(A292446(n+1)/2*A000010(gcd(n, n+1)))`
-/

namespace A023194.P10185473542605219293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A292446 (n + 1) : ℚ) / 2 * (A000010 (Nat.gcd n (n + 1)) : ℚ))

end

end A023194.P10185473542605219293

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

/-! ## A023194.P6991716848753800100

`round(A292446(n+1)/2*A267354(2*n+1))`
-/

namespace A023194.P6991716848753800100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A292446 (n + 1) : ℚ) / 2 * (A267354 (2 * n + 1) : ℚ))

end

end A023194.P6991716848753800100

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

/-! ## A023194.P14098566827201023930

`(A292446(n+1)+A001065(A000040(n+1)))/2`
-/

namespace A023194.P14098566827201023930
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A292446 (n + 1) + A001065 (A000040 (n + 1)).toNat : ℚ) / 2

end

end A023194.P14098566827201023930

/-! ## A023194.P6403015052359923157

`round(A292446(n+1)/and(2, A180274(n+1)))`
-/

namespace A023194.P6403015052359923157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A292446 (n + 1) : ℚ) / (Int.land 2 (A180274 (n + 1)) : ℚ))

end

end A023194.P6403015052359923157

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

/-! ## A023195.P12994340176064821999

`∪[A100382(n+1), A247837(n+1)]`
-/

namespace A023195.P12994340176064821999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100382 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247837 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023195.P12994340176064821999

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

/-! ## A023196.P5358568943323772440

`lt[A294934(n+1), 1]+1`
-/

namespace A023196.P5358568943323772440
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A294934 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n + 1

end

end A023196.P5358568943323772440

namespace A023196

/-- `lt[A294934(n+1), 1]+1` -/
def P5358568943323772440.Spec : Prop :=
  ∀ n, (P5358568943323772440.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P7062474494006092462

`lt[1, exp(A060862(n+1))]+1`
-/

namespace A023196.P7062474494006092462
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.exp (A060862 (n + 1) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) < f2 j) n + 1

end

end A023196.P7062474494006092462

namespace A023196

/-- `lt[1, exp(A060862(n+1))]+1` -/
def P7062474494006092462.Spec : Prop :=
  ∀ n, (P7062474494006092462.a n : ℤ) = A023196 (n + 1)

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

/-! ## A023196.P14258369225254952207

`∪[A214408(n+1), A005835(n+1)]`
-/

namespace A023196.P14258369225254952207
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A214408 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005835 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P14258369225254952207

namespace A023196

/-- `∪[A214408(n+1), A005835(n+1)]` -/
def P14258369225254952207.Spec : Prop :=
  ∀ n, (P14258369225254952207.a n : ℤ) = A023196 (n + 1)

end A023196

/-! ## A023196.P12165115649042061839

`∪[A067766(n+1), A204829(n+1)]`
-/

namespace A023196.P12165115649042061839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067766 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204829 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A023196.P12165115649042061839

namespace A023196

/-- `∪[A067766(n+1), A204829(n+1)]` -/
def P12165115649042061839.Spec : Prop :=
  ∀ n, (P12165115649042061839.a n : ℤ) = A023196 (n + 1)

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

/-!
# A023198: Numbers k such that sigma(k) >= 4*k.

The programs for A023198, there is no canonical definition to state claims against.
-/

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

/-! ## A023198.P4650512236036758537

`A204831(n+1)%A195236(A195200(n))`
-/

namespace A023198.P4650512236036758537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A204831 (n + 1)) (A195236 (A195200 n).toNat)

end

end A023198.P4650512236036758537

/-!
# A023199: a(n) is the least k with sigma(k) >= n*k.

The programs for A023199, there is no canonical definition to state claims against.
-/

/-! ## A023199.P5998649909989460132

`A383920(2*(n+1))`
-/

namespace A023199.P5998649909989460132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A383920 (2 * (n + 1))

end

end A023199.P5998649909989460132

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

