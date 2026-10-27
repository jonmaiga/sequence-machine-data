import SequenceMachineLib
import Seq.B000.C000
import Seq.B000.C001
import Seq.B000.C002
import Seq.B000.C004
import Seq.B000.C005
import Seq.B000.C006
import Seq.B000.C007
import Seq.B000.C008
import Seq.B000.C010
import Seq.B000.C012
import Seq.B000.C013
import Seq.B000.C014
import Seq.B000.C016
import Seq.B000.C018
import Seq.B000.C019
import Seq.B000.C022
import Seq.B000.C024
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C040
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
import Seq.B001.C005
import Seq.B001.C008
import Seq.B001.C009
import Seq.B001.C010
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B003.C005
import Seq.B003.C006
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
import Seq.B007.C001
import Seq.B008.C000
import Seq.B009.C000
import Seq.B010.C000
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
import Seq.Opaque.C025

/-!
# A379701: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(x) / (1 + x*exp(2*x)) ).

The programs for A379701, there is no canonical definition to state claims against.
-/

/-! ## A379701.P2476849918207058054

`A279118(a(n-1))+2` with `a(0)=1, a(1)=0`
-/

namespace A379701.P2476849918207058054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0] fun n a =>
  A279118 (a (n - 1)).toNat + 2

end

end A379701.P2476849918207058054

/-!
# A379702: Expansion of e.g.f. (1/x) * Series_Reversion( x * exp(x) / (1 + x*exp(3*x)) ).

The programs for A379702, there is no canonical definition to state claims against.
-/

/-! ## A379702.P16373156937832395419

`A344616(lcm(2, A381910(n)))`
-/

namespace A379702.P16373156937832395419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A344616 (Int.lcm 2 (A381910 n))

end

end A379702.P16373156937832395419

/-!
# A379704: Lengths of runs in A157196.

The programs for A379704, there is no canonical definition to state claims against.
-/

/-! ## A379704.P15755083253185633284

`A000034(n+1)*A157196(n+1)`
-/

namespace A379704.P15755083253185633284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (n + 1) * A157196 (n + 1)

end

end A379704.P15755083253185633284

/-!
# A379705: a(n) is the least integer k > n such that integers p, q exist for which n, p, k are in arithmetic and n, q, k are in geometric progression.

The programs for A379705, the canonical program `A379705.P4574485097972664711` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379705 has offset 1).

The definition of A379705 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379705.P4574485097972664711

`A242219(n+1)²/(n+1)`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A379705

/-- `A242219(n+1)²/(n+1)` -/
def P4574485097972664711.Spec : Prop :=
  ∀ n, P4574485097972664711.a n = (A379705 (n + 1) : ℚ)

end A379705

/-! ## A379705.P17382873792618866380

`A072905(A072905(2*(n+1)))/2`
-/

namespace A379705.P17382873792618866380
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072905 (A072905 (2 * (n + 1))).toNat : ℚ) / 2

end

end A379705.P17382873792618866380

namespace A379705

/-- `A072905(A072905(2*(n+1)))/2` -/
def P17382873792618866380.Spec : Prop :=
  ∀ n, P17382873792618866380.a n = (A379705 (n + 1) : ℚ)

end A379705

/-! ## A379705.P8682839937966395293

`2*A193800(n+1)+n+1`
-/

namespace A379705.P8682839937966395293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193800 (n + 1) + (n + 1 : ℤ)

end

end A379705.P8682839937966395293

namespace A379705

/-- `2*A193800(n+1)+n+1` -/
def P8682839937966395293.Spec : Prop :=
  ∀ n, P8682839937966395293.a n = A379705 (n + 1)

end A379705

/-!
# A379706: Number of nonempty labeled antichains of subsets of [n] such that the largest subset is of size 2.

The programs for A379706, there is no canonical definition to state claims against.
-/

/-! ## A379706.P6664880391332156502

`A006896(n)-2^n`
-/

namespace A379706.P6664880391332156502
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006896 n - (2 ^ n : ℤ)

end

end A379706.P6664880391332156502

/-! ## A379706.P13365050084933712925

`abs(A000079(n)-A006896(n))`
-/

namespace A379706.P13365050084933712925
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A006896 n|

end

end A379706.P13365050084933712925

/-! ## A379706.P10098084832674285249

`A006896(n)+1-A000051(n)`
-/

namespace A379706.P10098084832674285249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006896 n + 1 - A000051 n

end

end A379706.P10098084832674285249

/-! ## A379706.P10084927764606371787

`A004140(n)-A343231(A003462(n))`
-/

namespace A379706.P10084927764606371787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004140 n - A343231 (A003462 n).toNat

end

end A379706.P10084927764606371787

/-!
# A379707: Number of nonempty labeled antichains of subsets of [n] such that all subsets except possibly those of the largest size are disjoint.

The programs for A379707, there is no canonical definition to state claims against.
-/

/-! ## A379707.P14775976905181888605

`A071501(Δ[(n+1)^n])`
-/

namespace A379707.P14775976905181888605
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 1) ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071501 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A379707.P14775976905181888605

/-!
# A379714: Partial alternating sums of the number of exponential divisors function (A049419).

The programs for A379714, the canonical program `A379714.P10513291815348111306` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379714 has offset 1).

The definition of A379714 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379714.P10513291815348111306

`∑[(-1)^n*A049419(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A379714

/-- `∑[(-1)^n*A049419(n+1)]` -/
def P10513291815348111306.Spec : Prop :=
  ∀ n, P10513291815348111306.a n = A379714 (n + 1)

theorem P10513291815348111306.correct : P10513291815348111306.Spec := by
  intro n
  simp only [A379714, Nat.add_sub_cancel]

end A379714

/-! ## A379714.P16846641588113296896

`∑[A049419(n+1)/A033999(n)]`
-/

namespace A379714.P16846641588113296896
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049419 (n + 1) : ℚ) / (A033999 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379714.P16846641588113296896

namespace A379714

/-- `∑[A049419(n+1)/A033999(n)]` -/
def P16846641588113296896.Spec : Prop :=
  ∀ n, P16846641588113296896.a n = (A379714 (n + 1) : ℚ)

end A379714

/-! ## A379714.P13848458149610113615

`∑[A049419(n+1)*A165326(n+1)]`
-/

namespace A379714.P13848458149610113615
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1) * A165326 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379714.P13848458149610113615

namespace A379714

/-- `∑[A049419(n+1)*A165326(n+1)]` -/
def P13848458149610113615.Spec : Prop :=
  ∀ n, P13848458149610113615.a n = A379714 (n + 1)

end A379714

/-! ## A379714.P15141903658053343186

`∑[A049419(n+1)/A010892(3*n)]`
-/

namespace A379714.P15141903658053343186
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A049419 (n + 1) : ℚ) / (A010892 (3 * n) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379714.P15141903658053343186

namespace A379714

/-- `∑[A049419(n+1)/A010892(3*n)]` -/
def P15141903658053343186.Spec : Prop :=
  ∀ n, P15141903658053343186.a n = (A379714 (n + 1) : ℚ)

end A379714

/-! ## A379714.P14332500433661629565

`∑[A049419(n+1)*A062157(3*(n+1))]`
-/

namespace A379714.P14332500433661629565
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049419 (n + 1) * A062157 (3 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379714.P14332500433661629565

namespace A379714

/-- `∑[A049419(n+1)*A062157(3*(n+1))]` -/
def P14332500433661629565.Spec : Prop :=
  ∀ n, P14332500433661629565.a n = A379714 (n + 1)

end A379714

/-!
# A379715: The second Jordan totient function applied to the squarefree numbers.

The programs for A379715, the canonical program `A379715.P5673123717441379169` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379715 has offset 1).

The definition of A379715 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A005117, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379715.P5673123717441379169

`A007434(A005117(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A379715

/-- `A007434(A005117(n+1))` -/
def P5673123717441379169.Spec : Prop :=
  ∀ n, P5673123717441379169.a n = A379715 (n + 1)

theorem P5673123717441379169.correct : P5673123717441379169.Spec := by
  intro n
  simp only [A379715, Nat.add_sub_cancel]

end A379715

/-! ## A379715.P13429462799020016911

`A049200(n+1)*A062822(n+1)`
-/

namespace A379715.P13429462799020016911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049200 (n + 1) * A062822 (n + 1)

end

end A379715.P13429462799020016911

namespace A379715

/-- `A049200(n+1)*A062822(n+1)` -/
def P13429462799020016911.Spec : Prop :=
  ∀ n, P13429462799020016911.a n = A379715 (n + 1)

end A379715

/-! ## A379715.P3477544805027839317

`A379832(A383031(n+1))`
-/

namespace A379715.P3477544805027839317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379832 (A383031 (n + 1)).toNat

end

end A379715.P3477544805027839317

namespace A379715

/-- `A379832(A383031(n+1))` -/
def P3477544805027839317.Spec : Prop :=
  ∀ n, P3477544805027839317.a n = A379715 (n + 1)

end A379715

/-! ## A379715.P4900656804187110878

`A379717(A371188(n+1))`
-/

namespace A379715.P4900656804187110878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379717 (A371188 (n + 1)).toNat

end

end A379715.P4900656804187110878

namespace A379715

/-- `A379717(A371188(n+1))` -/
def P4900656804187110878.Spec : Prop :=
  ∀ n, P4900656804187110878.a n = A379715 (n + 1)

end A379715

/-! ## A379715.P2077965284609022619

`A167344(eq[1, A255326(n)])`
-/

namespace A379715.P2077965284609022619
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A255326 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167344 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A379715.P2077965284609022619

namespace A379715

/-- `A167344(eq[1, A255326(n)])` -/
def P2077965284609022619.Spec : Prop :=
  ∀ n, P2077965284609022619.a n = A379715 (n + 1)

end A379715

/-! ## A379715.P7936399428307449711

`A062354(record[A007947(n+1)])`
-/

namespace A379715.P7936399428307449711
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062354 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379715.P7936399428307449711

namespace A379715

/-- `A062354(record[A007947(n+1)])` -/
def P7936399428307449711.Spec : Prop :=
  ∀ n, P7936399428307449711.a n = A379715 (n + 1)

end A379715

/-! ## A379715.P9164043115897720484

`A322360(record[abs(A055615(n+1))])`
-/

namespace A379715.P9164043115897720484
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A055615 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A322360 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379715.P9164043115897720484

namespace A379715

/-- `A322360(record[abs(A055615(n+1))])` -/
def P9164043115897720484.Spec : Prop :=
  ∀ n, P9164043115897720484.a n = A379715 (n + 1)

end A379715

/-! ## A379715.P13591178299711054986

`A167344(A005117(2*n+1-n))`
-/

namespace A379715.P13591178299711054986
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167344 (A005117 (2 * n + 1 - n)).toNat

end

end A379715.P13591178299711054986

namespace A379715

/-- `A167344(A005117(2*n+1-n))` -/
def P13591178299711054986.Spec : Prop :=
  ∀ n, P13591178299711054986.a n = A379715 (n + 1)

end A379715

/-! ## A379715.P8050640146400425463

`A167344(A007947(A005117(n+1)²))`
-/

namespace A379715.P8050640146400425463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167344 (A007947 (A005117 (n + 1) ^ 2).toNat).toNat

end

end A379715.P8050640146400425463

namespace A379715

/-- `A167344(A007947(A005117(n+1)²))` -/
def P8050640146400425463.Spec : Prop :=
  ∀ n, P8050640146400425463.a n = A379715 (n + 1)

end A379715

/-! ## A379715.P7192253068714275701

`A340323(A005117(n+1)²)`
-/

namespace A379715.P7192253068714275701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340323 (A005117 (n + 1) ^ 2).toNat

end

end A379715.P7192253068714275701

namespace A379715

/-- `A340323(A005117(n+1)²)` -/
def P7192253068714275701.Spec : Prop :=
  ∀ n, P7192253068714275701.a n = A379715 (n + 1)

end A379715

/-!
# A379716: The second Jordan totient function applied to the powerful numbers: a(n) = A007434(A001694(n)).

The programs for A379716, there is no canonical definition to state claims against.
-/

/-! ## A379716.P15752821027621051987

`A007434(A001694(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379716.P15752821027621051987
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A001694 (n + 1)).toNat

end

end A379716.P15752821027621051987

/-! ## A379716.P5077362220966319914

`A323332(n+1)*A323333(n+1)`
-/

namespace A379716.P5077362220966319914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323332 (n + 1) * A323333 (n + 1)

end

end A379716.P5077362220966319914

/-! ## A379716.P4548924303404106232

`A000010(A001694(n+1))*A323332(n+1)`
-/

namespace A379716.P4548924303404106232
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A001694 (n + 1)).toNat * A323332 (n + 1)

end

end A379716.P4548924303404106232

/-! ## A379716.P7308821457121225876

`A000010(A224866(n+1)-1)*A323332(n+1)`
-/

namespace A379716.P7308821457121225876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A224866 (n + 1) - 1).toNat * A323332 (n + 1)

end

end A379716.P7308821457121225876

/-! ## A379716.P7692055080855373597

`A299822(A306458(n+1))*A323332(n+1)`
-/

namespace A379716.P7692055080855373597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A299822 (A306458 (n + 1)).toNat * A323332 (n + 1)

end

end A379716.P7692055080855373597

/-! ## A379716.P504456433405860826

`A181797(A001694(n+1)/A084371(n+1))*A323333(n+1)`
-/

namespace A379716.P504456433405860826
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A181797 (SequenceMachineLib.roundAway ((A001694 (n + 1) : ℚ) / (A084371 (n + 1) : ℚ))).toNat * A323333 (n + 1)

end

end A379716.P504456433405860826

/-! ## A379716.P11392412836693409005

`A007434(∪[A001597(n+1), A052486(n+1)])`
-/

namespace A379716.P11392412836693409005
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001597 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052486 (n + 1)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A379716.P11392412836693409005

/-!
# A379717: The second Jordan totient function applied to the cubefree numbers.

The programs for A379717, the canonical program `A379717.P10074037294569084625` is in `Seq.B004.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379717 has offset 1).

The definition of A379717 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A004709, A007434, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A379717.P10074037294569084625

`A007434(A004709(n+1))`

The canonical program, it is in `Seq.B004.C003`.
-/

namespace A379717

/-- `A007434(A004709(n+1))` -/
def P10074037294569084625.Spec : Prop :=
  ∀ n, P10074037294569084625.a n = A379717 (n + 1)

theorem P10074037294569084625.correct : P10074037294569084625.Spec := by
  intro n
  simp only [A379717, Nat.add_sub_cancel]

end A379717

/-! ## A379717.P16921323335988487185

`A007434(lt[∑{e}[n, n^#], (2*n)²])`
-/

namespace A379717.P16921323335988487185
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f2 n), n ^ Nat.factorization (f2 n) p

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (2 * n) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (SequenceMachineLib.nth (fun j => f1 j < f3 j) n)

