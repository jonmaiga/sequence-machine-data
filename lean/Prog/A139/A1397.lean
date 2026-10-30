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
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C040
import Seq.B000.C041
import Seq.B000.C043
import Seq.B000.C044
import Seq.B000.C045
import Seq.B000.C048
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
import Seq.B001.C013
import Seq.B001.C014
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
import Seq.Opaque.C015
import Seq.Opaque.C016
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C023

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A139700: Binomial transform of [1, 30, 30, 30, ...].

The programs for A139700, the canonical program `A139700.P14305388242412979496` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139700 has offset 1).

The definition of A139700 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139700.P14305388242412979496

`30*2^n-29`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139700

/-- `30*2^n-29` -/
def P14305388242412979496.Spec : Prop :=
  ∀ n, P14305388242412979496.a n = A139700 (n + 1)

theorem P14305388242412979496.correct : P14305388242412979496.Spec := by
  intro n
  simp only [A139700, Nat.add_sub_cancel]

end A139700

/-! ## A139700.P11076625707807152820

`ogf((1+28x)/(1-3x+2x^2))`
-/

namespace A139700.P11076625707807152820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 28] [1, -3, 2] n

end

end A139700.P11076625707807152820

namespace A139700

/-- `ogf((1+28x)/(1-3x+2x^2))` -/
def P11076625707807152820.Spec : Prop :=
  ∀ n, P11076625707807152820.a n = A139700 (n + 1)

end A139700

/-! ## A139700.P8106477976265929587

`∑[2*a(n-1)]` with `a(0)=1, a(1)=30`
-/

namespace A139700.P8106477976265929587
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1, 30] fun n f1 =>
  2 * f1 (n - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139700.P8106477976265929587

namespace A139700

/-- `∑[2*a(n-1)]` -/
def P8106477976265929587.Spec : Prop :=
  ∀ n, (P8106477976265929587.a n : ℤ) = A139700 (n + 1)

end A139700

/-! ## A139700.P10251114519356684151

`∑[gcd(15*2^n, floor(acot(n)))]`
-/

namespace A139700.P10251114519356684151
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (15 * 2 ^ n : ℤ) ⌊SequenceMachineLib.acot (n : ℝ)⌋

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139700.P10251114519356684151

namespace A139700

/-- `∑[gcd(15*2^n, floor(acot(n)))]` -/
def P10251114519356684151.Spec : Prop :=
  ∀ n, (P10251114519356684151.a n : ℤ) = A139700 (n + 1)

end A139700

/-! ## A139700.P13470738448147708731

`∑[a(n-1)/log2(sqrt(2))]` with `a(0)=1, a(1)=30`
-/

namespace A139700.P13470738448147708731
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [1, 30] fun n f1 =>
  f1 (n - 1) / Real.logb 2 (Real.sqrt (2 : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139700.P13470738448147708731

namespace A139700

/-- `∑[a(n-1)/log2(sqrt(2))]` -/
def P13470738448147708731.Spec : Prop :=
  ∀ n, P13470738448147708731.a n = (A139700 (n + 1) : ℝ)

end A139700

/-! ## A139700.P666244291115191026

`abs(29-A110286(n+1))`
-/

namespace A139700.P666244291115191026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |29 - A110286 (n + 1)|

end

end A139700.P666244291115191026

namespace A139700

/-- `abs(29-A110286(n+1))` -/
def P666244291115191026.Spec : Prop :=
  ∀ n, P666244291115191026.a n = A139700 (n + 1)

end A139700

/-! ## A139700.P4762538859291751905

`∑[gcd(A000038(n), A110286(n))]`
-/

namespace A139700.P4762538859291751905
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A110286 n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139700.P4762538859291751905

namespace A139700

/-- `∑[gcd(A000038(n), A110286(n))]` -/
def P4762538859291751905.Spec : Prop :=
  ∀ n, (P4762538859291751905.a n : ℤ) = A139700 (n + 1)

end A139700

/-! ## A139700.P17200605258733314999

`∑[A110286(n)%A207943(n+1)]`
-/

namespace A139700.P17200605258733314999
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A110286 n) (A207943 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139700.P17200605258733314999

namespace A139700

/-- `∑[A110286(n)%A207943(n+1)]` -/
def P17200605258733314999.Spec : Prop :=
  ∀ n, P17200605258733314999.a n = A139700 (n + 1)

end A139700

/-!
# A139701: Binomial transform of [1, 100, 100, 100, ...].

The programs for A139701, the canonical program `A139701.P13454018413338560680` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139701 has offset 1).

The definition of A139701 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139701.P13454018413338560680

`100*2^n-99`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139701

/-- `100*2^n-99` -/
def P13454018413338560680.Spec : Prop :=
  ∀ n, P13454018413338560680.a n = A139701 (n + 1)

theorem P13454018413338560680.correct : P13454018413338560680.Spec := by
  intro n
  simp only [A139701, Nat.add_sub_cancel]

end A139701

/-! ## A139701.P4838608496176314397

`ogf((1+98x)/(1-3x+2x^2))`
-/

namespace A139701.P4838608496176314397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 98] [1, -3, 2] n

end

end A139701.P4838608496176314397

namespace A139701

/-- `ogf((1+98x)/(1-3x+2x^2))` -/
def P4838608496176314397.Spec : Prop :=
  ∀ n, P4838608496176314397.a n = A139701 (n + 1)

end A139701

/-! ## A139701.P9188658344900294758

`∑[2*lcm(50, a(n-1))]` with `a(0)=1`
-/

namespace A139701.P9188658344900294758
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [1] fun n f1 =>
  2 * Nat.lcm 50 (f1 (n - 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139701.P9188658344900294758

namespace A139701

/-- `∑[2*lcm(50, a(n-1))]` -/
def P9188658344900294758.Spec : Prop :=
  ∀ n, (P9188658344900294758.a n : ℤ) = A139701 (n + 1)

end A139701

/-! ## A139701.P15867265318790893592

`4*(A139698(n+1)-3/4)`
-/

namespace A139701.P15867265318790893592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  4 * ((A139698 (n + 1) : ℚ) - (3 : ℚ) / 4)

end

end A139701.P15867265318790893592

namespace A139701

/-- `4*(A139698(n+1)-3/4)` -/
def P15867265318790893592.Spec : Prop :=
  ∀ n, P15867265318790893592.a n = (A139701 (n + 1) : ℚ)

theorem P15867265318790893592.correct : P15867265318790893592.Spec := by
  intro n
  simp only [A139701, Nat.add_sub_cancel, A139701.P15867265318790893592.a, A139701.P13454018413338560680.a, A139698, A139698.P268275234337463081.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139701

/-! ## A139701.P4887472660354404696

`or(1, A305165(n)-A182464(n))`
-/

namespace A139701.P4887472660354404696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A305165 n - A182464 n)

end

end A139701.P4887472660354404696

namespace A139701

/-- `or(1, A305165(n)-A182464(n))` -/
def P4887472660354404696.Spec : Prop :=
  ∀ n, P4887472660354404696.a n = A139701 (n + 1)

end A139701

/-! ## A139701.P8155291191689353167

`abs(A140062(n+1)-A000225(n))`
-/

namespace A139701.P8155291191689353167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A140062 (n + 1) - A000225 n|

end

end A139701.P8155291191689353167

namespace A139701

/-- `abs(A140062(n+1)-A000225(n))` -/
def P8155291191689353167.Spec : Prop :=
  ∀ n, P8155291191689353167.a n = A139701 (n + 1)

end A139701

/-! ## A139701.P2033092659685984891

`or(1, A140062(n+1)-A000079(n))`
-/

namespace A139701.P2033092659685984891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A140062 (n + 1) - A000079 n)

end

end A139701.P2033092659685984891

namespace A139701

/-- `or(1, A140062(n+1)-A000079(n))` -/
def P2033092659685984891.Spec : Prop :=
  ∀ n, P2033092659685984891.a n = A139701 (n + 1)

end A139701

/-! ## A139701.P6107293335412503128

`(A305264(n)-A305156(n))/7`
-/

namespace A139701.P6107293335412503128
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A305264 n - A305156 n : ℚ) / 7

end

end A139701.P6107293335412503128

namespace A139701

/-- `(A305264(n)-A305156(n))/7` -/
def P6107293335412503128.Spec : Prop :=
  ∀ n, P6107293335412503128.a n = (A139701 (n + 1) : ℚ)

theorem P6107293335412503128.correct : P6107293335412503128.Spec := by
  intro n
  simp only [A139701, Nat.add_sub_cancel, A139701.P6107293335412503128.a, A139701.P13454018413338560680.a, A305156, A305156.P11857093554120693516.a, A305264, A305264.P15962899439420010670.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A139701

/-! ## A139701.P10965162773510548813

`(17*A305270(n))%A305269(n)`
-/

namespace A139701.P10965162773510548813
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (17 * A305270 n) (A305269 n)

end

end A139701.P10965162773510548813

namespace A139701

/-- `(17*A305270(n))%A305269(n)` -/
def P10965162773510548813.Spec : Prop :=
  ∀ n, P10965162773510548813.a n = A139701 (n + 1)

end A139701

/-!
# A139702: G.f. satisfies: x = A( x + A(x)^2 ).

The programs for A139702, there is no canonical definition to state claims against.
-/

/-! ## A139702.P2644475825783852060

`A213591(n+1)/(-1)^n`
-/

namespace A139702.P2644475825783852060
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A213591 (n + 1) : ℚ) / ((-1) ^ n : ℚ)

end

end A139702.P2644475825783852060

/-! ## A139702.P12848192915821110176

`A213591(n+1)*A033999(n)`
-/

namespace A139702.P12848192915821110176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213591 (n + 1) * A033999 n

end

end A139702.P12848192915821110176

/-! ## A139702.P1311618857425507869

`A062157(n+1)*A213591(n+1)`
-/

namespace A139702.P1311618857425507869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062157 (n + 1) * A213591 (n + 1)

end

end A139702.P1311618857425507869

/-! ## A139702.P8158186674725580381

`A056594(2*n)*A213591(n+1)`
-/

namespace A139702.P8158186674725580381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056594 (2 * n) * A213591 (n + 1)

end

end A139702.P8158186674725580381

/-! ## A139702.P15997629443231265996

`A010892(3*n+1)*A213591(n+1)`
-/

namespace A139702.P15997629443231265996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010892 (3 * n + 1) * A213591 (n + 1)

end

end A139702.P15997629443231265996

/-! ## A139702.P11392043600792431339

`A010815(A000326(n))*A213591(n+1)`
-/

namespace A139702.P11392043600792431339
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010815 (A000326 n).toNat * A213591 (n + 1)

end

end A139702.P11392043600792431339

/-! ## A139702.P8722001413020035937

`A081729(A014105(n))*A213591(n+1)`
-/

namespace A139702.P8722001413020035937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081729 (A014105 n).toNat * A213591 (n + 1)

end

end A139702.P8722001413020035937

/-! ## A139702.P13038690470776374811

`A008683(A116570(n))*A213591(n+1)`
-/

namespace A139702.P13038690470776374811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A116570 n).toNat * A213591 (n + 1)

end

end A139702.P13038690470776374811

/-!
# A139703: Nonsquarefree positive integers k such that the largest prime power dividing k is prime.

The programs for A139703, there is no canonical definition to state claims against.
-/

/-! ## A139703.P5477300494434267053

`eq[A008683(n+1), A345952(n+1)]+1`
-/

namespace A139703.P5477300494434267053
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A345952 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A139703.P5477300494434267053

/-! ## A139703.P1011934948312192956

`filter[A122146(n+1), A065202(#)]`
-/

namespace A139703.P1011934948312192956
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A139703.P1011934948312192956

/-! ## A139703.P16745996011863930186

`filter[A122146(1+n), A087049(#)]`
-/

namespace A139703.P16745996011863930186
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A139703.P16745996011863930186

/-! ## A139703.P6853032952969814465

`filter[A122146(n+1), A355447(#)]`
-/

namespace A139703.P6853032952969814465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A139703.P6853032952969814465

/-! ## A139703.P9294166178823443660

`filter[A122146(n+1), A389905(#)]`
-/

namespace A139703.P9294166178823443660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A139703.P9294166178823443660

/-! ## A139703.P9965800713520917599

`∩[A013929(n+1), A122146(n+1)]`
-/

namespace A139703.P9965800713520917599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013929 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139703.P9965800713520917599

/-! ## A139703.P3368971955324786615

`∩[A049199(n+1), A122146(n+1)]`
-/

namespace A139703.P3368971955324786615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139703.P3368971955324786615

/-! ## A139703.P11085359386415542317

`∩[A051144(n+1), A122146(n+1)]`
-/

namespace A139703.P11085359386415542317
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051144 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139703.P11085359386415542317

/-! ## A139703.P9186360492051150461

`∩[A059404(n+1), A122146(n+1)]`
-/

namespace A139703.P9186360492051150461
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059404 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139703.P9186360492051150461

/-! ## A139703.P5760552209915233065

`∩[A065201(n+1), A122146(n+1)]`
-/

namespace A139703.P5760552209915233065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065201 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139703.P5760552209915233065

/-! ## A139703.P11572618342068690899

`∩[A080756(n+1), A122146(n+1)]`
-/

namespace A139703.P11572618342068690899
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080756 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139703.P11572618342068690899

/-! ## A139703.P6860372798224944740

`∩[A112769(n+1), A122146(n+1)]`
-/

namespace A139703.P6860372798224944740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112769 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139703.P6860372798224944740

/-! ## A139703.P14926515921483676872

`∩[A122146(n+1), A126706(n+1)]`
-/

namespace A139703.P14926515921483676872
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139703.P14926515921483676872

/-! ## A139703.P18249967451183036868

`∩[A122146(n+1), A162966(n+1)]`
-/

namespace A139703.P18249967451183036868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162966 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139703.P18249967451183036868

/-! ## A139703.P13235999064917957269

`∩[A255199(n+1), A122146(n+1)]`
-/

namespace A139703.P13235999064917957269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255199 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139703.P13235999064917957269

/-! ## A139703.P14674372028153452256

`∩[A122146(n+1), A317616(n+1)]`
-/

namespace A139703.P14674372028153452256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122146 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317616 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139703.P14674372028153452256

/-! ## A139703.P7025386349153349426

`filter[A122144(n+1), A065202(#)]`
-/

namespace A139703.P7025386349153349426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A065202 (f1 j).toNat = 1) n)

end

end A139703.P7025386349153349426

/-! ## A139703.P3720577318566405707

`filter[A122144(n+1), A087049(#)]`
-/

namespace A139703.P3720577318566405707
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A139703.P3720577318566405707

/-! ## A139703.P6250132051298274886

`filter[A122144(n+1), A355447(#)]`
-/

namespace A139703.P6250132051298274886
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A355447 (f1 j).toNat = 1) n)

end

end A139703.P6250132051298274886

/-! ## A139703.P6486553956199840703

`filter[A122144(n+1), A389905(#)]`
-/

namespace A139703.P6486553956199840703
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122144 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A389905 (f1 j).toNat = 1) n)

end

end A139703.P6486553956199840703

/-!
# A139704: Nearly palindromic numbers: non-palindromes that can be made palindromic by inserting an extra digit.

The programs for A139704, there is no canonical definition to state claims against.
-/

/-! ## A139704.P13585953483508030155

`floor((n+10)*log(3))`
-/

namespace A139704.P13585953483508030155
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 10 : ℝ) * Real.log (3 : ℝ)⌋

end

end A139704.P13585953483508030155

/-! ## A139704.P13515759190412674983

`ceil(n/sin(2))+10`
-/

namespace A139704.P13515759190412674983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sin (2 : ℝ)⌉ + 10

end

end A139704.P13515759190412674983

/-! ## A139704.P10747927579779872514

`record[lcm(11, n+10)/11]`
-/

namespace A139704.P10747927579779872514
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.lcm 11 (n + 10) : ℚ) / 11

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139704.P10747927579779872514

/-! ## A139704.P15797755949909176402

`10-floor(n/sin(-2))`
-/

namespace A139704.P15797755949909176402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  10 - ⌊(n : ℝ) / Real.sin (-2 : ℝ)⌋

end

end A139704.P15797755949909176402

/-! ## A139704.P16287932190724854616

`lt[cot(-(2*n+1)), 3]+10`
-/

namespace A139704.P16287932190724854616
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.cot (-(2 * n + 1 : ℤ) : ℝ)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n + 10

end

end A139704.P16287932190724854616

/-! ## A139704.P14033908091585186854

`comp[n*((11*floor(n/10)-n)*dr(n-dr(n))+1)]`
-/

namespace A139704.P14033908091585186854
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((11 * ⌊(n : ℚ) / 10⌋ - (n : ℤ)) * (SequenceMachineLib.digitalRoot ((n : ℤ) - (SequenceMachineLib.digitalRoot (n : ℤ) : ℤ)) : ℤ) + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139704.P14033908091585186854

/-! ## A139704.P15114312332346838359

`comp[A048307(n)]`
-/

namespace A139704.P15114312332346838359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048307 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139704.P15114312332346838359

/-! ## A139704.P357936058455903772

`comp[A071242(n)]`
-/

namespace A139704.P357936058455903772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071242 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139704.P357936058455903772

/-! ## A139704.P5588287405636929882

`comp[A151950(n)]`
-/

namespace A139704.P5588287405636929882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A151950 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A139704.P5588287405636929882

/-!
# A139706: Take n in binary. Rotate the binary digits to the right until a 1 once again appears as the leftmost digit. Convert back into decimal for a(n).

The programs for A139706, the canonical program `A139706.P7146315137343878535` is in `Seq.B006.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139706 has offset 1).

The definition of A139706 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003602, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139706.P7146315137343878535

`A003602(n+1)+A092323(n+1)`

The canonical program, it is in `Seq.B006.C000`.
-/

namespace A139706

/-- `A003602(n+1)+A092323(n+1)` -/
def P7146315137343878535.Spec : Prop :=
  ∀ n, P7146315137343878535.a n = A139706 (n + 1)

theorem P7146315137343878535.correct : P7146315137343878535.Spec := by
  intro n
  simp only [A139706, Nat.add_sub_cancel]

end A139706

/-! ## A139706.P8342130612653796732

`A003602(n+1)+2^floor(log2(n+1))-1`
-/

namespace A139706.P8342130612653796732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) + ((2 ^ Nat.log 2 (n + 1) : ℤ) - 1)

end

end A139706.P8342130612653796732

namespace A139706

/-- `A003602(n+1)+2^floor(log2(n+1))-1` -/
def P8342130612653796732.Spec : Prop :=
  ∀ n, P8342130612653796732.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P6502965109858456263

`A053644(n+1)+floor(n/(xor(n, n+1)+1))`
-/

namespace A139706.P6502965109858456263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + ⌊(n : ℚ) / (Nat.xor n (n + 1) + 1 : ℚ)⌋

end

end A139706.P6502965109858456263

namespace A139706

/-- `A053644(n+1)+floor(n/(xor(n, n+1)+1))` -/
def P6502965109858456263.Spec : Prop :=
  ∀ n, P6502965109858456263.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P14721407196570194141

`A000225(floor(log2(n+1)))+((n+1)/2^val(n+1, 2)+1)/2`
-/

namespace A139706.P14721407196570194141
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000225 (Nat.log 2 (n + 1)) : ℚ) + ((n + 1 : ℚ) / (2 ^ SequenceMachineLib.valuation (n + 1) 2 : ℚ) + 1) / 2

end

end A139706.P14721407196570194141

namespace A139706

/-- `A000225(floor(log2(n+1)))+((n+1)/2^val(n+1, 2)+1)/2` -/
def P14721407196570194141.Spec : Prop :=
  ∀ n, P14721407196570194141.a n = (A139706 (n + 1) : ℚ)

end A139706

/-! ## A139706.P11990849146099411294

`A053644(n+1)+A025480(n)`
-/

namespace A139706.P11990849146099411294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + A025480 n

end

end A139706.P11990849146099411294

namespace A139706

/-- `A053644(n+1)+A025480(n)` -/
def P11990849146099411294.Spec : Prop :=
  ∀ n, P11990849146099411294.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P4806465432892300579

`A004754(n+1)-A225381(n+1)`
-/

namespace A139706.P4806465432892300579
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004754 (n + 1) - A225381 (n + 1)

end

end A139706.P4806465432892300579

namespace A139706

/-- `A004754(n+1)-A225381(n+1)` -/
def P4806465432892300579.Spec : Prop :=
  ∀ n, P4806465432892300579.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P3984576094650698873

`(A003817(n+1)+A000265(n+1))/2`
-/

namespace A139706.P3984576094650698873
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A003817 (n + 1) + A000265 (n + 1) : ℚ) / 2

end

end A139706.P3984576094650698873

namespace A139706

/-- `(A003817(n+1)+A000265(n+1))/2` -/
def P3984576094650698873.Spec : Prop :=
  ∀ n, P3984576094650698873.a n = (A139706 (n + 1) : ℚ)

end A139706

/-! ## A139706.P4646818197441861966

`A003602(n+1)-A053645(n+1)+n`
-/

namespace A139706.P4646818197441861966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003602 (n + 1) - A053645 (n + 1) + (n : ℤ)

end

end A139706.P4646818197441861966

namespace A139706

/-- `A003602(n+1)-A053645(n+1)+n` -/
def P4646818197441861966.Spec : Prop :=
  ∀ n, P4646818197441861966.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P3594935199889439153

`A059893(A059893(n+1)-A053644(n))+A053644(n)`
-/

namespace A139706.P3594935199889439153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A059893 (n + 1) - A053644 n).toNat + A053644 n

end

end A139706.P3594935199889439153

namespace A139706

/-- `A059893(A059893(n+1)-A053644(n))+A053644(n)` -/
def P3594935199889439153.Spec : Prop :=
  ∀ n, P3594935199889439153.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P17495367191656867116

`A025480(n)+A062383(n+1)/2`
-/

namespace A139706.P17495367191656867116
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A025480 n : ℚ) + (A062383 (n + 1) : ℚ) / 2

end

end A139706.P17495367191656867116

namespace A139706

/-- `A025480(n)+A062383(n+1)/2` -/
def P17495367191656867116.Spec : Prop :=
  ∀ n, P17495367191656867116.a n = (A139706 (n + 1) : ℚ)

end A139706

/-! ## A139706.P6285904217484720450

`A062383(A004526(n+1))+A025480(n)`
-/

namespace A139706.P6285904217484720450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062383 (A004526 (n + 1)).toNat + A025480 n

end

end A139706.P6285904217484720450

namespace A139706

/-- `A062383(A004526(n+1))+A025480(n)` -/
def P6285904217484720450.Spec : Prop :=
  ∀ n, P6285904217484720450.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P14385939002179396308

`A059893(A057889(n+1))`
-/

namespace A139706.P14385939002179396308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A057889 (n + 1)).toNat

end

end A139706.P14385939002179396308

namespace A139706

/-- `A059893(A057889(n+1))` -/
def P14385939002179396308.Spec : Prop :=
  ∀ n, P14385939002179396308.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P13668074359859279565

`A053644(n+1)+A030109(A030101(n+1))`
-/

namespace A139706.P13668074359859279565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + A030109 (A030101 (n + 1)).toNat

end

end A139706.P13668074359859279565

namespace A139706

/-- `A053644(n+1)+A030109(A030101(n+1))` -/
def P13668074359859279565.Spec : Prop :=
  ∀ n, P13668074359859279565.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P4881502665120441880

`A053644(n+1)+A030109(A057889(n+1))`
-/

namespace A139706.P4881502665120441880
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053644 (n + 1) + A030109 (A057889 (n + 1)).toNat

end

end A139706.P4881502665120441880

namespace A139706

/-- `A053644(n+1)+A030109(A057889(n+1))` -/
def P4881502665120441880.Spec : Prop :=
  ∀ n, P4881502665120441880.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P12764576565613825315

`A059893(A139708(A059893(n+1)))`
-/

namespace A139706.P12764576565613825315
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A139708 (A059893 (n + 1)).toNat).toNat

end

end A139706.P12764576565613825315

namespace A139706

/-- `A059893(A139708(A059893(n+1)))` -/
def P12764576565613825315.Spec : Prop :=
  ∀ n, P12764576565613825315.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P13202500013096505438

`A054429(A003817(n+1))+A025480(n)`
-/

namespace A139706.P13202500013096505438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A003817 (n + 1)).toNat + A025480 n

end

end A139706.P13202500013096505438

namespace A139706

/-- `A054429(A003817(n+1))+A025480(n)` -/
def P13202500013096505438.Spec : Prop :=
  ∀ n, P13202500013096505438.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P7618757236163381341

`A025480(A062383(n+1))+A025480(n)`
-/

namespace A139706.P7618757236163381341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A025480 (A062383 (n + 1)).toNat + A025480 n

end

end A139706.P7618757236163381341

namespace A139706

/-- `A025480(A062383(n+1))+A025480(n)` -/
def P7618757236163381341.Spec : Prop :=
  ∀ n, P7618757236163381341.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P1378633763501153758

`A054429(A062383(n+1)-A003602(n+1))`
-/

namespace A139706.P1378633763501153758
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A062383 (n + 1) - A003602 (n + 1)).toNat

end

end A139706.P1378633763501153758

namespace A139706

/-- `A054429(A062383(n+1)-A003602(n+1))` -/
def P1378633763501153758.Spec : Prop :=
  ∀ n, P1378633763501153758.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P17290771032066082640

`A054429(A062383(n+1)-A110963(2*n+1))`
-/

namespace A139706.P17290771032066082640
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054429 (A062383 (n + 1) - A110963 (2 * n + 1)).toNat

end

end A139706.P17290771032066082640

namespace A139706

/-- `A054429(A062383(n+1)-A110963(2*n+1))` -/
def P17290771032066082640.Spec : Prop :=
  ∀ n, P17290771032066082640.a n = A139706 (n + 1)

end A139706

/-! ## A139706.P15746696339503480166

`A059893(A316472(A059893(A153151(n+1))))`
-/

namespace A139706.P15746696339503480166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A316472 (A059893 (A153151 (n + 1)).toNat).toNat).toNat

end

end A139706.P15746696339503480166

namespace A139706

/-- `A059893(A316472(A059893(A153151(n+1))))` -/
def P15746696339503480166.Spec : Prop :=
  ∀ n, P15746696339503480166.a n = A139706 (n + 1)

end A139706

/-!
# A139707: Take n in binary. Rotate the binary digits to the right until a 1 once again appears as the leftmost digit. a(n) is result written in binary.

The programs for A139707, the canonical program `A139707.P14971633611704651704` is in `Seq.B007.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139707 has offset 1).

The definition of A139707 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139707.P14971633611704651704

`A007088(A139706(1+n))`

The canonical program, it is in `Seq.B007.C000`.
-/

namespace A139707

/-- `A007088(A139706(1+n))` -/
def P14971633611704651704.Spec : Prop :=
  ∀ n, P14971633611704651704.a n = A139707 (n + 1)

theorem P14971633611704651704.correct : P14971633611704651704.Spec := by
  intro n
  simp only [A139707, Nat.add_sub_cancel]

end A139707

/-! ## A139707.P17199271835329274691

`A007088(A053644(n+1)+A025480(n))`
-/

namespace A139707.P17199271835329274691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A053644 (n + 1) + A025480 n).toNat

end

end A139707.P17199271835329274691

namespace A139707

/-- `A007088(A053644(n+1)+A025480(n))` -/
def P17199271835329274691.Spec : Prop :=
  ∀ n, P17199271835329274691.a n = A139707 (n + 1)

end A139707

/-! ## A139707.P1634315727698155707

`A007088(A092323(n+1)+A003602(n+1))`
-/

namespace A139707.P1634315727698155707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A092323 (n + 1) + A003602 (n + 1)).toNat

end

end A139707.P1634315727698155707

namespace A139707

/-- `A007088(A092323(n+1)+A003602(n+1))` -/
def P1634315727698155707.Spec : Prop :=
  ∀ n, P1634315727698155707.a n = A139707 (n + 1)

end A139707

/-! ## A139707.P10787867259134713110

`A007088(A004754(n+1)-A225381(n+1))`
-/

namespace A139707.P10787867259134713110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004754 (n + 1) - A225381 (n + 1)).toNat

end

end A139707.P10787867259134713110

namespace A139707

/-- `A007088(A004754(n+1)-A225381(n+1))` -/
def P10787867259134713110.Spec : Prop :=
  ∀ n, P10787867259134713110.a n = A139707 (n + 1)

end A139707

/-! ## A139707.P1984723385705839038

`A007088(A004761(n+3)-A225381(n+1))`
-/

namespace A139707.P1984723385705839038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A004761 (n + 3) - A225381 (n + 1)).toNat

end

end A139707.P1984723385705839038

namespace A139707

/-- `A007088(A004761(n+3)-A225381(n+1))` -/
def P1984723385705839038.Spec : Prop :=
  ∀ n, P1984723385705839038.a n = A139707 (n + 1)

end A139707

/-! ## A139707.P15513611732258729473

`A169965(A139706(n+1)+1)/2`
-/

namespace A139707.P15513611732258729473
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (A139706 (n + 1) + 1).toNat : ℚ) / 2

end

end A139707.P15513611732258729473

namespace A139707

/-- `A169965(A139706(n+1)+1)/2` -/
def P15513611732258729473.Spec : Prop :=
  ∀ n, P15513611732258729473.a n = (A139707 (n + 1) : ℚ)

end A139707

/-! ## A139707.P5590618173835210790

`A007088(A059893(A139708(A059893(n+1))))`
-/

namespace A139707.P5590618173835210790
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A059893 (A139708 (A059893 (n + 1)).toNat).toNat).toNat

end

end A139707.P5590618173835210790

namespace A139707

/-- `A007088(A059893(A139708(A059893(n+1))))` -/
def P5590618173835210790.Spec : Prop :=
  ∀ n, P5590618173835210790.a n = A139707 (n + 1)

end A139707

/-! ## A139707.P9961564291642599324

`A139709(A139706(A139706(A139706(A139708(n+1)))))`
-/

namespace A139707.P9961564291642599324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139709 (A139706 (A139706 (A139706 (A139708 (n + 1)).toNat).toNat).toNat).toNat

end

end A139707.P9961564291642599324

namespace A139707

/-- `A139709(A139706(A139706(A139706(A139708(n+1)))))` -/
def P9961564291642599324.Spec : Prop :=
  ∀ n, P9961564291642599324.a n = A139707 (n + 1)

end A139707

/-! ## A139707.P10788160227188138924

`A185544(2*A139706(n+1))`
-/

namespace A139707.P10788160227188138924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A139706 (n + 1)).toNat

end

end A139707.P10788160227188138924

namespace A139707

/-- `A185544(2*A139706(n+1))` -/
def P10788160227188138924.Spec : Prop :=
  ∀ n, P10788160227188138924.a n = A139707 (n + 1)

end A139707

/-! ## A139707.P15535630725857479945

`A185544(2*(A053644(n+1)+A025480(n)))`
-/

namespace A139707.P15535630725857479945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A053644 (n + 1) + A025480 n)).toNat

end

end A139707.P15535630725857479945

namespace A139707

/-- `A185544(2*(A053644(n+1)+A025480(n)))` -/
def P15535630725857479945.Spec : Prop :=
  ∀ n, P15535630725857479945.a n = A139707 (n + 1)

end A139707

/-! ## A139707.P5425917510249077376

`A185544(2*(A004754(n+1)-A225381(n+1)))`
-/

namespace A139707.P5425917510249077376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * (A004754 (n + 1) - A225381 (n + 1))).toNat

end

end A139707.P5425917510249077376

namespace A139707

/-- `A185544(2*(A004754(n+1)-A225381(n+1)))` -/
def P5425917510249077376.Spec : Prop :=
  ∀ n, P5425917510249077376.a n = A139707 (n + 1)

end A139707

/-!
# A139708: Take n in binary. Rotate the binary digits to the left until a 1 once again appears as the leftmost digit. Convert back into decimal for a(n).

The programs for A139708, the canonical program `A139708.P10437664950000640260` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139708 has offset 1).

The definition of A139708 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139708.P10437664950000640260

