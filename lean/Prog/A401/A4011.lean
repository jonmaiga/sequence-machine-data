import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C009
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C022
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
import Seq.B000.C051
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C007
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C013
import Seq.B001.C015
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C008
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C004
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C002
import Seq.B007.C000
import Seq.B009.C000
import Seq.B010.C000
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
# A401100: a(0) = 1, thereafter a(n+1) = ceiling(5*a(n)/2).

The programs for A401100, the canonical program `A401100.P2223803039464972030` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401100 has offset 0).

The definition of A401100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401100.P13471841163770808136

`ceil(5/2*a(n-1))` with `a(0)=1`
-/

namespace A401100.P13471841163770808136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(5 : ℚ) / 2 * (a (n - 1) : ℚ)⌉

end

end A401100.P13471841163770808136

namespace A401100

/-- `ceil(5/2*a(n-1))` -/
def P13471841163770808136.Spec : Prop :=
  ∀ n, P13471841163770808136.a n = A401100 n

end A401100

/-! ## A401100.P2955921797482722298

`round(5/2*a(n-1))` with `a(0)=1`
-/

namespace A401100.P2955921797482722298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((5 : ℚ) / 2 * (a (n - 1) : ℚ))

end

end A401100.P2955921797482722298

namespace A401100

/-- `round(5/2*a(n-1))` -/
def P2955921797482722298.Spec : Prop :=
  ∀ n, P2955921797482722298.a n = A401100 n

end A401100

/-! ## A401100.P2223803039464972030