end

end A379717.P16921323335988487185

namespace A379717

/-- `A007434(lt[∑{e}[n, n^#], (2*n)²])` -/
def P16921323335988487185.Spec : Prop :=
  ∀ n, P16921323335988487185.a n = A379717 (n + 1)

end A379717

/-! ## A379717.P15410320871941039261

`A007434(record[∏{p}[n+1, gcd(n+1, #²)]])`
-/

namespace A379717.P15410320871941039261
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), Nat.gcd (n + 1) (p ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A379717.P15410320871941039261

namespace A379717

/-- `A007434(record[∏{p}[n+1, gcd(n+1, #²)]])` -/
def P15410320871941039261.Spec : Prop :=
  ∀ n, P15410320871941039261.a n = A379717 (n + 1)

end A379717

/-! ## A379717.P248144421398270402

`A007434(record[A382903(n+1)])`
-/

namespace A379717.P248144421398270402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A382903 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379717.P248144421398270402

namespace A379717

/-- `A007434(record[A382903(n+1)])` -/
def P248144421398270402.Spec : Prop :=
  ∀ n, P248144421398270402.a n = A379717 (n + 1)

end A379717

/-! ## A379717.P6096904704509555416

`A007434(eq[1, A050361(n+1)]+1)`
-/

namespace A379717.P6096904704509555416
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050361 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A379717.P6096904704509555416

namespace A379717

/-- `A007434(eq[1, A050361(n+1)]+1)` -/
def P6096904704509555416.Spec : Prop :=
  ∀ n, P6096904704509555416.a n = A379717 (n + 1)

end A379717

/-! ## A379717.P14748577597787878202

`A001615(A004709(n+1))*A358039(n+1)`
-/

namespace A379717.P14748577597787878202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A004709 (n + 1)).toNat * A358039 (n + 1)

end

end A379717.P14748577597787878202

namespace A379717

/-- `A001615(A004709(n+1))*A358039(n+1)` -/
def P14748577597787878202.Spec : Prop :=
  ∀ n, P14748577597787878202.a n = A379717 (n + 1)

end A379717

/-! ## A379717.P12721947402828316721

`A007434(eq[A007947(n+1), A019554(n+1)]+1)`
-/

namespace A379717.P12721947402828316721
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019554 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A379717.P12721947402828316721

namespace A379717

/-- `A007434(eq[A007947(n+1), A019554(n+1)]+1)` -/
def P12721947402828316721.Spec : Prop :=
  ∀ n, P12721947402828316721.a n = A379717 (n + 1)

end A379717

/-! ## A379717.P10242759937180244057

`A063659(A392365(n+1))`
-/

namespace A379717.P10242759937180244057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (A392365 (n + 1)).toNat

end

end A379717.P10242759937180244057

namespace A379717

/-- `A063659(A392365(n+1))` -/
def P10242759937180244057.Spec : Prop :=
  ∀ n, P10242759937180244057.a n = A379717 (n + 1)

end A379717

/-! ## A379717.P17603899067856175329

`A063659(A004709(n+1)²)`
-/

namespace A379717.P17603899067856175329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063659 (A004709 (n + 1) ^ 2).toNat

end

end A379717.P17603899067856175329

namespace A379717

/-- `A063659(A004709(n+1)²)` -/
def P17603899067856175329.Spec : Prop :=
  ∀ n, P17603899067856175329.a n = A379717 (n + 1)

end A379717

/-!
# A379718: The second Jordan totient function applied to the cubefull numbers: a(n) = A007434(A036966(n)).

The programs for A379718, there is no canonical definition to state claims against.
-/

/-! ## A379718.P6869690343992815906

`A007434(A036966(n+1))`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379718.P6869690343992815906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007434 (A036966 (n + 1)).toNat

end

end A379718.P6869690343992815906

/-! ## A379718.P6763810266541062117

`A371412(n+1)*A371413(n+1)`
-/

namespace A379718.P6763810266541062117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A371412 (n + 1) * A371413 (n + 1)

end

end A379718.P6763810266541062117

/-! ## A379718.P3125491194578719174

`A379716(A371185(n+1))`
-/

namespace A379718.P3125491194578719174
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379716 (A371185 (n + 1)).toNat

end

end A379718.P3125491194578719174

/-! ## A379718.P9255079768316886230

`A000010(A036966(n+1))*A371413(n+1)`
-/

namespace A379718.P9255079768316886230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A036966 (n + 1)).toNat * A371413 (n + 1)

end

end A379718.P9255079768316886230

/-! ## A379718.P3670700972558656048

`A000010(A036966(n+1))*A323332(A371185(n+1))`
-/

namespace A379718.P3670700972558656048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A036966 (n + 1)).toNat * A323332 (A371185 (n + 1)).toNat

end

end A379718.P3670700972558656048

/-! ## A379718.P4743858657552706941

`A001615(A036966(n+1))*A371412(n+1)`
-/

namespace A379718.P4743858657552706941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001615 (A036966 (n + 1)).toNat * A371412 (n + 1)

end

end A379718.P4743858657552706941

/-!
# A379720: Except a(0)=1 and a(4)=0, number of integer partitions of n with no 1's and at least two parts.

The programs for A379720, there is no canonical definition to state claims against.
-/

/-! ## A379720.P16434134413577540377

`A002865(n)-A240871(A276970(n+1))`
-/

namespace A379720.P16434134413577540377
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A240871 (A276970 (n + 1)).toNat

end

end A379720.P16434134413577540377

/-! ## A379720.P2025075189765264344

`A085811(n+3)-A294619(A018783(n))`
-/

namespace A379720.P2025075189765264344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) - A294619 (A018783 n).toNat

end

end A379720.P2025075189765264344

/-! ## A379720.P13095402951924010349

`A085811(n+3)-A294619(A000701(n))`
-/

namespace A379720.P13095402951924010349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085811 (n + 3) - A294619 (A000701 n).toNat

end

end A379720.P13095402951924010349

/-! ## A379720.P14070261462878245298

`A002865(n)-A124010(A085158(n))`
-/

namespace A379720.P14070261462878245298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A124010 (A085158 n).toNat

end

end A379720.P14070261462878245298

/-! ## A379720.P10961099455952630282

`A002865(n)-A124010(A238014(n))`
-/

namespace A379720.P10961099455952630282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002865 n - A124010 (A238014 n).toNat

end

end A379720.P10961099455952630282

/-!
# A379721: Numbers whose prime indices have sum <= product.

The programs for A379721, there is no canonical definition to state claims against.
-/

/-! ## A379721.P18254639639713648241

`comp[2*comp[A325037(n+1)]]`
-/

namespace A379721.P18254639639713648241
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A379721.P18254639639713648241

/-! ## A379721.P10590922190602723695

`comp[A325038(n+1)-1]+1`
-/

namespace A379721.P10590922190602723695
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325038 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A379721.P10590922190602723695

/-! ## A379721.P1642980154500541989

`comp[A005843(comp[A325037(n+1)])]`
-/

namespace A379721.P1642980154500541989
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

open Classical in
def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 (SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ (x : ℤ)) n)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n

end

end A379721.P1642980154500541989

/-! ## A379721.P6237488842927816483

`comp[A023443(A325038(n+1))]+1`
-/

namespace A379721.P6237488842927816483
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A325038 (n + 1)).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A379721.P6237488842927816483

/-! ## A379721.P11054446673742859441

`comp[∪[A325038(n+1), A213045(n)]]`
-/

namespace A379721.P11054446673742859441
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325038 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A213045 n

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A379721.P11054446673742859441

/-! ## A379721.P12930760404722562196

`∪[A301987(n+1), A325037(n+1)]`
-/

namespace A379721.P12930760404722562196
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379721.P12930760404722562196

/-! ## A379721.P5675669153554338884

`∪[A325037(n+1), A326149(n+1)]`
-/

namespace A379721.P5675669153554338884
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A326149 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379721.P5675669153554338884

/-! ## A379721.P6887240943712371068

`lt[A153881(3*n+4), A325036(n+1)]+1`
-/

namespace A379721.P6887240943712371068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153881 (3 * n + 4)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1

end

end A379721.P6887240943712371068

/-!
# A379722: Numbers whose prime indices do not have the same sum as product.

The programs for A379722, there is no canonical definition to state claims against.
-/

/-! ## A379722.P7104489333839616905

`comp[A301987(n+1)-1]+1`
-/

namespace A379722.P7104489333839616905
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A379722.P7104489333839616905

/-! ## A379722.P16123094568423680798

`∪[A325037(n+1), A325038(n+1)]`
-/

namespace A379722.P16123094568423680798
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325037 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325038 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A379722.P16123094568423680798

/-! ## A379722.P8974798555337929553

`∩[A018252(n+1), comp[A301987(n+1)]]`
-/

namespace A379722.P8974798555337929553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f3 j ≠ (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A379722.P8974798555337929553

/-! ## A379722.P11284757881161308405

`comp[∪[A023087(n+1), A301987(n+1)]]`
-/

namespace A379722.P11284757881161308405
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023087 (n + 1)

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A301987 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f2 j = (x : ℤ)) ∨ ∃ j, f3 j = (x : ℤ)) n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n

end

end A379722.P11284757881161308405

/-! ## A379722.P4172439392823111688

`comp[lt[A325036(A028310(n))², 1]-1]+1`
-/

namespace A379722.P4172439392823111688
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (A028310 n).toNat ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n : ℤ) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A379722.P4172439392823111688

/-! ## A379722.P6710809059278337375

`comp[A020725(lt[A325036(n+1)², 1])-1]+1`
-/

namespace A379722.P6710809059278337375
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325036 (n + 1) ^ 2

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n) - 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1

end

end A379722.P6710809059278337375

/-! ## A379722.P5345091594095053768

`A018252(lt[A000925(n), A271026(n)])`
-/

namespace A379722.P5345091594095053768
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000925 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A271026 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379722.P5345091594095053768

/-!
# A379723: Possible values of the sum of squares of divisors function (A001157).

The programs for A379723, there is no canonical definition to state claims against.
-/

/-! ## A379723.P1914480080091516323

`∑{d}[lt[n-5, A342376(2*(n+2))]+1, #²]`
-/

namespace A379723.P1914480080091516323
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 5

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342376 (2 * (n + 2))

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), d ^ 2

end

end A379723.P1914480080091516323

/-! ## A379723.P17460885689900291799

`A001157(record[A335458(n)])`
-/

namespace A379723.P17460885689900291799
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335458 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379723.P17460885689900291799

/-! ## A379723.P5892019520124574877

`A069293(A243497(n)²²)`
-/

namespace A379723.P5892019520124574877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069293 ((A243497 n ^ 2) ^ 2).toNat

end

end A379723.P5892019520124574877

/-! ## A379723.P10433079768451866539

`A001157(record[A133255(n+1)])`
-/

namespace A379723.P10433079768451866539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133255 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001157 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat

end

end A379723.P10433079768451866539

/-! ## A379723.P7314960385196808127

`record[A035316(A325394(n+1))]`
-/

namespace A379723.P7314960385196808127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035316 (A325394 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A379723.P7314960385196808127

/-!
# A379724: a(n) = A000668(n) - 1.

The programs for A379724, there is no canonical definition to state claims against.
-/

/-! ## A379724.P3913790014005502410

`A000668(n+1)-1`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379724.P3913790014005502410
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000668 (n + 1) - 1

end

end A379724.P3913790014005502410

/-! ## A379724.P12683048836888503959

`A343733(n+2)-1`
-/

namespace A379724.P12683048836888503959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A343733 (n + 2) - 1

end

end A379724.P12683048836888503959

/-! ## A379724.P11696800322665506802

`A239546(n+1)-3`
-/

namespace A379724.P11696800322665506802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239546 (n + 1) - 3

end

end A379724.P11696800322665506802

/-! ## A379724.P2185092608951209283

`floor(sqrt(A139223(n+1)))`
-/

namespace A379724.P2185092608951209283
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A139223 (n + 1))

end

end A379724.P2185092608951209283

/-! ## A379724.P13618542081061674579

`sqrt(A133049(n+1))-1`
-/

namespace A379724.P13618542081061674579
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A133049 (n + 1) : ℝ) - 1

end

end A379724.P13618542081061674579

