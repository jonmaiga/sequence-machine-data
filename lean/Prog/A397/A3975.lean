import SequenceMachineLib.Basic
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C004
import Seq.B000.C006
import Seq.B000.C008
import Seq.B000.C009
import Seq.B000.C010
import Seq.B000.C011
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C015
import Seq.B000.C016
import Seq.B000.C017
import Seq.B000.C024
import Seq.B000.C029
import Seq.B000.C031
import Seq.B000.C035
import Seq.B000.C039
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C010
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B004.C000
import Seq.B005.C001
import Seq.B006.C000
import Seq.B006.C001
import Seq.B007.C000
import Seq.B011.C000
import Seq.B013.C000
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
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C023
import Seq.Opaque.C025

/-!
# A397507: a(n) = Sum_{k=0..n} (binomial(4*n+2*k-3,k) - binomial(4*n+2*k-3,k-1)).

The programs for A397507, there is no canonical definition to state claims against.
-/

/-! ## A397507.P14232723441881678673

`A397512(n)-A397515(n)`
-/

namespace A397507.P14232723441881678673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397512 n - A397515 n

end

end A397507.P14232723441881678673

/-!
# A397508: a(n) = Sum_{k=0..n} (binomial(5*n+2*k-3,k) - binomial(5*n+2*k-3,k-1)).

The programs for A397508, there is no canonical definition to state claims against.
-/

/-! ## A397508.P13267581484188549268

`A397513(n)-A397516(n)`
-/

namespace A397508.P13267581484188549268
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A397513 n - A397516 n

end

end A397508.P13267581484188549268

/-!
# A397509: a(n) = Sum_{k=0..n} binomial(n+2*k-3,k).

The programs for A397509, there is no canonical definition to state claims against.
-/

/-! ## A397509.P17607281277328376777

`A101402(A179237(n))`
-/

namespace A397509.P17607281277328376777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101402 (A179237 n).toNat

end

end A397509.P17607281277328376777

/-! ## A397509.P8631671332982860567

`A263017(lcm(floor(2^(n-1)), A002450(n)))`
-/

namespace A397509.P8631671332982860567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A263017 (Int.lcm ⌊(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ (A002450 n))

end

end A397509.P8631671332982860567

/-!
# A397510: a(n) = Sum_{k=0..n} binomial(2*n+2*k-3,k).

The programs for A397510, there is no canonical definition to state claims against.
-/

/-! ## A397510.P15875914067434799148

`A001462(A213643(n+1))*A028310(n)`
-/

namespace A397510.P15875914067434799148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001462 (A213643 (n + 1)).toNat * A028310 n

end

end A397510.P15875914067434799148

/-!
# A397514: a(n) = Sum_{k=0..n} binomial(3*n+2*k-3,k-1).

The programs for A397514, there is no canonical definition to state claims against.
-/

/-! ## A397514.P3371786163298039576

`A054633(A144097(n))-A364281(n)`
-/

namespace A397514.P3371786163298039576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054633 (A144097 n).toNat - A364281 n

end

end A397514.P3371786163298039576

/-!
# A397518: a(n) is the number of integer solutions of x^2 + 7*y^2 = 2*n + 1.

The programs for A397518, the canonical program `A397518.P17952571297489702475` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397518 has offset 0).

The definition of A397518 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 100 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397518.P10071459291646654644

`2*A133827(n)`
-/

namespace A397518.P10071459291646654644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A133827 n

end

end A397518.P10071459291646654644

namespace A397518

/-- `2*A133827(n)` -/
def P10071459291646654644.Spec : Prop :=
  ∀ n, P10071459291646654644.a n = A397518 n

end A397518

/-! ## A397518.P2797107974473067655

`A045819(n)%7`
-/

namespace A397518.P2797107974473067655
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A045819 n) 7

end

end A397518.P2797107974473067655

namespace A397518

/-- `A045819(n)%7` -/
def P2797107974473067655.Spec : Prop :=
  ∀ n, P2797107974473067655.a n = A397518 n

end A397518

/-! ## A397518.P17952571297489702475

`A318937(n)%7`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A397518

/-- `A318937(n)%7` -/
def P17952571297489702475.Spec : Prop :=
  ∀ n, P17952571297489702475.a n = A397518 n

theorem P17952571297489702475.correct : P17952571297489702475.Spec := by
  intro n
  simp only [A397518]

end A397518

/-! ## A397518.P11783385607033687344

`A002652(Δ[n²])`
-/

namespace A397518.P11783385607033687344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002652 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A397518.P11783385607033687344

namespace A397518

/-- `A002652(Δ[n²])` -/
def P11783385607033687344.Spec : Prop :=
  ∀ n, P11783385607033687344.a n = A397518 n

end A397518

/-! ## A397518.P14277923027156123062

`A033719(Δ[n²])`
-/

namespace A397518.P14277923027156123062
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033719 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A397518.P14277923027156123062

namespace A397518

/-- `A033719(Δ[n²])` -/
def P14277923027156123062.Spec : Prop :=
  ∀ n, P14277923027156123062.a n = A397518 n

end A397518

/-! ## A397518.P2570386008944091877

`A035182(4*n+2)`
-/

namespace A397518.P2570386008944091877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035182 (4 * n + 2)

end

end A397518.P2570386008944091877

namespace A397518

/-- `A035182(4*n+2)` -/
def P2570386008944091877.Spec : Prop :=
  ∀ n, P2570386008944091877.a n = A397518 n

end A397518

/-! ## A397518.P4707266767804390939

`A233431(8*n+4)`
-/

namespace A397518.P4707266767804390939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233431 (8 * n + 4)

end

end A397518.P4707266767804390939

namespace A397518

/-- `A233431(8*n+4)` -/
def P4707266767804390939.Spec : Prop :=
  ∀ n, P4707266767804390939.a n = A397518 n

end A397518

/-! ## A397518.P15234768203835813658

`2*A035162(Δ[n²])`
-/

namespace A397518.P15234768203835813658
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A035162 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A397518.P15234768203835813658

namespace A397518

/-- `2*A035162(Δ[n²])` -/
def P15234768203835813658.Spec : Prop :=
  ∀ n, P15234768203835813658.a n = A397518 n

