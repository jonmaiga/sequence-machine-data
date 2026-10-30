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
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C036
import Seq.B000.C038
import Seq.B000.C039
import Seq.B000.C042
import Seq.B000.C043
import Seq.B000.C044
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C004
import Seq.B001.C006
import Seq.B001.C007
import Seq.B001.C010
import Seq.B001.C012
import Seq.B001.C013
import Seq.B001.C014
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C005
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B008.C000
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
import Seq.Opaque.C012
import Seq.Opaque.C013
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A046200: Odd numbers in the triangle of denominators in Leibniz's Harmonic Triangle.

The programs for A046200, the canonical program `A046200.P11881798545890118364` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046200 has offset 1).

The definition of A046200 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 764 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046200.P11881798545890118364

`A003506(eq[1, A003506(n+1)%2]+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046200

/-- `A003506(eq[1, A003506(n+1)%2]+1)` -/
def P11881798545890118364.Spec : Prop :=
  ∀ n, P11881798545890118364.a n = A046200 (n + 1)

theorem P11881798545890118364.correct : P11881798545890118364.Spec := by
  intro n
  simp only [A046200, Nat.add_sub_cancel]

end A046200

/-! ## A046200.P14105102931503193442

`A003506(eq[1, gcd(2, A003506(n+1))]+1)`
-/

namespace A046200.P14105102931503193442
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A003506 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1)

end

end A046200.P14105102931503193442

namespace A046200

/-- `A003506(eq[1, gcd(2, A003506(n+1))]+1)` -/
def P14105102931503193442.Spec : Prop :=
  ∀ n, P14105102931503193442.a n = A046200 (n + 1)

end A046200

/-! ## A046200.P3580404404178165360

`A003506(eq[1, and(1, A003506(n+1))]+1)`
-/

namespace A046200.P3580404404178165360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A003506 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046200.P3580404404178165360

namespace A046200

/-- `A003506(eq[1, and(1, A003506(n+1))]+1)` -/
def P3580404404178165360.Spec : Prop :=
  ∀ n, P3580404404178165360.a n = A046200 (n + 1)

end A046200

/-! ## A046200.P15188706491221077422

`A003506(record[n*and(1, A003506(n+1))]+1)`
-/

namespace A046200.P15188706491221077422
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * Int.land 1 (A003506 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + 1).toNat

end

end A046200.P15188706491221077422

namespace A046200

/-- `A003506(record[n*and(1, A003506(n+1))]+1)` -/
def P15188706491221077422.Spec : Prop :=
  ∀ n, P15188706491221077422.a n = A046200 (n + 1)

end A046200

/-! ## A046200.P7520168588328853255

`A003506(record[(n+1)^and(1, A003506(n+1))])`
-/

namespace A046200.P7520168588328853255
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) ^ (Int.land 1 (A003506 (n + 1)) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A046200.P7520168588328853255

namespace A046200

/-- `A003506(record[(n+1)^and(1, A003506(n+1))])` -/
def P7520168588328853255.Spec : Prop :=
  ∀ n, P7520168588328853255.a n = A046200 (n + 1)

end A046200

/-!
# A046201: Distinct odd numbers in the triangle of denominators in Leibniz's Harmonic Triangle.

The programs for A046201, there is no canonical definition to state claims against.
-/

/-! ## A046201.P2734567890098087790

`A046202(record[(n+1)/gcd(2, A046202(n+1))])`
-/

namespace A046201.P2734567890098087790
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℚ) / (Int.gcd 2 (A046202 (n + 1)) : ℚ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046202 (SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))).toNat

end

end A046201.P2734567890098087790

/-! ## A046201.P783848400146475159

`filter[A046202(n+1), A379964(#)+1]`
-/

namespace A046201.P783848400146475159
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat + 1 = 1) n)

end

end A046201.P783848400146475159

/-! ## A046201.P16533545665737516107

`filter[A046202(n+1), A000035(#)]`
-/

namespace A046201.P16533545665737516107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046201.P16533545665737516107

/-!
# A046202: Distinct numbers in the triangle of denominators in Leibniz's Harmonic Triangle.

The programs for A046202, there is no canonical definition to state claims against.
-/

/-! ## A046202.P2105378907249021231

`A305325(∑[A123529(5*2^n-1)])`
-/

namespace A046202.P2105378907249021231
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123529 (5 * 2 ^ n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A305325 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046202.P2105378907249021231

/-! ## A046202.P4275110933531946858

`A094436(A269110(n+1)+A082528(n))`
-/

namespace A046202.P4275110933531946858
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094436 (A269110 (n + 1) + A082528 n).toNat

end

end A046202.P4275110933531946858

/-! ## A046202.P6287769280896366570

`A232550(A000055(n))*A305325(n+1)`
-/

namespace A046202.P6287769280896366570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A232550 (A000055 n).toNat * A305325 (n + 1)

end

end A046202.P6287769280896366570

/-!
# A046203: Even numbers in the triangle of denominators in Leibniz's Harmonic Triangle.

The programs for A046203, the canonical program `A046203.P12559141239243383564` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046203 has offset 1).

The definition of A046203 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 4633 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046203.P9667288450643714528

`filter[A003506(n+1), (#+1)%2]`
-/

namespace A046203.P9667288450643714528
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => Int.tmod (f1 j + 1) 2 = 1) n)

end

end A046203.P9667288450643714528

namespace A046203

/-- `filter[A003506(n+1), (#+1)%2]` -/
def P9667288450643714528.Spec : Prop :=
  ∀ n, P9667288450643714528.a n = A046203 (n + 1)

end A046203

/-! ## A046203.P8772497975106432878

`A155865(eq[0, A155865(n)%2])`
-/

namespace A046203.P8772497975106432878
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A155865 n) 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046203.P8772497975106432878

namespace A046203

/-- `A155865(eq[0, A155865(n)%2])` -/
def P8772497975106432878.Spec : Prop :=
  ∀ n, P8772497975106432878.a n = A046203 (n + 1)

end A046203

/-! ## A046203.P1957915785262376320

`A155865(eq[2, gcd(2, A155865(n))])`
-/

namespace A046203.P1957915785262376320
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd 2 (A155865 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046203.P1957915785262376320

namespace A046203

/-- `A155865(eq[2, gcd(2, A155865(n))])` -/
def P1957915785262376320.Spec : Prop :=
  ∀ n, P1957915785262376320.a n = A046203 (n + 1)

end A046203

/-! ## A046203.P12559141239243383564

`A003506(comp[n*A003506(n+1)%2]+1)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046203

/-- `A003506(comp[n*A003506(n+1)%2]+1)` -/
def P12559141239243383564.Spec : Prop :=
  ∀ n, P12559141239243383564.a n = A046203 (n + 1)

theorem P12559141239243383564.correct : P12559141239243383564.Spec := by
  intro n
  simp only [A046203, Nat.add_sub_cancel]

end A046203

/-! ## A046203.P10318286583453049701

`A046206(lt[and(1, A046205(n+1)), 1])`
-/

namespace A046203.P10318286583453049701
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046205 (n + 1))

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046206 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n)

end

end A046203.P10318286583453049701

namespace A046203

/-- `A046206(lt[and(1, A046205(n+1)), 1])` -/
def P10318286583453049701.Spec : Prop :=
  ∀ n, P10318286583453049701.a n = A046203 (n + 1)

end A046203

/-! ## A046203.P18353967111169454217

`A155865(eq[2, A020639(A155865(n))])`
-/

namespace A046203.P18353967111169454217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020639 (A155865 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046203.P18353967111169454217

namespace A046203

/-- `A155865(eq[2, A020639(A155865(n))])` -/
def P18353967111169454217.Spec : Prop :=
  ∀ n, P18353967111169454217.a n = A046203 (n + 1)

end A046203

/-! ## A046203.P10691251705534394815

`filter[A134399(n), A379964(#)]`
-/

namespace A046203.P10691251705534394815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134399 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A046203.P10691251705534394815

namespace A046203

/-- `filter[A134399(n), A379964(#)]` -/
def P10691251705534394815.Spec : Prop :=
  ∀ n, P10691251705534394815.a n = A046203 (n + 1)

end A046203

/-! ## A046203.P14822535930625122104

`filter[A155865(n), A379964(#)]`
-/

namespace A046203.P14822535930625122104
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155865 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A046203.P14822535930625122104

namespace A046203

/-- `filter[A155865(n), A379964(#)]` -/
def P14822535930625122104.Spec : Prop :=
  ∀ n, P14822535930625122104.a n = A046203 (n + 1)

end A046203

/-! ## A046203.P9072848171962441851

`filter[A003506(n+1), A379964(#)]`
-/

namespace A046203.P9072848171962441851
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A046203.P9072848171962441851

namespace A046203

/-- `filter[A003506(n+1), A379964(#)]` -/
def P9072848171962441851.Spec : Prop :=
  ∀ n, P9072848171962441851.a n = A046203 (n + 1)

end A046203

/-! ## A046203.P2430453442326051766

`filter[A046205(n+1), A379964(#)]`
-/

namespace A046203.P2430453442326051766
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046205 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A046203.P2430453442326051766

namespace A046203

/-- `filter[A046205(n+1), A379964(#)]` -/
def P2430453442326051766.Spec : Prop :=
  ∀ n, P2430453442326051766.a n = A046203 (n + 1)

end A046203

/-!
# A046204: Distinct even numbers in the triangle of denominators in Leibniz's Harmonic Triangle.

The programs for A046204, there is no canonical definition to state claims against.
-/

/-! ## A046204.P2242582393602807559

`filter[A046202(n+1), A379964(#)]`
-/

namespace A046204.P2242582393602807559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379964 (f1 j).toNat = 1) n)

end

end A046204.P2242582393602807559

/-! ## A046204.P7338671696433924415

`filter[A046202(n+1), A059841(#)]`
-/

namespace A046204.P7338671696433924415
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046202 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046204.P7338671696433924415

/-! ## A046204.P13189220647890579467

`filter[A046202(n+2), A135528(#)]`
-/

namespace A046204.P13189220647890579467
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046202 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A135528 (f1 j).toNat = 1) n)

end

end A046204.P13189220647890579467

/-! ## A046204.P11893485315278604087

`filter[A046202(n+2), A266591(#)]`
-/

namespace A046204.P11893485315278604087
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046202 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A266591 (f1 j).toNat = 1) n)

end

end A046204.P11893485315278604087

/-! ## A046204.P17971539994473277065

`filter[A137761(n+1), A059841(#)]`
-/

namespace A046204.P17971539994473277065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137761 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A059841 (f1 j).toNat = 1) n)

end

end A046204.P17971539994473277065

/-!
# A046205: In Leibniz's Harmonic Triangle, write numerator first and then denominator of each element.

The programs for A046205, the canonical program `A046205.P12720954446069382381` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046205 has offset 1).

The definition of A046205 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046205.P16605657426419441902

`A046206(n^(n%2))`
-/

namespace A046205.P16605657426419441902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046206 (n ^ (n % 2))

end

end A046205.P16605657426419441902

namespace A046205

/-- `A046206(n^(n%2))` -/
def P16605657426419441902.Spec : Prop :=
  ∀ n, P16605657426419441902.a n = A046205 (n + 1)

end A046205

/-! ## A046205.P14092916500854777949

`A046206(abs(1-n)+1)`
-/

namespace A046205.P14092916500854777949
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046206 (|1 - (n : ℤ)| + 1).toNat

end

end A046205.P14092916500854777949

namespace A046205

/-- `A046206(abs(1-n)+1)` -/
def P14092916500854777949.Spec : Prop :=
  ∀ n, P14092916500854777949.a n = A046205 (n + 1)

end A046205

/-! ## A046205.P13099051413372790900

`A046206(n)^a(n-1)` with `a(0)=1`
-/

namespace A046205.P13099051413372790900
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [1] fun n a =>
  (A046206 n : ℝ) ^ (a (n - 1))

end

end A046205.P13099051413372790900

namespace A046205

/-- `A046206(n)^a(n-1)` -/
def P13099051413372790900.Spec : Prop :=
  ∀ n, P13099051413372790900.a n = (A046205 (n + 1) : ℝ)

end A046205

/-! ## A046205.P12720954446069382381

`A003506(gcd(n+1, ∑[and(1, n)]))`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046205

/-- `A003506(gcd(n+1, ∑[and(1, n)]))` -/
def P12720954446069382381.Spec : Prop :=
  ∀ n, P12720954446069382381.a n = A046205 (n + 1)

theorem P12720954446069382381.correct : P12720954446069382381.Spec := by
  intro n
  simp only [A046205, Nat.add_sub_cancel]

end A046205

/-! ## A046205.P1799233968571450318

`A003506(gcd(ceil(n/2)², ∑[n+1]))`
-/

namespace A046205.P1799233968571450318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (Int.gcd (⌈(n : ℚ) / 2⌉ ^ 2) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ))

end

end A046205.P1799233968571450318

namespace A046205

/-- `A003506(gcd(ceil(n/2)², ∑[n+1]))` -/
def P1799233968571450318.Spec : Prop :=
  ∀ n, P1799233968571450318.a n = A046205 (n + 1)

end A046205

/-! ## A046205.P8216279522402753876

`A003506(A152271(n))`
-/

namespace A046205.P8216279522402753876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A152271 n).toNat

end

end A046205.P8216279522402753876

namespace A046205

/-- `A003506(A152271(n))` -/
def P8216279522402753876.Spec : Prop :=
  ∀ n, P8216279522402753876.a n = A046205 (n + 1)

end A046205

/-! ## A046205.P7816813670786672899

`A003506(A133265(n)/2)`
-/

namespace A046205.P7816813670786672899
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.roundAway ((A133265 n : ℚ) / 2)).toNat

end

end A046205.P7816813670786672899

namespace A046205

/-- `A003506(A133265(n)/2)` -/
def P7816813670786672899.Spec : Prop :=
  ∀ n, P7816813670786672899.a n = A046205 (n + 1)

end A046205

/-! ## A046205.P5303498122875219118

`A003506(A008619(n*and(1, n)))`
-/

namespace A046205.P5303498122875219118
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A008619 (n * Nat.land 1 n)).toNat

end

end A046205.P5303498122875219118

namespace A046205

/-- `A003506(A008619(n*and(1, n)))` -/
def P5303498122875219118.Spec : Prop :=
  ∀ n, P5303498122875219118.a n = A046205 (n + 1)

end A046205

/-! ## A046205.P16780202953788644948

`A003506(A008619(n)^and(1, n))`
-/

namespace A046205.P16780202953788644948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A008619 n ^ Nat.land 1 n).toNat

end

end A046205.P16780202953788644948

namespace A046205

/-- `A003506(A008619(n)^and(1, n))` -/
def P16780202953788644948.Spec : Prop :=
  ∀ n, P16780202953788644948.a n = A046205 (n + 1)

end A046205

/-! ## A046205.P14441477687384596145

`A003506(A014681(C(n, and(1, n)))/2)`
-/

namespace A046205.P14441477687384596145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.roundAway ((A014681 (Nat.choose n (Nat.land 1 n)) : ℚ) / 2)).toNat

end

end A046205.P14441477687384596145

namespace A046205

/-- `A003506(A014681(C(n, and(1, n)))/2)` -/
def P14441477687384596145.Spec : Prop :=
  ∀ n, P14441477687384596145.a n = A046205 (n + 1)

end A046205

/-! ## A046205.P12989314415632587691

`A003506(A057979(n+2))`
-/

namespace A046205.P12989314415632587691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A057979 (n + 2)).toNat

end

end A046205.P12989314415632587691

namespace A046205

/-- `A003506(A057979(n+2))` -/
def P12989314415632587691.Spec : Prop :=
  ∀ n, P12989314415632587691.a n = A046205 (n + 1)

end A046205

/-! ## A046205.P10242924789188552244

`A046206(2*(n+1))*A046206(A028310(n))`
-/

namespace A046205.P10242924789188552244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046206 (2 * (n + 1)) * A046206 (A028310 n).toNat

end

end A046205.P10242924789188552244

namespace A046205

/-- `A046206(2*(n+1))*A046206(A028310(n))` -/
def P10242924789188552244.Spec : Prop :=
  ∀ n, P10242924789188552244.a n = A046205 (n + 1)

end A046205

/-! ## A046205.P3828591150253873462

`A046206(2*(n+1))*A046206(A014681(n+1))`
-/

namespace A046205.P3828591150253873462
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046206 (2 * (n + 1)) * A046206 (A014681 (n + 1)).toNat

end

end A046205.P3828591150253873462

namespace A046205

/-- `A046206(2*(n+1))*A046206(A014681(n+1))` -/
def P3828591150253873462.Spec : Prop :=
  ∀ n, P3828591150253873462.a n = A046205 (n + 1)

end A046205

/-! ## A046205.P8323645415889231009

`A003506(A100071(n+1)/A056040(n+1))`
-/

namespace A046205.P8323645415889231009
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.roundAway ((A100071 (n + 1) : ℚ) / (A056040 (n + 1) : ℚ))).toNat

end

end A046205.P8323645415889231009

namespace A046205

/-- `A003506(A100071(n+1)/A056040(n+1))` -/
def P8323645415889231009.Spec : Prop :=
  ∀ n, P8323645415889231009.a n = A046205 (n + 1)

end A046205

/-!
# A046206: In Leibniz's Harmonic Triangle, write denominator first and then numerator of each element.

The programs for A046206, the canonical program `A046206.P4481990353055156933` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046206 has offset 1).

The definition of A046206 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046206.P4481990353055156933

`A003506(n+1-2*lcm(2, n)/4)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046206

/-- `A003506(n+1-2*lcm(2, n)/4)` -/
def P4481990353055156933.Spec : Prop :=
  ∀ n, P4481990353055156933.a n = A046206 (n + 1)

theorem P4481990353055156933.correct : P4481990353055156933.Spec := by
  intro n
  simp only [A046206, Nat.add_sub_cancel]

end A046206

/-! ## A046206.P12727709834117139670

`A003506(n+1-n/(2-and(1, n)))`
-/

namespace A046206.P12727709834117139670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.roundAway ((n + 1 : ℚ) - (n : ℚ) / (2 - (Nat.land 1 n : ℤ) : ℚ))).toNat

end

end A046206.P12727709834117139670

namespace A046206

/-- `A003506(n+1-n/(2-and(1, n)))` -/
def P12727709834117139670.Spec : Prop :=
  ∀ n, P12727709834117139670.a n = A046206 (n + 1)

end A046206

/-! ## A046206.P17507601601051145736

`A003506(n*(1+(-1)^n)/4+1)`
-/

namespace A046206.P17507601601051145736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.roundAway (((n : ℤ) * (1 + (-1) ^ n) : ℚ) / 4 + 1)).toNat

end

end A046206.P17507601601051145736

namespace A046206

/-- `A003506(n*(1+(-1)^n)/4+1)` -/
def P17507601601051145736.Spec : Prop :=
  ∀ n, P17507601601051145736.a n = A046206 (n + 1)

end A046206

/-! ## A046206.P8816350618408455716

`A046205(2+n)`
-/

namespace A046206.P8816350618408455716
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046205 (2 + n)

end

end A046206.P8816350618408455716

namespace A046206

/-- `A046205(2+n)` -/
def P8816350618408455716.Spec : Prop :=
  ∀ n, P8816350618408455716.a n = A046206 (n + 1)

end A046206

/-! ## A046206.P7655010475779402149

`A137752(gcd(n+2, A131575(n)))`
-/

namespace A046206.P7655010475779402149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137752 (Int.gcd (n + 2 : ℤ) (A131575 n))

end

end A046206.P7655010475779402149

namespace A046206

/-- `A137752(gcd(n+2, A131575(n)))` -/
def P7655010475779402149.Spec : Prop :=
  ∀ n, P7655010475779402149.a n = A046206 (n + 1)

end A046206

/-!
# A046207: Numbers to the right of the central elements in the triangle of denominators in Leibniz's Harmonic Triangle.

The programs for A046207, the canonical program `A046207.P12178220823491989682` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046207 has offset 1).

The definition of A046207 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046207.P12178220823491989682

`(A000267(n)+1)*A014413(n+1)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046207

/-- `(A000267(n)+1)*A014413(n+1)` -/
def P12178220823491989682.Spec : Prop :=
  ∀ n, P12178220823491989682.a n = A046207 (n + 1)

theorem P12178220823491989682.correct : P12178220823491989682.Spec := by
  intro n
  simp only [A046207, Nat.add_sub_cancel]

end A046207

/-! ## A046207.P11522772122719042412

`A014413(n+1)*A027434(n+1)`
-/

namespace A046207.P11522772122719042412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) * A027434 (n + 1)

end

end A046207.P11522772122719042412

namespace A046207

/-- `A014413(n+1)*A027434(n+1)` -/
def P11522772122719042412.Spec : Prop :=
  ∀ n, P11522772122719042412.a n = A046207 (n + 1)

end A046207

/-! ## A046207.P7748651875383109147

`(A055086(n)+2)*A014413(n+1)`
-/

