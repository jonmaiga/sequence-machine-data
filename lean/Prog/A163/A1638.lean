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
import Seq.B000.C024
import Seq.B000.C025
import Seq.B000.C027
import Seq.B000.C028
import Seq.B000.C029
import Seq.B000.C030
import Seq.B000.C031
import Seq.B000.C032
import Seq.B000.C033
import Seq.B000.C034
import Seq.B000.C035
import Seq.B000.C036
import Seq.B000.C037
import Seq.B000.C039
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
import Seq.B001.C011
import Seq.B001.C012
import Seq.B001.C013
import Seq.B002.C000
import Seq.B002.C001
import Seq.B002.C002
import Seq.B002.C003
import Seq.B002.C004
import Seq.B002.C006
import Seq.B002.C007
import Seq.B003.C000
import Seq.B003.C001
import Seq.B003.C002
import Seq.B003.C003
import Seq.B003.C004
import Seq.B004.C000
import Seq.B004.C001
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
import Seq.Opaque.C017
import Seq.Opaque.C018
import Seq.Opaque.C019
import Seq.Opaque.C020
import Seq.Opaque.C021
import Seq.Opaque.C022
import Seq.Opaque.C025
import SequenceMachineLib.Triangle

set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# A163801: a(n) = n - a(a(n-2)) with a(0)=0, a(1)=1.

The programs for A163801, the canonical program `A163801.P3864004112928570251` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163801 has offset 0).

The definition of A163801 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(a(n-2))` (program `A163801.P3864004112928570251`, by `A163801.P3864004112928570251.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163801.P3864004112928570251

`n-a(a(n-2))` with `a(0)=0, a(1)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163801

/-- `n-a(a(n-2))` -/
def P3864004112928570251.Spec : Prop :=
  ∀ n, P3864004112928570251.a n = A163801 n

theorem P3864004112928570251.correct : P3864004112928570251.Spec := by
  intro n
  simp only [A163801]

end A163801

/-! ## A163801.P2654259835652267103

`∑[A096270(ceil(n/2))]`
-/

namespace A163801.P2654259835652267103
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A096270 ⌈(n : ℚ) / 2⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163801.P2654259835652267103

namespace A163801

/-- `∑[A096270(ceil(n/2))]` -/
def P2654259835652267103.Spec : Prop :=
  ∀ n, P2654259835652267103.a n = A163801 n

end A163801

/-! ## A163801.P17973633246506876055

`∑[char[A137708(n+1)]]`
-/

namespace A163801.P17973633246506876055
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A137708 (n + 1)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163801.P17973633246506876055

namespace A163801

/-- `∑[char[A137708(n+1)]]` -/
def P17973633246506876055.Spec : Prop :=
  ∀ n, (P17973633246506876055.a n : ℤ) = A163801 n

end A163801

/-! ## A163801.P18247973631766384774

`∑[abs(Δ[A363057(n+1)])]`
-/

namespace A163801.P18247973631766384774
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A363057 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f2 (n + 1) - f2 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163801.P18247973631766384774

namespace A163801

/-- `∑[abs(Δ[A363057(n+1)])]` -/
def P18247973631766384774.Spec : Prop :=
  ∀ n, P18247973631766384774.a n = A163801 n

end A163801

/-! ## A163801.P701034716307696509

`∑[log2(A001468(ceil(n/2)))]`
-/

namespace A163801.P701034716307696509
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.logb 2 (A001468 ⌈(n : ℚ) / 2⌉.toNat : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163801.P701034716307696509

namespace A163801

/-- `∑[log2(A001468(ceil(n/2)))]` -/
def P701034716307696509.Spec : Prop :=
  ∀ n, P701034716307696509.a n = (A163801 n : ℝ)

end A163801

/-! ## A163801.P6805386205338673201

`∑[A282162(round(n/2))-2]`
-/

namespace A163801.P6805386205338673201
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A282162 (SequenceMachineLib.roundAway ((n : ℚ) / 2)).toNat - 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163801.P6805386205338673201

namespace A163801

/-- `∑[A282162(round(n/2))-2]` -/
def P6805386205338673201.Spec : Prop :=
  ∀ n, P6805386205338673201.a n = A163801 n

end A163801

/-! ## A163801.P13695583411348706455

`n-a(floor(a(A289207(n))))` with `a(0)=0`

`floor` is left out, it is the identity on integers.
-/

namespace A163801.P13695583411348706455
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  (n : ℤ) - a (a (A289207 n).toNat).toNat

end

end A163801.P13695583411348706455

namespace A163801

/-- `n-a(floor(a(A289207(n))))` -/
def P13695583411348706455.Spec : Prop :=
  ∀ n, P13695583411348706455.a n = A163801 n

end A163801

/-! ## A163801.P4548920575543359843

`∑[A005614(abs(floor((n-1)/2)))]`
-/

namespace A163801.P4548920575543359843
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A005614 |⌊((n : ℤ) - 1 : ℚ) / 2⌋|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163801.P4548920575543359843

namespace A163801

/-- `∑[A005614(abs(floor((n-1)/2)))]` -/
def P4548920575543359843.Spec : Prop :=
  ∀ n, P4548920575543359843.a n = A163801 n

end A163801

/-! ## A163801.P16385962237602384839

`∑[abs(Δ[A284620(n+1)!])]`
-/

namespace A163801.P16385962237602384839
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.factorial (A284620 (n + 1)).toNat

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(f2 (n + 1) : ℤ) - (f2 n : ℤ)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163801.P16385962237602384839

namespace A163801

/-- `∑[abs(Δ[A284620(n+1)!])]` -/
def P16385962237602384839.Spec : Prop :=
  ∀ n, P16385962237602384839.a n = A163801 n

end A163801

/-! ## A163801.P6463493154779296351

`∑[3%Δ[A108103(n+2)]]`
-/

namespace A163801.P6463493154779296351
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A108103 (n + 2)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod 3 (f2 (n + 1) - f2 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163801.P6463493154779296351

namespace A163801

/-- `∑[3%Δ[A108103(n+2)]]` -/
def P6463493154779296351.Spec : Prop :=
  ∀ n, P6463493154779296351.a n = A163801 n

end A163801

/-!
# A163804: Expansion of (1 - x) * (1 - x^4) / ((1 - x^2) * (1 - x^3)) in powers of x.

The programs for A163804, the canonical program `A163804.P6059804995327160136` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163804 has offset 0).

The definition of A163804 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^4+x^5)/(1-x^2-x^3+x^5))` (program `A163804.P6059804995327160136`, by `A163804.P6059804995327160136.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163804.P6059804995327160136

`ogf((1-x-x^4+x^5)/(1-x^2-x^3+x^5))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163804

/-- `ogf((1-x-x^4+x^5)/(1-x^2-x^3+x^5))` -/
def P6059804995327160136.Spec : Prop :=
  ∀ n, P6059804995327160136.a n = A163804 n

theorem P6059804995327160136.correct : P6059804995327160136.Spec := by
  intro n
  simp only [A163804]

end A163804

/-!
# A163805: Expansion of (1 - x) * (1 - x^6) / ((1 - x^3) * (1 - x^4)) in powers of x.

The programs for A163805, the canonical program `A163805.P18319080845809550197` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163805 has offset 0).

The definition of A163805 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^6+x^7)/(1-x^3-x^4+x^7))` (program `A163805.P18319080845809550197`, by `A163805.P18319080845809550197.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163805.P18319080845809550197

`ogf((1-x-x^6+x^7)/(1-x^3-x^4+x^7))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163805

/-- `ogf((1-x-x^6+x^7)/(1-x^3-x^4+x^7))` -/
def P18319080845809550197.Spec : Prop :=
  ∀ n, P18319080845809550197.a n = A163805 n

theorem P18319080845809550197.correct : P18319080845809550197.Spec := by
  intro n
  simp only [A163805]

end A163805

/-!
# A163806: Expansion of (1 - x^3) * (1 - x^4) / ((1 - x) * (1 - x^6)) in powers of x.

The programs for A163806, the canonical program `A163806.P12626565757689582209` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163806 has offset 0).

The definition of A163806 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^3-x^4+x^7)/(1-x-x^6+x^7))` (program `A163806.P12626565757689582209`, by `A163806.P12626565757689582209.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163806.P12626565757689582209

`ogf((1-x^3-x^4+x^7)/(1-x-x^6+x^7))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163806

/-- `ogf((1-x^3-x^4+x^7)/(1-x-x^6+x^7))` -/
def P12626565757689582209.Spec : Prop :=
  ∀ n, P12626565757689582209.a n = A163806 n

theorem P12626565757689582209.correct : P12626565757689582209.Spec := by
  intro n
  simp only [A163806]

end A163806

/-!
# A163807: Reverse the order of inner digits (all digits but the first and last) of n written in binary. a(n) = the decimal value of the result.

The programs for A163807, the canonical program `A163807.P13093031249055492174` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163807 has offset 1).

The definition of A163807 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163807.P13093031249055492174

`A145341(A080513(n))-and(1, n)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A163807

/-- `A145341(A080513(n))-and(1, n)` -/
def P13093031249055492174.Spec : Prop :=
  ∀ n, P13093031249055492174.a n = A163807 (n + 1)

theorem P13093031249055492174.correct : P13093031249055492174.Spec := by
  intro n
  simp only [A163807, Nat.add_sub_cancel]

end A163807

/-! ## A163807.P4454028539175117965

`A145341(A080513(n))-A000035(n)`
-/

namespace A163807.P4454028539175117965
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A145341 (A080513 n).toNat - A000035 n

end

end A163807.P4454028539175117965

namespace A163807

/-- `A145341(A080513(n))-A000035(n)` -/
def P4454028539175117965.Spec : Prop :=
  ∀ n, P4454028539175117965.a n = A163807 (n + 1)

end A163807

/-! ## A163807.P8175897555719774480

`A080541(A059893(n+1))`
-/

namespace A163807.P8175897555719774480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (A059893 (n + 1)).toNat

end

end A163807.P8175897555719774480

namespace A163807

/-- `A080541(A059893(n+1))` -/
def P8175897555719774480.Spec : Prop :=
  ∀ n, P8175897555719774480.a n = A163807 (n + 1)

end A163807

/-! ## A163807.P3699621574793210246

`A059893(A080542(n+1))`
-/

namespace A163807.P3699621574793210246
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059893 (A080542 (n + 1)).toNat

end

end A163807.P3699621574793210246

namespace A163807

/-- `A059893(A080542(n+1))` -/
def P3699621574793210246.Spec : Prop :=
  ∀ n, P3699621574793210246.a n = A163807 (n + 1)

end A163807

/-! ## A163807.P7990963978364278679

`A080541(floor(A145341(n+2)/2))`
-/

namespace A163807.P7990963978364278679
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 ⌊(A145341 (n + 2) : ℚ) / 2⌋.toNat

end

end A163807.P7990963978364278679

namespace A163807

/-- `A080541(floor(A145341(n+2)/2))` -/
def P7990963978364278679.Spec : Prop :=
  ∀ n, P7990963978364278679.a n = A163807 (n + 1)

end A163807

/-! ## A163807.P10911752181551827526

`A080541((A030101(n+1)+A003817(n+1))/2)`
-/

namespace A163807.P10911752181551827526
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (SequenceMachineLib.roundAway ((A030101 (n + 1) + A003817 (n + 1) : ℚ) / 2)).toNat

end

end A163807.P10911752181551827526

namespace A163807

/-- `A080541((A030101(n+1)+A003817(n+1))/2)` -/
def P10911752181551827526.Spec : Prop :=
  ∀ n, P10911752181551827526.a n = A163807 (n + 1)

end A163807

/-! ## A163807.P11161897093200647648

`A080541(A030101(n+1)+A036044(n+1)/2)`
-/

namespace A163807.P11161897093200647648
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (SequenceMachineLib.roundAway ((A030101 (n + 1) : ℚ) + (A036044 (n + 1) : ℚ) / 2)).toNat

end

end A163807.P11161897093200647648

namespace A163807

/-- `A080541(A030101(n+1)+A036044(n+1)/2)` -/
def P11161897093200647648.Spec : Prop :=
  ∀ n, P11161897093200647648.a n = A163807 (n + 1)

end A163807

/-! ## A163807.P17083142879310594527

`A080541(floor(A057889(2*n+3)/2))`
-/

namespace A163807.P17083142879310594527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 ⌊(A057889 (2 * n + 3) : ℚ) / 2⌋.toNat

end

end A163807.P17083142879310594527

namespace A163807

/-- `A080541(floor(A057889(2*n+3)/2))` -/
def P17083142879310594527.Spec : Prop :=
  ∀ n, P17083142879310594527.a n = A163807 (n + 1)

end A163807

/-! ## A163807.P12175405886126184078

`A080541(A059894(A054429(n+1)))`
-/

namespace A163807.P12175405886126184078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (A059894 (A054429 (n + 1)).toNat).toNat

end

end A163807.P12175405886126184078

namespace A163807

/-- `A080541(A059894(A054429(n+1)))` -/
def P12175405886126184078.Spec : Prop :=
  ∀ n, P12175405886126184078.a n = A163807 (n + 1)

end A163807

/-! ## A163807.P3710311493335790601

`A080541(A030109(2*n+3))`
-/

namespace A163807.P3710311493335790601
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080541 (A030109 (2 * n + 3)).toNat

end

end A163807.P3710311493335790601

namespace A163807

/-- `A080541(A030109(2*n+3))` -/
def P3710311493335790601.Spec : Prop :=
  ∀ n, P3710311493335790601.a n = A163807 (n + 1)

end A163807

/-!
# A163808: Write n in binary. Place a 0 right of every 1 without a 0 right of it. a(n) = the decimal value of the result.

The programs for A163808, there is no canonical definition to state claims against.
-/

/-! ## A163808.P10764703894201516527

`lcm(2, A163809(n+1))`
-/

namespace A163808.P10764703894201516527
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm 2 (A163809 (n + 1))

end

end A163808.P10764703894201516527

/-! ## A163808.P1664390211319201053

`2*A163809((n+1)/gcd(2, n+1))`
-/

namespace A163808.P1664390211319201053
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A163809 (SequenceMachineLib.roundAway ((n + 1 : ℚ) / (Nat.gcd 2 (n + 1) : ℚ))).toNat

end

end A163808.P1664390211319201053

/-! ## A163808.P16265246735432612642

`A124108(A106151(n+1))`
-/

namespace A163808.P16265246735432612642
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A124108 (A106151 (n + 1)).toNat

end

end A163808.P16265246735432612642

/-! ## A163808.P15404382679986792668

`(2-A000035(n))*A163809(n+1)`
-/

namespace A163808.P15404382679986792668
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 - A000035 n) * A163809 (n + 1)

end

end A163808.P15404382679986792668

/-! ## A163808.P15341811454757529142

`(A000035(n+1)+1)*A163809(n+1)`
-/

namespace A163808.P15341811454757529142
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000035 (n + 1) + 1) * A163809 (n + 1)

end

end A163808.P15341811454757529142

/-! ## A163808.P15533452956113991690

`A048678(2*A106151(n+1))`
-/

namespace A163808.P15533452956113991690
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (2 * A106151 (n + 1)).toNat

end

end A163808.P15533452956113991690

/-! ## A163808.P3154049806935072178

`A048678(A106151(n+1)+A106151(n+1))`
-/

namespace A163808.P3154049806935072178
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A106151 (n + 1) + A106151 (n + 1)).toNat

end

end A163808.P3154049806935072178

/-! ## A163808.P4456369847961651184

`A163809(A109043(n+1))`
-/

namespace A163808.P4456369847961651184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163809 (A109043 (n + 1)).toNat

end

end A163808.P4456369847961651184

/-! ## A163808.P8756021390053064482

`A163809(Δ[2*A001318(n)])`
-/

namespace A163808.P8756021390053064482
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163809 (f1 (n + 1) - f1 n).toNat

end

end A163808.P8756021390053064482

/-! ## A163808.P13121506477633015408

`A163809(A005843(Δ[A001318(n)]))`
-/

namespace A163808.P13121506477633015408
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163809 (A005843 (f1 (n + 1) - f1 n).toNat).toNat

end

end A163808.P13121506477633015408

/-! ## A163808.P13359388458928017990

`A003714(A048680(2*A106151(n+1)))`
-/

namespace A163808.P13359388458928017990
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A048680 (2 * A106151 (n + 1)).toNat).toNat

end

end A163808.P13359388458928017990

/-!
# A163809: Write n in binary. Insert a 0 in the middle of each pair of two consecutive 1's. a(n) = the decimal value of the result.

The programs for A163809, there is no canonical definition to state claims against.
-/

/-! ## A163809.P9944563310214497581

`A163808(n+1)/A000034(n+1)`
-/

namespace A163809.P9944563310214497581
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163808 (n + 1) : ℚ) / (A000034 (n + 1) : ℚ)

end

end A163809.P9944563310214497581

/-! ## A163809.P5264252535518713881

`A163808(2*(n+1))/2`
-/

namespace A163809.P5264252535518713881
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163808 (2 * (n + 1)) : ℚ) / 2

end

end A163809.P5264252535518713881

/-! ## A163809.P18173696692260913863

`A048678(A106151(2*(n+1)))`
-/

namespace A163809.P18173696692260913863
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048678 (A106151 (2 * (n + 1))).toNat

end

end A163809.P18173696692260913863

/-! ## A163809.P9489646840525466928

`A124108(A106151(2*n+2))/2`
-/

namespace A163809.P9489646840525466928
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A124108 (A106151 (2 * n + 2)).toNat : ℚ) / 2

end

end A163809.P9489646840525466928

/-! ## A163809.P11915405618024880292

`A004525(A163808(2*(n+1)))`
-/

namespace A163809.P11915405618024880292
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A163808 (2 * (n + 1))).toNat

end

end A163809.P11915405618024880292

/-! ## A163809.P596230449751682004

`A008619(A163808(2*(n+1))-1)`
-/

namespace A163809.P596230449751682004
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008619 (A163808 (2 * (n + 1)) - 1).toNat

end

end A163809.P596230449751682004

/-! ## A163809.P2176250043484058494

`A026741(A163808(Δ[A014206(n)]))`
-/

namespace A163809.P2176250043484058494
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014206 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A163808 (f1 (n + 1) - f1 n).toNat).toNat

end

end A163809.P2176250043484058494

/-! ## A163809.P2063926815498445173

`A026741(A163808(n+1)+n)-A026741(n)`
-/

namespace A163809.P2063926815498445173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A163808 (n + 1) + (n : ℤ)).toNat - A026741 n

end

end A163809.P2063926815498445173

/-! ## A163809.P10535971777845086616

`A003714(A229047(n+1))`
-/

namespace A163809.P10535971777845086616
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003714 (A229047 (n + 1)).toNat

end

end A163809.P10535971777845086616

/-!
# A163810: Expansion of (1 - x) * (1 - x^2) * (1 - x^3) / (1 - x^6) in powers of x.

The programs for A163810, the canonical program `A163810.P3181239037669201369` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163810 has offset 0).

The definition of A163810 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^2+x^4+x^5-x^6)/(1-x^6))` (program `A163810.P3181239037669201369`, by `A163810.P3181239037669201369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163810.P3181239037669201369

`ogf((1-x-x^2+x^4+x^5-x^6)/(1-x^6))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163810

/-- `ogf((1-x-x^2+x^4+x^5-x^6)/(1-x^6))` -/
def P3181239037669201369.Spec : Prop :=
  ∀ n, P3181239037669201369.a n = A163810 n

theorem P3181239037669201369.correct : P3181239037669201369.Spec := by
  intro n
  simp only [A163810]

end A163810

/-!
# A163811: Expansion of (1 - x) * (1 - x^10) / ((1 - x^5) * (1 - x^6)) in powers of x.

The programs for A163811, the canonical program `A163811.P5139644843020820273` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163811 has offset 0).

The definition of A163811 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^10+x^11)/(1-x^5-x^6+x^11))` (program `A163811.P5139644843020820273`, by `A163811.P5139644843020820273.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163811.P5139644843020820273

`ogf((1-x-x^10+x^11)/(1-x^5-x^6+x^11))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163811

/-- `ogf((1-x-x^10+x^11)/(1-x^5-x^6+x^11))` -/
def P5139644843020820273.Spec : Prop :=
  ∀ n, P5139644843020820273.a n = A163811 n

theorem P5139644843020820273.correct : P5139644843020820273.Spec := by
  intro n
  simp only [A163811]

end A163811

/-!
# A163812: Expansion of (1 - x^5) * (1 - x^6) / ((1 - x) * (1 - x^10)) in powers of x.

The programs for A163812, the canonical program `A163812.P3897258265841257969` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163812 has offset 0).

The definition of A163812 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^5-x^6+x^11)/(1-x-x^10+x^11))` (program `A163812.P3897258265841257969`, by `A163812.P3897258265841257969.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163812.P3897258265841257969

`ogf((1-x^5-x^6+x^11)/(1-x-x^10+x^11))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163812

/-- `ogf((1-x^5-x^6+x^11)/(1-x-x^10+x^11))` -/
def P3897258265841257969.Spec : Prop :=
  ∀ n, P3897258265841257969.a n = A163812 n

theorem P3897258265841257969.correct : P3897258265841257969.Spec := by
  intro n
  simp only [A163812]

end A163812

/-!
# A163815: a(n) = n*(2*n^2 + 5*n + 3).

The programs for A163815, the canonical program `A163815.P6753554903624383614` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163815 has offset 0).

The definition of A163815 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n²+5*n+3)` (program `A163815.P6753554903624383614`, by `A163815.P6753554903624383614.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163815.P6753554903624383614

`n*(2*n²+5*n+3)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163815

/-- `n*(2*n²+5*n+3)` -/
def P6753554903624383614.Spec : Prop :=
  ∀ n, (P6753554903624383614.a n : ℤ) = A163815 n

theorem P6753554903624383614.correct : P6753554903624383614.Spec := by
  intro n
  simp only [A163815]

end A163815

/-! ## A163815.P14423765264278275669

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=10, a(2)=42, a(3)=108`
-/

namespace A163815.P14423765264278275669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 10, 42, 108] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A163815.P14423765264278275669

namespace A163815

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14423765264278275669.Spec : Prop :=
  ∀ n, P14423765264278275669.a n = A163815 n

theorem P14423765264278275669.correct : P14423765264278275669.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A163815, Nat.add_sub_cancel, A163815.P14423765264278275669.a, A163815.P6753554903624383614.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A163815, Nat.add_sub_cancel, A163815.P14423765264278275669.a, A163815.P6753554903624383614.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163815

/-! ## A163815.P3062573742911129138

`∑[∑[a(n-1)+12]]` with `a(0)=0, a(1)=10`
-/

namespace A163815.P3062573742911129138
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.rec [0, 10] fun n f2 =>
  f2 (n - 1) + 12

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163815.P3062573742911129138

namespace A163815

/-- `∑[∑[a(n-1)+12]]` -/
def P3062573742911129138.Spec : Prop :=
  ∀ n, (P3062573742911129138.a n : ℤ) = A163815 n

end A163815

/-! ## A163815.P15699649567341058016

`∑[∑[ogf((10x+2x^2)/(1-2x+x^2))]]`
-/

namespace A163815.P15699649567341058016
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [0, 10, 2] [1, -2, 1] n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163815.P15699649567341058016

namespace A163815

/-- `∑[∑[ogf((10x+2x^2)/(1-2x+x^2))]]` -/
def P15699649567341058016.Spec : Prop :=
  ∀ n, P15699649567341058016.a n = A163815 n

end A163815

/-! ## A163815.P8799203174699101143

`lcm(n+1, n*(2*n+3))`
-/

namespace A163815.P8799203174699101143
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm (n + 1) (n * (2 * n + 3))

end

end A163815.P8799203174699101143

namespace A163815

/-- `lcm(n+1, n*(2*n+3))` -/
def P8799203174699101143.Spec : Prop :=
  ∀ n, (P8799203174699101143.a n : ℤ) = A163815 n

end A163815

/-! ## A163815.P3776403460108700196

`∑[Δ[n*C(2*n, 2)]-1]`
-/

namespace A163815.P3776403460108700196
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n * Nat.choose (2 * n) 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (f2 (n + 1) : ℤ) - (f2 n : ℤ) - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163815.P3776403460108700196

namespace A163815

/-- `∑[Δ[n*C(2*n, 2)]-1]` -/
def P3776403460108700196.Spec : Prop :=
  ∀ n, P3776403460108700196.a n = A163815 n

end A163815

/-! ## A163815.P2026182334496487149

`(n+2)*C(Δ[n²], 2)+n`
-/

namespace A163815.P2026182334496487149
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  (n + 2) * Nat.choose ((f1 (n + 1) : ℤ) - (f1 n : ℤ)).toNat 2 + n

end

end A163815.P2026182334496487149

namespace A163815

/-- `(n+2)*C(Δ[n²], 2)+n` -/
def P2026182334496487149.Spec : Prop :=
  ∀ n, (P2026182334496487149.a n : ℤ) = A163815 n

end A163815

/-! ## A163815.P7023675224209903890

`lcm((n+1)², Δ[n²])-(n+1)`
-/

namespace A163815.P7023675224209903890
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (Int.lcm ((n + 1) ^ 2 : ℤ) ((f1 (n + 1) : ℤ) - (f1 n : ℤ)) : ℤ) - (n + 1 : ℤ)

end

end A163815.P7023675224209903890

namespace A163815

/-- `lcm((n+1)², Δ[n²])-(n+1)` -/
def P7023675224209903890.Spec : Prop :=
  ∀ n, P7023675224209903890.a n = A163815 n

end A163815

/-! ## A163815.P15538926616213941219

`n+(n+2)*C(2*n+1, 2)`
-/

namespace A163815.P15538926616213941219
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + (n + 2) * Nat.choose (2 * n + 1) 2

end

end A163815.P15538926616213941219

namespace A163815

/-- `n+(n+2)*C(2*n+1, 2)` -/
def P15538926616213941219.Spec : Prop :=
  ∀ n, (P15538926616213941219.a n : ℤ) = A163815 n