/-!
# A379725: a(n) = A023900(n*A000396(n)).

The programs for A379725, there is no canonical definition to state claims against.
-/

/-! ## A379725.P6865324679927076093

`(A000668(n+1)-1)*A023900(A000265(n+1))`
-/

namespace A379725.P6865324679927076093
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000668 (n + 1) - 1) * A023900 (A000265 (n + 1)).toNat

end

end A379725.P6865324679927076093

/-!
# A379726: Minimum number of kings that must be placed on an n X n chessboard such that each square is attacked or occupied by at least two kings.

The programs for A379726, there is no canonical definition to state claims against.
-/

/-! ## A379726.P3573225438403520300

`A093353(∑[n²%3]+1)`
-/

namespace A379726.P3573225438403520300
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2 % 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 (∑ j ∈ Finset.range (n + 1), f1 j + 1)

end

end A379726.P3573225438403520300

/-! ## A379726.P7917929241987336576

`A093353(∑[abs(A163810(n))])`
-/

namespace A379726.P7917929241987336576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163810 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A379726.P7917929241987336576

/-! ## A379726.P3535265044709266045

`A093353(∑[A163810(n)²])`
-/

namespace A379726.P3535265044709266045
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163810 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A379726.P3535265044709266045

/-! ## A379726.P17913532304307394347

`A079326(A004523(n+4))+1`
-/

namespace A379726.P17913532304307394347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A079326 (A004523 (n + 4)).toNat + 1

end

end A379726.P17913532304307394347

/-! ## A379726.P12469151050589433559

`A093353(n+1-A002264(n))`
-/

namespace A379726.P12469151050589433559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 ((n + 1 : ℤ) - A002264 n).toNat

end

end A379726.P12469151050589433559

/-! ## A379726.P9677352767719701664

`A093353(A086161(2*(n+2))-1)`
-/

namespace A379726.P9677352767719701664
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093353 (A086161 (2 * (n + 2)) - 1).toNat

end

end A379726.P9677352767719701664

/-! ## A379726.P2909374627082117337

`A086161(A005843(n+2))*A086161(n)`
-/

namespace A379726.P2909374627082117337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A005843 (n + 2)).toNat * A086161 n

end

end A379726.P2909374627082117337

/-! ## A379726.P17509012100418717079

`A086161(A047261(n+2))*A086161(n)`
-/

namespace A379726.P17509012100418717079
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A086161 (A047261 (n + 2)).toNat * A086161 n

end

end A379726.P17509012100418717079

/-! ## A379726.P11772195451600785799

`A002264(n+4)*A008620(A005818(n+1))`
-/

namespace A379726.P11772195451600785799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (n + 4) * A008620 (A005818 (n + 1)).toNat

end

end A379726.P11772195451600785799

/-! ## A379726.P3424726738314193541

`A004523(n+4)*A008621(A063200(n+1))`
-/

namespace A379726.P3424726738314193541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004523 (n + 4) * A008621 (A063200 (n + 1)).toNat

end

end A379726.P3424726738314193541

/-!
# A379728: Absolute value of first differences of paperfolding sequence A014577.

The programs for A379728, the canonical program `A379728.P7822751634517358611` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379728 has offset 1).

The definition of A379728 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379728.P7822751634517358611

`abs(A343173(n))`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A379728

/-- `abs(A343173(n))` -/
def P7822751634517358611.Spec : Prop :=
  ∀ n, P7822751634517358611.a n = A379728 (n + 1)

theorem P7822751634517358611.correct : P7822751634517358611.Spec := by
  intro n
  simp only [A379728, Nat.add_sub_cancel]

end A379728

/-! ## A379728.P18302902144674161516

`and(1, A108715(n))`
-/

namespace A379728.P18302902144674161516
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A108715 n)

end

end A379728.P18302902144674161516

namespace A379728

/-- `and(1, A108715(n))` -/
def P18302902144674161516.Spec : Prop :=
  ∀ n, P18302902144674161516.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P14531851608781513879

`abs(Δ[A014577(n)])`
-/

namespace A379728.P14531851608781513879
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A379728.P14531851608781513879

namespace A379728

/-- `abs(Δ[A014577(n)])` -/
def P14531851608781513879.Spec : Prop :=
  ∀ n, P14531851608781513879.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P3232772648662352988

`abs(Δ[A014707(n)])`
-/

namespace A379728.P3232772648662352988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014707 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A379728.P3232772648662352988

namespace A379728

/-- `abs(Δ[A014707(n)])` -/
def P3232772648662352988.Spec : Prop :=
  ∀ n, P3232772648662352988.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P847290266004717521

`abs(Δ[A014709(n)])`
-/

namespace A379728.P847290266004717521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014709 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A379728.P847290266004717521

namespace A379728

/-- `abs(Δ[A014709(n)])` -/
def P847290266004717521.Spec : Prop :=
  ∀ n, P847290266004717521.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P16432006261852179482

`abs(Δ[A014710(n)])`
-/

namespace A379728.P16432006261852179482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014710 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A379728.P16432006261852179482

namespace A379728

/-- `abs(Δ[A014710(n)])` -/
def P16432006261852179482.Spec : Prop :=
  ∀ n, P16432006261852179482.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P5643840372599083799

`3%A088435(n+1)`
-/

namespace A379728.P5643840372599083799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (A088435 (n + 1))

end

end A379728.P5643840372599083799

namespace A379728

/-- `3%A088435(n+1)` -/
def P5643840372599083799.Spec : Prop :=
  ∀ n, P5643840372599083799.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P4961749832376796836

`val(A004200(n+2), 3)`
-/

namespace A379728.P4961749832376796836
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A004200 (n + 2)).toNat 3

end

end A379728.P4961749832376796836

namespace A379728

/-- `val(A004200(n+2), 3)` -/
def P4961749832376796836.Spec : Prop :=
  ∀ n, (P4961749832376796836.a n : ℤ) = A379728 (n + 1)

end A379728

/-! ## A379728.P3932970749557393203

`val(A006464(n+2), 4)`
-/

namespace A379728.P3932970749557393203
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A006464 (n + 2)).toNat 4

end

end A379728.P3932970749557393203

namespace A379728

/-- `val(A006464(n+2), 4)` -/
def P3932970749557393203.Spec : Prop :=
  ∀ n, (P3932970749557393203.a n : ℤ) = A379728 (n + 1)

end A379728

/-! ## A379728.P13875119067011589043

`val(A007400(n+3), 4)`
-/

namespace A379728.P13875119067011589043
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (A007400 (n + 3)).toNat 4

end

end A379728.P13875119067011589043

namespace A379728

/-- `val(A007400(n+3), 4)` -/
def P13875119067011589043.Spec : Prop :=
  ∀ n, (P13875119067011589043.a n : ℤ) = A379728 (n + 1)

end A379728

/-! ## A379728.P10036146852463191780

`Δ[gcd(2, A025480(n))]²`
-/

namespace A379728.P10036146852463191780
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A025480 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) ^ 2

end

end A379728.P10036146852463191780

namespace A379728

/-- `Δ[gcd(2, A025480(n))]²` -/
def P10036146852463191780.Spec : Prop :=
  ∀ n, P10036146852463191780.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P4111367528836675311

`gcd(A002483(n), A343173(n))`
-/

namespace A379728.P4111367528836675311
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A002483 n) (A343173 n)

end

end A379728.P4111367528836675311

namespace A379728

/-- `gcd(A002483(n), A343173(n))` -/
def P4111367528836675311.Spec : Prop :=
  ∀ n, (P4111367528836675311.a n : ℤ) = A379728 (n + 1)

end A379728

/-! ## A379728.P5577936935721649217

`lcm(A010194(n), A343173(n))`
-/

namespace A379728.P5577936935721649217
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010194 n) (A343173 n)

end

end A379728.P5577936935721649217

namespace A379728

/-- `lcm(A010194(n), A343173(n))` -/
def P5577936935721649217.Spec : Prop :=
  ∀ n, (P5577936935721649217.a n : ℤ) = A379728 (n + 1)

end A379728

/-! ## A379728.P5964894673556726521

`and(A010162(n), A343173(n))`
-/

namespace A379728.P5964894673556726521
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A010162 n) (A343173 n)

end

end A379728.P5964894673556726521

namespace A379728

/-- `and(A010162(n), A343173(n))` -/
def P5964894673556726521.Spec : Prop :=
  ∀ n, P5964894673556726521.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P17404140410281519078

`and(A040292(n), A343173(n))`
-/

namespace A379728.P17404140410281519078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040292 n) (A343173 n)

end

end A379728.P17404140410281519078

namespace A379728

/-- `and(A040292(n), A343173(n))` -/
def P17404140410281519078.Spec : Prop :=
  ∀ n, P17404140410281519078.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P6478708849201601995

`and(A040324(n), A343173(n))`
-/

namespace A379728.P6478708849201601995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040324 n) (A343173 n)

end

end A379728.P6478708849201601995

namespace A379728

/-- `and(A040324(n), A343173(n))` -/
def P6478708849201601995.Spec : Prop :=
  ∀ n, P6478708849201601995.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P12130985621662272436

`and(A040365(n), A343173(n))`
-/

namespace A379728.P12130985621662272436
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040365 n) (A343173 n)

end

end A379728.P12130985621662272436

namespace A379728

/-- `and(A040365(n), A343173(n))` -/
def P12130985621662272436.Spec : Prop :=
  ∀ n, P12130985621662272436.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P13231124606499954176

`and(A040411(n), A343173(n))`
-/

namespace A379728.P13231124606499954176
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040411 n) (A343173 n)

end

end A379728.P13231124606499954176

namespace A379728

/-- `and(A040411(n), A343173(n))` -/
def P13231124606499954176.Spec : Prop :=
  ∀ n, P13231124606499954176.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P2033510904900881616

`and(A040531(n), A343173(n))`
-/

namespace A379728.P2033510904900881616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040531 n) (A343173 n)

end

end A379728.P2033510904900881616

namespace A379728

/-- `and(A040531(n), A343173(n))` -/
def P2033510904900881616.Spec : Prop :=
  ∀ n, P2033510904900881616.a n = A379728 (n + 1)

end A379728

/-! ## A379728.P11459313498708722946

`and(A040628(n), A343173(n))`
-/

namespace A379728.P11459313498708722946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A040628 n) (A343173 n)

end

end A379728.P11459313498708722946

namespace A379728

/-- `and(A040628(n), A343173(n))` -/
def P11459313498708722946.Spec : Prop :=
  ∀ n, P11459313498708722946.a n = A379728 (n + 1)

end A379728

/-!
# A379729: Ending positions of runs of identical terms in A157196.

The programs for A379729, there is no canonical definition to state claims against.
-/

/-! ## A379729.P4562952947728050325

`∑[A379704(n+1)]`
-/

namespace A379729.P4562952947728050325
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379704 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379729.P4562952947728050325

/-! ## A379729.P13319974519385032187

`a(n-1)+A040001(n+2)*A157196(n+1)` with `a(0)=2, a(1)=3`
-/

namespace A379729.P13319974519385032187
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  a (n - 1) + A040001 (n + 2) * A157196 (n + 1)

end

end A379729.P13319974519385032187

/-!
# A379731: List of y coordinates of prime numbers in the Cartesian grid defined in A379643.

The programs for A379731, there is no canonical definition to state claims against.
-/

/-! ## A379731.P47802599838705619

`∑[A128130(A000040(n+1))]`
-/