`A006257(n+1)*A187816(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139708

/-- `A006257(n+1)*A187816(n+1)` -/
def P10437664950000640260.Spec : Prop :=
  ∀ n, P10437664950000640260.a n = A139708 (n + 1)

theorem P10437664950000640260.correct : P10437664950000640260.Spec := by
  intro n
  simp only [A139708, Nat.add_sub_cancel]

end A139708

/-! ## A139708.P11046973668171261944

`A057889(A059893(n+1))`
-/

namespace A139708.P11046973668171261944
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A059893 (n + 1)).toNat

end

end A139708.P11046973668171261944

namespace A139708

/-- `A057889(A059893(n+1))` -/
def P11046973668171261944.Spec : Prop :=
  ∀ n, P11046973668171261944.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P5400853164220208112

`A057889((A145341(n+2)-1)/2)`
-/

namespace A139708.P5400853164220208112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (SequenceMachineLib.roundAway ((A145341 (n + 2) - 1 : ℚ) / 2)).toNat

end

end A139708.P5400853164220208112

namespace A139708

/-- `A057889((A145341(n+2)-1)/2)` -/
def P5400853164220208112.Spec : Prop :=
  ∀ n, P5400853164220208112.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P866943557047316018

`A181733(n+1)+A092323(n+1)`
-/

namespace A139708.P866943557047316018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181733 (n + 1) + A092323 (n + 1)

end

end A139708.P866943557047316018

namespace A139708

/-- `A181733(n+1)+A092323(n+1)` -/
def P866943557047316018.Spec : Prop :=
  ∀ n, P866943557047316018.a n = A139708 (n + 1)

theorem P866943557047316018.correct : P866943557047316018.Spec := by
  intro n
  simp only [A139708, Nat.add_sub_cancel, A139708.P866943557047316018.a, A139708.P10437664950000640260.a, A006257, A006257.P11499791249913637549.a, A092323, A092323.P17946410828982596858.a, A181733, A181733.P2943246372235819364.a, A187816, A187816.P8414459548341743626.a, A000523, A000523.P3314682526375882520.a, A062050, A062050.P17235940281182373868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139708

/-! ## A139708.P2312854209428520199

`A057889(A053644(n+1)+A030109(n+1))`
-/

namespace A139708.P2312854209428520199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A053644 (n + 1) + A030109 (n + 1)).toNat

end

end A139708.P2312854209428520199

namespace A139708

/-- `A057889(A053644(n+1)+A030109(n+1))` -/
def P2312854209428520199.Spec : Prop :=
  ∀ n, P2312854209428520199.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P16045792168693415464

`A003817(n+1)+A181733(n+1)-A053644(n+1)`
-/

namespace A139708.P16045792168693415464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003817 (n + 1) + (A181733 (n + 1) - A053644 (n + 1))

end

end A139708.P16045792168693415464

namespace A139708

/-- `A003817(n+1)+A181733(n+1)-A053644(n+1)` -/
def P16045792168693415464.Spec : Prop :=
  ∀ n, P16045792168693415464.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P13533008320338327388

`A057889(A030101(n+1)+A053644(n+1)-A049773(n+1))`
-/

namespace A139708.P13533008320338327388
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A030101 (n + 1) + (A053644 (n + 1) - A049773 (n + 1))).toNat

end

end A139708.P13533008320338327388

namespace A139708

/-- `A057889(A030101(n+1)+A053644(n+1)-A049773(n+1))` -/
def P13533008320338327388.Spec : Prop :=
  ∀ n, P13533008320338327388.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P14562926806358582252

`A057889(A145342(n+2)-1)`
-/

namespace A139708.P14562926806358582252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A145342 (n + 2) - 1).toNat

end

end A139708.P14562926806358582252

namespace A139708

/-- `A057889(A145342(n+2)-1)` -/
def P14562926806358582252.Spec : Prop :=
  ∀ n, P14562926806358582252.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P12012212457854972469

`A057889(A139706(A057889(n+1)))`
-/

namespace A139708.P12012212457854972469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A139706 (A057889 (n + 1)).toNat).toNat

end

end A139708.P12012212457854972469

namespace A139708

/-- `A057889(A139706(A057889(n+1)))` -/
def P12012212457854972469.Spec : Prop :=
  ∀ n, P12012212457854972469.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P13767409874340293453

`A059893(A139706(A139706(A059893(A139706(n+1)))))`
-/

namespace A139708.P13767409874340293453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A139706 (A139706 (A059893 (A139706 (n + 1)).toNat).toNat).toNat).toNat

end

end A139708.P13767409874340293453

namespace A139708

/-- `A059893(A139706(A139706(A059893(A139706(n+1)))))` -/
def P13767409874340293453.Spec : Prop :=
  ∀ n, P13767409874340293453.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P2718962843881692375

`A057889(floor(A057889(2*n+3)/2))`
-/

namespace A139708.P2718962843881692375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 ⌊(A057889 (2 * n + 3) : ℚ) / 2⌋.toNat

end

end A139708.P2718962843881692375

namespace A139708

/-- `A057889(floor(A057889(2*n+3)/2))` -/
def P2718962843881692375.Spec : Prop :=
  ∀ n, P2718962843881692375.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P14104360893122265362

`A316472(A059894(A153152(A059894(n+1))))`
-/

namespace A139708.P14104360893122265362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316472 (A059894 (A153152 (A059894 (n + 1)).toNat).toNat).toNat

end

end A139708.P14104360893122265362

namespace A139708

/-- `A316472(A059894(A153152(A059894(n+1))))` -/
def P14104360893122265362.Spec : Prop :=
  ∀ n, P14104360893122265362.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P5812148222051600465

`A057889(A163807(2*(n+1))/2)`
-/

namespace A139708.P5812148222051600465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (SequenceMachineLib.roundAway ((A163807 (2 * (n + 1)) : ℚ) / 2)).toNat

end

end A139708.P5812148222051600465

namespace A139708

/-- `A057889(A163807(2*(n+1))/2)` -/
def P5812148222051600465.Spec : Prop :=
  ∀ n, P5812148222051600465.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P1559648063028845063

`A057889(A030109(2*n+3))`
-/

namespace A139708.P1559648063028845063
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057889 (A030109 (2 * n + 3)).toNat

end

end A139708.P1559648063028845063

namespace A139708

/-- `A057889(A030109(2*n+3))` -/
def P1559648063028845063.Spec : Prop :=
  ∀ n, P1559648063028845063.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P4359950977104826330

`A316472(A153141(n+1))`
-/

namespace A139708.P4359950977104826330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316472 (A153141 (n + 1)).toNat

end

end A139708.P4359950977104826330

namespace A139708

/-- `A316472(A153141(n+1))` -/
def P4359950977104826330.Spec : Prop :=
  ∀ n, P4359950977104826330.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P10929112389255064460

`A316472(A054429(A153142(A054429(n+1))))`
-/

namespace A139708.P10929112389255064460
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316472 (A054429 (A153142 (A054429 (n + 1)).toNat).toNat).toNat

end

end A139708.P10929112389255064460

namespace A139708

/-- `A316472(A054429(A153142(A054429(n+1))))` -/
def P10929112389255064460.Spec : Prop :=
  ∀ n, P10929112389255064460.a n = A139708 (n + 1)

end A139708

/-! ## A139708.P554115811718886912

`A366276(A253563(n+1))`
-/

namespace A139708.P554115811718886912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366276 (A253563 (n + 1)).toNat

end

end A139708.P554115811718886912

namespace A139708

/-- `A366276(A253563(n+1))` -/
def P554115811718886912.Spec : Prop :=
  ∀ n, P554115811718886912.a n = A139708 (n + 1)

end A139708

/-!
# A139709: Take n in binary. Rotate the binary digits to the left until a 1 once again appears as the leftmost digit. a(n) is result written in binary.

The programs for A139709, the canonical program `A139709.P10417153833088246719` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139709 has offset 1).

The definition of A139709 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139709.P10417153833088246719

`A007088(A139708(n+1))`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A139709

/-- `A007088(A139708(n+1))` -/
def P10417153833088246719.Spec : Prop :=
  ∀ n, P10417153833088246719.a n = A139709 (n + 1)

theorem P10417153833088246719.correct : P10417153833088246719.Spec := by
  intro n
  simp only [A139709, Nat.add_sub_cancel]

end A139709

/-! ## A139709.P11138159708810778650

`A007088(A181733(n+1)+A092323(n+1))`
-/

namespace A139709.P11138159708810778650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A181733 (n + 1) + A092323 (n + 1)).toNat

end

end A139709.P11138159708810778650

namespace A139709

/-- `A007088(A181733(n+1)+A092323(n+1))` -/
def P11138159708810778650.Spec : Prop :=
  ∀ n, P11138159708810778650.a n = A139709 (n + 1)

theorem P11138159708810778650.correct : P11138159708810778650.Spec := by
  intro n
  simp only [A139709, Nat.add_sub_cancel, A139709.P11138159708810778650.a, A139709.P10417153833088246719.a, A007088, A007088.P12432121332583687413.a, A092323, A092323.P17946410828982596858.a, A139708, A139708.P10437664950000640260.a, A181733, A181733.P2943246372235819364.a, A006257, A006257.P11499791249913637549.a, A097256, A097256.P18324559811505528946.a, A187816, A187816.P8414459548341743626.a, A000523, A000523.P3314682526375882520.a, A062050, A062050.P17235940281182373868.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139709

/-! ## A139709.P9484288380052685872

`A169965(A139708(n+1)+1)/2`
-/

namespace A139709.P9484288380052685872
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A169965 (A139708 (n + 1) + 1).toNat : ℚ) / 2

end

end A139709.P9484288380052685872

namespace A139709

/-- `A169965(A139708(n+1)+1)/2` -/
def P9484288380052685872.Spec : Prop :=
  ∀ n, P9484288380052685872.a n = (A139709 (n + 1) : ℚ)

end A139709

/-! ## A139709.P8115424214942766190

`A007088(A059893(A139706(A059893(n+1))))`
-/

namespace A139709.P8115424214942766190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007088 (A059893 (A139706 (A059893 (n + 1)).toNat).toNat).toNat

end

end A139709.P8115424214942766190

namespace A139709

/-- `A007088(A059893(A139706(A059893(n+1))))` -/
def P8115424214942766190.Spec : Prop :=
  ∀ n, P8115424214942766190.a n = A139709 (n + 1)

end A139709

/-! ## A139709.P4415781200545297236

`2^A008683(A004139(n+1))*A169965(A139708(n+1)+1)`
-/

namespace A139709.P4415781200545297236
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ (A008683 (A004139 (n + 1)).toNat : ℤ) * (A169965 (A139708 (n + 1) + 1).toNat : ℚ)

end

end A139709.P4415781200545297236

namespace A139709

/-- `2^A008683(A004139(n+1))*A169965(A139708(n+1)+1)` -/
def P4415781200545297236.Spec : Prop :=
  ∀ n, P4415781200545297236.a n = (A139709 (n + 1) : ℚ)

end A139709

/-! ## A139709.P12576659743921709181

`A139707(A139708(A139708(A139708(A139706(n+1)))))`
-/

namespace A139709.P12576659743921709181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139707 (A139708 (A139708 (A139708 (A139706 (n + 1)).toNat).toNat).toNat).toNat

end

end A139709.P12576659743921709181

namespace A139709

/-- `A139707(A139708(A139708(A139708(A139706(n+1)))))` -/
def P12576659743921709181.Spec : Prop :=
  ∀ n, P12576659743921709181.a n = A139709 (n + 1)

end A139709

/-! ## A139709.P14141701930660725376

`A139707(A139708(A139708(A003602(2*n+1))))`
-/

namespace A139709.P14141701930660725376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139707 (A139708 (A139708 (A003602 (2 * n + 1)).toNat).toNat).toNat

end

end A139709.P14141701930660725376

namespace A139709

/-- `A139707(A139708(A139708(A003602(2*n+1))))` -/
def P14141701930660725376.Spec : Prop :=
  ∀ n, P14141701930660725376.a n = A139709 (n + 1)

end A139709

/-! ## A139709.P1650450333988388250

`A185544(2*A139708(n+1))`
-/

namespace A139709.P1650450333988388250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (2 * A139708 (n + 1)).toNat

end

end A139709.P1650450333988388250

namespace A139709

/-- `A185544(2*A139708(n+1))` -/
def P1650450333988388250.Spec : Prop :=
  ∀ n, P1650450333988388250.a n = A139709 (n + 1)

end A139709

/-! ## A139709.P7835698937395702562

`A185544(A139708(n+1)+A139708(n+1))`
-/

namespace A139709.P7835698937395702562
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185544 (A139708 (n + 1) + A139708 (n + 1)).toNat

end

end A139709.P7835698937395702562

namespace A139709

/-- `A185544(A139708(n+1)+A139708(n+1))` -/
def P7835698937395702562.Spec : Prop :=
  ∀ n, P7835698937395702562.a n = A139709 (n + 1)

end A139709

/-!
# A139710: Numbers k such that the sum of (the largest divisor of k that is <= sqrt(k)) and (the smallest divisor of k that is >= sqrt(k)) is odd.

The programs for A139710, there is no canonical definition to state claims against.
-/

/-! ## A139710.P1598676367645352945

`eq[2, A361566(1+n)]+1`
-/

namespace A139710.P1598676367645352945
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361566 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139710.P1598676367645352945

/-! ## A139710.P4379558402960044274

`eq[1, A056737(n+1)%2]+1`
-/

namespace A139710.P4379558402960044274
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056737 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139710.P4379558402960044274

/-! ## A139710.P1232750161371083209

`eq[1, A323728(n+1)%2]+1`
-/

namespace A139710.P1232750161371083209
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323728 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139710.P1232750161371083209

/-! ## A139710.P15975984557596863890

`eq[1, A063655(n+2)%2]+2`
-/

namespace A139710.P15975984557596863890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A063655 (n + 2)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 2

end

end A139710.P15975984557596863890

/-! ## A139710.P10511434893356876428

`eq[1, and(1, A063655(n+1))]+1`
-/

namespace A139710.P10511434893356876428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A063655 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139710.P10511434893356876428

/-! ## A139710.P12437331295157443846

`eq[1, A076826(A056737(n+1))]+1`
-/

namespace A139710.P12437331295157443846
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076826 (A056737 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139710.P12437331295157443846

/-! ## A139710.P16264238549327658926

`eq[2, A141310(A063655(n+1))]+1`
-/

namespace A139710.P16264238549327658926
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141310 (A063655 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139710.P16264238549327658926

/-!
# A139711: Numbers k such that the sum of (the largest divisor of k that is <= sqrt(k)) and (the smallest divisor of k that is >= sqrt(k)) is even.

The programs for A139711, there is no canonical definition to state claims against.
-/

/-! ## A139711.P15609474653914794973

`eq[1, A361566(1+n)]+1`
-/

namespace A139711.P15609474653914794973
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A361566 (1 + n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139711.P15609474653914794973

/-! ## A139711.P7858438713830939381

`eq[0, A056737(n+1)%2]+1`
-/

namespace A139711.P7858438713830939381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A056737 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139711.P7858438713830939381

/-! ## A139711.P4429206629774593285

`eq[0, A323728(n+1)%2]+1`
-/

namespace A139711.P4429206629774593285
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A323728 (n + 1)) 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139711.P4429206629774593285

/-! ## A139711.P8788974354915260218

`eq[2, gcd(2, A063655(n+1))]+1`
-/

namespace A139711.P8788974354915260218
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A063655 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A139711.P8788974354915260218

/-! ## A139711.P7701634354327094372

`record[and(n+1, and(1, A319070(n+1))-1)]`
-/

namespace A139711.P7701634354327094372
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (n + 1 : ℤ) (Int.land 1 (A319070 (n + 1)) - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139711.P7701634354327094372

/-! ## A139711.P16405665248248983646

`record[(n+1)*A000035(A063655(n+1)+1)]`
-/

namespace A139711.P16405665248248983646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000035 (A063655 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139711.P16405665248248983646

/-!
# A139712: a(1)=1. For n >=2, a(n) = largest positive integer < a(n-1) that is not coprime to n, if such an integer exists. Otherwise, a(n) = smallest integer > a(n-1) that is not coprime to n.

The programs for A139712, there is no canonical definition to state claims against.
-/

/-! ## A139712.P8962551519459571619

`gcd(xor(1, n), A322484(A322511(n+1)))`
-/

namespace A139712.P8962551519459571619
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (Nat.xor 1 n : ℤ) (A322484 (A322511 (n + 1)).toNat)

end

end A139712.P8962551519459571619

/-! ## A139712.P14036954230717869885

`gcd(A004442(n), A225646(A324793(n+1)))`
-/

namespace A139712.P14036954230717869885
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A004442 n) (A225646 (A324793 (n + 1)).toNat)

end

end A139712.P14036954230717869885

/-! ## A139712.P2562587471207315499

`gcd(A002378(A105635(n)), A004442(n))`
-/

namespace A139712.P2562587471207315499
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002378 (A105635 n).toNat) (A004442 n)

end

end A139712.P2562587471207315499

/-! ## A139712.P6165443582480747245

`A113581(C(A322000(n), A196222(n)))`
-/

namespace A139712.P6165443582480747245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113581 (Nat.choose (A322000 n).toNat (A196222 n).toNat)

end

end A139712.P6165443582480747245

/-! ## A139712.P11600509746655853263

`gcd(A033999(n)+n, A168264(A006093(n+1)))`
-/

namespace A139712.P11600509746655853263
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A033999 n + (n : ℤ)) (A168264 (A006093 (n + 1)).toNat)

end

end A139712.P11600509746655853263

/-!
# A139713: a(0)=1. For n >=1, a(n) = largest positive integer < a(n-1) that is not coprime to the n-th composite, if such an integer exists. Otherwise, a(n) = smallest integer > a(n-1) that is not coprime to the n-th composite.

The programs for A139713, there is no canonical definition to state claims against.
-/

/-! ## A139713.P7818954573123337928

`A205745(A020711(A343379(n)))+A175834(n)`
-/

namespace A139713.P7818954573123337928
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A205745 (A020711 (A343379 n).toNat).toNat + A175834 n

end

end A139713.P7818954573123337928

/-! ## A139713.P11544289296874776340

`A279060(A220469(n+1))+A134451(n)`
-/

namespace A139713.P11544289296874776340
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A279060 (A220469 (n + 1)).toNat + A134451 n

end

end A139713.P11544289296874776340

/-! ## A139713.P18171945979011710535

`dr(∑[A349815(A047765(n+1))])`
-/

namespace A139713.P18171945979011710535
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A349815 (A047765 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139713.P18171945979011710535

/-! ## A139713.P352052430671410657

`xor(a(n-1), A077481(A157703(n)))` with `a(0)=1, a(1)=2`
-/

namespace A139713.P352052430671410657
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor (a (n - 1)) (A077481 (A157703 n).toNat)

end

end A139713.P352052430671410657

/-! ## A139713.P18364951875077348639

`xor(a(n-1), A103371(A184955(n)))` with `a(0)=1, a(1)=2`
-/

namespace A139713.P18364951875077348639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  Int.xor (a (n - 1)) (A103371 (A184955 n).toNat)

end

end A139713.P18364951875077348639

/-!
# A139714: a(n) = Sum_{k>=0} binomial(n,5*k+2).

The programs for A139714, the canonical program `A139714.P10637937085064998701` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139714 has offset 0).

The definition of A139714 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139714.P9303092144460042055

`ogf((x^2-2x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-2x^5))`
-/

namespace A139714.P9303092144460042055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1, -2, 1] [1, -5, 10, -10, 5, -2] n

end

end A139714.P9303092144460042055

namespace A139714

/-- `ogf((x^2-2x^3+x^4)/(1-5x+10x^2-10x^3+5x^4-2x^5))` -/
def P9303092144460042055.Spec : Prop :=
  ∀ n, P9303092144460042055.a n = A139714 n

end A139714

/-! ## A139714.P10637937085064998701

`round(2/5*(2^(n-1)+ϕ^n*cos(π*(n-4)/5)))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139714

/-- `round(2/5*(2^(n-1)+ϕ^n*cos(π*(n-4)/5)))` -/
def P10637937085064998701.Spec : Prop :=
  ∀ n, P10637937085064998701.a n = A139714 n

theorem P10637937085064998701.correct : P10637937085064998701.Spec := by
  intro n
  simp only [A139714]

end A139714

/-! ## A139714.P14981644372948919714

`A133476(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A139714.P14981644372948919714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A133476 (n - 1) + a (n - 1)

end

end A139714.P14981644372948919714

namespace A139714

/-- `A133476(n-1)+a(n-1)` -/
def P14981644372948919714.Spec : Prop :=
  ∀ n, P14981644372948919714.a n = A139714 n

end A139714

/-! ## A139714.P4547543685789476226

`A133476(n)-A103311(n)`
-/

namespace A139714.P4547543685789476226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n - A103311 n

end

end A139714.P4547543685789476226

namespace A139714

/-- `A133476(n)-A103311(n)` -/
def P4547543685789476226.Spec : Prop :=
  ∀ n, P4547543685789476226.a n = A139714 n

end A139714

/-! ## A139714.P7337142023903913092

`A139761(n)-Δ[A105371(n)]`
-/

namespace A139714.P7337142023903913092
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n - (f1 (n + 1) - f1 n)

end

end A139714.P7337142023903913092

namespace A139714

/-- `A139761(n)-Δ[A105371(n)]` -/
def P7337142023903913092.Spec : Prop :=
  ∀ n, P7337142023903913092.a n = A139714 n

end A139714

/-! ## A139714.P4500685129705873744

`A139761(n)+A138112(n+1)`
-/

namespace A139714.P4500685129705873744
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n + A138112 (n + 1)

end

end A139714.P4500685129705873744

namespace A139714

/-- `A139761(n)+A138112(n+1)` -/
def P4500685129705873744.Spec : Prop :=
  ∀ n, P4500685129705873744.a n = A139714 n

end A139714

/-! ## A139714.P9803722085837814466

`A139398(n)-A103311(n+1)`
-/

namespace A139714.P9803722085837814466
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n - A103311 (n + 1)

end

end A139714.P9803722085837814466

namespace A139714

/-- `A139398(n)-A103311(n+1)` -/
def P9803722085837814466.Spec : Prop :=
  ∀ n, P9803722085837814466.a n = A139714 n

end A139714

/-! ## A139714.P2872454523586023755

`A139398(n)+∑[A133476(n)-A139398(n)]`
-/

namespace A139714.P2872454523586023755
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n - A139398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139714.P2872454523586023755

namespace A139714

/-- `A139398(n)+∑[A133476(n)-A139398(n)]` -/
def P2872454523586023755.Spec : Prop :=
  ∀ n, P2872454523586023755.a n = A139714 n

end A139714

/-! ## A139714.P5017493510625556128

`Δ[A139748(n)]`
-/

namespace A139714.P5017493510625556128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139714.P5017493510625556128

namespace A139714

/-- `Δ[A139748(n)]` -/
def P5017493510625556128.Spec : Prop :=
  ∀ n, P5017493510625556128.a n = A139714 n

end A139714

/-! ## A139714.P15078511940450019075

`A139748(n+1)-A139748(n)`
-/

namespace A139714.P15078511940450019075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 (n + 1) - A139748 n

end

end A139714.P15078511940450019075

namespace A139714

/-- `A139748(n+1)-A139748(n)` -/
def P15078511940450019075.Spec : Prop :=
  ∀ n, P15078511940450019075.a n = A139714 n

end A139714

/-! ## A139714.P15920034460922772911

`Δ[Δ[A139761(n)]]`
-/

namespace A139714.P15920034460922772911
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139714.P15920034460922772911

namespace A139714

/-- `Δ[Δ[A139761(n)]]` -/
def P15920034460922772911.Spec : Prop :=
  ∀ n, P15920034460922772911.a n = A139714 n

end A139714

/-! ## A139714.P17737417507583302423

`A129929(n)-A133476(n+1)`
-/

namespace A139714.P17737417507583302423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129929 n - A133476 (n + 1)

end

end A139714.P17737417507583302423

namespace A139714

/-- `A129929(n)-A133476(n+1)` -/
def P17737417507583302423.Spec : Prop :=
  ∀ n, P17737417507583302423.a n = A139714 n

end A139714

/-! ## A139714.P5682320724180509013

`A000079(n)-(A139761(n+1)+A133476(n+1))`
-/

namespace A139714.P5682320724180509013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A139761 (n + 1) + A133476 (n + 1))

end

end A139714.P5682320724180509013

namespace A139714

/-- `A000079(n)-(A139761(n+1)+A133476(n+1))` -/
def P5682320724180509013.Spec : Prop :=
  ∀ n, P5682320724180509013.a n = A139714 n

end A139714

/-! ## A139714.P2910000138249886562

`Δ[Δ[Δ[A139398(n)]]]`
-/

namespace A139714.P2910000138249886562
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139714.P2910000138249886562

namespace A139714

/-- `Δ[Δ[Δ[A139398(n)]]]` -/
def P2910000138249886562.Spec : Prop :=
  ∀ n, P2910000138249886562.a n = A139714 n

end A139714

/-!
# A139715: G.f. A(x) satisfies: A(x) = G(G(x)) where G(x) = x - A(x)^2 = g.f. of A139702.

The programs for A139715, there is no canonical definition to state claims against.
-/

/-! ## A139715.P114132401564733081

`A001057(A006257(n)+A005159(n))`
-/

namespace A139715.P114132401564733081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001057 (A006257 n + A005159 n).toNat

end

end A139715.P114132401564733081

/-!
# A139716: If k is the largest divisor of n that is <= sqrt(n) then a(n) = n - k^2.

The programs for A139716, there is no canonical definition to state claims against.
-/

/-! ## A139716.P9066998891521610167

`1-A033676(n+1)²+n`
-/

namespace A139716.P9066998891521610167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A033676 (n + 1) ^ 2 + (n : ℤ)

end

end A139716.P9066998891521610167

/-! ## A139716.P10998054518791462263

`n+1-A366523((n+1)²)`
-/

namespace A139716.P10998054518791462263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A366523 ((n + 1) ^ 2)

end

end A139716.P10998054518791462263

/-! ## A139716.P92160470738471579

`1-A162348(Δ[n²])²+n`
-/

namespace A139716.P92160470738471579
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A162348 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat ^ 2 + (n : ℤ)

end

end A139716.P92160470738471579

/-! ## A139716.P13429783595627788324

`n+1-A162348(2*n+1)²`
-/

namespace A139716.P13429783595627788324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A162348 (2 * n + 1) ^ 2

end

end A139716.P13429783595627788324

/-! ## A139716.P6117946794029631413

`1-(A033676(Δ[n²]-n)²-n)`
-/

namespace A139716.P6117946794029631413
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - (A033676 ((f1 (n + 1) : ℤ) - (f1 n : ℤ) - (n : ℤ)).toNat ^ 2 - (n : ℤ))

end

end A139716.P6117946794029631413

/-! ## A139716.P7401544669136597485

`n+1-A033676(-xor(n, -1))^2`
-/

namespace A139716.P7401544669136597485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) - A033676 (-Int.xor (n : ℤ) (-1)).toNat ^ 2

end

end A139716.P7401544669136597485

/-! ## A139716.P18109265172269349657

`n+1-((n+1)/A033677(n+1))²`
-/

namespace A139716.P18109265172269349657
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) - ((n + 1 : ℚ) / (A033677 (n + 1) : ℚ)) ^ 2

end

end A139716.P18109265172269349657

/-! ## A139716.P1086319496991027747

`A258837(A033676(n+1))+n`
-/

namespace A139716.P1086319496991027747
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258837 (A033676 (n + 1)).toNat + (n : ℤ)

end

end A139716.P1086319496991027747

/-! ## A139716.P17945904998631172014

`A024000(A033676(n+1)²)+n`
-/

namespace A139716.P17945904998631172014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024000 (A033676 (n + 1) ^ 2).toNat + (n : ℤ)

end

end A139716.P17945904998631172014

/-! ## A139716.P2140566577892666204

`n-A023443(A033676(n+1)²)`
-/

namespace A139716.P2140566577892666204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - A023443 (A033676 (n + 1) ^ 2).toNat

end

end A139716.P2140566577892666204

/-!
# A139717: If k is the smallest divisor of n that is >= sqrt(n) then a(n) = k^2 - n.

The programs for A139717, there is no canonical definition to state claims against.
-/

/-! ## A139717.P11251802876003519219

`A033677(n+1)²-(n+1)`
-/

namespace A139717.P11251802876003519219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) ^ 2 - (n + 1 : ℤ)

end

end A139717.P11251802876003519219

/-! ## A139717.P343922236493799209

`((n+1)/A033676(n+1))²-(n+1)`
-/

namespace A139717.P343922236493799209
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 1 : ℚ) / (A033676 (n + 1) : ℚ)) ^ 2 - (n + 1 : ℚ)

end

end A139717.P343922236493799209

/-! ## A139717.P4738149445100780351

`A002378(n)%A033677(n+1)²`
-/

namespace A139717.P4738149445100780351
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002378 n) (A033677 (n + 1) ^ 2)

end

end A139717.P4738149445100780351

/-! ## A139717.P7898922269018472309

`A005563(A033677(n+1)-1)-n`
-/

namespace A139717.P7898922269018472309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005563 (A033677 (n + 1) - 1).toNat - (n : ℤ)

end

end A139717.P7898922269018472309

/-! ## A139717.P4638102448024443293

`A033677(n+1)*A056737(n+1)`
-/

namespace A139717.P4638102448024443293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (n + 1) * A056737 (n + 1)

end

end A139717.P4638102448024443293

/-! ## A139717.P9737483267845896292

`A056737(n+1)*A140271(n+1)`
-/

namespace A139717.P9737483267845896292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056737 (n + 1) * A140271 (n + 1)

end

end A139717.P9737483267845896292

/-! ## A139717.P9126136665471741889

`A002378(A033677(n+1))-A248835(n+1)`
-/

namespace A139717.P9126136665471741889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002378 (A033677 (n + 1)).toNat - A248835 (n + 1)

end

end A139717.P9126136665471741889

/-! ## A139717.P17244648080758323142

`(A056737(n+1)+A033676(n+1))*A056737(n+1)`
-/

namespace A139717.P17244648080758323142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A056737 (n + 1) + A033676 (n + 1)) * A056737 (n + 1)

end

end A139717.P17244648080758323142

/-! ## A139717.P800482856585164305

`(A060775(n+1)+A056737(n+1))*A056737(n+1)`
-/

namespace A139717.P800482856585164305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A060775 (n + 1) + A056737 (n + 1)) * A056737 (n + 1)

end

end A139717.P800482856585164305

/-! ## A139717.P17008505122297508470

`(A033677(n+1)-A033676(n+1))*A033677(n+1)`
-/

namespace A139717.P17008505122297508470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A033677 (n + 1) - A033676 (n + 1)) * A033677 (n + 1)

end

end A139717.P17008505122297508470

/-! ## A139717.P5689109215919361568

`A323728(n+1)-A033676(n+1)*A063655(n+1)`
-/

namespace A139717.P5689109215919361568
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323728 (n + 1) - A033676 (n + 1) * A063655 (n + 1)

end

end A139717.P5689109215919361568

/-! ## A139717.P8063833502856566646

`(A162348(2*(n+1))-A162348(2*n+1))*A162348(2*(n+1))`
-/

namespace A139717.P8063833502856566646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A162348 (2 * (n + 1)) - A162348 (2 * n + 1)) * A162348 (2 * (n + 1))

end

end A139717.P8063833502856566646

/-! ## A139717.P6584284011172824005

`A033677(A000027(n+1))*A033677(n+1)-A000027(n+1)`
-/

namespace A139717.P6584284011172824005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033677 (A000027 (n + 1)).toNat * A033677 (n + 1) - A000027 (n + 1)

end

end A139717.P6584284011172824005

/-! ## A139717.P7087537097772465163

`A023443(A033677(n+1)²-n)`
-/

namespace A139717.P7087537097772465163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A033677 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A139717.P7087537097772465163

/-!
# A139718: A number n is included if |k - n/k| divides n for at least one divisor k of n.

The programs for A139718, there is no canonical definition to state claims against.
-/

/-! ## A139718.P13988455335205918766

`eq[A178602(n), A260437(n+1)]`
-/

namespace A139718.P13988455335205918766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178602 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A139718.P13988455335205918766

/-! ## A139718.P12678877143353272319

`eq[log2(A260429(n+1)), A178602(n)]`
-/

namespace A139718.P12678877143353272319
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A260429 (n + 1) : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178602 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℝ)) n

end

end A139718.P12678877143353272319

/-! ## A139718.P6223298895090525671

`lt[log2(A260410(n)), A260438(n+1)]`
-/

namespace A139718.P6223298895090525671
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A260410 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260438 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A139718.P6223298895090525671

/-! ## A139718.P11419333504053208671

`∩[A103288(n+1), A380378(A000217(3*n+2))]`
-/

namespace A139718.P11419333504053208671
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103288 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380378 (A000217 (3 * n + 2)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139718.P11419333504053208671

/-! ## A139718.P11198765119741926730

`record[A000010(A104695(n+1))]`
-/

namespace A139718.P11198765119741926730
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A104695 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139718.P11198765119741926730

/-!
# A139720: Number of digits between successive occurrences of digit 2 in decimal representation of Pi.

The programs for A139720, there is no canonical definition to state claims against.
-/

/-! ## A139720.P15513490522628650018

`Δ[A037001(n+1)]-1`
-/

namespace A139720.P15513490522628650018
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139720.P15513490522628650018

/-! ## A139720.P7758654924629074996

`Δ[A053746(n+1)]-1`
-/

namespace A139720.P7758654924629074996
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139720.P7758654924629074996

/-! ## A139720.P383227000794426584

`Δ[eq[2, A000796(n)]]-1`
-/

namespace A139720.P383227000794426584
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A139720.P383227000794426584

/-! ## A139720.P11237834322531605479

`Δ[A065254(10*n+2)]-1`
-/

namespace A139720.P11237834322531605479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139720.P11237834322531605479

/-! ## A139720.P3651601062420953531

`Δ[A053746(-xor(n, -1))-n]`
-/

namespace A139720.P3651601062420953531
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (-Int.xor (n : ℤ) (-1)).toNat - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139720.P3651601062420953531

/-! ## A139720.P8169376769194653418

`A002837(Δ[A037001(n+1)])`
-/

namespace A139720.P8169376769194653418
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (f1 (n + 1) - f1 n).toNat

end

end A139720.P8169376769194653418

/-! ## A139720.P16759281160774965256

`A002837(Δ[A053746(n+1)])`
-/

namespace A139720.P16759281160774965256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053746 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (f1 (n + 1) - f1 n).toNat

end

end A139720.P16759281160774965256

/-! ## A139720.P16666268478292225127

`A023443(Δ[A037001(n+1)])`
-/

namespace A139720.P16666268478292225127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139720.P16666268478292225127

/-! ## A139720.P6734795359717401052

`A033619(Δ[A037001(n+1)])`
-/

namespace A139720.P6734795359717401052
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A139720.P6734795359717401052

/-! ## A139720.P9817318714630248758

`Δ[A037001(n+1)+A001489(n)]`
-/

namespace A139720.P9817318714630248758
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037001 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139720.P9817318714630248758

/-!
# A139721: Number of digits between successive occurrences of digit 3 in decimal representation of Pi.

The programs for A139721, there is no canonical definition to state claims against.
-/

/-! ## A139721.P9691530049905157121

`Δ[A053747(n+1)]-1`
-/

namespace A139721.P9691530049905157121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139721.P9691530049905157121

/-! ## A139721.P16845181315652954185

`Δ[eq[3, A000796(n)]-n]`
-/

namespace A139721.P16845181315652954185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n : ℤ) - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139721.P16845181315652954185

/-! ## A139721.P13347155306396446411

`Δ[A065254(10*n+3)]-1`
-/

namespace A139721.P13347155306396446411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139721.P13347155306396446411

/-! ## A139721.P17592483157922816120

`A002837(Δ[A053747(n+1)])`
-/

namespace A139721.P17592483157922816120
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (f1 (n + 1) - f1 n).toNat

end

end A139721.P17592483157922816120

/-! ## A139721.P4565436313266368492

`A023443(Δ[A053747(n+1)])`
-/

namespace A139721.P4565436313266368492
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139721.P4565436313266368492

/-! ## A139721.P911166640461430775

`A033619(Δ[A053747(n+1)])`
-/

namespace A139721.P911166640461430775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A139721.P911166640461430775

/-! ## A139721.P7421553127652736699

`A136602(Δ[A053747(n+1)])`
-/

namespace A139721.P7421553127652736699
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136602 (f1 (n + 1) - f1 n).toNat

end

end A139721.P7421553127652736699

/-! ## A139721.P8373981045209770928

`A258071(Δ[A053747(n+1)])`
-/

namespace A139721.P8373981045209770928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A258071 (f1 (n + 1) - f1 n).toNat

end

end A139721.P8373981045209770928

/-! ## A139721.P12582321208226067397

`A057918(Δ[A053747(n+1)]²)`
-/

namespace A139721.P12582321208226067397
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057918 ((f1 (n + 1) - f1 n) ^ 2).toNat

end

end A139721.P12582321208226067397

/-! ## A139721.P10121214147454959288

`Δ[A053747(n+1)+A001489(n)]`
-/

namespace A139721.P10121214147454959288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053747 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139721.P10121214147454959288

/-!
# A139722: Number of digits between successive occurrences of digit 4 in decimal representation of Pi.

The programs for A139722, there is no canonical definition to state claims against.
-/

/-! ## A139722.P4212088906992389384

`Δ[A037003(n+1)]-1`
-/

namespace A139722.P4212088906992389384
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139722.P4212088906992389384

/-! ## A139722.P11327100539428322414

`Δ[A053748(n+1)]-1`
-/

namespace A139722.P11327100539428322414
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139722.P11327100539428322414

/-! ## A139722.P10993870825176914974

`Δ[A065254(10*n+4)]-1`
-/

namespace A139722.P10993870825176914974
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 4)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139722.P10993870825176914974

/-! ## A139722.P5544603283164203772

`A023443(Δ[A037003(n+1)])`
-/

namespace A139722.P5544603283164203772
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139722.P5544603283164203772

/-! ## A139722.P9250177876933925327

`A033619(Δ[A037003(n+1)])`
-/

namespace A139722.P9250177876933925327
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A139722.P9250177876933925327

/-! ## A139722.P1208806479391008516

`A023443(Δ[A053748(n+1)])`
-/

namespace A139722.P1208806479391008516
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053748 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139722.P1208806479391008516

/-! ## A139722.P6952460728533431464

`-A024000(Δ[A037003(n+1)])`
-/

namespace A139722.P6952460728533431464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A024000 (f1 (n + 1) - f1 n).toNat

end

end A139722.P6952460728533431464

/-! ## A139722.P9538114262313650955

`Δ[A037003(n+1)+A001489(n)]`
-/

namespace A139722.P9538114262313650955
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139722.P9538114262313650955

/-! ## A139722.P9905158922320471630

`Δ[A053748(n+1)+A001489(n)]`
-/

namespace A139722.P9905158922320471630
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053748 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139722.P9905158922320471630

/-! ## A139722.P815912756541538255

`A037003(n+2)-A053748(n+1)`
-/

namespace A139722.P815912756541538255
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037003 (n + 2) - A053748 (n + 1)

end

end A139722.P815912756541538255

/-!
# A139723: Number of digits between successive occurrences of digit 5 in decimal representation of Pi.

The programs for A139723, there is no canonical definition to state claims against.
-/

/-! ## A139723.P12016512536845444513

`Δ[A037004(1+n)]-1`
-/

namespace A139723.P12016512536845444513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139723.P12016512536845444513

/-! ## A139723.P1476413790541110162

`Δ[A053749(n+1)]-1`
-/

namespace A139723.P1476413790541110162
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139723.P1476413790541110162

/-! ## A139723.P14462583597171404024

`Δ[A065254(10*n+5)]-1`
-/

namespace A139723.P14462583597171404024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139723.P14462583597171404024

/-! ## A139723.P658114668741778265

`A002837(Δ[A037004(n+1)])`
-/

namespace A139723.P658114668741778265
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (f1 (n + 1) - f1 n).toNat

end

end A139723.P658114668741778265

/-! ## A139723.P2297122546439278748

`A002837(Δ[A053749(n+1)])`
-/

namespace A139723.P2297122546439278748
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002837 (f1 (n + 1) - f1 n).toNat

end

end A139723.P2297122546439278748

/-! ## A139723.P4545519485790328160

`A023443(Δ[A037004(n+1)])`
-/

namespace A139723.P4545519485790328160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139723.P4545519485790328160

/-! ## A139723.P16186644927648757171

`A033619(Δ[A037004(n+1)])`
-/

namespace A139723.P16186644927648757171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A139723.P16186644927648757171

/-! ## A139723.P10735513234583921037

`A023443(Δ[A053749(n+1)])`
-/

namespace A139723.P10735513234583921037
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053749 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139723.P10735513234583921037

/-! ## A139723.P2418701188540754085

`Δ[A037004(n+1)+A001489(n)]`
-/

namespace A139723.P2418701188540754085
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037004 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139723.P2418701188540754085

/-! ## A139723.P6651729358908312704

`Δ[A053749(n+1)+A001489(n)]`
-/

namespace A139723.P6651729358908312704
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053749 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139723.P6651729358908312704

/-!
# A139724: Number of digits between successive occurrences of digit 6 in decimal representation of Pi.

The programs for A139724, there is no canonical definition to state claims against.
-/

/-! ## A139724.P12570920014392293882

`Δ[A037005(n+1)]-1`
-/

namespace A139724.P12570920014392293882
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139724.P12570920014392293882

/-! ## A139724.P12351659877278316700

`Δ[A053750(n+1)]-1`
-/

namespace A139724.P12351659877278316700
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139724.P12351659877278316700

/-! ## A139724.P1928252184369235896

`Δ[eq[2, A155912(n)]]-1`
-/

namespace A139724.P1928252184369235896
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155912 n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A139724.P1928252184369235896

/-! ## A139724.P14024137517623694361

`Δ[A065254(10*n+6)]-1`
-/

namespace A139724.P14024137517623694361
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 6)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139724.P14024137517623694361

/-! ## A139724.P15470385524920805357

`A023443(Δ[A037005(n+1)])`
-/

namespace A139724.P15470385524920805357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139724.P15470385524920805357

/-! ## A139724.P7105695199013890729

`A033619(Δ[A037005(n+1)])`
-/

namespace A139724.P7105695199013890729
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A139724.P7105695199013890729

/-! ## A139724.P3593957557443751206

`A023443(Δ[A053750(n+1)])`
-/

namespace A139724.P3593957557443751206
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053750 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139724.P3593957557443751206

/-! ## A139724.P10712443366261928121

`Δ[A037005(n+1)+A001489(n)]`
-/

namespace A139724.P10712443366261928121
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139724.P10712443366261928121

/-! ## A139724.P17382976565775081949

`Δ[A053750(n+1)+A001489(n)]`
-/

namespace A139724.P17382976565775081949
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053750 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139724.P17382976565775081949

/-! ## A139724.P14134044100991482404

`A037005(n+2)-A053750(n+1)`
-/

namespace A139724.P14134044100991482404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037005 (n + 2) - A053750 (n + 1)

end

end A139724.P14134044100991482404

/-!
# A139725: Number of digits between successive occurrences of digit 7 in decimal representation of Pi.

The programs for A139725, there is no canonical definition to state claims against.
-/

/-! ## A139725.P11529319262780490246

`Δ[A036974(n+1)]-1`
-/

namespace A139725.P11529319262780490246
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139725.P11529319262780490246

/-! ## A139725.P3952028429643586573

`Δ[A053751(n+1)]-1`
-/

namespace A139725.P3952028429643586573
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139725.P3952028429643586573

/-! ## A139725.P17534813514391227416

`Δ[A065254(10*n+7)]-1`
-/

namespace A139725.P17534813514391227416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 7)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139725.P17534813514391227416

/-! ## A139725.P12546864029272845172

`Δ[eq[2, A119505(n+1)]]-1`
-/

namespace A139725.P12546864029272845172
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119505 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A139725.P12546864029272845172

/-! ## A139725.P13560838087741516911

`Δ[lt[2, A086995(n+1)]]-1`
-/

namespace A139725.P13560838087741516911
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) < f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A139725.P13560838087741516911

/-! ## A139725.P14930654532488259036

`A023443(Δ[A036974(n+1)])`
-/

namespace A139725.P14930654532488259036
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139725.P14930654532488259036

/-! ## A139725.P6123046129079421638

`A033619(Δ[A036974(n+1)])`
-/

namespace A139725.P6123046129079421638
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A139725.P6123046129079421638

/-! ## A139725.P2747449465708568623

`A023443(Δ[A053751(n+1)])`
-/

namespace A139725.P2747449465708568623
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139725.P2747449465708568623

/-! ## A139725.P14167964625419180126

`Δ[A036974(n+1)+A001489(n)]`
-/

namespace A139725.P14167964625419180126
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (n + 1) + A001489 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139725.P14167964625419180126

/-! ## A139725.P10066497785289386390

`Δ[A036974(n+1)+A024000(n)]`
-/

namespace A139725.P10066497785289386390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036974 (n + 1) + A024000 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139725.P10066497785289386390

/-!
# A139726: Number of digits between successive occurrences of digit 8 in decimal representation of Pi.

The programs for A139726, there is no canonical definition to state claims against.
-/

/-! ## A139726.P9352815625135609417

`Δ[A037006(n+1)]-1`
-/

namespace A139726.P9352815625135609417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139726.P9352815625135609417

/-! ## A139726.P18446028808082927786

`Δ[A053752(n+1)]-1`
-/

namespace A139726.P18446028808082927786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139726.P18446028808082927786

/-! ## A139726.P321707956908233965

`Δ[A065254(10*n+8)]-1`
-/

namespace A139726.P321707956908233965
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (10 * n + 8)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139726.P321707956908233965

/-! ## A139726.P464029264332508786

`A023443(Δ[A037006(n+1)])`
-/

namespace A139726.P464029264332508786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139726.P464029264332508786

/-! ## A139726.P10498194023106949306

`A033619(Δ[A037006(n+1)])`
-/

namespace A139726.P10498194023106949306
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033619 (f1 (n + 1) - f1 n).toNat

end

end A139726.P10498194023106949306

/-! ## A139726.P9311864566658222530

`A023443(Δ[A053752(n+1)])`
-/

namespace A139726.P9311864566658222530
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053752 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139726.P9311864566658222530

/-! ## A139726.P10619875277345086846

`A136602(Δ[A037006(n+1)])`
-/

namespace A139726.P10619875277345086846
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136602 (f1 (n + 1) - f1 n).toNat

end

end A139726.P10619875277345086846

/-! ## A139726.P8337827733035181976

`abs(A024000(Δ[A037006(n+1)]))`
-/

namespace A139726.P8337827733035181976
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (f1 (n + 1) - f1 n).toNat|

end

end A139726.P8337827733035181976

/-! ## A139726.P17302168659318120303

`A037006(n+2)-A053752(n+1)`
-/

namespace A139726.P17302168659318120303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 2) - A053752 (n + 1)

end

end A139726.P17302168659318120303

/-! ## A139726.P9096559362041647511

`A037006(n+2)-(A037006(n+1)+1)`
-/

namespace A139726.P9096559362041647511
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037006 (n + 2) - (A037006 (n + 1) + 1)

end

end A139726.P9096559362041647511

/-!
# A139727: Number of digits between successive occurrences of digit 9 in decimal representation of Pi.

The programs for A139727, there is no canonical definition to state claims against.
-/

/-! ## A139727.P7140680971637702341

`A108664(n+2)-1`
-/

namespace A139727.P7140680971637702341
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108664 (n + 2) - 1

end

end A139727.P7140680971637702341

/-! ## A139727.P17724667905259069986

`Δ[A037007(n+1)]-1`
-/

namespace A139727.P17724667905259069986
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139727.P17724667905259069986

/-! ## A139727.P10136497254431370205

`Δ[A053753(n+1)]-1`
-/

namespace A139727.P10136497254431370205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139727.P10136497254431370205

/-! ## A139727.P1255962291345382867

`Δ[eq[9, A000796(n)]]-1`
-/

namespace A139727.P1255962291345382867
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A139727.P1255962291345382867

/-! ## A139727.P8610122874238937637

`A023443(A108664(n+2))`
-/

namespace A139727.P8610122874238937637
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A108664 (n + 2)).toNat

end

end A139727.P8610122874238937637

/-! ## A139727.P9333546132011301849

`A023443(Δ[A053753(n+1)])`
-/

namespace A139727.P9333546132011301849
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053753 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (f1 (n + 1) - f1 n).toNat

end

end A139727.P9333546132011301849

/-! ## A139727.P15668935228808852496

`A037007(n+2)-A053753(n+1)`
-/

namespace A139727.P15668935228808852496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (n + 2) - A053753 (n + 1)

end

end A139727.P15668935228808852496

/-! ## A139727.P3714895191566343578

`A037007(n+2)-(A037007(n+1)+1)`
-/

namespace A139727.P3714895191566343578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037007 (n + 2) - (A037007 (n + 1) + 1)

end

end A139727.P3714895191566343578

/-! ## A139727.P4921218326213087568

`Δ[A065254(A017377(n))]-1`
-/

namespace A139727.P4921218326213087568
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017377 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139727.P4921218326213087568

/-! ## A139727.P4451751396502838990

`Δ[A065254(A017329(n)+4)]-1`
-/

namespace A139727.P4451751396502838990
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065254 (A017329 n + 4).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139727.P4451751396502838990

/-!
# A139728: Number of digits between successive occurrences of digit 0 in decimal representation of Pi.

The programs for A139728, there is no canonical definition to state claims against.
-/

/-! ## A139728.P10200072201277165128

`A014974(n+1)-1`
-/

namespace A139728.P10200072201277165128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014974 (n + 1) - 1

end

end A139728.P10200072201277165128

/-! ## A139728.P2386229880607510115

`Δ[A014976(n+1)]-1`
-/

namespace A139728.P2386229880607510115
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139728.P2386229880607510115

/-! ## A139728.P11014517326794824982

`Δ[A037008(n+1)]-1`
-/

namespace A139728.P11014517326794824982
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - 1

end

end A139728.P11014517326794824982

/-! ## A139728.P14494629636558333647

`Δ[lt[A000796(n), 1]]-1`
-/

namespace A139728.P14494629636558333647
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000796 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A139728.P14494629636558333647

/-! ## A139728.P7274084840472285289

`A023443(A014974(n+1))`
-/

namespace A139728.P7274084840472285289
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A014974 (n + 1)).toNat

end

end A139728.P7274084840472285289

/-! ## A139728.P18330113109880817310

`A037008(n+2)-A014976(n+1)`
-/

namespace A139728.P18330113109880817310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 2) - A014976 (n + 1)

end

end A139728.P18330113109880817310

/-! ## A139728.P11586361462791494843

`A014976(n+2)-(A014976(n+1)+1)`
-/

namespace A139728.P11586361462791494843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 2) - (A014976 (n + 1) + 1)

end

end A139728.P11586361462791494843

/-! ## A139728.P9690920696599797372

`A037008(n+2)-(A037008(n+1)+1)`
-/

namespace A139728.P9690920696599797372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037008 (n + 2) - (A037008 (n + 1) + 1)

end

end A139728.P9690920696599797372

/-! ## A139728.P10489260039989336506

`A014976(n+2)-A020725(A014976(n+1))`
-/

namespace A139728.P10489260039989336506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014976 (n + 2) - A020725 (A014976 (n + 1)).toNat

end

end A139728.P10489260039989336506

/-! ## A139728.P3272750069220741192

`Δ[lt[A086995(n+1), 1]]-1`
-/

namespace A139728.P3272750069220741192
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086995 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) - 1

end

end A139728.P3272750069220741192

/-!
# A139729: a(n) = 9^n mod 4^n.

The programs for A139729, the canonical program `A139729.P5645517073151823784` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139729 has offset 0).

The definition of A139729 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^n)%(4^n)` (program `A139729.P5645517073151823784`, by `A139729.P5645517073151823784.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139729.P5645517073151823784

`(9^n)%(4^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139729

/-- `(9^n)%(4^n)` -/
def P5645517073151823784.Spec : Prop :=
  ∀ n, (P5645517073151823784.a n : ℤ) = A139729 n

theorem P5645517073151823784.correct : P5645517073151823784.Spec := by
  intro n
  simp only [A139729]

end A139729

/-! ## A139729.P2377778251800148753

`A002380(2*n)`
-/

namespace A139729.P2377778251800148753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (2 * n)

end

end A139729.P2377778251800148753

namespace A139729

/-- `A002380(2*n)` -/
def P2377778251800148753.Spec : Prop :=
  ∀ n, P2377778251800148753.a n = A139729 n

end A139729

/-! ## A139729.P16702148373992934070

`or(2, A002380(n+n))-2`
-/

namespace A139729.P16702148373992934070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 (A002380 (n + n)) - 2

end

end A139729.P16702148373992934070

namespace A139729

/-- `or(2, A002380(n+n))-2` -/
def P16702148373992934070.Spec : Prop :=
  ∀ n, P16702148373992934070.a n = A139729 n

end A139729

/-! ## A139729.P14002852423290617530

`A002380(n+n)+and(4, A002380(n))`
-/

namespace A139729.P14002852423290617530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (n + n) + Int.land 4 (A002380 n)

end

end A139729.P14002852423290617530

namespace A139729

/-- `A002380(n+n)+and(4, A002380(n))` -/
def P14002852423290617530.Spec : Prop :=
  ∀ n, P14002852423290617530.a n = A139729 n

end A139729

/-! ## A139729.P4889904932305340900

`A002380(A004277(n))-A000007(n)`
-/

namespace A139729.P4889904932305340900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 (A004277 n).toNat - A000007 n

end

end A139729.P4889904932305340900

namespace A139729

/-- `A002380(A004277(n))-A000007(n)` -/
def P4889904932305340900.Spec : Prop :=
  ∀ n, P4889904932305340900.a n = A139729 n

end A139729

/-! ## A139729.P15738462767016295625

`and(A139733(n), A155619(n))`
-/

namespace A139729.P15738462767016295625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A139733 n) (A155619 n)

end

end A139729.P15738462767016295625

namespace A139729

/-- `and(A139733(n), A155619(n))` -/
def P15738462767016295625.Spec : Prop :=
  ∀ n, P15738462767016295625.a n = A139729 n

end A139729

/-! ## A139729.P6717365793262344940

`and(A000225(2*n), A056577(2*n))`
-/

namespace A139729.P6717365793262344940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n)) (A056577 (2 * n))