`a(n-1)+floor(a(n-1)+(a(n-1)+1)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401100

/-- `a(n-1)+floor(a(n-1)+(a(n-1)+1)/2)` -/
def P2223803039464972030.Spec : Prop :=
  ∀ n, P2223803039464972030.a n = A401100 n

theorem P2223803039464972030.correct : P2223803039464972030.Spec := by
  intro n
  simp only [A401100]

end A401100

/-! ## A401100.P15756942022202530818

`(a(n-1)+a(n-1)%2)/2+2*a(n-1)` with `a(0)=1`
-/

namespace A401100.P15756942022202530818
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  (a (n - 1) + (Int.tmod (SequenceMachineLib.roundAway (a (n - 1))) 2 : ℚ)) / 2 + 2 * a (n - 1)

end

end A401100.P15756942022202530818

namespace A401100

/-- `(a(n-1)+a(n-1)%2)/2+2*a(n-1)` -/
def P15756942022202530818.Spec : Prop :=
  ∀ n, P15756942022202530818.a n = (A401100 n : ℚ)

end A401100

/-! ## A401100.P152537102164383968

`a(n-1)-floor(floor(a(n-1)/2-a(n-1))-a(n-1))` with `a(0)=1`

`floor` is left out, it is the identity on integers.
-/

namespace A401100.P152537102164383968
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) - (⌊(a (n - 1) : ℚ) / 2 - (a (n - 1) : ℚ)⌋ - a (n - 1))

end

end A401100.P152537102164383968

namespace A401100

/-- `a(n-1)-floor(floor(a(n-1)/2-a(n-1))-a(n-1))` -/
def P152537102164383968.Spec : Prop :=
  ∀ n, P152537102164383968.a n = A401100 n

end A401100

/-! ## A401100.P4677403605829935034

`floor((1+5*a(n-1))/2)` with `a(0)=1`
-/

namespace A401100.P4677403605829935034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌊(1 + 5 * a (n - 1) : ℚ) / 2⌋

end

end A401100.P4677403605829935034

namespace A401100

/-- `floor((1+5*a(n-1))/2)` -/
def P4677403605829935034.Spec : Prop :=
  ∀ n, P4677403605829935034.a n = A401100 n

end A401100

/-! ## A401100.P14866462135922311687

`1-floor((2-5*a(n-1))/2)` with `a(0)=1`
-/

namespace A401100.P14866462135922311687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  1 - ⌊(2 - 5 * a (n - 1) : ℚ) / 2⌋

end

end A401100.P14866462135922311687

namespace A401100

/-- `1-floor((2-5*a(n-1))/2)` -/
def P14866462135922311687.Spec : Prop :=
  ∀ n, P14866462135922311687.a n = A401100 n

end A401100

/-! ## A401100.P16533007192325887139

`∑[A245415(n+1)]/5`
-/

namespace A401100.P16533007192325887139
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245415 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j : ℤ) : ℚ) / 5

end

end A401100.P16533007192325887139

namespace A401100

/-- `∑[A245415(n+1)]/5` -/
def P16533007192325887139.Spec : Prop :=
  ∀ n, P16533007192325887139.a n = (A401100 n : ℚ)

end A401100

/-! ## A401100.P1353524475787847498

`A191724(∑[n]+1)`
-/

namespace A401100.P1353524475787847498
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191724 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A401100.P1353524475787847498

namespace A401100

/-- `A191724(∑[n]+1)` -/
def P1353524475787847498.Spec : Prop :=
  ∀ n, P1353524475787847498.a n = A401100 n

end A401100

/-! ## A401100.P13744868939578546935

`record[A191724(n+1)]`
-/

namespace A401100.P13744868939578546935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191724 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A401100.P13744868939578546935

namespace A401100

/-- `record[A191724(n+1)]` -/
def P13744868939578546935.Spec : Prop :=
  ∀ n, P13744868939578546935.a n = A401100 n

end A401100

/-!
# A401101: Base-5/2 expression (A024632) of 5*A401100(n) - 1.

The programs for A401101, there is no canonical definition to state claims against.
-/

/-! ## A401101.P5630046466434507064

`A401102(n)-A246057(n+1)`
-/

namespace A401101.P5630046466434507064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401102 n - A246057 (n + 1)

end

end A401101.P5630046466434507064

/-!
# A401102: Base-5/2 expression (A024632) of 5*A401100(n).

The programs for A401102, there is no canonical definition to state claims against.
-/

/-! ## A401102.P1995039541458361847

`A401101(n)+(5*10^(n+1)-2)/3`
-/

namespace A401102.P1995039541458361847
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A401101 n : ℚ) + ((5 * 10 ^ (n + 1) : ℤ) - 2 : ℚ) / 3

end

end A401102.P1995039541458361847

/-! ## A401102.P14123390272919768660

`A024632(5*A401100(n))`
-/

namespace A401102.P14123390272919768660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024632 (5 * A401100 n).toNat

end

end A401102.P14123390272919768660

/-! ## A401102.P10987330566280174830

`A024632(∑[A245415(n+1)])`
-/

namespace A401102.P10987330566280174830
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245415 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024632 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A401102.P10987330566280174830

/-! ## A401102.P3206374557698701792

`A024632(5*A191724(∑[n]+1))`
-/

namespace A401102.P3206374557698701792
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024632 (5 * A191724 (∑ j ∈ Finset.range (n + 1), f1 j + 1)).toNat

end

end A401102.P3206374557698701792

/-!
# A401105: Number of unordered representations of 2^n as a sum of two numbers, each an odd prime multiplied by a power of 2.

The programs for A401105, the canonical program `A401105.P5211430239912947113` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401105 has offset 0).

The definition of A401105 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401105.P5211430239912947113

`a(n-1)+A006307(n)` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A401105

/-- `a(n-1)+A006307(n)` -/
def P5211430239912947113.Spec : Prop :=
  ∀ n, P5211430239912947113.a n = A401105 n

theorem P5211430239912947113.correct : P5211430239912947113.Spec := by
  intro n
  simp only [A401105]

end A401105

/-! ## A401105.P6536602730441040674

`∑[A006307(n)%A075834(n)]`
-/

namespace A401105.P6536602730441040674
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A006307 n) (A075834 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401105.P6536602730441040674

namespace A401105

/-- `∑[A006307(n)%A075834(n)]` -/
def P6536602730441040674.Spec : Prop :=
  ∀ n, P6536602730441040674.a n = A401105 n

end A401105

/-! ## A401105.P17845970102183331853

`fp[log2(A086081(n+2))]`
-/

namespace A401105.P17845970102183331853
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A086081 (n + 2) : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (n : ℝ) < f1 j) 0

end

end A401105.P17845970102183331853

namespace A401105

/-- `fp[log2(A086081(n+2))]` -/
def P17845970102183331853.Spec : Prop :=
  ∀ n, (P17845970102183331853.a n : ℤ) = A401105 n

end A401105

/-! ## A401105.P11778378496298718812

`∑[A061357(A011782(n))]`
-/

namespace A401105.P11778378496298718812
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401105.P11778378496298718812

namespace A401105

/-- `∑[A061357(A011782(n))]` -/
def P11778378496298718812.Spec : Prop :=
  ∀ n, P11778378496298718812.a n = A401105 n

end A401105

/-! ## A401105.P17922822204562883961

`∑{d}[A011782(n), A061357(#)]`
-/

namespace A401105.P17922822204562883961
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A061357 d

end

end A401105.P17922822204562883961

namespace A401105

/-- `∑{d}[A011782(n), A061357(#)]` -/
def P17922822204562883961.Spec : Prop :=
  ∀ n, P17922822204562883961.a n = A401105 n

end A401105

/-!
# A401106: Number of unordered representations of 2^n as a sum of two distinct positive integers, each an odd composite number multiplied by a power of 2.

The programs for A401106, the canonical program `A401106.P552550023882447853` is in `Seq.B006.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401106 has offset 0).

The definition of A401106 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401106.P552550023882447853

`a(n-1)+A141100(2^(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B006.C002`.
-/

namespace A401106

/-- `a(n-1)+A141100(2^(n-1))` -/
def P552550023882447853.Spec : Prop :=
  ∀ n, P552550023882447853.a n = A401106 n

theorem P552550023882447853.correct : P552550023882447853.Spec := by
  intro n
  simp only [A401106]

end A401106

/-! ## A401106.P15065953426038877483

`∑[A141097(or(1, A078485(n))+1)]`
-/

namespace A401106.P15065953426038877483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141097 (Int.lor 1 (A078485 n) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401106.P15065953426038877483

namespace A401106

/-- `∑[A141097(or(1, A078485(n))+1)]` -/
def P15065953426038877483.Spec : Prop :=
  ∀ n, P15065953426038877483.a n = A401106 n

end A401106

/-! ## A401106.P10009288834821936990

`∑[A141100(A011782(n))]`
-/

namespace A401106.P10009288834821936990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401106.P10009288834821936990

namespace A401106

/-- `∑[A141100(A011782(n))]` -/
def P10009288834821936990.Spec : Prop :=
  ∀ n, P10009288834821936990.a n = A401106 n

end A401106

/-! ## A401106.P8366688194656823657

`∑[A141100(A000010(2^n))]`
-/

namespace A401106.P8366688194656823657
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141100 (A000010 (2 ^ n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401106.P8366688194656823657

namespace A401106

/-- `∑[A141100(A000010(2^n))]` -/
def P8366688194656823657.Spec : Prop :=
  ∀ n, P8366688194656823657.a n = A401106 n

end A401106

/-! ## A401106.P1484007016248517033

`A268084(A068032(n))`
-/

namespace A401106.P1484007016248517033
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268084 (A068032 n).toNat

end

end A401106.P1484007016248517033

namespace A401106

/-- `A268084(A068032(n))` -/
def P1484007016248517033.Spec : Prop :=
  ∀ n, P1484007016248517033.a n = A401106 n

end A401106

/-!
# A401107: Triangle read by rows: T(n,k) = max{d : 1 <= d <= n and d | binomial(n,k)}, for n >= 2 and 1 <= k < n.

The programs for A401107, there is no canonical definition to state claims against.
-/

/-! ## A401107.P13563213687804803554

`A054431(n+1)+A002024(n+1)%A119034(n+5)`
-/

namespace A401107.P13563213687804803554
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1) + Int.tmod (A002024 (n + 1)) (A119034 (n + 5))

end

end A401107.P13563213687804803554

/-! ## A401107.P3288365783641046720

`A054431(n+1)+A002024(n+1)%A119225(n+1)`
-/

namespace A401107.P3288365783641046720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054431 (n + 1) + Int.tmod (A002024 (n + 1)) (A119225 (n + 1))

end

end A401107.P3288365783641046720

/-! ## A401107.P9641524847447280059

`A316441(A203846(n+1))+A002024(n+1)`
-/

namespace A401107.P9641524847447280059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316441 (A203846 (n + 1)).toNat + A002024 (n + 1)

end

end A401107.P9641524847447280059

/-! ## A401107.P1818491087506710191

`A355741(A116469(n+1))+A002024(n+1)`
-/

namespace A401107.P1818491087506710191
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A355741 (A116469 (n + 1)).toNat + A002024 (n + 1)

end

end A401107.P1818491087506710191

/-! ## A401107.P1240189184802357667

`(A054431(n+1)+A002024(n+1))%A119231(n+1)`
-/

namespace A401107.P1240189184802357667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A054431 (n + 1) + A002024 (n + 1)) (A119231 (n + 1))

end

end A401107.P1240189184802357667

/-!
# A401112: Strictly non-handsome numbers in all bases from 2 to k: numbers k such that for every base b (2 <= b <= k), k cannot be written as the sum of its base-b digits raised to positive integer powers.

The programs for A401112, there is no canonical definition to state claims against.
-/

/-! ## A401112.P11961976512442506342

`∩[A032996(n+1), A176253(n+1)]`
-/

namespace A401112.P11961976512442506342
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032996 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176253 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401112.P11961976512442506342

/-!
# A401118: Size of the largest subset of {1..n} having no 3-element subset with all pairwise LCMs equal.

The programs for A401118, there is no canonical definition to state claims against.
-/

/-! ## A401118.P7516090183412574031

`∑[A092669(A000010(n+1))^A092669(n+1)]`
-/

namespace A401118.P7516090183412574031
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A092669 (A000010 (n + 1)).toNat : ℚ) ^ (A092669 (n + 1) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401118.P7516090183412574031

/-! ## A401118.P8414752313105028936

`A195174(A380834(2*(n+1))+A056239(n+1))`
-/

namespace A401118.P8414752313105028936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A380834 (2 * (n + 1)) + A056239 (n + 1)).toNat

end

end A401118.P8414752313105028936

/-! ## A401118.P5814846651500962366

`∑[A216226(A216226(2*(n+1)))^A374516(3*n+2)]`
-/

namespace A401118.P5814846651500962366
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A216226 (A216226 (2 * (n + 1))).toNat : ℚ) ^ (A374516 (3 * n + 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401118.P5814846651500962366

/-! ## A401118.P16590509417533111561

`A390394(lt[A144369(n+2), A227113(3*n+1)])`
-/

namespace A401118.P16590509417533111561
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A144369 (n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227113 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390394 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A401118.P16590509417533111561

/-!
# A401121: Weighted evaluation of the cycle index of the cyclic group C_n, where each cycle of length d contributes weight w(1) = 1 and w(d) = 1/(d-1) for d >= 2.

The programs for A401121, there is no canonical definition to state claims against.
-/

/-! ## A401121.P7567353413921151459

`A023022(6*A049774(n))`
-/

namespace A401121.P7567353413921151459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023022 (6 * A049774 n).toNat

end

end A401121.P7567353413921151459

/-!
# A401122: a(n) is the size of the annular Jones monoid of degree n.

The programs for A401122, the canonical program `A401122.P1083847370963079364` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401122 has offset 1).

The definition of A401122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401122.P1083847370963079364

`(n+1)*C(n, floor(n/2))²+(1+(-1)^(n+1))*A000108(floor((n+1)/2))²/2`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401122

/-- `(n+1)*C(n, floor(n/2))²+(1+(-1)^(n+1))*A000108(floor((n+1)/2))²/2` -/
def P1083847370963079364.Spec : Prop :=
  ∀ n, P1083847370963079364.a n = (A401122 (n + 1) : ℚ)

end A401122

/-!
# A401123: Numbers k such that the number formed by 1 followed by k copies of 81, (20*100^k - 9)/11, is prime.

The programs for A401123, there is no canonical definition to state claims against.
-/

/-! ## A401123.P2759329065169943609

`(A062214(n+1)-1)/2`
-/

namespace A401123.P2759329065169943609
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A062214 (n + 1) - 1 : ℚ) / 2

end

end A401123.P2759329065169943609

/-!
# A401127: Numbers k such that (22^k + 21^k)/43 is prime.

The programs for A401127, there is no canonical definition to state claims against.
-/

/-! ## A401127.P13124874552681043556

`A181325(A108861(n+1))`
-/

namespace A401127.P13124874552681043556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181325 (A108861 (n + 1)).toNat

end

end A401127.P13124874552681043556

/-! ## A401127.P2974863252544314186

`∩[A029899(n), A069681(n+1)]`
-/

namespace A401127.P2974863252544314186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029899 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069681 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401127.P2974863252544314186

/-! ## A401127.P8093948278681289895

`A334965(A304405(a(floor(n/2))+n%2))` with `a(0)=3`
-/

namespace A401127.P8093948278681289895
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [3] fun n a =>
  A334965 (A304405 (a ⌊(n : ℚ) / 2⌋.toNat + ((n % 2 : ℕ) : ℤ)).toNat).toNat

end

end A401127.P8093948278681289895

/-!
# A401128: Number of ways to give each of n cars an ordered pair of (not necessarily distinct) spots in [n] so that all cars park, where each car in turn takes its first choice if free, else its second choice if free, else the first free spot after its second choice.

The programs for A401128, the canonical program `A401128.P13691097860066135088` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401128 has offset 1).

The definition of A401128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401128.P13691097860066135088

`(n+1)!*C((n+2)²-2, n)`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401128

/-- `(n+1)!*C((n+2)²-2, n)` -/
def P13691097860066135088.Spec : Prop :=
  ∀ n, (P13691097860066135088.a n : ℤ) = A401128 (n + 1)

theorem P13691097860066135088.correct : P13691097860066135088.Spec := by
  intro n
  simp only [A401128, Nat.add_sub_cancel]

end A401128

/-! ## A401128.P40494726311668567

`(n+1)!*A177784(n+2)`
-/

namespace A401128.P40494726311668567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℤ) * A177784 (n + 2)

end

end A401128.P40494726311668567

namespace A401128

/-- `(n+1)!*A177784(n+2)` -/
def P40494726311668567.Spec : Prop :=
  ∀ n, P40494726311668567.a n = A401128 (n + 1)

end A401128

/-! ## A401128.P14014838729106335904

`∑{#}[n+1, (n+1)^#*(n+2)^(n+1-#)*A370832(C(n+2, 2)+#)]`
-/

namespace A401128.P14014838729106335904
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), ((n + 1) ^ k : ℚ) * (n + 2 : ℚ) ^ ((n + 1 : ℤ) - (k : ℤ) : ℤ) * (A370832 (Nat.choose (n + 2) 2 + k) : ℚ)

end

end A401128.P14014838729106335904

namespace A401128

/-- `∑{#}[n+1, (n+1)^#*(n+2)^(n+1-#)*A370832(C(n+2, 2)+#)]` -/
def P14014838729106335904.Spec : Prop :=
  ∀ n, P14014838729106335904.a n = (A401128 (n + 1) : ℚ)

end A401128

/-! ## A401128.P9491885856738505699

`(n+1)!*C(∑[2*n+3], n+1)/(n+3)`
-/

namespace A401128.P9491885856738505699
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (n + 1) : ℚ) * ((Nat.choose (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1) : ℚ) / (n + 3 : ℚ))

end

end A401128.P9491885856738505699

namespace A401128

/-- `(n+1)!*C(∑[2*n+3], n+1)/(n+3)` -/
def P9491885856738505699.Spec : Prop :=
  ∀ n, P9491885856738505699.a n = (A401128 (n + 1) : ℚ)

end A401128

/-! ## A401128.P7952542209230147726

`A000142(n+1)*A177784(n+2)`
-/

namespace A401128.P7952542209230147726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000142 (n + 1) * A177784 (n + 2)

end

end A401128.P7952542209230147726

namespace A401128

/-- `A000142(n+1)*A177784(n+2)` -/
def P7952542209230147726.Spec : Prop :=
  ∀ n, P7952542209230147726.a n = A401128 (n + 1)

end A401128

/-!
# A401129: a(n) is the number of points (x, y) of the square lattice Z^2 connected to the origin by a path of unit horizontal and vertical steps through points satisfying digitsum(|x|) + digitsum(|y|) <= n.

The programs for A401129, there is no canonical definition to state claims against.
-/

/-! ## A401129.P15930443768552840714

`4*A401130(n)-4*A051885(n+1)+1`
-/

namespace A401129.P15930443768552840714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * A401130 n - 4 * A051885 (n + 1) + 1

end

end A401129.P15930443768552840714

/-!
# A401130: a(n) is the number of points (x, y) of the square lattice Z^2 with x, y >= 0 connected to the origin by a path of unit horizontal and vertical steps through points of the first quadrant satisfying digitsum(x) + digitsum(y) <= n.

The programs for A401130, there is no canonical definition to state claims against.
-/

/-! ## A401130.P13405767053068901845

`∑[A345964(a(n-1))]` with `a(0)=1`
-/

namespace A401130.P13405767053068901845
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A345964 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401130.P13405767053068901845

/-! ## A401130.P6437674533154462618

`∑[(n+1)^A327804(n²)]`
-/

namespace A401130.P6437674533154462618
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A327804 (n ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401130.P6437674533154462618

/-! ## A401130.P4563444796017277258

`∑[(n+1)^A063050((n+1)²)]`
-/

namespace A401130.P4563444796017277258
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A063050 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401130.P4563444796017277258

/-! ## A401130.P10047791889464329400

`∑[(n+1)^A119849((n+1)²)]`
-/

namespace A401130.P10047791889464329400
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A119849 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401130.P10047791889464329400

/-! ## A401130.P15377481187514364401

`∑[(n+1)^A183017((n+1)²)]`
-/

namespace A401130.P15377481187514364401
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (A183017 ((n + 1) ^ 2) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401130.P15377481187514364401

/-!
# A401134: Number of distinct equality patterns among compositions of n.

The programs for A401134, there is no canonical definition to state claims against.
-/

/-! ## A401134.P4016829219440066182

`A342383(A026034(n))`
-/

namespace A401134.P4016829219440066182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A026034 n).toNat

end

end A401134.P4016829219440066182

/-! ## A401134.P16145039378402894426

`A342383(A061551(n))`
-/

namespace A401134.P16145039378402894426
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342383 (A061551 n).toNat

end

end A401134.P16145039378402894426

/-! ## A401134.P12247814338742284832

`A333764(A218153(n))`
-/

namespace A401134.P12247814338742284832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (A218153 n).toNat

end

end A401134.P12247814338742284832

/-! ## A401134.P1867317401126822506

`A333764(A094768(n+1))`
-/

namespace A401134.P1867317401126822506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333764 (A094768 (n + 1)).toNat

end

end A401134.P1867317401126822506

/-! ## A401134.P8552062920741767014

`A230999(A114702(n+2))`
-/

namespace A401134.P8552062920741767014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A230999 (A114702 (n + 2)).toNat

end

end A401134.P8552062920741767014

/-!
# A401139: Period 6: repeat [1, 6, 5, 4, 3, 2].

The programs for A401139, the canonical program `A401139.P12278537050696209364` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401139 has offset 0).

The definition of A401139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401139.P12278537050696209364

`a(n-6)` with `a(0)=1, a(1)=6, a(2)=5, a(3)=4, a(4)=3, a(5)=2`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401139

/-- `a(n-6)` -/
def P12278537050696209364.Spec : Prop :=
  ∀ n, (P12278537050696209364.a n : ℤ) = A401139 n

theorem P12278537050696209364.correct : P12278537050696209364.Spec := by
  intro n
  simp only [A401139]

end A401139

/-!
# A401140: Triangle read by rows: T(n,k) is the number of common elements of {j*(n-j): 1 <= j <= floor(n/2)} and {j*(k-j): 1 <= j <= floor(k/2)}, for n >= 2 and 1 <= k < n.

The programs for A401140, there is no canonical definition to state claims against.
-/

/-! ## A401140.P17563376630625818731

`A083850(A101477(n))`
-/

namespace A401140.P17563376630625818731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083850 (A101477 n).toNat

end

end A401140.P17563376630625818731

/-! ## A401140.P17111127177881523060

`char[A145906(n)-A006983(n+1)]`
-/

namespace A401140.P17111127177881523060
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145906 n - A006983 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f1 j = (n : ℤ) then 1 else 0

end

end A401140.P17111127177881523060

/-! ## A401140.P16895781667166449542

`A400230(A005811(n)^A400230(2*n))`
-/

namespace A401140.P16895781667166449542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A400230 (SequenceMachineLib.roundAway ((A005811 n : ℚ) ^ (A400230 (2 * n) : ℤ))).toNat

end

end A401140.P16895781667166449542

/-! ## A401140.P989165558257209233

`A010051(A397317(2*(n+2))-A000217(n))`
-/

namespace A401140.P989165558257209233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (A397317 (2 * (n + 2)) - A000217 n).toNat

end

end A401140.P989165558257209233

/-! ## A401140.P12190527077457038667

`A011716(A185296(n))`
-/

namespace A401140.P12190527077457038667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011716 (A185296 n).toNat

end

end A401140.P12190527077457038667

/-!
# A401142: The number of ordered pairs of exponentially odd divisors (d_1, d_2) of n such that n is an exponentially odd divisor of d_1 * d_2.

The programs for A401142, there is no canonical definition to state claims against.
-/

/-! ## A401142.P7235677286154728937

`A295316(n+1)*A401087(n+1)`
-/

namespace A401142.P7235677286154728937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A295316 (n + 1) * A401087 (n + 1)

end

end A401142.P7235677286154728937

/-! ## A401142.P1502334790316508222

`∏{e}[A187829(n+1), A022837(#)]`
-/

namespace A401142.P1502334790316508222
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187829 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f1 n).natAbs, A022837 (Nat.factorization (f1 n).natAbs p)

end

end A401142.P1502334790316508222

/-! ## A401142.P4575728405678752709

`C(A292685(A383657(n+1)), A046951(n+1)²)`
-/

namespace A401142.P4575728405678752709
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A292685 (A383657 (n + 1)).toNat).toNat (A046951 (n + 1) ^ 2).toNat

end

end A401142.P4575728405678752709

/-! ## A401142.P14757839116450275275

`C(A292685(A383657(n+1)), A071974(n+1)²)`
-/

namespace A401142.P14757839116450275275
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A292685 (A383657 (n + 1)).toNat).toNat (A071974 (n + 1) ^ 2).toNat