end A397518

/-! ## A397518.P2270237679836331059

`2*A110399(Δ[n²])`
-/

namespace A397518.P2270237679836331059
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A110399 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A397518.P2270237679836331059

namespace A397518

/-- `2*A110399(Δ[n²])` -/
def P2270237679836331059.Spec : Prop :=
  ∀ n, P2270237679836331059.a n = A397518 n

end A397518

/-! ## A397518.P5642463223253765450

`2*A121454(Δ[n²])`
-/

namespace A397518.P5642463223253765450
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A121454 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A397518.P5642463223253765450

namespace A397518

/-- `2*A121454(Δ[n²])` -/
def P5642463223253765450.Spec : Prop :=
  ∀ n, P5642463223253765450.a n = A397518 n

end A397518

/-! ## A397518.P6816045096567429590

`dr(A002652(2*n+1))`
-/

namespace A397518.P6816045096567429590
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A002652 (2 * n + 1))

end

end A397518.P6816045096567429590

namespace A397518

/-- `dr(A002652(2*n+1))` -/
def P6816045096567429590.Spec : Prop :=
  ∀ n, (P6816045096567429590.a n : ℤ) = A397518 n

end A397518

/-! ## A397518.P14150608566308560829

`dr(A033719(2*n+1))`
-/

namespace A397518.P14150608566308560829
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A033719 (2 * n + 1))

end

end A397518.P14150608566308560829

namespace A397518

/-- `dr(A033719(2*n+1))` -/
def P14150608566308560829.Spec : Prop :=
  ∀ n, (P14150608566308560829.a n : ℤ) = A397518 n

end A397518

/-! ## A397518.P17932195576812252100

`A000143(2*n+1)%7`
-/

namespace A397518.P17932195576812252100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000143 (2 * n + 1)) 7

end

end A397518.P17932195576812252100

namespace A397518

/-- `A000143(2*n+1)%7` -/
def P17932195576812252100.Spec : Prop :=
  ∀ n, P17932195576812252100.a n = A397518 n

end A397518

/-! ## A397518.P10473087194302158306

`A004009(2*n+1)%7`
-/

namespace A397518.P10473087194302158306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004009 (2 * n + 1)) 7

end

end A397518.P10473087194302158306

namespace A397518

/-- `A004009(2*n+1)%7` -/
def P10473087194302158306.Spec : Prop :=
  ∀ n, P10473087194302158306.a n = A397518 n

end A397518

/-! ## A397518.P33916591518225768

`A004017(2*n+1)%7`
-/

namespace A397518.P33916591518225768
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A004017 (2 * n + 1)) 7

end

end A397518.P33916591518225768

namespace A397518

/-- `A004017(2*n+1)%7` -/
def P33916591518225768.Spec : Prop :=
  ∀ n, P33916591518225768.a n = A397518 n

end A397518

/-! ## A397518.P14774070764246067732

`A008427(2*n+1)%7`
-/

namespace A397518.P14774070764246067732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A008427 (2 * n + 1)) 7

end

end A397518.P14774070764246067732

namespace A397518

/-- `A008427(2*n+1)%7` -/
def P14774070764246067732.Spec : Prop :=
  ∀ n, P14774070764246067732.a n = A397518 n

end A397518

/-! ## A397518.P15747486421375183751

`A091986(2*n+1)%7`
-/

namespace A397518.P15747486421375183751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A091986 (2 * n + 1)) 7

end

end A397518.P15747486421375183751

namespace A397518

/-- `A091986(2*n+1)%7` -/
def P15747486421375183751.Spec : Prop :=
  ∀ n, P15747486421375183751.a n = A397518 n

end A397518

/-! ## A397518.P11709889007542283681

`A209454(2*n+1)%8`
-/

namespace A397518.P11709889007542283681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209454 (2 * n + 1)) 8

end

end A397518.P11709889007542283681

namespace A397518

/-- `A209454(2*n+1)%8` -/
def P11709889007542283681.Spec : Prop :=
  ∀ n, P11709889007542283681.a n = A397518 n

end A397518

/-! ## A397518.P12061147087184713499

`A209455(2*n+1)%8`
-/

namespace A397518.P12061147087184713499
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A209455 (2 * n + 1)) 8

end

end A397518.P12061147087184713499

namespace A397518

/-- `A209455(2*n+1)%8` -/
def P12061147087184713499.Spec : Prop :=
  ∀ n, P12061147087184713499.a n = A397518 n

end A397518

/-! ## A397518.P17639451282847789860

`A320153(2*n+1)%8`
-/

namespace A397518.P17639451282847789860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A320153 (2 * n + 1)) 8

end

end A397518.P17639451282847789860

namespace A397518

/-- `A320153(2*n+1)%8` -/
def P17639451282847789860.Spec : Prop :=
  ∀ n, P17639451282847789860.a n = A397518 n

end A397518

/-!
# A397524: Numbers k such that the sums of the digits of k^2, k^3 and k^4 coincide, excluding multiples of 10.

The programs for A397524, there is no canonical definition to state claims against.
-/

/-! ## A397524.P9182949463461649419

`A176760(A299205(n+1))`
-/

namespace A397524.P9182949463461649419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176760 (A299205 (n + 1)).toNat

end

end A397524.P9182949463461649419

/-!
# A397535: a(n) = Sum_{k=0..n} binomial(n+3*k-4,k).

The programs for A397535, there is no canonical definition to state claims against.
-/

/-! ## A397535.P15042804780100794015

`A326847(A366089(n))-A109449(n+3)`
-/

namespace A397535.P15042804780100794015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326847 (A366089 n).toNat - A109449 (n + 3)

end

end A397535.P15042804780100794015

/-!
# A397547: a(n) = numerator of A069835(n)/2^n.

The programs for A397547, there is no canonical definition to state claims against.
-/

/-! ## A397547.P3860126261213593891

`A006530(A069835(n))`
-/

namespace A397547.P3860126261213593891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (A069835 n).toNat

end

end A397547.P3860126261213593891

/-! ## A397547.P3642898359348288459

`A033677(lcm(1+n%2, A069835(n)))`
-/

namespace A397547.P3642898359348288459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (Int.lcm ((1 + n % 2 : ℕ) : ℤ) (A069835 n))