namespace A046207.P7748651875383109147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A055086 n + 2) * A014413 (n + 1)

end

end A046207.P7748651875383109147

namespace A046207

/-- `(A055086(n)+2)*A014413(n+1)` -/
def P7748651875383109147.Spec : Prop :=
  ∀ n, P7748651875383109147.a n = A046207 (n + 1)

end A046207

/-! ## A046207.P8342342672594961330

`A014413(n+1)*A020725(A000267(n))`
-/

namespace A046207.P8342342672594961330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) * A020725 (A000267 n).toNat

end

end A046207.P8342342672594961330

namespace A046207

/-- `A014413(n+1)*A020725(A000267(n))` -/
def P8342342672594961330.Spec : Prop :=
  ∀ n, P8342342672594961330.a n = A046207 (n + 1)

end A046207

/-! ## A046207.P12158483069108979135

`A046208(2*(n+1))`
-/

namespace A046207.P12158483069108979135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046208 (2 * (n + 1))

end

end A046207.P12158483069108979135

namespace A046207

/-- `A046208(2*(n+1))` -/
def P12158483069108979135.Spec : Prop :=
  ∀ n, P12158483069108979135.a n = A046207 (n + 1)

end A046207

/-! ## A046207.P2175520760244025924

`A014413(n+1)*A101776(A047268(n+1))`
-/

namespace A046207.P2175520760244025924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014413 (n + 1) * A101776 (A047268 (n + 1)).toNat

end

end A046207.P2175520760244025924

namespace A046207

/-- `A014413(n+1)*A101776(A047268(n+1))` -/
def P2175520760244025924.Spec : Prop :=
  ∀ n, P2175520760244025924.a n = A046207 (n + 1)

end A046207

/-! ## A046207.P3924380522304453959

`A003506(lt[floor(sqrt(8*n+1))%2, 1]+1)`
-/

namespace A046207.P3924380522304453959
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.sqrt (8 * n + 1) % 2

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A046207.P3924380522304453959

namespace A046207

/-- `A003506(lt[floor(sqrt(8*n+1))%2, 1]+1)` -/
def P3924380522304453959.Spec : Prop :=
  ∀ n, P3924380522304453959.a n = A046207 (n + 1)

end A046207

/-! ## A046207.P12049196023705911635

`A135853(eq[1, A340507(n)])`
-/

namespace A046207.P12049196023705911635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A340507 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046207.P12049196023705911635

namespace A046207

/-- `A135853(eq[1, A340507(n)])` -/
def P12049196023705911635.Spec : Prop :=
  ∀ n, P12049196023705911635.a n = A046207 (n + 1)

end A046207

/-! ## A046207.P1978162327320266544

`A135853(eq[0, A003988(n+1)])`
-/

namespace A046207.P1978162327320266544
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003988 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135853 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046207.P1978162327320266544

namespace A046207

/-- `A135853(eq[0, A003988(n+1)])` -/
def P1978162327320266544.Spec : Prop :=
  ∀ n, P1978162327320266544.a n = A046207 (n + 1)

end A046207

/-! ## A046207.P9220168382920092897

`A135853(eq[A003983(n+1), A053616(n)])`
-/

namespace A046207.P9220168382920092897
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003983 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053616 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135853 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046207.P9220168382920092897

namespace A046207

/-- `A135853(eq[A003983(n+1), A053616(n)])` -/
def P9220168382920092897.Spec : Prop :=
  ∀ n, P9220168382920092897.a n = A046207 (n + 1)

end A046207

/-! ## A046207.P11699755043938416749

`A003059(A004767(n))*A014413(n+1)`
-/

namespace A046207.P11699755043938416749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003059 (A004767 n).toNat * A014413 (n + 1)

end

end A046207.P11699755043938416749

namespace A046207

/-- `A003059(A004767(n))*A014413(n+1)` -/
def P11699755043938416749.Spec : Prop :=
  ∀ n, P11699755043938416749.a n = A046207 (n + 1)

end A046207

/-! ## A046207.P16360356487017188385

`A003506(A274428(n+1))`
-/

namespace A046207.P16360356487017188385
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003506 (A274428 (n + 1)).toNat

end

end A046207.P16360356487017188385

namespace A046207

/-- `A003506(A274428(n+1))` -/
def P16360356487017188385.Spec : Prop :=
  ∀ n, P16360356487017188385.a n = A046207 (n + 1)

end A046207

/-!
# A046208: In Leibniz's Harmonic Triangle, write the numerator first and then the denominator of each element to the right of the central elements.

The programs for A046208, the canonical program `A046208.P6883400748665039636` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046208 has offset 1).

The definition of A046208 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046208.P534468881293722082

`A046207(A152271(n))/gcd(2, n)`
-/

namespace A046208.P534468881293722082
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046207 (A152271 n).toNat : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A046208.P534468881293722082

namespace A046208

/-- `A046207(A152271(n))/gcd(2, n)` -/
def P534468881293722082.Spec : Prop :=
  ∀ n, P534468881293722082.a n = (A046208 (n + 1) : ℚ)

end A046208

/-! ## A046208.P789852514874859652

`A046207(A008619(n))^(n%2)`
-/

namespace A046208.P789852514874859652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046207 (A008619 n).toNat ^ (n % 2)

end

end A046208.P789852514874859652

namespace A046208

/-- `A046207(A008619(n))^(n%2)` -/
def P789852514874859652.Spec : Prop :=
  ∀ n, P789852514874859652.a n = A046208 (n + 1)

end A046208

/-! ## A046208.P6883400748665039636

`A046207(A152271(n))-A059841(n)`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046208

/-- `A046207(A152271(n))-A059841(n)` -/
def P6883400748665039636.Spec : Prop :=
  ∀ n, P6883400748665039636.a n = A046208 (n + 1)

theorem P6883400748665039636.correct : P6883400748665039636.Spec := by
  intro n
  simp only [A046208, Nat.add_sub_cancel]

end A046208

/-! ## A046208.P15407884778982844125

`gcd(A046207(A008619(n)), A056594(n))`
-/

namespace A046208.P15407884778982844125
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046207 (A008619 n).toNat) (A056594 n)

end

end A046208.P15407884778982844125

namespace A046208

/-- `gcd(A046207(A008619(n)), A056594(n))` -/
def P15407884778982844125.Spec : Prop :=
  ∀ n, (P15407884778982844125.a n : ℤ) = A046208 (n + 1)

end A046208

/-! ## A046208.P825128631368745652

`A046207(A152271(n))-A056594(n)²`
-/

namespace A046208.P825128631368745652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046207 (A152271 n).toNat - A056594 n ^ 2

end

end A046208.P825128631368745652

namespace A046208

/-- `A046207(A152271(n))-A056594(n)²` -/
def P825128631368745652.Spec : Prop :=
  ∀ n, P825128631368745652.a n = A046208 (n + 1)

end A046208

/-! ## A046208.P11411813526113761604

`A046207(A152271(n))-∑[A033999(n)]`
-/

namespace A046208.P11411813526113761604
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033999 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046207 (A152271 n).toNat - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046208.P11411813526113761604

namespace A046208

/-- `A046207(A152271(n))-∑[A033999(n)]` -/
def P11411813526113761604.Spec : Prop :=
  ∀ n, P11411813526113761604.a n = A046208 (n + 1)

end A046208

/-! ## A046208.P14377573013457484808

`A046207(A152271(n))^Δ[A008619(n)]`
-/

namespace A046208.P14377573013457484808
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046207 (A152271 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A046208.P14377573013457484808

namespace A046208

/-- `A046207(A152271(n))^Δ[A008619(n)]` -/
def P14377573013457484808.Spec : Prop :=
  ∀ n, P14377573013457484808.a n = (A046208 (n + 1) : ℚ)

end A046208

/-! ## A046208.P15648695389885804166

`A046207(A152271(n))-char[A005843(n)]`
-/

namespace A046208.P15648695389885804166
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005843 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046207 (A152271 n).toNat - ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A046208.P15648695389885804166

namespace A046208

/-- `A046207(A152271(n))-char[A005843(n)]` -/
def P15648695389885804166.Spec : Prop :=
  ∀ n, P15648695389885804166.a n = A046208 (n + 1)

end A046208

/-! ## A046208.P7736815335829114692

`A046207(A008619(n))^Δ[A004526(n)]`
-/

namespace A046208.P7736815335829114692
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046207 (A008619 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A046208.P7736815335829114692

namespace A046208

/-- `A046207(A008619(n))^Δ[A004526(n)]` -/
def P7736815335829114692.Spec : Prop :=
  ∀ n, P7736815335829114692.a n = (A046208 (n + 1) : ℚ)

end A046208

/-! ## A046208.P4081222989337279452

`A046207(A152271(n))^Δ[A004526(n)]`
-/

namespace A046208.P4081222989337279452
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046207 (A152271 n).toNat : ℚ) ^ (f1 (n + 1) - f1 n : ℤ)

end

end A046208.P4081222989337279452

namespace A046208

/-- `A046207(A152271(n))^Δ[A004526(n)]` -/
def P4081222989337279452.Spec : Prop :=
  ∀ n, P4081222989337279452.a n = (A046208 (n + 1) : ℚ)

end A046208

/-! ## A046208.P13761346517648475397

`gcd(A046207(A152271(n)), A077896(n))`
-/

namespace A046208.P13761346517648475397
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046207 (A152271 n).toNat) (A077896 n)

end

end A046208.P13761346517648475397

namespace A046208

/-- `gcd(A046207(A152271(n)), A077896(n))` -/
def P13761346517648475397.Spec : Prop :=
  ∀ n, (P13761346517648475397.a n : ℤ) = A046208 (n + 1)

end A046208

/-! ## A046208.P3269070596147618433

`A046207(A152271(n))-A056594(n²)`
-/

namespace A046208.P3269070596147618433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046207 (A152271 n).toNat - A056594 (n ^ 2)

end

end A046208.P3269070596147618433

namespace A046208

/-- `A046207(A152271(n))-A056594(n²)` -/
def P3269070596147618433.Spec : Prop :=
  ∀ n, P3269070596147618433.a n = A046208 (n + 1)

end A046208

/-!
# A046209: Number of ternary Lyndon words whose digits sum to 0 mod 3; also number of trace 0 irreducible polynomials over GF(3).

The programs for A046209, the canonical program `A046209.P9712162930245462689` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046209 has offset 1).

The definition of A046209 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A046209.P4318598402013878185

`A053548(n+1)+A053560(n+1)+A053561(n+1)`
-/

namespace A046209.P4318598402013878185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053548 (n + 1) + A053560 (n + 1) + A053561 (n + 1)

end

end A046209.P4318598402013878185

namespace A046209

/-- `A053548(n+1)+A053560(n+1)+A053561(n+1)` -/
def P4318598402013878185.Spec : Prop :=
  ∀ n, P4318598402013878185.a n = A046209 (n + 1)

end A046209

/-! ## A046209.P9712162930245462689

`1/(3*(n+1))*∑{d}[n+1, gcd(#, 3)*A008683(#)*3^((n+1)/#)]`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046209

/-- `1/(3*(n+1))*∑{d}[n+1, gcd(#, 3)*A008683(#)*3^((n+1)/#)]` -/
def P9712162930245462689.Spec : Prop :=
  ∀ n, P9712162930245462689.a n = (A046209 (n + 1) : ℝ)

end A046209

/-! ## A046209.P14460665120714744799

`lcm(2, A006575(n+1))-A002075(n+1)`
-/

namespace A046209.P14460665120714744799
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A006575 (n + 1)) : ℤ) - A002075 (n + 1)

end

end A046209.P14460665120714744799

namespace A046209

/-- `lcm(2, A006575(n+1))-A002075(n+1)` -/
def P14460665120714744799.Spec : Prop :=
  ∀ n, P14460665120714744799.a n = A046209 (n + 1)

end A046209

/-! ## A046209.P191578981768107213

`A006575(n+1)+A000007(n)-A002075(n+1)`
-/

namespace A046209.P191578981768107213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006575 (n + 1) + (A000007 n - A002075 (n + 1))

end

end A046209.P191578981768107213

namespace A046209

/-- `A006575(n+1)+A000007(n)-A002075(n+1)` -/
def P191578981768107213.Spec : Prop :=
  ∀ n, P191578981768107213.a n = A046209 (n + 1)

end A046209

/-! ## A046209.P12581423824730403219

`A006575(n+1)+A002075(n+1)*A057428(n)`
-/

namespace A046209.P12581423824730403219
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006575 (n + 1) + A002075 (n + 1) * A057428 n

end

end A046209.P12581423824730403219

namespace A046209

/-- `A006575(n+1)+A002075(n+1)*A057428(n)` -/
def P12581423824730403219.Spec : Prop :=
  ∀ n, P12581423824730403219.a n = A046209 (n + 1)

end A046209

/-! ## A046209.P6159978550175400817

`A006575(n+1)-A002075(n+1)%A027376(n)`
-/

namespace A046209.P6159978550175400817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006575 (n + 1) - Int.tmod (A002075 (n + 1)) (A027376 n)

end

end A046209.P6159978550175400817

namespace A046209

/-- `A006575(n+1)-A002075(n+1)%A027376(n)` -/
def P6159978550175400817.Spec : Prop :=
  ∀ n, P6159978550175400817.a n = A046209 (n + 1)

end A046209

/-! ## A046209.P15644169311810510306

`A027376(n+1)-(A046211(n+1)+A046211(n+1))`
-/

namespace A046209.P15644169311810510306
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027376 (n + 1) - (A046211 (n + 1) + A046211 (n + 1))

end

end A046209.P15644169311810510306

namespace A046209

/-- `A027376(n+1)-(A046211(n+1)+A046211(n+1))` -/
def P15644169311810510306.Spec : Prop :=
  ∀ n, P15644169311810510306.a n = A046209 (n + 1)

end A046209

/-!
# A046211: Number of ternary Lyndon words whose digits sum to 1 (or 2) mod 3; number of trace 1 (or 2) monic irreducible polynomials over GF(3).

The programs for A046211, the canonical program `A046211.P6519559171447150891` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046211 has offset 1).

The definition of A046211 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 215 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046211.P6519559171447150891

`∑{d}[n+1, A008683(#)*A364210((n+1)/#)]`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046211

/-- `∑{d}[n+1, A008683(#)*A364210((n+1)/#)]` -/
def P6519559171447150891.Spec : Prop :=
  ∀ n, P6519559171447150891.a n = A046211 (n + 1)

theorem P6519559171447150891.correct : P6519559171447150891.Spec := by
  intro n
  simp only [A046211, Nat.add_sub_cancel]

end A046211

/-! ## A046211.P17622019633072760518

`A053562(n+1)+A053564(n+1)+A053563(n+1)`
-/

namespace A046211.P17622019633072760518
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053562 (n + 1) + (A053564 (n + 1) + A053563 (n + 1))

end

end A046211.P17622019633072760518

namespace A046211

/-- `A053562(n+1)+A053564(n+1)+A053563(n+1)` -/
def P17622019633072760518.Spec : Prop :=
  ∀ n, P17622019633072760518.a n = A046211 (n + 1)

end A046211

/-! ## A046211.P162551012256897893

`A133267(n+1)-A328742(n+1)`
-/

namespace A046211.P162551012256897893
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133267 (n + 1) - A328742 (n + 1)

end

end A046211.P162551012256897893

namespace A046211

/-- `A133267(n+1)-A328742(n+1)` -/
def P162551012256897893.Spec : Prop :=
  ∀ n, P162551012256897893.a n = A046211 (n + 1)

end A046211

/-! ## A046211.P14605317922472941125

`A110540(∑[n+2]+4)`
-/

namespace A046211.P14605317922472941125
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A110540 (∑ j ∈ Finset.range (n + 1), f1 j + 4)

end

end A046211.P14605317922472941125

namespace A046211

/-- `A110540(∑[n+2]+4)` -/
def P14605317922472941125.Spec : Prop :=
  ∀ n, P14605317922472941125.a n = A046211 (n + 1)

end A046211

/-! ## A046211.P3243465386203245700

`A110540(A167614(n+1))^ceil(acot(n))`
-/

namespace A046211.P3243465386203245700
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A110540 (A167614 (n + 1)).toNat : ℚ) ^ (⌈SequenceMachineLib.acot (n : ℝ)⌉ : ℤ)

end

end A046211.P3243465386203245700

namespace A046211

/-- `A110540(A167614(n+1))^ceil(acot(n))` -/
def P3243465386203245700.Spec : Prop :=
  ∀ n, P3243465386203245700.a n = (A046211 (n + 1) : ℚ)

end A046211

/-!
# A046212: First numerator and then denominator of central elements of Leibniz's Harmonic Triangle.