theorem P15538926616213941219.correct : P15538926616213941219.Spec := by
  intro n
  simp only [A163815, Nat.add_sub_cancel, A163815.P15538926616213941219.a, A163815.P6753554903624383614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163815

/-! ## A163815.P12492978305406398335

`(2*n+1)*record[n*(n-2)]+n`
-/

namespace A163815.P12492978305406398335
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * ((n : ℤ) - 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (2 * n + 1 : ℤ) * f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) + (n : ℤ)

end

end A163815.P12492978305406398335

namespace A163815

/-- `(2*n+1)*record[n*(n-2)]+n` -/
def P12492978305406398335.Spec : Prop :=
  ∀ n, P12492978305406398335.a n = A163815 n

end A163815

/-! ## A163815.P13824587257968100150

`a(n-1)+(3*n+2)*2*n` with `a(0)=0`
-/

namespace A163815.P13824587257968100150
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [0] fun n a =>
  a (n - 1) + (3 * n + 2) * (2 * n)

end

end A163815.P13824587257968100150

namespace A163815

/-- `a(n-1)+(3*n+2)*2*n` -/
def P13824587257968100150.Spec : Prop :=
  ∀ n, (P13824587257968100150.a n : ℤ) = A163815 n

theorem P13824587257968100150.correct : P13824587257968100150.Spec := by
  intro n
  induction n with
  | zero => simp [A163815, A163815.P13824587257968100150.a, A163815.P6753554903624383614.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
  | succ m ih =>
    simp only [A163815, Nat.add_sub_cancel, A163815.P13824587257968100150.a, A163815.P6753554903624383614.a, SequenceMachineLib.memo_apply] at ih ⊢
    rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
    try simp only [Nat.add_sub_cancel, Nat.lt_add_one, ↓reduceIte]
    try push_cast at ih ⊢
    try linarith

end A163815

/-! ## A163815.P1700721650565868276

`∑[A202804(n)]`
-/

namespace A163815.P1700721650565868276
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202804 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163815.P1700721650565868276

namespace A163815

/-- `∑[A202804(n)]` -/
def P1700721650565868276.Spec : Prop :=
  ∀ n, P1700721650565868276.a n = A163815 n

end A163815

/-! ## A163815.P1442221990816093930

`∑[A080859(n)-1]`
-/

namespace A163815.P1442221990816093930
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A080859 n - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163815.P1442221990816093930

namespace A163815

/-- `∑[A080859(n)-1]` -/
def P1442221990816093930.Spec : Prop :=
  ∀ n, P1442221990816093930.a n = A163815 n

end A163815

/-! ## A163815.P3244452150130843667

`∑[2*A045944(n)]`
-/

namespace A163815.P3244452150130843667
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A045944 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163815.P3244452150130843667

namespace A163815

/-- `∑[2*A045944(n)]` -/
def P3244452150130843667.Spec : Prop :=
  ∀ n, P3244452150130843667.a n = A163815 n

end A163815

/-! ## A163815.P14596769685960378800

`∑[A195319(n)+n]`
-/

namespace A163815.P14596769685960378800
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195319 n + (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163815.P14596769685960378800

namespace A163815

/-- `∑[A195319(n)+n]` -/
def P14596769685960378800.Spec : Prop :=
  ∀ n, P14596769685960378800.a n = A163815 n

end A163815

/-! ## A163815.P12609658410164417388

`A281381(n)+∑[n]`
-/

namespace A163815.P12609658410164417388
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A281381 n + ((∑ j ∈ Finset.range (n + 1), f1 j : ℕ) : ℤ)

end

end A163815.P12609658410164417388

namespace A163815

/-- `A281381(n)+∑[n]` -/
def P12609658410164417388.Spec : Prop :=
  ∀ n, P12609658410164417388.a n = A163815 n

end A163815

/-! ## A163815.P6576086208325255012

`∑[A211014(n)-n]`
-/

namespace A163815.P6576086208325255012
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211014 n - (n : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163815.P6576086208325255012

namespace A163815

/-- `∑[A211014(n)-n]` -/
def P6576086208325255012.Spec : Prop :=
  ∀ n, P6576086208325255012.a n = A163815 n

end A163815

/-! ## A163815.P6468118206880342791

`∑[n*A016957(n)]`
-/

namespace A163815.P6468118206880342791
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A016957 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163815.P6468118206880342791

namespace A163815

/-- `∑[n*A016957(n)]` -/
def P6468118206880342791.Spec : Prop :=
  ∀ n, P6468118206880342791.a n = A163815 n

end A163815

/-! ## A163815.P3088389000998615571

`A163832(n)+2*n`
-/

namespace A163815.P3088389000998615571
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163832 n + (2 * n : ℤ)

end

end A163815.P3088389000998615571

namespace A163815

/-- `A163832(n)+2*n` -/
def P3088389000998615571.Spec : Prop :=
  ∀ n, P3088389000998615571.a n = A163815 n

theorem P3088389000998615571.correct : P3088389000998615571.Spec := by
  intro n
  simp only [A163815, Nat.add_sub_cancel, A163815.P3088389000998615571.a, A163815.P6753554903624383614.a, A163832, A163832.P13239804443281733024.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163815

/-! ## A163815.P2444448392192015160

`A163683(n)+3*n`
-/

namespace A163815.P2444448392192015160
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163683 n + (3 * n : ℤ)

end

end A163815.P2444448392192015160

namespace A163815

/-- `A163683(n)+3*n` -/
def P2444448392192015160.Spec : Prop :=
  ∀ n, P2444448392192015160.a n = A163815 n

theorem P2444448392192015160.correct : P2444448392192015160.Spec := by
  intro n
  simp only [A163815, Nat.add_sub_cancel, A163815.P2444448392192015160.a, A163815.P6753554903624383614.a, A163683, A163683.P9077121025577207897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163815

/-!
# A163816: Integers with exactly 100 divisors.

The programs for A163816, there is no canonical definition to state claims against.
-/

/-! ## A163816.P8917313069549986606

`A014613(A253919(n+1))*A115430(A007875(3^n))`
-/

namespace A163816.P8917313069549986606
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014613 (A253919 (n + 1)).toNat * A115430 (A007875 (3 ^ n)).toNat

end

end A163816.P8917313069549986606

/-! ## A163816.P12632532829524413870

`A046386(n+1)*A165827(A046409(n+1))`
-/

namespace A163816.P12632532829524413870
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046386 (n + 1) * A165827 (A046409 (n + 1)).toNat

end

end A163816.P12632532829524413870

/-! ## A163816.P12529888830125586495

`3*A228967(A179704(n+1))`
-/

namespace A163816.P12529888830125586495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  3 * A228967 (A179704 (n + 1)).toNat

end

end A163816.P12529888830125586495

/-!
# A163817: Expansion of (1 - x^2) * (1 - x^5) / ((1 - x) * (1 - x^6)) in powers of x.

The programs for A163817, the canonical program `A163817.P2809443599225866464` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163817 has offset 0).

The definition of A163817 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x^2-x^5+x^7)/(1-x-x^6+x^7))` (program `A163817.P2809443599225866464`, by `A163817.P2809443599225866464.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163817.P2809443599225866464

`ogf((1-x^2-x^5+x^7)/(1-x-x^6+x^7))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163817

/-- `ogf((1-x^2-x^5+x^7)/(1-x-x^6+x^7))` -/
def P2809443599225866464.Spec : Prop :=
  ∀ n, P2809443599225866464.a n = A163817 n

theorem P2809443599225866464.correct : P2809443599225866464.Spec := by
  intro n
  simp only [A163817]

end A163817

/-!
# A163818: Expansion of (1 - x) * (1 - x^6) / ((1 - x^2) * (1 - x^5)) in powers of x.

The programs for A163818, the canonical program `A163818.P16965500420015743667` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163818 has offset 0).

The definition of A163818 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `ogf((1-x-x^6+x^7)/(1-x^2-x^5+x^7))` (program `A163818.P16965500420015743667`, by `A163818.P16965500420015743667.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163818.P16965500420015743667

`ogf((1-x-x^6+x^7)/(1-x^2-x^5+x^7))`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163818

/-- `ogf((1-x-x^6+x^7)/(1-x^2-x^5+x^7))` -/
def P16965500420015743667.Spec : Prop :=
  ∀ n, P16965500420015743667.a n = A163818 n

theorem P16965500420015743667.correct : P16965500420015743667.Spec := by
  intro n
  simp only [A163818]

end A163818

/-!
# A163819: Expansion of (phi(q) * phi(q^10) - phi(q^2) * phi(q^5)) / 2 in powers of q where phi() is a Ramanujan theta function.

The programs for A163819, there is no canonical definition to state claims against.
-/

/-! ## A163819.P6613716493492322822

`A317641(n+1)-A035180(n+1)`
-/

namespace A163819.P6613716493492322822
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A317641 (n + 1) - A035180 (n + 1)

end

end A163819.P6613716493492322822

/-! ## A163819.P2691329252462381839

`(A317641(n+1)-A317641(2*(n+1)))/2`
-/

namespace A163819.P2691329252462381839
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A317641 (n + 1) - A317641 (2 * (n + 1)) : ℚ) / 2

end

end A163819.P2691329252462381839

/-! ## A163819.P9397967134047338535

`A142150(A317641(2*(n+1))+A317641(n+1))-A317641(2*(n+1))`
-/

namespace A163819.P9397967134047338535
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A142150 (A317641 (2 * (n + 1)) + A317641 (n + 1)).toNat - A317641 (2 * (n + 1))

end

end A163819.P9397967134047338535

/-!
# A163820: Number of permutations of the divisors of n that are greater than 1, in which consecutive elements are not coprime.

The programs for A163820, there is no canonical definition to state claims against.
-/

/-! ## A163820.P12188846740960651979

`A293900(n+1)*A293902(n+1)`
-/

namespace A163820.P12188846740960651979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A293900 (n + 1) * A293902 (n + 1)

end

end A163820.P12188846740960651979

/-! ## A163820.P13500242207108482663

`A112624(lcm(11, A285769(n+1)))*A293900(n+1)`
-/

namespace A163820.P13500242207108482663
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (Int.lcm 11 (A285769 (n + 1))) * A293900 (n + 1)

end

end A163820.P13500242207108482663

/-! ## A163820.P1936071814997120064

`A112624(41*A285769(n+1))*A293900(n+1)`
-/

namespace A163820.P1936071814997120064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112624 (41 * A285769 (n + 1)).toNat * A293900 (n + 1)

end

end A163820.P1936071814997120064

/-! ## A163820.P894840658415635932

`∏{e}[n+1, #!]^A001221(A244668(n+1))*A293900(n+1)`
-/

namespace A163820.P894840658415635932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 1

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∏ p ∈ Nat.primeFactors (f1 n), Nat.factorial (Nat.factorization (f1 n) p) : ℕ) : ℚ) ^ (A001221 (A244668 (n + 1)).toNat : ℤ) * (A293900 (n + 1) : ℚ)

end

end A163820.P894840658415635932

/-! ## A163820.P17149174361597774797

`A112624(n+1)^A001221(A007956(n+1))*A293900(n+1)`
-/

namespace A163820.P17149174361597774797
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A112624 (n + 1) : ℚ) ^ (A001221 (A007956 (n + 1)).toNat : ℤ) * (A293900 (n + 1) : ℚ)

end

end A163820.P17149174361597774797

/-!
# A163821: a(n) = product of decimal digits of A000043(n).

The programs for A163821, there is no canonical definition to state claims against.
-/

/-! ## A163821.P3826489558560788467

`A007954(A000043(n+1))`
-/

namespace A163821.P3826489558560788467
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007954 (A000043 (n + 1)).toNat

end

end A163821.P3826489558560788467

/-! ## A163821.P12928275339802624216

`∏{digits}[A090748(n+1)+1, #]`
-/

namespace A163821.P12928275339802624216
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090748 (n + 1) + 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A163821.P12928275339802624216

/-! ## A163821.P14620970789264692517

`∏{digits}[A050475(n+1)-1, #]`
-/

namespace A163821.P14620970789264692517
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A050475 (n + 1) - 1

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A163821.P14620970789264692517

/-! ## A163821.P4307219697496833680

`∏{digits}[A153798(n+1)+2, #]`
-/

namespace A163821.P4307219697496833680
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153798 (n + 1) + 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (f1 n).natAbs).map fun (x : ℕ) => x).prod

end

end A163821.P4307219697496833680

/-! ## A163821.P7425457868512841342

`∏{digits}[A061645(n+1)/2, #]`
-/

namespace A163821.P7425457868512841342
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A061645 (n + 1) : ℚ) / 2

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ((SequenceMachineLib.digits10 (SequenceMachineLib.roundAway (f1 n)).natAbs).map fun (x : ℕ) => x).prod

end

end A163821.P7425457868512841342

/-!
# A163822: Number of divisors d of 2n such that gcd(d-1,2n/d-1) = 1.

The programs for A163822, there is no canonical definition to state claims against.
-/

/-! ## A163822.P6177266059829286787

`abs(1-Δ[A163823(A028310(n))])+1`
-/

namespace A163822.P6177266059829286787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |1 - (f1 (n + 1) - f1 n)| + 1

end

end A163822.P6177266059829286787

/-! ## A163822.P11437833858995785992

`A000038(n)+Δ[A163823(A028310(n))]`
-/

namespace A163822.P11437833858995785992
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000038 n + (f1 (n + 1) - f1 n)

end

end A163822.P11437833858995785992

/-! ## A163822.P7846495672643223909

`A167876(n+3)+Δ[A163823(A028310(n))]`
-/

namespace A163822.P7846495672643223909
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A167876 (n + 3) + (f1 (n + 1) - f1 n)

end

end A163822.P7846495672643223909

/-! ## A163822.P3439236283833232141

`A280712(2*n+1)+Δ[A163823(A028310(n))]`
-/

namespace A163822.P3439236283833232141
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280712 (2 * n + 1) + (f1 (n + 1) - f1 n)

end

end A163822.P3439236283833232141

/-! ## A163822.P13001971160964394942

`A163823(n+1)+A000038(n)-A163823(A028310(n))`
-/

namespace A163822.P13001971160964394942
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163823 (n + 1) + (A000038 n - A163823 (A028310 n).toNat)

end

end A163822.P13001971160964394942

/-!
# A163823: Number of initial segments of signature sequences of length n.

The programs for A163823, there is no canonical definition to state claims against.
-/

/-! ## A163823.P3518078098249289488

`∑[A163822(n+1)]-1`
-/

namespace A163823.P3518078098249289488
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 1

end

end A163823.P3518078098249289488

/-! ## A163823.P14590738945884347217

`∑[A163822(ceil(acot(n)+n))]`
-/

namespace A163823.P14590738945884347217
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163822 ⌈SequenceMachineLib.acot (n : ℝ) + (n : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163823.P14590738945884347217

/-! ## A163823.P344134020795494538

`∑[A163822(ceil(sqrt(n²+2)))]`
-/

namespace A163823.P344134020795494538
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163822 ⌈Real.sqrt (n ^ 2 + 2 : ℝ)⌉.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163823.P344134020795494538

/-! ## A163823.P8805094163495342749

`A163822(ceil(acot(2*n)+n))+a(n-1)` with `a(0)=1`
-/

namespace A163823.P8805094163495342749
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A163822 ⌈SequenceMachineLib.acot (2 * n : ℝ) + (n : ℝ)⌉.toNat + a (n - 1)

end

end A163823.P8805094163495342749

/-! ## A163823.P8360073253532234575

`A023443(∑[A163822(n+1)])`
-/

namespace A163823.P8360073253532234575
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023443 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163823.P8360073253532234575

/-! ## A163823.P7692064602473839776

`A029578(∑[A163822(n+1)])`
-/

namespace A163823.P7692064602473839776
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029578 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163823.P7692064602473839776

/-! ## A163823.P12106784323418285780

`abs(A024000(∑[A163822(n+1)]))`
-/

namespace A163823.P12106784323418285780
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163822 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A024000 (∑ j ∈ Finset.range (n + 1), f1 j).toNat|

end

end A163823.P12106784323418285780

/-! ## A163823.P17719299380257558095

`A004275(∑[A163822(n+1)])/2`
-/

namespace A163823.P17719299380257558095
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163822 (n + 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A004275 (∑ j ∈ Finset.range (n + 1), f1 j).toNat : ℚ) / 2

end

end A163823.P17719299380257558095

/-! ## A163823.P9187527718032679516

`∑[A163822(n+1)^and(1, A000040(n+1))]`
-/

namespace A163823.P9187527718032679516
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163822 (n + 1) : ℚ) ^ (Int.land 1 (A000040 (n + 1)) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163823.P9187527718032679516

/-! ## A163823.P10816131341837435913

`∑[A163822(n+1)^A001221(A001316(n))]`
-/

namespace A163823.P10816131341837435913
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163822 (n + 1) : ℚ) ^ (A001221 (A001316 n).toNat : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163823.P10816131341837435913

/-!
# A163824: Number of permutations of length n in the 2x2 double-chevron permutation grid class.

The programs for A163824, the canonical program `A163824.P14431625898049546395` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163824 has offset 0).

The definition of A163824 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 169 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163824.P14431625898049546395

`A000984(n)-Δ[Δ[A000392(n)]]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A163824

/-- `A000984(n)-Δ[Δ[A000392(n)]]` -/
def P14431625898049546395.Spec : Prop :=
  ∀ n, P14431625898049546395.a n = A163824 n

theorem P14431625898049546395.correct : P14431625898049546395.Spec := by
  intro n
  simp only [A163824]

end A163824

/-! ## A163824.P6645026117296601579

`A001405(2*n)-Δ[Δ[A000392(n)]]`
-/

namespace A163824.P6645026117296601579
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001405 (2 * n) - (f1 (n + 1) - f1 n)

end

end A163824.P6645026117296601579

namespace A163824

/-- `A001405(2*n)-Δ[Δ[A000392(n)]]` -/
def P6645026117296601579.Spec : Prop :=
  ∀ n, P6645026117296601579.a n = A163824 n

end A163824

/-! ## A163824.P6352145258420290048

`A128014(2*n)-Δ[Δ[A000392(n)]]`
-/

namespace A163824.P6352145258420290048
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128014 (2 * n) - (f1 (n + 1) - f1 n)

end

end A163824.P6352145258420290048

namespace A163824

/-- `A128014(2*n)-Δ[Δ[A000392(n)]]` -/
def P6352145258420290048.Spec : Prop :=
  ∀ n, P6352145258420290048.a n = A163824 n

end A163824

/-! ## A163824.P7871471347922361818

`(n+1)*A000108(n)-(A025192(n)-A011782(n))`
-/

namespace A163824.P7871471347922361818
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A000108 n - (A025192 n - A011782 n)

end

end A163824.P7871471347922361818

namespace A163824

/-- `(n+1)*A000108(n)-(A025192(n)-A011782(n))` -/
def P7871471347922361818.Spec : Prop :=
  ∀ n, P7871471347922361818.a n = A163824 n

end A163824

/-! ## A163824.P16850681464908716732

`A056040(2*n)-Δ[Δ[A000392(n)]]`
-/

namespace A163824.P16850681464908716732
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000392 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f2 (n + 1) - f2 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056040 (2 * n) - (f1 (n + 1) - f1 n)

end

end A163824.P16850681464908716732

namespace A163824

/-- `A056040(2*n)-Δ[Δ[A000392(n)]]` -/
def P16850681464908716732.Spec : Prop :=
  ∀ n, P16850681464908716732.a n = A163824 n

end A163824

/-!
# A163825: Number of primes p with 2^n <= p < 3^n.

The programs for A163825, there is no canonical definition to state claims against.
-/

/-! ## A163825.P2360596099795509394

`or(C(2, n), A076958(n+1))`
-/

namespace A163825.P2360596099795509394
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (Nat.choose 2 n : ℤ) (A076958 (n + 1))

end

end A163825.P2360596099795509394

/-! ## A163825.P13609463470102390368

`A076958(n+1)+A000007(n)`
-/

namespace A163825.P13609463470102390368
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A076958 (n + 1) + A000007 n

end

end A163825.P13609463470102390368

/-! ## A163825.P15595487026997407955

`A088157(n)+A076958(n+1)`
-/

namespace A163825.P15595487026997407955
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A088157 n + A076958 (n + 1)

end

end A163825.P15595487026997407955

/-! ## A163825.P2831297347037511501

`A097479(n)+A076958(n+1)`
-/

namespace A163825.P2831297347037511501
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097479 n + A076958 (n + 1)

end

end A163825.P2831297347037511501

/-! ## A163825.P6536496327399464785

`A112315(n)+A076958(n+1)`
-/

namespace A163825.P6536496327399464785
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A112315 n + A076958 (n + 1)

end

end A163825.P6536496327399464785

/-!
# A163826: G.f.: Sum_{n>=1} n * 2^(n^2) * x^n / (1 - 2^n*x)^(n+1).

The programs for A163826, the canonical program `A163826.P8704035225855092648` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163826 has offset 1).

The definition of A163826 is `assumedProven` (OEIS-proven): the Lean definition is an OEIS formula that is not marked as a conjecture, and every sequence it uses is verified or OEIS-proven. Lean has not checked the formula. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: OEIS-proven.
-/

/-! ## A163826.P8704035225855092648

`(n+1)*2^(n+1)*(2^(n+1)+1)^n`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163826

/-- `(n+1)*2^(n+1)*(2^(n+1)+1)^n` -/
def P8704035225855092648.Spec : Prop :=
  ∀ n, (P8704035225855092648.a n : ℤ) = A163826 (n + 1)

theorem P8704035225855092648.correct : P8704035225855092648.Spec := by
  intro n
  simp only [A163826, Nat.add_sub_cancel]

end A163826

/-! ## A163826.P2079721001709797404

`A171800(n+1)-A136516(n+1)`
-/

namespace A163826.P2079721001709797404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A171800 (n + 1) - A136516 (n + 1)

end

end A163826.P2079721001709797404

namespace A163826

/-- `A171800(n+1)-A136516(n+1)` -/
def P2079721001709797404.Spec : Prop :=
  ∀ n, P2079721001709797404.a n = A163826 (n + 1)

end A163826

/-!
# A163827: a(n) = 6n^3 + 1, solution z in Diophantine equation x^3 + y^3 = z^3 - 2. It may be considered a Fermat near miss by 2.

The programs for A163827, the canonical program `A163827.P2411874291644186783` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163827 has offset 1).

The definition of A163827 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `6*(n+1)^3+1` (program `A163827.P2411874291644186783`, by `A163827.P2411874291644186783.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163827.P2411874291644186783

