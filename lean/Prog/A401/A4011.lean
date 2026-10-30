import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C011
import Seq.B000.C012
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C022
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C037
import Seq.B000.C050
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C006
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B003.C000
import Seq.B003.C003
import Seq.B003.C005
import Seq.B004.C000
import Seq.B004.C004
import Seq.B005.C000
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
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
import Seq.Opaque.C013
import Seq.Opaque.C014
import Seq.Opaque.C016
import Seq.Opaque.C017
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023
import Seq.Opaque.C024

/-!
# A401100: a(0) = 1, thereafter a(n+1) = ceiling(5*a(n)/2).

The programs for A401100, the canonical program `A401100.P2223803039464972030` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401100 has offset 0).

The definition of A401100 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 252 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A401100.P2223803039464972030

`a(n-1)+floor(a(n-1)+(a(n-1)+1)/2)` with `a(0)=1`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A401100.P16534156442453912752

`ceil(5*a(n-1)/2)` with `a(0)=1`
-/

namespace A401100.P16534156442453912752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  ⌈(5 * a (n - 1) : ℚ) / 2⌉

end

end A401100.P16534156442453912752

namespace A401100

/-- `ceil(5*a(n-1)/2)` -/
def P16534156442453912752.Spec : Prop :=
  ∀ n, P16534156442453912752.a n = A401100 n

end A401100

/-! ## A401100.P1398249695886878597

`round(5*a(n-1)/2)` with `a(0)=1`
-/

namespace A401100.P1398249695886878597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  SequenceMachineLib.roundAway ((5 * a (n - 1) : ℚ) / 2)

end

end A401100.P1398249695886878597

namespace A401100

/-- `round(5*a(n-1)/2)` -/
def P1398249695886878597.Spec : Prop :=
  ∀ n, P1398249695886878597.a n = A401100 n

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

/-! ## A401100.P6564291224733877509

`3*a(n-1)-floor(a(n-1)/2)` with `a(0)=1`
-/

namespace A401100.P6564291224733877509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - ⌊(a (n - 1) : ℚ) / 2⌋

end

end A401100.P6564291224733877509

namespace A401100

/-- `3*a(n-1)-floor(a(n-1)/2)` -/
def P6564291224733877509.Spec : Prop :=
  ∀ n, P6564291224733877509.a n = A401100 n

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

/-! ## A401105.P17437243131823207155

`∑[A061357(A090129(n+1))]`
-/