end

end A139729.P6717365793262344940

namespace A139729

/-- `and(A000225(2*n), A056577(2*n))` -/
def P6717365793262344940.Spec : Prop :=
  ∀ n, P6717365793262344940.a n = A139729 n

end A139729

/-! ## A139729.P14960440452514513642

`and(A056577(2*n), A168616(2*n))`
-/

namespace A139729.P14960440452514513642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056577 (2 * n)) (A168616 (2 * n))

end

end A139729.P14960440452514513642

namespace A139729

/-- `and(A056577(2*n), A168616(2*n))` -/
def P14960440452514513642.Spec : Prop :=
  ∀ n, P14960440452514513642.a n = A139729 n

end A139729

/-! ## A139729.P15973947122388327913

`and(A056577(2*n), A255047(2*n))`
-/

namespace A139729.P15973947122388327913
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A056577 (2 * n)) (A255047 (2 * n))

end

end A139729.P15973947122388327913

namespace A139729

/-- `and(A056577(2*n), A255047(2*n))` -/
def P15973947122388327913.Spec : Prop :=
  ∀ n, P15973947122388327913.a n = A139729 n

end A139729

/-! ## A139729.P8923845673500183767

`and(A000244(n)², A024036(n))`
-/

namespace A139729.P8923845673500183767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000244 n ^ 2) (A024036 n)

end

end A139729.P8923845673500183767

namespace A139729

/-- `and(A000244(n)², A024036(n))` -/
def P8923845673500183767.Spec : Prop :=
  ∀ n, P8923845673500183767.a n = A139729 n

end A139729

/-! ## A139729.P13391544847910728706

`and(A000225(2*n), A001019(n))`
-/

namespace A139729.P13391544847910728706
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n)) (A001019 n)

end

end A139729.P13391544847910728706

namespace A139729

/-- `and(A000225(2*n), A001019(n))` -/
def P13391544847910728706.Spec : Prop :=
  ∀ n, P13391544847910728706.a n = A139729 n

end A139729

/-! ## A139729.P12557750347207065937

`and(A000244(2*n), A024036(n))`
-/

namespace A139729.P12557750347207065937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000244 (2 * n)) (A024036 n)

end

end A139729.P12557750347207065937

namespace A139729

/-- `and(A000244(2*n), A024036(n))` -/
def P12557750347207065937.Spec : Prop :=
  ∀ n, P12557750347207065937.a n = A139729 n

end A139729

/-! ## A139729.P249704806490354929

`and(A000079(n)²-1, A001019(n))`
-/

namespace A139729.P249704806490354929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000079 n ^ 2 - 1) (A001019 n)

end

end A139729.P249704806490354929

namespace A139729

/-- `and(A000079(n)²-1, A001019(n))` -/
def P249704806490354929.Spec : Prop :=
  ∀ n, P249704806490354929.a n = A139729 n

end A139729

/-! ## A139729.P8226471645898199964

`and(A000225(2*n), A000244(n)²)`
-/

namespace A139729.P8226471645898199964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n)) (A000244 n ^ 2)

end

end A139729.P8226471645898199964

namespace A139729

/-- `and(A000225(2*n), A000244(n)²)` -/
def P8226471645898199964.Spec : Prop :=
  ∀ n, P8226471645898199964.a n = A139729 n

end A139729

/-! ## A139729.P10892316755699310752

`and(A000225(2*n), A000244(2*n))`
-/

namespace A139729.P10892316755699310752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n)) (A000244 (2 * n))

end

end A139729.P10892316755699310752

namespace A139729

/-- `and(A000225(2*n), A000244(2*n))` -/
def P10892316755699310752.Spec : Prop :=
  ∀ n, P10892316755699310752.a n = A139729 n

end A139729

/-! ## A139729.P16842549919861142140

`and(A000225(2*n), A001047(2*n))`
-/

namespace A139729.P16842549919861142140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n)) (A001047 (2 * n))

end

end A139729.P16842549919861142140

namespace A139729

/-- `and(A000225(2*n), A001047(2*n))` -/
def P16842549919861142140.Spec : Prop :=
  ∀ n, P16842549919861142140.a n = A139729 n

end A139729

/-! ## A139729.P15371930611657143313

`and(A000225(2*n), A007689(2*n))`
-/

namespace A139729.P15371930611657143313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n)) (A007689 (2 * n))

end

end A139729.P15371930611657143313

namespace A139729

/-- `and(A000225(2*n), A007689(2*n))` -/
def P15371930611657143313.Spec : Prop :=
  ∀ n, P15371930611657143313.a n = A139729 n

end A139729

/-! ## A139729.P13396141203657689907

`and(A000225(2*n), A087451(2*n))`
-/

namespace A139729.P13396141203657689907
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n)) (A087451 (2 * n))

end

end A139729.P13396141203657689907

namespace A139729

/-- `and(A000225(2*n), A087451(2*n))` -/
def P13396141203657689907.Spec : Prop :=
  ∀ n, P13396141203657689907.a n = A139729 n

end A139729

/-! ## A139729.P9599419987721904948

`and(A000225(2*n), A214091(2*n))`
-/

namespace A139729.P9599419987721904948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 (2 * n)) (A214091 (2 * n))

end

end A139729.P9599419987721904948

namespace A139729

/-- `and(A000225(2*n), A214091(2*n))` -/
def P9599419987721904948.Spec : Prop :=
  ∀ n, P9599419987721904948.a n = A139729 n

end A139729

/-!
# A139730: a(n) = 9^n mod 5^n.

The programs for A139730, the canonical program `A139730.P5301201328856749525` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139730 has offset 0).

The definition of A139730 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^n)%(5^n)` (program `A139730.P5301201328856749525`, by `A139730.P5301201328856749525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139730.P5301201328856749525

`(9^n)%(5^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139730

/-- `(9^n)%(5^n)` -/
def P5301201328856749525.Spec : Prop :=
  ∀ n, (P5301201328856749525.a n : ℤ) = A139730 n

theorem P5301201328856749525.correct : P5301201328856749525.Spec := by
  intro n
  simp only [A139730]

end A139730

/-! ## A139730.P5669068902620976090

`A074618(n)%A000351(n)*gcd(n, n+1)`
-/

namespace A139730.P5669068902620976090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074618 n) (A000351 n) * (Nat.gcd n (n + 1) : ℤ)

end

end A139730.P5669068902620976090

namespace A139730

/-- `A074618(n)%A000351(n)*gcd(n, n+1)` -/
def P5669068902620976090.Spec : Prop :=
  ∀ n, P5669068902620976090.a n = A139730 n

end A139730

/-! ## A139730.P10818821382440889738

`A074618(n)%A000351(n)*A054977(n)`
-/

namespace A139730.P10818821382440889738
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074618 n) (A000351 n) * A054977 n

end

end A139730.P10818821382440889738

namespace A139730

/-- `A074618(n)%A000351(n)*A054977(n)` -/
def P10818821382440889738.Spec : Prop :=
  ∀ n, P10818821382440889738.a n = A139730 n

end A139730

/-!
# A139731: a(n) = 9^n mod 6^n.

The programs for A139731, the canonical program `A139731.P10603744992487586509` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139731 has offset 0).

The definition of A139731 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^n)%(6^n)` (program `A139731.P10603744992487586509`, by `A139731.P10603744992487586509.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139731.P10603744992487586509

`(9^n)%(6^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139731

/-- `(9^n)%(6^n)` -/
def P10603744992487586509.Spec : Prop :=
  ∀ n, (P10603744992487586509.a n : ℤ) = A139731 n

theorem P10603744992487586509.correct : P10603744992487586509.Spec := by
  intro n
  simp only [A139731]

end A139731

/-! ## A139731.P17171971029934258576

`3^n*A002380(n)`
-/

namespace A139731.P17171971029934258576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (3 ^ n : ℤ) * A002380 n

end

end A139731.P17171971029934258576

namespace A139731

/-- `3^n*A002380(n)` -/
def P17171971029934258576.Spec : Prop :=
  ∀ n, P17171971029934258576.a n = A139731 n

end A139731

/-! ## A139731.P3557770570120712853

`A002380(n)*A140429(n+1)`
-/

namespace A139731.P3557770570120712853
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002380 n * A140429 (n + 1)

end

end A139731.P3557770570120712853

namespace A139731

/-- `A002380(n)*A140429(n+1)` -/
def P3557770570120712853.Spec : Prop :=
  ∀ n, P3557770570120712853.a n = A139731 n

end A139731

/-! ## A139731.P13985055737297959475

`A000244(n)%A000079(n)*A000244(n)`
-/

namespace A139731.P13985055737297959475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000244 n) (A000079 n) * A000244 n

end

end A139731.P13985055737297959475

namespace A139731

/-- `A000244(n)%A000079(n)*A000244(n)` -/
def P13985055737297959475.Spec : Prop :=
  ∀ n, P13985055737297959475.a n = A139731 n

end A139731

/-! ## A139731.P9263811307551743600

`and(A000225(n), A000244(n))*A000244(n)`
-/

namespace A139731.P9263811307551743600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A000225 n) (A000244 n) * A000244 n

end

end A139731.P9263811307551743600

namespace A139731

/-- `and(A000225(n), A000244(n))*A000244(n)` -/
def P9263811307551743600.Spec : Prop :=
  ∀ n, P9263811307551743600.a n = A139731 n

end A139731

/-! ## A139731.P6911276173793389278

`A000400(n)*A002380(n)/A000079(n)`
-/

namespace A139731.P6911276173793389278
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000400 n * A002380 n : ℚ) / (A000079 n : ℚ)

end

end A139731.P6911276173793389278

namespace A139731

/-- `A000400(n)*A002380(n)/A000079(n)` -/
def P6911276173793389278.Spec : Prop :=
  ∀ n, P6911276173793389278.a n = (A139731 n : ℚ)

end A139731

/-!
# A139732: a(n) = 9^n mod 7^n.

The programs for A139732, the canonical program `A139732.P3707737912655512066` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139732 has offset 0).

The definition of A139732 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^n)%(7^n)` (program `A139732.P3707737912655512066`, by `A139732.P3707737912655512066.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139732.P3707737912655512066

`(9^n)%(7^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139732

/-- `(9^n)%(7^n)` -/
def P3707737912655512066.Spec : Prop :=
  ∀ n, (P3707737912655512066.a n : ℤ) = A139732 n

theorem P3707737912655512066.correct : P3707737912655512066.Spec := by
  intro n
  simp only [A139732]

end A139732

/-! ## A139732.P11561326025089376793

`A013708(n)%A169634(n)/3`
-/

namespace A139732.P11561326025089376793
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A013708 n) (A169634 n) : ℚ) / 3

end

end A139732.P11561326025089376793

namespace A139732

/-- `A013708(n)%A169634(n)/3` -/
def P11561326025089376793.Spec : Prop :=
  ∀ n, P11561326025089376793.a n = (A139732 n : ℚ)

end A139732

/-!
# A139733: 9^n mod 8^n.

The programs for A139733, the canonical program `A139733.P13572722763981550938` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139733 has offset 0).

The definition of A139733 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(9^n)%(8^n)` (program `A139733.P13572722763981550938`, by `A139733.P13572722763981550938.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139733.P13572722763981550938

`(9^n)%(8^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139733

/-- `(9^n)%(8^n)` -/
def P13572722763981550938.Spec : Prop :=
  ∀ n, (P13572722763981550938.a n : ℤ) = A139733 n

theorem P13572722763981550938.correct : P13572722763981550938.Spec := by
  intro n
  simp only [A139733]

end A139733

/-! ## A139733.P7811300017274030032

`and(8^n+9^n, 8^n-1)`
-/

namespace A139733.P7811300017274030032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (8 ^ n + 9 ^ n : ℤ) ((8 ^ n : ℤ) - 1)

end

end A139733.P7811300017274030032

namespace A139733

/-- `and(8^n+9^n, 8^n-1)` -/
def P7811300017274030032.Spec : Prop :=
  ∀ n, P7811300017274030032.a n = A139733 n

end A139733

/-! ## A139733.P12933953238389978471

`abs(and(8^n-1, 9^n-8^n))`
-/

namespace A139733.P12933953238389978471
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.land ((8 ^ n : ℤ) - 1) ((9 ^ n : ℤ) - (8 ^ n : ℤ))|

end

end A139733.P12933953238389978471

namespace A139733

/-- `abs(and(8^n-1, 9^n-8^n))` -/
def P12933953238389978471.Spec : Prop :=
  ∀ n, P12933953238389978471.a n = A139733 n

end A139733

/-! ## A139733.P2280825345712680420

`A000007(3*(n+1))+A016185(n)%A001018(n)`
-/

namespace A139733.P2280825345712680420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000007 (3 * (n + 1)) + Int.tmod (A016185 n) (A001018 n)

end

end A139733.P2280825345712680420

namespace A139733

/-- `A000007(3*(n+1))+A016185(n)%A001018(n)` -/
def P2280825345712680420.Spec : Prop :=
  ∀ n, P2280825345712680420.a n = A139733 n

end A139733

/-! ## A139733.P14576303920447477249

`A156273(n)%A156270(n)/A000108(n)`
-/

namespace A139733.P14576303920447477249
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A156273 n) (A156270 n) : ℚ) / (A000108 n : ℚ)

end

end A139733.P14576303920447477249

namespace A139733

/-- `A156273(n)%A156270(n)/A000108(n)` -/
def P14576303920447477249.Spec : Prop :=
  ∀ n, P14576303920447477249.a n = (A139733 n : ℚ)

end A139733

/-!
# A139734: a(n) = 10^n mod 3^n.

The programs for A139734, the canonical program `A139734.P3192812457101176362` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139734 has offset 0).

The definition of A139734 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n)%(3^n)` (program `A139734.P3192812457101176362`, by `A139734.P3192812457101176362.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139734.P3192812457101176362

`(10^n)%(3^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139734

/-- `(10^n)%(3^n)` -/
def P3192812457101176362.Spec : Prop :=
  ∀ n, (P3192812457101176362.a n : ℤ) = A139734 n

theorem P3192812457101176362.correct : P3192812457101176362.Spec := by
  intro n
  simp only [A139734]

end A139734

/-! ## A139734.P14563041213743850149

`A011557(n)%A000244(n)*A057979(A317440(n+1))`
-/

namespace A139734.P14563041213743850149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A011557 n) (A000244 n) * A057979 (A317440 (n + 1)).toNat

end

end A139734.P14563041213743850149

namespace A139734

/-- `A011557(n)%A000244(n)*A057979(A317440(n+1))` -/
def P14563041213743850149.Spec : Prop :=
  ∀ n, P14563041213743850149.a n = A139734 n

end A139734

/-! ## A139734.P6963762690490413721

`abs(Δ[A173735(n)]%A000244(n))`
-/

namespace A139734.P6963762690490413721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A173735 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000244 n)|

end

end A139734.P6963762690490413721

namespace A139734

/-- `abs(Δ[A173735(n)]%A000244(n))` -/
def P6963762690490413721.Spec : Prop :=
  ∀ n, P6963762690490413721.a n = A139734 n

end A139734

/-! ## A139734.P2324795171572008968

`A009964(n)%A000400(n)/A000079(n)`
-/

namespace A139734.P2324795171572008968
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A009964 n) (A000400 n) : ℚ) / (A000079 n : ℚ)

end

end A139734.P2324795171572008968

namespace A139734

/-- `A009964(n)%A000400(n)/A000079(n)` -/
def P2324795171572008968.Spec : Prop :=
  ∀ n, P2324795171572008968.a n = (A139734 n : ℚ)

end A139734

/-!
# A139735: a(n) = 10^n mod 4^n.

The programs for A139735, the canonical program `A139735.P12755154534006488373` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139735 has offset 0).

The definition of A139735 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n)%(4^n)` (program `A139735.P12755154534006488373`, by `A139735.P12755154534006488373.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139735.P12755154534006488373

`(10^n)%(4^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139735

/-- `(10^n)%(4^n)` -/
def P12755154534006488373.Spec : Prop :=
  ∀ n, (P12755154534006488373.a n : ℤ) = A139735 n

theorem P12755154534006488373.correct : P12755154534006488373.Spec := by
  intro n
  simp only [A139735]

end A139735

/-! ## A139735.P8615538365132963347

`2^n*A029757(n)`
-/

namespace A139735.P8615538365132963347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A029757 n

end

end A139735.P8615538365132963347

namespace A139735

/-- `2^n*A029757(n)` -/
def P8615538365132963347.Spec : Prop :=
  ∀ n, P8615538365132963347.a n = A139735 n

end A139735

/-! ## A139735.P13464906680454378484

`A029757(n)*A155559(n)`
-/

namespace A139735.P13464906680454378484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029757 n * A155559 n

end

end A139735.P13464906680454378484

namespace A139735

/-- `A029757(n)*A155559(n)` -/
def P13464906680454378484.Spec : Prop :=
  ∀ n, P13464906680454378484.a n = A139735 n

end A139735

/-! ## A139735.P15703895968802492303

`A029757(n)*A171449(n)`
-/

namespace A139735.P15703895968802492303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029757 n * A171449 n

end

end A139735.P15703895968802492303

namespace A139735

/-- `A029757(n)*A171449(n)` -/
def P15703895968802492303.Spec : Prop :=
  ∀ n, P15703895968802492303.a n = A139735 n

end A139735

/-! ## A139735.P121469664921494209

`A029757(n)*A171559(n)`
-/

namespace A139735.P121469664921494209
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029757 n * A171559 n

end

end A139735.P121469664921494209

namespace A139735

/-- `A029757(n)*A171559(n)` -/
def P121469664921494209.Spec : Prop :=
  ∀ n, P121469664921494209.a n = A139735 n

end A139735

/-! ## A139735.P7909242308323038741

`lcm(A000079(n), A029757(n))`
-/

namespace A139735.P7909242308323038741
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A029757 n)

end

end A139735.P7909242308323038741

namespace A139735

/-- `lcm(A000079(n), A029757(n))` -/
def P7909242308323038741.Spec : Prop :=
  ∀ n, (P7909242308323038741.a n : ℤ) = A139735 n

end A139735

/-! ## A139735.P8670349799808436961

`A029757(n)*A131577(n+1)`
-/

namespace A139735.P8670349799808436961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029757 n * A131577 (n + 1)

end

end A139735.P8670349799808436961

namespace A139735

/-- `A029757(n)*A131577(n+1)` -/
def P8670349799808436961.Spec : Prop :=
  ∀ n, P8670349799808436961.a n = A139735 n

end A139735

/-! ## A139735.P2741057581365679062

`2*A029757(n)*A131577(n)`
-/

namespace A139735.P2741057581365679062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A029757 n * A131577 n)

end

end A139735.P2741057581365679062

namespace A139735

/-- `2*A029757(n)*A131577(n)` -/
def P2741057581365679062.Spec : Prop :=
  ∀ n, P2741057581365679062.a n = A139735 n

end A139735

/-! ## A139735.P9942538549443310761

`A029757(n)*A078029(A008486(n))`
-/

namespace A139735.P9942538549443310761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029757 n * A078029 (A008486 n).toNat

end

end A139735.P9942538549443310761

namespace A139735

/-- `A029757(n)*A078029(A008486(n))` -/
def P9942538549443310761.Spec : Prop :=
  ∀ n, P9942538549443310761.a n = A139735 n

end A139735

/-! ## A139735.P15865811586224230981

`A138589(n)%A000079(n)*A000079(n)`
-/

namespace A139735.P15865811586224230981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138589 n) (A000079 n) * A000079 n

end

end A139735.P15865811586224230981

namespace A139735

/-- `A138589(n)%A000079(n)*A000079(n)` -/
def P15865811586224230981.Spec : Prop :=
  ∀ n, P15865811586224230981.a n = A139735 n

end A139735

/-! ## A139735.P8269256495100109710

`and(4^n-1, 10^n)`
-/

namespace A139735.P8269256495100109710
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((4 ^ n : ℤ) - 1) (10 ^ n : ℤ)

end

end A139735.P8269256495100109710

namespace A139735

/-- `and(4^n-1, 10^n)` -/
def P8269256495100109710.Spec : Prop :=
  ∀ n, P8269256495100109710.a n = A139735 n

end A139735

/-! ## A139735.P12585034356185929915

`A000225(n)+and(A000225(n)², A000533(n))`
-/

namespace A139735.P12585034356185929915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000225 n + Int.land (A000225 n ^ 2) (A000533 n)

end

end A139735.P12585034356185929915

namespace A139735

/-- `A000225(n)+and(A000225(n)², A000533(n))` -/
def P12585034356185929915.Spec : Prop :=
  ∀ n, P12585034356185929915.a n = A139735 n

end A139735

/-!
# A139736: a(n) = 10^n mod 6^n.

The programs for A139736, the canonical program `A139736.P13010522195508011823` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139736 has offset 0).

The definition of A139736 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n)%(6^n)` (program `A139736.P13010522195508011823`, by `A139736.P13010522195508011823.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139736.P13010522195508011823

`(10^n)%(6^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139736

/-- `(10^n)%(6^n)` -/
def P13010522195508011823.Spec : Prop :=
  ∀ n, (P13010522195508011823.a n : ℤ) = A139736 n

theorem P13010522195508011823.correct : P13010522195508011823.Spec := by
  intro n
  simp only [A139736]

end A139736

/-! ## A139736.P12920761687762925136

`2^n*A067602(n)`
-/

namespace A139736.P12920761687762925136
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A067602 n

end

end A139736.P12920761687762925136

namespace A139736

/-- `2^n*A067602(n)` -/
def P12920761687762925136.Spec : Prop :=
  ∀ n, P12920761687762925136.a n = A139736 n

end A139736

/-! ## A139736.P2258141955221593832

`A067602(n)*A155559(n)`
-/

namespace A139736.P2258141955221593832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067602 n * A155559 n

end

end A139736.P2258141955221593832

namespace A139736

/-- `A067602(n)*A155559(n)` -/
def P2258141955221593832.Spec : Prop :=
  ∀ n, P2258141955221593832.a n = A139736 n

end A139736

/-! ## A139736.P3968497172474616446

`A067602(n)*A171449(n)`
-/

namespace A139736.P3968497172474616446
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067602 n * A171449 n

end

end A139736.P3968497172474616446

namespace A139736

/-- `A067602(n)*A171449(n)` -/
def P3968497172474616446.Spec : Prop :=
  ∀ n, P3968497172474616446.a n = A139736 n

end A139736

/-! ## A139736.P6396417957019424540

`A067602(n)*A171559(n)`
-/

namespace A139736.P6396417957019424540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A067602 n * A171559 n

end

end A139736.P6396417957019424540

namespace A139736

/-- `A067602(n)*A171559(n)` -/
def P6396417957019424540.Spec : Prop :=
  ∀ n, P6396417957019424540.a n = A139736 n

end A139736

/-! ## A139736.P3444066697717286871

`A000351(n)%A000244(n)*A000079(n)`
-/

namespace A139736.P3444066697717286871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n) (A000244 n) * A000079 n

end

end A139736.P3444066697717286871

namespace A139736

/-- `A000351(n)%A000244(n)*A000079(n)` -/
def P3444066697717286871.Spec : Prop :=
  ∀ n, P3444066697717286871.a n = A139736 n

end A139736

/-! ## A139736.P13411485649483348719

`A001579(n)%A000244(n)*A000079(n)`
-/

namespace A139736.P13411485649483348719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A001579 n) (A000244 n) * A000079 n

end

end A139736.P13411485649483348719

namespace A139736

/-- `A001579(n)%A000244(n)*A000079(n)` -/
def P13411485649483348719.Spec : Prop :=
  ∀ n, P13411485649483348719.a n = A139736 n

end A139736

/-!
# A139737: a(n) = 10^n mod 7^n.

The programs for A139737, the canonical program `A139737.P3291726585462107005` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139737 has offset 0).

The definition of A139737 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n)%(7^n)` (program `A139737.P3291726585462107005`, by `A139737.P3291726585462107005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139737.P3291726585462107005

`(10^n)%(7^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139737

/-- `(10^n)%(7^n)` -/
def P3291726585462107005.Spec : Prop :=
  ∀ n, (P3291726585462107005.a n : ℤ) = A139737 n

theorem P3291726585462107005.correct : P3291726585462107005.Spec := by
  intro n
  simp only [A139737]

end A139737

/-! ## A139737.P12183057851475066525

`abs(Δ[A002275(n)]%A000420(n))`
-/

namespace A139737.P12183057851475066525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000420 n)|

end

end A139737.P12183057851475066525

namespace A139737

/-- `abs(Δ[A002275(n)]%A000420(n))` -/
def P12183057851475066525.Spec : Prop :=
  ∀ n, P12183057851475066525.a n = A139737 n

end A139737

/-! ## A139737.P10324973189544132779

`abs(Δ[A047855(n)]%A000420(n))`
-/

namespace A139737.P10324973189544132779
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047855 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A000420 n)|

end

end A139737.P10324973189544132779

namespace A139737

/-- `abs(Δ[A047855(n)]%A000420(n))` -/
def P10324973189544132779.Spec : Prop :=
  ∀ n, P10324973189544132779.a n = A139737 n

end A139737

/-!
# A139738: a(n) = 10^n mod 8^n.

The programs for A139738, the canonical program `A139738.P15337938998577086005` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139738 has offset 0).

The definition of A139738 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n)%(8^n)` (program `A139738.P15337938998577086005`, by `A139738.P15337938998577086005.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139738.P15337938998577086005