namespace A379731.P47802599838705619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 (A000040 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379731.P47802599838705619

/-! ## A379731.P6953446173781057486

`∑[-A101455(A130291(n+1))]`
-/

namespace A379731.P6953446173781057486
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A101455 (A130291 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379731.P6953446173781057486

/-! ## A379731.P10130719430148786420

`∑[A128130(record[A348907(n+2)])]`
-/

namespace A379731.P10130719430148786420
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348907 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 (f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379731.P10130719430148786420

/-! ## A379731.P1162874130848283412

`∑[A128130(A006093(n+1)+1)]`
-/

namespace A379731.P1162874130848283412
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128130 (A006093 (n + 1) + 1).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379731.P1162874130848283412

/-! ## A379731.P5940157144080060994

`∑[A075553(A008864(n+1))]-1`
-/

namespace A379731.P5940157144080060994
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075553 (A008864 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A379731.P5940157144080060994

/-! ## A379731.P765655985035547466

`∑[A014017(A000040(n+1)+3)]`
-/

namespace A379731.P765655985035547466
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014017 (A000040 (n + 1) + 3).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379731.P765655985035547466

/-! ## A379731.P2010840715927989695

`(A321861(n+1)+A320858(n+1))/2`
-/

namespace A379731.P2010840715927989695
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A321861 (n + 1) + A320858 (n + 1) : ℚ) / 2

end

end A379731.P2010840715927989695

/-! ## A379731.P10021313565205663414

`A379643(n+1)+A320858(n+1)`
-/

namespace A379731.P10021313565205663414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379643 (n + 1) + A320858 (n + 1)

end

end A379731.P10021313565205663414

/-! ## A379731.P10378881380391884009

`A321861(n+1)-A379643(n+1)`
-/

namespace A379731.P10378881380391884009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321861 (n + 1) - A379643 (n + 1)

end

end A379731.P10378881380391884009

/-!
# A379732: Decimal expansion of 207/208.

The programs for A379732, the canonical program `A379732.P15172099030873058908` is in `Seq.B001.C013`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379732 has offset 0).

The definition of A379732 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379732.P15172099030873058908

`9-A021212(n)`

The canonical program, it is in `Seq.B001.C013`.
-/

namespace A379732

/-- `9-A021212(n)` -/
def P15172099030873058908.Spec : Prop :=
  ∀ n, P15172099030873058908.a n = A379732 n

theorem P15172099030873058908.correct : P15172099030873058908.Spec := by
  intro n
  simp only [A379732]

end A379732

/-!
# A379733: Number of strict integer partitions of n whose product of parts is a multiple of n.

The programs for A379733, there is no canonical definition to state claims against.
-/

/-! ## A379733.P11653465467616525931

`A380221(n+1)+A379735(n+1)`
-/

namespace A379733.P11653465467616525931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380221 (n + 1) + A379735 (n + 1)

end

end A379733.P11653465467616525931

/-! ## A379733.P15394446951921540465

`A318559(A318559(n+1)^A110657(n))`
-/

namespace A379733.P15394446951921540465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A318559 (SequenceMachineLib.roundAway ((A318559 (n + 1) : ℚ) ^ (A110657 n : ℤ))).toNat

end

end A379733.P15394446951921540465

/-! ## A379733.P10313243423929707105

`A274225(A062865(n+1)+A008277(2*(n+1)))`
-/

namespace A379733.P10313243423929707105
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274225 (A062865 (n + 1) + A008277 (2 * (n + 1))).toNat

end

end A379733.P10313243423929707105

/-!
# A379734: Number of integer partitions of n into parts > 1 whose product is a multiple of n.

The programs for A379734, there is no canonical definition to state claims against.
-/

/-! ## A379734.P13438185474961289151

`A057568(n+1)-A379320(n)`
-/

namespace A379734.P13438185474961289151
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057568 (n + 1) - A379320 n

end

end A379734.P13438185474961289151

/-! ## A379734.P8876794140948820222

`gcd(A003415(A181821(3*n+1)), A051953(n+1))`
-/

namespace A379734.P8876794140948820222
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A003415 (A181821 (3 * n + 1)).toNat) (A051953 (n + 1))

end

end A379734.P8876794140948820222

/-!
# A379735: Number of strict integer partitions of n into parts > 1 whose product is a multiple of n.

The programs for A379735, there is no canonical definition to state claims against.
-/

/-! ## A379735.P3909219222415644715

`A379733(n+1)-A380221(n+1)`
-/

namespace A379735.P3909219222415644715
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379733 (n + 1) - A380221 (n + 1)

end

end A379735.P3909219222415644715

/-!
# A379736: Number of integer partitions of n whose product of parts is not n.

The programs for A379736, there is no canonical definition to state claims against.
-/

/-! ## A379736.P10046915683332851408

`A000688(A000079(n))-A277692(n+1)`
-/

namespace A379736.P10046915683332851408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000688 (A000079 n).toNat - A277692 (n + 1)

end

end A379736.P10046915683332851408

/-! ## A379736.P17214652556458728508

`A000041(n)-A354582(A353860(n))`
-/

namespace A379736.P17214652556458728508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A354582 (A353860 n).toNat

end

end A379736.P17214652556458728508

/-! ## A379736.P12790239273177791963

`A000041(n)-A303838(A326020(n))`
-/

namespace A379736.P12790239273177791963
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A303838 (A326020 n).toNat

end

end A379736.P12790239273177791963

/-! ## A379736.P2549708244878545883

`A000041(n)-A092523(A000041(3*n+1))`
-/

namespace A379736.P2549708244878545883
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 n - A092523 (A000041 (3 * n + 1)).toNat

end

end A379736.P2549708244878545883

/-!
# A379737: Triangle read by rows where, for n >= k, T(n,k) is the number of factorizations of n into distinct factors > 1 with sum k.

The programs for A379737, there is no canonical definition to state claims against.
-/

/-! ## A379737.P9301224426814827794

`A088699(n)%(A318950(n+1)+1)`
-/

namespace A379737.P9301224426814827794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A088699 n) (A318950 (n + 1) + 1)

end

end A379737.P9301224426814827794

/-! ## A379737.P1346523229251762381

`A010060(A128966(n)*A318950(n+1))`
-/

namespace A379737.P1346523229251762381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A128966 n * A318950 (n + 1)).toNat

end

end A379737.P1346523229251762381

/-! ## A379737.P11910020317189451041

`A091247(A005237(n+1)*A318950(n+1))`
-/

namespace A379737.P11910020317189451041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A005237 (n + 1) * A318950 (n + 1)).toNat

end

end A379737.P11910020317189451041

/-! ## A379737.P16300885973846523491

`A023532(A084648(n+1)*A318950(n+1))`
-/

namespace A379737.P16300885973846523491
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023532 (A084648 (n + 1) * A318950 (n + 1)).toNat

end

end A379737.P16300885973846523491

/-! ## A379737.P16994383453043887508

`A091247(A098350(n+1)*A318950(n+1))`
-/

namespace A379737.P16994383453043887508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A091247 (A098350 (n + 1) * A318950 (n + 1)).toNat

end

end A379737.P16994383453043887508

/-! ## A379737.P14191954556371297608

`A168046(A162741(n+1)*A318950(n+1))`
-/

namespace A379737.P14191954556371297608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168046 (A162741 (n + 1) * A318950 (n + 1)).toNat

end

end A379737.P14191954556371297608

/-! ## A379737.P2950883993716044131

`A204389(A062103(n+2)^A318950(n+1))`
-/

namespace A379737.P2950883993716044131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204389 (SequenceMachineLib.roundAway ((A062103 (n + 2) : ℚ) ^ (A318950 (n + 1) : ℤ))).toNat

end

end A379737.P2950883993716044131

/-! ## A379737.P11329773058767168672

`A254114(A055229(3*n+2)*A318950(n+1))`
-/

namespace A379737.P11329773058767168672
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254114 (A055229 (3 * n + 2) * A318950 (n + 1)).toNat

end

end A379737.P11329773058767168672

/-! ## A379737.P17140779511246249451

`A010060(A318950(n+1)*A372067(n))`
-/

namespace A379737.P17140779511246249451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010060 (A318950 (n + 1) * A372067 n).toNat

end

end A379737.P17140779511246249451

/-! ## A379737.P13382588710259212252

`A138186(n+1)%A360387(n+1)`
-/

namespace A379737.P13382588710259212252
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A138186 (n + 1)) (A360387 (n + 1))

end

end A379737.P13382588710259212252

/-!
# A379739: Subdiagonal of the Hurt-Sada array.

The programs for A379739, the canonical program `A379739.P13853497522422973330` is in `Seq.B005.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379739 has offset 1).

The definition of A379739 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5472 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379739.P13853497522422973330

`A193564(2*(n+2))`

The canonical program, it is in `Seq.B005.C002`.
-/

namespace A379739

/-- `A193564(2*(n+2))` -/
def P13853497522422973330.Spec : Prop :=
  ∀ n, P13853497522422973330.a n = A379739 (n + 1)

theorem P13853497522422973330.correct : P13853497522422973330.Spec := by
  intro n
  simp only [A379739, Nat.add_sub_cancel]

end A379739

/-! ## A379739.P12309820527302429224

`A026272(2*(n+1))`
-/

namespace A379739.P12309820527302429224
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026272 (2 * (n + 1))

end

end A379739.P12309820527302429224

namespace A379739

/-- `A026272(2*(n+1))` -/
def P12309820527302429224.Spec : Prop :=
  ∀ n, P12309820527302429224.a n = A379739 (n + 1)

end A379739

/-! ## A379739.P11430986869338008254

`A026242(2*(n+2))-1`
-/

namespace A379739.P11430986869338008254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026242 (2 * (n + 2)) - 1

end

end A379739.P11430986869338008254

namespace A379739

/-- `A026242(2*(n+2))-1` -/
def P11430986869338008254.Spec : Prop :=
  ∀ n, P11430986869338008254.a n = A379739 (n + 1)

end A379739

/-! ## A379739.P17033669991772336143

`A026350(2*n+5)-2`
-/

namespace A379739.P17033669991772336143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026350 (2 * n + 5) - 2

end

end A379739.P17033669991772336143

namespace A379739

/-- `A026350(2*n+5)-2` -/
def P17033669991772336143.Spec : Prop :=
  ∀ n, P17033669991772336143.a n = A379739 (n + 1)

end A379739

/-! ## A379739.P9346998989840838156

`A057428(3*(n+1))+A026242(A274922(2*(n+2)))`
-/

namespace A379739.P9346998989840838156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057428 (3 * (n + 1)) + A026242 (A274922 (2 * (n + 2))).toNat

end

end A379739.P9346998989840838156

namespace A379739

/-- `A057428(3*(n+1))+A026242(A274922(2*(n+2)))` -/
def P9346998989840838156.Spec : Prop :=
  ∀ n, P9346998989840838156.a n = A379739 (n + 1)

end A379739

/-! ## A379739.P18077630461176647783

`A019586(A022342(2*n+5)-1)`
-/

namespace A379739.P18077630461176647783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A019586 (A022342 (2 * n + 5) - 1).toNat

end

end A379739.P18077630461176647783

namespace A379739

/-- `A019586(A022342(2*n+5)-1)` -/
def P18077630461176647783.Spec : Prop :=
  ∀ n, P18077630461176647783.a n = A379739 (n + 1)

end A379739

/-! ## A379739.P2259337593652689791

`A380079(A380079(2*(n+1)))`
-/

namespace A379739.P2259337593652689791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380079 (A380079 (2 * (n + 1))).toNat

end

end A379739.P2259337593652689791

namespace A379739

/-- `A380079(A380079(2*(n+1)))` -/
def P2259337593652689791.Spec : Prop :=
  ∀ n, P2259337593652689791.a n = A379739 (n + 1)

end A379739

/-!
# A379741: Number of cyclic edge cuts in the (2n-1)-triangular snake graph.

The programs for A379741, the canonical program `A379741.P8952409299603401326` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379741 has offset 1).

The definition of A379741 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379741.P8952409299603401326

`(8^(n+1)-6*(2*(n+1)+5)*7^(n-1)-2*5^n)/8`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A379741

/-- `(8^(n+1)-6*(2*(n+1)+5)*7^(n-1)-2*5^n)/8` -/
def P8952409299603401326.Spec : Prop :=
  ∀ n, P8952409299603401326.a n = (A379741 (n + 1) : ℚ)

end A379741

/-! ## A379741.P6617256075681787462

`A292150(A116749(n+2))`
-/

namespace A379741.P6617256075681787462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292150 (A116749 (n + 2)).toNat

end

end A379741.P6617256075681787462

namespace A379741

/-- `A292150(A116749(n+2))` -/
def P6617256075681787462.Spec : Prop :=
  ∀ n, P6617256075681787462.a n = A379741 (n + 1)

end A379741

/-!
# A379742: a(n) is the number of divisors of A000178(n).

The programs for A379742, there is no canonical definition to state claims against.
-/

/-! ## A379742.P11961188590012662018

`A316470(A124380(n))`
-/

namespace A379742.P11961188590012662018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A124380 n).toNat

end

end A379742.P11961188590012662018

/-! ## A379742.P612747166569249100

`A316470(A249561(n))`
-/

namespace A379742.P612747166569249100
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A249561 n).toNat

end

end A379742.P612747166569249100

/-! ## A379742.P9314200546971521366

`A316470(A249563(n))`
-/

namespace A379742.P9314200546971521366
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A316470 (A249563 n).toNat

end

end A379742.P9314200546971521366

/-!
# A379743: a(n) is the smallest prime whose digital sum in base n is n.

The programs for A379743, there is no canonical definition to state claims against.
-/

/-! ## A379743.P7195405118596895820

`(n+1)*A390117(n+1)+1`
-/

namespace A379743.P7195405118596895820
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A390117 (n + 1) + 1

end

end A379743.P7195405118596895820

/-! ## A379743.P3462476470835507533

`(A214123(n+2)+1)*(n+1)+1`
-/

namespace A379743.P3462476470835507533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A214123 (n + 2) + 1) * (n + 1 : ℤ) + 1

end

end A379743.P3462476470835507533

/-! ## A379743.P2361508093082594376

`A034694((n+1)*A390117(n+1))`
-/

namespace A379743.P2361508093082594376
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 ((n + 1 : ℤ) * A390117 (n + 1)).toNat

end

end A379743.P2361508093082594376

/-! ## A379743.P5604297361141660669

`A334954(A005179(n+1)*A055655(2*n+3))`
-/

namespace A379743.P5604297361141660669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A334954 (A005179 (n + 1) * A055655 (2 * n + 3)).toNat

end

end A379743.P5604297361141660669

/-!
# A379745: a(n) = Sum_{k=1..n-1} binomial(n,k)*2^(n-k-1)*(k-1).

The programs for A379745, the canonical program `A379745.P14585014263437771396` is in `Seq.B000.C040`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379745 has offset 1).

The definition of A379745 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A379745.P14585014263437771396

`(3^n-1)*(n-2)/2+2^n-1`

The canonical program, it is in `Seq.B000.C040`.
-/

namespace A379745

/-- `(3^n-1)*(n-2)/2+2^n-1` -/
def P14585014263437771396.Spec : Prop :=
  ∀ n, P14585014263437771396.a n = (A379745 (n + 1) : ℚ)

end A379745

/-! ## A379745.P3718498631216209245

`A330407(A368344(n+1))`
-/

namespace A379745.P3718498631216209245
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330407 (A368344 (n + 1)).toNat

end

end A379745.P3718498631216209245

namespace A379745

/-- `A330407(A368344(n+1))` -/
def P3718498631216209245.Spec : Prop :=
  ∀ n, P3718498631216209245.a n = A379745 (n + 1)

end A379745

/-!
# A379746: a(1)=1. For n>1 if a(n-1)=A002110(k), a(n)=prime(k+1). Otherwise a(n) is the smallest novel number whose prime factors have already occurred as previous terms.

The programs for A379746, there is no canonical definition to state claims against.
-/

/-! ## A379746.P6355024751662120874

`A051037(n+1)-A016117(A210725(n+1))`
-/

namespace A379746.P6355024751662120874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051037 (n + 1) - A016117 (A210725 (n + 1)).toNat

end

end A379746.P6355024751662120874

/-!
# A379748: a(n) is the number of ways to arrange any number of unit square cells into an i X j rectangle which contains exactly n square subarrays of all sizes.

The programs for A379748, there is no canonical definition to state claims against.
-/

/-! ## A379748.P13622875460060087777

`gcd(A102283(2*(n+2)), A237442(A217650(n+1)))`
-/

namespace A379748.P13622875460060087777
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A102283 (2 * (n + 2))) (A237442 (A217650 (n + 1)).toNat)

end

end A379748.P13622875460060087777

/-! ## A379748.P9567499001037369787

`A249822(gcd(A333698(2*(n+2)), A382775(n)))`
-/

namespace A379748.P9567499001037369787
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249822 (Int.gcd (A333698 (2 * (n + 2))) (A382775 n))

end

end A379748.P9567499001037369787

/-! ## A379748.P15478925642359524236

`A074093(A304136(n+2))`
-/

namespace A379748.P15478925642359524236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074093 (A304136 (n + 2)).toNat

end

end A379748.P15478925642359524236

/-! ## A379748.P8093252160739653612

`A239140(A007956(n+2))`
-/

namespace A379748.P8093252160739653612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A239140 (A007956 (n + 2)).toNat

end

end A379748.P8093252160739653612

/-!
# A379749: a(n) is the first prime that has digit sum n in base n and n+1 in base n+1.

The programs for A379749, there is no canonical definition to state claims against.
-/

/-! ## A379749.P5841369828341665551

`A070846(record[a(n-1)+n])` with `a(0)=2, a(1)=1`
-/

namespace A379749.P5841369828341665551
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  f1 (n - 1) + n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A379749.P5841369828341665551

/-! ## A379749.P11009612448961289905

`A070846(A028310(n)+A000124(n))`
-/

namespace A379749.P11009612448961289905
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (A028310 n + A000124 n).toNat

end

end A379749.P11009612448961289905

/-! ## A379749.P4739211400306106540

`A034694(A060798(n+2))`
-/

namespace A379749.P4739211400306106540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034694 (A060798 (n + 2)).toNat

end

end A379749.P4739211400306106540

/-! ## A379749.P768602791139791833

`A070846(eq[A102473(n+1), A264442(2*(n+1))])`
-/

namespace A379749.P768602791139791833
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102473 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264442 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070846 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A379749.P768602791139791833

/-!
# A379750: First prime of cousin prime pairs which differ, in their binary representation, by a single bit.

The programs for A379750, there is no canonical definition to state claims against.
-/

/-! ## A379750.P5138056482992574553

`filter[A015913(n+1), A131078(#)]`
-/

namespace A379750.P5138056482992574553
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A131078 (f1 j).toNat = 1) n)

