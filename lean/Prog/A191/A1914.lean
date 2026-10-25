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
import Seq.B000.C021
import Seq.B000.C022
import Seq.B000.C023
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C026
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C036
import Seq.B000.C038
import Seq.B001.C000
import Seq.B001.C001
import Seq.B001.C002
import Seq.B001.C003
import Seq.B001.C004
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
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C002
import Seq.B004.C003
import Seq.B005.C000
import Seq.B005.C001
import Seq.B005.C002
import Seq.B006.C000
import Seq.B006.C001
import Seq.B006.C002
import Seq.B007.C000
import Seq.B007.C001
import Seq.B008.C000
import Seq.B008.C001
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

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A191400: Number of nonroot vertices of degree 2 in the rooted tree having Matula-Goebel number n.

The programs for A191400, there is no canonical definition to state claims against.
-/

/-! ## A191400.P10947122908781214560

`A257994(ceil(A324922(n+1)/2))`
-/

namespace A191400.P10947122908781214560
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 ⌈(A324922 (n + 1) : ℚ) / 2⌉.toNat

end

end A191400.P10947122908781214560

/-! ## A191400.P10704837241511837010

`A257994(round(A324922(n+1)/2))`
-/

namespace A191400.P10704837241511837010
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (SequenceMachineLib.roundAway ((A324922 (n + 1) : ℚ) / 2)).toNat

end

end A191400.P10704837241511837010

/-! ## A191400.P9773173192231869168

`A257994(A324922(n+1)/A061142(n+1))`
-/

namespace A191400.P9773173192231869168
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (SequenceMachineLib.roundAway ((A324922 (n + 1) : ℚ) / (A061142 (n + 1) : ℚ))).toNat

end

end A191400.P9773173192231869168

/-! ## A191400.P6272943919250860134

`A257994(A324922(n+1))`
-/

namespace A191400.P6272943919250860134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257994 (A324922 (n + 1)).toNat

end

end A191400.P6272943919250860134

/-!
# A191401: k-almost primes which are digitally balanced in base 2 and have 2k digits in base 2, for some k >= 1.

The programs for A191401, there is no canonical definition to state claims against.
-/

/-! ## A191401.P1647655209956367038

`∩[A031443(n+1), A071814(n+1)]`
-/

namespace A191401.P1647655209956367038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031443 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071814 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191401.P1647655209956367038

/-!
# A191402: a(n) = A000201(n) + A000201(n+1).

The programs for A191402, the canonical program `A191402.P12423475413836324740` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191402 has offset 0).

The definition of A191402 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191402.P5114487134090145724

`lcm(2, Δ[floor(ϕ*n)²])/2`
-/

namespace A191402.P5114487134090145724
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A191402.P5114487134090145724

namespace A191402

/-- `lcm(2, Δ[floor(ϕ*n)²])/2` -/
def P5114487134090145724.Spec : Prop :=
  ∀ n, P5114487134090145724.a n = (A191402 n : ℚ)

end A191402

/-! ## A191402.P13667049843800228150

`floor(floor(ϕ*(n+1))+ϕ*n)`
-/

namespace A191402.P13667049843800228150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊Real.goldenRatio * (n + 1 : ℝ)⌋ : ℝ) + Real.goldenRatio * (n : ℝ)⌋

end

end A191402.P13667049843800228150

namespace A191402

/-- `floor(floor(ϕ*(n+1))+ϕ*n)` -/
def P13667049843800228150.Spec : Prop :=
  ∀ n, P13667049843800228150.a n = A191402 n

end A191402

/-! ## A191402.P16849025818290808112

`floor(ϕ*n)-ceil(ϕ*xor(n, -1))`
-/

namespace A191402.P16849025818290808112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n : ℝ)⌋ - ⌈Real.goldenRatio * (Int.xor (n : ℤ) (-1) : ℝ)⌉

end

end A191402.P16849025818290808112

namespace A191402

/-- `floor(ϕ*n)-ceil(ϕ*xor(n, -1))` -/
def P16849025818290808112.Spec : Prop :=
  ∀ n, P16849025818290808112.a n = A191402 n

end A191402

/-! ## A191402.P13744859718595509629

`comp[ceil(ϕ*n)]-ceil(xor(n, -1)/ϕ)`
-/

namespace A191402.P13744859718595509629
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) - ⌈(Int.xor (n : ℤ) (-1) : ℝ) / Real.goldenRatio⌉

end

end A191402.P13744859718595509629

namespace A191402

/-- `comp[ceil(ϕ*n)]-ceil(xor(n, -1)/ϕ)` -/
def P13744859718595509629.Spec : Prop :=
  ∀ n, P13744859718595509629.a n = A191402 n

end A191402

/-! ## A191402.P9859059895594486006

`comp[ceil(ϕ*n)]+ceil(n/(acot(n)+ϕ))`
-/

namespace A191402.P9859059895594486006
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ) + ⌈(n : ℝ) / (SequenceMachineLib.acot (n : ℝ) + Real.goldenRatio)⌉

end

end A191402.P9859059895594486006

namespace A191402

/-- `comp[ceil(ϕ*n)]+ceil(n/(acot(n)+ϕ))` -/
def P9859059895594486006.Spec : Prop :=
  ∀ n, P9859059895594486006.a n = A191402 n

end A191402

/-! ## A191402.P5418189962908143998

`or(1, a(n-1))+Δ[ceil(ϕ*n)]+1` with `a(0)=1`
-/

namespace A191402.P5418189962908143998
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈Real.goldenRatio * (n : ℝ)⌉

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  Int.lor 1 (a (n - 1)) + (f1 (n + 1) - f1 n + 1)

end

end A191402.P5418189962908143998

namespace A191402

/-- `or(1, a(n-1))+Δ[ceil(ϕ*n)]+1` -/
def P5418189962908143998.Spec : Prop :=
  ∀ n, P5418189962908143998.a n = A191402 n

end A191402

/-! ## A191402.P5438162176107318091

`floor(∑[n+ϕ])-C(n+1, 2)+floor(n/ϕ)+n`
-/

namespace A191402.P5438162176107318091
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (n : ℝ) + Real.goldenRatio

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊∑ j ∈ Finset.range (n + 1), f1 j⌋ - (Nat.choose (n + 1) 2 : ℤ) + (⌊(n : ℝ) / Real.goldenRatio⌋ + (n : ℤ))

end

end A191402.P5438162176107318091

namespace A191402

/-- `floor(∑[n+ϕ])-C(n+1, 2)+floor(n/ϕ)+n` -/
def P5438162176107318091.Spec : Prop :=
  ∀ n, P5438162176107318091.a n = A191402 n

end A191402

/-! ## A191402.P6963991294958199771

`C(2, n+2)-1+ceil((n+1)/ϕ)+ceil(n*ϕ²)`
-/

namespace A191402.P6963991294958199771
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Nat.choose 2 (n + 2) : ℤ) - 1 + (⌈(n + 1 : ℝ) / Real.goldenRatio⌉ + ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉)

end

end A191402.P6963991294958199771

namespace A191402

/-- `C(2, n+2)-1+ceil((n+1)/ϕ)+ceil(n*ϕ²)` -/
def P6963991294958199771.Spec : Prop :=
  ∀ n, P6963991294958199771.a n = A191402 n

end A191402

/-! ## A191402.P12423475413836324740

`A026352(n)+A005206(n)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191402

/-- `A026352(n)+A005206(n)` -/
def P12423475413836324740.Spec : Prop :=
  ∀ n, P12423475413836324740.a n = A191402 n

theorem P12423475413836324740.correct : P12423475413836324740.Spec := by
  intro n
  simp only [A191402]

end A191402

/-! ## A191402.P11580224249240761488

`A130568(n)+A096270(n)`
-/

namespace A191402.P11580224249240761488
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A130568 n + A096270 n

end

end A191402.P11580224249240761488

namespace A191402

/-- `A130568(n)+A096270(n)` -/
def P11580224249240761488.Spec : Prop :=
  ∀ n, P11580224249240761488.a n = A191402 n

end A191402

/-! ## A191402.P15968405883604215247

`A191403(n)-A014675(n)`
-/

namespace A191402.P15968405883604215247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191403 n - A014675 n

end

end A191402.P15968405883604215247

namespace A191402

/-- `A191403(n)-A014675(n)` -/
def P15968405883604215247.Spec : Prop :=
  ∀ n, P15968405883604215247.a n = A191402 n

end A191402

/-! ## A191402.P8785563028632935914

`A342279(n)-A327174(n)`
-/

namespace A191402.P8785563028632935914
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342279 n - A327174 n

end

end A191402.P8785563028632935914

namespace A191402

/-- `A342279(n)-A327174(n)` -/
def P8785563028632935914.Spec : Prop :=
  ∀ n, P8785563028632935914.a n = A191402 n

end A191402

/-! ## A191402.P11806804609010584205

`A026351(n)+A022342(n+1)`
-/

namespace A191402.P11806804609010584205
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n + A022342 (n + 1)

end

end A191402.P11806804609010584205

namespace A191402

/-- `A026351(n)+A022342(n+1)` -/
def P11806804609010584205.Spec : Prop :=
  ∀ n, P11806804609010584205.a n = A191402 n

end A191402

/-! ## A191402.P18113387627741263654

`A060143(n)+A003622(n+1)`
-/

namespace A191402.P18113387627741263654
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 n + A003622 (n + 1)

end

end A191402.P18113387627741263654

namespace A191402

/-- `A060143(n)+A003622(n+1)` -/
def P18113387627741263654.Spec : Prop :=
  ∀ n, P18113387627741263654.a n = A191402 n

end A191402

/-! ## A191402.P2940549523974902124

`A066096(n)+A000201(n+1)`
-/

namespace A191402.P2940549523974902124
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 n + A000201 (n + 1)

end

end A191402.P2940549523974902124

namespace A191402

/-- `A066096(n)+A000201(n+1)` -/
def P2940549523974902124.Spec : Prop :=
  ∀ n, P2940549523974902124.a n = A191402 n

end A191402

/-! ## A191402.P12100240437725020814

`A060143(n+1)+A026352(n)`
-/

namespace A191402.P12100240437725020814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060143 (n + 1) + A026352 n

end

end A191402.P12100240437725020814

namespace A191402

/-- `A060143(n+1)+A026352(n)` -/
def P12100240437725020814.Spec : Prop :=
  ∀ n, P12100240437725020814.a n = A191402 n

end A191402

/-! ## A191402.P10837967507642827811

`A066096(n+1)+A066096(n)`
-/

namespace A191402.P10837967507642827811
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n + 1) + A066096 n

end

end A191402.P10837967507642827811

namespace A191402

/-- `A066096(n+1)+A066096(n)` -/
def P10837967507642827811.Spec : Prop :=
  ∀ n, P10837967507642827811.a n = A191402 n

end A191402

/-! ## A191402.P3994323936416457344

`A075317(n+1)-A096270(n)`
-/

namespace A191402.P3994323936416457344
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075317 (n + 1) - A096270 n

end

end A191402.P3994323936416457344

namespace A191402

/-- `A075317(n+1)-A096270(n)` -/
def P3994323936416457344.Spec : Prop :=
  ∀ n, P3994323936416457344.a n = A191402 n

end A191402

/-! ## A191402.P3112316401661035983

`A283233(n+1)-A001468(n)`
-/

namespace A191402.P3112316401661035983
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283233 (n + 1) - A001468 n

end

end A191402.P3112316401661035983

namespace A191402

/-- `A283233(n+1)-A001468(n)` -/
def P3112316401661035983.Spec : Prop :=
  ∀ n, P3112316401661035983.a n = A191402 n

end A191402

/-! ## A191402.P12000646248335279927

`A005206(n)+A026351(n)+n`
-/

namespace A191402.P12000646248335279927
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005206 n + (A026351 n + (n : ℤ))

end

end A191402.P12000646248335279927

namespace A191402

/-- `A005206(n)+A026351(n)+n` -/
def P12000646248335279927.Spec : Prop :=
  ∀ n, P12000646248335279927.a n = A191402 n

theorem P12000646248335279927.correct : P12000646248335279927.Spec := by
  intro n
  simp only [A191402, Nat.add_sub_cancel, A191402.P12000646248335279927.a, A191402.P12423475413836324740.a, A005206, A005206.P7910201692454662432.a, A026351, A026351.P16838321733923579855.a, A026352, A026352.P12148226438592254033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191402

/-!
# A191403: a(n) = A000201(n) + A000201(n+2).

The programs for A191403, the canonical program `A191403.P9949255710638438926` is in `Seq.B001.C006`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191403 has offset 0).

The definition of A191403 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191403.P7520802586677641646

`floor(floor(ϕ*(n+2))+ϕ*n)`
-/

namespace A191403.P7520802586677641646
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊Real.goldenRatio * (n + 2 : ℝ)⌋ : ℝ) + Real.goldenRatio * (n : ℝ)⌋

end

end A191403.P7520802586677641646

namespace A191403

/-- `floor(floor(ϕ*(n+2))+ϕ*n)` -/
def P7520802586677641646.Spec : Prop :=
  ∀ n, P7520802586677641646.a n = A191403 n

end A191403

/-! ## A191403.P17321600882547545827

`A026274(n+1)+floor(n/ϕ)`
-/

namespace A191403.P17321600882547545827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026274 (n + 1) + ⌊(n : ℝ) / Real.goldenRatio⌋

end

end A191403.P17321600882547545827

namespace A191403

/-- `A026274(n+1)+floor(n/ϕ)` -/
def P17321600882547545827.Spec : Prop :=
  ∀ n, P17321600882547545827.a n = A191403 n

end A191403

/-! ## A191403.P3951060657967949323

`A191402(n)+Δ[floor(ϕ*(n+1))]`
-/

namespace A191403.P3951060657967949323
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 1 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191402 n + (f1 (n + 1) - f1 n)

end

end A191403.P3951060657967949323

namespace A191403

/-- `A191402(n)+Δ[floor(ϕ*(n+1))]` -/
def P3951060657967949323.Spec : Prop :=
  ∀ n, P3951060657967949323.a n = A191403 n

end A191403

/-! ## A191403.P12203495036286353889

`A026356(n+1)+floor((n+2)/ϕ)`
-/

namespace A191403.P12203495036286353889
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026356 (n + 1) + ⌊(n + 2 : ℝ) / Real.goldenRatio⌋

end

end A191403.P12203495036286353889

namespace A191403

/-- `A026356(n+1)+floor((n+2)/ϕ)` -/
def P12203495036286353889.Spec : Prop :=
  ∀ n, P12203495036286353889.a n = A191403 n

end A191403

/-! ## A191403.P5436137877771509859

`∑[A000045(Δ[ceil((n+1)/ϕ)])]+floor(Δ[lcm(n, n+1)]+n/ϕ)`
-/

namespace A191403.P5436137877771509859
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n + 1 : ℝ) / Real.goldenRatio⌉

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 (f2 (n + 1) - f2 n).toNat

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm n (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + ⌊((f3 (n + 1) : ℤ) - (f3 n : ℤ) : ℝ) + (n : ℝ) / Real.goldenRatio⌋

end

end A191403.P5436137877771509859

namespace A191403

/-- `∑[A000045(Δ[ceil((n+1)/ϕ)])]+floor(Δ[lcm(n, n+1)]+n/ϕ)` -/
def P5436137877771509859.Spec : Prop :=
  ∀ n, P5436137877771509859.a n = A191403 n

end A191403

/-! ## A191403.P2477614009156853153

`A191404(n)-A059426(n)`
-/

namespace A191403.P2477614009156853153
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191404 n - A059426 n

end

end A191403.P2477614009156853153

namespace A191403

/-- `A191404(n)-A059426(n)` -/
def P2477614009156853153.Spec : Prop :=
  ∀ n, P2477614009156853153.a n = A191403 n

end A191403

/-! ## A191403.P9949255710638438926

`A060143(n)+A026274(n+1)`

The canonical program, it is in `Seq.B001.C006`.
-/

namespace A191403

/-- `A060143(n)+A026274(n+1)` -/
def P9949255710638438926.Spec : Prop :=
  ∀ n, P9949255710638438926.a n = A191403 n

theorem P9949255710638438926.correct : P9949255710638438926.Spec := by
  intro n
  simp only [A191403]

end A191403

/-! ## A191403.P4701239431988976254

`A283233(n+1)+A014677(n)`
-/

namespace A191403.P4701239431988976254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A283233 (n + 1) + A014677 n

end

end A191403.P4701239431988976254

namespace A191403

/-- `A283233(n+1)+A014677(n)` -/
def P4701239431988976254.Spec : Prop :=
  ∀ n, P4701239431988976254.a n = A191403 n

end A191403

/-! ## A191403.P16024136870939293490

`A191404(n)-A014675(n+1)`
-/

namespace A191403.P16024136870939293490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191404 n - A014675 (n + 1)

end

end A191403.P16024136870939293490

namespace A191403

/-- `A191404(n)-A014675(n+1)` -/
def P16024136870939293490.Spec : Prop :=
  ∀ n, P16024136870939293490.a n = A191403 n

end A191403

/-! ## A191403.P3066004027150171001

`A026273(n+1)+A026351(n)+1`
-/

namespace A191403.P3066004027150171001
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (n + 1) + (A026351 n + 1)

end

end A191403.P3066004027150171001

namespace A191403

/-- `A026273(n+1)+A026351(n)+1` -/
def P3066004027150171001.Spec : Prop :=
  ∀ n, P3066004027150171001.a n = A191403 n

end A191403

/-! ## A191403.P18264414279994407998

`A099267(n+1)+A026273(n+1)`
-/

namespace A191403.P18264414279994407998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1) + A026273 (n + 1)

end

end A191403.P18264414279994407998

namespace A191403

/-- `A099267(n+1)+A026273(n+1)` -/
def P18264414279994407998.Spec : Prop :=
  ∀ n, P18264414279994407998.a n = A191403 n

end A191403

/-! ## A191403.P3444904821738751005

`A014677(n)+2*A000201(n+1)`
-/

namespace A191403.P3444904821738751005
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014677 n + 2 * A000201 (n + 1)

end

end A191403.P3444904821738751005

namespace A191403

/-- `A014677(n)+2*A000201(n+1)` -/
def P3444904821738751005.Spec : Prop :=
  ∀ n, P3444904821738751005.a n = A191403 n

end A191403

/-! ## A191403.P10455932698187889274

`A026273(n+1)+A026356(n+1)-n`
-/

namespace A191403.P10455932698187889274
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (n + 1) + (A026356 (n + 1) - (n : ℤ))

end

end A191403.P10455932698187889274

namespace A191403

/-- `A026273(n+1)+A026356(n+1)-n` -/
def P10455932698187889274.Spec : Prop :=
  ∀ n, P10455932698187889274.a n = A191403 n

end A191403

/-! ## A191403.P3949673935260684555

`A001950(n+1)+A060143(n)+A005614(n)`
-/

namespace A191403.P3949673935260684555
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001950 (n + 1) + (A060143 n + A005614 n)

end

end A191403.P3949673935260684555

namespace A191403

/-- `A001950(n+1)+A060143(n)+A005614(n)` -/
def P3949673935260684555.Spec : Prop :=
  ∀ n, P3949673935260684555.a n = A191403 n

end A191403

/-! ## A191403.P17293246739049757877

`A003622(n+2)+A005206(n)-A001468(n)`
-/

namespace A191403.P17293246739049757877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003622 (n + 2) + (A005206 n - A001468 n)

end

end A191403.P17293246739049757877

namespace A191403

/-- `A003622(n+2)+A005206(n)-A001468(n)` -/
def P17293246739049757877.Spec : Prop :=
  ∀ n, P17293246739049757877.a n = A191403 n

end A191403

/-! ## A191403.P3957833570266487017

`A000201(n+2)+floor(ϕ*n)`
-/

namespace A191403.P3957833570266487017
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 2) + ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A191403.P3957833570266487017

namespace A191403

/-- `A000201(n+2)+floor(ϕ*n)` -/
def P3957833570266487017.Spec : Prop :=
  ∀ n, P3957833570266487017.a n = A191403 n

end A191403

/-! ## A191403.P17026141358008166993

`A066096(n+2)+floor(ϕ*n)`
-/

namespace A191403.P17026141358008166993
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n + 2) + ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A191403.P17026141358008166993

namespace A191403

/-- `A066096(n+2)+floor(ϕ*n)` -/
def P17026141358008166993.Spec : Prop :=
  ∀ n, P17026141358008166993.a n = A191403 n

end A191403

/-! ## A191403.P13181879437195906902

`Δ[A054347(n+1)]+floor(ϕ*n)`
-/

namespace A191403.P13181879437195906902
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054347 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A191403.P13181879437195906902

namespace A191403

/-- `Δ[A054347(n+1)]+floor(ϕ*n)` -/
def P13181879437195906902.Spec : Prop :=
  ∀ n, P13181879437195906902.a n = A191403 n

end A191403

/-! ## A191403.P11696703016122752127

`A026352(n)+A019446(n+2)`
-/

namespace A191403.P11696703016122752127
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026352 n + A019446 (n + 2)

end

end A191403.P11696703016122752127

namespace A191403

/-- `A026352(n)+A019446(n+2)` -/
def P11696703016122752127.Spec : Prop :=
  ∀ n, P11696703016122752127.a n = A191403 n

end A191403

/-! ## A191403.P349035726208343721

`A026351(n)+A022342(n+2)`
-/

namespace A191403.P349035726208343721
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n + A022342 (n + 2)

end

end A191403.P349035726208343721

namespace A191403

/-- `A026351(n)+A022342(n+2)` -/
def P349035726208343721.Spec : Prop :=
  ∀ n, P349035726208343721.a n = A191403 n

end A191403

/-!
# A191404: a(n) = A000201(n) + A000201(n+3).

The programs for A191404, the canonical program `A191404.P15782696883447306047` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191404 has offset 0).

The definition of A191404 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191404.P13678093627086259458

`floor(floor(ϕ*(n+3))+ϕ*n)`
-/

namespace A191404.P13678093627086259458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊Real.goldenRatio * (n + 3 : ℝ)⌋ : ℝ) + Real.goldenRatio * (n : ℝ)⌋

end

end A191404.P13678093627086259458

namespace A191404

/-- `floor(floor(ϕ*(n+3))+ϕ*n)` -/
def P13678093627086259458.Spec : Prop :=
  ∀ n, P13678093627086259458.a n = A191404 n

end A191404

/-! ## A191404.P301270035629095266

`A191403(n)+Δ[floor(ϕ*(n+2))]`
-/

namespace A191404.P301270035629095266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊Real.goldenRatio * (n + 2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191403 n + (f1 (n + 1) - f1 n)

end

end A191404.P301270035629095266

namespace A191404

/-- `A191403(n)+Δ[floor(ϕ*(n+2))]` -/
def P301270035629095266.Spec : Prop :=
  ∀ n, P301270035629095266.a n = A191404 n

end A191404

/-! ## A191404.P15782696883447306047

`A005614(n+1)+A060143(n)+A003622(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A191404

/-- `A005614(n+1)+A060143(n)+A003622(n+2)` -/
def P15782696883447306047.Spec : Prop :=
  ∀ n, P15782696883447306047.a n = A191404 n

theorem P15782696883447306047.correct : P15782696883447306047.Spec := by
  intro n
  simp only [A191404]

end A191404

/-! ## A191404.P5304657754047509320

`A026273(n+2)+floor(C(n+2, n+1)+n/ϕ)`
-/

namespace A191404.P5304657754047509320
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026273 (n + 2) + ⌊(Nat.choose (n + 2) (n + 1) : ℝ) + (n : ℝ) / Real.goldenRatio⌋

end

end A191404.P5304657754047509320

namespace A191404

/-- `A026273(n+2)+floor(C(n+2, n+1)+n/ϕ)` -/
def P5304657754047509320.Spec : Prop :=
  ∀ n, P5304657754047509320.a n = A191404 n

end A191404

/-! ## A191404.P16547872438901439761

`A026355(n+1)+A026273(n+2)`
-/

namespace A191404.P16547872438901439761
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026355 (n + 1) + A026273 (n + 2)

end

end A191404.P16547872438901439761

namespace A191404

/-- `A026355(n+1)+A026273(n+2)` -/
def P16547872438901439761.Spec : Prop :=
  ∀ n, P16547872438901439761.a n = A191404 n

end A191404

/-! ## A191404.P13563826574559465553

`A099267(n+1)+A026273(n+2)`
-/

namespace A191404.P13563826574559465553
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099267 (n + 1) + A026273 (n + 2)

end

end A191404.P13563826574559465553

namespace A191404

/-- `A099267(n+1)+A026273(n+2)` -/
def P13563826574559465553.Spec : Prop :=
  ∀ n, P13563826574559465553.a n = A191404 n

end A191404

/-! ## A191404.P1593924499229018702

`A000201(n+3)+floor(ϕ*n)`
-/

namespace A191404.P1593924499229018702
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000201 (n + 3) + ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A191404.P1593924499229018702

namespace A191404

/-- `A000201(n+3)+floor(ϕ*n)` -/
def P1593924499229018702.Spec : Prop :=
  ∀ n, P1593924499229018702.a n = A191404 n

end A191404

/-! ## A191404.P12181084610462037041

`A066096(n+3)+floor(ϕ*n)`
-/

namespace A191404.P12181084610462037041
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066096 (n + 3) + ⌊Real.goldenRatio * (n : ℝ)⌋

end

end A191404.P12181084610462037041

namespace A191404

/-- `A066096(n+3)+floor(ϕ*n)` -/
def P12181084610462037041.Spec : Prop :=
  ∀ n, P12181084610462037041.a n = A191404 n

end A191404

/-! ## A191404.P1285757635161028283

`A022342(n+3)+comp[ceil(n*ϕ²)]`
-/

namespace A191404.P1285757635161028283
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) * Real.goldenRatio ^ 2⌉

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A022342 (n + 3) + (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A191404.P1285757635161028283

namespace A191404

/-- `A022342(n+3)+comp[ceil(n*ϕ²)]` -/
def P1285757635161028283.Spec : Prop :=
  ∀ n, P1285757635161028283.a n = A191404 n

end A191404

/-! ## A191404.P10859460104889784904

`A026351(n)+A022342(n+3)`
-/

namespace A191404.P10859460104889784904
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 n + A022342 (n + 3)

end

end A191404.P10859460104889784904

namespace A191404

/-- `A026351(n)+A022342(n+3)` -/
def P10859460104889784904.Spec : Prop :=
  ∀ n, P10859460104889784904.a n = A191404 n

end A191404

/-! ## A191404.P837171118818238828

`A026351(n+3)+A026351(n)-2`
-/

namespace A191404.P837171118818238828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026351 (n + 3) + (A026351 n - 2)

end

end A191404.P837171118818238828

namespace A191404

/-- `A026351(n+3)+A026351(n)-2` -/
def P837171118818238828.Spec : Prop :=
  ∀ n, P837171118818238828.a n = A191404 n

end A191404

/-! ## A191404.P2214575482718762720

`A187580(2*n+1)+Δ[A187580(2*(n+1))]`
-/

namespace A191404.P2214575482718762720
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187580 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187580 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A191404.P2214575482718762720

namespace A191404

/-- `A187580(2*n+1)+Δ[A187580(2*(n+1))]` -/
def P2214575482718762720.Spec : Prop :=
  ∀ n, P2214575482718762720.a n = A191404 n

end A191404

/-!
# A191405: A001951(n)+A001951(n+1).

The programs for A191405, the canonical program `A191405.P17460248013046071804` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191405 has offset 0).