`(10^n)%(8^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139738

/-- `(10^n)%(8^n)` -/
def P15337938998577086005.Spec : Prop :=
  ∀ n, (P15337938998577086005.a n : ℤ) = A139738 n

theorem P15337938998577086005.correct : P15337938998577086005.Spec := by
  intro n
  simp only [A139738]

end A139738

/-! ## A139738.P5210728837561988334

`2^n*A138589(n)`
-/

namespace A139738.P5210728837561988334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) * A138589 n

end

end A139738.P5210728837561988334

namespace A139738

/-- `2^n*A138589(n)` -/
def P5210728837561988334.Spec : Prop :=
  ∀ n, P5210728837561988334.a n = A139738 n

end A139738

/-! ## A139738.P1713896946373254698

`A138589(n)*A155559(n)`
-/

namespace A139738.P1713896946373254698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138589 n * A155559 n

end

end A139738.P1713896946373254698

namespace A139738

/-- `A138589(n)*A155559(n)` -/
def P1713896946373254698.Spec : Prop :=
  ∀ n, P1713896946373254698.a n = A139738 n

end A139738

/-! ## A139738.P1922875985025716970

`A138589(n)*A171449(n)`
-/

namespace A139738.P1922875985025716970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138589 n * A171449 n

end

end A139738.P1922875985025716970

namespace A139738

/-- `A138589(n)*A171449(n)` -/
def P1922875985025716970.Spec : Prop :=
  ∀ n, P1922875985025716970.a n = A139738 n

end A139738

/-! ## A139738.P9986034800651028515

`A138589(n)*A171559(n)`
-/

namespace A139738.P9986034800651028515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138589 n * A171559 n

end

end A139738.P9986034800651028515

namespace A139738

/-- `A138589(n)*A171559(n)` -/
def P9986034800651028515.Spec : Prop :=
  ∀ n, P9986034800651028515.a n = A139738 n

end A139738

/-! ## A139738.P10249325678812278809

`lcm(A000079(n), A138589(n))`
-/

namespace A139738.P10249325678812278809
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A000079 n) (A138589 n)

end

end A139738.P10249325678812278809

namespace A139738

/-- `lcm(A000079(n), A138589(n))` -/
def P10249325678812278809.Spec : Prop :=
  ∀ n, (P10249325678812278809.a n : ℤ) = A139738 n

end A139738

/-! ## A139738.P4186909326277637283

`A000351(n)%A000302(n)*A000079(n)`
-/

namespace A139738.P4186909326277637283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A000351 n) (A000302 n) * A000079 n

end

end A139738.P4186909326277637283

namespace A139738

/-- `A000351(n)%A000302(n)*A000079(n)` -/
def P4186909326277637283.Spec : Prop :=
  ∀ n, P4186909326277637283.a n = A139738 n

end A139738

/-! ## A139738.P605785738375085967

`and(10^n, A024088(n))`
-/

namespace A139738.P605785738375085967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (10 ^ n : ℤ) (A024088 n)

end

end A139738.P605785738375085967

namespace A139738

/-- `and(10^n, A024088(n))` -/
def P605785738375085967.Spec : Prop :=
  ∀ n, P605785738375085967.a n = A139738 n

end A139738

/-! ## A139738.P11270070401869928140

`and(8^n-1, A011557(n))`
-/

namespace A139738.P11270070401869928140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land ((8 ^ n : ℤ) - 1) (A011557 n)

end

end A139738.P11270070401869928140

namespace A139738

/-- `and(8^n-1, A011557(n))` -/
def P11270070401869928140.Spec : Prop :=
  ∀ n, P11270070401869928140.a n = A139738 n

end A139738

/-!
# A139739: a(n) = 10^n mod 9^n.

The programs for A139739, the canonical program `A139739.P2551135587269400598` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139739 has offset 0).

The definition of A139739 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(10^n)%(9^n)` (program `A139739.P2551135587269400598`, by `A139739.P2551135587269400598.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139739.P2551135587269400598

`(10^n)%(9^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139739

/-- `(10^n)%(9^n)` -/
def P2551135587269400598.Spec : Prop :=
  ∀ n, (P2551135587269400598.a n : ℤ) = A139739 n

theorem P2551135587269400598.correct : P2551135587269400598.Spec := by
  intro n
  simp only [A139739]

end A139739

/-! ## A139739.P3514022557267292743

`A024115(n)%A001019(n)+n`
-/

namespace A139739.P3514022557267292743
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A024115 n) (A001019 n) + (n : ℤ)

end

end A139739.P3514022557267292743

namespace A139739

/-- `A024115(n)%A001019(n)+n` -/
def P3514022557267292743.Spec : Prop :=
  ∀ n, P3514022557267292743.a n = A139739 n

end A139739

/-! ## A139739.P786298149874977901

`abs(Δ[A002275(n)]%A001019(n))`
-/

namespace A139739.P786298149874977901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |Int.tmod (f1 (n + 1) - f1 n) (A001019 n)|

end

end A139739.P786298149874977901

namespace A139739

/-- `abs(Δ[A002275(n)]%A001019(n))` -/
def P786298149874977901.Spec : Prop :=
  ∀ n, P786298149874977901.a n = A139739 n

end A139739

/-! ## A139739.P16044663489799634864

`A052268(n+1)%A100062(n+1)/9`
-/

namespace A139739.P16044663489799634864
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A052268 (n + 1)) (A100062 (n + 1)) : ℚ) / 9

end

end A139739.P16044663489799634864

namespace A139739

/-- `A052268(n+1)%A100062(n+1)/9` -/
def P16044663489799634864.Spec : Prop :=
  ∀ n, P16044663489799634864.a n = (A139739 n : ℚ)

end A139739

/-! ## A139739.P14229879376955659301

`A009984(n)%A009980(n)/A000302(n)`
-/

namespace A139739.P14229879376955659301
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A009984 n) (A009980 n) : ℚ) / (A000302 n : ℚ)

end

end A139739.P14229879376955659301

namespace A139739

/-- `A009984(n)%A009980(n)/A000302(n)` -/
def P14229879376955659301.Spec : Prop :=
  ∀ n, P14229879376955659301.a n = (A139739 n : ℚ)

end A139739

/-!
# A139740: a(n) = 11^n - 2^n.

The programs for A139740, the canonical program `A139740.P17446501700137771525` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139740 has offset 0).

The definition of A139740 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-2^n` (program `A139740.P17446501700137771525`, by `A139740.P17446501700137771525.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139740.P17446501700137771525

`11^n-2^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139740

/-- `11^n-2^n` -/
def P17446501700137771525.Spec : Prop :=
  ∀ n, P17446501700137771525.a n = A139740 n

theorem P17446501700137771525.correct : P17446501700137771525.Spec := by
  intro n
  simp only [A139740]

end A139740

/-! ## A139740.P1015381507057574470

`ogf(9x/(1-13x+22x^2))`
-/

namespace A139740.P1015381507057574470
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 9] [1, -13, 22] n

end

end A139740.P1015381507057574470

namespace A139740

/-- `ogf(9x/(1-13x+22x^2))` -/
def P1015381507057574470.Spec : Prop :=
  ∀ n, P1015381507057574470.a n = A139740 n

end A139740

/-! ## A139740.P9804549701373403900

`abs(1-A155622(n))`
-/

namespace A139740.P9804549701373403900
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155622 n|

end

end A139740.P9804549701373403900

namespace A139740

/-- `abs(1-A155622(n))` -/
def P9804549701373403900.Spec : Prop :=
  ∀ n, P9804549701373403900.a n = A139740 n

end A139740

/-! ## A139740.P5139532058390569422

`abs(A001020(n)-A000079(n))`
-/

namespace A139740.P5139532058390569422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001020 n - A000079 n|

end

end A139740.P5139532058390569422

namespace A139740

/-- `abs(A001020(n)-A000079(n))` -/
def P5139532058390569422.Spec : Prop :=
  ∀ n, P5139532058390569422.a n = A139740 n

end A139740

/-! ## A139740.P8944963268307717377

`abs(A000325(n)-A024128(n))`
-/

namespace A139740.P8944963268307717377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000325 n - A024128 n|

end

end A139740.P8944963268307717377

namespace A139740

/-- `abs(A000325(n)-A024128(n))` -/
def P8944963268307717377.Spec : Prop :=
  ∀ n, P8944963268307717377.a n = A139740 n

end A139740

/-! ## A139740.P6957307445680230132

`abs(A000051(n)-A034524(n))`
-/

namespace A139740.P6957307445680230132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A034524 n|

end

end A139740.P6957307445680230132

namespace A139740

/-- `abs(A000051(n)-A034524(n))` -/
def P6957307445680230132.Spec : Prop :=
  ∀ n, P6957307445680230132.a n = A139740 n

end A139740

/-! ## A139740.P17070069256603959698

`abs(A024012(n)-A024129(n))`
-/

namespace A139740.P17070069256603959698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024012 n - A024129 n|

end

end A139740.P17070069256603959698

namespace A139740

/-- `abs(A024012(n)-A024129(n))` -/
def P17070069256603959698.Spec : Prop :=
  ∀ n, P17070069256603959698.a n = A139740 n

end A139740

/-! ## A139740.P4915649979997818752

`abs(A024014(n)-A024131(n))`
-/

namespace A139740.P4915649979997818752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024014 n - A024131 n|

end

end A139740.P4915649979997818752

namespace A139740

/-- `abs(A024014(n)-A024131(n))` -/
def P4915649979997818752.Spec : Prop :=
  ∀ n, P4915649979997818752.a n = A139740 n

end A139740

/-! ## A139740.P18285366612067009221

`abs(A024015(n)-A024132(n))`
-/

namespace A139740.P18285366612067009221
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024015 n - A024132 n|

end

end A139740.P18285366612067009221

namespace A139740

/-- `abs(A024015(n)-A024132(n))` -/
def P18285366612067009221.Spec : Prop :=
  ∀ n, P18285366612067009221.a n = A139740 n

end A139740

/-!
# A139741: a(n) = 11^n - 3^n.

The programs for A139741, the canonical program `A139741.P17176577733514973666` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139741 has offset 0).

The definition of A139741 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-3^n` (program `A139741.P17176577733514973666`, by `A139741.P17176577733514973666.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139741.P17176577733514973666

`11^n-3^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139741

/-- `11^n-3^n` -/
def P17176577733514973666.Spec : Prop :=
  ∀ n, P17176577733514973666.a n = A139741 n

theorem P17176577733514973666.correct : P17176577733514973666.Spec := by
  intro n
  simp only [A139741]

end A139741

/-! ## A139741.P14845297870252287696

`ogf(8x/(1-14x+33x^2))`
-/

namespace A139741.P14845297870252287696
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 8] [1, -14, 33] n

end

end A139741.P14845297870252287696

namespace A139741

/-- `ogf(8x/(1-14x+33x^2))` -/
def P14845297870252287696.Spec : Prop :=
  ∀ n, P14845297870252287696.a n = A139741 n

end A139741

/-! ## A139741.P5135016280846342111

`xor(1, A155624(n))`
-/

namespace A139741.P5135016280846342111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155624 n)

end

end A139741.P5135016280846342111

namespace A139741

/-- `xor(1, A155624(n))` -/
def P5135016280846342111.Spec : Prop :=
  ∀ n, P5135016280846342111.a n = A139741 n

end A139741

/-! ## A139741.P3588701631328087981

`abs(A000244(n)-A001020(n))`
-/

namespace A139741.P3588701631328087981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n - A001020 n|

end

end A139741.P3588701631328087981

namespace A139741

/-- `abs(A000244(n)-A001020(n))` -/
def P3588701631328087981.Spec : Prop :=
  ∀ n, P3588701631328087981.a n = A139741 n

end A139741

/-! ## A139741.P16682521494491833945

`abs(A024024(n)-A024128(n))`
-/

namespace A139741.P16682521494491833945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024024 n - A024128 n|

end

end A139741.P16682521494491833945

namespace A139741

/-- `abs(A024024(n)-A024128(n))` -/
def P16682521494491833945.Spec : Prop :=
  ∀ n, P16682521494491833945.a n = A139741 n

end A139741

/-! ## A139741.P15350630094297949412

`abs(A024025(n)-A024129(n))`
-/

namespace A139741.P15350630094297949412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024025 n - A024129 n|

end

end A139741.P15350630094297949412

namespace A139741

/-- `abs(A024025(n)-A024129(n))` -/
def P15350630094297949412.Spec : Prop :=
  ∀ n, P15350630094297949412.a n = A139741 n

end A139741

/-! ## A139741.P9639662402766794777

`abs(A024028(n)-A024132(n))`
-/

namespace A139741.P9639662402766794777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024028 n - A024132 n|

end

end A139741.P9639662402766794777

namespace A139741

/-- `abs(A024028(n)-A024132(n))` -/
def P9639662402766794777.Spec : Prop :=
  ∀ n, P9639662402766794777.a n = A139741 n

end A139741

/-! ## A139741.P14323870107853627537

`abs(A024031(n)-A024135(n))`
-/

namespace A139741.P14323870107853627537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024031 n - A024135 n|

end

end A139741.P14323870107853627537

namespace A139741

/-- `abs(A024031(n)-A024135(n))` -/
def P14323870107853627537.Spec : Prop :=
  ∀ n, P14323870107853627537.a n = A139741 n

end A139741

/-! ## A139741.P4782108661948932106

`abs(A024032(n)-A024136(n))`
-/

namespace A139741.P4782108661948932106
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024032 n - A024136 n|

end

end A139741.P4782108661948932106

namespace A139741

/-- `abs(A024032(n)-A024136(n))` -/
def P4782108661948932106.Spec : Prop :=
  ∀ n, P4782108661948932106.a n = A139741 n

end A139741

/-! ## A139741.P5516889502394487143

`abs(A034472(n)-A034524(n))`
-/

namespace A139741.P5516889502394487143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034472 n - A034524 n|

end

end A139741.P5516889502394487143

namespace A139741

/-- `abs(A034472(n)-A034524(n))` -/
def P5516889502394487143.Spec : Prop :=
  ∀ n, P5516889502394487143.a n = A139741 n

end A139741

/-!
# A139742: a(n) = 11^n - 4^n.

The programs for A139742, the canonical program `A139742.P7423083674649833393` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139742 has offset 0).

The definition of A139742 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-4^n` (program `A139742.P7423083674649833393`, by `A139742.P7423083674649833393.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139742.P7423083674649833393

`11^n-4^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139742

/-- `11^n-4^n` -/
def P7423083674649833393.Spec : Prop :=
  ∀ n, P7423083674649833393.a n = A139742 n

theorem P7423083674649833393.correct : P7423083674649833393.Spec := by
  intro n
  simp only [A139742]

end A139742

/-! ## A139742.P4432065966287311410

`ogf(7x/(1-15x+44x^2))`
-/

namespace A139742.P4432065966287311410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -15, 44] n

end

end A139742.P4432065966287311410

namespace A139742

/-- `ogf(7x/(1-15x+44x^2))` -/
def P4432065966287311410.Spec : Prop :=
  ∀ n, P4432065966287311410.a n = A139742 n

end A139742

/-! ## A139742.P5167118294001010886

`abs(1-A155632(n))`
-/

namespace A139742.P5167118294001010886
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155632 n|

end

end A139742.P5167118294001010886

namespace A139742

/-- `abs(1-A155632(n))` -/
def P5167118294001010886.Spec : Prop :=
  ∀ n, P5167118294001010886.a n = A139742 n

end A139742

/-! ## A139742.P10826412818870141380

`abs(A000302(n)-A001020(n))`
-/

namespace A139742.P10826412818870141380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000302 n - A001020 n|

end

end A139742.P10826412818870141380

namespace A139742

/-- `abs(A000302(n)-A001020(n))` -/
def P10826412818870141380.Spec : Prop :=
  ∀ n, P10826412818870141380.a n = A139742 n

end A139742

/-! ## A139742.P8053790158595911430

`abs(A024037(n)-A024128(n))`
-/

namespace A139742.P8053790158595911430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024037 n - A024128 n|

end

end A139742.P8053790158595911430

namespace A139742

/-- `abs(A024037(n)-A024128(n))` -/
def P8053790158595911430.Spec : Prop :=
  ∀ n, P8053790158595911430.a n = A139742 n

end A139742

/-! ## A139742.P5111432045118313785

`abs(A024040(n)-A024131(n))`
-/

namespace A139742.P5111432045118313785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024040 n - A024131 n|

end

end A139742.P5111432045118313785

namespace A139742

/-- `abs(A024040(n)-A024131(n))` -/
def P5111432045118313785.Spec : Prop :=
  ∀ n, P5111432045118313785.a n = A139742 n

end A139742

/-! ## A139742.P9895460077755807979

`abs(A024041(n)-A024132(n))`
-/

namespace A139742.P9895460077755807979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024041 n - A024132 n|

end

end A139742.P9895460077755807979

namespace A139742

/-- `abs(A024041(n)-A024132(n))` -/
def P9895460077755807979.Spec : Prop :=
  ∀ n, P9895460077755807979.a n = A139742 n

end A139742

/-! ## A139742.P18187109924193285153

`abs(A034524(n)-A052539(n))`
-/

namespace A139742.P18187109924193285153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034524 n - A052539 n|

end

end A139742.P18187109924193285153

namespace A139742

/-- `abs(A034524(n)-A052539(n))` -/
def P18187109924193285153.Spec : Prop :=
  ∀ n, P18187109924193285153.a n = A139742 n

end A139742

/-! ## A139742.P7634730392717497582

`abs(A020522(n)-A139740(n))`
-/

namespace A139742.P7634730392717497582
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A020522 n - A139740 n|

end

end A139742.P7634730392717497582

namespace A139742

/-- `abs(A020522(n)-A139740(n))` -/
def P7634730392717497582.Spec : Prop :=
  ∀ n, P7634730392717497582.a n = A139742 n

end A139742

/-! ## A139742.P203348727608281705

`∑[A055276(n)-A002001(n)]`
-/

namespace A139742.P203348727608281705
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055276 n - A002001 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139742.P203348727608281705

namespace A139742

/-- `∑[A055276(n)-A002001(n)]` -/
def P203348727608281705.Spec : Prop :=
  ∀ n, P203348727608281705.a n = A139742 n

end A139742

/-!
# A139743: a(n) = 11^n - 5^n.

The programs for A139743, the canonical program `A139743.P1515589058763244651` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139743 has offset 0).

The definition of A139743 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-5^n` (program `A139743.P1515589058763244651`, by `A139743.P1515589058763244651.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139743.P1515589058763244651

`11^n-5^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139743

/-- `11^n-5^n` -/
def P1515589058763244651.Spec : Prop :=
  ∀ n, P1515589058763244651.a n = A139743 n

theorem P1515589058763244651.correct : P1515589058763244651.Spec := by
  intro n
  simp only [A139743]

end A139743

/-! ## A139743.P17130122989106599005

`ogf(6x/(1-16x+55x^2))`
-/

namespace A139743.P17130122989106599005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 6] [1, -16, 55] n

end

end A139743.P17130122989106599005

namespace A139743

/-- `ogf(6x/(1-16x+55x^2))` -/
def P17130122989106599005.Spec : Prop :=
  ∀ n, P17130122989106599005.a n = A139743 n

end A139743

/-! ## A139743.P14929280814274317200

`xor(1, A155644(n))`
-/

namespace A139743.P14929280814274317200
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155644 n)

end

end A139743.P14929280814274317200

namespace A139743

/-- `xor(1, A155644(n))` -/
def P14929280814274317200.Spec : Prop :=
  ∀ n, P14929280814274317200.a n = A139743 n

end A139743

/-! ## A139743.P15048938348773339318

`abs(A000351(n)-A001020(n))`
-/

namespace A139743.P15048938348773339318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A001020 n|

end

end A139743.P15048938348773339318

namespace A139743

/-- `abs(A000351(n)-A001020(n))` -/
def P15048938348773339318.Spec : Prop :=
  ∀ n, P15048938348773339318.a n = A139743 n

end A139743

/-! ## A139743.P13441386819637525435

`abs(A024050(n)-A024128(n))`
-/

namespace A139743.P13441386819637525435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024050 n - A024128 n|

end

end A139743.P13441386819637525435

namespace A139743

/-- `abs(A024050(n)-A024128(n))` -/
def P13441386819637525435.Spec : Prop :=
  ∀ n, P13441386819637525435.a n = A139743 n

end A139743

/-! ## A139743.P13468795037362792379

`abs(A034474(n)-A034524(n))`
-/

namespace A139743.P13468795037362792379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n - A034524 n|

end

end A139743.P13468795037362792379

namespace A139743

/-- `abs(A034474(n)-A034524(n))` -/
def P13468795037362792379.Spec : Prop :=
  ∀ n, P13468795037362792379.a n = A139743 n

end A139743

/-! ## A139743.P14565894647482988029

`abs(A005057(n)-A139740(n))`
-/

namespace A139743.P14565894647482988029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A005057 n - A139740 n|

end

end A139743.P14565894647482988029

namespace A139743

/-- `abs(A005057(n)-A139740(n))` -/
def P14565894647482988029.Spec : Prop :=
  ∀ n, P14565894647482988029.a n = A139743 n

end A139743

/-! ## A139743.P289483436919305344

`abs(A155588(n)-A155595(n))`
-/

namespace A139743.P289483436919305344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155588 n - A155595 n|

end

end A139743.P289483436919305344

namespace A139743

/-- `abs(A155588(n)-A155595(n))` -/
def P289483436919305344.Spec : Prop :=
  ∀ n, P289483436919305344.a n = A139743 n

end A139743

/-! ## A139743.P2962588667463286977

`abs(A155603(n)-A155623(n))`
-/

namespace A139743.P2962588667463286977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155603 n - A155623 n|

end

end A139743.P2962588667463286977

namespace A139743

/-- `abs(A155603(n)-A155623(n))` -/
def P2962588667463286977.Spec : Prop :=
  ∀ n, P2962588667463286977.a n = A139743 n

end A139743

/-! ## A139743.P6103369437916419356

`abs(A155610(n)-A155624(n))`
-/

namespace A139743.P6103369437916419356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155610 n - A155624 n|

end

end A139743.P6103369437916419356

namespace A139743

/-- `abs(A155610(n)-A155624(n))` -/
def P6103369437916419356.Spec : Prop :=
  ∀ n, P6103369437916419356.a n = A139743 n

end A139743

/-!
# A139744: a(n) = 11^n - 6^n.

The programs for A139744, the canonical program `A139744.P8840751931566943206` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139744 has offset 0).

The definition of A139744 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-6^n` (program `A139744.P8840751931566943206`, by `A139744.P8840751931566943206.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139744.P8840751931566943206

`11^n-6^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139744

/-- `11^n-6^n` -/
def P8840751931566943206.Spec : Prop :=
  ∀ n, P8840751931566943206.a n = A139744 n

theorem P8840751931566943206.correct : P8840751931566943206.Spec := by
  intro n
  simp only [A139744]

end A139744

/-! ## A139744.P4239654682370329017

`ogf(5x/(1-17x+66x^2))`
-/

namespace A139744.P4239654682370329017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 5] [1, -17, 66] n

end

end A139744.P4239654682370329017

namespace A139744

/-- `ogf(5x/(1-17x+66x^2))` -/
def P4239654682370329017.Spec : Prop :=
  ∀ n, P4239654682370329017.a n = A139744 n

end A139744

/-! ## A139744.P11578261961431260177

`abs(1-A155654(n))`
-/

namespace A139744.P11578261961431260177
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155654 n|

end

end A139744.P11578261961431260177

namespace A139744

/-- `abs(1-A155654(n))` -/
def P11578261961431260177.Spec : Prop :=
  ∀ n, P11578261961431260177.a n = A139744 n

end A139744

/-! ## A139744.P5836692675579277934

`abs(A024063(n)-A024128(n))`
-/

namespace A139744.P5836692675579277934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024063 n - A024128 n|

end

end A139744.P5836692675579277934

namespace A139744

/-- `abs(A024063(n)-A024128(n))` -/
def P5836692675579277934.Spec : Prop :=
  ∀ n, P5836692675579277934.a n = A139744 n

end A139744

/-! ## A139744.P9440494830179356757

`abs(A034524(n)-A062394(n))`
-/

namespace A139744.P9440494830179356757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034524 n - A062394 n|

end

end A139744.P9440494830179356757

namespace A139744

/-- `abs(A034524(n)-A062394(n))` -/
def P9440494830179356757.Spec : Prop :=
  ∀ n, P9440494830179356757.a n = A139744 n

end A139744

/-! ## A139744.P12731574089227143323

`abs(A155589(n)-A155595(n))`
-/

namespace A139744.P12731574089227143323
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155589 n - A155595 n|

end

end A139744.P12731574089227143323

namespace A139744

/-- `abs(A155589(n)-A155595(n))` -/
def P12731574089227143323.Spec : Prop :=
  ∀ n, P12731574089227143323.a n = A139744 n

end A139744

/-! ## A139744.P367210327766943877

`abs(A155604(n)-A155623(n))`
-/

namespace A139744.P367210327766943877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155604 n - A155623 n|

end

end A139744.P367210327766943877

namespace A139744

/-- `abs(A155604(n)-A155623(n))` -/
def P367210327766943877.Spec : Prop :=
  ∀ n, P367210327766943877.a n = A139744 n

end A139744

/-! ## A139744.P6823581101256197444

`abs(A155611(n)-A155624(n))`
-/

namespace A139744.P6823581101256197444
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155611 n - A155624 n|

end

end A139744.P6823581101256197444

namespace A139744

/-- `abs(A155611(n)-A155624(n))` -/
def P6823581101256197444.Spec : Prop :=
  ∀ n, P6823581101256197444.a n = A139744 n

end A139744

/-! ## A139744.P11422557594665679313

`abs(A155627(n)-A155632(n))`
-/

namespace A139744.P11422557594665679313
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155627 n - A155632 n|

end

end A139744.P11422557594665679313

namespace A139744

/-- `abs(A155627(n)-A155632(n))` -/
def P11422557594665679313.Spec : Prop :=
  ∀ n, P11422557594665679313.a n = A139744 n

end A139744

/-! ## A139744.P3428649109974773123

`abs(A155633(n)-A155638(n))`
-/

namespace A139744.P3428649109974773123
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155633 n - A155638 n|

end

end A139744.P3428649109974773123

namespace A139744

/-- `abs(A155633(n)-A155638(n))` -/
def P3428649109974773123.Spec : Prop :=
  ∀ n, P3428649109974773123.a n = A139744 n

end A139744

/-!
# A139745: a(n) = 11^n - 7^n.

The programs for A139745, the canonical program `A139745.P13506789657880504980` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139745 has offset 0).

The definition of A139745 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-7^n` (program `A139745.P13506789657880504980`, by `A139745.P13506789657880504980.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139745.P13506789657880504980

`11^n-7^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139745

/-- `11^n-7^n` -/
def P13506789657880504980.Spec : Prop :=
  ∀ n, P13506789657880504980.a n = A139745 n

theorem P13506789657880504980.correct : P13506789657880504980.Spec := by
  intro n
  simp only [A139745]

end A139745

/-! ## A139745.P5381069531896251359

`ogf(4x/(1-18x+77x^2))`
-/

namespace A139745.P5381069531896251359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 4] [1, -18, 77] n

end

end A139745.P5381069531896251359

namespace A139745

/-- `ogf(4x/(1-18x+77x^2))` -/
def P5381069531896251359.Spec : Prop :=
  ∀ n, P5381069531896251359.a n = A139745 n

end A139745

/-! ## A139745.P17168247091107599280

`xor(1, A155662(n))`
-/

namespace A139745.P17168247091107599280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155662 n)

end

end A139745.P17168247091107599280

namespace A139745

/-- `xor(1, A155662(n))` -/
def P17168247091107599280.Spec : Prop :=
  ∀ n, P17168247091107599280.a n = A139745 n

end A139745

/-! ## A139745.P9247963213511275917

`abs(A000420(n)-A001020(n))`
-/

namespace A139745.P9247963213511275917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A001020 n|

end

end A139745.P9247963213511275917

namespace A139745

/-- `abs(A000420(n)-A001020(n))` -/
def P9247963213511275917.Spec : Prop :=
  ∀ n, P9247963213511275917.a n = A139745 n

end A139745

/-! ## A139745.P3271019294583452218

`abs(A024076(n)-A024128(n))`
-/

namespace A139745.P3271019294583452218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024076 n - A024128 n|

end

end A139745.P3271019294583452218

namespace A139745

/-- `abs(A024076(n)-A024128(n))` -/
def P3271019294583452218.Spec : Prop :=
  ∀ n, P3271019294583452218.a n = A139745 n

end A139745

/-! ## A139745.P4646453500240632248

`abs(A024079(n)-A024131(n))`
-/

namespace A139745.P4646453500240632248
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024079 n - A024131 n|

end

end A139745.P4646453500240632248

namespace A139745

/-- `abs(A024079(n)-A024131(n))` -/
def P4646453500240632248.Spec : Prop :=
  ∀ n, P4646453500240632248.a n = A139745 n

end A139745

/-! ## A139745.P3301121442822290646

`abs(A034491(n)-A034524(n))`
-/

namespace A139745.P3301121442822290646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034491 n - A034524 n|

end

end A139745.P3301121442822290646

namespace A139745

/-- `abs(A034491(n)-A034524(n))` -/
def P3301121442822290646.Spec : Prop :=
  ∀ n, P3301121442822290646.a n = A139745 n

end A139745

/-! ## A139745.P11411805515543889423

`abs(A155628(n)-A155632(n))`
-/

namespace A139745.P11411805515543889423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155628 n - A155632 n|

end

end A139745.P11411805515543889423

namespace A139745

/-- `abs(A155628(n)-A155632(n))` -/
def P11411805515543889423.Spec : Prop :=
  ∀ n, P11411805515543889423.a n = A139745 n

end A139745

/-! ## A139745.P1641251086758934486

`abs(A155634(n)-A155638(n))`
-/

namespace A139745.P1641251086758934486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155634 n - A155638 n|

end

end A139745.P1641251086758934486

namespace A139745

/-- `abs(A155634(n)-A155638(n))` -/
def P1641251086758934486.Spec : Prop :=
  ∀ n, P1641251086758934486.a n = A139745 n

end A139745

/-! ## A139745.P11879220361397311538

`abs(A155640(n)-A155644(n))`
-/

namespace A139745.P11879220361397311538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155640 n - A155644 n|

end

end A139745.P11879220361397311538

namespace A139745

/-- `abs(A155640(n)-A155644(n))` -/
def P11879220361397311538.Spec : Prop :=
  ∀ n, P11879220361397311538.a n = A139745 n

end A139745

/-!
# A139746: a(n) = 11^n - 8^n.

The programs for A139746, the canonical program `A139746.P13811330842243583538` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139746 has offset 0).

The definition of A139746 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-8^n` (program `A139746.P13811330842243583538`, by `A139746.P13811330842243583538.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139746.P13811330842243583538

`11^n-8^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139746

/-- `11^n-8^n` -/
def P13811330842243583538.Spec : Prop :=
  ∀ n, P13811330842243583538.a n = A139746 n

theorem P13811330842243583538.correct : P13811330842243583538.Spec := by
  intro n
  simp only [A139746]

end A139746

/-! ## A139746.P15225178469351894375

`ogf(3x/(1-19x+88x^2))`
-/

namespace A139746.P15225178469351894375
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 3] [1, -19, 88] n

end

end A139746.P15225178469351894375

namespace A139746

/-- `ogf(3x/(1-19x+88x^2))` -/
def P15225178469351894375.Spec : Prop :=
  ∀ n, P15225178469351894375.a n = A139746 n

end A139746

/-! ## A139746.P7607186766809383132

`abs(1-A155668(n))`
-/

namespace A139746.P7607186766809383132
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155668 n|

end

end A139746.P7607186766809383132

namespace A139746

/-- `abs(1-A155668(n))` -/
def P7607186766809383132.Spec : Prop :=
  ∀ n, P7607186766809383132.a n = A139746 n

end A139746

/-! ## A139746.P4689353507046742963

`abs(A001018(n)-A001020(n))`
-/

namespace A139746.P4689353507046742963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001018 n - A001020 n|

end

end A139746.P4689353507046742963

namespace A139746

/-- `abs(A001018(n)-A001020(n))` -/
def P4689353507046742963.Spec : Prop :=
  ∀ n, P4689353507046742963.a n = A139746 n

end A139746

/-! ## A139746.P6457536105734866572

`abs(A024089(n)-A024128(n))`
-/

namespace A139746.P6457536105734866572
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024089 n - A024128 n|

end

end A139746.P6457536105734866572

namespace A139746

/-- `abs(A024089(n)-A024128(n))` -/
def P6457536105734866572.Spec : Prop :=
  ∀ n, P6457536105734866572.a n = A139746 n

end A139746

/-! ## A139746.P10707200323066958737

`abs(A024093(n)-A024132(n))`
-/

namespace A139746.P10707200323066958737
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024093 n - A024132 n|

end

end A139746.P10707200323066958737

namespace A139746

/-- `abs(A024093(n)-A024132(n))` -/
def P10707200323066958737.Spec : Prop :=
  ∀ n, P10707200323066958737.a n = A139746 n

end A139746

/-! ## A139746.P4952776155683901061

`abs(A034524(n)-A062395(n))`
-/

namespace A139746.P4952776155683901061
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034524 n - A062395 n|

end

end A139746.P4952776155683901061

namespace A139746

/-- `abs(A034524(n)-A062395(n))` -/
def P4952776155683901061.Spec : Prop :=
  ∀ n, P4952776155683901061.a n = A139746 n

end A139746

/-! ## A139746.P6745122792676228945

`abs(A155592(n)-A155595(n))`
-/

namespace A139746.P6745122792676228945
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155592 n - A155595 n|

end

end A139746.P6745122792676228945

namespace A139746

/-- `abs(A155592(n)-A155595(n))` -/
def P6745122792676228945.Spec : Prop :=
  ∀ n, P6745122792676228945.a n = A139746 n

end A139746

/-! ## A139746.P4611414519512196182

`abs(A155606(n)-A155623(n))`
-/

namespace A139746.P4611414519512196182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155606 n - A155623 n|

end

end A139746.P4611414519512196182

namespace A139746

/-- `abs(A155606(n)-A155623(n))` -/
def P4611414519512196182.Spec : Prop :=
  ∀ n, P4611414519512196182.a n = A139746 n

end A139746

/-! ## A139746.P8114286143060076156

`abs(A155629(n)-A155632(n))`
-/

namespace A139746.P8114286143060076156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155629 n - A155632 n|

end

end A139746.P8114286143060076156

namespace A139746

/-- `abs(A155629(n)-A155632(n))` -/
def P8114286143060076156.Spec : Prop :=
  ∀ n, P8114286143060076156.a n = A139746 n

end A139746

/-!
# A139747: a(n) = 11^n - 9^n.

The programs for A139747, the canonical program `A139747.P15390142659135836495` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139747 has offset 0).

The definition of A139747 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `11^n-9^n` (program `A139747.P15390142659135836495`, by `A139747.P15390142659135836495.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139747.P15390142659135836495

`11^n-9^n`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139747

/-- `11^n-9^n` -/
def P15390142659135836495.Spec : Prop :=
  ∀ n, P15390142659135836495.a n = A139747 n

theorem P15390142659135836495.correct : P15390142659135836495.Spec := by
  intro n
  simp only [A139747]

end A139747

/-! ## A139747.P11034494059746483131

`ogf(2x/(1-20x+99x^2))`
-/

namespace A139747.P11034494059746483131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 2] [1, -20, 99] n

end

end A139747.P11034494059746483131

namespace A139747

/-- `ogf(2x/(1-20x+99x^2))` -/
def P11034494059746483131.Spec : Prop :=
  ∀ n, P11034494059746483131.a n = A139747 n

end A139747

/-! ## A139747.P9170321645571213477

`xor(1, A155672(n))`
-/

namespace A139747.P9170321645571213477
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155672 n)

end

end A139747.P9170321645571213477

namespace A139747

/-- `xor(1, A155672(n))` -/
def P9170321645571213477.Spec : Prop :=
  ∀ n, P9170321645571213477.a n = A139747 n

end A139747

/-! ## A139747.P16557835347621714340

`2*A161999(Δ[n²])`
-/

namespace A139747.P16557835347621714340
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A161999 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A139747.P16557835347621714340

namespace A139747

/-- `2*A161999(Δ[n²])` -/
def P16557835347621714340.Spec : Prop :=
  ∀ n, P16557835347621714340.a n = A139747 n

end A139747

/-! ## A139747.P11947749941937684796

`abs(A001019(n)-A001020(n))`
-/

namespace A139747.P11947749941937684796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n - A001020 n|

end

end A139747.P11947749941937684796

namespace A139747

/-- `abs(A001019(n)-A001020(n))` -/
def P11947749941937684796.Spec : Prop :=
  ∀ n, P11947749941937684796.a n = A139747 n

end A139747

/-! ## A139747.P16938999247325342210

`abs(A024102(n)-A024128(n))`
-/

namespace A139747.P16938999247325342210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024102 n - A024128 n|

end

end A139747.P16938999247325342210

namespace A139747

/-- `abs(A024102(n)-A024128(n))` -/
def P16938999247325342210.Spec : Prop :=
  ∀ n, P16938999247325342210.a n = A139747 n