`6*(n+1)^3+1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163827

/-- `6*(n+1)^3+1` -/
def P2411874291644186783.Spec : Prop :=
  ∀ n, (P2411874291644186783.a n : ℤ) = A163827 (n + 1)

theorem P2411874291644186783.correct : P2411874291644186783.Spec := by
  intro n
  simp only [A163827, Nat.add_sub_cancel]

end A163827

/-! ## A163827.P2980364046330826707

`or(1, 6/(n+1)^-3)`
-/

namespace A163827.P2980364046330826707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (SequenceMachineLib.roundAway (6 / (n + 1 : ℚ) ^ (-3 : ℤ)))

end

end A163827.P2980364046330826707

namespace A163827

/-- `or(1, 6/(n+1)^-3)` -/
def P2980364046330826707.Spec : Prop :=
  ∀ n, P2980364046330826707.a n = A163827 (n + 1)

end A163827

/-! ## A163827.P14144089459886398318

`xor(1, 6/(n+1)^-3)`
-/

namespace A163827.P14144089459886398318
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 1 (SequenceMachineLib.roundAway (6 / (n + 1 : ℚ) ^ (-3 : ℤ)))

end

end A163827.P14144089459886398318

namespace A163827

/-- `xor(1, 6/(n+1)^-3)` -/
def P14144089459886398318.Spec : Prop :=
  ∀ n, P14144089459886398318.a n = A163827 (n + 1)

end A163827

/-! ## A163827.P255307275827859686

`(Δ[12*A000217(n)²]+2)/2`
-/

namespace A163827.P255307275827859686
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  12 * A000217 n ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (f1 (n + 1) - f1 n + 2 : ℚ) / 2

end

end A163827.P255307275827859686

namespace A163827

/-- `(Δ[12*A000217(n)²]+2)/2` -/
def P255307275827859686.Spec : Prop :=
  ∀ n, P255307275827859686.a n = (A163827 (n + 1) : ℚ)

theorem P255307275827859686.correct : P255307275827859686.Spec := by
  intro n
  simp only [A163827, Nat.add_sub_cancel, A163827.P255307275827859686.f1, A163827.P255307275827859686.a, A163827.P2411874291644186783.a, A000217, A000217.P10269402890581615239.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | (qify; simp only [Nat.cast_choose_eq_descPochhammer_div, descPochhammer_succ_right, descPochhammer_zero, Polynomial.eval_mul, Polynomial.eval_sub, Polynomial.eval_X, Polynomial.eval_natCast, Polynomial.eval_ofNat, Polynomial.eval_one, Nat.factorial]; (try push_cast); (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163827

/-! ## A163827.P14848440665428010510

`Δ[n*(A100175(n+1)-n)]`
-/

namespace A163827.P14848440665428010510
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * (A100175 (n + 1) - (n : ℤ))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163827.P14848440665428010510

namespace A163827

/-- `Δ[n*(A100175(n+1)-n)]` -/
def P14848440665428010510.Spec : Prop :=
  ∀ n, P14848440665428010510.a n = A163827 (n + 1)

end A163827

/-! ## A163827.P7471578517183066295

`Δ[A162673(n+1)+(n+1)²]`
-/

namespace A163827.P7471578517183066295
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162673 (n + 1) + ((n + 1) ^ 2 : ℤ)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163827.P7471578517183066295

namespace A163827

/-- `Δ[A162673(n+1)+(n+1)²]` -/
def P7471578517183066295.Spec : Prop :=
  ∀ n, P7471578517183066295.a n = A163827 (n + 1)

end A163827

/-! ## A163827.P16114527201195257937

`abs((n+1)*A227776(n+1)-n)`
-/

namespace A163827.P16114527201195257937
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |(n + 1 : ℤ) * A227776 (n + 1) - (n : ℤ)|

end

end A163827.P16114527201195257937

namespace A163827

/-- `abs((n+1)*A227776(n+1)-n)` -/
def P16114527201195257937.Spec : Prop :=
  ∀ n, P16114527201195257937.a n = A163827 (n + 1)

end A163827

/-! ## A163827.P10960377648008607559

`∑[A063136(n²+1+n)]`
-/

namespace A163827.P10960377648008607559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063136 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163827.P10960377648008607559

namespace A163827

/-- `∑[A063136(n²+1+n)]` -/
def P10960377648008607559.Spec : Prop :=
  ∀ n, P10960377648008607559.a n = A163827 (n + 1)

end A163827

/-! ## A163827.P11714945771347735043

`∑[A063153(n²+1+n)]`
-/

namespace A163827.P11714945771347735043
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A063153 (n ^ 2 + 1 + n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163827.P11714945771347735043

namespace A163827

/-- `∑[A063153(n²+1+n)]` -/
def P11714945771347735043.Spec : Prop :=
  ∀ n, P11714945771347735043.a n = A163827 (n + 1)

end A163827

/-! ## A163827.P14176227888338863306

`A176284(∑[4*(n+1)])`
-/

namespace A163827.P14176227888338863306
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 * (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176284 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163827.P14176227888338863306

namespace A163827

/-- `A176284(∑[4*(n+1)])` -/
def P14176227888338863306.Spec : Prop :=
  ∀ n, P14176227888338863306.a n = A163827 (n + 1)

end A163827

/-!
# A163830: The n-th composite minus the product of the indices of the primes in its prime factorization.

The programs for A163830, the canonical program `A163830.P13667281451019615526` is in `Seq.B010.C000`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163830 has offset 1).

The definition of A163830 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A003963, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163830.P13667281451019615526

`A002808(n+1)-A003963(A002808(n+1))`

The canonical program, it is in `Seq.B010.C000`.
-/

namespace A163830

/-- `A002808(n+1)-A003963(A002808(n+1))` -/
def P13667281451019615526.Spec : Prop :=
  ∀ n, P13667281451019615526.a n = A163830 (n + 1)

theorem P13667281451019615526.correct : P13667281451019615526.Spec := by
  intro n
  simp only [A163830, Nat.add_sub_cancel]

end A163830

/-! ## A163830.P10160771030091996131

`A175508(A002808(n+1))`
-/

namespace A163830.P10160771030091996131
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175508 (A002808 (n + 1)).toNat

end

end A163830.P10160771030091996131

namespace A163830

/-- `A175508(A002808(n+1))` -/
def P10160771030091996131.Spec : Prop :=
  ∀ n, P10160771030091996131.a n = A163830 (n + 1)

end A163830

/-! ## A163830.P15318277004706968170

`A175508(A018252(n+2))`
-/

namespace A163830.P15318277004706968170
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175508 (A018252 (n + 2)).toNat

end

end A163830.P15318277004706968170

namespace A163830

/-- `A175508(A018252(n+2))` -/
def P15318277004706968170.Spec : Prop :=
  ∀ n, P15318277004706968170.a n = A163830 (n + 1)

end A163830

/-! ## A163830.P2592855732818176513

`A002808(n+1)-A003963(Δ[A053767(n)])`
-/

namespace A163830.P2592855732818176513
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A003963 (f1 (n + 1) - f1 n).toNat

end

end A163830.P2592855732818176513

namespace A163830

/-- `A002808(n+1)-A003963(Δ[A053767(n)])` -/
def P2592855732818176513.Spec : Prop :=
  ∀ n, P2592855732818176513.a n = A163830 (n + 1)

end A163830

/-! ## A163830.P5595942506895616686

`A141468(n+3)-A003963(A141468(n+3))`
-/

namespace A163830.P5595942506895616686
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) - A003963 (A141468 (n + 3)).toNat

end

end A163830.P5595942506895616686

namespace A163830

/-- `A141468(n+3)-A003963(A141468(n+3))` -/
def P5595942506895616686.Spec : Prop :=
  ∀ n, P5595942506895616686.a n = A163830 (n + 1)

end A163830

/-! ## A163830.P17579717806185351661

`A072668(n+1)+1-A003963(A072668(n+1)+1)`
-/

namespace A163830.P17579717806185351661
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072668 (n + 1) + (1 - A003963 (A072668 (n + 1) + 1).toNat)

end

end A163830.P17579717806185351661

namespace A163830

/-- `A072668(n+1)+1-A003963(A072668(n+1)+1)` -/
def P17579717806185351661.Spec : Prop :=
  ∀ n, P17579717806185351661.a n = A163830 (n + 1)

theorem P17579717806185351661.correct : P17579717806185351661.Spec := by
  intro n
  simp only [A163830, Nat.add_sub_cancel, A163830.P17579717806185351661.a, A163830.P13667281451019615526.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A003963, A003963.P6853423646423809573.a, A072668, A072668.P5648318357023435289.a, A000005, A000005.P16091521709108585461.a, A156552, A156552.P4268073137713085227.a, A243499, A243499.P13821279400790425584.a, A005941, A005941.P9595689460679922607.f1, A005941.P9595689460679922607.a, A023416, A023416.P8124303482289229133.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A053645, A053645.P13234994043849603743.a, A000120, A000120.P2816527436160941581.a, A070939, A070939.P14677302147902843740.a, A364557, A364557.P16113127302810243144.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1) | ((try field_simp); ring_nf)

end A163830

/-!
# A163831: a(n) is the n-th composite minus the sum of the indices of the primes in its prime factorization.

The programs for A163831, the canonical program `A163831.P18027603680090053005` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163831 has offset 1).

The definition of A163831 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A163515, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163831.P18027603680090053005

`A002808(n+1)-A163515(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163831

/-- `A002808(n+1)-A163515(n+1)` -/
def P18027603680090053005.Spec : Prop :=
  ∀ n, P18027603680090053005.a n = A163831 (n + 1)

theorem P18027603680090053005.correct : P18027603680090053005.Spec := by
  intro n
  simp only [A163831, Nat.add_sub_cancel]

end A163831

/-! ## A163831.P16458093972049073078

`A178503(Δ[A053767(n)])`
-/

namespace A163831.P16458093972049073078
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (f1 (n + 1) - f1 n).toNat

end

end A163831.P16458093972049073078

namespace A163831

/-- `A178503(Δ[A053767(n)])` -/
def P16458093972049073078.Spec : Prop :=
  ∀ n, P16458093972049073078.a n = A163831 (n + 1)

end A163831

/-! ## A163831.P12706934903568166438

`A178503(A002808(n+1))`
-/

namespace A163831.P12706934903568166438
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (A002808 (n + 1)).toNat

end

end A163831.P12706934903568166438

namespace A163831

/-- `A178503(A002808(n+1))` -/
def P12706934903568166438.Spec : Prop :=
  ∀ n, P12706934903568166438.a n = A163831 (n + 1)

end A163831

/-! ## A163831.P8564192239102487618

`A178503(A018252(n+2))`
-/

namespace A163831.P8564192239102487618
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A178503 (A018252 (n + 2)).toNat

end

end A163831.P8564192239102487618

namespace A163831

/-- `A178503(A018252(n+2))` -/
def P8564192239102487618.Spec : Prop :=
  ∀ n, P8564192239102487618.a n = A163831 (n + 1)

end A163831

/-! ## A163831.P12213532842765812107

`A002808(n+1)-A056239(Δ[A053767(n)])`
-/

namespace A163831.P12213532842765812107
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A056239 (f1 (n + 1) - f1 n).toNat

end

end A163831.P12213532842765812107

namespace A163831

/-- `A002808(n+1)-A056239(Δ[A053767(n)])` -/
def P12213532842765812107.Spec : Prop :=
  ∀ n, P12213532842765812107.a n = A163831 (n + 1)

end A163831

/-! ## A163831.P8445135920726027321

`A141468(n+3)-A056239(A141468(n+3))`
-/

namespace A163831.P8445135920726027321
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (n + 3) - A056239 (A141468 (n + 3)).toNat

end

end A163831.P8445135920726027321

namespace A163831

/-- `A141468(n+3)-A056239(A141468(n+3))` -/
def P8445135920726027321.Spec : Prop :=
  ∀ n, P8445135920726027321.a n = A163831 (n + 1)

end A163831

/-! ## A163831.P11205739562928561708

`A000720(A088982(n+1))-A056239(A002808(n+1))`
-/

namespace A163831.P11205739562928561708
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000720 (A088982 (n + 1)).toNat - A056239 (A002808 (n + 1)).toNat

end

end A163831.P11205739562928561708

namespace A163831

/-- `A000720(A088982(n+1))-A056239(A002808(n+1))` -/
def P11205739562928561708.Spec : Prop :=
  ∀ n, P11205739562928561708.a n = A163831 (n + 1)

end A163831

/-! ## A163831.P1394855966130753451

`Δ[A053767(n)]-A163515(n+1)`
-/

namespace A163831.P1394855966130753451
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A163515 (n + 1)

end

end A163831.P1394855966130753451

namespace A163831

/-- `Δ[A053767(n)]-A163515(n+1)` -/
def P1394855966130753451.Spec : Prop :=
  ∀ n, P1394855966130753451.a n = A163831 (n + 1)

end A163831

/-! ## A163831.P16054205160410851240

`A018252(n+2)-A163515(n+1)`
-/

namespace A163831.P16054205160410851240
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - A163515 (n + 1)

end

end A163831.P16054205160410851240

namespace A163831

/-- `A018252(n+2)-A163515(n+1)` -/
def P16054205160410851240.Spec : Prop :=
  ∀ n, P16054205160410851240.a n = A163831 (n + 1)

end A163831

/-! ## A163831.P14001220882811980078

`A002808(n+1)-A318995(A129401(n+1))`
-/

namespace A163831.P14001220882811980078
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1) - A318995 (A129401 (n + 1)).toNat

end

end A163831.P14001220882811980078

namespace A163831

/-- `A002808(n+1)-A318995(A129401(n+1))` -/
def P14001220882811980078.Spec : Prop :=
  ∀ n, P14001220882811980078.a n = A163831 (n + 1)

end A163831

/-! ## A163831.P10683783985871059588

`A018252(n+2)-A346698(A018252(n+2)²)`
-/

namespace A163831.P10683783985871059588
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) - A346698 (A018252 (n + 2) ^ 2).toNat

end

end A163831.P10683783985871059588

namespace A163831

/-- `A018252(n+2)-A346698(A018252(n+2)²)` -/
def P10683783985871059588.Spec : Prop :=
  ∀ n, P10683783985871059588.a n = A163831 (n + 1)

end A163831

/-!
# A163832: a(n) = n*(2*n^2 + 5*n + 1).

The programs for A163832, the canonical program `A163832.P13239804443281733024` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163832 has offset 0).

The definition of A163832 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(2*n²+5*n+1)` (program `A163832.P13239804443281733024`, by `A163832.P13239804443281733024.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163832.P13239804443281733024

`n*(2*n²+5*n+1)`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163832

/-- `n*(2*n²+5*n+1)` -/
def P13239804443281733024.Spec : Prop :=
  ∀ n, (P13239804443281733024.a n : ℤ) = A163832 n

theorem P13239804443281733024.correct : P13239804443281733024.Spec := by
  intro n
  simp only [A163832]

end A163832

/-! ## A163832.P14900386440744241284

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=8, a(2)=38, a(3)=102`
-/

namespace A163832.P14900386440744241284
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 8, 38, 102] fun n a =>
  4 * a (n - 1) - 6 * a (n - 2) + 4 * a (n - 3) - a (n - 4)

end

end A163832.P14900386440744241284

namespace A163832

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P14900386440744241284.Spec : Prop :=
  ∀ n, P14900386440744241284.a n = A163832 n

theorem P14900386440744241284.correct : P14900386440744241284.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A163832, Nat.add_sub_cancel, A163832.P14900386440744241284.a, A163832.P13239804443281733024.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A163832, Nat.add_sub_cancel, A163832.P14900386440744241284.a, A163832.P13239804443281733024.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [h1, h2, h3, h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163832

/-! ## A163832.P16421532634628963020

`A163683(n)+n`
-/

namespace A163832.P16421532634628963020
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163683 n + (n : ℤ)

end

end A163832.P16421532634628963020

namespace A163832

/-- `A163683(n)+n` -/
def P16421532634628963020.Spec : Prop :=
  ∀ n, P16421532634628963020.a n = A163832 n

theorem P16421532634628963020.correct : P16421532634628963020.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P16421532634628963020.a, A163832.P13239804443281733024.a, A163683, A163683.P9077121025577207897.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P15601195479440776574

`A163815(n)-2*n`
-/

namespace A163832.P15601195479440776574
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163815 n - (2 * n : ℤ)

end

end A163832.P15601195479440776574

namespace A163832

/-- `A163815(n)-2*n` -/
def P15601195479440776574.Spec : Prop :=
  ∀ n, P15601195479440776574.a n = A163832 n

theorem P15601195479440776574.correct : P15601195479440776574.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P15601195479440776574.a, A163832.P13239804443281733024.a, A163815, A163815.P6753554903624383614.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P17839820623043736901

`lcm(n, 2-C(2*n+3, 2))`
-/

namespace A163832.P17839820623043736901
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (n : ℤ) (2 - (Nat.choose (2 * n + 3) 2 : ℤ))

end

end A163832.P17839820623043736901

namespace A163832

/-- `lcm(n, 2-C(2*n+3, 2))` -/
def P17839820623043736901.Spec : Prop :=
  ∀ n, (P17839820623043736901.a n : ℤ) = A163832 n

end A163832

/-! ## A163832.P8124029737732936712

`lcm(2, n*((n+2)*2*n+n+1))`
-/

namespace A163832.P8124029737732936712
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.lcm 2 (n * ((n + 2) * (2 * n) + (n + 1)))

end

end A163832.P8124029737732936712

namespace A163832

/-- `lcm(2, n*((n+2)*2*n+n+1))` -/
def P8124029737732936712.Spec : Prop :=
  ∀ n, (P8124029737732936712.a n : ℤ) = A163832 n

end A163832

/-! ## A163832.P18328656779709164502

`n*A187277(n+1)/(n+1)`
-/

namespace A163832.P18328656779709164502
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((n : ℤ) * A187277 (n + 1) : ℚ) / (n + 1 : ℚ)

end

end A163832.P18328656779709164502

namespace A163832

/-- `n*A187277(n+1)/(n+1)` -/
def P18328656779709164502.Spec : Prop :=
  ∀ n, P18328656779709164502.a n = (A163832 n : ℚ)

theorem P18328656779709164502.correct : P18328656779709164502.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P18328656779709164502.a, A163832.P13239804443281733024.a, A187277, A187277.P941434387435749757.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P4770041382848222018

`A051895(n)+A000326(n)`
-/

namespace A163832.P4770041382848222018
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051895 n + A000326 n

end

end A163832.P4770041382848222018

namespace A163832

/-- `A051895(n)+A000326(n)` -/
def P4770041382848222018.Spec : Prop :=
  ∀ n, P4770041382848222018.a n = A163832 n

end A163832

/-! ## A163832.P9614626673597135076

`A055112(n)+A001105(n)`
-/

namespace A163832.P9614626673597135076
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A055112 n + A001105 n

end

end A163832.P9614626673597135076

namespace A163832

/-- `A055112(n)+A001105(n)` -/
def P9614626673597135076.Spec : Prop :=
  ∀ n, P9614626673597135076.a n = A163832 n

theorem P9614626673597135076.correct : P9614626673597135076.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P9614626673597135076.a, A163832.P13239804443281733024.a, A001105, A001105.P6098599260439307493.a, A055112, A055112.P15553195109781773626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P17200385843591839402

`A049453(n)+A015237(n)`
-/

namespace A163832.P17200385843591839402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A049453 n + A015237 n

end

end A163832.P17200385843591839402

namespace A163832

/-- `A049453(n)+A015237(n)` -/
def P17200385843591839402.Spec : Prop :=
  ∀ n, P17200385843591839402.a n = A163832 n

theorem P17200385843591839402.correct : P17200385843591839402.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P17200385843591839402.a, A163832.P13239804443281733024.a, A015237, A015237.P2392393478135424708.a, A049453, A049453.P17699736680454431626.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P8965374534938476753

`A048395(n)+A033428(n)`
-/

namespace A163832.P8965374534938476753
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048395 n + A033428 n

end

end A163832.P8965374534938476753

namespace A163832

/-- `A048395(n)+A033428(n)` -/
def P8965374534938476753.Spec : Prop :=
  ∀ n, P8965374534938476753.a n = A163832 n

theorem P8965374534938476753.correct : P8965374534938476753.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P8965374534938476753.a, A163832.P13239804443281733024.a, A033428, A033428.P10473664201403486648.a, A048395, A048395.P3571630861933578872.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P16936910684646108874

`A059722(n)+A033582(n)`
-/

namespace A163832.P16936910684646108874
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059722 n + A033582 n

end

end A163832.P16936910684646108874

namespace A163832

/-- `A059722(n)+A033582(n)` -/
def P16936910684646108874.Spec : Prop :=
  ∀ n, P16936910684646108874.a n = A163832 n

theorem P16936910684646108874.correct : P16936910684646108874.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P16936910684646108874.a, A163832.P13239804443281733024.a, A033582, A033582.P4303886374806047270.a, A059722, A059722.P11059442351168334169.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P1189019040250173703

`A061317(n)+A033429(n)`
-/

namespace A163832.P1189019040250173703
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A061317 n + A033429 n

end

end A163832.P1189019040250173703

namespace A163832

/-- `A061317(n)+A033429(n)` -/
def P1189019040250173703.Spec : Prop :=
  ∀ n, P1189019040250173703.a n = A163832 n

theorem P1189019040250173703.correct : P1189019040250173703.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P1189019040250173703.a, A163832.P13239804443281733024.a, A033429, A033429.P6959806467874002675.a, A061317, A061317.P8488168899613189018.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P1069722993092864013

`A099721(n)+A007742(n)`
-/

namespace A163832.P1069722993092864013
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A099721 n + A007742 n

end

end A163832.P1069722993092864013

namespace A163832

/-- `A099721(n)+A007742(n)` -/
def P1069722993092864013.Spec : Prop :=
  ∀ n, P1069722993092864013.a n = A163832 n

theorem P1069722993092864013.correct : P1069722993092864013.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P1069722993092864013.a, A163832.P13239804443281733024.a, A007742, A007742.P14173437786459717136.a, A099721, A099721.P13421266014638133477.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P1555976914514558643

`A135713(n)+A005475(n)`
-/

namespace A163832.P1555976914514558643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135713 n + A005475 n

end

end A163832.P1555976914514558643

namespace A163832

/-- `A135713(n)+A005475(n)` -/
def P1555976914514558643.Spec : Prop :=
  ∀ n, P1555976914514558643.a n = A163832 n

end A163832

/-! ## A163832.P7810527377713698903

`A139275(n)+A015238(n)`
-/

namespace A163832.P7810527377713698903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A139275 n + A015238 n

end

end A163832.P7810527377713698903

namespace A163832

/-- `A139275(n)+A015238(n)` -/
def P7810527377713698903.Spec : Prop :=
  ∀ n, P7810527377713698903.a n = A163832 n

theorem P7810527377713698903.correct : P7810527377713698903.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P7810527377713698903.a, A163832.P13239804443281733024.a, A015238, A015238.P18123639342462093912.a, A139275, A139275.P8551963079479354628.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P4966831002521631972

`A168668(n)+A007588(n)`
-/

namespace A163832.P4966831002521631972
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A168668 n + A007588 n

end

end A163832.P4966831002521631972

namespace A163832

/-- `A168668(n)+A007588(n)` -/
def P4966831002521631972.Spec : Prop :=
  ∀ n, P4966831002521631972.a n = A163832 n

theorem P4966831002521631972.correct : P4966831002521631972.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P4966831002521631972.a, A163832.P13239804443281733024.a, A007588, A007588.P13302891266756921093.a, A168668, A168668.P11025489875590215140.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P7113041840039605145

`A172073(n)+A062725(n)`
-/

namespace A163832.P7113041840039605145
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A172073 n + A062725 n

end

end A163832.P7113041840039605145

namespace A163832

/-- `A172073(n)+A062725(n)` -/
def P7113041840039605145.Spec : Prop :=
  ∀ n, P7113041840039605145.a n = A163832 n

end A163832

/-! ## A163832.P8135820755328365669

`A202803(n)+A033431(n)`
-/

namespace A163832.P8135820755328365669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A202803 n + A033431 n

end

end A163832.P8135820755328365669

namespace A163832

/-- `A202803(n)+A033431(n)` -/
def P8135820755328365669.Spec : Prop :=
  ∀ n, P8135820755328365669.a n = A163832 n

theorem P8135820755328365669.correct : P8135820755328365669.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P8135820755328365669.a, A163832.P13239804443281733024.a, A033431, A033431.P14261726496554658204.a, A202803, A202803.P8642129568802212468.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-! ## A163832.P12105834872748933143

`A275709(n)+A014105(n)`
-/

namespace A163832.P12105834872748933143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A275709 n + A014105 n

end

end A163832.P12105834872748933143

namespace A163832

/-- `A275709(n)+A014105(n)` -/
def P12105834872748933143.Spec : Prop :=
  ∀ n, P12105834872748933143.a n = A163832 n

theorem P12105834872748933143.correct : P12105834872748933143.Spec := by
  intro n
  simp only [A163832, Nat.add_sub_cancel, A163832.P12105834872748933143.a, A163832.P13239804443281733024.a, A014105, A014105.P182524374866796289.a, A275709, A275709.P9405816799488244254.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163832

/-!
# A163833: a(n) = n*(6*n^2 + 15*n + 5)/2.

The programs for A163833, the canonical program `A163833.P3295539293877838015` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163833 has offset 0).

The definition of A163833 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n*(6*n²+15*n+5)/2` (program `A163833.P4154700585790261164`, by `A163833.P4154700585790261164.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163833.P4154700585790261164

`n*(6*n²+15*n+5)/2`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163833.P4154700585790261164
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n * (6 * n ^ 2 + 15 * n + 5) : ℚ) / 2

end

end A163833.P4154700585790261164

namespace A163833

/-- `n*(6*n²+15*n+5)/2` -/
def P4154700585790261164.Spec : Prop :=
  ∀ n, P4154700585790261164.a n = (A163833 n : ℚ)

theorem P4154700585790261164.correct : P4154700585790261164.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 | 2 | 3 =>
      simp [A163833, Nat.add_sub_cancel, A163833.P4154700585790261164.a, A163833.P3295539293877838015.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 4 =>
      have h1 := ih (m + 3) (by omega)
      have h2 := ih (m + 2) (by omega)
      have h3 := ih (m + 1) (by omega)
      have h4 := ih m (by omega)
      simp only [A163833, Nat.add_sub_cancel, A163833.P4154700585790261164.a, A163833.P3295539293877838015.a, SequenceMachineLib.memo_apply] at h1 h2 h3 h4 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 4 - 1 = m + 3 by omega, show m + 4 - 2 = m + 2 by omega, show m + 4 - 3 = m + 1 by omega, show m + 4 - 4 = m by omega, show m + 3 < m + 4 by omega, show m + 2 < m + 4 by omega, show m + 1 < m + 4 by omega, show m < m + 4 by omega, ↓reduceIte]
      push_cast at h1 h2 h3 h4 ⊢
      rw [← h1, ← h2, ← h3, ← h4]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163833

/-! ## A163833.P3295539293877838015

`4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` with `a(0)=0, a(1)=13, a(2)=59, a(3)=156`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163833

/-- `4*a(n-1)-6*a(n-2)+4*a(n-3)-a(n-4)` -/
def P3295539293877838015.Spec : Prop :=
  ∀ n, P3295539293877838015.a n = A163833 n

theorem P3295539293877838015.correct : P3295539293877838015.Spec := by
  intro n
  simp only [A163833]

end A163833

/-! ## A163833.P6009271816983346853

`∑[abs(2-A016777(n)²)-1]`
-/

namespace A163833.P6009271816983346853
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |2 - A016777 n ^ 2| - 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163833.P6009271816983346853

namespace A163833

/-- `∑[abs(2-A016777(n)²)-1]` -/
def P6009271816983346853.Spec : Prop :=
  ∀ n, P6009271816983346853.a n = A163833 n

end A163833

/-! ## A163833.P12849974210343347117

`A059986(n)+A000326(n)`
-/

namespace A163833.P12849974210343347117
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A059986 n + A000326 n

end

end A163833.P12849974210343347117

namespace A163833

/-- `A059986(n)+A000326(n)` -/
def P12849974210343347117.Spec : Prop :=
  ∀ n, P12849974210343347117.a n = A163833 n

end A163833

/-! ## A163833.P3474092416999080524

`A119536(n)+A022272(n)`
-/

namespace A163833.P3474092416999080524
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A119536 n + A022272 n

end

end A163833.P3474092416999080524

namespace A163833

/-- `A119536(n)+A022272(n)` -/
def P3474092416999080524.Spec : Prop :=
  ∀ n, P3474092416999080524.a n = A163833 n

end A163833

/-! ## A163833.P66150870273831258

`A115519(n)+A033580(n)`
-/

namespace A163833.P66150870273831258
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A115519 n + A033580 n

end

end A163833.P66150870273831258

namespace A163833

/-- `A115519(n)+A033580(n)` -/
def P66150870273831258.Spec : Prop :=
  ∀ n, P66150870273831258.a n = A163833 n

end A163833

/-! ## A163833.P7476315060197125458

`A186029(n)+A027903(n)`
-/

namespace A163833.P7476315060197125458
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A186029 n + A027903 n

end

end A163833.P7476315060197125458

namespace A163833

/-- `A186029(n)+A027903(n)` -/
def P7476315060197125458.Spec : Prop :=
  ∀ n, P7476315060197125458.a n = A163833 n

end A163833

/-! ## A163833.P3691263296747503612

`A152741(n)+A083127(n)`
-/

namespace A163833.P3691263296747503612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152741 n + A083127 n

end

end A163833.P3691263296747503612

namespace A163833

/-- `A152741(n)+A083127(n)` -/
def P3691263296747503612.Spec : Prop :=
  ∀ n, P3691263296747503612.a n = A163833 n

end A163833

/-! ## A163833.P13777437764140203119

`A196507(n)+A045943(n)`
-/

namespace A163833.P13777437764140203119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A196507 n + A045943 n

end

end A163833.P13777437764140203119

namespace A163833

/-- `A196507(n)+A045943(n)` -/
def P13777437764140203119.Spec : Prop :=
  ∀ n, P13777437764140203119.a n = A163833 n

end A163833

/-! ## A163833.P14196862481875030691

`A226450(n)+A022282(n)`
-/

namespace A163833.P14196862481875030691
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A226450 n + A022282 n

end

end A163833.P14196862481875030691

namespace A163833

/-- `A226450(n)+A022282(n)` -/
def P14196862481875030691.Spec : Prop :=
  ∀ n, P14196862481875030691.a n = A163833 n

end A163833

/-! ## A163833.P16685110932663705617

`A220443(n)+A049451(n)`
-/

namespace A163833.P16685110932663705617
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220443 n + A049451 n

end

end A163833.P16685110932663705617

namespace A163833

/-- `A220443(n)+A049451(n)` -/
def P16685110932663705617.Spec : Prop :=
  ∀ n, P16685110932663705617.a n = A163833 n

end A163833

/-! ## A163833.P6321595668307543621

`A270205(n)+A022284(n)`
-/

namespace A163833.P6321595668307543621
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A270205 n + A022284 n

end

end A163833.P6321595668307543621

namespace A163833

/-- `A270205(n)+A022284(n)` -/
def P6321595668307543621.Spec : Prop :=
  ∀ n, P6321595668307543621.a n = A163833 n

end A163833

/-! ## A163833.P13149029506366733363

`A257042(n)+A055998(n)`
-/

namespace A163833.P13149029506366733363
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A257042 n + A055998 n

end

end A163833.P13149029506366733363

namespace A163833

/-- `A257042(n)+A055998(n)` -/
def P13149029506366733363.Spec : Prop :=
  ∀ n, P13149029506366733363.a n = A163833 n

end A163833

/-! ## A163833.P10654994342992949967

`A254963(n)+A067389(n)`
-/

namespace A163833.P10654994342992949967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254963 n + A067389 n

end

end A163833.P10654994342992949967

namespace A163833

/-- `A254963(n)+A067389(n)` -/
def P10654994342992949967.Spec : Prop :=
  ∀ n, P10654994342992949967.a n = A163833 n

end A163833

/-! ## A163833.P12953791238627024902

`A249354(n)+A081266(n)`
-/

namespace A163833.P12953791238627024902
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A249354 n + A081266 n

end

end A163833.P12953791238627024902

namespace A163833

/-- `A249354(n)+A081266(n)` -/
def P12953791238627024902.Spec : Prop :=
  ∀ n, P12953791238627024902.a n = A163833 n

end A163833

/-! ## A163833.P18433208958886661143

`A366151(n)+A281381(n)`
-/

namespace A163833.P18433208958886661143
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A366151 n + A281381 n

end

end A163833.P18433208958886661143

namespace A163833

/-- `A366151(n)+A281381(n)` -/
def P18433208958886661143.Spec : Prop :=
  ∀ n, P18433208958886661143.a n = A163833 n

end A163833

/-! ## A163833.P16213515984447145464

`A280304(n)-A140675(n)`
-/

namespace A163833.P16213515984447145464
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A280304 n - A140675 n

end

end A163833.P16213515984447145464

namespace A163833

/-- `A280304(n)-A140675(n)` -/
def P16213515984447145464.Spec : Prop :=
  ∀ n, P16213515984447145464.a n = A163833 n

end A163833

/-! ## A163833.P5402395075155754882

`A024215(n+1)-A016777(n)`
-/

namespace A163833.P5402395075155754882
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A024215 (n + 1) - A016777 n

end

end A163833.P5402395075155754882

namespace A163833

/-- `A024215(n+1)-A016777(n)` -/
def P5402395075155754882.Spec : Prop :=
  ∀ n, P5402395075155754882.a n = A163833 n

end A163833

/-! ## A163833.P10820395224351767393

`A100186(n+1)-A139488(n)`
-/

namespace A163833.P10820395224351767393
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A100186 (n + 1) - A139488 n

end

end A163833.P10820395224351767393

namespace A163833

/-- `A100186(n+1)-A139488(n)` -/
def P10820395224351767393.Spec : Prop :=
  ∀ n, P10820395224351767393.a n = A163833 n

end A163833

/-! ## A163833.P11936564997241708916

`A220084(n)-A086514(n+1)`
-/

namespace A163833.P11936564997241708916
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A220084 n - A086514 (n + 1)

end

end A163833.P11936564997241708916

namespace A163833

/-- `A220084(n)-A086514(n+1)` -/
def P11936564997241708916.Spec : Prop :=
  ∀ n, P11936564997241708916.a n = A163833 n

end A163833

/-!
# A163834: a(n) = (4^n + 5)/3.

The programs for A163834, the canonical program `A163834.P1451913190177672379` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163834 has offset 0).

The definition of A163834 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^n+5)/3` (program `A163834.P12927236655973166777`, by `A163834.P12927236655973166777.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163834.P12927236655973166777

`(4^n+5)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163834.P12927236655973166777
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 5 : ℚ) / 3

end

end A163834.P12927236655973166777

namespace A163834

/-- `(4^n+5)/3` -/
def P12927236655973166777.Spec : Prop :=
  ∀ n, P12927236655973166777.a n = (A163834 n : ℚ)

theorem P12927236655973166777.correct : P12927236655973166777.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163834, Nat.add_sub_cancel, A163834.P12927236655973166777.a, A163834.P1451913190177672379.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163834, Nat.add_sub_cancel, A163834.P12927236655973166777.a, A163834.P1451913190177672379.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163834

/-! ## A163834.P1451913190177672379

`5*a(n-1)-4*a(n-2)` with `a(0)=2, a(1)=3`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163834

/-- `5*a(n-1)-4*a(n-2)` -/
def P1451913190177672379.Spec : Prop :=
  ∀ n, P1451913190177672379.a n = A163834 n

theorem P1451913190177672379.correct : P1451913190177672379.Spec := by
  intro n
  simp only [A163834]

end A163834

/-! ## A163834.P15442669013172733072

`A140966(2*n)`
-/

namespace A163834.P15442669013172733072
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A140966 (2 * n)

end

end A163834.P15442669013172733072

namespace A163834

/-- `A140966(2*n)` -/
def P15442669013172733072.Spec : Prop :=
  ∀ n, P15442669013172733072.a n = A163834 n

end A163834

/-! ## A163834.P16841499347791925512

`A153643(2*n)`
-/

namespace A163834.P16841499347791925512
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A153643 (2 * n)

end

end A163834.P16841499347791925512

namespace A163834

/-- `A153643(2*n)` -/
def P16841499347791925512.Spec : Prop :=
  ∀ n, P16841499347791925512.a n = A163834 n

end A163834

/-! ## A163834.P17352826212319207779

`A135351(2*n+1)`
-/

namespace A163834.P17352826212319207779
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135351 (2 * n + 1)

end

end A163834.P17352826212319207779

namespace A163834

/-- `A135351(2*n+1)` -/
def P17352826212319207779.Spec : Prop :=
  ∀ n, P17352826212319207779.a n = A163834 n

end A163834

/-! ## A163834.P5975038141016773592

`ogf((2-7x)/(1-5x+4x^2))`
-/

namespace A163834.P5975038141016773592
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [2, -7] [1, -5, 4] n

end

end A163834.P5975038141016773592

namespace A163834

/-- `ogf((2-7x)/(1-5x+4x^2))` -/
def P5975038141016773592.Spec : Prop :=
  ∀ n, P5975038141016773592.a n = A163834 n

end A163834

/-! ## A163834.P8769829099288913903

`or(2, floor(4^n/3))`
-/

namespace A163834.P8769829099288913903
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 2 ⌊(4 ^ n : ℚ) / 3⌋

end

end A163834.P8769829099288913903

namespace A163834

/-- `or(2, floor(4^n/3))` -/
def P8769829099288913903.Spec : Prop :=
  ∀ n, P8769829099288913903.a n = A163834 n

end A163834

/-! ## A163834.P13217267441180620399

`xor(2, floor(4^n/3))`
-/

namespace A163834.P13217267441180620399
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor 2 ⌊(4 ^ n : ℚ) / 3⌋

end

end A163834.P13217267441180620399

namespace A163834

/-- `xor(2, floor(4^n/3))` -/
def P13217267441180620399.Spec : Prop :=
  ∀ n, P13217267441180620399.a n = A163834 n

end A163834

/-! ## A163834.P2239013970748461878

`4*a(n-1)-5` with `a(0)=2`
-/

namespace A163834.P2239013970748461878
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  4 * a (n - 1) - 5

end

end A163834.P2239013970748461878

namespace A163834

/-- `4*a(n-1)-5` -/
def P2239013970748461878.Spec : Prop :=
  ∀ n, P2239013970748461878.a n = A163834 n

end A163834

/-! ## A163834.P11389912314677381948

`lcm(4, a(n-1))-5` with `a(0)=2, a(1)=3`
-/

namespace A163834.P11389912314677381948
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2, 3] fun n a =>
  (Int.lcm 4 (a (n - 1)) : ℤ) - 5