The definition of A191405 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(n)+A001951(n+1)` (program `A191405.P17460248013046071804`, by `A191405.P17460248013046071804.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191405.P17460248013046071804

`A001951(n)+A001951(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A191405

/-- `A001951(n)+A001951(n+1)` -/
def P17460248013046071804.Spec : Prop :=
  ∀ n, P17460248013046071804.a n = A191405 n

theorem P17460248013046071804.correct : P17460248013046071804.Spec := by
  intro n
  simp only [A191405]

end A191405

/-! ## A191405.P14338713313236354892

`lcm(2, Δ[floor(n*sqrt(2))²])/2`
-/

namespace A191405.P14338713313236354892
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Int.lcm 2 (f1 (n + 1) - f1 n) : ℚ) / 2

end

end A191405.P14338713313236354892

namespace A191405

/-- `lcm(2, Δ[floor(n*sqrt(2))²])/2` -/
def P14338713313236354892.Spec : Prop :=
  ∀ n, P14338713313236354892.a n = (A191405 n : ℚ)

end A191405

/-! ## A191405.P14044526907912071173

`abs(Δ[floor(n*sqrt(2))/(-1)^n])`
-/

namespace A191405.P14044526907912071173
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℚ) / ((-1) ^ n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A191405.P14044526907912071173

namespace A191405

/-- `abs(Δ[floor(n*sqrt(2))/(-1)^n])` -/
def P14044526907912071173.Spec : Prop :=
  ∀ n, P14044526907912071173.a n = (A191405 n : ℚ)

end A191405

/-! ## A191405.P11644740394575149065

`∑[A188038(n+1)+2]-2`
-/

namespace A191405.P11644740394575149065
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188038 (n + 1) + 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A191405.P11644740394575149065

namespace A191405

/-- `∑[A188038(n+1)+2]-2` -/
def P11644740394575149065.Spec : Prop :=
  ∀ n, P11644740394575149065.a n = A191405 n

end A191405

/-! ## A191405.P1839694055164928420

`A342281(n)-A327177(n)`
-/

namespace A191405.P1839694055164928420
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A342281 n - A327177 n

end

end A191405.P1839694055164928420

namespace A191405

/-- `A342281(n)-A327177(n)` -/
def P1839694055164928420.Spec : Prop :=
  ∀ n, P1839694055164928420.a n = A191405 n

theorem P1839694055164928420.correct : P1839694055164928420.Spec := by
  intro n
  simp only [A191405, Nat.add_sub_cancel, A191405.P1839694055164928420.a, A191405.P17460248013046071804.a, A001951, A001951.P16235440681377643956.a, A327177, A327177.P10177580896383627063.a, A342281, A342281.P11173298735282036811.a, A000196, A000196.P15434771586934192083.a, A001105, A001105.P6098599260439307493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191405

/-! ## A191405.P6035359041907385456

`A286666(n+1)+A097508(n)`
-/

namespace A191405.P6035359041907385456
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286666 (n + 1) + A097508 n

end

end A191405.P6035359041907385456

namespace A191405

/-- `A286666(n+1)+A097508(n)` -/
def P6035359041907385456.Spec : Prop :=
  ∀ n, P6035359041907385456.a n = A191405 n

end A191405

/-! ## A191405.P15584244955494345379

`A083051(n)-A074840(n+1)`
-/

namespace A191405.P15584244955494345379
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n - A074840 (n + 1)

end

end A191405.P15584244955494345379

namespace A191405

/-- `A083051(n)-A074840(n+1)` -/
def P15584244955494345379.Spec : Prop :=
  ∀ n, P15584244955494345379.a n = A191405 n

end A191405

/-! ## A191405.P1310917403199569878

`A191406(n)-A006337(n+1)`
-/

namespace A191405.P1310917403199569878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191406 n - A006337 (n + 1)

end

end A191405.P1310917403199569878

namespace A191405

/-- `A191406(n)-A006337(n+1)` -/
def P1310917403199569878.Spec : Prop :=
  ∀ n, P1310917403199569878.a n = A191405 n

end A191405

/-! ## A191405.P9280922066232481356

`A003151(n+1)+A097508(n)-1`
-/

namespace A191405.P9280922066232481356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003151 (n + 1) + (A097508 n - 1)

end

end A191405.P9280922066232481356

namespace A191405

/-- `A003151(n+1)+A097508(n)-1` -/
def P9280922066232481356.Spec : Prop :=
  ∀ n, P9280922066232481356.a n = A191405 n

end A191405

/-! ## A191405.P12152998449397498829

`A001952(n+1)-(A195119(n)+2)`
-/

namespace A191405.P12152998449397498829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001952 (n + 1) - (A195119 n + 2)

end

end A191405.P12152998449397498829

namespace A191405

/-- `A001952(n+1)-(A195119(n)+2)` -/
def P12152998449397498829.Spec : Prop :=
  ∀ n, P12152998449397498829.a n = A191405 n

end A191405

/-! ## A191405.P931275593593051872

`A054071(n+1)+A285075(n+1)-2`
-/

namespace A191405.P931275593593051872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (n + 1) + (A285075 (n + 1) - 2)

end

end A191405.P931275593593051872

namespace A191405

/-- `A054071(n+1)+A285075(n+1)-2` -/
def P931275593593051872.Spec : Prop :=
  ∀ n, P931275593593051872.a n = A191405 n

end A191405

/-! ## A191405.P9464935242174251330

`A286686(floor(n*sqrt(2))+1)`
-/

namespace A191405.P9464935242174251330
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286686 (⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ + 1).toNat

end

end A191405.P9464935242174251330

namespace A191405

/-- `A286686(floor(n*sqrt(2))+1)` -/
def P9464935242174251330.Spec : Prop :=
  ∀ n, P9464935242174251330.a n = A191405 n

end A191405

/-! ## A191405.P13363327248533141740

`∑[A188318(2*(n+1))]+2*n`
-/

namespace A191405.P13363327248533141740
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A188318 (2 * (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + (2 * n : ℤ)

end

end A191405.P13363327248533141740

namespace A191405

/-- `∑[A188318(2*(n+1))]+2*n` -/
def P13363327248533141740.Spec : Prop :=
  ∀ n, P13363327248533141740.a n = A191405 n

end A191405

/-! ## A191405.P6921780758108333242

`A083051(n)-A183138(2*(n+1))`
-/

namespace A191405.P6921780758108333242
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083051 n - A183138 (2 * (n + 1))

end

end A191405.P6921780758108333242

namespace A191405

/-- `A083051(n)-A183138(2*(n+1))` -/
def P6921780758108333242.Spec : Prop :=
  ∀ n, P6921780758108333242.a n = A191405 n

end A191405

/-! ## A191405.P7073961195034527111

`A049472(A000027(2*(n+1)))+A049472(2*n)`
-/

namespace A191405.P7073961195034527111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049472 (A000027 (2 * (n + 1))).toNat + A049472 (2 * n)

end

end A191405.P7073961195034527111

namespace A191405

/-- `A049472(A000027(2*(n+1)))+A049472(2*n)` -/
def P7073961195034527111.Spec : Prop :=
  ∀ n, P7073961195034527111.a n = A191405 n

end A191405

/-! ## A191405.P7147371083182938932

`A286689(comp[ceil(n/sqrt(2))+n])`
-/

namespace A191405.P7147371083182938932
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(n : ℝ) / Real.sqrt (2 : ℝ)⌉ + (n : ℤ)

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286689 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n)

end

end A191405.P7147371083182938932

namespace A191405

/-- `A286689(comp[ceil(n/sqrt(2))+n])` -/
def P7147371083182938932.Spec : Prop :=
  ∀ n, P7147371083182938932.a n = A191405 n

end A191405

/-! ## A191405.P14825479749028450355

`A026741(Δ[floor(n*sqrt(2))²])`
-/

namespace A191405.P14825479749028450355
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (f1 (n + 1) - f1 n).toNat

end

end A191405.P14825479749028450355

namespace A191405

/-- `A026741(Δ[floor(n*sqrt(2))²])` -/
def P14825479749028450355.Spec : Prop :=
  ∀ n, P14825479749028450355.a n = A191405 n

end A191405

/-! ## A191405.P11683795580775981460

`A212831(Δ[floor(n*sqrt(2))²])`
-/

namespace A191405.P11683795580775981460
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212831 (f1 (n + 1) - f1 n).toNat

end

end A191405.P11683795580775981460

namespace A191405

/-- `A212831(Δ[floor(n*sqrt(2))²])` -/
def P11683795580775981460.Spec : Prop :=
  ∀ n, P11683795580775981460.a n = A191405 n

end A191405

/-! ## A191405.P6833815242173435906

`A008615(3*a(n-1))+ceil((n+1)*sqrt(2))` with `a(0)=1`
-/

namespace A191405.P6833815242173435906
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A008615 (3 * a (n - 1)).toNat + ⌈(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌉

end

end A191405.P6833815242173435906

namespace A191405

/-- `A008615(3*a(n-1))+ceil((n+1)*sqrt(2))` -/
def P6833815242173435906.Spec : Prop :=
  ∀ n, P6833815242173435906.a n = A191405 n

end A191405

/-!
# A191406: A001951(n)+A001951(n+2).

The programs for A191406, the canonical program `A191406.P11617354727610031530` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191406 has offset 0).

The definition of A191406 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(n)+A001951(n+2)` (program `A191406.P11617354727610031530`, by `A191406.P11617354727610031530.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191406.P11617354727610031530

`A001951(n)+A001951(n+2)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A191406

/-- `A001951(n)+A001951(n+2)` -/
def P11617354727610031530.Spec : Prop :=
  ∀ n, P11617354727610031530.a n = A191406 n

theorem P11617354727610031530.correct : P11617354727610031530.Spec := by
  intro n
  simp only [A191406]

end A191406

/-! ## A191406.P17128833738474982697

`floor(floor((n+2)*sqrt(2))+n*sqrt(2))`
-/

namespace A191406.P17128833738474982697
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n + 2 : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℝ) + (n : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A191406.P17128833738474982697

namespace A191406

/-- `floor(floor((n+2)*sqrt(2))+n*sqrt(2))` -/
def P17128833738474982697.Spec : Prop :=
  ∀ n, P17128833738474982697.a n = A191406 n

end A191406

/-! ## A191406.P18375039946043465294

`floor((n+1)*sqrt(8))-A327205(n)`
-/

namespace A191406.P18375039946043465294
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (8 : ℝ)⌋ - A327205 n

end

end A191406.P18375039946043465294

namespace A191406

/-- `floor((n+1)*sqrt(8))-A327205(n)` -/
def P18375039946043465294.Spec : Prop :=
  ∀ n, P18375039946043465294.a n = A191406 n

theorem P18375039946043465294.correct : P18375039946043465294.Spec := by
  intro n
  simp only [A191406, Nat.add_sub_cancel, A191406.P18375039946043465294.a, A191406.P11617354727610031530.a, A001951, A001951.P16235440681377643956.a, A327205, A327205.P854694592881596088.a, A000196, A000196.P15434771586934192083.a, A001105, A001105.P6098599260439307493.a, A022842, A022842.P237865862575158338.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A191406

/-! ## A191406.P3274512709516927728

`A191405(n)+Δ[floor((n+1)*sqrt(2))]`
-/

namespace A191406.P3274512709516927728
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(n + 1 : ℝ) * Real.sqrt (2 : ℝ)⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191405 n + (f1 (n + 1) - f1 n)

end

end A191406.P3274512709516927728

namespace A191406

/-- `A191405(n)+Δ[floor((n+1)*sqrt(2))]` -/
def P3274512709516927728.Spec : Prop :=
  ∀ n, P3274512709516927728.a n = A191406 n

end A191406

/-! ## A191406.P17619571142651598299

`∑[4-A080763(n+1)]+ceil(n*sqrt(2))%(n+1)`
-/

namespace A191406.P17619571142651598299
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 - A080763 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + Int.tmod ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉ (n + 1 : ℤ)

end

end A191406.P17619571142651598299

namespace A191406

/-- `∑[4-A080763(n+1)]+ceil(n*sqrt(2))%(n+1)` -/
def P17619571142651598299.Spec : Prop :=
  ∀ n, P17619571142651598299.a n = A191406 n

end A191406

/-! ## A191406.P18263463614220178712

`A097508(n)+A082845(n+1)`
-/

namespace A191406.P18263463614220178712
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n + A082845 (n + 1)

end

end A191406.P18263463614220178712

namespace A191406

/-- `A097508(n)+A082845(n+1)` -/
def P18263463614220178712.Spec : Prop :=
  ∀ n, P18263463614220178712.a n = A191406 n

end A191406

/-! ## A191406.P14280372443361549256

`A097508(n)+∑[A097509(n+1)]`
-/

namespace A191406.P14280372443361549256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097509 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097508 n + ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191406.P14280372443361549256

namespace A191406

/-- `A097508(n)+∑[A097509(n+1)]` -/
def P14280372443361549256.Spec : Prop :=
  ∀ n, P14280372443361549256.a n = A191406 n

end A191406

/-! ## A191406.P13210984126686941605

`Δ[A194102(n+1)]+floor(n*sqrt(2))`
-/

namespace A191406.P13210984126686941605
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194102 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + ⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A191406.P13210984126686941605

namespace A191406

/-- `Δ[A194102(n+1)]+floor(n*sqrt(2))` -/
def P13210984126686941605.Spec : Prop :=
  ∀ n, P13210984126686941605.a n = A191406 n

end A191406

/-! ## A191406.P3961219571533600175

`A191407(n)-A006337(n+2)`
-/

namespace A191406.P3961219571533600175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191407 n - A006337 (n + 2)

end

end A191406.P3961219571533600175

namespace A191406

/-- `A191407(n)-A006337(n+2)` -/
def P3961219571533600175.Spec : Prop :=
  ∀ n, P3961219571533600175.a n = A191406 n

end A191406

/-! ## A191406.P5013724908536645922

`A054071(A188045(2*n+1))+A054071(n+2)`
-/

namespace A191406.P5013724908536645922
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054071 (A188045 (2 * n + 1)).toNat + A054071 (n + 2)

end

end A191406.P5013724908536645922

namespace A191406

/-- `A054071(A188045(2*n+1))+A054071(n+2)` -/
def P5013724908536645922.Spec : Prop :=
  ∀ n, P5013724908536645922.a n = A191406 n

end A191406

/-!
# A191407: A001951(n)+A001951(n+3).

The programs for A191407, the canonical program `A191407.P5240060521186810576` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191407 has offset 0).

The definition of A191407 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `A001951(n)+A001951(n+3)` (program `A191407.P5240060521186810576`, by `A191407.P5240060521186810576.correct`, the sequences it uses are verified). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191407.P5240060521186810576

`A001951(n)+A001951(n+3)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A191407

/-- `A001951(n)+A001951(n+3)` -/
def P5240060521186810576.Spec : Prop :=
  ∀ n, P5240060521186810576.a n = A191407 n

theorem P5240060521186810576.correct : P5240060521186810576.Spec := by
  intro n
  simp only [A191407]

end A191407

/-! ## A191407.P337207800247747249

`floor(floor(n*sqrt(2))+(n+3)*sqrt(2))`
-/

namespace A191407.P337207800247747249
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(⌊(n : ℝ) * Real.sqrt (2 : ℝ)⌋ : ℝ) + (n + 3 : ℝ) * Real.sqrt (2 : ℝ)⌋

end

end A191407.P337207800247747249

namespace A191407

/-- `floor(floor(n*sqrt(2))+(n+3)*sqrt(2))` -/
def P337207800247747249.Spec : Prop :=
  ∀ n, P337207800247747249.a n = A191407 n

end A191407

/-! ## A191407.P16194499908279807413

`A082844(n+1)+A191406(n)-1`
-/

namespace A191407.P16194499908279807413
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A082844 (n + 1) + (A191406 n - 1)

end

end A191407.P16194499908279807413

namespace A191407

/-- `A082844(n+1)+A191406(n)-1` -/
def P16194499908279807413.Spec : Prop :=
  ∀ n, P16194499908279807413.a n = A191407 n

end A191407

/-! ## A191407.P15516803469561969310

`∑[A285076(n+1)+A082844(n+1)]`
-/

namespace A191407.P15516803469561969310
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1) + A082844 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191407.P15516803469561969310

namespace A191407

/-- `∑[A285076(n+1)+A082844(n+1)]` -/
def P15516803469561969310.Spec : Prop :=
  ∀ n, P15516803469561969310.a n = A191407 n

end A191407

/-! ## A191407.P8270649491946277566

`A191406(n)+A006337(n+2)`
-/

namespace A191407.P8270649491946277566
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191406 n + A006337 (n + 2)

end

end A191407.P8270649491946277566

namespace A191407

/-- `A191406(n)+A006337(n+2)` -/
def P8270649491946277566.Spec : Prop :=
  ∀ n, P8270649491946277566.a n = A191407 n

end A191407

/-! ## A191407.P6160336663952172146

`∑[A285076(n+1)+A276862(n+2)]`
-/

namespace A191407.P6160336663952172146
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285076 (n + 1) + A276862 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191407.P6160336663952172146

namespace A191407

/-- `∑[A285076(n+1)+A276862(n+2)]` -/
def P6160336663952172146.Spec : Prop :=
  ∀ n, P6160336663952172146.a n = A191407 n

end A191407

/-! ## A191407.P9632226328060877972

`A191406(n+1)+A191406(n)-A191405(n+1)`
-/

namespace A191407.P9632226328060877972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191406 (n + 1) + (A191406 n - A191405 (n + 1))

end

end A191407.P9632226328060877972

namespace A191407

/-- `A191406(n+1)+A191406(n)-A191405(n+1)` -/
def P9632226328060877972.Spec : Prop :=
  ∀ n, P9632226328060877972.a n = A191407 n

theorem P9632226328060877972.correct : P9632226328060877972.Spec := by
  intro n
  simp only [A191407, Nat.add_sub_cancel, A191407.P9632226328060877972.a, A191407.P5240060521186810576.a, A001951, A001951.P16235440681377643956.a, A191405, A191405.P17460248013046071804.a, A191406, A191406.P11617354727610031530.a, A000196, A000196.P15434771586934192083.a, A001105, A001105.P6098599260439307493.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191407

/-! ## A191407.P15919317908036887713

`ceil(n*sqrt(2))%(n+1)+A286666(n+3)-2`
-/

namespace A191407.P15919317908036887713
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod ⌈(n : ℝ) * Real.sqrt (2 : ℝ)⌉ (n + 1 : ℤ) + (A286666 (n + 3) - 2)

end

end A191407.P15919317908036887713

namespace A191407

/-- `ceil(n*sqrt(2))%(n+1)+A286666(n+3)-2` -/
def P15919317908036887713.Spec : Prop :=
  ∀ n, P15919317908036887713.a n = A191407 n

end A191407

/-! ## A191407.P15173933529529604797

`∑[A276864(n+3)]-A195119(n)`
-/

namespace A191407.P15173933529529604797
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A276864 (n + 3)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - A195119 n

end

end A191407.P15173933529529604797

namespace A191407

/-- `∑[A276864(n+3)]-A195119(n)` -/
def P15173933529529604797.Spec : Prop :=
  ∀ n, P15173933529529604797.a n = A191407 n

end A191407

/-! ## A191407.P3808443888973221352

`A285075(n+1)+A054071(n+3)`
-/

namespace A191407.P3808443888973221352
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285075 (n + 1) + A054071 (n + 3)

end

end A191407.P3808443888973221352

namespace A191407

/-- `A285075(n+1)+A054071(n+3)` -/
def P3808443888973221352.Spec : Prop :=
  ∀ n, P3808443888973221352.a n = A191407 n

end A191407

/-! ## A191407.P10444233113011344147

`A172471((n+3)²)+A172471(n²)`
-/

namespace A191407.P10444233113011344147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172471 ((n + 3) ^ 2) + A172471 (n ^ 2)

end

end A191407.P10444233113011344147

namespace A191407

/-- `A172471((n+3)²)+A172471(n²)` -/
def P10444233113011344147.Spec : Prop :=
  ∀ n, P10444233113011344147.a n = A191407 n

end A191407

/-!
# A191410: Class number, k, of n, i.e.; imaginary quadratic fields negated Q(sqrt(-n))=k, or 0 if n is not a fundamental discriminant (A003657).

The programs for A191410, there is no canonical definition to state claims against.
-/

/-! ## A191410.P2472454642703071259

`A058305(n+1)*A290098(A178182(n+1))`
-/

namespace A191410.P2472454642703071259
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (n + 1) * A290098 (A178182 (n + 1)).toNat

end

end A191410.P2472454642703071259

/-! ## A191410.P13822843636011548790

`char[A003657(n+1)-1]*A202084(n+1)`
-/

namespace A191410.P13822843636011548790
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1) - 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A202084 (n + 1)

end

end A191410.P13822843636011548790

/-! ## A191410.P1379239633545822404

`char[A233583(A003657(n+1))]*A202084(n+1)`
-/

namespace A191410.P1379239633545822404
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233583 (A003657 (n + 1)).toNat

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ) * A202084 (n + 1)

end

end A191410.P1379239633545822404

/-! ## A191410.P6822577927625592184

`and(A014602(A124279(n+3)), A058305(n+1))`
-/

namespace A191410.P6822577927625592184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A014602 (A124279 (n + 3)).toNat) (A058305 (n + 1))

end

end A191410.P6822577927625592184

/-! ## A191410.P8187691027542006016

`A058305(A107603(n+1)%A196923(n+1))`
-/

namespace A191410.P8187691027542006016
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058305 (Int.tmod (A107603 (n + 1)) (A196923 (n + 1))).toNat

end

end A191410.P8187691027542006016

/-!
# A191411: Class number, k, of n; i.e., imaginary quadratic fields negated Q(sqrt(-n))=k, or 0 if n is not squarefree (A005117).

The programs for A191411, there is no canonical definition to state claims against.
-/

/-! ## A191411.P17856602725887847407

`lcm(∏{e}[n+1, floor(log(atan(#)))], A202084(∏{p}[n+1, #]))`
-/

namespace A191411.P17856602725887847407
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (∏ p ∈ Nat.primeFactors (f1 n), ⌊Real.log (Real.arctan (Nat.factorization (f1 n) p : ℝ))⌋) (A202084 (∏ p ∈ Nat.primeFactors (f2 n), p))

end

end A191411.P17856602725887847407

/-! ## A191411.P3070518663823652307

`A008966(n+1)*A202084(n+1)`
-/

namespace A191411.P3070518663823652307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008966 (n + 1) * A202084 (n + 1)

end

end A191411.P3070518663823652307

/-! ## A191411.P11883820576642590714

`A202084(n+1)%A096226(n+1)`
-/

namespace A191411.P11883820576642590714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A202084 (n + 1)) (A096226 (n + 1))

end

end A191411.P11883820576642590714

/-! ## A191411.P2262873960203085386

`lcm(A008683(n+1), A202084(n+1))`
-/

namespace A191411.P2262873960203085386
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A008683 (n + 1)) (A202084 (n + 1))

end

end A191411.P2262873960203085386

/-! ## A191411.P1969777205357144978

`abs(A069158(n+1)*A202084(n+1))`
-/

namespace A191411.P1969777205357144978
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A069158 (n + 1) * A202084 (n + 1)|

end

end A191411.P1969777205357144978

/-! ## A191411.P11176190634668224718

`abs(A080323(n+1)*A202084(n+1))`
-/

namespace A191411.P11176190634668224718
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A080323 (n + 1) * A202084 (n + 1)|

end

end A191411.P11176190634668224718

/-! ## A191411.P692012139160869200

`Δ[A107079(n+1)]*A202084(n+1)`
-/

namespace A191411.P692012139160869200
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107079 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n) * A202084 (n + 1)

end

end A191411.P692012139160869200

/-! ## A191411.P1295458726787276943

`∑{d}[n+1, A202084(#)*A271102((n+1)/#)]`
-/

namespace A191411.P1295458726787276943
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A202084 d * A271102 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191411.P1295458726787276943

/-! ## A191411.P18279218298250364391

`A000045(∏{e}[n+1, -C(2, #+1)]²)*A202084(n+1)`
-/

namespace A191411.P18279218298250364391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000045 ((∏ p ∈ Nat.primeFactors (f1 n), (-(Nat.choose 2 (Nat.factorization (f1 n) p + 1) : ℤ))) ^ 2).toNat * A202084 (n + 1)

end

end A191411.P18279218298250364391

/-! ## A191411.P8255902765406101269

`A000035(A002033(n))*A202084(n+1)`
-/

namespace A191411.P8255902765406101269
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000035 (A002033 n).toNat * A202084 (n + 1)

end

end A191411.P8255902765406101269

/-! ## A191411.P9867573493222611515

`lcm(A092152(A103517(n)), A202084(n+1))`
-/

namespace A191411.P9867573493222611515
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A092152 (A103517 n).toNat) (A202084 (n + 1))

end

end A191411.P9867573493222611515

/-! ## A191411.P4816397657871129598

`A008683(A008477(n+1))*A202084(n+1)`
-/

namespace A191411.P4816397657871129598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008477 (n + 1)).toNat * A202084 (n + 1)

end

end A191411.P4816397657871129598

/-! ## A191411.P2891544775098889684

`A008683(A008833(n+1))*A202084(n+1)`
-/

namespace A191411.P2891544775098889684
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A008833 (n + 1)).toNat * A202084 (n + 1)

end

end A191411.P2891544775098889684

/-! ## A191411.P9106814893065957610

`A010052(A071773(n+1))*A202084(n+1)`
-/

namespace A191411.P9106814893065957610
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A010052 (A071773 (n + 1)).toNat * A202084 (n + 1)

end

end A191411.P9106814893065957610

/-!
# A191412: G.f. satisfies: A(x) = x*exp( Sum_{n>=1} A(x^n/(1-x^n))/n ).

The programs for A191412, there is no canonical definition to state claims against.
-/

/-! ## A191412.P16362687941465833170

`A008621(A087650(n)+A087648(n))`
-/

namespace A191412.P16362687941465833170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (A087650 n + A087648 n).toNat

end

end A191412.P16362687941465833170

/-! ## A191412.P12058269098961175690

`A183239(n)+A059995(A026671(n))`
-/

namespace A191412.P12058269098961175690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A183239 n + A059995 (A026671 n).toNat

end

end A191412.P12058269098961175690

/-! ## A191412.P16075890302192684068

`A241086(A008137(n))+A110049(n+1)`
-/

namespace A191412.P16075890302192684068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A241086 (A008137 n).toNat + A110049 (n + 1)

end

end A191412.P16075890302192684068

/-!
# A191413: a(n) = 3*n^2 - 2*n + 7.