end

end A379750.P5138056482992574553

/-! ## A379750.P8392264688783582426

`filter[A015913(n+1), A165211(#)]`
-/

namespace A379750.P8392264688783582426
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165211 (f1 j).toNat = 1) n)

end

end A379750.P8392264688783582426

/-! ## A379750.P17158722769431411512

`filter[A172238(n+1), A165211(#)]`
-/

namespace A379750.P17158722769431411512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172238 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A165211 (f1 j).toNat = 1) n)

end

end A379750.P17158722769431411512

/-! ## A379750.P4295079455263133680

`filter[A015913(n+1), A342892(#)]`
-/

namespace A379750.P4295079455263133680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342892 (f1 j).toNat = 1) n)

end

end A379750.P4295079455263133680

/-! ## A379750.P5673663173347395627

`filter[A015913(n+1), A391183(#)]`
-/

namespace A379750.P5673663173347395627
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A015913 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A391183 (f1 j).toNat = 1) n)

end

end A379750.P5673663173347395627

/-!
# A379753: Numbers that set records in A379752.

The programs for A379753, there is no canonical definition to state claims against.
-/

/-! ## A379753.P9249577198757017043

`A070172(A067051((n+3)²))`
-/

namespace A379753.P9249577198757017043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A070172 (A067051 ((n + 3) ^ 2)).toNat

end

end A379753.P9249577198757017043

/-!
# A379755: Orders k of groups where at least one group has a simple automorphism group.

The programs for A379755, there is no canonical definition to state claims against.
-/

/-! ## A379755.P120000010951515015

`ogf((-3+2x+2x^2+4x^3)/(-1+2x))`
-/

namespace A379755.P120000010951515015
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [3, -2, -2, -4] [1, -2] n

end

end A379755.P120000010951515015

/-! ## A379755.P8584606053194910218

`2*a(n-1)` with `a(0)=3, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A379755.P8584606053194910218
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 6, 8] fun n a =>
  2 * a (n - 1)

end

end A379755.P8584606053194910218

/-! ## A379755.P10743609457320286606

`lt[(ϕ-and(n, n-1))², n]`
-/

namespace A379755.P10743609457320286606
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (Real.goldenRatio - (Int.land (n : ℤ) ((n : ℤ) - 1) : ℝ)) ^ 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A379755.P10743609457320286606

/-! ## A379755.P6891958607460678552

`2^(n%a(n-1))` with `a(0)=3, a(1)=4, a(2)=6`
-/

namespace A379755.P6891958607460678552
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 6] fun n a =>
  2 ^ (n % a (n - 1))

end

end A379755.P6891958607460678552

/-! ## A379755.P5858081442948686901

`a(n-1)+a(n-1)` with `a(0)=3, a(1)=4, a(2)=6, a(3)=8`
-/

namespace A379755.P5858081442948686901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [3, 4, 6, 8] fun n a =>
  a (n - 1) + a (n - 1)

end

end A379755.P5858081442948686901

/-!
# A379756: a(n) is the number of subsets of S(n) that sum to A023196(n), where S(n) is the set of the proper divisors (or aliquot parts) of A023196(n).

The programs for A379756, there is no canonical definition to state claims against.
-/

/-! ## A379756.P13204214985670070802

`A072088(A394734(n+1))`
-/

namespace A379756.P13204214985670070802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072088 (A394734 (n + 1)).toNat

end

end A379756.P13204214985670070802

/-!
# A379759: Minimum number of kings that must be placed on an n X n chessboard such that each square is attacked or occupied by at least three kings.

The programs for A379759, there is no canonical definition to state claims against.
-/

/-! ## A379759.P7379054776692881475

`A001399(∑[2*n%3]+3)`
-/

namespace A379759.P7379054776692881475
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n % 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001399 (∑ j ∈ Finset.range (n + 1), f1 j + 3)

end

end A379759.P7379054776692881475

/-! ## A379759.P13756294745503585029

`A000212(floor((n+1)/3)+floor(2*(n+1)/3)+3)`
-/

namespace A379759.P13756294745503585029
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000212 (⌊(n + 1 : ℚ) / 3⌋ + ⌊2 * ((n + 1 : ℚ) / 3)⌋ + 3).toNat

end

end A379759.P13756294745503585029

/-! ## A379759.P4929446859330056757

`A201271(A130481(n)+1)`
-/

namespace A379759.P4929446859330056757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201271 (A130481 n + 1).toNat

end

end A379759.P4929446859330056757

/-! ## A379759.P8425908435056092048

`A272212(A024352(n+2))`
-/

namespace A379759.P8425908435056092048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A272212 (A024352 (n + 2)).toNat

end

end A379759.P8425908435056092048

/-! ## A379759.P12426253580049025540

`A201271(A147534(n+2))`
-/

namespace A379759.P12426253580049025540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A201271 (A147534 (n + 2)).toNat

end

end A379759.P12426253580049025540

/-! ## A379759.P8182133291832070697

`A379726(n+2)+A379726(n+2)-A075561(n+2)`
-/

namespace A379759.P8182133291832070697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379726 (n + 2) + (A379726 (n + 2) - A075561 (n + 2))

end

end A379759.P8182133291832070697

/-! ## A379759.P7756514054058552006

`A002264(A092200(n+2)²)`
-/

namespace A379759.P7756514054058552006
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002264 (A092200 (n + 2) ^ 2).toNat

end

end A379759.P7756514054058552006

/-!
# A379761: Beginning with 7, least prime such that concatenation of first n terms and its digit reversal both are primes.

The programs for A379761, there is no canonical definition to state claims against.
-/

/-! ## A379761.P11624337281908273485

`A103966(A025264(n+1))`
-/

namespace A379761.P11624337281908273485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A103966 (A025264 (n + 1)).toNat

end

end A379761.P11624337281908273485

/-!
# A379762: Products of 4 distinct prime numbers (or tetraprimes) that are abundant.

The programs for A379762, the canonical program `A379762.P18428336242211905384` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379762 has offset 1).

The definition of A379762 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 3651 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379762.P11708007431765392001

`∩[A034683(n+1), A046386(n+1)]`
-/

namespace A379762.P11708007431765392001
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P11708007431765392001

namespace A379762

/-- `∩[A034683(n+1), A046386(n+1)]` -/
def P11708007431765392001.Spec : Prop :=
  ∀ n, (P11708007431765392001.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P18428336242211905384

`∩[A046386(n+1), A087248(n+1)]`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A379762

/-- `∩[A046386(n+1), A087248(n+1)]` -/
def P18428336242211905384.Spec : Prop :=
  ∀ n, (P18428336242211905384.a n : ℤ) = A379762 (n + 1)

theorem P18428336242211905384.correct : P18428336242211905384.Spec := by
  intro n
  simp only [A379762, Nat.add_sub_cancel]

end A379762

/-! ## A379762.P8058347148214147237

`∩[A046386(n+1), A290466(n+1)]`
-/

namespace A379762.P8058347148214147237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290466 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P8058347148214147237

namespace A379762

/-- `∩[A046386(n+1), A290466(n+1)]` -/
def P8058347148214147237.Spec : Prop :=
  ∀ n, (P8058347148214147237.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P3191597014883267937

`∩[A034683(n+1), A350373(n+1)]`
-/

namespace A379762.P3191597014883267937
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A034683 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A350373 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P3191597014883267937

namespace A379762

/-- `∩[A034683(n+1), A350373(n+1)]` -/
def P3191597014883267937.Spec : Prop :=
  ∀ n, (P3191597014883267937.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P11251978588707200071

`∩[A046386(n+1), A379029(n+1)]`
-/

namespace A379762.P11251978588707200071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379029 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P11251978588707200071

namespace A379762

/-- `∩[A046386(n+1), A379029(n+1)]` -/
def P11251978588707200071.Spec : Prop :=
  ∀ n, (P11251978588707200071.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P8443486529930055904

`∩[A046386(n+1), A357685(n+1)]`
-/

namespace A379762.P8443486529930055904
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P8443486529930055904

namespace A379762

/-- `∩[A046386(n+1), A357685(n+1)]` -/
def P8443486529930055904.Spec : Prop :=
  ∀ n, (P8443486529930055904.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P2158563744523413795

`∩[A046386(n+1), A290467(n+1)]`
-/

namespace A379762.P2158563744523413795
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A290467 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P2158563744523413795

namespace A379762

/-- `∩[A046386(n+1), A290467(n+1)]` -/
def P2158563744523413795.Spec : Prop :=
  ∀ n, (P2158563744523413795.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P10594071525715181831

`∩[A046386(n+1), A198471(n+1)]`
-/

namespace A379762.P10594071525715181831
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A198471 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P10594071525715181831

namespace A379762

/-- `∩[A046386(n+1), A198471(n+1)]` -/
def P10594071525715181831.Spec : Prop :=
  ∀ n, (P10594071525715181831.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P12756782349852391549

`∩[A046386(n+1), A308127(n+1)]`
-/

namespace A379762.P12756782349852391549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308127 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P12756782349852391549

namespace A379762

/-- `∩[A046386(n+1), A308127(n+1)]` -/
def P12756782349852391549.Spec : Prop :=
  ∀ n, (P12756782349852391549.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P14883747566957818114

`filter[A046386(n+1), A294936(#)]`
-/

namespace A379762.P14883747566957818114
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A294936 (f1 j).toNat = 1) n)

end

end A379762.P14883747566957818114

namespace A379762

/-- `filter[A046386(n+1), A294936(#)]` -/
def P14883747566957818114.Spec : Prop :=
  ∀ n, P14883747566957818114.a n = A379762 (n + 1)

end A379762

/-! ## A379762.P11844600763105424835

`∩[A030634(n+1), A087248(n+1)]`
-/

namespace A379762.P11844600763105424835
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P11844600763105424835

namespace A379762