end

end A397547.P3642898359348288459

/-!
# A397549: Multiplicative with a(p^e) = (e+1)^2*(e+2)/2.

The programs for A397549, the canonical program `A397549.P9260473788895763969` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397549 has offset 1).

The definition of A397549 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397549.P9260473788895763969

`∑{d}[n+1, A061391(#)]`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A397549

/-- `∑{d}[n+1, A061391(#)]` -/
def P9260473788895763969.Spec : Prop :=
  ∀ n, P9260473788895763969.a n = A397549 (n + 1)

theorem P9260473788895763969.correct : P9260473788895763969.Spec := by
  intro n
  simp only [A397549, Nat.add_sub_cancel]

end A397549

/-! ## A397549.P4725918527004377691

`A000005(n+1)*A007425(n+1)`
-/

namespace A397549.P4725918527004377691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) * A007425 (n + 1)

end

end A397549.P4725918527004377691

namespace A397549

/-- `A000005(n+1)*A007425(n+1)` -/
def P4725918527004377691.Spec : Prop :=
  ∀ n, P4725918527004377691.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P8677038116113536780

`A129628(n+1)*A133700(n+1)`
-/

namespace A397549.P8677038116113536780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129628 (n + 1) * A133700 (n + 1)

end

end A397549.P8677038116113536780

namespace A397549

/-- `A129628(n+1)*A133700(n+1)` -/
def P8677038116113536780.Spec : Prop :=
  ∀ n, P8677038116113536780.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P1067316274138174665

`∑{d}[n+1, A007425(#)*A074816((n+1)/#)]`
-/

namespace A397549.P1067316274138174665
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007425 d * A074816 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397549.P1067316274138174665

namespace A397549

/-- `∑{d}[n+1, A007425(#)*A074816((n+1)/#)]` -/
def P1067316274138174665.Spec : Prop :=
  ∀ n, P1067316274138174665.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P11410058952401933897

`∑{d}[n+1, A007426(#)*A074823((n+1)/#)]`
-/

namespace A397549.P11410058952401933897
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A007426 d * A074823 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397549.P11410058952401933897

namespace A397549

/-- `∑{d}[n+1, A007426(#)*A074823((n+1)/#)]` -/
def P11410058952401933897.Spec : Prop :=
  ∀ n, P11410058952401933897.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P2092011785493305100

`∑{d}[n+1, A035116(#)*A055076((n+1)/#)]`
-/

namespace A397549.P2092011785493305100
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A035116 d * A055076 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397549.P2092011785493305100

namespace A397549

/-- `∑{d}[n+1, A035116(#)*A055076((n+1)/#)]` -/
def P2092011785493305100.Spec : Prop :=
  ∀ n, P2092011785493305100.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P7920903434052824597

`∑{d}[n+1, A062367(#)*A162511((n+1)/#)]`
-/

namespace A397549.P7920903434052824597
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A062367 d * A162511 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A397549.P7920903434052824597

namespace A397549

/-- `∑{d}[n+1, A062367(#)*A162511((n+1)/#)]` -/
def P7920903434052824597.Spec : Prop :=
  ∀ n, P7920903434052824597.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P13409674903587923370

`(A006218(n+1)-A006218(n))*A007425(n+1)`
-/

namespace A397549.P13409674903587923370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A006218 (n + 1) - A006218 n) * A007425 (n + 1)

end

end A397549.P13409674903587923370

namespace A397549

/-- `(A006218(n+1)-A006218(n))*A007425(n+1)` -/
def P13409674903587923370.Spec : Prop :=
  ∀ n, P13409674903587923370.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P14692648388183358153

`A007425(n+1)+A007425(n+1)*A032741(n+1)`
-/

namespace A397549.P14692648388183358153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) + A007425 (n + 1) * A032741 (n + 1)

end

end A397549.P14692648388183358153

namespace A397549

/-- `A007425(n+1)+A007425(n+1)*A032741(n+1)` -/
def P14692648388183358153.Spec : Prop :=
  ∀ n, P14692648388183358153.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P4254043678098123506

`(A238952(n+1)+A000005(n+1))*A000005(n+1)`
-/

namespace A397549.P4254043678098123506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A238952 (n + 1) + A000005 (n + 1)) * A000005 (n + 1)

end

end A397549.P4254043678098123506

namespace A397549

/-- `(A238952(n+1)+A000005(n+1))*A000005(n+1)` -/
def P4254043678098123506.Spec : Prop :=
  ∀ n, P4254043678098123506.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P12955331840411429714

`(A007429(n+1)-A069913(n+1))*A000005(n+1)`
-/

namespace A397549.P12955331840411429714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007429 (n + 1) - A069913 (n + 1)) * A000005 (n + 1)

end

end A397549.P12955331840411429714

namespace A397549

/-- `(A007429(n+1)-A069913(n+1))*A000005(n+1)` -/
def P12955331840411429714.Spec : Prop :=
  ∀ n, P12955331840411429714.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P459891645678990060

`(A007425(n+1)-A238952(n+1))*A007425(n+1)`
-/

namespace A397549.P459891645678990060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) - A238952 (n + 1)) * A007425 (n + 1)

end

end A397549.P459891645678990060

namespace A397549

/-- `(A007425(n+1)-A238952(n+1))*A007425(n+1)` -/
def P459891645678990060.Spec : Prop :=
  ∀ n, P459891645678990060.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P12434408451056919941

`A007425(n+1)*A183063(2*(n+1))`
-/

namespace A397549.P12434408451056919941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007425 (n + 1) * A183063 (2 * (n + 1))

end

end A397549.P12434408451056919941

namespace A397549

/-- `A007425(n+1)*A183063(2*(n+1))` -/
def P12434408451056919941.Spec : Prop :=
  ∀ n, P12434408451056919941.a n = A397549 (n + 1)

end A397549

/-! ## A397549.P4149888333814323187

`A007425(n+1)/A066843(n)*A066843(n+1)`
-/

namespace A397549.P4149888333814323187
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A007425 (n + 1) : ℚ) / (A066843 n : ℚ) * (A066843 (n + 1) : ℚ)

end

end A397549.P4149888333814323187