The programs for A046212, the canonical program `A046212.P8013275667879893669` is in `Seq.B001.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046212 has offset 1).

The definition of A046212 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 331 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046212.P8013275667879893669

`A056040(n*n%2)`

The canonical program, it is in `Seq.B001.C001`.
-/

namespace A046212

/-- `A056040(n*n%2)` -/
def P8013275667879893669.Spec : Prop :=
  ∀ n, P8013275667879893669.a n = A046212 (n + 1)

theorem P8013275667879893669.correct : P8013275667879893669.Spec := by
  intro n
  simp only [A046212, Nat.add_sub_cancel]

end A046212

/-! ## A046212.P4742200398625209754

`A056040(lcm(2, n)-n)`
-/

namespace A046212.P4742200398625209754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (Nat.lcm 2 n - n)

end

end A046212.P4742200398625209754

namespace A046212

/-- `A056040(lcm(2, n)-n)` -/
def P4742200398625209754.Spec : Prop :=
  ∀ n, P4742200398625209754.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P537280919182604773

`A056040(n*and(1, n))`
-/

namespace A046212.P537280919182604773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (n * Nat.land 1 n)

end

end A046212.P537280919182604773

namespace A046212

/-- `A056040(n*and(1, n))` -/
def P537280919182604773.Spec : Prop :=
  ∀ n, P537280919182604773.a n = A046212 (n + 1)

theorem P537280919182604773.correct : P537280919182604773.Spec := by
  intro n
  simp only [A046212, Nat.add_sub_cancel, A046212.P537280919182604773.a, A046212.P8013275667879893669.a, SequenceMachineLib.memo_apply]
  try simp

end A046212

/-! ## A046212.P12925739314644828958

`A100071(n^and(1, n))`
-/

namespace A046212.P12925739314644828958
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (n ^ Nat.land 1 n)

end

end A046212.P12925739314644828958

namespace A046212

/-- `A100071(n^and(1, n))` -/
def P12925739314644828958.Spec : Prop :=
  ∀ n, P12925739314644828958.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P16945177145424202467

`A056040(gcd(n, or(1, n)))`
-/

namespace A046212.P16945177145424202467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (Nat.gcd n (Nat.lor 1 n))

end

end A046212.P16945177145424202467

namespace A046212

/-- `A056040(gcd(n, or(1, n)))` -/
def P16945177145424202467.Spec : Prop :=
  ∀ n, P16945177145424202467.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P5543401300580072487

`A056040(and(n, (-1)^n))`
-/

namespace A046212.P5543401300580072487
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (Int.land (n : ℤ) ((-1) ^ n)).toNat

end

end A046212.P5543401300580072487

namespace A046212

/-- `A056040(and(n, (-1)^n))` -/
def P5543401300580072487.Spec : Prop :=
  ∀ n, P5543401300580072487.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P5417911338133287644

`A056040(or(1, n)%(n+1))`
-/

namespace A046212.P5417911338133287644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (Nat.lor 1 n % (n + 1))

end

end A046212.P5417911338133287644

namespace A046212

/-- `A056040(or(1, n)%(n+1))` -/
def P5417911338133287644.Spec : Prop :=
  ∀ n, P5417911338133287644.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P4019329878301806694

`A002457(gcd(xor(1, -n), ∑[n])-1)`
-/

namespace A046212.P4019329878301806694
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002457 (Int.gcd (Int.xor 1 (-(n : ℤ))) ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) - 1)

end

end A046212.P4019329878301806694

namespace A046212

/-- `A002457(gcd(xor(1, -n), ∑[n])-1)` -/
def P4019329878301806694.Spec : Prop :=
  ∀ n, P4019329878301806694.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P12445030597723219558

`A056040(A093178(n))`
-/

namespace A046212.P12445030597723219558
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A093178 n).toNat

end

end A046212.P12445030597723219558

namespace A046212

/-- `A056040(A093178(n))` -/
def P12445030597723219558.Spec : Prop :=
  ∀ n, P12445030597723219558.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P7004385081776267725

`A274707(A133265(n))`
-/

namespace A046212.P7004385081776267725
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274707 (A133265 n).toNat

end

end A046212.P7004385081776267725

namespace A046212

/-- `A274707(A133265(n))` -/
def P7004385081776267725.Spec : Prop :=
  ∀ n, P7004385081776267725.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P1779128648830182972

`A056040(A133265(n)-1)`
-/

namespace A046212.P1779128648830182972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (A133265 n - 1).toNat

end

end A046212.P1779128648830182972

namespace A046212

/-- `A056040(A133265(n)-1)` -/
def P1779128648830182972.Spec : Prop :=
  ∀ n, P1779128648830182972.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P13227248303536566180

`A056040(n*A000035(n))`
-/

namespace A046212.P13227248303536566180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 ((n : ℤ) * A000035 n).toNat

end

end A046212.P13227248303536566180

namespace A046212

/-- `A056040(n*A000035(n))` -/
def P13227248303536566180.Spec : Prop :=
  ∀ n, P13227248303536566180.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P4243029149835024311

`A056040(gcd(n, A056594(n)))`
-/

namespace A046212.P4243029149835024311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (Int.gcd (n : ℤ) (A056594 n))

end

end A046212.P4243029149835024311

namespace A046212

/-- `A056040(gcd(n, A056594(n)))` -/
def P4243029149835024311.Spec : Prop :=
  ∀ n, P4243029149835024311.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P11714897908400447836

`A056040(Δ[A004526(n)²])`
-/

namespace A046212.P11714897908400447836
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (f1 (n + 1) - f1 n).toNat

end

end A046212.P11714897908400447836

namespace A046212

/-- `A056040(Δ[A004526(n)²])` -/
def P11714897908400447836.Spec : Prop :=
  ∀ n, P11714897908400447836.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P9643306355235654082

`A056040(n*Δ[A004526(n)])`
-/

namespace A046212.P9643306355235654082
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 ((n : ℤ) * (f1 (n + 1) - f1 n)).toNat

end

end A046212.P9643306355235654082

namespace A046212

/-- `A056040(n*Δ[A004526(n)])` -/
def P9643306355235654082.Spec : Prop :=
  ∀ n, P9643306355235654082.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P16519649639537678728

`A056040(2*A152271(n)-1)`
-/

namespace A046212.P16519649639537678728
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * A152271 n - 1).toNat

end

end A046212.P16519649639537678728

namespace A046212

/-- `A056040(2*A152271(n)-1)` -/
def P16519649639537678728.Spec : Prop :=
  ∀ n, P16519649639537678728.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P822891914382940656

`A100071(2*A152271(n)-1)`
-/

namespace A046212.P822891914382940656
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100071 (2 * A152271 n - 1).toNat

end

end A046212.P822891914382940656

namespace A046212

/-- `A100071(2*A152271(n)-1)` -/
def P822891914382940656.Spec : Prop :=
  ∀ n, P822891914382940656.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P991316295460705946

`A056040(n*(A000034(n)-1))`
-/

namespace A046212.P991316295460705946
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 ((n : ℤ) * (A000034 n - 1)).toNat

end

end A046212.P991316295460705946

namespace A046212

/-- `A056040(n*(A000034(n)-1))` -/
def P991316295460705946.Spec : Prop :=
  ∀ n, P991316295460705946.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P16663868337138182878

`A056040(n*(2-A040001(n)))`
-/

namespace A046212.P16663868337138182878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 ((n : ℤ) * (2 - A040001 n)).toNat

end

end A046212.P16663868337138182878

namespace A046212

/-- `A056040(n*(2-A040001(n)))` -/
def P16663868337138182878.Spec : Prop :=
  ∀ n, P16663868337138182878.a n = A046212 (n + 1)

end A046212

/-! ## A046212.P11789568370193416752

`A056040(n*A056594(n+1)²)`
-/

namespace A046212.P11789568370193416752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 ((n : ℤ) * A056594 (n + 1) ^ 2).toNat

end

end A046212.P11789568370193416752

namespace A046212

/-- `A056040(n*A056594(n+1)²)` -/
def P11789568370193416752.Spec : Prop :=
  ∀ n, P11789568370193416752.a n = A046212 (n + 1)

end A046212

/-!
# A046213: First numerator and then denominator of 1/2-Pascal triangle (by row). To get a 1/2-Pascal triangle, replace "2" in third row of Pascal triangle with "1/2" and calculate all other rows as in Pascal triangle.

The programs for A046213, there is no canonical definition to state claims against.
-/

/-! ## A046213.P16362808738004716331

`A046214(xor(1, n)+1)`
-/

namespace A046213.P16362808738004716331
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (Nat.xor 1 n + 1)

end

end A046213.P16362808738004716331

/-! ## A046213.P3932043943582739422

`A046214(A004442(n)+1)`
-/

namespace A046213.P3932043943582739422
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (A004442 n + 1).toNat

end

end A046213.P3932043943582739422

/-! ## A046213.P7077694653657811287

`A046214(A014681(n+1))`
-/

namespace A046213.P7077694653657811287
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (A014681 (n + 1)).toNat

end

end A046213.P7077694653657811287

/-! ## A046213.P18331597941552766773

`A046214(A103889(n+1))`
-/

namespace A046213.P18331597941552766773
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (A103889 (n + 1)).toNat

end

end A046213.P18331597941552766773

/-! ## A046213.P4817248262292260128

`A046214(A114112(n+1))`
-/

namespace A046213.P4817248262292260128
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (A114112 (n + 1)).toNat

end

end A046213.P4817248262292260128

/-! ## A046213.P5059324325566930433

`A046214(xor(1, A165754(n)))`
-/

namespace A046213.P5059324325566930433
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (Int.xor 1 (A165754 n)).toNat

end

end A046213.P5059324325566930433

/-! ## A046213.P17388356673146658446

`A046214(abs(Δ[A014682(n)]))`
-/

namespace A046213.P17388356673146658446
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 |f1 (n + 1) - f1 n|.toNat

end

end A046213.P17388356673146658446

/-! ## A046213.P7764190127578320645

`A046214(2*A109613(n)-n)`
-/

namespace A046213.P7764190127578320645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (2 * A109613 n - (n : ℤ)).toNat

end

end A046213.P7764190127578320645

/-! ## A046213.P9186061163859140952

`A046214(n+2-Δ[A109613(n)])`
-/

namespace A046213.P9186061163859140952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 ((n + 2 : ℤ) - (f1 (n + 1) - f1 n)).toNat

end

end A046213.P9186061163859140952

/-! ## A046213.P1965242457359996698

`A046214(A109613(n)+A109613(n)-n)`
-/

namespace A046213.P1965242457359996698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (A109613 n + (A109613 n - (n : ℤ))).toNat

end

end A046213.P1965242457359996698

/-! ## A046213.P5202501765576283751

`A046214(A109613(n)-(n-A109613(n)))`
-/

namespace A046213.P5202501765576283751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (A109613 n - ((n : ℤ) - A109613 n)).toNat

end

end A046213.P5202501765576283751

/-! ## A046213.P10609302449493431447

`A046214(Δ[A236453(n)])`
-/

namespace A046213.P10609302449493431447
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (f1 (n + 1) - f1 n).toNat

end

end A046213.P10609302449493431447

/-! ## A046213.P3948911049872754506

`A046214(Δ[A109613(n+1)]+n)`
-/

namespace A046213.P3948911049872754506
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (f1 (n + 1) - f1 n + (n : ℤ)).toNat

end

end A046213.P3948911049872754506

/-! ## A046213.P10278691195353022791

`A046214(A236453(n+1)-A236453(n))`
-/

namespace A046213.P10278691195353022791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (A236453 (n + 1) - A236453 n).toNat

end

end A046213.P10278691195353022791

/-!
# A046214: First denominator and then numerator of 1/2-Pascal triangle (by row).

The programs for A046214, there is no canonical definition to state claims against.
-/

/-! ## A046214.P17281643313252757396

`A046213(xor(1, n)+1)`
-/

namespace A046214.P17281643313252757396
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (Nat.xor 1 n + 1)

end

end A046214.P17281643313252757396

/-! ## A046214.P12724010184014476263

`A046213(2-xor(1, 1-n))`
-/

namespace A046214.P12724010184014476263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (2 - Int.xor 1 (1 - (n : ℤ))).toNat

end

end A046214.P12724010184014476263

/-! ## A046214.P1539737105058874827

`A046213(n+2-Δ[or(1, n)])`
-/

namespace A046214.P1539737105058874827
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lor 1 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 ((n + 2 : ℤ) - ((f1 (n + 1) : ℤ) - (f1 n : ℤ))).toNat

end

end A046214.P1539737105058874827

/-! ## A046214.P13546285845992341819

`A046213(A004442(n)+1)`
-/

namespace A046214.P13546285845992341819
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A004442 n + 1).toNat

end

end A046214.P13546285845992341819

/-! ## A046214.P8924088191554297694

`A046213(A014681(n+1))`
-/

namespace A046214.P8924088191554297694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A014681 (n + 1)).toNat

end

end A046214.P8924088191554297694

/-! ## A046214.P8429290497594882346

`A046213(A103889(n+1))`
-/

namespace A046214.P8429290497594882346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A103889 (n + 1)).toNat

end

end A046214.P8429290497594882346

/-! ## A046214.P9360104108536202304

`A046213(A114112(n+1))`
-/

namespace A046214.P9360104108536202304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A114112 (n + 1)).toNat

end

end A046214.P9360104108536202304

/-! ## A046214.P11269356640372737772

`A046213(xor(1, A165754(n)))`
-/

namespace A046214.P11269356640372737772
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (Int.xor 1 (A165754 n)).toNat

end

end A046214.P11269356640372737772

/-! ## A046214.P11735905583456883546

`A046213(abs(Δ[A014682(n)]))`
-/

namespace A046214.P11735905583456883546
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 |f1 (n + 1) - f1 n|.toNat

end

end A046214.P11735905583456883546

/-! ## A046214.P4496849277270664320

`A046213((A166519(n)+1)/2)`
-/

namespace A046214.P4496849277270664320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (SequenceMachineLib.roundAway ((A166519 n + 1 : ℚ) / 2)).toNat

end

end A046214.P4496849277270664320

/-! ## A046214.P15836612384900953423

`A046213(2*A059841(n)+n)`
-/

namespace A046214.P15836612384900953423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (2 * A059841 n + (n : ℤ)).toNat

end

end A046214.P15836612384900953423

/-! ## A046214.P16601242635518475295

`A046213(2*A109613(n)-n)`
-/

namespace A046214.P16601242635518475295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (2 * A109613 n - (n : ℤ)).toNat

end

end A046214.P16601242635518475295

/-! ## A046214.P15944717217196530058

`A046213(A109613(n)+A059841(n))`
-/

namespace A046214.P15944717217196530058
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A109613 n + A059841 n).toNat

end

end A046214.P15944717217196530058

/-! ## A046214.P7945740958461226450

`A046213(A059841(n)+A059841(n)+n)`
-/

namespace A046214.P7945740958461226450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A059841 n + (A059841 n + (n : ℤ))).toNat

end

end A046214.P7945740958461226450

/-! ## A046214.P6186297213225909357

`A046213(A109613(n)+A109613(n)-n)`
-/

namespace A046214.P6186297213225909357
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A109613 n + (A109613 n - (n : ℤ))).toNat

end

end A046214.P6186297213225909357

/-! ## A046214.P3091617066585793859

`A046213(A109613(n)-(n-A109613(n)))`
-/

namespace A046214.P3091617066585793859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A109613 n - ((n : ℤ) - A109613 n)).toNat

end

end A046214.P3091617066585793859

/-! ## A046214.P10970794368781150478

`A046213(Δ[A236453(n)])`
-/

namespace A046214.P10970794368781150478
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (f1 (n + 1) - f1 n).toNat

end

end A046214.P10970794368781150478

/-! ## A046214.P4704155470799543123

`A046213(Δ[A000124(n)-and(1, n+1)])`
-/

namespace A046214.P4704155470799543123
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000124 n - (Nat.land 1 (n + 1) : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (f1 (n + 1) - f1 n).toNat

end

end A046214.P4704155470799543123

/-! ## A046214.P10647747293878670924

`A046213(A236453(n+1)-A236453(n))`
-/

namespace A046214.P10647747293878670924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A236453 (n + 1) - A236453 n).toNat

end

end A046214.P10647747293878670924

/-!
# A046215: First numerator and then denominator of 1/2-Pascal triangle (by row), excluding 1's.

The programs for A046215, there is no canonical definition to state claims against.
-/

/-! ## A046215.P2956579210043165167

`A046213(lt[1, A046213(n+1)]+1)`
-/

namespace A046215.P2956579210043165167
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046215.P2956579210043165167

/-! ## A046215.P1718330921551919293

`A046213(eq[2, 2%A046213(n+1)²]+1)`
-/

namespace A046215.P1718330921551919293
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A046213 (n + 1) ^ 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046215.P1718330921551919293

/-! ## A046215.P12692761563944501635

`A046213(eq[0, floor(1/A046213(n+1))]+1)`
-/

namespace A046215.P12692761563944501635
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊1 / (A046213 (n + 1) : ℚ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046215.P12692761563944501635

/-! ## A046215.P10330555061090380967

`A046213(eq[1, ceil(2/A046213(n+1))]+1)`
-/

namespace A046215.P10330555061090380967
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈2 / (A046213 (n + 1) : ℚ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046215.P10330555061090380967

/-! ## A046215.P11226550149467011741

`A286477(p?[A008578(A046213(n+1))])`
-/

namespace A046215.P11226550149467011741
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046213 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286477 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046215.P11226550149467011741

/-!
# A046216: First denominator and then numerator of 1/2-Pascal triangle (by row), excluding 1's.

The programs for A046216, there is no canonical definition to state claims against.
-/

/-! ## A046216.P14760736445426034789

`A046214(lt[1, A046214(n+1)]+1)`
-/

namespace A046216.P14760736445426034789
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046216.P14760736445426034789

/-! ## A046216.P11449538792585017393

`A036234(p?[A008578(A046214(n+1))])`
-/

namespace A046216.P11449538792585017393
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046214 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046216.P11449538792585017393

/-! ## A046216.P13333636638747660230

`p?[gcd(A010894(n), A046214(n+1))]`
-/

namespace A046216.P13333636638747660230
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A010894 (n + 21)) (A046214 (n + 1))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A046216.P13333636638747660230

/-! ## A046216.P11416441432044511679

`p?[A046214(gcd(n, A010894(n)))]`
-/

namespace A046216.P11416441432044511679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (Int.gcd (n : ℤ) (A010894 (n + 21)))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046216.P11416441432044511679

/-! ## A046216.P9477023744911129892

`A235122(A162612(n+2))`
-/

namespace A046216.P9477023744911129892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A235122 (A162612 (n + 2)).toNat

end

end A046216.P9477023744911129892

/-!
# A046217: First numerator and then denominator of 1/2-Pascal triangle (by row) excluding 1's and 2's.

The programs for A046217, the canonical program `A046217.P15675039198389379782` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046217 has offset 1).

The definition of A046217 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 9999 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046217.P15675039198389379782

`lcm(2, A134636(n+1))/2`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046217

/-- `lcm(2, A134636(n+1))/2` -/
def P15675039198389379782.Spec : Prop :=
  ∀ n, P15675039198389379782.a n = (A046217 (n + 1) : ℚ)

end A046217

/-! ## A046217.P12826698866781015081

`A134636(n+1)/gcd(2, A007318(n+1))`
-/

namespace A046217.P12826698866781015081
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A134636 (n + 1) : ℚ) / (Int.gcd 2 (A007318 (n + 1)) : ℚ)

end

end A046217.P12826698866781015081

namespace A046217

/-- `A134636(n+1)/gcd(2, A007318(n+1))` -/
def P12826698866781015081.Spec : Prop :=
  ∀ n, P12826698866781015081.a n = (A046217 (n + 1) : ℚ)

end A046217

/-! ## A046217.P17271923634904081625

`A046218(lt[1, A046218(n+1)]+1)`
-/

namespace A046217.P17271923634904081625
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046217.P17271923634904081625

namespace A046217

/-- `A046218(lt[1, A046218(n+1)]+1)` -/
def P17271923634904081625.Spec : Prop :=
  ∀ n, P17271923634904081625.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P4906285537760210748

`A046533(lt[1, A046533(n+1)]+1)`
-/

namespace A046217.P4906285537760210748
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046533 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046217.P4906285537760210748

namespace A046217

/-- `A046533(lt[1, A046533(n+1)]+1)` -/
def P4906285537760210748.Spec : Prop :=
  ∀ n, P4906285537760210748.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P18397701496293194882

`A046213(lt[2, A046214(n+1)])`
-/

namespace A046217.P18397701496293194882
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A046217.P18397701496293194882

namespace A046217

/-- `A046213(lt[2, A046214(n+1)])` -/
def P18397701496293194882.Spec : Prop :=
  ∀ n, P18397701496293194882.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P2253174865082610217

`A046213(lt[2, A046213(n+1)]+1)`
-/

namespace A046217.P2253174865082610217
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046217.P2253174865082610217

namespace A046217

/-- `A046213(lt[2, A046213(n+1)]+1)` -/
def P2253174865082610217.Spec : Prop :=
  ∀ n, P2253174865082610217.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P1694798219735883356

`A046214(lt[2, A046214(n+1)]+1)`
-/

namespace A046217.P1694798219735883356
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046217.P1694798219735883356

namespace A046217

/-- `A046214(lt[2, A046214(n+1)]+1)` -/
def P1694798219735883356.Spec : Prop :=
  ∀ n, P1694798219735883356.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P5956695868760546150

`filter[A046213(n+1), A347523(#)]`
-/

namespace A046217.P5956695868760546150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A046217.P5956695868760546150

namespace A046217

/-- `filter[A046213(n+1), A347523(#)]` -/
def P5956695868760546150.Spec : Prop :=
  ∀ n, P5956695868760546150.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P15619350265983097984

`filter[A046214(n+1), A347523(#)]`
-/

namespace A046217.P15619350265983097984
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A046217.P15619350265983097984

namespace A046217

/-- `filter[A046214(n+1), A347523(#)]` -/
def P15619350265983097984.Spec : Prop :=
  ∀ n, P15619350265983097984.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P6410179304812468584

`filter[A046215(n+1), A347523(#)]`
-/

namespace A046217.P6410179304812468584
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A046217.P6410179304812468584

namespace A046217

/-- `filter[A046215(n+1), A347523(#)]` -/
def P6410179304812468584.Spec : Prop :=
  ∀ n, P6410179304812468584.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P14639514708959511079

`filter[A046216(n+1), A347523(#)]`
-/

namespace A046217.P14639514708959511079
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A046217.P14639514708959511079

namespace A046217

/-- `filter[A046216(n+1), A347523(#)]` -/
def P14639514708959511079.Spec : Prop :=
  ∀ n, P14639514708959511079.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P10820406568517938241

`filter[A046218(n+1), A347523(#)]`
-/

namespace A046217.P10820406568517938241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A046217.P10820406568517938241

namespace A046217

/-- `filter[A046218(n+1), A347523(#)]` -/
def P10820406568517938241.Spec : Prop :=
  ∀ n, P10820406568517938241.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P8197281886075348507

`filter[A046532(n+1), A347523(#)]`
-/

namespace A046217.P8197281886075348507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046532 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A046217.P8197281886075348507

namespace A046217

/-- `filter[A046532(n+1), A347523(#)]` -/
def P8197281886075348507.Spec : Prop :=
  ∀ n, P8197281886075348507.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P3716818225471502276

`filter[A046533(n+1), A347523(#)]`
-/

namespace A046217.P3716818225471502276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046533 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A046217.P3716818225471502276

namespace A046217

/-- `filter[A046533(n+1), A347523(#)]` -/
def P3716818225471502276.Spec : Prop :=
  ∀ n, P3716818225471502276.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P2569474681905780788

`A014682(lcm(2, A134636(n+1)))`
-/

namespace A046217.P2569474681905780788
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (Int.lcm 2 (A134636 (n + 1)))

end

end A046217.P2569474681905780788

namespace A046217

/-- `A014682(lcm(2, A134636(n+1)))` -/
def P2569474681905780788.Spec : Prop :=
  ∀ n, P2569474681905780788.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P4380835946230571874

`filter[A046215(n+1), A267579(#)]`
-/

namespace A046217.P4380835946230571874
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046215 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A046217.P4380835946230571874

namespace A046217

/-- `filter[A046215(n+1), A267579(#)]` -/
def P4380835946230571874.Spec : Prop :=
  ∀ n, P4380835946230571874.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P16080966979485055409

`filter[A046216(n+1), A267579(#)]`
-/

namespace A046217.P16080966979485055409
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046216 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A046217.P16080966979485055409

namespace A046217

/-- `filter[A046216(n+1), A267579(#)]` -/
def P16080966979485055409.Spec : Prop :=
  ∀ n, P16080966979485055409.a n = A046217 (n + 1)

end A046217

/-! ## A046217.P2391127242665820258

`A026741(A134636(n+1))`
-/

namespace A046217.P2391127242665820258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A134636 (n + 1)).toNat

end

end A046217.P2391127242665820258

namespace A046217

/-- `A026741(A134636(n+1))` -/
def P2391127242665820258.Spec : Prop :=
  ∀ n, P2391127242665820258.a n = A046217 (n + 1)

end A046217

/-!
# A046218: Numerators of elements of 1/2-Pascal triangle (by row).

The programs for A046218, there is no canonical definition to state claims against.
-/

/-! ## A046218.P4412210122909034385

`A046213(Δ[n²])`
-/

namespace A046218.P4412210122909034385
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046218.P4412210122909034385

/-! ## A046218.P7647891814211533408

`A046214(2*(n+1))`
-/

namespace A046218.P7647891814211533408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (2 * (n + 1))

end

end A046218.P7647891814211533408

/-! ## A046218.P14213492522393988645

`root(A046213(2*n+1), 2)²`
-/

namespace A046218.P14213492522393988645
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ((A046213 (2 * n + 1) : ℝ) ^ (1 / (2 : ℝ))) ^ 2

end

end A046218.P14213492522393988645

/-! ## A046218.P8895748404522807851

`A046213(2*n+1)+A000035(2*n)`
-/

namespace A046218.P8895748404522807851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (2 * n + 1) + A000035 (2 * n)

end

end A046218.P8895748404522807851

/-! ## A046218.P17507923452356915513

`A046213(2*n+1)*A059841(2*n)`
-/

namespace A046218.P17507923452356915513
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (2 * n + 1) * A059841 (2 * n)

end

end A046218.P17507923452356915513

/-! ## A046218.P18411047854228896208

`A046213(2*n+1)%A098355(n+1)`
-/

namespace A046218.P18411047854228896208
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046213 (2 * n + 1)) (A098355 (n + 1))