end A139747

/-! ## A139747.P14450757766778999514

`abs(A024105(n)-A024131(n))`
-/

namespace A139747.P14450757766778999514
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024105 n - A024131 n|

end

end A139747.P14450757766778999514

namespace A139747

/-- `abs(A024105(n)-A024131(n))` -/
def P14450757766778999514.Spec : Prop :=
  ∀ n, P14450757766778999514.a n = A139747 n

end A139747

/-! ## A139747.P12093734858787477547

`abs(A155636(n)-A155638(n))`
-/

namespace A139747.P12093734858787477547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155636 n - A155638 n|

end

end A139747.P12093734858787477547

namespace A139747

/-- `abs(A155636(n)-A155638(n))` -/
def P12093734858787477547.Spec : Prop :=
  ∀ n, P12093734858787477547.a n = A139747 n

end A139747

/-! ## A139747.P866054442278315765

`abs(A155642(n)-A155644(n))`
-/

namespace A139747.P866054442278315765
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155642 n - A155644 n|

end

end A139747.P866054442278315765

namespace A139747

/-- `abs(A155642(n)-A155644(n))` -/
def P866054442278315765.Spec : Prop :=
  ∀ n, P866054442278315765.a n = A139747 n

end A139747

/-! ## A139747.P1265386669129569509

`∑[A055276(n)-A055275(n)]`
-/

namespace A139747.P1265386669129569509
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055276 n - A055275 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139747.P1265386669129569509

namespace A139747

/-- `∑[A055276(n)-A055275(n)]` -/
def P1265386669129569509.Spec : Prop :=
  ∀ n, P1265386669129569509.a n = A139747 n

end A139747

/-!
# A139748: a(n) = Sum_{ k >= 0} binomial(n,5*k+3).

The programs for A139748, the canonical program `A139748.P12550431274535785507` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139748 has offset 0).

The definition of A139748 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139748.P10315429296281784239

`ogf((x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-2x^5))`
-/

namespace A139748.P10315429296281784239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 1, -1] [1, -5, 10, -10, 5, -2] n

end

end A139748.P10315429296281784239

namespace A139748

/-- `ogf((x^3-x^4)/(1-5x+10x^2-10x^3+5x^4-2x^5))` -/
def P10315429296281784239.Spec : Prop :=
  ∀ n, P10315429296281784239.a n = A139748 n

end A139748

/-! ## A139748.P12550431274535785507

`round(2/5*(2^(n-1)+ϕ^n*cos(π*(n-6)/5)))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139748

/-- `round(2/5*(2^(n-1)+ϕ^n*cos(π*(n-6)/5)))` -/
def P12550431274535785507.Spec : Prop :=
  ∀ n, P12550431274535785507.a n = A139748 n

theorem P12550431274535785507.correct : P12550431274535785507.Spec := by
  intro n
  simp only [A139748]

end A139748

/-! ## A139748.P13382339026548516219

`∑[A139714(abs(1-n))]`
-/

namespace A139748.P13382339026548516219
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139748.P13382339026548516219

namespace A139748

/-- `∑[A139714(abs(1-n))]` -/
def P13382339026548516219.Spec : Prop :=
  ∀ n, P13382339026548516219.a n = A139748 n

end A139748

/-! ## A139748.P15892282464935976286

`A139714(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A139748.P15892282464935976286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A139714 (n - 1) + a (n - 1)

end

end A139748.P15892282464935976286

namespace A139748

/-- `A139714(n-1)+a(n-1)` -/
def P15892282464935976286.Spec : Prop :=
  ∀ n, P15892282464935976286.a n = A139748 n

end A139748

/-! ## A139748.P6197398394186845137

`A139761(n)+A138112(n)`
-/

namespace A139748.P6197398394186845137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n + A138112 n

end

end A139748.P6197398394186845137

namespace A139748

/-- `A139761(n)+A138112(n)` -/
def P6197398394186845137.Spec : Prop :=
  ∀ n, P6197398394186845137.a n = A139748 n

end A139748

/-! ## A139748.P6007123872083821473

`A133476(n)-A100334(n)`
-/

namespace A139748.P6007123872083821473
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n - A100334 n

end

end A139748.P6007123872083821473

namespace A139748

/-- `A133476(n)-A100334(n)` -/
def P6007123872083821473.Spec : Prop :=
  ∀ n, P6007123872083821473.a n = A139748 n

end A139748

/-! ## A139748.P13708778158069452345

`A139398(n)-A105371(n)`
-/

namespace A139748.P13708778158069452345
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n - A105371 n

end

end A139748.P13708778158069452345

namespace A139748

/-- `A139398(n)-A105371(n)` -/
def P13708778158069452345.Spec : Prop :=
  ∀ n, P13708778158069452345.a n = A139748 n

end A139748

/-! ## A139748.P13214496684982819658

`A139714(n)-Δ[A138112(n)]`
-/

namespace A139748.P13214496684982819658
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n - (f1 (n + 1) - f1 n)

end

end A139748.P13214496684982819658

namespace A139748

/-- `A139714(n)-Δ[A138112(n)]` -/
def P13214496684982819658.Spec : Prop :=
  ∀ n, P13214496684982819658.a n = A139748 n

end A139748

/-! ## A139748.P13946260748731810900

`A133476(n)+∑[A139714(n)-A133476(n)]`
-/

namespace A139748.P13946260748731810900
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n - A133476 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139748.P13946260748731810900

namespace A139748

/-- `A133476(n)+∑[A139714(n)-A133476(n)]` -/
def P13946260748731810900.Spec : Prop :=
  ∀ n, P13946260748731810900.a n = A139748 n

end A139748

/-! ## A139748.P10007913571310060358

`Δ[A139761(n)]`
-/

namespace A139748.P10007913571310060358
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139748.P10007913571310060358

namespace A139748

/-- `Δ[A139761(n)]` -/
def P10007913571310060358.Spec : Prop :=
  ∀ n, P10007913571310060358.a n = A139748 n

end A139748

/-! ## A139748.P3411336119293473548

`Δ[A139714(n)]-A100334(n)`
-/

namespace A139748.P3411336119293473548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A100334 n

end

end A139748.P3411336119293473548

namespace A139748

/-- `Δ[A139714(n)]-A100334(n)` -/
def P3411336119293473548.Spec : Prop :=
  ∀ n, P3411336119293473548.a n = A139748 n

end A139748

/-! ## A139748.P10142104335181664462

`A139761(n+1)-A139761(n)`
-/

namespace A139748.P10142104335181664462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139761 (n + 1) - A139761 n

end

end A139748.P10142104335181664462

namespace A139748

/-- `A139761(n+1)-A139761(n)` -/
def P10142104335181664462.Spec : Prop :=
  ∀ n, P10142104335181664462.a n = A139748 n

end A139748

/-! ## A139748.P17121801444388722858

`A133476(n+1)-(A133476(n)+A105371(n))`
-/

namespace A139748.P17121801444388722858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 (n + 1) - (A133476 n + A105371 n)

end

end A139748.P17121801444388722858

namespace A139748

/-- `A133476(n+1)-(A133476(n)+A105371(n))` -/
def P17121801444388722858.Spec : Prop :=
  ∀ n, P17121801444388722858.a n = A139748 n

end A139748

/-! ## A139748.P17985609692371716252

`Δ[Δ[A139398(n)]]`
-/

namespace A139748.P17985609692371716252
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139748.P17985609692371716252

namespace A139748

/-- `Δ[Δ[A139398(n)]]` -/
def P17985609692371716252.Spec : Prop :=
  ∀ n, P17985609692371716252.a n = A139748 n

end A139748

/-! ## A139748.P12648393890634647502

`A000079(n)-(A139714(n+1)+A139398(n+1))`
-/

namespace A139748.P12648393890634647502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A139714 (n + 1) + A139398 (n + 1))

end

end A139748.P12648393890634647502

namespace A139748

/-- `A000079(n)-(A139714(n+1)+A139398(n+1))` -/
def P12648393890634647502.Spec : Prop :=
  ∀ n, P12648393890634647502.a n = A139748 n

end A139748

/-!
# A139749: Numbers n such that d_1^r + ... + d_r^1 is a prime number, where d_i are the digits of n (n = d_1, ..., d_r).

The programs for A139749, there is no canonical definition to state claims against.
-/

/-! ## A139749.P4643095110783737323

`eq[1, A001222(A114570(n+1))]+1`
-/

namespace A139749.P4643095110783737323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A114570 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139749.P4643095110783737323

/-!
# A139750: Numbers n such that d_1^1 + ... + d_r^r is a prime number, where d_i are the digits of n (n = d_1, d_2, ..., d_r).

The programs for A139750, the canonical program `A139750.P12731079967979636192` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139750 has offset 1).

The definition of A139750 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1653 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139750.P12731079967979636192

`eq[1, A032741(A389091(n))]`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139750

/-- `eq[1, A032741(A389091(n))]` -/
def P12731079967979636192.Spec : Prop :=
  ∀ n, (P12731079967979636192.a n : ℤ) = A139750 (n + 1)

theorem P12731079967979636192.correct : P12731079967979636192.Spec := by
  intro n
  simp only [A139750, Nat.add_sub_cancel]

end A139750

/-! ## A139750.P16404932992036925157

`A028834(A168186(n+1)%A179915(2*n+1))`
-/

namespace A139750.P16404932992036925157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (Int.tmod (A168186 (n + 1)) (A179915 (2 * n + 1))).toNat

end

end A139750.P16404932992036925157

namespace A139750

/-- `A028834(A168186(n+1)%A179915(2*n+1))` -/
def P16404932992036925157.Spec : Prop :=
  ∀ n, P16404932992036925157.a n = A139750 (n + 1)

end A139750

/-! ## A139750.P10208342367909372215

`A028834(A304678(n+1)%A319648(3*n+2))`
-/

namespace A139750.P10208342367909372215
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (Int.tmod (A304678 (n + 1)) (A319648 (3 * n + 2))).toNat

end

end A139750.P10208342367909372215

namespace A139750

/-- `A028834(A304678(n+1)%A319648(3*n+2))` -/
def P10208342367909372215.Spec : Prop :=
  ∀ n, P10208342367909372215.a n = A139750 (n + 1)

end A139750

/-! ## A139750.P8007966693833442852

`A028834(A168186(n+1)%A153680(n+3))`
-/

namespace A139750.P8007966693833442852
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (Int.tmod (A168186 (n + 1)) (A153680 (n + 3))).toNat

end

end A139750.P8007966693833442852

namespace A139750

/-- `A028834(A168186(n+1)%A153680(n+3))` -/
def P8007966693833442852.Spec : Prop :=
  ∀ n, P8007966693833442852.a n = A139750 (n + 1)

end A139750

/-! ## A139750.P15196752856647089397

`A028834(A353838(n+1)%A350947(2*(n+1)))`
-/

namespace A139750.P15196752856647089397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028834 (Int.tmod (A353838 (n + 1)) (A350947 (2 * (n + 1)))).toNat

end

end A139750.P15196752856647089397

namespace A139750

/-- `A028834(A353838(n+1)%A350947(2*(n+1)))` -/
def P15196752856647089397.Spec : Prop :=
  ∀ n, P15196752856647089397.a n = A139750 (n + 1)

end A139750

/-!
# A139751: Primes arising in A139749.

The programs for A139751, there is no canonical definition to state claims against.
-/

/-! ## A139751.P16730850047184416860

`p?[A114570(n+1)]%24`
-/

namespace A139751.P16730850047184416860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114570 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)) 24

end

end A139751.P16730850047184416860

/-! ## A139751.P6303121096176988154

`A114570(A139749(n+1))%24`
-/

namespace A139751.P6303121096176988154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A114570 (A139749 (n + 1)).toNat) 24

end

end A139751.P6303121096176988154

/-! ## A139751.P15090316187976738506

`p?[A019530(A114570(n+1)²)]`
-/

namespace A139751.P15090316187976738506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019530 (A114570 (n + 1) ^ 2).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139751.P15090316187976738506

/-! ## A139751.P10240776098604418587

`A114570(A348800(n)+A139749(n+1))`
-/

namespace A139751.P10240776098604418587
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A114570 (A348800 n + A139749 (n + 1)).toNat

end

end A139751.P10240776098604418587

/-!
# A139752: Primes arising in A139750.

The programs for A139752, there is no canonical definition to state claims against.
-/

/-! ## A139752.P4525254336436743428

`p?[A389091(n)]`
-/

namespace A139752.P4525254336436743428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139752.P4525254336436743428

/-! ## A139752.P15583983834308713548

`p?[A111707(10*n+11)]`
-/

namespace A139752.P15583983834308713548
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (10 * n + 11)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139752.P15583983834308713548

/-! ## A139752.P15463884985776145885

`A389091(A139750(n+1))`
-/

namespace A139752.P15463884985776145885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389091 (A139750 (n + 1)).toNat

end

end A139752.P15463884985776145885

/-! ## A139752.P13157173998130740357

`filter[A389091(n), A257000(#)]`
-/

namespace A139752.P13157173998130740357
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389091 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A257000 (f1 j).toNat = 1) n)

end

end A139752.P13157173998130740357

/-! ## A139752.P16798562465953689916

`p?[A111707(A017281(n))-1]`
-/

namespace A139752.P16798562465953689916
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A111707 (A017281 n).toNat - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139752.P16798562465953689916

/-!
# A139753: a(2n) = next cube after a(2n-1), a(2n+1) = next square after a(2n).

The programs for A139753, the canonical program `A139753.P8486612340875185975` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139753 has offset 1).

The definition of A139753 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 1000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139753.P8486612340875185975

`∪[A077121(n+2)², A000578(n+1)]`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A139753

/-- `∪[A077121(n+2)², A000578(n+1)]` -/
def P8486612340875185975.Spec : Prop :=
  ∀ n, (P8486612340875185975.a n : ℤ) = A139753 (n + 1)

theorem P8486612340875185975.correct : P8486612340875185975.Spec := by
  intro n
  simp only [A139753, Nat.add_sub_cancel]

end A139753

/-! ## A139753.P1538023171563607362

`filter[A359390(n+1), A359430(#)]`
-/

namespace A139753.P1538023171563607362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359430 (f1 j).toNat = 1) n)

end

end A139753.P1538023171563607362

namespace A139753

/-- `filter[A359390(n+1), A359430(#)]` -/
def P1538023171563607362.Spec : Prop :=
  ∀ n, P1538023171563607362.a n = A139753 (n + 1)

end A139753

/-! ## A139753.P1457546173007156231

`filter[A359390(n+1), A374117(#)]`
-/

namespace A139753.P1457546173007156231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359390 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A374117 (f1 j).toNat = 1) n)

end

end A139753.P1457546173007156231

namespace A139753

/-- `filter[A359390(n+1), A374117(#)]` -/
def P1457546173007156231.Spec : Prop :=
  ∀ n, P1457546173007156231.a n = A139753 (n + 1)

end A139753

/-! ## A139753.P10246444457344875942

`∩[A327863(n+1), A359390(n+1)]`
-/

namespace A139753.P10246444457344875942
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327863 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A359390 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139753.P10246444457344875942

namespace A139753

/-- `∩[A327863(n+1), A359390(n+1)]` -/
def P10246444457344875942.Spec : Prop :=
  ∀ n, (P10246444457344875942.a n : ℤ) = A139753 (n + 1)

end A139753

/-!
# A139754: a(n) = floor(n*2*(3^n-2^n)/2^n).

The programs for A139754, the canonical program `A139754.P7203031530415207661` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139754 has offset 1).

The definition of A139754 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `floor((n+1)*2*(3^(n+1)-2^(n+1))/2^(n+1))` (program `A139754.P7203031530415207661`, by `A139754.P7203031530415207661.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139754.P4026717736081728055

`floor(2*(n+1)*(3^(n+1)-2^(n+1))/2^(n+1))`
-/

namespace A139754.P4026717736081728055
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(2 * (n + 1) : ℚ) * (((3 ^ (n + 1) : ℤ) - (2 ^ (n + 1) : ℤ) : ℚ) / (2 ^ (n + 1) : ℚ))⌋

end

end A139754.P4026717736081728055

namespace A139754

/-- `floor(2*(n+1)*(3^(n+1)-2^(n+1))/2^(n+1))` -/
def P4026717736081728055.Spec : Prop :=
  ∀ n, P4026717736081728055.a n = A139754 (n + 1)

theorem P4026717736081728055.correct : P4026717736081728055.Spec := by
  intro n
  simp only [A139754, Nat.add_sub_cancel, A139754.P4026717736081728055.a, A139754.P7203031530415207661.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A139754

/-! ## A139754.P7203031530415207661

`floor((n+1)*2*(3^(n+1)-2^(n+1))/2^(n+1))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139754

/-- `floor((n+1)*2*(3^(n+1)-2^(n+1))/2^(n+1))` -/
def P7203031530415207661.Spec : Prop :=
  ∀ n, P7203031530415207661.a n = A139754 (n + 1)

theorem P7203031530415207661.correct : P7203031530415207661.Spec := by
  intro n
  simp only [A139754, Nat.add_sub_cancel]

end A139754

/-! ## A139754.P10666160432920079168

`∑[A276571(A001794(n))]`
-/

namespace A139754.P10666160432920079168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276571 (A001794 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139754.P10666160432920079168

namespace A139754

/-- `∑[A276571(A001794(n))]` -/
def P10666160432920079168.Spec : Prop :=
  ∀ n, P10666160432920079168.a n = A139754 (n + 1)

end A139754

/-! ## A139754.P2512669173601825703

`∑[A358062(∑[A307683(2*n+5)])]`
-/

namespace A139754.P2512669173601825703
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307683 (2 * n + 5)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A358062 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139754.P2512669173601825703

namespace A139754

/-- `∑[A358062(∑[A307683(2*n+5)])]` -/
def P2512669173601825703.Spec : Prop :=
  ∀ n, P2512669173601825703.a n = A139754 (n + 1)

end A139754

/-!
# A139756: Binomial transform of A004526.

The programs for A139756, the canonical program `A139756.P10450278992530043659` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139756 has offset 0).

The definition of A139756 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139756.P3003362342514748727

`ogf(x^2/(1-4x+4x^2))`
-/

namespace A139756.P3003362342514748727
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 1] [1, -4, 4] n

end

end A139756.P3003362342514748727

namespace A139756

/-- `ogf(x^2/(1-4x+4x^2))` -/
def P3003362342514748727.Spec : Prop :=
  ∀ n, P3003362342514748727.a n = A139756 n

end A139756

/-! ## A139756.P10450278992530043659

`2*a(n-1)+2^(n-2)` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139756

/-- `2*a(n-1)+2^(n-2)` -/
def P10450278992530043659.Spec : Prop :=
  ∀ n, P10450278992530043659.a n = (A139756 n : ℚ)

end A139756

/-! ## A139756.P2512180193663717746

`∑[floor(n*2^(n-3))]`
-/

namespace A139756.P2512180193663717746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℚ) * (2 : ℚ) ^ ((n : ℤ) - 3 : ℤ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139756.P2512180193663717746

namespace A139756

/-- `∑[floor(n*2^(n-3))]` -/
def P2512180193663717746.Spec : Prop :=
  ∀ n, P2512180193663717746.a n = A139756 n

end A139756

/-! ## A139756.P8383251680666344572

`2^(n-2)*(n-1)%(n+1)`
-/

namespace A139756.P8383251680666344572
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (2 : ℚ) ^ ((n : ℤ) - 2 : ℤ) * (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℚ)

end

end A139756.P8383251680666344572

namespace A139756

/-- `2^(n-2)*(n-1)%(n+1)` -/
def P8383251680666344572.Spec : Prop :=
  ∀ n, P8383251680666344572.a n = (A139756 n : ℚ)

end A139756

/-! ## A139756.P17494525126482078604

`4*(a(n-1)-a(n-2))` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A139756.P17494525126482078604
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  4 * (a (n - 1) - a (n - 2))

end

end A139756.P17494525126482078604

namespace A139756

/-- `4*(a(n-1)-a(n-2))` -/
def P17494525126482078604.Spec : Prop :=
  ∀ n, P17494525126482078604.a n = A139756 n

end A139756

/-! ## A139756.P18377338043999033550

`lcm(n-1, (n-1)*floor(2^(n-2)))`
-/

namespace A139756.P18377338043999033550
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((n : ℤ) - 1) (((n : ℤ) - 1) * ⌊(2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌋)

end

end A139756.P18377338043999033550

namespace A139756

/-- `lcm(n-1, (n-1)*floor(2^(n-2)))` -/
def P18377338043999033550.Spec : Prop :=
  ∀ n, (P18377338043999033550.a n : ℤ) = A139756 n

end A139756

/-! ## A139756.P11727852035602052342

`a(n-1)+a(n-1)/(1-2/n)` with `a(0)=0, a(1)=0, a(2)=1`
-/

namespace A139756.P11727852035602052342
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [0, 0, 1] fun n a =>
  a (n - 1) + a (n - 1) / (1 - 2 / (n : ℚ))

end

end A139756.P11727852035602052342

namespace A139756

/-- `a(n-1)+a(n-1)/(1-2/n)` -/
def P11727852035602052342.Spec : Prop :=
  ∀ n, P11727852035602052342.a n = (A139756 n : ℚ)

end A139756

/-! ## A139756.P9379258843995186142

`A154222(n)-(n+1)`
-/

namespace A139756.P9379258843995186142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A154222 n - (n + 1 : ℤ)

end

end A139756.P9379258843995186142

namespace A139756

/-- `A154222(n)-(n+1)` -/
def P9379258843995186142.Spec : Prop :=
  ∀ n, P9379258843995186142.a n = A139756 n

end A139756

/-! ## A139756.P17622033998582454377

`(n-1)*A166444(n)`
-/

namespace A139756.P17622033998582454377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * A166444 n

end

end A139756.P17622033998582454377

namespace A139756

/-- `(n-1)*A166444(n)` -/
def P17622033998582454377.Spec : Prop :=
  ∀ n, P17622033998582454377.a n = A139756 n

end A139756

/-! ## A139756.P11507012967914452500

`A045623(n)-2^n`
-/

namespace A139756.P11507012967914452500
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045623 n - (2 ^ n : ℤ)

end

end A139756.P11507012967914452500

namespace A139756

/-- `A045623(n)-2^n` -/
def P11507012967914452500.Spec : Prop :=
  ∀ n, P11507012967914452500.a n = A139756 n

end A139756

/-! ## A139756.P16700418624687108214

`2^n-A172160(n)`
-/

namespace A139756.P16700418624687108214
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - A172160 n

end

end A139756.P16700418624687108214

namespace A139756

/-- `2^n-A172160(n)` -/
def P16700418624687108214.Spec : Prop :=
  ∀ n, P16700418624687108214.a n = A139756 n

end A139756

/-! ## A139756.P17325489200755206226

`A001787(abs(ceil(n*sin(11))))`
-/

namespace A139756.P17325489200755206226
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 |⌈(n : ℝ) * Real.sin (11 : ℝ)⌉|.toNat

end

end A139756.P17325489200755206226

namespace A139756

/-- `A001787(abs(ceil(n*sin(11))))` -/
def P17325489200755206226.Spec : Prop :=
  ∀ n, P17325489200755206226.a n = A139756 n

end A139756

/-! ## A139756.P15775732859604958435

`A001787(n-ceil(abs(sin(n))))`
-/

namespace A139756.P15775732859604958435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 ((n : ℤ) - ⌈|Real.sin (n : ℝ)|⌉).toNat

end

end A139756.P15775732859604958435

namespace A139756

/-- `A001787(n-ceil(abs(sin(n))))` -/
def P15775732859604958435.Spec : Prop :=
  ∀ n, P15775732859604958435.a n = A139756 n

end A139756

/-! ## A139756.P10604938583749177902

`(n-1)/2*A131577(n)`
-/

namespace A139756.P10604938583749177902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2 * (A131577 n : ℚ)

end

end A139756.P10604938583749177902

namespace A139756

/-- `(n-1)/2*A131577(n)` -/
def P10604938583749177902.Spec : Prop :=
  ∀ n, P10604938583749177902.a n = (A139756 n : ℚ)

end A139756

/-! ## A139756.P12486167964739720623

`A001787((n-1)%(n+1))`
-/

namespace A139756.P12486167964739720623
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ)).toNat

end

end A139756.P12486167964739720623

namespace A139756

/-- `A001787((n-1)%(n+1))` -/
def P12486167964739720623.Spec : Prop :=
  ∀ n, P12486167964739720623.a n = A139756 n

end A139756

/-! ## A139756.P10775251783283913794

`A049610(n)+a(n-1)` with `a(0)=0`
-/

namespace A139756.P10775251783283913794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A049610 n + a (n - 1)

end

end A139756.P10775251783283913794

namespace A139756

/-- `A049610(n)+a(n-1)` -/
def P10775251783283913794.Spec : Prop :=
  ∀ n, P10775251783283913794.a n = A139756 n

end A139756

/-! ## A139756.P1642430867394333860

`A001787(val(ceil(2^(n-1)), 2))`
-/

namespace A139756.P1642430867394333860
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001787 (SequenceMachineLib.valuation ⌈(2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat 2)

end

end A139756.P1642430867394333860

namespace A139756

/-- `A001787(val(ceil(2^(n-1)), 2))` -/
def P1642430867394333860.Spec : Prop :=
  ∀ n, P1642430867394333860.a n = A139756 n

end A139756

/-! ## A139756.P12111082202182470235

`(n-1)*floor(A000079(n)/4)`
-/

namespace A139756.P12111082202182470235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) * ⌊(A000079 n : ℚ) / 4⌋

end

end A139756.P12111082202182470235

namespace A139756

/-- `(n-1)*floor(A000079(n)/4)` -/
def P12111082202182470235.Spec : Prop :=
  ∀ n, P12111082202182470235.a n = A139756 n

end A139756

/-! ## A139756.P10123569104838376005

`(n-1)/2*A034008(n+1)`
-/

namespace A139756.P10123569104838376005
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1 : ℚ) / 2 * (A034008 (n + 1) : ℚ)

end

end A139756.P10123569104838376005

namespace A139756

/-- `(n-1)/2*A034008(n+1)` -/
def P10123569104838376005.Spec : Prop :=
  ∀ n, P10123569104838376005.a n = (A139756 n : ℚ)

end A139756

/-! ## A139756.P921084890570484734

`A109975(n+1)-2^(n+1)`
-/

namespace A139756.P921084890570484734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109975 (n + 1) - (2 ^ (n + 1) : ℤ)

end

end A139756.P921084890570484734

namespace A139756

/-- `A109975(n+1)-2^(n+1)` -/
def P921084890570484734.Spec : Prop :=
  ∀ n, P921084890570484734.a n = A139756 n

end A139756

/-!
# A139757: a(n) = (n+1)*(2n+1)^2.

The programs for A139757, the canonical program `A139757.P12680836282204562874` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139757 has offset 0).

The definition of A139757 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(n+1)*(2*n+1)²` (program `A139757.P12680836282204562874`, by `A139757.P12680836282204562874.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139757.P12680836282204562874

`(n+1)*(2*n+1)²`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139757

/-- `(n+1)*(2*n+1)²` -/
def P12680836282204562874.Spec : Prop :=
  ∀ n, (P12680836282204562874.a n : ℤ) = A139757 n

theorem P12680836282204562874.correct : P12680836282204562874.Spec := by
  intro n
  simp only [A139757]

end A139757

/-! ## A139757.P1165642943874340176

`ogf((1+14x+9x^2)/(1-4x+6x^2-4x^3+x^4))`
-/

namespace A139757.P1165642943874340176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 14, 9] [1, -4, 6, -4, 1] n

end

end A139757.P1165642943874340176

namespace A139757

/-- `ogf((1+14x+9x^2)/(1-4x+6x^2-4x^3+x^4))` -/
def P1165642943874340176.Spec : Prop :=
  ∀ n, P1165642943874340176.a n = A139757 n

end A139757

/-! ## A139757.P11557727649413199868

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=1, a(1)=18, a(2)=75, a(3)=196`
-/

namespace A139757.P11557727649413199868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 18, 75, 196] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A139757.P11557727649413199868

namespace A139757

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P11557727649413199868.Spec : Prop :=
  ∀ n, P11557727649413199868.a n = A139757 n

theorem P11557727649413199868.correct : P11557727649413199868.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A139757, Nat.add_sub_cancel, A139757.P11557727649413199868.a, A139757.P12680836282204562874.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A139757, Nat.add_sub_cancel, A139757.P11557727649413199868.a, A139757.P12680836282204562874.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A139757

/-! ## A139757.P9290448705531728885

`lcm(n+1, Δ[n²]²)`
-/

namespace A139757.P9290448705531728885
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n + 1 : ℤ) (((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2)

end

end A139757.P9290448705531728885

namespace A139757

/-- `lcm(n+1, Δ[n²]²)` -/
def P9290448705531728885.Spec : Prop :=
  ∀ n, (P9290448705531728885.a n : ℤ) = A139757 n

end A139757

/-! ## A139757.P2363267399384328564

`(n+1)*record[xor(1, n)²]`
-/

namespace A139757.P2363267399384328564
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.xor 1 n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139757.P2363267399384328564

namespace A139757

/-- `(n+1)*record[xor(1, n)²]` -/
def P2363267399384328564.Spec : Prop :=
  ∀ n, (P2363267399384328564.a n : ℤ) = A139757 n

end A139757

/-! ## A139757.P12570109900456074250

`abs(Δ[n²]²*xor(n, -1))`
-/

namespace A139757.P12570109900456074250
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * Int.xor (n : ℤ) (-1)|

end

end A139757.P12570109900456074250

namespace A139757

/-- `abs(Δ[n²]²*xor(n, -1))` -/
def P12570109900456074250.Spec : Prop :=
  ∀ n, P12570109900456074250.a n = A139757 n

end A139757

/-! ## A139757.P7034769010636397243

`-(Δ[n²]²*xor(n, -1))`
-/

namespace A139757.P7034769010636397243
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -(((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2 * Int.xor (n : ℤ) (-1))

end

end A139757.P7034769010636397243

namespace A139757

/-- `-(Δ[n²]²*xor(n, -1))` -/
def P7034769010636397243.Spec : Prop :=
  ∀ n, P7034769010636397243.a n = A139757 n

end A139757

/-! ## A139757.P14316220604298153078

`∑[∑[a(n-1)+24]]` with `a(0)=1, a(1)=16`
-/

namespace A139757.P14316220604298153078
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 16] fun n f2 =>
  f2 (n - 1) + 24

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139757.P14316220604298153078

namespace A139757

/-- `∑[∑[a(n-1)+24]]` -/
def P14316220604298153078.Spec : Prop :=
  ∀ n, (P14316220604298153078.a n : ℤ) = A139757 n

end A139757

/-! ## A139757.P18116202902185735011

`(n+1)/or(1, 2*n)^-2`
-/

namespace A139757.P18116202902185735011
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.lor 1 (2 * n) : ℚ) ^ (-2 : ℤ)

end

end A139757.P18116202902185735011

namespace A139757

/-- `(n+1)/or(1, 2*n)^-2` -/
def P18116202902185735011.Spec : Prop :=
  ∀ n, P18116202902185735011.a n = (A139757 n : ℚ)

end A139757

/-! ## A139757.P6411564375081490902

`(n+1)/xor(1, 2*n)^-2`
-/

namespace A139757.P6411564375081490902
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Nat.xor 1 (2 * n) : ℚ) ^ (-2 : ℤ)

end

end A139757.P6411564375081490902

namespace A139757

/-- `(n+1)/xor(1, 2*n)^-2` -/
def P6411564375081490902.Spec : Prop :=
  ∀ n, P6411564375081490902.a n = (A139757 n : ℚ)

end A139757

/-! ## A139757.P13727314567734554265

`Δ[n^4]+C(2*n+1, 2)`
-/

namespace A139757.P13727314567734554265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) : ℤ) - (f1 n : ℤ) + (Nat.choose (2 * n + 1) 2 : ℤ)

end

end A139757.P13727314567734554265

namespace A139757

/-- `Δ[n^4]+C(2*n+1, 2)` -/
def P13727314567734554265.Spec : Prop :=
  ∀ n, P13727314567734554265.a n = A139757 n

theorem P13727314567734554265.correct : P13727314567734554265.Spec := by
  intro n
  simp only [A139757, Nat.add_sub_cancel, A139757.P13727314567734554265.f1, A139757.P13727314567734554265.a, A139757.P12680836282204562874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139757

/-! ## A139757.P10443700377521148104

`C(n+2+n, 2)²/(n+1)`
-/

namespace A139757.P10443700377521148104
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 2 + n) 2 ^ 2 : ℚ) / (n + 1 : ℚ)

end

end A139757.P10443700377521148104

namespace A139757

/-- `C(n+2+n, 2)²/(n+1)` -/
def P10443700377521148104.Spec : Prop :=
  ∀ n, P10443700377521148104.a n = (A139757 n : ℚ)

theorem P10443700377521148104.correct : P10443700377521148104.Spec := by
  intro n
  simp only [A139757, Nat.add_sub_cancel, A139757.P10443700377521148104.a, A139757.P12680836282204562874.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A139757

/-! ## A139757.P13438323908704095103

`floor((n+1)/acot((n+1+n)²))`
-/

namespace A139757.P13438323908704095103
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) / SequenceMachineLib.acot ((n + 1 + n) ^ 2 : ℝ)⌋

end

end A139757.P13438323908704095103

namespace A139757

/-- `floor((n+1)/acot((n+1+n)²))` -/
def P13438323908704095103.Spec : Prop :=
  ∀ n, P13438323908704095103.a n = A139757 n

end A139757

/-! ## A139757.P9487307450162480586

`round((n+1)/acot((n+1+n)²))`
-/

namespace A139757.P9487307450162480586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((n + 1 : ℝ) / SequenceMachineLib.acot ((n + 1 + n) ^ 2 : ℝ))

end

end A139757.P9487307450162480586

namespace A139757

/-- `round((n+1)/acot((n+1+n)²))` -/
def P9487307450162480586.Spec : Prop :=
  ∀ n, P9487307450162480586.a n = A139757 n

end A139757

/-! ## A139757.P12248738894941506159

`(n+1)/tan(acot((n+1+n)²))`
-/

namespace A139757.P12248738894941506159
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℝ) / Real.tan (SequenceMachineLib.acot ((n + 1 + n) ^ 2 : ℝ))

end

end A139757.P12248738894941506159

namespace A139757

/-- `(n+1)/tan(acot((n+1+n)²))` -/
def P12248738894941506159.Spec : Prop :=
  ∀ n, P12248738894941506159.a n = (A139757 n : ℝ)

end A139757

/-! ## A139757.P15372258924377868537

`(n+1+n)²/cot(atan(n+1))`
-/

namespace A139757.P15372258924377868537
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((n + 1 + n) ^ 2 : ℝ) / Real.cot (Real.arctan (n + 1 : ℝ))

end

end A139757.P15372258924377868537

namespace A139757

/-- `(n+1+n)²/cot(atan(n+1))` -/
def P15372258924377868537.Spec : Prop :=
  ∀ n, P15372258924377868537.a n = (A139757 n : ℝ)

end A139757

/-! ## A139757.P13972417434275551569

`(n+1)/(1/xor(1, 2*n))^2`
-/

namespace A139757.P13972417434275551569
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (1 / (Nat.xor 1 (2 * n) : ℚ)) ^ 2

end

end A139757.P13972417434275551569

namespace A139757

/-- `(n+1)/(1/xor(1, 2*n))^2` -/
def P13972417434275551569.Spec : Prop :=
  ∀ n, P13972417434275551569.a n = (A139757 n : ℚ)

end A139757

/-! ## A139757.P14828958114381007192

`C(n+1, n)/(2*n+1)^-2`
-/

namespace A139757.P14828958114381007192
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.choose (n + 1) n : ℚ) / (2 * n + 1 : ℚ) ^ (-2 : ℤ)

end

end A139757.P14828958114381007192

namespace A139757

/-- `C(n+1, n)/(2*n+1)^-2` -/
def P14828958114381007192.Spec : Prop :=
  ∀ n, P14828958114381007192.a n = (A139757 n : ℚ)

theorem P14828958114381007192.correct : P14828958114381007192.Spec := by
  intro n
  simp only [A139757, Nat.add_sub_cancel, A139757.P14828958114381007192.a, A139757.P12680836282204562874.a, SequenceMachineLib.memo_apply]
  try simp

end A139757

/-! ## A139757.P9981765684062638761

`n*∑[lcm(4, 2*n+1)]+n+1`
-/

namespace A139757.P9981765684062638761
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 4 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * (∑ j ∈ Finset.range (n + 1), f1 j) + (n + 1)

end

end A139757.P9981765684062638761

namespace A139757

/-- `n*∑[lcm(4, 2*n+1)]+n+1` -/
def P9981765684062638761.Spec : Prop :=
  ∀ n, (P9981765684062638761.a n : ℤ) = A139757 n

end A139757

/-! ## A139757.P10483182645881115864

`∑[A381390(n)]`
-/

namespace A139757.P10483182645881115864
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A381390 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139757.P10483182645881115864

namespace A139757

/-- `∑[A381390(n)]` -/
def P10483182645881115864.Spec : Prop :=
  ∀ n, P10483182645881115864.a n = A139757 n

end A139757

/-!
# A139758: a(n) is the smallest prime such that (a(n) - the n-th prime) is a power of 2.

The programs for A139758, there is no canonical definition to state claims against.
-/

/-! ## A139758.P7457426076527636586

`A000040(n+1)+2^A094076(n+1)`
-/

namespace A139758.P7457426076527636586
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000040 (n + 1) : ℚ) + (2 : ℚ) ^ (A094076 (n + 1) : ℤ)

end

end A139758.P7457426076527636586

/-! ## A139758.P14465041180701078217

`p?[A131732(n)]+2^A094076(n+1)`
-/

namespace A139758.P14465041180701078217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131732 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n) : ℚ) + (2 : ℚ) ^ (A094076 (n + 1) : ℤ)

end

end A139758.P14465041180701078217

/-! ## A139758.P18351679895521220171

`A008578(n+2)+2^A094076(n+1)`
-/

namespace A139758.P18351679895521220171
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A008578 (n + 2) : ℚ) + (2 : ℚ) ^ (A094076 (n + 1) : ℤ)

end

end A139758.P18351679895521220171

/-! ## A139758.P10563174607643754572

`eq[2, A053204(n)]+2^A094076(n+1)`
-/

namespace A139758.P10563174607643754572
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053204 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) + (2 : ℚ) ^ (A094076 (n + 1) : ℤ)

end

end A139758.P10563174607643754572

/-! ## A139758.P14939061294126076244

`record[A006530(n+2)]+2^A094076(n+1)`
-/

namespace A139758.P14939061294126076244
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (2 : ℚ) ^ (A094076 (n + 1) : ℤ)

end

end A139758.P14939061294126076244

/-! ## A139758.P18058554950164855347

`record[A014963(n+2)]+2^A094076(n+1)`
-/

namespace A139758.P18058554950164855347
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) + (2 : ℚ) ^ (A094076 (n + 1) : ℤ)

end

end A139758.P18058554950164855347

/-! ## A139758.P10758311769374527806

`eq[1, A001222(n+1)]+2^A094076(n+1)+1`
-/

namespace A139758.P10758311769374527806
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n : ℚ) + ((2 : ℚ) ^ (A094076 (n + 1) : ℤ) + 1)

end

end A139758.P10758311769374527806

/-! ## A139758.P5012741385002695693

`A000079(A094076(n+1))+A000040(n+1)`
-/

namespace A139758.P5012741385002695693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A094076 (n + 1)).toNat + A000040 (n + 1)

end

end A139758.P5012741385002695693

/-! ## A139758.P14588486841360225874

`A000079(A094076(n+1))+record[A006530(n+2)]`
-/

namespace A139758.P14588486841360225874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006530 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A094076 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139758.P14588486841360225874

/-! ## A139758.P16838367412331143766

`A000079(A094076(n+1))+record[A014963(n+2)]`
-/

namespace A139758.P16838367412331143766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014963 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (A094076 (n + 1)).toNat + f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139758.P16838367412331143766

/-!
# A139759: A Fibonacci-based recurrence.

The programs for A139759, the canonical program `A139759.P1094177922667183040` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139759 has offset 0).

The definition of A139759 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139759.P1094177922667183040

`a(n-1)+a(n-2)+gcd(n, a(n-1))-gcd(n, a(n-2))` with `a(0)=1, a(1)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139759