end

end A401142.P14757839116450275275

/-! ## A401142.P1453394023269349832

`A011655(A333226(n+1))*A175506(A265390(n+1))`
-/

namespace A401142.P1453394023269349832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011655 (A333226 (n + 1)).toNat * A175506 (A265390 (n + 1)).toNat

end

end A401142.P1453394023269349832

/-!
# A401145: Number of partitions of n into distinct parts such that n plus the product of the parts is prime.

The programs for A401145, there is no canonical definition to state claims against.
-/

/-! ## A401145.P16769081252981305822

`xor(A115584(n), A138363(A378323(3*n+4)))`
-/

namespace A401145.P16769081252981305822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A115584 n) (A138363 (A378323 (3 * n + 4)).toNat)

end

end A401145.P16769081252981305822

/-!
# A401147: Numbers k such that k^4 - 1 is the product of exactly 4 primes (counted with multiplicity).

The programs for A401147, there is no canonical definition to state claims against.
-/

/-! ## A401147.P8287668926064626061

`∑[A049296(A169675(3*(n+1))+A000538(n))]`
-/

namespace A401147.P8287668926064626061
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049296 (A169675 (3 * (n + 1)) + A000538 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401147.P8287668926064626061

/-!
# A401155: Smallest number that is a primitive root modulo both p = A001359(n) and p+2 = A006512(n).

The programs for A401155, there is no canonical definition to state claims against.
-/

/-! ## A401155.P12472265621239204689

`A291690(A029707(1+n))`
-/

namespace A401155.P12472265621239204689
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291690 (A029707 (1 + n)).toNat

end

end A401155.P12472265621239204689

/-!
# A401166: Number of compositions of n in which the multiplicity of each part is divisible by that part.

The programs for A401166, there is no canonical definition to state claims against.
-/

/-! ## A401166.P5550261614306085915

`A329548(A141325(n))`
-/

namespace A401166.P5550261614306085915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329548 (A141325 n).toNat

end

end A401166.P5550261614306085915

/-! ## A401166.P13492562382047411292

`A083277(A049187(n+1))`
-/

namespace A401166.P13492562382047411292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083277 (A049187 (n + 1)).toNat

end

end A401166.P13492562382047411292

/-!
# A401168: a(n) = least k such that 2*x^k/(1 + x^(2*k)) < 1/2, where x = u/(u+1) and u = 2*n*(n+1).

The programs for A401168, the canonical program `A401168.P8630398711621748517` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401168 has offset 1).