end

end A046218.P18411047854228896208

/-! ## A046218.P7645531660683897321

`gcd(2, A000040(n+2))*A046213(2*n+1)`
-/

namespace A046218.P7645531660683897321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd 2 (A000040 (n + 2)) : ℤ) * A046213 (2 * n + 1)

end

end A046218.P7645531660683897321

/-! ## A046218.P15094614675185309485

`A046213(2*n+1)+A014682(2*n)-n`
-/

namespace A046218.P15094614675185309485
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (2 * n + 1) + (A014682 (2 * n) - (n : ℤ))

end

end A046218.P15094614675185309485

/-! ## A046218.P13691264873200378492

`(A008619(2*n)-n)*A046213(2*n+1)`
-/

namespace A046218.P13691264873200378492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A008619 (2 * n) - (n : ℤ)) * A046213 (2 * n + 1)

end

end A046218.P13691264873200378492

/-! ## A046218.P308997075137931362

`gcd(n, A005408(2*n))*A046213(2*n+1)`
-/

namespace A046218.P308997075137931362
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.gcd (n : ℤ) (A005408 (2 * n)) : ℤ) * A046213 (2 * n + 1)

end

end A046218.P308997075137931362

/-! ## A046218.P10540367134581909150

`A046213(2*n+1)+2-A177002(2*n+1)`
-/

namespace A046218.P10540367134581909150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (2 * n + 1) + (2 - A177002 (2 * n + 1))

end

end A046218.P10540367134581909150

/-! ## A046218.P6425291826755458366

`A046213(A005408(n))/gcd(2, A005408(n))`
-/

namespace A046218.P6425291826755458366
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046213 (A005408 n).toNat : ℚ) / (Int.gcd 2 (A005408 n) : ℚ)

end

end A046218.P6425291826755458366

/-! ## A046218.P3802634910331868146

`A059841(A109613(n))+A046213(2*n+1)`
-/

namespace A046218.P3802634910331868146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 (A109613 n).toNat + A046213 (2 * n + 1)

end

end A046218.P3802634910331868146

/-! ## A046218.P12360959277617015425

`gcd(A046213(2*n+1), A046213(A005408(n)))`
-/

namespace A046218.P12360959277617015425
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046213 (2 * n + 1)) (A046213 (A005408 n).toNat)

end

end A046218.P12360959277617015425

/-! ## A046218.P13139384255964992848

`A046213(A005408(n))^gcd(3, A000040(n+2))`
-/

namespace A046218.P13139384255964992848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A005408 n).toNat ^ Int.gcd 3 (A000040 (n + 2))

end

end A046218.P13139384255964992848

/-! ## A046218.P1704958869805572770

`A046213(n+1+n)+A001842(A170818(n+1))`
-/

namespace A046218.P1704958869805572770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (n + 1 + n) + A001842 (A170818 (n + 1)).toNat

end

end A046218.P1704958869805572770

/-! ## A046218.P12375780548588194073

`A000010(A046213(2*(n+1)))*A046213(2*n+1)`
-/

namespace A046218.P12375780548588194073
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A046213 (2 * (n + 1))).toNat * A046213 (2 * n + 1)

end

end A046218.P12375780548588194073

/-! ## A046218.P4324599727241699190

`A000027(A046213(2*n+1))`
-/

namespace A046218.P4324599727241699190
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A046213 (2 * n + 1)).toNat

end

end A046218.P4324599727241699190

/-! ## A046218.P8801816816507901995

`A014682(2*A046213(2*n+1))`
-/

namespace A046218.P8801816816507901995
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 (2 * A046213 (2 * n + 1)).toNat

end

end A046218.P8801816816507901995

/-!
# A046219: Denominators of elements of 1/2-Pascal triangle (by row).

The programs for A046219, the canonical program `A046219.P8977103861444328080` is in `Seq.B004.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046219 has offset 1).

The definition of A046219 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046219.P8977103861444328080

`gcd(2, A323211(n))`

The canonical program, it is in `Seq.B004.C000`.
-/

namespace A046219

/-- `gcd(2, A323211(n))` -/
def P8977103861444328080.Spec : Prop :=
  ∀ n, (P8977103861444328080.a n : ℤ) = A046219 (n + 1)

theorem P8977103861444328080.correct : P8977103861444328080.Spec := by
  intro n
  simp only [A046219, Nat.add_sub_cancel]

end A046219

/-! ## A046219.P2035534311520911007

`log2(A046569(n+1))!`
-/

namespace A046219.P2035534311520911007
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A046569 (n + 1) : ℝ))).toNat

end

end A046219.P2035534311520911007

namespace A046219

/-- `log2(A046569(n+1))!` -/
def P2035534311520911007.Spec : Prop :=
  ∀ n, (P2035534311520911007.a n : ℤ) = A046219 (n + 1)

end A046219

/-! ## A046219.P370518300959053442

`gcd(A046698(n), A323231(n))`
-/

namespace A046219.P370518300959053442
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A046698 n) (A323231 n)

end

end A046219.P370518300959053442

namespace A046219

/-- `gcd(A046698(n), A323231(n))` -/
def P370518300959053442.Spec : Prop :=
  ∀ n, (P370518300959053442.a n : ℤ) = A046219 (n + 1)

end A046219

/-! ## A046219.P5437730737524398601

`gcd(A323231(n)², A084100(n))`
-/

namespace A046219.P5437730737524398601
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323231 n ^ 2) (A084100 n)

end

end A046219.P5437730737524398601

namespace A046219

/-- `gcd(A323231(n)², A084100(n))` -/
def P5437730737524398601.Spec : Prop :=
  ∀ n, (P5437730737524398601.a n : ℤ) = A046219 (n + 1)

end A046219

/-! ## A046219.P16354337404859644116

`gcd(A323231(n)+2, A329683(n))`
-/

namespace A046219.P16354337404859644116
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A323231 n + 2) (A329683 n)

end

end A046219.P16354337404859644116

namespace A046219

/-- `gcd(A323231(n)+2, A329683(n))` -/
def P16354337404859644116.Spec : Prop :=
  ∀ n, (P16354337404859644116.a n : ℤ) = A046219 (n + 1)

end A046219

/-! ## A046219.P12207232632872943052

`A046214(Δ[n²])`
-/

namespace A046219.P12207232632872943052
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat

end

end A046219.P12207232632872943052

namespace A046219

/-- `A046214(Δ[n²])` -/
def P12207232632872943052.Spec : Prop :=
  ∀ n, P12207232632872943052.a n = A046219 (n + 1)

end A046219

/-! ## A046219.P2876363470413264156

`A046213(2*(n+1))`
-/

namespace A046219.P2876363470413264156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (2 * (n + 1))

end

end A046219.P2876363470413264156

namespace A046219

/-- `A046213(2*(n+1))` -/
def P2876363470413264156.Spec : Prop :=
  ∀ n, P2876363470413264156.a n = A046219 (n + 1)

end A046219

/-! ## A046219.P8567177471683745145

`A046214(2*n+1)!`
-/

namespace A046219.P8567177471683745145
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A046214 (2 * n + 1)).toNat

end

end A046219.P8567177471683745145

namespace A046219

/-- `A046214(2*n+1)!` -/
def P8567177471683745145.Spec : Prop :=
  ∀ n, (P8567177471683745145.a n : ℤ) = A046219 (n + 1)

end A046219

/-! ## A046219.P16970918822520159694

`A046213(n+2+n)!`
-/

namespace A046219.P16970918822520159694
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A046213 (n + 2 + n)).toNat

end

end A046219.P16970918822520159694

namespace A046219

/-- `A046213(n+2+n)!` -/
def P16970918822520159694.Spec : Prop :=
  ∀ n, (P16970918822520159694.a n : ℤ) = A046219 (n + 1)

end A046219

/-! ## A046219.P15554705059689417015

`log2(A046564(2*n+1))!`
-/

namespace A046219.P15554705059689417015
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (SequenceMachineLib.roundAway (Real.logb 2 (A046564 (2 * n + 1) : ℝ))).toNat

end

end A046219.P15554705059689417015

namespace A046219

/-- `log2(A046564(2*n+1))!` -/
def P15554705059689417015.Spec : Prop :=
  ∀ n, (P15554705059689417015.a n : ℤ) = A046219 (n + 1)

end A046219

/-! ## A046219.P11621128824158719318

`A000010(A046564(Δ[n²]))`
-/

namespace A046219.P11621128824158719318
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A046564 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat).toNat

end

end A046219.P11621128824158719318

namespace A046219

/-- `A000010(A046564(Δ[n²]))` -/
def P11621128824158719318.Spec : Prop :=
  ∀ n, P11621128824158719318.a n = A046219 (n + 1)

end A046219

/-! ## A046219.P14432559848797698721

`A000010(A046563(2*(n+1)))`
-/

namespace A046219.P14432559848797698721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A046563 (2 * (n + 1))).toNat

end

end A046219.P14432559848797698721

namespace A046219

/-- `A000010(A046563(2*(n+1)))` -/
def P14432559848797698721.Spec : Prop :=
  ∀ n, P14432559848797698721.a n = A046219 (n + 1)

end A046219

/-! ## A046219.P6874919207951881294

`A246592(A046564(2*n+1))`
-/

namespace A046219.P6874919207951881294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A246592 (A046564 (2 * n + 1)).toNat

end

end A046219.P6874919207951881294

namespace A046219

/-- `A246592(A046564(2*n+1))` -/
def P6874919207951881294.Spec : Prop :=
  ∀ n, P6874919207951881294.a n = A046219 (n + 1)

end A046219

/-! ## A046219.P16934152878291164003

`A000010(A046214(2*n+1)²)`
-/

namespace A046219.P16934152878291164003
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A046214 (2 * n + 1) ^ 2).toNat

end

end A046219.P16934152878291164003

namespace A046219

/-- `A000010(A046214(2*n+1)²)` -/
def P16934152878291164003.Spec : Prop :=
  ∀ n, P16934152878291164003.a n = A046219 (n + 1)

end A046219

/-! ## A046219.P11273879804677831364

`A007318(A046214(2*n+1)²)`
-/

namespace A046219.P11273879804677831364
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 (A046214 (2 * n + 1) ^ 2).toNat

end

end A046219.P11273879804677831364

namespace A046219

/-- `A007318(A046214(2*n+1)²)` -/
def P11273879804677831364.Spec : Prop :=
  ∀ n, P11273879804677831364.a n = A046219 (n + 1)

end A046219

/-! ## A046219.P18255156533509207931

`A046222(A046214(2*n+1)²)`
-/

namespace A046219.P18255156533509207931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046222 (A046214 (2 * n + 1) ^ 2).toNat

end

end A046219.P18255156533509207931

namespace A046219

/-- `A046222(A046214(2*n+1)²)` -/
def P18255156533509207931.Spec : Prop :=
  ∀ n, P18255156533509207931.a n = A046219 (n + 1)

end A046219

/-! ## A046219.P7854096912031188484

`A000041(log2(A046564(2*n+1)))`
-/

namespace A046219.P7854096912031188484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000041 (SequenceMachineLib.roundAway (Real.logb 2 (A046564 (2 * n + 1) : ℝ))).toNat

end

end A046219.P7854096912031188484

namespace A046219

/-- `A000041(log2(A046564(2*n+1)))` -/
def P7854096912031188484.Spec : Prop :=
  ∀ n, P7854096912031188484.a n = A046219 (n + 1)

end A046219

/-! ## A046219.P3067253747218609745

`A000108(log2(A046563(2*(n+1))))`
-/

namespace A046219.P3067253747218609745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (Real.logb 2 (A046563 (2 * (n + 1)) : ℝ))).toNat

end

end A046219.P3067253747218609745

namespace A046219

/-- `A000108(log2(A046563(2*(n+1))))` -/
def P3067253747218609745.Spec : Prop :=
  ∀ n, P3067253747218609745.a n = A046219 (n + 1)

end A046219

/-! ## A046219.P18247554181259401822

`A000108(log2(A046564(2*n+1)))`
-/

namespace A046219.P18247554181259401822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000108 (SequenceMachineLib.roundAway (Real.logb 2 (A046564 (2 * n + 1) : ℝ))).toNat

end

end A046219.P18247554181259401822

namespace A046219

/-- `A000108(log2(A046564(2*n+1)))` -/
def P18247554181259401822.Spec : Prop :=
  ∀ n, P18247554181259401822.a n = A046219 (n + 1)

end A046219

/-! ## A046219.P2381537436307408213

`A000010(A046213(n+2+n)²)`
-/

namespace A046219.P2381537436307408213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A046213 (n + 2 + n) ^ 2).toNat

end

end A046219.P2381537436307408213

namespace A046219

/-- `A000010(A046213(n+2+n)²)` -/
def P2381537436307408213.Spec : Prop :=
  ∀ n, P2381537436307408213.a n = A046219 (n + 1)

end A046219

/-!
# A046221: Odd numbers on numerators of 1/2-Pascal triangle (by row).

The programs for A046221, there is no canonical definition to state claims against.
-/

/-! ## A046221.P17381206385269012165

`A046218(eq[1, and(1, A046218(n+1))]+1)`
-/

namespace A046221.P17381206385269012165
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 1 (A046218 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046218 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046221.P17381206385269012165

/-! ## A046221.P216556521190349952

`filter[A046218(n+1), A379952(#)]`
-/

namespace A046221.P216556521190349952
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A379952 (f1 j).toNat = 1) n)

end

end A046221.P216556521190349952

/-! ## A046221.P15630110586474169269

`filter[A046218(n+1), A000035(#)]`
-/

namespace A046221.P15630110586474169269
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046221.P15630110586474169269

/-! ## A046221.P6060293979538390488

`filter[A046218(n+1), A118102(#)]`
-/

namespace A046221.P6060293979538390488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A118102 (f1 j).toNat = 1) n)

end

end A046221.P6060293979538390488

/-! ## A046221.P9534167063375275457

`filter[A046218(n+1), A267256(#)]`
-/

namespace A046221.P9534167063375275457
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267256 (f1 j).toNat = 1) n)

end

end A046221.P9534167063375275457

/-! ## A046221.P9288131654499050672

`filter[A046213(2*n+1), A000035(#)]`
-/

namespace A046221.P9288131654499050672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A000035 (f1 j).toNat = 1) n)

end

end A046221.P9288131654499050672

/-! ## A046221.P14892877338538702685

`filter[A046218(n+1), A179775(#)]`
-/

namespace A046221.P14892877338538702685
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046218 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A179775 (f1 j).toNat = 1) n)

end

end A046221.P14892877338538702685

/-!
# A046222: First numerator and then denominator of central elements of 1/2-Pascal triangle.

The programs for A046222, there is no canonical definition to state claims against.
-/

/-! ## A046222.P17119113955853515156

`A046223(A004442(n)+1)`
-/

namespace A046222.P17119113955853515156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A004442 n + 1).toNat

end

end A046222.P17119113955853515156

/-! ## A046222.P445084523926638828

`A046223(A014681(n+1))`
-/

namespace A046222.P445084523926638828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A014681 (n + 1)).toNat

end

end A046222.P445084523926638828

/-! ## A046222.P8963697741604726560

`A046223(A103889(n+1))`
-/

namespace A046222.P8963697741604726560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A103889 (n + 1)).toNat

end

end A046222.P8963697741604726560

/-! ## A046222.P7073118840269381069

`A046223(A114112(n+1))`
-/

namespace A046222.P7073118840269381069
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A114112 (n + 1)).toNat

end

end A046222.P7073118840269381069

/-! ## A046222.P9018472473857154243

`A046223(abs(Δ[A014682(n)]))`
-/

namespace A046222.P9018472473857154243
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 |f1 (n + 1) - f1 n|.toNat

end

end A046222.P9018472473857154243

/-! ## A046222.P2125818904676275914

`A046223(A033999(n)+1+n)`
-/

namespace A046222.P2125818904676275914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A033999 n + 1 + (n : ℤ)).toNat

end

end A046222.P2125818904676275914

/-! ## A046222.P1827257531816049638

`A046223(A047243(n+1)-2*n)`
-/

namespace A046222.P1827257531816049638
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A047243 (n + 1) - (2 * n : ℤ)).toNat

end

end A046222.P1827257531816049638

/-! ## A046222.P9626625201142874524

`A046223(A047243(n+1)-n-n)`
-/

namespace A046222.P9626625201142874524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A047243 (n + 1) - (n : ℤ) - (n : ℤ)).toNat

end

end A046222.P9626625201142874524

/-! ## A046222.P1992091054009501153

`A046223(A009531(2*n+1)+n+1)`
-/

namespace A046222.P1992091054009501153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A009531 (2 * n + 1) + (n + 1 : ℤ)).toNat

end

end A046222.P1992091054009501153

/-! ## A046222.P13800494806757500678

`A046213(A081346(n))`
-/

namespace A046222.P13800494806757500678
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A081346 n).toNat

end

end A046222.P13800494806757500678

/-! ## A046222.P16435845084583042044

`A046213(n*A103889(n+1)+1)`
-/

namespace A046222.P16435845084583042044
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 ((n : ℤ) * A103889 (n + 1) + 1).toNat

end

end A046222.P16435845084583042044

/-! ## A046222.P17481795254196402303

`A046213(n*A114112(n+1)+1)`
-/

namespace A046222.P17481795254196402303
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 ((n : ℤ) * A114112 (n + 1) + 1).toNat

end

end A046222.P17481795254196402303

/-!
# A046223: First denominator and then numerator of central elements of 1/2-Pascal triangle.

The programs for A046223, there is no canonical definition to state claims against.
-/

/-! ## A046223.P15599391293255616991

`A046222(xor(1, n)+1)`
-/

namespace A046223.P15599391293255616991
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046222 (Nat.xor 1 n + 1)

end

end A046223.P15599391293255616991

/-! ## A046223.P11512693467737605757

`A046222(A014681(n+1))`
-/

namespace A046223.P11512693467737605757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046222 (A014681 (n + 1)).toNat

end

end A046223.P11512693467737605757

/-! ## A046223.P8938021717820834161

`A046222(A103889(n+1))`
-/

namespace A046223.P8938021717820834161
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046222 (A103889 (n + 1)).toNat

end

end A046223.P8938021717820834161

/-! ## A046223.P7202565225436571158

`A046222(A114112(n+1))`
-/

namespace A046223.P7202565225436571158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046222 (A114112 (n + 1)).toNat

end

end A046223.P7202565225436571158

/-! ## A046223.P2721786865796063737

`A046224(A008619(n))/A046222(n+1)`
-/

namespace A046223.P2721786865796063737
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046224 (A008619 n).toNat : ℚ) / (A046222 (n + 1) : ℚ)

end

end A046223.P2721786865796063737

/-! ## A046223.P3002023764480817962

`A046222(A191598(n+1))`
-/

namespace A046223.P3002023764480817962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046222 (A191598 (n + 1)).toNat

end

end A046223.P3002023764480817962

/-! ## A046223.P872128050123649146

`A046222(A257088(n))`
-/

namespace A046223.P872128050123649146
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046222 (A257088 n).toNat

end

end A046223.P872128050123649146

/-! ## A046223.P4474959040366694724

`A046213((n+1)*xor(1, n)+1)`
-/

namespace A046223.P4474959040366694724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 ((n + 1) * Nat.xor 1 n + 1)

end

end A046223.P4474959040366694724

/-! ## A046223.P8222689341071609726

`A046214(A081346(n))`
-/

namespace A046223.P8222689341071609726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 (A081346 n).toNat

end

end A046223.P8222689341071609726

/-! ## A046223.P1134257074727962707

`A046213(A081346(xor(1, n)))`
-/

namespace A046223.P1134257074727962707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A081346 (Nat.xor 1 n)).toNat

end

end A046223.P1134257074727962707