end

end A163834.P11389912314677381948

namespace A163834

/-- `lcm(4, a(n-1))-5` -/
def P11389912314677381948.Spec : Prop :=
  ∀ n, P11389912314677381948.a n = A163834 n

end A163834

/-! ## A163834.P14996356984703361385

`4^(n-1)+a(n-1)` with `a(0)=2`
-/

namespace A163834.P14996356984703361385
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) + a (n - 1)

end

end A163834.P14996356984703361385

namespace A163834

/-- `4^(n-1)+a(n-1)` -/
def P14996356984703361385.Spec : Prop :=
  ∀ n, P14996356984703361385.a n = (A163834 n : ℚ)

end A163834

/-! ## A163834.P13587033589178537551

`a(n-1)/(1/2)²-5` with `a(0)=2`
-/

namespace A163834.P13587033589178537551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) / ((1 : ℚ) / 2) ^ 2 - 5

end

end A163834.P13587033589178537551

namespace A163834

/-- `a(n-1)/(1/2)²-5` -/
def P13587033589178537551.Spec : Prop :=
  ∀ n, P13587033589178537551.a n = (A163834 n : ℚ)

end A163834

/-! ## A163834.P6973441835886993801

`∑[4^((n-1)%(n+1))]+1`
-/

namespace A163834.P6973441835886993801
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (Int.tmod ((n : ℤ) - 1) (n + 1 : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j + 1

end

end A163834.P6973441835886993801

namespace A163834

/-- `∑[4^((n-1)%(n+1))]+1` -/
def P6973441835886993801.Spec : Prop :=
  ∀ n, P6973441835886993801.a n = (A163834 n : ℚ)

end A163834

/-! ## A163834.P12441852823043257746

`∑[4^(n-gcd(3, a(n-1)))]` with `a(0)=2`
-/

namespace A163834.P12441852823043257746
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  (4 : ℚ) ^ ((n : ℤ) - (Int.gcd 3 (SequenceMachineLib.roundAway (f1 (n - 1))) : ℤ) : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163834.P12441852823043257746

namespace A163834

/-- `∑[4^(n-gcd(3, a(n-1)))]` -/
def P12441852823043257746.Spec : Prop :=
  ∀ n, P12441852823043257746.a n = (A163834 n : ℚ)

end A163834

/-! ## A163834.P8768972595080036126

`∑[2^((n+1)²%(n²+3))]`
-/

namespace A163834.P8768972595080036126
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ ((n + 1) ^ 2 % (n ^ 2 + 3))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163834.P8768972595080036126

namespace A163834

/-- `∑[2^((n+1)²%(n²+3))]` -/
def P8768972595080036126.Spec : Prop :=
  ∀ n, (P8768972595080036126.a n : ℤ) = A163834 n

end A163834

/-! ## A163834.P11534968140899891980

`∑[4^(n-a(n-1)%3)]` with `a(0)=2, a(1)=1`
-/

namespace A163834.P11534968140899891980
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2, 1] fun n f1 =>
  (4 : ℚ) ^ ((n : ℤ) - Int.tmod (SequenceMachineLib.roundAway (f1 (n - 1))) 3 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163834.P11534968140899891980

namespace A163834

/-- `∑[4^(n-a(n-1)%3)]` -/
def P11534968140899891980.Spec : Prop :=
  ∀ n, P11534968140899891980.a n = (A163834 n : ℚ)

end A163834

/-! ## A163834.P12050362701523736875

`record[a(n-1)-(-2)^(n-1)]` with `a(0)=2`
-/

namespace A163834.P12050362701523736875
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [2] fun n f1 =>
  f1 (n - 1) - (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163834.P12050362701523736875

namespace A163834

/-- `record[a(n-1)-(-2)^(n-1)]` -/
def P12050362701523736875.Spec : Prop :=
  ∀ n, P12050362701523736875.a n = (A163834 n : ℚ)

end A163834

/-! ## A163834.P8275190619956890192

`record[5-a(n-1)-a(n-1)]` with `a(0)=2`
-/

namespace A163834.P8275190619956890192
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [2] fun n f1 =>
  5 - f1 (n - 1) - f1 (n - 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163834.P8275190619956890192

namespace A163834

/-- `record[5-a(n-1)-a(n-1)]` -/
def P8275190619956890192.Spec : Prop :=
  ∀ n, P8275190619956890192.a n = A163834 n

end A163834

/-! ## A163834.P17761370905597415691

`∑[4^(n-a(n-1)/floor(a(n-1)))]` with `a(0)=2`

`floor` is left out, it is the identity on integers.
-/

namespace A163834.P17761370905597415691
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [2] fun n f1 =>
  (4 : ℝ) ^ ((n : ℝ) - f1 (n - 1) / (⌊f1 (n - 1)⌋ : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163834.P17761370905597415691

namespace A163834

/-- `∑[4^(n-a(n-1)/floor(a(n-1)))]` -/
def P17761370905597415691.Spec : Prop :=
  ∀ n, P17761370905597415691.a n = (A163834 n : ℝ)

end A163834

/-! ## A163834.P8059553276796228612

`a(n-1)+a(n-1)+a(n-1)+a(n-1)-5` with `a(0)=2`
-/

namespace A163834.P8059553276796228612
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [2] fun n a =>
  a (n - 1) + (a (n - 1) + (a (n - 1) + (a (n - 1) - 5)))

end

end A163834.P8059553276796228612

namespace A163834

/-- `a(n-1)+a(n-1)+a(n-1)+a(n-1)-5` -/
def P8059553276796228612.Spec : Prop :=
  ∀ n, P8059553276796228612.a n = A163834 n

end A163834

/-!
# A163836: Composites whose largest prime factor is equal to the sum of all the other prime factors (with repetition).

The programs for A163836, there is no canonical definition to state claims against.
-/

/-! ## A163836.P5618288854012749540

`eq[A066048(2*(n+1)), A107463(n+1)]+1`
-/

namespace A163836.P5618288854012749540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (2 * (n + 1))

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 (n + 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n + 1

end

end A163836.P5618288854012749540

/-! ## A163836.P9801293589934537867

`eq[A066048(A004277(n)), A107463(n)]`
-/

namespace A163836.P9801293589934537867
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A066048 (A004277 n).toNat

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A107463 n

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun j => f1 j = f2 j) n

end

end A163836.P9801293589934537867

/-! ## A163836.P9476237345903037848

`A002808(A166732(n+1))`
-/

namespace A163836.P9476237345903037848
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (A166732 (n + 1)).toNat

end

end A163836.P9476237345903037848

/-! ## A163836.P17651419739792348681

`A018252(A166732(n+1)+1)`
-/

namespace A163836.P17651419739792348681
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (A166732 (n + 1) + 1).toNat

end

end A163836.P17651419739792348681

/-! ## A163836.P11209947764710610353

`A141468(A166732(n+1)+2)`
-/

namespace A163836.P11209947764710610353
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A141468 (A166732 (n + 1) + 2).toNat

end

end A163836.P11209947764710610353

/-!
# A163838: a(n) = (n-th composite) * (number of nontrivial divisors of n-th composite).

The programs for A163838, the canonical program `A163838.P7117750658777831456` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163838 has offset 1).

The definition of A163838 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A144925, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163838.P7117750658777831456

`A002808(n+1)*A144925(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A163838

/-- `A002808(n+1)*A144925(n+1)` -/
def P7117750658777831456.Spec : Prop :=
  ∀ n, P7117750658777831456.a n = A163838 (n + 1)

theorem P7117750658777831456.correct : P7117750658777831456.Spec := by
  intro n
  simp only [A163838, Nat.add_sub_cancel]

end A163838

/-! ## A163838.P2371356502504464970

`A018252(n+2)*A144925(n+1)`
-/

namespace A163838.P2371356502504464970
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) * A144925 (n + 1)

end

end A163838.P2371356502504464970

namespace A163838

/-- `A018252(n+2)*A144925(n+1)` -/
def P2371356502504464970.Spec : Prop :=
  ∀ n, P2371356502504464970.a n = A163838 (n + 1)

end A163838

/-! ## A163838.P1169940160991775047

`comp[C(A006530(n+1), n)]*A144925(n+1)`
-/

namespace A163838.P1169940160991775047
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A006530 (n + 1)).toNat n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) * A144925 (n + 1)

end

end A163838.P1169940160991775047

namespace A163838

/-- `comp[C(A006530(n+1), n)]*A144925(n+1)` -/
def P1169940160991775047.Spec : Prop :=
  ∀ n, P1169940160991775047.a n = A163838 (n + 1)

end A163838

/-! ## A163838.P13939479062964904182

`(lt[2, A000005(n+1)]+1)*A144925(n+1)`
-/

namespace A163838.P13939479062964904182
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1 : ℤ) * A144925 (n + 1)

end

end A163838.P13939479062964904182

namespace A163838

/-- `(lt[2, A000005(n+1)]+1)*A144925(n+1)` -/
def P13939479062964904182.Spec : Prop :=
  ∀ n, P13939479062964904182.a n = A163838 (n + 1)

theorem P13939479062964904182.correct : P13939479062964904182.Spec := by
  intro n
  simp only [A163838, Nat.add_sub_cancel, A163838.P13939479062964904182.f1, A163838.P13939479062964904182.f2, A163838.P13939479062964904182.a, A163838.P7117750658777831456.a, A000005, A000005.P16091521709108585461.a, A002808, A002808.P568819275912777150.f1, A002808.P568819275912777150.f2, A002808.P568819275912777150.a, A144925, A144925.P4715798082617986794.a, A032741, A032741.P3022166995030670566.f1, A032741.P3022166995030670566.a, A070824, A070824.P6802822783910193033.f1, A070824.P6802822783910193033.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163838

/-! ## A163838.P13328402719592391359

`(comp[A000040(n+1)-2]+2)*A144925(n+1)`
-/

namespace A163838.P13328402719592391359
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000040 (n + 1) - 2

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 2 : ℤ) * A144925 (n + 1)

end

end A163838.P13328402719592391359

namespace A163838

/-- `(comp[A000040(n+1)-2]+2)*A144925(n+1)` -/
def P13328402719592391359.Spec : Prop :=
  ∀ n, P13328402719592391359.a n = A163838 (n + 1)

end A163838

/-! ## A163838.P16798482404503264474

`(A000005(A018252(n+2))-2)*Δ[A053767(n)]`
-/

namespace A163838.P16798482404503264474
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (A018252 (n + 2)).toNat - 2) * (f1 (n + 1) - f1 n)

end

end A163838.P16798482404503264474

namespace A163838

/-- `(A000005(A018252(n+2))-2)*Δ[A053767(n)]` -/
def P16798482404503264474.Spec : Prop :=
  ∀ n, P16798482404503264474.a n = A163838 (n + 1)

end A163838

/-! ## A163838.P13871657517419500559

`(A000005(A018252(n+2))-2)*comp[A351078(n)]`
-/

namespace A163838.P13871657517419500559
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A000005 (A018252 (n + 2)).toNat - 2) * (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n : ℤ)

end

end A163838.P13871657517419500559

namespace A163838

/-- `(A000005(A018252(n+2))-2)*comp[A351078(n)]` -/
def P13871657517419500559.Spec : Prop :=
  ∀ n, P13871657517419500559.a n = A163838 (n + 1)

end A163838

/-! ## A163838.P13374296668841303272

`A056608(n+1)*A144925(n+1)*A160180(n+1)`
-/

namespace A163838.P13374296668841303272
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A056608 (n + 1) * A144925 (n + 1) * A160180 (n + 1)

end

end A163838.P13374296668841303272

namespace A163838

/-- `A056608(n+1)*A144925(n+1)*A160180(n+1)` -/
def P13374296668841303272.Spec : Prop :=
  ∀ n, P13374296668841303272.a n = A163838 (n + 1)

end A163838

/-! ## A163838.P12323590955006265172

`(A035004(n+2)-2)*A018252(n+2)`
-/

namespace A163838.P12323590955006265172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (A035004 (n + 2) - 2) * A018252 (n + 2)

end

end A163838.P12323590955006265172

namespace A163838

/-- `(A035004(n+2)-2)*A018252(n+2)` -/
def P12323590955006265172.Spec : Prop :=
  ∀ n, P12323590955006265172.a n = A163838 (n + 1)

end A163838

/-! ## A163838.P6039758154746681068

`A018252(n+2)*Δ[A325459(A018252(n+1))]`
-/

namespace A163838.P6039758154746681068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A325459 (A018252 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A018252 (n + 2) * (f1 (n + 1) - f1 n)

end

end A163838.P6039758154746681068

namespace A163838

/-- `A018252(n+2)*Δ[A325459(A018252(n+1))]` -/
def P6039758154746681068.Spec : Prop :=
  ∀ n, P6039758154746681068.a n = A163838 (n + 1)

end A163838

/-!
# A163839: a(n) = (2^n-1)*4^(2*n-1).

The programs for A163839, the canonical program `A163839.P14626963036737567168` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163839 has offset 0).

The definition of A163839 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(2^n-1)*4^(2*n-1)` (program `A163839.P457230521172866551`, by `A163839.P457230521172866551.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163839.P457230521172866551

`(2^n-1)*4^(2*n-1)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163839.P457230521172866551
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((2 ^ n : ℤ) - 1 : ℚ) * (4 : ℚ) ^ ((2 * n : ℤ) - 1 : ℤ)

end

end A163839.P457230521172866551

namespace A163839

/-- `(2^n-1)*4^(2*n-1)` -/
def P457230521172866551.Spec : Prop :=
  ∀ n, P457230521172866551.a n = (A163839 n : ℚ)

theorem P457230521172866551.correct : P457230521172866551.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163839, Nat.add_sub_cancel, A163839.P457230521172866551.a, A163839.P14626963036737567168.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163839, Nat.add_sub_cancel, A163839.P457230521172866551.a, A163839.P14626963036737567168.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | (simp (disch := norm_num) only [zpow_add₀, zpow_sub₀, zpow_mul, zpow_natCast, zpow_ofNat, zpow_one, zpow_neg]; (try field_simp); ring1)

end A163839

/-! ## A163839.P14626963036737567168

`48*a(n-1)-512*a(n-2)` with `a(0)=0, a(1)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163839

/-- `48*a(n-1)-512*a(n-2)` -/
def P14626963036737567168.Spec : Prop :=
  ∀ n, P14626963036737567168.a n = A163839 n

theorem P14626963036737567168.correct : P14626963036737567168.Spec := by
  intro n
  simp only [A163839]

end A163839

/-! ## A163839.P9400449535631190208

`8^n*C(2^n, 2)/2`
-/

namespace A163839.P9400449535631190208
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (8 ^ n * Nat.choose (2 ^ n) 2 : ℚ) / 2

end

end A163839.P9400449535631190208

namespace A163839

/-- `8^n*C(2^n, 2)/2` -/
def P9400449535631190208.Spec : Prop :=
  ∀ n, P9400449535631190208.a n = (A163839 n : ℚ)

end A163839

/-! ## A163839.P7254447088514332688

`lcm(2^n-1, ceil(4^n/2)²)`
-/

namespace A163839.P7254447088514332688
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm ((2 ^ n : ℤ) - 1) (⌈(4 ^ n : ℚ) / 2⌉ ^ 2)

end

end A163839.P7254447088514332688

namespace A163839

/-- `lcm(2^n-1, ceil(4^n/2)²)` -/
def P7254447088514332688.Spec : Prop :=
  ∀ n, (P7254447088514332688.a n : ℤ) = A163839 n

end A163839

/-! ## A163839.P999117557397109360

`8^n*A020522(n)/4`
-/

namespace A163839.P999117557397109360
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((8 ^ n : ℤ) * A020522 n : ℚ) / 4

end

end A163839.P999117557397109360

namespace A163839

/-- `8^n*A020522(n)/4` -/
def P999117557397109360.Spec : Prop :=
  ∀ n, P999117557397109360.a n = (A163839 n : ℚ)

theorem P999117557397109360.correct : P999117557397109360.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163839, Nat.add_sub_cancel, A163839.P999117557397109360.a, A163839.P14626963036737567168.a, A020522, A020522.P10227953348410881457.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163839, Nat.add_sub_cancel, A163839.P999117557397109360.a, A163839.P14626963036737567168.a, A020522, A020522.P10227953348410881457.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A163839

/-! ## A163839.P4246620331996308300

`A000302(n)*A059409(n)/4`
-/

namespace A163839.P4246620331996308300
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A000302 n * A059409 n : ℚ) / 4

end

end A163839.P4246620331996308300

namespace A163839

/-- `A000302(n)*A059409(n)/4` -/
def P4246620331996308300.Spec : Prop :=
  ∀ n, P4246620331996308300.a n = (A163839 n : ℚ)

theorem P4246620331996308300.correct : P4246620331996308300.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 | 1 =>
      simp [A163839, Nat.add_sub_cancel, A163839.P4246620331996308300.a, A163839.P14626963036737567168.a, A000302, A000302.P5166485833484575275.a, A059409, A059409.P13303064921923202936.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
      try ((try field_simp); ring_nf)
    | m + 2 =>
      have h1 := ih (m + 1) (by omega)
      have h2 := ih m (by omega)
      simp only [A163839, Nat.add_sub_cancel, A163839.P4246620331996308300.a, A163839.P14626963036737567168.a, A000302, A000302.P5166485833484575275.a, A059409, A059409.P13303064921923202936.a, SequenceMachineLib.memo_apply] at h1 h2 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 2 - 1 = m + 1 by omega, show m + 2 - 2 = m by omega, show m + 1 < m + 2 by omega, show m < m + 2 by omega, ↓reduceIte]
      push_cast at h1 h2 ⊢
      rw [← h1, ← h2]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith | ((try field_simp); ring_nf)

end A163839

/-!
# A163843: Row sums of triangle A163840.

The programs for A163843, the canonical program `A163843.P11119471545613868718` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163843 has offset 0).

The definition of A163843 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163843.P11119471545613868718

`A163865(n+1)-A056040(n+1)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A163843

/-- `A163865(n+1)-A056040(n+1)` -/
def P11119471545613868718.Spec : Prop :=
  ∀ n, P11119471545613868718.a n = A163843 n

theorem P11119471545613868718.correct : P11119471545613868718.Spec := by
  intro n
  simp only [A163843]

end A163843

/-! ## A163843.P11665731777471253028

`record[A163840(n+1)]-A056040(n+1)`
-/

namespace A163843.P11665731777471253028
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163840 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A056040 (n + 1)

end

end A163843.P11665731777471253028

namespace A163843

/-- `record[A163840(n+1)]-A056040(n+1)` -/
def P11665731777471253028.Spec : Prop :=
  ∀ n, P11665731777471253028.a n = A163843 n

end A163843

/-! ## A163843.P4456593415226145080

`record[A163840(n+1)-A328001(n+1)]`
-/

namespace A163843.P4456593415226145080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163840 (n + 1) - A328001 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163843.P4456593415226145080

namespace A163843

/-- `record[A163840(n+1)-A328001(n+1)]` -/
def P4456593415226145080.Spec : Prop :=
  ∀ n, P4456593415226145080.a n = A163843 n

end A163843

/-! ## A163843.P13756267192692697632

`record[A163840(n)-A328001(n)%A163840(n)]`
-/

namespace A163843.P13756267192692697632
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163840 n - Int.tmod (A328001 n) (A163840 n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163843.P13756267192692697632

namespace A163843

/-- `record[A163840(n)-A328001(n)%A163840(n)]` -/
def P13756267192692697632.Spec : Prop :=
  ∀ n, P13756267192692697632.a n = A163843 n

end A163843

/-! ## A163843.P459060115016955407

`A163840(A000217(n+1))-A056040(n+1)`
-/

namespace A163843.P459060115016955407
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163840 (A000217 (n + 1)).toNat - A056040 (n + 1)

end

end A163843.P459060115016955407

namespace A163843

/-- `A163840(A000217(n+1))-A056040(n+1)` -/
def P459060115016955407.Spec : Prop :=
  ∀ n, P459060115016955407.a n = A163843 n

end A163843

/-!
# A163844: Row sums of triangle A163841.

The programs for A163844, the canonical program `A163844.P3622098309337509437` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163844 has offset 0).

The definition of A163844 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 144 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163844.P3622098309337509437

`A026375(n+1)-A000984(n+1)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A163844

/-- `A026375(n+1)-A000984(n+1)` -/
def P3622098309337509437.Spec : Prop :=
  ∀ n, P3622098309337509437.a n = A163844 n

theorem P3622098309337509437.correct : P3622098309337509437.Spec := by
  intro n
  simp only [A163844]

end A163844

/-! ## A163844.P15410497426521981096

`A026375(n+1)-record[A126869(n+2)]`
-/

namespace A163844.P15410497426521981096
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A126869 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163844.P15410497426521981096

namespace A163844

/-- `A026375(n+1)-record[A126869(n+2)]` -/
def P15410497426521981096.Spec : Prop :=
  ∀ n, P15410497426521981096.a n = A163844 n

end A163844

/-! ## A163844.P16645428454422130714

`A026375(n+1)-2*A088218(n+1)`
-/

namespace A163844.P16645428454422130714
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - 2 * A088218 (n + 1)

end

end A163844.P16645428454422130714

namespace A163844

/-- `A026375(n+1)-2*A088218(n+1)` -/
def P16645428454422130714.Spec : Prop :=
  ∀ n, P16645428454422130714.a n = A163844 n

end A163844

/-! ## A163844.P11724462542103787600

`A026375(n+1)-A126869(2*(n+1))`
-/

namespace A163844.P11724462542103787600
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - A126869 (2 * (n + 1))

end

end A163844.P11724462542103787600

namespace A163844

/-- `A026375(n+1)-A126869(2*(n+1))` -/
def P11724462542103787600.Spec : Prop :=
  ∀ n, P11724462542103787600.a n = A163844 n

end A163844

/-! ## A163844.P11511526351178911842

`A026375(n+1)-A063886(A103517(n))`
-/

namespace A163844.P11511526351178911842
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - A063886 (A103517 n).toNat

end

end A163844.P11511526351178911842

namespace A163844

/-- `A026375(n+1)-A063886(A103517(n))` -/
def P11511526351178911842.Spec : Prop :=
  ∀ n, P11511526351178911842.a n = A163844 n

end A163844

/-! ## A163844.P7138456776812081346

`A026375(n+1)-record[A094527(n+1)]`
-/

namespace A163844.P7138456776812081346
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A094527 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163844.P7138456776812081346

namespace A163844

/-- `A026375(n+1)-record[A094527(n+1)]` -/
def P7138456776812081346.Spec : Prop :=
  ∀ n, P7138456776812081346.a n = A163844 n

end A163844

/-! ## A163844.P7844086142367418855

`A026375(n+1)-A094527(A000217(n+1))`
-/

namespace A163844.P7844086142367418855
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026375 (n + 1) - A094527 (A000217 (n + 1)).toNat

end

end A163844.P7844086142367418855

namespace A163844

/-- `A026375(n+1)-A094527(A000217(n+1))` -/
def P7844086142367418855.Spec : Prop :=
  ∀ n, P7844086142367418855.a n = A163844 n

end A163844

/-!
# A163845: Row sums of triangle A163842.

The programs for A163845, there is no canonical definition to state claims against.
-/

/-! ## A163845.P5781598914567104134

`A163869(n+1)-A002457(n+1)`
-/

namespace A163845.P5781598914567104134
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163869 (n + 1) - A002457 (n + 1)

end

end A163845.P5781598914567104134

/-! ## A163845.P6053056551931853127

`record[A163842(n+1)]-A002457(n+1)`
-/

namespace A163845.P6053056551931853127
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A002457 (n + 1)

end

end A163845.P6053056551931853127

/-! ## A163845.P1764063098258403785

`record[A163842(n+1)]-A056040(2*n+3)`
-/

namespace A163845.P1764063098258403785
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n) - A056040 (2 * n + 3)

end

end A163845.P1764063098258403785

/-! ## A163845.P14994008812602122140

`A163842(A000217(n+1))-A002457(n+1)`
-/

namespace A163845.P14994008812602122140
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 (A000217 (n + 1)).toNat - A002457 (n + 1)

end

end A163845.P14994008812602122140

/-!
# A163846: Starting from a(1)=5, a(n+1) is the smallest prime > a(n) such that 2*a(n)-a(n+1) is also prime.

The programs for A163846, there is no canonical definition to state claims against.
-/

/-! ## A163846.P10149732834029940361

`A078496(a(n-1))` with `a(0)=5`
-/

namespace A163846.P10149732834029940361
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A078496 (a (n - 1)).toNat

end

end A163846.P10149732834029940361

/-! ## A163846.P10309276030330257428

`a(n-1)+a(n-1)-A078587(a(n-1))` with `a(0)=5`
-/

namespace A163846.P10309276030330257428
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  a (n - 1) + (a (n - 1) - A078587 (a (n - 1)).toNat)

end

end A163846.P10309276030330257428

/-! ## A163846.P12141892676787862475

`A078496(floor(a(A023443(n))))` with `a(0)=5`

`floor` is left out, it is the identity on integers.
-/

namespace A163846.P12141892676787862475
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A078496 (a (A023443 n).toNat).toNat

end

end A163846.P12141892676787862475

/-! ## A163846.P15502071886502724404

`A078496(ceil(a(A023443(n))))` with `a(0)=5`

`ceil` is left out, it is the identity on integers.
-/

namespace A163846.P15502071886502724404
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A078496 (a (A023443 n).toNat).toNat

end

end A163846.P15502071886502724404

/-! ## A163846.P17079142126385232341

`p?[A078496(a(A023443(n)))]` with `a(0)=4`
-/

namespace A163846.P17079142126385232341
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [4] fun n f1 =>
  A078496 (f1 (A023443 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163846.P17079142126385232341

/-! ## A163846.P2301981078264882541

`A204921(4*a(n-1))+a(n-1)` with `a(0)=5`
-/

namespace A163846.P2301981078264882541
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5] fun n a =>
  A204921 (4 * a (n - 1)).toNat + a (n - 1)

end

end A163846.P2301981078264882541

/-!
# A163847: Starting from a(1)=13, a(n+1) is the smallest prime > a(n) such that 2*a(n) - a(n+1) is also prime.

The programs for A163847, there is no canonical definition to state claims against.
-/

/-! ## A163847.P13418381136197020838

`A078496(a(n-1))` with `a(0)=13`
-/

namespace A163847.P13418381136197020838
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A078496 (a (n - 1)).toNat

end

end A163847.P13418381136197020838

/-! ## A163847.P16954996275039139537

`a(n-1)+a(n-1)-A078587(a(n-1))` with `a(0)=13`
-/

namespace A163847.P16954996275039139537
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  a (n - 1) + (a (n - 1) - A078587 (a (n - 1)).toNat)

end

end A163847.P16954996275039139537

/-! ## A163847.P2686965801392798492

`A078496(floor(a(A023443(n))))` with `a(0)=13`

`floor` is left out, it is the identity on integers.
-/

namespace A163847.P2686965801392798492
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A078496 (a (A023443 n).toNat).toNat

end

end A163847.P2686965801392798492

/-! ## A163847.P14784158700175693707

`A078496(ceil(a(A023443(n))))` with `a(0)=13`

`ceil` is left out, it is the identity on integers.
-/

namespace A163847.P14784158700175693707
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A078496 (a (A023443 n).toNat).toNat

end

end A163847.P14784158700175693707

/-! ## A163847.P4916909752099070625

`p?[A078496(a(A023443(n)))]` with `a(0)=10`
-/

namespace A163847.P4916909752099070625
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [10] fun n f1 =>
  A078496 (f1 (A023443 n).toNat).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163847.P4916909752099070625

/-! ## A163847.P11342492022009795726

`A204921(4*a(n-1))+a(n-1)` with `a(0)=13`
-/

namespace A163847.P11342492022009795726
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [13] fun n a =>
  A204921 (4 * a (n - 1)).toNat + a (n - 1)

end

end A163847.P11342492022009795726

/-!
# A163848: Primes p such that the differences between p and the closest squares surrounding p are primes.

The programs for A163848, there is no canonical definition to state claims against.
-/

/-! ## A163848.P17156590388075408939

`p?[A051494(A082542(n+1))-A073579(n+1)]`
-/

namespace A163848.P17156590388075408939
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051494 (A082542 (n + 1)).toNat - A073579 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163848.P17156590388075408939

/-! ## A163848.P7428055257590494642

`p?[A001222(A109613(n))*A230584(n+1)]`
-/

namespace A163848.P7428055257590494642
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001222 (A109613 n).toNat * A230584 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163848.P7428055257590494642

/-! ## A163848.P15105622004912412212

`∩[A135932(n+1), A146315(n+1)]`
-/

namespace A163848.P15105622004912412212
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135932 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146315 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163848.P15105622004912412212

/-! ## A163848.P14998200313394574889

`∩[A146315(n+1), A176864(n+1)]`
-/

namespace A163848.P14998200313394574889
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A146315 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176864 (n + 1)

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163848.P14998200313394574889

/-!
# A163851: Primes of the form Fibonacci(k)-2.

The programs for A163851, there is no canonical definition to state claims against.
-/

/-! ## A163851.P1290191725119900132

`∩[A113188(n+1), A001911(n)]`
-/

namespace A163851.P1290191725119900132
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A113188 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001911 n

open Classical in
def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => (∃ j, f1 j = (x : ℤ)) ∧ ∃ j, f2 j = (x : ℤ)) n

end

end A163851.P1290191725119900132

/-!
# A163853: Primes 4 less than some Fibonacci number.

The programs for A163853, there is no canonical definition to state claims against.
-/

/-! ## A163853.P17439777973665500438

`p?[round(ϕ^n/sqrt(5))-4]`
-/

namespace A163853.P17439777973665500438
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) - 4

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163853.P17439777973665500438

/-!
# A163856: Primes of the form Fibonacci(k)-10.

The programs for A163856, there is no canonical definition to state claims against.
-/

/-! ## A163856.P7910424450515322684

`p?[round(ϕ^n/sqrt(5))-10]`
-/

namespace A163856.P7910424450515322684
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.roundAway (Real.goldenRatio ^ n / Real.sqrt (5 : ℝ)) - 10

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)

end

end A163856.P7910424450515322684

/-!
# A163857: Number of sexy prime quadruples (p, p+6, p+12, p+18), with p <= n.

The programs for A163857, there is no canonical definition to state claims against.
-/

/-! ## A163857.P9442232588790418201

`∑[char[A023271(n+1)-1]]`
-/

namespace A163857.P9442232588790418201
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A023271 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163857.P9442232588790418201

/-! ## A163857.P7685488453693926594

`∑[char[A046122(n+1)-7]]`
-/

namespace A163857.P7685488453693926594
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046122 (n + 1) - 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163857.P7685488453693926594

/-! ## A163857.P7121529547251696565

`∑[char[A046124(n+1)-19]]`
-/

namespace A163857.P7121529547251696565
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046124 (n + 1) - 19

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163857.P7121529547251696565

/-! ## A163857.P17191261196359295275

`∑[char[A000010(A023271(n+1))]]`
-/

namespace A163857.P17191261196359295275
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A023271 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163857.P17191261196359295275

/-! ## A163857.P10447337730882998512

`A118759(a(n-1))+char[A046124(n+1)-19]` with `a(0)=0`
-/

namespace A163857.P10447337730882998512
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046124 (n + 1) - 19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A118759 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A163857.P10447337730882998512

/-! ## A163857.P12373051765105928920

`A154470(a(n-1))+char[A046124(n+1)-19]` with `a(0)=0`
-/

namespace A163857.P12373051765105928920
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046124 (n + 1) - 19

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.rec [0] fun n a =>
  A154470 (a (n - 1)).toNat + ((if ∃ j, f1 j = (n : ℤ) then 1 else 0 : ℕ) : ℤ)

end

end A163857.P12373051765105928920

/-! ## A163857.P586079609765376479

`∑[A164292(n+1)*A164292(A237813(n+1))]`
-/

namespace A163857.P586079609765376479
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164292 (n + 1) * A164292 (A237813 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163857.P586079609765376479

/-! ## A163857.P9454682709125499451

`∑[val(∑[A323041(n+1)], 33)]`
-/

namespace A163857.P9454682709125499451
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A323041 (n + 1)

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.valuation (∑ j ∈ Finset.range (n + 1), f2 j).toNat 33

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163857.P9454682709125499451

/-! ## A163857.P4954398723062377095

`A000196(ceil(log2(A341143(n))))`
-/

namespace A163857.P4954398723062377095
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000196 ⌈Real.logb 2 (A341143 (n + 22) : ℝ)⌉.toNat

end

end A163857.P4954398723062377095

/-! ## A163857.P1747148448289793260

`A211669(A392701(n))`
-/

namespace A163857.P1747148448289793260
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A211669 (A392701 n).toNat

end

end A163857.P1747148448289793260

/-!
# A163858: Number of sexy prime triples (p, p+6, p+12) where p+18 is not prime (although p-6 might be), with p <= n.

The programs for A163858, there is no canonical definition to state claims against.
-/

/-! ## A163858.P1786741926560778872

`∑[char[A046118(n+1)-1]]`
-/

namespace A163858.P1786741926560778872
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046118 (n + 1) - 1

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163858.P1786741926560778872

/-! ## A163858.P10707336880100244624

`∑[char[A046119(n+1)-7]]`
-/

namespace A163858.P10707336880100244624
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A046119 (n + 1) - 7

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163858.P10707336880100244624

/-! ## A163858.P16454619286579115954

`∑[char[A000010(A046118(n+1))]]`
-/

namespace A163858.P16454619286579115954
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A046118 (n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163858.P16454619286579115954

/-! ## A163858.P12197529922511120344

`∑[char[A000010(A275681(3*n+1))]]`
-/

namespace A163858.P12197529922511120344
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A275681 (3 * n + 1)).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163858.P12197529922511120344

/-! ## A163858.P11510020272715653648

`∑[char[A000010(A046120(n+1)-12)]]`
-/

namespace A163858.P11510020272715653648
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000010 (A046120 (n + 1) - 12).toNat

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  if ∃ j, f2 j = (n : ℤ) then 1 else 0

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163858.P11510020272715653648

/-! ## A163858.P2893002504658752073

`floor(A003056(record[A327277(n+1)])/5)`
-/

namespace A163858.P2893002504658752073
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊(A003056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat : ℚ) / 5⌋

end

end A163858.P2893002504658752073

/-! ## A163858.P12280813046827003823

`A002266(A003056(record[A327277(n+1)]))`
-/

namespace A163858.P12280813046827003823
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A327277 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002266 (A003056 (f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)).toNat).toNat

end

end A163858.P12280813046827003823

/-! ## A163858.P10786109954025531934

`A135665(A093697(n+1))`
-/

namespace A163858.P10786109954025531934
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135665 (A093697 (n + 1)).toNat

end

end A163858.P10786109954025531934

/-! ## A163858.P12568840507018411756

`A004218(A144369(n+1))`
-/

namespace A163858.P12568840507018411756
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004218 (A144369 (n + 1)).toNat

end

end A163858.P12568840507018411756

/-!
# A163859: Number of different cubes of mappings of a finite set of n elements into itself.

The programs for A163859, there is no canonical definition to state claims against.
-/

/-! ## A163859.P6360902320400690627

`A247026(∑[n+3]+3+n)`
-/

namespace A163859.P6360902320400690627
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n + 3

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (∑ j ∈ Finset.range (n + 1), f1 j + 3 + n)

end

end A163859.P6360902320400690627

/-! ## A163859.P4875201832656127557

`A333310(A082109(n)+n)`
-/

namespace A163859.P4875201832656127557
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A333310 (A082109 n + (n : ℤ)).toNat

end

end A163859.P4875201832656127557

/-!
# A163860: Number of different 4th-power (quartic) mappings of a finite set of n elements into itself.

The programs for A163860, there is no canonical definition to state claims against.
-/

/-! ## A163860.P16433299228001960760

`A247026(C(comp[comp[2*(n+3)]+1]-n, 2)+n)`
-/

namespace A163860.P16433299228001960760
noncomputable section

def f2 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 * (n + 3)

open Classical in
def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.nth (fun x => ∀ j, f2 j ≠ x) n + 1

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (Nat.choose ((SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ x) n : ℤ) - (n : ℤ)).toNat 2 + n)

end

end A163860.P16433299228001960760

/-! ## A163860.P17590444890619231673

`A247026(A052905(n+2))`
-/

namespace A163860.P17590444890619231673
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (A052905 (n + 2)).toNat

end

end A163860.P17590444890619231673

/-! ## A163860.P9980073116821215739

`A247026(A056115(n)+10)`
-/

namespace A163860.P9980073116821215739
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (A056115 n + 10).toNat

end

end A163860.P9980073116821215739

/-!
# A163861: Number of different 5th-power (quintic) mappings of a finite set of n elements into itself.

The programs for A163861, there is no canonical definition to state claims against.
-/

/-! ## A163861.P8175267739165521778

`A247026(A055999(n+3))`
-/

namespace A163861.P8175267739165521778
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A247026 (A055999 (n + 3)).toNat

end

end A163861.P8175267739165521778

/-! ## A163861.P10946857411044425184

`A374355(3*A006153(n))`
-/

namespace A163861.P10946857411044425184
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A374355 (3 * A006153 n).toNat

end

end A163861.P10946857411044425184

/-!
# A163862: a(n) = A170907(2^n).

The programs for A163862, there is no canonical definition to state claims against.
-/

/-! ## A163862.P212928319375135043

`A170907(2^n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163862.P212928319375135043
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170907 (2 ^ n)

end

end A163862.P212928319375135043

/-! ## A163862.P8240883978826466402

`record[A170907(A059268(n))]`
-/

namespace A163862.P8240883978826466402
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170907 (A059268 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163862.P8240883978826466402

/-! ## A163862.P17878550912640028333

`record[A170907(A088975(n))]`
-/

namespace A163862.P17878550912640028333
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170907 (A088975 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163862.P17878550912640028333

/-! ## A163862.P8163485914799225241

`record[A170907(A130321(n))]`
-/

namespace A163862.P8163485914799225241
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170907 (A130321 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163862.P8163485914799225241

/-! ## A163862.P15558517052109095540

`record[A170907(sqrt(A262616(n)))]`
-/

namespace A163862.P15558517052109095540
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A170907 (SequenceMachineLib.roundAway (Real.sqrt (A262616 n : ℝ))).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163862.P15558517052109095540

/-!
# A163864: a(n) = 2*a(n-2) for n > 2; a(1) = 1, a(2) = 6.

The programs for A163864, the canonical program `A163864.P11101804345250083474` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163864 has offset 1).

The definition of A163864 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A163864.P11101804345250083474`, by `A163864.P11101804345250083474.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163864.P11101804345250083474

`2*a(n-2)` with `a(0)=1, a(1)=6`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163864

/-- `2*a(n-2)` -/
def P11101804345250083474.Spec : Prop :=
  ∀ n, (P11101804345250083474.a n : ℤ) = A163864 (n + 1)

theorem P11101804345250083474.correct : P11101804345250083474.Spec := by
  intro n
  simp only [A163864, Nat.add_sub_cancel]

end A163864

/-! ## A163864.P1395150523959939979

`(2+(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))`
-/

namespace A163864.P1395150523959939979
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (2 + (-1) ^ (n + 1) : ℝ) * (2 : ℝ) ^ ((1 : ℚ) / 4 * ((2 * (n + 1) : ℤ) - 1 + (-1) ^ (n + 1) : ℚ) : ℝ)

end

end A163864.P1395150523959939979

namespace A163864

/-- `(2+(-1)^(n+1))*2^(1/4*(2*(n+1)-1+(-1)^(n+1)))` -/
def P1395150523959939979.Spec : Prop :=
  ∀ n, P1395150523959939979.a n = (A163864 (n + 1) : ℝ)

end A163864

/-! ## A163864.P14479146716827078400

`ogf((1+6x)/(1-2x^2))`
-/

namespace A163864.P14479146716827078400
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [1, 6] [1, 0, -2] n

end

end A163864.P14479146716827078400

namespace A163864

/-- `ogf((1+6x)/(1-2x^2))` -/
def P14479146716827078400.Spec : Prop :=
  ∀ n, P14479146716827078400.a n = A163864 (n + 1)

end A163864

/-! ## A163864.P8415168745328754846

`∏[2/a(n-1)]` with `a(0)=1, a(1)=6`
-/

namespace A163864.P8415168745328754846
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n f1 =>
  2 / f1 (n - 1)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163864.P8415168745328754846

namespace A163864

/-- `∏[2/a(n-1)]` -/
def P8415168745328754846.Spec : Prop :=
  ∀ n, P8415168745328754846.a n = (A163864 (n + 1) : ℚ)

end A163864

/-! ## A163864.P7147518607429253508

`a(n-2)+a(n-2)` with `a(0)=1, a(1)=6`
-/

namespace A163864.P7147518607429253508
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) + a (n - 2)

end

end A163864.P7147518607429253508

namespace A163864

/-- `a(n-2)+a(n-2)` -/
def P7147518607429253508.Spec : Prop :=
  ∀ n, (P7147518607429253508.a n : ℤ) = A163864 (n + 1)

theorem P7147518607429253508.correct : P7147518607429253508.Spec := by
  intro n
  simp only [A163864, Nat.add_sub_cancel, A163864.P7147518607429253508.a, A163864.P11101804345250083474.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A163864

/-! ## A163864.P3143621430307800344

`a(n-2)/(1-1/2)` with `a(0)=1, a(1)=6`
-/

namespace A163864.P3143621430307800344
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [1, 6] fun n a =>
  a (n - 2) / (1 - (1 : ℚ) / 2)

end

end A163864.P3143621430307800344

namespace A163864

/-- `a(n-2)/(1-1/2)` -/
def P3143621430307800344.Spec : Prop :=
  ∀ n, P3143621430307800344.a n = (A163864 (n + 1) : ℚ)

end A163864

/-! ## A163864.P11518276316977152854

`A072946(n+1)/gcd(2, n)`
-/

namespace A163864.P11518276316977152854
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A072946 (n + 1) : ℚ) / (Nat.gcd 2 n : ℚ)

end

end A163864.P11518276316977152854

namespace A163864

/-- `A072946(n+1)/gcd(2, n)` -/
def P11518276316977152854.Spec : Prop :=
  ∀ n, P11518276316977152854.a n = (A163864 (n + 1) : ℚ)

end A163864

/-! ## A163864.P10110298555209407935

`A029746(n+2)-a(n-1)` with `a(0)=1`
-/

namespace A163864.P10110298555209407935
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A029746 (n + 2) - a (n - 1)

end

end A163864.P10110298555209407935

namespace A163864

/-- `A029746(n+2)-a(n-1)` -/
def P10110298555209407935.Spec : Prop :=
  ∀ n, P10110298555209407935.a n = A163864 (n + 1)

end A163864

/-! ## A163864.P6599229788881731167

`A072946(A014681(n))`
-/

namespace A163864.P6599229788881731167
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A072946 (A014681 n).toNat

end

end A163864.P6599229788881731167

namespace A163864

/-- `A072946(A014681(n))` -/
def P6599229788881731167.Spec : Prop :=
  ∀ n, P6599229788881731167.a n = A163864 (n + 1)

end A163864

/-! ## A163864.P5620321268977762520

`A029744(A065168(n+2))`
-/

namespace A163864.P5620321268977762520
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029744 (A065168 (n + 2)).toNat

end

end A163864.P5620321268977762520

namespace A163864

/-- `A029744(A065168(n+2))` -/
def P5620321268977762520.Spec : Prop :=
  ∀ n, P5620321268977762520.a n = A163864 (n + 1)

end A163864

/-! ## A163864.P3501177313550129175

`A074323(A103889(n+2))`
-/

namespace A163864.P3501177313550129175
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A103889 (n + 2)).toNat

end

end A163864.P3501177313550129175

namespace A163864

/-- `A074323(A103889(n+2))` -/
def P3501177313550129175.Spec : Prop :=
  ∀ n, P3501177313550129175.a n = A163864 (n + 1)

end A163864

/-! ## A163864.P14822538362176884236

`A308709(A080412(n)+2)`
-/

namespace A163864.P14822538362176884236
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (A080412 n + 2).toNat

end

end A163864.P14822538362176884236

namespace A163864

/-- `A308709(A080412(n)+2)` -/
def P14822538362176884236.Spec : Prop :=
  ∀ n, P14822538362176884236.a n = A163864 (n + 1)

end A163864

/-! ## A163864.P3639954819688868872

`A308709(A133256(n+2))`
-/

namespace A163864.P3639954819688868872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A308709 (A133256 (n + 2)).toNat

end

end A163864.P3639954819688868872

namespace A163864

/-- `A308709(A133256(n+2))` -/
def P3639954819688868872.Spec : Prop :=
  ∀ n, P3639954819688868872.a n = A163864 (n + 1)

end A163864

/-! ## A163864.P11095544824711414002

`A074323(A010684(n)+n)`
-/

namespace A163864.P11095544824711414002
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A010684 n + (n : ℤ)).toNat

end

end A163864.P11095544824711414002

namespace A163864

/-- `A074323(A010684(n)+n)` -/
def P11095544824711414002.Spec : Prop :=
  ∀ n, P11095544824711414002.a n = A163864 (n + 1)

end A163864

/-! ## A163864.P6781258419877480586

`A164073(A010684(n)+n)`
-/

namespace A163864.P6781258419877480586
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (A010684 n + (n : ℤ)).toNat

end

end A163864.P6781258419877480586

namespace A163864

/-- `A164073(A010684(n)+n)` -/
def P6781258419877480586.Spec : Prop :=
  ∀ n, P6781258419877480586.a n = A163864 (n + 1)

end A163864

/-! ## A163864.P13196596393849003526

`lcm(A010684(n), A060546(n))`
-/

namespace A163864.P13196596393849003526
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010684 n) (A060546 n)

end

end A163864.P13196596393849003526

namespace A163864

/-- `lcm(A010684(n), A060546(n))` -/
def P13196596393849003526.Spec : Prop :=
  ∀ n, (P13196596393849003526.a n : ℤ) = A163864 (n + 1)

end A163864

/-! ## A163864.P6031487630086716328

`lcm(A010687(n), A152166(n))`
-/

namespace A163864.P6031487630086716328
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A010687 n) (A152166 n)

end

end A163864.P6031487630086716328

namespace A163864

/-- `lcm(A010687(n), A152166(n))` -/
def P6031487630086716328.Spec : Prop :=
  ∀ n, (P6031487630086716328.a n : ℤ) = A163864 (n + 1)

end A163864

/-! ## A163864.P13837874766298482931

`A074323(A004442(n+1)+1)`
-/

namespace A163864.P13837874766298482931
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074323 (A004442 (n + 1) + 1).toNat

end

end A163864.P13837874766298482931

namespace A163864

/-- `A074323(A004442(n+1)+1)` -/
def P13837874766298482931.Spec : Prop :=
  ∀ n, P13837874766298482931.a n = A163864 (n + 1)

end A163864

/-! ## A163864.P1060607485046511540

`A134693(n)-A164090(n+1)`
-/

namespace A163864.P1060607485046511540
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134693 n - A164090 (n + 1)

end

end A163864.P1060607485046511540

namespace A163864

/-- `A134693(n)-A164090(n+1)` -/
def P1060607485046511540.Spec : Prop :=
  ∀ n, P1060607485046511540.a n = A163864 (n + 1)

end A163864

/-! ## A163864.P2920205544493063254

`A060546(n+2)-A152166(n)`
-/

namespace A163864.P2920205544493063254
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A060546 (n + 2) - A152166 n

end

end A163864.P2920205544493063254

namespace A163864

/-- `A060546(n+2)-A152166(n)` -/
def P2920205544493063254.Spec : Prop :=
  ∀ n, P2920205544493063254.a n = A163864 (n + 1)

end A163864

/-!
# A163865: The binomial transform of the swinging factorial (A056040).

The programs for A163865, the canonical program `A163865.P5899914044909555635` is in `Seq.B003.C003`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163865 has offset 0).

The definition of A163865 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 208 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163865.P15840320330673912812

`A391990(n)+A372342(n)`
-/

namespace A163865.P15840320330673912812
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A391990 n + A372342 n

end

end A163865.P15840320330673912812

namespace A163865

/-- `A391990(n)+A372342(n)` -/
def P15840320330673912812.Spec : Prop :=
  ∀ n, P15840320330673912812.a n = A163865 n

theorem P15840320330673912812.correct : P15840320330673912812.Spec := by
  intro n
  simp only [A163865, Nat.add_sub_cancel, A163865.P15840320330673912812.a, A163865.P5899914044909555635.a, A092690, A092690.P2634630127419684393.a, A109188, A109188.P13095165544596426662.a, A372342, A372342.P17129522414760120080.a, A391990, A391990.P7637229657384781661.a, A002426, A002426.P18316219981098248731.a, A132894, A132894.P13878505637686974869.a, A005773, A005773.P2300326801340372225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163865

/-! ## A163865.P5899914044909555635

`2*A092690(n)-A109188(n+1)`

The canonical program, it is in `Seq.B003.C003`.
-/

namespace A163865

/-- `2*A092690(n)-A109188(n+1)` -/
def P5899914044909555635.Spec : Prop :=
  ∀ n, P5899914044909555635.a n = A163865 n

theorem P5899914044909555635.correct : P5899914044909555635.Spec := by
  intro n
  simp only [A163865]

end A163865

/-! ## A163865.P12992466223224085417

`A163840(∑[n])`
-/

namespace A163865.P12992466223224085417
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163840 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163865.P12992466223224085417

namespace A163865

/-- `A163840(∑[n])` -/
def P12992466223224085417.Spec : Prop :=
  ∀ n, P12992466223224085417.a n = A163865 n

end A163865

/-! ## A163865.P7491906719969050263

`record[A163840(n)]`
-/

namespace A163865.P7491906719969050263
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163840 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163865.P7491906719969050263

namespace A163865

/-- `record[A163840(n)]` -/
def P7491906719969050263.Spec : Prop :=
  ∀ n, P7491906719969050263.a n = A163865 n

end A163865

/-! ## A163865.P17443835438379872172

`A163840(A000217(n))%A014448(n)`
-/

namespace A163865.P17443835438379872172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163840 (A000217 n).toNat) (A014448 n)

end

end A163865.P17443835438379872172

namespace A163865

/-- `A163840(A000217(n))%A014448(n)` -/
def P17443835438379872172.Spec : Prop :=
  ∀ n, P17443835438379872172.a n = A163865 n

end A163865

/-! ## A163865.P5320552952943249791

`and(A163840(A000217(n)), A267941(n))`
-/

namespace A163865.P5320552952943249791
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.land (A163840 (A000217 n).toNat) (A267941 n)

end

end A163865.P5320552952943249791

namespace A163865

/-- `and(A163840(A000217(n)), A267941(n))` -/
def P5320552952943249791.Spec : Prop :=
  ∀ n, P5320552952943249791.a n = A163865 n

end A163865

/-! ## A163865.P3998664207619849038

`or(A000007(n), A163840(A000217(n)))`
-/

namespace A163865.P3998664207619849038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor (A000007 n) (A163840 (A000217 n).toNat)

end

end A163865.P3998664207619849038

namespace A163865

/-- `or(A000007(n), A163840(A000217(n)))` -/
def P3998664207619849038.Spec : Prop :=
  ∀ n, P3998664207619849038.a n = A163865 n

end A163865

/-!
# A163866: Partial sums of A007318.

The programs for A163866, the canonical program `A163866.P7682049290721924147` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163866 has offset 1).

The definition of A163866 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 10000 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163866.P6246396273028025111

`∑[C(row(n), col(n))]`
-/

namespace A163866.P6246396273028025111
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (SequenceMachineLib.triRow n) (SequenceMachineLib.triCol n)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P6246396273028025111

namespace A163866

/-- `∑[C(row(n), col(n))]` -/
def P6246396273028025111.Spec : Prop :=
  ∀ n, (P6246396273028025111.a n : ℤ) = A163866 (n + 1)

end A163866

/-! ## A163866.P16482857381006178866

`∑[A007318(n)]`
-/

namespace A163866.P16482857381006178866
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007318 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P16482857381006178866

namespace A163866

/-- `∑[A007318(n)]` -/
def P16482857381006178866.Spec : Prop :=
  ∀ n, P16482857381006178866.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P16953066180957847256

`∑[abs(A108086(n))]`
-/

namespace A163866.P16953066180957847256
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A108086 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P16953066180957847256

namespace A163866

/-- `∑[abs(A108086(n))]` -/
def P16953066180957847256.Spec : Prop :=
  ∀ n, P16953066180957847256.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P15357816648241731300

`∑[abs(A117440(n))]`
-/

namespace A163866.P15357816648241731300
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A117440 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P15357816648241731300

namespace A163866

/-- `∑[abs(A117440(n))]` -/
def P15357816648241731300.Spec : Prop :=
  ∀ n, P15357816648241731300.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P2335480397961438645

`∑[abs(A130595(n))]`
-/

namespace A163866.P2335480397961438645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A130595 n|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P2335480397961438645

namespace A163866

/-- `∑[abs(A130595(n))]` -/
def P2335480397961438645.Spec : Prop :=
  ∀ n, P2335480397961438645.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P12846827910099862981

`∑[sqrt(A008459(n))]`
-/

namespace A163866.P12846827910099862981
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  Real.sqrt (A008459 n : ℝ)

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P12846827910099862981

namespace A163866

/-- `∑[sqrt(A008459(n))]` -/
def P12846827910099862981.Spec : Prop :=
  ∀ n, P12846827910099862981.a n = (A163866 (n + 1) : ℝ)

end A163866

/-! ## A163866.P7192133780306075080

`∑[A014473(n)+1]`
-/

namespace A163866.P7192133780306075080
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A014473 n + 1

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P7192133780306075080

namespace A163866

/-- `∑[A014473(n)+1]` -/
def P7192133780306075080.Spec : Prop :=
  ∀ n, P7192133780306075080.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P6434224401309219002

`∑[A028326(n)/2]`
-/

namespace A163866.P6434224401309219002
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A028326 n : ℚ) / 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P6434224401309219002

namespace A163866

/-- `∑[A028326(n)/2]` -/
def P6434224401309219002.Spec : Prop :=
  ∀ n, P6434224401309219002.a n = (A163866 (n + 1) : ℚ)

end A163866

/-! ## A163866.P6296862472393255443

`A102363(n+1)-1`
-/

namespace A163866.P6296862472393255443
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A102363 (n + 1) - 1

end

end A163866.P6296862472393255443

namespace A163866

/-- `A102363(n+1)-1` -/
def P6296862472393255443.Spec : Prop :=
  ∀ n, P6296862472393255443.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P14617510614695476499

`∑[abs(A154926(n+1))]`
-/

namespace A163866.P14617510614695476499
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A154926 (n + 1)|

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P14617510614695476499

namespace A163866

/-- `∑[abs(A154926(n+1))]` -/
def P14617510614695476499.Spec : Prop :=
  ∀ n, P14617510614695476499.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P12035853078952117645

`∑[ceil(A109128(n)/2)]`
-/

namespace A163866.P12035853078952117645
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A109128 n : ℚ) / 2⌉

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P12035853078952117645

namespace A163866

/-- `∑[ceil(A109128(n)/2)]` -/
def P12035853078952117645.Spec : Prop :=
  ∀ n, P12035853078952117645.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P9418312497293322737

`(∑[A134058(n)]+1)/2`
-/

namespace A163866.P9418312497293322737
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A134058 n

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ((∑ j ∈ Finset.range (n + 1), f1 j + 1 : ℤ) : ℚ) / 2

end

end A163866.P9418312497293322737

namespace A163866

/-- `(∑[A134058(n)]+1)/2` -/
def P9418312497293322737.Spec : Prop :=
  ∀ n, P9418312497293322737.a n = (A163866 (n + 1) : ℚ)

end A163866

/-! ## A163866.P3881389139871050877

`a(n-1)+A007318(2*n-n)` with `a(0)=1`
-/

namespace A163866.P3881389139871050877
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  a (n - 1) + A007318 (2 * n - n)

end

end A163866.P3881389139871050877

namespace A163866

/-- `a(n-1)+A007318(2*n-n)` -/
def P3881389139871050877.Spec : Prop :=
  ∀ n, P3881389139871050877.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P9940259523487448602

`∑[A285118(n)+A285116(n)]`
-/

namespace A163866.P9940259523487448602
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A285118 n + A285116 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P9940259523487448602

namespace A163866

/-- `∑[A285118(n)+A285116(n)]` -/
def P9940259523487448602.Spec : Prop :=
  ∀ n, P9940259523487448602.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P13523568255172518655

`∑[A028276(n)-A028263(n)]`
-/

namespace A163866.P13523568255172518655
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A028276 n - A028263 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P13523568255172518655

namespace A163866

/-- `∑[A028276(n)-A028263(n)]` -/
def P13523568255172518655.Spec : Prop :=
  ∀ n, P13523568255172518655.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P7682049290721924147

`∑[A074909(n-A003056(n))]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A163866

/-- `∑[A074909(n-A003056(n))]` -/
def P7682049290721924147.Spec : Prop :=
  ∀ n, P7682049290721924147.a n = A163866 (n + 1)

theorem P7682049290721924147.correct : P7682049290721924147.Spec := by
  intro n
  simp only [A163866, Nat.add_sub_cancel]

end A163866

/-! ## A163866.P5885222962528465932

`∑[C(A003056(n), A002262(n))]`
-/

namespace A163866.P5885222962528465932
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Nat.choose (A003056 n).toNat (A002262 n).toNat

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P5885222962528465932

namespace A163866

/-- `∑[C(A003056(n), A002262(n))]` -/
def P5885222962528465932.Spec : Prop :=
  ∀ n, (P5885222962528465932.a n : ℤ) = A163866 (n + 1)

end A163866

/-! ## A163866.P2671050267018145979

`A054143(n)+A055248(n)-1`
-/

namespace A163866.P2671050267018145979
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A054143 n + (A055248 n - 1)

end

end A163866.P2671050267018145979

namespace A163866

/-- `A054143(n)+A055248(n)-1` -/
def P2671050267018145979.Spec : Prop :=
  ∀ n, P2671050267018145979.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P8186025919316350521

`∑[A074909(∑[1-A010054(n)])]`
-/

namespace A163866.P8186025919316350521
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  1 - A010054 n

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A074909 (∑ j ∈ Finset.range (n + 1), f2 j).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P8186025919316350521

namespace A163866

/-- `∑[A074909(∑[1-A010054(n)])]` -/
def P8186025919316350521.Spec : Prop :=
  ∀ n, P8186025919316350521.a n = A163866 (n + 1)

end A163866

/-! ## A163866.P10420279586587813787

`∑[A097805(n+1)+A097805(n)]`
-/

namespace A163866.P10420279586587813787
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A097805 (n + 1) + A097805 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163866.P10420279586587813787

namespace A163866

/-- `∑[A097805(n+1)+A097805(n)]` -/
def P10420279586587813787.Spec : Prop :=
  ∀ n, P10420279586587813787.a n = A163866 (n + 1)

end A163866

/-!
# A163867: a(n) = a(floor(n/3)) + a(floor(2*n/3)); a(0) = 1.

The programs for A163867, the canonical program `A163867.P1169425273495458372` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163867 has offset 0).

The definition of A163867 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `a(floor(n/3))+a(floor(2*n/3))` (program `A163867.P1169425273495458372`, by `A163867.P1169425273495458372.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163867.P1169425273495458372

`a(floor(n/3))+a(floor(2*n/3))` with `a(0)=1`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163867

/-- `a(floor(n/3))+a(floor(2*n/3))` -/
def P1169425273495458372.Spec : Prop :=
  ∀ n, (P1169425273495458372.a n : ℤ) = A163867 n

theorem P1169425273495458372.correct : P1169425273495458372.Spec := by
  intro n
  simp only [A163867]

end A163867

/-! ## A163867.P13664527605900683694

`A143091(n)+A140473(n)`
-/

namespace A163867.P13664527605900683694
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 n + A140473 n

end

end A163867.P13664527605900683694

namespace A163867

/-- `A143091(n)+A140473(n)` -/
def P13664527605900683694.Spec : Prop :=
  ∀ n, P13664527605900683694.a n = A163867 n

end A163867

/-! ## A163867.P5010506261451163056

`A143091(n)+∑[A288600(n+2)]%A127199(n+1)`
-/

namespace A163867.P5010506261451163056
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288600 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143091 n + Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j) (A127199 (n + 1))