namespace A397549

/-- `A007425(n+1)/A066843(n)*A066843(n+1)` -/
def P4149888333814323187.Spec : Prop :=
  ∀ n, P4149888333814323187.a n = (A397549 (n + 1) : ℚ)

end A397549

/-!
# A397556: Sequence where k is appended after every k^3 occurrences of 1, with multiple values following a 1 listed in order.

The programs for A397556, there is no canonical definition to state claims against.
-/

/-! ## A397556.P1600949138481421178

`gcd(A210840(n), A260534(n))`
-/

namespace A397556.P1600949138481421178
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A210840 n) (A260534 n)

end

end A397556.P1600949138481421178

/-! ## A397556.P17251059715309113066

`gcd(A082014(A186020(n)), A306245(n))`
-/

namespace A397556.P17251059715309113066
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A082014 (A186020 n).toNat) (A306245 n)

end

end A397556.P17251059715309113066

/-! ## A397556.P11265753647106676050

`gcd(A115571(n+1), A124766(A156242(n+1)))`
-/

namespace A397556.P11265753647106676050
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A115571 (n + 1)) (A124766 (A156242 (n + 1)).toNat)

end

end A397556.P11265753647106676050

/-! ## A397556.P12679811073467291886

`gcd(A030717(A000040(n+1)), A124766(3*(n+1)))`
-/

namespace A397556.P12679811073467291886
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A030717 (A000040 (n + 1)).toNat) (A124766 (3 * (n + 1)))

end

end A397556.P12679811073467291886

/-! ## A397556.P4712993753319584473

`A115571(A115580(3*n+1)%A115570(n+1)+1+n)`
-/

namespace A397556.P4712993753319584473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115571 (Int.tmod (A115580 (3 * n + 1)) (A115570 (n + 1)) + 1 + (n : ℤ)).toNat

end

end A397556.P4712993753319584473

/-!
# A397560: a(n) = ceiling(8*n/7) + [n == 6 (mod 7)].

The programs for A397560, the canonical program `A397560.P10315512801496396410` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397560 has offset 0).

The definition of A397560 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397560.P10315512801496396410

`a(n-1)+a(n-7)-a(n-8)` with `a(0)=0, a(1)=2, a(2)=3, a(3)=4, a(4)=5, a(5)=6, a(6)=8, a(7)=8`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397560

/-- `a(n-1)+a(n-7)-a(n-8)` -/
def P10315512801496396410.Spec : Prop :=
  ∀ n, P10315512801496396410.a n = A397560 n

theorem P10315512801496396410.correct : P10315512801496396410.Spec := by
  intro n
  simp only [A397560]

end A397560

/-! ## A397560.P17168383605971693075

`Δ[floor((2*n)²/7)]`
-/

namespace A397560.P17168383605971693075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((2 * n) ^ 2 : ℚ) / 7⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A397560.P17168383605971693075

namespace A397560

/-- `Δ[floor((2*n)²/7)]` -/
def P17168383605971693075.Spec : Prop :=
  ∀ n, P17168383605971693075.a n = A397560 n

end A397560

/-! ## A397560.P7107097623747758836

`gcd(4, a(n-1))%3+a(n-2)+1` with `a(0)=0, a(1)=2`
-/

namespace A397560.P7107097623747758836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0, 2] fun n a =>
  Nat.gcd 4 (a (n - 1)) % 3 + (a (n - 2) + 1)

end

end A397560.P7107097623747758836

namespace A397560

/-- `gcd(4, a(n-1))%3+a(n-2)+1` -/
def P7107097623747758836.Spec : Prop :=
  ∀ n, (P7107097623747758836.a n : ℤ) = A397560 n

end A397560

/-! ## A397560.P15181178583416939167

`A109720(n)+A047595(n+1)`
-/

namespace A397560.P15181178583416939167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109720 n + A047595 (n + 1)

end

end A397560.P15181178583416939167

namespace A397560

/-- `A109720(n)+A047595(n+1)` -/
def P15181178583416939167.Spec : Prop :=
  ∀ n, P15181178583416939167.a n = A397560 n

end A397560

/-! ## A397560.P1531750408306295137

`Δ[A251418(n)]+n`
-/

namespace A397560.P1531750408306295137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A251418 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + (n : ℤ)

end

end A397560.P1531750408306295137

namespace A397560

/-- `Δ[A251418(n)]+n` -/
def P1531750408306295137.Spec : Prop :=
  ∀ n, P1531750408306295137.a n = A397560 n

end A397560

/-! ## A397560.P9291748838362540284

`A099479(A060107(n+1))`
-/

namespace A397560.P9291748838362540284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A060107 (n + 1)).toNat

end

end A397560.P9291748838362540284

namespace A397560

/-- `A099479(A060107(n+1))` -/
def P9291748838362540284.Spec : Prop :=
  ∀ n, P9291748838362540284.a n = A397560 n

end A397560

/-! ## A397560.P12263304422281722043

`A099479(A083028(n+1))`
-/

namespace A397560.P12263304422281722043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099479 (A083028 (n + 1)).toNat

end

end A397560.P12263304422281722043

namespace A397560

/-- `A099479(A083028(n+1))` -/
def P12263304422281722043.Spec : Prop :=
  ∀ n, P12263304422281722043.a n = A397560 n

end A397560

/-! ## A397560.P8216438859640868710

`A004523(A082977(n+2))`
-/

namespace A397560.P8216438859640868710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A082977 (n + 2)).toNat

end

end A397560.P8216438859640868710

namespace A397560

/-- `A004523(A082977(n+2))` -/
def P8216438859640868710.Spec : Prop :=
  ∀ n, P8216438859640868710.a n = A397560 n

end A397560

/-! ## A397560.P18254614814528820881

`A004523(A083034(n+2))`
-/

namespace A397560.P18254614814528820881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A083034 (n + 2)).toNat

end

end A397560.P18254614814528820881

namespace A397560

/-- `A004523(A083034(n+2))` -/
def P18254614814528820881.Spec : Prop :=
  ∀ n, P18254614814528820881.a n = A397560 n

end A397560

/-! ## A397560.P3181598646391690081

`A004523(A057359(n+1)+n+1)`
-/