The definition of A401168 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401168.P8630398711621748517

`floor(log(2+sqrt(3))*(2*(n+1)²+2*(n+1)+1/2))+1`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401168

/-- `floor(log(2+sqrt(3))*(2*(n+1)²+2*(n+1)+1/2))+1` -/
def P8630398711621748517.Spec : Prop :=
  ∀ n, P8630398711621748517.a n = A401168 (n + 1)

theorem P8630398711621748517.correct : P8630398711621748517.Spec := by
  intro n
  simp only [A401168, Nat.add_sub_cancel]

end A401168

/-! ## A401168.P1702739095888857926

`A027434(A008893(n+1))`
-/

namespace A401168.P1702739095888857926
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027434 (A008893 (n + 1)).toNat

end

end A401168.P1702739095888857926

namespace A401168

/-- `A027434(A008893(n+1))` -/
def P1702739095888857926.Spec : Prop :=
  ∀ n, P1702739095888857926.a n = A401168 (n + 1)

end A401168

/-! ## A401168.P7707883294358437198

`A235963(A109789(n+2))`
-/

namespace A401168.P7707883294358437198
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235963 (A109789 (n + 2)).toNat

end

end A401168.P7707883294358437198

namespace A401168

/-- `A235963(A109789(n+2))` -/
def P7707883294358437198.Spec : Prop :=
  ∀ n, P7707883294358437198.a n = A401168 (n + 1)