/-! ## A046223.P9453406615927348319

`A046214(n*A103889(n+1)+1)`
-/

namespace A046223.P9453406615927348319
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 ((n : ℤ) * A103889 (n + 1) + 1).toNat

end

end A046223.P9453406615927348319

/-! ## A046223.P635952465584169546

`A046214(n*A114112(n+1)+1)`
-/

namespace A046223.P635952465584169546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046214 ((n : ℤ) * A114112 (n + 1) + 1).toNat

end

end A046223.P635952465584169546

/-! ## A046223.P16405429019294090066

`A046213(A059841(n)+A109613(n)²)`
-/

namespace A046223.P16405429019294090066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A059841 n + A109613 n ^ 2).toNat

end

end A046223.P16405429019294090066

/-! ## A046223.P7843757543811337941

`A046213(A059841(n)+A000290(A109613(n)))`
-/

namespace A046223.P7843757543811337941
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046213 (A059841 n + A000290 (A109613 n).toNat).toNat

end

end A046223.P7843757543811337941

/-!
# A046224: Distinct numbers seen when writing first numerator and then denominator of central elements of 1/2-Pascal triangle.

The programs for A046224, the canonical program `A046224.P15998395619117309683` is in `Seq.B003.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A046224 has offset 1).

The definition of A046224 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A046224.P3588894573725805477

`record[A046222(n+1)]`
-/

namespace A046224.P3588894573725805477
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046222 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046224.P3588894573725805477

namespace A046224

/-- `record[A046222(n+1)]` -/
def P3588894573725805477.Spec : Prop :=
  ∀ n, P3588894573725805477.a n = A046224 (n + 1)

end A046224

/-! ## A046224.P7094313156252984940

`record[A046223(1+n)]`
-/

namespace A046224.P7094313156252984940
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046224.P7094313156252984940

namespace A046224

/-- `record[A046223(1+n)]` -/
def P7094313156252984940.Spec : Prop :=
  ∀ n, P7094313156252984940.a n = A046224 (n + 1)

end A046224

/-! ## A046224.P11755751271976683957

`A046223(2*(n+1))+char[1]`
-/

namespace A046224.P11755751271976683957
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (2 * (n + 1)) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A046224.P11755751271976683957

namespace A046224

/-- `A046223(2*(n+1))+char[1]` -/
def P11755751271976683957.Spec : Prop :=
  ∀ n, P11755751271976683957.a n = A046224 (n + 1)

end A046224

/-! ## A046224.P11514462896921734890

`A046222(comp[2*n+3]+3)`
-/

namespace A046224.P11514462896921734890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n + 3

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046222 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n + 3)

end

end A046224.P11514462896921734890

namespace A046224

/-- `A046222(comp[2*n+3]+3)` -/
def P11514462896921734890.Spec : Prop :=
  ∀ n, P11514462896921734890.a n = A046224 (n + 1)

end A046224

/-! ## A046224.P4638076567163629954

`A046223(A316571(n+2))`
-/

namespace A046224.P4638076567163629954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A316571 (n + 2)).toNat

end

end A046224.P4638076567163629954

namespace A046224

/-- `A046223(A316571(n+2))` -/
def P4638076567163629954.Spec : Prop :=
  ∀ n, P4638076567163629954.a n = A046224 (n + 1)

end A046224

/-! ## A046224.P5196885397494557463

`A046222(2*n+1)*A046222(2*(n+1))`
-/

namespace A046224.P5196885397494557463
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046222 (2 * n + 1) * A046222 (2 * (n + 1))

end

end A046224.P5196885397494557463

namespace A046224

/-- `A046222(2*n+1)*A046222(2*(n+1))` -/
def P5196885397494557463.Spec : Prop :=
  ∀ n, P5196885397494557463.a n = A046224 (n + 1)

end A046224

/-! ## A046224.P5447632186150252256

`A046223(2*(n+1))*A046223(2*n+1)`
-/

namespace A046224.P5447632186150252256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (2 * (n + 1)) * A046223 (2 * n + 1)

end

end A046224.P5447632186150252256

namespace A046224

/-- `A046223(2*(n+1))*A046223(2*n+1)` -/
def P5447632186150252256.Spec : Prop :=
  ∀ n, P5447632186150252256.a n = A046224 (n + 1)

end A046224

/-! ## A046224.P5031150668230472389

`A046223(A265283(A004273(n)))`
-/

namespace A046224.P5031150668230472389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A265283 (A004273 n).toNat).toNat

end

end A046224.P5031150668230472389

namespace A046224

/-- `A046223(A265283(A004273(n)))` -/
def P5031150668230472389.Spec : Prop :=
  ∀ n, P5031150668230472389.a n = A046224 (n + 1)

end A046224

/-! ## A046224.P17189846167838463536

`A046223(A005408(n+1)-A046223(2*n+1))`
-/

namespace A046224.P17189846167838463536
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A005408 (n + 1) - A046223 (2 * n + 1)).toNat

end

end A046224.P17189846167838463536

namespace A046224

/-- `A046223(A005408(n+1)-A046223(2*n+1))` -/
def P17189846167838463536.Spec : Prop :=
  ∀ n, P17189846167838463536.a n = A046224 (n + 1)

end A046224

/-! ## A046224.P6725292465702984592

`A046223(A247328(n+2)-A046223(2*n+1))`
-/

namespace A046224.P6725292465702984592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046223 (A247328 (n + 2) - A046223 (2 * n + 1)).toNat

end

end A046224.P6725292465702984592

namespace A046224

/-- `A046223(A247328(n+2)-A046223(2*n+1))` -/
def P6725292465702984592.Spec : Prop :=
  ∀ n, P6725292465702984592.a n = A046224 (n + 1)

end A046224

/-! ## A046224.P15998395619117309683

`A210736(A004275(n))+A004275(n)*A120588(n)`

The canonical program, it is in `Seq.B003.C000`.
-/

namespace A046224

/-- `A210736(A004275(n))+A004275(n)*A120588(n)` -/
def P15998395619117309683.Spec : Prop :=
  ∀ n, P15998395619117309683.a n = A046224 (n + 1)

theorem P15998395619117309683.correct : P15998395619117309683.Spec := by
  intro n
  simp only [A046224, Nat.add_sub_cancel]

end A046224

/-!
# A046225: First numerator and then denominator of elements to right of central elements of 1/2-Pascal triangle.

The programs for A046225, there is no canonical definition to state claims against.
-/

/-! ## A046225.P14770139924520578838

`A046226(xor(1, n)+1)`
-/

namespace A046225.P14770139924520578838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (Nat.xor 1 n + 1)

end

end A046225.P14770139924520578838

/-! ## A046225.P7528113932630080298

`A046226(A004442(n)+1)`
-/

namespace A046225.P7528113932630080298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (A004442 n + 1).toNat

end

end A046225.P7528113932630080298

/-! ## A046225.P864809773030148004

`A046226(A014681(n+1))`
-/

namespace A046225.P864809773030148004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (A014681 (n + 1)).toNat

end

end A046225.P864809773030148004

/-! ## A046225.P18035347946211700752

`A046226(A103889(n+1))`
-/

namespace A046225.P18035347946211700752
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (A103889 (n + 1)).toNat

end

end A046225.P18035347946211700752

/-! ## A046225.P5349939959287167183

`A046226(A114112(n+1))`
-/

namespace A046225.P5349939959287167183
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (A114112 (n + 1)).toNat

end

end A046225.P5349939959287167183

/-! ## A046225.P12282782755374651556

`A046226(abs(Δ[A014682(n)]))`
-/

namespace A046225.P12282782755374651556
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 |f1 (n + 1) - f1 n|.toNat

end

end A046225.P12282782755374651556

/-! ## A046225.P10211948142386348548

`A046226(A033999(n)+1+n)`
-/

namespace A046225.P10211948142386348548
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (A033999 n + 1 + (n : ℤ)).toNat

end

end A046225.P10211948142386348548

/-! ## A046225.P570033428587194594

`A046226(Δ[A236453(n)])`
-/

namespace A046225.P570033428587194594
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (f1 (n + 1) - f1 n).toNat

end

end A046225.P570033428587194594

/-! ## A046225.P16333440905050067781

`A046226(A236453(n+1)-A236453(n))`
-/

namespace A046225.P16333440905050067781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (A236453 (n + 1) - A236453 n).toNat

end

end A046225.P16333440905050067781

/-!
# A046226: First denominator and then numerator of elements to right of central elements of 1/2-Pascal triangle.

The programs for A046226, there is no canonical definition to state claims against.
-/

/-! ## A046226.P1907548739844112988

`A046225(1+xor(n, 1))`
-/

namespace A046226.P1907548739844112988
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (1 + Nat.xor n 1)

end

end A046226.P1907548739844112988

/-! ## A046226.P6098449712228960263

`A046225(2*or(1, n)-n)`
-/

namespace A046226.P6098449712228960263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (2 * Nat.lor 1 n - n)

end

end A046226.P6098449712228960263

/-! ## A046226.P9097199336537155746

`A046225(A004442(n)+1)`
-/

namespace A046226.P9097199336537155746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (A004442 n + 1).toNat

end

end A046226.P9097199336537155746

/-! ## A046226.P18271435141279418259

`A046225(A014681(n+1))`
-/

namespace A046226.P18271435141279418259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (A014681 (n + 1)).toNat

end

end A046226.P18271435141279418259

/-! ## A046226.P10576818763729677282

`A046225(A103889(n+1))`
-/

namespace A046226.P10576818763729677282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (A103889 (n + 1)).toNat

end

end A046226.P10576818763729677282

/-! ## A046226.P18083284104950103145

`A046225(A114112(n+1))`
-/

namespace A046226.P18083284104950103145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (A114112 (n + 1)).toNat

end

end A046226.P18083284104950103145

/-! ## A046226.P13077545149929605565

`A046225(xor(1, A165754(n)))`
-/

namespace A046226.P13077545149929605565
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (Int.xor 1 (A165754 n)).toNat

end

end A046226.P13077545149929605565

/-! ## A046226.P14978905766872341128

`A046225(abs(Δ[A014682(n)]))`
-/

namespace A046226.P14978905766872341128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014682 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 |f1 (n + 1) - f1 n|.toNat

end

end A046226.P14978905766872341128

/-! ## A046226.P10664085997169147276

`A046225((A166519(n)+1)/2)`
-/

namespace A046226.P10664085997169147276
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (SequenceMachineLib.roundAway ((A166519 n + 1 : ℚ) / 2)).toNat

end

end A046226.P10664085997169147276

/-! ## A046226.P15728483435044581645

`A046225(A033999(n)+1+n)`
-/

namespace A046226.P15728483435044581645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (A033999 n + 1 + (n : ℤ)).toNat

end

end A046226.P15728483435044581645

/-! ## A046226.P13731668564068039849

`A046225(A005408(n)-(n-A033999(n)))`
-/

namespace A046226.P13731668564068039849
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (A005408 n - ((n : ℤ) - A033999 n)).toNat

end

end A046226.P13731668564068039849

/-! ## A046226.P3597713819174015236

`A046225(n-(A004442(n)-A165754(n)))`
-/

namespace A046226.P3597713819174015236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 ((n : ℤ) - (A004442 n - A165754 n)).toNat

end

end A046226.P3597713819174015236

/-! ## A046226.P9175514662033377128

`A046225(Δ[A236453(n)])`
-/

namespace A046226.P9175514662033377128
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A236453 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (f1 (n + 1) - f1 n).toNat

end

end A046226.P9175514662033377128

/-! ## A046226.P5896064494390340996

`A046225(A236453(n+1)-A236453(n))`
-/

namespace A046226.P5896064494390340996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (A236453 (n + 1) - A236453 n).toNat

end

end A046226.P5896064494390340996

/-! ## A046226.P5641754330684775911

`A046225(A004442(A165754(n)))`
-/

namespace A046226.P5641754330684775911
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (A004442 (A165754 n).toNat).toNat

end

end A046226.P5641754330684775911

/-! ## A046226.P6187209761931669507

`A046225(A003602(A166519(n)))`
-/

namespace A046226.P6187209761931669507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (A003602 (A166519 n).toNat).toNat

end

end A046226.P6187209761931669507

/-!
# A046227: First numerator and then denominator of elements to right of central elements of 1/2-Pascal triangle (by row), excluding 1's.

The programs for A046227, there is no canonical definition to state claims against.
-/

/-! ## A046227.P15881774287207771500

`A046225(lt[1, A046225(n+1)]+1)`
-/

namespace A046227.P15881774287207771500
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046227.P15881774287207771500

/-! ## A046227.P639682473429779490

`A036234(p?[A008578(A046225(n+1))])`
-/

namespace A046227.P639682473429779490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036234 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046227.P639682473429779490

/-! ## A046227.P5022294403211835149

`A158973(p?[A008578(A046225(n+1))])`
-/

namespace A046227.P5022294403211835149
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046225 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158973 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A046227.P5022294403211835149

/-!
# A046228: First numerator and then denominator of elements to right of central elements of 1/2-Pascal triangle (by row), excluding 1's and 2's.

The programs for A046228, there is no canonical definition to state claims against.
-/

/-! ## A046228.P4041742726408162483

`A046531(A049068(n+1))`
-/

namespace A046228.P4041742726408162483
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046531 (A049068 (n + 1)).toNat

end

end A046228.P4041742726408162483

/-! ## A046228.P18258878570205672923

`A046531(eq[0, A240025(n)])`
-/

namespace A046228.P18258878570205672923
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A240025 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046531 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n)

end

end A046228.P18258878570205672923

/-! ## A046228.P45693027846860869

`A046531(A183569(n+1)+1)`
-/

namespace A046228.P45693027846860869
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046531 (A183569 (n + 1) + 1).toNat

end

end A046228.P45693027846860869

/-! ## A046228.P7711056995149003590

`A046531(A000037(A000037(n+1)))`
-/

namespace A046228.P7711056995149003590
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046531 (A000037 (A000037 (n + 1)).toNat).toNat

end

end A046228.P7711056995149003590

/-! ## A046228.P4147574797374712487

`A046227(eq[2, 2%A046227(n+1)]+1)`
-/

namespace A046228.P4147574797374712487
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 2 (A046227 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A046228.P4147574797374712487

/-! ## A046228.P12774095905865730743

`A046225(lt[2, A046225(n+1)]+1)`
-/

namespace A046228.P12774095905865730743
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A046228.P12774095905865730743

/-! ## A046228.P1209325735089997547

`filter[A046227(n+1), A115971(#)]`
-/

namespace A046228.P1209325735089997547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A046228.P1209325735089997547

/-! ## A046228.P4440528584305410098

`filter[A046225(n+1), A347523(#)]`
-/

namespace A046228.P4440528584305410098
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A046228.P4440528584305410098

/-! ## A046228.P2873888268747673156

`filter[A046226(n+1), A347523(#)]`
-/

namespace A046228.P2873888268747673156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A046228.P2873888268747673156

/-! ## A046228.P10673878485747755775

`filter[A046227(n+1), A347523(#)]`
-/

namespace A046228.P10673878485747755775
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046227 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A347523 (f1 j).toNat = 1) n)

end

end A046228.P10673878485747755775

/-!
# A046229: First numerator and then denominator of elements to right of central elements of 1/2-Pascal triangle (by row), excluding 2's.

The programs for A046229, there is no canonical definition to state claims against.
-/

/-! ## A046229.P3316722275249355134

`filter[A046225(n+1), A115971(#)]`
-/

namespace A046229.P3316722275249355134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A046229.P3316722275249355134

/-! ## A046229.P9363029898872320071

`filter[A046225(n+1), A267579(#)]`
-/

namespace A046229.P9363029898872320071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046225 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A046229.P9363029898872320071

/-! ## A046229.P159199321634746421

`A109128(gcd(A007094(n), A152637(n+1)))`
-/

namespace A046229.P159199321634746421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 (Int.gcd (A007094 n) (A152637 (n + 1)))

end

end A046229.P159199321634746421

/-! ## A046229.P1469142095237903549

`A109128(lt[A302309(n+1), A059893(n+3)])`
-/

namespace A046229.P1469142095237903549
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A302309 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109128 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A046229.P1469142095237903549

/-!
# A046230: First denominator and then numerator of elements to right of central elements of 1/2-Pascal triangle (by row), excluding 2's.

The programs for A046230, there is no canonical definition to state claims against.
-/

/-! ## A046230.P18113357056408358453

`filter[A046226(n+1), A115971(#)]`
-/

namespace A046230.P18113357056408358453
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A115971 (f1 j).toNat = 1) n)

end

end A046230.P18113357056408358453

/-! ## A046230.P9674001962640280628

`filter[A046226(1+n), A267579(#)]`
-/

namespace A046230.P9674001962640280628
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046226 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A267579 (f1 j).toNat = 1) n)

end

end A046230.P9674001962640280628

/-!
# A046231: Numbers whose cube is palindromic in base 4.

The programs for A046231, there is no canonical definition to state claims against.
-/

/-! ## A046231.P9089675580395546749

`floor(atan(n)+4^(n-1))`
-/

namespace A046231.P9089675580395546749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + ((4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A046231.P9089675580395546749

/-! ## A046231.P4585799348152643780

`ogf((x-4x^3)/(1-5x+4x^2))`
-/

namespace A046231.P4585799348152643780
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -4] [1, -5, 4] n

end

end A046231.P4585799348152643780

/-! ## A046231.P15611366523619395118

`record[xor(1, ceil((-2)^(n-2)))]`
-/

namespace A046231.P15611366523619395118
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 ⌈(-2 : ℚ) ^ ((n : ℤ) - 2 : ℤ)⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046231.P15611366523619395118

/-! ## A046231.P1563490574137613175

`or(floor(4^(n-1)), floor(atan(n)))`
-/

namespace A046231.P1563490574137613175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor ⌊(4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ ⌊Real.arctan (n : ℝ)⌋

end

end A046231.P1563490574137613175

/-! ## A046231.P8964972093968854661

`4*a(n-1)-3` with `a(0)=0, a(1)=1, a(2)=5`
-/

namespace A046231.P8964972093968854661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 5] fun n a =>
  4 * a (n - 1) - 3

end

end A046231.P8964972093968854661

/-!
# A046232: Cubes which are palindromes in base 4.

The programs for A046232, there is no canonical definition to state claims against.
-/

/-! ## A046232.P7351449325838040258

`A046231(n+1)^3`
-/

namespace A046232.P7351449325838040258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046231 (n + 1) ^ 3

end

end A046232.P7351449325838040258

/-! ## A046232.P7538039998642299360

`A127904(A004273(n))^3`
-/

namespace A046232.P7538039998642299360
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A127904 (A004273 n).toNat ^ 3

end

end A046232.P7538039998642299360

/-! ## A046232.P8782798070441510070

`A166977(A004275(n))^3`
-/

namespace A046232.P8782798070441510070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A166977 (A004275 n).toNat ^ 3

end

end A046232.P8782798070441510070

/-! ## A046232.P7613000588519285679

`(A092896(n)%A009976(n))^3`
-/

namespace A046232.P7613000588519285679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A092896 n) (A009976 n) ^ 3

end

end A046232.P7613000588519285679

/-! ## A046232.P16997711290960639419

`(A000007(n)-A092896(n))²*A092896(n)`
-/

namespace A046232.P16997711290960639419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000007 n - A092896 n) ^ 2 * A092896 n

end

end A046232.P16997711290960639419

/-!
# A046233: Numbers whose cube is palindromic in base 5.

The programs for A046233, there is no canonical definition to state claims against.
-/

/-! ## A046233.P7539302482032015318

`floor(atan(n)+5^(n-1))`
-/

namespace A046233.P7539302482032015318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A046233.P7539302482032015318

/-! ## A046233.P7996191945994535318

`ogf((x-5x^3)/(1-6x+5x^2))`
-/

namespace A046233.P7996191945994535318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 1, 0, -5] [1, -6, 5] n

end

end A046233.P7996191945994535318

/-! ## A046233.P10268537903575440067

`lcm(10, a(n-1))-4` with `a(0)=0, a(1)=1`
-/

namespace A046233.P10268537903575440067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  (Int.lcm 10 (a (n - 1)) : ℤ) - 4

end

end A046233.P10268537903575440067

/-! ## A046233.P12279299057702936043

`5*a(n-1)-4` with `a(0)=0, a(1)=1, a(2)=6`
-/

namespace A046233.P12279299057702936043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 6] fun n a =>
  5 * a (n - 1) - 4

end

end A046233.P12279299057702936043

/-! ## A046233.P13392665760255214745

`ceil(tanh(n-1)+5^(n-1))`
-/

namespace A046233.P13392665760255214745
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.tanh ((n : ℤ) - 1 : ℝ) + ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌉

end

end A046233.P13392665760255214745

/-!
# A046234: Cubes which are palindromes in base 5.

The programs for A046234, there is no canonical definition to state claims against.
-/

/-! ## A046234.P3684239462457130229

`A046233(n+1)^3`
-/

namespace A046234.P3684239462457130229
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046233 (n + 1) ^ 3

end