The programs for A191413, the canonical program `A191413.P14837588809354229695` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191413 has offset 0).

The definition of A191413 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `3*n²-2*n+7` (program `A191413.P14837588809354229695`, by `A191413.P14837588809354229695.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191413.P14837588809354229695

`3*n²-2*n+7`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191413

/-- `3*n²-2*n+7` -/
def P14837588809354229695.Spec : Prop :=
  ∀ n, P14837588809354229695.a n = A191413 n

theorem P14837588809354229695.correct : P14837588809354229695.Spec := by
  intro n
  simp only [A191413]

end A191413

/-! ## A191413.P17008658148600484275

`∑[a(n-1)+6]` with `a(0)=7, a(1)=1`
-/

namespace A191413.P17008658148600484275
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  f1 (n - 1) + 6

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191413.P17008658148600484275

namespace A191413

/-- `∑[a(n-1)+6]` -/
def P17008658148600484275.Spec : Prop :=
  ∀ n, (P17008658148600484275.a n : ℤ) = A191413 n

end A191413

/-! ## A191413.P17562027002602434901

`∑[2*a(n-1)-a(n-2)]` with `a(0)=7, a(1)=1, a(2)=7`
-/

namespace A191413.P17562027002602434901
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 1, 7] fun n f1 =>
  2 * f1 (n - 1) - f1 (n - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191413.P17562027002602434901

namespace A191413

/-- `∑[2*a(n-1)-a(n-2)]` -/
def P17562027002602434901.Spec : Prop :=
  ∀ n, P17562027002602434901.a n = A191413 n

end A191413

/-! ## A191413.P5432786456896956348

`∑[A016921(abs(1-n))]`
-/

namespace A191413.P5432786456896956348
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016921 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191413.P5432786456896956348

namespace A191413

/-- `∑[A016921(abs(1-n))]` -/
def P5432786456896956348.Spec : Prop :=
  ∀ n, P5432786456896956348.a n = A191413 n

end A191413

/-! ## A191413.P1154779697242766972

`xor(A000567(n), A010729(n))`
-/

namespace A191413.P1154779697242766972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A000567 n) (A010729 n)

end

end A191413.P1154779697242766972

namespace A191413

/-- `xor(A000567(n), A010729(n))` -/
def P1154779697242766972.Spec : Prop :=
  ∀ n, P1154779697242766972.a n = A191413 n

end A191413

/-! ## A191413.P2060864644280381520

`xor(A010726(n), A056105(n))`
-/

namespace A191413.P2060864644280381520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010726 n) (A056105 n)

end

end A191413.P2060864644280381520

namespace A191413

/-- `xor(A010726(n), A056105(n))` -/
def P2060864644280381520.Spec : Prop :=
  ∀ n, P2060864644280381520.a n = A191413 n

end A191413

/-! ## A191413.P3357908923744435597

`Δ[(n-1)^3+A046691(n+3)+10]`
-/

namespace A191413.P3357908923744435597
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) - 1) ^ 3 + (A046691 (n + 3) + 10)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191413.P3357908923744435597

namespace A191413

/-- `Δ[(n-1)^3+A046691(n+3)+10]` -/
def P3357908923744435597.Spec : Prop :=
  ∀ n, P3357908923744435597.a n = A191413 n

theorem P3357908923744435597.correct : P3357908923744435597.Spec := by
  intro n
  simp only [A191413, Nat.add_sub_cancel, A191413.P3357908923744435597.f1, A191413.P3357908923744435597.a, A191413.P14837588809354229695.a, A046691, A046691.P4440521238781218067.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191413

/-! ## A191413.P16207997777306907815

`Δ[A000096(n+5)+6*C(n, 3)]`
-/

namespace A191413.P16207997777306907815
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000096 (n + 5) + (6 * Nat.choose n 3 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191413.P16207997777306907815

namespace A191413

/-- `Δ[A000096(n+5)+6*C(n, 3)]` -/
def P16207997777306907815.Spec : Prop :=
  ∀ n, P16207997777306907815.a n = A191413 n

theorem P16207997777306907815.correct : P16207997777306907815.Spec := by
  intro n
  simp only [A191413, Nat.add_sub_cancel, A191413.P16207997777306907815.f1, A191413.P16207997777306907815.a, A191413.P14837588809354229695.a, A000096, A000096.P6925830517264718723.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191413

/-! ## A191413.P1883518803207731656

`∑[A016777(abs(2*(1-n)))]`
-/

namespace A191413.P1883518803207731656
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016777 |2 * (1 - (n : ℤ))|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191413.P1883518803207731656

namespace A191413

/-- `∑[A016777(abs(2*(1-n)))]` -/
def P1883518803207731656.Spec : Prop :=
  ∀ n, P1883518803207731656.a n = A191413 n

end A191413

/-! ## A191413.P4922104881032627391

`∑[A020715(a(n-1))]` with `a(0)=7, a(1)=1`
-/

namespace A191413.P4922104881032627391
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  A020715 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191413.P4922104881032627391

namespace A191413

/-- `∑[A020715(a(n-1))]` -/
def P4922104881032627391.Spec : Prop :=
  ∀ n, P4922104881032627391.a n = A191413 n

end A191413

/-! ## A191413.P9323741100168741463

`∑[A146308(a(n-1))]` with `a(0)=7, a(1)=1`
-/

namespace A191413.P9323741100168741463
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  A146308 (f1 (n - 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191413.P9323741100168741463

namespace A191413

/-- `∑[A146308(a(n-1))]` -/
def P9323741100168741463.Spec : Prop :=
  ∀ n, P9323741100168741463.a n = A191413 n

end A191413

/-! ## A191413.P11490805000234640469

`∑[A005408(A052938(a(n-1)))]` with `a(0)=7, a(1)=1`
-/

namespace A191413.P11490805000234640469
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [7, 1] fun n f1 =>
  A005408 (A052938 (f1 (n - 1)).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191413.P11490805000234640469

namespace A191413

/-- `∑[A005408(A052938(a(n-1)))]` -/
def P11490805000234640469.Spec : Prop :=
  ∀ n, P11490805000234640469.a n = A191413 n

end A191413

/-! ## A191413.P12414175226081969817

`A000027(A000567(n)+7)`
-/

namespace A191413.P12414175226081969817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000027 (A000567 n + 7).toNat

end

end A191413.P12414175226081969817

namespace A191413

/-- `A000027(A000567(n)+7)` -/
def P12414175226081969817.Spec : Prop :=
  ∀ n, P12414175226081969817.a n = A191413 n

end A191413

/-!
# A191414: Unitary Jordan function J_2^*(n).

The programs for A191414, the canonical program `A191414.P14543827223812260222` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191414 has offset 1).

The definition of A191414 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A034448, A047994, whose definitions are only conditional or conjectured, so it is only correct if theirs are. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A191414.P14543827223812260222

`A034448(n+1)*A047994(n+1)`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A191414

/-- `A034448(n+1)*A047994(n+1)` -/
def P14543827223812260222.Spec : Prop :=
  ∀ n, P14543827223812260222.a n = A191414 (n + 1)

theorem P14543827223812260222.correct : P14543827223812260222.Spec := by
  intro n
  simp only [A191414, Nat.add_sub_cancel]

end A191414

/-! ## A191414.P3505075977090065797

`A047994((n+1)²)`
-/

namespace A191414.P3505075977090065797
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 ((n + 1) ^ 2)

end

end A191414.P3505075977090065797

namespace A191414

/-- `A047994((n+1)²)` -/
def P3505075977090065797.Spec : Prop :=
  ∀ n, P3505075977090065797.a n = A191414 (n + 1)

end A191414

/-! ## A191414.P2797722156935715092

`A360720(n+1)*A392089(n+1)`
-/

namespace A191414.P2797722156935715092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A360720 (n + 1) * A392089 (n + 1)

end

end A191414.P2797722156935715092

namespace A191414

/-- `A360720(n+1)*A392089(n+1)` -/
def P2797722156935715092.Spec : Prop :=
  ∀ n, P2797722156935715092.a n = A191414 (n + 1)

end A191414

/-! ## A191414.P15399556145600828617

`(A345451(n+1)+1)*A047994(n+1)`
-/

namespace A191414.P15399556145600828617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1) * A047994 (n + 1)

end

end A191414.P15399556145600828617

namespace A191414

/-- `(A345451(n+1)+1)*A047994(n+1)` -/
def P15399556145600828617.Spec : Prop :=
  ∀ n, P15399556145600828617.a n = A191414 (n + 1)

theorem P15399556145600828617.correct : P15399556145600828617.Spec := by
  intro n
  simp only [A191414, Nat.add_sub_cancel, A191414.P15399556145600828617.a, A191414.P14543827223812260222.a, A034448, A034448.P17017727775393200719.a, A047994, A047994.P3003493197761739884.a, A345451, A345451.P7254326500789221208.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A173557, A173557.P15666735857375843373.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191414

/-! ## A191414.P7116000036221519600

`(A034460(n+1)+n+1)*A047994(n+1)`
-/

namespace A191414.P7116000036221519600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A034460 (n + 1) + (n + 1 : ℤ)) * A047994 (n + 1)

end

end A191414.P7116000036221519600

namespace A191414

/-- `(A034460(n+1)+n+1)*A047994(n+1)` -/
def P7116000036221519600.Spec : Prop :=
  ∀ n, P7116000036221519600.a n = A191414 (n + 1)

theorem P7116000036221519600.correct : P7116000036221519600.Spec := by
  intro n
  simp only [A191414, Nat.add_sub_cancel, A191414.P7116000036221519600.a, A191414.P14543827223812260222.a, A034448, A034448.P17017727775393200719.a, A034460, A034460.P1958235575820581513.a, A047994, A047994.P3003493197761739884.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A173557, A173557.P15666735857375843373.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191414

/-! ## A191414.P12633012808593848899

`A047994(n+1)/(n+1)*A064971(n+1)`
-/

namespace A191414.P12633012808593848899
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (n + 1 : ℚ) * (A064971 (n + 1) : ℚ)

end

end A191414.P12633012808593848899

namespace A191414

/-- `A047994(n+1)/(n+1)*A064971(n+1)` -/
def P12633012808593848899.Spec : Prop :=
  ∀ n, P12633012808593848899.a n = (A191414 (n + 1) : ℚ)

end A191414

/-! ## A191414.P8469674000701517418

`∑{d}[n+1, A023900(#)*A348011((n+1)/#)]`
-/

namespace A191414.P8469674000701517418
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ d ∈ Nat.divisors (f1 n), A023900 d * A348011 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (d : ℚ))).toNat

end

end A191414.P8469674000701517418

namespace A191414

/-- `∑{d}[n+1, A023900(#)*A348011((n+1)/#)]` -/
def P8469674000701517418.Spec : Prop :=
  ∀ n, P8469674000701517418.a n = A191414 (n + 1)

end A191414

/-! ## A191414.P11703377630471528002

`(A129468(n+1)+2*(n+1))*A047994(n+1)`
-/

namespace A191414.P11703377630471528002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A129468 (n + 1) + (2 * (n + 1) : ℤ)) * A047994 (n + 1)

end

end A191414.P11703377630471528002

namespace A191414

/-- `(A129468(n+1)+2*(n+1))*A047994(n+1)` -/
def P11703377630471528002.Spec : Prop :=
  ∀ n, P11703377630471528002.a n = A191414 (n + 1)

theorem P11703377630471528002.correct : P11703377630471528002.Spec := by
  intro n
  simp only [A191414, Nat.add_sub_cancel, A191414.P11703377630471528002.a, A191414.P14543827223812260222.a, A034448, A034448.P17017727775393200719.a, A047994, A047994.P3003493197761739884.a, A129468, A129468.P11362039589036067826.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A034460, A034460.P1958235575820581513.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A173557, A173557.P15666735857375843373.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191414

/-! ## A191414.P14170626352456947962

`(A098189(n+1)+Δ[A002088(n)])*A047994(n+1)`
-/

namespace A191414.P14170626352456947962
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002088 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A098189 (n + 1) + (f1 (n + 1) - f1 n)) * A047994 (n + 1)

end

end A191414.P14170626352456947962

namespace A191414

/-- `(A098189(n+1)+Δ[A002088(n)])*A047994(n+1)` -/
def P14170626352456947962.Spec : Prop :=
  ∀ n, P14170626352456947962.a n = A191414 (n + 1)

end A191414

/-! ## A191414.P3751309104596803831

`(A000203(n+1)-A048146(n+1))*A047994(n+1)`
-/

namespace A191414.P3751309104596803831
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000203 (n + 1) - A048146 (n + 1)) * A047994 (n + 1)

end

end A191414.P3751309104596803831

namespace A191414

/-- `(A000203(n+1)-A048146(n+1))*A047994(n+1)` -/
def P3751309104596803831.Spec : Prop :=
  ∀ n, P3751309104596803831.a n = A191414 (n + 1)

theorem P3751309104596803831.correct : P3751309104596803831.Spec := by
  intro n
  simp only [A191414, Nat.add_sub_cancel, A191414.P3751309104596803831.a, A191414.P14543827223812260222.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A034448, A034448.P17017727775393200719.a, A047994, A047994.P3003493197761739884.a, A048146, A048146.P9985884013456677192.a, A000010, A000010.P4673923239450215316.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A173557, A173557.P15666735857375843373.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191414

/-! ## A191414.P7513567507422974546

`(A323408(n+1)-A323407(n+1))*A034448(n+1)`
-/

namespace A191414.P7513567507422974546
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A323408 (n + 1) - A323407 (n + 1)) * A034448 (n + 1)

end

end A191414.P7513567507422974546

namespace A191414

/-- `(A323408(n+1)-A323407(n+1))*A034448(n+1)` -/
def P7513567507422974546.Spec : Prop :=
  ∀ n, P7513567507422974546.a n = A191414 (n + 1)

end A191414

/-! ## A191414.P1265247452206569092

`A047994(n+1)*A323166(n+1)*A332882(n+1)`
-/

namespace A191414.P1265247452206569092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) * A323166 (n + 1) * A332882 (n + 1)

end

end A191414.P1265247452206569092

namespace A191414

/-- `A047994(n+1)*A323166(n+1)*A332882(n+1)` -/
def P1265247452206569092.Spec : Prop :=
  ∀ n, P1265247452206569092.a n = A191414 (n + 1)

end A191414

/-! ## A191414.P12668166354739246796

`A047994(n+1)*A348503(n+1)*A348505(n+1)`
-/

namespace A191414.P12668166354739246796
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047994 (n + 1) * A348503 (n + 1) * A348505 (n + 1)

end

end A191414.P12668166354739246796

namespace A191414

/-- `A047994(n+1)*A348503(n+1)*A348505(n+1)` -/
def P12668166354739246796.Spec : Prop :=
  ∀ n, P12668166354739246796.a n = A191414 (n + 1)

end A191414

/-! ## A191414.P15937106096580263806

`A034448(n+1)/A034444(n+1)*A333557(n+1)`
-/

namespace A191414.P15937106096580263806
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A034448 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ) * (A333557 (n + 1) : ℚ)

end

end A191414.P15937106096580263806

namespace A191414

/-- `A034448(n+1)/A034444(n+1)*A333557(n+1)` -/
def P15937106096580263806.Spec : Prop :=
  ∀ n, P15937106096580263806.a n = (A191414 (n + 1) : ℚ)

end A191414

/-! ## A191414.P3953501139262403243

`A047994(n+1)/A034444(n+1)*A343569(n+1)`
-/

namespace A191414.P3953501139262403243
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A047994 (n + 1) : ℚ) / (A034444 (n + 1) : ℚ) * (A343569 (n + 1) : ℚ)

end

end A191414.P3953501139262403243

namespace A191414

/-- `A047994(n+1)/A034444(n+1)*A343569(n+1)` -/
def P3953501139262403243.Spec : Prop :=
  ∀ n, P3953501139262403243.a n = (A191414 (n + 1) : ℚ)

end A191414

/-! ## A191414.P1355733410892498602

`(A345451(n+1)+1)*(A323408(n+1)-A323407(n+1))`
-/

namespace A191414.P1355733410892498602
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A345451 (n + 1) + 1) * (A323408 (n + 1) - A323407 (n + 1))

end

end A191414.P1355733410892498602

namespace A191414

/-- `(A345451(n+1)+1)*(A323408(n+1)-A323407(n+1))` -/
def P1355733410892498602.Spec : Prop :=
  ∀ n, P1355733410892498602.a n = A191414 (n + 1)

end A191414

/-! ## A191414.P4335770112983923989

`abs(A048146(n+1)-A245092(2*n+1))*A047994(n+1)`
-/

namespace A191414.P4335770112983923989
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A048146 (n + 1) - A245092 (2 * n + 1)| * A047994 (n + 1)

end

end A191414.P4335770112983923989

namespace A191414

/-- `abs(A048146(n+1)-A245092(2*n+1))*A047994(n+1)` -/
def P4335770112983923989.Spec : Prop :=
  ∀ n, P4335770112983923989.a n = A191414 (n + 1)

end A191414

/-! ## A191414.P15102384362646598484

`(A001065(n+1)+1+n-A048146(n+1))*A047994(n+1)`
-/

namespace A191414.P15102384362646598484
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) - A048146 (n + 1)) * A047994 (n + 1)

end

end A191414.P15102384362646598484

namespace A191414

/-- `(A001065(n+1)+1+n-A048146(n+1))*A047994(n+1)` -/
def P15102384362646598484.Spec : Prop :=
  ∀ n, P15102384362646598484.a n = A191414 (n + 1)

theorem P15102384362646598484.correct : P15102384362646598484.Spec := by
  intro n
  simp only [A191414, Nat.add_sub_cancel, A191414.P15102384362646598484.a, A191414.P14543827223812260222.a, A001065, A001065.P4097147489331274860.a, A034448, A034448.P17017727775393200719.a, A047994, A047994.P3003493197761739884.a, A048146, A048146.P9985884013456677192.a, A000010, A000010.P4673923239450215316.a, A000203, A000203.P15001602795509372896.f1, A000203.P15001602795509372896.a, A003557, A003557.P6364735403900941810.a, A064971, A064971.P12456317125098901049.f1, A064971.P12456317125098901049.a, A007947, A007947.P6860725317735988916.f1, A007947.P6860725317735988916.a, A053825, A053825.P3529766841853861707.f1, A053825.P3529766841853861707.a, A173557, A173557.P15666735857375843373.a, A379812, A379812.P10955070158037639960.a, A001157, A001157.P6892814788348726787.a, A001221, A001221.P10258181745752134128.a, A007427, A007427.P16346481250890679101.f1, A007427.P16346481250890679101.a, A023900, A023900.P6802385856234332486.f1, A023900.P6802385856234332486.a, A063453, A063453.P7272092198875575783.f1, A063453.P7272092198875575783.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A191414

/-! ## A191414.P17953127076399255180

`(A001065(n+1)+1+n-A048146(n+1))*(A323408(n+1)-A323407(n+1))`
-/

namespace A191414.P17953127076399255180
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A001065 (n + 1) + 1 + (n : ℤ) - A048146 (n + 1)) * (A323408 (n + 1) - A323407 (n + 1))

end

end A191414.P17953127076399255180

namespace A191414

/-- `(A001065(n+1)+1+n-A048146(n+1))*(A323408(n+1)-A323407(n+1))` -/
def P17953127076399255180.Spec : Prop :=
  ∀ n, P17953127076399255180.a n = A191414 (n + 1)

end A191414

/-! ## A191414.P17712206704885742347

`A000203((n+1)*A003557(n+1))*A173557(n+1)`
-/

namespace A191414.P17712206704885742347
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 ((n + 1 : ℤ) * A003557 (n + 1)).toNat * A173557 (n + 1)

end

end A191414.P17712206704885742347

namespace A191414

/-- `A000203((n+1)*A003557(n+1))*A173557(n+1)` -/
def P17712206704885742347.Spec : Prop :=
  ∀ n, P17712206704885742347.a n = A191414 (n + 1)

end A191414

/-!
# A191415: E.g.f. A(x) satisfies A(x) = x*(1 - A(x))^(-A(x)).

The programs for A191415, there is no canonical definition to state claims against.
-/

/-! ## A191415.P13594806279506995218

`(n+1)*A184949(n)`
-/

namespace A191415.P13594806279506995218
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A184949 n

end

end A191415.P13594806279506995218

/-! ## A191415.P13417016945135921674

`A184949(n)*A208521(A000124(n))`
-/

namespace A191415.P13417016945135921674
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184949 n * A208521 (A000124 n).toNat

end

end A191415.P13417016945135921674

/-! ## A191415.P300639403345368836

`A184949(n)*A211100(A000079(n))`
-/

namespace A191415.P300639403345368836
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184949 n * A211100 (A000079 n).toNat

end

end A191415.P300639403345368836

/-! ## A191415.P9592665033957819338

`A184949(n)*A285106(A000225(n))`
-/

namespace A191415.P9592665033957819338
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A184949 n * A285106 (A000225 n).toNat

end

end A191415.P9592665033957819338

/-!
# A191417: G.f. C(x) satisfies: C(C(x)) - S(S(x)) = x where C(x) = x + 2*x^2*S(x).

The programs for A191417, there is no canonical definition to state claims against.
-/

/-! ## A191417.P4926555450540740356

`A321802(a(n-3)*A083292(n+2))` with `a(0)=1, a(1)=0, a(2)=0, a(3)=4`
-/

namespace A191417.P4926555450540740356
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1, 0, 0, 4] fun n a =>
  A321802 (a (n - 3) * A083292 (n + 2)).toNat

end

end A191417.P4926555450540740356

/-! ## A191417.P9697670686297344639

`and(A101443(n)!, A261834(n))`
-/

namespace A191417.P9697670686297344639
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (Nat.factorial (A101443 n).toNat : ℤ) (A261834 n)

end

end A191417.P9697670686297344639

/-! ## A191417.P10098016830481813137

`A032305(A094099(n))*A133851(n)`
-/

namespace A191417.P10098016830481813137
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A032305 (A094099 n).toNat * A133851 n

end

end A191417.P10098016830481813137

/-!
# A191418: G.f. S(x) satisfies: C(C(x)) - S(S(x)) = x where C(x) = x + 2*x^2*S(x).

The programs for A191418, there is no canonical definition to state claims against.
-/

/-! ## A191418.P5301258601022864177

`A191417(n+3)/2`
-/

namespace A191418.P5301258601022864177
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191417 (n + 3) : ℚ) / 2

end

end A191418.P5301258601022864177

/-! ## A191418.P2958914191672398834

`val(n+2, 3)*A000005((n+1)!)`
-/

namespace A191418.P2958914191672398834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.valuation (n + 2) 3 : ℤ) * A000005 (Nat.factorial (n + 1))

end

end A191418.P2958914191672398834

/-! ## A191418.P16387699383983939783

`A165619(A221945(n+1))`
-/

namespace A191418.P16387699383983939783
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A165619 (A221945 (n + 1)).toNat

end

end A191418.P16387699383983939783

/-! ## A191418.P3954576880101824584

`A076953(A290380(n+4))`
-/

namespace A191418.P3954576880101824584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076953 (A290380 (n + 4)).toNat

end

end A191418.P3954576880101824584

/-!
# A191419: G.f. C(C(x)) where C(x) is the g.f. of A191417.

The programs for A191419, there is no canonical definition to state claims against.
-/

/-! ## A191419.P17612179278825807559

`and(A025480(A005248(n)), A164607(n))`
-/

namespace A191419.P17612179278825807559
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A025480 (A005248 n).toNat) (A164607 n)

end

end A191419.P17612179278825807559

/-! ## A191419.P3886377935119187089

`A077959(n)²*A347628(A088163(n))`
-/

namespace A191419.P3886377935119187089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 n ^ 2 * A347628 (A088163 n).toNat

end

end A191419.P3886377935119187089

/-! ## A191419.P8335790823529340138

`A077959(2*n)*A347628(A088163(n))`
-/

namespace A191419.P8335790823529340138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077959 (2 * n) * A347628 (A088163 n).toNat

end

end A191419.P8335790823529340138

/-! ## A191419.P17487887834689467754

`and(A027746(A041342(n)), A059371(n+2))`
-/

namespace A191419.P17487887834689467754
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A027746 (A041342 n).toNat) (A059371 (n + 2))

end

end A191419.P17487887834689467754

/-! ## A191419.P16719333280950178861

`and(A208671(A320894(2*(n+1))), A320898(n))`
-/

namespace A191419.P16719333280950178861
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A208671 (A320894 (2 * (n + 1))).toNat) (A320898 n)

end

end A191419.P16719333280950178861

/-!
# A191420: Templates for lunar primes in any base (version 3).

The programs for A191420, there is no canonical definition to state claims against.
-/

/-! ## A191420.P12406216069451946417

`A017281(A211027(n+1))`
-/

namespace A191420.P12406216069451946417
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A211027 (n + 1)).toNat

end

end A191420.P12406216069451946417

/-! ## A191420.P8943137502430257498

`A017281(A328072(n+2))`
-/

namespace A191420.P8943137502430257498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A017281 (A328072 (n + 2)).toNat

end

end A191420.P8943137502430257498

/-! ## A191420.P17742645896896974084

`A016861(2*A211027(n+1))`
-/

namespace A191420.P17742645896896974084
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A016861 (2 * A211027 (n + 1)).toNat

end

end A191420.P17742645896896974084

/-!
# A191422: Expansion of e.g.f. (1 + x + x^2)^x.

The programs for A191422, there is no canonical definition to state claims against.
-/

/-! ## A191422.P9671894094684324596

`A202189(∑[n]+1)/(n+1)`
-/

namespace A191422.P9671894094684324596
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A202189 (∑ j ∈ Finset.range (n + 1), f1 j + 1) : ℚ) / (n + 1 : ℚ)

end

end A191422.P9671894094684324596

/-!
# A191427: Dispersion of ([n*r+3/2]), where r=(golden ratio)=(1+sqrt(5))/2 and [ ]=floor, by antidiagonals.

The programs for A191427, there is no canonical definition to state claims against.
-/

/-! ## A191427.P10361784539737435408

`A191734(A191672(n+1)%A162694(n+1))`
-/

namespace A191427.P10361784539737435408
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191734 (Int.tmod (A191672 (n + 1)) (A162694 (n + 1))).toNat

end

end A191427.P10361784539737435408

/-!
# A191428: Dispersion of ([n*r+r]), where r=(golden ratio)=(1+sqrt(5))/2 and [ ]=floor, by antidiagonals.

The programs for A191428, there is no canonical definition to state claims against.
-/

/-! ## A191428.P14497225629126067834

`A083047(A066182(n+1))-1`
-/

namespace A191428.P14497225629126067834
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083047 (A066182 (n + 1)).toNat - 1

end

end A191428.P14497225629126067834

/-! ## A191428.P7944636573883410762

`A134824(n+2)+A083047(A066182(n+1))`
-/

namespace A191428.P7944636573883410762
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A083047 (A066182 (n + 1)).toNat

end

end A191428.P7944636573883410762

/-! ## A191428.P584728227968517032

`A280193(Δ[n²])+A083047(A066182(n+1))`
-/