/-- `a(n-1)+a(n-2)+gcd(n, a(n-1))-gcd(n, a(n-2))` -/
def P1094177922667183040.Spec : Prop :=
  ∀ n, P1094177922667183040.a n = A139759 n

theorem P1094177922667183040.correct : P1094177922667183040.Spec := by
  intro n
  simp only [A139759]

end A139759

/-! ## A139759.P12758434450758788196

`xor(A307598(A217964(n+1)), A332280(n))`
-/

namespace A139759.P12758434450758788196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A307598 (A217964 (n + 1)).toNat) (A332280 n)

end

end A139759.P12758434450758788196

namespace A139759

/-- `xor(A307598(A217964(n+1)), A332280(n))` -/
def P12758434450758788196.Spec : Prop :=
  ∀ n, P12758434450758788196.a n = A139759 n

end A139759

/-! ## A139759.P3412758856554610074

`A085158(n)+A005811(A368220(n+1))%A025049(n)`
-/

namespace A139759.P3412758856554610074
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085158 n + Int.tmod (A005811 (A368220 (n + 1)).toNat) (A025049 n)

end

end A139759.P3412758856554610074

namespace A139759

/-- `A085158(n)+A005811(A368220(n+1))%A025049(n)` -/
def P3412758856554610074.Spec : Prop :=
  ∀ n, P3412758856554610074.a n = A139759 n

end A139759

/-!
# A139760: First quadrisection of A115451.

The programs for A139760, the canonical program `A139760.P10041406917228095955` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139760 has offset 0).

The definition of A139760 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139760.P1694192165321392544

`ogf((1-8x)/(1-17x+16x^2))`
-/

namespace A139760.P1694192165321392544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -8] [1, -17, 16] n

end

end A139760.P1694192165321392544

namespace A139760

/-- `ogf((1-8x)/(1-17x+16x^2))` -/
def P1694192165321392544.Spec : Prop :=
  ∀ n, P1694192165321392544.a n = A139760 n

end A139760

/-! ## A139760.P10041406917228095955

`16*a(n-1)-7` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139760

/-- `16*a(n-1)-7` -/
def P10041406917228095955.Spec : Prop :=
  ∀ n, P10041406917228095955.a n = A139760 n

theorem P10041406917228095955.correct : P10041406917228095955.Spec := by
  intro n
  simp only [A139760]

end A139760

/-! ## A139760.P13233095370420920733

`(7+8*16^n)/15`
-/

namespace A139760.P13233095370420920733
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (7 + 8 * 16 ^ n : ℚ) / 15

end

end A139760.P13233095370420920733

namespace A139760

/-- `(7+8*16^n)/15` -/
def P13233095370420920733.Spec : Prop :=
  ∀ n, P13233095370420920733.a n = (A139760 n : ℚ)

theorem P13233095370420920733.correct : P13233095370420920733.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139760, Nat.add_sub_cancel, A139760.P13233095370420920733.a, A139760.P10041406917228095955.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139760, Nat.add_sub_cancel, A139760.P13233095370420920733.a, A139760.P10041406917228095955.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A139760

/-! ## A139760.P4263085965119619736

`lcm(16, a(n-1))-7` with `a(0)=1`
-/

namespace A139760.P4263085965119619736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 16 (a (n - 1)) : ℤ) - 7

end

end A139760.P4263085965119619736

namespace A139760

/-- `lcm(16, a(n-1))-7` -/
def P4263085965119619736.Spec : Prop :=
  ∀ n, P4263085965119619736.a n = A139760 n

end A139760

/-! ## A139760.P8372156635004154358

`a(n-1)+16^n/2` with `a(0)=1`
-/

namespace A139760.P8372156635004154358
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (16 ^ n : ℚ) / 2

end

end A139760.P8372156635004154358

namespace A139760

/-- `a(n-1)+16^n/2` -/
def P8372156635004154358.Spec : Prop :=
  ∀ n, P8372156635004154358.a n = (A139760 n : ℚ)

end A139760

/-! ## A139760.P17963303629019167314

`a(n-1)/(1/4)²-7` with `a(0)=1`
-/

namespace A139760.P17963303629019167314
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 - 7

end

end A139760.P17963303629019167314

namespace A139760

/-- `a(n-1)/(1/4)²-7` -/
def P17963303629019167314.Spec : Prop :=
  ∀ n, P17963303629019167314.a n = (A139760 n : ℚ)

end A139760

/-! ## A139760.P12330048223079143352

`∑[record[gcd(n, ∑[n+1])^(n+1)]]`
-/

namespace A139760.P12330048223079143352
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd n (∑ j ∈ Finset.range (n + 1), f3 j) ^ (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139760.P12330048223079143352

namespace A139760

/-- `∑[record[gcd(n, ∑[n+1])^(n+1)]]` -/
def P12330048223079143352.Spec : Prop :=
  ∀ n, (P12330048223079143352.a n : ℤ) = A139760 n

end A139760

/-! ## A139760.P17567732493202335458

`A102865(2*n)`
-/

namespace A139760.P17567732493202335458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102865 (2 * n)

end

end A139760.P17567732493202335458

namespace A139760

/-- `A102865(2*n)` -/
def P17567732493202335458.Spec : Prop :=
  ∀ n, P17567732493202335458.a n = A139760 n

end A139760

/-! ## A139760.P14017766668024649938

`A115451(4*n)`
-/

namespace A139760.P14017766668024649938
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115451 (4 * n)

end

end A139760.P14017766668024649938

namespace A139760

/-- `A115451(4*n)` -/
def P14017766668024649938.Spec : Prop :=
  ∀ n, P14017766668024649938.a n = A139760 n

end A139760

/-! ## A139760.P16140568958550709981

`∑[record[A009117(n)]]`
-/

namespace A139760.P16140568958550709981
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009117 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139760.P16140568958550709981

namespace A139760

/-- `∑[record[A009117(n)]]` -/
def P16140568958550709981.Spec : Prop :=
  ∀ n, P16140568958550709981.a n = A139760 n

end A139760

/-!
# A139761: a(n) = Sum_{k >= 0} binomial(n,5*k+4).

The programs for A139761, the canonical program `A139761.P1274273492640827833` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139761 has offset 0).

The definition of A139761 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139761.P7434674093006269859

`ogf(x^4/(1-5x+10x^2-10x^3+5x^4-2x^5))`
-/

namespace A139761.P7434674093006269859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 0, 0, 0, 1] [1, -5, 10, -10, 5, -2] n

end

end A139761.P7434674093006269859

namespace A139761

/-- `ogf(x^4/(1-5x+10x^2-10x^3+5x^4-2x^5))` -/
def P7434674093006269859.Spec : Prop :=
  ∀ n, P7434674093006269859.a n = A139761 n

end A139761

/-! ## A139761.P9535781990044794814

`round(2/5*(2^(n-1)+ϕ^n*cos(π*(n-8)/5)))`
-/

namespace A139761.P9535781990044794814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((2 : ℚ) / 5 : ℝ) * (((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ) + Real.goldenRatio ^ n * Real.cos (Real.pi * ((n : ℤ) - 8 : ℝ) / 5)))

end

end A139761.P9535781990044794814

namespace A139761

/-- `round(2/5*(2^(n-1)+ϕ^n*cos(π*(n-8)/5)))` -/
def P9535781990044794814.Spec : Prop :=
  ∀ n, P9535781990044794814.a n = A139761 n

end A139761

/-! ## A139761.P1274273492640827833

`A139398(n+1)-A139398(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A139761

/-- `A139398(n+1)-A139398(n)` -/
def P1274273492640827833.Spec : Prop :=
  ∀ n, P1274273492640827833.a n = A139761 n

theorem P1274273492640827833.correct : P1274273492640827833.Spec := by
  intro n
  simp only [A139761]

end A139761

/-! ## A139761.P4669275911734038434

`∑[A139748(abs(1-n))]`
-/

namespace A139761.P4669275911734038434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139761.P4669275911734038434

namespace A139761

/-- `∑[A139748(abs(1-n))]` -/
def P4669275911734038434.Spec : Prop :=
  ∀ n, P4669275911734038434.a n = A139761 n

end A139761

/-! ## A139761.P11252678838217276605

`A139748(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A139761.P11252678838217276605
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A139748 (n - 1) + a (n - 1)

end

end A139761.P11252678838217276605

namespace A139761

/-- `A139748(n-1)+a(n-1)` -/
def P11252678838217276605.Spec : Prop :=
  ∀ n, P11252678838217276605.a n = A139761 n

end A139761

/-! ## A139761.P17297717714425412017

`A139748(n)-A138112(n)`
-/

namespace A139761.P17297717714425412017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n - A138112 n

end

end A139761.P17297717714425412017

namespace A139761

/-- `A139748(n)-A138112(n)` -/
def P17297717714425412017.Spec : Prop :=
  ∀ n, P17297717714425412017.a n = A139761 n

end A139761

/-! ## A139761.P1846788132678003

`A139714(n)-A138112(n+1)`
-/

namespace A139761.P1846788132678003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n - A138112 (n + 1)

end

end A139761.P1846788132678003

namespace A139761

/-- `A139714(n)-A138112(n+1)` -/
def P1846788132678003.Spec : Prop :=
  ∀ n, P1846788132678003.a n = A139761 n

end A139761

/-! ## A139761.P4030119620351400150

`A133476(n)+Δ[A103311(n+1)]`
-/

namespace A139761.P4030119620351400150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103311 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n + (f1 (n + 1) - f1 n)

end

end A139761.P4030119620351400150

namespace A139761

/-- `A133476(n)+Δ[A103311(n+1)]` -/
def P4030119620351400150.Spec : Prop :=
  ∀ n, P4030119620351400150.a n = A139761 n

end A139761

/-! ## A139761.P17496337474930478490

`A105371(n)+A133476(n)-A138003(n)`
-/

namespace A139761.P17496337474930478490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105371 n + (A133476 n - A138003 n)

end

end A139761.P17496337474930478490

namespace A139761

/-- `A105371(n)+A133476(n)-A138003(n)` -/
def P17496337474930478490.Spec : Prop :=
  ∀ n, P17496337474930478490.a n = A139761 n

end A139761

/-! ## A139761.P12842771927809608591

`A139714(n)-A138112(n)-Δ[A138112(n)]`
-/

namespace A139761.P12842771927809608591
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138112 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n - A138112 n - (f1 (n + 1) - f1 n)

end

end A139761.P12842771927809608591

namespace A139761

/-- `A139714(n)-A138112(n)-Δ[A138112(n)]` -/
def P12842771927809608591.Spec : Prop :=
  ∀ n, P12842771927809608591.a n = A139761 n

end A139761

/-! ## A139761.P525640316064035453

`A133476(n)-(A138112(n+1)+A103311(n))`
-/

namespace A139761.P525640316064035453
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n - (A138112 (n + 1) + A103311 n)

end

end A139761.P525640316064035453

namespace A139761

/-- `A133476(n)-(A138112(n+1)+A103311(n))` -/
def P525640316064035453.Spec : Prop :=
  ∀ n, P525640316064035453.a n = A139761 n

end A139761

/-! ## A139761.P15155985403232172109

`Δ[A139398(n)]`
-/

namespace A139761.P15155985403232172109
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139398 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139761.P15155985403232172109

namespace A139761

/-- `Δ[A139398(n)]` -/
def P15155985403232172109.Spec : Prop :=
  ∀ n, P15155985403232172109.a n = A139761 n

theorem P15155985403232172109.correct : P15155985403232172109.Spec := by
  intro n
  simp only [A139761, Nat.add_sub_cancel, A139761.P15155985403232172109.f1, A139761.P15155985403232172109.a, A139761.P1274273492640827833.a, SequenceMachineLib.memo_apply]

end A139761

/-! ## A139761.P14057929875091792211

`Δ[A139714(n)+Δ[A100334(n)]]`
-/

namespace A139761.P14057929875091792211
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n + (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139761.P14057929875091792211

namespace A139761

/-- `Δ[A139714(n)+Δ[A100334(n)]]` -/
def P14057929875091792211.Spec : Prop :=
  ∀ n, P14057929875091792211.a n = A139761 n

end A139761

/-! ## A139761.P18412457093066901388

`Δ[Δ[A133476(n)]]`
-/

namespace A139761.P18412457093066901388
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133476 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139761.P18412457093066901388

namespace A139761

/-- `Δ[Δ[A133476(n)]]` -/
def P18412457093066901388.Spec : Prop :=
  ∀ n, P18412457093066901388.a n = A139761 n

end A139761

/-! ## A139761.P11423278351746079225

`Δ[Δ[A139748(n)+A100334(n)]]`
-/

namespace A139761.P11423278351746079225
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139748 n + A100334 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139761.P11423278351746079225

namespace A139761

/-- `Δ[Δ[A139748(n)+A100334(n)]]` -/
def P11423278351746079225.Spec : Prop :=
  ∀ n, P11423278351746079225.a n = A139761 n

end A139761

/-! ## A139761.P1925072668950017163

`A000079(n)-(A139748(n+1)+A133476(n+1))`
-/

namespace A139761.P1925072668950017163
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A139748 (n + 1) + A133476 (n + 1))

end

end A139761.P1925072668950017163

namespace A139761

/-- `A000079(n)-(A139748(n+1)+A133476(n+1))` -/
def P1925072668950017163.Spec : Prop :=
  ∀ n, P1925072668950017163.a n = A139761 n

end A139761

/-! ## A139761.P10304039219953341000

`Δ[Δ[Δ[A139714(n)]]]`
-/

namespace A139761.P10304039219953341000
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139714 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139761.P10304039219953341000

namespace A139761

/-- `Δ[Δ[Δ[A139714(n)]]]` -/
def P10304039219953341000.Spec : Prop :=
  ∀ n, P10304039219953341000.a n = A139761 n

end A139761

/-! ## A139761.P7473097573231532456

`A129929(n+1)-(A133476(n+1)+A129929(n))`
-/

namespace A139761.P7473097573231532456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129929 (n + 1) - (A133476 (n + 1) + A129929 n)

end

end A139761.P7473097573231532456

namespace A139761

/-- `A129929(n+1)-(A133476(n+1)+A129929(n))` -/
def P7473097573231532456.Spec : Prop :=
  ∀ n, P7473097573231532456.a n = A139761 n

end A139761

/-!
# A139762: a(n)=Sum_digits_of_a(n-1)+Sum_digits_of(n).

The programs for A139762, the canonical program `A139762.P8061600169167864390` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139762 has offset 0).

The definition of A139762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139762.P8061600169167864390

`A007953(a(n-1))+A007953(n)` with `a(0)=0`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A139762

/-- `A007953(a(n-1))+A007953(n)` -/
def P8061600169167864390.Spec : Prop :=
  ∀ n, P8061600169167864390.a n = A139762 n

theorem P8061600169167864390.correct : P8061600169167864390.Spec := by
  intro n
  simp only [A139762]

end A139762

/-! ## A139762.P13929036672953071653

`A062028(n)-(n-A007953(a(n-1)))` with `a(0)=0`
-/

namespace A139762.P13929036672953071653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A062028 n - ((n : ℤ) - A007953 (a (n - 1)).toNat)

end

end A139762.P13929036672953071653

namespace A139762

/-- `A062028(n)-(n-A007953(a(n-1)))` -/
def P13929036672953071653.Spec : Prop :=
  ∀ n, P13929036672953071653.a n = A139762 n

end A139762

/-! ## A139762.P2846259364236422481

`sqrt(A118881(a(n-1)))+n-A066568(n)` with `a(0)=0`
-/

namespace A139762.P2846259364236422481
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [0] fun n a =>
  Real.sqrt (A118881 (SequenceMachineLib.roundAway (a (n - 1))).toNat : ℝ) + (n : ℝ) - (A066568 n : ℝ)

end

end A139762.P2846259364236422481

namespace A139762

/-- `sqrt(A118881(a(n-1)))+n-A066568(n)` -/
def P2846259364236422481.Spec : Prop :=
  ∀ n, P2846259364236422481.a n = (A139762 n : ℝ)

end A139762

/-! ## A139762.P14543227007826918001

`A062028(a(n-1))-a(n-1)+n-A066568(n)` with `a(0)=0`
-/

namespace A139762.P14543227007826918001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A062028 (a (n - 1)).toNat - a (n - 1) + (n : ℤ) - A066568 n

end

end A139762.P14543227007826918001

namespace A139762

/-- `A062028(a(n-1))-a(n-1)+n-A066568(n)` -/
def P14543227007826918001.Spec : Prop :=
  ∀ n, P14543227007826918001.a n = A139762 n

end A139762

/-! ## A139762.P13402244170043659816

`a(n-1)-A066568(a(n-1))+n-A066568(n)` with `a(0)=0`
-/

namespace A139762.P13402244170043659816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) - A066568 (a (n - 1)).toNat + (n : ℤ) - A066568 n

end

end A139762.P13402244170043659816

namespace A139762

/-- `a(n-1)-A066568(a(n-1))+n-A066568(n)` -/
def P13402244170043659816.Spec : Prop :=
  ∀ n, P13402244170043659816.a n = A139762 n

end A139762

/-! ## A139762.P376359754888876921

`A001222(A054842(n))+A001222(A054842(a(n-1)))` with `a(0)=0`
-/

namespace A139762.P376359754888876921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A001222 (A054842 n).toNat + A001222 (A054842 (a (n - 1)).toNat).toNat

end

end A139762.P376359754888876921

namespace A139762

/-- `A001222(A054842(n))+A001222(A054842(a(n-1)))` -/
def P376359754888876921.Spec : Prop :=
  ∀ n, P376359754888876921.a n = A139762 n

end A139762

/-!
# A139763: a(n)=a(n-1)+a(n-2)+a(n-3)+2a(n-4) with a(n)=n+1 for n<=3.

The programs for A139763, the canonical program `A139763.P13311849933044043768` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139763 has offset 0).

The definition of A139763 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` (program `A139763.P13311849933044043768`, by `A139763.P13311849933044043768.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139763.P6294025601247480930

`ogf((1+x-2x^3)/(1-x-x^2-x^3-2x^4))`
-/

namespace A139763.P6294025601247480930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 1, 0, -2] [1, -1, -1, -1, -2] n

end

end A139763.P6294025601247480930

namespace A139763

/-- `ogf((1+x-2x^3)/(1-x-x^2-x^3-2x^4))` -/
def P6294025601247480930.Spec : Prop :=
  ∀ n, P6294025601247480930.a n = A139763 n

end A139763

/-! ## A139763.P13311849933044043768

`a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` with `a(0)=1, a(1)=2, a(2)=3, a(3)=4`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139763

/-- `a(n-1)+a(n-2)+a(n-3)+2*a(n-4)` -/
def P13311849933044043768.Spec : Prop :=
  ∀ n, (P13311849933044043768.a n : ℤ) = A139763 n

theorem P13311849933044043768.correct : P13311849933044043768.Spec := by
  intro n
  simp only [A139763]

end A139763

/-! ## A139763.P15726746620725127203

`A056594(n+3)+((-1)^n+2^(n+1))/3`
-/

namespace A139763.P15726746620725127203
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A056594 (n + 3) : ℚ) + ((-1) ^ n + (2 ^ (n + 1) : ℤ) : ℚ) / 3

end

end A139763.P15726746620725127203

namespace A139763

/-- `A056594(n+3)+((-1)^n+2^(n+1))/3` -/
def P15726746620725127203.Spec : Prop :=
  ∀ n, P15726746620725127203.a n = (A139763 n : ℚ)

end A139763

/-! ## A139763.P3203119743952313367

`A084214(n)-a(n-2)` with `a(0)=1, a(1)=2`
-/

namespace A139763.P3203119743952313367
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A084214 n - a (n - 2)

end

end A139763.P3203119743952313367

namespace A139763

/-- `A084214(n)-a(n-2)` -/
def P3203119743952313367.Spec : Prop :=
  ∀ n, P3203119743952313367.a n = A139763 n

end A139763

/-! ## A139763.P14392032146141080984

`A181586(n)+A100088(n)`
-/

namespace A139763.P14392032146141080984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181586 n + A100088 n

end

end A139763.P14392032146141080984

namespace A139763

/-- `A181586(n)+A100088(n)` -/
def P14392032146141080984.Spec : Prop :=
  ∀ n, P14392032146141080984.a n = A139763 n

end A139763

/-! ## A139763.P12078246207574384510

`A100455(n)-A001045(n)`
-/

namespace A139763.P12078246207574384510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100455 n - A001045 n

end

end A139763.P12078246207574384510

namespace A139763

/-- `A100455(n)-A001045(n)` -/
def P12078246207574384510.Spec : Prop :=
  ∀ n, P12078246207574384510.a n = A139763 n

end A139763

/-! ## A139763.P3883123079722609735

`A081660(n)-A201629(n)`
-/

namespace A139763.P3883123079722609735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A081660 n - A201629 n

end

end A139763.P3883123079722609735

namespace A139763

/-- `A081660(n)-A201629(n)` -/
def P3883123079722609735.Spec : Prop :=
  ∀ n, P3883123079722609735.a n = A139763 n

end A139763

/-! ## A139763.P3176943874735085821

`A277955(n)-A109718(n)`
-/

namespace A139763.P3176943874735085821
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A277955 n - A109718 n

end

end A139763.P3176943874735085821

namespace A139763

/-- `A277955(n)-A109718(n)` -/
def P3176943874735085821.Spec : Prop :=
  ∀ n, P3176943874735085821.a n = A139763 n

end A139763

/-! ## A139763.P17679434619208917088

`A001045(n+1)-A056594(n+1)`
-/

namespace A139763.P17679434619208917088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A056594 (n + 1)

end

end A139763.P17679434619208917088

namespace A139763

/-- `A001045(n+1)-A056594(n+1)` -/
def P17679434619208917088.Spec : Prop :=
  ∀ n, P17679434619208917088.a n = A139763 n

end A139763

/-! ## A139763.P5292916839888773925

`A152046(n+1)-A056594(n+1)`
-/

namespace A139763.P5292916839888773925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152046 (n + 1) - A056594 (n + 1)

end

end A139763.P5292916839888773925

namespace A139763

/-- `A152046(n+1)-A056594(n+1)` -/
def P5292916839888773925.Spec : Prop :=
  ∀ n, P5292916839888773925.a n = A139763 n

end A139763

/-! ## A139763.P9506259949210081733

`A001045(n+1)-A117569(n+2)`
-/

namespace A139763.P9506259949210081733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A117569 (n + 2)

end

end A139763.P9506259949210081733

namespace A139763

/-- `A001045(n+1)-A117569(n+2)` -/
def P9506259949210081733.Spec : Prop :=
  ∀ n, P9506259949210081733.a n = A139763 n

end A139763

/-! ## A139763.P709097936705631154

`A132380(2*n)+A001045(n+1)`
-/

namespace A139763.P709097936705631154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A132380 (2 * n) + A001045 (n + 1)

end

end A139763.P709097936705631154

namespace A139763

/-- `A132380(2*n)+A001045(n+1)` -/
def P709097936705631154.Spec : Prop :=
  ∀ n, P709097936705631154.a n = A139763 n

end A139763

/-! ## A139763.P7556035265540887509

`A001045(n+1)-A075553(2*n)`
-/

namespace A139763.P7556035265540887509
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) - A075553 (2 * n)

end

end A139763.P7556035265540887509

namespace A139763

/-- `A001045(n+1)-A075553(2*n)` -/
def P7556035265540887509.Spec : Prop :=
  ∀ n, P7556035265540887509.a n = A139763 n

end A139763

/-! ## A139763.P17004886546534943134

`A135318(2*n)-A056594(n+1)`
-/

namespace A139763.P17004886546534943134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (2 * n) - A056594 (n + 1)

end

end A139763.P17004886546534943134

namespace A139763

/-- `A135318(2*n)-A056594(n+1)` -/
def P17004886546534943134.Spec : Prop :=
  ∀ n, P17004886546534943134.a n = A139763 n

end A139763

/-! ## A139763.P2176577019016559808

`A135318(2*n)+A046978(2*n)`
-/

namespace A139763.P2176577019016559808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135318 (2 * n) + A046978 (2 * n)

end

end A139763.P2176577019016559808

namespace A139763

/-- `A135318(2*n)+A046978(2*n)` -/
def P2176577019016559808.Spec : Prop :=
  ∀ n, P2176577019016559808.a n = A139763 n

end A139763

/-! ## A139763.P525015787944634770

`A001045(n+1)+A007877(n+1)-1`
-/

namespace A139763.P525015787944634770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A007877 (n + 1) - 1)

end

end A139763.P525015787944634770

namespace A139763

/-- `A001045(n+1)+A007877(n+1)-1` -/
def P525015787944634770.Spec : Prop :=
  ∀ n, P525015787944634770.a n = A139763 n

end A139763

/-! ## A139763.P13295261921928052993

`A001045(n+1)+A068073(n+1)-2`
-/

namespace A139763.P13295261921928052993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (A068073 (n + 1) - 2)

end

end A139763.P13295261921928052993

namespace A139763

/-- `A001045(n+1)+A068073(n+1)-2` -/
def P13295261921928052993.Spec : Prop :=
  ∀ n, P13295261921928052993.a n = A139763 n

end A139763

/-! ## A139763.P11210618674683188961

`A112387(2*n+1)-A056594(n+1)`
-/

namespace A139763.P11210618674683188961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112387 (2 * n + 1) - A056594 (n + 1)

end

end A139763.P11210618674683188961

namespace A139763

/-- `A112387(2*n+1)-A056594(n+1)` -/
def P11210618674683188961.Spec : Prop :=
  ∀ n, P11210618674683188961.a n = A139763 n

end A139763

/-! ## A139763.P13842960571029160850

`A001045(n+1)+2*A004525(n)-n`
-/

namespace A139763.P13842960571029160850
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (n + 1) + (2 * A004525 n - (n : ℤ))

end

end A139763.P13842960571029160850

namespace A139763

/-- `A001045(n+1)+2*A004525(n)-n` -/
def P13842960571029160850.Spec : Prop :=
  ∀ n, P13842960571029160850.a n = A139763 n

end A139763

/-! ## A139763.P11754802954314399802

`A309873(∏{p}[(n+1)/∏{p}[n+1, #], #])+A000975(n)`
-/

namespace A139763.P11754802954314399802
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / ((∏ p ∈ Nat.primeFactors (f2 n), p : ℕ) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309873 (∏ p ∈ Nat.primeFactors (SequenceMachineLib.roundAway (f1 n)).natAbs, p) + A000975 n

end

end A139763.P11754802954314399802

namespace A139763

/-- `A309873(∏{p}[(n+1)/∏{p}[n+1, #], #])+A000975(n)` -/
def P11754802954314399802.Spec : Prop :=
  ∀ n, P11754802954314399802.a n = A139763 n

end A139763

/-!
# A139764: Smallest term in Zeckendorf representation of n.

The programs for A139764, the canonical program `A139764.P8277455869379676170` is in `Seq.B008.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139764 has offset 1).

The definition of A139764 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A035614, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A139764.P8277455869379676170

`A000045(A035614(n)+2)`

The canonical program, it is in `Seq.B008.C000`.
-/

namespace A139764

/-- `A000045(A035614(n)+2)` -/
def P8277455869379676170.Spec : Prop :=
  ∀ n, P8277455869379676170.a n = A139764 (n + 1)

theorem P8277455869379676170.correct : P8277455869379676170.Spec := by
  intro n
  simp only [A139764, Nat.add_sub_cancel]

end A139764

/-! ## A139764.P14277313515672470350

`A000045(A035612(n+1)+1)`
-/

namespace A139764.P14277313515672470350
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035612 (n + 1) + 1).toNat

end

end A139764.P14277313515672470350

namespace A139764

/-- `A000045(A035612(n+1)+1)` -/
def P14277313515672470350.Spec : Prop :=
  ∀ n, P14277313515672470350.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P10546579796532727364

`A000071(A035614(n)+2)+1`
-/

namespace A139764.P10546579796532727364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A035614 n + 2).toNat + 1

end

end A139764.P10546579796532727364

namespace A139764

/-- `A000071(A035614(n)+2)+1` -/
def P10546579796532727364.Spec : Prop :=
  ∀ n, P10546579796532727364.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P5755667170616106833

`A123736((A035612(n+1)+1)²)`
-/

namespace A139764.P5755667170616106833
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123736 ((A035612 (n + 1) + 1) ^ 2).toNat

end

end A139764.P5755667170616106833

namespace A139764

/-- `A123736((A035612(n+1)+1)²)` -/
def P5755667170616106833.Spec : Prop :=
  ∀ n, P5755667170616106833.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P2667793544814916285

`A000071(A035612(n+1)+1)+1`
-/

namespace A139764.P2667793544814916285
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000071 (A035612 (n + 1) + 1).toNat + 1

end

end A139764.P2667793544814916285

namespace A139764

/-- `A000071(A035612(n+1)+1)+1` -/
def P2667793544814916285.Spec : Prop :=
  ∀ n, P2667793544814916285.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P5463352744389660378

`A001611(A035612(n+1)+1)-1`
-/

namespace A139764.P5463352744389660378
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001611 (A035612 (n + 1) + 1).toNat - 1

end

end A139764.P5463352744389660378

namespace A139764

/-- `A001611(A035612(n+1)+1)-1` -/
def P5463352744389660378.Spec : Prop :=
  ∀ n, P5463352744389660378.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P1457367124271391592

`A000045(A035612(A022342(n+2)))`
-/

namespace A139764.P1457367124271391592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (A035612 (A022342 (n + 2)).toNat).toNat

end

end A139764.P1457367124271391592

namespace A139764

/-- `A000045(A035612(A022342(n+2)))` -/
def P1457367124271391592.Spec : Prop :=
  ∀ n, P1457367124271391592.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P6953110519138085109

`A035517(A179180(n)+1)`
-/

namespace A139764.P6953110519138085109
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 (A179180 n + 1).toNat

end

end A139764.P6953110519138085109

namespace A139764

/-- `A035517(A179180(n)+1)` -/
def P6953110519138085109.Spec : Prop :=
  ∀ n, P6953110519138085109.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P1134967110137894284

`A035517(∑[A007895(n)]+1)`
-/

namespace A139764.P1134967110137894284
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035517 (∑ j ∈ Finset.range (n + 1), f1 j + 1).toNat

end

end A139764.P1134967110137894284

namespace A139764

/-- `A035517(∑[A007895(n)]+1)` -/
def P1134967110137894284.Spec : Prop :=
  ∀ n, P1134967110137894284.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P4871740635776026166

`A035516(A179180(n+1))`
-/

namespace A139764.P4871740635776026166
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 (A179180 (n + 1)).toNat

end

end A139764.P4871740635776026166

namespace A139764

/-- `A035516(A179180(n+1))` -/
def P4871740635776026166.Spec : Prop :=
  ∀ n, P4871740635776026166.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P2942031435213572434

`A035516(∑[A007895(n+1)])`
-/

namespace A139764.P2942031435213572434
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007895 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035516 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A139764.P2942031435213572434

namespace A139764

/-- `A035516(∑[A007895(n+1)])` -/
def P2942031435213572434.Spec : Prop :=
  ∀ n, P2942031435213572434.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P2394233794601807602

`A268361(A048679(n+1))`
-/

namespace A139764.P2394233794601807602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (A048679 (n + 1)).toNat

end

end A139764.P2394233794601807602

namespace A139764

/-- `A268361(A048679(n+1))` -/
def P2394233794601807602.Spec : Prop :=
  ∀ n, P2394233794601807602.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P6171741795790190096

`A268361(A003714(n+1))`
-/

namespace A139764.P6171741795790190096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (A003714 (n + 1)).toNat

end

end A139764.P6171741795790190096

namespace A139764

/-- `A268361(A003714(n+1))` -/
def P6171741795790190096.Spec : Prop :=
  ∀ n, P6171741795790190096.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P16232864014434061458

`A057336(A085358(n))`
-/

namespace A139764.P16232864014434061458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057336 (A085358 n).toNat

end

end A139764.P16232864014434061458

namespace A139764

/-- `A057336(A085358(n))` -/
def P16232864014434061458.Spec : Prop :=
  ∀ n, P16232864014434061458.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P15274878198243699872

`A270362(A319432(n+1))`
-/

namespace A139764.P15274878198243699872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270362 (A319432 (n + 1)).toNat

end

end A139764.P15274878198243699872

namespace A139764

/-- `A270362(A319432(n+1))` -/
def P15274878198243699872.Spec : Prop :=
  ∀ n, P15274878198243699872.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P3251162196207732785

`A268361(A277335(n+1))`
-/

namespace A139764.P3251162196207732785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (A277335 (n + 1)).toNat

end

end A139764.P3251162196207732785

namespace A139764

/-- `A268361(A277335(n+1))` -/
def P3251162196207732785.Spec : Prop :=
  ∀ n, P3251162196207732785.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P4760489441589574005

`A268361(A290258(n+2))`
-/

namespace A139764.P4760489441589574005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (A290258 (n + 2)).toNat

end

end A139764.P4760489441589574005

namespace A139764

/-- `A268361(A290258(n+2))` -/
def P4760489441589574005.Spec : Prop :=
  ∀ n, P4760489441589574005.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P6822979156010989427

`A268361(A048297(n+1)-1)`
-/

namespace A139764.P6822979156010989427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A268361 (A048297 (n + 1) - 1).toNat

end

end A139764.P6822979156010989427

namespace A139764

/-- `A268361(A048297(n+1)-1)` -/
def P6822979156010989427.Spec : Prop :=
  ∀ n, P6822979156010989427.a n = A139764 (n + 1)

end A139764

/-! ## A139764.P8111921923838536829

`A246028(eq[2, A331985(2*n+3)])`
-/

namespace A139764.P8111921923838536829
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331985 (2 * n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246028 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139764.P8111921923838536829

namespace A139764

/-- `A246028(eq[2, A331985(2*n+3)])` -/
def P8111921923838536829.Spec : Prop :=
  ∀ n, P8111921923838536829.a n = A139764 (n + 1)

end A139764

/-!
# A139766: A number n is included in the sequence if and only if the n-th integer from among those positive integers which are coprime to n+1 = the (n+1)-st integer from among those positive integers which are coprime to n.

The programs for A139766, there is no canonical definition to state claims against.
-/

/-! ## A139766.P9401108181748038951

`A001274(lt[A211995(n), n²])`
-/

namespace A139766.P9401108181748038951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211995 n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A139766.P9401108181748038951

/-! ## A139766.P10274144177764316608

`A001274(record[A309067(2*(n+1))])`
-/

namespace A139766.P10274144177764316608
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309067 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001274 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A139766.P10274144177764316608

/-!
# A139767: Let e = 2n+1; consider the cyclotomic cosets C_i of 2 mod e; a(n) = maximal value of minimal number of copies of C_1 needed to add together to get any coset C_i.

The programs for A139767, there is no canonical definition to state claims against.
-/

/-! ## A139767.P17823148265555161515

`A008619(A006694(n+1)%A136137(n+1))`
-/

namespace A139767.P17823148265555161515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (Int.tmod (A006694 (n + 1)) (A136137 (n + 1))).toNat

end

end A139767.P17823148265555161515

/-! ## A139767.P18408938628758516271

`A056239(A000374(2*n+3)%A082668(n))`
-/

namespace A139767.P18408938628758516271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056239 (Int.tmod (A000374 (2 * n + 3)) (A082668 n)).toNat

end

end A139767.P18408938628758516271

/-! ## A139767.P351158110265640181

`A138099(A006694(n+1))%A079397(2*(n+1))`
-/

namespace A139767.P351158110265640181
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138099 (A006694 (n + 1)).toNat) (A079397 (2 * (n + 1)))

end

end A139767.P351158110265640181

/-! ## A139767.P7563308326947956929

`A276571(A269570(2*n+3))%A322663(3*n+5)`
-/

namespace A139767.P7563308326947956929
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A276571 (A269570 (2 * n + 3)).toNat) (A322663 (3 * n + 5))

end

end A139767.P7563308326947956929

/-! ## A139767.P12087603702177572124

`A156253(A006694(n+1))%A164819(3*n+5)`
-/

namespace A139767.P12087603702177572124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156253 (A006694 (n + 1)).toNat) (A164819 (3 * n + 5))

end

end A139767.P12087603702177572124

/-!
# A139770: Smallest number having at least as many divisors as n.

The programs for A139770, there is no canonical definition to state claims against.
-/

/-! ## A139770.P4726324169548063190

`A061799(A000005(n+1))`
-/

namespace A139770.P4726324169548063190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A000005 (n + 1)).toNat

end

end A139770.P4726324169548063190

/-! ## A139770.P530895363254047282

`A061799(∏{e}[n+1, #+1])`
-/

namespace A139770.P530895363254047282
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∏ p ∈ Nat.primeFactors (f1 n), (Nat.factorization (f1 n) p + 1))

end

end A139770.P530895363254047282

/-! ## A139770.P18245074081847784969

`A061799(∑{d}[1+n, gcd(n, #)])`
-/

namespace A139770.P18245074081847784969
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∑ d ∈ Nat.divisors (f1 n), Nat.gcd n d)

end

end A139770.P18245074081847784969

/-! ## A139770.P4274282733205909428

`A061799(∑{d}[n+1, ceil(acot(#))])`
-/

namespace A139770.P4274282733205909428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∑ d ∈ Nat.divisors (f1 n), ⌈SequenceMachineLib.acot (d : ℝ)⌉).toNat