namespace A397560.P3181598646391690081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (A057359 (n + 1) + (n + 1 : ℤ)).toNat

end

end A397560.P3181598646391690081

namespace A397560

/-- `A004523(A057359(n+1)+n+1)` -/
def P3181598646391690081.Spec : Prop :=
  ∀ n, P3181598646391690081.a n = A397560 n

end A397560

/-! ## A397560.P11002711219124969055

`A004523(2*n+1-A057356(n))`
-/

namespace A397560.P11002711219124969055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 ((2 * n + 1 : ℤ) - A057356 n).toNat

end

end A397560.P11002711219124969055

namespace A397560

/-- `A004523(2*n+1-A057356(n))` -/
def P11002711219124969055.Spec : Prop :=
  ∀ n, P11002711219124969055.a n = A397560 n

end A397560

/-! ## A397560.P5762778800098009694

`A302255(2*n)`
-/

namespace A397560.P5762778800098009694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302255 (2 * n)

end

end A397560.P5762778800098009694

namespace A397560

/-- `A302255(2*n)` -/
def P5762778800098009694.Spec : Prop :=
  ∀ n, P5762778800098009694.a n = A397560 n

end A397560

/-! ## A397560.P16902301751792840688

`2*n-A057355(A057359(2*n))`
-/

namespace A397560.P16902301751792840688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n : ℤ) - A057355 (A057359 (2 * n)).toNat

end

end A397560.P16902301751792840688

namespace A397560

/-- `2*n-A057355(A057359(2*n))` -/
def P16902301751792840688.Spec : Prop :=
  ∀ n, P16902301751792840688.a n = A397560 n

end A397560

/-! ## A397560.P10758495574136251781

`A090223(2*n+1-A057356(2*n+1))`
-/

namespace A397560.P10758495574136251781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090223 ((2 * n + 1 : ℤ) - A057356 (2 * n + 1)).toNat

end

end A397560.P10758495574136251781

namespace A397560

/-- `A090223(2*n+1-A057356(2*n+1))` -/
def P10758495574136251781.Spec : Prop :=
  ∀ n, P10758495574136251781.a n = A397560 n

end A397560

/-! ## A397560.P2293928263259036500

`A173711(A310372(n+1))`
-/

namespace A397560.P2293928263259036500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (A310372 (n + 1)).toNat

end

end A397560.P2293928263259036500

namespace A397560

/-- `A173711(A310372(n+1))` -/
def P2293928263259036500.Spec : Prop :=
  ∀ n, P2293928263259036500.a n = A397560 n

end A397560

/-! ## A397560.P16710837921386549192

`A173711(A313046(n+1))`
-/

namespace A397560.P16710837921386549192
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (A313046 (n + 1)).toNat

end

end A397560.P16710837921386549192

namespace A397560

/-- `A173711(A313046(n+1))` -/
def P16710837921386549192.Spec : Prop :=
  ∀ n, P16710837921386549192.a n = A397560 n

end A397560

/-! ## A397560.P17518763775557391929

`A173711(A313051(n+1))`
-/

namespace A397560.P17518763775557391929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (A313051 (n + 1)).toNat

end

end A397560.P17518763775557391929

namespace A397560

/-- `A173711(A313051(n+1))` -/
def P17518763775557391929.Spec : Prop :=
  ∀ n, P17518763775557391929.a n = A397560 n

end A397560

/-! ## A397560.P9323372524422014240

`A173711(A313487(n+1))`
-/

namespace A397560.P9323372524422014240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (A313487 (n + 1)).toNat

end

end A397560.P9323372524422014240

namespace A397560

/-- `A173711(A313487(n+1))` -/
def P9323372524422014240.Spec : Prop :=
  ∀ n, P9323372524422014240.a n = A397560 n

end A397560

/-! ## A397560.P10605673136430403844

`A173711(A314838(n+1))`
-/

namespace A397560.P10605673136430403844
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173711 (A314838 (n + 1)).toNat

end

end A397560.P10605673136430403844

namespace A397560

/-- `A173711(A314838(n+1))` -/
def P10605673136430403844.Spec : Prop :=
  ∀ n, P10605673136430403844.a n = A397560 n

end A397560

/-! ## A397560.P6788884583548970060

`A313046(2*n+1)%(2*n+1)`
-/

namespace A397560.P6788884583548970060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A313046 (2 * n + 1)) (2 * n + 1 : ℤ)

end

end A397560.P6788884583548970060

namespace A397560

/-- `A313046(2*n+1)%(2*n+1)` -/
def P6788884583548970060.Spec : Prop :=
  ∀ n, P6788884583548970060.a n = A397560 n

end A397560

/-!
# A397566: a(0) = 0; for n >= 1, a(n) is the smallest number whose Hamming distance from a(n-1) is n^2.

The programs for A397566, there is no canonical definition to state claims against.
-/

/-! ## A397566.P5903795297478422306

`2^n²-(a(n-1)+1)` with `a(0)=0`
-/

namespace A397566.P5903795297478422306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 ^ n ^ 2 : ℤ) - (a (n - 1) + 1)

end

end A397566.P5903795297478422306

/-! ## A397566.P8003808941681725323

`2^n²-1-a(n-1)` with `a(0)=0`
-/

namespace A397566.P8003808941681725323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (2 ^ n ^ 2 : ℤ) - 1 - a (n - 1)

end

end A397566.P8003808941681725323

/-! ## A397566.P15271797234362063325

`(2^n)^n-a(n-1)-1` with `a(0)=0`
-/

namespace A397566.P15271797234362063325
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  ((2 ^ n) ^ n : ℤ) - a (n - 1) - 1

end

end A397566.P15271797234362063325

/-!
# A397569: a(1) = 0; for n >= 2, a(n) is the smallest number whose Hamming distance from a(n-1) is Fibonacci(n).

The programs for A397569, there is no canonical definition to state claims against.
-/

/-! ## A397569.P15249698828715472073

`A000225(A000045(n+1))-a(n-1)` with `a(0)=0`
-/

namespace A397569.P15249698828715472073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A000225 (A000045 (n + 1)).toNat - a (n - 1)

end

end A397569.P15249698828715472073

/-! ## A397569.P5247132758126002479