end

end A163867.P5010506261451163056

namespace A163867

/-- `A143091(n)+∑[A288600(n+2)]%A127199(n+1)` -/
def P5010506261451163056.Spec : Prop :=
  ∀ n, P5010506261451163056.a n = A163867 n

end A163867

/-!
# A163868: a(n) = (4^n + 11)/3.

The programs for A163868, the canonical program `A163868.P9811514758966808677` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163868 has offset 0).

The definition of A163868 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `(4^n+11)/3` (program `A163868.P13915622329030764835`, by `A163868.P13915622329030764835.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163868.P13915622329030764835

`(4^n+11)/3`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163868.P13915622329030764835
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 ^ n + 11 : ℚ) / 3

end

end A163868.P13915622329030764835

namespace A163868

/-- `(4^n+11)/3` -/
def P13915622329030764835.Spec : Prop :=
  ∀ n, P13915622329030764835.a n = (A163868 n : ℚ)

theorem P13915622329030764835.correct : P13915622329030764835.Spec := by
  intro n
  induction n using Nat.strong_induction_on with
  | _ n ih =>
    match n with
    | 0 =>
      simp [A163868, Nat.add_sub_cancel, A163868.P13915622329030764835.a, A163868.P9811514758966808677.a, SequenceMachineLib.memo_apply, SequenceMachineLib.rec_of_lt]
      try norm_num
    | m + 1 =>
      have h1 := ih m (by omega)
      simp only [A163868, Nat.add_sub_cancel, A163868.P13915622329030764835.a, A163868.P9811514758966808677.a, SequenceMachineLib.memo_apply] at h1 ⊢
      rw [SequenceMachineLib.rec_of_le _ _ (by simp)]
      simp only [show m + 1 - 1 = m by omega, show m < m + 1 by omega, ↓reduceIte]
      push_cast at h1 ⊢
      rw [← h1]
      first | ring | (field_simp; ring) | omega | (push_cast; ring_nf) | nlinarith

end A163868

/-! ## A163868.P9811514758966808677

`4*a(n-1)-11` with `a(0)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163868

/-- `4*a(n-1)-11` -/
def P9811514758966808677.Spec : Prop :=
  ∀ n, P9811514758966808677.a n = A163868 n

theorem P9811514758966808677.correct : P9811514758966808677.Spec := by
  intro n
  simp only [A163868]

end A163868

/-! ## A163868.P8534929957943722402

`A155701(n)+1`
-/

namespace A163868.P8534929957943722402
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A155701 n + 1

end

end A163868.P8534929957943722402

namespace A163868

/-- `A155701(n)+1` -/
def P8534929957943722402.Spec : Prop :=
  ∀ n, P8534929957943722402.a n = A163868 n

end A163868

/-! ## A163868.P16588270204697858434

`A163834(n)+2`
-/

namespace A163868.P16588270204697858434
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163834 n + 2

end

end A163868.P16588270204697858434

namespace A163868

/-- `A163834(n)+2` -/
def P16588270204697858434.Spec : Prop :=
  ∀ n, P16588270204697858434.a n = A163868 n

end A163868

/-! ## A163868.P6488484044976099495

`A047849(n)+3`
-/

namespace A163868.P6488484044976099495
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A047849 n + 3

end

end A163868.P6488484044976099495

namespace A163868

/-- `A047849(n)+3` -/
def P6488484044976099495.Spec : Prop :=
  ∀ n, P6488484044976099495.a n = A163868 n

end A163868

/-! ## A163868.P16066403077035841650

`ogf((4-15x)/(1-5x+4x^2))`
-/

namespace A163868.P16066403077035841650
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [4, -15] [1, -5, 4] n

end

end A163868.P16066403077035841650

namespace A163868

/-- `ogf((4-15x)/(1-5x+4x^2))` -/
def P16066403077035841650.Spec : Prop :=
  ∀ n, P16066403077035841650.a n = A163868 n

end A163868

/-! ## A163868.P12614174150717998984

`∑[4^gcd(1-n, n-1)]`
-/

namespace A163868.P12614174150717998984
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ Int.gcd (1 - (n : ℤ)) ((n : ℤ) - 1)

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163868.P12614174150717998984

namespace A163868

/-- `∑[4^gcd(1-n, n-1)]` -/
def P12614174150717998984.Spec : Prop :=
  ∀ n, (P12614174150717998984.a n : ℤ) = A163868 n

end A163868

/-! ## A163868.P13989662399716136091

`∑[a(2%n)^(n-1)]` with `a(0)=4`
-/

namespace A163868.P13989662399716136091
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (2 % n) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163868.P13989662399716136091

namespace A163868

/-- `∑[a(2%n)^(n-1)]` -/
def P13989662399716136091.Spec : Prop :=
  ∀ n, P13989662399716136091.a n = (A163868 n : ℚ)

end A163868

/-! ## A163868.P4030509846225969211

`lcm(4, 4-a(n-1))+5` with `a(0)=4`
-/

namespace A163868.P4030509846225969211
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [4] fun n a =>
  Int.lcm 4 (4 - (a (n - 1) : ℤ)) + 5

end

end A163868.P4030509846225969211

namespace A163868

/-- `lcm(4, 4-a(n-1))+5` -/
def P4030509846225969211.Spec : Prop :=
  ∀ n, (P4030509846225969211.a n : ℤ) = A163868 n

end A163868

/-! ## A163868.P5536370073364666533

`a(n-1)+4^(n-1)` with `a(0)=4`
-/

namespace A163868.P5536370073364666533
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  a (n - 1) + (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

end

end A163868.P5536370073364666533

namespace A163868

/-- `a(n-1)+4^(n-1)` -/
def P5536370073364666533.Spec : Prop :=
  ∀ n, P5536370073364666533.a n = (A163868 n : ℚ)

end A163868

/-! ## A163868.P16644300952399770660

`∑[a(n-1)/(1/2)²]` with `a(0)=4, a(1)=1`
-/

namespace A163868.P16644300952399770660
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4, 1] fun n f1 =>
  f1 (n - 1) / ((1 : ℚ) / 2) ^ 2

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163868.P16644300952399770660

namespace A163868

/-- `∑[a(n-1)/(1/2)²]` -/
def P16644300952399770660.Spec : Prop :=
  ∀ n, P16644300952399770660.a n = (A163868 n : ℚ)

end A163868

/-! ## A163868.P15045987410350453989

`∑[4^((n-2)%(n+1)+1)]`
-/

namespace A163868.P15045987410350453989
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (4 : ℚ) ^ (Int.tmod ((n : ℤ) - 2) (n + 1 : ℤ) + 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163868.P15045987410350453989

namespace A163868

/-- `∑[4^((n-2)%(n+1)+1)]` -/
def P15045987410350453989.Spec : Prop :=
  ∀ n, P15045987410350453989.a n = (A163868 n : ℚ)

end A163868

/-! ## A163868.P3624132101090294930

`∑[4^((2*n+1)%(n+2))]`
-/

namespace A163868.P3624132101090294930
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  4 ^ ((2 * n + 1) % (n + 2))

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163868.P3624132101090294930

namespace A163868

/-- `∑[4^((2*n+1)%(n+2))]` -/
def P3624132101090294930.Spec : Prop :=
  ∀ n, (P3624132101090294930.a n : ℤ) = A163868 n

end A163868

/-! ## A163868.P3819691914964148876

`4^(n-1)-floor(-a(n-1))` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A163868.P3819691914964148876
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌊-a (n - 1)⌋ : ℚ)

end

end A163868.P3819691914964148876

namespace A163868

/-- `4^(n-1)-floor(-a(n-1))` -/
def P3819691914964148876.Spec : Prop :=
  ∀ n, P3819691914964148876.a n = (A163868 n : ℚ)

end A163868

/-! ## A163868.P7941673803599694399

`4^(n-1)-ceil(-a(n-1))` with `a(0)=4`

`ceil` is left out, it is the identity on integers.
-/

namespace A163868.P7941673803599694399
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (⌈-a (n - 1)⌉ : ℚ)

end

end A163868.P7941673803599694399

namespace A163868

/-- `4^(n-1)-ceil(-a(n-1))` -/
def P7941673803599694399.Spec : Prop :=
  ∀ n, P7941673803599694399.a n = (A163868 n : ℚ)

end A163868

/-! ## A163868.P15770362433792698027

`4^(n-1)-round(-a(n-1))` with `a(0)=4`

`round` is left out, it is the identity on integers.
-/

namespace A163868.P15770362433792698027
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.rec [4] fun n a =>
  (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ) - (SequenceMachineLib.roundAway (-a (n - 1)) : ℚ)

end

end A163868.P15770362433792698027

namespace A163868

/-- `4^(n-1)-round(-a(n-1))` -/
def P15770362433792698027.Spec : Prop :=
  ∀ n, P15770362433792698027.a n = (A163868 n : ℚ)

end A163868

/-! ## A163868.P11315837060090055321

`record[a(n-1)-(-2)^(n-1)]` with `a(0)=4`
-/

namespace A163868.P11315837060090055321
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.rec [4] fun n f1 =>
  f1 (n - 1) - (-2 : ℚ) ^ ((n : ℤ) - 1 : ℤ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163868.P11315837060090055321

namespace A163868

/-- `record[a(n-1)-(-2)^(n-1)]` -/
def P11315837060090055321.Spec : Prop :=
  ∀ n, P11315837060090055321.a n = (A163868 n : ℚ)

end A163868

/-! ## A163868.P2669817599154070215

`∑[∑[a(n-1)+a(n-1)]²]` with `a(0)=2, a(1)=-1, a(2)=1`
-/

namespace A163868.P2669817599154070215
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.rec [2, -1, 1] fun n f2 =>
  f2 (n - 1) + f2 (n - 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f2 j) ^ 2

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163868.P2669817599154070215

namespace A163868

/-- `∑[∑[a(n-1)+a(n-1)]²]` -/
def P2669817599154070215.Spec : Prop :=
  ∀ n, P2669817599154070215.a n = A163868 n

end A163868

/-! ## A163868.P11936921869228700153

`∑[4^(n-a(n-1)/floor(a(n-1)))]` with `a(0)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A163868.P11936921869228700153
noncomputable section

def f1 : ℕ → ℝ := SequenceMachineLib.rec [4] fun n f1 =>
  (4 : ℝ) ^ ((n : ℝ) - f1 (n - 1) / (⌊f1 (n - 1)⌋ : ℝ))

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j

end

end A163868.P11936921869228700153

namespace A163868

/-- `∑[4^(n-a(n-1)/floor(a(n-1)))]` -/
def P11936921869228700153.Spec : Prop :=
  ∀ n, P11936921869228700153.a n = (A163868 n : ℝ)

end A163868

/-! ## A163868.P2874202189649605807

`A002450(n)+4`
-/

namespace A163868.P2874202189649605807
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002450 n + 4

end

end A163868.P2874202189649605807

namespace A163868

/-- `A002450(n)+4` -/
def P2874202189649605807.Spec : Prop :=
  ∀ n, P2874202189649605807.a n = A163868 n

end A163868

/-!
# A163869: Binomial transform of the beta numbers 1/beta(n+1,n+1) (A002457).

The programs for A163869, the canonical program `A163869.P10429528466280486876` is in `Seq.B001.C007`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163869 has offset 0).

The definition of A163869 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 142 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163869.P10429528466280486876

`∑[A377197(n)]`

The canonical program, it is in `Seq.B001.C007`.
-/

namespace A163869

/-- `∑[A377197(n)]` -/
def P10429528466280486876.Spec : Prop :=
  ∀ n, P10429528466280486876.a n = A163869 n

theorem P10429528466280486876.correct : P10429528466280486876.Spec := by
  intro n
  simp only [A163869]

end A163869

/-! ## A163869.P6343199573480315509

`Δ[n/2*A085362(n)]`
-/

namespace A163869.P6343199573480315509
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (n : ℚ) / 2 * (A085362 n : ℚ)

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163869.P6343199573480315509

namespace A163869

/-- `Δ[n/2*A085362(n)]` -/
def P6343199573480315509.Spec : Prop :=
  ∀ n, P6343199573480315509.a n = (A163869 n : ℚ)

end A163869

/-! ## A163869.P3155984649609259786

`Δ[n*A026378(A028310(n))]`
-/

namespace A163869.P3155984649609259786
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026378 (A028310 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163869.P3155984649609259786

namespace A163869

/-- `Δ[n*A026378(A028310(n))]` -/
def P3155984649609259786.Spec : Prop :=
  ∀ n, P3155984649609259786.a n = A163869 n

end A163869

/-! ## A163869.P8901007089372070023

`Δ[n*A026374(A001105(n))]`
-/

namespace A163869.P8901007089372070023
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A026374 (A001105 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163869.P8901007089372070023

namespace A163869

/-- `Δ[n*A026374(A001105(n))]` -/
def P8901007089372070023.Spec : Prop :=
  ∀ n, P8901007089372070023.a n = A163869 n

end A163869

/-! ## A163869.P17538152787175095822

`A163842(∑[n])`
-/

namespace A163869.P17538152787175095822
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163869.P17538152787175095822

namespace A163869

/-- `A163842(∑[n])` -/
def P17538152787175095822.Spec : Prop :=
  ∀ n, P17538152787175095822.a n = A163869 n

end A163869

/-! ## A163869.P1243262099654326268

`record[A163842(n)]`
-/

namespace A163869.P1243262099654326268
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163842 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163869.P1243262099654326268

namespace A163869

/-- `record[A163842(n)]` -/
def P1243262099654326268.Spec : Prop :=
  ∀ n, P1243262099654326268.a n = A163869 n

end A163869

/-! ## A163869.P12245408933828830038

`or(1, A163842(A000217(n)))`
-/

namespace A163869.P12245408933828830038
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.lor 1 (A163842 (A000217 n).toNat)

end

end A163869.P12245408933828830038

namespace A163869

/-- `or(1, A163842(A000217(n)))` -/
def P12245408933828830038.Spec : Prop :=
  ∀ n, P12245408933828830038.a n = A163869 n

end A163869

/-! ## A163869.P537178862025962224

`lcm(A033999(n), A163842(A000217(n)))`
-/

namespace A163869.P537178862025962224
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A033999 n) (A163842 (A000217 n).toNat)

end

end A163869.P537178862025962224

namespace A163869

/-- `lcm(A033999(n), A163842(A000217(n)))` -/
def P537178862025962224.Spec : Prop :=
  ∀ n, (P537178862025962224.a n : ℤ) = A163869 n

end A163869

/-!
# A163870: Triangle read by rows: row n lists the nontrivial divisors of the n-th composite.

The programs for A163870, there is no canonical definition to state claims against.
-/

/-! ## A163870.P15415667574408360327

`A027749(lt[1, A027751(n+1)])`
-/

namespace A163870.P15415667574408360327
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027749 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163870.P15415667574408360327

/-! ## A163870.P5290825946950310669

`A027751(A385476(n+1)+n)`
-/

namespace A163870.P5290825946950310669
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027751 (A385476 (n + 1) + (n : ℤ)).toNat

end

end A163870.P5290825946950310669

/-! ## A163870.P5264942851275745730

`A027751(lt[1, A027751(n+1)]+1)`
-/

namespace A163870.P5264942851275745730
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027751 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027751 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A163870.P5264942851275745730

/-! ## A163870.P18297951112785243890

`A027749(comp[∑[A000005(n+1)-1]]+1)`
-/

namespace A163870.P18297951112785243890
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000005 (n + 1) - 1

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A027749 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n + 1)

end

end A163870.P18297951112785243890

/-! ## A163870.P14058549818055183547

`A238690(p?[A008578(A027751(n+1))])`
-/

namespace A163870.P14058549818055183547
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008578 (A027751 (n + 1)).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A238690 (f1 (SequenceMachineLib.nth (fun j => (f1 j).toNat.Prime) n)).toNat

end

end A163870.P14058549818055183547

/-! ## A163870.P15113634998384561817

`A038566(eq[1, A038567(n+1)%A038566(n+1)]+1)`
-/

namespace A163870.P15113634998384561817
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A038567 (n + 1)) (A038566 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A038566 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A163870.P15113634998384561817

/-! ## A163870.P5280560091057506977

`A002260(lt[A286236(n+1), A286239(n+1)]+1)`
-/

namespace A163870.P5280560091057506977
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286236 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A286239 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n + 1)

end

end A163870.P5280560091057506977

/-! ## A163870.P7050497947493427518

`A193738(eq[A048158(n+1)+2, A193738(n)])`
-/

namespace A163870.P7050497947493427518
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A048158 (n + 1) + 2

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193738 (SequenceMachineLib.nth (fun j => f1 j = f2 j) n)

end

end A163870.P7050497947493427518

/-! ## A163870.P12359525684346261426

`A176891(lt[1, A176891(n+1)]+1)`
-/

namespace A163870.P12359525684346261426
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176891 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A176891 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n + 1)

end

end A163870.P12359525684346261426

/-! ## A163870.P11282759654728600588

`A128227(lt[1, A051731(n+1)*A128227(n)])`
-/

namespace A163870.P11282759654728600588
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1) * A128227 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163870.P11282759654728600588

/-! ## A163870.P17048420994801608442

`A128227(lt[1/A128227(n), A051731(n+1)])`
-/

namespace A163870.P17048420994801608442
noncomputable section

def f1 : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  1 / (A128227 n : ℚ)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051731 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A128227 (SequenceMachineLib.nth (fun j => f1 j < (f2 j : ℚ)) n)

end

end A163870.P17048420994801608442

/-! ## A163870.P13093092703424081216

`A002260(eq[1, A051125(n+1)%A002260(n+1)]+1)`
-/

namespace A163870.P13093092703424081216
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A051125 (n + 1)) (A002260 (n + 1))

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A163870.P13093092703424081216

/-! ## A163870.P9835539693332127381

`A002260(eq[1, A193212(n+1)+A002260(n+2)]+1)`
-/

namespace A163870.P9835539693332127381
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A193212 (n + 1) + A002260 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002260 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) = f2 j) n + 1)

end

end A163870.P9835539693332127381

/-!
# A163871: The n-th composite plus the sum of its nontrivial divisors.

The programs for A163871, the canonical program `A163871.P6376979073296319069` is in `Seq.B004.C001`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163871 has offset 1).

The definition of A163871 is `conditional`: the Lean definition is an OEIS formula that is not marked as a conjecture, but it uses A062825, whose definition is only conditional or conjectured, so it is only correct if that one is. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: conditional.
-/

/-! ## A163871.P6376979073296319069

`A002808(n+1)+A062825(n+2)`

The canonical program, it is in `Seq.B004.C001`.
-/

namespace A163871

/-- `A002808(n+1)+A062825(n+2)` -/
def P6376979073296319069.Spec : Prop :=
  ∀ n, P6376979073296319069.a n = A163871 (n + 1)

theorem P6376979073296319069.correct : P6376979073296319069.Spec := by
  intro n
  simp only [A163871, Nat.add_sub_cancel]

end A163871

/-! ## A163871.P15209947047621560172

`A073255(n+1)-1`
-/

namespace A163871.P15209947047621560172
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A073255 (n + 1) - 1

end

end A163871.P15209947047621560172

namespace A163871

/-- `A073255(n+1)-1` -/
def P15209947047621560172.Spec : Prop :=
  ∀ n, P15209947047621560172.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P17863395342021883204

`∑{d}[A002808(n+1), #]-1`
-/

namespace A163871.P17863395342021883204
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002808 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((∑ d ∈ Nat.divisors (f1 n).natAbs, d : ℕ) : ℤ) - 1

end

end A163871.P17863395342021883204

namespace A163871

/-- `∑{d}[A002808(n+1), #]-1` -/
def P17863395342021883204.Spec : Prop :=
  ∀ n, P17863395342021883204.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P8871618101643948068

`A000203(Δ[A053767(n)])-1`
-/

namespace A163871.P8871618101643948068
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A053767 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat - 1

end

end A163871.P8871618101643948068

namespace A163871

/-- `A000203(Δ[A053767(n)])-1` -/
def P8871618101643948068.Spec : Prop :=
  ∀ n, P8871618101643948068.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P3382026262278608134

`A000203(comp[A351078(n)])-1`
-/

namespace A163871.P3382026262278608134
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A351078 n

open Classical in
def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun x => ∀ j, f1 j ≠ (x : ℤ)) n) - 1

end

end A163871.P3382026262278608134

namespace A163871

/-- `A000203(comp[A351078(n)])-1` -/
def P3382026262278608134.Spec : Prop :=
  ∀ n, P3382026262278608134.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P9257773061827087451

`A000203(A002808(n+1))-1`
-/

namespace A163871.P9257773061827087451
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A002808 (n + 1)).toNat - 1