namespace A191428.P584728227968517032
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A083047 (A066182 (n + 1)).toNat

end

end A191428.P584728227968517032

/-! ## A191428.P8828334572504156012

`A260196(A017185(n))+A083047(A066182(n+1))`
-/

namespace A191428.P8828334572504156012
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A260196 (A017185 n).toNat + A083047 (A066182 (n + 1)).toNat

end

end A191428.P8828334572504156012

/-! ## A191428.P5990367131380757653

`A092673(A076566(n+1))+A083047(A066182(n+1))`
-/

namespace A191428.P5990367131380757653
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092673 (A076566 (n + 1)).toNat + A083047 (A066182 (n + 1)).toNat

end

end A191428.P5990367131380757653

/-! ## A191428.P6555442278242829370

`A092152(A139171(n+1))+A083047(A066182(n+1))`
-/

namespace A191428.P6555442278242829370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A092152 (A139171 (n + 1)).toNat + A083047 (A066182 (n + 1)).toNat

end

end A191428.P6555442278242829370

/-! ## A191428.P4219064194341463457

`A307445(A255313(n+1))+A083047(A066182(n+1))`
-/

namespace A191428.P4219064194341463457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307445 (A255313 (n + 1)).toNat + A083047 (A066182 (n + 1)).toNat

end

end A191428.P4219064194341463457

/-! ## A191428.P11113750428529888890

`A133695(A097981(n))+A083047(A066182(n+1))`
-/

namespace A191428.P11113750428529888890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (A097981 n).toNat + A083047 (A066182 (n + 1)).toNat

end

end A191428.P11113750428529888890

/-! ## A191428.P16944675919611137171

`A308778(n²)+A083047(A066182(n+1))`
-/

namespace A191428.P16944675919611137171
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308778 (n ^ 2) + A083047 (A066182 (n + 1)).toNat

end

end A191428.P16944675919611137171

/-!
# A191429: Dispersion of ([n*sqrt(2)+2]), where [ ]=floor, by antidiagonals.

The programs for A191429, there is no canonical definition to state claims against.
-/

/-! ## A191429.P2050263161237028287

`A194918(C(A194898(n+1), n))+char[10]`
-/

namespace A191429.P2050263161237028287
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  10

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194918 (Nat.choose (A194898 (n + 1)).toNat n) + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A191429.P2050263161237028287

/-! ## A191429.P11812925929951553924

`A194915(n+1)+A193870(A016827(n))`
-/

namespace A191429.P11812925929951553924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194915 (n + 1) + A193870 (A016827 n).toNat

end

end A191429.P11812925929951553924

/-! ## A191429.P4151611397092401156

`A194918(n+1)+A193870(A016827(n))`
-/

namespace A191429.P4151611397092401156
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194918 (n + 1) + A193870 (A016827 n).toNat

end

end A191429.P4151611397092401156

/-! ## A191429.P5791757889196789389

`A194915(n+1)+A133010(A191726(n+1))`
-/

namespace A191429.P5791757889196789389
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A194915 (n + 1) + A133010 (A191726 (n + 1)).toNat

end

end A191429.P5791757889196789389

/-! ## A191429.P258536759172889298

`A336835(A248349(n+1))+A194915(n+1)`
-/

namespace A191429.P258536759172889298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A336835 (A248349 (n + 1)).toNat + A194915 (n + 1)

end

end A191429.P258536759172889298

/-!
# A191431: Dispersion of ([n*x+x]), where x=sqrt(2) and [ ]=floor, by antidiagonals.

The programs for A191431, there is no canonical definition to state claims against.
-/

/-! ## A191431.P1516827221888156990

`A083050(A066182(n+1))-1`
-/

namespace A191431.P1516827221888156990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083050 (A066182 (n + 1)).toNat - 1

end

end A191431.P1516827221888156990

/-! ## A191431.P9304598001499219776

`A134824(n+2)+A083050(A066182(n+1))`
-/

namespace A191431.P9304598001499219776
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134824 (n + 2) + A083050 (A066182 (n + 1)).toNat

end

end A191431.P9304598001499219776

/-! ## A191431.P7115773481716120047

`A164117(or(1, n))+A083050(A066182(n+1))`
-/

namespace A191431.P7115773481716120047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 (Nat.lor 1 n) + A083050 (A066182 (n + 1)).toNat

end

end A191431.P7115773481716120047

/-! ## A191431.P18181965338938050061

`A164117(Δ[n²])+A083050(A066182(n+1))`
-/

namespace A191431.P18181965338938050061
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164117 ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat + A083050 (A066182 (n + 1)).toNat

end

end A191431.P18181965338938050061

/-! ## A191431.P14739426659676262842

`A280193(2*n+1)+A083050(A066182(n+1))`
-/

namespace A191431.P14739426659676262842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280193 (2 * n + 1) + A083050 (A066182 (n + 1)).toNat

end

end A191431.P14739426659676262842

/-! ## A191431.P16819325230964846452

`A175629(A017017(n))+A083050(A066182(n+1))`
-/

namespace A191431.P16819325230964846452
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175629 (A017017 n).toNat + A083050 (A066182 (n + 1)).toNat

end

end A191431.P16819325230964846452

/-! ## A191431.P18011318723484948577

`A133695(A013929(n+1))+A083050(A066182(n+1))`
-/

namespace A191431.P18011318723484948577
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (A013929 (n + 1)).toNat + A083050 (A066182 (n + 1)).toNat

end

end A191431.P18011318723484948577

/-! ## A191431.P15704705299191770065

`A158052(A000040(n+1))+A083050(A066182(n+1))`
-/

namespace A191431.P15704705299191770065
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A158052 (A000040 (n + 1)).toNat + A083050 (A066182 (n + 1)).toNat

end

end A191431.P15704705299191770065

/-! ## A191431.P12227388987810712996

`A133695(A068781(n+1))+A083050(A066182(n+1))`
-/

namespace A191431.P12227388987810712996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A133695 (A068781 (n + 1)).toNat + A083050 (A066182 (n + 1)).toNat

end

end A191431.P12227388987810712996

/-! ## A191431.P9191527108163354915

`A182394(A106950(n+1))+A083050(A066182(n+1))`
-/

namespace A191431.P9191527108163354915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A182394 (A106950 (n + 1)).toNat + A083050 (A066182 (n + 1)).toNat

end

end A191431.P9191527108163354915

/-!
# A191433: Dispersion of ([n*x+n+1/2]), where x=(golden ratio) and [ ]=floor, by antidiagonals.

The programs for A191433, there is no canonical definition to state claims against.
-/

/-! ## A191433.P5469038060881137822

`A191437(n+1)-A051767(A013609(n))`
-/

namespace A191433.P5469038060881137822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191437 (n + 1) - A051767 (A013609 n).toNat

end

end A191433.P5469038060881137822

/-! ## A191433.P14532418374819145598

`A191437(n+1)-A051767(A126736(n))`
-/

namespace A191433.P14532418374819145598
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191437 (n + 1) - A051767 (A126736 n).toNat

end

end A191433.P14532418374819145598

/-! ## A191433.P7297169636443772816

`A191437(n+1)-A044940(A100475(n))`
-/

namespace A191433.P7297169636443772816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191437 (n + 1) - A044940 (A100475 n).toNat

end

end A191433.P7297169636443772816

/-! ## A191433.P9838702469591636298

`A191437(n+1)-A157228(A319629(n))`
-/

namespace A191433.P9838702469591636298
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191437 (n + 1) - A157228 (A319629 n).toNat

end

end A191433.P9838702469591636298

/-! ## A191433.P15390703433407625675

`A191437(n+1)-A133010(A324969(n+1))`
-/

namespace A191433.P15390703433407625675
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191437 (n + 1) - A133010 (A324969 (n + 1)).toNat

end

end A191433.P15390703433407625675

/-!
# A191437: Dispersion of ([n*x+n+x-2]), where x=(golden ratio) and [ ]=floor, by antidiagonals.

The programs for A191437, there is no canonical definition to state claims against.
-/

/-! ## A191437.P537025562549811943

`A048680(lcm(A191452(n+1), A351241(n+1)))`
-/

namespace A191437.P537025562549811943
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (Int.lcm (A191452 (n + 1)) (A351241 (n + 1)))

end

end A191437.P537025562549811943

/-! ## A191437.P9690044007896897843

`A048680(A191452(n+1)^A351241(n+1))`
-/

namespace A191437.P9690044007896897843
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 (SequenceMachineLib.roundAway ((A191452 (n + 1) : ℚ) ^ (A351241 (n + 1) : ℤ))).toNat

end

end A191437.P9690044007896897843

/-! ## A191437.P14444450378118360080

`A048680(A351241(n+1)²²*A191452(n+1))`
-/

namespace A191437.P14444450378118360080
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048680 ((A351241 (n + 1) ^ 2) ^ 2 * A191452 (n + 1)).toNat

end

end A191437.P14444450378118360080

/-! ## A191437.P4387025061373097424

`A048680(A191452(n+1))/A351241(A351241(n+1)²)`
-/

namespace A191437.P4387025061373097424
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A048680 (A191452 (n + 1)).toNat : ℚ) / (A351241 (A351241 (n + 1) ^ 2).toNat : ℚ)

end

end A191437.P4387025061373097424

/-! ## A191437.P9060047694809056202

`or(A000035(A210371(n)), A191433(n+1))`
-/

namespace A191437.P9060047694809056202
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000035 (A210371 n).toNat) (A191433 (n + 1))

end

end A191437.P9060047694809056202

/-!
# A191439: Dispersion of ([n*sqrt(2)+n+1/2]), where [ ]=floor, by antidiagonals.

The programs for A191439, there is no canonical definition to state claims against.
-/

/-! ## A191439.P13214707158408095254

`A191723(n+1)-A340998(A017911(n))`
-/

namespace A191439.P13214707158408095254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191723 (n + 1) - A340998 ((A017911 n).toNat + 140)

end

end A191439.P13214707158408095254

/-! ## A191439.P11181146536688119247

`A191723(n+1)-A010060(A324233(n+1))`
-/

namespace A191439.P11181146536688119247
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191723 (n + 1) - A010060 (A324233 (n + 1)).toNat

end

end A191439.P11181146536688119247

/-! ## A191439.P8791391605398980979

`A191723(n+1)-A133010(A191444(2*(n+2)))`
-/

namespace A191439.P8791391605398980979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191723 (n + 1) - A133010 (A191444 (2 * (n + 2))).toNat

end

end A191439.P8791391605398980979

/-! ## A191439.P2180960656724966071

`A191723(n+1)-∑[A185284(3*n+2)]`
-/

namespace A191439.P2180960656724966071
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A185284 (3 * n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191723 (n + 1) - ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191439.P2180960656724966071

/-! ## A191439.P16350319390629940648

`A191723(n+1)-A133010(A000124(n))`
-/

namespace A191439.P16350319390629940648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191723 (n + 1) - A133010 (A000124 n).toNat

end

end A191439.P16350319390629940648

/-!
# A191443: Dispersion of the sequence ([n*sqrt(3)+1]), where [ ]=floor, read by antidiagonals.

The programs for A191443, there is no canonical definition to state claims against.
-/

/-! ## A191443.P9787567000924341996

`A136175(n+1)-A284954(A132187(3*(n+1)))`
-/

namespace A191443.P9787567000924341996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A136175 (n + 1) - A284954 (A132187 (3 * (n + 1))).toNat

end

end A191443.P9787567000924341996

/-! ## A191443.P11359999809732715552

`A191734(n+1)+A057558(A060439(n+1))`
-/

namespace A191443.P11359999809732715552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191734 (n + 1) + A057558 (A060439 (n + 1)).toNat

end

end A191443.P11359999809732715552

/-! ## A191443.P16005705296515040120

`A191734(n+1)+A133010(A191663(n+1))`
-/

namespace A191443.P16005705296515040120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191734 (n + 1) + A133010 (A191663 (n + 1)).toNat

end

end A191443.P16005705296515040120

/-! ## A191443.P984473115552862108

`A191734(n+1)+A179801(A191722(n+1))`
-/

namespace A191443.P984473115552862108
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191734 (n + 1) + A179801 (A191722 (n + 1)).toNat

end

end A191443.P984473115552862108

/-! ## A191443.P14164440713658384947

`A191734(n+1)+A179801(A191728(n+1))`
-/

namespace A191443.P14164440713658384947
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191734 (n + 1) + A179801 (A191728 (n + 1)).toNat

end

end A191443.P14164440713658384947

/-!
# A191444: Dispersion of ([n*sqrt(3)+3/2]), where [ ]=floor, by antidiagonals.

The programs for A191444, there is no canonical definition to state claims against.
-/

/-! ## A191444.P1710060870737349731

`A191733(n+1)+A115861(A115868(n+2))`
-/

namespace A191444.P1710060870737349731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191733 (n + 1) + A115861 (A115868 (n + 2)).toNat

end

end A191444.P1710060870737349731

/-!
# A191446: Dispersion of [n*sqrt(5)], where [ ]=floor, by antidiagonals.

The programs for A191446, there is no canonical definition to state claims against.
-/

/-! ## A191446.P769109997258057227

`A048266(A004746(A288870(n)))`
-/

namespace A191446.P769109997258057227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048266 (A004746 (A288870 n).toNat).toNat

end

end A191446.P769109997258057227

/-! ## A191446.P1435434532049167508

`A004746(A288870(n)^A008835(n+1))`
-/

namespace A191446.P1435434532049167508
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004746 (SequenceMachineLib.roundAway ((A288870 n : ℚ) ^ (A008835 (n + 1) : ℤ))).toNat

end

end A191446.P1435434532049167508

/-! ## A191446.P4020370625056693019

`A004746(A008835(n+1)²²*A288870(n))`
-/

namespace A191446.P4020370625056693019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004746 ((A008835 (n + 1) ^ 2) ^ 2 * A288870 n).toNat

end

end A191446.P4020370625056693019

/-! ## A191446.P3126730602177163722

`A004746(A288870(n))+(3*A060439(n+1))%3`
-/

namespace A191446.P3126730602177163722
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004746 (A288870 n).toNat + Int.tmod (3 * A060439 (n + 1)) 3

end

end A191446.P3126730602177163722

/-!
# A191448: Dispersion of the odd integers greater than 1, by antidiagonals.

The programs for A191448, the canonical program `A191448.P14418744543329355143` is in `Seq.B007.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191448 has offset 1).

The definition of A191448 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191448.P14418744543329355143

`A075300(A066182(n+1))`

The canonical program, it is in `Seq.B007.C001`.
-/

namespace A191448

/-- `A075300(A066182(n+1))` -/
def P14418744543329355143.Spec : Prop :=
  ∀ n, P14418744543329355143.a n = A191448 (n + 1)

theorem P14418744543329355143.correct : P14418744543329355143.Spec := by
  intro n
  simp only [A191448, Nat.add_sub_cancel]

end A191448

/-! ## A191448.P9493515909952758720

`A035214(n)*A054582(n)-1`
-/

namespace A191448.P9493515909952758720
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A035214 n * A054582 n - 1

end

end A191448.P9493515909952758720

namespace A191448

/-- `A035214(n)*A054582(n)-1` -/
def P9493515909952758720.Spec : Prop :=
  ∀ n, P9493515909952758720.a n = A191448 (n + 1)

end A191448

/-! ## A191448.P10122015839579357241

`xor(A130330(n)%A054582(n), A054582(n))`
-/

namespace A191448.P10122015839579357241
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (Int.tmod (A130330 n) (A054582 n)) (A054582 n)

end

end A191448.P10122015839579357241

namespace A191448

/-- `xor(A130330(n)%A054582(n), A054582(n))` -/
def P10122015839579357241.Spec : Prop :=
  ∀ n, P10122015839579357241.a n = A191448 (n + 1)

end A191448

/-! ## A191448.P10614723253255277057

`A241957(n+1)%A054582(A066182(n+1))`
-/

namespace A191448.P10614723253255277057
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A241957 (n + 1)) (A054582 (A066182 (n + 1)).toNat)

end

end A191448.P10614723253255277057

namespace A191448

/-- `A241957(n+1)%A054582(A066182(n+1))` -/
def P10614723253255277057.Spec : Prop :=
  ∀ n, P10614723253255277057.a n = A191448 (n + 1)

end A191448

/-! ## A191448.P1170523660416196225

`A008683(A006512(n+1))+A035214(n)*A054582(n)`
-/

namespace A191448.P1170523660416196225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (A006512 (n + 1)).toNat + A035214 n * A054582 n

end

end A191448.P1170523660416196225

namespace A191448

/-- `A008683(A006512(n+1))+A035214(n)*A054582(n)` -/
def P1170523660416196225.Spec : Prop :=
  ∀ n, P1170523660416196225.a n = A191448 (n + 1)

end A191448

/-! ## A191448.P8226321614253139662

`A153151(A054582(n))`
-/

namespace A191448.P8226321614253139662
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A054582 n).toNat

end

end A191448.P8226321614253139662

namespace A191448

/-- `A153151(A054582(n))` -/
def P8226321614253139662.Spec : Prop :=
  ∀ n, P8226321614253139662.a n = A191448 (n + 1)

end A191448

/-! ## A191448.P15277457971742759866

`A153151(A288870(n)-1)`
-/

namespace A191448.P15277457971742759866
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153151 (A288870 n - 1).toNat

end

end A191448.P15277457971742759866

namespace A191448

/-- `A153151(A288870(n)-1)` -/
def P15277457971742759866.Spec : Prop :=
  ∀ n, P15277457971742759866.a n = A191448 (n + 1)

end A191448

/-! ## A191448.P639822747491937948

`floor(A241957(n+1)/A020639(A013609(n)))`
-/

namespace A191448.P639822747491937948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A241957 (n + 1) : ℚ) / (A020639 (A013609 n).toNat : ℚ)⌋

end

end A191448.P639822747491937948

namespace A191448

/-- `floor(A241957(n+1)/A020639(A013609(n)))` -/
def P639822747491937948.Spec : Prop :=
  ∀ n, P639822747491937948.a n = A191448 (n + 1)

end A191448

/-!
# A191449: Dispersion of (3,6,9,12,15,...), by antidiagonals.

The programs for A191449, the canonical program `A191449.P13469591426900435099` is in `Seq.B004.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191449 has offset 1).

The definition of A191449 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 154 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191449.P14300810749373074307

`A141396(∑[2*n]%comp[∑[n]])`
-/

namespace A191449.P14300810749373074307
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141396 ((∑ j ∈ Finset.range (n + 1), f1 j) % SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n)

end

end A191449.P14300810749373074307

namespace A191449

/-- `A141396(∑[2*n]%comp[∑[n]])` -/
def P14300810749373074307.Spec : Prop :=
  ∀ n, P14300810749373074307.a n = A191449 (n + 1)

end A191449

/-! ## A191449.P6608776132830703276

`A141396(∑[char[∑[n]]]²-(n+1))`
-/

namespace A191449.P6608776132830703276
noncomputable section

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f3 j

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = n then 1 else 0

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141396 ((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 - (n + 1))

end

end A191449.P6608776132830703276

namespace A191449

/-- `A141396(∑[char[∑[n]]]²-(n+1))` -/
def P6608776132830703276.Spec : Prop :=
  ∀ n, P6608776132830703276.a n = A191449 (n + 1)

end A191449

/-! ## A191449.P13469591426900435099

`A140303(n)*A141396(A112367(n))`

The canonical program, it is in `Seq.B004.C002`.
-/

namespace A191449

/-- `A140303(n)*A141396(A112367(n))` -/
def P13469591426900435099.Spec : Prop :=
  ∀ n, P13469591426900435099.a n = A191449 (n + 1)

theorem P13469591426900435099.correct : P13469591426900435099.Spec := by
  intro n
  simp only [A191449, Nat.add_sub_cancel]

end A191449

/-! ## A191449.P2689059792415935982

`lcm(A065357(n), A141396(A061579(n)))`
-/

namespace A191449.P2689059792415935982
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A065357 n) (A141396 (A061579 n).toNat)

end

end A191449.P2689059792415935982

namespace A191449

/-- `lcm(A065357(n), A141396(A061579(n)))` -/
def P2689059792415935982.Spec : Prop :=
  ∀ n, (P2689059792415935982.a n : ℤ) = A191449 (n + 1)

end A191449

/-! ## A191449.P15915663305006206122

`A001651(A002260(n+1))*A140303(n)`
-/

namespace A191449.P15915663305006206122
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001651 (A002260 (n + 1)).toNat * A140303 n

end

end A191449.P15915663305006206122

namespace A191449

/-- `A001651(A002260(n+1))*A140303(n)` -/
def P15915663305006206122.Spec : Prop :=
  ∀ n, P15915663305006206122.a n = A191449 (n + 1)

end A191449

/-!
# A191450: Dispersion of (3*n-1), read by antidiagonals.

The programs for A191450, the canonical program `A191450.P11542416564399414876` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191450 has offset 1).

The definition of A191450 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A254051, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A191450.P11542416564399414876

`A254051(A038722(n+1))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A191450

/-- `A254051(A038722(n+1))` -/
def P11542416564399414876.Spec : Prop :=
  ∀ n, P11542416564399414876.a n = A191450 (n + 1)

theorem P11542416564399414876.correct : P11542416564399414876.Spec := by
  intro n
  simp only [A191450, Nat.add_sub_cancel]

end A191450

/-! ## A191450.P6889418998735451101

`A254051(A061579(n)+1)`
-/

namespace A191450.P6889418998735451101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A061579 n + 1).toNat

end

end A191450.P6889418998735451101

namespace A191450

/-- `A254051(A061579(n)+1)` -/
def P6889418998735451101.Spec : Prop :=
  ∀ n, P6889418998735451101.a n = A191450 (n + 1)

end A191450

/-! ## A191450.P13399464176497007785

`A254051(A093995(n+1)-n)`
-/

namespace A191450.P13399464176497007785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A093995 (n + 1) - (n : ℤ)).toNat

end

end A191450.P13399464176497007785

namespace A191450

/-- `A254051(A093995(n+1)-n)` -/
def P13399464176497007785.Spec : Prop :=
  ∀ n, P13399464176497007785.a n = A191450 (n + 1)

end A191450

/-! ## A191450.P11381875676227251086

`A254051(A002024(n+1)²-n)`
-/

namespace A191450.P11381875676227251086
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A002024 (n + 1) ^ 2 - (n : ℤ)).toNat

end

end A191450.P11381875676227251086

namespace A191450

/-- `A254051(A002024(n+1)²-n)` -/
def P11381875676227251086.Spec : Prop :=
  ∀ n, P11381875676227251086.a n = A191450 (n + 1)

end A191450

/-! ## A191450.P5053585656048777570

`A254051(A004736(n+1)+n-A002260(n+1)+1)`
-/

namespace A191450.P5053585656048777570
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A004736 (n + 1) + ((n : ℤ) - A002260 (n + 1)) + 1).toNat

end

end A191450.P5053585656048777570

namespace A191450

/-- `A254051(A004736(n+1)+n-A002260(n+1)+1)` -/
def P5053585656048777570.Spec : Prop :=
  ∀ n, P5053585656048777570.a n = A191450 (n + 1)

end A191450

/-! ## A191450.P3689021614940229803

`A254051(A254047(A254051(n+1)))`
-/

namespace A191450.P3689021614940229803
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254051 (A254047 (A254051 (n + 1)).toNat).toNat

end

end A191450.P3689021614940229803

namespace A191450

/-- `A254051(A254047(A254051(n+1)))` -/
def P3689021614940229803.Spec : Prop :=
  ∀ n, P3689021614940229803.a n = A191450 (n + 1)

end A191450

/-!
# A191451: Dispersion of (3*n-2), for n>=2, by antidiagonals.

The programs for A191451, the canonical program `A191451.P4030698452655550704` is in `Seq.B014.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191451 has offset 1).

The definition of A191451 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 153 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191451.P4030698452655550704

`abs(A191450(n+1)-A068911(A198954(n)))`

The canonical program, it is in `Seq.B014.C000`.
-/

namespace A191451

/-- `abs(A191450(n+1)-A068911(A198954(n)))` -/
def P4030698452655550704.Spec : Prop :=
  ∀ n, P4030698452655550704.a n = A191451 (n + 1)

theorem P4030698452655550704.correct : P4030698452655550704.Spec := by
  intro n
  simp only [A191451, Nat.add_sub_cancel]

end A191451

/-! ## A191451.P203749141953582295

`A098046(A191665(n+1))`
-/

namespace A191451.P203749141953582295
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A098046 (A191665 (n + 1)).toNat

end

end A191451.P203749141953582295

namespace A191451

/-- `A098046(A191665(n+1))` -/
def P203749141953582295.Spec : Prop :=
  ∀ n, P203749141953582295.a n = A191451 (n + 1)

end A191451

/-! ## A191451.P14865029396857644851

`A004524(A163511(A224195(n+1)))`
-/

namespace A191451.P14865029396857644851
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004524 (A163511 (A224195 (n + 1)).toNat).toNat

end

end A191451.P14865029396857644851

namespace A191451

/-- `A004524(A163511(A224195(n+1)))` -/
def P14865029396857644851.Spec : Prop :=
  ∀ n, P14865029396857644851.a n = A191451 (n + 1)

end A191451

/-! ## A191451.P7555685489844446217

`A123108(A163511(A081118(n+1)+2))`
-/

namespace A191451.P7555685489844446217
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A123108 (A163511 (A081118 (n + 1) + 2).toNat).toNat

end

end A191451.P7555685489844446217

namespace A191451

/-- `A123108(A163511(A081118(n+1)+2))` -/
def P7555685489844446217.Spec : Prop :=
  ∀ n, P7555685489844446217.a n = A191451 (n + 1)

end A191451

/-!
# A191452: Dispersion of (4,8,12,16,...), by antidiagonals.