end

end A139770.P4274282733205909428

/-! ## A139770.P14102838993767988460

`A061799(∑{d}[n+1, #-n%#])`
-/

namespace A139770.P14102838993767988460
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∑ d ∈ Nat.divisors (f1 n), ((d : ℤ) - ((n % d : ℕ) : ℤ))).toNat

end

end A139770.P14102838993767988460

/-! ## A139770.P17670821333866365158

`A061799(∑{d}[n+1, ((#+1)%2)!])`
-/

namespace A139770.P17670821333866365158
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∑ d ∈ Nat.divisors (f1 n), Nat.factorial ((d + 1) % 2))

end

end A139770.P17670821333866365158

/-! ## A139770.P10608394748798015743

`A061799(∑{d}[n+1, round(sqrt(#%2+1))])`
-/

namespace A139770.P10608394748798015743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∑ d ∈ Nat.divisors (f1 n), SequenceMachineLib.roundAway (Real.sqrt ((d % 2 + 1 : ℕ) : ℝ))).toNat

end

end A139770.P10608394748798015743

/-! ## A139770.P14041216726145652935

`A061799(∑{d}[n+1, lcm(#, n+1)]/(n+1))`
-/

namespace A139770.P14041216726145652935
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (SequenceMachineLib.roundAway (((∑ d ∈ Nat.divisors (f1 n), Nat.lcm d (n + 1) : ℕ) : ℚ) / (n + 1 : ℚ))).toNat

end

end A139770.P14041216726145652935

/-! ## A139770.P12960481026580425416

`A061799(∑{d}[n+1, #+1]-∑{d}[n+1, #])`
-/

namespace A139770.P12960481026580425416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∑ d ∈ Nat.divisors (f1 n), (d + 1) - ∑ d ∈ Nat.divisors (f2 n), d)

end

end A139770.P12960481026580425416

/-! ## A139770.P13979596322305106510

`A061799(Δ[A006218(n)])`
-/

namespace A139770.P13979596322305106510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006218 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (f1 (n + 1) - f1 n).toNat

end

end A139770.P13979596322305106510

/-! ## A139770.P2588292355210761420

`A061799(A032741(n+1)+1)`
-/

namespace A139770.P2588292355210761420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A032741 (n + 1) + 1).toNat

end

end A139770.P2588292355210761420

/-! ## A139770.P7161286899003539462

`A061799(A334954(n+1)-1)`
-/

namespace A139770.P7161286899003539462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A334954 (n + 1) - 1).toNat

end

end A139770.P7161286899003539462

/-! ## A139770.P2750050553422676801

`A061799(A320111(2*(n+1)))`
-/

namespace A139770.P2750050553422676801
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A320111 (2 * (n + 1))).toNat

end

end A139770.P2750050553422676801

/-! ## A139770.P7657136638329588536

`A061799(1-A049820(n+1)+n)`
-/

namespace A139770.P7657136638329588536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (1 - A049820 (n + 1) + (n : ℤ)).toNat

end

end A139770.P7657136638329588536

/-! ## A139770.P13185597156860480880

`A061799(∑{d}[n+1, #+1]-A000203(n+1))`
-/

namespace A139770.P13185597156860480880
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (((∑ d ∈ Nat.divisors (f1 n), (d + 1) : ℕ) : ℤ) - A000203 (n + 1)).toNat

end

end A139770.P13185597156860480880

/-! ## A139770.P6127851382753207899

`A061799(A006218(n+1)-A006218(n))`
-/

namespace A139770.P6127851382753207899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (A006218 (n + 1) - A006218 n).toNat

end

end A139770.P6127851382753207899

/-! ## A139770.P5976246022180275497

`A061799(∑{d}[n+1, A130497(#+2)%2])`
-/

namespace A139770.P5976246022180275497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 (∑ d ∈ Nat.divisors (f1 n), Int.tmod (A130497 (d + 2)) 2).toNat

end

end A139770.P5976246022180275497

/-! ## A139770.P14572311241414461553

`A061799(Δ[eq[1, A275055(n+1)]])`
-/

namespace A139770.P14572311241414461553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275055 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061799 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A139770.P14572311241414461553

/-!
# A139771: Exponents of prime factorization are factorial numbers in descending order.

The programs for A139771, there is no canonical definition to state claims against.
-/

/-! ## A139771.P8324410965513741104

`A278233(6^a(n-2))` with `a(0)=1, a(1)=2`
-/

namespace A139771.P8324410965513741104
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 2] fun n a =>
  A278233 (SequenceMachineLib.roundAway ((6 : ℚ) ^ (a (n - 2) : ℤ))).toNat

end

end A139771.P8324410965513741104

/-!
# A139773: Prime imaginary part (truncated) of zeros of Riemann zeta function.

The programs for A139773, there is no canonical definition to state claims against.
-/

/-! ## A139773.P6146344169665335282

`p?[A013629(n+1)]`
-/

namespace A139773.P6146344169665335282
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139773.P6146344169665335282

/-! ## A139773.P1627870539456110257

`p?[A092783(n+1)-1]`
-/

namespace A139773.P1627870539456110257
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092783 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139773.P1627870539456110257

/-! ## A139773.P16557171665673797578

`p?[A014681(A092783(n+1))]`
-/

namespace A139773.P16557171665673797578
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014681 (A092783 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139773.P16557171665673797578

/-! ## A139773.P6171768066903219970

`p?[A023443(A092783(n+2))]`
-/

namespace A139773.P6171768066903219970
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A092783 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139773.P6171768066903219970

/-! ## A139773.P5937516551497461181

`or(1, p?[A013629(A028310(n))])`
-/

namespace A139773.P5937516551497461181
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A139773.P5937516551497461181

/-! ## A139773.P12578140352119304364

`filter[A013629(n+1), A010051(#)]`
-/

namespace A139773.P12578140352119304364
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A139773.P12578140352119304364

/-! ## A139773.P12415969052003437425

`filter[A013629(n+1), A080339(#)]`
-/

namespace A139773.P12415969052003437425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A139773.P12415969052003437425

/-! ## A139773.P13479332963827811091

`filter[A013629(n+1), A080545(#)]`
-/

namespace A139773.P13479332963827811091
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A139773.P13479332963827811091

/-! ## A139773.P6948349029648917495

`filter[A013629(n+1), A171387(#)]`
-/

namespace A139773.P6948349029648917495
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A139773.P6948349029648917495

/-! ## A139773.P17255278152344105875

`filter[A013629(n+1), A323152(#)]`
-/

namespace A139773.P17255278152344105875
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A013629 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A323152 (f1 j).toNat = 1) n)

end

end A139773.P17255278152344105875

/-!
# A139774: Nearest integer to imaginary part of zeros of Riemann zeta function which is prime.

The programs for A139774, there is no canonical definition to state claims against.
-/

/-! ## A139774.P17531010049133599878

`p?[A002410(n+1)]`
-/

namespace A139774.P17531010049133599878
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139774.P17531010049133599878

/-! ## A139774.P7637756158624058163

`p?[∑[A162774(n+1)]]`
-/

namespace A139774.P7637756158624058163
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162774 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139774.P7637756158624058163

/-! ## A139774.P1979212588918583033

`or(1, p?[A002410(A028310(n))])`
-/

namespace A139774.P1979212588918583033
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A139774.P1979212588918583033

/-! ## A139774.P18317579350688753070

`or(1, p?[A002410(A344180(n))])`
-/

namespace A139774.P18317579350688753070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (A344180 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n))

end

end A139774.P18317579350688753070

/-! ## A139774.P14981859578941050930

`filter[A002410(n+1), A001222(#)]`
-/

namespace A139774.P14981859578941050930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A001222 (f1 j).toNat = 1) n)

end

end A139774.P14981859578941050930

/-! ## A139774.P12938016383256828612

`filter[A002410(n+1), A003415(#)]`
-/

namespace A139774.P12938016383256828612
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A003415 (f1 j).toNat = 1) n)

end

end A139774.P12938016383256828612

/-! ## A139774.P17731466468851499020

`filter[A002410(n+1), A010051(#)]`
-/

namespace A139774.P17731466468851499020
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A010051 (f1 j).toNat = 1) n)

end

end A139774.P17731466468851499020

/-! ## A139774.P510760294490600797

`filter[A002410(n+1), A080339(#)]`
-/

namespace A139774.P510760294490600797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080339 (f1 j).toNat = 1) n)

end

end A139774.P510760294490600797

/-! ## A139774.P13929411479318421055

`filter[A002410(n+1), A080545(#)]`
-/

namespace A139774.P13929411479318421055
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A080545 (f1 j).toNat = 1) n)

end

end A139774.P13929411479318421055

/-! ## A139774.P13793865697558009780

`filter[A002410(n+1), A171387(#)]`
-/

namespace A139774.P13793865697558009780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002410 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A171387 (f1 j).toNat = 1) n)

end

end A139774.P13793865697558009780

/-!
# A139778: Lesser of twin primes p1 such that p1^3 + p2^2 are average of twin primes. p1 and p2 twin primes, p1 < p2.

The programs for A139778, there is no canonical definition to state claims against.
-/

/-! ## A139778.P15480289344885845987

`∩[A138735(n+1), A138755(n+1)-2]`
-/

namespace A139778.P15480289344885845987
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138735 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138755 (n + 1) - 2

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139778.P15480289344885845987

/-! ## A139778.P10160234839082390216

`A139779(n+1)-2`
-/

namespace A139778.P10160234839082390216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139779 (n + 1) - 2

end

end A139778.P10160234839082390216

/-! ## A139778.P8105487993306225890

`A280560(A000265(n+1))+A139779(n+1)`
-/

namespace A139778.P8105487993306225890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A000265 (n + 1)).toNat + A139779 (n + 1)

end

end A139778.P8105487993306225890

/-! ## A139778.P417149068935213291

`A280560(A005818(n+1))+A139779(n+1)`
-/

namespace A139778.P417149068935213291
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A005818 (n + 1)).toNat + A139779 (n + 1)

end

end A139778.P417149068935213291

/-! ## A139778.P2540945255643484650

`A280560(A005235(n+1))+A139779(n+1)`
-/

namespace A139778.P2540945255643484650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A005235 (n + 1)).toNat + A139779 (n + 1)

end

end A139778.P2540945255643484650

/-! ## A139778.P2301156146343826591

`A280560(A077800(n+1))+A139779(n+1)`
-/

namespace A139778.P2301156146343826591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A077800 (n + 1)).toNat + A139779 (n + 1)

end

end A139778.P2301156146343826591

/-! ## A139778.P2649187270860234603

`A280560(A001097(n+1))+A139779(n+1)`
-/

namespace A139778.P2649187270860234603
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A001097 (n + 1)).toNat + A139779 (n + 1)

end

end A139778.P2649187270860234603

/-! ## A139778.P11285438792118489034

`A280560(A067829(n+1))+A139779(n+1)`
-/

namespace A139778.P11285438792118489034
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A067829 (n + 1)).toNat + A139779 (n + 1)

end

end A139778.P11285438792118489034

/-! ## A139778.P13918340577927666620

`A280560(A006512(n+1))+A139779(n+1)`
-/

namespace A139778.P13918340577927666620
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A006512 (n + 1)).toNat + A139779 (n + 1)

end

end A139778.P13918340577927666620

/-! ## A139778.P10044516164002975871

`A280560(A088176(n+1))+A139779(n+1)`
-/

namespace A139778.P10044516164002975871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A088176 (n + 1)).toNat + A139779 (n + 1)

end

end A139778.P10044516164002975871

/-! ## A139778.P11089700465876446940

`A280560(A172057(n+1))+A139779(n+1)`
-/

namespace A139778.P11089700465876446940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (A172057 (n + 1)).toNat + A139779 (n + 1)

end

end A139778.P11089700465876446940

/-! ## A139778.P3887837582368724171

`A280560(p?[A107770(n+1)])+A139779(n+1)`
-/

namespace A139778.P3887837582368724171
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107770 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280560 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat + A139779 (n + 1)

end

end A139778.P3887837582368724171

/-! ## A139778.P247544269756388890

`record[A139779(A051340(n))-2]`
-/

namespace A139778.P247544269756388890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139779 (A051340 n).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139778.P247544269756388890

/-!
# A139779: Greater of twin primes p2 such that p1^3+p2^2=pp is the average of twin primes. p1 and p2 twin primes, p1 < p2.

The programs for A139779, there is no canonical definition to state claims against.
-/

/-! ## A139779.P3441699741097724225

`A139778(1+n)+2`
-/

namespace A139779.P3441699741097724225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139778 (1 + n) + 2

end

end A139779.P3441699741097724225

/-! ## A139779.P13652426370537611863

`∩[A138735(n+1)+2, A138755(n+1)]`
-/

namespace A139779.P13652426370537611863
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138735 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139779.P13652426370537611863

/-! ## A139779.P17396391546632045746

`∩[A006512(n+1), A138755(n+1)]`
-/

namespace A139779.P17396391546632045746
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006512 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138755 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139779.P17396391546632045746

/-! ## A139779.P10348106657600687868

`p?[A138735(n+1)+2]`
-/

namespace A139779.P10348106657600687868
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138735 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A139779.P10348106657600687868

/-! ## A139779.P14259951251538101956

`A082284(A139778(n+1))`
-/

namespace A139779.P14259951251538101956
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082284 (A139778 (n + 1)).toNat

end

end A139779.P14259951251538101956

/-!
# A139781: Primes of form (5^n - 2^n)/3.

The programs for A139781, there is no canonical definition to state claims against.
-/

/-! ## A139781.P6273949591014770719

`record[A109291(A109260(n+1))]`
-/

namespace A139781.P6273949591014770719
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109291 (A109260 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139781.P6273949591014770719

/-!
# A139782: Binomial transform of A077947.

The programs for A139782, the canonical program `A139782.P8148719433853624266` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139782 has offset 0).

The definition of A139782 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139782.P13710714035425219021

`ogf((1-2x+x^2)/(1-4x+4x^2-3x^3))`
-/

namespace A139782.P13710714035425219021
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -2, 1] [1, -4, 4, -3] n

end

end A139782.P13710714035425219021

namespace A139782

/-- `ogf((1-2x+x^2)/(1-4x+4x^2-3x^3))` -/
def P13710714035425219021.Spec : Prop :=
  ∀ n, P13710714035425219021.a n = A139782 n

end A139782

/-! ## A139782.P8148719433853624266

`3*a(n-1)-a(n-3)+3*a(n-4)` with `a(0)=1, a(1)=2, a(2)=5, a(3)=15`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139782

/-- `3*a(n-1)-a(n-3)+3*a(n-4)` -/
def P8148719433853624266.Spec : Prop :=
  ∀ n, P8148719433853624266.a n = A139782 n

theorem P8148719433853624266.correct : P8148719433853624266.Spec := by
  intro n
  simp only [A139782]

end A139782

/-! ## A139782.P9024530946176070115

`3*a(n-1)-round(sin(n%6))` with `a(0)=1`
-/

namespace A139782.P9024530946176070115
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - SequenceMachineLib.roundAway (Real.sin ((n % 6 : ℕ) : ℝ))

end

end A139782.P9024530946176070115

namespace A139782

/-- `3*a(n-1)-round(sin(n%6))` -/
def P9024530946176070115.Spec : Prop :=
  ∀ n, P9024530946176070115.a n = A139782 n

end A139782

/-! ## A139782.P11384469595501215323

`∑{#}[n, C(n, #)*A077947(#)]`
-/

namespace A139782.P11384469595501215323
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ k ∈ Finset.range (f1 n + 1), (Nat.choose n k : ℤ) * A077947 k

end

end A139782.P11384469595501215323

namespace A139782

/-- `∑{#}[n, C(n, #)*A077947(#)]` -/
def P11384469595501215323.Spec : Prop :=
  ∀ n, P11384469595501215323.a n = A139782 n

end A139782

/-! ## A139782.P5916661584828051395

`3*a(n-1)-A128834(n)` with `a(0)=1`
-/

namespace A139782.P5916661584828051395
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A128834 n

end

end A139782.P5916661584828051395

namespace A139782

/-- `3*a(n-1)-A128834(n)` -/
def P5916661584828051395.Spec : Prop :=
  ∀ n, P5916661584828051395.a n = A139782 n

end A139782

/-! ## A139782.P8483756240314664506

`3*a(n-1)-A163806(n)` with `a(0)=1`
-/

namespace A139782.P8483756240314664506
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A163806 n

end

end A139782.P8483756240314664506

namespace A139782

/-- `3*a(n-1)-A163806(n)` -/
def P8483756240314664506.Spec : Prop :=
  ∀ n, P8483756240314664506.a n = A139782 n

end A139782

/-! ## A139782.P1537188266433606766

`3*a(n-1)-A010892(n-1)` with `a(0)=1`
-/

namespace A139782.P1537188266433606766
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  3 * a (n - 1) - A010892 (n - 1)

end

end A139782.P1537188266433606766

namespace A139782

/-- `3*a(n-1)-A010892(n-1)` -/
def P1537188266433606766.Spec : Prop :=
  ∀ n, P1537188266433606766.a n = A139782 n

end A139782

/-! ## A139782.P9954372081694141203

`a(n-1)+a(n-1)+A163810(n)+a(n-1)` with `a(0)=1`
-/

namespace A139782.P9954372081694141203
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (a (n - 1) + (A163810 n + a (n - 1)))

end

end A139782.P9954372081694141203

namespace A139782

/-- `a(n-1)+a(n-1)+A163810(n)+a(n-1)` -/
def P9954372081694141203.Spec : Prop :=
  ∀ n, P9954372081694141203.a n = A139782 n

end A139782

/-! ## A139782.P8424110445657358538

`round(4*3^n/7)`
-/

namespace A139782.P8424110445657358538
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (4 * ((3 ^ n : ℚ) / 7))

end

end A139782.P8424110445657358538

namespace A139782

/-- `round(4*3^n/7)` -/
def P8424110445657358538.Spec : Prop :=
  ∀ n, P8424110445657358538.a n = A139782 n

end A139782

/-! ## A139782.P17494759033230170000

`ceil((lcm(4, 3^n)-3)/7)`
-/

namespace A139782.P17494759033230170000
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((Nat.lcm 4 (3 ^ n) : ℤ) - 3 : ℚ) / 7⌉

end

end A139782.P17494759033230170000

namespace A139782

/-- `ceil((lcm(4, 3^n)-3)/7)` -/
def P17494759033230170000.Spec : Prop :=
  ∀ n, P17494759033230170000.a n = A139782 n

end A139782

/-! ## A139782.P4797506913750445921

`floor(∑[3*a(n-1)]/7)` with `a(0)=7, a(1)=8`
-/

namespace A139782.P4797506913750445921
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 8] fun n f1 =>
  3 * f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℚ) / 7⌋

end

end A139782.P4797506913750445921

namespace A139782

/-- `floor(∑[3*a(n-1)]/7)` -/
def P4797506913750445921.Spec : Prop :=
  ∀ n, P4797506913750445921.a n = A139782 n

end A139782

/-! ## A139782.P14585247208951724556

`ceil(A036543(n)/7)`
-/

namespace A139782.P14585247208951724556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A036543 n : ℚ) / 7⌉

end

end A139782.P14585247208951724556

namespace A139782

/-- `ceil(A036543(n)/7)` -/
def P14585247208951724556.Spec : Prop :=
  ∀ n, P14585247208951724556.a n = A139782 n

end A139782

/-! ## A139782.P14874828147514257521

`Δ[Δ[round(A000244(n)/7)]]`
-/

namespace A139782.P14874828147514257521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000244 n : ℚ) / 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139782.P14874828147514257521

namespace A139782

/-- `Δ[Δ[round(A000244(n)/7)]]` -/
def P14874828147514257521.Spec : Prop :=
  ∀ n, P14874828147514257521.a n = A139782 n

end A139782

/-! ## A139782.P13630656487285507467

`Δ[Δ[round(A038754(2*n)/7)]]`
-/

namespace A139782.P13630656487285507467
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A038754 (2 * n) : ℚ) / 7)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139782.P13630656487285507467

namespace A139782

/-- `Δ[Δ[round(A038754(2*n)/7)]]` -/
def P13630656487285507467.Spec : Prop :=
  ∀ n, P13630656487285507467.a n = A139782 n

end A139782

/-!
# A139783: Quadruple lucky numbers (lower terms). Numbers n such that n, n+2, n+6, n+8 are all Lucky numbers.

The programs for A139783, there is no canonical definition to state claims against.
-/

/-! ## A139783.P432816173710416680

`∩[A031158(n+1)-6, A031158(n+1)]`
-/

namespace A139783.P432816173710416680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1) - 6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031158 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139783.P432816173710416680

/-! ## A139783.P13485793556456140014

`A057701(eq[4, Δ[A057701(n+1)]])`
-/

namespace A139783.P13485793556456140014
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f3 (n + 1) - f3 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139783.P13485793556456140014

/-! ## A139783.P426306238047975848

`∩[A057701(2*(n+2))-8, A057701(n+1)]`
-/

namespace A139783.P426306238047975848
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (2 * (n + 2)) - 8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057701 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139783.P426306238047975848

/-!
# A139784: a(4n+1)=2a(4n), a(4n+2)=2a(4n+1), a(4n+3)=2a(4n+2), a(4n+4)=2a(4n+3)+A007583(n).

The programs for A139784, there is no canonical definition to state claims against.
-/

/-! ## A139784.P14505573004422276400

`∑[A139785(abs(1-n))]`
-/

namespace A139784.P14505573004422276400
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139785 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139784.P14505573004422276400

/-! ## A139784.P480163336591457199

`A139785(n-1)+a(n-1)` with `a(0)=0`
-/

namespace A139784.P480163336591457199
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A139785 (n - 1) + a (n - 1)

end

end A139784.P480163336591457199

/-! ## A139784.P3048060334592869011

`A000034(n)*A139785(A052928(n))`
-/

namespace A139784.P3048060334592869011
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 n * A139785 (A052928 n).toNat

end

end A139784.P3048060334592869011

/-! ## A139784.P2451680518447409154

`(A000035(n)+1)*A139785(A052928(n))`
-/

namespace A139784.P2451680518447409154
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 n + 1) * A139785 (A052928 n).toNat

end

end A139784.P2451680518447409154

/-! ## A139784.P8652701477430644129

`∑[A139785(n)]-A139785(n)`
-/

namespace A139784.P8652701477430644129
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139785 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A139785 n

end

end A139784.P8652701477430644129

/-! ## A139784.P8133449970309896240

`A006519(n²+1)*A139785(A052928(n))`
-/

namespace A139784.P8133449970309896240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006519 (n ^ 2 + 1) * A139785 (A052928 n).toNat

end

end A139784.P8133449970309896240

/-!
# A139785: First differences of A139784.

The programs for A139785, there is no canonical definition to state claims against.
-/

/-! ## A139785.P16776732906901203983

`Δ[A139784(n)]`
-/

namespace A139785.P16776732906901203983
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139784 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139785.P16776732906901203983

/-! ## A139785.P16912996869332899795

`A139784(n+1)-A139784(n)`
-/

namespace A139785.P16912996869332899795
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139784 (n + 1) - A139784 n

end

end A139785.P16912996869332899795

/-! ## A139785.P4803443516484807940

`abs(A139784(n-log2(1/2))-A139784(n))`
-/

namespace A139785.P4803443516484807940
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A139784 (SequenceMachineLib.roundAway ((n : ℝ) - Real.logb 2 ((1 : ℚ) / 2 : ℝ))).toNat - A139784 n|

end

end A139785.P4803443516484807940

/-! ## A139785.P7281716767510240516

`A139784(n+1)+A139784(n)/A008683(A068486(n+1))`
-/

namespace A139785.P7281716767510240516
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139784 (n + 1) : ℚ) + (A139784 n : ℚ) / (A008683 (A068486 (n + 1)).toNat : ℚ)

end

end A139785.P7281716767510240516

/-! ## A139785.P15502060848434601324

`A139784(n+1)+A001478(A139784(n)+1)+1`
-/

namespace A139785.P15502060848434601324
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139784 (n + 1) + A001478 (A139784 n + 1).toNat + 1

end

end A139785.P15502060848434601324

/-!
# A139786: a(n) = 7^n mod 6^n.

The programs for A139786, the canonical program `A139786.P6238446081989992256` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139786 has offset 0).

The definition of A139786 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(7^n)%(6^n)` (program `A139786.P6238446081989992256`, by `A139786.P6238446081989992256.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139786.P6238446081989992256

`(7^n)%(6^n)`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139786

/-- `(7^n)%(6^n)` -/
def P6238446081989992256.Spec : Prop :=
  ∀ n, (P6238446081989992256.a n : ℤ) = A139786 n

theorem P6238446081989992256.correct : P6238446081989992256.Spec := by
  intro n
  simp only [A139786]

end A139786

/-! ## A139786.P12610819641319369864

`A103458(n)%A000400(n)-A178334(n)`
-/

namespace A139786.P12610819641319369864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A103458 n) (A000400 n) - A178334 n

end

end A139786.P12610819641319369864

namespace A139786

/-- `A103458(n)%A000400(n)-A178334(n)` -/
def P12610819641319369864.Spec : Prop :=
  ∀ n, P12610819641319369864.a n = A139786 n

end A139786

/-! ## A139786.P7968840123563087706

`A009965(n)%A001027(n)/A000244(n)`
-/

namespace A139786.P7968840123563087706
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A009965 n) (A001027 n) : ℚ) / (A000244 n : ℚ)

end

end A139786.P7968840123563087706

namespace A139786

/-- `A009965(n)%A001027(n)/A000244(n)` -/
def P7968840123563087706.Spec : Prop :=
  ∀ n, P7968840123563087706.a n = (A139786 n : ℚ)

end A139786

/-! ## A139786.P2151205375126579458

`A156266(n)%A156128(n)/A000108(n)`
-/

namespace A139786.P2151205375126579458
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.tmod (A156266 n) (A156128 n) : ℚ) / (A000108 n : ℚ)

end

end A139786.P2151205375126579458

namespace A139786

/-- `A156266(n)%A156128(n)/A000108(n)` -/
def P2151205375126579458.Spec : Prop :=
  ∀ n, P2151205375126579458.a n = (A139786 n : ℚ)

end A139786

/-!
# A139787: Semiprime lucky numbers.

The programs for A139787, there is no canonical definition to state claims against.
-/

/-! ## A139787.P562312132616151326

`filter[A000959(n+2), A359828(#)]`
-/

namespace A139787.P562312132616151326
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A139787.P562312132616151326

/-! ## A139787.P12451434797029687784

`filter[A031879(n+2), A359828(#)]`
-/

namespace A139787.P12451434797029687784
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359828 (f1 j).toNat = 1) n)

end

end A139787.P12451434797029687784

/-! ## A139787.P5810372043124562223

`filter[A001358(n+1), A145649(#)]`
-/

namespace A139787.P5810372043124562223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A139787.P5810372043124562223

/-! ## A139787.P11165710966205749902

`∩[A000959(n+1), A001358(n+1)]`
-/

namespace A139787.P11165710966205749902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139787.P11165710966205749902

/-! ## A139787.P16013346715415902150

`∩[A001358(n+1), A031879(n+1)]`
-/

namespace A139787.P16013346715415902150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139787.P16013346715415902150

/-! ## A139787.P15798167464733096851

`∩[A001358(n+1), A031883(n)+a(n-1)]` with `a(0)=1`
-/

namespace A139787.P15798167464733096851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001358 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A031883 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139787.P15798167464733096851

/-! ## A139787.P1426697314650540223

`filter[A000959(n+1), A064911(#)]`
-/

namespace A139787.P1426697314650540223
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A139787.P1426697314650540223

/-! ## A139787.P5188491069685038325

`filter[A031879(n+1), A064911(#)]`
-/

namespace A139787.P5188491069685038325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A064911 (f1 j).toNat = 1) n)

end

end A139787.P5188491069685038325

/-! ## A139787.P12766714354106383183

`filter[A031879(n+1), A101040(#)]`
-/

namespace A139787.P12766714354106383183
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A101040 (f1 j).toNat = 1) n)

end

end A139787.P12766714354106383183

/-! ## A139787.P203037132188795978

`filter[A000959(n+1), A353480(#)]`
-/

namespace A139787.P203037132188795978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A139787.P203037132188795978

/-! ## A139787.P4479569257118330480

`filter[A031879(n+1), A353480(#)]`
-/

namespace A139787.P4479569257118330480
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A353480 (f1 j).toNat = 1) n)

end

end A139787.P4479569257118330480

/-! ## A139787.P6025057954367954319

`filter[A046315(n+1), A145649(#)]`
-/

namespace A139787.P6025057954367954319
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A139787.P6025057954367954319

/-! ## A139787.P407328477344079831

`∩[A000959(n+1), A046315(n+1)]`
-/

namespace A139787.P407328477344079831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139787.P407328477344079831

/-! ## A139787.P2644554306980745363

`∩[A031879(n+1), A046315(n+1)]`
-/

namespace A139787.P2644554306980745363
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031879 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139787.P2644554306980745363

/-! ## A139787.P12644319118259122666

`filter[A176540(n+2), A145649(#)]`
-/

namespace A139787.P12644319118259122666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176540 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A139787.P12644319118259122666

/-! ## A139787.P785691763654244927

`filter[A077135(n+1), A145649(#)]`
-/

namespace A139787.P785691763654244927
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A139787.P785691763654244927

/-! ## A139787.P8195211438210295367

`filter[A077136(n+1), A145649(#)]`
-/

namespace A139787.P8195211438210295367
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A139787.P8195211438210295367

/-! ## A139787.P18009088062444506718

`∩[A000959(n+1), A077135(n+1)]`
-/

namespace A139787.P18009088062444506718
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077135 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139787.P18009088062444506718

/-! ## A139787.P11483617024973974464

`∩[A000959(n+1), A077136(n+1)]`
-/

namespace A139787.P11483617024973974464
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077136 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A139787.P11483617024973974464

/-!
# A139788: Period 5: repeat [1, 7, 3, 9, 5].

The programs for A139788, the canonical program `A139788.P10386899195689942366` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139788 has offset 0).

The definition of A139788 is `verified`: an anchor theorem with a hand-written proof shows that the Lean definition equals an independent definition of the sequence: the theorem `A139788.anchor (n : ℕ) : A139788 n = (([1, 7, 3, 9, 5].getD (n % 5) 0 : ℕ) : ℤ)` in `Proof.A139.A139788`. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139788.P10386899195689942366

`(6*n+1)%10`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139788

/-- `(6*n+1)%10` -/
def P10386899195689942366.Spec : Prop :=
  ∀ n, (P10386899195689942366.a n : ℤ) = A139788 n

theorem P10386899195689942366.correct : P10386899195689942366.Spec := by
  intro n
  simp only [A139788]

end A139788

/-!
# A139789: Numbers of primes < n-th-prime such that prime(n) + 4 is prime.

The programs for A139789, there is no canonical definition to state claims against.
-/

/-! ## A139789.P1283378604484140260

`A098429(A006093(n+1))`
-/

namespace A139789.P1283378604484140260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A006093 (n + 1)).toNat

end

end A139789.P1283378604484140260

/-! ## A139789.P12980938338592627396

`A098429(A008578(n+1))`
-/

namespace A139789.P12980938338592627396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A008578 (n + 1)).toNat

end

end A139789.P12980938338592627396

/-! ## A139789.P4170194356364169923

`A098429(A065514(n+1))`
-/

namespace A139789.P4170194356364169923
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A065514 (n + 1)).toNat

end

end A139789.P4170194356364169923

/-! ## A139789.P2191625762355892110

`A098429(A075643(n+1))`
-/

namespace A139789.P2191625762355892110
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A075643 (n + 1)).toNat

end

end A139789.P2191625762355892110

/-! ## A139789.P1345094697446978435

`A098429(A083190(n+1))`
-/

namespace A139789.P1345094697446978435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A083190 (n + 1)).toNat

end

end A139789.P1345094697446978435

/-! ## A139789.P5901797201123096097

`A098429(A112925(n+1))`
-/

namespace A139789.P5901797201123096097
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A112925 (n + 1)).toNat

end

end A139789.P5901797201123096097

/-! ## A139789.P6422725137119035966

`A098429(A156037(n+1))`
-/

namespace A139789.P6422725137119035966
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A156037 (n + 1)).toNat

end

end A139789.P6422725137119035966

/-! ## A139789.P14598453354723899834

`A098429(A157604(n+1))`
-/

namespace A139789.P14598453354723899834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A157604 (n + 1)).toNat

end

end A139789.P14598453354723899834

/-! ## A139789.P8716959565874193953

`A098429(A324050(n+1))`
-/

namespace A139789.P8716959565874193953
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A324050 (n + 1)).toNat

end

end A139789.P8716959565874193953

/-! ## A139789.P820432702435023092

`A098429(A378032(n+1))`
-/

namespace A139789.P820432702435023092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098429 (A378032 (n + 1)).toNat

end

end A139789.P820432702435023092

/-!
# A139790: a(n) = (5*2^(n+2) - 3*n*2^n - 2*(-1)^n) / 18.

The programs for A139790, the canonical program `A139790.P14669236720214145597` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139790 has offset 0).

The definition of A139790 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(5*2^(n+2)-3*n*2^n-2*(-1)^n)/18` (program `A139790.P10924702671493899289`, by `A139790.P10924702671493899289.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A139790.P2877244566462559642

`ogf((1-x-3x^2)/(1-3x+4x^3))`
-/

namespace A139790.P2877244566462559642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -1, -3] [1, -3, 0, 4] n

end

end A139790.P2877244566462559642

namespace A139790

/-- `ogf((1-x-3x^2)/(1-3x+4x^3))` -/
def P2877244566462559642.Spec : Prop :=
  ∀ n, P2877244566462559642.a n = A139790 n

end A139790

/-! ## A139790.P14669236720214145597

`3*a(n-1)-4*a(n-3)` with `a(0)=1, a(1)=2, a(2)=3`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139790

/-- `3*a(n-1)-4*a(n-3)` -/
def P14669236720214145597.Spec : Prop :=
  ∀ n, P14669236720214145597.a n = A139790 n

theorem P14669236720214145597.correct : P14669236720214145597.Spec := by
  intro n
  simp only [A139790]

end A139790

/-! ## A139790.P10924702671493899289