end A401168

/-!
# A401169: A quadratic form represents every Fibonacci number iff it represents these ten numbers.

The programs for A401169, there is no canonical definition to state claims against.
-/

/-! ## A401169.P16629870070378501071

`A000045(A107222(n+1)+A000961(n+1))`
-/

namespace A401169.P16629870070378501071
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A107222 (n + 1) + A000961 (n + 1)).toNat

end

end A401169.P16629870070378501071

/-! ## A401169.P10380341621019927417

`A273046(lt[1, A232433(n)])`
-/

namespace A401169.P10380341621019927417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232433 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A401169.P10380341621019927417

/-! ## A401169.P4811682463870243247

`A273046(lt[2, A030106(n)])`
-/

namespace A401169.P4811682463870243247
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030106 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A401169.P4811682463870243247

/-! ## A401169.P10160483810232781533

`A273046(A047201(n+1)+2)`
-/

namespace A401169.P10160483810232781533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273046 (A047201 (n + 1) + 2).toNat

end

end A401169.P10160483810232781533

/-!
# A401170: Number of distinct adjacency eigenvalues of the n X n grid graph P_n X P_n.

The programs for A401170, there is no canonical definition to state claims against.
-/

/-! ## A401170.P1001794027994180768

`A345965(A000124(n+1)-A345942(n+2))`
-/