The programs for A191452, the canonical program `A191452.P5218394825556345450` is in `Seq.B005.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191452 has offset 1).

The definition of A191452 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 5050 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191452.P5218394825556345450

`A042968(A002260(n+1))*A262616(n)`

The canonical program, it is in `Seq.B005.C001`.
-/

namespace A191452

/-- `A042968(A002260(n+1))*A262616(n)` -/
def P5218394825556345450.Spec : Prop :=
  ∀ n, P5218394825556345450.a n = A191452 (n + 1)

theorem P5218394825556345450.correct : P5218394825556345450.Spec := by
  intro n
  simp only [A191452, Nat.add_sub_cancel]

end A191452

/-! ## A191452.P17767084134381033876

`A042968(A002262(n)+1)*A262616(n)`
-/

namespace A191452.P17767084134381033876
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (A002262 n + 1).toNat * A262616 n

end

end A191452.P17767084134381033876

namespace A191452

/-- `A042968(A002262(n)+1)*A262616(n)` -/
def P17767084134381033876.Spec : Prop :=
  ∀ n, P17767084134381033876.a n = A191452 (n + 1)

theorem P17767084134381033876.correct : P17767084134381033876.Spec := by
  intro n
  simp only [A191452, Nat.add_sub_cancel, A191452.P17767084134381033876.a, A191452.P5218394825556345450.a, A002260, A002260.P769748059679640451.a, A002262, A002262.P12129691700837801527.a, A042968, A042968.P6108724829749735077.a, A262616, A262616.P8893903525069008966.a, A057944, A057944.P16851463738746886639.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A000217, A000217.P10269402890581615239.a, A003056, A003056.P5318256527314048597.a, A025581, A025581.P420762180635059694.a, A004736, A004736.P10337537277358081527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A191452

/-! ## A191452.P14238126949432452386

`A004396(A158405(n+1))*A262616(n)`
-/

namespace A191452.P14238126949432452386
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004396 (A158405 (n + 1)).toNat * A262616 n

end

end A191452.P14238126949432452386

namespace A191452

/-- `A004396(A158405(n+1))*A262616(n)` -/
def P14238126949432452386.Spec : Prop :=
  ∀ n, P14238126949432452386.a n = A191452 (n + 1)

end A191452

/-! ## A191452.P4070032994943025804

`A042968(1-A057944(n)+n)*A262616(n)`
-/

namespace A191452.P4070032994943025804
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A042968 (1 - A057944 n + (n : ℤ)).toNat * A262616 n

end

end A191452.P4070032994943025804

namespace A191452

/-- `A042968(1-A057944(n)+n)*A262616(n)` -/
def P4070032994943025804.Spec : Prop :=
  ∀ n, P4070032994943025804.a n = A191452 (n + 1)

theorem P4070032994943025804.correct : P4070032994943025804.Spec := by
  intro n
  simp only [A191452, Nat.add_sub_cancel, A191452.P4070032994943025804.a, A191452.P5218394825556345450.a, A002260, A002260.P769748059679640451.a, A042968, A042968.P6108724829749735077.a, A057944, A057944.P16851463738746886639.a, A262616, A262616.P8893903525069008966.a, A000217, A000217.P10269402890581615239.a, A002262, A002262.P12129691700837801527.a, A003056, A003056.P5318256527314048597.a, A130321, A130321.P6740187654358347306.a, A000079, A000079.P10855139691139572931.a, A025581, A025581.P420762180635059694.a, A004736, A004736.P10337537277358081527.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf; (try simp (disch := positivity) only [Real.sq_sqrt, SequenceMachineLib.sqrt_pow_three, SequenceMachineLib.sqrt_pow_four, SequenceMachineLib.sqrt_pow_five, SequenceMachineLib.sqrt_pow_six]); (try ring_nf))

end A191452

/-! ## A191452.P15155509727249893608

`A058889(A059268(n))*A262616(n)`
-/

namespace A191452.P15155509727249893608
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A058889 (A059268 n).toNat * A262616 n

end

end A191452.P15155509727249893608

namespace A191452

/-- `A058889(A059268(n))*A262616(n)` -/
def P15155509727249893608.Spec : Prop :=
  ∀ n, P15155509727249893608.a n = A191452 (n + 1)

end A191452

/-!
# A191453: Dispersion of (2*floor(3*n/2)), by antidiagonals.

The programs for A191453, there is no canonical definition to state claims against.
-/

/-! ## A191453.P3210930323576871778

`A005599(A191668(n+1))*A351241(A351241(n+1))`
-/

namespace A191453.P3210930323576871778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (A191668 (n + 1)).toNat * A351241 (A351241 (n + 1)).toNat

end

end A191453.P3210930323576871778

/-! ## A191453.P10114435753136882704

`A005599(A191668(n+1)%A268866(n))`
-/

namespace A191453.P10114435753136882704
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (Int.tmod (A191668 (n + 1)) (A268866 n)).toNat

end

end A191453.P10114435753136882704

/-! ## A191453.P16828403057532898412

`A005599(A191668(n+1)^A351241(n+1))`
-/

namespace A191453.P16828403057532898412
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005599 (SequenceMachineLib.roundAway ((A191668 (n + 1) : ℚ) ^ (A351241 (n + 1) : ℤ))).toNat

end

end A191453.P16828403057532898412

/-! ## A191453.P11993547986485558650

`A005599(A191668(n+1))/A351241(A351241(n+1)²)`
-/

namespace A191453.P11993547986485558650
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A005599 (A191668 (n + 1)).toNat : ℚ) / (A351241 (A351241 (n + 1) ^ 2).toNat : ℚ)

end

end A191453.P11993547986485558650

/-! ## A191453.P7752333715205789354

`A102450(A191454(n+1))`
-/

namespace A191453.P7752333715205789354
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102450 (A191454 (n + 1)).toNat

end

end A191453.P7752333715205789354

/-!
# A191454: Dispersion of (2*floor(n*r)), where r=(golden ratio), by antidiagonals.

The programs for A191454, there is no canonical definition to state claims against.
-/

/-! ## A191454.P15164519983429377770

`A321993(A191453(n+1))`
-/

namespace A191454.P15164519983429377770
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A321993 (A191453 (n + 1)).toNat

end

end A191454.P15164519983429377770

/-!
# A191455: Dispersion of (floor(n*e)), by antidiagonals.

The programs for A191455, there is no canonical definition to state claims against.
-/

/-! ## A191455.P5497666454316706891

`or(A191543(n+1), A268643(A305746(n)))`
-/

namespace A191455.P5497666454316706891
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A191543 (n + 1)) (A268643 (A305746 n).toNat)

end

end A191455.P5497666454316706891

/-! ## A191455.P17151585222028795421

`A191543(A077168(n))+A027870(n)`
-/

namespace A191455.P17151585222028795421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191543 (A077168 n).toNat + A027870 n

end

end A191455.P17151585222028795421

/-! ## A191455.P6213651541968208429

`A191543(n+1)+A055641(A000051(n))`
-/

namespace A191455.P6213651541968208429
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191543 (n + 1) + A055641 (A000051 n).toNat

end

end A191455.P6213651541968208429

/-! ## A191455.P8124146249515169318

`A191543(n+1)+A055641(A000079(n))`
-/

namespace A191455.P8124146249515169318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191543 (n + 1) + A055641 (A000079 n).toNat

end

end A191455.P8124146249515169318

/-! ## A191455.P4415710871389117667

`A191543(n+1)+A179801(A094092(n+1))`
-/

namespace A191455.P4415710871389117667
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191543 (n + 1) + A179801 (A094092 (n + 1)).toNat

end

end A191455.P4415710871389117667

/-!
# A191456: Primes p such that the polynomial x^2+x+p generates only primes for x=1..9.

The programs for A191456, there is no canonical definition to state claims against.
-/

/-! ## A191456.P3592838378553680652

`A190800(A051118(n)+A030173(n+1))`
-/

namespace A191456.P3592838378553680652
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190800 (A051118 n + A030173 (n + 1)).toNat

end

end A191456.P3592838378553680652

/-! ## A191456.P6370859916878366732

`A190800(A178279(n+1)+A130991(n+1))`
-/

namespace A191456.P6370859916878366732
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A190800 (A178279 (n + 1) + A130991 (n + 1)).toNat

end

end A191456.P6370859916878366732

/-!
# A191459: 1 = Sum_{n>=0} a(n) * x^n * (1 - (n+1)*x)^(n+1).

The programs for A191459, there is no canonical definition to state claims against.
-/

/-! ## A191459.P18010215285090368244

`A085269(n^(n+1))+1`
-/

namespace A191459.P18010215285090368244
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A085269 (n ^ (n + 1)) + 1

end

end A191459.P18010215285090368244

/-!
# A191461: Expansion of e.g.f.: A(x) = Sum_{n>=0} binomial(x^n + n-1, n).

The programs for A191461, there is no canonical definition to state claims against.
-/

/-! ## A191461.P2811335897880583890

`A028310(((∑[n-1]+2)*abs(1-n)!)%n!)`
-/

namespace A191461.P2811335897880583890
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod ((∑ j ∈ Finset.range (n + 1), f1 j + 2) * (Nat.factorial |1 - (n : ℤ)|.toNat : ℤ)) (Nat.factorial n : ℤ)).toNat

end

end A191461.P2811335897880583890

/-! ## A191461.P485795178166073510

`A028310(A187742(n)%n!)`
-/

namespace A191461.P485795178166073510
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A187742 n) (Nat.factorial n : ℤ)).toNat

end

end A191461.P485795178166073510

/-! ## A191461.P788080171262759222

`A028310(A121635(n+1)%n!)`
-/

namespace A191461.P788080171262759222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A121635 (n + 1)) (Nat.factorial n : ℤ)).toNat

end

end A191461.P788080171262759222

/-! ## A191461.P1635942043814709953

`A028310(A121634(∑[n]+1)%n!)`
-/

namespace A191461.P1635942043814709953
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028310 (Int.tmod (A121634 (∑ j ∈ Finset.range (n + 1), f1 j + 1)) (Nat.factorial n : ℤ)).toNat

end

end A191461.P1635942043814709953

/-!
# A191463: E.g.f. (even powers only) cos(x)^(cos(x)-1).

The programs for A191463, there is no canonical definition to state claims against.
-/

/-! ## A191463.P15128525167336254135

`A307806(A228126(n+2))`
-/

namespace A191463.P15128525167336254135
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A307806 (A228126 (n + 2)).toNat

end

end A191463.P15128525167336254135

/-!
# A191465: a(n) = 9^n - 2^n.

The programs for A191465, the canonical program `A191465.P15265810907062890771` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191465 has offset 0).

The definition of A191465 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-2^n` (program `A191465.P15265810907062890771`, by `A191465.P15265810907062890771.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191465.P15265810907062890771

`9^n-2^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191465

/-- `9^n-2^n` -/
def P15265810907062890771.Spec : Prop :=
  ∀ n, P15265810907062890771.a n = A191465 n

theorem P15265810907062890771.correct : P15265810907062890771.Spec := by
  intro n
  simp only [A191465]

end A191465

/-! ## A191465.P3805577106533778369

`ogf(7x/(1-11x+18x^2))`
-/

namespace A191465.P3805577106533778369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 7] [1, -11, 18] n

end

end A191465.P3805577106533778369

namespace A191465

/-- `ogf(7x/(1-11x+18x^2))` -/
def P3805577106533778369.Spec : Prop :=
  ∀ n, P3805577106533778369.a n = A191465 n

end A191465

/-! ## A191465.P1790583292397228147

`abs(1-A155600(n))`
-/

namespace A191465.P1790583292397228147
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155600 n|

end

end A191465.P1790583292397228147

namespace A191465

/-- `abs(1-A155600(n))` -/
def P1790583292397228147.Spec : Prop :=
  ∀ n, P1790583292397228147.a n = A191465 n

end A191465

/-! ## A191465.P14514910608606830685

`abs(A000079(n)-A001019(n))`
-/

namespace A191465.P14514910608606830685
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000079 n - A001019 n|

end

end A191465.P14514910608606830685

namespace A191465

/-- `abs(A000079(n)-A001019(n))` -/
def P14514910608606830685.Spec : Prop :=
  ∀ n, P14514910608606830685.a n = A191465 n

end A191465

/-! ## A191465.P6636323478103591474

`abs(A001550(n)-A034513(n))`
-/

namespace A191465.P6636323478103591474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001550 n - A034513 n|

end

end A191465.P6636323478103591474

namespace A191465

/-- `abs(A001550(n)-A034513(n))` -/
def P6636323478103591474.Spec : Prop :=
  ∀ n, P6636323478103591474.a n = A191465 n

end A191465

/-! ## A191465.P16930839763668338591

`abs(A074501(n)-A074519(n))`
-/

namespace A191465.P16930839763668338591
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074501 n - A074519 n|

end

end A191465.P16930839763668338591

namespace A191465

/-- `abs(A074501(n)-A074519(n))` -/
def P16930839763668338591.Spec : Prop :=
  ∀ n, P16930839763668338591.a n = A191465 n

end A191465

/-! ## A191465.P9254056156531789176

`∑[A055275(n)-A011782(n)]`
-/

namespace A191465.P9254056156531789176
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n - A011782 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191465.P9254056156531789176

namespace A191465

/-- `∑[A055275(n)-A011782(n)]` -/
def P9254056156531789176.Spec : Prop :=
  ∀ n, P9254056156531789176.a n = A191465 n

end A191465

/-! ## A191465.P897057824933771268

`Δ[A002452(n)-A000051(n)]`
-/

namespace A191465.P897057824933771268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191465.P897057824933771268

namespace A191465

/-- `Δ[A002452(n)-A000051(n)]` -/
def P897057824933771268.Spec : Prop :=
  ∀ n, P897057824933771268.a n = A191465 n

end A191465

/-! ## A191465.P14839971898630105491

`Δ[A002452(n)-A000079(n)]`
-/

namespace A191465.P14839971898630105491
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191465.P14839971898630105491

namespace A191465

/-- `Δ[A002452(n)-A000079(n)]` -/
def P14839971898630105491.Spec : Prop :=
  ∀ n, P14839971898630105491.a n = A191465 n

end A191465

/-! ## A191465.P70400485982893164

`Δ[A002452(n)-A000225(n)]`
-/

namespace A191465.P70400485982893164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n - A000225 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191465.P70400485982893164

namespace A191465

/-- `Δ[A002452(n)-A000225(n)]` -/
def P70400485982893164.Spec : Prop :=
  ∀ n, P70400485982893164.a n = A191465 n

end A191465

/-! ## A191465.P13570494476372608624

`Δ[A002452(n)-A000918(n)]`
-/

namespace A191465.P13570494476372608624
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n - A000918 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191465.P13570494476372608624

namespace A191465

/-- `Δ[A002452(n)-A000918(n)]` -/
def P13570494476372608624.Spec : Prop :=
  ∀ n, P13570494476372608624.a n = A191465 n

end A191465

/-! ## A191465.P2183639227020855540

`Δ[A047854(n)-A000051(n)]`
-/

namespace A191465.P2183639227020855540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047854 n - A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191465.P2183639227020855540

namespace A191465

/-- `Δ[A047854(n)-A000051(n)]` -/
def P2183639227020855540.Spec : Prop :=
  ∀ n, P2183639227020855540.a n = A191465 n

end A191465

/-! ## A191465.P365920263602506950

`Δ[A047854(n)-A000079(n)]`
-/

namespace A191465.P365920263602506950
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047854 n - A000079 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191465.P365920263602506950

namespace A191465

/-- `Δ[A047854(n)-A000079(n)]` -/
def P365920263602506950.Spec : Prop :=
  ∀ n, P365920263602506950.a n = A191465 n

end A191465

/-! ## A191465.P16061542810790621631

`abs(A000244(n)²-A000079(n))`
-/

namespace A191465.P16061542810790621631
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n ^ 2 - A000079 n|

end

end A191465.P16061542810790621631

namespace A191465

/-- `abs(A000244(n)²-A000079(n))` -/
def P16061542810790621631.Spec : Prop :=
  ∀ n, P16061542810790621631.a n = A191465 n

end A191465

/-! ## A191465.P6953289950910469859

`abs(A000051(n)-A001019(n)-1)`
-/

namespace A191465.P6953289950910469859
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000051 n - A001019 n - 1|

end

end A191465.P6953289950910469859

namespace A191465

/-- `abs(A000051(n)-A001019(n)-1)` -/
def P6953289950910469859.Spec : Prop :=
  ∀ n, P6953289950910469859.a n = A191465 n

end A191465

/-! ## A191465.P3557190555762196054

`abs(A000244(2*n)-A000079(n))`
-/

namespace A191465.P3557190555762196054
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 (2 * n) - A000079 n|

end

end A191465.P3557190555762196054

namespace A191465

/-- `abs(A000244(2*n)-A000079(n))` -/
def P3557190555762196054.Spec : Prop :=
  ∀ n, P3557190555762196054.a n = A191465 n

end A191465

/-! ## A191465.P16336504925524120263

`abs(A000244(n)²-Δ[A000051(n)])`
-/

namespace A191465.P16336504925524120263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000051 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n ^ 2 - (f1 (n + 1) - f1 n)|

end

end A191465.P16336504925524120263

namespace A191465

/-- `abs(A000244(n)²-Δ[A000051(n)])` -/
def P16336504925524120263.Spec : Prop :=
  ∀ n, P16336504925524120263.a n = A191465 n

end A191465

/-! ## A191465.P18387524763648445525

`abs(A001019(n)-∑[A131577(n)]-1)`
-/

namespace A191465.P18387524763648445525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A131577 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A001019 n - ∑ j ∈ Finset.range (n + 1), f1 j - 1|

end

end A191465.P18387524763648445525

namespace A191465

/-- `abs(A001019(n)-∑[A131577(n)]-1)` -/
def P18387524763648445525.Spec : Prop :=
  ∀ n, P18387524763648445525.a n = A191465 n

end A191465

/-! ## A191465.P316678401715844820

`∑[A080923(2*n)-abs(A123344(n))]`
-/

namespace A191465.P316678401715844820
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080923 (2 * n) - |A123344 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191465.P316678401715844820

namespace A191465

/-- `∑[A080923(2*n)-abs(A123344(n))]` -/
def P316678401715844820.Spec : Prop :=
  ∀ n, P316678401715844820.a n = A191465 n

end A191465

/-!
# A191466: a(n) = 9^n - 5^n.

The programs for A191466, the canonical program `A191466.P15497266519023705501` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191466 has offset 0).

The definition of A191466 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-5^n` (program `A191466.P15497266519023705501`, by `A191466.P15497266519023705501.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191466.P15497266519023705501

`9^n-5^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191466

/-- `9^n-5^n` -/
def P15497266519023705501.Spec : Prop :=
  ∀ n, P15497266519023705501.a n = A191466 n

theorem P15497266519023705501.correct : P15497266519023705501.Spec := by
  intro n
  simp only [A191466]

end A191466

/-! ## A191466.P7006574179157125763

`xor(1, A155642(n))`
-/

namespace A191466.P7006574179157125763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155642 n)

end

end A191466.P7006574179157125763

namespace A191466

/-- `xor(1, A155642(n))` -/
def P7006574179157125763.Spec : Prop :=
  ∀ n, P7006574179157125763.a n = A191466 n

end A191466

/-! ## A191466.P14907863706261516842

`abs(A000351(n)-A001019(n))`
-/

namespace A191466.P14907863706261516842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A001019 n|

end

end A191466.P14907863706261516842

namespace A191466

/-- `abs(A000351(n)-A001019(n))` -/
def P14907863706261516842.Spec : Prop :=
  ∀ n, P14907863706261516842.a n = A191466 n

end A191466

/-! ## A191466.P2275281200707497885

`abs(A024050(n)-A024102(n))`
-/

namespace A191466.P2275281200707497885
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024050 n - A024102 n|

end

end A191466.P2275281200707497885

namespace A191466

/-- `abs(A024050(n)-A024102(n))` -/
def P2275281200707497885.Spec : Prop :=
  ∀ n, P2275281200707497885.a n = A191466 n

end A191466

/-! ## A191466.P11436476099562230507

`abs(A034474(n)-A062396(n))`
-/

namespace A191466.P11436476099562230507
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n - A062396 n|

end

end A191466.P11436476099562230507

namespace A191466

/-- `abs(A034474(n)-A062396(n))` -/
def P11436476099562230507.Spec : Prop :=
  ∀ n, P11436476099562230507.a n = A191466 n

end A191466

/-! ## A191466.P10956405277107690552

`abs(A074501(n)-A074505(n))`
-/

namespace A191466.P10956405277107690552
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074501 n - A074505 n|

end

end A191466.P10956405277107690552

namespace A191466

/-- `abs(A074501(n)-A074505(n))` -/
def P10956405277107690552.Spec : Prop :=
  ∀ n, P10956405277107690552.a n = A191466 n

end A191466

/-! ## A191466.P3812617627307442814

`abs(A074511(n)-A074515(n))`
-/

namespace A191466.P3812617627307442814
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074511 n - A074515 n|

end

end A191466.P3812617627307442814

namespace A191466

/-- `abs(A074511(n)-A074515(n))` -/
def P3812617627307442814.Spec : Prop :=
  ∀ n, P3812617627307442814.a n = A191466 n

end A191466

/-! ## A191466.P2015572038258255781

`abs(A074571(n)-A074578(n))`
-/

namespace A191466.P2015572038258255781
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074571 n - A074578 n|

end

end A191466.P2015572038258255781

namespace A191466

/-- `abs(A074571(n)-A074578(n))` -/
def P2015572038258255781.Spec : Prop :=
  ∀ n, P2015572038258255781.a n = A191466 n

end A191466

/-! ## A191466.P1264826872043718490

`abs(A155633(n)-A155647(n))`
-/

namespace A191466.P1264826872043718490
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155633 n - A155647 n|

end

end A191466.P1264826872043718490

namespace A191466

/-- `abs(A155633(n)-A155647(n))` -/
def P1264826872043718490.Spec : Prop :=
  ∀ n, P1264826872043718490.a n = A191466 n

end A191466

/-! ## A191466.P10132690273600091930

`∑[A055275(n)-A005054(n)]`
-/

namespace A191466.P10132690273600091930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055275 n - A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191466.P10132690273600091930

namespace A191466

/-- `∑[A055275(n)-A005054(n)]` -/
def P10132690273600091930.Spec : Prop :=
  ∀ n, P10132690273600091930.a n = A191466 n

end A191466

/-! ## A191466.P2597591044282574185

`Δ[A002452(n)-A003463(n)]`
-/

namespace A191466.P2597591044282574185
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002452 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191466.P2597591044282574185

namespace A191466

/-- `Δ[A002452(n)-A003463(n)]` -/
def P2597591044282574185.Spec : Prop :=
  ∀ n, P2597591044282574185.a n = A191466 n

end A191466

/-! ## A191466.P14540767805450765457

`2*(A081190(n)-A081188(n))`
-/

namespace A191466.P14540767805450765457
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A081190 n - A081188 n)

end

end A191466.P14540767805450765457

namespace A191466

/-- `2*(A081190(n)-A081188(n))` -/
def P14540767805450765457.Spec : Prop :=
  ∀ n, P14540767805450765457.a n = A191466 n

end A191466

/-! ## A191466.P1075099291635194614

`abs(A000244(n)²-A000351(n))`
-/

namespace A191466.P1075099291635194614
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000244 n ^ 2 - A000351 n|

end

end A191466.P1075099291635194614

namespace A191466

/-- `abs(A000244(n)²-A000351(n))` -/
def P1075099291635194614.Spec : Prop :=
  ∀ n, P1075099291635194614.a n = A191466 n

end A191466

/-! ## A191466.P10046877882365587489

`record[A227075(n)²-A227076(n)]`
-/

namespace A191466.P10046877882365587489
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A227075 n ^ 2 - A227076 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191466.P10046877882365587489

namespace A191466

/-- `record[A227075(n)²-A227076(n)]` -/
def P10046877882365587489.Spec : Prop :=
  ∀ n, P10046877882365587489.a n = A191466 n

end A191466

/-! ## A191466.P13939461200922288810

`2*(A000244(n)²-A081338(n))`
-/

namespace A191466.P13939461200922288810
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * (A000244 n ^ 2 - A081338 n)

end

end A191466.P13939461200922288810

namespace A191466

/-- `2*(A000244(n)²-A081338(n))` -/
def P13939461200922288810.Spec : Prop :=
  ∀ n, P13939461200922288810.a n = A191466 n

end A191466

/-!
# A191467: a(n) = 9^n - 7^n.

The programs for A191467, the canonical program `A191467.P7470050277093612819` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191467 has offset 0).

The definition of A191467 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `9^n-7^n` (program `A191467.P7470050277093612819`, by `A191467.P7470050277093612819.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191467.P7470050277093612819