end A046234.P3684239462457130229

/-! ## A046234.P12583960174984204578

`floor(atan(n)+5^(n-1))^3`
-/

namespace A046234.P12583960174984204578
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (n : ℝ) + ((5 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋ ^ 3

end

end A046234.P12583960174984204578

/-! ## A046234.P3293387544712147599

`A033042(A127904(n))^3`
-/

namespace A046234.P3293387544712147599
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033042 (A127904 n).toNat ^ 3

end

end A046234.P3293387544712147599

/-! ## A046234.P1489985624741982021

`record[A046233(A137734(n))^3]`
-/

namespace A046234.P1489985624741982021
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046233 (A137734 n).toNat ^ 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046234.P1489985624741982021

/-! ## A046234.P13042788296483535515

`(round(5^n/10)*A020639(A000010(n+1)))^3`
-/

namespace A046234.P13042788296483535515
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.roundAway ((5 ^ n : ℚ) / 10) * A020639 (A000010 (n + 1)).toNat) ^ 3

end

end A046234.P13042788296483535515

/-!
# A046235: Numbers whose cube is palindromic in base 6.

The programs for A046235, there is no canonical definition to state claims against.
-/

/-! ## A046235.P8932239756626220193

`A165827(ceil(3^(n-1)))+ceil(atan(n))-1`
-/

namespace A046235.P8932239756626220193
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165827 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat + (⌈Real.arctan (n : ℝ)⌉ - 1)

end

end A046235.P8932239756626220193

/-! ## A046235.P991647946659189882

`or(A037454(A140429(n)), A057427(n))`
-/

namespace A046235.P991647946659189882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037454 (A140429 n).toNat) (A057427 n)

end

end A046235.P991647946659189882

/-! ## A046235.P4129429929844457771

`floor(6^(n-1))+A046643(A034190(n))%A008619(n)`
-/

namespace A046235.P4129429929844457771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + Int.tmod (A046643 (A034190 n).toNat) (A008619 n)

end

end A046235.P4129429929844457771

/-! ## A046235.P11722520424101524539

`floor(atan(A033541(n))+6^(n-1))`
-/

namespace A046235.P11722520424101524539
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.arctan (A033541 n : ℝ) + ((6 : ℚ) ^ ((n : ℤ) - 1 : ℤ) : ℝ)⌋

end

end A046235.P11722520424101524539

/-!
# A046236: Cubes which are palindromes in base 6.

The programs for A046236, there is no canonical definition to state claims against.
-/

/-! ## A046236.P15236855526624694984

`A046235(n+1)^3`
-/

namespace A046236.P15236855526624694984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046235 (n + 1) ^ 3

end

end A046236.P15236855526624694984

/-! ## A046236.P13685972484043672418

`(floor(6^(n-1))+2%A034190(n)/2)^3`
-/

namespace A046236.P13685972484043672418
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((⌊(6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ : ℚ) + (Int.tmod 2 (A034190 n) : ℚ) / 2) ^ 3

end

end A046236.P13685972484043672418

/-! ## A046236.P4234494483108846779

`xor(1-char[1], A123667(ceil(3^(n-1))))^3`
-/

namespace A046236.P4234494483108846779
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (1 - ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)) (A123667 ⌈(3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌉.toNat) ^ 3

end

end A046236.P4234494483108846779

/-! ## A046236.P4003737754050702482

`or(A037454(A140429(n)), A057427(n))^3`
-/

namespace A046236.P4003737754050702482
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A037454 (A140429 n).toNat) (A057427 n) ^ 3

end

end A046236.P4003737754050702482

/-! ## A046236.P8748496124578084112

`(floor(6^(n-1))+A046643(A034190(n))%A008619(n))^3`
-/

namespace A046236.P8748496124578084112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (⌊(6 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ + Int.tmod (A046643 (A034190 n).toNat) (A008619 n)) ^ 3

end

end A046236.P8748496124578084112

/-!
# A046237: Numbers whose cube is palindromic in base 7.

The programs for A046237, there is no canonical definition to state claims against.
-/

/-! ## A046237.P10090008373086004785

`eq[A093704(A025422(n)), A306286(n)]`
-/

namespace A046237.P10090008373086004785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093704 (A025422 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046237.P10090008373086004785

/-! ## A046237.P15879600314127924349

`A004526(gcd(A011557(n), A337738(n+1)))`
-/

namespace A046237.P15879600314127924349
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (Int.gcd (A011557 n) (A337738 (n + 1)))

end

end A046237.P15879600314127924349

/-!
# A046238: Cubes which are palindromes in base 7.

The programs for A046238, there is no canonical definition to state claims against.
-/

/-! ## A046238.P7488301279324751955

`A046237(n+1)^3`
-/

namespace A046238.P7488301279324751955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046237 (n + 1) ^ 3

end

end A046238.P7488301279324751955

/-! ## A046238.P6558834790865215126

`A046237(A000027(n+1))²*A046237(n+1)`
-/

namespace A046238.P6558834790865215126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046237 (A000027 (n + 1)).toNat ^ 2 * A046237 (n + 1)

end

end A046238.P6558834790865215126

/-! ## A046238.P11678385568770758767

`A000578(A046237(n+1))`
-/

namespace A046238.P11678385568770758767
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A046237 (n + 1)).toNat

end

end A046238.P11678385568770758767

/-! ## A046238.P6191265064138260712

`∩[A029954(n+1), n^3]`
-/

namespace A046238.P6191265064138260712
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029954 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A046238.P6191265064138260712

/-! ## A046238.P14240042798746883433

`eq[A093704(A025422(n)), A306286(n)]^3`
-/

namespace A046238.P14240042798746883433
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093704 (A025422 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A306286 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n ^ 3

end

end A046238.P14240042798746883433

/-!
# A046239: Numbers whose cube is palindromic in base 8.

The programs for A046239, there is no canonical definition to state claims against.
-/

/-! ## A046239.P6888687900581833368

`record[and(A001489(n), A163270(n+1))]`
-/

namespace A046239.P6888687900581833368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A001489 n) (A163270 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046239.P6888687900581833368

/-! ## A046239.P1034971925533259304

`A029805(A122111(floor(sqrt(n^3))+1))`
-/

namespace A046239.P1034971925533259304
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029805 (A122111 (Nat.sqrt (n ^ 3) + 1)).toNat

end

end A046239.P1034971925533259304

/-!
# A046240: Cubes which are palindromes in base 8.

The programs for A046240, there is no canonical definition to state claims against.
-/

/-! ## A046240.P16765241435500418129

`A046239(n+1)^3`
-/

namespace A046240.P16765241435500418129
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046239 (n + 1) ^ 3

end

end A046240.P16765241435500418129

/-! ## A046240.P16936352738997390684

`A000578(A046239(n+1))`
-/

namespace A046240.P16936352738997390684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A046239 (n + 1)).toNat

end

end A046240.P16936352738997390684

/-!
# A046242: Cubes which are palindromes in base 9.

The programs for A046242, there is no canonical definition to state claims against.
-/

/-! ## A046242.P9845672716670440660

`A046241(n+1)^3`
-/

namespace A046242.P9845672716670440660
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046241 (n + 1) ^ 3

end

end A046242.P9845672716670440660

/-! ## A046242.P9041460949602209216

`A000578(A046241(n+1))`
-/

namespace A046242.P9041460949602209216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A046241 (n + 1)).toNat

end

end A046242.P9041460949602209216

/-!
# A046243: Numbers whose cube is palindromic in base 11.

The programs for A046243, there is no canonical definition to state claims against.
-/

/-! ## A046243.P17251648460116514315

`A046244(n+1)^(1/3)`
-/

namespace A046243.P17251648460116514315
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046244 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

end

end A046243.P17251648460116514315

/-! ## A046243.P6753570288005507185

`A007095(A069748(n+1))`
-/

namespace A046243.P6753570288005507185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A069748 (n + 1)).toNat

end

end A046243.P6753570288005507185

/-! ## A046243.P13260229475488825969

`A007095(A002780(n+1)*A048762(n))`
-/

namespace A046243.P13260229475488825969
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (A002780 (n + 1) * A048762 n).toNat

end

end A046243.P13260229475488825969

/-! ## A046243.P7031361826083882399

`A007095(A002780(n+1)^A341033(n))`
-/

namespace A046243.P7031361826083882399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007095 (SequenceMachineLib.roundAway ((A002780 (n + 1) : ℚ) ^ (A341033 n : ℤ))).toNat

end

end A046243.P7031361826083882399

/-!
# A046244: Cubes which are palindromes in base 11.

The programs for A046244, there is no canonical definition to state claims against.
-/

/-! ## A046244.P13479700846787061439

`A046243(n+1)^3`
-/

namespace A046244.P13479700846787061439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046243 (n + 1) ^ 3

end

end A046244.P13479700846787061439

/-! ## A046244.P9102303297450000631

`A046243(n+1)²*A046243(A153671(n+1))`
-/

namespace A046244.P9102303297450000631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046243 (n + 1) ^ 2 * A046243 (A153671 (n + 1)).toNat

end

end A046244.P9102303297450000631

/-! ## A046244.P10119745882645543812

`A046243(n+1)²*A046243(A296882(n+1))`
-/

namespace A046244.P10119745882645543812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046243 (n + 1) ^ 2 * A046243 (A296882 (n + 1)).toNat

end

end A046244.P10119745882645543812

/-! ## A046244.P17236898116880691415

`A000578(A046243(n+1))`
-/

namespace A046244.P17236898116880691415
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A046243 (n + 1)).toNat

end

end A046244.P17236898116880691415

/-!
# A046245: Numbers k such that k^3 is palindromic in base 12.

The programs for A046245, there is no canonical definition to state claims against.
-/

/-! ## A046245.P14671248808387470679

`A029737(eq[A007953(n), A118176(n+1)])`
-/

namespace A046245.P14671248808387470679
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A118176 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029737 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A046245.P14671248808387470679

/-! ## A046245.P7760348640971849915

`A029737(∑[A094587(n)!])`
-/

namespace A046245.P7760348640971849915
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A094587 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029737 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046245.P7760348640971849915

/-!
# A046246: Cubes which are palindromes in base 12.

The programs for A046246, there is no canonical definition to state claims against.
-/

/-! ## A046246.P13922094273800604382

`A046245(n+1)^3`
-/

namespace A046246.P13922094273800604382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046245 (n + 1) ^ 3

end

end A046246.P13922094273800604382

/-! ## A046246.P2685604394225679757

`A000578(A046245(n+1))`
-/

namespace A046246.P2685604394225679757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A046245 (n + 1)).toNat

end

end A046246.P2685604394225679757

/-!
# A046247: Numbers n such that n^3 is palindromic in base 13.

The programs for A046247, there is no canonical definition to state claims against.
-/

/-! ## A046247.P18271962219291903797

`A094823(A256495(n+1))`
-/

namespace A046247.P18271962219291903797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (A256495 (n + 1)).toNat

end

end A046247.P18271962219291903797

/-! ## A046247.P13732247248924862054

`A023443(∪[A153079(n), A196792(n)])`
-/

namespace A046247.P13732247248924862054
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153079 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196792 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n)

end

end A046247.P13732247248924862054

/-! ## A046247.P3239303896761178362

`∪[A141012(n+1), A023443(A196792(n))]`
-/

namespace A046247.P3239303896761178362
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141012 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (A196792 n).toNat

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∨ ∃ j, f2 j = (x : ℤ)) n

end

end A046247.P3239303896761178362

/-!
# A046248: Cubes which are palindromes in base 13.

The programs for A046248, there is no canonical definition to state claims against.
-/

/-! ## A046248.P14515147686933951868

`A046247(n+1)^3`
-/

namespace A046248.P14515147686933951868
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046247 (n + 1) ^ 3

end

end A046248.P14515147686933951868

/-! ## A046248.P16218299128949964157

`A046247(A000027(n+1))²*A046247(n+1)`
-/

namespace A046248.P16218299128949964157
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046247 (A000027 (n + 1)).toNat ^ 2 * A046247 (n + 1)

end

end A046248.P16218299128949964157

/-! ## A046248.P2335172350416705391

`A000578(A046247(n+1))`
-/

namespace A046248.P2335172350416705391
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A046247 (n + 1)).toNat

end

end A046248.P2335172350416705391

/-! ## A046248.P4865276002444339186

`A094823(A256495(n+1))^3`
-/

namespace A046248.P4865276002444339186
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094823 (A256495 (n + 1)).toNat ^ 3

end

end A046248.P4865276002444339186

/-!
# A046249: Numbers k such that k^3 is palindromic in base 14.

The programs for A046249, there is no canonical definition to state claims against.
-/

/-! ## A046249.P3030552383216285108

`A059016(n!²)+n`
-/

namespace A046249.P3030552383216285108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059016 (Nat.factorial n ^ 2) + (n : ℤ)

end

end A046249.P3030552383216285108

/-!
# A046250: Cubes which are palindromes in base 14.

The programs for A046250, there is no canonical definition to state claims against.
-/

/-! ## A046250.P7113163452015969557

`A046249(n+1)^3`
-/

namespace A046250.P7113163452015969557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046249 (n + 1) ^ 3

end

end A046250.P7113163452015969557

/-! ## A046250.P11626084525669862184

`A000578(A046249(n+1))`
-/

namespace A046250.P11626084525669862184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A046249 (n + 1)).toNat

end

end A046250.P11626084525669862184

/-!
# A046251: Numbers n such that n^3 is palindromic in base 15.

The programs for A046251, there is no canonical definition to state claims against.
-/

/-! ## A046251.P7720544146272226133

`A360224(32*2*a(n-1))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16`
-/

namespace A046251.P7720544146272226133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 8, 16] fun n a =>
  A360224 (32 * (2 * a (n - 1))).toNat

end

end A046251.P7720544146272226133

/-! ## A046251.P3132762729704657048

`or(32, A112736(2*a(n-1)))` with `a(0)=0, a(1)=1, a(2)=2, a(3)=4, a(4)=8, a(5)=16`
-/

namespace A046251.P3132762729704657048
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2, 4, 8, 16] fun n a =>
  Int.lor 32 (A112736 (2 * a (n - 1)).toNat)

end

end A046251.P3132762729704657048

/-! ## A046251.P14644675822954281067

`∩[A080078(n), A102824(n)]`
-/

namespace A046251.P14644675822954281067
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080078 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102824 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046251.P14644675822954281067

/-!
# A046252: Cubes which are palindromes in base 15.

The programs for A046252, there is no canonical definition to state claims against.
-/

/-! ## A046252.P5303459149187971978

`A046251(n+1)^3`
-/

namespace A046252.P5303459149187971978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046251 (n + 1) ^ 3

end

end A046252.P5303459149187971978

/-! ## A046252.P8242743984428300112

`A000578(A046251(n+1))`
-/

namespace A046252.P8242743984428300112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000578 (A046251 (n + 1)).toNat

end

end A046252.P8242743984428300112

/-! ## A046252.P4948574834198747232

`∑{d}[A046251(n+1), A059376(#)]`
-/

namespace A046252.P4948574834198747232
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046251 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A059376 d

end

end A046252.P4948574834198747232

/-! ## A046252.P5244390105891605390

`∩[A029960(n+1), n^3]`
-/

namespace A046252.P5244390105891605390
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029960 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 3

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = x) n

end

end A046252.P5244390105891605390

/-!
# A046257: a(1) = 7; a(n) is smallest number >= a(n-1) such that the juxtaposition a(1)a(2)...a(n) is a prime.

The programs for A046257, there is no canonical definition to state claims against.
-/

/-! ## A046257.P11491007103964011964

`A074343(n+1-A185284(2*n+1))`
-/

namespace A046257.P11491007103964011964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074343 ((n + 1 : ℤ) - A185284 (2 * n + 1)).toNat

end

end A046257.P11491007103964011964

/-! ## A046257.P5507319877145514469

`A074343(A076084(n+1))`
-/

namespace A046257.P5507319877145514469
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074343 (A076084 (n + 1)).toNat

end

end A046257.P5507319877145514469

/-! ## A046257.P1931739951764306222

`A074343(A151764(n+1))`
-/

namespace A046257.P1931739951764306222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074343 (A151764 (n + 1)).toNat

end

end A046257.P1931739951764306222

/-! ## A046257.P11565522220916530937

`A074343(n+1)%A008746(n+1)`
-/

namespace A046257.P11565522220916530937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074343 (n + 1)) (A008746 (n + 1))

end

end A046257.P11565522220916530937

/-! ## A046257.P2342462794733207881

`A074343(n+1)+A000007(A003242(n))`
-/

namespace A046257.P2342462794733207881
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074343 (n + 1) + A000007 (A003242 n).toNat

end

end A046257.P2342462794733207881

/-!
# A046258: a(1) = 8; a(n) is smallest number >= a(n-1) such that the juxtaposition a(1)a(2)...a(n) is a prime.

The programs for A046258, there is no canonical definition to state claims against.
-/

/-! ## A046258.P10381635100045537921

`A074344(n+1)-A216602(A298338(n))`
-/

namespace A046258.P10381635100045537921
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074344 (n + 1) - A216602 (A298338 n).toNat

end

end A046258.P10381635100045537921

/-! ## A046258.P17706216710828742230

`A074344(A043318(n+1)%A081256(n+1))`
-/

namespace A046258.P17706216710828742230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074344 (Int.tmod (A043318 (n + 1)) (A081256 (n + 1))).toNat

end

end A046258.P17706216710828742230

/-! ## A046258.P10015440563874208547

`A074344(A210992(∑[n]))`
-/

namespace A046258.P10015440563874208547
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074344 (A210992 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat

end

end A046258.P10015440563874208547

/-! ## A046258.P10299886915375135651

`A074344(∑[A287384(n)])`
-/

namespace A046258.P10299886915375135651
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A287384 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074344 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046258.P10299886915375135651

/-! ## A046258.P3617160277804757168

`record[A074344(A210992(n))]`
-/

namespace A046258.P3617160277804757168
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074344 (A210992 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046258.P3617160277804757168

/-!
# A046260: Largest palindromic substring in 2^n.

The programs for A046260, there is no canonical definition to state claims against.
-/

/-! ## A046260.P1556477523606231645

`A047813(A000079(n))`
-/

namespace A046260.P1556477523606231645
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A000079 n).toNat

end

end A046260.P1556477523606231645

/-! ## A046260.P16823149571167378912

`A047813((2^n)%A006037(n+1))`
-/

namespace A046260.P16823149571167378912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (Int.tmod (2 ^ n : ℤ) (A006037 (n + 1))).toNat

end

end A046260.P16823149571167378912

/-! ## A046260.P2439137322084623119

`A054055(A000079(n)%A006037(n+1))`
-/

namespace A046260.P2439137322084623119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (Int.tmod (A000079 n) (A006037 (n + 1))).toNat

end

end A046260.P2439137322084623119

/-! ## A046260.P8789111115833360677

`A054055(A050732(n+1)%A048455(n))`
-/

namespace A046260.P8789111115833360677
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (Int.tmod (A050732 (n + 1)) (A048455 n)).toNat

end

end A046260.P8789111115833360677

/-! ## A046260.P13743622854229677432

`A054055(A011782(n+1)%A006037(n+1))`
-/

namespace A046260.P13743622854229677432
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054055 (Int.tmod (A011782 (n + 1)) (A006037 (n + 1))).toNat

end

end A046260.P13743622854229677432

/-!
# A046261: Largest palindromic substring in 3^n.

The programs for A046261, there is no canonical definition to state claims against.
-/

/-! ## A046261.P5512771086105874736

`A047813(3^n)`
-/

namespace A046261.P5512771086105874736
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (3 ^ n)

end

end A046261.P5512771086105874736

/-! ## A046261.P7966146546134391078

`A262223(3^n)-3^n`
-/

namespace A046261.P7966146546134391078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 (3 ^ n) - (3 ^ n : ℤ)

end

end A046261.P7966146546134391078

/-! ## A046261.P8994592307621161591

`A047813(A000244(n))+char[9]`
-/

namespace A046261.P8994592307621161591
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (A000244 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A046261.P8994592307621161591

/-! ## A046261.P4450017788375487374

`A056965(n)+A047813(A000244(n))`
-/

namespace A046261.P4450017788375487374
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056965 n + A047813 (A000244 n).toNat

end

end A046261.P4450017788375487374

/-! ## A046261.P17311512280516666670

`A064834(n)+A047813(A000244(n))`
-/

namespace A046261.P17311512280516666670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064834 n + A047813 (A000244 n).toNat

end

end A046261.P17311512280516666670

/-!
# A046262: Largest palindromic substring in 4^n.

The programs for A046262, there is no canonical definition to state claims against.
-/

/-! ## A046262.P7461415045650666280

`A046260(2*n)`
-/

namespace A046262.P7461415045650666280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046260 (2 * n)

end

end A046262.P7461415045650666280

/-! ## A046262.P6822465889882970016

`A046260(A004277(n))-A000007(n)`
-/

namespace A046262.P6822465889882970016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046260 (A004277 n).toNat - A000007 n

end

end A046262.P6822465889882970016

/-! ## A046262.P12662816660056706973

`A046260(A005843(n))%A017248(n)`
-/

namespace A046262.P12662816660056706973
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046260 (A005843 n).toNat) (A017248 n)

end

end A046262.P12662816660056706973

/-! ## A046262.P13587611334789051182

`or(A000007(n), A046260(A005843(n)))`
-/

namespace A046262.P13587611334789051182
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A046260 (A005843 n).toNat)