`A223893(A150395(n))`
-/

namespace A397569.P5247132758126002479
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A223893 (A150395 n).toNat

end

end A397569.P5247132758126002479

/-!
# A397574: Numbers m such that rad(m)^omega(m) = m.

The programs for A397574, the canonical program `A397574.P946471567119300380` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397574 has offset 1).

The definition of A397574 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1260 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A397574.P131674958481631238

`∩[A072774(n+1), A212166(n+1)]`
-/

namespace A397574.P131674958481631238
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072774 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A397574.P131674958481631238

namespace A397574

/-- `∩[A072774(n+1), A212166(n+1)]` -/
def P131674958481631238.Spec : Prop :=
  ∀ n, (P131674958481631238.a n : ℤ) = A397574 (n + 1)

end A397574

/-! ## A397574.P2515519696245753583

`filter[A336223(n+1), A174897(#)]`
-/

namespace A397574.P2515519696245753583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336223 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P2515519696245753583

namespace A397574

/-- `filter[A336223(n+1), A174897(#)]` -/
def P2515519696245753583.Spec : Prop :=
  ∀ n, P2515519696245753583.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P5665404416871843071

`filter[A336224(n+1), A174897(#)]`
-/

namespace A397574.P5665404416871843071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336224 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P5665404416871843071

namespace A397574

/-- `filter[A336224(n+1), A174897(#)]` -/
def P5665404416871843071.Spec : Prop :=
  ∀ n, P5665404416871843071.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P141338623199964328

`filter[A389499(n+1), A174897(#)]`
-/

namespace A397574.P141338623199964328
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389499 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P141338623199964328

namespace A397574

/-- `filter[A389499(n+1), A174897(#)]` -/
def P141338623199964328.Spec : Prop :=
  ∀ n, P141338623199964328.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P4306472129912705575

`filter[A004709(n+1), A174897(#)]`
-/

namespace A397574.P4306472129912705575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004709 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P4306472129912705575

namespace A397574

/-- `filter[A004709(n+1), A174897(#)]` -/
def P4306472129912705575.Spec : Prop :=
  ∀ n, P4306472129912705575.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P17433606257388952621

`filter[A138302(n+1), A174897(#)]`
-/

namespace A397574.P17433606257388952621
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138302 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P17433606257388952621

namespace A397574

/-- `filter[A138302(n+1), A174897(#)]` -/
def P17433606257388952621.Spec : Prop :=
  ∀ n, P17433606257388952621.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P11602146512806345489

`filter[A270428(n+1), A174897(#)]`
-/

namespace A397574.P11602146512806345489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270428 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P11602146512806345489

namespace A397574

/-- `filter[A270428(n+1), A174897(#)]` -/
def P11602146512806345489.Spec : Prop :=
  ∀ n, P11602146512806345489.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P7520386025885330569

`filter[A212167(n+1), A174897(#)]`
-/

namespace A397574.P7520386025885330569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212167 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P7520386025885330569

namespace A397574

/-- `filter[A212167(n+1), A174897(#)]` -/
def P7520386025885330569.Spec : Prop :=
  ∀ n, P7520386025885330569.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P10969711377822180935

`filter[A361395(n+1), A174897(#)]`
-/

namespace A397574.P10969711377822180935
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361395 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P10969711377822180935

namespace A397574

/-- `filter[A361395(n+1), A174897(#)]` -/
def P10969711377822180935.Spec : Prop :=
  ∀ n, P10969711377822180935.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P5672641948099071220

`filter[A390538(n+1), A174897(#)]`
-/

namespace A397574.P5672641948099071220
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A390538 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P5672641948099071220

namespace A397574

/-- `filter[A390538(n+1), A174897(#)]` -/
def P5672641948099071220.Spec : Prop :=
  ∀ n, P5672641948099071220.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P946471567119300380

`eq[n-1, ∑{e}[n, (n-1)/#]]`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397574

/-- `eq[n-1, ∑{e}[n, (n-1)/#]]` -/
def P946471567119300380.Spec : Prop :=
  ∀ n, (P946471567119300380.a n : ℤ) = A397574 (n + 1)

theorem P946471567119300380.correct : P946471567119300380.Spec := by
  intro n
  simp only [A397574, Nat.add_sub_cancel]

end A397574

/-! ## A397574.P14777909790766830241

`filter[A362854(n+1), A174897(#)]`
-/

namespace A397574.P14777909790766830241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A362854 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P14777909790766830241

namespace A397574

/-- `filter[A362854(n+1), A174897(#)]` -/
def P14777909790766830241.Spec : Prop :=
  ∀ n, P14777909790766830241.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P10926827679945999388

`filter[A363331(n+1), A174897(#)]`
-/

namespace A397574.P10926827679945999388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363331 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P10926827679945999388

namespace A397574

/-- `filter[A363331(n+1), A174897(#)]` -/
def P10926827679945999388.Spec : Prop :=
  ∀ n, P10926827679945999388.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P3760876259358247957

`filter[A363334(n+1), A174897(#)]`
-/

namespace A397574.P3760876259358247957
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363334 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A174897 (f1 j).toNat = 1) n)

end

end A397574.P3760876259358247957

namespace A397574

/-- `filter[A363334(n+1), A174897(#)]` -/
def P3760876259358247957.Spec : Prop :=
  ∀ n, P3760876259358247957.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P11957879837134722312

`filter[A212166(n+1), A384667(#)]`
-/

namespace A397574.P11957879837134722312
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212166 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A384667 (f1 j).toNat = 1) n)

end

end A397574.P11957879837134722312

namespace A397574

/-- `filter[A212166(n+1), A384667(#)]` -/
def P11957879837134722312.Spec : Prop :=
  ∀ n, P11957879837134722312.a n = A397574 (n + 1)

end A397574

/-! ## A397574.P5397614491872268933

`filter[A174895(n+1), A212793(#)]`
-/

namespace A397574.P5397614491872268933
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A174895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A212793 (f1 j).toNat = 1) n)

end

end A397574.P5397614491872268933

namespace A397574

/-- `filter[A174895(n+1), A212793(#)]` -/
def P5397614491872268933.Spec : Prop :=
  ∀ n, P5397614491872268933.a n = A397574 (n + 1)