end

end A163871.P9257773061827087451

namespace A163871

/-- `A000203(A002808(n+1))-1` -/
def P9257773061827087451.Spec : Prop :=
  ∀ n, P9257773061827087451.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P11957644918212232409

`A000203(A018252(n+2))-1`
-/

namespace A163871.P11957644918212232409
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A018252 (n + 2)).toNat - 1

end

end A163871.P11957644918212232409

namespace A163871

/-- `A000203(A018252(n+2))-1` -/
def P11957644918212232409.Spec : Prop :=
  ∀ n, P11957644918212232409.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P1310815928263090334

`A000203(A141468(n+3))-1`
-/

namespace A163871.P1310815928263090334
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A141468 (n + 3)).toNat - 1

end

end A163871.P1310815928263090334

namespace A163871

/-- `A000203(A141468(n+3))-1` -/
def P1310815928263090334.Spec : Prop :=
  ∀ n, P1310815928263090334.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P7137003169039078019

`A000203(lt[1, A328771(n)])-1`
-/

namespace A163871.P7137003169039078019
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328771 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A163871.P7137003169039078019

namespace A163871

/-- `A000203(lt[1, A328771(n)])-1` -/
def P7137003169039078019.Spec : Prop :=
  ∀ n, P7137003169039078019.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P6316673387275671367