end

end A046262.P13587611334789051182

/-! ## A046262.P15153027677085410312

`A046260(A004277(n))/A000038(n)!`
-/

namespace A046262.P15153027677085410312
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046260 (A004277 n).toNat : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A046262.P15153027677085410312

/-!
# A046264: Largest palindromic substring in 6^n.

The programs for A046264, there is no canonical definition to state claims against.
-/

/-! ## A046264.P7672395734928402595

`A047813(6^n)`
-/

namespace A046264.P7672395734928402595
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047813 (6 ^ n)

end

end A046264.P7672395734928402595

/-! ## A046264.P17655899995674271149

`A262223(6^n)-6^n`
-/

namespace A046264.P17655899995674271149
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A262223 (6 ^ n) - (6 ^ n : ℤ)

end

end A046264.P17655899995674271149

/-!
# A046266: Largest palindromic substring in 8^n.

The programs for A046266, there is no canonical definition to state claims against.
-/

/-! ## A046266.P8606914962775733832

`A046260(3*n)`
-/

namespace A046266.P8606914962775733832
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046260 (3 * n)

end

end A046266.P8606914962775733832

/-! ## A046266.P15562157896749401423

`and(1-4/2, A046260(A008585(n)))`
-/

namespace A046266.P15562157896749401423
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (SequenceMachineLib.roundAway (1 - (4 : ℚ) / 2)) (A046260 (A008585 n).toNat)

end

end A046266.P15562157896749401423

/-! ## A046266.P6365535834419608631

`A046260(A008486(n))-A000007(n)`
-/

namespace A046266.P6365535834419608631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046260 (A008486 n).toNat - A000007 n

end

end A046266.P6365535834419608631

/-! ## A046266.P15378706334720773543

`A046260(A008486(n))/A054977(n)`
-/

namespace A046266.P15378706334720773543
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046260 (A008486 n).toNat : ℚ) / (A054977 n : ℚ)

end

end A046266.P15378706334720773543

/-! ## A046266.P1318031258153207124

`A046260(A008486(n))^log2(A040000(n))`
-/

namespace A046266.P1318031258153207124
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046260 (A008486 n).toNat : ℝ) ^ (Real.logb 2 (A040000 n : ℝ))

end

end A046266.P1318031258153207124

/-! ## A046266.P8287116152325853961

`A046260(A004277(n)+n)-A000007(n)`
-/

namespace A046266.P8287116152325853961
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046260 (A004277 n + (n : ℤ)).toNat - A000007 n

end

end A046266.P8287116152325853961

/-! ## A046266.P6762469072146108829

`or(A000007(n), A046260(A005843(n)+n))`
-/

namespace A046266.P6762469072146108829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A046260 (A005843 n + (n : ℤ)).toNat)

end

end A046266.P6762469072146108829

/-! ## A046266.P15133454681514836586

`A000027(A046260(A016789(n)-2))`
-/

namespace A046266.P15133454681514836586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A046260 (A016789 n - 2).toNat).toNat

end

end A046266.P15133454681514836586

/-!
# A046267: Largest palindromic substring in 9^n.

The programs for A046267, there is no canonical definition to state claims against.
-/

/-! ## A046267.P3676518450403577771

`A046261(2*n)`
-/

namespace A046267.P3676518450403577771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046261 (2 * n)

end

end A046267.P3676518450403577771

/-! ## A046267.P10600986161966412845

`A046261(A004277(n))-A000038(n)`
-/

namespace A046267.P10600986161966412845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046261 (A004277 n).toNat - A000038 n

end

end A046267.P10600986161966412845

/-! ## A046267.P11080233560418905945

`gcd(A000038(n), A046261(A005843(n)))`
-/

namespace A046267.P11080233560418905945
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.gcd (A000038 n) (A046261 (A005843 n).toNat)

end

end A046267.P11080233560418905945

/-! ## A046267.P8750734514250157296

`or(A000007(n), A046261(A005843(n)))`
-/

namespace A046267.P8750734514250157296
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A046261 (A005843 n).toNat)

end

end A046267.P8750734514250157296

/-! ## A046267.P12067996591702566129

`A046261(A004277(n))^abs(A057428(n))`
-/

namespace A046267.P12067996591702566129
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046261 (A004277 n).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A046267.P12067996591702566129

/-! ## A046267.P8830629367242752898

`A046261(A005843(n))+A000007(n+1)`
-/

namespace A046267.P8830629367242752898
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046261 (A005843 n).toNat + A000007 (n + 1)

end

end A046267.P8830629367242752898

/-! ## A046267.P13539597065695892740

`A046261(A004277(n))%(A054777(n)+2)`
-/

namespace A046267.P13539597065695892740
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046261 (A004277 n).toNat) (A054777 n + 2)

end

end A046267.P13539597065695892740

/-! ## A046267.P865245982192600198

`A046261(A005843(n))/A001222(A006567(n+1))`
-/

namespace A046267.P865245982192600198
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046261 (A005843 n).toNat : ℚ) / (A001222 (A006567 (n + 1)).toNat : ℚ)

end

end A046267.P865245982192600198

/-! ## A046267.P349546988657222323

`A046261(A005843(n))/A001222(A002385(n+1))`
-/

namespace A046267.P349546988657222323
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046261 (A005843 n).toNat : ℚ) / (A001222 (A002385 (n + 1)).toNat : ℚ)

end

end A046267.P349546988657222323

/-! ## A046267.P16638050359638974588

`A046261(A005843(n))/A001222(A016041(n+1))`
-/

namespace A046267.P16638050359638974588
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046261 (A005843 n).toNat : ℚ) / (A001222 (A016041 (n + 1)).toNat : ℚ)

end

end A046267.P16638050359638974588

/-!
# A046268: Largest prime substring in 2^n (or 0 if none exist).

The programs for A046268, there is no canonical definition to state claims against.
-/

/-! ## A046268.P7325885211967226782

`A047814(2^n)`
-/

namespace A046268.P7325885211967226782
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (2 ^ n)

end

end A046268.P7325885211967226782

/-! ## A046268.P11190763196291132371

`A047814(A000079(n))%A005248(n)`
-/

namespace A046268.P11190763196291132371
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047814 (A000079 n).toNat) (A005248 n)

end

end A046268.P11190763196291132371

/-!
# A046269: Largest prime substring in 3^n (0 if none).

The programs for A046269, there is no canonical definition to state claims against.
-/

/-! ## A046269.P1794811809803294688

`A047814(3^n)`
-/

namespace A046269.P1794811809803294688
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (3 ^ n)

end

end A046269.P1794811809803294688

/-! ## A046269.P4021257183797031338

`A331097(3^n)`
-/

namespace A046269.P4021257183797031338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A331097 (3 ^ n)

end

end A046269.P4021257183797031338

/-! ## A046269.P9013115338779629126

`A047814(A000244(n))%62`
-/

namespace A046269.P9013115338779629126
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047814 (A000244 n).toNat) 62

end

end A046269.P9013115338779629126

/-! ## A046269.P17644512830220066370

`A047814(A050733(n))%62`
-/

namespace A046269.P17644512830220066370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047814 (A050733 n).toNat) 62

end

end A046269.P17644512830220066370

/-! ## A046269.P12307643447190120639

`A047814(A133494(n+1))%62`
-/

namespace A046269.P12307643447190120639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A047814 (A133494 (n + 1)).toNat) 62

end

end A046269.P12307643447190120639

/-!
# A046270: Largest prime substring in 4^n (0 if none).

The programs for A046270, there is no canonical definition to state claims against.
-/

/-! ## A046270.P7933340602768008984

`A046268(2*n)`
-/

namespace A046270.P7933340602768008984
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046268 (2 * n)

end

end A046270.P7933340602768008984

/-! ## A046270.P17090912677008775962

`A046268(A004277(n))-A000038(n)`
-/

namespace A046270.P17090912677008775962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046268 (A004277 n).toNat - A000038 n

end

end A046270.P17090912677008775962

/-! ## A046270.P1176051156291337302

`A046268(A005843(n))/A000038(n)!`
-/

namespace A046270.P1176051156291337302
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046268 (A005843 n).toNat : ℚ) / (Nat.factorial (A000038 n).toNat : ℚ)

end

end A046270.P1176051156291337302

/-! ## A046270.P8489621300743293775

`A046268(A005843(n))-A164938(A000038(n)!^n)`
-/

namespace A046270.P8489621300743293775
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046268 (A005843 n).toNat - A164938 (Nat.factorial (A000038 n).toNat ^ n)

end

end A046270.P8489621300743293775

/-! ## A046270.P7564596670414469878

`A046268(A005843(n))^A000038(n)!^A004273(n)`
-/

namespace A046270.P7564596670414469878
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046268 (A005843 n).toNat : ℝ) ^ ((Nat.factorial (A000038 n).toNat : ℚ) ^ (A004273 n : ℤ) : ℝ)

end

end A046270.P7564596670414469878

/-! ## A046270.P9004378541666611638

`A046268(A005843(n))^A006093(A000038(n)!^n)`
-/

namespace A046270.P9004378541666611638
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046268 (A005843 n).toNat : ℚ) ^ (A006093 (Nat.factorial (A000038 n).toNat ^ n) : ℤ)

end

end A046270.P9004378541666611638

/-! ## A046270.P208843322432544936

`A046268(A005843(n))^A008837(A000038(n)!^n)`
-/

namespace A046270.P208843322432544936
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046268 (A005843 n).toNat : ℚ) ^ (A008837 (Nat.factorial (A000038 n).toNat ^ n) : ℤ)

end

end A046270.P208843322432544936

/-! ## A046270.P6372450761682108858

`A046268(A005843(n))^A000038(n)!^A126380(n)`
-/

namespace A046270.P6372450761682108858
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A046268 (A005843 n).toNat : ℝ) ^ ((Nat.factorial (A000038 n).toNat : ℚ) ^ (A126380 n : ℤ) : ℝ)

end

end A046270.P6372450761682108858

/-! ## A046270.P9122820733843950892

`and(A046268(A004277(n)), A267941(n))`
-/

namespace A046270.P9122820733843950892
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046268 (A004277 n).toNat) (A267941 n)

end

end A046270.P9122820733843950892

/-! ## A046270.P13389224934201398465

`A046268(A005843(n))%∑[A090042(n)]`
-/

namespace A046270.P13389224934201398465
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090042 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046268 (A005843 n).toNat) (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A046270.P13389224934201398465

/-!
# A046273: Largest prime substring in 7^n (0 if none).

The programs for A046273, there is no canonical definition to state claims against.
-/

/-! ## A046273.P18241660259310081856

`A047814(7^n)`
-/

namespace A046273.P18241660259310081856
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047814 (7 ^ n)

end

end A046273.P18241660259310081856

/-!
# A046274: Largest prime substring in 8^n (0 if none).

The programs for A046274, there is no canonical definition to state claims against.
-/

/-! ## A046274.P17119684583701151442

`A046268(3*n)`
-/

namespace A046274.P17119684583701151442
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046268 (3 * n)

end

end A046274.P17119684583701151442

/-! ## A046274.P16221254188159960404

`lcm((-1)^n, A046268(A008585(n)))`
-/

namespace A046274.P16221254188159960404
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((-1) ^ n) (A046268 (A008585 n).toNat)

end

end A046274.P16221254188159960404

/-! ## A046274.P11347145088754855292

`A046268(A008486(n))-A000038(n)`
-/

namespace A046274.P11347145088754855292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046268 (A008486 n).toNat - A000038 n

end

end A046274.P11347145088754855292

/-! ## A046274.P13823951246829627769

`and(A046268(A008486(n)), A057428(n))`
-/

namespace A046274.P13823951246829627769
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046268 (A008486 n).toNat) (A057428 n)

end

end A046274.P13823951246829627769

/-! ## A046274.P1062886236499834235

`A046268(A004277(n)+n)-A000038(n)`
-/

namespace A046274.P1062886236499834235
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046268 (A004277 n + (n : ℤ)).toNat - A000038 n

end

end A046274.P1062886236499834235

/-! ## A046274.P17538836280426662327

`A046268(A008585(n))/A007318(∑[n]-n)`
-/

namespace A046274.P17538836280426662327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046268 (A008585 n).toNat : ℚ) / (A007318 (∑ j ∈ Finset.range (n + 1), f1 j - n) : ℚ)

end

end A046274.P17538836280426662327

/-! ## A046274.P14073125993158227373

`lcm(2, A046268(A008585(n)))/2`
-/

namespace A046274.P14073125993158227373
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (A046268 (A008585 n).toNat) : ℚ) / 2

end

end A046274.P14073125993158227373

/-! ## A046274.P6962977500381373380

`A046268(A008486(n))%A002293(n+1)`
-/

namespace A046274.P6962977500381373380
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046268 (A008486 n).toNat) (A002293 (n + 1))

end

end A046274.P6962977500381373380

/-! ## A046274.P16589318784515597293

`A046268(A008486(n))%A005810(n)`
-/

namespace A046274.P16589318784515597293
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046268 (A008486 n).toNat) (A005810 n)

end

end A046274.P16589318784515597293

/-!
# A046275: Largest prime substring in 9^n (0 if none).

The programs for A046275, there is no canonical definition to state claims against.
-/

/-! ## A046275.P13219400576292603359

`A046269(2*n)`
-/

namespace A046275.P13219400576292603359
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046269 (2 * n)

end

end A046275.P13219400576292603359

/-! ## A046275.P6741856892524865988

`lcm(A020985(n), A046269(A005843(n)))`
-/

namespace A046275.P6741856892524865988
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A020985 n) (A046269 (A005843 n).toNat)

end

end A046275.P6741856892524865988

/-! ## A046275.P1414030340705227468

`and(A046269(A004277(n)), A057428(n))`
-/

namespace A046275.P1414030340705227468
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046269 (A004277 n).toNat) (A057428 n)

end

end A046275.P1414030340705227468

/-! ## A046275.P12489218926924511167

`and(A046269(A005843(n)), A057428(n))`
-/

namespace A046275.P12489218926924511167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A046269 (A005843 n).toNat) (A057428 n)

end

end A046275.P12489218926924511167

/-! ## A046275.P12167806532461073021

`A046269(A005843(n))/(A002262(∑[n])+1)`
-/

namespace A046275.P12167806532461073021
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046269 (A005843 n).toNat : ℚ) / (A002262 (∑ j ∈ Finset.range (n + 1), f1 j) + 1 : ℚ)

end

end A046275.P12167806532461073021

/-! ## A046275.P7430704389204835510

`A046269(A005843(n))+C(A014963(n+1)%2, 2)`
-/

namespace A046275.P7430704389204835510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046269 (A005843 n).toNat + (Nat.choose (Int.tmod (A014963 (n + 1)) 2).toNat 2 : ℤ)

end

end A046275.P7430704389204835510

/-! ## A046275.P4045628068198175557

`A046269(A005843(n))/A001222(A049483(n+1))`
-/

namespace A046275.P4045628068198175557
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A046269 (A005843 n).toNat : ℚ) / (A001222 (A049483 (n + 1)).toNat : ℚ)

end

end A046275.P4045628068198175557

/-! ## A046275.P3071104739115862497

`A046269(A004277(n))%A170115(n)`
-/

namespace A046275.P3071104739115862497
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A046269 (A004277 n).toNat) (A170115 n)

end

end A046275.P3071104739115862497

/-!
# A046278: a(n) is the concatenation of the first n lucky numbers.

The programs for A046278, there is no canonical definition to state claims against.
-/

/-! ## A046278.P8241023105223252853

`A048794(∑[A094014(n)²])`
-/

namespace A046278.P8241023105223252853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094014 n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048794 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A046278.P8241023105223252853

/-!
# A046279: Sum of first n lucky numbers.

The programs for A046279, there is no canonical definition to state claims against.
-/

/-! ## A046279.P10937340049952530583

`∑[A000959(1+n)]`
-/

namespace A046279.P10937340049952530583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P10937340049952530583

/-! ## A046279.P13563083541907948602

`∑[sqrt(A032598(1+n))]`
-/

namespace A046279.P13563083541907948602
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A032598 (1 + n) : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P13563083541907948602

/-! ## A046279.P16961821646176072762

`∑[A139269(1+n)/2]`
-/

namespace A046279.P16961821646176072762
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A139269 (1 + n) : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P16961821646176072762

/-! ## A046279.P7023058999872535978

`∑[2*A049781(n+1)-1]`
-/

namespace A046279.P7023058999872535978
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A049781 (n + 1) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P7023058999872535978

/-! ## A046279.P4373586401506910455

`∑[A032599(n+1)^(1/3)]`
-/

namespace A046279.P4373586401506910455
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (A032599 (n + 1) : ℝ) ^ ((1 : ℚ) / 3 : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P4373586401506910455

/-! ## A046279.P12223672398484839150

`∑[A031883(n)+a(n-1)]` with `a(0)=1`
-/

namespace A046279.P12223672398484839150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A031883 n + f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P12223672398484839150

/-! ## A046279.P9316201205977972403

`∑[A032600(n+1)+A000040(n+1)]`
-/

namespace A046279.P9316201205977972403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032600 (n + 1) + A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P9316201205977972403

/-! ## A046279.P11315396768044859629

`∑[A032602(n+1)-A000040(n+1)]`
-/

namespace A046279.P11315396768044859629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032602 (n + 1) - A000040 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P11315396768044859629

/-! ## A046279.P15025276972542506060

`∑[A032601(n+1)/A000040(n+1)]`
-/

namespace A046279.P15025276972542506060
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032601 (n + 1) : ℚ) / (A000040 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P15025276972542506060

/-! ## A046279.P10543901112893245389

`∑[A032599(n+1)/A032598(n+1)]`
-/

namespace A046279.P10543901112893245389
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A032599 (n + 1) : ℚ) / (A032598 (n + 1) : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P10543901112893245389

/-! ## A046279.P8618633420477570698

`A000959(n+2)+a(n-1)-A031883(n+1)` with `a(0)=1`
-/

namespace A046279.P8618633420477570698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A000959 (n + 2) + (a (n - 1) - A031883 (n + 1))

end

end A046279.P8618633420477570698

/-! ## A046279.P4750648778136337837

`∑[record[n*A145649(n+1)+1]]`
-/

namespace A046279.P4750648778136337837
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A145649 (n + 1) + 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P4750648778136337837

/-! ## A046279.P17902159925695714502

`∑[A000265(A139269(n+1))]`
-/

namespace A046279.P17902159925695714502
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000265 (A139269 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P17902159925695714502

/-! ## A046279.P10617000335107625888

`∑[A003309(n+1)-A256486(n+1)]`
-/

namespace A046279.P10617000335107625888
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003309 (n + 1) - A256486 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P10617000335107625888

/-! ## A046279.P16893877057395548648

`∑[A269372(a(n-1))]+n` with `a(0)=1`
-/

namespace A046279.P16893877057395548648
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f1 =>
  A269372 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (n : ℤ)

end

end A046279.P16893877057395548648

/-! ## A046279.P1035548291009812076

`∑[eq[1, A260429(n+1)]+1]`
-/

namespace A046279.P1035548291009812076
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f2 j : ℤ) = f3 j) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P1035548291009812076

/-! ## A046279.P13642286461649077749

`∑[lt[A260437(n+1), 1]+1]`
-/

namespace A046279.P13642286461649077749
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P13642286461649077749

/-! ## A046279.P15620392987613793404

`∑[record[(n+2)/A260429(n+2)]]`
-/

namespace A046279.P15620392987613793404
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n + 2 : ℚ) / (A260429 (n + 2) : ℚ)

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P15620392987613793404

/-! ## A046279.P12760453370054605531

`∑[lt[A264940(n+1), 1]+1]`
-/

namespace A046279.P12760453370054605531
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A264940 (n + 1)

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j < (f3 j : ℤ)) n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P12760453370054605531

/-! ## A046279.P6950311400464125574

`∑[A000720(A032605(n+1))]`
-/

namespace A046279.P6950311400464125574
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A032605 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A046279.P6950311400464125574

/-!
# A046280: Numbers k such that the sum of the first k lucky numbers, A046279(k), is prime.

The programs for A046280, there is no canonical definition to state claims against.
-/

/-! ## A046280.P10603109147316368103

`eq[1, A001222(A046279(n+1))]+1`
-/

namespace A046280.P10603109147316368103
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A046279 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046280.P10603109147316368103

/-!
# A046281: Prime numbers that are the sum of the first k lucky numbers, A046279(k), for some k.

The programs for A046281, there is no canonical definition to state claims against.
-/

/-! ## A046281.P17078001843044504210

`A046279(A046280(n+1))`
-/