`9^n-7^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191467

/-- `9^n-7^n` -/
def P7470050277093612819.Spec : Prop :=
  ∀ n, P7470050277093612819.a n = A191467 n

theorem P7470050277093612819.correct : P7470050277093612819.Spec := by
  intro n
  simp only [A191467]

end A191467

/-! ## A191467.P10050026878750611724

`2*A081202(n)`
-/

namespace A191467.P10050026878750611724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A081202 n

end

end A191467.P10050026878750611724

namespace A191467

/-- `2*A081202(n)` -/
def P10050026878750611724.Spec : Prop :=
  ∀ n, P10050026878750611724.a n = A191467 n

end A191467

/-! ## A191467.P5612771076379878346

`xor(1, A155660(n))`
-/

namespace A191467.P5612771076379878346
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (A155660 n)

end

end A191467.P5612771076379878346

namespace A191467

/-- `xor(1, A155660(n))` -/
def P5612771076379878346.Spec : Prop :=
  ∀ n, P5612771076379878346.a n = A191467 n

end A191467

/-! ## A191467.P9530279661793821912

`abs(A000420(n)-A001019(n))`
-/

namespace A191467.P9530279661793821912
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000420 n - A001019 n|

end

end A191467.P9530279661793821912

namespace A191467

/-- `abs(A000420(n)-A001019(n))` -/
def P9530279661793821912.Spec : Prop :=
  ∀ n, P9530279661793821912.a n = A191467 n

end A191467

/-! ## A191467.P5195745346235144150

`abs(A024076(n)-A024102(n))`
-/

namespace A191467.P5195745346235144150
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024076 n - A024102 n|

end

end A191467.P5195745346235144150

namespace A191467

/-- `abs(A024076(n)-A024102(n))` -/
def P5195745346235144150.Spec : Prop :=
  ∀ n, P5195745346235144150.a n = A191467 n

end A191467

/-! ## A191467.P14110429843608029547

`abs(A024077(n)-A024103(n))`
-/

namespace A191467.P14110429843608029547
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024077 n - A024103 n|

end

end A191467.P14110429843608029547

namespace A191467

/-- `abs(A024077(n)-A024103(n))` -/
def P14110429843608029547.Spec : Prop :=
  ∀ n, P14110429843608029547.a n = A191467 n

end A191467

/-! ## A191467.P14459700430602369286

`abs(A024078(n)-A024104(n))`
-/

namespace A191467.P14459700430602369286
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024078 n - A024104 n|

end

end A191467.P14459700430602369286

namespace A191467

/-- `abs(A024078(n)-A024104(n))` -/
def P14459700430602369286.Spec : Prop :=
  ∀ n, P14459700430602369286.a n = A191467 n

end A191467

/-! ## A191467.P3128990930052743917

`abs(A024079(n)-A024105(n))`
-/

namespace A191467.P3128990930052743917
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024079 n - A024105 n|

end

end A191467.P3128990930052743917

namespace A191467

/-- `abs(A024079(n)-A024105(n))` -/
def P3128990930052743917.Spec : Prop :=
  ∀ n, P3128990930052743917.a n = A191467 n

end A191467

/-! ## A191467.P6240321051074607112

`abs(A024080(n)-A024106(n))`
-/

namespace A191467.P6240321051074607112
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024080 n - A024106 n|

end

end A191467.P6240321051074607112

namespace A191467

/-- `abs(A024080(n)-A024106(n))` -/
def P6240321051074607112.Spec : Prop :=
  ∀ n, P6240321051074607112.a n = A191467 n

end A191467

/-! ## A191467.P5527121551823402050

`abs(A024081(n)-A024107(n))`
-/

namespace A191467.P5527121551823402050
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024081 n - A024107 n|

end

end A191467.P5527121551823402050

namespace A191467

/-- `abs(A024081(n)-A024107(n))` -/
def P5527121551823402050.Spec : Prop :=
  ∀ n, P5527121551823402050.a n = A191467 n

end A191467

/-! ## A191467.P12419748990687143019

`abs(A024084(n)-A024110(n))`
-/

namespace A191467.P12419748990687143019
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024084 n - A024110 n|

end

end A191467.P12419748990687143019

namespace A191467

/-- `abs(A024084(n)-A024110(n))` -/
def P12419748990687143019.Spec : Prop :=
  ∀ n, P12419748990687143019.a n = A191467 n

end A191467

/-! ## A191467.P5599755047304421474

`abs(A034491(n)-A062396(n))`
-/

namespace A191467.P5599755047304421474
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034491 n - A062396 n|

end

end A191467.P5599755047304421474

namespace A191467

/-- `abs(A034491(n)-A062396(n))` -/
def P5599755047304421474.Spec : Prop :=
  ∀ n, P5599755047304421474.a n = A191467 n

end A191467

/-! ## A191467.P9657388448638628090

`abs(A034513(n)-A074509(n))`
-/

namespace A191467.P9657388448638628090
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034513 n - A074509 n|

end

end A191467.P9657388448638628090

namespace A191467

/-- `abs(A034513(n)-A074509(n))` -/
def P9657388448638628090.Spec : Prop :=
  ∀ n, P9657388448638628090.a n = A191467 n

end A191467

/-! ## A191467.P8742060700639923067

`abs(A074513(n)-A074515(n))`
-/

namespace A191467.P8742060700639923067
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074513 n - A074515 n|

end

end A191467.P8742060700639923067

namespace A191467

/-- `abs(A074513(n)-A074515(n))` -/
def P8742060700639923067.Spec : Prop :=
  ∀ n, P8742060700639923067.a n = A191467 n

end A191467

/-! ## A191467.P4945627318087225179

`abs(A074520(n)-A074522(n))`
-/

namespace A191467.P4945627318087225179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074520 n - A074522 n|

end

end A191467.P4945627318087225179

namespace A191467

/-- `abs(A074520(n)-A074522(n))` -/
def P4945627318087225179.Spec : Prop :=
  ∀ n, P4945627318087225179.a n = A191467 n

end A191467

/-! ## A191467.P14824313147706364337

`abs(A074523(n)-A074525(n))`
-/

namespace A191467.P14824313147706364337
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074523 n - A074525 n|

end

end A191467.P14824313147706364337

namespace A191467

/-- `abs(A074523(n)-A074525(n))` -/
def P14824313147706364337.Spec : Prop :=
  ∀ n, P14824313147706364337.a n = A191467 n

end A191467

/-! ## A191467.P14811503461729835648

`abs(A074529(n)-A074531(n))`
-/

namespace A191467.P14811503461729835648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074529 n - A074531 n|

end

end A191467.P14811503461729835648

namespace A191467

/-- `abs(A074529(n)-A074531(n))` -/
def P14811503461729835648.Spec : Prop :=
  ∀ n, P14811503461729835648.a n = A191467 n

end A191467

/-! ## A191467.P13990339393092285092

`abs(A074538(n)-A074540(n))`
-/

namespace A191467.P13990339393092285092
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074538 n - A074540 n|

end

end A191467.P13990339393092285092

namespace A191467

/-- `abs(A074538(n)-A074540(n))` -/
def P13990339393092285092.Spec : Prop :=
  ∀ n, P13990339393092285092.a n = A191467 n

end A191467

/-! ## A191467.P16303647667946495802

`abs(A074541(n)-A074543(n))`
-/

namespace A191467.P16303647667946495802
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074541 n - A074543 n|

end

end A191467.P16303647667946495802

namespace A191467

/-- `abs(A074541(n)-A074543(n))` -/
def P16303647667946495802.Spec : Prop :=
  ∀ n, P16303647667946495802.a n = A191467 n

end A191467

/-!
# A191468: a(n) = 8^n - 5^n.

The programs for A191468, the canonical program `A191468.P13632726222667536043` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191468 has offset 0).

The definition of A191468 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `8^n-5^n` (program `A191468.P13632726222667536043`, by `A191468.P13632726222667536043.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A191468.P13632726222667536043

`8^n-5^n`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191468

/-- `8^n-5^n` -/
def P13632726222667536043.Spec : Prop :=
  ∀ n, P13632726222667536043.a n = A191468 n

theorem P13632726222667536043.correct : P13632726222667536043.Spec := by
  intro n
  simp only [A191468]

end A191468

/-! ## A191468.P10684463129930468588

`abs(1-A155641(n))`
-/

namespace A191468.P10684463129930468588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - A155641 n|

end

end A191468.P10684463129930468588

namespace A191468

/-- `abs(1-A155641(n))` -/
def P10684463129930468588.Spec : Prop :=
  ∀ n, P10684463129930468588.a n = A191468 n

end A191468

/-! ## A191468.P10427415244735232309

`and(-5^n, A000225(3*n))`
-/

namespace A191468.P10427415244735232309
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (-(5 ^ n : ℤ)) (A000225 (3 * n))

end

end A191468.P10427415244735232309

namespace A191468

/-- `and(-5^n, A000225(3*n))` -/
def P10427415244735232309.Spec : Prop :=
  ∀ n, P10427415244735232309.a n = A191468 n

end A191468

/-! ## A191468.P4343726316446446644

`abs(A000351(n)-A001018(n))`
-/

namespace A191468.P4343726316446446644
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A000351 n - A001018 n|

end

end A191468.P4343726316446446644

namespace A191468

/-- `abs(A000351(n)-A001018(n))` -/
def P4343726316446446644.Spec : Prop :=
  ∀ n, P4343726316446446644.a n = A191468 n

end A191468

/-! ## A191468.P1222463694985373996

`abs(A024050(n)-A024089(n))`
-/

namespace A191468.P1222463694985373996
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024050 n - A024089 n|

end

end A191468.P1222463694985373996

namespace A191468

/-- `abs(A024050(n)-A024089(n))` -/
def P1222463694985373996.Spec : Prop :=
  ∀ n, P1222463694985373996.a n = A191468 n

end A191468

/-! ## A191468.P6214094211580513014

`abs(A024054(n)-A024093(n))`
-/

namespace A191468.P6214094211580513014
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024054 n - A024093 n|

end

end A191468.P6214094211580513014

namespace A191468

/-- `abs(A024054(n)-A024093(n))` -/
def P6214094211580513014.Spec : Prop :=
  ∀ n, P6214094211580513014.a n = A191468 n

end A191468

/-! ## A191468.P11821472369232086486

`abs(A034474(n)-A062395(n))`
-/

namespace A191468.P11821472369232086486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A034474 n - A062395 n|

end

end A191468.P11821472369232086486

namespace A191468

/-- `abs(A034474(n)-A062395(n))` -/
def P11821472369232086486.Spec : Prop :=
  ∀ n, P11821472369232086486.a n = A191468 n

end A191468

/-! ## A191468.P3441563941044804270

`abs(A074501(n)-A074504(n))`
-/

namespace A191468.P3441563941044804270
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074501 n - A074504 n|

end

end A191468.P3441563941044804270

namespace A191468

/-- `abs(A074501(n)-A074504(n))` -/
def P3441563941044804270.Spec : Prop :=
  ∀ n, P3441563941044804270.a n = A191468 n

end A191468

/-! ## A191468.P10319797483625390047

`abs(A074507(n)-A074510(n))`
-/

namespace A191468.P10319797483625390047
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074507 n - A074510 n|

end

end A191468.P10319797483625390047

namespace A191468

/-- `abs(A074507(n)-A074510(n))` -/
def P10319797483625390047.Spec : Prop :=
  ∀ n, P10319797483625390047.a n = A191468 n

end A191468

/-! ## A191468.P10039934822854200679

`abs(A074511(n)-A074514(n))`
-/

namespace A191468.P10039934822854200679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074511 n - A074514 n|

end

end A191468.P10039934822854200679

namespace A191468

/-- `abs(A074511(n)-A074514(n))` -/
def P10039934822854200679.Spec : Prop :=
  ∀ n, P10039934822854200679.a n = A191468 n

end A191468

/-! ## A191468.P9605581142401407567

`abs(A074571(n)-A074577(n))`
-/

namespace A191468.P9605581142401407567
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A074571 n - A074577 n|

end

end A191468.P9605581142401407567

namespace A191468

/-- `abs(A074571(n)-A074577(n))` -/
def P9605581142401407567.Spec : Prop :=
  ∀ n, P9605581142401407567.a n = A191468 n

end A191468

/-! ## A191468.P3124208265567358960

`abs(A155633(n)-A155646(n))`
-/

namespace A191468.P3124208265567358960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A155633 n - A155646 n|

end

end A191468.P3124208265567358960

namespace A191468

/-- `abs(A155633(n)-A155646(n))` -/
def P3124208265567358960.Spec : Prop :=
  ∀ n, P3124208265567358960.a n = A191468 n

end A191468

/-! ## A191468.P11699648008487352377

`∑[A055274(n)-A005054(n)]`
-/

namespace A191468.P11699648008487352377
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055274 n - A005054 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A191468.P11699648008487352377

namespace A191468

/-- `∑[A055274(n)-A005054(n)]` -/
def P11699648008487352377.Spec : Prop :=
  ∀ n, P11699648008487352377.a n = A191468 n

end A191468

/-! ## A191468.P715425979932665210

`Δ[A023001(n)-A003463(n)]`
-/

namespace A191468.P715425979932665210
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191468.P715425979932665210

namespace A191468

/-- `Δ[A023001(n)-A003463(n)]` -/
def P715425979932665210.Spec : Prop :=
  ∀ n, P715425979932665210.a n = A191468 n

end A191468

/-! ## A191468.P15221101269391884024

`Δ[A047853(n)-A003463(n)]`
-/

namespace A191468.P15221101269391884024
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047853 n - A003463 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191468.P15221101269391884024

namespace A191468

/-- `Δ[A047853(n)-A003463(n)]` -/
def P15221101269391884024.Spec : Prop :=
  ∀ n, P15221101269391884024.a n = A191468 n

end A191468

/-! ## A191468.P1598386835758722507

`Δ[A023001(n)-A047850(n)]`
-/

namespace A191468.P1598386835758722507
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023001 n - A047850 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191468.P1598386835758722507

namespace A191468

/-- `Δ[A023001(n)-A047850(n)]` -/
def P1598386835758722507.Spec : Prop :=
  ∀ n, P1598386835758722507.a n = A191468 n

end A191468

/-! ## A191468.P11621350064449351025

`A074624(n)%A074618(n)`
-/

namespace A191468.P11621350064449351025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A074624 n) (A074618 n)

end

end A191468.P11621350064449351025

namespace A191468

/-- `A074624(n)%A074618(n)` -/
def P11621350064449351025.Spec : Prop :=
  ∀ n, P11621350064449351025.a n = A191468 n

end A191468

/-!
# A191470: E.g.f (1+arcsin(x))^arcsin(x).

The programs for A191470, there is no canonical definition to state claims against.
-/

/-! ## A191470.P10128153418666430573

`n*(A182857(A308760(or(1, n)))-a(n-1))` with `a(0)=1`
-/

namespace A191470.P10128153418666430573
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  (n : ℤ) * (A182857 (A308760 (Nat.lor 1 n)).toNat - a (n - 1))

end

end A191470.P10128153418666430573

/-! ## A191470.P9876159448403715680

`A056885(A000142(n))+A009125(n)`
-/

namespace A191470.P9876159448403715680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056885 (A000142 n).toNat + A009125 n

end

end A191470.P9876159448403715680

/-!
# A191472: a(n) = 2*prime(n+2) - prime(n+1) - prime(n).

The programs for A191472, the canonical program `A191472.P13543047471222290453` is in `Seq.B003.C002`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191472 has offset 1).

The definition of A191472 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A191472.P17247353186290927196

`A031131(n+1)+A001223(n+2)`
-/

namespace A191472.P17247353186290927196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) + A001223 (n + 2)

end

end A191472.P17247353186290927196

namespace A191472

/-- `A031131(n+1)+A001223(n+2)` -/
def P17247353186290927196.Spec : Prop :=
  ∀ n, P17247353186290927196.a n = A191472 (n + 1)

theorem P17247353186290927196.correct : P17247353186290927196.Spec := by
  intro n
  simp only [A191472, Nat.add_sub_cancel, A191472.P17247353186290927196.a, A191472.P13543047471222290453.a, A001043, A001043.P18269783162673735460.a, A001223, A001223.P5083310856331133973.a, A031131, A031131.P2453725465626413076.a, A096379, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191472

/-! ## A191472.P17106369667680185307

`A215848(n+1)-A096379(n+1)`
-/

namespace A191472.P17106369667680185307
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A215848 (n + 1) - A096379 (n + 1)

end

end A191472.P17106369667680185307

namespace A191472

/-- `A215848(n+1)-A096379(n+1)` -/
def P17106369667680185307.Spec : Prop :=
  ∀ n, P17106369667680185307.a n = A191472 (n + 1)

theorem P17106369667680185307.correct : P17106369667680185307.Spec := by
  intro n
  simp only [A191472, Nat.add_sub_cancel, A191472.P17106369667680185307.a, A191472.P13543047471222290453.a, A001043, A001043.P18269783162673735460.a, A096379, A096379.P11420595779051591420.a, A215848, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191472

/-! ## A191472.P11939672540210746370

`A031131(n+1)+2*A028334(n+2)`
-/

namespace A191472.P11939672540210746370
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A031131 (n + 1) + 2 * A028334 (n + 2)

end

end A191472.P11939672540210746370

namespace A191472

/-- `A031131(n+1)+2*A028334(n+2)` -/
def P11939672540210746370.Spec : Prop :=
  ∀ n, P11939672540210746370.a n = A191472 (n + 1)

end A191472

/-! ## A191472.P13543047471222290453

`A001043(n+1)-2*A096379(n+1)`

The canonical program, it is in `Seq.B003.C002`.
-/

namespace A191472

/-- `A001043(n+1)-2*A096379(n+1)` -/
def P13543047471222290453.Spec : Prop :=
  ∀ n, P13543047471222290453.a n = A191472 (n + 1)

theorem P13543047471222290453.correct : P13543047471222290453.Spec := by
  intro n
  simp only [A191472, Nat.add_sub_cancel]

end A191472

/-! ## A191472.P13425123182127338701

`2*A215848(n+1)-A001043(n+1)`
-/

namespace A191472.P13425123182127338701
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A215848 (n + 1) - A001043 (n + 1)

end

end A191472.P13425123182127338701

namespace A191472

/-- `2*A215848(n+1)-A001043(n+1)` -/
def P13425123182127338701.Spec : Prop :=
  ∀ n, P13425123182127338701.a n = A191472 (n + 1)

theorem P13425123182127338701.correct : P13425123182127338701.Spec := by
  intro n
  simp only [A191472, Nat.add_sub_cancel, A191472.P13425123182127338701.a, A191472.P13543047471222290453.a, A001043, A001043.P18269783162673735460.a, A096379, A096379.P11420595779051591420.a, A215848, A215848.P17068717743202425727.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191472

/-! ## A191472.P11591225800896462263

`A001223(n+2)+A001223(n+1)+A001223(n+2)`
-/

namespace A191472.P11591225800896462263
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) + (A001223 (n + 1) + A001223 (n + 2))

end

end A191472.P11591225800896462263

namespace A191472

/-- `A001223(n+2)+A001223(n+1)+A001223(n+2)` -/
def P11591225800896462263.Spec : Prop :=
  ∀ n, P11591225800896462263.a n = A191472 (n + 1)

theorem P11591225800896462263.correct : P11591225800896462263.Spec := by
  intro n
  simp only [A191472, Nat.add_sub_cancel, A191472.P11591225800896462263.a, A191472.P13543047471222290453.a, A001043, A001043.P18269783162673735460.a, A001223, A001223.P5083310856331133973.a, A096379, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A046933, A046933.P9479947770746769512.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191472

/-! ## A191472.P8876974632893617555

`Δ[A364411(n+1)]`
-/

namespace A191472.P8876974632893617555
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191472.P8876974632893617555

namespace A191472

/-- `Δ[A364411(n+1)]` -/
def P8876974632893617555.Spec : Prop :=
  ∀ n, P8876974632893617555.a n = A191472 (n + 1)

end A191472

/-! ## A191472.P14853019749926460544

`A075527(n+1)+A001223(n+2)`
-/

namespace A191472.P14853019749926460544
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (n + 1) + A001223 (n + 2)

end

end A191472.P14853019749926460544

namespace A191472

/-- `A075527(n+1)+A001223(n+2)` -/
def P14853019749926460544.Spec : Prop :=
  ∀ n, P14853019749926460544.a n = A191472 (n + 1)

end A191472

/-! ## A191472.P2649062868646600563

`A065091(n+2)-A096379(n+1)`
-/

namespace A191472.P2649062868646600563
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 2) - A096379 (n + 1)

end

end A191472.P2649062868646600563

namespace A191472

/-- `A065091(n+2)-A096379(n+1)` -/
def P2649062868646600563.Spec : Prop :=
  ∀ n, P2649062868646600563.a n = A191472 (n + 1)

theorem P2649062868646600563.correct : P2649062868646600563.Spec := by
  intro n
  simp only [A191472, Nat.add_sub_cancel, A191472.P2649062868646600563.a, A191472.P13543047471222290453.a, A001043, A001043.P18269783162673735460.a, A065091, A065091.P6971844946592549357.a, A096379, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191472

/-! ## A191472.P17503765772499137964

`A210497(n+2)-A000040(n+1)`
-/

namespace A191472.P17503765772499137964
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 2) - A000040 (n + 1)

end

end A191472.P17503765772499137964

namespace A191472

/-- `A210497(n+2)-A000040(n+1)` -/
def P17503765772499137964.Spec : Prop :=
  ∀ n, P17503765772499137964.a n = A191472 (n + 1)

theorem P17503765772499137964.correct : P17503765772499137964.Spec := by
  intro n
  simp only [A191472, Nat.add_sub_cancel, A191472.P17503765772499137964.a, A191472.P13543047471222290453.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A096379, A096379.P11420595779051591420.a, A210497, A210497.P15561998313545519789.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191472

/-! ## A191472.P9892293739513362816

`A211280(n+2)-A000040(n+1)`
-/

namespace A191472.P9892293739513362816
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211280 (n + 2) - A000040 (n + 1)

end

end A191472.P9892293739513362816

namespace A191472

/-- `A211280(n+2)-A000040(n+1)` -/
def P9892293739513362816.Spec : Prop :=
  ∀ n, P9892293739513362816.a n = A191472 (n + 1)

end A191472

/-! ## A191472.P7944071009350819924

`A364411(n+2)-A364411(n+1)`
-/

namespace A191472.P7944071009350819924
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A364411 (n + 2) - A364411 (n + 1)

end

end A191472.P7944071009350819924

namespace A191472

/-- `A364411(n+2)-A364411(n+1)` -/
def P7944071009350819924.Spec : Prop :=
  ∀ n, P7944071009350819924.a n = A191472 (n + 1)

end A191472

/-! ## A191472.P15577516002273012682

`Δ[A065091(n+1)+A001043(n+1)]`
-/

namespace A191472.P15577516002273012682
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A065091 (n + 1) + A001043 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191472.P15577516002273012682

namespace A191472

/-- `Δ[A065091(n+1)+A001043(n+1)]` -/
def P15577516002273012682.Spec : Prop :=
  ∀ n, P15577516002273012682.a n = A191472 (n + 1)

theorem P15577516002273012682.correct : P15577516002273012682.Spec := by
  intro n
  simp only [A191472, Nat.add_sub_cancel, A191472.P15577516002273012682.f1, A191472.P15577516002273012682.a, A191472.P13543047471222290453.a, A001043, A001043.P18269783162673735460.a, A065091, A065091.P6971844946592549357.a, A096379, A096379.P11420595779051591420.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191472

/-! ## A191472.P2596367335260054038

`Δ[A210497(n+1)+A100484(n+1)]`
-/

namespace A191472.P2596367335260054038
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) + A100484 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191472.P2596367335260054038

namespace A191472

/-- `Δ[A210497(n+1)+A100484(n+1)]` -/
def P2596367335260054038.Spec : Prop :=
  ∀ n, P2596367335260054038.a n = A191472 (n + 1)

theorem P2596367335260054038.correct : P2596367335260054038.Spec := by
  intro n
  simp only [A191472, Nat.add_sub_cancel, A191472.P2596367335260054038.f1, A191472.P2596367335260054038.a, A191472.P13543047471222290453.a, A001043, A001043.P18269783162673735460.a, A096379, A096379.P11420595779051591420.a, A100484, A100484.P9678625670825099636.a, A210497, A210497.P15561998313545519789.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191472

/-! ## A191472.P11903919833063934081

`A001223(n+2)+A046930(n+2)+2`
-/

namespace A191472.P11903919833063934081
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001223 (n + 2) + (A046930 (n + 2) + 2)

end

end A191472.P11903919833063934081

namespace A191472

/-- `A001223(n+2)+A046930(n+2)+2` -/
def P11903919833063934081.Spec : Prop :=
  ∀ n, P11903919833063934081.a n = A191472 (n + 1)

end A191472

/-! ## A191472.P13813452830095240680

`A054541(n+2)+A004277(A001223(n+2))`
-/

namespace A191472.P13813452830095240680
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054541 (n + 2) + A004277 (A001223 (n + 2)).toNat

end

end A191472.P13813452830095240680

namespace A191472

/-- `A054541(n+2)+A004277(A001223(n+2))` -/
def P13813452830095240680.Spec : Prop :=
  ∀ n, P13813452830095240680.a n = A191472 (n + 1)

end A191472

/-! ## A191472.P16891906744669486519

`A001043(n+2)-(A062234(n+2)+A000040(n+1))`
-/

namespace A191472.P16891906744669486519
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001043 (n + 2) - (A062234 (n + 2) + A000040 (n + 1))

end

end A191472.P16891906744669486519

namespace A191472

/-- `A001043(n+2)-(A062234(n+2)+A000040(n+1))` -/
def P16891906744669486519.Spec : Prop :=
  ∀ n, P16891906744669486519.a n = A191472 (n + 1)

theorem P16891906744669486519.correct : P16891906744669486519.Spec := by
  intro n
  simp only [A191472, Nat.add_sub_cancel, A191472.P16891906744669486519.a, A191472.P13543047471222290453.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A001043, A001043.P18269783162673735460.a, A062234, A062234.P8592873382335253705.a, A096379, A096379.P11420595779051591420.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191472

/-! ## A191472.P13946036897688860280

`A210497(n+1)+A210497(n+2)-A100484(n+2)`
-/

namespace A191472.P13946036897688860280
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A210497 (n + 1) + (A210497 (n + 2) - A100484 (n + 2))

end

end A191472.P13946036897688860280

namespace A191472

/-- `A210497(n+1)+A210497(n+2)-A100484(n+2)` -/
def P13946036897688860280.Spec : Prop :=
  ∀ n, P13946036897688860280.a n = A191472 (n + 1)

theorem P13946036897688860280.correct : P13946036897688860280.Spec := by
  intro n
  simp only [A191472, Nat.add_sub_cancel, A191472.P13946036897688860280.a, A191472.P13543047471222290453.a, A001043, A001043.P18269783162673735460.a, A096379, A096379.P11420595779051591420.a, A100484, A100484.P9678625670825099636.a, A210497, A210497.P15561998313545519789.a, A000040, A000040.P3917089138138407011.f1, A000040.P3917089138138407011.a, A062234, A062234.P8592873382335253705.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A191472

/-! ## A191472.P1079120035354182735

`A075526(n+2)+A031131(n+1)`
-/

namespace A191472.P1079120035354182735
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075526 (n + 2) + A031131 (n + 1)

end

end A191472.P1079120035354182735

namespace A191472

/-- `A075526(n+2)+A031131(n+1)` -/
def P1079120035354182735.Spec : Prop :=
  ∀ n, P1079120035354182735.a n = A191472 (n + 1)

end A191472

/-! ## A191472.P2635938542834312091

`A075527(n+1)+A075526(n+2)`
-/

namespace A191472.P2635938542834312091
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A075527 (n + 1) + A075526 (n + 2)

end

end A191472.P2635938542834312091

namespace A191472

/-- `A075527(n+1)+A075526(n+2)` -/
def P2635938542834312091.Spec : Prop :=
  ∀ n, P2635938542834312091.a n = A191472 (n + 1)

end A191472

/-!
# A191473: Let a(1) = 3. For n > 1, a(n) is the smallest prime p > a(n-1) such that q = (a(n-1) + p)/4 is prime.

The programs for A191473, there is no canonical definition to state claims against.
-/

/-! ## A191473.P17585369763598580849

`record[p?[A002487(A212008(n))]]`
-/

namespace A191473.P17585369763598580849
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002487 (A212008 n).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (SequenceMachineLib.nth (fun j => (f2 j).toNat.Prime) n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191473.P17585369763598580849

/-! ## A191473.P9454380983876053276

`record[A027748(A191429(n+2))]`
-/

namespace A191473.P9454380983876053276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027748 (A191429 (n + 2)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191473.P9454380983876053276

/-!
# A191477: Number of n X n symmetric binary matrices with each 1 adjacent to no more than 1 king-move neighboring 1.

The programs for A191477, there is no canonical definition to state claims against.
-/

/-! ## A191477.P940690343483996749

`A139218(A027384(n))+char[2]`
-/

namespace A191477.P940690343483996749
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139218 (A027384 n).toNat + ((if ∃ j, f1 j = n then 1 else 0 : ℕ) : ℤ)

end

end A191477.P940690343483996749

/-!
# A191478: Number of n X n symmetric binary matrices with each 1 adjacent to no more than 2 king-move neighboring 1s.

The programs for A191478, there is no canonical definition to state claims against.
-/

/-! ## A191478.P17917485885567446939

`A187210(A002577(n))+A002258(n+1)`
-/

namespace A191478.P17917485885567446939
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A187210 (A002577 n).toNat + A002258 (n + 1)

end

end A191478.P17917485885567446939

/-!
# A191483: Even discriminants of imaginary quadratic fields, negated.

The programs for A191483, the canonical program `A191483.P18427046693413308703` is in `Seq.B002.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191483 has offset 1).

The definition of A191483 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A089269, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A191483.P18427046693413308703

`4*A089269(n+1)`

The canonical program, it is in `Seq.B002.C003`.
-/

namespace A191483

/-- `4*A089269(n+1)` -/
def P18427046693413308703.Spec : Prop :=
  ∀ n, P18427046693413308703.a n = A191483 (n + 1)

theorem P18427046693413308703.correct : P18427046693413308703.Spec := by
  intro n
  simp only [A191483, Nat.add_sub_cancel]

end A191483

/-! ## A191483.P8271357859800709266

`4*record[A007947(and(n, n+2)+1)]`
-/

namespace A191483.P8271357859800709266
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (Nat.land n (n + 2) + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191483.P8271357859800709266

namespace A191483

/-- `4*record[A007947(and(n, n+2)+1)]` -/
def P8271357859800709266.Spec : Prop :=
  ∀ n, P8271357859800709266.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P6172421869249649001

`4*record[∏{p}[a(n-2)+4, #]]` with `a(0)=1, a(1)=2`
-/

namespace A191483.P6172421869249649001
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [1, 2] fun n f2 =>
  f2 (n - 2) + 4

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ p ∈ Nat.primeFactors (f2 n), p

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191483.P6172421869249649001

namespace A191483

/-- `4*record[∏{p}[a(n-2)+4, #]]` -/
def P6172421869249649001.Spec : Prop :=
  ∀ n, (P6172421869249649001.a n : ℤ) = A191483 (n + 1)

end A191483

/-! ## A191483.P702056172121827953

`record[abs(A033197(n+1))]`
-/

namespace A191483.P702056172121827953
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A033197 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191483.P702056172121827953

namespace A191483

/-- `record[abs(A033197(n+1))]` -/
def P702056172121827953.Spec : Prop :=
  ∀ n, P702056172121827953.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P17102373720488858063

`record[A204993(n+1)]`
-/

namespace A191483.P17102373720488858063
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A204993 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191483.P17102373720488858063

namespace A191483

/-- `record[A204993(n+1)]` -/
def P17102373720488858063.Spec : Prop :=
  ∀ n, P17102373720488858063.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P11596556807878280329

`A008574(A089269(n+1))`
-/

namespace A191483.P11596556807878280329
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 (A089269 (n + 1)).toNat

end

end A191483.P11596556807878280329

namespace A191483

/-- `A008574(A089269(n+1))` -/
def P11596556807878280329.Spec : Prop :=
  ∀ n, P11596556807878280329.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P11798894224636611237

`record[A007947(2*(n+1))*A176895(n+2)]`
-/

namespace A191483.P11798894224636611237
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007947 (2 * (n + 1)) * A176895 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191483.P11798894224636611237

namespace A191483

/-- `record[A007947(2*(n+1))*A176895(n+2)]` -/
def P11798894224636611237.Spec : Prop :=
  ∀ n, P11798894224636611237.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P9124714799138369428

`∩[2*n, A003657(n+1)]`
-/

namespace A191483.P9124714799138369428
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = x) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191483.P9124714799138369428

namespace A191483

/-- `∩[2*n, A003657(n+1)]` -/
def P9124714799138369428.Spec : Prop :=
  ∀ n, (P9124714799138369428.a n : ℤ) = A191483 (n + 1)

end A191483

/-! ## A191483.P15598827825797632160

`filter[A003657(n+1), A087049(#)]`
-/

namespace A191483.P15598827825797632160
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A087049 (f1 j).toNat = 1) n)

end

end A191483.P15598827825797632160

namespace A191483

/-- `filter[A003657(n+1), A087049(#)]` -/
def P15598827825797632160.Spec : Prop :=
  ∀ n, P15598827825797632160.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P9008800481946077521

`filter[A003657(n+1), A121262(#)]`
-/

namespace A191483.P9008800481946077521
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A121262 (f1 j).toNat = 1) n)

end

end A191483.P9008800481946077521

namespace A191483

/-- `filter[A003657(n+1), A121262(#)]` -/
def P9008800481946077521.Spec : Prop :=
  ∀ n, P9008800481946077521.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P16097729969594397660

`filter[A003657(n+1), A319710(#)]`
-/

namespace A191483.P16097729969594397660
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A319710 (f1 j).toNat = 1) n)

end

end A191483.P16097729969594397660

namespace A191483

/-- `filter[A003657(n+1), A319710(#)]` -/
def P16097729969594397660.Spec : Prop :=
  ∀ n, P16097729969594397660.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P11836552896791735403

`filter[A003657(n+1), A342023(#)]`
-/

namespace A191483.P11836552896791735403
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A342023 (f1 j).toNat = 1) n)

end

end A191483.P11836552896791735403

namespace A191483

/-- `filter[A003657(n+1), A342023(#)]` -/
def P11836552896791735403.Spec : Prop :=
  ∀ n, P11836552896791735403.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P12907340172457673156

`filter[A003657(n+1), A354034(#)]`
-/

namespace A191483.P12907340172457673156
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A354034 (f1 j).toNat = 1) n)