namespace A401170.P1001794027994180768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345965 (A000124 (n + 1) - A345942 (n + 2)).toNat

end

end A401170.P1001794027994180768

/-!
# A401176: a(n) = n - min_{k > n, k composite} (k - lpf(k)), where lpf(k) is the least prime factor of k.

The programs for A401176, there is no canonical definition to state claims against.
-/

/-! ## A401176.P14037400775973922191

`∑[A160357(∑[A305452(3*n+5)+5])]-1`
-/

namespace A401176.P14037400775973922191
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305452 (3 * n + 5) + 5

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160357 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A401176.P14037400775973922191

/-!
# A401177: Numbers k such that A003418(k)+-1 are a twin prime pair.

The programs for A401177, there is no canonical definition to state claims against.
-/

/-! ## A401177.P17398221228789726914

`lt[A025478(9+A100196(n)), 4]`
-/

namespace A401177.P17398221228789726914
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025478 (9 + A100196 n).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A401177.P17398221228789726914

/-! ## A401177.P2216716997583805291

`∩[A049537(n+1), A057825(n+1)]`
-/

namespace A401177.P2216716997583805291
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049537 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057825 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A401177.P2216716997583805291

/-!
# A401178: Total number of induced paths in all connected labeled graphs on n vertices, singleton paths excluded.