end A397574

/-!
# A397579: a(n) = (4*Fibonacci(n) + Fibonacci(n+1))*Fibonacci(n+1)^3.

The programs for A397579, the canonical program `A397579.P6571007466307689133` is in `Seq.B002.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397579 has offset 0).

The definition of A397579 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397579.P6571007466307689133

`A022095(n)*A056570(n+1)`

The canonical program, it is in `Seq.B002.C006`.
-/

namespace A397579

/-- `A022095(n)*A056570(n+1)` -/
def P6571007466307689133.Spec : Prop :=
  ∀ n, P6571007466307689133.a n = A397579 n

theorem P6571007466307689133.correct : P6571007466307689133.Spec := by
  intro n
  simp only [A397579]

end A397579

/-! ## A397579.P17065417241692011152

`(A007598(n)+A002878(n))*A007598(n+1)`
-/

namespace A397579.P17065417241692011152
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A007598 n + A002878 n) * A007598 (n + 1)

end

end A397579.P17065417241692011152

namespace A397579

/-- `(A007598(n)+A002878(n))*A007598(n+1)` -/
def P17065417241692011152.Spec : Prop :=
  ∀ n, P17065417241692011152.a n = A397579 n

end A397579

/-! ## A397579.P1939793766367328379

`A003482(n)+A226205(n+1)*A226205(n+1)`
-/

namespace A397579.P1939793766367328379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003482 n + A226205 (n + 1) * A226205 (n + 1)

end

end A397579.P1939793766367328379

namespace A397579

/-- `A003482(n)+A226205(n+1)*A226205(n+1)` -/
def P1939793766367328379.Spec : Prop :=
  ∀ n, P1939793766367328379.a n = A397579 n

end A397579

/-!
# A397580: a(n) = n*A122649(n) = n*((2*n - 1)!! - (2*n - 2)!!).

The programs for A397580, the canonical program `A397580.P8035210197760338808` is in `Seq.B001.C010`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397580 has offset 1).

The definition of A397580 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397580.P8035210197760338808

`(n+1)*A122649(n+1)`

The canonical program, it is in `Seq.B001.C010`.
-/

namespace A397580

/-- `(n+1)*A122649(n+1)` -/
def P8035210197760338808.Spec : Prop :=
  ∀ n, P8035210197760338808.a n = A397580 (n + 1)

theorem P8035210197760338808.correct : P8035210197760338808.Spec := by
  intro n
  simp only [A397580, Nat.add_sub_cancel]

end A397580

/-! ## A397580.P14840329244881046534

`A001879(n)-A002866(n+1)`
-/

namespace A397580.P14840329244881046534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001879 n - A002866 (n + 1)

end

end A397580.P14840329244881046534

namespace A397580

/-- `A001879(n)-A002866(n+1)` -/
def P14840329244881046534.Spec : Prop :=
  ∀ n, P14840329244881046534.a n = A397580 (n + 1)

end A397580

/-! ## A397580.P3189704687265379156

`A396954(n+1)+2*A035101(n+1)`
-/

namespace A397580.P3189704687265379156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A396954 (n + 1) + 2 * A035101 (n + 1)

end

end A397580.P3189704687265379156

namespace A397580

/-- `A396954(n+1)+2*A035101(n+1)` -/
def P3189704687265379156.Spec : Prop :=
  ∀ n, P3189704687265379156.a n = A397580 (n + 1)

end A397580

/-! ## A397580.P3269357904586643504

`(n+1)*(2*(n+1)-1)*a(n-1)/n+(n+1)*2^(n-1)*(n-1)!` with `a(0)=0`
-/

namespace A397580.P3269357904586643504
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0] fun n a =>
  ((n + 1 : ℤ) * ((2 * (n + 1) : ℤ) - 1) : ℚ) * a (n - 1) / (n : ℚ) + (n + 1 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) * (Nat.factorial ((n : ℤ) - 1).toNat : ℚ)

end

end A397580.P3269357904586643504

namespace A397580

/-- `(n+1)*(2*(n+1)-1)*a(n-1)/n+(n+1)*2^(n-1)*(n-1)!` -/
def P3269357904586643504.Spec : Prop :=
  ∀ n, P3269357904586643504.a n = (A397580 (n + 1) : ℚ)

end A397580

/-! ## A397580.P18278396548003797895

`(2*(n+1))!/(2^(n+1)*n!)-2^n*(n+1)!`
-/

namespace A397580.P18278396548003797895
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.factorial (2 * (n + 1)) : ℚ) / (2 ^ (n + 1) * Nat.factorial n : ℚ) - (2 ^ n * Nat.factorial (n + 1) : ℚ)

end

end A397580.P18278396548003797895

namespace A397580

/-- `(2*(n+1))!/(2^(n+1)*n!)-2^n*(n+1)!` -/
def P18278396548003797895.Spec : Prop :=
  ∀ n, P18278396548003797895.a n = (A397580 (n + 1) : ℚ)

end A397580

/-!
# A397582: Number of ways to tile a 2 X n strip with squares, dominoes, and T-shaped tetrominoes.

The programs for A397582, the canonical program `A397582.P4468427538435157681` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397582 has offset 0).

The definition of A397582 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397582.P4468427538435157681

`3*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=1, a(1)=2, a(2)=7, a(3)=24`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397582

/-- `3*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P4468427538435157681.Spec : Prop :=
  ∀ n, P4468427538435157681.a n = A397582 n

theorem P4468427538435157681.correct : P4468427538435157681.Spec := by
  intro n
  simp only [A397582]

end A397582

/-! ## A397582.P13864977030474514288

`ogf((1-x-x^2)/(1-3x-2x^2+x^3+x^4))`
-/

namespace A397582.P13864977030474514288
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -1] [1, -3, -2, 1, 1] n

end

end A397582.P13864977030474514288

namespace A397582

/-- `ogf((1-x-x^2)/(1-3x-2x^2+x^3+x^4))` -/
def P13864977030474514288.Spec : Prop :=
  ∀ n, P13864977030474514288.a n = A397582 n

end A397582

/-!
# A397583: Number of ways to tile a 2 X n strip with one corner missing, using squares, dominoes, and T-shaped tetrominoes.