end

end A191483.P12907340172457673156

namespace A191483

/-- `filter[A003657(n+1), A354034(#)]` -/
def P12907340172457673156.Spec : Prop :=
  ∀ n, P12907340172457673156.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P2576677532883626672

`filter[A003657(n+1), A359466(#)]`
-/

namespace A191483.P2576677532883626672
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359466 (f1 j).toNat = 1) n)

end

end A191483.P2576677532883626672

namespace A191483

/-- `filter[A003657(n+1), A359466(#)]` -/
def P2576677532883626672.Spec : Prop :=
  ∀ n, P2576677532883626672.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P18430303817802916588

`filter[A003657(n+1), A359469(#)]`
-/

namespace A191483.P18430303817802916588
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => A359469 (f1 j).toNat = 1) n)

end

end A191483.P18430303817802916588

namespace A191483

/-- `filter[A003657(n+1), A359469(#)]` -/
def P18430303817802916588.Spec : Prop :=
  ∀ n, P18430303817802916588.a n = A191483 (n + 1)

end A191483

/-! ## A191483.P18082420923213461267

`∩[A003657(n+1), A008574(n)]`
-/

namespace A191483.P18082420923213461267
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008574 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191483.P18082420923213461267

namespace A191483

/-- `∩[A003657(n+1), A008574(n)]` -/
def P18082420923213461267.Spec : Prop :=
  ∀ n, (P18082420923213461267.a n : ℤ) = A191483 (n + 1)

end A191483

/-! ## A191483.P11245822927469922213

`∩[A003657(n+1), A008586(n)]`
-/

namespace A191483.P11245822927469922213
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008586 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191483.P11245822927469922213

namespace A191483

/-- `∩[A003657(n+1), A008586(n)]` -/
def P11245822927469922213.Spec : Prop :=
  ∀ n, (P11245822927469922213.a n : ℤ) = A191483 (n + 1)

end A191483

/-! ## A191483.P15399752047326459715

`∩[A003657(n+1), A004767(n)+1]`
-/

namespace A191483.P15399752047326459715
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003657 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004767 n + 1

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191483.P15399752047326459715

namespace A191483

/-- `∩[A003657(n+1), A004767(n)+1]` -/
def P15399752047326459715.Spec : Prop :=
  ∀ n, (P15399752047326459715.a n : ℤ) = A191483 (n + 1)

end A191483

/-!
# A191484: Number of compositions of even natural numbers into 5 parts <= n.

The programs for A191484, the canonical program `A191484.P604307642109149752` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191484 has offset 0).

The definition of A191484 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191484.P604307642109149752

`((n+1)^5+(1+(-1)^n)/2)/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191484

/-- `((n+1)^5+(1+(-1)^n)/2)/2` -/
def P604307642109149752.Spec : Prop :=
  ∀ n, P604307642109149752.a n = (A191484 n : ℚ)

end A191484

/-! ## A191484.P8802273428432614068

`round(cosh(5*log(n+1)))`
-/

namespace A191484.P8802273428432614068
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (5 * Real.log (n + 1 : ℝ)))

end

end A191484.P8802273428432614068

namespace A191484

/-- `round(cosh(5*log(n+1)))` -/
def P8802273428432614068.Spec : Prop :=
  ∀ n, P8802273428432614068.a n = A191484 n

end A191484

/-! ## A191484.P9431913771259134138

`round(C(n+1, n)^5/2)`
-/

namespace A191484.P9431913771259134138
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((Nat.choose (n + 1) n ^ 5 : ℚ) / 2)

end

end A191484.P9431913771259134138

namespace A191484

/-- `round(C(n+1, n)^5/2)` -/
def P9431913771259134138.Spec : Prop :=
  ∀ n, P9431913771259134138.a n = A191484 n

end A191484

/-! ## A191484.P7187209638669479699

`round((n+1)^5/gcd(2, 2*n))`
-/

namespace A191484.P7187209638669479699
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1) ^ 5 : ℚ) / (Nat.gcd 2 (2 * n) : ℚ))

end

end A191484.P7187209638669479699

namespace A191484

/-- `round((n+1)^5/gcd(2, 2*n))` -/
def P7187209638669479699.Spec : Prop :=
  ∀ n, P7187209638669479699.a n = A191484 n

end A191484

/-! ## A191484.P8792840042812298589

`round((A258807(n+1)+1)/2)`
-/

namespace A191484.P8792840042812298589
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A258807 (n + 1) + 1 : ℚ) / 2)

end

end A191484.P8792840042812298589

namespace A191484

/-- `round((A258807(n+1)+1)/2)` -/
def P8792840042812298589.Spec : Prop :=
  ∀ n, P8792840042812298589.a n = A191484 n

end A191484

/-! ## A191484.P13712968490804611216

`floor(A167963(n+1)/(n+1))`
-/

namespace A191484.P13712968490804611216
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A167963 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A191484.P13712968490804611216

namespace A191484

/-- `floor(A167963(n+1)/(n+1))` -/
def P13712968490804611216.Spec : Prop :=
  ∀ n, P13712968490804611216.a n = A191484 n

end A191484

/-! ## A191484.P12620745154170437920

`A191902(n)+A059841(n)`
-/

namespace A191484.P12620745154170437920
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191902 n + A059841 n

end

end A191484.P12620745154170437920

namespace A191484

/-- `A191902(n)+A059841(n)` -/
def P12620745154170437920.Spec : Prop :=
  ∀ n, P12620745154170437920.a n = A191484 n

end A191484

/-! ## A191484.P17630994566306424327

`A191902(n)+A056594(n)²`
-/

namespace A191484.P17630994566306424327
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191902 n + A056594 n ^ 2

end

end A191484.P17630994566306424327

namespace A191484

/-- `A191902(n)+A056594(n)²` -/
def P17630994566306424327.Spec : Prop :=
  ∀ n, P17630994566306424327.a n = A191484 n

end A191484

/-! ## A191484.P12881432787873474613

`A191494(n)-A292045(n+1)`
-/

namespace A191484.P12881432787873474613
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191494 n - A292045 (n + 1)

end

end A191484.P12881432787873474613

namespace A191484

/-- `A191494(n)-A292045(n+1)` -/
def P12881432787873474613.Spec : Prop :=
  ∀ n, P12881432787873474613.a n = A191484 n

end A191484

/-! ## A191484.P11502729657634360498

`A372751(n+1)-A111746(n)`
-/

namespace A191484.P11502729657634360498
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A372751 (n + 1) - A111746 n

end

end A191484.P11502729657634360498

namespace A191484

/-- `A372751(n+1)-A111746(n)` -/
def P11502729657634360498.Spec : Prop :=
  ∀ n, P11502729657634360498.a n = A191484 n

end A191484

/-! ## A191484.P18022410752437539310

`A109613(n)+A191902(n)-n`
-/

namespace A191484.P18022410752437539310
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109613 n + (A191902 n - (n : ℤ))

end

end A191484.P18022410752437539310

namespace A191484

/-- `A109613(n)+A191902(n)-n` -/
def P18022410752437539310.Spec : Prop :=
  ∀ n, P18022410752437539310.a n = A191484 n

end A191484

/-! ## A191484.P983721960604606692

`A059841(n)+ceil(A258807(n+1)/2)`
-/

namespace A191484.P983721960604606692
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059841 n + ⌈(A258807 (n + 1) : ℚ) / 2⌉

end

end A191484.P983721960604606692

namespace A191484

/-- `A059841(n)+ceil(A258807(n+1)/2)` -/
def P983721960604606692.Spec : Prop :=
  ∀ n, P983721960604606692.a n = A191484 n

end A191484

/-! ## A191484.P7192008880879687612

`A191494(n)+A191902(n)-A191900(n)`
-/

namespace A191484.P7192008880879687612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191494 n + (A191902 n - A191900 n)

end

end A191484.P7192008880879687612

namespace A191484

/-- `A191494(n)+A191902(n)-A191900(n)` -/
def P7192008880879687612.Spec : Prop :=
  ∀ n, P7192008880879687612.a n = A191484 n

end A191484

/-! ## A191484.P13380834721784831518

`round(Δ[A000539(n)/2])`
-/

namespace A191484.P13380834721784831518
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000539 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A191484.P13380834721784831518

namespace A191484

/-- `round(Δ[A000539(n)/2])` -/
def P13380834721784831518.Spec : Prop :=
  ∀ n, P13380834721784831518.a n = A191484 n

end A191484

/-! ## A191484.P2051981673563819931

`A274325(n+1)+A008619(n)-A008619(n+1)`
-/

namespace A191484.P2051981673563819931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A274325 (n + 1) + (A008619 n - A008619 (n + 1))

end

end A191484.P2051981673563819931

namespace A191484

/-- `A274325(n+1)+A008619(n)-A008619(n+1)` -/
def P2051981673563819931.Spec : Prop :=
  ∀ n, P2051981673563819931.a n = A191484 n

end A191484

/-! ## A191484.P5203858646346898072

`A008621(2*n)+A021003(n+1)-(n+1)`
-/

namespace A191484.P5203858646346898072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008621 (2 * n) + (A021003 (n + 1) - (n + 1 : ℤ))

end

end A191484.P5203858646346898072

namespace A191484

/-- `A008621(2*n)+A021003(n+1)-(n+1)` -/
def P5203858646346898072.Spec : Prop :=
  ∀ n, P5203858646346898072.a n = A191484 n

end A191484

/-!
# A191485: Numbers n=k^2-k+1 such that 2^k == 1 (mod n).

The programs for A191485, there is no canonical definition to state claims against.
-/

/-! ## A191485.P12264499765577883553

`record[gcd(∑[2*n]+1, ∑[2^n])]`
-/

namespace A191485.P12264499765577883553
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.gcd (∑ j ∈ Finset.range (n + 1), f2 j + 1) (∑ j ∈ Finset.range (n + 1), f3 j)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191485.P12264499765577883553

/-! ## A191485.P5638199986810513225

`A219793(or(2*n, A338678(n)))`
-/

namespace A191485.P5638199986810513225
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A219793 (Int.lor (2 * n : ℤ) (A338678 n)).toNat

end

end A191485.P5638199986810513225

/-!
# A191486: Squares using only the prime digits (2,3,5,7).

The programs for A191486, there is no canonical definition to state claims against.
-/

/-! ## A191486.P13360977403591511584

`A275971(n+1)²`
-/

namespace A191486.P13360977403591511584
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275971 (n + 1) ^ 2

end

end A191486.P13360977403591511584

/-! ## A191486.P9378835368043839884

`A275971(n+1)^A056619(2*n+1)`
-/

namespace A191486.P9378835368043839884
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275971 (n + 1) : ℚ) ^ (A056619 (2 * n + 1) : ℤ)

end

end A191486.P9378835368043839884

/-! ## A191486.P10360891363218357142

`A275971(n+1)^A000005(A275940(n+1))`
-/

namespace A191486.P10360891363218357142
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275971 (n + 1) : ℚ) ^ (A000005 (A275940 (n + 1)).toNat : ℤ)

end

end A191486.P10360891363218357142

/-! ## A191486.P10633630158303521332

`A275971(n+1)^A000005(A275968(n+1))`
-/

namespace A191486.P10633630158303521332
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275971 (n + 1) : ℚ) ^ (A000005 (A275968 (n + 1)).toNat : ℤ)

end

end A191486.P10633630158303521332

/-! ## A191486.P6133177218011896062

`A275971(A004273(n+1)-n)*A275971(n+1)`
-/

namespace A191486.P6133177218011896062
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275971 (A004273 (n + 1) - (n : ℤ)).toNat * A275971 (n + 1)

end

end A191486.P6133177218011896062

/-! ## A191486.P1674995204860563419

`A275971(A000007(n+1)+n+1)*A275971(n+1)`
-/

namespace A191486.P1674995204860563419
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275971 (A000007 (n + 1) + (n + 1 : ℤ)).toNat * A275971 (n + 1)

end

end A191486.P1674995204860563419

/-! ## A191486.P3731021147972220850

`A275971(n+1)^A000005(eq[n, A000010(n+1)]+1)`
-/

namespace A191486.P3731021147972220850
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A275971 (n + 1) : ℚ) ^ (A000005 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1) : ℤ)

end

end A191486.P3731021147972220850

/-! ## A191486.P2410495390109309166

`A275971(A002024(∑[n+1]))*A275971(n+1)`
-/

namespace A191486.P2410495390109309166
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275971 (A002024 (∑ j ∈ Finset.range (n + 1), f1 j)).toNat * A275971 (n + 1)

end

end A191486.P2410495390109309166

/-! ## A191486.P9053069814489029708

`∩[A077437(n+1), A083806(n+1)]`
-/

namespace A191486.P9053069814489029708
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077437 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191486.P9053069814489029708

/-! ## A191486.P2307806831477839619

`∩[A077676(n+1), A083806(n+1)]`
-/

namespace A191486.P2307806831477839619
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A077676 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A083806 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A191486.P2307806831477839619

/-!
# A191488: A companion to Gould's sequence A001316.

The programs for A191488, there is no canonical definition to state claims against.
-/

/-! ## A191488.P7916255892112992114

`(xor(n, n+1)+3)*2^(n-∑[val(n+1, 2)])`
-/

namespace A191488.P7916255892112992114
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (n + 1) 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (Nat.xor n (n + 1) + 3 : ℚ) * (2 : ℚ) ^ ((n : ℤ) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ) : ℤ)

end

end A191488.P7916255892112992114

/-! ## A191488.P28852545570859204

`A233775(n+65)`
-/

namespace A191488.P28852545570859204
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A233775 (n + 65)

end

end A191488.P28852545570859204

/-! ## A191488.P10707265296602158303

`Δ[2*A233774(n)]`
-/

namespace A191488.P10707265296602158303
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A233774 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191488.P10707265296602158303

/-! ## A191488.P4803047009855999792

`Δ[A006046(Δ[n²])]`
-/

namespace A191488.P4803047009855999792
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 ((f2 (n + 1) : ℤ) - (f2 n : ℤ)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191488.P4803047009855999792

/-! ## A191488.P7936995728395737698

`A105321(2*(n+1))`
-/

namespace A191488.P7936995728395737698
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A105321 (2 * (n + 1))

end

end A191488.P7936995728395737698

/-! ## A191488.P3541938906606022827

`A072406(4*(n+1))`
-/

namespace A191488.P3541938906606022827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072406 (4 * (n + 1))

end

end A191488.P3541938906606022827

/-! ## A191488.P9967251712181815852

`Δ[A267700(2*n)]+2`
-/

namespace A191488.P9967251712181815852
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A267700 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n + 2

end

end A191488.P9967251712181815852

/-! ## A191488.P10338845979381885596

`Δ[2*A193494(2*n)]`
-/

namespace A191488.P10338845979381885596
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A193494 (2 * n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191488.P10338845979381885596

/-! ## A191488.P15875578480501130937

`2*A048460(2*(n+1))`
-/

namespace A191488.P15875578480501130937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A048460 (2 * (n + 1))

end

end A191488.P15875578480501130937

/-! ## A191488.P15570744390089133680

`abs(Δ[A006046(2*n+1)])`
-/

namespace A191488.P15570744390089133680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A006046 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A191488.P15570744390089133680

/-!
# A191489: Number of compositions of even natural numbers into 6 parts <= n.

The programs for A191489, the canonical program `A191489.P17698224048278076185` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191489 has offset 0).

The definition of A191489 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191489.P17698224048278076185

`((n+1)^6+(1+(-1)^n)/2)/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191489

/-- `((n+1)^6+(1+(-1)^n)/2)/2` -/
def P17698224048278076185.Spec : Prop :=
  ∀ n, P17698224048278076185.a n = (A191489 n : ℚ)

end A191489

/-! ## A191489.P705977865026832746

`round(cosh(6*log(n+1)))`
-/

namespace A191489.P705977865026832746
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (6 * Real.log (n + 1 : ℝ)))

end

end A191489.P705977865026832746

namespace A191489

/-- `round(cosh(6*log(n+1)))` -/
def P705977865026832746.Spec : Prop :=
  ∀ n, P705977865026832746.a n = A191489 n

end A191489

/-! ## A191489.P16354800503084082782

`record[ceil((1-n)^6/2)]`
-/

namespace A191489.P16354800503084082782
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - (n : ℤ)) ^ 6 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191489.P16354800503084082782

namespace A191489

/-- `record[ceil((1-n)^6/2)]` -/
def P16354800503084082782.Spec : Prop :=
  ∀ n, P16354800503084082782.a n = A191489 n

end A191489

/-! ## A191489.P13211926362425798719

`round(record[(1-n)^6/2])`
-/

namespace A191489.P13211926362425798719
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 6 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A191489.P13211926362425798719

namespace A191489

/-- `round(record[(1-n)^6/2])` -/
def P13211926362425798719.Spec : Prop :=
  ∀ n, P13211926362425798719.a n = A191489 n

end A191489

/-! ## A191489.P18257857805731699748

`round(∑[A022522(n)/2])`
-/

namespace A191489.P18257857805731699748
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A022522 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191489.P18257857805731699748

namespace A191489

/-- `round(∑[A022522(n)/2])` -/
def P18257857805731699748.Spec : Prop :=
  ∀ n, P18257857805731699748.a n = A191489 n

end A191489

/-! ## A191489.P15676415543430510512

`round(A000578(n+1)²/2)`
-/

namespace A191489.P15676415543430510512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000578 (n + 1) ^ 2 : ℚ) / 2)

end

end A191489.P15676415543430510512

namespace A191489

/-- `round(A000578(n+1)²/2)` -/
def P15676415543430510512.Spec : Prop :=
  ∀ n, P15676415543430510512.a n = A191489 n

end A191489

/-! ## A191489.P18252264543895123652

`round(∑[∑[A008458(n)]]²/2)`
-/

namespace A191489.P18252264543895123652
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008458 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((∑ j ∈ Finset.range (n + 1), f1 j) ^ 2 : ℤ) : ℚ) / 2)

end

end A191489.P18252264543895123652

namespace A191489

/-- `round(∑[∑[A008458(n)]]²/2)` -/
def P18252264543895123652.Spec : Prop :=
  ∀ n, P18252264543895123652.a n = A191489 n

end A191489

/-! ## A191489.P9703644700649107786

`round((A123866(n+1)+1)/2)`
-/

namespace A191489.P9703644700649107786
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A123866 (n + 1) + 1 : ℚ) / 2)

end

end A191489.P9703644700649107786

namespace A191489

/-- `round((A123866(n+1)+1)/2)` -/
def P9703644700649107786.Spec : Prop :=
  ∀ n, P9703644700649107786.a n = A191489 n

end A191489

/-! ## A191489.P7392759501136703196

`floor(A168029(n+1)/(n+1))`
-/

namespace A191489.P7392759501136703196
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168029 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A191489.P7392759501136703196

namespace A191489

/-- `floor(A168029(n+1)/(n+1))` -/
def P7392759501136703196.Spec : Prop :=
  ∀ n, P7392759501136703196.a n = A191489 n

end A191489

/-! ## A191489.P11871105734745511673

`floor((((n+1)*A000290(n+1))²+1)/2)`
-/

namespace A191489.P11871105734745511673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((n + 1 : ℤ) * A000290 (n + 1)) ^ 2 + 1 : ℚ) / 2⌋

end

end A191489.P11871105734745511673

namespace A191489

/-- `floor((((n+1)*A000290(n+1))²+1)/2)` -/
def P11871105734745511673.Spec : Prop :=
  ∀ n, P11871105734745511673.a n = A191489 n

end A191489

/-! ## A191489.P1059323854301590757

`A191901(n)+A059841(n)`
-/

namespace A191489.P1059323854301590757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191901 n + A059841 n

end

end A191489.P1059323854301590757

namespace A191489

/-- `A191901(n)+A059841(n)` -/
def P1059323854301590757.Spec : Prop :=
  ∀ n, P1059323854301590757.a n = A191489 n

end A191489

/-! ## A191489.P15567995314689868512

`round(Δ[A000540(n)/2])`
-/

namespace A191489.P15567995314689868512
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000540 n : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (n + 1) - f1 n)

end

end A191489.P15567995314689868512

namespace A191489

/-- `round(Δ[A000540(n)/2])` -/
def P15567995314689868512.Spec : Prop :=
  ∀ n, P15567995314689868512.a n = A191489 n

end A191489

/-! ## A191489.P261435807900554757

`floor(A002604(n+1)/2)`
-/

namespace A191489.P261435807900554757
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A002604 (n + 1) : ℚ) / 2⌋

end

end A191489.P261435807900554757

namespace A191489

/-- `floor(A002604(n+1)/2)` -/
def P261435807900554757.Spec : Prop :=
  ∀ n, P261435807900554757.a n = A191489 n

end A191489

/-! ## A191489.P11874044098323488230

`round(A001014(n+1)/2)`
-/

namespace A191489.P11874044098323488230
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001014 (n + 1) : ℚ) / 2)

end

end A191489.P11874044098323488230

namespace A191489

/-- `round(A001014(n+1)/2)` -/
def P11874044098323488230.Spec : Prop :=
  ∀ n, P11874044098323488230.a n = A191489 n

end A191489

/-! ## A191489.P6766983037290065449

`A131472(n+1)/2-A004526(n+1)`
-/

namespace A191489.P6766983037290065449
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A131472 (n + 1) : ℚ) / 2 - (A004526 (n + 1) : ℚ)

end

end A191489.P6766983037290065449

namespace A191489

/-- `A131472(n+1)/2-A004526(n+1)` -/
def P6766983037290065449.Spec : Prop :=
  ∀ n, P6766983037290065449.a n = (A191489 n : ℚ)

end A191489

/-! ## A191489.P1853850230453023693

`A036486(n+1)²+A036487(n+1)²`
-/

namespace A191489.P1853850230453023693
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A036486 (n + 1) ^ 2 + A036487 (n + 1) ^ 2

end

end A191489.P1853850230453023693

namespace A191489

/-- `A036486(n+1)²+A036487(n+1)²` -/
def P1853850230453023693.Spec : Prop :=
  ∀ n, P1853850230453023693.a n = A191489 n

end A191489

/-! ## A191489.P1256621804256778538

`round(((n+1)*∑[A004277(2*n+1)])²/8)`
-/

namespace A191489.P1256621804256778538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004277 (2 * n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((((n + 1 : ℤ) * (∑ j ∈ Finset.range (n + 1), f1 j)) ^ 2 : ℤ) : ℚ) / 8)

end

end A191489.P1256621804256778538

namespace A191489

/-- `round(((n+1)*∑[A004277(2*n+1)])²/8)` -/
def P1256621804256778538.Spec : Prop :=
  ∀ n, P1256621804256778538.a n = A191489 n

end A191489

/-! ## A191489.P7094410557265184837

`A212747(n*(n+2))`
-/

namespace A191489.P7094410557265184837
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A212747 (n * (n + 2))

end

end A191489.P7094410557265184837

namespace A191489

/-- `A212747(n*(n+2))` -/
def P7094410557265184837.Spec : Prop :=
  ∀ n, P7094410557265184837.a n = A191489 n