The programs for A401178, there is no canonical definition to state claims against.
-/

/-! ## A401178.P10717936462491724955

`Δ[A217665(n)]*A194640(A376578(n))`
-/

namespace A401178.P10717936462491724955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217665 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A194640 (A376578 n).toNat

end

end A401178.P10717936462491724955

/-!
# A401179: Total number of induced cycles in all connected labeled graphs on n vertices.

The programs for A401179, there is no canonical definition to state claims against.
-/

/-! ## A401179.P4214947549341311959

`A075025(2*a(n-1)*(2*n-1)+1)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A401179.P4214947549341311959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A075025 (2 * a (n - 1) * ((2 * n : ℤ) - 1) + 1).toNat

end

end A401179.P4214947549341311959

/-!
# A401181: Total number of triangles in all connected labeled graphs on n vertices.

The programs for A401181, there is no canonical definition to state claims against.
-/

/-! ## A401181.P3290014503411474832

`A253534(2*a(n-1))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A401181.P3290014503411474832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  A253534 (2 * a (n - 1)).toNat

end

end A401181.P3290014503411474832

/-!
# A401184: Total number of unordered pairs of vertices not connected by an edge in all connected labeled graphs on n vertices.

The programs for A401184, there is no canonical definition to state claims against.
-/

/-! ## A401184.P1037772707297500568

`C(n+1, 2)*A001187(n+1)-A094594(n+1)`
-/

namespace A401184.P1037772707297500568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) 2 : ℤ) * A001187 (n + 1) - A094594 (n + 1)

end

end A401184.P1037772707297500568

/-! ## A401184.P8171911563098192694

`A322278(A233583(∑[n+1]))`
-/

namespace A401184.P8171911563098192694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322278 (A233583 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A401184.P8171911563098192694

/-! ## A401184.P17669168601062638575

`A322278(eq[A025581(n), A201730(n)])`
-/

namespace A401184.P17669168601062638575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025581 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201730 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322278 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A401184.P17669168601062638575

/-! ## A401184.P7371138536047273684

`A322278(A179865(n+1)+A028310(n))`
-/

namespace A401184.P7371138536047273684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322278 (A179865 (n + 1) + A028310 n).toNat

end

end A401184.P7371138536047273684

/-! ## A401184.P8402059264940386795

`A322278(lt[A130534(n), A000010(n+1)])`
-/

namespace A401184.P8402059264940386795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130534 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322278 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A401184.P8402059264940386795

/-!
# A401186: Total number of maximal independent vertex sets in all labeled graphs on n vertices.

The programs for A401186, the canonical program `A401186.P18360977751011296750` is in `Seq.B000.C051`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401186 has offset 0).

The definition of A401186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401186.P18360977751011296750

`∑{#}[n, C(n, #)*(2^#-1)^(n-#)*2^C(n-#, 2)]`

The canonical program, it is in `Seq.B000.C051`.
-/

namespace A401186

/-- `∑{#}[n, C(n, #)*(2^#-1)^(n-#)*2^C(n-#, 2)]` -/
def P18360977751011296750.Spec : Prop :=
  ∀ n, P18360977751011296750.a n = (A401186 n : ℚ)

end A401186

/-! ## A401186.P1994889876478359343

`A007401(A139383(n)-A358138(n+1))`
-/

namespace A401186.P1994889876478359343
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007401 (A139383 n - A358138 (n + 1)).toNat

end

end A401186.P1994889876478359343

namespace A401186

/-- `A007401(A139383(n)-A358138(n+1))` -/
def P1994889876478359343.Spec : Prop :=
  ∀ n, P1994889876478359343.a n = A401186 n

end A401186

/-!
# A401187: Total number of maximal independent vertex sets in all connected labeled graphs on n vertices.

The programs for A401187, there is no canonical definition to state claims against.
-/

/-! ## A401187.P17582407089361403321

`∑[A004525(A338979(n))]`
-/

namespace A401187.P17582407089361403321
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A338979 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401187.P17582407089361403321

/-!
# A401188: Numbers k that divide A400874(k).

The programs for A401188, there is no canonical definition to state claims against.
-/

/-! ## A401188.P14015536170568330774

`A135873(A149922(n+1))`
-/

namespace A401188.P14015536170568330774
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135873 (A149922 (n + 1)).toNat

end

end A401188.P14015536170568330774

/-! ## A401188.P6688231850665301265

`A000119(A246570(n))*A035513(n+1)`
-/

namespace A401188.P6688231850665301265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000119 (A246570 n).toNat * A035513 (n + 1)

end

end A401188.P6688231850665301265

/-!
# A401189: Nonsquarefree numbers k that divide A400873(k).