namespace A401105.P17437243131823207155
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061357 (A090129 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401105.P17437243131823207155

namespace A401105

/-- `∑[A061357(A090129(n+1))]` -/
def P17437243131823207155.Spec : Prop :=
  ∀ n, P17437243131823207155.a n = A401105 n

end A401105

/-! ## A401105.P15004346778704854792

`∑[A002375(A011782(n))]`
-/

namespace A401105.P15004346778704854792
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002375 (A011782 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A401105.P15004346778704854792

namespace A401105

/-- `∑[A002375(A011782(n))]` -/
def P15004346778704854792.Spec : Prop :=
  ∀ n, P15004346778704854792.a n = A401105 n

end A401105

/-! ## A401105.P3555350402081412275

`∑{d}[A131577(n), A002375(#)]`
-/

namespace A401105.P3555350402081412275
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A002375 d

end

end A401105.P3555350402081412275

namespace A401105

/-- `∑{d}[A131577(n), A002375(#)]` -/
def P3555350402081412275.Spec : Prop :=
  ∀ n, P3555350402081412275.a n = A401105 n

end A401105

/-!
# A401106: Number of unordered representations of 2^n as a sum of two distinct positive integers, each an odd composite number multiplied by a power of 2.

The programs for A401106, the canonical program `A401106.P552550023882447853` is in `Seq.B006.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401106 has offset 0).

The definition of A401106 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A141100, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401106.P552550023882447853

`a(n-1)+A141100(2^(n-1))` with `a(0)=0`

The canonical program, it is in `Seq.B006.C001`.
-/

namespace A401106

/-- `a(n-1)+A141100(2^(n-1))` -/
def P552550023882447853.Spec : Prop :=
  ∀ n, P552550023882447853.a n = A401106 n

theorem P552550023882447853.correct : P552550023882447853.Spec := by
  intro n
  simp only [A401106]

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

/-! ## A401106.P13145693833627899286

`A202304(A054360(n+1))`
-/

namespace A401106.P13145693833627899286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202304 (A054360 (n + 1)).toNat

end

end A401106.P13145693833627899286

namespace A401106

/-- `A202304(A054360(n+1))` -/
def P13145693833627899286.Spec : Prop :=
  ∀ n, P13145693833627899286.a n = A401106 n

end A401106

/-!
# A401107: Triangle read by rows: T(n,k) = max{d : 1 <= d <= n and d | binomial(n,k)}, for n >= 2 and 1 <= k < n.

The programs for A401107, there is no canonical definition to state claims against.
-/

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

/-! ## A401107.P170443629895352085

`A163352(n)+A000034(A022169(n))`
-/

namespace A401107.P170443629895352085
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163352 n + A000034 (A022169 n).toNat

end

end A401107.P170443629895352085

/-! ## A401107.P1730438187870397867

`A002024(n+1)+A000035(A157278(n))`
-/

namespace A401107.P1730438187870397867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002024 (n + 1) + A000035 (A157278 n).toNat

end

end A401107.P1730438187870397867

/-! ## A401107.P9035762201281974867

`A003057(n+2)-A171182(A174109(n))`
-/

namespace A401107.P9035762201281974867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003057 (n + 2) - A171182 (A174109 n).toNat

end

end A401107.P9035762201281974867

/-!
# A401118: Size of the largest subset of {1..n} having no 3-element subset with all pairwise LCMs equal.

The programs for A401118, there is no canonical definition to state claims against.
-/

/-! ## A401118.P8414752313105028936

`A195174(A380834(2*(n+1))+A056239(n+1))`
-/

namespace A401118.P8414752313105028936
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195174 (A380834 (2 * (n + 1)) + A056239 (n + 1)).toNat

end

end A401118.P8414752313105028936

/-!
# A401122: a(n) is the size of the annular Jones monoid of degree n.

The programs for A401122, the canonical program `A401122.P1083847370963079364` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401122 has offset 1).

The definition of A401122 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401122.P1083847370963079364

`(n+1)*C(n, floor(n/2))²+(1+(-1)^(n+1))*A000108(floor((n+1)/2))²/2`

The canonical program, it is in `Seq.B001.C014`.
-/

namespace A401122

/-- `(n+1)*C(n, floor(n/2))²+(1+(-1)^(n+1))*A000108(floor((n+1)/2))²/2` -/
def P1083847370963079364.Spec : Prop :=
  ∀ n, P1083847370963079364.a n = (A401122 (n + 1) : ℚ)

end A401122

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

/-!
# A401128: Number of ways to give each of n cars an ordered pair of (not necessarily distinct) spots in [n] so that all cars park, where each car in turn takes its first choice if free, else its second choice if free, else the first free spot after its second choice.

The programs for A401128, the canonical program `A401128.P13691097860066135088` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401128 has offset 1).

The definition of A401128 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401128.P13691097860066135088

`(n+1)!*C((n+2)²-2, n)`

The canonical program, it is in `Seq.B000.C050`.
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

The programs for A401139, the canonical program `A401139.P12278537050696209364` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401139 has offset 0).

The definition of A401139 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401139.P12278537050696209364

`a(n-6)` with `a(0)=1, a(1)=6, a(2)=5, a(3)=4, a(4)=3, a(5)=2`

The canonical program, it is in `Seq.B000.C050`.
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

/-! ## A401140.P12190527077457038667

`A011716(A185296(n))`
-/

namespace A401140.P12190527077457038667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011716 (A185296 n).toNat

end

end A401140.P12190527077457038667

/-! ## A401140.P10986237174551200437

`A021913(A204221(n)*A291448(n))`
-/

namespace A401140.P10986237174551200437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A021913 (A204221 n * A291448 n).toNat

end

end A401140.P10986237174551200437

/-! ## A401140.P8406190064885398381

`and(A011684(n), A135256(n+1))`
-/

namespace A401140.P8406190064885398381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A011684 n) (A135256 (n + 1))

end

end A401140.P8406190064885398381

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

/-!
# A401155: Smallest number that is a primitive root modulo both p = A001359(n) and p+2 = A006512(n).

The programs for A401155, there is no canonical definition to state claims against.
-/

/-! ## A401155.P13353200284640937987

`A291690(A029707(n+1))`
-/

namespace A401155.P13353200284640937987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A291690 (A029707 (n + 1)).toNat

end

end A401155.P13353200284640937987

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
# A401169: A quadratic form represents every Fibonacci number iff it represents these ten numbers.

The programs for A401169, there is no canonical definition to state claims against.
-/

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

/-! ## A401169.P3717792582019578472

`A273046(lt[1, A061395(n+1)])`
-/

namespace A401169.P3717792582019578472
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A401169.P3717792582019578472

/-! ## A401169.P17903822930022189744

`A273046(lt[1, A064989(n+1)])`
-/

namespace A401169.P17903822930022189744
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064989 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273046 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A401169.P17903822930022189744

/-! ## A401169.P6725648606780624317

`A273046(comp[A007678(n+1)+n])`
-/

namespace A401169.P6725648606780624317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007678 (n + 1) + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A273046 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A401169.P6725648606780624317

/-!
# A401177: Numbers k such that A003418(k)+-1 are a twin prime pair.

The programs for A401177, there is no canonical definition to state claims against.
-/

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
# A401179: Total number of induced cycles in all connected labeled graphs on n vertices.

The programs for A401179, there is no canonical definition to state claims against.
-/

/-! ## A401179.P5588658863169656232

`A049986(A377424(n)+5)`
-/

namespace A401179.P5588658863169656232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049986 (A377424 n + 5).toNat

end

end A401179.P5588658863169656232

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

The programs for A401186, the canonical program `A401186.P18360977751011296750` is in `Seq.B000.C050`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401186 has offset 0).

The definition of A401186 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A401186.P18360977751011296750

`∑{#}[n, C(n, #)*(2^#-1)^(n-#)*2^C(n-#, 2)]`

The canonical program, it is in `Seq.B000.C050`.
-/

namespace A401186

/-- `∑{#}[n, C(n, #)*(2^#-1)^(n-#)*2^C(n-#, 2)]` -/
def P18360977751011296750.Spec : Prop :=
  ∀ n, P18360977751011296750.a n = (A401186 n : ℚ)

end A401186

/-!
# A401187: Total number of maximal independent vertex sets in all connected labeled graphs on n vertices.

The programs for A401187, there is no canonical definition to state claims against.
-/

/-! ## A401187.P4381878906536975949

`A020725(A245731(n))-A000837(n)`
-/

namespace A401187.P4381878906536975949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A245731 n).toNat - A000837 n

end

end A401187.P4381878906536975949

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
# A401191: a(0)=a(1)=1, a(n) = a(n-1) + 1 + per(a(n-2)), where per(n) is the multiplicative persistence of n.

The programs for A401191, the canonical program `A401191.P5971859324744171854` is in `Seq.B001.C014`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A401191 has offset 0).

The definition of A401191 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A031346, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A401191.P5971859324744171854

`a(n-1)+1+A031346(a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B001.C014`.
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

/-! ## A401192.P12353152684459832346

`A055642(A285702(n+1)^(A055642(n+1)+1))`
-/

namespace A401192.P12353152684459832346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055642 (SequenceMachineLib.roundAway ((A285702 (n + 1) : ℚ) ^ (A055642 (n + 1) + 1 : ℤ))).toNat

end

end A401192.P12353152684459832346

namespace A401192

/-- `A055642(A285702(n+1)^(A055642(n+1)+1))` -/
def P12353152684459832346.Spec : Prop :=
  ∀ n, P12353152684459832346.a n = A401192 (n + 3)

end A401192

/-! ## A401192.P15086921722683232051

`A124767(A319559(n)+n)`
-/

namespace A401192.P15086921722683232051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124767 (A319559 n + (n : ℤ)).toNat

end

end A401192.P15086921722683232051

namespace A401192

/-- `A124767(A319559(n)+n)` -/
def P15086921722683232051.Spec : Prop :=
  ∀ n, P15086921722683232051.a n = A401192 (n + 3)

end A401192