/-- `∩[A030634(n+1), A087248(n+1)]` -/
def P11844600763105424835.Spec : Prop :=
  ∀ n, (P11844600763105424835.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P9451762472771941521

`∩[A030634(n+1), A357685(n+1)]`
-/

namespace A379762.P9451762472771941521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357685 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P9451762472771941521

namespace A379762

/-- `∩[A030634(n+1), A357685(n+1)]` -/
def P9451762472771941521.Spec : Prop :=
  ∀ n, (P9451762472771941521.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P6042508847473761388

`∩[A030634(n+1), A389463(n+1)]`
-/

namespace A379762.P6042508847473761388
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P6042508847473761388

namespace A379762

/-- `∩[A030634(n+1), A389463(n+1)]` -/
def P6042508847473761388.Spec : Prop :=
  ∀ n, (P6042508847473761388.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P9585728091649393811

`∩[A046386(n+1), A360525(n+1)]`
-/

namespace A379762.P9585728091649393811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360525 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P9585728091649393811

namespace A379762

/-- `∩[A046386(n+1), A360525(n+1)]` -/
def P9585728091649393811.Spec : Prop :=
  ∀ n, (P9585728091649393811.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P11820296041175155928

`∩[A046386(n+1), A129656(n+1)]`
-/

namespace A379762.P11820296041175155928
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A129656 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P11820296041175155928

namespace A379762

/-- `∩[A046386(n+1), A129656(n+1)]` -/
def P11820296041175155928.Spec : Prop :=
  ∀ n, (P11820296041175155928.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P1355924432587415952

`∩[A046386(n+1), A335197(n+1)]`
-/

namespace A379762.P1355924432587415952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335197 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P1355924432587415952

namespace A379762

/-- `∩[A046386(n+1), A335197(n+1)]` -/
def P1355924432587415952.Spec : Prop :=
  ∀ n, (P1355924432587415952.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P17323657245508685199

`∩[A030634(n+1), A357695(n+1)]`
-/

namespace A379762.P17323657245508685199
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A030634 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P17323657245508685199

namespace A379762

/-- `∩[A030634(n+1), A357695(n+1)]` -/
def P17323657245508685199.Spec : Prop :=
  ∀ n, (P17323657245508685199.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P17267409556188149691

`∩[A046386(n+1), A357695(n+1)]`
-/

namespace A379762.P17267409556188149691
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A357695 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P17267409556188149691

namespace A379762

/-- `∩[A046386(n+1), A357695(n+1)]` -/
def P17267409556188149691.Spec : Prop :=
  ∀ n, (P17267409556188149691.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P4322205693384364473

`∩[A033993(n+1), A087248(n+1)]`
-/

namespace A379762.P4322205693384364473
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A087248 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P4322205693384364473

namespace A379762

/-- `∩[A033993(n+1), A087248(n+1)]` -/
def P4322205693384364473.Spec : Prop :=
  ∀ n, (P4322205693384364473.a n : ℤ) = A379762 (n + 1)

end A379762

/-! ## A379762.P11745819321801454385

`∩[A033993(n+1), A389463(n+1)]`
-/

namespace A379762.P11745819321801454385
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033993 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A389463 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A379762.P11745819321801454385

namespace A379762

/-- `∩[A033993(n+1), A389463(n+1)]` -/
def P11745819321801454385.Spec : Prop :=
  ∀ n, (P11745819321801454385.a n : ℤ) = A379762 (n + 1)

end A379762

/-!
# A379763: G.f. A(x) satisfies 1/2 = Sum_{n=-oo..+oo} x^n * (A(x) + x^n)^(n-1).

The programs for A379763, there is no canonical definition to state claims against.
-/

/-! ## A379763.P6487200003054621246

`A138666(A059837(n+1)+A019298(n))`
-/

namespace A379763.P6487200003054621246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A138666 (A059837 (n + 1) + A019298 n).toNat

end

end A379763.P6487200003054621246

/-!
# A379764: G.f. A(x) satisfies Sum_{n=-oo..+oo} (4^n*A(x)^n - 4*A(x))^(n+1) = 2*theta_4(x) = 2*Sum_{n=-oo..+oo} (-x)^(n^2).

The programs for A379764, there is no canonical definition to state claims against.
-/

/-! ## A379764.P15013624862894531629

`A008619(A000225(2*n+1)*A320444(n))`
-/

namespace A379764.P15013624862894531629
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A000225 (2 * n + 1) * A320444 n).toNat

end

end A379764.P15013624862894531629

/-!
# A379765: G.f. A(x) satisfies 1/2 = Sum_{n=-oo..+oo} (-1)^n * x^(2*n) * (A(x) + (-x)^n)^(2*n-1).

The programs for A379765, there is no canonical definition to state claims against.
-/

/-! ## A379765.P11242009040572632314

`A100180(A028270(n))`
-/

namespace A379765.P11242009040572632314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100180 (A028270 n).toNat

end

end A379765.P11242009040572632314

/-!
# A379766: Minimum number of kings that must be placed on an n X n chessboard such that each square is attacked or occupied by at least four kings.

The programs for A379766, there is no canonical definition to state claims against.
-/

/-! ## A379766.P6287200241230043977

`A065730(2*n+3)-A046660(A296444(n+2))`
-/

namespace A379766.P6287200241230043977
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065730 (2 * n + 3) - A046660 (A296444 (n + 2)).toNat

end

end A379766.P6287200241230043977

/-! ## A379766.P4664371353244635290

`A065730(2*n+3)-A007949(A174074(n))`
-/

namespace A379766.P4664371353244635290
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065730 (2 * n + 3) - A007949 (A174074 n).toNat

end

end A379766.P4664371353244635290

/-!
# A379767: Triangle read by rows: row n lists numbers which are the n-th powers of their digit sum.

The programs for A379767, there is no canonical definition to state claims against.
-/

/-! ## A379767.P7401962892307275697

`A080867(n)^A080876(A359900(n))`
-/

namespace A379767.P7401962892307275697
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A080867 n : ℚ) ^ (A080876 (A359900 n).toNat : ℤ)

end

end A379767.P7401962892307275697

/-!
# A379769: a(n) = (A006218(n) mod n).

The programs for A379769, the canonical program `A379769.P2860525123367169776` is in `Seq.B003.C005`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379769 has offset 1).

The definition of A379769 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A006218(n+1)%(n+1)` (program `A379769.P2860525123367169776`, by `A379769.P2860525123367169776.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A379769.P2860525123367169776

`A006218(n+1)%(n+1)`

The canonical program, it is in `Seq.B003.C005`.
-/

namespace A379769

/-- `A006218(n+1)%(n+1)` -/
def P2860525123367169776.Spec : Prop :=
  ∀ n, P2860525123367169776.a n = A379769 (n + 1)

theorem P2860525123367169776.correct : P2860525123367169776.Spec := by
  intro n
  simp only [A379769, Nat.add_sub_cancel]

end A379769

/-! ## A379769.P9402370930965686627

`∑[∏{e}[n+1, #+1]]%(n+1)`
-/

namespace A379769.P9402370930965686627
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), (Nat.factorization (f2 n) p + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A379769.P9402370930965686627

namespace A379769

/-- `∑[∏{e}[n+1, #+1]]%(n+1)` -/
def P9402370930965686627.Spec : Prop :=
  ∀ n, (P9402370930965686627.a n : ℤ) = A379769 (n + 1)

end A379769

/-! ## A379769.P2578253186803476350

`∑[∑{d}[n+1, gcd(n, #)]]%(n+1)`
-/

namespace A379769.P2578253186803476350
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), Nat.gcd n d

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j) % (n + 1)

end

end A379769.P2578253186803476350

namespace A379769

/-- `∑[∑{d}[n+1, gcd(n, #)]]%(n+1)` -/
def P2578253186803476350.Spec : Prop :=
  ∀ n, (P2578253186803476350.a n : ℤ) = A379769 (n + 1)

end A379769

/-! ## A379769.P12007058455108697381

`∑[∑{d}[n+1, ceil(1/#)]]%(n+1)`
-/

namespace A379769.P12007058455108697381
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f2 n), ⌈1 / (d : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A379769.P12007058455108697381

namespace A379769

/-- `∑[∑{d}[n+1, ceil(1/#)]]%(n+1)` -/
def P12007058455108697381.Spec : Prop :=
  ∀ n, P12007058455108697381.a n = A379769 (n + 1)

end A379769

/-! ## A379769.P11206566976281360911

`A002541(n+1)%(n+1)`
-/

namespace A379769.P11206566976281360911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A002541 (n + 1)) (n + 1 : ℤ)

end

end A379769.P11206566976281360911

namespace A379769

/-- `A002541(n+1)%(n+1)` -/
def P11206566976281360911.Spec : Prop :=
  ∀ n, P11206566976281360911.a n = A379769 (n + 1)

end A379769

/-! ## A379769.P855321495264178882

`A156745(n+1)%(n+1)`
-/

namespace A379769.P855321495264178882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A156745 (n + 1)) (n + 1 : ℤ)

end

end A379769.P855321495264178882

namespace A379769

/-- `A156745(n+1)%(n+1)` -/
def P855321495264178882.Spec : Prop :=
  ∀ n, P855321495264178882.a n = A379769 (n + 1)

end A379769

/-! ## A379769.P5513593950113087243

`∑[A000005(n+1)]%(n+1)`
-/

namespace A379769.P5513593950113087243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (n + 1 : ℤ)

end

end A379769.P5513593950113087243

namespace A379769

/-- `∑[A000005(n+1)]%(n+1)` -/
def P5513593950113087243.Spec : Prop :=
  ∀ n, P5513593950113087243.a n = A379769 (n + 1)

end A379769

/-!
# A379770: Irregular triangle T(j,k) read by rows: split the natural numbers m > 1 into groups of length 2^s and then sort each group in the order defined in A019565.

The programs for A379770, there is no canonical definition to state claims against.
-/

/-! ## A379770.P4281397819500233906

`A048675(A339195(n+1))`
-/

namespace A379770.P4281397819500233906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048675 (A339195 (n + 1)).toNat

end

end A379770.P4281397819500233906

/-!
# A379771: Number of k <= n that are neither squarefree nor prime powers.

The programs for A379771, the canonical program `A379771.P2244188807561407627` is in `Seq.B002.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A379771 has offset 1).

The definition of A379771 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A379771.P2244188807561407627

`∑[A355447(n+1)]`

The canonical program, it is in `Seq.B002.C007`.
-/

namespace A379771

/-- `∑[A355447(n+1)]` -/
def P2244188807561407627.Spec : Prop :=
  ∀ n, P2244188807561407627.a n = A379771 (n + 1)

theorem P2244188807561407627.correct : P2244188807561407627.Spec := by
  intro n
  simp only [A379771, Nat.add_sub_cancel]

end A379771

/-! ## A379771.P17667774234024450545

`∑[char[A126706(n+1)-1]]`
-/

namespace A379771.P17667774234024450545
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126706 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379771.P17667774234024450545

namespace A379771

/-- `∑[char[A126706(n+1)-1]]` -/
def P17667774234024450545.Spec : Prop :=
  ∀ n, (P17667774234024450545.a n : ℤ) = A379771 (n + 1)

end A379771

/-! ## A379771.P12064717610908503851

`A057627(n+1)-A069637(n+1)`
-/

namespace A379771.P12064717610908503851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A057627 (n + 1) - A069637 (n + 1)

end

end A379771.P12064717610908503851

namespace A379771

/-- `A057627(n+1)-A069637(n+1)` -/
def P12064717610908503851.Spec : Prop :=
  ∀ n, P12064717610908503851.a n = A379771 (n + 1)

end A379771

/-! ## A379771.P8985164880756591496

`A085970(n+1)-A387944(n+1)`
-/

namespace A379771.P8985164880756591496
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085970 (n + 1) - A387944 (n + 1)

end

end A379771.P8985164880756591496

namespace A379771

/-- `A085970(n+1)-A387944(n+1)` -/
def P8985164880756591496.Spec : Prop :=
  ∀ n, P8985164880756591496.a n = A379771 (n + 1)

end A379771

/-! ## A379771.P7265639432963071188

`A356068(n+1)-A209628(n+1)`
-/

namespace A379771.P7265639432963071188
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A356068 (n + 1) - A209628 (n + 1)

end

end A379771.P7265639432963071188

namespace A379771

/-- `A356068(n+1)-A209628(n+1)` -/
def P7265639432963071188.Spec : Prop :=
  ∀ n, P7265639432963071188.a n = A379771 (n + 1)

end A379771

/-!
# A379772: Number of pairs (d, k/d), d | k, d < k/d, such that gcd(d, k/d) is not in {1, d, k/d} and either rad(d) | k/d or rad(k/d) | d, where k = A378767(n).

The programs for A379772, there is no canonical definition to state claims against.
-/

/-! ## A379772.P17201150128867551280

`gcd(A125106(n+1), A334354(n+1))`
-/

namespace A379772.P17201150128867551280
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A125106 (n + 1)) (A334354 (n + 1))

end

end A379772.P17201150128867551280

/-! ## A379772.P16986561985486842510

`A000034(A036873(n+1)*A043493(3*(n+1)))`
-/

namespace A379772.P16986561985486842510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000034 (A036873 (n + 1) * A043493 (3 * (n + 1))).toNat

end

end A379772.P16986561985486842510

/-! ## A379772.P11705051620195755316

`gcd(A301744(n+1), A322351(n+1))`
-/

namespace A379772.P11705051620195755316
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A301744 (n + 1)) (A322351 (n + 1))

end

end A379772.P11705051620195755316

/-! ## A379772.P3548183140031381790

`gcd(A361659(n+1), A367579(n+1))`
-/

namespace A379772.P3548183140031381790
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A361659 (n + 1)) (A367579 (n + 1))

end

end A379772.P3548183140031381790

/-! ## A379772.P11064498669303592545

`gcd(A034083(n+2), A256688(n+1))`
-/

namespace A379772.P11064498669303592545
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A034083 (n + 2)) (A256688 (n + 1))

end

end A379772.P11064498669303592545

/-!
# A379773: Numbers that set records in A379772.

The programs for A379773, there is no canonical definition to state claims against.
-/

/-! ## A379773.P2892002070808184848

`A005934(2*n+3)*A186204(A318192(n))`
-/

namespace A379773.P2892002070808184848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005934 (2 * n + 3) * A186204 (A318192 n).toNat

end

end A379773.P2892002070808184848

/-!
# A379774: Records in A379772.

The programs for A379774, there is no canonical definition to state claims against.
-/

/-! ## A379774.P18050134717203370075

`lt[A004736(A385818(2*n+1)), A385887(3*n+4)]`
-/

namespace A379774.P18050134717203370075
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004736 (A385818 (2 * n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A385887 (3 * n + 4)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379774.P18050134717203370075

/-! ## A379774.P1898166558817328357

`∑[A245563(∑[A222122(n+1)])]`
-/

namespace A379774.P1898166558817328357
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A222122 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A245563 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A379774.P1898166558817328357

/-! ## A379774.P12781744912325834599

`lt[A324602(A352204(n+1)), A146326(n+1)]`
-/

namespace A379774.P12781744912325834599
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A324602 (A352204 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146326 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379774.P12781744912325834599

/-! ## A379774.P15394880876368991137

`lt[A369224(3*n+5), A088830(A089913(n+1))]`
-/

namespace A379774.P15394880876368991137
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A369224 (3 * n + 5)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088830 (A089913 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A379774.P15394880876368991137

/-!
# A379777: Array A(n, k), n, k >= 0, read by upward antidiagonals; for any v >= 0, the value appears twice in the array: in row A002262(v) and in row A002024(v+1); values in each row are given in strictly increasing order.

The programs for A379777, there is no canonical definition to state claims against.
-/

/-! ## A379777.P14044987080663893981

`A117384(A375510(n))-1`
-/

namespace A379777.P14044987080663893981
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A117384 (A375510 n).toNat - 1

end

end A379777.P14044987080663893981

/-!
# A379778: Triangular array read by rows, T(n,k) is the number of n X n matrices over GF(2) that converge to an idempotent at rank k, n>=0, 0<=k<=n.

The programs for A379778, there is no canonical definition to state claims against.
-/

/-! ## A379778.P16493465014043193022

`A071508(A182325(n))`
-/

namespace A379778.P16493465014043193022
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071508 (A182325 n).toNat

end

end A379778.P16493465014043193022

/-!
# A379779: Numbers k >= 1 such that A007088(k) / A007088(A007953(k)) is an integer.

The programs for A379779, there is no canonical definition to state claims against.
-/

/-! ## A379779.P17970856466958722717

`A005349(lt[A121966(n), A128150(n+2)])`
-/

namespace A379779.P17970856466958722717
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A121966 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128150 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379779.P17970856466958722717

/-! ## A379779.P3006849720773747299

`A005349(A285356(n+1)%A285356(3*n+5))`
-/

namespace A379779.P3006849720773747299
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (Int.tmod (A285356 (n + 1)) (A285356 (3 * n + 5))).toNat

end

end A379779.P3006849720773747299

/-! ## A379779.P2403366723982219706

`A005349(∑[A362899(n)!])`
-/

namespace A379779.P2403366723982219706
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A362899 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005349 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A379779.P2403366723982219706

/-! ## A379779.P3689656149894882781

`A005349(A291442(n+1))%A205037(2*n+5)`
-/

namespace A379779.P3689656149894882781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A005349 (A291442 (n + 1)).toNat) (A205037 (2 * n + 5))

end

end A379779.P3689656149894882781

/-!
# A379780: Composite squarefree integers for which the sum of the squares of their factors is a square.

The programs for A379780, there is no canonical definition to state claims against.
-/

/-! ## A379780.P18363048813382699056

`filter[A134605(n+1), A008966(#)]`
-/

namespace A379780.P18363048813382699056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134605 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A379780.P18363048813382699056

/-! ## A379780.P5277104378089900454

`filter[A134606(n+1), A008966(#)]`
-/

namespace A379780.P5277104378089900454
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A008966 (f1 j).toNat = 1) n)

end

end A379780.P5277104378089900454

/-! ## A379780.P9481733196371392697

`filter[A134606(n+1), A354819(#)]`
-/

namespace A379780.P9481733196371392697
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A379780.P9481733196371392697

/-! ## A379780.P10887742750113252903

`filter[A134606(n+1), A380469(#)]`
-/

namespace A379780.P10887742750113252903
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134606 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A379780.P10887742750113252903

/-! ## A379780.P2549111513378225070

`filter[A134605(n+2), A354819(#)]`
-/

namespace A379780.P2549111513378225070
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354819 (f1 j).toNat = 1) n)