The programs for A401189, there is no canonical definition to state claims against.
-/

/-! ## A401189.P10338795022719236363

`∪[A081770(n+1), A320148(A041487(n))]`
-/

namespace A401189.P10338795022719236363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081770 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A320148 (A041487 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A401189.P10338795022719236363

/-!
# A401191: a(0)=a(1)=1, a(n) = a(n-1) + 1 + per(a(n-2)), where per(n) is the multiplicative persistence of n.

The programs for A401191, the canonical program `A401191.P5971859324744171854` is in `Seq.B001.C015`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401191 has offset 0).

The definition of A401191 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031346, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401191.P5971859324744171854

`a(n-1)+1+A031346(a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C015`.
-/

namespace A401191

/-- `a(n-1)+1+A031346(a(n-2))` -/
def P5971859324744171854.Spec : Prop :=
  ∀ n, P5971859324744171854.a n = A401191 n

theorem P5971859324744171854.correct : P5971859324744171854.Spec := by
  intro n
  simp only [A401191]

end A401191

/-!
# A401192: a(n) is the number of inequivalent lattice triangles containing n lattice points, with no boundary lattice points other than their three vertices.

The programs for A401192, the canonical program `A401192.P10263266885400746723` is in `Seq.B004.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401192 has offset 3).

The definition of A401192 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A000086, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401192.P10263266885400746723

`(A058026(2*(n+3)-5)+3+2*A000086(2*(n+3)-5))/6`

The canonical program, it is in `Seq.B004.C004`.
-/

namespace A401192

/-- `(A058026(2*(n+3)-5)+3+2*A000086(2*(n+3)-5))/6` -/
def P10263266885400746723.Spec : Prop :=
  ∀ n, P10263266885400746723.a n = (A401192 (n + 3) : ℚ)

end A401192

/-! ## A401192.P12569517349457747850

`A401110(∑[n+1]+2)`
-/

namespace A401192.P12569517349457747850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401110 (∑ j ∈ Finset.range (n + 1), f1 j + 2)

end

end A401192.P12569517349457747850

namespace A401192

/-- `A401110(∑[n+1]+2)` -/
def P12569517349457747850.Spec : Prop :=
  ∀ n, P12569517349457747850.a n = A401192 (n + 3)

end A401192

/-! ## A401192.P8580915636477889425

`A352515(or(A299957(n), A322190(2*n)))`
-/

namespace A401192.P8580915636477889425
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352515 (Int.lor (A299957 n) (A322190 (2 * n))).toNat

end

end A401192.P8580915636477889425

namespace A401192

/-- `A352515(or(A299957(n), A322190(2*n)))` -/
def P8580915636477889425.Spec : Prop :=
  ∀ n, P8580915636477889425.a n = A401192 (n + 3)

end A401192

/-! ## A401192.P3674482257007751442

`A037800(A324455(n+1)+A024450(n+1))`
-/

namespace A401192.P3674482257007751442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037800 (A324455 (n + 1) + A024450 (n + 1)).toNat

end

end A401192.P3674482257007751442

namespace A401192

/-- `A037800(A324455(n+1)+A024450(n+1))` -/
def P3674482257007751442.Spec : Prop :=
  ∀ n, P3674482257007751442.a n = A401192 (n + 3)

end A401192

/-! ## A401192.P17236966301111838865

`A175851(abs(A368947(n)%A265067(n)-n)+1)`
-/

namespace A401192.P17236966301111838865
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175851 (|Int.tmod (A368947 n) (A265067 n) - (n : ℤ)| + 1).toNat

end

end A401192.P17236966301111838865

namespace A401192

/-- `A175851(abs(A368947(n)%A265067(n)-n)+1)` -/
def P17236966301111838865.Spec : Prop :=
  ∀ n, P17236966301111838865.a n = A401192 (n + 3)

end A401192

/-!
# A401194: Nonnegative integers that do not occur as the largest incircle tangent length of a Heronian triangle.

The programs for A401194, there is no canonical definition to state claims against.
-/

/-! ## A401194.P13809793447103063872

`eq[0, A401193(n)]`
-/

namespace A401194.P13809793447103063872
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A401193 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A401194.P13809793447103063872

/-! ## A401194.P13066784769934183902

`eq[A218799(n), A302129(n)]`
-/

namespace A401194.P13066784769934183902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302129 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401194.P13066784769934183902

/-! ## A401194.P7395274347222730045

`eq[A218799(n), A327766(n)]`
-/

namespace A401194.P7395274347222730045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A218799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401194.P7395274347222730045

/-! ## A401194.P14675073920062170828

`eq[A104607(n+1), A327766(n)]`
-/

namespace A401194.P14675073920062170828
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A104607 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327766 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A401194.P14675073920062170828

/-!
# A401198: Number of ways to add one improperly colored vertex to a properly colored graph of n-1 vertices.

The programs for A401198, the canonical program `A401198.P6175115026263044691` is in `Seq.B002.C008`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401198 has offset 1).

The definition of A401198 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401198.P6175115026263044691

`3*2^n*A191371(n)-A191371(n+1)`

The canonical program, it is in `Seq.B002.C008`.
-/

namespace A401198

/-- `3*2^n*A191371(n)-A191371(n+1)` -/
def P6175115026263044691.Spec : Prop :=
  ∀ n, P6175115026263044691.a n = A401198 (n + 1)

theorem P6175115026263044691.correct : P6175115026263044691.Spec := by
  intro n
  simp only [A401198, Nat.add_sub_cancel]

end A401198