`(5*2^(n+2)-3*n*2^n-2*(-1)^n)/18`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A139790.P10924702671493899289
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((5 * 2 ^ (n + 2) : ℤ) - (3 * n * 2 ^ n : ℤ) - 2 * (-1) ^ n : ℚ) / 18

end

end A139790.P10924702671493899289

namespace A139790

/-- `(5*2^(n+2)-3*n*2^n-2*(-1)^n)/18` -/
def P10924702671493899289.Spec : Prop :=
  ∀ n, P10924702671493899289.a n = (A139790 n : ℚ)

theorem P10924702671493899289.correct : P10924702671493899289.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 =>
      simp [A139790, Nat.add_sub_cancel, A139790.P10924702671493899289.a, A139790.P14669236720214145597.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 3 =>
      have h1 := ih (m + 2) (by omega)
      have h3 := ih m (by omega)
      simp only [A139790, Nat.add_sub_cancel, A139790.P10924702671493899289.a, A139790.P14669236720214145597.a, SequenceMachineLib.memo_apply] at h1 h3 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 3 - 1 = m + 2 by omega, show m + 3 - 3 = m by omega, show m + 2 < m + 3 by omega, show m < m + 3 by omega, ↓reduceIte]
      push_cast at h1 h3 ⊢
      rw [← h1, ← h3]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A139790

/-! ## A139790.P8919097625705780286

`a(n-1)+round(2^n/3)-(2^(n-1)-a(n-1))` with `a(0)=1`
-/

namespace A139790.P8919097625705780286
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + (SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 3) : ℚ) - ((2 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - a (n - 1))

end

end A139790.P8919097625705780286

namespace A139790

/-- `a(n-1)+round(2^n/3)-(2^(n-1)-a(n-1))` -/
def P8919097625705780286.Spec : Prop :=
  ∀ n, P8919097625705780286.a n = (A139790 n : ℚ)

end A139790

/-! ## A139790.P18261621046636740050

`A136299(n+1)-2^n`
-/

namespace A139790.P18261621046636740050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136299 (n + 1) - (2 ^ n : ℤ)

end

end A139790.P18261621046636740050

namespace A139790

/-- `A136299(n+1)-2^n` -/
def P18261621046636740050.Spec : Prop :=
  ∀ n, P18261621046636740050.a n = A139790 n

end A139790

/-! ## A139790.P7674361794718851645

`2^(n+1)-A172481(n)`
-/

namespace A139790.P7674361794718851645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ (n + 1) : ℤ) - A172481 n

end

end A139790.P7674361794718851645

namespace A139790

/-- `2^(n+1)-A172481(n)` -/
def P7674361794718851645.Spec : Prop :=
  ∀ n, P7674361794718851645.a n = A139790 n

end A139790

/-! ## A139790.P17283550942031926193

`A062092(n)-A175656(n)`
-/

namespace A139790.P17283550942031926193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062092 n - A175656 n

end

end A139790.P17283550942031926193

namespace A139790

/-- `A062092(n)-A175656(n)` -/
def P17283550942031926193.Spec : Prop :=
  ∀ n, P17283550942031926193.a n = A139790 n

end A139790

/-! ## A139790.P10894736785550723205

`Δ[A101622(n)]-A291023(n)`
-/

namespace A139790.P10894736785550723205
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A101622 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A291023 n

end

end A139790.P10894736785550723205

namespace A139790

/-- `Δ[A101622(n)]-A291023(n)` -/
def P10894736785550723205.Spec : Prop :=
  ∀ n, P10894736785550723205.a n = A139790 n

end A139790

/-! ## A139790.P5499610831501872309

`A000079(n)-(A172481(n)-A000079(n))`
-/

namespace A139790.P5499610831501872309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (A172481 n - A000079 n)

end

end A139790.P5499610831501872309

namespace A139790

/-- `A000079(n)-(A172481(n)-A000079(n))` -/
def P5499610831501872309.Spec : Prop :=
  ∀ n, P5499610831501872309.a n = A139790 n

end A139790

/-! ## A139790.P2883845676499897040

`A000079(n+1)+A000079(n)-A136298(n+1)`
-/

namespace A139790.P2883845676499897040
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 (n + 1) + (A000079 n - A136298 (n + 1))

end

end A139790.P2883845676499897040

namespace A139790

/-- `A000079(n+1)+A000079(n)-A136298(n+1)` -/
def P2883845676499897040.Spec : Prop :=
  ∀ n, P2883845676499897040.a n = A139790 n

end A139790

/-! ## A139790.P9186023806730539247

`A000051(n+1)+A000225(n)-A136298(n+1)`
-/

namespace A139790.P9186023806730539247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 (n + 1) + (A000225 n - A136298 (n + 1))

end

end A139790.P9186023806730539247

namespace A139790

/-- `A000051(n+1)+A000225(n)-A136298(n+1)` -/
def P9186023806730539247.Spec : Prop :=
  ∀ n, P9186023806730539247.a n = A139790 n

end A139790

/-! ## A139790.P13878234370471889474

`A175656(n)-A045883(n)`
-/

namespace A139790.P13878234370471889474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175656 n - A045883 n

end

end A139790.P13878234370471889474

namespace A139790

/-- `A175656(n)-A045883(n)` -/
def P13878234370471889474.Spec : Prop :=
  ∀ n, P13878234370471889474.a n = A139790 n

end A139790

/-! ## A139790.P11242095724725768586

`A136298(n)-A139756(n)`
-/

namespace A139790.P11242095724725768586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 n - A139756 n

end

end A139790.P11242095724725768586

namespace A139790

/-- `A136298(n)-A139756(n)` -/
def P11242095724725768586.Spec : Prop :=
  ∀ n, P11242095724725768586.a n = A139790 n

end A139790

/-! ## A139790.P8983115078616245459

`A172481(n)-A140960(n)`
-/

namespace A139790.P8983115078616245459
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n - A140960 n

end

end A139790.P8983115078616245459

namespace A139790

/-- `A172481(n)-A140960(n)` -/
def P8983115078616245459.Spec : Prop :=
  ∀ n, P8983115078616245459.a n = A139790 n

end A139790

/-! ## A139790.P14599169059950322948

`Δ[A172481(n)]-A045883(n)`
-/

namespace A139790.P14599169059950322948
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172481 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A045883 n

end

end A139790.P14599169059950322948

namespace A139790

/-- `Δ[A172481(n)]-A045883(n)` -/
def P14599169059950322948.Spec : Prop :=
  ∀ n, P14599169059950322948.a n = A139790 n

end A139790

/-! ## A139790.P9865334642615643437

`A136298(n+1)-A059570(n+1)`
-/

namespace A139790.P9865334642615643437
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 (n + 1) - A059570 (n + 1)

end

end A139790.P9865334642615643437

namespace A139790

/-- `A136298(n+1)-A059570(n+1)` -/
def P9865334642615643437.Spec : Prop :=
  ∀ n, P9865334642615643437.a n = A139790 n

end A139790

/-! ## A139790.P14555771127217031008

`A001045(n)+A172481(n)-A045883(n)`
-/

namespace A139790.P14555771127217031008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 n + (A172481 n - A045883 n)

end

end A139790.P14555771127217031008

namespace A139790

/-- `A001045(n)+A172481(n)-A045883(n)` -/
def P14555771127217031008.Spec : Prop :=
  ∀ n, P14555771127217031008.a n = A139790 n

end A139790

/-! ## A139790.P9783959609503053151

`A136298(n)+A136299(n)-A172481(n)`
-/

namespace A139790.P9783959609503053151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136298 n + (A136299 n - A172481 n)

end

end A139790.P9783959609503053151

namespace A139790

/-- `A136298(n)+A136299(n)-A172481(n)` -/
def P9783959609503053151.Spec : Prop :=
  ∀ n, P9783959609503053151.a n = A139790 n

end A139790

/-! ## A139790.P11195253636105818845

`A011782(n+1)+A172481(n)-A059570(n+1)`
-/

namespace A139790.P11195253636105818845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A011782 (n + 1) + (A172481 n - A059570 (n + 1))

end

end A139790.P11195253636105818845

namespace A139790

/-- `A011782(n+1)+A172481(n)-A059570(n+1)` -/
def P11195253636105818845.Spec : Prop :=
  ∀ n, P11195253636105818845.a n = A139790 n

end A139790

/-! ## A139790.P10188511781954319080

`A001792(n)-A113861(n+1)`
-/

namespace A139790.P10188511781954319080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001792 n - A113861 (n + 1)

end

end A139790.P10188511781954319080

namespace A139790

/-- `A001792(n)-A113861(n+1)` -/
def P10188511781954319080.Spec : Prop :=
  ∀ n, P10188511781954319080.a n = A139790 n

end A139790

/-!
# A139791: Numbers n for which 2n is a multiple of A002326(n), the multiplicative order of 2 mod 2n+1.

The programs for A139791, the canonical program `A139791.P5154147955863342645` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139791 has offset 1).

The definition of A139791 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A139791.P5154147955863342645

`(A015919(n+3)-1)/2`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A139791

/-- `(A015919(n+3)-1)/2` -/
def P5154147955863342645.Spec : Prop :=
  ∀ n, P5154147955863342645.a n = (A139791 (n + 1) : ℚ)

end A139791

/-! ## A139791.P711568418307766600

`(∑[abs(Δ[A015919(n+2)])]+1)/2`
-/

namespace A139791.P711568418307766600
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015919 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A139791.P711568418307766600

namespace A139791

/-- `(∑[abs(Δ[A015919(n+2)])]+1)/2` -/
def P711568418307766600.Spec : Prop :=
  ∀ n, P711568418307766600.a n = (A139791 (n + 1) : ℚ)

end A139791

/-! ## A139791.P3888156285971721571

`floor(A176997(n+2)/2)`
-/

namespace A139791.P3888156285971721571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A176997 (n + 2) : ℚ) / 2⌋

end

end A139791.P3888156285971721571

namespace A139791

/-- `floor(A176997(n+2)/2)` -/
def P3888156285971721571.Spec : Prop :=
  ∀ n, P3888156285971721571.a n = A139791 (n + 1)

end A139791

/-! ## A139791.P17550194289727150267

`∑[A001281(Δ[A176997(n+1)])]`
-/

namespace A139791.P17550194289727150267
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139791.P17550194289727150267

namespace A139791

/-- `∑[A001281(Δ[A176997(n+1)])]` -/
def P17550194289727150267.Spec : Prop :=
  ∀ n, P17550194289727150267.a n = A139791 (n + 1)

end A139791

/-! ## A139791.P14016185923727764881

`∑[A004526(Δ[A176997(n+1)])]`
-/

namespace A139791.P14016185923727764881
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176997 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (f2 (n + 1) - f2 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139791.P14016185923727764881

namespace A139791

/-- `∑[A004526(Δ[A176997(n+1)])]` -/
def P14016185923727764881.Spec : Prop :=
  ∀ n, P14016185923727764881.a n = A139791 (n + 1)

end A139791

/-! ## A139791.P7362143464740668725

`record[(n+1)/A062173(2*n+3)]`
-/

namespace A139791.P7362143464740668725
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (A062173 (2 * n + 3) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A139791.P7362143464740668725

namespace A139791

/-- `record[(n+1)/A062173(2*n+3)]` -/
def P7362143464740668725.Spec : Prop :=
  ∀ n, P7362143464740668725.a n = (A139791 (n + 1) : ℚ)

end A139791

/-! ## A139791.P6745304437554406526

`eq[1, A062173(2*n+1)]`
-/

namespace A139791.P6745304437554406526
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062173 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139791.P6745304437554406526

namespace A139791

/-- `eq[1, A062173(2*n+1)]` -/
def P6745304437554406526.Spec : Prop :=
  ∀ n, (P6745304437554406526.a n : ℤ) = A139791 (n + 1)

end A139791

/-! ## A139791.P6780381795714464484

`eq[3, A305890(2*n+1)]`
-/

namespace A139791.P6780381795714464484
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305890 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139791.P6780381795714464484

namespace A139791

/-- `eq[3, A305890(2*n+1)]` -/
def P6780381795714464484.Spec : Prop :=
  ∀ n, (P6780381795714464484.a n : ℤ) = A139791 (n + 1)

end A139791

/-! ## A139791.P2124365866457759145

`eq[1, A177023(n+1)]+1`
-/

namespace A139791.P2124365866457759145
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A177023 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A139791.P2124365866457759145

namespace A139791

/-- `eq[1, A177023(n+1)]+1` -/
def P2124365866457759145.Spec : Prop :=
  ∀ n, (P2124365866457759145.a n : ℤ) = A139791 (n + 1)

end A139791

/-! ## A139791.P2504432227587365109

`eq[2, A179976(n)]`
-/

namespace A139791.P2504432227587365109
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179976 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139791.P2504432227587365109

namespace A139791

/-- `eq[2, A179976(n)]` -/
def P2504432227587365109.Spec : Prop :=
  ∀ n, (P2504432227587365109.a n : ℤ) = A139791 (n + 1)

end A139791

/-! ## A139791.P10033289890521284244

`eq[1, A278907(2*n)]`
-/

namespace A139791.P10033289890521284244
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A278907 (2 * n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139791.P10033289890521284244

namespace A139791

/-- `eq[1, A278907(2*n)]` -/
def P10033289890521284244.Spec : Prop :=
  ∀ n, (P10033289890521284244.a n : ℤ) = A139791 (n + 1)

end A139791

/-! ## A139791.P10615307836285121497

`eq[1, A082495(2*n+1)]`
-/

namespace A139791.P10615307836285121497
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082495 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139791.P10615307836285121497

namespace A139791

/-- `eq[1, A082495(2*n+1)]` -/
def P10615307836285121497.Spec : Prop :=
  ∀ n, (P10615307836285121497.a n : ℤ) = A139791 (n + 1)

end A139791

/-! ## A139791.P1178236638959915385

`eq[2, A015910(2*n+1)]`
-/

namespace A139791.P1178236638959915385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (2 * n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A139791.P1178236638959915385

namespace A139791

/-- `eq[2, A015910(2*n+1)]` -/
def P1178236638959915385.Spec : Prop :=
  ∀ n, (P1178236638959915385.a n : ℤ) = A139791 (n + 1)

end A139791

/-! ## A139791.P4980248321015004710

`A004526(eq[2, A015910(n+1)])`
-/

namespace A139791.P4980248321015004710
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015910 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A139791.P4980248321015004710

namespace A139791

/-- `A004526(eq[2, A015910(n+1)])` -/
def P4980248321015004710.Spec : Prop :=
  ∀ n, P4980248321015004710.a n = A139791 (n + 1)

end A139791

/-! ## A139791.P2775449907097799981

`ceil(A268174(n+1)/2)`
-/

namespace A139791.P2775449907097799981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A268174 (n + 1) : ℚ) / 2⌉

end

end A139791.P2775449907097799981

namespace A139791

/-- `ceil(A268174(n+1)/2)` -/
def P2775449907097799981.Spec : Prop :=
  ∀ n, P2775449907097799981.a n = A139791 (n + 1)

end A139791

/-!
# A139792: First quadrisection of A139763 (1, 2, 3, 4, 11, ...).

The programs for A139792, the canonical program `A139792.P3105152024987122143` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139792 has offset 0).

The definition of A139792 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139792.P18051958353418870839

`ogf((1-6x)/(1-17x+16x^2))`
-/

namespace A139792.P18051958353418870839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, -6] [1, -17, 16] n

end

end A139792.P18051958353418870839

namespace A139792

/-- `ogf((1-6x)/(1-17x+16x^2))` -/
def P18051958353418870839.Spec : Prop :=
  ∀ n, P18051958353418870839.a n = A139792 n

end A139792

/-! ## A139792.P3105152024987122143

`16*a(n-1)-5` with `a(0)=1`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139792

/-- `16*a(n-1)-5` -/
def P3105152024987122143.Spec : Prop :=
  ∀ n, P3105152024987122143.a n = A139792 n

theorem P3105152024987122143.correct : P3105152024987122143.Spec := by
  intro n
  simp only [A139792]

end A139792

/-! ## A139792.P602160337293890491

`A001045(4*n+1)`
-/

namespace A139792.P602160337293890491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001045 (4 * n + 1)

end

end A139792.P602160337293890491

namespace A139792

/-- `A001045(4*n+1)` -/
def P602160337293890491.Spec : Prop :=
  ∀ n, P602160337293890491.a n = A139792 n

end A139792

/-! ## A139792.P1283459846548043309

`(1+2*16^n)/3`
-/

namespace A139792.P1283459846548043309
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (1 + 2 * 16 ^ n : ℚ) / 3

end

end A139792.P1283459846548043309

namespace A139792

/-- `(1+2*16^n)/3` -/
def P1283459846548043309.Spec : Prop :=
  ∀ n, P1283459846548043309.a n = (A139792 n : ℚ)

theorem P1283459846548043309.correct : P1283459846548043309.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A139792, Nat.add_sub_cancel, A139792.P1283459846548043309.a, A139792.P3105152024987122143.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A139792, Nat.add_sub_cancel, A139792.P1283459846548043309.a, A139792.P3105152024987122143.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring1 | ring_nf | (field_simp; (first | ring1 | ring_nf)) | omega | (push_cast; ring_nf) | nlinarith

end A139792

/-! ## A139792.P8525916671027554004

`lcm(16, a(n-1))-5` with `a(0)=1`
-/

namespace A139792.P8525916671027554004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (Int.lcm 16 (a (n - 1)) : ℤ) - 5

end

end A139792.P8525916671027554004

namespace A139792

/-- `lcm(16, a(n-1))-5` -/
def P8525916671027554004.Spec : Prop :=
  ∀ n, P8525916671027554004.a n = A139792 n

end A139792

/-! ## A139792.P16786201130109376990

`a(n-1)/(1/4)²-5` with `a(0)=1`
-/

namespace A139792.P16786201130109376990
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) / ((1 : ℚ) / 4) ^ 2 - 5

end

end A139792.P16786201130109376990

namespace A139792

/-- `a(n-1)/(1/4)²-5` -/
def P16786201130109376990.Spec : Prop :=
  ∀ n, P16786201130109376990.a n = (A139792 n : ℚ)

end A139792

/-! ## A139792.P8066856929007242752

`xor(1, 3*2*((4^n)²-1)/9)`
-/

namespace A139792.P8066856929007242752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (3 * (2 * ((((4 ^ n) ^ 2 : ℤ) - 1 : ℚ) / 9))))

end

end A139792.P8066856929007242752

namespace A139792

/-- `xor(1, 3*2*((4^n)²-1)/9)` -/
def P8066856929007242752.Spec : Prop :=
  ∀ n, P8066856929007242752.a n = A139792 n

end A139792

/-! ## A139792.P16252997559525339719

`A007583(2*n)`
-/

namespace A139792.P16252997559525339719
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007583 (2 * n)

end

end A139792.P16252997559525339719

namespace A139792

/-- `A007583(2*n)` -/
def P16252997559525339719.Spec : Prop :=
  ∀ n, P16252997559525339719.a n = A139792 n

end A139792

/-! ## A139792.P7642198856119490305

`A140322(2*n)`
-/

namespace A139792.P7642198856119490305
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140322 (2 * n)

end

end A139792.P7642198856119490305

namespace A139792

/-- `A140322(2*n)` -/
def P7642198856119490305.Spec : Prop :=
  ∀ n, P7642198856119490305.a n = A139792 n

end A139792

/-! ## A139792.P4013817158171147658

`A077925(4*n)`
-/

namespace A139792.P4013817158171147658
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077925 (4 * n)

end

end A139792.P4013817158171147658

namespace A139792

/-- `A077925(4*n)` -/
def P4013817158171147658.Spec : Prop :=
  ∀ n, P4013817158171147658.a n = A139792 n

end A139792

/-!
# A139793: Concatenation of a and b, where a is the reduced sum of the digits of n and b is reduced sum of the digits of A000217.

The programs for A139793, there is no canonical definition to state claims against.
-/

/-! ## A139793.P6599714842194267991

`dr(∑[n])+10*dr(n)`
-/

namespace A139793.P6599714842194267991
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) + 10 * SequenceMachineLib.digitalRoot (n : ℤ)

end

end A139793.P6599714842194267991

/-! ## A139793.P7496307896708139263

`A010888(∑[n])+10*A010888(n)`
-/

namespace A139793.P7496307896708139263
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010888 (∑ j ∈ Finset.range (n + 1), f1 j) + 10 * A010888 n

end

end A139793.P7496307896708139263

/-! ## A139793.P11321884009810696540

`A145389(n)+A008592(A007953(n))`
-/

namespace A139793.P11321884009810696540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145389 n + A008592 (A007953 n).toNat

end

end A139793.P11321884009810696540

/-! ## A139793.P9426781311386327318

`dr(A038378(n+1))+10*n`
-/

namespace A139793.P9426781311386327318
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.digitalRoot (A038378 (n + 1)) + 10 * n

end

end A139793.P9426781311386327318

/-! ## A139793.P10256013703439934973

`A008592(n)+dr(A038378(n+1))`
-/

namespace A139793.P10256013703439934973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008592 n + (SequenceMachineLib.digitalRoot (A038378 (n + 1)) : ℤ)

end

end A139793.P10256013703439934973

/-!
# A139796: Last term of A139687(n) with a fourth leading 1 = 1, 1, 1, 1, 2, 2, 1, 3, 5, 5 rows.

The programs for A139796, there is no canonical definition to state claims against.
-/

/-! ## A139796.P17550261800925681320

`A033184(∑[or(1, n)])`
-/

namespace A139796.P17550261800925681320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033184 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139796.P17550261800925681320

/-! ## A139796.P11215793558484389742

`A059365(∑[or(1, n)+1])`
-/

namespace A139796.P11215793558484389742
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059365 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139796.P11215793558484389742

/-! ## A139796.P12730854542823199260

`A106566(∑[or(1, n)+1])`
-/

namespace A139796.P12730854542823199260
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106566 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139796.P12730854542823199260

/-! ## A139796.P16650092924069471837

`A130020(∑[or(1, n+1)])`
-/

namespace A139796.P16650092924069471837
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130020 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139796.P16650092924069471837

/-! ## A139796.P13985117168537469869

`A009766(∑[n%2+n])`
-/

namespace A139796.P13985117168537469869
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2 + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A009766 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139796.P13985117168537469869

/-!
# A139797: Inverse binomial transform of [0, A133474].

The programs for A139797, the canonical program `A139797.P8283369529898747823` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139797 has offset 0).

The definition of A139797 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139797.P8283369529898747823

`ogf(x^4/(1-x-2x^2+x^3-x^4-2x^5))`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139797

/-- `ogf(x^4/(1-x-2x^2+x^3-x^4-2x^5))` -/
def P8283369529898747823.Spec : Prop :=
  ∀ n, P8283369529898747823.a n = A139797 n

theorem P8283369529898747823.correct : P8283369529898747823.Spec := by
  intro n
  simp only [A139797]

end A139797

/-! ## A139797.P5447272706688979556

`A328284(n)-a(n-3)` with `a(0)=0, a(1)=0, a(2)=0`
-/

namespace A139797.P5447272706688979556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 0, 0] fun n a =>
  A328284 n - a (n - 3)

end

end A139797.P5447272706688979556

namespace A139797

/-- `A328284(n)-a(n-3)` -/
def P5447272706688979556.Spec : Prop :=
  ∀ n, P5447272706688979556.a n = A139797 n

end A139797

/-! ## A139797.P11700771206275115645

`A113405(n-1)-a(n-1)` with `a(0)=0`
-/

namespace A139797.P11700771206275115645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A113405 (n - 1) - a (n - 1)

end

end A139797.P11700771206275115645

namespace A139797

/-- `A113405(n-1)-a(n-1)` -/
def P11700771206275115645.Spec : Prop :=
  ∀ n, P11700771206275115645.a n = A139797 n

end A139797

/-! ## A139797.P7547999486326249681

`A348405(n)-A033999(n)`
-/

namespace A139797.P7547999486326249681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348405 n - A033999 n

end

end A139797.P7547999486326249681

namespace A139797

/-- `A348405(n)-A033999(n)` -/
def P7547999486326249681.Spec : Prop :=
  ∀ n, P7547999486326249681.a n = A139797 n

end A139797

/-! ## A139797.P6742650961432390141

`A348405(n)+A010892(3*(n+1))`
-/

namespace A139797.P6742650961432390141
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348405 n + A010892 (3 * (n + 1))

end

end A139797.P6742650961432390141

namespace A139797

/-- `A348405(n)+A010892(3*(n+1))` -/
def P6742650961432390141.Spec : Prop :=
  ∀ n, P6742650961432390141.a n = A139797 n

end A139797

/-! ## A139797.P16958738493070303987

`A348405(n)-A008620(n)/A104581(n)`
-/

namespace A139797.P16958738493070303987
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348405 n : ℚ) - (A008620 n : ℚ) / (A104581 n : ℚ)

end

end A139797.P16958738493070303987

namespace A139797

/-- `A348405(n)-A008620(n)/A104581(n)` -/
def P16958738493070303987.Spec : Prop :=
  ∀ n, P16958738493070303987.a n = (A139797 n : ℚ)

end A139797

/-! ## A139797.P3496638692646785056

`A348405(n)+A104581(n+1)/A008620(n+1)`
-/

namespace A139797.P3496638692646785056
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A348405 n : ℚ) + (A104581 (n + 1) : ℚ) / (A008620 (n + 1) : ℚ)

end

end A139797.P3496638692646785056

namespace A139797

/-- `A348405(n)+A104581(n+1)/A008620(n+1)` -/
def P3496638692646785056.Spec : Prop :=
  ∀ n, P3496638692646785056.a n = (A139797 n : ℚ)

end A139797

/-! ## A139797.P9691394975161471481

`Δ[A153234(n-1)-a(n-1)]` with `a(0)=0`
-/

namespace A139797.P9691394975161471481
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [0] fun n f1 =>
  A153234 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139797.P9691394975161471481

namespace A139797

/-- `Δ[A153234(n-1)-a(n-1)]` -/
def P9691394975161471481.Spec : Prop :=
  ∀ n, P9691394975161471481.a n = A139797 n

end A139797

/-! ## A139797.P2258964116696914355

`abs(ceil(A140962(n+1)/6))`
-/

namespace A139797.P2258964116696914355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |⌈(A140962 (n + 1) : ℚ) / 6⌉|

end

end A139797.P2258964116696914355

namespace A139797

/-- `abs(ceil(A140962(n+1)/6))` -/
def P2258964116696914355.Spec : Prop :=
  ∀ n, P2258964116696914355.a n = A139797 n

end A139797

/-! ## A139797.P15201245849607622871

`A328881(n+1)-(A348405(n+1)+A328881(n))`
-/

namespace A139797.P15201245849607622871
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328881 (n + 1) - (A348405 (n + 1) + A328881 n)

end

end A139797.P15201245849607622871

namespace A139797

/-- `A328881(n+1)-(A348405(n+1)+A328881(n))` -/
def P15201245849607622871.Spec : Prop :=
  ∀ n, P15201245849607622871.a n = A139797 n

end A139797

/-! ## A139797.P5595387656958239780

`Δ[floor(A113954(n)/6)]`
-/

namespace A139797.P5595387656958239780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A113954 n : ℚ) / 6⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139797.P5595387656958239780

namespace A139797

/-- `Δ[floor(A113954(n)/6)]` -/
def P5595387656958239780.Spec : Prop :=
  ∀ n, P5595387656958239780.a n = A139797 n

end A139797

/-! ## A139797.P6632390160281079190

`round(-((A078008(n)-A053088(n))/3))`
-/

namespace A139797.P6632390160281079190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (-((A078008 n - A053088 n : ℚ) / 3))

end

end A139797.P6632390160281079190

namespace A139797

/-- `round(-((A078008(n)-A053088(n))/3))` -/
def P6632390160281079190.Spec : Prop :=
  ∀ n, P6632390160281079190.a n = A139797 n

end A139797

/-!
# A139798: Coefficient of x^5 in (1-x-x^2)^(-n).

The programs for A139798, the canonical program `A139798.P8636846212802484` is in `Seq.B000.C023`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A139798 has offset 1).

The definition of A139798 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A139798.P17355298825477853056

`ogf((8-10x+3x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))`
-/

namespace A139798.P17355298825477853056
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [8, -10, 3] [1, -6, 15, -20, 15, -6, 1] n

end

end A139798.P17355298825477853056

namespace A139798

/-- `ogf((8-10x+3x^2)/(1-6x+15x^2-20x^3+15x^4-6x^5+x^6))` -/
def P17355298825477853056.Spec : Prop :=
  ∀ n, P17355298825477853056.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P8636846212802484

`C(n+3, 3)*((n+1)²+27*(n+1)+132)/20`

The canonical program, it is in `Seq.B000.C023`.
-/

namespace A139798

/-- `C(n+3, 3)*((n+1)²+27*(n+1)+132)/20` -/
def P8636846212802484.Spec : Prop :=
  ∀ n, P8636846212802484.a n = (A139798 (n + 1) : ℚ)

end A139798

/-! ## A139798.P10040088478395193675

`∑[∑[∑[∑[n+5]+3]]]`
-/

namespace A139798.P10040088478395193675
noncomputable section

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 5

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f4 j + 3

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139798.P10040088478395193675

namespace A139798

/-- `∑[∑[∑[∑[n+5]+3]]]` -/
def P10040088478395193675.Spec : Prop :=
  ∀ n, (P10040088478395193675.a n : ℤ) = A139798 (n + 1)

end A139798

/-! ## A139798.P9503880882217245403

`(n+30)*C(n+4, 4)/5-A167543(n+8)`
-/

namespace A139798.P9503880882217245403
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n + 30) * Nat.choose (n + 4) 4 : ℚ) / 5 - (A167543 (n + 8) : ℚ)

end

end A139798.P9503880882217245403

namespace A139798

/-- `(n+30)*C(n+4, 4)/5-A167543(n+8)` -/
def P9503880882217245403.Spec : Prop :=
  ∀ n, P9503880882217245403.a n = (A139798 (n + 1) : ℚ)

end A139798

/-! ## A139798.P13231300915826902174

`A006636(n)+A005582(n)`
-/

namespace A139798.P13231300915826902174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006636 n + A005582 n

end

end A139798.P13231300915826902174

namespace A139798

/-- `A006636(n)+A005582(n)` -/
def P13231300915826902174.Spec : Prop :=
  ∀ n, P13231300915826902174.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P11389362883774031721

`A095668(n)+A095667(n)`
-/

namespace A139798.P11389362883774031721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095668 n + A095667 n

end

end A139798.P11389362883774031721

namespace A139798

/-- `A095668(n)+A095667(n)` -/
def P11389362883774031721.Spec : Prop :=
  ∀ n, P11389362883774031721.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P9899939517960813436

`A096959(n)-A167543(n+8)`
-/

namespace A139798.P9899939517960813436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096959 n - A167543 (n + 8)

end

end A139798.P9899939517960813436

namespace A139798

/-- `A096959(n)-A167543(n+8)` -/
def P9899939517960813436.Spec : Prop :=
  ∀ n, P9899939517960813436.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P17698059388879544815

`A005701(n)+∑[A024191(n+1)]`
-/

namespace A139798.P17698059388879544815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024191 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005701 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A139798.P17698059388879544815

namespace A139798

/-- `A005701(n)+∑[A024191(n+1)]` -/
def P17698059388879544815.Spec : Prop :=
  ∀ n, P17698059388879544815.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P193638286398620751

`lcm(∑[A055832(n+5)], A000034(n))`
-/

namespace A139798.P193638286398620751
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055832 (n + 5)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∑ j ∈ Finset.range (n + 1), f1 j) (A000034 n)

end

end A139798.P193638286398620751

namespace A139798

/-- `lcm(∑[A055832(n+5)], A000034(n))` -/
def P193638286398620751.Spec : Prop :=
  ∀ n, (P193638286398620751.a n : ℤ) = A139798 (n + 1)

end A139798

/-! ## A139798.P8130695427334866556

`A055833(n+6)-A006504(n+1)`
-/

namespace A139798.P8130695427334866556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055833 (n + 6) - A006504 (n + 1)

end

end A139798.P8130695427334866556

namespace A139798

/-- `A055833(n+6)-A006504(n+1)` -/
def P8130695427334866556.Spec : Prop :=
  ∀ n, P8130695427334866556.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P4813762230867176960

`Δ[A095669(n)-A095667(n)]`
-/

namespace A139798.P4813762230867176960
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095669 n - A095667 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A139798.P4813762230867176960

namespace A139798

/-- `Δ[A095669(n)-A095667(n)]` -/
def P4813762230867176960.Spec : Prop :=
  ∀ n, P4813762230867176960.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P4672918930140076332

`A022816(n+2)-A000217(n+2)`
-/

namespace A139798.P4672918930140076332
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022816 (n + 2) - A000217 (n + 2)

end

end A139798.P4672918930140076332

namespace A139798

/-- `A022816(n+2)-A000217(n+2)` -/
def P4672918930140076332.Spec : Prop :=
  ∀ n, P4672918930140076332.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P3135144215403403026

`A095668(n+1)-A060488(n+4)`
-/

namespace A139798.P3135144215403403026
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A095668 (n + 1) - A060488 (n + 4)

end

end A139798.P3135144215403403026

namespace A139798

/-- `A095668(n+1)-A060488(n+4)` -/
def P3135144215403403026.Spec : Prop :=
  ∀ n, P3135144215403403026.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P17589257724669408906

`A038137(A000124(n+5)+4)`
-/

namespace A139798.P17589257724669408906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A000124 (n + 5) + 4).toNat

end

end A139798.P17589257724669408906

namespace A139798

/-- `A038137(A000124(n+5)+4)` -/
def P17589257724669408906.Spec : Prop :=
  ∀ n, P17589257724669408906.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P6993548251124156222

`A038137(A000217(n+5)+5)`
-/

namespace A139798.P6993548251124156222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038137 (A000217 (n + 5) + 5).toNat

end

end A139798.P6993548251124156222

namespace A139798

/-- `A038137(A000217(n+5)+5)` -/
def P6993548251124156222.Spec : Prop :=
  ∀ n, P6993548251124156222.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P10265828694226862032

`A037027(A000217(n+6)-6)`
-/

namespace A139798.P10265828694226862032
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000217 (n + 6) - 6).toNat

end

end A139798.P10265828694226862032

namespace A139798

/-- `A037027(A000217(n+6)-6)` -/
def P10265828694226862032.Spec : Prop :=
  ∀ n, P10265828694226862032.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P8020700890356302066

`A037027(A000124(n+6)-7)`
-/

namespace A139798.P8020700890356302066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (A000124 (n + 6) - 7).toNat

end

end A139798.P8020700890356302066

namespace A139798

/-- `A037027(A000124(n+6)-7)` -/
def P8020700890356302066.Spec : Prop :=
  ∀ n, P8020700890356302066.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P2470263135624420185

`A037027(Δ[A264443(n+1)]-2)`
-/

namespace A139798.P2470263135624420185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264443 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (f1 (n + 1) - f1 n - 2).toNat

end

end A139798.P2470263135624420185

namespace A139798

/-- `A037027(Δ[A264443(n+1)]-2)` -/
def P2470263135624420185.Spec : Prop :=
  ∀ n, P2470263135624420185.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P1747666828792512708

`A037027(Δ[A055831(n+5)]-1)`
-/

namespace A139798.P1747666828792512708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055831 (n + 5)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A037027 (f1 (n + 1) - f1 n - 1).toNat

end

end A139798.P1747666828792512708

namespace A139798

/-- `A037027(Δ[A055831(n+5)]-1)` -/
def P1747666828792512708.Spec : Prop :=
  ∀ n, P1747666828792512708.a n = A139798 (n + 1)

end A139798

/-! ## A139798.P14408964692241685922

`A060921(∑[n+3])`
-/

namespace A139798.P14408964692241685922
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060921 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A139798.P14408964692241685922

namespace A139798

/-- `A060921(∑[n+3])` -/
def P14408964692241685922.Spec : Prop :=
  ∀ n, P14408964692241685922.a n = A139798 (n + 1)

end A139798

/-!
# A139799: Integers k with at least one divisor d > 1 that divides (n/d)+1.

The programs for A139799, there is no canonical definition to state claims against.
-/

/-! ## A139799.P10665074868043228666

`A298748(lt[A129334(3*n+2), A001694(n+1)])`
-/

namespace A139799.P10665074868043228666
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129334 (3 * n + 2)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001694 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A139799.P10665074868043228666

/-! ## A139799.P15044047000839161190

`A298748(lt[A156552(3*(n+1)), A298748(3*n+1)])`
-/

namespace A139799.P15044047000839161190
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A156552 (3 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A139799.P15044047000839161190

/-! ## A139799.P7852473895003975966

`A298748(lt[A034694(n+1), A335237(3*n+1)])`
-/

namespace A139799.P7852473895003975966
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335237 (3 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A139799.P7852473895003975966

/-! ## A139799.P11833463149772155778

`A298748(lt[A316891(n+1), (12*n+3)/17])`
-/

namespace A139799.P11833463149772155778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316891 (n + 1)

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (12 * n + 3 : ℚ) / 17

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (SequenceMachineLib.nth (fun j => (f1 j : ℚ) < f2 j) n)

end

end A139799.P11833463149772155778

/-! ## A139799.P16621072703146951034

`A298748(lt[A026799(n), A000120(n)])`
-/

namespace A139799.P16621072703146951034
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026799 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000120 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A298748 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A139799.P16621072703146951034