end

end A379780.P2549111513378225070

/-! ## A379780.P9836837445938916951

`filter[A134605(n+2), A380469(#)]`
-/

namespace A379780.P9836837445938916951
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134605 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A380469 (f1 j).toNat = 1) n)

end

end A379780.P9836837445938916951

/-!
# A379782: Successive primes generated in A379355.

The programs for A379782, there is no canonical definition to state claims against.
-/

/-! ## A379782.P12802918371104005930

`A202997(C(A215366(n), n))`
-/

namespace A379782.P12802918371104005930
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202997 (Nat.choose (A215366 n).toNat n)

end

end A379782.P12802918371104005930

/-! ## A379782.P15862570569378602818

`A202997(∑[A058835(n)+1])`
-/

namespace A379782.P15862570569378602818
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058835 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202997 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A379782.P15862570569378602818

/-!
# A379783: For n >= 2, let b(n) = 1 if A379899(n) is 3 mod 4, 0 if A379899(n) is 1 mod 4; form the RUNS transform of {b(n), n >= 2}.

The programs for A379783, there is no canonical definition to state claims against.
-/

/-! ## A379783.P9579281821410678524

`A226859(A068841(n))`
-/

namespace A379783.P9579281821410678524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226859 (A068841 n).toNat

end

end A379783.P9579281821410678524

/-!
# A379786: a(n) = A379059(n) - 2*n.

The programs for A379786, there is no canonical definition to state claims against.
-/

/-! ## A379786.P15793190454856995894