`A000203(lt[1, A328847(n)])-1`
-/

namespace A163871.P6316673387275671367
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A328847 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n) - 1

end

end A163871.P6316673387275671367

namespace A163871

/-- `A000203(lt[1, A328847(n)])-1` -/
def P6316673387275671367.Spec : Prop :=
  ∀ n, P6316673387275671367.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P16655247302134719967

`A162194(n+2)-1`
-/

namespace A163871.P16655247302134719967
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162194 (n + 2) - 1

end

end A163871.P16655247302134719967

namespace A163871

/-- `A162194(n+2)-1` -/
def P16655247302134719967.Spec : Prop :=
  ∀ n, P16655247302134719967.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P14175556001909588427

`A000203(sqrt(A062312(n+2)))-1`
-/

namespace A163871.P14175556001909588427
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (SequenceMachineLib.roundAway (Real.sqrt (A062312 (n + 2) : ℝ))).toNat - 1

end

end A163871.P14175556001909588427

namespace A163871

/-- `A000203(sqrt(A062312(n+2)))-1` -/
def P14175556001909588427.Spec : Prop :=
  ∀ n, P14175556001909588427.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P93652336260581150

`A000203(Δ[A051349(n+1)])-1`
-/

namespace A163871.P93652336260581150
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A051349 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat - 1

end

end A163871.P93652336260581150

namespace A163871

/-- `A000203(Δ[A051349(n+1)])-1` -/
def P93652336260581150.Spec : Prop :=
  ∀ n, P93652336260581150.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P14773342451033471282

`A062825(n+2)+A018252(n+2)`
-/

namespace A163871.P14773342451033471282
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A062825 (n + 2) + A018252 (n + 2)

end

end A163871.P14773342451033471282

namespace A163871

/-- `A062825(n+2)+A018252(n+2)` -/
def P14773342451033471282.Spec : Prop :=
  ∀ n, P14773342451033471282.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P16660186649413782480

`A162195(n+2)+A060462(n+2)`
-/

namespace A163871.P16660186649413782480
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A162195 (n + 2) + A060462 (n + 2)

end

end A163871.P16660186649413782480

namespace A163871

/-- `A162195(n+2)+A060462(n+2)` -/
def P16660186649413782480.Spec : Prop :=
  ∀ n, P16660186649413782480.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P9052037662349634828

`A000203(A065090(n+3))-1`
-/

namespace A163871.P9052037662349634828
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (A065090 (n + 3)).toNat - 1

end

end A163871.P9052037662349634828

namespace A163871

/-- `A000203(A065090(n+3))-1` -/
def P9052037662349634828.Spec : Prop :=
  ∀ n, P9052037662349634828.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P132331987260948164

`A000203(Δ[A175967(n+2)])-1`
-/

namespace A163871.P132331987260948164
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A175967 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A000203 (f1 (n + 1) - f1 n).toNat - 1

end

end A163871.P132331987260948164

namespace A163871

/-- `A000203(Δ[A175967(n+2)])-1` -/
def P132331987260948164.Spec : Prop :=
  ∀ n, P132331987260948164.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P10203747810792795840

`A039653(A002808(n+1))`
-/

namespace A163871.P10203747810792795840
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A002808 (n + 1)).toNat

end

end A163871.P10203747810792795840

namespace A163871

/-- `A039653(A002808(n+1))` -/
def P10203747810792795840.Spec : Prop :=
  ∀ n, P10203747810792795840.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P14468215498147995777

`A039653(A018252(n+2))`
-/

namespace A163871.P14468215498147995777
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (A018252 (n + 2)).toNat

end

end A163871.P14468215498147995777

namespace A163871

/-- `A039653(A018252(n+2))` -/
def P14468215498147995777.Spec : Prop :=
  ∀ n, P14468215498147995777.a n = A163871 (n + 1)

end A163871

/-! ## A163871.P1507333663117363294

`A039653(lt[1, A003415(n)])`
-/

namespace A163871.P1507333663117363294
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  1

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A003415 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A039653 (SequenceMachineLib.nth (fun j => (f1 j : ℤ) < f2 j) n)

end

end A163871.P1507333663117363294

namespace A163871

/-- `A039653(lt[1, A003415(n)])` -/
def P1507333663117363294.Spec : Prop :=
  ∀ n, P1507333663117363294.a n = A163871 (n + 1)

end A163871

/-!
# A163872: Inverse binomial transform of the beta numbers 1/beta(n+1,n+1) (A002457).

The programs for A163872, the canonical program `A163872.P13171049366053346656` is in `Seq.B002.C004`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163872 has offset 0).

The definition of A163872 is `conjectured`: the Lean definition is a formula that matches the known terms it was checked against, but it is not proven. The canonical program matched 207 terms. A proof of the Spec of a program (its theorem correct) only shows that the program equals the Lean definition, which is conjectured.
-/

/-! ## A163872.P13171049366053346656

`A132894(n+1)+A132894(n)`

The canonical program, it is in `Seq.B002.C004`.
-/

namespace A163872

/-- `A132894(n+1)+A132894(n)` -/
def P13171049366053346656.Spec : Prop :=
  ∀ n, P13171049366053346656.a n = A163872 n

theorem P13171049366053346656.correct : P13171049366053346656.Spec := by
  intro n
  simp only [A163872]

end A163872

/-! ## A163872.P2142369034332280525

`Δ[n*A025565(n+1)]-A002426(n)`
-/

namespace A163872.P2142369034332280525
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n : ℤ) * A025565 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n - A002426 n

end

end A163872.P2142369034332280525

namespace A163872

/-- `Δ[n*A025565(n+1)]-A002426(n)` -/
def P2142369034332280525.Spec : Prop :=
  ∀ n, P2142369034332280525.a n = A163872 n

end A163872

/-! ## A163872.P12304013780816694643

`A002426(n+1)+n*A105696(n+1)`
-/

namespace A163872.P12304013780816694643
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A002426 (n + 1) + (n : ℤ) * A105696 (n + 1)

end

end A163872.P12304013780816694643

namespace A163872

/-- `A002426(n+1)+n*A105696(n+1)` -/
def P12304013780816694643.Spec : Prop :=
  ∀ n, P12304013780816694643.a n = A163872 n

end A163872

/-! ## A163872.P2600077354894364308

`(n+1)*A005773(n+1)+n*A005773(n)`
-/

namespace A163872.P2600077354894364308
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (n + 1 : ℤ) * A005773 (n + 1) + (n : ℤ) * A005773 n

end

end A163872.P2600077354894364308

namespace A163872

/-- `(n+1)*A005773(n+1)+n*A005773(n)` -/
def P2600077354894364308.Spec : Prop :=
  ∀ n, P2600077354894364308.a n = A163872 n

theorem P2600077354894364308.correct : P2600077354894364308.Spec := by
  intro n
  simp only [A163872, Nat.add_sub_cancel, A163872.P2600077354894364308.a, A163872.P13171049366053346656.a, A005773, A005773.P2300326801340372225.a, A132894, A132894.P13878505637686974869.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163872

/-! ## A163872.P10189048457918822060

`A288834(n+1)-A081113(n+1)`
-/

namespace A163872.P10189048457918822060
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A288834 (n + 1) - A081113 (n + 1)

end

end A163872.P10189048457918822060

namespace A163872

/-- `A288834(n+1)-A081113(n+1)` -/
def P10189048457918822060.Spec : Prop :=
  ∀ n, P10189048457918822060.a n = A163872 n

theorem P10189048457918822060.correct : P10189048457918822060.Spec := by
  intro n
  simp only [A163872, Nat.add_sub_cancel, A163872.P10189048457918822060.a, A163872.P13171049366053346656.a, A081113, A081113.P7576906969708490497.a, A132894, A132894.P13878505637686974869.a, A288834, A288834.P11438510228507860857.a, A005773, A005773.P2300326801340372225.a, SequenceMachineLib.memo_apply]
  try push_cast
  first | ring1 | ((try field_simp); ring_nf)

end A163872

/-! ## A163872.P4485402832255867920

`A163772(∑[n])`
-/

namespace A163872.P4485402832255867920
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163772 (∑ j ∈ Finset.range (n + 1), f1 j)

end

end A163872.P4485402832255867920

namespace A163872

/-- `A163772(∑[n])` -/
def P4485402832255867920.Spec : Prop :=
  ∀ n, P4485402832255867920.a n = A163872 n

end A163872

/-! ## A163872.P5077278979838070751

`A163772(A000217(n))%A000984(n+1)`
-/

namespace A163872.P5077278979838070751
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A163772 (A000217 n).toNat) (A000984 (n + 1))

end

end A163872.P5077278979838070751

namespace A163872

/-- `A163772(A000217(n))%A000984(n+1)` -/
def P5077278979838070751.Spec : Prop :=
  ∀ n, P5077278979838070751.a n = A163872 n

end A163872

/-!
# A163873: a(n) = n - a(a(n-2)) with a(0) = a(1) = 0.

The programs for A163873, the canonical program `A163873.P16368823113337500510` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163873 has offset 0).

The definition of A163873 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(a(n-2))` (program `A163873.P16368823113337500510`, by `A163873.P16368823113337500510.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163873.P16368823113337500510

`n-a(a(n-2))` with `a(0)=0, a(1)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163873

/-- `n-a(a(n-2))` -/
def P16368823113337500510.Spec : Prop :=
  ∀ n, P16368823113337500510.a n = A163873 n

theorem P16368823113337500510.correct : P16368823113337500510.Spec := by
  intro n
  simp only [A163873]

end A163873

/-! ## A163873.P2156405116088204725

`A163801(n)-Δ[A001468(A004526(n))]`
-/

namespace A163873.P2156405116088204725
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A001468 (A004526 n).toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163801 n - (f1 (n + 1) - f1 n)

end

end A163873.P2156405116088204725

namespace A163873

/-- `A163801(n)-Δ[A001468(A004526(n))]` -/
def P2156405116088204725.Spec : Prop :=
  ∀ n, P2156405116088204725.a n = A163873 n

end A163873

/-! ## A163873.P10180887275820742565

`A163875(2*n)/2`
-/

namespace A163873.P10180887275820742565
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A163875 (2 * n) : ℚ) / 2

end

end A163873.P10180887275820742565

namespace A163873

/-- `A163875(2*n)/2` -/
def P10180887275820742565.Spec : Prop :=
  ∀ n, P10180887275820742565.a n = (A163873 n : ℚ)

end A163873

/-! ## A163873.P5878108320020533527

`A004525(A163875(2*n))`
-/

namespace A163873.P5878108320020533527
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004525 (A163875 (2 * n)).toNat

end

end A163873.P5878108320020533527

namespace A163873

/-- `A004525(A163875(2*n))` -/
def P5878108320020533527.Spec : Prop :=
  ∀ n, P5878108320020533527.a n = A163873 n

end A163873

/-! ## A163873.P1551568503510064992

`ceil(A163875(A042948(n))/2)`
-/

namespace A163873.P1551568503510064992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌈(A163875 (A042948 n).toNat : ℚ) / 2⌉

end

end A163873.P1551568503510064992

namespace A163873

/-- `ceil(A163875(A042948(n))/2)` -/
def P1551568503510064992.Spec : Prop :=
  ∀ n, P1551568503510064992.a n = A163873 n

end A163873

/-!
# A163874: a(n) = n-a(a(n-3)) with a(0) = a(1) = a(2) = 0.

The programs for A163874, the canonical program `A163874.P17644225411065437369` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163874 has offset 0).

The definition of A163874 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(a(n-3))` (program `A163874.P17644225411065437369`, by `A163874.P17644225411065437369.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163874.P17644225411065437369

`n-a(a(n-3))` with `a(0)=0, a(1)=0, a(2)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163874

/-- `n-a(a(n-3))` -/
def P17644225411065437369.Spec : Prop :=
  ∀ n, P17644225411065437369.a n = A163874 n

theorem P17644225411065437369.correct : P17644225411065437369.Spec := by
  intro n
  simp only [A163874]

end A163874

/-!
# A163875: a(n)=n-a(a(n-4)) with a(0)=a(1)=a(2)=a(3)=0.

The programs for A163875, the canonical program `A163875.P9994520527647363830` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163875 has offset 0).