The programs for A397583, the canonical program `A397583.P3242268447449069761` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397583 has offset 0).

The definition of A397583 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397583.P3242268447449069761

`3*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` with `a(0)=0, a(1)=1, a(2)=3, a(3)=11`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397583

/-- `3*a(n-1)+2*a(n-2)-a(n-3)-a(n-4)` -/
def P3242268447449069761.Spec : Prop :=
  ∀ n, P3242268447449069761.a n = A397583 n

theorem P3242268447449069761.correct : P3242268447449069761.Spec := by
  intro n
  simp only [A397583]

end A397583

/-! ## A397583.P14583695297127086039

`a(n-1)+a(n-2)+A397582(n-1)` with `a(0)=0, a(1)=1`
-/

namespace A397583.P14583695297127086039
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  a (n - 1) + a (n - 2) + A397582 (n - 1)

end

end A397583.P14583695297127086039

namespace A397583

/-- `a(n-1)+a(n-2)+A397582(n-1)` -/
def P14583695297127086039.Spec : Prop :=
  ∀ n, P14583695297127086039.a n = A397583 n

end A397583

/-! ## A397583.P2633455001415476764

`ogf(x/(1-3x-2x^2+x^3+x^4))`
-/

namespace A397583.P2633455001415476764
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1] [1, -3, -2, 1, 1] n

end

end A397583.P2633455001415476764

namespace A397583

/-- `ogf(x/(1-3x-2x^2+x^3+x^4))` -/
def P2633455001415476764.Spec : Prop :=
  ∀ n, P2633455001415476764.a n = A397583 n

end A397583

/-!
# A397586: Number of ways to tile a strip of length n with tiles of length equivalent to 1,3,4, or 5 (mod 6).

The programs for A397586, the canonical program `A397586.P9518495705406750429` is in `Seq.B000.C039`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A397586 has offset 0).

The definition of A397586 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A397586.P9518495705406750429

`a(n-1)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` with `a(0)=1, a(1)=1, a(2)=1, a(3)=2, a(4)=4, a(5)=7, a(6)=11`

The canonical program, it is in `Seq.B000.C039`.
-/

namespace A397586

/-- `a(n-1)+a(n-3)+a(n-4)+a(n-5)+a(n-6)` -/
def P9518495705406750429.Spec : Prop :=
  ∀ n, (P9518495705406750429.a n : ℤ) = A397586 n

theorem P9518495705406750429.correct : P9518495705406750429.Spec := by
  intro n
  simp only [A397586]

end A397586

/-! ## A397586.P7678586252643289059

`A088141(A086581(n))`
-/

namespace A397586.P7678586252643289059
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A086581 n).toNat

end

end A397586.P7678586252643289059

namespace A397586

/-- `A088141(A086581(n))` -/
def P7678586252643289059.Spec : Prop :=
  ∀ n, P7678586252643289059.a n = A397586 n

end A397586

/-! ## A397586.P3756007411940407483

`A103128(A035079(n+1))`
-/

namespace A397586.P3756007411940407483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103128 (A035079 (n + 1)).toNat

end

end A397586.P3756007411940407483

namespace A397586

/-- `A103128(A035079(n+1))` -/
def P3756007411940407483.Spec : Prop :=
  ∀ n, P3756007411940407483.a n = A397586 n

end A397586

/-! ## A397586.P4239936343498382044

`A088141(A082582(n+1))`
-/

namespace A397586.P4239936343498382044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088141 (A082582 (n + 1)).toNat

end

end A397586.P4239936343498382044

namespace A397586

/-- `A088141(A082582(n+1))` -/
def P4239936343498382044.Spec : Prop :=
  ∀ n, P4239936343498382044.a n = A397586 n

end A397586

/-! ## A397586.P6154860370720390616

`A111654(A333105(n+1))`
-/

namespace A397586.P6154860370720390616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111654 (A333105 (n + 1)).toNat

end

end A397586.P6154860370720390616

namespace A397586

/-- `A111654(A333105(n+1))` -/
def P6154860370720390616.Spec : Prop :=
  ∀ n, P6154860370720390616.a n = A397586 n

end A397586

/-!
# A397591: G.f. A(x) satisfies [x^(n-1)] (1 - A(x))^n / (1 - n*x) = 0 for n > 1.

The programs for A397591, there is no canonical definition to state claims against.
-/

/-! ## A397591.P13966971464813399789

`abs(A397590(∑[n+1]))`
-/

namespace A397591.P13966971464813399789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A397590 (∑ j ∈ Finset.range (n + 1), f1 j)|

end

end A397591.P13966971464813399789

/-! ## A397591.P3411359589673030678

`A000035(A324195(2*n+3))-A397590(∑[n+1])`
-/

namespace A397591.P3411359589673030678
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A324195 (2 * n + 3)).toNat - A397590 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A397591.P3411359589673030678

/-!
# A397592: G.f. A(x) such that the sum of the first n coefficients in A(x/n)^n equals 2^(n-1) for n >= 1.

The programs for A397592, there is no canonical definition to state claims against.
-/

/-! ## A397592.P11111235031542507328

`A054353(A128026(n+1)-A000002(n+1))`
-/

namespace A397592.P11111235031542507328
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054353 (A128026 (n + 1) - A000002 (n + 1)).toNat

end

end A397592.P11111235031542507328

/-!
# A397597: a(n) = Sum_{k=0..n-1} A009963(n-1,k) * a(k) for n > 0, with a(0) = 1, where A009963(n,k) = F(n)/(F(k)*F(n-k)) and F(n) = Product_{k=0..n} k! is the superfactorial of n (A000178).

The programs for A397597, there is no canonical definition to state claims against.
-/

/-! ## A397597.P10312557828639340539

`A325555(A018072(n))`
-/

namespace A397597.P10312557828639340539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325555 (A018072 n).toNat

end

end A397597.P10312557828639340539

/-! ## A397597.P3097726631728602233

`A167865(lcm(n, A005805(n+1)))`
-/

namespace A397597.P3097726631728602233
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167865 (Int.lcm (n : ℤ) (A005805 (n + 1)))

end

end A397597.P3097726631728602233