end A191489

/-!
# A191491: Diagonal sums of triangle A191490.

The programs for A191491, there is no canonical definition to state claims against.
-/

/-! ## A191491.P1220301806052575439

`A297185(n)+A185283(A290280(n))`
-/

namespace A191491.P1220301806052575439
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A297185 n + A185283 (A290280 n).toNat

end

end A191491.P1220301806052575439

/-! ## A191491.P17742304370912932724

`A106799(A294636(n+1))+A014419(A308030(n+2))`
-/

namespace A191491.P17742304370912932724
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A106799 (A294636 (n + 1)).toNat + A014419 (A308030 (n + 2)).toNat

end

end A191491.P17742304370912932724

/-!
# A191492: Central coefficients of triangle A191490.

The programs for A191492, there is no canonical definition to state claims against.
-/

/-! ## A191492.P17832602717556536391

`A191490(∑[4*n])`
-/

namespace A191492.P17832602717556536391
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191490 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191492.P17832602717556536391

/-! ## A191492.P1543204163107479111

`record[A191490(∑[A071045(n)])]`
-/

namespace A191492.P1543204163107479111
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A071045 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191490 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191492.P1543204163107479111

/-! ## A191492.P14194923630581704592

`A191490(A046092(n))^abs(A057428(n))`
-/

namespace A191492.P14194923630581704592
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191490 (A046092 n).toNat : ℚ) ^ (|A057428 n| : ℤ)

end

end A191492.P14194923630581704592

/-! ## A191492.P9002817038876342621

`A191490(A046092(n))^A007318(∑[n])`
-/

namespace A191492.P9002817038876342621
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A191490 (A046092 n).toNat : ℚ) ^ (A007318 (∑ j ∈ Finset.range (n + 1), f1 j) : ℤ)

end

end A191492.P9002817038876342621

/-! ## A191492.P2689038744815002845

`A000010(C(2, n)!)*A191490(A046092(n))`
-/

namespace A191492.P2689038744815002845
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (Nat.factorial (Nat.choose 2 n)) * A191490 (A046092 n).toNat

end

end A191492.P2689038744815002845

/-!
# A191493: Binomial row sums of triangle A191490.

The programs for A191493, there is no canonical definition to state claims against.
-/

/-! ## A191493.P17839145931759997042

`A069345(A331608(n)+A047863(n))`
-/

namespace A191493.P17839145931759997042
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A069345 (A331608 n + A047863 n).toNat

end

end A191493.P17839145931759997042

/-! ## A191493.P6192872999745579997

`A163539(A095776(n))+A095793(n+2)`
-/

namespace A191493.P6192872999745579997
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163539 (A095776 n).toNat + A095793 (n + 2)

end

end A191493.P6192872999745579997

/-!
# A191494: Number of compositions of even natural numbers in 7 parts <= n.

The programs for A191494, the canonical program `A191494.P17201900203979551819` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191494 has offset 0).

The definition of A191494 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191494.P17201900203979551819

`((n+1)^7+(1+(-1)^n)/2)/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191494

/-- `((n+1)^7+(1+(-1)^n)/2)/2` -/
def P17201900203979551819.Spec : Prop :=
  ∀ n, P17201900203979551819.a n = (A191494 n : ℚ)

end A191494

/-! ## A191494.P10020947175426439827

`round(cosh(7*log(n+1)))`
-/

namespace A191494.P10020947175426439827
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (7 * Real.log (n + 1 : ℝ)))

end

end A191494.P10020947175426439827

namespace A191494

/-- `round(cosh(7*log(n+1)))` -/
def P10020947175426439827.Spec : Prop :=
  ∀ n, P10020947175426439827.a n = A191494 n

end A191494

/-! ## A191494.P3397759369072121443

`round(∑[∑[A255177(n)/2]])`
-/

namespace A191494.P3397759369072121443
noncomputable section

def f2 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A255177 n : ℚ) / 2

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A191494.P3397759369072121443

namespace A191494

/-- `round(∑[∑[A255177(n)/2]])` -/
def P3397759369072121443.Spec : Prop :=
  ∀ n, P3397759369072121443.a n = A191494 n

end A191494

/-! ## A191494.P2541354291671876633

`round(sqrt(A168346(n+1)/2))`
-/

namespace A191494.P2541354291671876633
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt ((A168346 (n + 1) : ℚ) / 2 : ℝ))

end

end A191494.P2541354291671876633

namespace A191494

/-- `round(sqrt(A168346(n+1)/2))` -/
def P2541354291671876633.Spec : Prop :=
  ∀ n, P2541354291671876633.a n = A191494 n

end A191494

/-! ## A191494.P2592386720114108533

`floor(A258808(n+1)/2)+1`
-/

namespace A191494.P2592386720114108533
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258808 (n + 1) : ℚ) / 2⌋ + 1

end

end A191494.P2592386720114108533

namespace A191494

/-- `floor(A258808(n+1)/2)+1` -/
def P2592386720114108533.Spec : Prop :=
  ∀ n, P2592386720114108533.a n = A191494 n

end A191494

/-! ## A191494.P15926273443419529317

`floor(A168067(n+1)/(n+1))`
-/

namespace A191494.P15926273443419529317
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168067 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A191494.P15926273443419529317

namespace A191494

/-- `floor(A168067(n+1)/(n+1))` -/
def P15926273443419529317.Spec : Prop :=
  ∀ n, P15926273443419529317.a n = A191494 n

end A191494

/-! ## A191494.P13884078304505432556

`A168029(n+1)-∑[n%2]`
-/

namespace A191494.P13884078304505432556
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n % 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168029 (n + 1) - ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A191494.P13884078304505432556

namespace A191494

/-- `A168029(n+1)-∑[n%2]` -/
def P13884078304505432556.Spec : Prop :=
  ∀ n, P13884078304505432556.a n = A191494 n

end A191494

/-! ## A191494.P3867661884567541051

`round((n+1)*A000578(n+1)²/2)`
-/

namespace A191494.P3867661884567541051
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((n + 1 : ℤ) * A000578 (n + 1) ^ 2 : ℚ) / 2)

end

end A191494.P3867661884567541051

namespace A191494

/-- `round((n+1)*A000578(n+1)²/2)` -/
def P3867661884567541051.Spec : Prop :=
  ∀ n, P3867661884567541051.a n = A191494 n

end A191494

/-! ## A191494.P13023083337129837597

`round((n+1)²²²/A005843(n+1))`
-/

namespace A191494.P13023083337129837597
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((((n + 1) ^ 2) ^ 2) ^ 2 : ℚ) / (A005843 (n + 1) : ℚ))

end

end A191494.P13023083337129837597

namespace A191494

/-- `round((n+1)²²²/A005843(n+1))` -/
def P13023083337129837597.Spec : Prop :=
  ∀ n, P13023083337129837597.a n = A191494 n

end A191494

/-! ## A191494.P15755197871387081382

`round((n+1)*(n+1)²²*A000290(n+1)/2)`
-/

namespace A191494.P15755197871387081382
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1) * ((n + 1) ^ 2) ^ 2 : ℤ) * A000290 (n + 1) : ℚ) / 2)

end

end A191494.P15755197871387081382

namespace A191494

/-- `round((n+1)*(n+1)²²*A000290(n+1)/2)` -/
def P15755197871387081382.Spec : Prop :=
  ∀ n, P15755197871387081382.a n = A191494 n

end A191494

/-! ## A191494.P13127452165438139829

`A191900(n)+A059841(n)`
-/

namespace A191494.P13127452165438139829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191900 n + A059841 n

end

end A191494.P13127452165438139829

namespace A191494

/-- `A191900(n)+A059841(n)` -/
def P13127452165438139829.Spec : Prop :=
  ∀ n, P13127452165438139829.a n = A191494 n

end A191494

/-! ## A191494.P13271454146170239687

`A292045(n+1)+A191484(n)`
-/

namespace A191494.P13271454146170239687
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A292045 (n + 1) + A191484 n

end

end A191494.P13271454146170239687

namespace A191494

/-- `A292045(n+1)+A191484(n)` -/
def P13271454146170239687.Spec : Prop :=
  ∀ n, P13271454146170239687.a n = A191494 n

end A191494

/-! ## A191494.P7914087164377286530

`A171714(n)+A191900(n)-A191903(n)`
-/

namespace A191494.P7914087164377286530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171714 n + (A191900 n - A191903 n)

end

end A191494.P7914087164377286530

namespace A191494

/-- `A171714(n)+A191900(n)-A191903(n)` -/
def P7914087164377286530.Spec : Prop :=
  ∀ n, P7914087164377286530.a n = A191494 n

end A191494

/-! ## A191494.P963417022024163817

`A191484(n)+A191900(n)-A191902(n)`
-/

namespace A191494.P963417022024163817
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191484 n + (A191900 n - A191902 n)

end

end A191494.P963417022024163817

namespace A191494

/-- `A191484(n)+A191900(n)-A191902(n)` -/
def P963417022024163817.Spec : Prop :=
  ∀ n, P963417022024163817.a n = A191494 n

end A191494

/-! ## A191494.P17228183308356249882

`floor(A258806(n+1)/2)`
-/

namespace A191494.P17228183308356249882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258806 (n + 1) : ℚ) / 2⌋

end

end A191494.P17228183308356249882

namespace A191494

/-- `floor(A258806(n+1)/2)` -/
def P17228183308356249882.Spec : Prop :=
  ∀ n, P17228183308356249882.a n = A191494 n

end A191494

/-! ## A191494.P7087236326246710450

`round(A001015(n+1)/2)`
-/

namespace A191494.P7087236326246710450
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001015 (n + 1) : ℚ) / 2)

end

end A191494.P7087236326246710450

namespace A191494

/-- `round(A001015(n+1)/2)` -/
def P7087236326246710450.Spec : Prop :=
  ∀ n, P7087236326246710450.a n = A191494 n

end A191494

/-!
# A191495: Number of compositions of even natural numbers into 8 parts <= n.

The programs for A191495, the canonical program `A191495.P9343504948528576700` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191495 has offset 0).

The definition of A191495 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191495.P9343504948528576700

`((n+1)^8+(1+(-1)^n)/2)/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191495

/-- `((n+1)^8+(1+(-1)^n)/2)/2` -/
def P9343504948528576700.Spec : Prop :=
  ∀ n, P9343504948528576700.a n = (A191495 n : ℚ)

end A191495

/-! ## A191495.P13590008234623099818

`round(cosh(8*log(n+1)))`
-/

namespace A191495.P13590008234623099818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (8 * Real.log (n + 1 : ℝ)))

end

end A191495.P13590008234623099818

namespace A191495

/-- `round(cosh(8*log(n+1)))` -/
def P13590008234623099818.Spec : Prop :=
  ∀ n, P13590008234623099818.a n = A191495 n

end A191495

/-! ## A191495.P16554158224332012794

`record[ceil((1-n)^8/2)]`
-/

namespace A191495.P16554158224332012794
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈((1 - (n : ℤ)) ^ 8 : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A191495.P16554158224332012794

namespace A191495

/-- `record[ceil((1-n)^8/2)]` -/
def P16554158224332012794.Spec : Prop :=
  ∀ n, P16554158224332012794.a n = A191495 n

end A191495

/-! ## A191495.P17956338281665604326

`round(record[(1-n)^8/2])`
-/

namespace A191495.P17956338281665604326
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((1 - (n : ℤ)) ^ 8 : ℚ) / 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n))

end

end A191495.P17956338281665604326

namespace A191495

/-- `round(record[(1-n)^8/2])` -/
def P17956338281665604326.Spec : Prop :=
  ∀ n, P17956338281665604326.a n = A191495 n

end A191495

/-! ## A191495.P9976185687008186811

`round(record[(1-n)²²²]/2)`
-/

namespace A191495.P9976185687008186811
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (((1 - (n : ℤ)) ^ 2) ^ 2) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) : ℚ) / 2)

end

end A191495.P9976185687008186811

namespace A191495

/-- `round(record[(1-n)²²²]/2)` -/
def P9976185687008186811.Spec : Prop :=
  ∀ n, P9976185687008186811.a n = A191495 n

end A191495

/-! ## A191495.P16908766846013301271

`floor(A258809(n+1)/2)+1`
-/

namespace A191495.P16908766846013301271
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258809 (n + 1) : ℚ) / 2⌋ + 1

end

end A191495.P16908766846013301271

namespace A191495

/-- `floor(A258809(n+1)/2)+1` -/
def P16908766846013301271.Spec : Prop :=
  ∀ n, P16908766846013301271.a n = A191495 n

end A191495

/-! ## A191495.P11867660899080956256

`round(A000290(n+1)^4/2)`
-/

namespace A191495.P11867660899080956256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000290 (n + 1) ^ 4 : ℚ) / 2)

end

end A191495.P11867660899080956256

namespace A191495

/-- `round(A000290(n+1)^4/2)` -/
def P11867660899080956256.Spec : Prop :=
  ∀ n, P11867660899080956256.a n = A191495 n

end A191495

/-! ## A191495.P9334919372114491070

`floor(A168116(n+1)/(n+1))`
-/

namespace A191495.P9334919372114491070
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168116 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A191495.P9334919372114491070

namespace A191495

/-- `floor(A168116(n+1)/(n+1))` -/
def P9334919372114491070.Spec : Prop :=
  ∀ n, P9334919372114491070.a n = A191495 n

end A191495

/-! ## A191495.P10106783009859403873

`floor(((A005563(n)+1)²²+1)/2)`
-/

namespace A191495.P10106783009859403873
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(((A005563 n + 1) ^ 2) ^ 2 + 1 : ℚ) / 2⌋

end

end A191495.P10106783009859403873

namespace A191495

/-- `floor(((A005563(n)+1)²²+1)/2)` -/
def P10106783009859403873.Spec : Prop :=
  ∀ n, P10106783009859403873.a n = A191495 n

end A191495

/-! ## A191495.P17332063266159198133

`round(((n+1)*A000578(n+1))²/2)`
-/

namespace A191495.P17332063266159198133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((((n + 1 : ℤ) * A000578 (n + 1)) ^ 2 : ℚ) / 2)

end

end A191495.P17332063266159198133

namespace A191495

/-- `round(((n+1)*A000578(n+1))²/2)` -/
def P17332063266159198133.Spec : Prop :=
  ∀ n, P17332063266159198133.a n = A191495 n

end A191495

/-! ## A191495.P16503073667640545730

`((n+1)²²²-A000034(n))/2+1`
-/

namespace A191495.P16503073667640545730
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (((((n + 1) ^ 2) ^ 2) ^ 2 : ℤ) - A000034 n : ℚ) / 2 + 1

end

end A191495.P16503073667640545730

namespace A191495

/-- `((n+1)²²²-A000034(n))/2+1` -/
def P16503073667640545730.Spec : Prop :=
  ∀ n, P16503073667640545730.a n = (A191495 n : ℚ)

end A191495

/-! ## A191495.P13451500870697558894

`A191899(n)+A059841(n)`
-/

namespace A191495.P13451500870697558894
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191899 n + A059841 n

end

end A191495.P13451500870697558894

namespace A191495

/-- `A191899(n)+A059841(n)` -/
def P13451500870697558894.Spec : Prop :=
  ∀ n, P13451500870697558894.a n = A191495 n

end A191495

/-! ## A191495.P13605440968111787505

`A171714(n)²+A191903(n)²`
-/

namespace A191495.P13605440968111787505
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171714 n ^ 2 + A191903 n ^ 2

end

end A191495.P13605440968111787505

namespace A191495

/-- `A171714(n)²+A191903(n)²` -/
def P13605440968111787505.Spec : Prop :=
  ∀ n, P13605440968111787505.a n = A191495 n

end A191495

/-! ## A191495.P10619239625157658403

`floor(sqrt(A283028(n+1)))`
-/

namespace A191495.P10619239625157658403
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.sqrt (A283028 (n + 1))

end

end A191495.P10619239625157658403

namespace A191495

/-- `floor(sqrt(A283028(n+1)))` -/
def P10619239625157658403.Spec : Prop :=
  ∀ n, P10619239625157658403.a n = A191495 n

end A191495

/-! ## A191495.P3927272536420501355

`round(sqrt(A283027(n+1)))`
-/

namespace A191495.P3927272536420501355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.sqrt (A283027 (n + 1) : ℝ))

end

end A191495.P3927272536420501355

namespace A191495

/-- `round(sqrt(A283027(n+1)))` -/
def P3927272536420501355.Spec : Prop :=
  ∀ n, P3927272536420501355.a n = A191495 n

end A191495

/-! ## A191495.P1542020409178310227

`floor(A060890(n+1)/2)`
-/

namespace A191495.P1542020409178310227
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A060890 (n + 1) : ℚ) / 2⌋

end

end A191495.P1542020409178310227

namespace A191495

/-- `floor(A060890(n+1)/2)` -/
def P1542020409178310227.Spec : Prop :=
  ∀ n, P1542020409178310227.a n = A191495 n

end A191495

/-! ## A191495.P9996541443308447185

`round(A001016(n+1)/2)`
-/

namespace A191495.P9996541443308447185
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A001016 (n + 1) : ℚ) / 2)

end

end A191495.P9996541443308447185

namespace A191495

/-- `round(A001016(n+1)/2)` -/
def P9996541443308447185.Spec : Prop :=
  ∀ n, P9996541443308447185.a n = A191495 n

end A191495

/-! ## A191495.P9895369189693151579

`round(Δ[A000538(n)]²/2)`
-/

namespace A191495.P9895369189693151579
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000538 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (((f1 (n + 1) - f1 n) ^ 2 : ℚ) / 2)

end

end A191495.P9895369189693151579

namespace A191495

/-- `round(Δ[A000538(n)]²/2)` -/
def P9895369189693151579.Spec : Prop :=
  ∀ n, P9895369189693151579.a n = A191495 n

end A191495

/-! ## A191495.P2565390779447290372

`A171714(n*(n+2))`
-/

namespace A191495.P2565390779447290372
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171714 (n * (n + 2))

end

end A191495.P2565390779447290372

namespace A191495

/-- `A171714(n*(n+2))` -/
def P2565390779447290372.Spec : Prop :=
  ∀ n, P2565390779447290372.a n = A191495 n

end A191495

/-!
# A191496: Number of compositions of even numbers into 9 parts <= n.

The programs for A191496, the canonical program `A191496.P10985773843000287230` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191496 has offset 0).

The definition of A191496 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191496.P10985773843000287230

`((n+1)^9+(1+(-1)^n)/2)/2`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191496

/-- `((n+1)^9+(1+(-1)^n)/2)/2` -/
def P10985773843000287230.Spec : Prop :=
  ∀ n, P10985773843000287230.a n = (A191496 n : ℚ)

end A191496

/-! ## A191496.P2514679350138216311

`round(cosh(9*log(n+1)))`
-/

namespace A191496.P2514679350138216311
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.cosh (9 * Real.log (n + 1 : ℝ)))

end

end A191496.P2514679350138216311

namespace A191496

/-- `round(cosh(9*log(n+1)))` -/
def P2514679350138216311.Spec : Prop :=
  ∀ n, P2514679350138216311.a n = A191496 n

end A191496

/-! ## A191496.P9491658011978494250

`floor(A258810(n+1)/2)+1`
-/

namespace A191496.P9491658011978494250
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A258810 (n + 1) : ℚ) / 2⌋ + 1

end

end A191496.P9491658011978494250

namespace A191496

/-- `floor(A258810(n+1)/2)+1` -/
def P9491658011978494250.Spec : Prop :=
  ∀ n, P9491658011978494250.a n = A191496 n

end A191496

/-! ## A191496.P11194960136054333915

`round(A000578(n+1)^3/2)`
-/

namespace A191496.P11194960136054333915
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A000578 (n + 1) ^ 3 : ℚ) / 2)

end

end A191496.P11194960136054333915

namespace A191496

/-- `round(A000578(n+1)^3/2)` -/
def P11194960136054333915.Spec : Prop :=
  ∀ n, P11194960136054333915.a n = A191496 n

end A191496

/-! ## A191496.P7489678822858397096

`floor(A168118(n+1)/(n+1))`
-/

namespace A191496.P7489678822858397096
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168118 (n + 1) : ℚ) / (n + 1 : ℚ)⌋

end

end A191496.P7489678822858397096

namespace A191496

/-- `floor(A168118(n+1)/(n+1))` -/
def P7489678822858397096.Spec : Prop :=
  ∀ n, P7489678822858397096.a n = A191496 n

end A191496

/-! ## A191496.P1585385455517481627

`A191680(n)+A059841(n)`
-/

namespace A191496.P1585385455517481627
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A191680 n + A059841 n

end

end A191496.P1585385455517481627

namespace A191496

/-- `A191680(n)+A059841(n)` -/
def P1585385455517481627.Spec : Prop :=
  ∀ n, P1585385455517481627.a n = A191496 n

end A191496

/-! ## A191496.P9585633986762530239

`floor(A168345(n+1)/A000583(n+1))`
-/

namespace A191496.P9585633986762530239
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A168345 (n + 1) : ℚ) / (A000583 (n + 1) : ℚ)⌋

end

end A191496.P9585633986762530239

namespace A191496

/-- `floor(A168345(n+1)/A000583(n+1))` -/
def P9585633986762530239.Spec : Prop :=
  ∀ n, P9585633986762530239.a n = A191496 n

end A191496

/-! ## A191496.P14503752565538725265

`round(A168346(n+1)/A000584(n+1))`
-/

namespace A191496.P14503752565538725265
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((A168346 (n + 1) : ℚ) / (A000584 (n + 1) : ℚ))

end

end A191496.P14503752565538725265

namespace A191496

/-- `round(A168346(n+1)/A000584(n+1))` -/
def P14503752565538725265.Spec : Prop :=
  ∀ n, P14503752565538725265.a n = A191496 n

end A191496

/-!
# A191497: a(n+1) = 2*a(n) + A014017(n+5), a(0) = 0.

The programs for A191497, the canonical program `A191497.P16178523837982485607` is in `Seq.B000.C026`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A191497 has offset 0).

The definition of A191497 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A191497.P16178523837982485607

`2*a(n-1)-a(n-4)+2*a(n-5)` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0, a(4)=1`

The canonical program, it is in `Seq.B000.C026`.
-/

namespace A191497

/-- `2*a(n-1)-a(n-4)+2*a(n-5)` -/
def P16178523837982485607.Spec : Prop :=
  ∀ n, P16178523837982485607.a n = A191497 n

theorem P16178523837982485607.correct : P16178523837982485607.Spec := by
  intro n
  simp only [A191497]

end A191497

/-! ## A191497.P4324608537274463291

`(2^n-(-1)^floor(n/4)*A133145(n))/17`
-/

namespace A191497.P4324608537274463291
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℚ) - (-1 : ℚ) ^ (⌊(n : ℚ) / 4⌋ : ℤ) * (A133145 n : ℚ)) / 17

end

end A191497.P4324608537274463291

namespace A191497

/-- `(2^n-(-1)^floor(n/4)*A133145(n))/17` -/
def P4324608537274463291.Spec : Prop :=
  ∀ n, P4324608537274463291.a n = (A191497 n : ℚ)

end A191497

/-! ## A191497.P6767183387784380133

`a(n-1)+a(n-1)-A014017(n)` with `a(0)=0`
-/

namespace A191497.P6767183387784380133
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (a (n - 1) - A014017 n)

end

end A191497.P6767183387784380133

namespace A191497

/-- `a(n-1)+a(n-1)-A014017(n)` -/
def P6767183387784380133.Spec : Prop :=
  ∀ n, P6767183387784380133.a n = A191497 n

end A191497

/-! ## A191497.P15890435717377402822

`round(2^n/17)`
-/

namespace A191497.P15890435717377402822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway ((2 ^ n : ℚ) / 17)

end

end A191497.P15890435717377402822

namespace A191497

/-- `round(2^n/17)` -/
def P15890435717377402822.Spec : Prop :=
  ∀ n, P15890435717377402822.a n = A191497 n

end A191497

/-! ## A191497.P5226858519907273238

`floor(xor(8, 2^n)/17)`
-/

namespace A191497.P5226858519907273238
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(Nat.xor 8 (2 ^ n) : ℚ) / 17⌋

end

end A191497.P5226858519907273238

namespace A191497

/-- `floor(xor(8, 2^n)/17)` -/
def P5226858519907273238.Spec : Prop :=
  ∀ n, P5226858519907273238.a n = A191497 n

end A191497

/-! ## A191497.P10966334501148730383

`Δ[floor(A000225(n)/17)]`
-/

namespace A191497.P10966334501148730383
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A000225 n : ℚ) / 17⌋

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191497.P10966334501148730383

namespace A191497

/-- `Δ[floor(A000225(n)/17)]` -/
def P10966334501148730383.Spec : Prop :=
  ∀ n, P10966334501148730383.a n = A191497 n

end A191497

/-! ## A191497.P11697649149107899554

`Δ[2^n-1-A224520(n)]`
-/

namespace A191497.P11697649149107899554
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 ^ n : ℤ) - 1 - A224520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A191497.P11697649149107899554

namespace A191497

/-- `Δ[2^n-1-A224520(n)]` -/
def P11697649149107899554.Spec : Prop :=
  ∀ n, P11697649149107899554.a n = A191497 n

end A191497

/-! ## A191497.P9222355182131330206

`ceil(abs(ceil(A131577(n+2)/17)-1)/2)`
-/

namespace A191497.P9222355182131330206
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(|⌈(A131577 (n + 2) : ℚ) / 17⌉ - 1| : ℚ) / 2⌉

end

end A191497.P9222355182131330206

namespace A191497

/-- `ceil(abs(ceil(A131577(n+2)/17)-1)/2)` -/
def P9222355182131330206.Spec : Prop :=
  ∀ n, P9222355182131330206.a n = A191497 n

end A191497

/-! ## A191497.P9468496182683512993

`A000079(n)-Δ[A224520(n)]`
-/

namespace A191497.P9468496182683512993
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224520 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000079 n - (f1 (n + 1) - f1 n)

end

end A191497.P9468496182683512993

namespace A191497

/-- `A000079(n)-Δ[A224520(n)]` -/
def P9468496182683512993.Spec : Prop :=
  ∀ n, P9468496182683512993.a n = A191497 n

end A191497

/-!
# A191498: E.g.f. sqrt(1+2*x*exp(2*x)).

The programs for A191498, there is no canonical definition to state claims against.
-/

/-! ## A191498.P9221280084593490352

`A317937(∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A191498.P9221280084593490352
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317937 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A191498.P9221280084593490352

/-! ## A191498.P13803738352789046204

`A317938(∏[eq[n, ∏{d}[n, #]]])`
-/

namespace A191498.P13803738352789046204
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f4 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def f3 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∏ d ∈ Nat.divisors (f4 n), d

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f2 j = f3 j) n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317938 (∏ j ∈ Finset.range (n + 1), f1 j)

end

end A191498.P13803738352789046204

/-! ## A191498.P11104216736396058089

`A317937(A002110(n))`
-/

namespace A191498.P11104216736396058089
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317937 (A002110 n).toNat

end

end A191498.P11104216736396058089