namespace A046281.P17078001843044504210
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046279 (A046280 (n + 1)).toNat

end

end A046281.P17078001843044504210

/-! ## A046281.P2642635164464132816

`p?[A046279(n+1)]`
-/

namespace A046281.P2642635164464132816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046279 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046281.P2642635164464132816

/-! ## A046281.P6806622856870902235

`p?[∑[A000959(n+1)]]`
-/

namespace A046281.P6806622856870902235
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046281.P6806622856870902235

/-! ## A046281.P2276095877330690685

`p?[∑[eq[1, A260429(n+1)]+1]]`
-/

namespace A046281.P2276095877330690685
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f4 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260429 (n + 1)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f3 j : ℤ) = f4 j) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A046281.P2276095877330690685

/-! ## A046281.P2390773732072844113

`p?[∑[lt[A260437(n+1), 1]+1]]`
-/

namespace A046281.P2390773732072844113
noncomputable section

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260437 (n + 1)

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f3 j < (f4 j : ℤ)) n + 1

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).Prime) n)

end

end A046281.P2390773732072844113

/-!
# A046282: Numbers n such that n is a prime and sum of all lucky numbers <= n is a prime.

The programs for A046282, there is no canonical definition to state claims against.
-/

/-! ## A046282.P15115554347695510156

`p?[A046280(n+1)]`
-/

namespace A046282.P15115554347695510156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046282.P15115554347695510156

/-! ## A046282.P7826695704999830971

`∩[A046280(n+1), A378441(n+1)]`
-/

namespace A046282.P7826695704999830971
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A378441 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P7826695704999830971

/-! ## A046282.P6135634312735670977

`∩[A046280(n+1), A380468(n+1)]`
-/

namespace A046282.P6135634312735670977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A380468 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P6135634312735670977

/-! ## A046282.P1448050744069029262

`p?[record[A046280(A133310(n))]]`
-/

namespace A046282.P1448050744069029262
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (A133310 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => ∀ l < j, f2 l < f2 j) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A046282.P1448050744069029262

/-! ## A046282.P1129475334474604033

`record[p?[A046280(A183041(n))]]`
-/

namespace A046282.P1129475334474604033
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (A183041 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A046282.P1129475334474604033

/-! ## A046282.P11935705343159337526

`∩[A000040(n+1), A046280(n+1)]`
-/

namespace A046282.P11935705343159337526
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P11935705343159337526

/-! ## A046282.P8887437915161898644

`∩[A004139(n+1), A046280(n+1)]`
-/

namespace A046282.P8887437915161898644
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004139 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P8887437915161898644

/-! ## A046282.P422689801040129416

`∩[A006005(n+1), A046280(n+1)]`
-/

namespace A046282.P422689801040129416
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P422689801040129416

/-! ## A046282.P11237393935873116542

`∩[A008578(n+1), A046280(n+1)]`
-/

namespace A046282.P11237393935873116542
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P11237393935873116542

/-! ## A046282.P16866231314722895307

`∩[A045319(n+1), A046280(n+1)]`
-/

namespace A046282.P16866231314722895307
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A045319 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P16866231314722895307

/-! ## A046282.P4170408639975138499

`∩[A046022(n+1), A046280(n+1)]`
-/

namespace A046282.P4170408639975138499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046022 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P4170408639975138499

/-! ## A046282.P6619542683713667161

`∩[A046280(n+1), A065091(n+1)]`
-/

namespace A046282.P6619542683713667161
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P6619542683713667161

/-! ## A046282.P5221583768928467262

`∩[A046280(n+1), A065396(n+1)]`
-/

namespace A046282.P5221583768928467262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065396 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P5221583768928467262

/-! ## A046282.P10625721589126148475

`∩[A046280(n+1), A093515(n+1)]`
-/

namespace A046282.P10625721589126148475
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A093515 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P10625721589126148475

/-! ## A046282.P4489360176886196288

`∩[A046280(n+1), A106118(n+1)]`
-/

namespace A046282.P4489360176886196288
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106118 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P4489360176886196288

/-! ## A046282.P3505599402870060576

`∩[A046280(n+1), A116974(n+1)]`
-/

namespace A046282.P3505599402870060576
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A116974 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P3505599402870060576

/-! ## A046282.P4085296225538983646

`∩[A046280(n+1), A158611(n+1)]`
-/

namespace A046282.P4085296225538983646
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158611 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P4085296225538983646

/-! ## A046282.P5728201457065155941

`∩[A046280(n+1), A161346(n+1)]`
-/

namespace A046282.P5728201457065155941
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A161346 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P5728201457065155941

/-! ## A046282.P1518563952636830197

`∩[A046280(n+1), A175787(n+1)]`
-/

namespace A046282.P1518563952636830197
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175787 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P1518563952636830197

/-! ## A046282.P13323279195144918417

`∩[A046280(n+1), A182986(n+1)]`
-/

namespace A046282.P13323279195144918417
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046282.P13323279195144918417

/-!
# A046283: Lucky numbers k such that the sum of the lucky numbers <= k is prime.

The programs for A046283, there is no canonical definition to state claims against.
-/

/-! ## A046283.P534361631694996894

`∩[A000959(n+1), A046280(n+1)]`
-/

namespace A046283.P534361631694996894
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000959 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046283.P534361631694996894

/-! ## A046283.P13247739491147125239

`∩[Δ[A046279(n+1)], A046280(n+1)]`
-/

namespace A046283.P13247739491147125239
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046279 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def f3 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f3 j = (x : ℤ)) n

end

end A046283.P13247739491147125239

/-! ## A046283.P12046903966311478702

`∩[A046280(n+1), A031883(n)+a(n-1)]` with `a(0)=1`
-/

namespace A046283.P12046903966311478702
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.rec [1] fun n f2 =>
  A031883 n + f2 (n - 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046283.P12046903966311478702

/-! ## A046283.P2977374541201531988

`filter[A046280(n+1), A145649(#)]`
-/

namespace A046283.P2977374541201531988
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A145649 (f1 j).toNat = 1) n)

end

end A046283.P2977374541201531988

/-! ## A046283.P12842952594921399490

`∩[A260436(A003309(n+1)), A046280(n+1)]`
-/

namespace A046283.P12842952594921399490
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260436 (A003309 (n + 1)).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046280 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A046283.P12842952594921399490

/-!
# A046284: Primes p such that concatenation of primes from 2 through p is a prime.

The programs for A046284, there is no canonical definition to state claims against.
-/

/-! ## A046284.P11518089402482407458

`A000040(A046035(n+1))`
-/

namespace A046284.P11518089402482407458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (A046035 (n + 1)).toNat

end

end A046284.P11518089402482407458

/-! ## A046284.P3938904632918266954

`A008578(A046035(n+1)+1)`
-/

namespace A046284.P3938904632918266954
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A046035 (n + 1) + 1).toNat

end

end A046284.P3938904632918266954

/-! ## A046284.P17860367663257369864

`A182986(A046035(n+1)+1)`
-/

namespace A046284.P17860367663257369864
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182986 (A046035 (n + 1) + 1).toNat

end

end A046284.P17860367663257369864

/-! ## A046284.P11566934550445395127

`A006005(A046035(n+1))+A000007(n)`
-/

namespace A046284.P11566934550445395127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006005 (A046035 (n + 1)).toNat + A000007 n

end

end A046284.P11566934550445395127

/-!
# A046285: Numbers k such that the sum of the first k primes is a lucky number.

The programs for A046285, there is no canonical definition to state claims against.
-/

/-! ## A046285.P17634689555793590038

`eq[1, A145649(A007504(n+1))]+1`
-/

namespace A046285.P17634689555793590038
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145649 (A007504 (n + 1)).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1

end

end A046285.P17634689555793590038

/-! ## A046285.P13591087907829698457

`A053050(A046286(n+1))`
-/

namespace A046285.P13591087907829698457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053050 (A046286 (n + 1)).toNat

end

end A046285.P13591087907829698457

/-!
# A046286: Lucky numbers that are the sum of the first k primes for some k.

The programs for A046286, there is no canonical definition to state claims against.
-/

/-! ## A046286.P12592284854079112440

`A007504(A046285(n+1))`
-/

namespace A046286.P12592284854079112440
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007504 (A046285 (n + 1)).toNat

end

end A046286.P12592284854079112440

/-! ## A046286.P3622303100309051213

`A267084(2*(n+1))+A237589(A046285(n+1))`
-/

namespace A046286.P3622303100309051213
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267084 (2 * (n + 1)) + A237589 (A046285 (n + 1)).toNat

end

end A046286.P3622303100309051213

/-! ## A046286.P4034669499465097567

`lcm(A237589(A046285(n+1))+1, A134824(n+2))`
-/

namespace A046286.P4034669499465097567
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A237589 (A046285 (n + 1)).toNat + 1) (A134824 (n + 2))

end

end A046286.P4034669499465097567

/-! ## A046286.P4137438686704039959

`A237589(A046285(n+1))+A001221(A002476(n+1))`
-/

namespace A046286.P4137438686704039959
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A237589 (A046285 (n + 1)).toNat + A001221 (A002476 (n + 1)).toNat

end

end A046286.P4137438686704039959

/-! ## A046286.P873675721374833613

`A160793(2*A046285(n+1))`
-/

namespace A046286.P873675721374833613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A160793 (2 * A046285 (n + 1)).toNat

end

end A046286.P873675721374833613

/-! ## A046286.P11284333475390779425

`∑{d}[A073579(A046285(n+1)), A034387(#)]`
-/

namespace A046286.P11284333475390779425
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073579 (A046285 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n).natAbs, A034387 d

end

end A046286.P11284333475390779425

/-!
# A046288: Numbers k such that 2^k contains 2^2=4 as its largest proper substring of the form 2^m (probably finite).

The programs for A046288, there is no canonical definition to state claims against.
-/

/-! ## A046288.P1772222390796437177

`eq[2, A352924(n)]`
-/

namespace A046288.P1772222390796437177
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046288.P1772222390796437177

/-! ## A046288.P12201280932260663410

`eq[4, A033921(n)]`
-/

namespace A046288.P12201280932260663410
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046288.P12201280932260663410

/-! ## A046288.P946290256486768554

`lt[A171013(A033921(n)+1), 1]`
-/

namespace A046288.P946290256486768554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171013 (A033921 n + 1).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046288.P946290256486768554

/-! ## A046288.P15204195964563466628

`lt[1, A028264(A352924(n)+2)]`
-/

namespace A046288.P15204195964563466628
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028264 (A352924 n + 2).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046288.P15204195964563466628

/-! ## A046288.P16339549104726455048

`lt[A274528(A033921(n)+3), 1]`
-/

namespace A046288.P16339549104726455048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274528 (A033921 n + 3).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046288.P16339549104726455048

/-!
# A046289: Numbers k such that 2^k contains 2^3=8 as its largest proper substring of the form 2^m (probably finite).

The programs for A046289, there is no canonical definition to state claims against.
-/

/-! ## A046289.P13352886688235664773

`eq[3, A352924(n)]`
-/

namespace A046289.P13352886688235664773
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  3

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046289.P13352886688235664773

/-! ## A046289.P14452453781263428239

`eq[8, A033921(n)]`
-/

namespace A046289.P14452453781263428239
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046289.P14452453781263428239

/-! ## A046289.P7683138064384111918

`lt[sqrt(A033921(n)), A352924(n)]`
-/

namespace A046289.P7683138064384111918
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A033921 n : ℝ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℝ)) n

end

end A046289.P7683138064384111918

/-! ## A046289.P5700093104341636877

`lt[A007953(A033921(n)+2), 2]`
-/

namespace A046289.P5700093104341636877
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007953 (A033921 n + 2).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046289.P5700093104341636877

/-! ## A046289.P8213611522481474557

`lt[A347306(A352924(n)+7), 4]`
-/

namespace A046289.P8213611522481474557
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A347306 (A352924 n + 7).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046289.P8213611522481474557

/-! ## A046289.P8607469846870417111

`lt[A064917(A352924(n)+15), 4]`
-/

namespace A046289.P8607469846870417111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064917 (A352924 n + 15).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046289.P8607469846870417111

/-!
# A046290: Numbers k such that 2^k contains 2^4=16 as its largest proper substring of the form 2^m (probably finite).

The programs for A046290, there is no canonical definition to state claims against.
-/

/-! ## A046290.P4135150337775058651

`eq[4, A352924(n)]`
-/

namespace A046290.P4135150337775058651
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046290.P4135150337775058651

/-! ## A046290.P4824536342480931745

`eq[16, A033921(n)]`
-/

namespace A046290.P4824536342480931745
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  16

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046290.P4824536342480931745

/-! ## A046290.P2859425396713588022

`lt[xor(17, A033921(n)), A352924(n)]`
-/

namespace A046290.P2859425396713588022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 17 (A033921 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046290.P2859425396713588022

/-! ## A046290.P13349456568461245022

`lt[xor(17, A131577(A352924(n)+1)), 2]`
-/

namespace A046290.P13349456568461245022
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 17 (A131577 (A352924 n + 1).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046290.P13349456568461245022

/-! ## A046290.P3358829524441631111

`lt[xor(17, A034008(A352924(n)+2)), 2]`
-/

namespace A046290.P3358829524441631111
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 17 (A034008 (A352924 n + 2).toNat)

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046290.P3358829524441631111

/-!
# A046291: Numbers k such that 2^k contains 2^5=32 as its largest proper substring of the form 2^m.

The programs for A046291, there is no canonical definition to state claims against.
-/

/-! ## A046291.P7480506289315469344

`eq[5, A352924(n)]`
-/

namespace A046291.P7480506289315469344
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  5

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046291.P7480506289315469344

/-! ## A046291.P346901230565160853

`eq[32, A033921(n)]`
-/

namespace A046291.P346901230565160853
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046291.P346901230565160853

/-! ## A046291.P4549070991206523262

`lt[xor(33, A033921(n)), A352924(n)]`
-/

namespace A046291.P4549070991206523262
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 33 (A033921 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046291.P4549070991206523262

/-! ## A046291.P1318436660554565593

`lt[xor(33, A033921(n)), A000005(n+1)]`
-/

namespace A046291.P1318436660554565593
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 33 (A033921 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046291.P1318436660554565593

/-! ## A046291.P5084389628577754802

`lt[A033921(n), A033921(A352924(n)²)²]`
-/

namespace A046291.P5084389628577754802
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 (A352924 n ^ 2).toNat ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046291.P5084389628577754802

/-! ## A046291.P13127530689788387870

`lt[A105149(xor(33, A033921(n))), 2]`
-/

namespace A046291.P13127530689788387870
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105149 (Int.xor 33 (A033921 n)).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046291.P13127530689788387870

/-!
# A046292: Numbers k such that 2^k contains 2^6=64 as its largest proper substring of the form 2^m.

The programs for A046292, there is no canonical definition to state claims against.
-/

/-! ## A046292.P5111236195389089120

`eq[6, A352924(n)]`
-/

namespace A046292.P5111236195389089120
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  6

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046292.P5111236195389089120

/-! ## A046292.P4675363601682301755

`eq[64, A033921(n)]`
-/

namespace A046292.P4675363601682301755
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046292.P4675363601682301755

/-! ## A046292.P8668141955367492909

`lt[A064926(A352924(n)+15), 4]`
-/

namespace A046292.P8668141955367492909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A064926 (A352924 n + 15).toNat

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℤ)) n

end

end A046292.P8668141955367492909

/-! ## A046292.P7765244385479187218

`lt[xor(64, A033921(n)), A352924(n)]`
-/

namespace A046292.P7765244385479187218
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 64 (A033921 n)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046292.P7765244385479187218

/-! ## A046292.P610941667703820643

`lt[0, and(64, A131577(A352924(n)+1))]`
-/

namespace A046292.P610941667703820643
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 64 (A131577 (A352924 n + 1).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046292.P610941667703820643

/-! ## A046292.P12920864423038293680

`lt[0, and(64, A034008(A352924(n)+2))]`
-/

namespace A046292.P12920864423038293680
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  0

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land 64 (A034008 (A352924 n + 2).toNat)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n

end

end A046292.P12920864423038293680

/-!
# A046293: Numbers k such that 2^k contains 2^7=128 as its largest proper substring of the form 2^m.

The programs for A046293, there is no canonical definition to state claims against.
-/

/-! ## A046293.P16911277770892884079

`eq[7, A352924(n)]`
-/

namespace A046293.P16911277770892884079
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  7

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046293.P16911277770892884079

/-! ## A046293.P8346717568111984283

`eq[8, col(A033921(n))]`
-/

namespace A046293.P8346717568111984283
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.triCol (A033921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046293.P8346717568111984283

/-! ## A046293.P11579619783418968407

`eq[A033921(n), A171442(n)]`
-/

namespace A046293.P11579619783418968407
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171442 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046293.P11579619783418968407

/-!
# A046294: Numbers k such that 2^k contains 2^8=256 as its largest proper substring of the form 2^m.

The programs for A046294, there is no canonical definition to state claims against.
-/

/-! ## A046294.P12916284154150563992

`eq[8, A352924(n)]`
-/

namespace A046294.P12916284154150563992
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  8

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046294.P12916284154150563992

/-! ## A046294.P16395381462613469141

`eq[(8/2)²², A033921(n)]`
-/

namespace A046294.P16395381462613469141
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((8 : ℚ) / 2) ^ 2) ^ 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = (f2 j : ℚ)) n

end

end A046294.P16395381462613469141

/-! ## A046294.P4929270164911949500

`eq[A033921(n), A171443(n)]`
-/

namespace A046294.P4929270164911949500
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046294.P4929270164911949500

/-! ## A046294.P12234826065064228539

`eq[A002262(A033921(n)), A122553(n)]`
-/

namespace A046294.P12234826065064228539
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002262 (A033921 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A122553 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046294.P12234826065064228539

/-! ## A046294.P17026196702935328086

`eq[A040000(n), A309600(A033921(n))]`
-/

namespace A046294.P17026196702935328086
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A040000 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A309600 (A033921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046294.P17026196702935328086

/-!
# A046295: Numbers k such that 2^k contains 2^9=512 as its largest proper substring of the form 2^m.

The programs for A046295, there is no canonical definition to state claims against.
-/

/-! ## A046295.P15333924498751111399

`eq[9, A352924(n)]`
-/

namespace A046295.P15333924498751111399
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  9

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046295.P15333924498751111399

/-! ## A046295.P11223768420826936816

`eq[2*A171443(n), A033921(n)]`
-/

namespace A046295.P11223768420826936816
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A171443 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046295.P11223768420826936816

/-! ## A046295.P16355144732267622170

`eq[A001281(A033921(n)), A171443(n)]`
-/

namespace A046295.P16355144732267622170
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001281 (A033921 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171443 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A046295.P16355144732267622170

/-! ## A046295.P2450165246372731764

`lt[A017053(n), A033921(A033921(n))]`
-/

namespace A046295.P2450165246372731764
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017053 n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 (A033921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046295.P2450165246372731764

/-! ## A046295.P11773562044206070411

`lt[A225648(n+1), A033921(A033921(n))]`
-/

namespace A046295.P11773562044206070411
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A225648 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A033921 (A033921 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j < f2 j) n

end

end A046295.P11773562044206070411

/-!
# A046296: Numbers k such that 2^k contains 2^10 = 1024 as its largest proper substring of the form 2^m.

The programs for A046296, there is no canonical definition to state claims against.
-/

/-! ## A046296.P18307799505746916824

`eq[10, A352924(n)]`
-/

namespace A046296.P18307799505746916824
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046296.P18307799505746916824

/-! ## A046296.P4212660130417012407

`eq[32, sqrt(A033921(n))]`
-/

namespace A046296.P4212660130417012407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  32

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A033921 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A046296.P4212660130417012407

/-!
# A046297: Numbers k such that 2^k contains 2^11=2048 as its largest proper substring of the form 2^m.

The programs for A046297, there is no canonical definition to state claims against.
-/

/-! ## A046297.P18416425323151080272

`eq[11, A352924(n)]`
-/

namespace A046297.P18416425323151080272
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  11

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046297.P18416425323151080272

/-!
# A046298: Numbers k such that 2^k contains 2^12=4096 as its largest proper substring of the form 2^m.

The programs for A046298, there is no canonical definition to state claims against.
-/

/-! ## A046298.P17473986950915965360

`eq[12, A352924(n)]`
-/

namespace A046298.P17473986950915965360
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  12

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046298.P17473986950915965360

/-! ## A046298.P1286610895335025122

`eq[64, sqrt(A033921(n))]`
-/

namespace A046298.P1286610895335025122
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  64

def f2 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A033921 n : ℝ)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℝ) = f2 j) n

end

end A046298.P1286610895335025122

/-!
# A046299: Numbers k such that 2^k contains 2^13=8192 as its largest proper substring of the form 2^m.

The programs for A046299, there is no canonical definition to state claims against.
-/

/-! ## A046299.P11810840197765777129

`eq[13, A352924(n)]`
-/

namespace A046299.P11810840197765777129
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  13

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A352924 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n

end

end A046299.P11810840197765777129