`A379059(n)-2*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379786.P15793190454856995894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 n - (2 * n : ℤ)

end

end A379786.P15793190454856995894

/-! ## A379786.P11976530262866948399

`(A379059(n)-A005843(n))%(n+1)`
-/

namespace A379786.P11976530262866948399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379059 n - A005843 n) (n + 1 : ℤ)

end

end A379786.P11976530262866948399

/-! ## A379786.P16851623614607827867

`A379063(n)+A379064(n)-A379060(n)-A005843(n)`
-/

namespace A379786.P16851623614607827867
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379063 n + (A379064 n - A379060 n) - A005843 n

end

end A379786.P16851623614607827867

/-!
# A379787: a(n) = A379060(n) - 2*n.

The programs for A379787, there is no canonical definition to state claims against.
-/

/-! ## A379787.P12028837190875327334

`A379060(n)-2*n`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A379787.P12028837190875327334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 n - (2 * n : ℤ)

end

end A379787.P12028837190875327334

/-! ## A379787.P769611723172738617

`A379063(n)+A379064(n)-A379059(n)-2*n`
-/

namespace A379787.P769611723172738617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379063 n + (A379064 n - A379059 n) - (2 * n : ℤ)

end

end A379787.P769611723172738617

/-!
# A379788: Sequence Sa of the eight sequences defining the blocks of terms in A377091.

The programs for A379788, there is no canonical definition to state claims against.
-/

/-! ## A379788.P18012049720734729087

`A379792(n+1)-A379795(n+1)`
-/

namespace A379788.P18012049720734729087
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379792 (n + 1) - A379795 (n + 1)

end

end A379788.P18012049720734729087

/-! ## A379788.P8745548302936685730

`A379790(n+1)+1-A379795(n+1)`
-/

namespace A379788.P8745548302936685730
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379790 (n + 1) + (1 - A379795 (n + 1))

end

end A379788.P8745548302936685730

/-! ## A379788.P10084840192830252308

`A380837(n+1)+1-A379796(n+1)-A379795(n+1)`
-/

namespace A379788.P10084840192830252308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380837 (n + 1) + (1 - A379796 (n + 1)) - A379795 (n + 1)

end

end A379788.P10084840192830252308

/-! ## A379788.P12128722796272241960

`A380837(n+1)+1-A379796(n+1)-A379882(2*(n+1))`
-/

namespace A379788.P12128722796272241960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380837 (n + 1) + (1 - A379796 (n + 1)) - A379882 (2 * (n + 1))

end

end A379788.P12128722796272241960

/-! ## A379788.P8838073811368297915

`A379059(A379789(n+1))`
-/

namespace A379788.P8838073811368297915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (A379789 (n + 1)).toNat

end

end A379788.P8838073811368297915

/-! ## A379788.P5952251563169970402

`A379059(A379791(n+1))+1-A379795(n+1)`
-/

namespace A379788.P5952251563169970402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (A379791 (n + 1)).toNat + 1 - A379795 (n + 1)

end

end A379788.P5952251563169970402

/-! ## A379788.P15233140632754360397

`A020725(A380837(n+1)-A379796(n+1))-A379795(n+1)`
-/

namespace A379788.P15233140632754360397
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A380837 (n + 1) - A379796 (n + 1)).toNat - A379795 (n + 1)

end

end A379788.P15233140632754360397

/-!
# A379789: Sequence Sb of the eight sequences defining the blocks of terms in A377091.

The programs for A379789, there is no canonical definition to state claims against.
-/

/-! ## A379789.P11116519647683401725

`A377091(A379788(n+1))`
-/

namespace A379789.P11116519647683401725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379788 (n + 1)).toNat

end

end A379789.P11116519647683401725

/-! ## A379789.P17289871647462675263

`A379070(A379788(n+1)%A222465(n))`
-/

namespace A379789.P17289871647462675263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (Int.tmod (A379788 (n + 1)) (A222465 n)).toNat

end

end A379789.P17289871647462675263

/-! ## A379789.P10241826497178745819

`A377091(A379792(n+1)-A379795(n+1))`
-/

namespace A379789.P10241826497178745819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379792 (n + 1) - A379795 (n + 1)).toNat

end

end A379789.P10241826497178745819

/-! ## A379789.P13650209731340993794

`A379070(A379788(n+1))%A001567(n+1)`
-/

namespace A379789.P13650209731340993794
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A379070 (A379788 (n + 1)).toNat) (A001567 (n + 1))

end

end A379789.P13650209731340993794

/-! ## A379789.P2842395748343920576

`A377091(A379790(n+1)+1-A379795(n+1))`
-/

namespace A379789.P2842395748343920576
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379790 (n + 1) + 1 - A379795 (n + 1)).toNat

end

end A379789.P2842395748343920576

/-! ## A379789.P7647845179423955434

`A379070(A379790(n+1)+1-A379795(n+1))`
-/

namespace A379789.P7647845179423955434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A379790 (n + 1) + (1 - A379795 (n + 1))).toNat

end

end A379789.P7647845179423955434

/-! ## A379789.P3776659687965165306

`A379070(A380837(n+1)+1-A379796(n+1)-A379882(2*(n+1)))`
-/

namespace A379789.P3776659687965165306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A380837 (n + 1) + (1 - A379796 (n + 1)) - A379882 (2 * (n + 1))).toNat

end

end A379789.P3776659687965165306

/-!
# A379790: Sequence Sc of the eight sequences defining the blocks of terms in A377091.

The programs for A379790, there is no canonical definition to state claims against.
-/

/-! ## A379790.P14101636778368807462

`A379792(n+1)-1`
-/

namespace A379790.P14101636778368807462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379792 (n + 1) - 1

end

end A379790.P14101636778368807462

/-! ## A379790.P14879940616153993237

`A380837(n+1)-A379796(n+1)`
-/

namespace A379790.P14879940616153993237
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380837 (n + 1) - A379796 (n + 1)

end

end A379790.P14879940616153993237

/-! ## A379790.P1386632553837446590

`A379788(n+1)+A379795(n+1)-1`
-/

namespace A379790.P1386632553837446590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 1) + (A379795 (n + 1) - 1)

end

end A379790.P1386632553837446590

/-! ## A379790.P16923906384802689488

`A380837(n+1)-A379882(2*n+3)`
-/

namespace A379790.P16923906384802689488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380837 (n + 1) - A379882 (2 * n + 3)

end

end A379790.P16923906384802689488

/-! ## A379790.P10463495130165241197

`∑[A379796(n+1)+A379795(n+1)]-A379796(n+1)`
-/

namespace A379790.P10463495130165241197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379796 (n + 1) + A379795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A379796 (n + 1)

end

end A379790.P10463495130165241197

/-! ## A379790.P8863325412620418082

`A379788(n+2)-A379796(n+1)-1`
-/

namespace A379790.P8863325412620418082
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 2) - A379796 (n + 1) - 1

end

end A379790.P8863325412620418082

/-! ## A379790.P11544071100082340934

`A379059(A379791(n+1))`
-/

namespace A379790.P11544071100082340934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (A379791 (n + 1)).toNat

end

end A379790.P11544071100082340934

/-! ## A379790.P5038257630174439112

`A379060(A379793(n+1))-1`
-/

namespace A379790.P5038257630174439112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (A379793 (n + 1)).toNat - 1

end

end A379790.P5038257630174439112

/-! ## A379790.P15460480406722400735

`A023443(A379792(n+1))`
-/

namespace A379790.P15460480406722400735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A379792 (n + 1)).toNat

end

end A379790.P15460480406722400735

/-!
# A379791: Sequence Sd of the eight sequences defining the blocks of terms in A377091.

The programs for A379791, there is no canonical definition to state claims against.
-/

/-! ## A379791.P16625843221488146173

`A038722(A379793(n+1)+1)`
-/

namespace A379791.P16625843221488146173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A379793 (n + 1) + 1).toNat

end

end A379791.P16625843221488146173

/-! ## A379791.P13957660279096503862

`A377091(A379790(n+1))`
-/

namespace A379791.P13957660279096503862
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379790 (n + 1)).toNat

end

end A379791.P13957660279096503862

/-! ## A379791.P1351355496832849631

`A379873(∑[A379795(n+1)])`
-/

namespace A379791.P1351355496832849631
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379873 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A379791.P1351355496832849631

/-! ## A379791.P11477359912340493392

`A061579(A379793(n+1)-1)`
-/

namespace A379791.P11477359912340493392
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061579 (A379793 (n + 1) - 1).toNat

end

end A379791.P11477359912340493392

/-! ## A379791.P9848390604104291282

`A377091(A379792(n+1)-1)`
-/

namespace A379791.P9848390604104291282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A379792 (n + 1) - 1).toNat

end

end A379791.P9848390604104291282

/-! ## A379791.P12754339953336044400

`A379070(A379792(n+1)-1)`
-/

namespace A379791.P12754339953336044400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A379792 (n + 1) - 1).toNat

end

end A379791.P12754339953336044400

/-! ## A379791.P14581037762248849402

`A377091(A380837(n+1)-A379796(n+1))`
-/

namespace A379791.P14581037762248849402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A377091 (A380837 (n + 1) - A379796 (n + 1)).toNat

end

end A379791.P14581037762248849402

/-!
# A379792: Sequence Se of the eight sequences defining the blocks of terms in A377091.

The programs for A379792, there is no canonical definition to state claims against.
-/

/-! ## A379792.P8886839015285746294

`A379790(n+1)+1`
-/

namespace A379792.P8886839015285746294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379790 (n + 1) + 1

end

end A379792.P8886839015285746294

/-! ## A379792.P15442601904394909778

`A379795(n+1)+A379788(n+1)`
-/

namespace A379792.P15442601904394909778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379795 (n + 1) + A379788 (n + 1)

end

end A379792.P15442601904394909778

/-! ## A379792.P8721970655069827190

`A380837(n+1)+1-A379796(n+1)`
-/

namespace A379792.P8721970655069827190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380837 (n + 1) + (1 - A379796 (n + 1))

end

end A379792.P8721970655069827190

/-! ## A379792.P3998463941507734430

`A379882(2*(n+1))+A379788(n+1)`
-/

namespace A379792.P3998463941507734430
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379882 (2 * (n + 1)) + A379788 (n + 1)

end

end A379792.P3998463941507734430

/-! ## A379792.P11457474494587062712

`A379788(n+2)-A379796(n+1)`
-/

namespace A379792.P11457474494587062712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 2) - A379796 (n + 1)

end

end A379792.P11457474494587062712

/-! ## A379792.P17226836687723510368

`A379060(A379793(n+1))`
-/

namespace A379792.P17226836687723510368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379060 (A379793 (n + 1)).toNat

end

end A379792.P17226836687723510368

/-! ## A379792.P9396435811248212414

`A379059(A379791(n+1))+1`
-/

namespace A379792.P9396435811248212414
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (A379791 (n + 1)).toNat + 1

end

end A379792.P9396435811248212414

/-! ## A379792.P12290045603654759371

`A020725(A379790(n+1))`
-/

namespace A379792.P12290045603654759371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A379790 (n + 1)).toNat

end

end A379792.P12290045603654759371

/-!
# A379793: Sequence Sf of the eight sequences defining the blocks of terms in A377091.

The programs for A379793, there is no canonical definition to state claims against.
-/

/-! ## A379793.P3889131333949294709

`A038722(A379791(n+1))-1`
-/

namespace A379793.P3889131333949294709
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A379791 (n + 1)).toNat - 1

end

end A379793.P3889131333949294709

/-! ## A379793.P13474252553112296681

`A038722(A379791(n+1)+1)`
-/

namespace A379793.P13474252553112296681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038722 (A379791 (n + 1) + 1).toNat

end

end A379793.P13474252553112296681

/-! ## A379793.P7928891646929171912

`A379070(A379792(n+1))`
-/

namespace A379793.P7928891646929171912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A379792 (n + 1)).toNat

end

end A379793.P7928891646929171912

/-! ## A379793.P12578086050827187857

`abs(A377091(A379790(n+1)+1))`
-/

namespace A379793.P12578086050827187857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A377091 (A379790 (n + 1) + 1).toNat|

end

end A379793.P12578086050827187857

/-! ## A379793.P15895154814933600778

`A063524(n+3)-A377091(A379792(n+1))`
-/

namespace A379793.P15895154814933600778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063524 (n + 3) - A377091 (A379792 (n + 1)).toNat

end

end A379793.P15895154814933600778

/-! ## A379793.P11417633337991203659

`-A377091(A379795(n+1)+A379788(n+1))`
-/

namespace A379793.P11417633337991203659
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A377091 (A379795 (n + 1) + A379788 (n + 1)).toNat

end

end A379793.P11417633337991203659

/-!
# A379794: Sequence Sh of the eight sequences defining the blocks of terms in A377091.

The programs for A379794, there is no canonical definition to state claims against.
-/

/-! ## A379794.P887749681898357148

`A379070(A380837(n+1))`
-/

namespace A379794.P887749681898357148
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A380837 (n + 1)).toNat

end

end A379794.P887749681898357148

/-! ## A379794.P9780531898851375234

`A379070(A379788(n+2)-1)`
-/

namespace A379794.P9780531898851375234
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A379788 (n + 2) - 1).toNat

end

end A379794.P9780531898851375234

/-! ## A379794.P6960690984684732809

`A379070(A379790(n+2)-A379795(n+2))`
-/

namespace A379794.P6960690984684732809
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A379790 (n + 2) - A379795 (n + 2)).toNat

end

end A379794.P6960690984684732809

/-! ## A379794.P12312822106372354976

`A379070(A379796(n+1)+A379792(n+1)-1)`
-/

namespace A379794.P12312822106372354976
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (A379796 (n + 1) + (A379792 (n + 1) - 1)).toNat

end

end A379794.P12312822106372354976

/-! ## A379794.P7032028046254240321

`A292251(2*(n+1))-A377091(A380837(n+1))`
-/

namespace A379794.P7032028046254240321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292251 (2 * (n + 1)) - A377091 (A380837 (n + 1)).toNat

end

end A379794.P7032028046254240321

/-! ## A379794.P10875474339502671534

`A010051(2*(n+2))-A377091(A380837(n+1))`
-/

namespace A379794.P10875474339502671534
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010051 (2 * (n + 2)) - A377091 (A380837 (n + 1)).toNat

end

end A379794.P10875474339502671534

/-! ## A379794.P8334113783432794292

`A069848(3*n+2)-A377091(A380837(n+1))`
-/

namespace A379794.P8334113783432794292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069848 (3 * n + 2) - A377091 (A380837 (n + 1)).toNat

end

end A379794.P8334113783432794292

/-! ## A379794.P15185766091146573683

`-A377091(∑[A379796(n+1)+A379795(n+1)])`
-/

namespace A379794.P15185766091146573683
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379796 (n + 1) + A379795 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  -A377091 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A379794.P15185766091146573683

/-! ## A379794.P18140071925699296626

`A379070(lt[A379067(n), A379061(n)])`
-/

namespace A379794.P18140071925699296626
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379067 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379061 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379070 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A379794.P18140071925699296626

/-!
# A379795: Length of n-th block of consecutive positive terms in A377091.

The programs for A379795, there is no canonical definition to state claims against.
-/

/-! ## A379795.P6770832273791398381

`A379882(2*(n+1))`
-/

namespace A379795.P6770832273791398381
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379882 (2 * (n + 1))

end

end A379795.P6770832273791398381

/-! ## A379795.P3072362745800594401

`A379790(n+1)-A379788(n+1)+1`
-/

namespace A379795.P3072362745800594401
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379790 (n + 1) - A379788 (n + 1) + 1

end

end A379795.P3072362745800594401

/-! ## A379795.P3923904837233827733

`A379792(n+1)-A379788(n+1)`
-/

namespace A379795.P3923904837233827733
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379792 (n + 1) - A379788 (n + 1)

end

end A379795.P3923904837233827733

/-! ## A379795.P7597174551035339399

`A379788(n+2)-(A379796(n+1)+A379788(n+1))`
-/

namespace A379795.P7597174551035339399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 2) - (A379796 (n + 1) + A379788 (n + 1))

end

end A379795.P7597174551035339399

/-! ## A379795.P12208650495783723130

`A379059(A379791(n+1))+1-A379788(n+1)`
-/

namespace A379795.P12208650495783723130
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379059 (A379791 (n + 1)).toNat + 1 - A379788 (n + 1)

end

end A379795.P12208650495783723130

/-! ## A379795.P1592349956205582454

`A020725(A379790(n+1))-A379788(n+1)`
-/

namespace A379795.P1592349956205582454
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020725 (A379790 (n + 1)).toNat - A379788 (n + 1)

end

end A379795.P1592349956205582454

/-!
# A379796: Length of n-th block of consecutive negative terms in A377091.

The programs for A379796, there is no canonical definition to state claims against.
-/

/-! ## A379796.P4766644019223833547

`A379882(2*(n+1)+1)`
-/

namespace A379796.P4766644019223833547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379882 (2 * (n + 1) + 1)

end

end A379796.P4766644019223833547

/-! ## A379796.P3549431291266012848

`A380837(n+1)-A379790(n+1)`
-/

namespace A379796.P3549431291266012848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380837 (n + 1) - A379790 (n + 1)

end

end A379796.P3549431291266012848

/-! ## A379796.P11607958533050606279

`A379788(n+2)-A379792(n+1)`
-/

namespace A379796.P11607958533050606279
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 2) - A379792 (n + 1)

end

end A379796.P11607958533050606279

/-! ## A379796.P1117181787287646934

`A379788(n+2)-(A379795(n+1)+A379788(n+1))`
-/

namespace A379796.P1117181787287646934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379788 (n + 2) - (A379795 (n + 1) + A379788 (n + 1))

end

end A379796.P1117181787287646934

/-! ## A379796.P6960137737502472984

`A379790(n+2)-(A379795(n+2)+A379790(n+1))`
-/

namespace A379796.P6960137737502472984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379790 (n + 2) - (A379795 (n + 2) + A379790 (n + 1))

end

end A379796.P6960137737502472984

/-! ## A379796.P17921905258616700352

`A379792(n+2)-(A379795(n+2)+A379792(n+1))`
-/

namespace A379796.P17921905258616700352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379792 (n + 2) - (A379795 (n + 2) + A379792 (n + 1))

end

end A379796.P17921905258616700352

/-!
# A379797: In A377091, each block of consecutive terms of the same sign is followed by a jump of magnitude +-s^2 for some integer s>0 to a term of the opposite sign; sequence lists the successive values of s.

The programs for A379797, there is no canonical definition to state claims against.
-/

/-! ## A379797.P4127463524699645314

`A379798(n)+a(n-1)` with `a(0)=2`
-/

namespace A379797.P4127463524699645314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  A379798 n + a (n - 1)

end

end A379797.P4127463524699645314

/-! ## A379797.P15940001073571279495

`ceil(A175140(2*n+3)/4)`
-/

namespace A379797.P15940001073571279495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A175140 (2 * n + 3) : ℚ) / 4⌉

end

end A379797.P15940001073571279495

/-! ## A379797.P9636891435114558891

`A259549(n+5)-A141242(A259580(n+1))`
-/

namespace A379797.P9636891435114558891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A259549 (n + 5) - A141242 (A259580 (n + 1)).toNat

end

end A379797.P9636891435114558891

/-! ## A379797.P13672255769061715946

`A217538(2*n+3)+A063524(A126003(2*n+3))`
-/

namespace A379797.P13672255769061715946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A217538 (2 * n + 3) + A063524 (A126003 (2 * n + 3)).toNat

end

end A379797.P13672255769061715946

/-!
# A379798: First differences of A379797.

The programs for A379798, there is no canonical definition to state claims against.
-/

/-! ## A379798.P4726181902255674569

`Δ[A379797(n+1)]`
-/

namespace A379798.P4726181902255674569
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379797 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A379798.P4726181902255674569

/-! ## A379798.P13782058751390962979

`A379797(n+2)-A379797(n+1)`
-/

namespace A379798.P13782058751390962979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A379797 (n + 2) - A379797 (n + 1)

end

end A379798.P13782058751390962979

/-! ## A379798.P545971779502613734

`A000001(A379797(n+2)%A379797(n+1))`
-/

namespace A379798.P545971779502613734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000001 (Int.tmod (A379797 (n + 2)) (A379797 (n + 1))).toNat

end

end A379798.P545971779502613734

/-! ## A379798.P17044612121984468122

`A023531(C(A379797(n+1), A379797(n+2)))`
-/

namespace A379798.P17044612121984468122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023531 (Nat.choose (A379797 (n + 1)).toNat (A379797 (n + 2)).toNat)

end

end A379798.P17044612121984468122

/-! ## A379798.P4361947064443760779

`A330473(C(A379797(n+1), A379797(n+2)))`
-/

namespace A379798.P4361947064443760779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A330473 (Nat.choose (A379797 (n + 1)).toNat (A379797 (n + 2)).toNat)

end

end A379798.P4361947064443760779