The definition of A163875 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `n-a(a(n-4))` (program `A163875.P9994520527647363830`, by `A163875.P9994520527647363830.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163875.P9994520527647363830

`n-a(a(n-4))` with `a(0)=0, a(1)=0, a(2)=0, a(3)=0`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163875

/-- `n-a(a(n-4))` -/
def P9994520527647363830.Spec : Prop :=
  ∀ n, P9994520527647363830.a n = A163875 n

theorem P9994520527647363830.correct : P9994520527647363830.Spec := by
  intro n
  simp only [A163875]

end A163875

/-!
# A163876: Number of reduced words of length n in Coxeter group on 3 generators S_i with relations (S_i)^2 = (S_i S_j)^6 = I.

The programs for A163876, there is no canonical definition to state claims against.
-/

/-! ## A163876.P3839943539157100530

`A090572(A236836(n))`
-/

namespace A163876.P3839943539157100530
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090572 (A236836 n).toNat

end

end A163876.P3839943539157100530

/-! ## A163876.P3009569077536322992

`A090572(n*A287377(n))`
-/

namespace A163876.P3009569077536322992
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090572 ((n : ℤ) * A287377 n).toNat

end

end A163876.P3009569077536322992

/-! ## A163876.P11137864165486027960

`A090572(n^A287377(n))`
-/

namespace A163876.P11137864165486027960
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090572 (SequenceMachineLib.roundAway ((n : ℚ) ^ (A287377 n : ℤ))).toNat

end

end A163876.P11137864165486027960

/-! ## A163876.P15655700301204717119

`A090572(lcm(n, A007095(n)))`
-/

namespace A163876.P15655700301204717119
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A090572 (Int.lcm (n : ℤ) (A007095 n))

end

end A163876.P15655700301204717119

/-!
# A163877: Number of reduced words of length n in Coxeter group on 4 generators S_i with relations (S_i)^2 = (S_i S_j)^6 = I.

The programs for A163877, there is no canonical definition to state claims against.
-/

/-! ## A163877.P3102573669021264860

`record[A224512(n+1)-A298139(n+1)]`
-/

namespace A163877.P3102573669021264860
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A224512 (n + 1) - A298139 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163877.P3102573669021264860

/-! ## A163877.P16659230045303254345

`record[3*(a(n-1)-A024362(A187044(n)))]` with `a(0)=1, a(1)=1, a(2)=0, a(3)=1, a(4)=4`
-/

namespace A163877.P16659230045303254345
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.rec [1, 1, 0, 1, 4] fun n f1 =>
  3 * (f1 (n - 1) - A024362 (A187044 n).toNat)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163877.P16659230045303254345

/-! ## A163877.P11654460747302558763

`floor(4*3^(n-1))-A034432(A000040(2*n+3))`
-/

namespace A163877.P11654460747302558763
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊4 * (3 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A034432 (A000040 (2 * n + 3)).toNat

end

end A163877.P11654460747302558763

/-!
# A163878: Number of reduced words of length n in Coxeter group on 5 generators S_i with relations (S_i)^2 = (S_i S_j)^6 = I.

The programs for A163878, there is no canonical definition to state claims against.
-/

/-! ## A163878.P8919360619121311384

`floor(5*4^(n-1))-A185255(5*n)`
-/

namespace A163878.P8919360619121311384
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ⌊5 * (4 : ℚ) ^ ((n : ℤ) - 1 : ℤ)⌋ - A185255 (5 * n)

end

end A163878.P8919360619121311384

/-! ## A163878.P77464262249413355

`abs(A084215(2*n)-A185255(5*n))`
-/

namespace A163878.P77464262249413355
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A084215 (2 * n) - A185255 (5 * n)|

end

end A163878.P77464262249413355

/-! ## A163878.P11921414901869153369

`abs(A104721(2*n)-A185255(5*n))`
-/

namespace A163878.P11921414901869153369
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A104721 (2 * n) - A185255 (5 * n)|

end

end A163878.P11921414901869153369

/-!
# A163879: Number of nXnXn triangular binary arrays with all 1s connected, and a path of 1s from peak vertex to anywhere on the bottom side.

The programs for A163879, there is no canonical definition to state claims against.
-/

/-! ## A163879.P7927101824333403542

`A026741(A085351(n)*A303287(n))`
-/

namespace A163879.P7927101824333403542
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A026741 (A085351 n * A303287 n).toNat

end

end A163879.P7927101824333403542

/-!
# A163880: Number of nXnXn triangular binary arrays with all 1s connected, and all vertices 1.

The programs for A163880, there is no canonical definition to state claims against.
-/

/-! ## A163880.P9690696734477345421

`A289437(((n+1)!+2)*n!+2-3*n)`
-/

namespace A163880.P9690696734477345421
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A289437 ((Nat.factorial (n + 1) + 2) * Nat.factorial n + 2 - 3 * n)

end

end A163880.P9690696734477345421

/-!
# A163881: Number of nXnXn triangular binary arrays with all 1s connected, no 1 having more than 2 1s adjacent, and a path of 1s from peak vertex to anywhere on the bottom side.

The programs for A163881, there is no canonical definition to state claims against.
-/

/-! ## A163881.P14195286975702584605

`A020888(∑[∑[A195440(n+1)]])`
-/

namespace A163881.P14195286975702584605
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A195440 (n + 1)

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A020888 (∑ j ∈ Finset.range (n + 1), f1 j).toNat

end

end A163881.P14195286975702584605

/-! ## A163881.P13046930382900774173

`A052275(A352944(3*n))+n²`
-/

namespace A163881.P13046930382900774173
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052275 (A352944 (3 * n)).toNat + (n ^ 2 : ℤ)

end

end A163881.P13046930382900774173

/-!
# A163882: Number of nXnXn triangular binary arrays with all 1s connected, no 1 having more than 3 1s adjacent, and a path of 1s from peak vertex to anywhere on the bottom side.

The programs for A163882, there is no canonical definition to state claims against.
-/

/-! ## A163882.P10772008341251832064

`A348552(A038405(n))+n`
-/

namespace A163882.P10772008341251832064
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A348552 (A038405 n).toNat + (n : ℤ)

end

end A163882.P10772008341251832064

/-!
# A163884: Number of nXnXn triangular binary arrays with all 1s connected, no 1 having more than 4 1s adjacent, and a path of 1s from peak vertex to anywhere on the bottom side.

The programs for A163884, there is no canonical definition to state claims against.
-/

/-! ## A163884.P5576516837976488025

`A335962(A000609(n))-A087517(n)`
-/

namespace A163884.P5576516837976488025
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A335962 (A000609 n).toNat - A087517 n

end

end A163884.P5576516837976488025

/-!
# A163885: Number of nXnXn triangular binary arrays with all 1s connected, no 1 having more than 4 1s adjacent, and all vertexes 1.

The programs for A163885, there is no canonical definition to state claims against.
-/

/-! ## A163885.P247561352282392314

`A161366(a(n-1)+n-1)` with `a(0)=1`
-/

namespace A163885.P247561352282392314
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [1] fun n a =>
  A161366 (a (n - 1) + ((n : ℤ) - 1)).toNat

end

end A163885.P247561352282392314

/-!
# A163886: Number of nXnXn triangular binary arrays with all 1s connected, no 1 having more than 5 1s adjacent, and a path of 1s from peak vertex to anywhere on the bottom side.

The programs for A163886, there is no canonical definition to state claims against.
-/

/-! ## A163886.P17256583340131169101

`A004526(A092585(n+1)+A092563(n))`
-/

namespace A163886.P17256583340131169101
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A004526 (A092585 (n + 1) + A092563 n).toNat

end

end A163886.P17256583340131169101

/-!
# A163887: Number of nXnXn triangular binary arrays with all 1s connected, no 1 having more than 5 1s adjacent, and all vertexes 1.

The programs for A163887, there is no canonical definition to state claims against.
-/

/-! ## A163887.P11886190326705470224

`∏[A179371(n!)]`
-/

namespace A163887.P11886190326705470224
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A179371 (Nat.factorial n)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∏ j ∈ Finset.range (n + 1), f1 j

end

end A163887.P11886190326705470224

/-!
# A163888: a(n) = 2*a(n-2) for n > 2; a(1) = 5, a(2) = 4.

The programs for A163888, the canonical program `A163888.P1283835642022342625` is in `Seq.B000.C024`. Each `Spec` is the claim that a program equals the definition of its sequence at every index (A163888 has offset 1).

The definition of A163888 is `verified`: the Lean definition is proven equivalent to the name formula of the sequence (the formula in its OEIS name, parsed automatically): `2*a(n-2)` (program `A163888.P1283835642022342625`, by `A163888.P1283835642022342625.correct`). Lean does not check the parsing of the name. A proof of the Spec of a program (its theorem correct) shows that the program equals the Lean definition, so it is as trusted as the definition: verified.
-/

/-! ## A163888.P1283835642022342625

`2*a(n-2)` with `a(0)=5, a(1)=4`

The canonical program, it is in `Seq.B000.C024`.
-/

namespace A163888

/-- `2*a(n-2)` -/
def P1283835642022342625.Spec : Prop :=
  ∀ n, (P1283835642022342625.a n : ℤ) = A163888 (n + 1)

theorem P1283835642022342625.correct : P1283835642022342625.Spec := by
  intro n
  simp only [A163888, Nat.add_sub_cancel]

end A163888

/-! ## A163888.P16076015149828959094

`(7-3*(-1)^(n+1))*2^((2*(n+1)-5+(-1)^(n+1))/4)`
-/

namespace A163888.P16076015149828959094
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.memo fun n =>
  (7 - 3 * (-1) ^ (n + 1) : ℝ) * (2 : ℝ) ^ (((2 * (n + 1) : ℤ) - 5 + (-1) ^ (n + 1) : ℚ) / 4 : ℝ)

end

end A163888.P16076015149828959094

namespace A163888

/-- `(7-3*(-1)^(n+1))*2^((2*(n+1)-5+(-1)^(n+1))/4)` -/
def P16076015149828959094.Spec : Prop :=
  ∀ n, P16076015149828959094.a n = (A163888 (n + 1) : ℝ)

end A163888

/-! ## A163888.P7516660081074559625

`ogf((5+4x)/(1-2x^2))`
-/

namespace A163888.P7516660081074559625
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  SequenceMachineLib.ogf [5, 4] [1, 0, -2] n

end

end A163888.P7516660081074559625

namespace A163888

/-- `ogf((5+4x)/(1-2x^2))` -/
def P7516660081074559625.Spec : Prop :=
  ∀ n, P7516660081074559625.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P3409490479273275762

`a(n-2)/sqrt(1/4)` with `a(0)=5, a(1)=4`
-/

namespace A163888.P3409490479273275762
noncomputable section

def a : ℕ → ℝ := SequenceMachineLib.rec [5, 4] fun n a =>
  a (n - 2) / Real.sqrt ((1 : ℚ) / 4 : ℝ)

end

end A163888.P3409490479273275762

namespace A163888

/-- `a(n-2)/sqrt(1/4)` -/
def P3409490479273275762.Spec : Prop :=
  ∀ n, P3409490479273275762.a n = (A163888 (n + 1) : ℝ)

end A163888

/-! ## A163888.P11382888169555427743

`a(n-2)+a(n-2)` with `a(0)=5, a(1)=4`
-/

namespace A163888.P11382888169555427743
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.rec [5, 4] fun n a =>
  a (n - 2) + a (n - 2)

end

end A163888.P11382888169555427743

namespace A163888

/-- `a(n-2)+a(n-2)` -/
def P11382888169555427743.Spec : Prop :=
  ∀ n, (P11382888169555427743.a n : ℤ) = A163888 (n + 1)

theorem P11382888169555427743.correct : P11382888169555427743.Spec := by
  intro n
  simp only [A163888, Nat.add_sub_cancel, A163888.P11382888169555427743.a, A163888.P1283835642022342625.a, SequenceMachineLib.memo_apply]
  try push_cast
  try (first | ring1 | ring_nf)

end A163888

/-! ## A163888.P15314884054323645179

`lcm(3, a(n-2))-a(n-2)` with `a(0)=5, a(1)=4`
-/

namespace A163888.P15314884054323645179
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 4] fun n a =>
  (Int.lcm 3 (a (n - 2)) : ℤ) - a (n - 2)

end

end A163888.P15314884054323645179

namespace A163888

/-- `lcm(3, a(n-2))-a(n-2)` -/
def P15314884054323645179.Spec : Prop :=
  ∀ n, P15314884054323645179.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P4124249851062765734

`1-floor(1-a(n-2)-a(n-2))` with `a(0)=5, a(1)=4`

`floor` is left out, it is the identity on integers.
-/

namespace A163888.P4124249851062765734
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [5, 4] fun n a =>
  1 - (1 - a (n - 2) - a (n - 2))

end

end A163888.P4124249851062765734

namespace A163888

/-- `1-floor(1-a(n-2)-a(n-2))` -/
def P4124249851062765734.Spec : Prop :=
  ∀ n, P4124249851062765734.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P15008273857197387158

`A228305(xor(1, n+2))`
-/

namespace A163888.P15008273857197387158
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228305 (Nat.xor 1 (n + 2))

end

end A163888.P15008273857197387158

namespace A163888

/-- `A228305(xor(1, n+2))` -/
def P15008273857197387158.Spec : Prop :=
  ∀ n, P15008273857197387158.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P8044195089965844428

`abs(Δ[A163864(n+1)])`
-/

namespace A163888.P8044195089965844428
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163864 (n + 1)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |f1 (n + 1) - f1 n|

end

end A163888.P8044195089965844428

namespace A163888

/-- `abs(Δ[A163864(n+1)])` -/
def P8044195089965844428.Spec : Prop :=
  ∀ n, P8044195089965844428.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P15310951353857441890

`A228305(A065190(n+2))`
-/

namespace A163888.P15310951353857441890
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A228305 (A065190 (n + 2)).toNat

end

end A163888.P15310951353857441890

namespace A163888

/-- `A228305(A065190(n+2))` -/
def P15310951353857441890.Spec : Prop :=
  ∀ n, P15310951353857441890.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P16342825764444124784

`lcm(A040024(n), A143095(n))`
-/

namespace A163888.P16342825764444124784
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A040024 n) (A143095 n)

end

end A163888.P16342825764444124784

namespace A163888

/-- `lcm(A040024(n), A143095(n))` -/
def P16342825764444124784.Spec : Prop :=
  ∀ n, (P16342825764444124784.a n : ℤ) = A163888 (n + 1)

end A163888

/-! ## A163888.P8695014622747292256

`xor(A010737(n), A052955(n))`
-/

namespace A163888.P8695014622747292256
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A010737 n) (A052955 n)

end

end A163888.P8695014622747292256

namespace A163888

/-- `xor(A010737(n), A052955(n))` -/
def P8695014622747292256.Spec : Prop :=
  ∀ n, P8695014622747292256.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P16313493373404473465

`A029747(A168200(n+1)+1)`
-/

namespace A163888.P16313493373404473465
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A029747 (A168200 (n + 1) + 1).toNat

end

end A163888.P16313493373404473465

namespace A163888

/-- `A029747(A168200(n+1)+1)` -/
def P16313493373404473465.Spec : Prop :=
  ∀ n, P16313493373404473465.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P8443064781182669111

`A152166(n)+A090989(n+1)`
-/

namespace A163888.P8443064781182669111
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A152166 n + A090989 (n + 1)

end

end A163888.P8443064781182669111

namespace A163888

/-- `A152166(n)+A090989(n+1)` -/
def P8443064781182669111.Spec : Prop :=
  ∀ n, P8443064781182669111.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P18110696714948965066

`A164073(n+1)+A112032(n)`
-/

namespace A163888.P18110696714948965066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A164073 (n + 1) + A112032 n

end

end A163888.P18110696714948965066

namespace A163888

/-- `A164073(n+1)+A112032(n)` -/
def P18110696714948965066.Spec : Prop :=
  ∀ n, P18110696714948965066.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P217920713366110857

`A052552(n)+A052551(n+2)`
-/

namespace A163888.P217920713366110857
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A052552 n + A052551 (n + 2)

end

end A163888.P217920713366110857

namespace A163888

/-- `A052552(n)+A052551(n+2)` -/
def P217920713366110857.Spec : Prop :=
  ∀ n, P217920713366110857.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P10991531005782755910

`A135530(n+2)+A060546(n)`
-/

namespace A163888.P10991531005782755910
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A135530 (n + 2) + A060546 n

end

end A163888.P10991531005782755910

namespace A163888

/-- `A135530(n+2)+A060546(n)` -/
def P10991531005782755910.Spec : Prop :=
  ∀ n, P10991531005782755910.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P3334456740354261613

`A164682(n+1)/A000034(n)`
-/

namespace A163888.P3334456740354261613
noncomputable section

def a : ℕ → ℚ := SequenceMachineLib.memo fun n =>
  (A164682 (n + 1) : ℚ) / (A000034 n : ℚ)

end

end A163888.P3334456740354261613

namespace A163888

/-- `A164682(n+1)/A000034(n)` -/
def P3334456740354261613.Spec : Prop :=
  ∀ n, P3334456740354261613.a n = (A163888 (n + 1) : ℚ)

end A163888

/-! ## A163888.P13621376851906170075

`xor(A060546(n), A090989(n+1))`
-/

namespace A163888.P13621376851906170075
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.xor (A060546 n) (A090989 (n + 1))

end

end A163888.P13621376851906170075

namespace A163888

/-- `xor(A060546(n), A090989(n+1))` -/
def P13621376851906170075.Spec : Prop :=
  ∀ n, P13621376851906170075.a n = A163888 (n + 1)

end A163888

/-! ## A163888.P13082675393124646872

`A143095(n+1)+A016116(n+1)`
-/

namespace A163888.P13082675393124646872
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A143095 (n + 1) + A016116 (n + 1)

end

end A163888.P13082675393124646872

namespace A163888

/-- `A143095(n+1)+A016116(n+1)` -/
def P13082675393124646872.Spec : Prop :=
  ∀ n, P13082675393124646872.a n = A163888 (n + 1)

end A163888

/-!
# A163889: Number of unlock patterns of length n for the Android operating system.

The programs for A163889, there is no canonical definition to state claims against.
-/

/-! ## A163889.P17330989737654102998

`A329303(A304349(2*n+1))-A329315(n+1)`
-/

namespace A163889.P17330989737654102998
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A329303 (A304349 (2 * n + 1)).toNat - A329315 (n + 1)

end

end A163889.P17330989737654102998

/-!
# A163890: Orbit size of n in permutation A163355.

The programs for A163890, there is no canonical definition to state claims against.
-/

/-! ## A163890.P8346996091010167829

`A163904(A054239(n))`
-/

namespace A163890.P8346996091010167829
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A054239 n).toNat

end

end A163890.P8346996091010167829

/-! ## A163890.P15981014710675722486

`A163904(A163358(n))`
-/

namespace A163890.P15981014710675722486
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A163358 n).toNat

end

end A163890.P15981014710675722486

/-! ## A163890.P3807069901781807222

`A163904(A163908(n))`
-/

namespace A163890.P3807069901781807222
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A163908 n).toNat

end

end A163890.P3807069901781807222

/-! ## A163890.P5414224774512406493

`A163904(A163918(n))`
-/

namespace A163890.P5414224774512406493
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A163918 n).toNat

end

end A163890.P5414224774512406493

/-! ## A163890.P3737753416913091262

`A163904(A163362(n+1)-1)`
-/

namespace A163890.P3737753416913091262
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163904 (A163362 (n + 1) - 1).toNat

end

end A163890.P3737753416913091262

/-!
# A163891: Positions where A163890 obtains distinct new values.

The programs for A163891, there is no canonical definition to state claims against.
-/

/-! ## A163891.P16404861272801137964

`∑[A163893(abs(1-n))]-2`
-/

namespace A163891.P16404861272801137964
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163893 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f1 j - 2

end

end A163891.P16404861272801137964

/-! ## A163891.P17813104515039521529

`abs(A163893(n)-∑[A163893(n)])`
-/

namespace A163891.P17813104515039521529
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  |A163893 n - ∑ j ∈ Finset.range (n + 1), f1 j|

end

end A163891.P17813104515039521529

/-! ## A163891.P6213819981824191839

`(∑[A163893(n)]-A163893(n))%A000032(n+5)`
-/

namespace A163891.P6213819981824191839
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (∑ j ∈ Finset.range (n + 1), f1 j - A163893 n) (A000032 (n + 5))

end

end A163891.P6213819981824191839

/-! ## A163891.P17788426712631901368

`A008683(4*(n+1))+∑[A163893(n)]-A163893(n)`
-/

namespace A163891.P17788426712631901368
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A008683 (4 * (n + 1)) + (∑ j ∈ Finset.range (n + 1), f1 j - A163893 n)

end

end A163891.P17788426712631901368

/-! ## A163891.P643064698546214583

`(∑[A163893(n)]-A163893(n))*A014963(4*n+2)`
-/

namespace A163891.P643064698546214583
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  (∑ j ∈ Finset.range (n + 1), f1 j - A163893 n) * A014963 (4 * n + 2)

end

end A163891.P643064698546214583

/-!
# A163892: Distinct values in A163890 in the order of appearance.

The programs for A163892, there is no canonical definition to state claims against.
-/

/-! ## A163892.P826361701995386008

`A163890(A163891(n))`
-/

namespace A163892.P826361701995386008
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 (A163891 n).toNat

end

end A163892.P826361701995386008

/-! ## A163892.P10565754223339041048

`A163890(∑[A163893(abs(1-n))]-2)`
-/

namespace A163892.P10565754223339041048
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163893 |1 - (n : ℤ)|.toNat

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 (∑ j ∈ Finset.range (n + 1), f1 j - 2).toNat

end

end A163892.P10565754223339041048

/-! ## A163892.P10156908531825187809

`A163890(A008683(4*(n+1))+∑[A163893(n)]-A163893(n))`
-/

namespace A163892.P10156908531825187809
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 (A008683 (4 * (n + 1)) + (∑ j ∈ Finset.range (n + 1), f1 j - A163893 n)).toNat

end

end A163892.P10156908531825187809

/-! ## A163892.P17052391014961280778

`A163890((∑[A163893(n)]-A163893(n))*A014963(4*n+2))`
-/

namespace A163892.P17052391014961280778
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163893 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163890 ((∑ j ∈ Finset.range (n + 1), f1 j - A163893 n) * A014963 (4 * n + 2)).toNat

end

end A163892.P17052391014961280778

/-!
# A163893: First differences of A163891.

The programs for A163893, there is no canonical definition to state claims against.
-/

/-! ## A163893.P15194888645175610670

`A163891(n+1)-A163891(n)`
-/

namespace A163893.P15194888645175610670
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163891 (n + 1) - A163891 n

end

end A163893.P15194888645175610670

/-! ## A163893.P793667421714143406

`Δ[A163891(n)]`
-/

namespace A163893.P793667421714143406
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163891 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (n + 1) - f1 n

end

end A163893.P793667421714143406

/-!
# A163894: The least i for which A163355^n(i) is not equal to i, 0 if no such i exists, i.e., when A163355^n = A001477.

The programs for A163894, there is no canonical definition to state claims against.
-/

/-! ## A163894.P14837711928229886839

`2*A055396(A018582(n+1))`
-/

namespace A163894.P14837711928229886839
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  2 * A055396 (A018582 (n + 1)).toNat

end

end A163894.P14837711928229886839

/-! ## A163894.P17822769506010304417

`A007590(A020639(∑[∑[(n+3)*2^n-2]]))`
-/

namespace A163894.P17822769506010304417
noncomputable section

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ((n + 3) * 2 ^ n : ℤ) - 2

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ j ∈ Finset.range (n + 1), f2 j

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A007590 (A020639 (∑ j ∈ Finset.range (n + 1), f1 j).toNat).toNat

end

end A163894.P17822769506010304417

/-! ## A163894.P3210396301955716128

`lcm(A318666(A097134(n)), A332202(n))`
-/

namespace A163894.P3210396301955716128
noncomputable section

def a : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  Int.lcm (A318666 (A097134 n).toNat) (A332202 n)

end

end A163894.P3210396301955716128

/-! ## A163894.P14584186559533052632

`A159788(A075019(n+1)%A284576(n))`
-/

namespace A163894.P14584186559533052632
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A159788 (Int.tmod (A075019 (n + 1)) (A284576 n)).toNat

end

end A163894.P14584186559533052632

/-!
# A163895: Positions where A163894 obtains record values.

The programs for A163895, there is no canonical definition to state claims against.
-/

/-! ## A163895.P17005651837959087265

`∑{e}[2^n, A309016(#)]`
-/

namespace A163895.P17005651837959087265
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  ∑ p ∈ Nat.primeFactors (f1 n), A309016 (Nat.factorization (f1 n) p)

end

end A163895.P17005651837959087265

/-! ## A163895.P11182403504540793556

`A309016(n%lcm(3, a(n-1)))` with `a(0)=0, a(1)=1`
-/

namespace A163895.P11182403504540793556
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1] fun n a =>
  A309016 (n % Int.lcm 3 (a (n - 1)))

end

end A163895.P11182403504540793556

/-! ## A163895.P18191386367546494004

`a(n-2)*Δ[A315650(n)]` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A163895.P18191386367546494004
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A315650 n

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  a (n - 2) * (f1 (n + 1) - f1 n)

end

end A163895.P18191386367546494004

/-! ## A163895.P6980138954957911808

`A309016(round(sqrt(n²+1)))%(10^n)`
-/

namespace A163895.P6980138954957911808
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  Int.tmod (A309016 (SequenceMachineLib.roundAway (Real.sqrt (n ^ 2 + 1 : ℝ))).toNat) (10 ^ n : ℤ)

end

end A163895.P6980138954957911808

/-! ## A163895.P3461722131234764066

`(A353377(2*n+3)+2)*a(n-1)` with `a(0)=0, a(1)=1, a(2)=2`
-/

namespace A163895.P3461722131234764066
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.rec [0, 1, 2] fun n a =>
  (A353377 (2 * n + 3) + 2) * a (n - 1)

end

end A163895.P3461722131234764066

/-!
# A163896: Record values of A163894.

The programs for A163896, there is no canonical definition to state claims against.
-/

/-! ## A163896.P2889573919751750865

`record[A163894(n)]`
-/

namespace A163896.P2889573919751750865
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163894 n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  f1 (SequenceMachineLib.nth (fun j => ∀ l < j, f1 l < f1 j) n)

end

end A163896.P2889573919751750865

/-! ## A163896.P7270391451438141277

`A163894(A163895(n))`
-/

namespace A163896.P7270391451438141277
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163894 (A163895 n).toNat

end

end A163896.P7270391451438141277

/-! ## A163896.P10408323156241138258

`A163894(∑{e}[2^n, A309016(#)])`
-/

namespace A163896.P10408323156241138258
noncomputable section

def f1 : ℕ → ℕ := SequenceMachineLib.memo fun n =>
  2 ^ n

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163894 (∑ p ∈ Nat.primeFactors (f1 n), A309016 (Nat.factorization (f1 n) p)).toNat

end

end A163896.P10408323156241138258

/-! ## A163896.P2161298107893972736

`A163891(lt[A254436(n+1), A109066(n+2)])`
-/

namespace A163896.P2161298107893972736
noncomputable section

def f1 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A254436 (n + 1)

def f2 : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A109066 (n + 2)

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163891 (SequenceMachineLib.nth (fun j => f1 j < f2 j) n)

end

end A163896.P2161298107893972736

/-!
# A163897: a(n) = A163531(n)-A163547(n).

The programs for A163897, there is no canonical definition to state claims against.
-/

/-! ## A163897.P5348663084786128120

`A163531(n)-A163547(n)`

The name formula of the sequence (the formula in its OEIS name, parsed automatically).
-/

namespace A163897.P5348663084786128120
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 n - A163547 n

end

end A163897.P5348663084786128120

/-! ## A163897.P17707866831502360207

`A163531(n)-A163531(A166042(n))`
-/

namespace A163897.P17707866831502360207
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 n - A163531 (A166042 n).toNat

end

end A163897.P17707866831502360207

/-! ## A163897.P4847232989565634435

`A163531(n)-A163531(A166044(n))`
-/

namespace A163897.P4847232989565634435
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163531 n - A163531 (A166044 n).toNat

end

end A163897.P4847232989565634435

/-! ## A163897.P2453052978796456088

`A163547(A166041(n))-A163547(n)`
-/

namespace A163897.P2453052978796456088
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 (A166041 n).toNat - A163547 n

end

end A163897.P2453052978796456088

/-! ## A163897.P5022039342178136962

`A163547(A166043(n))-A163547(n)`
-/

namespace A163897.P5022039342178136962
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163547 (A166043 n).toNat - A163547 n

end

end A163897.P5022039342178136962

/-!
# A163898: Array A(i,j) giving the square of distance from (i,j) to the location where A054238(i,j) is situated in array A163357(i,j), listed antidiagonally as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A163898, there is no canonical definition to state claims against.
-/

/-! ## A163898.P4094806358506647411

`A163900(A054238(n))`
-/

namespace A163898.P4094806358506647411
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163900 (A054238 n).toNat

end

end A163898.P4094806358506647411

/-! ## A163898.P16984736122060372169

`A163900(A163356(A163357(n)))`
-/

namespace A163898.P16984736122060372169
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163900 (A163356 (A163357 n).toNat).toNat

end

end A163898.P16984736122060372169

/-! ## A163898.P2718575964270356116

`A163900(A346453(A054239(A346453(n))))`
-/

namespace A163898.P2718575964270356116
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163900 (A346453 (A054239 (A346453 n).toNat).toNat).toNat

end

end A163898.P2718575964270356116

/-!
# A163899: Array A(i,j) giving the square of distance from (i,j) to the location where A163357(i,j) is situated in array A054238(i,j), listed antidiagonally as A(0,0), A(0,1), A(1,0), A(0,2), A(1,1), A(2,0), ...

The programs for A163899, there is no canonical definition to state claims against.
-/

/-! ## A163899.P7080699543762092897

`A163900(A163357(n))`
-/

namespace A163899.P7080699543762092897
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163900 (A163357 n).toNat

end

end A163899.P7080699543762092897

/-! ## A163899.P12044323532547776731

`A163900(A163361(n+1)-1)`
-/

namespace A163899.P12044323532547776731
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163900 (A163361 (n + 1) - 1).toNat

end

end A163899.P12044323532547776731

/-! ## A163899.P2102743407779159615

`A163900(A163355(A054238(n)))`
-/

namespace A163899.P2102743407779159615
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163900 (A163355 (A054238 n).toNat).toNat

end

end A163899.P2102743407779159615

/-! ## A163899.P12406787258091517031

`A163898(A054239(A163357(n)%A000302(n)))`
-/

namespace A163899.P12406787258091517031
noncomputable section

def a : ℕ → ℤ := SequenceMachineLib.memo fun n =>
  A163898 (A054239 (Int.tmod (A163357 n) (A000302 n)).toNat).toNat

end

end A163899.P12406787258091517031

